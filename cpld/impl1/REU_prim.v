// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Apr 26 03:05:19 2022
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
    
    wire GND_net, VCC_net, nRESET_c, BA_c, n2050, nWE_c, nWEDMA_c, 
        nIO2_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, 
        n2052, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, 
        RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c, 
        n2054, IRQ, n511;
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, IncREUA, XferEnd, SetVerifyErr, 
        DOE, Execute, nWEDMA_N_13;
    wire [7:0]D_7__N_1;
    
    wire n504, EndOfBlock;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(35[11:25])
    
    wire ExecuteEN;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[12:18])
    
    wire IntEnable, EndOfBlockMask;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(63[11:18])
    
    wire IncCAg, n381, n3701, n610, n602, n2299, n4033, n2056, 
        n464, n6, n8, n3496, n1559, n8_adj_644, n3109, n4028, 
        n3108, n3657, n7, n4278, n4279, IRQOut_N_443, Execute_N_446;
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(188[11:15])
    
    wire n4280, n7_adj_645, n4024, n3685, n3863, A_0__N_532, n492, 
        n3684, Length1_N_614, n6_adj_646, n4, XferEnd_N_582, n4023, 
        n4018, n3853, nAOE_N_625, nDOE_N_632, n4022, n4021, C8M_c_enable_11, 
        n3682, n4054, n535, n545, n3473, n4052, n3680, n3683, 
        n564, n565, n4020, n4048, n4047, n3681, D_out_7, D_out_6, 
        D_out_5, D_out_4, D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, 
        A_out_14, A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, 
        A_out_8, A_out_4, A_out_3, A_out_2, A_out_1, n3467, A_out_0, 
        RD_out_7, RD_out_6, RD_out_5, n1117, RD_out_4, RD_out_3, 
        RD_out_2, RD_out_1, RD_out_0, n4043, n2002, n4041, n4038, 
        n4037, n3716, n3527, n21, n20, n11, n19, n4035, n7_adj_647, 
        n2264, n2263, n2261;
    
    VHI i2 (.Z(VCC_net));
    INV i3660 (.A(C8M_c), .Z(C8M_N_502));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n3853), .B(RAMRDD[7]), .C(DMA), .D(n2299), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 i1933_3_lut (.A(REUA[10]), .B(REUA[1]), .C(S[0]), .Z(n610)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1933_3_lut.init = 16'hcaca;
    L6MUX21 i1706 (.D0(n3680), .D1(n3682), .SD(n4054), .Z(n2056));
    L6MUX21 i1700 (.D0(n3683), .D1(n3685), .SD(n3701), .Z(n2050));
    LUT4 i3403_2_lut (.A(A_out_3), .B(A_out_0), .Z(n3701)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3403_2_lut.init = 16'heeee;
    PFUMX i3322 (.BLUT(n492), .ALUT(n3681), .C0(n3716), .Z(n3682));
    PFUMX i3325 (.BLUT(n2263), .ALUT(n3684), .C0(n3716), .Z(n3685));
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n564), .B(RAMRDD[6]), .C(DMA), .D(n2299), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    LUT4 i3392_2_lut (.A(A_out_3), .B(A_out_1), .Z(n3716)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3392_2_lut.init = 16'heeee;
    LUT4 i1656_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1656_3_lut.init = 16'hcaca;
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n565), .B(RAMRDD[5]), .C(DMA), .D(n2299), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3863), .B(RAMRDD[4]), .C(DMA), .D(n2299), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n2054), .B(RAMRDD[3]), .C(DMA), .D(n3473), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n2050), .B(RAMRDD[2]), .C(DMA), .D(n3473), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n2056), .B(RAMRDD[1]), .C(DMA), .D(n3473), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n2052), .B(RAMRDD[0]), .C(DMA), .D(n3473), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    PFUMX i3323 (.BLUT(n7_adj_647), .ALUT(n2261), .C0(A_out_1), .Z(n3683));
    PFUMX i3320 (.BLUT(n464), .ALUT(n11), .C0(A_out_1), .Z(n3680));
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3109), .S1(nWEDMA_N_13));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n3108), .COUT(n3109));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n4052), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n4052), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n4052), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n4052), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n4052), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n4052), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n4052), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n4052), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n4052), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n4052), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n4052), .B(A[5]), .O(n6));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n4052), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n4052), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    LUT4 i1929_3_lut (.A(REUA[18]), .B(REUA[9]), .C(S[0]), .Z(n602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1929_3_lut.init = 16'hcaca;
    BB A_pad_2 (.I(CA[2]), .T(n4052), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n4052), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n4052), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1117), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1117), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1117), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1117), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1117), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1117), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1117), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1117), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n4052), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_N_625), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n4052), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(n4043), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_N_632), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
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
    LUT4 i29_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29_3_lut.init = 16'hcaca;
    LUT4 i3324_3_lut (.A(n2264), .B(Length[10]), .C(A_out_3), .Z(n3684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3324_3_lut.init = 16'hcaca;
    LUT4 i1919_3_lut (.A(DF01Reserved32[2]), .B(REUA[10]), .C(A_out_2), 
         .Z(n2263)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1919_3_lut.init = 16'hcaca;
    LUT4 i3321_3_lut (.A(n504), .B(Length[9]), .C(A_out_3), .Z(n3681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3321_3_lut.init = 16'hcaca;
    LUT4 i1932_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1932_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(A_out_3), .D(n2299), 
         .Z(n3473)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1651_3_lut (.A(REUA[13]), .B(Length[5]), .C(A_out_1), .Z(n2002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1651_3_lut.init = 16'hcaca;
    LUT4 m1_lut (.Z(n4278)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i3424_3_lut_rep_97 (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_11)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i3424_3_lut_rep_97.init = 16'h1313;
    LUT4 i1917_3_lut (.A(CA[2]), .B(REUA[18]), .C(A_out_2), .Z(n2261)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1917_3_lut.init = 16'hcaca;
    LUT4 i1920_3_lut (.A(CA[10]), .B(Length[2]), .C(A_out_2), .Z(n2264)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1920_3_lut.init = 16'hcaca;
    LUT4 i2011_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n381)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i2011_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i3372_3_lut_4_lut (.A(A_out_1), .B(REUA[5]), .C(A_out_3), .D(n545), 
         .Z(n535)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i3372_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i1205_2_lut_4_lut (.A(S[0]), .B(S[1]), .C(S[2]), .D(RA_c_9), 
         .Z(n1559)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1205_2_lut_4_lut.init = 16'hec00;
    DMASeq dmaseq (.DMA(DMA), .n4279(n4279), .n4023(n4023), .Execute(Execute), 
           .n4024(n4024), .n4020(n4020), .IncREUA(IncREUA), .n3527(n3527), 
           .XferEnd(XferEnd), .n4280(n4280), .RegReset(RegReset), .n3467(n3467), 
           .n4018(n4018), .PHI2_N_543(PHI2_N_543), .nRESET_c(nRESET_c), 
           .nWEDMA_c(nWEDMA_c), .RAMRD(RAMRD), .RAMWR(RAMWR), .n4052(n4052), 
           .BA_c(BA_c), .nWEDMA_N_13(nWEDMA_N_13), .n3496(n3496), .n4(n4), 
           .n4043(n4043), .PHI2_c(PHI2_c), .nAOE_N_625(nAOE_N_625), .Length1_N_614(Length1_N_614), 
           .XferEnd_N_582(XferEnd_N_582), .n4022(n4022), .SetVerifyErr(SetVerifyErr), 
           .n4021(n4021), .\IncMode[1] (IncMode[1]), .IncCAg(IncCAg), 
           .n6(n6_adj_646)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(82[9] 96[64])
    LUT4 i5_4_lut (.A(n6), .B(n7_adj_645), .C(A_out_1), .D(n3657), .Z(Execute_N_446)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i5_4_lut.init = 16'h0004;
    LUT4 i1_4_lut (.A(n21), .B(A_out_0), .C(n19), .D(n20), .Z(n7_adj_645)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h2000;
    INV i3661 (.A(PHI2_c), .Z(PHI2_N_543));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    LUT4 i9_4_lut (.A(A_out_15), .B(A_out_8), .C(A_out_10), .D(A_out_13), 
         .Z(n21)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(A_out_2), .B(REUA[2]), .Z(n7_adj_647)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_2_lut.init = 16'h8888;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n3108));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i7_4_lut (.A(ExecuteEN), .B(A_out_11), .C(A_out_3), .D(n8), 
         .Z(n19)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i7_4_lut.init = 16'h0008;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i8_4_lut (.A(A_out_12), .B(nWE_c), .C(A_out_9), .D(A_out_14), 
         .Z(n20)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i8_4_lut.init = 16'h2000;
    RAM ram (.S({S}), .C8M_c(C8M_c), .RAMWR(RAMWR), .n4278(n4278), .RAMRD(RAMRD), 
        .nRESET_c(nRESET_c), .n1117(n1117), .C8M_N_502(C8M_N_502), .PHI2_c(PHI2_c), 
        .RCLK_c(RCLK_c), .nCS_c(nCS_c), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), 
        .n381(n381), .nRWE_c(nRWE_c), .DQML_c(DQML_c), .A_0__N_532(A_0__N_532), 
        .RA_c_0(RA_c_0), .C8M_c_enable_11(C8M_c_enable_11), .n610(n610), 
        .WRDr({WRDr}), .PHI2_N_543(PHI2_N_543), .D_out_0(D_out_0), .\REUA[11] (REUA[11]), 
        .\REUA[2] (REUA[2]), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .\REUA[12] (REUA[12]), 
        .\REUA[3] (REUA[3]), .\REUA[13] (REUA[13]), .\REUA[4] (REUA[4]), 
        .\REUA[14] (REUA[14]), .\REUA[5] (REUA[5]), .\REUA[16] (REUA[16]), 
        .\REUA[7] (REUA[7]), .\REUA[17] (REUA[17]), .\REUA[8] (REUA[8]), 
        .\REUA[15] (REUA[15]), .\REUA[6] (REUA[6]), .RA_c_1(RA_c_1), .RA_c_10(RA_c_10), 
        .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), .RA_c_4(RA_c_4), .RA_c_6(RA_c_6), 
        .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), .n602(n602), .RA_c_9(RA_c_9), 
        .n1559(n1559), .D_out_1(D_out_1), .D_out_2(D_out_2), .D_out_3(D_out_3), 
        .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), .D_out_7(D_out_7), 
        .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .RA_c_5(RA_c_5), .DQMH_c(DQMH_c), .\REUA[0] (REUA[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(70[6] 80[32])
    Glue glue (.PHI2_c(PHI2_c), .nIO2_c(nIO2_c), .BA_c(BA_c), .DMA(DMA), 
         .nDOE_N_632(nDOE_N_632), .nWE_c(nWE_c), .nWEDMA_c(nWEDMA_c), 
         .DDIR_c(DDIR_c), .IntEnable(IntEnable), .EndOfBlockMask(EndOfBlockMask), 
         .IRQOut_N_443(IRQOut_N_443), .EndOfBlock(EndOfBlock), .IRQ(IRQ), 
         .n4048(n4048), .A_out_1(A_out_1), .A_out_0(A_out_0), .n4033(n4033), 
         .n4037(n4037), .n8(n8_adj_644), .n4047(n4047), .n4028(n4028), 
         .n4035(n4035), .n4041(n4041), .DOE(DOE), .n4038(n4038)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(98[7] 113[15])
    REUReg reureg (.GND_net(GND_net), .A_out_1(A_out_1), .\REUA[15] (REUA[15]), 
           .\REUA[7] (REUA[7]), .CA({CA}), .PHI2_N_543(PHI2_N_543), .n4280(n4280), 
           .n4035(n4035), .D_out_1(D_out_1), .RegReset(RegReset), .D_out_6(D_out_6), 
           .D_out_2(D_out_2), .n4279(n4279), .IntEnable(IntEnable), .D_out_7(D_out_7), 
           .A_out_0(A_out_0), .D_out_5(D_out_5), .D_out_3(D_out_3), .n8(n8_adj_644), 
           .XferEnd(XferEnd), .D_out_4(D_out_4), .Execute_N_446(Execute_N_446), 
           .Execute(Execute), .A_out_4(A_out_4), .A_out_3(A_out_3), .A_out_2(A_out_2), 
           .n2299(n2299), .n4278(n4278), .\Length[2] (Length[2]), .EndOfBlockMask(EndOfBlockMask), 
           .\REUA[0] (REUA[0]), .A_0__N_532(A_0__N_532), .n4020(n4020), 
           .nWE_c(nWE_c), .n4054(n4054), .n565(n565), .EndOfBlock(EndOfBlock), 
           .D_out_0(D_out_0), .SetVerifyErr(SetVerifyErr), .\REUA[6] (REUA[6]), 
           .\REUA[5] (REUA[5]), .\REUA[4] (REUA[4]), .\REUA[3] (REUA[3]), 
           .\REUA[2] (REUA[2]), .\REUA[1] (REUA[1]), .\Length[10] (Length[10]), 
           .\REUA[16] (REUA[16]), .n2002(n2002), .n535(n535), .\REUA[14] (REUA[14]), 
           .\REUA[13] (REUA[13]), .\REUA[12] (REUA[12]), .\REUA[11] (REUA[11]), 
           .\REUA[10] (REUA[10]), .\REUA[9] (REUA[9]), .\REUA[8] (REUA[8]), 
           .\REUA[17] (REUA[17]), .n3716(n3716), .\REUA[18] (REUA[18]), 
           .n4037(n4037), .n4024(n4024), .n564(n564), .n511(n511), .n4023(n4023), 
           .IRQOut_N_443(IRQOut_N_443), .n4033(n4033), .\Length[14] (Length[14]), 
           .\Length[9] (Length[9]), .\Length[5] (Length[5]), .n4041(n4041), 
           .IncREUA(IncREUA), .DF01Reserved32({Open_0, DF01Reserved32[2]}), 
           .n4018(n4018), .n4047(n4047), .\IncMode[1] (IncMode[1]), .Length1_N_614(Length1_N_614), 
           .n3853(n3853), .n4021(n4021), .n6(n6_adj_646), .n3496(n3496), 
           .XferEnd_N_582(XferEnd_N_582), .n4(n4), .ExecuteEN(ExecuteEN), 
           .n4022(n4022), .n464(n464), .n4028(n4028), .n3527(n3527), 
           .IncCAg(IncCAg), .n545(n545), .n4038(n4038), .n2054(n2054), 
           .n2052(n2052), .n504(n504), .n4048(n4048), .n3467(n3467), 
           .n3863(n3863), .n7(n7), .n3657(n3657)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 68[11])
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (DMA, n4279, n4023, Execute, n4024, n4020, IncREUA, 
            n3527, XferEnd, n4280, RegReset, n3467, n4018, PHI2_N_543, 
            nRESET_c, nWEDMA_c, RAMRD, RAMWR, n4052, BA_c, nWEDMA_N_13, 
            n3496, n4, n4043, PHI2_c, nAOE_N_625, Length1_N_614, 
            XferEnd_N_582, n4022, SetVerifyErr, n4021, \IncMode[1] , 
            IncCAg, n6) /* synthesis syn_module_defined=1 */ ;
    output DMA;
    output n4279;
    input n4023;
    input Execute;
    input n4024;
    output n4020;
    output IncREUA;
    output n3527;
    output XferEnd;
    output n4280;
    output RegReset;
    output n3467;
    output n4018;
    input PHI2_N_543;
    input nRESET_c;
    output nWEDMA_c;
    output RAMRD;
    output RAMWR;
    output n4052;
    input BA_c;
    input nWEDMA_N_13;
    input n3496;
    input n4;
    output n4043;
    input PHI2_c;
    output nAOE_N_625;
    input Length1_N_614;
    output XferEnd_N_582;
    input n4022;
    output SetVerifyErr;
    input n4021;
    input \IncMode[1] ;
    output IncCAg;
    output n6;
    
    wire PHI2_N_543 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire [2:1]nRESETr;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire DMAr, DMARW_N_590, SwapState, DMARW_N_595, DMARW_N_589, n1, 
        n1292, DMA_N_571, n16, RAMWR_N_560, n3992, XferEnd_N_584, 
        n4050, RAMRD_N_544, BAr, Equalr, PHI2_N_543_enable_72, SwapState_N_565, 
        n3333, n4051, n3993;
    
    LUT4 i1096_4_lut_rep_99 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4279)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1096_4_lut_rep_99.init = 16'h1511;
    LUT4 i1200_3_lut_3_lut (.A(n4023), .B(Execute), .C(n4024), .Z(DMARW_N_590)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam i1200_3_lut_3_lut.init = 16'h8c8c;
    LUT4 IncCA_I_155_2_lut_rep_62_3_lut_3_lut (.A(n4023), .B(SwapState), 
         .C(n4024), .Z(n4020)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam IncCA_I_155_2_lut_rep_62_3_lut_3_lut.init = 16'hfdfd;
    PFUMX DMARW_I_0_149 (.BLUT(DMARW_N_590), .ALUT(DMARW_N_595), .C0(DMA), 
          .Z(DMARW_N_589)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;
    PFUMX mux_199_Mux_0_i3 (.BLUT(n1), .ALUT(n1292), .C0(n4023), .Z(IncREUA));
    LUT4 i2_3_lut_3_lut (.A(n4023), .B(n4024), .C(SwapState), .Z(n3527)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd), .C(DMA), .Z(DMA_N_571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(82[11] 106[5])
    defparam Execute_I_0_3_lut.init = 16'hcaca;
    LUT4 i1096_4_lut_rep_100 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4280)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1096_4_lut_rep_100.init = 16'h1511;
    LUT4 i1096_4_lut (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), .D(DMAr), 
         .Z(RegReset)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1096_4_lut.init = 16'h1511;
    LUT4 i1_2_lut_rep_60_3_lut_4_lut_4_lut (.A(n4023), .B(SwapState), .C(n3467), 
         .D(n4024), .Z(n4018)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam i1_2_lut_rep_60_3_lut_4_lut_4_lut.init = 16'hf0d0;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n4023), .B(n16), .C(SwapState), .D(n4024), 
         .Z(RAMWR_N_560)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h005d;
    LUT4 XferType_0__bdd_4_lut_4_lut (.A(n4023), .B(SwapState), .C(n4024), 
         .D(XferEnd), .Z(n3992)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam XferType_0__bdd_4_lut_4_lut.init = 16'hf800;
    LUT4 i1992_4_lut_4_lut_4_lut (.A(n4023), .B(SwapState), .C(n4024), 
         .D(XferEnd), .Z(DMARW_N_595)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(C+!(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam i1992_4_lut_4_lut_4_lut.init = 16'had00;
    LUT4 i1_3_lut_4_lut (.A(n4024), .B(n4023), .C(XferEnd_N_584), .D(n4050), 
         .Z(n3467)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h7f00;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_543), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX DMA_134 (.D(DMA_N_571), .CK(PHI2_N_543), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam DMA_134.GSR = "ENABLED";
    FD1S3AX DMARW_135 (.D(DMARW_N_589), .CK(PHI2_N_543), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam DMARW_135.GSR = "ENABLED";
    FD1S3AX RAMRD_136 (.D(RAMRD_N_544), .CK(PHI2_N_543), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RAMRD_136.GSR = "ENABLED";
    FD1S3IX RAMWR_137 (.D(RAMWR_N_560), .CK(PHI2_N_543), .CD(n4052), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RAMWR_137.GSR = "ENABLED";
    FD1S3AX DMAr_138 (.D(DMA), .CK(PHI2_N_543), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam DMAr_138.GSR = "ENABLED";
    FD1S3AX BAr_139 (.D(BA_c), .CK(PHI2_N_543), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam BAr_139.GSR = "ENABLED";
    FD1S3AX Equalr_140 (.D(nWEDMA_N_13), .CK(PHI2_N_543), .Q(Equalr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam Equalr_140.GSR = "ENABLED";
    LUT4 i3428_4_lut (.A(BA_c), .B(n3496), .C(nRESETr[1]), .D(DMA), 
         .Z(PHI2_N_543_enable_72)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3428_4_lut.init = 16'hefff;
    LUT4 SwapState_I_0_1_lut (.A(SwapState), .Z(SwapState_N_565)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(71[14] 75[8])
    defparam SwapState_I_0_1_lut.init = 16'h5555;
    LUT4 i3402_4_lut (.A(DMA), .B(n4), .C(nRESETr[1]), .D(n3496), .Z(XferEnd)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(56[12] 81[6])
    defparam i3402_4_lut.init = 16'h0031;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_543), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(DMA), .B(nRESETr[1]), .C(n3496), 
         .D(BA_c), .Z(n3333)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h55f7;
    LUT4 DMA_I_0_147_2_lut_rep_92 (.A(DMA), .B(BA_c), .Z(n4050)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[17:26])
    defparam DMA_I_0_147_2_lut_rep_92.init = 16'h8888;
    LUT4 nRWOE_I_0_1_lut_rep_85_2_lut (.A(DMA), .B(BA_c), .Z(n4043)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[17:26])
    defparam nRWOE_I_0_1_lut_rep_85_2_lut.init = 16'h7777;
    FD1P3IX SwapState_133 (.D(SwapState_N_565), .SP(PHI2_N_543_enable_72), 
            .CD(n3333), .CK(PHI2_N_543), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(36[8] 41[4])
    defparam SwapState_133.GSR = "ENABLED";
    LUT4 DMAr_I_0_2_lut_rep_93 (.A(DMAr), .B(BAr), .Z(n4051)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[43:54])
    defparam DMAr_I_0_2_lut_rep_93.init = 16'h8888;
    LUT4 XferEnd_I_145_2_lut_3_lut (.A(DMAr), .B(BAr), .C(Equalr), .Z(XferEnd_N_584)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[43:54])
    defparam XferEnd_I_145_2_lut_3_lut.init = 16'h0808;
    LUT4 AOE_I_0_26_1_lut_rep_94 (.A(DMA), .Z(n4052)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam AOE_I_0_26_1_lut_rep_94.init = 16'h5555;
    LUT4 i3406_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_N_625)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3406_3_lut_3_lut.init = 16'h2f2f;
    LUT4 XferEnd_I_144_2_lut_3_lut (.A(DMA), .B(BA_c), .C(Length1_N_614), 
         .Z(XferEnd_N_582)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[17:26])
    defparam XferEnd_I_144_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_2_lut (.A(DMA), .B(nRESETr[1]), .Z(n16)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i3_4_lut (.A(n4022), .B(nWEDMA_N_13), .C(DMA), .D(BA_c), .Z(SetVerifyErr)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 IncCAg_I_119_2_lut_3_lut_4_lut (.A(n4021), .B(SwapState), .C(\IncMode[1] ), 
         .D(n3467), .Z(IncCAg)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(122[15:39])
    defparam IncCAg_I_119_2_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 XferType_0__bdd_3_lut (.A(n4024), .B(Execute), .C(n4023), .Z(n3993)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam XferType_0__bdd_3_lut.init = 16'hc8c8;
    LUT4 mux_199_Mux_0_i1_3_lut_4_lut (.A(DMA), .B(BA_c), .C(n4024), .D(n4051), 
         .Z(n1)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[17:26])
    defparam mux_199_Mux_0_i1_3_lut_4_lut.init = 16'h8f80;
    LUT4 i939_4_lut (.A(n4050), .B(SwapState), .C(XferEnd_N_584), .D(n4024), 
         .Z(n1292)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(130[2] 133[60])
    defparam i939_4_lut.init = 16'h0a88;
    PFUMX i3524 (.BLUT(n3993), .ALUT(n3992), .C0(DMA), .Z(RAMRD_N_544));
    LUT4 i19_4_lut (.A(XferEnd_N_582), .B(XferEnd_N_584), .C(n4024), .D(SwapState), 
         .Z(n6)) /* synthesis lut_function=(A (C+(D))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(136[2] 139[73])
    defparam i19_4_lut.init = 16'heae0;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module RAM
//

module RAM (S, C8M_c, RAMWR, n4278, RAMRD, nRESET_c, n1117, C8M_N_502, 
            PHI2_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, n381, nRWE_c, 
            DQML_c, A_0__N_532, RA_c_0, C8M_c_enable_11, n610, WRDr, 
            PHI2_N_543, D_out_0, \REUA[11] , \REUA[2] , RAMRDD, RD_out_0, 
            \REUA[12] , \REUA[3] , \REUA[13] , \REUA[4] , \REUA[14] , 
            \REUA[5] , \REUA[16] , \REUA[7] , \REUA[17] , \REUA[8] , 
            \REUA[15] , \REUA[6] , RA_c_1, RA_c_10, RA_c_2, RA_c_3, 
            RA_c_4, RA_c_6, RA_c_7, RA_c_8, n602, RA_c_9, n1559, 
            D_out_1, D_out_2, D_out_3, D_out_4, D_out_5, D_out_6, 
            D_out_7, RD_out_1, RD_out_2, RD_out_3, RD_out_4, RD_out_5, 
            RD_out_6, RD_out_7, RA_c_5, DQMH_c, \REUA[0] ) /* synthesis syn_module_defined=1 */ ;
    output [2:0]S;
    input C8M_c;
    input RAMWR;
    input n4278;
    input RAMRD;
    input nRESET_c;
    output n1117;
    input C8M_N_502;
    input PHI2_c;
    output RCLK_c;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    input n381;
    output nRWE_c;
    output DQML_c;
    input A_0__N_532;
    output RA_c_0;
    input C8M_c_enable_11;
    input n610;
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
    input \REUA[14] ;
    input \REUA[5] ;
    input \REUA[16] ;
    input \REUA[7] ;
    input \REUA[17] ;
    input \REUA[8] ;
    input \REUA[15] ;
    input \REUA[6] ;
    output RA_c_1;
    output RA_c_10;
    output RA_c_2;
    output RA_c_3;
    output RA_c_4;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    input n602;
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
    
    wire n4056, InitDone, n3692, n3574, C8M_c_enable_12;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[11:18])
    
    wire PORDone_N_514, n3437, PORDone, n4046;
    wire [2:0]S_2__N_508;
    
    wire C8M_c_enable_5, RDD_7__N_517, RDOE, CP2, CP1_N_534;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    
    wire CP1, n2430;
    wire [17:0]n378;
    wire [17:0]n234;
    
    wire n3, RDOE_N_540;
    wire [14:0]n595;
    
    wire n4045, n4034, C8M_c_enable_3, n1234, n3433, n4059, n4058;
    
    LUT4 i2_3_lut_rep_98 (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n4056)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_98.init = 16'h0404;
    FD1P3AX InitDone_109 (.D(n3692), .SP(S[2]), .CK(C8M_c), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(56[8:58])
    defparam InitDone_109.GSR = "ENABLED";
    LUT4 i3397_3_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n3574)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3397_3_lut_4_lut_3_lut.init = 16'hfdfd;
    LUT4 i3431_2_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(C8M_c_enable_12)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i3431_2_lut_4_lut_3_lut.init = 16'h0707;
    LUT4 i3_4_lut (.A(nRESETr[4]), .B(nRESETr[3]), .C(nRESETr[1]), .D(nRESETr[2]), 
         .Z(PORDone_N_514)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[6:58])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i2_3_lut (.A(S[0]), .B(InitDone), .C(RAMWR), .Z(n3437)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3AX PORDone_106 (.D(n4278), .SP(PORDone_N_514), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam PORDone_106.GSR = "ENABLED";
    FD1S3IX S__i0 (.D(S_2__N_508[0]), .CK(C8M_c), .CD(n4046), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i0.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_177 (.A(RAMRD), .B(RAMWR), .C(InitDone), .D(C8M_c_enable_5), 
         .Z(RDD_7__N_517)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_177.init = 16'h2000;
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i0.GSR = "ENABLED";
    LUT4 i787_1_lut (.A(RDOE), .Z(n1117)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    defparam i787_1_lut.init = 16'h5555;
    FD1S3AX CP2_104 (.D(CP1_N_534), .CK(C8M_N_502), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[8:45])
    defparam CP2_104.GSR = "ENABLED";
    FD1S3AX PHI2r_i0 (.D(PHI2_c), .CK(C8M_N_502), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i0.GSR = "ENABLED";
    LUT4 CP1_I_0_145_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(29[15:24])
    defparam CP1_I_0_145_2_lut.init = 16'h6666;
    FD1S3IX nCS_110 (.D(n2430), .CK(C8M_c), .CD(n4056), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCS_110.GSR = "ENABLED";
    FD1S3IX nRAS_111 (.D(n378[16]), .CK(C8M_c), .CD(n4056), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRAS_111.GSR = "ENABLED";
    FD1S3IX nCAS_112 (.D(n381), .CK(C8M_c), .CD(n4056), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCAS_112.GSR = "ENABLED";
    FD1S3AX nRWE_113 (.D(n234[14]), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRWE_113.GSR = "ENABLED";
    FD1S3JX DQML_116 (.D(A_0__N_532), .CK(C8M_c), .PD(n3574), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQML_116.GSR = "ENABLED";
    FD1P3IX RA_i1 (.D(n610), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_543), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    LUT4 i253_2_lut (.A(S[0]), .B(S[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i253_2_lut.init = 16'h6666;
    FD1S3AX RDOE_121 (.D(RDOE_N_540), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(193[8:54])
    defparam RDOE_121.GSR = "ENABLED";
    FD1S3AX CP1_103 (.D(CP1_N_534), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(27[8:45])
    defparam CP1_103.GSR = "ENABLED";
    LUT4 mux_249_i2_3_lut (.A(\REUA[11] ), .B(\REUA[2] ), .C(S[0]), .Z(n595[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i2_3_lut.init = 16'hcaca;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_517), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 mux_249_i3_3_lut (.A(\REUA[12] ), .B(\REUA[3] ), .C(S[0]), .Z(n595[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i3_3_lut.init = 16'hcaca;
    LUT4 mux_249_i4_3_lut (.A(\REUA[13] ), .B(\REUA[4] ), .C(S[0]), .Z(n595[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i4_3_lut.init = 16'hcaca;
    LUT4 mux_249_i5_3_lut (.A(\REUA[14] ), .B(\REUA[5] ), .C(S[0]), .Z(n595[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i5_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_76_4_lut (.A(S[0]), .B(n4045), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(n4034)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(48[11:23])
    defparam i2_3_lut_rep_76_4_lut.init = 16'h0100;
    LUT4 mux_249_i7_3_lut (.A(\REUA[16] ), .B(\REUA[7] ), .C(S[0]), .Z(n595[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i7_3_lut.init = 16'hcaca;
    LUT4 mux_249_i8_3_lut (.A(\REUA[17] ), .B(\REUA[8] ), .C(S[0]), .Z(n595[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i8_3_lut.init = 16'hcaca;
    LUT4 mux_249_i6_3_lut (.A(\REUA[15] ), .B(\REUA[6] ), .C(S[0]), .Z(n595[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_249_i6_3_lut.init = 16'hcaca;
    FD1P3IX S__i1 (.D(n3), .SP(C8M_c_enable_3), .CD(n1234), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n3433), .SP(C8M_c_enable_3), .CD(n1234), .CK(C8M_c), 
            .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1S3AX PHI2r_i1 (.D(PHI2r[0]), .CK(C8M_N_502), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i1.GSR = "ENABLED";
    FD1P3IX RA_i2 (.D(n595[1]), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i2.GSR = "ENABLED";
    FD1P3IX RA_i11 (.D(n4278), .SP(C8M_c_enable_5), .CD(C8M_c_enable_12), 
            .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1P3IX RA_i3 (.D(n595[2]), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1P3IX RA_i4 (.D(n595[3]), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1P3IX RA_i5 (.D(n595[4]), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1P3IX RA_i7 (.D(n595[6]), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1P3IX RA_i8 (.D(n595[7]), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1P3IX RA_i9 (.D(n602), .SP(C8M_c_enable_11), .CD(n4056), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(n1559), .CK(C8M_c), .PD(n4056), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
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
    FD1P3JX RA_i6 (.D(n595[5]), .SP(C8M_c_enable_12), .PD(n4056), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i6.GSR = "ENABLED";
    LUT4 mux_174_i15_3_lut_then_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .Z(n4059)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_174_i15_3_lut_then_3_lut.init = 16'hfefe;
    LUT4 mux_174_i15_3_lut_else_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .D(RAMWR), .Z(n4058)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_174_i15_3_lut_else_3_lut.init = 16'h1f3f;
    FD1S3JX DQMH_115 (.D(\REUA[0] ), .CK(C8M_c), .PD(n3574), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQMH_115.GSR = "ENABLED";
    LUT4 mux_172_i18_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_11), 
         .D(S[0]), .Z(n2430)) /* synthesis lut_function=(!(A (B+(C))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_172_i18_4_lut.init = 16'h0353;
    LUT4 i3332_3_lut_3_lut (.A(S[0]), .B(S[1]), .C(InitDone), .Z(n3692)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3332_3_lut_3_lut.init = 16'hf8f8;
    LUT4 i2_2_lut_rep_86_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_5)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_rep_86_3_lut.init = 16'h0808;
    LUT4 i179_2_lut_rep_87 (.A(S[2]), .B(S[1]), .Z(n4045)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i179_2_lut_rep_87.init = 16'heeee;
    LUT4 i15_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n3433)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 equal_20_i5_2_lut_rep_81_3_lut (.A(S[2]), .B(S[1]), .C(S[0]), 
         .Z(C8M_c_enable_3)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam equal_20_i5_2_lut_rep_81_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(S[2]), .B(S[1]), .C(n3437), .Z(RDOE_N_540)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i881_1_lut_rep_88 (.A(PORDone), .Z(n4046)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i881_1_lut_rep_88.init = 16'h5555;
    LUT4 i882_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_3), .Z(n1234)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i882_2_lut_4_lut_4_lut.init = 16'h5575;
    LUT4 mux_172_i17_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_11), 
         .D(S[0]), .Z(n378[16])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_172_i17_4_lut.init = 16'hf353;
    LUT4 i1985_4_lut (.A(S[0]), .B(n4034), .C(n4045), .D(PORDone), .Z(S_2__N_508[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[7:47])
    defparam i1985_4_lut.init = 16'hdc50;
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_534)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[36:40])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    PFUMX i3532 (.BLUT(n4058), .ALUT(n4059), .C0(S[2]), .Z(n234[14]));
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (PHI2_c, nIO2_c, BA_c, DMA, nDOE_N_632, nWE_c, nWEDMA_c, 
            DDIR_c, IntEnable, EndOfBlockMask, IRQOut_N_443, EndOfBlock, 
            IRQ, n4048, A_out_1, A_out_0, n4033, n4037, n8, n4047, 
            n4028, n4035, n4041, DOE, n4038) /* synthesis syn_module_defined=1 */ ;
    input PHI2_c;
    input nIO2_c;
    input BA_c;
    input DMA;
    output nDOE_N_632;
    input nWE_c;
    input nWEDMA_c;
    output DDIR_c;
    input IntEnable;
    input EndOfBlockMask;
    input IRQOut_N_443;
    input EndOfBlock;
    output IRQ;
    output n4048;
    input A_out_1;
    input A_out_0;
    output n4033;
    output n4037;
    input n8;
    input n4047;
    output n4028;
    output n4035;
    output n4041;
    output DOE;
    output n4038;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    LUT4 i3409_4_lut (.A(PHI2_c), .B(nIO2_c), .C(BA_c), .D(DMA), .Z(nDOE_N_632)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(38[15:44])
    defparam i3409_4_lut.init = 16'h5fdd;
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(37[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 i3412_4_lut (.A(IntEnable), .B(EndOfBlockMask), .C(IRQOut_N_443), 
         .D(EndOfBlock), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(42[15:19])
    defparam i3412_4_lut.init = 16'h575f;
    LUT4 i2_3_lut_rep_75_4_lut (.A(n4048), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4033)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_75_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_rep_79_4_lut (.A(n4048), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4037)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_79_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(n4048), .B(nWE_c), .C(n8), .D(n4047), 
         .Z(n4028)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_77_4_lut (.A(n4048), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4035)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_77_4_lut.init = 16'hffef;
    LUT4 i2002_2_lut_rep_90 (.A(DMA), .B(nIO2_c), .Z(n4048)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2002_2_lut_rep_90.init = 16'heeee;
    LUT4 i2004_2_lut_rep_83_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n4041)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2004_2_lut_rep_83_3_lut.init = 16'hfefe;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 RegCS_I_0_30_2_lut_rep_80_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n4038)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_30_2_lut_rep_80_3_lut.init = 16'h1010;
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (GND_net, A_out_1, \REUA[15] , \REUA[7] , CA, PHI2_N_543, 
            n4280, n4035, D_out_1, RegReset, D_out_6, D_out_2, n4279, 
            IntEnable, D_out_7, A_out_0, D_out_5, D_out_3, n8, XferEnd, 
            D_out_4, Execute_N_446, Execute, A_out_4, A_out_3, A_out_2, 
            n2299, n4278, \Length[2] , EndOfBlockMask, \REUA[0] , 
            A_0__N_532, n4020, nWE_c, n4054, n565, EndOfBlock, D_out_0, 
            SetVerifyErr, \REUA[6] , \REUA[5] , \REUA[4] , \REUA[3] , 
            \REUA[2] , \REUA[1] , \Length[10] , \REUA[16] , n2002, 
            n535, \REUA[14] , \REUA[13] , \REUA[12] , \REUA[11] , 
            \REUA[10] , \REUA[9] , \REUA[8] , \REUA[17] , n3716, \REUA[18] , 
            n4037, n4024, n564, n511, n4023, IRQOut_N_443, n4033, 
            \Length[14] , \Length[9] , \Length[5] , n4041, IncREUA, 
            DF01Reserved32, n4018, n4047, \IncMode[1] , Length1_N_614, 
            n3853, n4021, n6, n3496, XferEnd_N_582, n4, ExecuteEN, 
            n4022, n464, n4028, n3527, IncCAg, n545, n4038, n2054, 
            n2052, n504, n4048, n3467, n3863, n7, n3657) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input A_out_1;
    output \REUA[15] ;
    output \REUA[7] ;
    output [15:0]CA;
    input PHI2_N_543;
    input n4280;
    input n4035;
    input D_out_1;
    input RegReset;
    input D_out_6;
    input D_out_2;
    input n4279;
    output IntEnable;
    input D_out_7;
    input A_out_0;
    input D_out_5;
    input D_out_3;
    output n8;
    input XferEnd;
    input D_out_4;
    input Execute_N_446;
    output Execute;
    input A_out_4;
    input A_out_3;
    input A_out_2;
    output n2299;
    input n4278;
    output \Length[2] ;
    output EndOfBlockMask;
    output \REUA[0] ;
    output A_0__N_532;
    input n4020;
    input nWE_c;
    output n4054;
    output n565;
    output EndOfBlock;
    input D_out_0;
    input SetVerifyErr;
    output \REUA[6] ;
    output \REUA[5] ;
    output \REUA[4] ;
    output \REUA[3] ;
    output \REUA[2] ;
    output \REUA[1] ;
    output \Length[10] ;
    output \REUA[16] ;
    input n2002;
    input n535;
    output \REUA[14] ;
    output \REUA[13] ;
    output \REUA[12] ;
    output \REUA[11] ;
    output \REUA[10] ;
    output \REUA[9] ;
    output \REUA[8] ;
    output \REUA[17] ;
    input n3716;
    output \REUA[18] ;
    input n4037;
    output n4024;
    output n564;
    input n511;
    output n4023;
    output IRQOut_N_443;
    input n4033;
    output \Length[14] ;
    output \Length[9] ;
    output \Length[5] ;
    input n4041;
    input IncREUA;
    output [3:2]DF01Reserved32;
    input n4018;
    output n4047;
    output \IncMode[1] ;
    output Length1_N_614;
    output n3853;
    output n4021;
    input n6;
    output n3496;
    input XferEnd_N_582;
    output n4;
    output ExecuteEN;
    output n4022;
    output n464;
    input n4028;
    input n3527;
    input IncCAg;
    output n545;
    input n4038;
    output n2054;
    output n2052;
    output n504;
    input n4048;
    input n3467;
    output n3863;
    input n7;
    output n3657;
    
    wire PHI2_N_543 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire n3213;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[12:18])
    wire [7:0]Length_15__N_303;
    
    wire n4136, n3439, n20, n3651, SetEndOfBlock, n4139, n4019, 
        n4032;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[12:25])
    wire [7:0]n931;
    wire [7:0]n434;
    
    wire IntPending, n4140, n4042;
    wire [7:0]CAOut_7__N_188;
    
    wire DF01Reserved6, PHI2_N_543_enable_71, n1200, PHI2_N_543_enable_10;
    wire [7:0]n509;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(48[12:23])
    
    wire PHI2_N_543_enable_66, n1206, n3215;
    wire [7:0]Length_7__N_350;
    
    wire n3216, n4036, AutoloadEN, REUAOut_15__N_56;
    wire [7:0]REUAOut_7__N_100;
    wire [7:0]n432;
    
    wire n4_c;
    wire [7:0]n433;
    
    wire Execute_N_444, FF00DecodeEN, n1202, n2311, IntPending_N_450, 
        n1248, PHI2_N_543_enable_43, n1188, n3214, PHI2_N_543_enable_51, 
        VerifyErrMask, n5, n7_c, n3661, PHI2_N_543_enable_79, n4017, 
        n3688;
    wire [7:0]n552;
    
    wire Fault;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(43[12:21])
    
    wire PHI2_N_543_enable_68, n1198, PHI2_N_543_enable_70, n3545, PHI2_N_543_enable_25, 
        PHI2_N_543_enable_35;
    wire [7:0]n431;
    wire [2:0]n430;
    wire [2:0]n439;
    
    wire REUAOut_18__N_35, n4015, n3695, PHI2_N_543_enable_49;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(63[11:18])
    
    wire PHI2_N_543_enable_69, n4031;
    wire [7:0]n932;
    
    wire n943;
    wire [7:0]n485;
    
    wire n3672, n3673, REUAOut_7__N_101;
    wire [7:0]REUAOut_15__N_53;
    
    wire n3675, n3676, n1192, n1190, n3466;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reg.v(39[11:19])
    
    wire PHI2_N_543_enable_63, Length_1__N_378, Length_2__N_373, n3903;
    wire [7:0]n542;
    
    wire n3898;
    wire [7:0]n457;
    wire [7:0]n473;
    
    wire n3671, n4040, n4016, Length_15__N_300, Length_8__N_342, Length_9__N_337, 
        Length_10__N_332, Length_11__N_327, Length_12__N_322, Length_13__N_317, 
        Length_14__N_312, n3212, n3211, n3210, n3674, Length_3__N_368, 
        Length_5__N_358, Length_0__N_383, Length_4__N_363, Length_7__N_347, 
        Length_6__N_353, n3686, n3687, n4026, n3897, IncREUAg, n3900, 
        n3901, n4027, n3902, n3899, n15, n13, n14, CAOut_15__N_142, 
        n17, n30, n26, n18, n4142, n4029, n4030, n28, n22, 
        n4049;
    wire [3:2]DF01Reserved32_c;   // c:/users/garre/repos/gw4302/cpld/reg.v(35[11:25])
    
    wire n3857, n3208, n3207, n3206, n3205, REUAOut_15__N_54, n3200, 
        n3199, n3198, n3197, n3192, CAOut_15__N_144;
    wire [7:0]CAOut_15__N_141;
    
    wire n3191, n3190, n3189, n18_adj_638, n3184, CAOut_7__N_189, 
        n3183, n3182, n3181;
    wire [7:0]n497;
    
    wire n3858, n15_adj_639, n13_adj_640, n10, n17_adj_641, n15_adj_642, 
        n11, n12, n3861, n3860, n3862, n3669, n3667, n4141, 
        n4138, n3217, n4137, n3859;
    
    CCU2D Length_15__I_0_828_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3213), .S0(Length_15__N_303[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_828_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_9.INJECT1_1 = "NO";
    LUT4 A_out_2_bdd_3_lut_3581 (.A(A_out_1), .B(\REUA[15] ), .C(Length[7]), 
         .Z(n4136)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam A_out_2_bdd_3_lut_3581.init = 16'he4e4;
    LUT4 i10_4_lut (.A(n3439), .B(n20), .C(n3651), .D(Length[12]), .Z(SetEndOfBlock)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i10_4_lut.init = 16'h0008;
    LUT4 CA_7__bdd_2_lut_3593 (.A(A_out_1), .B(\REUA[7] ), .Z(n4139)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_7__bdd_2_lut_3593.init = 16'heeee;
    LUT4 mux_621_i2_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[9]), 
         .D(Length_15__N_303[1]), .Z(n931[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i2_3_lut_4_lut.init = 16'hf1e0;
    FD1S3IX CA_7__586 (.D(n434[7]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_7__586.GSR = "ENABLED";
    LUT4 CA_7__bdd_3_lut_3594 (.A(CA[7]), .B(A_out_1), .C(IntPending), 
         .Z(n4140)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam CA_7__bdd_3_lut_3594.init = 16'hb8b8;
    LUT4 mux_192_i2_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_1), .D(CAOut_7__N_188[1]), 
         .Z(n434[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX DF01Reserved6_581 (.D(D_out_6), .SP(PHI2_N_543_enable_71), .CD(RegReset), 
            .CK(PHI2_N_543), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved6_581.GSR = "ENABLED";
    LUT4 mux_192_i3_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_2), .D(CAOut_7__N_188[2]), 
         .Z(n434[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2026_2_lut (.A(D_out_1), .B(n4279), .Z(n1200)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2026_2_lut.init = 16'heeee;
    FD1P3IX IntEnable_693 (.D(D_out_7), .SP(PHI2_N_543_enable_10), .CD(RegReset), 
            .CK(PHI2_N_543), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam IntEnable_693.GSR = "ENABLED";
    LUT4 mux_222_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n509[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_222_i8_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_5__628 (.D(D_out_5), .SP(PHI2_N_543_enable_66), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_5__628.GSR = "ENABLED";
    LUT4 i2028_2_lut (.A(D_out_3), .B(n4279), .Z(n1206)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2028_2_lut.init = 16'heeee;
    FD1S3IX CA_6__587 (.D(n434[6]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_6__587.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3215), .COUT(n3216), .S0(Length_7__N_350[3]), 
          .S1(Length_7__N_350[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 Autoload_I_0_715_2_lut_3_lut_4_lut (.A(n8), .B(n4036), .C(XferEnd), 
         .D(AutoloadEN), .Z(REUAOut_15__N_56)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_715_2_lut_3_lut_4_lut.init = 16'h1f11;
    LUT4 mux_190_i8_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_7), .D(REUAOut_7__N_100[7]), 
         .Z(n432[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut (.A(n4279), .B(D_out_4), .Z(n4_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX CA_5__588 (.D(n434[5]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_5__588.GSR = "ENABLED";
    FD1S3IX CA_4__589 (.D(n434[4]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_4__589.GSR = "ENABLED";
    FD1S3IX CA_3__590 (.D(n434[3]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_3__590.GSR = "ENABLED";
    FD1S3IX CA_2__591 (.D(n434[2]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_2__591.GSR = "ENABLED";
    FD1S3IX CA_1__592 (.D(n434[1]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_1__592.GSR = "ENABLED";
    FD1S3IX CA_0__593 (.D(n434[0]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_0__593.GSR = "ENABLED";
    FD1S3IX CA_15__602 (.D(n433[7]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_15__602.GSR = "ENABLED";
    PFUMX Execute_I_0 (.BLUT(Execute_N_444), .ALUT(Execute_N_446), .C0(FF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;
    LUT4 mux_190_i7_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_6), .D(REUAOut_7__N_100[6]), 
         .Z(n432[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2027_2_lut (.A(D_out_2), .B(n4279), .Z(n1202)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2027_2_lut.init = 16'heeee;
    LUT4 mux_190_i6_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_5), .D(REUAOut_7__N_100[5]), 
         .Z(n432[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2078_4_lut (.A(A_out_4), .B(A_out_3), .C(n2311), .D(A_out_2), 
         .Z(n2299)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2078_4_lut.init = 16'heeea;
    FD1P3IX REUAWritten_6__627 (.D(D_out_6), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_6__627.GSR = "ENABLED";
    FD1P3IX REUAWritten_7__626 (.D(D_out_7), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_7__626.GSR = "ENABLED";
    FD1P3IX IntPending_577 (.D(n4278), .SP(IntPending_N_450), .CD(n1248), 
            .CK(PHI2_N_543), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam IntPending_577.GSR = "ENABLED";
    FD1P3AX LengthWritten_5__671 (.D(n1188), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_5__671.GSR = "ENABLED";
    LUT4 i1968_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2311)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1968_2_lut.init = 16'h8888;
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3214), .COUT(n3215), .S0(Length_7__N_350[1]), 
          .S1(Length_7__N_350[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_9__691 (.D(n1200), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_9__691.GSR = "ENABLED";
    FD1P3IX EndOfBlockMask_694 (.D(D_out_6), .SP(PHI2_N_543_enable_10), 
            .CD(n4280), .CK(PHI2_N_543), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam EndOfBlockMask_694.GSR = "ENABLED";
    LUT4 mux_190_i5_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_4), .D(REUAOut_7__N_100[4]), 
         .Z(n432[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_0__I_0_1_lut (.A(\REUA[0] ), .Z(A_0__N_532)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(148[12:17])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    FD1P3AX LengthWritten_11__689 (.D(n1206), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_11__689.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_695 (.D(D_out_5), .SP(PHI2_N_543_enable_10), .CD(n4280), 
            .CK(PHI2_N_543), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam VerifyErrMask_695.GSR = "ENABLED";
    LUT4 mux_190_i4_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_3), .D(REUAOut_7__N_100[3]), 
         .Z(n432[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3_4_lut (.A(n5), .B(n4279), .C(n7_c), .D(n3661), .Z(PHI2_N_543_enable_79)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i3_4_lut.init = 16'heefe;
    FD1P3AX LengthWritten_12__688 (.D(n4_c), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_12__688.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__690 (.D(n1202), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_10__690.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__629 (.D(D_out_4), .SP(PHI2_N_543_enable_66), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_4__629.GSR = "ENABLED";
    FD1S3IX CA_14__603 (.D(n433[6]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_14__603.GSR = "ENABLED";
    LUT4 mux_190_i3_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_2), .D(REUAOut_7__N_100[2]), 
         .Z(n432[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i3_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_13__604 (.D(n433[5]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_13__604.GSR = "ENABLED";
    FD1S3IX CA_12__605 (.D(n433[4]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_12__605.GSR = "ENABLED";
    FD1S3IX CA_11__606 (.D(n433[3]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_11__606.GSR = "ENABLED";
    FD1S3IX CA_10__607 (.D(n433[2]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_10__607.GSR = "ENABLED";
    FD1S3IX CA_9__608 (.D(n433[1]), .CK(PHI2_N_543), .CD(n4280), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_9__608.GSR = "ENABLED";
    FD1S3IX CA_8__609 (.D(n433[0]), .CK(PHI2_N_543), .CD(RegReset), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_8__609.GSR = "ENABLED";
    FD1S3IX REUA_7__618 (.D(n432[7]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_7__618.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(Length[1]), .B(n4017), .C(n3439), .D(n4020), .Z(n5)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hdccc;
    LUT4 i2_2_lut (.A(A_out_3), .B(nWE_c), .Z(n7_c)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3214), .S1(Length_7__N_350[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 mux_190_i2_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_1), .D(REUAOut_7__N_100[1]), 
         .Z(n432[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i2_3_lut_4_lut.init = 16'hfe10;
    L6MUX21 mux_235_i6 (.D0(n3688), .D1(n552[5]), .SD(n4054), .Z(n565));
    FD1P3IX EndOfBlock_578 (.D(n4278), .SP(SetEndOfBlock), .CD(n1248), 
            .CK(PHI2_N_543), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam EndOfBlock_578.GSR = "ENABLED";
    LUT4 mux_190_i1_3_lut_4_lut (.A(n8), .B(n4036), .C(D_out_0), .D(REUAOut_7__N_100[0]), 
         .Z(n432[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_190_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_4__672 (.D(n4_c), .SP(PHI2_N_543_enable_43), .CK(PHI2_N_543), 
            .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_4__672.GSR = "ENABLED";
    FD1P3IX Fault_579 (.D(n4278), .SP(SetVerifyErr), .CD(n1248), .CK(PHI2_N_543), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam Fault_579.GSR = "ENABLED";
    FD1P3AX CAWritten_0__601 (.D(D_out_0), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_0__601.GSR = "ENABLED";
    LUT4 mux_621_i5_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[12]), 
         .D(Length_15__N_303[4]), .Z(n931[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i5_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX LengthWritten_8__692 (.D(n1198), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_8__692.GSR = "ENABLED";
    FD1P3AX FF00DecodeEN_583 (.D(n3545), .SP(PHI2_N_543_enable_70), .CK(PHI2_N_543), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam FF00DecodeEN_583.GSR = "ENABLED";
    LUT4 i388_2_lut_3_lut (.A(n8), .B(n4035), .C(n4279), .Z(PHI2_N_543_enable_25)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i388_2_lut_3_lut.init = 16'hf1f1;
    FD1P3AX CAWritten_15__610 (.D(D_out_7), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_15__610.GSR = "ENABLED";
    FD1P3AX CAWritten_6__595 (.D(D_out_6), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_6__595.GSR = "ENABLED";
    FD1S3IX REUA_6__619 (.D(n432[6]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_6__619.GSR = "ENABLED";
    FD1S3IX REUA_5__620 (.D(n432[5]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_5__620.GSR = "ENABLED";
    FD1S3IX REUA_4__621 (.D(n432[4]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_4__621.GSR = "ENABLED";
    FD1S3IX REUA_3__622 (.D(n432[3]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_3__622.GSR = "ENABLED";
    FD1S3IX REUA_2__623 (.D(n432[2]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
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
    FD1P3IX REUAWritten_17__659 (.D(D_out_1), .SP(PHI2_N_543_enable_25), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_17__659.GSR = "ENABLED";
    LUT4 i3291_2_lut (.A(Length[15]), .B(\Length[10] ), .Z(n3651)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3291_2_lut.init = 16'heeee;
    FD1P3AX CAWritten_14__611 (.D(D_out_6), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_14__611.GSR = "ENABLED";
    FD1P3AX CAWritten_13__612 (.D(D_out_5), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_13__612.GSR = "ENABLED";
    LUT4 mux_197_i3_3_lut_4_lut (.A(n8), .B(n4035), .C(D_out_2), .D(n430[2]), 
         .Z(n439[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_197_i2_3_lut_4_lut (.A(n8), .B(n4035), .C(D_out_1), .D(n430[1]), 
         .Z(n439[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_18__658 (.D(D_out_2), .SP(PHI2_N_543_enable_25), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_18__658.GSR = "ENABLED";
    LUT4 i626_2_lut_rep_57 (.A(\REUA[16] ), .B(REUAOut_18__N_35), .Z(n4015)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam i626_2_lut_rep_57.init = 16'h8888;
    PFUMX mux_233_i6 (.BLUT(n2002), .ALUT(n535), .C0(n3695), .Z(n552[5]));
    FD1P3AX CAWritten_12__613 (.D(D_out_4), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_12__613.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__660 (.D(D_out_0), .SP(PHI2_N_543_enable_25), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_16__660.GSR = "ENABLED";
    FD1S3IX REUA_14__635 (.D(n431[6]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_14__635.GSR = "ENABLED";
    FD1S3IX REUA_13__636 (.D(n431[5]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_13__636.GSR = "ENABLED";
    FD1S3IX REUA_12__637 (.D(n431[4]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_12__637.GSR = "ENABLED";
    FD1S3IX REUA_11__638 (.D(n431[3]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_11__638.GSR = "ENABLED";
    FD1S3IX REUA_10__639 (.D(n431[2]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_10__639.GSR = "ENABLED";
    FD1S3IX REUA_9__640 (.D(n431[1]), .CK(PHI2_N_543), .CD(RegReset), 
            .Q(\REUA[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_9__640.GSR = "ENABLED";
    FD1S3IX REUA_8__641 (.D(n431[0]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_8__641.GSR = "ENABLED";
    FD1P3IX REUAWritten_8__649 (.D(D_out_0), .SP(PHI2_N_543_enable_49), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_8__649.GSR = "ENABLED";
    LUT4 mux_197_i1_3_lut_4_lut (.A(n8), .B(n4035), .C(D_out_0), .D(n430[0]), 
         .Z(n439[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_543_enable_69), .CD(n4280), 
            .CK(PHI2_N_543), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 mux_622_i4_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[3]), 
         .D(Length_7__N_350[3]), .Z(n932[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i634_2_lut_3_lut (.A(\REUA[16] ), .B(REUAOut_18__N_35), .C(\REUA[17] ), 
         .Z(n943)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam i634_2_lut_3_lut.init = 16'h8080;
    FD1P3IX REUAWritten_9__648 (.D(D_out_1), .SP(PHI2_N_543_enable_49), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_9__648.GSR = "ENABLED";
    FD1P3IX REUAWritten_10__647 (.D(D_out_2), .SP(PHI2_N_543_enable_49), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_10__647.GSR = "ENABLED";
    FD1P3IX AutoloadEN_582 (.D(D_out_5), .SP(PHI2_N_543_enable_71), .CD(n4280), 
            .CK(PHI2_N_543), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam AutoloadEN_582.GSR = "ENABLED";
    FD1P3AX CAWritten_11__614 (.D(D_out_3), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_11__614.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__646 (.D(D_out_3), .SP(PHI2_N_543_enable_49), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_11__646.GSR = "ENABLED";
    PFUMX i3313 (.BLUT(n485[3]), .ALUT(n3672), .C0(n3716), .Z(n3673));
    FD1S3IX REUA_18__655 (.D(n439[2]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[18] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_18__655.GSR = "ENABLED";
    FD1S3IX REUA_17__656 (.D(n439[1]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[17] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_17__656.GSR = "ENABLED";
    FD1S3IX REUA_16__657 (.D(n439[0]), .CK(PHI2_N_543), .CD(n4280), .Q(\REUA[16] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_16__657.GSR = "ENABLED";
    FD1P3AX CAWritten_10__615 (.D(D_out_2), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_10__615.GSR = "ENABLED";
    LUT4 Autoload_I_0_724_2_lut_3_lut_4_lut (.A(n8), .B(n4037), .C(XferEnd), 
         .D(AutoloadEN), .Z(REUAOut_7__N_101)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_724_2_lut_3_lut_4_lut.init = 16'h1f11;
    FD1P3AX CAWritten_9__616 (.D(D_out_1), .SP(PHI2_N_543_enable_35), .CK(PHI2_N_543), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_9__616.GSR = "ENABLED";
    LUT4 mux_189_i8_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_7), .D(REUAOut_15__N_53[7]), 
         .Z(n431[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i8_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3316 (.BLUT(n485[0]), .ALUT(n3675), .C0(n3716), .Z(n3676));
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
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_12__645.GSR = "ENABLED";
    LUT4 mux_189_i7_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_6), .D(REUAOut_15__N_53[6]), 
         .Z(n431[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_13__644 (.D(D_out_5), .SP(PHI2_N_543_enable_49), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_13__644.GSR = "ENABLED";
    LUT4 mux_189_i6_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_5), .D(REUAOut_15__N_53[5]), 
         .Z(n431[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_189_i5_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_4), .D(REUAOut_15__N_53[4]), 
         .Z(n431[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2025_2_lut (.A(D_out_0), .B(n4279), .Z(n1198)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2025_2_lut.init = 16'heeee;
    LUT4 mux_621_i4_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[11]), 
         .D(Length_15__N_303[3]), .Z(n931[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_621_i6_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[13]), 
         .D(Length_15__N_303[5]), .Z(n931[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_189_i4_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_3), .D(REUAOut_15__N_53[3]), 
         .Z(n431[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_189_i3_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_2), .D(REUAOut_15__N_53[2]), 
         .Z(n431[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_189_i2_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_1), .D(REUAOut_15__N_53[1]), 
         .Z(n431[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_7__669 (.D(n1192), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_7__669.GSR = "ENABLED";
    LUT4 mux_189_i1_3_lut_4_lut (.A(n8), .B(n4037), .C(D_out_0), .D(REUAOut_15__N_53[0]), 
         .Z(n431[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_189_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_6__670 (.D(n1190), .SP(PHI2_N_543_enable_43), 
            .CK(PHI2_N_543), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_6__670.GSR = "ENABLED";
    LUT4 i356_2_lut_3_lut (.A(n8), .B(n4037), .C(n4279), .Z(PHI2_N_543_enable_49)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i356_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4042), .B(n4037), .C(D_out_4), .D(D_out_7), 
         .Z(Execute_N_444)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_161 (.A(n4042), .B(n4037), .C(n4279), 
         .D(D_out_7), .Z(n3466)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_161.init = 16'h0100;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n4042), .B(n4037), .C(XferEnd), .D(n4279), 
         .Z(PHI2_N_543_enable_70)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hff1f;
    FD1S3IX XferType__i0 (.D(n4024), .CK(PHI2_N_543), .CD(n4280), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__685 (.D(n1192), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_15__685.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__686 (.D(n1190), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_14__686.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__643 (.D(D_out_6), .SP(PHI2_N_543_enable_49), 
            .CD(n4280), .CK(PHI2_N_543), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_14__643.GSR = "ENABLED";
    FD1P3JX Length_1__667 (.D(Length_1__N_378), .SP(PHI2_N_543_enable_63), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_1__667.GSR = "ENABLED";
    FD1P3JX Length_2__666 (.D(Length_2__N_373), .SP(PHI2_N_543_enable_63), 
            .PD(n4280), .CK(PHI2_N_543), .Q(\Length[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_2__666.GSR = "ENABLED";
    LUT4 XferType_1__I_0_i1_3_lut_rep_66_4_lut (.A(n4042), .B(n4037), .C(D_out_0), 
         .D(XferType[0]), .Z(n4024)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i1_3_lut_rep_66_4_lut.init = 16'hfe10;
    LUT4 mux_235_i7_3_lut (.A(n3903), .B(n542[6]), .C(A_out_3), .Z(n564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_235_i7_3_lut.init = 16'hcaca;
    LUT4 mux_231_i7_3_lut (.A(n511), .B(IncMode[0]), .C(A_out_1), .Z(n542[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_231_i7_3_lut.init = 16'hcaca;
    LUT4 A_out_2_bdd_3_lut_3580 (.A(CA[14]), .B(A_out_1), .C(DF01Reserved6), 
         .Z(n3898)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut_3580.init = 16'hb8b8;
    LUT4 XferType_1__I_0_i2_3_lut_rep_65_4_lut (.A(n4042), .B(n4037), .C(D_out_1), 
         .D(XferType[1]), .Z(n4023)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i2_3_lut_rep_65_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_15__642 (.D(D_out_7), .SP(PHI2_N_543_enable_49), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_15__642.GSR = "ENABLED";
    PFUMX i3311 (.BLUT(n457[3]), .ALUT(n473[3]), .C0(A_out_1), .Z(n3671));
    LUT4 Autoload_I_0_2_lut_rep_58_3_lut_4_lut (.A(n4040), .B(n4036), .C(XferEnd), 
         .D(AutoloadEN), .Z(n4016)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_2_lut_rep_58_3_lut_4_lut.init = 16'h1f11;
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_7), 
         .D(n931[7]), .Z(Length_15__N_300)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_0), 
         .D(n931[0]), .Z(Length_8__N_342)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_1), 
         .D(n931[1]), .Z(Length_9__N_337)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_2), 
         .D(n931[2]), .Z(Length_10__N_332)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_3), 
         .D(n931[3]), .Z(Length_11__N_327)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_0__633 (.D(D_out_0), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_0__633.GSR = "ENABLED";
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_4), 
         .D(n931[4]), .Z(Length_12__N_322)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_13__687 (.D(n1188), .SP(PHI2_N_543_enable_51), 
            .CK(PHI2_N_543), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_13__687.GSR = "ENABLED";
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_5), 
         .D(n931[5]), .Z(Length_13__N_317)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_7__594 (.D(D_out_7), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_7__594.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_162 (.A(Fault), .B(VerifyErrMask), .Z(IRQOut_N_443)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam i1_2_lut_adj_162.init = 16'h8888;
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n4040), .B(n4036), .C(D_out_6), 
         .D(n931[6]), .Z(Length_14__N_312)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_5__596 (.D(D_out_5), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_5__596.GSR = "ENABLED";
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_1), 
         .D(n932[1]), .Z(Length_1__N_378)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    CCU2D Length_15__I_0_828_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[14] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3212), .COUT(n3213), .S0(Length_15__N_303[5]), 
          .S1(Length_15__N_303[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_7.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3211), .COUT(n3212), .S0(Length_15__N_303[3]), 
          .S1(Length_15__N_303[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_3 (.A0(\Length[9] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[10] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3210), .COUT(n3211), .S0(Length_15__N_303[1]), 
          .S1(Length_15__N_303[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3210), .S1(Length_15__N_303[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_828_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_828_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_1.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_1__632 (.D(D_out_1), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_1__632.GSR = "ENABLED";
    PFUMX i3314 (.BLUT(n457[0]), .ALUT(n473[0]), .C0(A_out_1), .Z(n3674));
    LUT4 Autoload_I_0_794_2_lut_rep_59_3_lut_4_lut (.A(n8), .B(n4033), .C(XferEnd), 
         .D(AutoloadEN), .Z(n4017)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam Autoload_I_0_794_2_lut_rep_59_3_lut_4_lut.init = 16'h4f44;
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_3), .D(n932[3]), 
         .Z(Length_3__N_368)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_4__597 (.D(D_out_4), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_4__597.GSR = "ENABLED";
    FD1P3AX CAWritten_3__598 (.D(D_out_3), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_3__598.GSR = "ENABLED";
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_5), .D(n932[5]), 
         .Z(Length_5__N_358)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_15__677 (.D(Length_15__N_300), .SP(PHI2_N_543_enable_79), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_15__677.GSR = "ENABLED";
    FD1P3JX Length_0__668 (.D(Length_0__N_383), .SP(PHI2_N_543_enable_63), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_0__668.GSR = "ENABLED";
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_4), .D(n932[4]), 
         .Z(Length_4__N_363)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_3__665 (.D(Length_3__N_368), .SP(PHI2_N_543_enable_63), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_3__665.GSR = "ENABLED";
    FD1P3JX Length_4__664 (.D(Length_4__N_363), .SP(PHI2_N_543_enable_63), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_4__664.GSR = "ENABLED";
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_0), 
         .D(n932[0]), .Z(Length_0__N_383)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_7), .D(n932[7]), 
         .Z(Length_7__N_347)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_6), .D(n932[6]), 
         .Z(Length_6__N_353)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n8), .B(n4033), .C(D_out_2), 
         .D(n932[2]), .Z(Length_2__N_373)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_5__663 (.D(Length_5__N_358), .SP(PHI2_N_543_enable_63), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(\Length[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_5__663.GSR = "ENABLED";
    PFUMX i3328 (.BLUT(n3686), .ALUT(n3687), .C0(A_out_1), .Z(n3688));
    FD1P3JX Length_6__662 (.D(Length_6__N_353), .SP(PHI2_N_543_enable_63), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_6__662.GSR = "ENABLED";
    FD1P3JX Length_7__661 (.D(Length_7__N_347), .SP(PHI2_N_543_enable_63), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_7__661.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__631 (.D(D_out_2), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_2__631.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(n8), .B(n4033), .C(n4279), .Z(PHI2_N_543_enable_43)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i1_2_lut_rep_68_4_lut (.A(A_out_0), .B(n4041), .C(A_out_1), .D(n4042), 
         .Z(n4026)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_68_4_lut.init = 16'h0020;
    LUT4 A_out_2_bdd_3_lut_3469 (.A(A_out_1), .B(Length[6]), .C(\REUA[14] ), 
         .Z(n3897)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3469.init = 16'hd8d8;
    LUT4 IncREUAg_I_118_2_lut (.A(IncMode[0]), .B(IncREUA), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(64[17:39])
    defparam IncREUAg_I_118_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_74_4_lut (.A(A_out_0), .B(n4041), .C(A_out_1), .D(n8), 
         .Z(n4032)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_74_4_lut.init = 16'h0020;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_543_enable_71), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    LUT4 mux_622_i3_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[2]), 
         .D(Length_7__N_350[2]), .Z(n932[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 CA_6__bdd_2_lut_3480 (.A(\REUA[6] ), .B(A_out_1), .Z(n3900)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_6__bdd_2_lut_3480.init = 16'heeee;
    LUT4 CA_6__bdd_3_lut_3481 (.A(CA[6]), .B(EndOfBlock), .C(A_out_1), 
         .Z(n3901)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_6__bdd_3_lut_3481.init = 16'hacac;
    LUT4 i2068_2_lut_rep_69_4_lut (.A(A_out_0), .B(A_out_1), .C(n4041), 
         .D(n4042), .Z(n4027)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2068_2_lut_rep_69_4_lut.init = 16'hfffb;
    L6MUX21 i3474 (.D0(n3902), .D1(n3899), .SD(A_out_0), .Z(n3903));
    LUT4 i1_4_lut_adj_163 (.A(n15), .B(n4018), .C(n13), .D(n14), .Z(CAOut_15__N_142)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_163.init = 16'h8000;
    FD1P3IX REUAWritten_3__630 (.D(D_out_3), .SP(PHI2_N_543_enable_66), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_3__630.GSR = "ENABLED";
    LUT4 i332_2_lut_3_lut_4_lut (.A(n4041), .B(n4047), .C(n4279), .D(n8), 
         .Z(PHI2_N_543_enable_66)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i332_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i6_4_lut (.A(CA[4]), .B(CA[2]), .C(\IncMode[1] ), .D(CA[0]), 
         .Z(n15)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0800;
    LUT4 i4_2_lut (.A(CA[7]), .B(CA[1]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    PFUMX i3472 (.BLUT(n3901), .ALUT(n3900), .C0(A_out_2), .Z(n3902));
    LUT4 i5_3_lut (.A(CA[3]), .B(CA[6]), .C(CA[5]), .Z(n14)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.A(n4041), .B(n4047), .C(n4279), 
         .D(n4040), .Z(PHI2_N_543_enable_51)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_164.init = 16'hf0f1;
    LUT4 i3327_3_lut (.A(CA[5]), .B(CA[13]), .C(A_out_0), .Z(n3687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3327_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_2__599 (.D(D_out_2), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_2__599.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), .Z(Length1_N_614)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_165 (.A(Length[0]), .B(Length[12]), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i1_2_lut_adj_165.init = 16'hdddd;
    LUT4 i3326_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n3686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3326_3_lut.init = 16'hcaca;
    LUT4 n3852_bdd_3_lut (.A(n4142), .B(n542[7]), .C(A_out_3), .Z(n3853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3852_bdd_3_lut.init = 16'hcaca;
    LUT4 i2062_2_lut_rep_71_4_lut (.A(A_out_0), .B(A_out_1), .C(n4041), 
         .D(n8), .Z(n4029)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2062_2_lut_rep_71_4_lut.init = 16'hfffd;
    LUT4 XferType_1__I_0_150_i3_2_lut_rep_63_2_lut_4_lut (.A(XferType[1]), 
         .B(D_out_1), .C(n4030), .D(n4024), .Z(n4021)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((C+(D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam XferType_1__I_0_150_i3_2_lut_rep_63_2_lut_4_lut.init = 16'hff53;
    LUT4 i3414_2_lut (.A(A_out_3), .B(A_out_0), .Z(n3695)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i3414_2_lut.init = 16'hbbbb;
    LUT4 i2064_2_lut_rep_72_4_lut (.A(A_out_0), .B(A_out_1), .C(n4041), 
         .D(n4042), .Z(n4030)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2064_2_lut_rep_72_4_lut.init = 16'hfffd;
    LUT4 i14_4_lut (.A(Length[3]), .B(n28), .C(n22), .D(Length[7]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i14_4_lut.init = 16'hfffe;
    FD1P3AX CAWritten_1__600 (.D(D_out_1), .SP(PHI2_N_543_enable_68), .CK(PHI2_N_543), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_1__600.GSR = "ENABLED";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_543_enable_69), .CD(RegReset), 
            .CK(PHI2_N_543), .Q(\IncMode[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 i3136_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4030), .D(n6), 
         .Z(n3496)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i3136_2_lut_4_lut.init = 16'hac00;
    LUT4 i468_3_lut_4_lut (.A(A_out_3), .B(n4049), .C(n4037), .D(n4279), 
         .Z(PHI2_N_543_enable_10)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i468_3_lut_4_lut.init = 16'hff02;
    LUT4 i1_2_lut_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4030), 
         .D(XferEnd_N_582), .Z(n4)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i1_2_lut_2_lut_4_lut.init = 16'h5300;
    FD1P3AX ExecuteEN_580 (.D(n3466), .SP(PHI2_N_543_enable_70), .CK(PHI2_N_543), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam ExecuteEN_580.GSR = "ENABLED";
    LUT4 i10_4_lut_adj_166 (.A(\Length[5] ), .B(Length[6]), .C(Length[15]), 
         .D(Length[1]), .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i10_4_lut_adj_166.init = 16'hfffe;
    LUT4 i2_2_lut_adj_167 (.A(\Length[10] ), .B(Length[8]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i2_2_lut_adj_167.init = 16'heeee;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(A_out_3), .B(n4049), .C(n4047), 
         .D(n4041), .Z(n4031)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hfffd;
    LUT4 i12_4_lut (.A(\Length[9] ), .B(Length[4]), .C(Length[11]), .D(\Length[14] ), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(Length[13]), .B(\Length[2] ), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i475_3_lut_4_lut (.A(A_out_3), .B(n4049), .C(n4035), .D(n4279), 
         .Z(PHI2_N_543_enable_69)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i475_3_lut_4_lut.init = 16'hff02;
    LUT4 mux_622_i6_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[5]), 
         .D(Length_7__N_350[5]), .Z(n932[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i6_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i3470 (.BLUT(n3898), .ALUT(n3897), .C0(A_out_2), .Z(n3899));
    LUT4 mux_622_i5_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[4]), 
         .D(Length_7__N_350[4]), .Z(n932[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_622_i1_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[0]), 
         .D(Length_7__N_350[0]), .Z(n932[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut (.A(A_out_2), .B(A_out_3), .C(A_out_4), .Z(n8)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 mux_621_i7_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[14]), 
         .D(Length_15__N_303[6]), .Z(n931[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_210_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n473[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_210_i1_3_lut.init = 16'hcaca;
    LUT4 i1980_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n457[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1980_2_lut.init = 16'h8888;
    LUT4 mux_192_i5_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_4), .D(CAOut_7__N_188[4]), 
         .Z(n434[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_622_i2_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[1]), 
         .D(Length_7__N_350[1]), .Z(n932[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1983_2_lut_rep_64_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4030), 
         .D(n4024), .Z(n4022)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:62])
    defparam i1983_2_lut_rep_64_4_lut.init = 16'hac00;
    LUT4 mux_622_i7_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[6]), 
         .D(Length_7__N_350[6]), .Z(n932[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i7_3_lut_4_lut.init = 16'hf4b0;
    FD1S3IX XferType__i1 (.D(n4023), .CK(PHI2_N_543), .CD(RegReset), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 i2008_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n464)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i2008_2_lut.init = 16'h8888;
    LUT4 mux_210_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n473[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_210_i4_3_lut.init = 16'hcaca;
    LUT4 i2009_2_lut (.A(DF01Reserved32_c[3]), .B(A_out_0), .Z(n457[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i2009_2_lut.init = 16'h8888;
    LUT4 i3395_2_lut_3_lut_4_lut (.A(A_out_3), .B(n4049), .C(n4279), .D(n4035), 
         .Z(PHI2_N_543_enable_68)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i3395_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_84_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n4042)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_84_3_lut.init = 16'hfefe;
    LUT4 i865_2_lut_3_lut_4_lut (.A(A_out_3), .B(n4049), .C(n4279), .D(n4033), 
         .Z(PHI2_N_543_enable_35)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i865_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 mux_622_i8_3_lut_4_lut (.A(n4019), .B(n4031), .C(LengthWritten[7]), 
         .D(Length_7__N_350[7]), .Z(n932[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_622_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 REUA_4__bdd_3_lut_3443 (.A(A_out_0), .B(A_out_1), .C(Length[12]), 
         .Z(n3857)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam REUA_4__bdd_3_lut_3443.init = 16'hfefe;
    LUT4 i283_2_lut_rep_67_3_lut_4_lut (.A(A_out_3), .B(n4049), .C(n4279), 
         .D(n4037), .Z(PHI2_N_543_enable_71)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i283_2_lut_rep_67_3_lut_4_lut.init = 16'hf0f1;
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_56), .C0(REUAWritten[14]), 
          .D0(\REUA[14] ), .A1(GND_net), .B1(REUAOut_15__N_56), .C1(REUAWritten[15]), 
          .D1(\REUA[15] ), .CIN(n3208), .S0(REUAOut_15__N_53[6]), .S1(REUAOut_15__N_53[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_56), .C0(REUAWritten[12]), 
          .D0(\REUA[12] ), .A1(GND_net), .B1(REUAOut_15__N_56), .C1(REUAWritten[13]), 
          .D1(\REUA[13] ), .CIN(n3207), .COUT(n3208), .S0(REUAOut_15__N_53[4]), 
          .S1(REUAOut_15__N_53[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_56), .C0(REUAWritten[10]), 
          .D0(\REUA[10] ), .A1(GND_net), .B1(REUAOut_15__N_56), .C1(REUAWritten[11]), 
          .D1(\REUA[11] ), .CIN(n3206), .COUT(n3207), .S0(REUAOut_15__N_53[2]), 
          .S1(REUAOut_15__N_53[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_54), .B0(REUAOut_15__N_56), 
          .C0(REUAWritten[8]), .D0(\REUA[8] ), .A1(GND_net), .B1(REUAOut_15__N_56), 
          .C1(REUAWritten[9]), .D1(\REUA[9] ), .CIN(n3205), .COUT(n3206), 
          .S0(REUAOut_15__N_53[0]), .S1(REUAOut_15__N_53[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4019), .B1(n4028), .C1(GND_net), .D1(GND_net), 
          .COUT(n3205));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_101), .C0(REUAWritten[6]), 
          .D0(\REUA[6] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[7]), 
          .D1(\REUA[7] ), .CIN(n3200), .S0(REUAOut_7__N_100[6]), .S1(REUAOut_7__N_100[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_101), .C0(REUAWritten[4]), 
          .D0(\REUA[4] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[5]), 
          .D1(\REUA[5] ), .CIN(n3199), .COUT(n3200), .S0(REUAOut_7__N_100[4]), 
          .S1(REUAOut_7__N_100[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_101), .C0(REUAWritten[2]), 
          .D0(\REUA[2] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[3]), 
          .D1(\REUA[3] ), .CIN(n3198), .COUT(n3199), .S0(REUAOut_7__N_100[2]), 
          .S1(REUAOut_7__N_100[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_101), .C0(REUAWritten[0]), 
          .D0(\REUA[0] ), .A1(GND_net), .B1(REUAOut_7__N_101), .C1(REUAWritten[1]), 
          .D1(\REUA[1] ), .CIN(n3197), .COUT(n3198), .S0(REUAOut_7__N_100[0]), 
          .S1(REUAOut_7__N_100[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4019), .B1(n4029), .C1(GND_net), .D1(GND_net), 
          .COUT(n3197));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_144), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3192), .S0(CAOut_15__N_141[6]), .S1(CAOut_15__N_141[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_144), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3191), .COUT(n3192), .S0(CAOut_15__N_141[4]), 
          .S1(CAOut_15__N_141[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_144), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3190), .COUT(n3191), .S0(CAOut_15__N_141[2]), 
          .S1(CAOut_15__N_141[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_142), .B0(CAOut_15__N_144), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_144), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n3189), .COUT(n3190), .S0(CAOut_15__N_141[0]), 
          .S1(CAOut_15__N_141[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4019), .B1(n4027), .C1(GND_net), .D1(GND_net), .COUT(n3189));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(\Length[9] ), .B(n3527), .C(Length[13]), .D(Length[8]), 
         .Z(n18_adj_638)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i7_4_lut.init = 16'h0004;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_189), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n3184), .S0(CAOut_7__N_188[6]), .S1(CAOut_7__N_188[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_189), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n3183), .COUT(n3184), .S0(CAOut_7__N_188[4]), 
          .S1(CAOut_7__N_188[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_189), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n3182), .COUT(n3183), .S0(CAOut_7__N_188[2]), 
          .S1(CAOut_7__N_188[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_189), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_189), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n3181), .COUT(n3182), .S0(CAOut_7__N_188[0]), 
          .S1(CAOut_7__N_188[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4019), .B1(n4026), .C1(GND_net), .D1(GND_net), .COUT(n3181));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_191_i3_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_2), .D(CAOut_15__N_141[2]), 
         .Z(n433[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_210_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n473[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_210_i5_3_lut.init = 16'hcaca;
    LUT4 i3391_2_lut_3_lut_4_lut (.A(A_out_3), .B(n4049), .C(n4_c), .D(n4037), 
         .Z(n3545)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i3391_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 SetEndOfBlock_I_0_2_lut (.A(SetEndOfBlock), .B(SetVerifyErr), .Z(IntPending_N_450)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(95[15:44])
    defparam SetEndOfBlock_I_0_2_lut.init = 16'heeee;
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_543_enable_71), 
            .CD(RegReset), .CK(PHI2_N_543), .Q(DF01Reserved32_c[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 i2006_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n545)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i2006_4_lut.init = 16'hfcee;
    LUT4 mux_188_i3_4_lut (.A(\REUA[18] ), .B(REUAWritten[18]), .C(n4019), 
         .D(n943), .Z(n430[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_188_i3_4_lut.init = 16'hc5ca;
    LUT4 i3315_3_lut (.A(n497[0]), .B(Length[8]), .C(A_out_3), .Z(n3675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3315_3_lut.init = 16'hcaca;
    LUT4 mux_214_i1_3_lut (.A(\REUA[0] ), .B(\REUA[8] ), .C(A_out_0), 
         .Z(n485[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_214_i1_3_lut.init = 16'hcaca;
    LUT4 REUA_4__bdd_3_lut_3508 (.A(A_out_1), .B(Length[4]), .C(\REUA[12] ), 
         .Z(n3858)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam REUA_4__bdd_3_lut_3508.init = 16'hd8d8;
    LUT4 i8_4_lut (.A(n15_adj_639), .B(n13_adj_640), .C(\REUA[11] ), .D(n10), 
         .Z(REUAOut_18__N_35)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i6_4_lut_adj_168 (.A(\REUA[15] ), .B(\REUA[10] ), .C(\REUA[8] ), 
         .D(\REUA[12] ), .Z(n15_adj_639)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_168.init = 16'h8000;
    LUT4 mux_214_i4_3_lut (.A(\REUA[3] ), .B(\REUA[11] ), .C(A_out_0), 
         .Z(n485[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_214_i4_3_lut.init = 16'hcaca;
    FD1P3JX Length_8__684 (.D(Length_8__N_342), .SP(PHI2_N_543_enable_79), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_8__684.GSR = "ENABLED";
    FD1P3JX Length_9__683 (.D(Length_9__N_337), .SP(PHI2_N_543_enable_79), 
            .PD(RegReset), .CK(PHI2_N_543), .Q(\Length[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_9__683.GSR = "ENABLED";
    FD1P3JX Length_10__682 (.D(Length_10__N_332), .SP(PHI2_N_543_enable_79), 
            .PD(n4280), .CK(PHI2_N_543), .Q(\Length[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_10__682.GSR = "ENABLED";
    LUT4 i896_4_lut (.A(n4038), .B(n4279), .C(n4047), .D(n4042), .Z(n1248)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam i896_4_lut.init = 16'hccce;
    FD1P3JX Length_11__681 (.D(Length_11__N_327), .SP(PHI2_N_543_enable_79), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_11__681.GSR = "ENABLED";
    LUT4 mux_621_i3_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[10]), 
         .D(Length_15__N_303[2]), .Z(n931[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4_2_lut_adj_169 (.A(\REUA[9] ), .B(\REUA[13] ), .Z(n13_adj_640)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut_adj_169.init = 16'h8888;
    LUT4 i1_2_lut_adj_170 (.A(\REUA[14] ), .B(REUAOut_15__N_54), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_170.init = 16'h8888;
    LUT4 Autoload_I_0_781_2_lut_3_lut_4_lut (.A(n4042), .B(n4033), .C(XferEnd), 
         .D(AutoloadEN), .Z(CAOut_7__N_189)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam Autoload_I_0_781_2_lut_3_lut_4_lut.init = 16'h4f44;
    LUT4 i9_4_lut (.A(n17_adj_641), .B(n15_adj_642), .C(n11), .D(n12), 
         .Z(REUAOut_15__N_54)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i7_4_lut_adj_171 (.A(IncMode[0]), .B(\REUA[0] ), .C(\REUA[6] ), 
         .D(\REUA[7] ), .Z(n17_adj_641)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7_4_lut_adj_171.init = 16'h4000;
    FD1P3JX Length_12__680 (.D(Length_12__N_322), .SP(PHI2_N_543_enable_79), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_12__680.GSR = "ENABLED";
    LUT4 i5_2_lut (.A(\REUA[5] ), .B(\REUA[3] ), .Z(n15_adj_642)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_172 (.A(\REUA[1] ), .B(IncREUA), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_172.init = 16'h8888;
    LUT4 i2_2_lut_adj_173 (.A(\REUA[2] ), .B(\REUA[4] ), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_173.init = 16'h8888;
    LUT4 REUA_4__bdd_4_lut (.A(n473[4]), .B(A_out_0), .C(A_out_1), .D(FF00DecodeEN), 
         .Z(n3861)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C))) */ ;
    defparam REUA_4__bdd_4_lut.init = 16'ha3af;
    FD1P3JX Length_13__679 (.D(Length_13__N_317), .SP(PHI2_N_543_enable_79), 
            .PD(n4280), .CK(PHI2_N_543), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_13__679.GSR = "ENABLED";
    LUT4 mux_191_i1_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_0), .D(CAOut_15__N_141[0]), 
         .Z(n433[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_192_i4_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_3), .D(CAOut_7__N_188[3]), 
         .Z(n434[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_14__678 (.D(Length_14__N_312), .SP(PHI2_N_543_enable_79), 
            .PD(n4280), .CK(PHI2_N_543), .Q(\Length[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_14__678.GSR = "ENABLED";
    LUT4 n3861_bdd_3_lut_3507 (.A(n3861), .B(n3860), .C(A_out_2), .Z(n3862)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3861_bdd_3_lut_3507.init = 16'hcaca;
    LUT4 mux_188_i2_4_lut (.A(\REUA[17] ), .B(REUAWritten[17]), .C(n4019), 
         .D(n4015), .Z(n430[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_188_i2_4_lut.init = 16'hc5ca;
    LUT4 i3388_2_lut_rep_96 (.A(A_out_3), .B(A_out_2), .Z(n4054)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i3388_2_lut_rep_96.init = 16'heeee;
    LUT4 mux_621_i8_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[15]), 
         .D(Length_15__N_303[7]), .Z(n931[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_188_i1_4_lut (.A(\REUA[16] ), .B(REUAWritten[16]), .C(n4019), 
         .D(REUAOut_18__N_35), .Z(n430[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_188_i1_4_lut.init = 16'hc5ca;
    LUT4 i1704_3_lut_4_lut (.A(A_out_3), .B(A_out_2), .C(n3673), .D(n3671), 
         .Z(n2054)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1704_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_218_i1_3_lut (.A(\REUA[16] ), .B(Length[0]), .C(A_out_0), 
         .Z(n497[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_218_i1_3_lut.init = 16'hcaca;
    LUT4 i1702_3_lut_4_lut (.A(A_out_3), .B(A_out_2), .C(n3676), .D(n3674), 
         .Z(n2052)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1702_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_218_i2_3_lut (.A(\REUA[17] ), .B(Length[1]), .C(A_out_0), 
         .Z(n504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_218_i2_3_lut.init = 16'hcaca;
    LUT4 AutoloadEN_I_0_2_lut_rep_61 (.A(AutoloadEN), .B(XferEnd), .Z(n4019)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[17:38])
    defparam AutoloadEN_I_0_2_lut_rep_61.init = 16'h2222;
    LUT4 i2023_2_lut (.A(D_out_7), .B(n4279), .Z(n1192)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i2023_2_lut.init = 16'heeee;
    LUT4 i3312_4_lut_4_lut (.A(A_out_0), .B(Length[3]), .C(A_out_3), .D(Length[11]), 
         .Z(n3672)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam i3312_4_lut_4_lut.init = 16'hfd0d;
    LUT4 A_4__I_0_698_i6_2_lut_rep_89 (.A(A_out_0), .B(A_out_1), .Z(n4047)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam A_4__I_0_698_i6_2_lut_rep_89.init = 16'heeee;
    LUT4 i1_2_lut_rep_78_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(nWE_c), 
         .D(n4048), .Z(n4036)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i1_2_lut_rep_78_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_191_i2_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_1), .D(CAOut_15__N_141[1]), 
         .Z(n433[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2022_2_lut (.A(D_out_6), .B(n4279), .Z(n1190)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i2022_2_lut.init = 16'heeee;
    LUT4 i7_4_lut_adj_174 (.A(n3467), .B(n3669), .C(n3667), .D(Length[0]), 
         .Z(n3439)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i7_4_lut_adj_174.init = 16'h0002;
    LUT4 i3309_4_lut (.A(Length[3]), .B(Length[7]), .C(\Length[2] ), .D(Length[6]), 
         .Z(n3669)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3309_4_lut.init = 16'hfffe;
    LUT4 i3301_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n4049), .D(n4048), 
         .Z(n3661)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i3301_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_191_i4_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_3), .D(CAOut_15__N_141[3]), 
         .Z(n433[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_191_i5_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_4), .D(CAOut_15__N_141[4]), 
         .Z(n433[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3307_2_lut (.A(\Length[5] ), .B(Length[4]), .Z(n3667)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3307_2_lut.init = 16'heeee;
    LUT4 mux_621_i1_3_lut_4_lut (.A(n4019), .B(n4032), .C(LengthWritten[8]), 
         .D(Length_15__N_303[0]), .Z(n931[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_621_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_191_i6_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_5), .D(CAOut_15__N_141[5]), 
         .Z(n433[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i6_3_lut_4_lut.init = 16'hfb40;
    L6MUX21 i3586 (.D0(n4141), .D1(n4138), .SD(A_out_0), .Z(n4142));
    PFUMX i3584 (.BLUT(n4140), .ALUT(n4139), .C0(A_out_2), .Z(n4141));
    LUT4 mux_192_i1_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_0), .D(CAOut_7__N_188[0]), 
         .Z(n434[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i1_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3217), .S0(Length_7__N_350[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    LUT4 mux_191_i7_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_6), .D(CAOut_15__N_141[6]), 
         .Z(n433[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2021_2_lut (.A(D_out_5), .B(n4279), .Z(n1188)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i2021_2_lut.init = 16'heeee;
    LUT4 A_out_2_bdd_3_lut_3651 (.A(A_out_1), .B(CA[15]), .C(ExecuteEN), 
         .Z(n4137)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3651.init = 16'hd8d8;
    LUT4 mux_231_i8_3_lut (.A(n509[7]), .B(\IncMode[1] ), .C(A_out_1), 
         .Z(n542[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_231_i8_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_175 (.A(n4018), .B(PHI2_N_543_enable_43), .C(n4016), 
         .D(Length1_N_614), .Z(PHI2_N_543_enable_63)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_175.init = 16'hfefc;
    LUT4 mux_191_i8_3_lut_4_lut (.A(n4042), .B(n4033), .C(D_out_7), .D(CAOut_15__N_141[7]), 
         .Z(n433[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_191_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3126_2_lut_rep_91 (.A(A_out_2), .B(A_out_4), .Z(n4049)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3126_2_lut_rep_91.init = 16'heeee;
    LUT4 Autoload_I_0_737_2_lut_3_lut_4_lut (.A(n4042), .B(n4035), .C(XferEnd), 
         .D(AutoloadEN), .Z(CAOut_15__N_144)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_737_2_lut_3_lut_4_lut.init = 16'h1f11;
    LUT4 i1_2_lut_rep_82_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n4040)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_82_3_lut.init = 16'hefef;
    PFUMX i3446 (.BLUT(n3862), .ALUT(n3857), .C0(A_out_3), .Z(n3863));
    PFUMX i3582 (.BLUT(n4137), .ALUT(n4136), .C0(A_out_2), .Z(n4138));
    LUT4 mux_192_i8_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_7), .D(CAOut_7__N_188[7]), 
         .Z(n434[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_192_i7_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_6), .D(CAOut_7__N_188[6]), 
         .Z(n434[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 REUA_4__bdd_2_lut_3509 (.A(\REUA[4] ), .B(A_out_1), .Z(n3859)) /* synthesis lut_function=(A+(B)) */ ;
    defparam REUA_4__bdd_2_lut_3509.init = 16'heeee;
    LUT4 i3297_2_lut_3_lut (.A(A_out_2), .B(A_out_4), .C(n7), .Z(n3657)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3297_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_192_i6_3_lut_4_lut (.A(n4042), .B(n4035), .C(D_out_5), .D(CAOut_7__N_188[5]), 
         .Z(n434[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_192_i6_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3444 (.BLUT(n3859), .ALUT(n3858), .C0(A_out_0), .Z(n3860));
    LUT4 i9_4_lut_adj_176 (.A(\Length[14] ), .B(n18_adj_638), .C(Length[11]), 
         .D(Length[1]), .Z(n20)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i9_4_lut_adj_176.init = 16'h0400;
    CCU2D Length_7__I_0_add_2_7 (.A0(\Length[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3216), .COUT(n3217), .S0(Length_7__N_350[5]), 
          .S1(Length_7__N_350[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    
endmodule
