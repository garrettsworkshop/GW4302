module Glue(
	/* 6502 Bus */
	input PHI2,
	input BA,
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
	/* IRQ and DMA comamnd inputs */
	input IRQ,
	input DMA,
	input nWEDMA);
	
/* Address bus control */
// Output address during DMA when bus available
assign AOE = PHI2 && DMA && BA; 
assign ADIR = !AOE; // Address buffer direction
assign nRWOE = !AOE; // R/W buffer direction
assign nAOE = 1'b0;

/* Data bus control */
// Output data during reg. read during DMA when and writing
assign DOE = (PHI2 && RegRD) || (AOE && !nWEDMA);
assign DDIR = !DOE;
assign nDOE = 1'b0;

/* /DMA and /IRQ active-low outputs */
assign nDMA = !DMA;
assign nIRQ = !IRQ;

/* REU register select, read, write signals */
assign RegCS = !DMA && !nIO2;
assign RegRD = RegCS && nWE;
assign RegWR = RegCS && !nWE;
	
endmodule
