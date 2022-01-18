module DMASeq(
	input PHI2,
	input nRESET,
	
	input BA,
	
	output reg RAMRD,
	output reg RAMWR,
	
	input Equal,
	input Execute,
	
	output DMA,
	output reg DMARW,
	
	output reg RegReset,
	
	input [1:0] XferType,
	input Length1,
	
	output NextCA,
	output NextREUA,
	output XferEnd,
	output VerifyErr);
	
	reg Executing;
	reg SwapState;
	assign DMA = Executing;
	
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
						SwapState <= 0;
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
			Executing <= 1;
			SwapState <= 1;
			case (XferType[1:0])
				2'b00: begin // C64-to-REU
					RAMRD <= 0;
					RAMWR <= 0;
				end 2'b01: begin // REU-to-C64
					RAMRD <= 1;
					RAMWR <= 0;
				end 2'b10: begin // Swap
					RAMRD <= 1;
					RAMWR <= 0;
				end 2'b11: begin // Verify
					RAMRD <= 1;
					RAMWR <= 0;
				end
			endcase
		end
	end
	
endmodule