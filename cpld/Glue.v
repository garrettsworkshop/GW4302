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
	
	assign AOE = 1'b0;
	assign ADIR = 1'b1;
	assign nAOE = 1'b0;
	assign nRWOE = 1'b1;
	
	assign DOE = RegCS && nWE;
	assign DDIR = !DOE;
	assign nDOE = !DOE;
	
	assign nDMA = 1'b1;
	
	assign nIRQ = 1'b1;
	
	assign RegCS = !nIO2;
	assign RegRD = RegCS && nWE;
	assign RegWR = RegCS && !nWE;
	
	assign Execute = 1'b0;
endmodule