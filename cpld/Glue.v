module Glue(
	/* 6502 Bus */
	input PHI2,
	input BA,
	input [7:7] D,
	input [15:0] A,
	input nIO2,
	input nWE,
	/* Address buffer control */
	output AOE,
	output ADIR,
	output nAOE,
	output nRWOE,
	/* Data buffer control */
	output DOE,
	output DDIR,
	output nDOE,
	/* DMA and IRQ outputs to C64 */
	output nDMA,
	output nIRQ,
	/* Register control outputs */
	output RegCS,
	output RegRD,
	output RegWR,
	/* Register inputs */
	input FF00DecodeEN,
	input ExecuteEN,
	input IRQ,
	/* Execute output to sequencer */
	output Execute,
	/* DMA command inputs */
	input DMA,
	input DMARW);
	
	assign AOE = DMA;
	assign ADIR = !AOE;
	assign nAOE = !(!DMA || BA);
	assign nRWOE = !(DMA && BA);
	
	assign DOE = DMA ? !DMARW : nWE;
	assign DDIR = !DOE;
	assign nDOE = !(DMA ? (BA && !DMARW) : (RegCS && nWE));
	
	assign nDMA = !DMA;
	
	assign nIRQ = !IRQ;
	
	assign RegCS = !DMA && !nIO2;
	assign RegRD = RegCS && nWE;
	assign RegWR = RegCS && !nWE;
	
	assign Execute = FF00DecodeEN ? 
		(ExecuteEN && A[15:0]==16'hFF00) :
		(RegCS && A[4:0]==5'h1 && D[7]);
endmodule