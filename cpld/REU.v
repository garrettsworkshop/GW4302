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
	input nIO2,
	/* Address / Data Buffer Control */
	output nAOE,
	output ADIR,
	output nRWOE,
	output nDOE,
	output DDIR,
	/* DMA and IRQ */
	output nIRQ,
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
	wire IRQ, ExecuteEN, FF00DecodeEN;
	wire [1:0] XferType;
	wire [23:0] REUA;
	wire [15:0] CA;
	wire Length1;
	wire [7:0] RegRDD;
	
	/* RAM Outputs */
	wire [7:0] RAMRDD;
	
	/* DMA Sequencer Outputs */
	wire RAMRD, RAMWR;
	wire RegReset;
	wire NextCA, NextREUA, VerifyErr, Autoload;
	
	/* Glue outputs */
	wire AOE, DOE;
	wire RegCS, RegRD, RegWR;
	wire Execute;
	
	REUReg reureg(
		/* Clock & Reset */
		PHI2, RegReset,
		/* Register Read/Write Interface */
		RegRD, RegWR, A[4:0], D[7:0], RegRDD[7:0],
		/* Increment, etc. Control */
		NextCA, NextREUA, VerifyErr, Autoload,
		/* Register Outputs */
		IRQ, ExecuteEN, FF00DecodeEN,
		XferType[1:0], REUA[23:0], CA[15:0], Length1);
	
	RAM ram(
		/* Clocks */
		C8M, PHI2,
		/* R/W Interface */
		RAMRD, RAMWR,
		REUA[23:0], D[7:0], RAMRDD[7:0],
		nRESET,
		/* SDRAM Bus */
		RCLK,
		nCS, nRAS, nCAS, nRWE, CKE,
		RBA, RA, DQMH, DQML, RD[7:0]);
		
	DMASeq dmaseq(
		/* Clock & Reset */
		PHI2, nRESET,
		/* C64 Bus Available */
		BA,
		/* SDRAM Command Outputs */
		RAMRD, RAMWR,
		/* DMA Command Outputs */
		DMA, nWEDMA,
		/* Reset Output to Registers */
		RegReset,
		/* Transfer Inputs */
		RAMRDD[7:0]==D[7:0], Execute, XferType[1:0], Length1,
		/* Register Control Outputs */
		NextCA, NextREUA, XferEnd, VerifyErr, Autoload);
		
	Glue glue(
		/* 6502 Bus */
		PHI2, BA,
		D[7], A[15:0], nIO2, nWE,
		/* Address buffer control */
		AOE, ADIR, nAOE, nRWOE,
		/* Data buffer control */
		DOE, DDIR, nDOE,
		/* DMA and IRQ outputs to C64 */
		nDMA, nIRQ,
		/* Register control outputs */
		RegCS, RegRD, RegWR,
		/* Register inputs */
		FF00DecodeEN, ExecuteEN, IRQ,
		/* Execute output to sequencer */
		Execute,
		/* DMA command inputs */
		DMA, nWEDMA);
	
	assign D[7:0] = DOE ? DMA ? RAMRDD[7:0] : RegRDD[7:0] : 8'bZ;
	
	assign A[15:0] = AOE ? CA[15:0] : 16'bZ;
	
endmodule