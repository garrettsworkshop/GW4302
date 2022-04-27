module RAM(
	/* Clock and reset */
	input PHI2,				// C64 PHI2
	input nRESET,			// C64 reset
	/* Select, /WE */
	input RAMSEL,
	input nWE,
	/* Address, data in/out */
	input [21:0] A,
	input [7:0] WRD,
	output reg [7:0] RDD,
	/* SDRAM Bus */
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

/* Fast clock */
wire FCLK;
OSCH fclk_OSCH(.STDBY(1'b0), .OSC(FCLK));
defparam fclk_OSCH.NOM_FREQ = "26.60";
	
/* RAM clock output */
ODDRXE rclk_oddr(.D0(1'b0), .D1(1'b1), 
	.SCLK(FCLK), .RST(1'b0), .Q(RCLK));

/* Reset synchronization */
reg [5:0] nRESETr = 0; // Reset synchronizer
reg PORDone = 0; // Power-on reset complete
always @(negedge FCLK) nRESETr[0] <= nRESET;
always @(posedge FCLK) nRESETr[5:1] <= nRESETr[4:0];
always @(posedge FCLK) begin
	if (nRESETr[5] && nRESETr[4] && nRESETr[3] && nRESETr[2]) PORDone <= 1;
end

/* PHI2 edge detector */
reg [2:0] PHI2r = 0;
always @(negedge FCLK) PHI2r[0] <= PHI2;
always @(posedge FCLK) PHI2r[2:1] <= PHI2r[1:0];
wire PHI2Rise = !PHI2r[2] && PHI2r[1];

/* PHI2 cycle substate counter */
reg [3:0] S;
reg InitDone = 0;
always @(posedge FCLK) begin
	// Stay in S0 until reset released
	if (!PORDone) S <= 3'h0;
	// Once PORDone, if in S0, wait for PHI2Rise and then enter S1
	else if (S[2:0]==3'h0 && PHI2Rise) S <= 3'h1;
	// If in nonzero state, increment state counter, rolling over to S0.
	else if (S[2:0]!=3'h0) S[2:0] <= S[2:0]+3'h1;
end
// Initialization complete after S7 reached for the first time
always @(posedge FCLK) if (S[2:0]==3'h7) InitDone <= 1'b1;

/* SDRAM command issue */
// Command issue is a function of S[2:0], InitDone, RDCMD, WRCMD
always @(posedge FCLK) begin
	case (S[2:0])
		3'h0: begin
			if (!InitDone) begin
				// If not initialized, issue NOP CKE
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else begin // NOP CKD
				// Otherwise if initialized, issue NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end
		end 3'h1: begin
			if (RAMSEL) begin
				// If RAM selected, issue NOP CKE
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else begin // NOP CKD
				// Otherwise issue NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end
		end 3'h2: begin
			if (RAMSEL) begin
				// If RAM selected, issue ACT
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else begin // NOP CKD
				// Otherwise issue NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 0;
			end
		end 3'h3: begin
			if (RAMSEL && !nWE) begin
				// If write request, issue WR
				nCS <= 0;
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 0;
				CKE <= 1;
			end else if (RAMSEL && nWE) begin
				// If read request, issue RD
				nCS <= 0;
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 1;
				CKE <= 1;
			end else begin
				// Otherwise issue NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 0;
			end
		end 3'h4: begin
			// Issue NOP CKE in preparation to precharge
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 1;
		end 3'h5: begin
			// Issue PC ALL
			nCS <= 1;
			nRAS <= 0;
			nCAS <= 1;
			nRWE <= 0;
			CKE <= 1;
		end 3'h6: begin
			if (InitDone) begin
				// If init done, issue AREF to refresh
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 1;
				CKE <= 1;
			end else begin
				// Otherwise issue LDM to load mode register
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 0;
				CKE <= 1;
			end
		end 3'h7: begin
			// Issue NOP CKE
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 1;
		end
	endcase
end

always @(posedge FCLK) begin
	case (S[2:0])
		3'h0, 3'h1: begin // NOP
			// RAM address is don't care
			RBA[1:0] <=	2'b00;
			RA[11:0] <=	12'h000;
			// Mask both bytes
			DQMH <= 1;
			DQML <= 1;
		end 3'h2: begin // ACT/NOP
			// Output bank address
			RBA[1:0] <= A[21:20];
			// Output row address on RA[11:0]
			RA[10:0] <= A[19:9];
			// Mask both bytes
			DQMH <= 1;
			DQML <= 1;
		end 3'h3: begin // RD/WR/NOP
			// Bank address stays the same
			RBA[1:0] <=	A[21:20];
			// RA[11] and RA[9] are don't care.
			// RA[10] low to disable auto-precharge.
			RA[11] <=	1'b0;
			RA[10] <=	1'b0; // don't auto-precharge
			RA[9] <=	1'b0;
			// Output column address on RA[7:0]
			RA[7:0] <=	A[8:1];
			// Unmask only one byte based on A[0]
			DQMH <= 	 A[0];
			DQML <=		!A[0];
		end 3'h4, 3'h5: begin // PC all
			// Bank address is don't care
			RBA[1:0] <= A[21:20];
			// RA[11] is don't care
			RA[11] <=	1'b0;
			// RA[10] high to indicate "precharge all"
			RA[10] <=	1'b1; // "all"
			// RA[9:0] is don't care
			RA[9:0] <=	10'h000;
			// Mask both bytes
			DQMH <= 1;
			DQML <= 1;
		end 3'h6, 3'h7: begin // AREF/LDM, NOP
			// Mode register contents for LDM, don't care for AREF and NOP
			RBA[1:0] <=	2'b00;	// Reserved in mode register
			RA[11:10] <=	2'b00;	// Reserved in mode register
			RA[9] <=		1'b1;	// "1" for single write mode
			RA[8] <=		1'b0;	// Reserved in mode register
			RA[7] <=		1'b0;	// "0" for not test mode
			RA[6:4] <=		3'b010;	// "2" for CAS latency 2
			RA[3] <= 		1'b0;	// "0" for sequential burst (not used)
			RA[2:0] <=		3'b000;	// "0" for burst length 1 (no burst)
			// Mask both bytes
			DQMH <= 1;
			DQML <= 1;
		end
	endcase
	RA[12:11] <= 0; // RA[12:11] always 0 because we don't need 8/16/32 MB
end

/* Read data registration */
// Register read data during S6 of a read cycle
always @(negedge FCLK) if(RAMSEL && nWE && S[2:0]==3'h6) RDD[7:0] <= RD[7:0];

/* SDRAM data bus */
reg RDOE = 0; // Output enable for SDRAM data bus
// Enable only during S3 of a write cycle
always @(posedge FCLK) RDOE <= RAMSEL && !nWE && S[2:0]==3'h3;
assign RD[7:0] = RDOE ? WRD[7:0] : 8'bZ; // SDRAM data bus

endmodule
