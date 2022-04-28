module RAM(
	/* Clocks */
	input C8M,				// aka C64 dot clock
	input PHI2,				// C64 PHI2
	input nRESET,			// C64 reset input
	/* R/W interface */
	input RDCMD,			// From DMA sequencer
	input WRCMD,			// From DMA sequencer
	input [18:0] A,			// REU address from registers
	input [7:0] WRD,		// write data input is C64 data bus
	output reg [7:0] RDD,	// read data registers to C64 data bus mux
	/* SDRAM bus */
	output reg nRAS,		// SDRAM /RAS
	output reg nCAS,		// SDRAM /CAS
	output reg nRWE,		// SDRAM /WE
	output reg [9:0] RA,	// SDRAM address
	inout [7:0] RD);		// SDRAM data bus

/* Reset synchronization */
reg nRESETr = 0; // Reset synchronizer
reg PORDone = 0; // Power-on reset complete
always @(posedge C8M) nRESETr <= nRESET;
always @(posedge C8M) begin
	if (nRESETr) PORDone <= 1;
end

/* PHI2 edge detector */
reg [1:0] PHI2r = 0;
always @(negedge C8M) PHI2r[0] <= PHI2;
always @(posedge C8M) PHI2r[1] <= PHI2r[0];
wire PHI2Fall = PHI2r[1] && !PHI2r[0];

/* PHI2 cycle substate counter */
reg [2:0] S;
always @(posedge C8M) begin
	// Stay in S0 until reset released
	if (!PORDone) S <= 3'h0;
	// Once PORDone, if in S0, wait for PHI2Fall and then enter S1
	else if (S[2:0]==3'h0 && PHI2Fall) S <= 3'h1;
	// If in nonzero state, increment state counter, rolling over to S0.
	else if (S[2:0]!=3'h0) S[2:0] <= S[2:0]+3'h1;
end

/* Command gating */
reg InitDone = 0; // SDRAM initialization sequence complete
wire WRCMDg = WRCMD && InitDone; // Write command (higher priority)
wire RDCMDg = RDCMD && !WRCMD && InitDone; // Read command (lower priority)
// Initialization complete after S7 reached for the first time
always @(posedge C8M) if (S[2:0]==3'h7) InitDone <= 1'b1;

/* SDRAM command issue */
// Command issue is a function of S, InitDone, RDCMD, WRCMD
always @(posedge C8M) begin
	case (S[2:0])
		3'h0: begin
			if (RDCMDg || WRCMDg) begin
				// If read/write command, issue ACT
				nRAS <= 0;
				nCAS <= 1;
				nRWE <= 1;
			end else begin // Otherwise NOP CKE
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
			end
		end 3'h1: begin
			if (WRCMDg) begin
				// If write request, issue WR
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 0;
			end else begin
				// Otherwise issue RD
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 1;
			end
		end 3'h2: begin // NOP CKE
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
		end 3'h3: begin 
			// Issue PC ALL before LDM/AREF or after RD/WR
			nRAS <= 0;
			nCAS <= 1;
			nRWE <= 0;
		end 3'h4: begin
			if (!InitDone) begin
				// If initializing, issue LDM to load mode register
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 0;
			end else begin
				// If init done, issue AREF
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 1;
			end
		end 3'h5: begin // NOP CKE
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
		end 3'h6: begin // NOP CKE
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
		end 3'h7: begin // NOP CKE
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
		end
	endcase
end

/* SDRAM address bus control */
// Address is a function of S[2:0] and A[23:0]
always @(posedge C8M) begin
	case (S[2:0])
		3'h0: begin // ACT/NOP
			// Output row address on RA[9:0]
			RA[9:0] <= A[18:9];
		end 3'h1: begin // RD/WR/NOP
			// RA[9] is don't care.
			RA[9] <=	1'b0;
			// Output column address on RA[8:0]
			RA[8:0] <=	A[8:0];
		end 3'h2, 3'h3, 3'h4, 3'h5, 3'h6, 3'h7: begin // NOP/PC/AREF/LDM/NOP
			// Mode register contents for LDM, don't care for AREF and NOP
			RA[9] <=					1'b1;	// "1" for single write mode
			RA[8] <=					1'b0;	// Reserved in mode register
			RA[7] <=					1'b0;	// "0" for not test mode
			RA[6:4] <=					3'b010;	// "2" for CAS latency 2
			RA[3] <= 					1'b0;	// "0" for sequential burst
			RA[2:0] <=					3'b000;	// "0" for burst length 1
		end
	endcase
end

/* Read/write data registration */
reg [7:0] WRDr; // Write data
// Register read data during S3 when RDCMD active
always @(posedge C8M) if(!S[2]) RDD[7:0] <= RD[7:0];
// Register write data from C64 bus at PHI2 falling edge
always @(negedge PHI2) WRDr[7:0] <= WRD[7:0];

/* SDRAM data bus */
reg RDOE = 0; // Output enable for SDRAM data bus
// Enable only during S1 of a write cycle
always @(posedge C8M) RDOE <= S[2:1]==2'b00;
assign RD[7:0] = RDOE ? WRDr[7:0] : 8'bZ; // SDRAM data bus

endmodule
