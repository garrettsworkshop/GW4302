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
	input IRQ,
	/* DMA command inputs */
	input DMA,
	input DMARW);
	
assign AOE = DMA; // Output address from FPGA during DMA
assign ADIR = !DMA; // Address buffer direction -- out during DMA, in otherwise
// Address buffer output enable -- enabled during PHI2 except except during 
assign nAOE = !(PHI2 && (!DMA || BA));
// DMA R/W signal output enable -- 
assign nRWOE = !(DMA && BA);

assign DOE = DMA ? !DMARW : (RegRD);
assign DDIR = DMA ? DMARW : !nWE;
assign nDOE = !(PHI2 && (DMA ? BA : RegCS));

assign nDMA = !DMA;

assign nIRQ = !IRQ;

assign RegCS = !DMA && !nIO2;
assign RegRD = RegCS && nWE;
assign RegWR = RegCS && !nWE;
	
endmodule
