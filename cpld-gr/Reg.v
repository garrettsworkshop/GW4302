module GeoReg(
	/* Clock & Reset */
	input PHI2,					// C64 PHI2 clock input
	input nRESET,				// C64 reset signal
	/* Register Read/Write Interface */
	input RegSEL,
	input nWE,
	input [7:0] A,				// C64 A[4:0] used as register select
	input [7:0] WRD,			// Write data from C64
	/* Register Outputs */
	output reg [7:0] Block,
	output reg [5:0] Window);

/* Select signals */
wire BlockWR = RegSEL && A[7] && A[6] && A[0] && ~nWE;
wire WindowWR = RegSEL && A[7] && A[6] && ~A[0] && ~nWE;

/* Reset synchronization */
reg nRESETr;
always @(posedge PHI2) begin
	nRESETr <= nRESET;
end

/* Registers */
always @(negedge PHI2) begin
	if (~nRESETr) begin
		Block <= 0;
		Window <= 0;
	end else begin
		if (BlockWR) Block[7:0] <= WRD[7:0];
		if (WindowWR) Window[5:0] <= WRD[5:0];
	end
end

endmodule
