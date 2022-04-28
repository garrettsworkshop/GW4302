module REU(
	/* Clock and Reset */
	input C8M,
	input PHI2,
	input nRESET,
	/* 6502 Bus */
	input BA,
	inout [7:0] D,
	inout [15:0] A,
	input nWE,
	output nWEDMA,
	output nDMA,
	output nIRQ,
	input nIO1,
	input nIO2,
	/* Address / Data Buffer Control */
	output nAOE,
	output ADIR,
	output nRWOE,
	output nDOE,
	output DDIR,
	/* SDRAM Bus */
	output RCLK,
	output nCS,
	output nRAS,
	output nCAS,
	output nRWE,
	output CKE,
	output [1:0] RBA,
	output [12:0] RA,
	output DQMH,
	output DQML,
	inout [7:0] RD);
	
	/* REU Registers Outputs */
	wire Execute;
	wire IRQ;
	wire [1:0] XferType;
	wire [23:0] REUA;
	wire [15:0] CA;
	wire Length1;
	wire [7:0] RegRDD;
	
	/* RAM outputs */
	wire [7:0] RAMRDD;
	
	/* DMA sequencer outputs */
	wire DMA;
	wire RAMRD, RAMWR;
	wire RegReset;
	wire IncCA, DecLen, IncREUA, XferEnd, SetEndBlock, SetFault;
	
	/* REU register read/write signals */
	wire RegCS = !DMA && !nIO2;
	wire RegRD = RegCS && nWE;
	wire RegWR = RegCS && !nWE;
	
	RAMctrl ramctrl( /* SDRAM conroller */
		/* Clock and reset */
		C8M, PHI2, nRESET,
		/* R/W interface */
		RAMRD, RAMWR, REUA[23:0], D[7:0], RAMRDD[7:0],
		/* SDRAM bus */
		RCLK, nCS, nRAS, nCAS, nRWE, CKE,
		RBA, RA, DQMH, DQML, RD[7:0]);
	
	REUReg reureg( /* REU registers */
		/* Clock and reset */
		PHI2, RegReset,
		/* Register read/write interface */
		RegRD, RegWR, !nWE && A[15:0]==16'hFF00, 
		A[4:0], D[7:0], RegRDD[7:0],
		/* Increment, etc. control */
		IncCA, DecLen, IncREUA, XferEnd, SetEndBlock, SetFault,
		/* Register outputs */
		IRQ, XferType[1:0], REUA[23:0], CA[15:0], Length1, Execute);
	
	DMASeq dmaseq( /* DMA sequencer */
		/* Clock and reset */
		PHI2, nRESET,
		/* SDRAM and DMA command outputs */
		RAMRD, RAMWR, DMA, nWEDMA,
		/* Transfer inputs */
		Execute, XferType[1:0], BA, RAMRDD[7:0]==D[7:0], Length1,
		/* Register control outputs */
		RegReset, IncCA, DecLen, IncREUA, XferEnd, SetEndBlock, SetFault);
		
	/* Address bus control */
	// Output address during DMA when bus available
	wire AOE = PHI2 && DMA && BA; 
	assign ADIR = !AOE; // Address buffer direction
	assign nRWOE = !AOE; // R/W buffer direction
	assign nAOE = 0; // Address buffer always enabled
	assign A[15:0] = AOE ? CA[15:0] : 16'bZ;

	/* Data bus control */
	// Output data during reg. read and during DMA when writing
	wire DOE = (PHI2 && RegRD) || (AOE && !nWEDMA);
	assign DDIR = !DOE;
	assign nDOE = 0; // Address buffer always enabled
	wire [7:0] Dout = DMA ? RAMRDD[7:0] : RegRDD[7:0];
	assign D[7:0] = DOE ? Dout[7:0] : 8'bZ;

	/* /DMA and /IRQ active-low outputs */
	assign nDMA = !DMA;
	assign nIRQ = !IRQ;
	
endmodule
