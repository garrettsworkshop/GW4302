module DMASeq(
	input PHI2,
	input nRESET,
	
	input BA,
	
	output reg RAMRD,
	output reg RAMWR,
	
	input Equal,
	input Execute,
	
	output reg DMA,
	output reg DMARW,
	
	output RegReset,
	
	input [1:0] XferType,
	input Length1,
	
	output NextCA,
	output NextREUA,
	output XferEnd,
	output VerifyErr);
	
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
	always @(negedge PHI2) DMAr <= DMA;
	
	reg nRESETr;
	always @(negedge PHI2) nRESETr <= nRESET;
	assign RegReset = !nRESETr && !DMA;
	
	assign NextCA = DMA && BA && // DMA must be active and bus must be available
		(XferType[1:0]!=2'b10 || SwapState); // Don't NextCA on alternating swap cycles 
		
	assign NextREUA = (XferType[1:0]==2'b00 ? (DMAr) : (DMA && BA)) && 
		// For C64-REU cycles, DMA must have been active previous cycle
		// Otherwise DMA must be active current cycle and bus must be available
		(XferType[1:0]!=2'b10 || SwapState); // Don't NextREUA on alternating swap cycles
		
	assign XferEnd = DMA && BA && // DMA must be active and bus must be available
		Length1 && // Transfer over when length 1
		(XferType[1:0]!=2'b10 || SwapState); // Only end transfer during second swap cycle
		
	assign VerifyErr = DMA && BA && // DMA must be active and bus must be available
		!Equal && XferType[1:0]==2'b11; // Verify error on verify cycles where not equal
	
endmodule