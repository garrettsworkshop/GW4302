module REU(
	/* Clock and Reset */
	input C8M,
	input PHI2,
	input nRESET,
	/* 6502 Bus */
	input BA,
	inout [7:0] D,
	inout [15:0] A,
	inout nWE,
	output nDMA,
	input nIO1,
	input nIO2,
	/* DMA and IRQ */
	output nIRQ,
	/* SDRAM Bus */
	output nRAS,
	output nCAS,
	output nRWE,
	output [9:0] RA,
	inout [7:0] RD);
	
	/* REU Registers Outputs */
	wire IRQ;
	wire [1:0] XferType;
	wire [18:0] REUA;
	wire [15:0] CA;
	wire Length1;
	wire [7:0] RegRDD;
	
	/* RAM Outputs */
	wire [7:0] RAMRDD;
	
	/* DMA Sequencer Outputs */
	wire DMA;
	wire nWEDMA;
	wire RAMRD, RAMWR;
	wire RegReset;
	wire IncCA, DecLen, IncREUA, XferEnd, SetEndOfBlock, SetVerifyErr;
	
	/* Glue outputs */
	wire AOE, DOE;
	wire RegCS, RegRD, RegWR;
	wire Execute;
	
	RAM ram(
		/* Clock and reset */
		C8M, PHI2, nRESET,
		/* R/W interface */
		RAMRD, RAMWR, REUA[18:0], D[7:0], RAMRDD[7:0],
		/* SDRAM bus */
		nRAS, nCAS, nRWE, RA, RD[7:0]);
	
	REUReg reureg(
		/* Clock and reset */
		PHI2, RegReset,
		/* Register read/write interface */
		RegRD, RegWR, !nWE && A[15:0]==16'hFF00, 
		A[4:0], D[7:0], RegRDD[7:0],
		/* Increment, etc. control */
		IncCA, DecLen, IncREUA, XferEnd, SetEndOfBlock, SetVerifyErr,
		/* Register outputs */
		IRQ, XferType[1:0], REUA[18:0], CA[15:0], Length1, Execute);
	
	DMASeq dmaseq(
		/* Clock and reset */
		PHI2, nRESET,
		/* SDRAM command outputs */
		RAMRD, RAMWR,
		/* DMA command outputs */
		DMA, nWEDMA,
		/* Reset Output to Registers */
		RegReset,
		/* Transfer inputs */
		Execute, XferType[1:0], BA, RAMRDD[7:0]==D[7:0], Length1,
		/* Register control outputs */
		IncCA, DecLen, IncREUA, XferEnd, SetEndOfBlock, SetVerifyErr);
	
	Glue glue(
		/* 6502 bus */
		PHI2, BA, nIO2, nWE,
		/* Address buffer control */
		AOE,
		/* Data buffer control */
		DOE,
		/* DMA and IRQ outputs to C64 */
		nDMA, nIRQ,
		/* Register control outputs */
		RegCS, RegRD, RegWR,
		/* IRQ and DMA comamnd inputs */
		IRQ, DMA, nWEDMA);
	
	wire [7:0] Dout = DMA ? RAMRDD[7:0] : RegRDD[7:0];
	assign D[7:0] = DOE ? Dout[7:0] : 8'bZ;
	
	assign A[15:0] = AOE ? CA[15:0] : 16'bZ;
	assign nWE = AOE ? nWEDMA : 1'bZ;
	
endmodule
