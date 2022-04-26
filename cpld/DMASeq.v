 module DMASeq(
	/* Clock & Reset */
	input PHI2,
	input nRESET,
	/* C64 Bus Available */
	input BA,
	/* SDRAM Command Outputs */
	output reg RAMRD,
	output reg RAMWR,
	/* DMA Command Outputs */
	output reg DMA,
	output reg DMARW,
	/* Reset Output to Registers */
	output RegReset,
	/* Transfer Inputs */
	input Equal,
	input Execute,
	input [1:0] XferType,
	input Length1,
	input Length2,
	/* Register Control Outputs */
	output IncCA,
	output DecLen,
	output IncREUA,
	output XferEnd,
	output SetEndOfBlock,
	output SetVerifyErr);

wire XferC64REU = XferType[1:0]==2'b00;
wire XferREUC64 = XferType[1:0]==2'b01;
wire XferSwap = XferType[1:0]==2'b10;
wire XferVerify = XferType[1:0]==2'b11;

reg SwapState;

always @(negedge PHI2) begin
	// Alternate SwapState during DMA transfer when bus available
	if (DMA && BA) SwapState <= !SwapState;
	 // Return SwapState to 0 when not doing DMA
	else if (!DMA || XferEnd) SwapState <= 0;
end

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

reg DMAr, BAr, Equalr;
reg [2:1] nRESETr;
always @(negedge PHI2) begin
	DMAr <= DMA;
	BAr <= BA;
	Equalr <= Equal;
	nRESETr[2:1] <= {nRESETr[1], nRESET};
end
assign RegReset = (!nRESETr[1] && !DMA) || (!nRESETr[2] && !DMA && DMAr);

assign IncCA =
	// DMA must be active and bus must be available.
	// Don't NextCA on alternating swap cycles 
	DMA && BA && (!XferSwap || SwapState) && (!XferVerify || !(DMAr && BAr && !Equalr));
	
assign DecLen =
	// DMA must be active and bus must be available.
	// Don't NextCA on alternating swap cycles 
	DMA && BA && (!XferSwap || SwapState) && (!XferVerify || !(DMAr && BAr && !Equalr)) && !Length1;
	
assign IncREUA = 
	XferC64REU ? DMAr && BAr : // Delay advancing REUA during C64->REU xfer
	XferREUC64 ? DMA && BA :
	XferSwap ?   DMA && BA && SwapState : // Only advance after 2nd swap state
	XferVerify ? DMA && BA && !(DMAr && BAr && !Equalr) : 1'b0;
	
assign XferEnd = (DMA && !nRESETr[1]) || 
	(XferC64REU ? DMA && BA && Length1 : 
	 XferREUC64 ? DMA && BA && Length1 : 
	 XferSwap ?   DMA && BA && Length1 && SwapState : 
	 XferVerify ? (DMA && BA && Length1) || (DMAr && BAr && !Equalr): 1'b0);

assign SetEndOfBlock = DecLen && Length2;

assign SetVerifyErr = XferVerify && DMA && BA && !Equal;
		
endmodule
