module RAMctrl(
	/* Clocks */
	input C8M,				// aka C64 dot clock
	input PHI2,				// C64 PHI2
	input nRESET,			// C64 reset input
	/* R/W interface */
	input RDCMD,			// From DMA sequencer
	input WRCMD,			// From DMA sequencer
	input [23:0] A,			// REU address from registers
	input [7:0] WRD,		// write data input is C64 data bus
	output reg [7:0] RDD,	// read data registers to C64 data bus mux
	/* SDRAM bus */
	output RCLK,			// SDRAM clock
	output reg nCS,			// SDRAM chip select
	output reg nRAS,		// SDRAM /RAS
	output reg nCAS,		// SDRAM /CAS
	output reg nRWE,		// SDRAM /WE
	output reg CKE,			// SDRAM clock enable
	output reg [1:0] RBA,	// SDRAM bank address
	output reg [12:0] RA,	// SDRAM address
	output reg DQMH,		// SDRAM data mask high
	output reg DQML,		// SDRAM data mask low
	inout [7:0] RD);		// SDRAM data bus
	
/* RAM clock output */
ODDRXE rclk_oddr(.D0(1'b0), .D1(1'b1), 
	.SCLK(C8M), .RST(1'b0), .Q(RCLK));

/* Reset synchronization */
reg nRESETr = 0; // Reset synchronizer
reg PORDone = 0; // Power-on reset complete
always @(posedge C8M) nRESETr <= nRESET;
always @(posedge C8M) if (nRESETr) PORDone <= 1;

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

/* Refresh Counter */
reg [2:0] RefCnt; // Refresh counter counts from 0-6
always @(posedge C8M) begin
	if (S==3'h7 && InitDone) begin
		if (RefCnt[2:0]==3'h6) RefCnt[2:0] <= 3'h0;
		else RefCnt[2:0] <= RefCnt[2:0]+3'h1;
	end
end
// Refresh requested when RefCnt==0
wire RefReq = RefCnt[1:0]==2'b00;

/* SDRAM command issue */
// Command issue is a function of S, InitDone, RDCMD, WRCMD, RefCnt
always @(posedge C8M) begin
	case (S[2:0])
		3'h0: begin
			if (!InitDone) begin
				// If not initialized, issue NOP CKE
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else if (RDCMDg || WRCMDg) begin
				// If read/write command, issue ACT
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else begin
				// Otherwise if initialized but idle, issue NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 0;
			end
		end 3'h1: begin
			if (WRCMDg) begin
				// If write request, issue WR
				nCS <= 0;
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 0;
				CKE <= 1;
			end else if (RDCMDg) begin
				// If read request, issue RD
				nCS <= 0;
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 1;
				CKE <= 1;
			end else begin // Otherwise NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 0;
			end
		end 3'h2: begin
			if (!InitDone || RefReq || RDCMDg || WRCMDg) begin
				// Issue NOP CKE in preparation to precharge
				// before initializing/refreshing or after reading/writing
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else begin // Otherwise NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 0;
			end
		end 3'h3: begin 
			if (!InitDone || RefReq || RDCMDg || WRCMDg) begin
				// Issue PC ALL before LDM/AREF or after RD/WR
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 1;
				nRWE <= 0;
				CKE <= 1;
			end else begin // Otherwise NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 0;
			end
		end 3'h4: begin
			if (!InitDone) begin
				// If initializing, issue LDM to load mode register
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 0;
				CKE <= 1;
			end else if (RefReq) begin
				// If init done and refresh request, issue AREF
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 1;
				CKE <= 1;
			end else begin // Otherwise NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 0;
			end
		end 3'h5: begin // NOP CKD
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 0;
		end 3'h6: begin // NOP CKD
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 0;
		end 3'h7: begin // NOP CKE before possible ACT issued next S0
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 1;
		end
	endcase
end

/* SDRAM address bus control */
// Address is a function of S[2:0] and A[23:0]
always @(posedge C8M) begin
	case (S[2:0])
		3'h0: begin // ACT/NOP
			// Output bank address
			RBA[1:0] <= A[22:21];
			// Output row address on RA[11:0]
			RA[11:0] <= A[20:9];
			// Mask both bytes
			DQMH <= 1;
			DQML <= 1;
		end 3'h1: begin // RD/WR/NOP
			// Bank address stays the same
			RBA[1:0] <=	A[22:21];
			// RA[11] and RA[9] are don't care.
			// RA[10] low to disable auto-precharge.
			RA[11] <=	1'b0;
			RA[10] <=	1'b0; // don't auto-precharge
			RA[9] <=	1'b1;
			// Output column address on RA[8:0]
			RA[8:0] <=	{A[23], A[8:1]};
			// Unmask only one byte based on A[0]
			DQMH <= 	 A[0];
			DQML <=		!A[0];
		end 3'h2, 3'h3, 3'h4, 3'h5, 3'h6, 3'h7: begin // NOP/PC/AREF/LDM/NOP
			// Mode register contents for LDM, don't care for AREF and NOP
			RBA[1:0] <=					2'b00;	// Reserved in mode register
			RA[11] <=					1'b0;	// Reserved in mode register
			if (!S[2]) RA[10] <=		1'b1;	// "precharge all"
			else RA[10] <=				1'b0;	// Reserved in mode register
			RA[9] <=					1'b1;	// "1" for single write mode
			RA[8] <=					1'b0;	// Reserved in mode register
			RA[7] <=					1'b0;	// "0" for not test mode
			RA[6:4] <=					3'b010;	// "2" for CAS latency 2
			RA[3] <= 					1'b0;	// "0" for sequential burst
			RA[2:0] <=					3'b000;	// "0" for burst length 1
			// Mask both bytes
			DQMH <= 1;
			DQML <= 1;
		end
	endcase
	RA[12] <= 0; // RA[12] always 0 because we don't need 32 MB capacity.
end

/* Read/write data registration */
reg [7:0] WRDr; // Write data
// Register read data during S3 when RDCMD active
always @(posedge C8M) if(RDCMD && S[2:0]==3'h3) RDD[7:0] <= RD[7:0];
// Register write data from C64 bus at PHI2 falling edge
always @(negedge PHI2) WRDr[7:0] <= WRD[7:0];

/* SDRAM data bus */
reg RDOE = 0; // Output enable for SDRAM data bus
// Enable only during S1 of a write cycle
always @(posedge C8M) RDOE <= WRCMDg && S[2:0]==3'h1;
assign RD[7:0] = RDOE ? WRDr[7:0] : 8'bZ; // SDRAM data bus

endmodule
