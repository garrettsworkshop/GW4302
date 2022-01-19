module REUReg(
	/* Clock & Reset */
	input PHI2,
	input Reset,
	
	/* Register Read/Write Interface */
	input RegRD,
	input RegWR,
	input [4:0] A,
	input [7:0] WRD,
	output [7:0] RDD,
	
	/* Increment, etc. Control */
	input NextCA,
	input NextREUA,
	input XferEnd,
	input VerifyErr,
	
	/* Register Outputs */
	output IRQOut,
	output ExecuteOut,
	output FF00DecodeOut,
	output [1:0] XferTypeOut,
	output [23:0] REUAOut,
	output [15:0] CAOut,
	output Length1);

/* REU Registers - 0x0 Status Register */
reg IntPending;
reg EndOfBlock;
reg Fault;
reg Size;
reg [3:0] Version;

/* REU Registers - 0x1 Command Register */
reg Execute;
reg Autoload;
reg nFF00Decode;
reg [1:0] XferType;
assign ExecuteOut = Execute;
assign FF00DecodeOut = !nFF00Decode;
assign XferTypeOut = XferType;

/* REU Registers - 0x2, 0x3 Commodore Address */
reg [15:0] CA;
reg [15:0] CAWritten;
assign CAOut = CA;

/* REU Registers - 0x4, 0x5, 0x6 REU Address */
reg [23:0] REUA;
reg [23:0] REUAWritten;
assign REUAOut = REUA;

/* REU Registers - 0x7, 0x8 Transfer Length */
reg [15:0] Length;
reg [15:0] LengthWritten;
assign Length1 = Length==1;

/* REU Registers - 0x9 Interrupt Mask Register */
reg IntEnable;
reg EndOfBlockMask;
reg VerifyErrMask;

/* REU Registers - 0xA Address Control */
reg [1:0] IncMode;

/* Data Output Mux */
assign RDD[7:0] = 
	A[4:0]==4'h0 ? { IntPending, EndOfBlock, Fault, Size, Version[3:0] } :
	A[4:0]==4'h1 ? { Execute, 1'b0, Autoload, nFF00Decode, 2'b00, XferType[1:0] } :
	A[4:0]==4'h2 ? CA[7:0] :
	A[4:0]==4'h3 ? CA[15:8] :
	A[4:0]==4'h4 ? REUA[7:0] :
	A[4:0]==4'h5 ? REUA[15:8] :
	A[4:0]==4'h6 ? REUA[23:16] :
	A[4:0]==4'h7 ? Length[7:0] :
	A[4:0]==4'h8 ? Length[15:8] :
	A[4:0]==4'h9 ? { IntEnable, EndOfBlockMask, VerifyErrMask, 5'b11111 } :
	A[4:0]==4'hA ? { IncMode[1:0], 6'b111111 } :
	8'hFF;

/* Status register (0x0) control */
always @(negedge PHI2) begin
	if (Reset) begin
		IntPending <= 0;
		EndOfBlock <= 0;
		Fault <= 0;
	end else if (RegRD && A[4:0]==5'h0) begin
		IntPending <= 0;
		EndOfBlock <= 0;
		Fault <= 0;
	end else if (XferEnd) begin
		IntPending <= 1;
		EndOfBlock <= 1;
	end else if (VerifyErr) begin
		IntPending <= 1;
		Fault <= 1;
	end
	
	if (Reset) begin
		Size <= 1;
		Version <= 0;
	end
end

/* Command register (0x1) control */
always @(negedge PHI2) begin
	if (Reset) Execute <= 0;
	else if (RegWR && A[4:0]==5'h1) begin
		Execute = WRD[7];
	end else if (XferEnd || VerifyErr) begin
		Execute <= 0;
	end
	
	if (Reset) begin
		Autoload <= 0;
		nFF00Decode <= 1;
		XferType[1:0] <= 0;
	end else if (RegWR && A[4:0]==5'h1) begin
		Autoload <= WRD[6];
		nFF00Decode <= WRD[4];
		XferType[1:0] <= WRD[1:0];
	end
end

/* Commodore address register lo (0x2) control */
always @(negedge PHI2) begin
	if (Reset) begin
		CA[7:0] <= 0;
	end else if (RegWR && A[4:0]==5'h2) begin
		CA[7:0] <= WRD[7:0];
		CAWritten[7:0] <= WRD[7:0];
	end else if (XferEnd) begin
		CA[7:0] <= CAWritten[7:0];
	end else if (NextCA) begin
		CA[7:0] <= CA[7:0]+1;
	end
end 

/* Commodore address register hi (0x3) control */
always @(negedge PHI2) begin
	if (Reset) begin
		CA[15:8] <= 0;
	end else if (RegWR && A[4:0]==5'h3) begin
		CA[15:8] <= WRD[7:0];
		CAWritten[15:8] <= WRD[7:0];
	end else if (XferEnd) begin
		CA[15:8] <= CAWritten[15:8];
	end else if (NextCA && CA[7:0]==8'hFF) begin
		CA[15:8] <= CA[15:8]+1;
	end
end

/* REU address register lo (0x4) control */
always @(negedge PHI2) begin
	if (Reset) begin
		REUA[7:0] = 0;
		REUAWritten[7:0] = 0;
	end else if (RegWR && A[4:0]==5'h4) begin
		REUA[7:0] = WRD[7:0];
		REUAWritten[7:0] = WRD[7:0];
	end else if (XferEnd) begin
		REUA[7:0] <= REUAWritten[7:0];
	end else if (NextREUA) begin
		REUA[7:0] <= REUA[7:0]+1;
	end
end

/* REU address register mid (0x5) control */
always @(negedge PHI2) begin
	if (Reset) begin
		REUA[15:8] = 0;
		REUAWritten[15:8] = 0;
	end else if (RegWR && A[4:0]==5'h5) begin
		REUA[15:8] = WRD[7:0];
		REUAWritten[15:8] = WRD[7:0];
	end else if (XferEnd) begin
		REUA[15:8] <= REUAWritten[15:8];
	end else if (NextREUA && REUA[7:0]==8'hFF) begin
		REUA[15:8] <= REUA[15:8]+1;
	end
end


/* REU address register hi (0x6) control */
always @(negedge PHI2) begin
	if (Reset) begin
		REUA[23:16] = 0;
		REUAWritten[23:16] = 0;
	end else if (RegWR && A[4:0]==5'h6) begin
		REUA[23:16] = WRD[7:0];
		REUAWritten[23:16] = WRD[7:0];
	end else if (XferEnd) begin
		REUA[23:16] <= REUAWritten[23:16];
	end else if (NextREUA && REUA[15:0]==16'hFFFF) begin
		REUA[18:16] <= REUA[18:16]+1;
	end
end

/* Length register lo (0x7) control */
always @(negedge PHI2) begin
	if (Reset) begin
		Length[7:0] <= 8'hFF;
		LengthWritten[7:0] <= 8'hFF;
	end else if (RegWR && A[4:0]==5'h7) begin
		Length[7:0] <= WRD[7:0];
		LengthWritten[7:0] <= WRD[7:0];
	end else if (XferEnd) begin
		Length[7:0] <= LengthWritten[7:0];
	end else if (NextCA) begin
		Length[7:0] <= Length[7:0]-1;
	end
end

/* Length register hi (0x8) control */
always @(negedge PHI2) begin
	if (Reset) begin
		Length[15:8] <= 8'hFF;
		LengthWritten[15:8] <= 8'hFF;
	end else if (RegWR && A[4:0]==5'h8) begin
		Length[15:8] <= WRD[7:0];
		LengthWritten[15:8] <= WRD[7:0];
	end else if (XferEnd) begin
		Length[15:8] <= LengthWritten[15:8];
	end else if (NextCA && Length[7:0]==8'hFF) begin
		Length[15:8] <= Length[15:8]-1;
	end
end

/* Interrupt mask register (0x9) control */
always @(negedge PHI2) begin
	if (Reset) begin
		IntEnable <= 0;
		EndOfBlockMask <= 0;
		VerifyErrMask <= 0;
	end else begin
		IntEnable <= WRD[7];
		EndOfBlockMask <= WRD[6];
		VerifyErrMask <= WRD[5];
	end
end
assign IRQOut = IntEnable && 
	((EndOfBlock && EndOfBlockMask) || 
	 (VerifyErr && VerifyErrMask));

/* Address control register (0xA) control */
always @(negedge PHI2) begin
	if (Reset) IncMode <= 0;
	else if (RegWR && A[4:0]==5'hA) IncMode[1:0] <= WRD[7:6];
end

endmodule
