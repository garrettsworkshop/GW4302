module RAM(
	/* Clocks */
	input C8M,
	input PHI2,
	/* R/W Interface */
	input WRCMD,
	input RDCMD,
	input [23:0] A,
	input [7:0] WRD,
	output reg [7:0] RDD,
	input nRESET,
	/* SDRAM Bus */
	output RCLK,
	output reg nCS,
	output reg nRAS,
	output reg nCAS,
	output reg nRWE,
	output reg CKE,
	output reg [1:0] RBA,
	output reg [12:0] RA,
	output reg DQMH,
	output reg DQML,
	inout [7:0] RD);
	
/* RAM clock output */
reg CP1, CP2;
always @(posedge C8M) begin CP1 <= !CP1; end
always @(negedge C8M) begin CP2 <= !CP1; end
assign RCLK = CP1 ^ CP2;

/* Reset synchronization */
reg [4:0] nRESETr = 0;
reg PORDone = 0;
always @(posedge C8M) nRESETr[4:0] <= {nRESETr[3:0], nRESET};
always @(posedge C8M) begin
	if (nRESETr[4] && nRESETr[3] && nRESETr[2] && nRESETr[1]) PORDone <= 1;
end

/* PHI2 edge detector */
reg [1:0] PHI2r = 0;
always @(negedge C8M) PHI2r[0] <= PHI2;
always @(posedge C8M) PHI2r[1] <= PHI2r[0];
wire PHI2Fall = PHI2r[1] && !PHI2r[0];

/* PHI2 cycle substate & PLL locked bit */
reg [2:0] S = 0;
always @(posedge C8M) begin
	if (S==0 && PHI2Fall && PORDone) S <= 3'h1;
	else if (S!=0) S <= S+3'h1;
end

/* Command gating */
reg InitDone = 0;
wire RDCMDg = RDCMD && InitDone;
wire WRCMDg = WRCMD && !RDCMD && InitDone;
always @(posedge C8M) if (S[2:0]==3'h7) InitDone <= 1;

/* SDRAM command issue */
always @(posedge C8M) begin
	case (S[2:0])
		0: begin
			if (!InitDone) begin // NOP CKE
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else if (RDCMDg || WRCMDg) begin // ACT
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1;
			end else begin // NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1; //FIXME
			end
		end 1: begin
			if (RDCMDg) begin // RD
				nCS <= 0;
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 1;
				CKE <= 1;
			end else if (WRCMDg) begin // WR
				nCS <= 0;
				nRAS <= 1;
				nCAS <= 0;
				nRWE <= 0;
				CKE <= 1;
			end else begin // NOP CKD
				nCS <= 1;
				nRAS <= 1;
				nCAS <= 1;
				nRWE <= 1;
				CKE <= 1; //FIXME
			end
		end 2: begin // NOP CKE
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 1;
		end 3: begin // PC all
			nCS <= 0;
			nRAS <= 0;
			nCAS <= 1;
			nRWE <= 0;
			CKE <= 1;
		end 4: begin
			if (!InitDone) begin // LDM
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 0;
				CKE <= 1;
			end else begin // AREF
				nCS <= 0;
				nRAS <= 0;
				nCAS <= 0;
				nRWE <= 1;
				CKE <= 1;
			end
		end 5: begin
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 1; //FIXME
		end 6: begin // NOP CKD
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 1; //FIXME
		end 7: begin // NOP CKE
			nCS <= 1;
			nRAS <= 1;
			nCAS <= 1;
			nRWE <= 1;
			CKE <= 1;
		end
	endcase
end

always @(posedge C8M) begin
	case (S[2:0])
		0: begin // ACT/NOP
			RBA[1:0] <= A[23:22];
			RA[11:0] <= A[21:10];
			DQMH <= 1;
			DQML <= 1;
		end 1: begin // RD/WR/NOP
			// RBA stays the same
			RA[12] <= 0;
			RA[11:0] <= { 2'b00, A[9:1] };
			DQMH <=  A[0];
			DQML <= !A[0];
		end 2: begin // NOP
			DQMH <= 1;
			DQML <= 1;
		end 3: begin // PC all
			RA[10] <= 1; // "all"
			DQMH <= 1;
			DQML <= 1;
		end 4: begin // AREF/LDM
			// Mode register contents
			RBA[1:0] <= 2'b00;		// Reserved in mode register
			RA[12:10] <= 3'b000;	// Reserved in mode register
			RA[9] <= 1'b1;			// "1" for single write mode
			RA[8] <= 1'b0;			// Reserved in mode register
			RA[7] <= 1'b0;			// "0" for not test mode
			RA[6:4] <= 3'b010;		// "2" for CAS latency 2
			RA[3] <= 1'b0;			// "0" for sequential burst (not used)
			RA[2:0] <= 3'b000;		// "0" for burst length 1 (no burst)
			DQMH <= 1;
			DQML <= 1;
		end 5: begin // NOP
			DQMH <= 1;
			DQML <= 1;
		end 6: begin // NOP
			DQMH <= 1;
			DQML <= 1;
		end 7: begin // NOP
			DQMH <= 1;
			DQML <= 1;
		end
	endcase
	RA[12] <= RA[12];
end

/* Read data registration */
always @(posedge C8M) if (S==3 && RDCMDg) RDD[7:0] <= RD[7:0];

/* Write data registration */
reg [7:0] WRDr;
always @(negedge PHI2) WRDr[7:0] <= WRD[7:0];

/* RAM data bus control */
reg RDOE = 0;
always @(posedge C8M) RDOE <= S==1 && WRCMDg;
assign RD[7:0] = RDOE ? WRDr[7:0] : 8'bZ;

endmodule
