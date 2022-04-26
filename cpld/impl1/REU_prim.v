// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Apr 26 03:56:58 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, nIRQ, RCLK, 
            nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, DQML, 
            RD) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // c:/users/garre/repos/gw4302/cpld/reu.v(5[8:14])
    input BA;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    inout [7:0]D;   // c:/users/garre/repos/gw4302/cpld/reu.v(8[14:15])
    inout [15:0]A;   // c:/users/garre/repos/gw4302/cpld/reu.v(9[15:16])
    input nWE;   // c:/users/garre/repos/gw4302/cpld/reu.v(10[8:11])
    output nWEDMA;   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    output nDMA;   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    input nIO2;   // c:/users/garre/repos/gw4302/cpld/reu.v(13[8:12])
    output nAOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    output ADIR;   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    output nRWOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    output nDOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    output DDIR;   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:13])
    output nIRQ;   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
    output RCLK;   // c:/users/garre/repos/gw4302/cpld/reu.v(23[9:13])
    output nCS;   // c:/users/garre/repos/gw4302/cpld/reu.v(24[9:12])
    output nRAS;   // c:/users/garre/repos/gw4302/cpld/reu.v(25[9:13])
    output nCAS;   // c:/users/garre/repos/gw4302/cpld/reu.v(26[9:13])
    output nRWE;   // c:/users/garre/repos/gw4302/cpld/reu.v(27[9:13])
    output CKE;   // c:/users/garre/repos/gw4302/cpld/reu.v(28[9:12])
    output [1:0]RBA;   // c:/users/garre/repos/gw4302/cpld/reu.v(29[15:18])
    output [12:0]RA;   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    output DQMH;   // c:/users/garre/repos/gw4302/cpld/reu.v(31[9:13])
    output DQML;   // c:/users/garre/repos/gw4302/cpld/reu.v(32[9:13])
    inout [7:0]RD;   // c:/users/garre/repos/gw4302/cpld/reu.v(33[14:16])
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_502 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    wire PHI2_N_543 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nIO2_c, 
        nAOE_c, nDOE_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, 
        nRWE_c, n2033, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, 
        RA_c_5, RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, 
        DQML_c, n3474, n2036, IRQ;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    
    wire n511;
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, XferEnd, SetEndOfBlock, SetVerifyErr, 
        DOE, Execute, nWEDMA_N_13;
    wire [7:0]D_7__N_1;
    
    wire n505, n504, EndOfBlock, ExecuteEN;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[12:18])
    
    wire IntEnable, EndOfBlockMask;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(63[11:18])
    
    wire IncCAg, n381, n1992, IntPending_N_450, n3477, n481, n480, 
        n479, n3838, n3513, n463, n464, n3488, n3448, n6, n8, 
        n32, n465, n1559, n2039, n8_adj_651, n2902, n29, n503, 
        n3827, n28, n3333, n20, n19, n7, n18, IRQOut_N_443, 
        Execute_N_446;
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(188[11:15])
    
    wire n4097, n493, A_0__N_532, n4, n492, n491, SwapState, RAMWR_N_560, 
        Length1_N_614, SetEndOfBlock_N_620, n3833, n3826, n3486, C8M_c_enable_11, 
        n3832, n3859, n3858, n3831, n3857, n3471, n564, n3856, 
        n3855, n3, n2489, n2041, n3850, n4096, n3847, n3479, 
        n3478, n2901, n2497, D_out_7, D_out_6, D_out_5, D_out_4, 
        D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, A_out_14, 
        A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, A_out_8, 
        n4_adj_652, A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, 
        RD_out_7, RD_out_6, RD_out_5, n1117, RD_out_4, RD_out_3, 
        n4095, RD_out_2, RD_out_1, n4093, RD_out_0, n3476, n3845, 
        n3844, n11, n3475, n3473, n3472, n3842, n3829, n3263, 
        n3697, n3691, n3828, n3681;
    
    VHI i2 (.Z(VCC_net));
    INV i3501 (.A(PHI2_c), .Z(PHI2_N_543));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    LUT4 i1912_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n381)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1912_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i1205_2_lut_4_lut (.A(S[0]), .B(S[1]), .C(S[2]), .D(RA_c_9), 
         .Z(n1559)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1205_2_lut_4_lut.init = 16'hec00;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n3681), .B(RAMRDD[7]), .C(DMA), .D(n2041), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    L6MUX21 i1689 (.D0(n3477), .D1(n3479), .SD(n3855), .Z(n2039));
    L6MUX21 i1686 (.D0(n3474), .D1(n3476), .SD(n3855), .Z(n2036));
    LUT4 i2_2_lut (.A(A_out_3), .B(A_out_11), .Z(n19)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    L6MUX21 i1683 (.D0(n3471), .D1(n3473), .SD(n3855), .Z(n2033));
    LUT4 i15_4_lut (.A(n29), .B(n3448), .C(n6), .D(n18), .Z(n32)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i15_4_lut.init = 16'h0200;
    LUT4 i12_4_lut (.A(A_out_13), .B(nWE_c), .C(A_out_15), .D(n7), .Z(n29)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i12_4_lut.init = 16'h0020;
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n564), .B(RAMRDD[6]), .C(DMA), .D(n2041), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    PFUMX i3109 (.BLUT(n492), .ALUT(n3472), .C0(n3513), .Z(n3473));
    PFUMX i3112 (.BLUT(n491), .ALUT(n3475), .C0(n3513), .Z(n3476));
    LUT4 i1646_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1646_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(ExecuteEN), .B(A_out_0), .Z(n18)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    PFUMX i3115 (.BLUT(n493), .ALUT(n3478), .C0(n3513), .Z(n3479));
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n3697), .B(RAMRDD[5]), .C(DMA), .D(n2041), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 i11_4_lut (.A(A_out_10), .B(A_out_9), .C(A_out_14), .D(A_out_8), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3), .B(RAMRDD[4]), .C(DMA), .D(n3263), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 i3_2_lut (.A(n8), .B(A_out_12), .Z(n20)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i3_2_lut.init = 16'h4444;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n3691), .B(RAMRDD[3]), .C(DMA), .D(n2041), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n2036), .B(RAMRDD[2]), .C(DMA), .D(n3263), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n2033), .B(RAMRDD[1]), .C(DMA), .D(n3263), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n2039), .B(RAMRDD[0]), .C(DMA), .D(n3263), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    PFUMX i3113 (.BLUT(n465), .ALUT(n481), .C0(A_out_1), .Z(n3477));
    PFUMX i3110 (.BLUT(n463), .ALUT(n479), .C0(A_out_1), .Z(n3474));
    PFUMX i3107 (.BLUT(n464), .ALUT(n480), .C0(A_out_1), .Z(n3471));
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2902), .S1(nWEDMA_N_13));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2901), .COUT(n2902));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2901));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n3858), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n3858), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3858), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n3858), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3858), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3858), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3858), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3858), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3858), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3858), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3858), .B(A[5]), .O(n6));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3858), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3858), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3858), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3858), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3858), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1117), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1117), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1117), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1117), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1117), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1117), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1117), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1117), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n3858), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_c), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n3858), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(n3857), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_c), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:13])
    OB nIRQ_pad (.I(IRQ), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // c:/users/garre/repos/gw4302/cpld/reu.v(23[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // c:/users/garre/repos/gw4302/cpld/reu.v(24[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // c:/users/garre/repos/gw4302/cpld/reu.v(25[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // c:/users/garre/repos/gw4302/cpld/reu.v(26[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/garre/repos/gw4302/cpld/reu.v(27[9:13])
    OB CKE_pad (.I(VCC_net), .O(CKE));   // c:/users/garre/repos/gw4302/cpld/reu.v(28[9:12])
    OB RBA_pad_1 (.I(GND_net), .O(RBA[1]));   // c:/users/garre/repos/gw4302/cpld/reu.v(29[15:18])
    OB RBA_pad_0 (.I(GND_net), .O(RBA[0]));   // c:/users/garre/repos/gw4302/cpld/reu.v(29[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_11 (.I(GND_net), .O(RA[11]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_10 (.I(RA_c_10), .O(RA[10]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // c:/users/garre/repos/gw4302/cpld/reu.v(31[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // c:/users/garre/repos/gw4302/cpld/reu.v(32[9:13])
    IB C8M_pad (.I(C8M), .O(C8M_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(5[8:14])
    IB BA_pad (.I(BA), .O(BA_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(10[8:11])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(13[8:12])
    LUT4 i3114_3_lut (.A(n505), .B(Length[8]), .C(A_out_3), .Z(n3478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3114_3_lut.init = 16'hcaca;
    LUT4 i3111_3_lut (.A(n503), .B(Length[10]), .C(A_out_3), .Z(n3475)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3111_3_lut.init = 16'hcaca;
    LUT4 i3108_3_lut (.A(n504), .B(Length[9]), .C(A_out_3), .Z(n3472)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3108_3_lut.init = 16'hcaca;
    LUT4 i3234_3_lut_rep_94 (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_11)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i3234_3_lut_rep_94.init = 16'h1313;
    LUT4 i1641_3_lut (.A(REUA[13]), .B(Length[5]), .C(A_out_1), .Z(n1992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1641_3_lut.init = 16'hcaca;
    LUT4 m1_lut (.Z(n4095)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i16_4_lut (.A(n19), .B(n32), .C(n28), .D(n20), .Z(Execute_N_446)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i3199_2_lut_rep_87 (.A(A_out_3), .B(A_out_2), .Z(n3855)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3199_2_lut_rep_87.init = 16'heeee;
    LUT4 i1695_3_lut_4_lut (.A(A_out_3), .B(A_out_2), .C(n3488), .D(n3486), 
         .Z(n3)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i1695_3_lut_4_lut.init = 16'hf1e0;
    INV i3502 (.A(C8M_c), .Z(C8M_N_502));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    DMASeq dmaseq (.DMA(DMA), .n4097(n4097), .\XferType[0] (XferType[0]), 
           .n3833(n3833), .Execute(Execute), .n4096(n4096), .XferEnd(XferEnd), 
           .n3831(n3831), .n4(n4), .PHI2_N_543(PHI2_N_543), .nRESET_c(nRESET_c), 
           .nWEDMA_c(nWEDMA_c), .RAMRD(RAMRD), .RAMWR(RAMWR), .n3858(n3858), 
           .RAMWR_N_560(RAMWR_N_560), .BA_c(BA_c), .nWEDMA_N_13(nWEDMA_N_13), 
           .Length1_N_614(Length1_N_614), .SetEndOfBlock_N_620(SetEndOfBlock_N_620), 
           .SetEndOfBlock(SetEndOfBlock), .SetVerifyErr(SetVerifyErr), .IntPending_N_450(IntPending_N_450), 
           .n3333(n3333), .n3827(n3827), .SwapState(SwapState), .n2489(n2489), 
           .nIO2_c(nIO2_c), .nWE_c(nWE_c), .n3850(n3850), .RegReset(RegReset), 
           .n2497(n2497), .n3829(n3829), .\CA[6] (CA[6]), .n3828(n3828), 
           .n11(n11), .\IncMode[1] (IncMode[1]), .IncCAg(IncCAg), .n3857(n3857), 
           .n4093(n4093), .n3826(n3826), .n4_adj_2(n4_adj_652), .PHI2_c(PHI2_c), 
           .nAOE_c(nAOE_c), .DOE(DOE), .n3859(n3859), .n3847(n3847), 
           .n3832(n3832), .nDOE_c(nDOE_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(82[9] 96[64])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    Glue glue (.nWE_c(nWE_c), .nWEDMA_c(nWEDMA_c), .DMA(DMA), .DDIR_c(DDIR_c), 
         .IntEnable(IntEnable), .EndOfBlockMask(EndOfBlockMask), .IRQOut_N_443(IRQOut_N_443), 
         .EndOfBlock(EndOfBlock), .IRQ(IRQ), .n3859(n3859), .A_out_1(A_out_1), 
         .A_out_0(A_out_0), .n3842(n3842), .n3844(n3844), .n8(n8_adj_651), 
         .n3856(n3856), .n3838(n3838), .n3845(n3845), .BA_c(BA_c), .n3857(n3857), 
         .Length1_N_614(Length1_N_614), .n4093(n4093), .n3333(n3333)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(98[7] 113[15])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    REUReg reureg (.\REUA[16] (REUA[16]), .\REUA[17] (REUA[17]), .GND_net(GND_net), 
           .n3833(n3833), .n2497(n2497), .DMA(DMA), .BA_c(BA_c), .\XferType[0] (XferType[0]), 
           .SwapState(SwapState), .XferEnd(XferEnd), .n4(n4), .n3857(n3857), 
           .n3828(n3828), .A_out_1(A_out_1), .CA({CA}), .\REUA[15] (REUA[15]), 
           .\REUA[7] (REUA[7]), .PHI2_N_543(PHI2_N_543), .n4097(n4097), 
           .RegReset(RegReset), .D_out_6(D_out_6), .D_out_1(D_out_1), 
           .n3831(n3831), .IntEnable(IntEnable), .D_out_7(D_out_7), .D_out_5(D_out_5), 
           .n3829(n3829), .n3832(n3832), .n8(n8_adj_651), .n3845(n3845), 
           .D_out_0(D_out_0), .n4096(n4096), .IntPending_N_450(IntPending_N_450), 
           .n4095(n4095), .EndOfBlockMask(EndOfBlockMask), .n3842(n3842), 
           .D_out_2(D_out_2), .D_out_4(D_out_4), .Execute_N_446(Execute_N_446), 
           .Execute(Execute), .\Length[5] (Length[5]), .A_out_3(A_out_3), 
           .n3681(n3681), .A_out_4(A_out_4), .A_out_2(A_out_2), .n2041(n2041), 
           .EndOfBlock(EndOfBlock), .SetEndOfBlock(SetEndOfBlock), .A_out_0(A_out_0), 
           .SetVerifyErr(SetVerifyErr), .n3844(n3844), .\REUA[0] (REUA[0]), 
           .A_0__N_532(A_0__N_532), .\REUA[6] (REUA[6]), .\REUA[5] (REUA[5]), 
           .\REUA[4] (REUA[4]), .\REUA[3] (REUA[3]), .\REUA[2] (REUA[2]), 
           .\REUA[1] (REUA[1]), .D_out_3(D_out_3), .n1992(n1992), .\REUA[14] (REUA[14]), 
           .\REUA[13] (REUA[13]), .\REUA[12] (REUA[12]), .\REUA[11] (REUA[11]), 
           .\REUA[10] (REUA[10]), .\REUA[9] (REUA[9]), .\REUA[8] (REUA[8]), 
           .\REUA[18] (REUA[18]), .n564(n564), .n511(n511), .n3513(n3513), 
           .n3488(n3488), .n3263(n3263), .n3486(n3486), .IRQOut_N_443(IRQOut_N_443), 
           .\Length[14] (Length[14]), .\Length[9] (Length[9]), .\Length[10] (Length[10]), 
           .\Length[8] (Length[8]), .n3850(n3850), .n11(n11), .n3856(n3856), 
           .n3855(n3855), .n3697(n3697), .\IncMode[1] (IncMode[1]), .n480(n480), 
           .Length1_N_614(Length1_N_614), .n464(n464), .n479(n479), .n463(n463), 
           .n481(n481), .n465(n465), .ExecuteEN(ExecuteEN), .n503(n503), 
           .n493(n493), .n3838(n3838), .IncCAg(IncCAg), .n491(n491), 
           .n492(n492), .n505(n505), .nWE_c(nWE_c), .n3448(n3448), .n3691(n3691), 
           .n3826(n3826), .n3827(n3827), .nWEDMA_N_13(nWEDMA_N_13), .n4093(n4093), 
           .RAMWR_N_560(RAMWR_N_560), .n2489(n2489), .nIO2_c(nIO2_c), 
           .n4_adj_1(n4_adj_652), .n3859(n3859), .n3847(n3847), .n504(n504), 
           .SetEndOfBlock_N_620(SetEndOfBlock_N_620)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 68[11])
    RAM ram (.S({S}), .C8M_c(C8M_c), .C8M_c_enable_11(C8M_c_enable_11), 
        .n4095(n4095), .\REUA[10] (REUA[10]), .\REUA[1] (REUA[1]), .RAMRD(RAMRD), 
        .RAMWR(RAMWR), .nRESET_c(nRESET_c), .C8M_N_502(C8M_N_502), .n1117(n1117), 
        .PHI2_c(PHI2_c), .nCS_c(nCS_c), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), 
        .n381(n381), .nRWE_c(nRWE_c), .DQML_c(DQML_c), .A_0__N_532(A_0__N_532), 
        .RCLK_c(RCLK_c), .RA_c_0(RA_c_0), .WRDr({WRDr}), .PHI2_N_543(PHI2_N_543), 
        .D_out_0(D_out_0), .\REUA[11] (REUA[11]), .\REUA[2] (REUA[2]), 
        .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .\REUA[12] (REUA[12]), 
        .\REUA[3] (REUA[3]), .\REUA[13] (REUA[13]), .\REUA[4] (REUA[4]), 
        .\REUA[16] (REUA[16]), .\REUA[7] (REUA[7]), .\REUA[17] (REUA[17]), 
        .\REUA[8] (REUA[8]), .\REUA[18] (REUA[18]), .\REUA[9] (REUA[9]), 
        .RA_c_1(RA_c_1), .\REUA[15] (REUA[15]), .\REUA[6] (REUA[6]), .RA_c_10(RA_c_10), 
        .\REUA[14] (REUA[14]), .\REUA[5] (REUA[5]), .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), 
        .RA_c_4(RA_c_4), .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), 
        .RA_c_9(RA_c_9), .n1559(n1559), .D_out_1(D_out_1), .D_out_2(D_out_2), 
        .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), 
        .D_out_7(D_out_7), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .RA_c_5(RA_c_5), .DQMH_c(DQMH_c), .\REUA[0] (REUA[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(70[6] 80[32])
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (DMA, n4097, \XferType[0] , n3833, Execute, n4096, 
            XferEnd, n3831, n4, PHI2_N_543, nRESET_c, nWEDMA_c, 
            RAMRD, RAMWR, n3858, RAMWR_N_560, BA_c, nWEDMA_N_13, 
            Length1_N_614, SetEndOfBlock_N_620, SetEndOfBlock, SetVerifyErr, 
            IntPending_N_450, n3333, n3827, SwapState, n2489, nIO2_c, 
            nWE_c, n3850, RegReset, n2497, n3829, \CA[6] , n3828, 
            n11, \IncMode[1] , IncCAg, n3857, n4093, n3826, n4_adj_2, 
            PHI2_c, nAOE_c, DOE, n3859, n3847, n3832, nDOE_c) /* synthesis syn_module_defined=1 */ ;
    output DMA;
    output n4097;
    input \XferType[0] ;
    input n3833;
    input Execute;
    output n4096;
    output XferEnd;
    input n3831;
    input n4;
    input PHI2_N_543;
    input nRESET_c;
    output nWEDMA_c;
    output RAMRD;
    output RAMWR;
    output n3858;
    input RAMWR_N_560;
    input BA_c;
    input nWEDMA_N_13;
    input Length1_N_614;
    input SetEndOfBlock_N_620;
    output SetEndOfBlock;
    input SetVerifyErr;
    output IntPending_N_450;
    input n3333;
    input n3827;
    output SwapState;
    output n2489;
    input nIO2_c;
    input nWE_c;
    output n3850;
    output RegReset;
    output n2497;
    input n3829;
    input \CA[6] ;
    input n3828;
    output n11;
    input \IncMode[1] ;
    output IncCAg;
    input n3857;
    input n4093;
    output n3826;
    output n4_adj_2;
    input PHI2_c;
    output nAOE_c;
    output DOE;
    output n3859;
    output n3847;
    input n3832;
    output nDOE_c;
    
    wire PHI2_N_543 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire [2:1]nRESETr;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire DMAr, DMARW_N_590, DMARW_N_595, DMARW_N_589, DMA_N_571, RAMRD_N_544, 
        BAr, Equalr, SwapState_N_565, PHI2_N_543_enable_72, n1580;
    
    LUT4 i1096_4_lut_rep_101 (.A(DMA), .B(nRESETr[1]), .C(DMAr), .D(nRESETr[2]), 
         .Z(n4097)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1096_4_lut_rep_101.init = 16'h1151;
    LUT4 i1200_3_lut_4_lut_3_lut (.A(\XferType[0] ), .B(n3833), .C(Execute), 
         .Z(DMARW_N_590)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(30[19:39])
    defparam i1200_3_lut_4_lut_3_lut.init = 16'hd0d0;
    LUT4 i1096_4_lut_rep_100 (.A(DMA), .B(nRESETr[1]), .C(DMAr), .D(nRESETr[2]), 
         .Z(n4096)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1096_4_lut_rep_100.init = 16'h1151;
    PFUMX DMARW_I_0_151 (.BLUT(DMARW_N_590), .ALUT(DMARW_N_595), .C0(DMA), 
          .Z(DMARW_N_589)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd), .C(DMA), .Z(DMA_N_571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(82[11] 106[5])
    defparam Execute_I_0_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n3831), .B(Execute), .C(n4), .D(DMA), .Z(RAMRD_N_544)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(82[11] 106[5])
    defparam i1_4_lut.init = 16'h5044;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_543), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX DMA_136 (.D(DMA_N_571), .CK(PHI2_N_543), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam DMA_136.GSR = "ENABLED";
    FD1S3AX DMARW_137 (.D(DMARW_N_589), .CK(PHI2_N_543), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam DMARW_137.GSR = "ENABLED";
    FD1S3AX RAMRD_138 (.D(RAMRD_N_544), .CK(PHI2_N_543), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RAMRD_138.GSR = "ENABLED";
    FD1S3IX RAMWR_139 (.D(RAMWR_N_560), .CK(PHI2_N_543), .CD(n3858), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RAMWR_139.GSR = "ENABLED";
    FD1S3AX DMAr_140 (.D(DMA), .CK(PHI2_N_543), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam DMAr_140.GSR = "ENABLED";
    FD1S3AX BAr_141 (.D(BA_c), .CK(PHI2_N_543), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam BAr_141.GSR = "ENABLED";
    FD1S3AX Equalr_142 (.D(nWEDMA_N_13), .CK(PHI2_N_543), .Q(Equalr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam Equalr_142.GSR = "ENABLED";
    LUT4 SetEndOfBlock_I_0_2_lut_3_lut (.A(DMA), .B(Length1_N_614), .C(SetEndOfBlock_N_620), 
         .Z(SetEndOfBlock)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(141[47:63])
    defparam SetEndOfBlock_I_0_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i2_3_lut_4_lut (.A(DMA), .B(Length1_N_614), .C(SetEndOfBlock_N_620), 
         .D(SetVerifyErr), .Z(IntPending_N_450)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(141[47:63])
    defparam i2_3_lut_4_lut.init = 16'hfff2;
    LUT4 i3206_4_lut (.A(n3333), .B(n3827), .C(DMA), .D(nRESETr[1]), 
         .Z(XferEnd)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(82[11] 106[5])
    defparam i3206_4_lut.init = 16'h4404;
    LUT4 SwapState_I_0_1_lut (.A(SwapState), .Z(SwapState_N_565)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(71[14] 75[8])
    defparam SwapState_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(DMAr), .B(BAr), .Z(n2489)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1903_2_lut_rep_82_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3850)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam i1903_2_lut_rep_82_3_lut.init = 16'hfefe;
    LUT4 i1096_4_lut (.A(DMA), .B(nRESETr[1]), .C(DMAr), .D(nRESETr[2]), 
         .Z(RegReset)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1096_4_lut.init = 16'h1151;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_543), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2497), .B(n3829), .C(\CA[6] ), .D(n3828), 
         .Z(n11)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hb000;
    LUT4 IncCAg_I_119_2_lut_3_lut_4_lut (.A(n2497), .B(n3829), .C(\IncMode[1] ), 
         .D(n3828), .Z(IncCAg)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam IncCAg_I_119_2_lut_3_lut_4_lut.init = 16'h0b00;
    FD1P3IX SwapState_135 (.D(SwapState_N_565), .SP(PHI2_N_543_enable_72), 
            .CD(n1580), .CK(PHI2_N_543), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(36[8] 41[4])
    defparam SwapState_135.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_58_3_lut_4_lut (.A(n3857), .B(n4093), .C(n3829), 
         .D(n2497), .Z(n3826)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[16:38])
    defparam i1_2_lut_rep_58_3_lut_4_lut.init = 16'h4404;
    LUT4 i1_2_lut_adj_178 (.A(DMA), .B(SwapState), .Z(n4_adj_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(36[8] 41[4])
    defparam i1_2_lut_adj_178.init = 16'h8888;
    LUT4 i2_3_lut (.A(DMAr), .B(Equalr), .C(BAr), .Z(n2497)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hdfdf;
    LUT4 i3197_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_c)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3197_3_lut_3_lut.init = 16'h2f2f;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 i1_2_lut_rep_91 (.A(DMA), .B(nIO2_c), .Z(n3859)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam i1_2_lut_rep_91.init = 16'heeee;
    LUT4 RegCS_I_0_30_2_lut_rep_79_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n3847)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RegCS_I_0_30_2_lut_rep_79_3_lut.init = 16'h1010;
    LUT4 i1892_4_lut (.A(n4093), .B(XferEnd), .C(n3831), .D(n3832), 
         .Z(DMARW_N_595)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(56[12] 81[6])
    defparam i1892_4_lut.init = 16'hc8c0;
    LUT4 AOE_I_0_26_1_lut_rep_90 (.A(DMA), .Z(n3858)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam AOE_I_0_26_1_lut_rep_90.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_3_lut (.A(DMA), .B(BA_c), .C(XferEnd), .Z(PHI2_N_543_enable_72)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_3_lut_4_lut_3_lut (.A(DMA), .B(XferEnd), .C(BA_c), .Z(n1580)) /* synthesis lut_function=(!(A (B+(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_2_lut_3_lut_4_lut_3_lut.init = 16'h5757;
    LUT4 i3244_4_lut_4_lut_4_lut (.A(DMA), .B(PHI2_c), .C(BA_c), .D(nIO2_c), 
         .Z(nDOE_c)) /* synthesis lut_function=(!(A (B (C))+!A !((D)+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3244_4_lut_4_lut_4_lut.init = 16'h7f3b;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Glue
//

module Glue (nWE_c, nWEDMA_c, DMA, DDIR_c, IntEnable, EndOfBlockMask, 
            IRQOut_N_443, EndOfBlock, IRQ, n3859, A_out_1, A_out_0, 
            n3842, n3844, n8, n3856, n3838, n3845, BA_c, n3857, 
            Length1_N_614, n4093, n3333) /* synthesis syn_module_defined=1 */ ;
    input nWE_c;
    input nWEDMA_c;
    input DMA;
    output DDIR_c;
    input IntEnable;
    input EndOfBlockMask;
    input IRQOut_N_443;
    input EndOfBlock;
    output IRQ;
    input n3859;
    input A_out_1;
    input A_out_0;
    output n3842;
    output n3844;
    input n8;
    input n3856;
    output n3838;
    output n3845;
    input BA_c;
    output n3857;
    input Length1_N_614;
    input n4093;
    output n3333;
    
    
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(37[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 i3224_4_lut (.A(IntEnable), .B(EndOfBlockMask), .C(IRQOut_N_443), 
         .D(EndOfBlock), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(42[15:19])
    defparam i3224_4_lut.init = 16'h575f;
    LUT4 i2_3_lut_rep_74_4_lut (.A(n3859), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3842)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_74_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_rep_76_4_lut (.A(n3859), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3844)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_76_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(n3859), .B(nWE_c), .C(n8), .D(n3856), 
         .Z(n3838)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_77_4_lut (.A(n3859), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3845)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_77_4_lut.init = 16'hffef;
    LUT4 i3221_2_lut_rep_89 (.A(DMA), .B(BA_c), .Z(n3857)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[16:28])
    defparam i3221_2_lut_rep_89.init = 16'h7777;
    LUT4 i2_2_lut_3_lut_4_lut (.A(DMA), .B(BA_c), .C(Length1_N_614), .D(n4093), 
         .Z(n3333)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[16:28])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0800;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module REUReg
//

module REUReg (\REUA[16] , \REUA[17] , GND_net, n3833, n2497, DMA, 
            BA_c, \XferType[0] , SwapState, XferEnd, n4, n3857, 
            n3828, A_out_1, CA, \REUA[15] , \REUA[7] , PHI2_N_543, 
            n4097, RegReset, D_out_6, D_out_1, n3831, IntEnable, 
            D_out_7, D_out_5, n3829, n3832, n8, n3845, D_out_0, 
            n4096, IntPending_N_450, n4095, EndOfBlockMask, n3842, 
            D_out_2, D_out_4, Execute_N_446, Execute, \Length[5] , 
            A_out_3, n3681, A_out_4, A_out_2, n2041, EndOfBlock, 
            SetEndOfBlock, A_out_0, SetVerifyErr, n3844, \REUA[0] , 
            A_0__N_532, \REUA[6] , \REUA[5] , \REUA[4] , \REUA[3] , 
            \REUA[2] , \REUA[1] , D_out_3, n1992, \REUA[14] , \REUA[13] , 
            \REUA[12] , \REUA[11] , \REUA[10] , \REUA[9] , \REUA[8] , 
            \REUA[18] , n564, n511, n3513, n3488, n3263, n3486, 
            IRQOut_N_443, \Length[14] , \Length[9] , \Length[10] , \Length[8] , 
            n3850, n11, n3856, n3855, n3697, \IncMode[1] , n480, 
            Length1_N_614, n464, n479, n463, n481, n465, ExecuteEN, 
            n503, n493, n3838, IncCAg, n491, n492, n505, nWE_c, 
            n3448, n3691, n3826, n3827, nWEDMA_N_13, n4093, RAMWR_N_560, 
            n2489, nIO2_c, n4_adj_1, n3859, n3847, n504, SetEndOfBlock_N_620) /* synthesis syn_module_defined=1 */ ;
    output \REUA[16] ;
    output \REUA[17] ;
    input GND_net;
    output n3833;
    input n2497;
    input DMA;
    input BA_c;
    output \XferType[0] ;
    input SwapState;
    input XferEnd;
    output n4;
    input n3857;
    output n3828;
    input A_out_1;
    output [15:0]CA;
    output \REUA[15] ;
    output \REUA[7] ;
    input PHI2_N_543;
    input n4097;
    input RegReset;
    input D_out_6;
    input D_out_1;
    output n3831;
    output IntEnable;
    input D_out_7;
    input D_out_5;
    output n3829;
    output n3832;
    output n8;
    input n3845;
    input D_out_0;
    input n4096;
    input IntPending_N_450;
    input n4095;
    output EndOfBlockMask;
    input n3842;
    input D_out_2;
    input D_out_4;
    input Execute_N_446;
    output Execute;
    output \Length[5] ;
    input A_out_3;
    output n3681;
    input A_out_4;
    input A_out_2;
    output n2041;
    output EndOfBlock;
    input SetEndOfBlock;
    input A_out_0;
    output SetVerifyErr;
    input n3844;
    output \REUA[0] ;
    output A_0__N_532;
    output \REUA[6] ;
    output \REUA[5] ;
    output \REUA[4] ;
    output \REUA[3] ;
    output \REUA[2] ;
    output \REUA[1] ;
    input D_out_3;
    input n1992;
    output \REUA[14] ;
    output \REUA[13] ;
    output \REUA[12] ;
    output \REUA[11] ;
    output \REUA[10] ;
    output \REUA[9] ;
    output \REUA[8] ;
    output \REUA[18] ;
    output n564;
    input n511;
    output n3513;
    output n3488;
    output n3263;
    output n3486;
    output IRQOut_N_443;
    output \Length[14] ;
    output \Length[9] ;
    output \Length[10] ;
    output \Length[8] ;
    input n3850;
    input n11;
    output n3856;
    input n3855;
    output n3697;
    output \IncMode[1] ;
    output n480;
    output Length1_N_614;
    output n464;
    output n479;
    output n463;
    output n481;
    output n465;
    output ExecuteEN;
    output n503;
    output n493;
    input n3838;
    input IncCAg;
    output n491;
    output n492;
    output n505;
    input nWE_c;
    output n3448;
    output n3691;
    input n3826;
    output n3827;
    input nWEDMA_N_13;
    output n4093;
    output RAMWR_N_560;
    input n2489;
    input nIO2_c;
    input n4_adj_1;
    input n3859;
    input n3847;
    output n504;
    output SetEndOfBlock_N_620;
    
    wire PHI2_N_543 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire n3823, n943, n3006;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[12:18])
    wire [7:0]Length_15__N_303;
    
    wire n3377;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(35[11:25])
    
    wire n3688, n3972, n3975, IntPending, n3976;
    wire [7:0]n434;
    
    wire DF01Reserved6, PHI2_N_543_enable_71, n3689;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reg.v(39[11:19])
    
    wire n3839, PHI2_N_543_enable_10;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(48[12:23])
    
    wire PHI2_N_543_enable_66, n3436, n3406, n30;
    wire [2:0]n430;
    wire [2:0]n439;
    
    wire n8_adj_639, n11_c;
    wire [7:0]n433;
    
    wire n1200, n1248;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[12:25])
    
    wire PHI2_N_543_enable_43, n1188, n10, n3254, n2501, PHI2_N_543_enable_51, 
        n3852;
    wire [7:0]CAOut_15__N_141;
    
    wire n3010;
    wire [7:0]Length_7__N_350;
    
    wire n1206, VerifyErrMask, AutoloadEN, CAOut_7__N_189, n3849, 
        n1202, Execute_N_444, FF00DecodeEN, PHI2_N_543_enable_25;
    wire [7:0]n432;
    
    wire n3009, n3978;
    wire [7:0]n542;
    
    wire n2215, Fault;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(43[12:21])
    
    wire PHI2_N_543_enable_68, n3008, REUAOut_7__N_101, n1198, PHI2_N_543_enable_70, 
        n3392;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(63[11:18])
    
    wire n12, PHI2_N_543_enable_35;
    wire [7:0]REUAOut_15__N_53;
    wire [7:0]n431;
    
    wire n3007, n3711, n3710, n3712, PHI2_N_543_enable_49, n3843, 
        REUAOut_15__N_56, n3692, n3825, n3836;
    wire [7:0]n931;
    wire [7:0]REUAOut_7__N_100;
    
    wire PHI2_N_543_enable_69, n3237, n3716, n3848, n3824, Length_15__N_300, 
        Length_8__N_342, n3694, Length_9__N_337, Length_10__N_332, Length_11__N_327;
    wire [7:0]n485;
    
    wire n3487, n1192, n1190, PHI2_N_543_enable_63, Length_1__N_378, 
        Length_2__N_373;
    wire [7:0]n457;
    wire [7:0]n473;
    
    wire n3695, Length_12__N_322, Length_13__N_317, Length_14__N_312, 
        CAOut_15__N_144, n3005, n3004, n3003;
    wire [7:0]CAOut_7__N_188;
    
    wire n11_adj_641, n9, n3415, PHI2_N_543_enable_79, Length_0__N_383, 
        Length_3__N_368, Length_4__N_363;
    wire [7:0]n509;
    
    wire Length_5__N_358, Length_6__N_353, Length_7__N_347, n3835, n6, 
        IncREUAg, n17, n15, n12_adj_643, CAOut_15__N_142, n3696, 
        n3693, n3840;
    wire [7:0]n932;
    
    wire n17_adj_644, n30_adj_645, n26, n18, n3837, n27, n3456, 
        n3841, n13, n14, REUAOut_15__N_54, n3860, n3001, n3000, 
        n2999, n2998, n2993, n2992, n2991, n2990, n2985, n2984, 
        n2983, n2982, n2977, n2976, n2975, n2974, n3822, n3460, 
        n3690, n3687, n3685, n3973, n19, n3854, n3458, n3686, 
        n17_adj_646, n15_adj_647, n11_adj_648, n3713, n3977, n3974, 
        n3714, n3715, n3464;
    
    LUT4 i634_2_lut_3_lut (.A(\REUA[16] ), .B(n3823), .C(\REUA[17] ), 
         .Z(n943)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam i634_2_lut_3_lut.init = 16'h8080;
    CCU2D Length_15__I_0_828_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3006), .S0(Length_15__N_303[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_828_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(n3833), .B(n2497), .C(DMA), .D(BA_c), .Z(n3377)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    defparam i2_3_lut_4_lut.init = 16'hd000;
    LUT4 i1_2_lut_4_lut (.A(n3833), .B(\XferType[0] ), .C(SwapState), 
         .D(XferEnd), .Z(n4)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i1_2_lut_4_lut.init = 16'hfd00;
    LUT4 i1_2_lut_rep_60_4_lut (.A(n3833), .B(\XferType[0] ), .C(SwapState), 
         .D(n3857), .Z(n3828)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i1_2_lut_rep_60_4_lut.init = 16'h00fd;
    LUT4 A_out_0_bdd_3_lut_3294 (.A(A_out_1), .B(CA[11]), .C(DF01Reserved32[3]), 
         .Z(n3688)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_0_bdd_3_lut_3294.init = 16'hd8d8;
    LUT4 A_out_2_bdd_3_lut_3423 (.A(A_out_1), .B(\REUA[15] ), .C(Length[7]), 
         .Z(n3972)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam A_out_2_bdd_3_lut_3423.init = 16'he4e4;
    LUT4 CA_7__bdd_2_lut_3478 (.A(A_out_1), .B(\REUA[7] ), .Z(n3975)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_7__bdd_2_lut_3478.init = 16'heeee;
    LUT4 CA_7__bdd_3_lut_3479 (.A(CA[7]), .B(A_out_1), .C(IntPending), 
         .Z(n3976)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam CA_7__bdd_3_lut_3479.init = 16'hb8b8;
    FD1S3IX CA_7__586 (.D(n434[7]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_7__586.GSR = "ENABLED";
    FD1P3IX DF01Reserved6_581 (.D(D_out_6), .SP(PHI2_N_543_enable_71), .CD(RegReset), 
            .CK(PHI2_N_543), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved6_581.GSR = "ENABLED";
    LUT4 A_out_0_bdd_2_lut_3295 (.A(A_out_1), .B(CA[3]), .Z(n3689)) /* synthesis lut_function=(A (B)) */ ;
    defparam A_out_0_bdd_2_lut_3295.init = 16'h8888;
    LUT4 i3191_2_lut_rep_63_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3839), 
         .D(\XferType[0] ), .Z(n3831)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i3191_2_lut_rep_63_4_lut.init = 16'h0053;
    FD1P3IX IntEnable_693 (.D(D_out_7), .SP(PHI2_N_543_enable_10), .CD(RegReset), 
            .CK(PHI2_N_543), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam IntEnable_693.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__628 (.D(D_out_5), .SP(PHI2_N_543_enable_66), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_5__628.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_61_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3839), 
         .D(\XferType[0] ), .Z(n3829)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i1_2_lut_rep_61_4_lut.init = 16'hac00;
    LUT4 XferType_1__I_0_i3_2_lut_rep_64_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n3839), .D(\XferType[0] ), .Z(n3832)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam XferType_1__I_0_i3_2_lut_rep_64_4_lut.init = 16'hacff;
    PFUMX i37 (.BLUT(n3436), .ALUT(n3406), .C0(DMA), .Z(n30));
    FD1S3IX CA_6__587 (.D(n434[6]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_6__587.GSR = "ENABLED";
    LUT4 mux_197_i1_3_lut_4_lut (.A(n8), .B(n3845), .C(D_out_0), .D(n430[0]), 
         .Z(n439[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_197_i2_3_lut_4_lut (.A(n8), .B(n3845), .C(D_out_1), .D(n430[1]), 
         .Z(n439[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i2_3_lut_4_lut.init = 16'hfe10;
    PFUMX i24 (.BLUT(n8_adj_639), .ALUT(n3377), .C0(\XferType[0] ), .Z(n11_c));
    FD1S3IX CA_5__588 (.D(n434[5]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_5__588.GSR = "ENABLED";
    FD1S3IX CA_4__589 (.D(n434[4]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_4__589.GSR = "ENABLED";
    FD1S3IX CA_3__590 (.D(n434[3]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_3__590.GSR = "ENABLED";
    FD1S3IX CA_2__591 (.D(n434[2]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_2__591.GSR = "ENABLED";
    FD1S3IX CA_1__592 (.D(n434[1]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_1__592.GSR = "ENABLED";
    FD1S3IX CA_0__593 (.D(n434[0]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_0__593.GSR = "ENABLED";
    FD1S3IX CA_15__602 (.D(n433[7]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_15__602.GSR = "ENABLED";
    LUT4 i1926_2_lut (.A(D_out_1), .B(n4096), .Z(n1200)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i1926_2_lut.init = 16'heeee;
    FD1P3IX REUAWritten_6__627 (.D(D_out_6), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_6__627.GSR = "ENABLED";
    FD1P3IX REUAWritten_7__626 (.D(D_out_7), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_7__626.GSR = "ENABLED";
    FD1P3IX IntPending_577 (.D(n4095), .SP(IntPending_N_450), .CD(n1248), 
            .CK(PHI2_N_543), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam IntPending_577.GSR = "ENABLED";
    FD1P3AX LengthWritten_5__671 (.D(n1188), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_5__671.GSR = "ENABLED";
    PFUMX i26 (.BLUT(n10), .ALUT(n3254), .C0(\XferType[0] ), .Z(n2501));
    FD1P3AX LengthWritten_9__691 (.D(n1200), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_9__691.GSR = "ENABLED";
    FD1P3IX EndOfBlockMask_694 (.D(D_out_6), .SP(PHI2_N_543_enable_10), 
            .CD(n4097), .CK(PHI2_N_543), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam EndOfBlockMask_694.GSR = "ENABLED";
    LUT4 mux_191_i3_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_2), .D(CAOut_15__N_141[2]), 
         .Z(n433[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i3_3_lut_4_lut.init = 16'hfb40;
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3010), .S0(Length_7__N_350[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_11__689 (.D(n1206), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_11__689.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_695 (.D(D_out_5), .SP(PHI2_N_543_enable_10), .CD(n4097), 
            .CK(PHI2_N_543), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam VerifyErrMask_695.GSR = "ENABLED";
    LUT4 Autoload_I_0_781_2_lut_3_lut_4_lut (.A(n3852), .B(n3842), .C(XferEnd), 
         .D(AutoloadEN), .Z(CAOut_7__N_189)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam Autoload_I_0_781_2_lut_3_lut_4_lut.init = 16'h4f44;
    LUT4 mux_197_i3_3_lut_4_lut (.A(n8), .B(n3845), .C(D_out_2), .D(n430[2]), 
         .Z(n439[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_12__688 (.D(n3849), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_12__688.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__690 (.D(n1202), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_10__690.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__629 (.D(D_out_4), .SP(PHI2_N_543_enable_66), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_4__629.GSR = "ENABLED";
    FD1S3IX CA_14__603 (.D(n433[6]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_14__603.GSR = "ENABLED";
    PFUMX Execute_I_0 (.BLUT(Execute_N_444), .ALUT(Execute_N_446), .C0(FF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;
    LUT4 i388_2_lut_3_lut (.A(n8), .B(n3845), .C(n4096), .Z(PHI2_N_543_enable_25)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i388_2_lut_3_lut.init = 16'hf1f1;
    FD1S3IX CA_13__604 (.D(n433[5]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_13__604.GSR = "ENABLED";
    FD1S3IX CA_12__605 (.D(n433[4]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_12__605.GSR = "ENABLED";
    FD1S3IX CA_11__606 (.D(n433[3]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_11__606.GSR = "ENABLED";
    FD1S3IX CA_10__607 (.D(n433[2]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_10__607.GSR = "ENABLED";
    FD1S3IX CA_9__608 (.D(n433[1]), .CK(PHI2_N_543), .CD(n4097), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_9__608.GSR = "ENABLED";
    FD1S3IX CA_8__609 (.D(n433[0]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_8__609.GSR = "ENABLED";
    FD1S3IX REUA_7__618 (.D(n432[7]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_7__618.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_7 (.A0(\Length[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3009), .COUT(n3010), .S0(Length_7__N_350[5]), 
          .S1(Length_7__N_350[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 n3680_bdd_3_lut (.A(n3978), .B(n542[7]), .C(A_out_3), .Z(n3681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3680_bdd_3_lut.init = 16'hcaca;
    LUT4 i1977_4_lut (.A(A_out_4), .B(A_out_3), .C(n2215), .D(A_out_2), 
         .Z(n2041)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1977_4_lut.init = 16'heeea;
    FD1P3IX EndOfBlock_578 (.D(n4095), .SP(SetEndOfBlock), .CD(n1248), 
            .CK(PHI2_N_543), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam EndOfBlock_578.GSR = "ENABLED";
    LUT4 mux_191_i1_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_0), .D(CAOut_15__N_141[0]), 
         .Z(n433[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1870_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2215)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1870_2_lut.init = 16'h8888;
    FD1P3AX LengthWritten_4__672 (.D(n3849), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_4__672.GSR = "ENABLED";
    FD1P3IX Fault_579 (.D(n4095), .SP(SetVerifyErr), .CD(n1248), .CK(PHI2_N_543), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam Fault_579.GSR = "ENABLED";
    FD1P3AX CAWritten_0__601 (.D(D_out_0), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_0__601.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3008), .COUT(n3009), .S0(Length_7__N_350[3]), 
          .S1(Length_7__N_350[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 Autoload_I_0_724_2_lut_3_lut_4_lut (.A(n8), .B(n3844), .C(XferEnd), 
         .D(AutoloadEN), .Z(REUAOut_7__N_101)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_724_2_lut_3_lut_4_lut.init = 16'h1f11;
    FD1P3AX LengthWritten_8__692 (.D(n1198), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_8__692.GSR = "ENABLED";
    FD1P3AX FF00DecodeEN_583 (.D(n3392), .SP(PHI2_N_543_enable_70), .CK(PHI2_N_543), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam FF00DecodeEN_583.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(IncMode[0]), .B(\REUA[0] ), .Z(n12)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    FD1P3AX CAWritten_15__610 (.D(D_out_7), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_15__610.GSR = "ENABLED";
    LUT4 mux_189_i8_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_7), .D(REUAOut_15__N_53[7]), 
         .Z(n431[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_6__595 (.D(D_out_6), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_6__595.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3007), .COUT(n3008), .S0(Length_7__N_350[1]), 
          .S1(Length_7__N_350[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    LUT4 mux_189_i7_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_6), .D(REUAOut_15__N_53[6]), 
         .Z(n431[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_0__I_0_1_lut (.A(\REUA[0] ), .Z(A_0__N_532)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(148[12:17])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 mux_189_i6_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_5), .D(REUAOut_15__N_53[5]), 
         .Z(n431[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i6_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3288 (.BLUT(n3711), .ALUT(n3710), .C0(A_out_2), .Z(n3712));
    FD1S3IX REUA_6__619 (.D(n432[6]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_6__619.GSR = "ENABLED";
    LUT4 mux_189_i5_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_4), .D(REUAOut_15__N_53[4]), 
         .Z(n431[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i5_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_5__620 (.D(n432[5]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_5__620.GSR = "ENABLED";
    FD1S3IX REUA_4__621 (.D(n432[4]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_4__621.GSR = "ENABLED";
    FD1S3IX REUA_3__622 (.D(n432[3]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_3__622.GSR = "ENABLED";
    FD1S3IX REUA_2__623 (.D(n432[2]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_2__623.GSR = "ENABLED";
    FD1S3IX REUA_1__624 (.D(n432[1]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_1__624.GSR = "ENABLED";
    FD1S3IX REUA_0__625 (.D(n432[0]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_0__625.GSR = "ENABLED";
    FD1S3IX REUA_15__634 (.D(n431[7]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[15] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_15__634.GSR = "ENABLED";
    LUT4 mux_189_i4_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_3), .D(REUAOut_15__N_53[3]), 
         .Z(n431[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_189_i3_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_2), .D(REUAOut_15__N_53[2]), 
         .Z(n431[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_189_i2_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_1), .D(REUAOut_15__N_53[1]), 
         .Z(n431[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_17__659 (.D(D_out_1), .SP(PHI2_N_543_enable_25), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_17__659.GSR = "ENABLED";
    LUT4 i1928_2_lut (.A(D_out_3), .B(n4096), .Z(n1206)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i1928_2_lut.init = 16'heeee;
    FD1P3AX CAWritten_14__611 (.D(D_out_6), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_14__611.GSR = "ENABLED";
    FD1P3AX CAWritten_13__612 (.D(D_out_5), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_13__612.GSR = "ENABLED";
    LUT4 mux_189_i1_3_lut_4_lut (.A(n8), .B(n3844), .C(D_out_0), .D(REUAOut_15__N_53[0]), 
         .Z(n431[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i356_2_lut_3_lut (.A(n8), .B(n3844), .C(n4096), .Z(PHI2_N_543_enable_49)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i356_2_lut_3_lut.init = 16'hf1f1;
    LUT4 Autoload_I_0_715_2_lut_3_lut_4_lut (.A(n8), .B(n3843), .C(XferEnd), 
         .D(AutoloadEN), .Z(REUAOut_15__N_56)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_715_2_lut_3_lut_4_lut.init = 16'h1f11;
    LUT4 n1992_bdd_4_lut_3307 (.A(n1992), .B(\REUA[5] ), .C(A_out_1), 
         .D(A_out_0), .Z(n3692)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam n1992_bdd_4_lut_3307.init = 16'haafc;
    LUT4 mux_621_i6_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[13]), 
         .D(Length_15__N_303[5]), .Z(n931[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_190_i8_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_7), .D(REUAOut_7__N_100[7]), 
         .Z(n432[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_190_i7_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_6), .D(REUAOut_7__N_100[6]), 
         .Z(n432[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_18__658 (.D(D_out_2), .SP(PHI2_N_543_enable_25), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_18__658.GSR = "ENABLED";
    LUT4 i1927_2_lut (.A(D_out_2), .B(n4096), .Z(n1202)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i1927_2_lut.init = 16'heeee;
    FD1P3AX CAWritten_12__613 (.D(D_out_4), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_12__613.GSR = "ENABLED";
    LUT4 mux_190_i6_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_5), .D(REUAOut_7__N_100[5]), 
         .Z(n432[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_16__660 (.D(D_out_0), .SP(PHI2_N_543_enable_25), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_16__660.GSR = "ENABLED";
    FD1S3IX REUA_14__635 (.D(n431[6]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_14__635.GSR = "ENABLED";
    LUT4 mux_190_i5_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_4), .D(REUAOut_7__N_100[4]), 
         .Z(n432[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_190_i4_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_3), .D(REUAOut_7__N_100[3]), 
         .Z(n432[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_191_i2_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_1), .D(CAOut_15__N_141[1]), 
         .Z(n433[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_190_i3_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_2), .D(REUAOut_7__N_100[2]), 
         .Z(n432[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_190_i2_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_1), .D(REUAOut_7__N_100[1]), 
         .Z(n432[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i2_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_13__636 (.D(n431[5]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_13__636.GSR = "ENABLED";
    FD1S3IX REUA_12__637 (.D(n431[4]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_12__637.GSR = "ENABLED";
    FD1S3IX REUA_11__638 (.D(n431[3]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_11__638.GSR = "ENABLED";
    FD1S3IX REUA_10__639 (.D(n431[2]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_10__639.GSR = "ENABLED";
    FD1S3IX REUA_9__640 (.D(n431[1]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_9__640.GSR = "ENABLED";
    FD1S3IX REUA_8__641 (.D(n431[0]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_8__641.GSR = "ENABLED";
    FD1P3IX REUAWritten_8__649 (.D(D_out_0), .SP(PHI2_N_543_enable_49), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_8__649.GSR = "ENABLED";
    LUT4 mux_190_i1_3_lut_4_lut (.A(n8), .B(n3843), .C(D_out_0), .D(REUAOut_7__N_100[0]), 
         .Z(n432[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 XferType_1__I_0_i2_3_lut_rep_65_4_lut (.A(n3852), .B(n3844), .C(D_out_1), 
         .D(XferType[1]), .Z(n3833)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i2_3_lut_rep_65_4_lut.init = 16'hfe10;
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_543_enable_69), .CD(n4097), 
            .CK(PHI2_N_543), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 XferType_1__I_0_i1_3_lut_4_lut (.A(n3852), .B(n3844), .C(D_out_0), 
         .D(XferType[0]), .Z(\XferType[0] )) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_191_i4_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_3), .D(CAOut_15__N_141[3]), 
         .Z(n433[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i4_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_9__648 (.D(D_out_1), .SP(PHI2_N_543_enable_49), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_9__648.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n3852), .B(n3844), .C(XferEnd), .D(n4096), 
         .Z(PHI2_N_543_enable_70)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hff1f;
    FD1P3IX REUAWritten_10__647 (.D(D_out_2), .SP(PHI2_N_543_enable_49), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_10__647.GSR = "ENABLED";
    FD1P3IX AutoloadEN_582 (.D(D_out_5), .SP(PHI2_N_543_enable_71), .CD(n4097), 
            .CK(PHI2_N_543), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam AutoloadEN_582.GSR = "ENABLED";
    FD1P3AX CAWritten_11__614 (.D(D_out_3), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_11__614.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__646 (.D(D_out_3), .SP(PHI2_N_543_enable_49), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_11__646.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3852), .B(n3844), .C(n4096), .D(D_out_7), 
         .Z(n3237)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.A(n3852), .B(n3844), .C(D_out_4), 
         .D(D_out_7), .Z(Execute_N_444)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_162.init = 16'h1000;
    FD1S3IX REUA_18__655 (.D(n439[2]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[18] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_18__655.GSR = "ENABLED";
    FD1S3IX REUA_17__656 (.D(n439[1]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[17] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_17__656.GSR = "ENABLED";
    FD1S3IX REUA_16__657 (.D(n439[0]), .CK(PHI2_N_543), .CD(n4097), .Q(\REUA[16] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_16__657.GSR = "ENABLED";
    FD1P3AX CAWritten_10__615 (.D(D_out_2), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_10__615.GSR = "ENABLED";
    FD1P3AX CAWritten_9__616 (.D(D_out_1), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_9__616.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3007), .S1(Length_7__N_350[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 mux_235_i7_3_lut (.A(n3716), .B(n542[6]), .C(A_out_3), .Z(n564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_235_i7_3_lut.init = 16'hcaca;
    LUT4 Autoload_I_0_2_lut_rep_56_3_lut_4_lut (.A(n3848), .B(n3843), .C(XferEnd), 
         .D(AutoloadEN), .Z(n3824)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_2_lut_rep_56_3_lut_4_lut.init = 16'h1f11;
    FD1P3AX CAWritten_8__617 (.D(D_out_0), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_8__617.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__673 (.D(n1206), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_3__673.GSR = "ENABLED";
    FD1P3AX LengthWritten_2__674 (.D(n1202), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_2__674.GSR = "ENABLED";
    FD1P3AX LengthWritten_1__675 (.D(n1200), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_1__675.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__676 (.D(n1198), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_0__676.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__645 (.D(D_out_4), .SP(PHI2_N_543_enable_49), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_12__645.GSR = "ENABLED";
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_7), 
         .D(n931[7]), .Z(Length_15__N_300)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_13__644 (.D(D_out_5), .SP(PHI2_N_543_enable_49), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_13__644.GSR = "ENABLED";
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_0), 
         .D(n931[0]), .Z(Length_8__N_342)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_231_i7_3_lut (.A(n511), .B(IncMode[0]), .C(A_out_1), .Z(n542[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_231_i7_3_lut.init = 16'hcaca;
    LUT4 Fault_bdd_3_lut_3276 (.A(CA[13]), .B(CA[5]), .C(A_out_0), .Z(n3694)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam Fault_bdd_3_lut_3276.init = 16'hacac;
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_1), 
         .D(n931[1]), .Z(Length_9__N_337)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_2), 
         .D(n931[2]), .Z(Length_10__N_332)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_3), 
         .D(n931[3]), .Z(Length_11__N_327)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3124 (.BLUT(n485[4]), .ALUT(n3487), .C0(n3513), .Z(n3488));
    FD1P3AX LengthWritten_7__669 (.D(n1192), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_7__669.GSR = "ENABLED";
    FD1P3AX LengthWritten_6__670 (.D(n1190), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_6__670.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n2041), .B(A_out_0), .C(A_out_3), .D(A_out_1), 
         .Z(n3263)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1_4_lut.init = 16'hfaea;
    FD1S3IX XferType__i0 (.D(\XferType[0] ), .CK(PHI2_N_543), .CD(n4097), 
            .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__685 (.D(n1192), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_15__685.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__686 (.D(n1190), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_14__686.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__643 (.D(D_out_6), .SP(PHI2_N_543_enable_49), 
            .CD(n4097), .CK(PHI2_N_543), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_14__643.GSR = "ENABLED";
    FD1P3JX Length_1__667 (.D(Length_1__N_378), .SP(PHI2_N_543_enable_63), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_1__667.GSR = "ENABLED";
    FD1P3JX Length_2__666 (.D(Length_2__N_373), .SP(PHI2_N_543_enable_63), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_2__666.GSR = "ENABLED";
    LUT4 mux_191_i5_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_4), .D(CAOut_15__N_141[4]), 
         .Z(n433[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i5_3_lut_4_lut.init = 16'hfb40;
    PFUMX i3122 (.BLUT(n457[4]), .ALUT(n473[4]), .C0(A_out_1), .Z(n3486));
    FD1P3IX REUAWritten_15__642 (.D(D_out_7), .SP(PHI2_N_543_enable_49), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_15__642.GSR = "ENABLED";
    LUT4 Fault_bdd_3_lut_3310 (.A(Fault), .B(AutoloadEN), .C(A_out_0), 
         .Z(n3695)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam Fault_bdd_3_lut_3310.init = 16'hcaca;
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_4), 
         .D(n931[4]), .Z(Length_12__N_322)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_5), 
         .D(n931[5]), .Z(Length_13__N_317)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_191_i6_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_5), .D(CAOut_15__N_141[5]), 
         .Z(n433[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i6_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_0__633 (.D(D_out_0), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_0__633.GSR = "ENABLED";
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n3848), .B(n3843), .C(D_out_6), 
         .D(n931[6]), .Z(Length_14__N_312)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_13__687 (.D(n1188), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_13__687.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(A_out_2), .B(A_out_3), .C(A_out_4), .Z(n8)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i2_3_lut.init = 16'hfdfd;
    FD1P3AX CAWritten_7__594 (.D(D_out_7), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_7__594.GSR = "ENABLED";
    LUT4 Autoload_I_0_737_2_lut_3_lut_4_lut (.A(n3852), .B(n3845), .C(XferEnd), 
         .D(AutoloadEN), .Z(CAOut_15__N_144)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_737_2_lut_3_lut_4_lut.init = 16'h1f11;
    FD1P3AX CAWritten_5__596 (.D(D_out_5), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_5__596.GSR = "ENABLED";
    LUT4 Fault_I_0_833_2_lut (.A(Fault), .B(VerifyErrMask), .Z(IRQOut_N_443)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(244[3:27])
    defparam Fault_I_0_833_2_lut.init = 16'h8888;
    CCU2D Length_15__I_0_828_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[14] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3005), .COUT(n3006), .S0(Length_15__N_303[5]), 
          .S1(Length_15__N_303[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_7.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3004), .COUT(n3005), .S0(Length_15__N_303[3]), 
          .S1(Length_15__N_303[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_3 (.A0(\Length[9] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[10] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3003), .COUT(n3004), .S0(Length_15__N_303[1]), 
          .S1(Length_15__N_303[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[8] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3003), .S1(Length_15__N_303[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_828_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_1.INJECT1_1 = "NO";
    LUT4 mux_192_i8_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_7), .D(CAOut_7__N_188[7]), 
         .Z(n434[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_1__632 (.D(D_out_1), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_1__632.GSR = "ENABLED";
    LUT4 mux_192_i7_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_6), .D(CAOut_7__N_188[6]), 
         .Z(n434[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_192_i6_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_5), .D(CAOut_7__N_188[5]), 
         .Z(n434[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_4__597 (.D(D_out_4), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_4__597.GSR = "ENABLED";
    LUT4 i3240_4_lut (.A(n11_adj_641), .B(n9), .C(\Length[5] ), .D(Length[0]), 
         .Z(n3415)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3240_4_lut.init = 16'h0001;
    FD1P3AX CAWritten_3__598 (.D(D_out_3), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_3__598.GSR = "ENABLED";
    FD1P3JX Length_15__677 (.D(Length_15__N_300), .SP(PHI2_N_543_enable_79), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_15__677.GSR = "ENABLED";
    FD1P3JX Length_0__668 (.D(Length_0__N_383), .SP(PHI2_N_543_enable_63), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_0__668.GSR = "ENABLED";
    LUT4 mux_192_i5_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_4), .D(CAOut_7__N_188[4]), 
         .Z(n434[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_192_i4_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_3), .D(CAOut_7__N_188[3]), 
         .Z(n434[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_3__665 (.D(Length_3__N_368), .SP(PHI2_N_543_enable_63), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_3__665.GSR = "ENABLED";
    FD1P3JX Length_4__664 (.D(Length_4__N_363), .SP(PHI2_N_543_enable_63), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_4__664.GSR = "ENABLED";
    LUT4 mux_222_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n509[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_222_i8_3_lut.init = 16'hcaca;
    LUT4 mux_191_i7_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_6), .D(CAOut_15__N_141[6]), 
         .Z(n433[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_192_i3_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_2), .D(CAOut_7__N_188[2]), 
         .Z(n434[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1925_2_lut (.A(D_out_0), .B(n4096), .Z(n1198)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i1925_2_lut.init = 16'heeee;
    LUT4 mux_192_i2_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_1), .D(CAOut_7__N_188[1]), 
         .Z(n434[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_5__663 (.D(Length_5__N_358), .SP(PHI2_N_543_enable_63), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(\Length[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_5__663.GSR = "ENABLED";
    FD1P3JX Length_6__662 (.D(Length_6__N_353), .SP(PHI2_N_543_enable_63), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_6__662.GSR = "ENABLED";
    LUT4 mux_192_i1_3_lut_4_lut (.A(n3852), .B(n3845), .C(D_out_0), .D(CAOut_7__N_188[0]), 
         .Z(n434[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4_3_lut (.A(Length[4]), .B(Length[3]), .C(Length[6]), .Z(n11_adj_641)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4_3_lut.init = 16'hfefe;
    FD1P3JX Length_7__661 (.D(Length_7__N_347), .SP(PHI2_N_543_enable_63), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_7__661.GSR = "ENABLED";
    LUT4 mux_191_i8_3_lut_4_lut (.A(n3852), .B(n3842), .C(D_out_7), .D(CAOut_15__N_141[7]), 
         .Z(n433[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i8_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_2__631 (.D(D_out_2), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_2__631.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_67_4_lut (.A(A_out_0), .B(n3850), .C(A_out_1), .D(n3852), 
         .Z(n3835)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_67_4_lut.init = 16'h0020;
    LUT4 i2_2_lut_adj_163 (.A(Length[7]), .B(Length[2]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_163.init = 16'heeee;
    LUT4 i1_2_lut (.A(BA_c), .B(Length[1]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_543_enable_71), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    LUT4 mux_621_i7_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[14]), 
         .D(Length_15__N_303[6]), .Z(n931[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_adj_164 (.A(IncMode[0]), .B(n11_c), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(47[7:10])
    defparam i1_2_lut_adj_164.init = 16'h4444;
    LUT4 i1_2_lut_rep_68_4_lut (.A(A_out_0), .B(n3850), .C(A_out_1), .D(n8), 
         .Z(n3836)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_68_4_lut.init = 16'h0020;
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11), .D(n12_adj_643), .Z(CAOut_15__N_142)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i332_2_lut_3_lut_4_lut (.A(n3850), .B(n3856), .C(n4096), .D(n8), 
         .Z(PHI2_N_543_enable_66)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i332_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3IX REUAWritten_3__630 (.D(D_out_3), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_3__630.GSR = "ENABLED";
    L6MUX21 i3279 (.D0(n3696), .D1(n3693), .SD(n3855), .Z(n3697));
    LUT4 mux_621_i3_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[10]), 
         .D(Length_15__N_303[2]), .Z(n931[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(n3850), .B(n3856), .C(n4096), 
         .D(n3848), .Z(PHI2_N_543_enable_51)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'hf0f1;
    LUT4 i7_4_lut (.A(\IncMode[1] ), .B(CA[0]), .C(CA[2]), .D(CA[7]), 
         .Z(n17)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7_4_lut.init = 16'h4000;
    LUT4 i5_2_lut (.A(CA[1]), .B(CA[3]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    PFUMX i3277 (.BLUT(n3695), .ALUT(n3694), .C0(A_out_1), .Z(n3696));
    FD1P3AX CAWritten_2__599 (.D(D_out_2), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_2__599.GSR = "ENABLED";
    LUT4 mux_622_i1_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[0]), 
         .D(Length_7__N_350[0]), .Z(n932[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_210_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_210_i2_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_adj_166 (.A(CA[5]), .B(CA[4]), .Z(n12_adj_643)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_166.init = 16'h8888;
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_1), 
         .D(n932[1]), .Z(Length_1__N_378)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    LUT4 i15_4_lut (.A(n17_adj_644), .B(n30_adj_645), .C(n26), .D(n18), 
         .Z(Length1_N_614)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1908_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n464)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1908_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_167 (.A(Length[0]), .B(Length[12]), .Z(n17_adj_644)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i1_2_lut_adj_167.init = 16'hdddd;
    LUT4 i1961_2_lut_rep_69_4_lut (.A(A_out_0), .B(A_out_1), .C(n3850), 
         .D(n8), .Z(n3837)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1961_2_lut_rep_69_4_lut.init = 16'hfffd;
    LUT4 i14_4_lut (.A(n27), .B(n3456), .C(Length[4]), .D(\Length[14] ), 
         .Z(n30_adj_645)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i14_4_lut.init = 16'hfffe;
    FD1P3AX CAWritten_1__600 (.D(D_out_1), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_1__600.GSR = "ENABLED";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_543_enable_69), .CD(RegReset), 
            .CK(PHI2_N_543), .Q(\IncMode[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 mux_210_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n479)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_210_i3_3_lut.init = 16'hcaca;
    LUT4 i1909_2_lut (.A(DF01Reserved32[2]), .B(A_out_0), .Z(n463)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1909_2_lut.init = 16'h8888;
    LUT4 mux_210_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n481)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_210_i1_3_lut.init = 16'hcaca;
    LUT4 i1878_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n465)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1878_2_lut.init = 16'h8888;
    LUT4 mux_621_i2_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[9]), 
         .D(Length_15__N_303[1]), .Z(n931[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i10_4_lut (.A(Length[3]), .B(Length[6]), .C(Length[15]), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_3), .D(n932[3]), 
         .Z(Length_3__N_368)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX ExecuteEN_580 (.D(n3237), .SP(PHI2_N_543_enable_70), .CK(PHI2_N_543), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam ExecuteEN_580.GSR = "ENABLED";
    LUT4 i1963_2_lut_rep_71_4_lut (.A(A_out_0), .B(A_out_1), .C(n3850), 
         .D(n3852), .Z(n3839)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1963_2_lut_rep_71_4_lut.init = 16'hfffd;
    LUT4 mux_621_i5_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[12]), 
         .D(Length_15__N_303[4]), .Z(n931[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut_adj_168 (.A(Length[7]), .B(\Length[8] ), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i2_2_lut_adj_168.init = 16'heeee;
    LUT4 i11_4_lut (.A(\Length[9] ), .B(Length[11]), .C(\Length[5] ), 
         .D(Length[2]), .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 mux_622_i8_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[7]), 
         .D(Length_7__N_350[7]), .Z(n932[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_218_i3_3_lut (.A(\REUA[18] ), .B(Length[2]), .C(A_out_0), 
         .Z(n503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_218_i3_3_lut.init = 16'hcaca;
    PFUMX i3274 (.BLUT(n3692), .ALUT(n542[5]), .C0(A_out_3), .Z(n3693));
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_5), .D(n932[5]), 
         .Z(Length_5__N_358)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_622_i7_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[6]), 
         .D(Length_7__N_350[6]), .Z(n932[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_621_i4_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[11]), 
         .D(Length_15__N_303[3]), .Z(n931[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_622_i2_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[1]), 
         .D(Length_7__N_350[1]), .Z(n932[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_210_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n473[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_210_i5_3_lut.init = 16'hcaca;
    FD1S3IX XferType__i1 (.D(n3833), .CK(PHI2_N_543), .CD(RegReset), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 i1967_2_lut_rep_73_4_lut (.A(A_out_0), .B(A_out_1), .C(n3850), 
         .D(n3852), .Z(n3841)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1967_2_lut_rep_73_4_lut.init = 16'hfffb;
    LUT4 A_out_2_bdd_3_lut_3422 (.A(CA[14]), .B(A_out_1), .C(DF01Reserved6), 
         .Z(n3711)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut_3422.init = 16'hb8b8;
    LUT4 i5_4_lut (.A(\REUA[10] ), .B(\REUA[8] ), .C(\REUA[15] ), .D(\REUA[14] ), 
         .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 mux_214_i5_3_lut (.A(\REUA[4] ), .B(\REUA[12] ), .C(A_out_0), 
         .Z(n485[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_214_i5_3_lut.init = 16'hcaca;
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_4), .D(n932[4]), 
         .Z(Length_4__N_363)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3092_2_lut (.A(\Length[10] ), .B(Length[13]), .Z(n3456)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3092_2_lut.init = 16'heeee;
    LUT4 mux_214_i1_3_lut (.A(\REUA[0] ), .B(\REUA[8] ), .C(A_out_0), 
         .Z(n493)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_214_i1_3_lut.init = 16'hcaca;
    LUT4 i1905_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n542[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1905_4_lut.init = 16'hfcee;
    LUT4 i6_4_lut (.A(\REUA[12] ), .B(\REUA[9] ), .C(\REUA[13] ), .D(\REUA[11] ), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_rep_55 (.A(n13), .B(REUAOut_15__N_54), .C(n14), .Z(n3823)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_rep_55.init = 16'h8080;
    LUT4 i468_3_lut_4_lut (.A(A_out_3), .B(n3860), .C(n3844), .D(n4096), 
         .Z(PHI2_N_543_enable_10)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i468_3_lut_4_lut.init = 16'hff02;
    LUT4 mux_622_i5_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[4]), 
         .D(Length_7__N_350[4]), .Z(n932[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_rep_72_3_lut_4_lut (.A(A_out_3), .B(n3860), .C(n3856), 
         .D(n3850), .Z(n3840)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_72_3_lut_4_lut.init = 16'hfffd;
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_56), .C0(REUAWritten[14]), 
          .D0(\REUA[14] ), .A1(GND_net), .B1(REUAOut_15__N_56), .C1(REUAWritten[15]), 
          .D1(\REUA[15] ), .CIN(n3001), .S0(REUAOut_15__N_53[6]), .S1(REUAOut_15__N_53[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_56), .C0(REUAWritten[12]), 
          .D0(\REUA[12] ), .A1(GND_net), .B1(REUAOut_15__N_56), .C1(REUAWritten[13]), 
          .D1(\REUA[13] ), .CIN(n3000), .COUT(n3001), .S0(REUAOut_15__N_53[4]), 
          .S1(REUAOut_15__N_53[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_56), .C0(REUAWritten[10]), 
          .D0(\REUA[10] ), .A1(GND_net), .B1(REUAOut_15__N_56), .C1(REUAWritten[11]), 
          .D1(\REUA[11] ), .CIN(n2999), .COUT(n3000), .S0(REUAOut_15__N_53[2]), 
          .S1(REUAOut_15__N_53[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_54), .B0(REUAOut_15__N_56), 
          .C0(REUAWritten[8]), .D0(\REUA[8] ), .A1(GND_net), .B1(REUAOut_15__N_56), 
          .C1(REUAWritten[9]), .D1(\REUA[9] ), .CIN(n2998), .COUT(n2999), 
          .S0(REUAOut_15__N_53[0]), .S1(REUAOut_15__N_53[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3825), .B1(n3838), .C1(GND_net), .D1(GND_net), 
          .COUT(n2998));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_101), .C0(REUAWritten[6]), 
          .D0(\REUA[6] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[7]), 
          .D1(\REUA[7] ), .CIN(n2993), .S0(REUAOut_7__N_100[6]), .S1(REUAOut_7__N_100[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_101), .C0(REUAWritten[4]), 
          .D0(\REUA[4] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[5]), 
          .D1(\REUA[5] ), .CIN(n2992), .COUT(n2993), .S0(REUAOut_7__N_100[4]), 
          .S1(REUAOut_7__N_100[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_101), .C0(REUAWritten[2]), 
          .D0(\REUA[2] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[3]), 
          .D1(\REUA[3] ), .CIN(n2991), .COUT(n2992), .S0(REUAOut_7__N_100[2]), 
          .S1(REUAOut_7__N_100[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_101), .C0(REUAWritten[0]), 
          .D0(\REUA[0] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[1]), 
          .D1(\REUA[1] ), .CIN(n2990), .COUT(n2991), .S0(REUAOut_7__N_100[0]), 
          .S1(REUAOut_7__N_100[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3825), .B1(n3837), .C1(GND_net), .D1(GND_net), 
          .COUT(n2990));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_144), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n2985), .S0(CAOut_15__N_141[6]), .S1(CAOut_15__N_141[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_144), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n2984), .COUT(n2985), .S0(CAOut_15__N_141[4]), 
          .S1(CAOut_15__N_141[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_144), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n2983), .COUT(n2984), .S0(CAOut_15__N_141[2]), 
          .S1(CAOut_15__N_141[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_142), .B0(CAOut_15__N_144), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n2982), .COUT(n2983), .S0(CAOut_15__N_141[0]), 
          .S1(CAOut_15__N_141[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3825), .B1(n3841), .C1(GND_net), .D1(GND_net), .COUT(n2982));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_189), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n2977), .S0(CAOut_7__N_188[6]), .S1(CAOut_7__N_188[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_189), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n2976), .COUT(n2977), .S0(CAOut_7__N_188[4]), 
          .S1(CAOut_7__N_188[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_189), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n2975), .COUT(n2976), .S0(CAOut_7__N_188[2]), 
          .S1(CAOut_7__N_188[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_189), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n2974), .COUT(n2975), .S0(CAOut_7__N_188[0]), 
          .S1(CAOut_7__N_188[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3825), .B1(n3835), .C1(GND_net), .D1(GND_net), .COUT(n2974));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 i475_3_lut_4_lut (.A(A_out_3), .B(n3860), .C(n3845), .D(n4096), 
         .Z(PHI2_N_543_enable_69)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i475_3_lut_4_lut.init = 16'hff02;
    LUT4 i1953_2_lut (.A(FF00DecodeEN), .B(A_out_0), .Z(n457[4])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1953_2_lut.init = 16'h7777;
    LUT4 i1931_2_lut_rep_81 (.A(D_out_4), .B(n4096), .Z(n3849)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i1931_2_lut_rep_81.init = 16'heeee;
    LUT4 mux_214_i3_3_lut (.A(\REUA[2] ), .B(\REUA[10] ), .C(A_out_0), 
         .Z(n491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_214_i3_3_lut.init = 16'hcaca;
    LUT4 i3194_2_lut_3_lut_4_lut (.A(D_out_4), .B(n4096), .C(n3844), .D(n3852), 
         .Z(n3392)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i3194_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 mux_214_i2_3_lut (.A(\REUA[1] ), .B(\REUA[9] ), .C(A_out_0), 
         .Z(n492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_214_i2_3_lut.init = 16'hcaca;
    LUT4 mux_188_i2_4_lut (.A(\REUA[17] ), .B(REUAWritten[17]), .C(n3825), 
         .D(n3822), .Z(n430[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_188_i2_4_lut.init = 16'hc5ca;
    LUT4 mux_188_i1_4_lut (.A(\REUA[16] ), .B(REUAWritten[16]), .C(n3825), 
         .D(n3823), .Z(n430[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_188_i1_4_lut.init = 16'hc5ca;
    LUT4 mux_218_i1_3_lut (.A(\REUA[16] ), .B(Length[0]), .C(A_out_0), 
         .Z(n505)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_218_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_92 (.A(A_out_2), .B(A_out_4), .Z(n3860)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_92.init = 16'heeee;
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_543_enable_71), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_80_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n3848)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_80_3_lut.init = 16'hefef;
    LUT4 i1923_2_lut (.A(D_out_7), .B(n4096), .Z(n1192)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i1923_2_lut.init = 16'heeee;
    LUT4 i3096_2_lut_3_lut (.A(A_out_2), .B(A_out_4), .C(nWE_c), .Z(n3460)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i3096_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1922_2_lut (.A(D_out_6), .B(n4096), .Z(n1190)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i1922_2_lut.init = 16'heeee;
    LUT4 mux_621_i8_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[15]), 
         .D(Length_15__N_303[7]), .Z(n931[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_621_i1_3_lut_4_lut (.A(n3825), .B(n3836), .C(LengthWritten[8]), 
         .D(Length_15__N_303[0]), .Z(n931[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3084_2_lut_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_1), .Z(n3448)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i3084_2_lut_3_lut.init = 16'hfefe;
    L6MUX21 i3272 (.D0(n3690), .D1(n3687), .SD(n3855), .Z(n3691));
    LUT4 n490_bdd_3_lut_3347 (.A(A_out_0), .B(A_out_3), .C(Length[3]), 
         .Z(n3685)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n490_bdd_3_lut_3347.init = 16'hfdfd;
    LUT4 i3198_2_lut (.A(A_out_3), .B(A_out_1), .Z(n3513)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3198_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_84_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n3852)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_84_3_lut.init = 16'hfefe;
    FD1P3JX Length_8__684 (.D(Length_8__N_342), .SP(PHI2_N_543_enable_79), 
            .PD(n4097), .CK(PHI2_N_543), .Q(\Length[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_8__684.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n3826), .B(PHI2_N_543_enable_43), .C(n3824), .D(Length1_N_614), 
         .Z(PHI2_N_543_enable_63)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfefc;
    FD1P3JX Length_9__683 (.D(Length_9__N_337), .SP(PHI2_N_543_enable_79), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(\Length[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_9__683.GSR = "ENABLED";
    LUT4 A_out_2_bdd_3_lut (.A(A_out_1), .B(CA[15]), .C(ExecuteEN), .Z(n3973)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut.init = 16'hd8d8;
    FD1P3JX Length_10__682 (.D(Length_10__N_332), .SP(PHI2_N_543_enable_79), 
            .PD(n4097), .CK(PHI2_N_543), .Q(\Length[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_10__682.GSR = "ENABLED";
    FD1P3JX Length_11__681 (.D(Length_11__N_327), .SP(PHI2_N_543_enable_79), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_11__681.GSR = "ENABLED";
    LUT4 i626_2_lut_rep_54_4_lut (.A(n13), .B(REUAOut_15__N_54), .C(n14), 
         .D(\REUA[16] ), .Z(n3822)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i626_2_lut_rep_54_4_lut.init = 16'h8000;
    LUT4 i7_4_lut_adj_169 (.A(Length[1]), .B(n3828), .C(n3415), .D(Length[12]), 
         .Z(n19)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i7_4_lut_adj_169.init = 16'h0080;
    LUT4 i3217_2_lut_rep_59_3_lut (.A(n3833), .B(\XferType[0] ), .C(n2497), 
         .Z(n3827)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i3217_2_lut_rep_59_3_lut.init = 16'hf7f7;
    LUT4 mux_622_i4_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[3]), 
         .D(Length_7__N_350[3]), .Z(n932[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 A_out_2_bdd_3_lut_3287 (.A(A_out_1), .B(Length[6]), .C(\REUA[14] ), 
         .Z(n3710)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3287.init = 16'hd8d8;
    LUT4 i2_3_lut_4_lut_adj_170 (.A(n3833), .B(\XferType[0] ), .C(nWEDMA_N_13), 
         .D(n3854), .Z(SetVerifyErr)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_170.init = 16'h0800;
    LUT4 i3094_2_lut_3_lut_4_lut (.A(n3833), .B(\XferType[0] ), .C(Length[15]), 
         .D(n2497), .Z(n3458)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i3094_2_lut_3_lut_4_lut.init = 16'hf0f8;
    FD1P3JX Length_12__680 (.D(Length_12__N_322), .SP(PHI2_N_543_enable_79), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_12__680.GSR = "ENABLED";
    LUT4 n490_bdd_4_lut_3348 (.A(n485[3]), .B(A_out_0), .C(Length[11]), 
         .D(A_out_3), .Z(n3686)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam n490_bdd_4_lut_3348.init = 16'hfcaa;
    LUT4 AutoloadEN_I_0_2_lut_rep_57 (.A(AutoloadEN), .B(XferEnd), .Z(n3825)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[17:38])
    defparam AutoloadEN_I_0_2_lut_rep_57.init = 16'h2222;
    LUT4 mux_622_i3_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[2]), 
         .D(Length_7__N_350[2]), .Z(n932[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_4_lut_adj_171 (.A(n3825), .B(n3836), .C(n30), .D(n4096), 
         .Z(PHI2_N_543_enable_79)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam i2_3_lut_4_lut_adj_171.init = 16'hfffe;
    LUT4 i865_2_lut_3_lut_4_lut (.A(A_out_3), .B(n3860), .C(n4096), .D(n3842), 
         .Z(PHI2_N_543_enable_35)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i865_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3JX Length_13__679 (.D(Length_13__N_317), .SP(PHI2_N_543_enable_79), 
            .PD(n4097), .CK(PHI2_N_543), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_13__679.GSR = "ENABLED";
    LUT4 mux_214_i4_3_lut (.A(\REUA[3] ), .B(\REUA[11] ), .C(A_out_0), 
         .Z(n485[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_214_i4_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_99 (.A(n3833), .B(\XferType[0] ), .C(SwapState), 
         .Z(n4093)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i1_3_lut_rep_99.init = 16'hfdfd;
    LUT4 i3186_3_lut_4_lut_4_lut (.A(n3833), .B(\XferType[0] ), .C(SwapState), 
         .D(XferEnd), .Z(RAMWR_N_560)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i3186_3_lut_4_lut_4_lut.init = 16'h1311;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(A_out_3), .B(n3860), .C(n4096), 
         .D(n3844), .Z(PHI2_N_543_enable_71)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'hf0f1;
    PFUMX i3270 (.BLUT(n3689), .ALUT(n3688), .C0(A_out_0), .Z(n3690));
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_0), 
         .D(n932[0]), .Z(Length_0__N_383)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3209_2_lut_3_lut_4_lut (.A(A_out_3), .B(n3860), .C(n4096), .D(n3845), 
         .Z(PHI2_N_543_enable_68)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i3209_2_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3JX Length_14__678 (.D(Length_14__N_312), .SP(PHI2_N_543_enable_79), 
            .PD(n4097), .CK(PHI2_N_543), .Q(\Length[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_14__678.GSR = "ENABLED";
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_7), .D(n932[7]), 
         .Z(Length_7__N_347)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    LUT4 i9_4_lut_adj_172 (.A(n17_adj_646), .B(n15_adj_647), .C(n11_adj_648), 
         .D(n12), .Z(REUAOut_15__N_54)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut_adj_172.init = 16'h8000;
    LUT4 mux_622_i6_3_lut_4_lut (.A(n3825), .B(n3840), .C(LengthWritten[5]), 
         .D(Length_7__N_350[5]), .Z(n932[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 CA_6__bdd_2_lut_3360 (.A(\REUA[6] ), .B(A_out_1), .Z(n3713)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_6__bdd_2_lut_3360.init = 16'heeee;
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_6), .D(n932[6]), 
         .Z(Length_6__N_353)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    L6MUX21 i3428 (.D0(n3977), .D1(n3974), .SD(A_out_0), .Z(n3978));
    LUT4 mux_231_i8_3_lut (.A(n509[7]), .B(\IncMode[1] ), .C(A_out_1), 
         .Z(n542[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_231_i8_3_lut.init = 16'hcaca;
    PFUMX i3426 (.BLUT(n3976), .ALUT(n3975), .C0(A_out_2), .Z(n3977));
    LUT4 i1_2_lut_rep_86 (.A(DMA), .B(BA_c), .Z(n3854)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(47[7:10])
    defparam i1_2_lut_rep_86.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_173 (.A(DMA), .B(BA_c), .C(n2497), .D(n3833), 
         .Z(n3254)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(47[7:10])
    defparam i1_2_lut_3_lut_4_lut_adj_173.init = 16'h8088;
    PFUMX i3424 (.BLUT(n3973), .ALUT(n3972), .C0(A_out_2), .Z(n3974));
    LUT4 i3123_4_lut_4_lut (.A(A_out_0), .B(A_out_3), .C(Length[12]), 
         .D(Length[4]), .Z(n3487)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam i3123_4_lut_4_lut.init = 16'hf3d1;
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n8), .B(n3842), .C(D_out_2), 
         .D(n932[2]), .Z(Length_2__N_373)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    PFUMX i3268 (.BLUT(n3686), .ALUT(n3685), .C0(A_out_1), .Z(n3687));
    LUT4 i7_4_lut_adj_174 (.A(\REUA[7] ), .B(\REUA[4] ), .C(\REUA[2] ), 
         .D(\REUA[5] ), .Z(n17_adj_646)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_174.init = 16'h8000;
    LUT4 i27_4_lut (.A(n2489), .B(SwapState), .C(n3833), .D(n3854), 
         .Z(n10)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(47[7:10])
    defparam i27_4_lut.init = 16'hca0a;
    LUT4 i4_4_lut_4_lut (.A(nIO2_c), .B(n3460), .C(n3856), .D(A_out_3), 
         .Z(n3436)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_4_lut_4_lut.init = 16'h0100;
    LUT4 CA_6__bdd_3_lut_3361 (.A(CA[6]), .B(EndOfBlock), .C(A_out_1), 
         .Z(n3714)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_6__bdd_3_lut_3361.init = 16'hacac;
    LUT4 i25_4_lut (.A(n2489), .B(BA_c), .C(n3833), .D(n4_adj_1), .Z(n8_adj_639)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(47[7:10])
    defparam i25_4_lut.init = 16'hca0a;
    LUT4 A_4__I_0_698_i6_2_lut_rep_88 (.A(A_out_0), .B(A_out_1), .Z(n3856)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam A_4__I_0_698_i6_2_lut_rep_88.init = 16'heeee;
    LUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(nWE_c), 
         .D(n3859), .Z(n3843)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1921_2_lut (.A(D_out_5), .B(n4096), .Z(n1188)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i1921_2_lut.init = 16'heeee;
    LUT4 i4_4_lut (.A(n3415), .B(n3827), .C(n4093), .D(n6), .Z(n3406)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut (.A(n8), .B(n3842), .C(n4096), .Z(PHI2_N_543_enable_43)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i5_2_lut_adj_175 (.A(\REUA[1] ), .B(\REUA[3] ), .Z(n15_adj_647)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut_adj_175.init = 16'h8888;
    LUT4 i1_2_lut_adj_176 (.A(\REUA[6] ), .B(n2501), .Z(n11_adj_648)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_176.init = 16'h8888;
    LUT4 i896_4_lut (.A(n3847), .B(n4096), .C(n3856), .D(n3852), .Z(n1248)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam i896_4_lut.init = 16'hccce;
    LUT4 mux_218_i2_3_lut (.A(\REUA[17] ), .B(Length[1]), .C(A_out_0), 
         .Z(n504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_218_i2_3_lut.init = 16'hcaca;
    L6MUX21 i3292 (.D0(n3715), .D1(n3712), .SD(A_out_0), .Z(n3716));
    PFUMX i3290 (.BLUT(n3714), .ALUT(n3713), .C0(A_out_2), .Z(n3715));
    LUT4 mux_188_i3_4_lut (.A(\REUA[18] ), .B(REUAWritten[18]), .C(n3825), 
         .D(n943), .Z(n430[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_188_i3_4_lut.init = 16'hc5ca;
    LUT4 i11_4_lut_adj_177 (.A(n3464), .B(n19), .C(n3458), .D(n3456), 
         .Z(SetEndOfBlock_N_620)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i11_4_lut_adj_177.init = 16'h0004;
    LUT4 i3100_4_lut (.A(Length[11]), .B(\Length[9] ), .C(\Length[8] ), 
         .D(\Length[14] ), .Z(n3464)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3100_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (S, C8M_c, C8M_c_enable_11, n4095, \REUA[10] , \REUA[1] , 
            RAMRD, RAMWR, nRESET_c, C8M_N_502, n1117, PHI2_c, nCS_c, 
            nRAS_c, nCAS_c, n381, nRWE_c, DQML_c, A_0__N_532, RCLK_c, 
            RA_c_0, WRDr, PHI2_N_543, D_out_0, \REUA[11] , \REUA[2] , 
            RAMRDD, RD_out_0, \REUA[12] , \REUA[3] , \REUA[13] , \REUA[4] , 
            \REUA[16] , \REUA[7] , \REUA[17] , \REUA[8] , \REUA[18] , 
            \REUA[9] , RA_c_1, \REUA[15] , \REUA[6] , RA_c_10, \REUA[14] , 
            \REUA[5] , RA_c_2, RA_c_3, RA_c_4, RA_c_6, RA_c_7, RA_c_8, 
            RA_c_9, n1559, D_out_1, D_out_2, D_out_3, D_out_4, D_out_5, 
            D_out_6, D_out_7, RD_out_1, RD_out_2, RD_out_3, RD_out_4, 
            RD_out_5, RD_out_6, RD_out_7, RA_c_5, DQMH_c, \REUA[0] ) /* synthesis syn_module_defined=1 */ ;
    output [2:0]S;
    input C8M_c;
    input C8M_c_enable_11;
    input n4095;
    input \REUA[10] ;
    input \REUA[1] ;
    input RAMRD;
    input RAMWR;
    input nRESET_c;
    input C8M_N_502;
    output n1117;
    input PHI2_c;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    input n381;
    output nRWE_c;
    output DQML_c;
    input A_0__N_532;
    output RCLK_c;
    output RA_c_0;
    output [7:0]WRDr;
    input PHI2_N_543;
    input D_out_0;
    input \REUA[11] ;
    input \REUA[2] ;
    output [7:0]RAMRDD;
    input RD_out_0;
    input \REUA[12] ;
    input \REUA[3] ;
    input \REUA[13] ;
    input \REUA[4] ;
    input \REUA[16] ;
    input \REUA[7] ;
    input \REUA[17] ;
    input \REUA[8] ;
    input \REUA[18] ;
    input \REUA[9] ;
    output RA_c_1;
    input \REUA[15] ;
    input \REUA[6] ;
    output RA_c_10;
    input \REUA[14] ;
    input \REUA[5] ;
    output RA_c_2;
    output RA_c_3;
    output RA_c_4;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    input n1559;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    input RD_out_1;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    output RA_c_5;
    output DQMH_c;
    input \REUA[0] ;
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_502 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_543 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire CP1, CP1_N_534, C8M_c_enable_5, InitDone, n3489, n3212, 
        n3864, n3361, C8M_c_enable_12, n3865, n2332, C8M_c_enable_3, 
        PORDone, n3866;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    
    wire n1234;
    wire [17:0]n378;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[11:18])
    
    wire PORDone_N_514;
    wire [14:0]n595;
    
    wire RDD_7__N_517;
    wire [2:0]S_2__N_508;
    
    wire CP2, RDOE;
    wire [17:0]n234;
    
    wire RDOE_N_540, n3, n3871, n3870, n3846;
    
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_534)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[36:40])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_rep_83_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_5)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_rep_83_3_lut.init = 16'h0808;
    FD1P3AX InitDone_109 (.D(n3489), .SP(S[2]), .CK(C8M_c), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(56[8:58])
    defparam InitDone_109.GSR = "ENABLED";
    LUT4 i3125_3_lut_3_lut (.A(S[0]), .B(S[1]), .C(InitDone), .Z(n3489)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3125_3_lut_3_lut.init = 16'hf8f8;
    LUT4 i15_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n3212)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_3_lut_rep_96 (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n3864)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_96.init = 16'h0404;
    LUT4 i3211_3_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n3361)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3211_3_lut_4_lut_3_lut.init = 16'hfdfd;
    LUT4 i3241_2_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(C8M_c_enable_12)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i3241_2_lut_4_lut_3_lut.init = 16'h0707;
    LUT4 i179_2_lut_rep_97 (.A(S[2]), .B(S[1]), .Z(n3865)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i179_2_lut_rep_97.init = 16'heeee;
    LUT4 mux_172_i18_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_11), 
         .D(S[0]), .Z(n2332)) /* synthesis lut_function=(!(A (B+(C))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_172_i18_4_lut.init = 16'h0353;
    LUT4 equal_20_i5_2_lut_rep_85_3_lut (.A(S[2]), .B(S[1]), .C(S[0]), 
         .Z(C8M_c_enable_3)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam equal_20_i5_2_lut_rep_85_3_lut.init = 16'hfefe;
    LUT4 i881_1_lut_rep_98 (.A(PORDone), .Z(n3866)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i881_1_lut_rep_98.init = 16'h5555;
    LUT4 i882_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_3), .Z(n1234)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i882_2_lut_4_lut_4_lut.init = 16'h5575;
    LUT4 mux_172_i17_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_11), 
         .D(S[0]), .Z(n378[16])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_172_i17_4_lut.init = 16'hf353;
    LUT4 i3_4_lut (.A(nRESETr[4]), .B(nRESETr[2]), .C(nRESETr[1]), .D(nRESETr[3]), 
         .Z(PORDone_N_514)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[6:58])
    defparam i3_4_lut.init = 16'h8000;
    FD1P3AX PORDone_106 (.D(n4095), .SP(PORDone_N_514), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam PORDone_106.GSR = "ENABLED";
    LUT4 mux_249_i1_3_lut (.A(\REUA[10] ), .B(\REUA[1] ), .C(S[0]), .Z(n595[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i1_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_161 (.A(RAMRD), .B(RAMWR), .C(InitDone), .D(C8M_c_enable_5), 
         .Z(RDD_7__N_517)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_161.init = 16'h2000;
    FD1S3IX S__i0 (.D(S_2__N_508[0]), .CK(C8M_c), .CD(n3866), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i0.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i0.GSR = "ENABLED";
    FD1S3AX CP2_104 (.D(CP1_N_534), .CK(C8M_N_502), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[8:45])
    defparam CP2_104.GSR = "ENABLED";
    LUT4 i787_1_lut (.A(RDOE), .Z(n1117)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    defparam i787_1_lut.init = 16'h5555;
    FD1S3AX PHI2r_i0 (.D(PHI2_c), .CK(C8M_N_502), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i0.GSR = "ENABLED";
    FD1S3IX nCS_110 (.D(n2332), .CK(C8M_c), .CD(n3864), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCS_110.GSR = "ENABLED";
    FD1S3IX nRAS_111 (.D(n378[16]), .CK(C8M_c), .CD(n3864), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRAS_111.GSR = "ENABLED";
    FD1S3IX nCAS_112 (.D(n381), .CK(C8M_c), .CD(n3864), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCAS_112.GSR = "ENABLED";
    FD1S3AX nRWE_113 (.D(n234[14]), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRWE_113.GSR = "ENABLED";
    FD1S3JX DQML_116 (.D(A_0__N_532), .CK(C8M_c), .PD(n3361), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQML_116.GSR = "ENABLED";
    LUT4 CP1_I_0_145_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(29[15:24])
    defparam CP1_I_0_145_2_lut.init = 16'h6666;
    FD1P3IX RA_i1 (.D(n595[0]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_543), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3AX RDOE_121 (.D(RDOE_N_540), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(193[8:54])
    defparam RDOE_121.GSR = "ENABLED";
    FD1S3AX CP1_103 (.D(CP1_N_534), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(27[8:45])
    defparam CP1_103.GSR = "ENABLED";
    LUT4 i253_2_lut (.A(S[0]), .B(S[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i253_2_lut.init = 16'h6666;
    LUT4 mux_249_i2_3_lut (.A(\REUA[11] ), .B(\REUA[2] ), .C(S[0]), .Z(n595[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i2_3_lut.init = 16'hcaca;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 mux_249_i3_3_lut (.A(\REUA[12] ), .B(\REUA[3] ), .C(S[0]), .Z(n595[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i3_3_lut.init = 16'hcaca;
    LUT4 mux_249_i4_3_lut (.A(\REUA[13] ), .B(\REUA[4] ), .C(S[0]), .Z(n595[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i4_3_lut.init = 16'hcaca;
    LUT4 mux_249_i7_3_lut (.A(\REUA[16] ), .B(\REUA[7] ), .C(S[0]), .Z(n595[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i7_3_lut.init = 16'hcaca;
    FD1P3IX S__i1 (.D(n3), .SP(C8M_c_enable_3), .CD(n1234), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n3212), .SP(C8M_c_enable_3), .CD(n1234), .CK(C8M_c), 
            .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i1.GSR = "ENABLED";
    LUT4 mux_249_i8_3_lut (.A(\REUA[17] ), .B(\REUA[8] ), .C(S[0]), .Z(n595[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i8_3_lut.init = 16'hcaca;
    LUT4 mux_249_i9_3_lut (.A(\REUA[18] ), .B(\REUA[9] ), .C(S[0]), .Z(n595[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i9_3_lut.init = 16'hcaca;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1S3AX PHI2r_i1 (.D(PHI2r[0]), .CK(C8M_N_502), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i1.GSR = "ENABLED";
    FD1P3IX RA_i2 (.D(n595[1]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 mux_249_i6_3_lut (.A(\REUA[15] ), .B(\REUA[6] ), .C(S[0]), .Z(n595[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i6_3_lut.init = 16'hcaca;
    FD1P3IX RA_i11 (.D(n4095), .SP(C8M_c_enable_5), .CD(C8M_c_enable_12), 
            .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i11.GSR = "ENABLED";
    LUT4 mux_249_i5_3_lut (.A(\REUA[14] ), .B(\REUA[5] ), .C(S[0]), .Z(n595[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i5_3_lut.init = 16'hcaca;
    LUT4 mux_174_i15_3_lut_then_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .Z(n3871)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_174_i15_3_lut_then_3_lut.init = 16'hfefe;
    FD1P3IX RA_i3 (.D(n595[2]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1P3IX RA_i4 (.D(n595[3]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1P3IX RA_i5 (.D(n595[4]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1P3IX RA_i7 (.D(n595[6]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1P3IX RA_i8 (.D(n595[7]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1P3IX RA_i9 (.D(n595[8]), .SP(C8M_c_enable_11), .CD(n3864), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(n1559), .CK(C8M_c), .PD(n3864), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_543), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_543), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_543), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_543), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_543), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_543), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_543), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 mux_174_i15_3_lut_else_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .D(RAMWR), .Z(n3870)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_174_i15_3_lut_else_3_lut.init = 16'h1f3f;
    LUT4 i1885_4_lut (.A(S[0]), .B(n3846), .C(n3865), .D(PORDone), .Z(S_2__N_508[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[7:47])
    defparam i1885_4_lut.init = 16'hdc50;
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1P3JX RA_i6 (.D(n595[5]), .SP(C8M_c_enable_12), .PD(n3864), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3JX DQMH_115 (.D(\REUA[0] ), .CK(C8M_c), .PD(n3361), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQMH_115.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(S[0]), .B(InitDone), .C(RAMWR), .D(n3865), 
         .Z(RDOE_N_540)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0080;
    LUT4 i2_3_lut_rep_78_4_lut (.A(S[0]), .B(n3865), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(n3846)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(48[11:23])
    defparam i2_3_lut_rep_78_4_lut.init = 16'h0100;
    PFUMX i3366 (.BLUT(n3870), .ALUT(n3871), .C0(S[2]), .Z(n234[14]));
    
endmodule
