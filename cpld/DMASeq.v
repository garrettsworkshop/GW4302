module DMASeq(
	input PHI2,
	input nRESET,
	
	input BA,
	
	output RAMRD,
	output RAMWR,
	
	input Equal,
	input Execute,
	
	output DMA,
	output DMARW,
	
	output reg RegReset,
	
	input [1:0] XferType,
	input Length1,
	
	output NextCA,
	output NextREUA,
	output XferEnd,
	output VerifyErr);
	
	reg Executing;
	reg SwapState;
	
	always @(negedge PHI2) begin
		if (Executing) begin
			case (XferType[1:0])
				2'b00: begin // C64-to-REU
					if (Length1) begin
					end else begin
					end
				end 2'b01: begin // REU-to-C64
					if (Length1) begin
					end else begin
					end
				end 2'b10: begin // Swap
					if (SwapState) begin
						if (Length1) begin
						end else begin
						end
					end else begin
						if (Length1) begin
						end else begin
						end
					end
				end 2'b11: begin // Verify
					if (Length1) begin
					end else begin
					end
				end
			endcase
		end else if (Execute) begin
			case (XferType[1:0])
				2'b00: begin // C64-to-REU
					if (Length1) begin
					end else begin
					end
				end 2'b01: begin // REU-to-C64
					if (Length1) begin
					end else begin
					end
				end 2'b10: begin // Swap
					if (SwapState) begin
						if (Length1) begin
						end else begin
						end
					end else begin
						if (Length1) begin
						end else begin
						end
					end
				end 2'b11: begin // Verify
					if (Length1) begin
					end else begin
					end
				end
			endcase
		end
	end
	
endmodule