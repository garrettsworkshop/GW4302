module REUReg(
	/* Clock & Reset */
	input PHI2,				// C64 PHI2 clock input
	input Reset,			// Register reset signal gated by DMA sequencer
	/* Register Read/Write Interface */
	input RegRD,			// REU read select signal on C64 bus
	input RegWR,			// REU write select signal on C64 bus
	input FF00WR,			// 0xFF00 write decode on C64 bus
	input [4:0] A,			// C64 A[4:0] used as register select
	input [7:0] WRD,		// Write data from C64
	output [7:0] RDD,		// Read data to C64
	/* Increment, etc. Control */
	input IncCA,			// Increment C64 address signal from DMA sequencer
	input DecLen,			// Decrement length signal from DMA sequencer
	input IncREUA,			// Increment REU address signal from DMA sequencer
	input XferEnd,			// Transfer end signal from DMA sequencer
	input SetEndOfBlock,	// Set end of block signal from DMA sequencer
	input SetVerifyErr,		// Set fault/verify err. signal from DMA sequencer
	/* Register Outputs */
	output IRQOut,			// IRQ output to 6510
	output [1:0] XferTypeOut,	// REU transfer type register output (bypassed) to DMA sequencer
	output [23:0] REUAOut,		// REU address register output to SDRAM ctrl.
	output [15:0] CAOut,		// C64 address register output to C64 bus
	output Length1,				// Transfer length == 1 indication to DMA sequencer
	output Execute);			// Execute signal to DMA sequencer

/* REU Registers - 0x0 Status Register */
reg IntPending;
reg EndOfBlock;
reg Fault;

/* REU Registers - 0x1 Command Register */
reg DF01Reserved6;
reg [3:2] DF01Reserved32;
reg ExecuteEN;
reg AutoloadEN;
reg FF00DecodeEN;
reg [1:0] XferType;

/* REU Registers - 0x2, 0x3 Commodore Address */
reg [15:0] CA;
reg [15:0] CAWritten;
assign CAOut = CA;

/* REU Registers - 0x4, 0x5, 0x6 REU Address */
reg [23:0] REUA;
reg [18:0] REUAWritten;
assign REUAOut = REUA;

/* REU Registers - 0x7, 0x8 Transfer Length */
reg [15:0] Length;
reg [15:0] LengthWritten;
assign Length1 = Length[15:0]==16'h01;
assign Length2 = Length[15:0]==16'h02;

/* REU Registers - 0x9 Interrupt Mask Register */
reg IntEnable;
reg EndOfBlockMask;
reg VerifyErrMask;

/* REU Registers - 0xA Address Control */
reg [1:0] IncMode;
wire IncREUAg = !IncMode[0] && IncREUA;
wire IncCAg = !IncMode[1] && IncCA;
wire DecLeng = DecLen;

/* Data Output Mux */
assign RDD[7:0] = 
	A[4:0]==4'h0 ? { IntPending, EndOfBlock, Fault, 1'b1, 4'b0000 } :
	A[4:0]==4'h1 ? { ExecuteEN, DF01Reserved6, AutoloadEN, ~FF00DecodeEN, DF01Reserved32[3:2], XferType[1:0] } :
	A[4:0]==4'h2 ? CA[7:0] :
	A[4:0]==4'h3 ? CA[15:8] :
	A[4:0]==4'h4 ? REUA[7:0] :
	A[4:0]==4'h5 ? REUA[15:8] :
	A[4:0]==4'h6 ? {5'b11111, REUA[18:16] } :
	A[4:0]==4'h7 ? Length[7:0] :
	A[4:0]==4'h8 ? Length[15:8] :
	A[4:0]==4'h9 ? { IntEnable, EndOfBlockMask, VerifyErrMask, 5'b11111 } :
	A[4:0]==4'hA ? { IncMode[1:0], 6'b111111 } :
	8'hFF;
	
wire Autoload = AutoloadEN && XferEnd;

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
	end else if (SetEndOfBlock || SetVerifyErr) begin
		IntPending <= 1;
		if (SetEndOfBlock) EndOfBlock <= 1;
		if (SetVerifyErr) Fault <= 1;
	end
end

/* Command register (0x1) control */
wire DF01WR = RegWR && A[4:0]==5'h1;
always @(negedge PHI2) begin
	if (Reset) begin
		ExecuteEN <= 0;
		DF01Reserved6 <= 0;
		AutoloadEN <= 0;
		FF00DecodeEN <= 0;
		DF01Reserved32[3:2] <= 0;
		XferType[1:0] <= 0;
	end else if (DF01WR) begin
		ExecuteEN = WRD[7];
		DF01Reserved6 <= WRD[6];
		AutoloadEN <= WRD[5];
		FF00DecodeEN <= ~WRD[4];
		DF01Reserved32[3:2] <=  WRD[3:2];
		XferType[1:0] <= WRD[1:0];
	end else if (XferEnd) begin
		ExecuteEN <= 0;
		FF00DecodeEN <= 0;
	end
end
// XferType bypassing
// Usually output XferType as stored in registers
// But during write to 0xDF01, substitute corresponding bits of write data
assign XferTypeOut[1:0] = (DF01WR) ? WRD[1:0] : XferType[1:0];

/* Commodore address register lo (0x2) control */
always @(negedge PHI2) begin
	if (Reset) begin
		CA[7:0] <= 0;
	end else if (RegWR && A[4:0]==5'h2) begin
		CA[7:0] <= WRD[7:0];
		CAWritten[7:0] <= WRD[7:0];
	end else if (Autoload || (RegWR && A[4:0]==5'h3)) begin
		CA[7:0] <= CAWritten[7:0];
	end else if (IncCAg) begin
		CA[7:0] <= CA[7:0]+8'h01;
	end
end 

/* Commodore address register hi (0x3) control */
always @(negedge PHI2) begin
	if (Reset) begin
		CA[15:8] <= 0;
	end else if (RegWR && A[4:0]==5'h3) begin
		CA[15:8] <= WRD[7:0];
		CAWritten[15:8] <= WRD[7:0];
	end else if (Autoload || (RegWR && A[4:0]==5'h2)) begin
		CA[15:8] <= CAWritten[15:8];
	end else if (IncCAg && CA[7:0]==8'hFF) begin
		CA[15:8] <= CA[15:8]+8'h01;
	end
end

/* REU address register lo (0x4) control */
always @(negedge PHI2) begin
	if (Reset) begin
		REUA[7:0] <= 0;
		REUAWritten[7:0] <= 0;
	end else if (RegWR && A[4:0]==5'h4) begin
		REUA[7:0] <= WRD[7:0];
		REUAWritten[7:0] <= WRD[7:0];
	end else if (Autoload || (RegWR && A[4:0]==5'h5)) begin
		REUA[7:0] <= REUAWritten[7:0];
	end else if (IncREUAg) begin
		REUA[7:0] <= REUA[7:0]+8'h01;
	end
end

/* REU address register mid (0x5) control */
always @(negedge PHI2) begin
	if (Reset) begin
		REUA[15:8] <= 0;
		REUAWritten[15:8] <= 0;
	end else if (RegWR && A[4:0]==5'h5) begin
		REUA[15:8] <= WRD[7:0];
		REUAWritten[15:8] <= WRD[7:0];
	end else if (Autoload || (RegWR && A[4:0]==5'h4)) begin
		REUA[15:8] <= REUAWritten[15:8];
	end else if (IncREUAg && REUA[7:0]==8'hFF) begin
		REUA[15:8] <= REUA[15:8]+8'h01;
	end
end

/* REU address register hi (0x6) control */
always @(negedge PHI2) begin
	if (Reset) begin
		REUA[23:16] <= 0;
		REUAWritten[18:16] <= 0;
	end else if (RegWR && A[4:0]==5'h6) begin
		REUA[23:19] <= WRD[7:3];
		REUA[18:16] <= WRD[2:0];
		REUAWritten[18:16] <= WRD[2:0];
	end else if (Autoload) begin
		REUA[18:16] <= REUAWritten[18:16];
	end else if (IncREUAg && REUA[15:0]==16'hFFFF) begin
		REUA[18:16] <= REUA[18:16]+3'h1;
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
	end else if (Autoload || (RegWR && A[4:0]==5'h8)) begin
		Length[7:0] <= LengthWritten[7:0];
	end else if (DecLeng) begin
		Length[7:0] <= Length[7:0]-8'h01;
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
	end else if (Autoload || (RegWR && A[4:0]==5'h7)) begin
		Length[15:8] <= LengthWritten[15:8];
	end else if (DecLeng && Length[7:0]==8'h00) begin
		Length[15:8] <= Length[15:8]-8'h01;
	end
end

/* Interrupt mask register (0x9) control */
always @(negedge PHI2) begin
	if (Reset) begin
		IntEnable <= 0;
		EndOfBlockMask <= 0;
		VerifyErrMask <= 0;
	end else if (RegWR && A[4:0]==5'h9) begin
		IntEnable <= WRD[7];
		EndOfBlockMask <= WRD[6];
		VerifyErrMask <= WRD[5];
	end
end
assign IRQOut = IntEnable && 
	((EndOfBlock && EndOfBlockMask) || 
	 (Fault && VerifyErrMask));

/* Address control register (0xA) control */
always @(negedge PHI2) begin
	if (Reset) IncMode <= 0;
	else if (RegWR && A[4:0]==5'hA) IncMode[1:0] <= WRD[7:6];
end

/* Execute output control */
assign Execute = 
	// If FF00 decode enabled, execute if
	// execute bit set and write to FF00
	(FF00DecodeEN && ExecuteEN && FF00WR) ||
	// Otherwise if writing to 0xDF01, execute if
	// setting execute and FF00 decode disable bits
	(RegWR && A[4:0]==5'h1 && WRD[7] && WRD[4]);

endmodule
