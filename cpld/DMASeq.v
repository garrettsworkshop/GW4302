 module DMASeq(
	/* Clock & Reset */
	input PHI2,				// C64 PHI2 clock input
	input nRESET,			// C64 reset signal input
	/* C64 Bus Available */
	input BA,				// C64 BA signal
	/* SDRAM Command Outputs */
	output reg RAMRD,		// RAMRD signal to SDRAM controller
	output reg RAMWR, 		// RAMWR signal to SDRAM controller
	/* DMA Command Outputs */
	output reg DMA,			// DMA signal to C64 bus
	output reg DMARW,		// DMA read/write indication to C64 bus
	/* Reset Output to Registers */
	output RegReset,		// Gated reset signal output to registers
	/* Transfer Inputs */
	input Equal,			// Indicates data read from RAM equals C64 data bus
	input Execute,			// Execute signal (starts transfer) from registers
	input [1:0] XferType,	// REU transfer type (bypassed) from registers
	input Length1,			// Transfer length == 1 indication from registers
	input Length2,			// Transfer length == 2 indication from registers
	/* Register Control Outputs */
	output IncCA,			// Increment C64 address signal to registers
	output DecLen,			// Decrement transfer length signal to registers
	output IncREUA,			// Increment REU address signal to registers
	output XferEnd,			// Transfer end signal to registers
	output SetEndOfBlock,	// Set end of block signal to registers
	output SetVerifyErr);	// Set fault/verify error signal to registers

// Transfer type "macros"
wire XferC64REU = XferType[1:0]==2'b00;
wire XferREUC64 = XferType[1:0]==2'b01;
wire XferSwap = XferType[1:0]==2'b10;
wire XferVerify = XferType[1:0]==2'b11;

/* Swap state control */
// Used to keep track of the first/second memory accesses during swap transfers 
reg SwapState;
always @(negedge PHI2) begin
	// Alternate SwapState during DMA transfer when bus available
	if (DMA && BA && XferSwap) SwapState <= !SwapState;
	 // Return SwapState to 0 when not doing DMA
	else if (!DMA || XferEnd) SwapState <= 0;
end

/* RAM & DMA command issue */
// Command issue is a funcion of Execute, DMA, XferType, XferEnd, SwapState
always @(negedge PHI2) begin
	if (DMA) begin
		if (XferEnd) begin
			DMA <= 0;
			if (XferC64REU) begin
				DMARW <= 0;
				RAMRD <= 0;
				RAMWR <= 1; // Write to RAM
			end else begin
				DMARW <= 0;
				RAMRD <= 0;
				RAMWR <= 0;
			end
		end else begin
			DMA <= 1;
			if (XferC64REU) begin
				DMARW <= 1; // Always read from C64
				RAMRD <= 0;
				RAMWR <= 1; // Write to RAM
			end else if (XferREUC64) begin
				DMARW <= 0; // Always write to C64
				RAMRD <= 1; // Read from RAM
				RAMWR <= 0;
			end else if (XferSwap) begin
				if (SwapState) begin
					DMARW <= 1; // Read from C64
					RAMRD <= 1; // Read from RAM
					RAMWR <= 0;
				end else begin
					DMARW <= 0; // Write to C64
					RAMRD <= 0;
					RAMWR <= 1; // Write to RAM
				end
			end else if (XferVerify) begin
				DMARW <= 1; // Always read from C64
				RAMRD <= 1; // Read from RAM
				RAMWR <= 0;
			end
		end
	end else if (Execute) begin
		DMA <= 1;
		if (XferC64REU) begin
			DMARW <= 1; // Read from C64
			RAMRD <= 0;
			RAMWR <= 0; // Don't write to REU yet
		end else if (XferREUC64) begin
			DMARW <= 0; // Write to C64
			RAMRD <= 1; // Read from REU
			RAMWR <= 0;
		end else if (XferSwap) begin
			DMARW <= 1; // Read from C64 as if SwapState==1
			RAMRD <= 1; // Read from REU as if SwapState==1
			RAMWR <= 0;
		end else if (XferVerify) begin
			DMARW <= 1; // Read from C64
			RAMRD <= 1; // Read from REU
			RAMWR <= 0;
		end
	end else begin
		DMA <= 0;
		DMARW <= 0;
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
	// Swap transfer needs to reach swapstate 1 before completing
	 XferSwap ?    BA && Length1 && SwapState : 
	// For verify operation, finish when length is 1
	// or when a mismatch was obtained last cyle.
	 XferVerify ? (BA && Length1) || (DMAr && BAr && !Equalr): 1'b0));

/* C64 address increment control */
assign IncCA =
	// DMA must be active and bus must be available.
	DMA && BA && 
	// During swap transfer, only increment after second swap state 
	(!XferSwap || SwapState) && 
	// During verify, don't increment when halting due to mismatch last cycle
	(!XferVerify || !(DMAr && BAr && !Equalr));
	
/* Transfer length decrement control */
assign DecLen =
	// DMA must be active and bus must be available.
	DMA && BA &&
	// Don't decrement length from 1 to 0
	!Length1 && 
	// During swap transfer, only decrement after second swap state 
	(!XferSwap || SwapState)  &&
	// During verify, don't increment when halting due to mismatch last cycle
	(!XferVerify || !(DMAr && BAr && !Equalr));
	
/* REU increment control */
assign IncREUA = 
	// During REU-C64 transfer, increment after each write to C64 RAM
	XferREUC64 ? DMA && BA :
	// During C64-REU transfer, delay incrementing the address
	// because data is written into REU RAM on subsequent cycle.
	XferC64REU ? DMAr && BAr :
	// During swap transfer, only increment after second swap state
	XferSwap ?   DMA && BA && SwapState :
	// During verify, don't increment when halting due to mismatch last cycle
	XferVerify ? DMA && BA && !(DMAr && BAr && !Equalr) : 1'b0;

/* Set end of block and set fault/verify error flags to registers */
// Set end of block when DMA active and length==1
assign SetEndOfBlock = DMA && Length1;
// Set fault during verify cycles with BA and data mismatch
assign SetVerifyErr = XferVerify && DMA && BA && !Equal;

/* Gated reset to REU registers */
assign RegReset = 
	// Only reset registers when not doing DMA.
	!DMA && 
	// Reset aborts the current DMA cycle but there is a delay.
	((!nRESETr[1] && !DMA) || 
	// So if a reset pulse is short and ends before DMA ends,
	// register reset nevertheless occurs immediately 
	// after DMA abort even if external reset is no longer active.
	 (!nRESETr[2] && DMAr));
		
endmodule
