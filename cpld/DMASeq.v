 module DMASeq(
	/* Clock and reset */
	input PHI2,				// C64 PHI2 clock input
	input nRESET,			// C64 reset signal input
	/* SDRAM command outputs */
	output reg RAMRD,		// RAMRD signal to SDRAM controller
	output reg RAMWR, 		// RAMWR signal to SDRAM controller
	/* DMA command outputs */
	output reg DMA,			// DMA signal to C64 bus
	output reg nWEDMA,		// DMA read/write indication to C64 bus
	/* Reset Output to Registers */
	output RegReset,		// Gated reset signal output to registers
	/* Transfer inputs */
	input Execute,			// Execute signal (starts transfer) from registers
	input [1:0] XferType,	// REU transfer type (bypassed) from registers
	input BA,				// C64 BA signal
	input Equal,			// Indicates data read from RAM equals C64 data bus
	input Length1,			// Transfer length == 1 indication from registers
	/* Register control outputs */
	output IncCA,			// Increment C64 address signal to registers
	output DecLen,			// Decrement transfer length signal to registers
	output IncREUA,			// Increment REU address signal to registers
	output XferEnd,			// Transfer end signal to registers
	output SetEndOfBlock,	// Set end of block signal to registers
	output SetVerifyErr);	// Set fault/verify error signal to registers

// Transfer type "macros"
wire XferC64REU = XferType[1:0]==2'b00;
wire XferREUC64 = XferType[1:0]==2'b01;
wire XferSwap =   XferType[1:0]==2'b10;
wire XferVerify = XferType[1:0]==2'b11;

/* RAM & DMA command issue */
// Command issue is a funcion of Execute, DMA, XferType, XferEnd, RAMWR
always @(negedge PHI2) begin
	if (DMA) begin // If DMA ongoing
		if (XferEnd) begin // If DMA should end
			DMA <= 0;
			if (XferC64REU) begin
				// During C64->REU transfer, write final byte to REU RAM
				nWEDMA <= 0;
				RAMRD <= 0;
				RAMWR <= 1;
			end else begin // Otherwise no more RAM operations necessary
				nWEDMA <= 0;
				RAMRD <= 0;
				RAMWR <= 0;
			end
		end else begin // Otherwise if in the middle of DMA
			DMA <= 1;
			if (XferC64REU) begin // C64->REU transfer
				nWEDMA <= 1; // Read from C64
				RAMRD <= 0;
				RAMWR <= 1; // Write to RAM
			end else if (XferREUC64) begin // REU->C64 transfer
				nWEDMA <= 0; // Write to C64
				RAMRD <= 1; // Read from RAM
				RAMWR <= 0;
			end else if (XferSwap && BA) begin // Swap transfer
				// If bus available, alternate between reading and writing
				nWEDMA <= !nWEDMA;
				RAMRD <= !RAMRD;
				RAMWR <= !RAMWR;
			end else if (XferVerify) begin // Verify operation
				nWEDMA <= 1; // Read from C64
				RAMRD <= 1; // Read from RAM
				RAMWR <= 0;
			end
		end
	end else if (Execute) begin // First cycle of DMA
		DMA <= 1;
		if (XferC64REU) begin // C64->REU tranfer
			nWEDMA <= 1; // Read from C64
			RAMRD <= 0;
			RAMWR <= 0; // Don't write to REU RAM yet
		end else if (XferREUC64) begin // REU->C64 transfer
			nWEDMA <= 0; // Write to C64
			RAMRD <= 1; // Read from REU
			RAMWR <= 0;
		end else if (XferSwap) begin // Swap transfer
			nWEDMA <= 1; // Read from C64
			RAMRD <= 1; // Read from REU
			RAMWR <= 0;
		end else if (XferVerify) begin
			nWEDMA <= 1; // Read from C64
			RAMRD <= 1; // Read from REU
			RAMWR <= 0;
		end
	end else begin
		DMA <= 0;
		nWEDMA <= 0;
		RAMRD <= 0;
		RAMWR <= 0;
	end
end

/* DMA, BA, Equal registation */
// Keep these for reference on subsequent cycle
reg DMAr, BAr, Equalr;
reg [2:1] nRESETr;
always @(negedge PHI2) begin
	DMAr <= DMA;
	BAr <= BA;
	Equalr <= Equal;
	nRESETr[2:1] <= {nRESETr[1], nRESET};
end

/* Transfer end control */
// Transfer can only end during DMA.
// Any in-progress transfer is aborted if reset becomes active.
assign XferEnd = DMA && ((!nRESETr[1]) || 
	// Most transfer types finished when bus active and length is 1
	(XferC64REU ?  BA && Length1 : 
	 XferREUC64 ?  BA && Length1 : 
	// Swap transfer needs to write before completing
	 XferSwap ?    BA && Length1 && RAMWR : 
	// For verify operation, finish when length is 1
	// or when a mismatch was obtained last cyle.
	 XferVerify ? (BA && Length1) || (DMAr && BAr && !Equalr): 1'b0));

/* C64 address increment control */
assign IncCA =
	// DMA must be active and bus must be available.
	DMA && BA && 
	// During swap transfer, only increment after writing 
	(!XferSwap || RAMWR) && 
	// During verify, don't increment when halting due to mismatch last cycle
	(!XferVerify || !(DMAr && BAr && !Equalr));
	
/* Transfer length decrement control */
assign DecLen =
	// DMA must be active and bus must be available.
	DMA && BA &&
	// Don't decrement length from 1 to 0
	!Length1 && 
	// During swap transfer, only decrement after writing 
	(!XferSwap || RAMWR) &&
	// During verify, don't increment when halting due to mismatch last cycle
	(!XferVerify || !(DMAr && BAr && !Equalr));
	
/* REU increment control */
assign IncREUA = 
	// During REU-C64 transfer, increment after each write to C64 RAM
	XferREUC64 ? DMA && BA :
	// During C64-REU transfer, delay incrementing the address
	// because data is written into REU RAM on subsequent cycle.
	XferC64REU ? DMAr && BAr :
	// During swap transfer, only increment after writing
	XferSwap ?   DMA && BA && RAMWR :
	// During verify, don't increment when halting due to mismatch last cycle
	XferVerify ? DMA && BA && !(DMAr && BAr && !Equalr) : 1'b0;

/* Set end of block and set fault/verify error flags to registers */
// Set end of block when DMA active and length==1
assign SetEndOfBlock = DMA && Length1;
// Set fault during verify cycles where BA and data mismatch
assign SetVerifyErr = XferVerify && DMA && BA && !Equal;

/* Gated reset to REU registers */
assign RegReset = 
	// Only reset registers when not doing DMA.
	!DMA && 
	// Reset aborts the current DMA cycle but there is a delay.
	((!nRESETr[1] && !DMA) || 
	// If a reset pulse is short and ends before DMA ends,
	// register reset nevertheless occurs immediately 
	// after DMA abort even if external reset is no longer active.
	 (!nRESETr[2] && DMAr));
		
endmodule
