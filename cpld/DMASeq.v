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
	/* Register Control Outputs */
	output NextCA,
	output NextREUA,
	output XferEnd,
	output VerifyErr,
	output Autoload);
	
	wire XferC64REU = XferType[1:0]==2'b00;
	wire XferREUC64 = XferType[1:0]==2'b01;
	wire XferSwap = XferType[1:0]==2'b10;
	wire XferVerify = XferType[1:0]==2'b11;
	
	reg SwapState;
	
	always @(negedge PHI2) begin
		if (DMA) begin
			case (XferType[1:0])
				2'b00: begin // C64-to-REU
					if (Length1 && BA) DMA <= 0; // End DMA if Length==1
					DMARW <= 1; // Always read from C64
					RAMRD <= 0;
					RAMWR <= 1; // Write to RAM
				end 2'b01: begin // REU-to-C64
					if (Length1 && BA) DMA <= 0; // End DMA if Length==1
					DMARW <= 0; // Always write to C64
					RAMRD <= 1; // Read from RAM
					RAMWR <= 0;
				end 2'b10: begin // Swap
					if (SwapState) begin
						if (Length1 && BA) DMA <= 0; // End DMA if Length==1
						DMARW <= 1; // Read from C64
						RAMRD <= 1; // Read from RAM
						RAMWR <= 0;
					end else begin
						DMARW <= 0; // Write to C64
						RAMRD <= 0;
						RAMWR <= 1; // Write to RAM
					end
				end 2'b11: begin // Verify
					if ((!Equal || Length1) && BA) DMA <= 0; // End DMA if verify error or Length==1
					DMARW <= 1; // Always read from C64
					RAMRD <= 1; // Read from RAM
					RAMWR <= 0;
				end
			endcase
		end else begin
			DMA <= Execute;
			case (XferType[1:0])
				2'b00: begin // C64-to-REU
					DMARW <= 1; // Read from C64
					RAMRD <= 0;
					RAMWR <= 0; // Don't write to REU yet
				end 2'b01: begin // REU-to-C64
					DMARW <= 0; // Write to C64
					RAMRD <= 1; // Read from REU
					RAMWR <= 0;
				end 2'b10: begin // Swap
					DMARW <= 1; // Read from C64 as if SwapState==1
					RAMRD <= 1; // Read from REU as if SwapState==1
					RAMWR <= 0;
				end 2'b11: begin // Verify
					DMARW <= 1; // Read from C64
					RAMRD <= 1; // Read from REU
					RAMWR <= 0;
				end
			endcase
		end
	end
	
	always @(negedge PHI2) begin
		// Alternate SwapState during DMA transfer when bus available
		if (DMA && BA) SwapState <= !SwapState;
		else SwapState <= 0; // Return SwapState to 0 when not doing DMA
	end
	
	reg DMAr;
	reg BAr;
	reg nRESETr;
	always @(negedge PHI2) begin
		DMAr <= DMA;
		BAr <= BA;
		nRESETr <= nRESET;
	end
	assign RegReset = !nRESETr && !DMA;
		
	wire SecondSwap = XferSwap ? SwapState : 1'b1;
	
	assign NextCA = 0; /*
		// DMA must be active and bus must be available.
		// Don't NextCA on alternating swap cycles 
		DMA && BA && SecondSwap;*/
		
	assign NextREUA = 0; /*
		// For C64-REU cycles, DMA must have been active previous cycle
		// Otherwise DMA must be active current cycle and bus must be available
		(XferC64REU ? (DMAr && BAr) : (DMA && BA)) && 
		SecondSwap; // Don't NextREUA on first swap cycles*/
				
	assign VerifyErr = 0; /*
		// DMA must be active and bus must be available
		DMA && BA &&
		// Verify error on verify cycles where not equal
		!Equal && XferVerify;*/
		
	assign Autoload = 0; /*
	 	// DMA must be active and bus must be available
		DMA && BA &&
		// Autoload when length 1 in regular xfer or second swap cycle
		((Length1 && SecondSwap) ||
		// Autoload during verify xfer when not equal
		(!Equal && XferVerify));*/
	
endmodule