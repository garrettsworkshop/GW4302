module geoRAM(
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
	input nIO1,
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
	
	/* geoRAM Registers */
	wire [7:0] Block;
	wire [5:0] Window;
	
	/* RAM Outputs */
	wire [7:0] RAMRDD;
	
	GeoReg georeg(
		/* Clock and reset */
		PHI2, nRESET,
		/* Register write interface */
		!nIO2, nWE, A[7:0], D[7:0],
		/* Register outputs */
		Block[7:0], Window[5:0]);
	
	RAM ram(
		/* Clock and reset */
		PHI2, nRESET,
		/* Select, /WE */
		!nIO1, nWE,
		/* Address, data in/out */
		{Block[7:0], Window[5:0], A[7:0]},
		D[7:0], RAMRDD[7:0],
		/* SDRAM Bus */
		RCLK,
		nCS, nRAS, nCAS, nRWE, CKE,
		RBA, RA, DQMH, DQML, RD[7:0]);

	assign DOE = PHI2 && !nIO1 && nWE;
	assign DDIR = !(PHI2 && !nIO1 && nWE);
	assign nDOE = 1'b0;
	
	assign D[7:0] = DOE ? RAMRDD[7:0] : 8'bZ;
	
	assign ADIR = 1;
	assign nAOE = 0;
	assign nRWOE = 1;
	assign nWEDMA = 1;
	assign nDMA = 1;
	assign nIRQ = 1;
	
endmodule
