module Glue(
	/* 6502 Bus */
	input PHI2,
	input BA,
	input nIO2,
	input nWE,
	/* Address buffer control */
	output AOE,
	/* Data buffer control */
	output DOE,
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

/* Data bus control */
// Output data during reg. read during DMA when and writing
assign DOE = (PHI2 && RegRD) || (AOE && !nWEDMA);

/* /DMA and /IRQ active-low outputs */
assign nDMA = !DMA;
assign nIRQ = !IRQ;

/* REU register select, read, write signals */
assign RegCS = !DMA && !nIO2;
assign RegRD = RegCS && nWE;
assign RegWR = RegCS && !nWE;
	
endmodule
