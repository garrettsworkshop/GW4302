// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Mon Apr 25 05:48:44 2022
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
    wire C8M_N_512 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    wire PHI2_N_553 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, n3926, nWE_c, nWEDMA_c, 
        nIO2_c, DDIR_c, nIRQ_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, 
        nRWE_c, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, 
        RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, IncREUA, XferEnd, SetEndOfBlock, 
        SetVerifyErr, DOE, Execute, nWEDMA_N_13;
    wire [7:0]D_7__N_1;
    
    wire IntPending;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(36[11:25])
    
    wire ExecuteEN;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[12:18])
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(64[11:18])
    
    wire IncCAg, n2179, n2180, n386, n3696, n3919, n6, n3692, 
        n4030, n4, n4272, n6_adj_647, n8, n1578, n4019, n4028, 
        n7, Execute_N_452;
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(188[11:15])
    
    wire n603, n3727, A_0__N_542, n3218, n4027, n490, XferVerify, 
        Length1_N_618, n3217, nAOE_N_628, nDOE_N_635, n602, n4060, 
        n563, n566, n567, n568, n569, n2, n4054, n4053, PHI2_N_553_enable_77, 
        n4024, C8M_c_enable_12, n4048, n4023, n4270, n4271, D_out_7, 
        n4022, D_out_6, D_out_5, D_out_4, D_out_3, n4021, D_out_2, 
        D_out_1, D_out_0, A_out_15, A_out_14, A_out_13, A_out_12, 
        A_out_11, n4045, A_out_10, A_out_9, A_out_8, A_out_4, A_out_3, 
        A_out_2, A_out_1, A_out_0, RD_out_7, RD_out_6, RD_out_5, 
        n1138, RD_out_4, RD_out_3, RD_out_2, RD_out_1, RD_out_0, 
        n4042, n4041, n1458, n3703, n34, n31, n4039, n30, n4038, 
        n4037, n22, n20, n19, n3940, n3939, n3938, n2395;
    
    VHI i2 (.Z(VCC_net));
    INV i3688 (.A(PHI2_c), .Z(PHI2_N_553));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n563), .B(RAMRDD[6]), .C(DMA), .D(n2395), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n3926), .B(RAMRDD[5]), .C(DMA), .D(n2395), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3919), .B(RAMRDD[4]), .C(DMA), .D(n2395), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n566), .B(RAMRDD[3]), .C(DMA), .D(n2395), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n567), .B(RAMRDD[2]), .C(DMA), .D(n2395), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n568), .B(RAMRDD[1]), .C(DMA), .D(n2395), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    PFUMX i3347 (.BLUT(n2179), .ALUT(n2180), .C0(A_out_1), .Z(n3703));
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n569), .B(RAMRDD[0]), .C(DMA), .D(n2395), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 A_out_2_bdd_4_lut (.A(A_out_2), .B(CA[3]), .C(A_out_1), .D(REUA[3]), 
         .Z(n3939)) /* synthesis lut_function=(A (C+(D))+!A (B (C))) */ ;
    defparam A_out_2_bdd_4_lut.init = 16'heae0;
    PFUMX i3522 (.BLUT(n3939), .ALUT(n3938), .C0(A_out_3), .Z(n3940));
    LUT4 i491_3_lut (.A(n1458), .B(n4271), .C(n4039), .Z(PHI2_N_553_enable_77)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i491_3_lut.init = 16'hcdcd;
    LUT4 A_out_2_bdd_3_lut_3527 (.A(Length[11]), .B(A_out_1), .C(A_out_0), 
         .Z(n3938)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam A_out_2_bdd_3_lut_3527.init = 16'hfefe;
    LUT4 i1841_3_lut (.A(REUA[11]), .B(REUA[2]), .C(S[0]), .Z(n603)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1841_3_lut.init = 16'hcaca;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3218), .S1(nWEDMA_N_13));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n4060), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n4060), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n4060), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n4060), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n4060), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n4060), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n4060), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n4060), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n4060), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n4060), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n4060), .B(A[5]), .O(n6_adj_647));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n4060), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n4060), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n4060), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n4060), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n4060), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1138), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1138), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1138), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1138), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1138), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1138), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1138), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1138), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n4060), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_N_628), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n4060), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(n4053), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_N_635), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:13])
    OB nIRQ_pad (.I(nIRQ_c), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
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
    LUT4 i1837_3_lut (.A(CA[11]), .B(Length[3]), .C(A_out_2), .Z(n2180)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1837_3_lut.init = 16'hcaca;
    LUT4 i1836_3_lut (.A(DF01Reserved32[3]), .B(REUA[11]), .C(A_out_2), 
         .Z(n2179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1836_3_lut.init = 16'hcaca;
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n3217), .COUT(n3218));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n3217));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i3459_3_lut_rep_95 (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_12)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i3459_3_lut_rep_95.init = 16'h1313;
    LUT4 i2114_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n386)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i2114_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i1842_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1842_3_lut.init = 16'hcaca;
    LUT4 i1230_2_lut_4_lut (.A(S[0]), .B(S[1]), .C(S[2]), .D(RA_c_9), 
         .Z(n1578)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1230_2_lut_4_lut.init = 16'hec00;
    LUT4 i3340_2_lut (.A(nWE_c), .B(n8), .Z(n3696)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3340_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(n3696), .B(n34), .C(n30), .D(n22), .Z(Execute_N_452)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i17_4_lut.init = 16'h4000;
    INV i3687 (.A(C8M_c), .Z(C8M_N_512));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    LUT4 i16_4_lut (.A(n31), .B(n3692), .C(n19), .D(n20), .Z(n34)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i16_4_lut.init = 16'h2000;
    LUT4 i13_4_lut (.A(A_out_15), .B(A_out_4), .C(A_out_1), .D(A_out_0), 
         .Z(n31)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i13_4_lut.init = 16'h0002;
    VLO i1 (.Z(GND_net));
    LUT4 i3336_2_lut (.A(n7), .B(n6_adj_647), .Z(n3692)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3336_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(ExecuteEN), .B(A_out_2), .Z(n19)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i2_2_lut (.A(A_out_3), .B(A_out_11), .Z(n20)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i12_4_lut (.A(A_out_14), .B(A_out_8), .C(A_out_9), .D(A_out_13), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(A_out_12), .B(A_out_10), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    DMASeq dmaseq (.\XferType[0] (XferType[0]), .n4024(n4024), .Execute(Execute), 
           .BA_c(BA_c), .n2(n2), .DMA(DMA), .n4060(n4060), .PHI2_c(PHI2_c), 
           .nAOE_N_628(nAOE_N_628), .n4272(n4272), .n4022(n4022), .n6(n6), 
           .n4023(n4023), .n4053(n4053), .XferVerify(XferVerify), .IncREUA(IncREUA), 
           .PHI2_N_553(PHI2_N_553), .nRESET_c(nRESET_c), .nWEDMA_c(nWEDMA_c), 
           .n4(n4), .XferEnd(XferEnd), .RAMRD(RAMRD), .RAMWR(RAMWR), 
           .nWEDMA_N_13(nWEDMA_N_13), .RegReset(RegReset), .Length1_N_618(Length1_N_618), 
           .n4271(n4271), .n4021(n4021), .\IncMode[1] (IncMode[1]), .IncCAg(IncCAg), 
           .n4019(n4019), .n4027(n4027), .SetVerifyErr(SetVerifyErr)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(82[9] 96[64])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i3371_4_lut (.A(IntPending), .B(n4028), .C(SetVerifyErr), .D(SetEndOfBlock), 
         .Z(n3727)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i3371_4_lut.init = 16'h3332;
    LUT4 i1840_3_lut (.A(REUA[12]), .B(REUA[3]), .C(S[0]), .Z(n602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1840_3_lut.init = 16'hcaca;
    LUT4 m1_lut (.Z(n4270)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    Glue glue (.PHI2_c(PHI2_c), .nIO2_c(nIO2_c), .BA_c(BA_c), .DMA(DMA), 
         .nDOE_N_635(nDOE_N_635), .nWE_c(nWE_c), .nWEDMA_c(nWEDMA_c), 
         .DDIR_c(DDIR_c), .n4048(n4048), .n4054(n4054), .n4028(n4028), 
         .A_out_1(A_out_1), .A_out_0(A_out_0), .n4037(n4037), .n1458(n1458), 
         .n4030(n4030), .n4039(n4039), .n4041(n4041), .n4042(n4042), 
         .n4045(n4045), .DOE(DOE), .n4038(n4038)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(98[7] 113[15])
    RAM ram (.C8M_c(C8M_c), .S({S}), .C8M_c_enable_12(C8M_c_enable_12), 
        .n4270(n4270), .RAMRD(RAMRD), .RAMWR(RAMWR), .\REUA[14] (REUA[14]), 
        .\REUA[5] (REUA[5]), .nRESET_c(nRESET_c), .n1138(n1138), .C8M_N_512(C8M_N_512), 
        .PHI2_c(PHI2_c), .nCS_c(nCS_c), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), 
        .n386(n386), .nRWE_c(nRWE_c), .DQML_c(DQML_c), .A_0__N_542(A_0__N_542), 
        .RA_c_0(RA_c_0), .WRDr({WRDr}), .PHI2_N_553(PHI2_N_553), .D_out_0(D_out_0), 
        .RCLK_c(RCLK_c), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .\REUA[15] (REUA[15]), 
        .\REUA[6] (REUA[6]), .RA_c_1(RA_c_1), .n603(n603), .RA_c_10(RA_c_10), 
        .RA_c_5(RA_c_5), .RA_c_2(RA_c_2), .n602(n602), .RA_c_3(RA_c_3), 
        .RA_c_4(RA_c_4), .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), 
        .RA_c_9(RA_c_9), .n1578(n1578), .D_out_1(D_out_1), .D_out_2(D_out_2), 
        .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), 
        .D_out_7(D_out_7), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .DQMH_c(DQMH_c), .\REUA[0] (REUA[0]), .\REUA[17] (REUA[17]), 
        .\REUA[8] (REUA[8]), .\REUA[18] (REUA[18]), .\REUA[9] (REUA[9]), 
        .\REUA[16] (REUA[16]), .\REUA[7] (REUA[7]), .\REUA[10] (REUA[10]), 
        .\REUA[1] (REUA[1]), .\REUA[13] (REUA[13]), .\REUA[4] (REUA[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(70[6] 80[32])
    REUReg reureg (.n4037(n4037), .D_out_7(D_out_7), .GND_net(GND_net), 
           .D_out_5(D_out_5), .D_out_1(D_out_1), .D_out_3(D_out_3), .A_out_3(A_out_3), 
           .A_out_4(A_out_4), .A_out_2(A_out_2), .n4048(n4048), .\REUA[15] (REUA[15]), 
           .\REUA[7] (REUA[7]), .A_out_0(A_out_0), .\XferType[0] (XferType[0]), 
           .n4022(n4022), .D_out_0(D_out_0), .CA({CA}), .PHI2_N_553(PHI2_N_553), 
           .RegReset(RegReset), .D_out_2(D_out_2), .D_out_6(D_out_6), 
           .n4272(n4272), .n1458(n1458), .n4038(n4038), .XferEnd(XferEnd), 
           .Execute_N_452(Execute_N_452), .Execute(Execute), .IntPending(IntPending), 
           .n3727(n3727), .n4021(n4021), .D_out_4(D_out_4), .n4041(n4041), 
           .n4023(n4023), .A_out_1(A_out_1), .n4271(n4271), .n569(n569), 
           .n568(n568), .n567(n567), .n490(n490), .XferVerify(XferVerify), 
           .n4039(n4039), .\REUA[18] (REUA[18]), .\REUA[6] (REUA[6]), 
           .\REUA[5] (REUA[5]), .\REUA[4] (REUA[4]), .\REUA[3] (REUA[3]), 
           .\REUA[2] (REUA[2]), .\REUA[1] (REUA[1]), .\REUA[0] (REUA[0]), 
           .n4030(n4030), .n6(n6), .n2(n2), .n563(n563), .\REUA[10] (REUA[10]), 
           .\REUA[14] (REUA[14]), .\REUA[12] (REUA[12]), .\REUA[9] (REUA[9]), 
           .\REUA[11] (REUA[11]), .\REUA[8] (REUA[8]), .\REUA[13] (REUA[13]), 
           .n3919(n3919), .SetEndOfBlock(SetEndOfBlock), .\REUA[17] (REUA[17]), 
           .\REUA[16] (REUA[16]), .IncREUA(IncREUA), .n3703(n3703), .n3940(n3940), 
           .n566(n566), .\DF01Reserved32[3] (DF01Reserved32[3]), .n4054(n4054), 
           .n4045(n4045), .PHI2_N_553_enable_77(PHI2_N_553_enable_77), .PHI2_c(PHI2_c), 
           .nIRQ_c(nIRQ_c), .n4027(n4027), .n4(n4), .\Length[11] (Length[11]), 
           .\Length[3] (Length[3]), .n4019(n4019), .Length1_N_618(Length1_N_618), 
           .\IncMode[1] (IncMode[1]), .n3926(n3926), .n4024(n4024), .ExecuteEN(ExecuteEN), 
           .IncCAg(IncCAg), .A_0__N_542(A_0__N_542), .n2395(n2395), .\RAMRDD[7] (RAMRDD[7]), 
           .DMA(DMA), .\D_7__N_1[7] (D_7__N_1[7]), .n4042(n4042), .SetVerifyErr(SetVerifyErr)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 68[11])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DMASeq
//

module DMASeq (\XferType[0] , n4024, Execute, BA_c, n2, DMA, n4060, 
            PHI2_c, nAOE_N_628, n4272, n4022, n6, n4023, n4053, 
            XferVerify, IncREUA, PHI2_N_553, nRESET_c, nWEDMA_c, n4, 
            XferEnd, RAMRD, RAMWR, nWEDMA_N_13, RegReset, Length1_N_618, 
            n4271, n4021, \IncMode[1] , IncCAg, n4019, n4027, SetVerifyErr) /* synthesis syn_module_defined=1 */ ;
    input \XferType[0] ;
    input n4024;
    input Execute;
    input BA_c;
    input n2;
    output DMA;
    output n4060;
    input PHI2_c;
    output nAOE_N_628;
    output n4272;
    input n4022;
    output n6;
    input n4023;
    output n4053;
    input XferVerify;
    output IncREUA;
    input PHI2_N_553;
    input nRESET_c;
    output nWEDMA_c;
    input n4;
    output XferEnd;
    output RAMRD;
    output RAMWR;
    input nWEDMA_N_13;
    output RegReset;
    input Length1_N_618;
    output n4271;
    input n4021;
    input \IncMode[1] ;
    output IncCAg;
    output n4019;
    output n4027;
    output SetVerifyErr;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_553 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire DMARW_N_600;
    wire [2:1]nRESETr;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire PHI2_N_553_enable_78, DMARW_N_605, DMARW_N_599, DMAr, SwapState, 
        SwapState_N_575, n3, RAMRD_N_554, XferEnd_N_598, XferEnd_N_591, 
        n3533, RAMWR_N_570, n9, XferEnd_N_595, IncREUA_N_622, DMA_N_581, 
        BAr, Equalr, n3440, n4020;
    
    LUT4 i1225_3_lut_4_lut_3_lut (.A(\XferType[0] ), .B(n4024), .C(Execute), 
         .Z(DMARW_N_600)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(30[19:39])
    defparam i1225_3_lut_4_lut_3_lut.init = 16'hd0d0;
    LUT4 i3439_4_lut (.A(BA_c), .B(n2), .C(nRESETr[1]), .D(DMA), .Z(PHI2_N_553_enable_78)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3439_4_lut.init = 16'hefff;
    LUT4 AOE_I_0_26_1_lut_rep_105 (.A(DMA), .Z(n4060)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam AOE_I_0_26_1_lut_rep_105.init = 16'h5555;
    PFUMX DMARW_I_0_130 (.BLUT(DMARW_N_600), .ALUT(DMARW_N_605), .C0(DMA), 
          .Z(DMARW_N_599)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;
    LUT4 i3474_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_N_628)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3474_3_lut_3_lut.init = 16'h2f2f;
    LUT4 i1113_4_lut_rep_108 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4272)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1113_4_lut_rep_108.init = 16'h1511;
    LUT4 SwapState_I_0_1_lut (.A(SwapState), .Z(SwapState_N_575)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(71[14] 75[8])
    defparam SwapState_I_0_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(n4022), .B(Execute), .C(n3), .D(DMA), .Z(RAMRD_N_554)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(82[11] 106[5])
    defparam i1_4_lut.init = 16'h5044;
    PFUMX i19 (.BLUT(XferEnd_N_598), .ALUT(XferEnd_N_591), .C0(\XferType[0] ), 
          .Z(n6));
    LUT4 i3482_4_lut (.A(\XferType[0] ), .B(n4024), .C(n3533), .D(SwapState), 
         .Z(RAMWR_N_570)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;
    defparam i3482_4_lut.init = 16'h1115;
    LUT4 i3177_2_lut (.A(DMA), .B(nRESETr[1]), .Z(n3533)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3177_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_176 (.A(n4023), .B(n9), .C(n4053), .D(XferVerify), 
         .Z(IncREUA)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(130[2] 133[31])
    defparam i1_4_lut_adj_176.init = 16'hcfcd;
    LUT4 i1_4_lut_adj_177 (.A(\XferType[0] ), .B(XferEnd_N_595), .C(IncREUA_N_622), 
         .D(n4024), .Z(n9)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(130[2] 133[31])
    defparam i1_4_lut_adj_177.init = 16'h5044;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_553), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX DMA_115 (.D(DMA_N_581), .CK(PHI2_N_553), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam DMA_115.GSR = "ENABLED";
    FD1S3AX DMARW_116 (.D(DMARW_N_599), .CK(PHI2_N_553), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam DMARW_116.GSR = "ENABLED";
    LUT4 i3471_4_lut (.A(DMA), .B(n4), .C(nRESETr[1]), .D(n2), .Z(XferEnd)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(56[12] 81[6])
    defparam i3471_4_lut.init = 16'h0031;
    FD1S3AX RAMRD_117 (.D(RAMRD_N_554), .CK(PHI2_N_553), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RAMRD_117.GSR = "ENABLED";
    FD1S3IX RAMWR_118 (.D(RAMWR_N_570), .CK(PHI2_N_553), .CD(n4060), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(43[8] 107[4])
    defparam RAMWR_118.GSR = "ENABLED";
    FD1S3AX DMAr_119 (.D(DMA), .CK(PHI2_N_553), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam DMAr_119.GSR = "ENABLED";
    FD1S3AX BAr_120 (.D(BA_c), .CK(PHI2_N_553), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam BAr_120.GSR = "ENABLED";
    FD1S3AX Equalr_121 (.D(nWEDMA_N_13), .CK(PHI2_N_553), .Q(Equalr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam Equalr_121.GSR = "ENABLED";
    LUT4 i1113_4_lut (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), .D(DMAr), 
         .Z(RegReset)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1113_4_lut.init = 16'h1511;
    LUT4 XferEnd_I_147_3_lut_4_lut (.A(n4053), .B(Length1_N_618), .C(Equalr), 
         .D(XferEnd_N_595), .Z(XferEnd_N_591)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[16:38])
    defparam XferEnd_I_147_3_lut_4_lut.init = 16'h1f11;
    LUT4 i1_4_lut_4_lut_4_lut (.A(DMA), .B(n2), .C(nRESETr[1]), .D(BA_c), 
         .Z(n3440)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h55df;
    LUT4 i1113_4_lut_rep_107 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4271)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[19:73])
    defparam i1113_4_lut_rep_107.init = 16'h1511;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_553), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[8] 116[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n4053), .B(n4021), .C(SwapState), .D(\IncMode[1] ), 
         .Z(IncCAg)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(122[2:39])
    defparam i1_2_lut_4_lut.init = 16'h0054;
    FD1P3IX SwapState_114 (.D(SwapState_N_575), .SP(PHI2_N_553_enable_78), 
            .CD(n3440), .CK(PHI2_N_553), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(36[8] 41[4])
    defparam SwapState_114.GSR = "ENABLED";
    LUT4 XferEnd_N_593_I_0_132_3_lut_rep_64_4_lut (.A(\XferType[0] ), .B(n4024), 
         .C(SwapState), .D(n4053), .Z(n4019)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam XferEnd_N_593_I_0_132_3_lut_rep_64_4_lut.init = 16'h00fb;
    LUT4 i2096_2_lut_rep_65_3_lut (.A(\XferType[0] ), .B(n4024), .C(SwapState), 
         .Z(n4020)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam i2096_2_lut_rep_65_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\XferType[0] ), .B(n4024), .C(XferEnd), 
         .D(SwapState), .Z(n3)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(31[17:37])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0b0;
    LUT4 XferEnd_N_592_I_0_2_lut_3_lut_4_lut (.A(DMA), .B(BA_c), .C(SwapState), 
         .D(Length1_N_618), .Z(XferEnd_N_598)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam XferEnd_N_592_I_0_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i3449_2_lut_rep_98 (.A(DMA), .B(BA_c), .Z(n4053)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3449_2_lut_rep_98.init = 16'h7777;
    LUT4 i2100_4_lut (.A(n4020), .B(XferEnd), .C(n4022), .D(n4023), 
         .Z(DMARW_N_605)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(56[12] 81[6])
    defparam i2100_4_lut.init = 16'hc8c0;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd), .C(DMA), .Z(DMA_N_581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(82[11] 106[5])
    defparam Execute_I_0_3_lut.init = 16'hcaca;
    LUT4 XferEnd_N_593_I_0_2_lut_3_lut (.A(DMA), .B(BA_c), .C(SwapState), 
         .Z(IncREUA_N_622)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam XferEnd_N_593_I_0_2_lut_3_lut.init = 16'h8080;
    LUT4 XferEnd_I_148_2_lut_rep_72_3_lut (.A(DMA), .B(BA_c), .C(Length1_N_618), 
         .Z(n4027)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam XferEnd_I_148_2_lut_rep_72_3_lut.init = 16'h0808;
    LUT4 i3_4_lut (.A(XferVerify), .B(nWEDMA_N_13), .C(DMA), .D(BA_c), 
         .Z(SetVerifyErr)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 DMAr_I_0_2_lut (.A(DMAr), .B(BAr), .Z(XferEnd_N_595)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(139[43:54])
    defparam DMAr_I_0_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Glue
//

module Glue (PHI2_c, nIO2_c, BA_c, DMA, nDOE_N_635, nWE_c, nWEDMA_c, 
            DDIR_c, n4048, n4054, n4028, A_out_1, A_out_0, n4037, 
            n1458, n4030, n4039, n4041, n4042, n4045, DOE, n4038) /* synthesis syn_module_defined=1 */ ;
    input PHI2_c;
    input nIO2_c;
    input BA_c;
    input DMA;
    output nDOE_N_635;
    input nWE_c;
    input nWEDMA_c;
    output DDIR_c;
    input n4048;
    input n4054;
    output n4028;
    input A_out_1;
    input A_out_0;
    output n4037;
    input n1458;
    output n4030;
    output n4039;
    output n4041;
    output n4042;
    output n4045;
    output DOE;
    output n4038;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n4052;
    
    LUT4 i3477_4_lut (.A(PHI2_c), .B(nIO2_c), .C(BA_c), .D(DMA), .Z(nDOE_N_635)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(38[15:44])
    defparam i3477_4_lut.init = 16'h5fdd;
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(37[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 RegRD_I_0_2_lut_rep_73_3_lut_4_lut (.A(n4052), .B(nWE_c), .C(n4048), 
         .D(n4054), .Z(n4028)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(45[16:28])
    defparam RegRD_I_0_2_lut_rep_73_3_lut_4_lut.init = 16'h0004;
    LUT4 i2_3_lut_rep_82_4_lut (.A(n4052), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4037)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_82_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(n4052), .B(nWE_c), .C(n1458), 
         .D(n4054), .Z(n4030)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_84_4_lut (.A(n4052), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4039)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_84_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_rep_86_4_lut (.A(n4052), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4041)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_86_4_lut.init = 16'hfeff;
    LUT4 i2105_2_lut_rep_97 (.A(DMA), .B(nIO2_c), .Z(n4052)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2105_2_lut_rep_97.init = 16'heeee;
    LUT4 RegCS_I_0_30_2_lut_rep_87_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n4042)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_30_2_lut_rep_87_3_lut.init = 16'h1010;
    LUT4 i2107_2_lut_rep_90_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n4045)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2107_2_lut_rep_90_3_lut.init = 16'hfefe;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 i1_2_lut_rep_83_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(n4054), 
         .D(nWE_c), .Z(n4038)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_83_3_lut_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (C8M_c, S, C8M_c_enable_12, n4270, RAMRD, RAMWR, \REUA[14] , 
            \REUA[5] , nRESET_c, n1138, C8M_N_512, PHI2_c, nCS_c, 
            nRAS_c, nCAS_c, n386, nRWE_c, DQML_c, A_0__N_542, RA_c_0, 
            WRDr, PHI2_N_553, D_out_0, RCLK_c, RAMRDD, RD_out_0, 
            \REUA[15] , \REUA[6] , RA_c_1, n603, RA_c_10, RA_c_5, 
            RA_c_2, n602, RA_c_3, RA_c_4, RA_c_6, RA_c_7, RA_c_8, 
            RA_c_9, n1578, D_out_1, D_out_2, D_out_3, D_out_4, D_out_5, 
            D_out_6, D_out_7, RD_out_1, RD_out_2, RD_out_3, RD_out_4, 
            RD_out_5, RD_out_6, RD_out_7, DQMH_c, \REUA[0] , \REUA[17] , 
            \REUA[8] , \REUA[18] , \REUA[9] , \REUA[16] , \REUA[7] , 
            \REUA[10] , \REUA[1] , \REUA[13] , \REUA[4] ) /* synthesis syn_module_defined=1 */ ;
    input C8M_c;
    output [2:0]S;
    input C8M_c_enable_12;
    input n4270;
    input RAMRD;
    input RAMWR;
    input \REUA[14] ;
    input \REUA[5] ;
    input nRESET_c;
    output n1138;
    input C8M_N_512;
    input PHI2_c;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    input n386;
    output nRWE_c;
    output DQML_c;
    input A_0__N_542;
    output RA_c_0;
    output [7:0]WRDr;
    input PHI2_N_553;
    input D_out_0;
    output RCLK_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    input \REUA[15] ;
    input \REUA[6] ;
    output RA_c_1;
    input n603;
    output RA_c_10;
    output RA_c_5;
    output RA_c_2;
    input n602;
    output RA_c_3;
    output RA_c_4;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    input n1578;
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
    output DQMH_c;
    input \REUA[0] ;
    input \REUA[17] ;
    input \REUA[8] ;
    input \REUA[18] ;
    input \REUA[9] ;
    input \REUA[16] ;
    input \REUA[7] ;
    input \REUA[10] ;
    input \REUA[1] ;
    input \REUA[13] ;
    input \REUA[4] ;
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_512 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_553 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    
    wire InitDone, n3726, C8M_c_enable_5, n2542, PORDone, PORDone_N_524;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[11:18])
    
    wire RDD_7__N_527;
    wire [14:0]n589;
    
    wire n4058;
    wire [2:0]S_2__N_518;
    
    wire RDOE, CP2, CP1_N_544;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    
    wire n4055;
    wire [17:0]n383;
    wire [17:0]n234;
    
    wire n3581, RDOE_N_550, CP1, n3, n4040, n4057, C8M_c_enable_3, 
        n1250, n3474, C8M_c_enable_6, n4066, n4065;
    
    FD1P3AX InitDone_109 (.D(n3726), .SP(S[2]), .CK(C8M_c), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(56[8:58])
    defparam InitDone_109.GSR = "ENABLED";
    LUT4 mux_176_i18_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_12), 
         .D(S[0]), .Z(n2542)) /* synthesis lut_function=(!(A (B+(C))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_176_i18_4_lut.init = 16'h0353;
    FD1P3AX PORDone_106 (.D(n4270), .SP(PORDone_N_524), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam PORDone_106.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(nRESETr[4]), .B(nRESETr[3]), .C(nRESETr[1]), .D(nRESETr[2]), 
         .Z(PORDone_N_524)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[6:58])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_175 (.A(RAMRD), .B(RAMWR), .C(InitDone), .D(C8M_c_enable_5), 
         .Z(RDD_7__N_527)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_175.init = 16'h2000;
    LUT4 mux_251_i5_3_lut (.A(\REUA[14] ), .B(\REUA[5] ), .C(S[0]), .Z(n589[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_251_i5_3_lut.init = 16'hcaca;
    FD1S3IX S__i0 (.D(S_2__N_518[0]), .CK(C8M_c), .CD(n4058), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i0.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i0.GSR = "ENABLED";
    LUT4 i813_1_lut (.A(RDOE), .Z(n1138)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    defparam i813_1_lut.init = 16'h5555;
    FD1S3AX CP2_104 (.D(CP1_N_544), .CK(C8M_N_512), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[8:45])
    defparam CP2_104.GSR = "ENABLED";
    FD1S3AX PHI2r_i0 (.D(PHI2_c), .CK(C8M_N_512), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i0.GSR = "ENABLED";
    FD1S3IX nCS_110 (.D(n2542), .CK(C8M_c), .CD(n4055), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCS_110.GSR = "ENABLED";
    FD1S3IX nRAS_111 (.D(n383[16]), .CK(C8M_c), .CD(n4055), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRAS_111.GSR = "ENABLED";
    FD1S3IX nCAS_112 (.D(n386), .CK(C8M_c), .CD(n4055), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCAS_112.GSR = "ENABLED";
    FD1S3AX nRWE_113 (.D(n234[14]), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRWE_113.GSR = "ENABLED";
    FD1S3JX DQML_116 (.D(A_0__N_542), .CK(C8M_c), .PD(n3581), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQML_116.GSR = "ENABLED";
    FD1P3IX RA_i1 (.D(n589[0]), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_553), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3AX RDOE_121 (.D(RDOE_N_550), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(193[8:54])
    defparam RDOE_121.GSR = "ENABLED";
    FD1S3AX CP1_103 (.D(CP1_N_544), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(27[8:45])
    defparam CP1_103.GSR = "ENABLED";
    LUT4 CP1_I_0_145_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(29[15:24])
    defparam CP1_I_0_145_2_lut.init = 16'h6666;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 i256_2_lut (.A(S[0]), .B(S[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i256_2_lut.init = 16'h6666;
    LUT4 i2090_4_lut (.A(S[0]), .B(n4040), .C(n4057), .D(PORDone), .Z(S_2__N_518[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[7:47])
    defparam i2090_4_lut.init = 16'hdc50;
    LUT4 i1_2_lut_4_lut (.A(S[0]), .B(InitDone), .C(RAMWR), .D(n4057), 
         .Z(RDOE_N_550)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0080;
    LUT4 mux_251_i6_3_lut (.A(\REUA[15] ), .B(\REUA[6] ), .C(S[0]), .Z(n589[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_251_i6_3_lut.init = 16'hcaca;
    FD1P3IX S__i1 (.D(n3), .SP(C8M_c_enable_3), .CD(n1250), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n3474), .SP(C8M_c_enable_3), .CD(n1250), .CK(C8M_c), 
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
    FD1S3AX PHI2r_i1 (.D(PHI2r[0]), .CK(C8M_N_512), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i1.GSR = "ENABLED";
    FD1P3IX RA_i2 (.D(n603), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_85_4_lut (.A(S[0]), .B(n4057), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(n4040)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(48[11:23])
    defparam i2_3_lut_rep_85_4_lut.init = 16'h0100;
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_544)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[36:40])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    FD1P3IX RA_i11 (.D(n4270), .SP(C8M_c_enable_5), .CD(C8M_c_enable_6), 
            .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1P3JX RA_i6 (.D(n589[5]), .SP(C8M_c_enable_6), .PD(n4055), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i6.GSR = "ENABLED";
    LUT4 mux_178_i15_3_lut_then_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .Z(n4066)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_178_i15_3_lut_then_3_lut.init = 16'hfefe;
    LUT4 mux_178_i15_3_lut_else_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .D(RAMWR), .Z(n4065)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_178_i15_3_lut_else_3_lut.init = 16'h1f3f;
    FD1P3IX RA_i3 (.D(n602), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1P3IX RA_i4 (.D(n589[3]), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1P3IX RA_i5 (.D(n589[4]), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1P3IX RA_i7 (.D(n589[6]), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1P3IX RA_i8 (.D(n589[7]), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1P3IX RA_i9 (.D(n589[8]), .SP(C8M_c_enable_12), .CD(n4055), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(n1578), .CK(C8M_c), .PD(n4055), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i10.GSR = "ENABLED";
    LUT4 mux_176_i17_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_12), 
         .D(S[0]), .Z(n383[16])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_176_i17_4_lut.init = 16'hf353;
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_553), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_553), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_553), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_553), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_553), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_553), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_553), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(C8M_c_enable_6)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i1_2_lut_4_lut_3_lut.init = 16'h0707;
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_527), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i7.GSR = "ENABLED";
    LUT4 i3466_3_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n3581)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3466_3_lut_4_lut_3_lut.init = 16'hfdfd;
    FD1S3JX DQMH_115 (.D(\REUA[0] ), .CK(C8M_c), .PD(n3581), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQMH_115.GSR = "ENABLED";
    LUT4 i183_2_lut_rep_102 (.A(S[2]), .B(S[1]), .Z(n4057)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i183_2_lut_rep_102.init = 16'heeee;
    LUT4 equal_20_i5_2_lut_rep_91_3_lut (.A(S[2]), .B(S[1]), .C(S[0]), 
         .Z(C8M_c_enable_3)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam equal_20_i5_2_lut_rep_91_3_lut.init = 16'hfefe;
    LUT4 i902_1_lut_rep_103 (.A(PORDone), .Z(n4058)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i902_1_lut_rep_103.init = 16'h5555;
    LUT4 mux_251_i8_3_lut (.A(\REUA[17] ), .B(\REUA[8] ), .C(S[0]), .Z(n589[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_251_i8_3_lut.init = 16'hcaca;
    LUT4 i903_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_3), .Z(n1250)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i903_2_lut_4_lut_4_lut.init = 16'h5575;
    LUT4 i3370_3_lut_3_lut (.A(S[0]), .B(S[1]), .C(InitDone), .Z(n3726)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3370_3_lut_3_lut.init = 16'hf8f8;
    LUT4 mux_251_i9_3_lut (.A(\REUA[18] ), .B(\REUA[9] ), .C(S[0]), .Z(n589[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_251_i9_3_lut.init = 16'hcaca;
    LUT4 mux_251_i7_3_lut (.A(\REUA[16] ), .B(\REUA[7] ), .C(S[0]), .Z(n589[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_251_i7_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_88_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_5)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_rep_88_3_lut.init = 16'h0808;
    LUT4 mux_251_i1_3_lut (.A(\REUA[10] ), .B(\REUA[1] ), .C(S[0]), .Z(n589[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_251_i1_3_lut.init = 16'hcaca;
    LUT4 i15_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n3474)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_3_lut_rep_100 (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n4055)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_100.init = 16'h0404;
    LUT4 mux_251_i4_3_lut (.A(\REUA[13] ), .B(\REUA[4] ), .C(S[0]), .Z(n589[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_251_i4_3_lut.init = 16'hcaca;
    PFUMX i3570 (.BLUT(n4065), .ALUT(n4066), .C0(S[2]), .Z(n234[14]));
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (n4037, D_out_7, GND_net, D_out_5, D_out_1, D_out_3, 
            A_out_3, A_out_4, A_out_2, n4048, \REUA[15] , \REUA[7] , 
            A_out_0, \XferType[0] , n4022, D_out_0, CA, PHI2_N_553, 
            RegReset, D_out_2, D_out_6, n4272, n1458, n4038, XferEnd, 
            Execute_N_452, Execute, IntPending, n3727, n4021, D_out_4, 
            n4041, n4023, A_out_1, n4271, n569, n568, n567, n490, 
            XferVerify, n4039, \REUA[18] , \REUA[6] , \REUA[5] , \REUA[4] , 
            \REUA[3] , \REUA[2] , \REUA[1] , \REUA[0] , n4030, n6, 
            n2, n563, \REUA[10] , \REUA[14] , \REUA[12] , \REUA[9] , 
            \REUA[11] , \REUA[8] , \REUA[13] , n3919, SetEndOfBlock, 
            \REUA[17] , \REUA[16] , IncREUA, n3703, n3940, n566, 
            \DF01Reserved32[3] , n4054, n4045, PHI2_N_553_enable_77, 
            PHI2_c, nIRQ_c, n4027, n4, \Length[11] , \Length[3] , 
            n4019, Length1_N_618, \IncMode[1] , n3926, n4024, ExecuteEN, 
            IncCAg, A_0__N_542, n2395, \RAMRDD[7] , DMA, \D_7__N_1[7] , 
            n4042, SetVerifyErr) /* synthesis syn_module_defined=1 */ ;
    input n4037;
    input D_out_7;
    input GND_net;
    input D_out_5;
    input D_out_1;
    input D_out_3;
    input A_out_3;
    input A_out_4;
    input A_out_2;
    output n4048;
    output \REUA[15] ;
    output \REUA[7] ;
    input A_out_0;
    output \XferType[0] ;
    output n4022;
    input D_out_0;
    output [15:0]CA;
    input PHI2_N_553;
    input RegReset;
    input D_out_2;
    input D_out_6;
    input n4272;
    output n1458;
    input n4038;
    input XferEnd;
    input Execute_N_452;
    output Execute;
    output IntPending;
    input n3727;
    output n4021;
    input D_out_4;
    input n4041;
    output n4023;
    input A_out_1;
    input n4271;
    output n569;
    output n568;
    output n567;
    input n490;
    output XferVerify;
    input n4039;
    output \REUA[18] ;
    output \REUA[6] ;
    output \REUA[5] ;
    output \REUA[4] ;
    output \REUA[3] ;
    output \REUA[2] ;
    output \REUA[1] ;
    output \REUA[0] ;
    input n4030;
    input n6;
    output n2;
    output n563;
    output \REUA[10] ;
    output \REUA[14] ;
    output \REUA[12] ;
    output \REUA[9] ;
    output \REUA[11] ;
    output \REUA[8] ;
    output \REUA[13] ;
    output n3919;
    output SetEndOfBlock;
    output \REUA[17] ;
    output \REUA[16] ;
    input IncREUA;
    input n3703;
    input n3940;
    output n566;
    output \DF01Reserved32[3] ;
    output n4054;
    input n4045;
    input PHI2_N_553_enable_77;
    input PHI2_c;
    output nIRQ_c;
    input n4027;
    output n4;
    output \Length[11] ;
    output \Length[3] ;
    input n4019;
    output Length1_N_618;
    output \IncMode[1] ;
    output n3926;
    output n4024;
    output ExecuteEN;
    input IncCAg;
    output A_0__N_542;
    output n2395;
    input \RAMRDD[7] ;
    input DMA;
    output \D_7__N_1[7] ;
    input n4042;
    input SetVerifyErr;
    
    wire PHI2_N_553 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(110[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n4044;
    wire [7:0]n953;
    
    wire Length_7__N_351, n3322;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[12:18])
    wire [7:0]Length_15__N_307;
    
    wire Length_5__N_362, Length_1__N_382, Length_3__N_372, n4063;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reg.v(40[11:19])
    
    wire n4026, Length_0__N_387;
    wire [7:0]n439;
    
    wire Length_2__N_377, Length_6__N_357, PHI2_N_553_enable_84, Length_14__N_316;
    wire [7:0]n952;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(36[11:25])
    
    wire PHI2_N_553_enable_75, PHI2_N_553_enable_65, n3323;
    wire [7:0]Length_7__N_354;
    
    wire n3324, AutoloadEN, n4016, Length_15__N_304, EndOfBlock, PHI2_N_553_enable_57, 
        EndOfBlock_N_462, Length_8__N_346, Execute_N_450, FF00DecodeEN, 
        Length_9__N_341, Length_10__N_336;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(49[12:23])
    
    wire PHI2_N_553_enable_21, Length_11__N_331, Length_12__N_326, Length_13__N_321;
    wire [7:0]REUAOut_15__N_57;
    wire [7:0]n436;
    
    wire REUAOut_7__N_105, n3915;
    wire [7:0]n438;
    
    wire n3955, n3952, n3956, DF01Reserved6, n4059, PHI2_N_553_enable_45, 
        n3916, IntEnable, PHI2_N_553_enable_13, EndOfBlockMask, n3711, 
        n3713, n3747;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[12:25])
    
    wire PHI2_N_553_enable_73, n1257, n1210, VerifyErrMask, n1212;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(44[12:21])
    
    wire n3708, n3710, n3705, n3707, n4047;
    wire [7:0]n437;
    
    wire n3706, n3749, n1220;
    wire [7:0]n484;
    
    wire n3709;
    wire [7:0]CAOut_7__N_192;
    
    wire PHI2_N_553_enable_42, n4018, n964;
    wire [2:0]n435;
    
    wire n4029, n3712, CAOut_15__N_148;
    wire [7:0]n541;
    
    wire PHI2_N_553_enable_67, REUAOut_15__N_60;
    wire [7:0]REUAOut_7__N_104;
    
    wire n13, n1218, n14, n3918, n3911, PHI2_N_553_enable_71, n3954, 
        n3953, n17, n15, n11, n12, REUAOut_15__N_58;
    wire [7:0]n508;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(64[11:18])
    wire [7:0]CAOut_15__N_145;
    
    wire n3700, n3686, n11_adj_640, n12_adj_641;
    wire [2:0]n444;
    
    wire CAOut_7__N_193, n3893, n3888, n3894, n3502, PHI2_N_553_enable_76, 
        n3920, n1195, PHI2_N_553_enable_70, n3921, n3951, n3950, 
        n4014, IRQOut_N_449, n4034, n3922;
    wire [7:0]n456;
    wire [7:0]n472;
    
    wire n3321, n3320, n3319, Fault, Fault_N_467, n4017, n1193, 
        n4032, Length_4__N_367, n4073, n3923, n3925, n3890, n4031, 
        n4035, n3698, n3684, n3478, n37, n4036, n3889, n4015, 
        n4033, n3600;
    wire [7:0]n496;
    
    wire n4064, n3891, n3317, n3316, n3315, n3314, n3309, n3308, 
        n3307, n3306, IncREUAg, n3301, n3300, n3299, n3298, CAOut_15__N_146, 
        n3293, n3292, n3291, n3290, n4062, n3917, n3914, n4056, 
        n15_adj_643, n13_adj_644, n14_adj_645, n4072, n17_adj_646, 
        n30, n26, n18, n4071, n3913, n3912, n27, n3326, n3325, 
        n2416;
    
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_7), 
         .D(n953[7]), .Z(Length_7__N_351)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    CCU2D Length_15__I_0_839_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3322), .S0(Length_15__N_307[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(230[19:37])
    defparam Length_15__I_0_839_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_839_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_9.INJECT1_1 = "NO";
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_5), 
         .D(n953[5]), .Z(Length_5__N_362)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_1), 
         .D(n953[1]), .Z(Length_1__N_382)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_3), 
         .D(n953[3]), .Z(Length_3__N_372)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_93_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n4048)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i1_2_lut_rep_93_3_lut.init = 16'hfefe;
    LUT4 n457_bdd_3_lut_3526_then_3_lut (.A(\REUA[15] ), .B(\REUA[7] ), 
         .C(A_out_0), .Z(n4063)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n457_bdd_3_lut_3526_then_3_lut.init = 16'hacac;
    LUT4 i3436_2_lut_rep_67_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4026), 
         .D(\XferType[0] ), .Z(n4022)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:70])
    defparam i3436_2_lut_rep_67_4_lut.init = 16'h0035;
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_0), 
         .D(n953[0]), .Z(Length_0__N_387)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX CA_7__596 (.D(n439[7]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_7__596.GSR = "ENABLED";
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_2), 
         .D(n953[2]), .Z(Length_2__N_377)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_6), 
         .D(n953[6]), .Z(Length_6__N_357)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_14__688 (.D(Length_14__N_316), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_14__688.GSR = "ENABLED";
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_6), 
         .D(n952[6]), .Z(Length_14__N_316)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_553_enable_75), 
            .CD(n4272), .CK(PHI2_N_553), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    FD1P3JX Length_1__677 (.D(Length_1__N_382), .SP(PHI2_N_553_enable_65), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_1__677.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3323), .COUT(n3324), .S0(Length_7__N_354[1]), 
          .S1(Length_7__N_354[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    LUT4 Autoload_I_0_2_lut_rep_61_3_lut_4_lut (.A(n1458), .B(n4038), .C(XferEnd), 
         .D(AutoloadEN), .Z(n4016)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_2_lut_rep_61_3_lut_4_lut.init = 16'h1f11;
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_7), 
         .D(n952[7]), .Z(Length_15__N_304)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX EndOfBlock_587 (.D(EndOfBlock_N_462), .SP(PHI2_N_553_enable_57), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(87[8] 104[4])
    defparam EndOfBlock_587.GSR = "ENABLED";
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_0), 
         .D(n952[0]), .Z(Length_8__N_346)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    PFUMX Execute_I_0 (.BLUT(Execute_N_450), .ALUT(Execute_N_452), .C0(FF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_1), 
         .D(n952[1]), .Z(Length_9__N_341)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_2), 
         .D(n952[2]), .Z(Length_10__N_336)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_17__669 (.D(D_out_1), .SP(PHI2_N_553_enable_21), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(189[8] 202[4])
    defparam REUAWritten_17__669.GSR = "ENABLED";
    FD1P3IX IntPending_586 (.D(n3727), .SP(PHI2_N_553_enable_57), .CD(RegReset), 
            .CK(PHI2_N_553), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(87[8] 104[4])
    defparam IntPending_586.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3323), .S1(Length_7__N_354[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_16__670 (.D(D_out_0), .SP(PHI2_N_553_enable_21), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(189[8] 202[4])
    defparam REUAWritten_16__670.GSR = "ENABLED";
    LUT4 XferType_1__I_0_134_i3_2_lut_rep_66_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n4026), .D(\XferType[0] ), .Z(n4021)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:70])
    defparam XferType_1__I_0_134_i3_2_lut_rep_66_4_lut.init = 16'hff35;
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_3), 
         .D(n952[3]), .Z(Length_11__N_331)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_4), 
         .D(n952[4]), .Z(Length_12__N_326)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n1458), .B(n4038), .C(D_out_5), 
         .D(n952[5]), .Z(Length_13__N_321)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_193_i8_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_7), .D(REUAOut_15__N_57[7]), 
         .Z(n436[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 XferType_1__I_0_136_i3_2_lut_rep_68_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n4026), .D(\XferType[0] ), .Z(n4023)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:70])
    defparam XferType_1__I_0_136_i3_2_lut_rep_68_4_lut.init = 16'hcaff;
    LUT4 mux_193_i7_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_6), .D(REUAOut_15__N_57[6]), 
         .Z(n436[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i7_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_6__597 (.D(n439[6]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_6__597.GSR = "ENABLED";
    LUT4 Autoload_I_0_735_2_lut_3_lut_4_lut (.A(n4044), .B(n4041), .C(XferEnd), 
         .D(AutoloadEN), .Z(REUAOut_7__N_105)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_735_2_lut_3_lut_4_lut.init = 16'h1f11;
    LUT4 mux_193_i6_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_5), .D(REUAOut_15__N_57[5]), 
         .Z(n436[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_out_0_bdd_3_lut_3512 (.A(CA[12]), .B(A_out_1), .C(FF00DecodeEN), 
         .Z(n3915)) /* synthesis lut_function=(A (B+!(C))+!A !(B+(C))) */ ;
    defparam A_out_0_bdd_3_lut_3512.init = 16'h8b8b;
    LUT4 mux_193_i5_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_4), .D(REUAOut_15__N_57[4]), 
         .Z(n436[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i5_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_5__598 (.D(n439[5]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_5__598.GSR = "ENABLED";
    FD1S3IX CA_4__599 (.D(n439[4]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_4__599.GSR = "ENABLED";
    FD1S3IX CA_3__600 (.D(n439[3]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_3__600.GSR = "ENABLED";
    FD1S3IX CA_2__601 (.D(n439[2]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_2__601.GSR = "ENABLED";
    FD1S3IX CA_1__602 (.D(n439[1]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_1__602.GSR = "ENABLED";
    FD1S3IX CA_0__603 (.D(n439[0]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CA_0__603.GSR = "ENABLED";
    FD1S3IX CA_15__612 (.D(n438[7]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_15__612.GSR = "ENABLED";
    L6MUX21 i3535 (.D0(n3955), .D1(n3952), .SD(A_out_0), .Z(n3956));
    LUT4 mux_193_i4_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_3), .D(REUAOut_15__N_57[3]), 
         .Z(n436[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX DF01Reserved6_591 (.D(D_out_6), .SP(PHI2_N_553_enable_75), .CD(n4272), 
            .CK(PHI2_N_553), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam DF01Reserved6_591.GSR = "ENABLED";
    LUT4 i911_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4059), .C(n4271), .D(n4037), 
         .Z(PHI2_N_553_enable_45)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[2:14])
    defparam i911_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 mux_193_i3_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_2), .D(REUAOut_15__N_57[2]), 
         .Z(n436[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_out_0_bdd_2_lut_3513 (.A(CA[4]), .B(A_out_1), .Z(n3916)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam A_out_0_bdd_2_lut_3513.init = 16'hbbbb;
    FD1P3IX IntEnable_703 (.D(D_out_7), .SP(PHI2_N_553_enable_13), .CD(RegReset), 
            .CK(PHI2_N_553), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(235[8] 245[4])
    defparam IntEnable_703.GSR = "ENABLED";
    FD1P3IX EndOfBlockMask_704 (.D(D_out_6), .SP(PHI2_N_553_enable_13), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(235[8] 245[4])
    defparam EndOfBlockMask_704.GSR = "ENABLED";
    L6MUX21 mux_238_i1 (.D0(n3711), .D1(n3713), .SD(n3747), .Z(n569));
    FD1P3AX LengthWritten_8__702 (.D(n1257), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_8__702.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__701 (.D(n1210), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_9__701.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_705 (.D(D_out_5), .SP(PHI2_N_553_enable_13), .CD(n4272), 
            .CK(PHI2_N_553), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(235[8] 245[4])
    defparam VerifyErrMask_705.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__700 (.D(n1212), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_10__700.GSR = "ENABLED";
    LUT4 mux_193_i2_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_1), .D(REUAOut_15__N_57[1]), 
         .Z(n436[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_14__621 (.D(D_out_6), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_14__621.GSR = "ENABLED";
    L6MUX21 mux_238_i2 (.D0(n3708), .D1(n3710), .SD(n3747), .Z(n568));
    LUT4 i484_3_lut (.A(n4271), .B(n1458), .C(n4041), .Z(PHI2_N_553_enable_13)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(235[8] 245[4])
    defparam i484_3_lut.init = 16'habab;
    L6MUX21 mux_238_i3 (.D0(n3705), .D1(n3707), .SD(n3747), .Z(n567));
    FD1P3AX LengthWritten_12__698 (.D(n4047), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_12__698.GSR = "ENABLED";
    FD1S3IX CA_14__613 (.D(n438[6]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_14__613.GSR = "ENABLED";
    LUT4 mux_193_i1_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_0), .D(REUAOut_15__N_57[0]), 
         .Z(n436[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_193_i1_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_13__614 (.D(n438[5]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_13__614.GSR = "ENABLED";
    FD1S3IX CA_12__615 (.D(n438[4]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_12__615.GSR = "ENABLED";
    FD1S3IX CA_11__616 (.D(n438[3]), .CK(PHI2_N_553), .CD(RegReset), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_11__616.GSR = "ENABLED";
    FD1S3IX CA_10__617 (.D(n438[2]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_10__617.GSR = "ENABLED";
    FD1S3IX CA_9__618 (.D(n438[1]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_9__618.GSR = "ENABLED";
    FD1S3IX CA_8__619 (.D(n438[0]), .CK(PHI2_N_553), .CD(n4272), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CA_8__619.GSR = "ENABLED";
    FD1S3IX REUA_7__628 (.D(n437[7]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_7__628.GSR = "ENABLED";
    PFUMX i3351 (.BLUT(n490), .ALUT(n3706), .C0(n3749), .Z(n3707));
    LUT4 i2054_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4026), .D(\XferType[0] ), 
         .Z(XferVerify)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:70])
    defparam i2054_2_lut_4_lut.init = 16'hca00;
    FD1P3AX LengthWritten_14__696 (.D(n1220), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_14__696.GSR = "ENABLED";
    LUT4 i3464_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3747)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam i3464_2_lut.init = 16'heeee;
    PFUMX i3354 (.BLUT(n484[1]), .ALUT(n3709), .C0(n3749), .Z(n3710));
    FD1P3AX CAWritten_15__620 (.D(D_out_7), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_15__620.GSR = "ENABLED";
    FD1P3IX AutoloadEN_592 (.D(D_out_5), .SP(PHI2_N_553_enable_75), .CD(n4272), 
            .CK(PHI2_N_553), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam AutoloadEN_592.GSR = "ENABLED";
    LUT4 i2136_2_lut (.A(D_out_0), .B(n4271), .Z(n1257)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2136_2_lut.init = 16'heeee;
    FD1P3AX CAWritten_13__622 (.D(D_out_5), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_13__622.GSR = "ENABLED";
    LUT4 mux_196_i8_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_7), .D(CAOut_7__N_192[7]), 
         .Z(n439[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_18__668 (.D(D_out_2), .SP(PHI2_N_553_enable_21), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(189[8] 202[4])
    defparam REUAWritten_18__668.GSR = "ENABLED";
    LUT4 mux_196_i7_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_6), .D(CAOut_7__N_192[6]), 
         .Z(n439[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_8__659 (.D(D_out_0), .SP(PHI2_N_553_enable_42), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_8__659.GSR = "ENABLED";
    LUT4 mux_192_i3_4_lut (.A(\REUA[18] ), .B(REUAWritten[18]), .C(n4018), 
         .D(n964), .Z(n435[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[18:34])
    defparam mux_192_i3_4_lut.init = 16'hc5ca;
    FD1P3AX CAWritten_12__623 (.D(D_out_4), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_12__623.GSR = "ENABLED";
    LUT4 mux_647_i3_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[10]), 
         .D(Length_15__N_307[2]), .Z(n952[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_196_i6_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_5), .D(CAOut_7__N_192[5]), 
         .Z(n439[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i304_2_lut_rep_70_3_lut_4_lut (.A(A_out_2), .B(n4059), .C(n4271), 
         .D(n4041), .Z(PHI2_N_553_enable_75)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[2:14])
    defparam i304_2_lut_rep_70_3_lut_4_lut.init = 16'hf0f1;
    FD1S3IX REUA_6__629 (.D(n437[6]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_6__629.GSR = "ENABLED";
    LUT4 mux_196_i5_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_4), .D(CAOut_7__N_192[4]), 
         .Z(n439[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i5_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3357 (.BLUT(n484[0]), .ALUT(n3712), .C0(n3749), .Z(n3713));
    FD1S3IX REUA_5__630 (.D(n437[5]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_5__630.GSR = "ENABLED";
    FD1S3IX REUA_4__631 (.D(n437[4]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_4__631.GSR = "ENABLED";
    FD1S3IX REUA_3__632 (.D(n437[3]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_3__632.GSR = "ENABLED";
    FD1S3IX REUA_2__633 (.D(n437[2]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_2__633.GSR = "ENABLED";
    FD1S3IX REUA_1__634 (.D(n437[1]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_1__634.GSR = "ENABLED";
    FD1S3IX REUA_0__635 (.D(n437[0]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUA_0__635.GSR = "ENABLED";
    FD1S3IX REUA_15__644 (.D(n436[7]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[15] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_15__644.GSR = "ENABLED";
    LUT4 Autoload_I_0_748_2_lut_3_lut_4_lut (.A(n4048), .B(n4039), .C(XferEnd), 
         .D(AutoloadEN), .Z(CAOut_15__N_148)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_748_2_lut_3_lut_4_lut.init = 16'h1f11;
    FD1P3JX Length_15__687 (.D(Length_15__N_304), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_15__687.GSR = "ENABLED";
    FD1P3AX CAWritten_11__624 (.D(D_out_3), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_11__624.GSR = "ENABLED";
    LUT4 mux_196_i4_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_3), .D(CAOut_7__N_192[3]), 
         .Z(n439[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_196_i3_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_2), .D(CAOut_7__N_192[2]), 
         .Z(n439[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_648_i1_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[0]), 
         .D(Length_7__N_354[0]), .Z(n953[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2050_2_lut (.A(D_out_1), .B(n4271), .Z(n1210)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2050_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4026), .D(n6), 
         .Z(n2)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:70])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 mux_238_i7_3_lut (.A(n3956), .B(n541[6]), .C(A_out_3), .Z(n563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_238_i7_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_0__686 (.D(n1257), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_0__686.GSR = "ENABLED";
    LUT4 mux_196_i2_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_1), .D(CAOut_7__N_192[1]), 
         .Z(n439[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_196_i1_3_lut_4_lut (.A(n4048), .B(n4039), .C(D_out_0), .D(CAOut_7__N_192[0]), 
         .Z(n439[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_196_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 Autoload_I_0_726_2_lut_3_lut_4_lut (.A(n4044), .B(n4038), .C(XferEnd), 
         .D(AutoloadEN), .Z(REUAOut_15__N_60)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam Autoload_I_0_726_2_lut_3_lut_4_lut.init = 16'h1f11;
    FD1P3AX CAWritten_10__625 (.D(D_out_2), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_10__625.GSR = "ENABLED";
    LUT4 mux_194_i8_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_7), .D(REUAOut_7__N_104[7]), 
         .Z(n437[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5_4_lut (.A(\REUA[10] ), .B(\REUA[14] ), .C(\REUA[12] ), .D(\REUA[9] ), 
         .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    FD1P3AX LengthWritten_13__697 (.D(n1218), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_13__697.GSR = "ENABLED";
    LUT4 mux_194_i7_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_6), .D(REUAOut_7__N_104[6]), 
         .Z(n437[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_9__658 (.D(D_out_1), .SP(PHI2_N_553_enable_42), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_9__658.GSR = "ENABLED";
    LUT4 mux_194_i6_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_5), .D(REUAOut_7__N_104[5]), 
         .Z(n437[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_10__657 (.D(D_out_2), .SP(PHI2_N_553_enable_42), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_10__657.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__656 (.D(D_out_3), .SP(PHI2_N_553_enable_42), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_11__656.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(\REUA[11] ), .B(\REUA[15] ), .C(\REUA[8] ), .D(\REUA[13] ), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 n3918_bdd_3_lut (.A(n3918), .B(n3911), .C(A_out_3), .Z(n3919)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3918_bdd_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_6__605 (.D(D_out_6), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_6__605.GSR = "ENABLED";
    LUT4 i2129_2_lut (.A(D_out_2), .B(n4271), .Z(n1212)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2129_2_lut.init = 16'heeee;
    FD1S3IX REUA_14__645 (.D(n436[6]), .CK(PHI2_N_553), .CD(RegReset), 
            .Q(\REUA[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_14__645.GSR = "ENABLED";
    LUT4 mux_194_i5_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_4), .D(REUAOut_7__N_104[4]), 
         .Z(n437[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_194_i4_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_3), .D(REUAOut_7__N_104[3]), 
         .Z(n437[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_194_i3_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_2), .D(REUAOut_7__N_104[2]), 
         .Z(n437[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i3_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_13__646 (.D(n436[5]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_13__646.GSR = "ENABLED";
    FD1S3IX REUA_12__647 (.D(n436[4]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_12__647.GSR = "ENABLED";
    FD1S3IX REUA_11__648 (.D(n436[3]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_11__648.GSR = "ENABLED";
    FD1S3IX REUA_10__649 (.D(n436[2]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_10__649.GSR = "ENABLED";
    FD1S3IX REUA_9__650 (.D(n436[1]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_9__650.GSR = "ENABLED";
    FD1S3IX REUA_8__651 (.D(n436[0]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUA_8__651.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__655 (.D(D_out_4), .SP(PHI2_N_553_enable_42), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_12__655.GSR = "ENABLED";
    PFUMX i3533 (.BLUT(n3954), .ALUT(n3953), .C0(A_out_2), .Z(n3955));
    LUT4 mux_194_i2_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_1), .D(REUAOut_7__N_104[1]), 
         .Z(n437[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_194_i1_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_0), .D(REUAOut_7__N_104[0]), 
         .Z(n437[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_194_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11), .D(n12), .Z(REUAOut_15__N_58)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 mux_234_i7_3_lut (.A(n508[6]), .B(IncMode[0]), .C(A_out_1), .Z(n541[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_234_i7_3_lut.init = 16'hcaca;
    LUT4 mux_647_i7_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[14]), 
         .D(Length_15__N_307[6]), .Z(n952[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7_4_lut (.A(IncMode[0]), .B(\REUA[0] ), .C(\REUA[2] ), .D(\REUA[7] ), 
         .Z(n17)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7_4_lut.init = 16'h4000;
    FD1P3IX REUAWritten_13__654 (.D(D_out_5), .SP(PHI2_N_553_enable_42), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_13__654.GSR = "ENABLED";
    LUT4 mux_195_i5_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_4), .D(CAOut_15__N_145[4]), 
         .Z(n438[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 i9_4_lut_adj_162 (.A(n3700), .B(n3686), .C(n11_adj_640), .D(n12_adj_641), 
         .Z(SetEndOfBlock)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i9_4_lut_adj_162.init = 16'h1000;
    LUT4 i5_2_lut (.A(\REUA[1] ), .B(\REUA[3] ), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    FD1S3IX REUA_18__665 (.D(n444[2]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[18] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(189[8] 202[4])
    defparam REUA_18__665.GSR = "ENABLED";
    FD1S3IX REUA_17__666 (.D(n444[1]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[17] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(189[8] 202[4])
    defparam REUA_17__666.GSR = "ENABLED";
    FD1S3IX REUA_16__667 (.D(n444[0]), .CK(PHI2_N_553), .CD(n4272), .Q(\REUA[16] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(189[8] 202[4])
    defparam REUA_16__667.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(\REUA[6] ), .B(IncREUA), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX CAWritten_5__606 (.D(D_out_5), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_5__606.GSR = "ENABLED";
    LUT4 Autoload_I_0_792_2_lut_3_lut_4_lut (.A(n4048), .B(n4037), .C(XferEnd), 
         .D(AutoloadEN), .Z(CAOut_7__N_193)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam Autoload_I_0_792_2_lut_3_lut_4_lut.init = 16'h4f44;
    LUT4 i2_2_lut (.A(\REUA[5] ), .B(\REUA[4] ), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    FD1P3AX CAWritten_4__607 (.D(D_out_4), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_4__607.GSR = "ENABLED";
    FD1P3AX CAWritten_3__608 (.D(D_out_3), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_3__608.GSR = "ENABLED";
    FD1P3AX CAWritten_2__609 (.D(D_out_2), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_2__609.GSR = "ENABLED";
    FD1P3AX CAWritten_1__610 (.D(D_out_1), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_1__610.GSR = "ENABLED";
    PFUMX i3490 (.BLUT(n3893), .ALUT(n3888), .C0(A_out_3), .Z(n3894));
    FD1P3AX CAWritten_0__611 (.D(D_out_0), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_0__611.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__653 (.D(D_out_6), .SP(PHI2_N_553_enable_42), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_14__653.GSR = "ENABLED";
    LUT4 mux_195_i1_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_0), .D(CAOut_15__N_145[0]), 
         .Z(n438[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_15__652 (.D(D_out_7), .SP(PHI2_N_553_enable_42), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(174[8] 186[4])
    defparam REUAWritten_15__652.GSR = "ENABLED";
    LUT4 mux_195_i2_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_1), .D(CAOut_15__N_145[1]), 
         .Z(n438[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_225_i7_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n508[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_225_i7_3_lut.init = 16'hcaca;
    LUT4 mux_195_i3_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_2), .D(CAOut_15__N_145[2]), 
         .Z(n438[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_195_i6_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_5), .D(CAOut_15__N_145[5]), 
         .Z(n438[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_195_i7_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_6), .D(CAOut_15__N_145[6]), 
         .Z(n438[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_238_i4_4_lut (.A(n3703), .B(n3940), .C(A_out_3), .D(A_out_0), 
         .Z(n566)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_238_i4_4_lut.init = 16'hcacc;
    LUT4 mux_195_i8_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_7), .D(CAOut_15__N_145[7]), 
         .Z(n438[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_195_i4_3_lut_4_lut (.A(n4048), .B(n4037), .C(D_out_3), .D(CAOut_15__N_145[3]), 
         .Z(n438[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_195_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4048), .B(n4041), .C(n4271), .D(D_out_7), 
         .Z(n3502)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.A(n4048), .B(n4041), .C(D_out_4), 
         .D(D_out_7), .Z(Execute_N_450)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_163.init = 16'h1000;
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_553_enable_75), 
            .CD(n4272), .CK(PHI2_N_553), .Q(\DF01Reserved32[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n4048), .B(n4041), .C(XferEnd), .D(n4271), 
         .Z(PHI2_N_553_enable_76)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hff1f;
    FD1P3AX CAWritten_9__626 (.D(D_out_1), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_9__626.GSR = "ENABLED";
    LUT4 n459_bdd_4_lut (.A(A_out_0), .B(Length[13]), .C(A_out_1), .D(VerifyErrMask), 
         .Z(n3920)) /* synthesis lut_function=(A (C+(D))+!A (B+(C))) */ ;
    defparam n459_bdd_4_lut.init = 16'hfef4;
    FD1P3AX CAWritten_8__627 (.D(D_out_0), .SP(PHI2_N_553_enable_45), .CK(PHI2_N_553), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(145[8] 156[4])
    defparam CAWritten_8__627.GSR = "ENABLED";
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_553_enable_75), .CD(n4272), 
            .CK(PHI2_N_553), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__679 (.D(n1195), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_7__679.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n4054), .B(n4048), .C(n4045), .D(n4271), 
         .Z(PHI2_N_553_enable_57)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX REUAWritten_0__643 (.D(D_out_0), .SP(PHI2_N_553_enable_70), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_0__643.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_553_enable_77), .CD(n4272), 
            .CK(PHI2_N_553), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(251[8] 254[4])
    defparam IncMode__i0.GSR = "ENABLED";
    FD1P3IX REUAWritten_1__642 (.D(D_out_1), .SP(PHI2_N_553_enable_70), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_1__642.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__641 (.D(D_out_2), .SP(PHI2_N_553_enable_70), 
            .CD(n4272), .CK(PHI2_N_553), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_2__641.GSR = "ENABLED";
    FD1P3JX Length_2__676 (.D(Length_2__N_377), .SP(PHI2_N_553_enable_65), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_2__676.GSR = "ENABLED";
    LUT4 DF01WR_I_0_841_2_lut_rep_71_3_lut_4_lut (.A(A_out_2), .B(n4059), 
         .C(PHI2_c), .D(n4041), .Z(n4026)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[2:14])
    defparam DF01WR_I_0_841_2_lut_rep_71_3_lut_4_lut.init = 16'h0010;
    LUT4 A_out_0_bdd_3_lut (.A(CA[13]), .B(Length[5]), .C(A_out_2), .Z(n3921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam A_out_0_bdd_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_6__680 (.D(n1220), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_6__680.GSR = "ENABLED";
    PFUMX i3531 (.BLUT(n3951), .ALUT(n3950), .C0(A_out_2), .Z(n3952));
    LUT4 i1_2_lut_rep_74_4_lut (.A(A_out_0), .B(n4045), .C(A_out_1), .D(n4044), 
         .Z(n4029)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_74_4_lut.init = 16'h0020;
    LUT4 mux_192_i2_4_lut (.A(\REUA[17] ), .B(REUAWritten[17]), .C(n4018), 
         .D(n4014), .Z(n435[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[18:34])
    defparam mux_192_i2_4_lut.init = 16'hc5ca;
    FD1P3IX REUAWritten_3__640 (.D(D_out_3), .SP(PHI2_N_553_enable_70), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_3__640.GSR = "ENABLED";
    LUT4 i3462_4_lut (.A(IntEnable), .B(EndOfBlock), .C(IRQOut_N_449), 
         .D(EndOfBlockMask), .Z(nIRQ_c)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;
    defparam i3462_4_lut.init = 16'h575f;
    FD1P3AX LengthWritten_5__681 (.D(n1218), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_5__681.GSR = "ENABLED";
    LUT4 mux_217_i1_3_lut (.A(\REUA[0] ), .B(\REUA[8] ), .C(A_out_0), 
         .Z(n484[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_217_i1_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_4__682 (.D(n4047), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_4__682.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_79_4_lut (.A(A_out_0), .B(n4045), .C(A_out_1), .D(n4048), 
         .Z(n4034)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_79_4_lut.init = 16'h0020;
    LUT4 A_out_0_bdd_2_lut (.A(CA[5]), .B(A_out_2), .Z(n3922)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut.init = 16'heeee;
    PFUMX i3355 (.BLUT(n456[0]), .ALUT(n472[0]), .C0(A_out_1), .Z(n3711));
    LUT4 i1_2_lut_4_lut_adj_164 (.A(XferType[1]), .B(D_out_1), .C(n4026), 
         .D(n4027), .Z(n4)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:70])
    defparam i1_2_lut_4_lut_adj_164.init = 16'h3500;
    CCU2D Length_15__I_0_839_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3321), .COUT(n3322), .S0(Length_15__N_307[5]), 
          .S1(Length_15__N_307[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(230[19:37])
    defparam Length_15__I_0_839_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_7.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_5 (.A0(\Length[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3320), .COUT(n3321), .S0(Length_15__N_307[3]), 
          .S1(Length_15__N_307[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(230[19:37])
    defparam Length_15__I_0_839_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3319), .COUT(n3320), .S0(Length_15__N_307[1]), 
          .S1(Length_15__N_307[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(230[19:37])
    defparam Length_15__I_0_839_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3319), .S1(Length_15__N_307[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(230[19:37])
    defparam Length_15__I_0_839_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_839_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut_4_lut_adj_165 (.A(n4045), .B(n4054), .C(n4271), 
         .D(n1458), .Z(PHI2_N_553_enable_73)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_165.init = 16'hf0f1;
    FD1P3IX Fault_588 (.D(Fault_N_467), .SP(PHI2_N_553_enable_57), .CD(RegReset), 
            .CK(PHI2_N_553), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(87[8] 104[4])
    defparam Fault_588.GSR = "ENABLED";
    PFUMX i3352 (.BLUT(n456[1]), .ALUT(n472[1]), .C0(A_out_1), .Z(n3708));
    LUT4 mux_192_i1_4_lut (.A(\REUA[16] ), .B(REUAWritten[16]), .C(n4018), 
         .D(n4017), .Z(n435[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[18:34])
    defparam mux_192_i1_4_lut.init = 16'hc5ca;
    LUT4 i340_2_lut_3_lut_4_lut (.A(n4045), .B(n4054), .C(n4271), .D(n4044), 
         .Z(PHI2_N_553_enable_70)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i340_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1_3_lut_rep_62 (.A(n13), .B(REUAOut_15__N_58), .C(n14), .Z(n4017)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_rep_62.init = 16'h8080;
    FD1P3AX LengthWritten_3__683 (.D(n1193), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_3__683.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__639 (.D(D_out_4), .SP(PHI2_N_553_enable_70), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_4__639.GSR = "ENABLED";
    LUT4 i660_2_lut_3_lut (.A(\REUA[16] ), .B(n4017), .C(\REUA[17] ), 
         .Z(n964)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[18:34])
    defparam i660_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_647_i5_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[12]), 
         .D(Length_15__N_307[4]), .Z(n952[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i5_3_lut_4_lut.init = 16'hf1e0;
    FD1P3JX Length_0__678 (.D(Length_0__N_387), .SP(PHI2_N_553_enable_65), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_0__678.GSR = "ENABLED";
    LUT4 i2180_2_lut_rep_77_4_lut (.A(A_out_0), .B(A_out_1), .C(n4045), 
         .D(n4048), .Z(n4032)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2180_2_lut_rep_77_4_lut.init = 16'hfffb;
    LUT4 Fault_I_0_846_2_lut (.A(Fault), .B(VerifyErrMask), .Z(IRQOut_N_449)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(248[3:27])
    defparam Fault_I_0_846_2_lut.init = 16'h8888;
    FD1P3JX Length_3__675 (.D(Length_3__N_372), .SP(PHI2_N_553_enable_65), 
            .PD(RegReset), .CK(PHI2_N_553), .Q(\Length[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_3__675.GSR = "ENABLED";
    FD1P3JX Length_4__674 (.D(Length_4__N_367), .SP(PHI2_N_553_enable_65), 
            .PD(RegReset), .CK(PHI2_N_553), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_4__674.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n4019), .B(PHI2_N_553_enable_67), .C(n4016), .D(Length1_N_618), 
         .Z(PHI2_N_553_enable_65)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfefc;
    LUT4 mux_213_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n472[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_213_i3_3_lut.init = 16'hcaca;
    LUT4 i3463_2_lut (.A(A_out_3), .B(A_out_1), .Z(n3749)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3463_2_lut.init = 16'heeee;
    LUT4 n3924_bdd_3_lut (.A(n4073), .B(n3923), .C(A_out_1), .Z(n3925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3924_bdd_3_lut.init = 16'hcaca;
    FD1P3JX Length_5__673 (.D(Length_5__N_362), .SP(PHI2_N_553_enable_65), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_5__673.GSR = "ENABLED";
    FD1P3JX Length_6__672 (.D(Length_6__N_357), .SP(PHI2_N_553_enable_65), 
            .PD(RegReset), .CK(PHI2_N_553), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_6__672.GSR = "ENABLED";
    FD1P3JX Length_7__671 (.D(Length_7__N_351), .SP(PHI2_N_553_enable_65), 
            .PD(RegReset), .CK(PHI2_N_553), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_7__671.GSR = "ENABLED";
    LUT4 A_out_0_bdd_2_lut_3507 (.A(CA[7]), .B(A_out_2), .Z(n3890)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3507.init = 16'heeee;
    FD1P3AX LengthWritten_2__684 (.D(n1212), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_2__684.GSR = "ENABLED";
    LUT4 i2121_2_lut (.A(DF01Reserved32[2]), .B(A_out_0), .Z(n456[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam i2121_2_lut.init = 16'h8888;
    LUT4 i2174_2_lut_rep_76_4_lut (.A(A_out_0), .B(A_out_1), .C(n4045), 
         .D(n4044), .Z(n4031)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2174_2_lut_rep_76_4_lut.init = 16'hfffd;
    FD1P3AX LengthWritten_1__685 (.D(n1210), .SP(PHI2_N_553_enable_67), 
            .CK(PHI2_N_553), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_1__685.GSR = "ENABLED";
    LUT4 i2119_2_lut (.A(D_out_7), .B(n4271), .Z(n1195)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam i2119_2_lut.init = 16'heeee;
    LUT4 i2176_2_lut_rep_80_4_lut (.A(A_out_0), .B(A_out_1), .C(n4045), 
         .D(n4048), .Z(n4035)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2176_2_lut_rep_80_4_lut.init = 16'hfffd;
    LUT4 i7_4_lut_adj_166 (.A(Length[2]), .B(n3698), .C(n3684), .D(n4019), 
         .Z(n3478)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7_4_lut_adj_166.init = 16'h0100;
    LUT4 n37_bdd_3_lut (.A(n37), .B(A_out_1), .C(\IncMode[1] ), .Z(n3888)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n37_bdd_3_lut.init = 16'he2e2;
    PFUMX i3349 (.BLUT(n456[2]), .ALUT(n472[2]), .C0(A_out_1), .Z(n3705));
    FD1P3IX REUAWritten_5__638 (.D(D_out_5), .SP(PHI2_N_553_enable_70), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_5__638.GSR = "ENABLED";
    PFUMX i3516 (.BLUT(n3925), .ALUT(n3920), .C0(A_out_3), .Z(n3926));
    LUT4 A_4__I_0_709_i9_2_lut_rep_81_3_lut_4_lut (.A(A_out_0), .B(A_out_1), 
         .C(n4059), .D(A_out_2), .Z(n4036)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam A_4__I_0_709_i9_2_lut_rep_81_3_lut_4_lut.init = 16'hfffe;
    LUT4 A_out_0_bdd_3_lut_3506 (.A(CA[15]), .B(A_out_2), .C(Length[7]), 
         .Z(n3889)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam A_out_0_bdd_3_lut_3506.init = 16'he2e2;
    FD1P3IX REUAWritten_6__637 (.D(D_out_6), .SP(PHI2_N_553_enable_70), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_6__637.GSR = "ENABLED";
    LUT4 i3328_2_lut (.A(Length[0]), .B(\Length[3] ), .Z(n3684)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3328_2_lut.init = 16'heeee;
    LUT4 i412_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4059), .C(n4271), .D(n4039), 
         .Z(PHI2_N_553_enable_21)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i412_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i2132_2_lut (.A(D_out_6), .B(n4271), .Z(n1220)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2132_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_167 (.A(Length[1]), .B(PHI2_N_553_enable_73), .C(n4015), 
         .D(n3478), .Z(PHI2_N_553_enable_84)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_167.init = 16'hfdfc;
    LUT4 mux_213_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n472[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_213_i2_3_lut.init = 16'hcaca;
    LUT4 i2120_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n456[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam i2120_2_lut.init = 16'h8888;
    FD1P3IX REUAWritten_7__636 (.D(D_out_7), .SP(PHI2_N_553_enable_70), 
            .CD(RegReset), .CK(PHI2_N_553), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(159[8] 171[4])
    defparam REUAWritten_7__636.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_78_3_lut_4_lut (.A(A_out_2), .B(n4059), .C(n4054), 
         .D(n4045), .Z(n4033)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i1_2_lut_rep_78_3_lut_4_lut.init = 16'hfffd;
    FD1P3AX CAWritten_7__604 (.D(D_out_7), .SP(PHI2_N_553_enable_71), .CK(PHI2_N_553), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(131[8] 142[4])
    defparam CAWritten_7__604.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__695 (.D(n1195), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_15__695.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__699 (.D(n1193), .SP(PHI2_N_553_enable_73), 
            .CK(PHI2_N_553), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam LengthWritten_11__699.GSR = "ENABLED";
    FD1P3AX FF00DecodeEN_593 (.D(n3600), .SP(PHI2_N_553_enable_76), .CK(PHI2_N_553), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam FF00DecodeEN_593.GSR = "ENABLED";
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_553_enable_75), .CD(RegReset), 
            .CK(PHI2_N_553), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 mux_213_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n472[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_213_i1_3_lut.init = 16'hcaca;
    LUT4 i2084_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n456[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam i2084_2_lut.init = 16'h8888;
    LUT4 XferType_1__I_0_i2_3_lut_rep_69_4_lut (.A(n4035), .B(PHI2_c), .C(D_out_1), 
         .D(XferType[1]), .Z(n4024)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:43])
    defparam XferType_1__I_0_i2_3_lut_rep_69_4_lut.init = 16'hfb40;
    LUT4 A_out_2_bdd_3_lut (.A(CA[14]), .B(A_out_1), .C(DF01Reserved6), 
         .Z(n3951)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut.init = 16'hb8b8;
    PFUMX i3514 (.BLUT(n3922), .ALUT(n3921), .C0(A_out_0), .Z(n3923));
    FD1P3AX ExecuteEN_590 (.D(n3502), .SP(PHI2_N_553_enable_76), .CK(PHI2_N_553), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[8] 127[4])
    defparam ExecuteEN_590.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut_adj_168 (.A(A_out_2), .B(n4059), .C(n4271), 
         .D(n4037), .Z(PHI2_N_553_enable_67)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i2_2_lut_3_lut_4_lut_adj_168.init = 16'hf2f0;
    LUT4 mux_647_i6_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[13]), 
         .D(Length_15__N_307[5]), .Z(n952[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 A_out_2_bdd_3_lut_3530 (.A(A_out_1), .B(Length[6]), .C(\REUA[14] ), 
         .Z(n3950)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3530.init = 16'hd8d8;
    LUT4 i372_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4059), .C(n4271), .D(n4041), 
         .Z(PHI2_N_553_enable_42)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i372_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i3420_3_lut_4_lut (.A(Length[10]), .B(n4054), .C(A_out_3), .D(n496[2]), 
         .Z(n3706)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam i3420_3_lut_4_lut.init = 16'hefe0;
    LUT4 n3892_bdd_3_lut (.A(n4064), .B(n3891), .C(A_out_1), .Z(n3893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3892_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_648_i3_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[2]), 
         .D(Length_7__N_354[2]), .Z(n953[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i652_2_lut_rep_59_4_lut (.A(n13), .B(REUAOut_15__N_58), .C(n14), 
         .D(\REUA[16] ), .Z(n4014)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i652_2_lut_rep_59_4_lut.init = 16'h8000;
    LUT4 mux_648_i4_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[3]), 
         .D(Length_7__N_354[3]), .Z(n953[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 CA_6__bdd_2_lut_3589 (.A(\REUA[6] ), .B(A_out_1), .Z(n3953)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_6__bdd_2_lut_3589.init = 16'heeee;
    LUT4 mux_648_i6_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[5]), 
         .D(Length_7__N_354[5]), .Z(n953[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 AutoloadEN_I_0_2_lut_rep_63 (.A(AutoloadEN), .B(XferEnd), .Z(n4018)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(84[17:38])
    defparam AutoloadEN_I_0_2_lut_rep_63.init = 16'h2222;
    LUT4 mux_647_i1_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[8]), 
         .D(Length_15__N_307[0]), .Z(n952[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_647_i4_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[11]), 
         .D(Length_15__N_307[3]), .Z(n952[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_648_i2_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[1]), 
         .D(Length_7__N_354[1]), .Z(n953[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 XferType_1__I_0_i1_3_lut_4_lut (.A(n4035), .B(PHI2_c), .C(D_out_0), 
         .D(XferType[0]), .Z(\XferType[0] )) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(128[27:43])
    defparam XferType_1__I_0_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_647_i8_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[15]), 
         .D(Length_15__N_307[7]), .Z(n952[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 CA_6__bdd_3_lut_3590 (.A(CA[6]), .B(EndOfBlock), .C(A_out_1), 
         .Z(n3954)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_6__bdd_3_lut_3590.init = 16'hacac;
    LUT4 mux_647_i2_3_lut_4_lut (.A(n4018), .B(n4029), .C(LengthWritten[9]), 
         .D(Length_15__N_307[1]), .Z(n952[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[15:50])
    defparam mux_647_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_648_i5_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[4]), 
         .D(Length_7__N_354[4]), .Z(n953[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_221_i1_3_lut (.A(\REUA[16] ), .B(Length[0]), .C(A_out_0), 
         .Z(n496[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_221_i1_3_lut.init = 16'hcaca;
    LUT4 mux_221_i2_3_lut (.A(\REUA[17] ), .B(Length[1]), .C(A_out_0), 
         .Z(n496[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_221_i2_3_lut.init = 16'hcaca;
    LUT4 i3418_3_lut_4_lut (.A(Length[9]), .B(n4054), .C(A_out_3), .D(n496[1]), 
         .Z(n3709)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam i3418_3_lut_4_lut.init = 16'hefe0;
    LUT4 i3416_3_lut_4_lut (.A(Length[8]), .B(n4054), .C(A_out_3), .D(n496[0]), 
         .Z(n3712)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam i3416_3_lut_4_lut.init = 16'hefe0;
    LUT4 i2_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), .Z(n1458)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[2:14])
    defparam i2_3_lut.init = 16'hefef;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_553_enable_77), .CD(RegReset), 
            .CK(PHI2_N_553), .Q(\IncMode[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(251[8] 254[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 mux_221_i3_3_lut (.A(\REUA[18] ), .B(Length[2]), .C(A_out_0), 
         .Z(n496[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_221_i3_3_lut.init = 16'hcaca;
    LUT4 i3442_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4059), .C(n4271), .D(n4039), 
         .Z(PHI2_N_553_enable_71)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[2:14])
    defparam i3442_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i3432_2_lut_3_lut_4_lut (.A(D_out_4), .B(n4271), .C(n4041), .D(n4048), 
         .Z(n3600)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i3432_2_lut_3_lut_4_lut.init = 16'h0001;
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_60), .C0(REUAWritten[14]), 
          .D0(\REUA[14] ), .A1(GND_net), .B1(REUAOut_15__N_60), .C1(REUAWritten[15]), 
          .D1(\REUA[15] ), .CIN(n3317), .S0(REUAOut_15__N_57[6]), .S1(REUAOut_15__N_57[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(184[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_60), .C0(REUAWritten[12]), 
          .D0(\REUA[12] ), .A1(GND_net), .B1(REUAOut_15__N_60), .C1(REUAWritten[13]), 
          .D1(\REUA[13] ), .CIN(n3316), .COUT(n3317), .S0(REUAOut_15__N_57[4]), 
          .S1(REUAOut_15__N_57[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(184[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_60), .C0(REUAWritten[10]), 
          .D0(\REUA[10] ), .A1(GND_net), .B1(REUAOut_15__N_60), .C1(REUAWritten[11]), 
          .D1(\REUA[11] ), .CIN(n3315), .COUT(n3316), .S0(REUAOut_15__N_57[2]), 
          .S1(REUAOut_15__N_57[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(184[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_58), .B0(REUAOut_15__N_60), 
          .C0(REUAWritten[8]), .D0(\REUA[8] ), .A1(GND_net), .B1(REUAOut_15__N_60), 
          .C1(REUAWritten[9]), .D1(\REUA[9] ), .CIN(n3314), .COUT(n3315), 
          .S0(REUAOut_15__N_57[0]), .S1(REUAOut_15__N_57[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(184[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4018), .B1(n4033), .C1(GND_net), .D1(GND_net), 
          .COUT(n3314));   // c:/users/garre/repos/gw4302/cpld/reg.v(184[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_105), .C0(REUAWritten[6]), 
          .D0(\REUA[6] ), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[7]), 
          .D1(\REUA[7] ), .CIN(n3309), .S0(REUAOut_7__N_104[6]), .S1(REUAOut_7__N_104[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(169[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_105), .C0(REUAWritten[4]), 
          .D0(\REUA[4] ), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[5]), 
          .D1(\REUA[5] ), .CIN(n3308), .COUT(n3309), .S0(REUAOut_7__N_104[4]), 
          .S1(REUAOut_7__N_104[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(169[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_105), .C0(REUAWritten[2]), 
          .D0(\REUA[2] ), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[3]), 
          .D1(\REUA[3] ), .CIN(n3307), .COUT(n3308), .S0(REUAOut_7__N_104[2]), 
          .S1(REUAOut_7__N_104[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(169[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_105), .C0(REUAWritten[0]), 
          .D0(\REUA[0] ), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[1]), 
          .D1(\REUA[1] ), .CIN(n3306), .COUT(n3307), .S0(REUAOut_7__N_104[0]), 
          .S1(REUAOut_7__N_104[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(169[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4018), .B1(n4031), .C1(GND_net), .D1(GND_net), 
          .COUT(n3306));   // c:/users/garre/repos/gw4302/cpld/reg.v(169[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_148), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3301), .S0(CAOut_15__N_145[6]), .S1(CAOut_15__N_145[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(154[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_148), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3300), .COUT(n3301), .S0(CAOut_15__N_145[4]), 
          .S1(CAOut_15__N_145[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(154[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_148), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3299), .COUT(n3300), .S0(CAOut_15__N_145[2]), 
          .S1(CAOut_15__N_145[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(154[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_146), .B0(CAOut_15__N_148), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n3298), .COUT(n3299), .S0(CAOut_15__N_145[0]), 
          .S1(CAOut_15__N_145[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(154[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4018), .B1(n4032), .C1(GND_net), .D1(GND_net), .COUT(n3298));   // c:/users/garre/repos/gw4302/cpld/reg.v(154[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_193), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n3293), .S0(CAOut_7__N_192[6]), .S1(CAOut_7__N_192[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(140[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_193), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n3292), .COUT(n3293), .S0(CAOut_7__N_192[4]), 
          .S1(CAOut_7__N_192[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(140[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_193), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n3291), .COUT(n3292), .S0(CAOut_7__N_192[2]), 
          .S1(CAOut_7__N_192[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(140[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_193), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n3290), .COUT(n3291), .S0(CAOut_7__N_192[0]), 
          .S1(CAOut_7__N_192[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(140[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4018), .B1(n4034), .C1(GND_net), .D1(GND_net), .COUT(n3290));   // c:/users/garre/repos/gw4302/cpld/reg.v(140[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 n457_bdd_3_lut_3526_else_3_lut (.A(IntPending), .B(ExecuteEN), 
         .C(A_out_0), .Z(n4062)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n457_bdd_3_lut_3526_else_3_lut.init = 16'hcaca;
    L6MUX21 i3510 (.D0(n3917), .D1(n3914), .SD(A_out_2), .Z(n3918));
    LUT4 i8_2_lut_rep_101 (.A(Length[4]), .B(Length[7]), .Z(n4056)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i8_2_lut_rep_101.init = 16'heeee;
    FD1P3JX Length_8__694 (.D(Length_8__N_346), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_8__694.GSR = "ENABLED";
    LUT4 i3342_3_lut_4_lut (.A(Length[4]), .B(Length[7]), .C(Length[6]), 
         .D(Length[5]), .Z(n3698)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i3342_3_lut_4_lut.init = 16'hfffe;
    LUT4 IncREUAg_I_122_2_lut (.A(IncMode[0]), .B(IncREUA), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[17:39])
    defparam IncREUAg_I_122_2_lut.init = 16'h4444;
    FD1P3JX Length_9__693 (.D(Length_9__N_341), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_9__693.GSR = "ENABLED";
    FD1P3JX Length_10__692 (.D(Length_10__N_336), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_10__692.GSR = "ENABLED";
    LUT4 mux_648_i8_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[7]), 
         .D(Length_7__N_354[7]), .Z(n953[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i8_3_lut_4_lut.init = 16'hf4b0;
    FD1P3JX Length_11__691 (.D(Length_11__N_331), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(\Length[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_11__691.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n15_adj_643), .B(n4019), .C(n13_adj_644), .D(n14_adj_645), 
         .Z(CAOut_15__N_146)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 mux_217_i2_3_lut (.A(\REUA[1] ), .B(\REUA[9] ), .C(A_out_0), 
         .Z(n484[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2] 82[7])
    defparam mux_217_i2_3_lut.init = 16'hcaca;
    LUT4 REUA_4__bdd_3_lut_3503 (.A(A_out_0), .B(A_out_1), .C(Length[12]), 
         .Z(n3911)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam REUA_4__bdd_3_lut_3503.init = 16'hfefe;
    LUT4 n459_bdd_3_lut_3539_then_3_lut (.A(\REUA[13] ), .B(\REUA[5] ), 
         .C(A_out_0), .Z(n4072)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n459_bdd_3_lut_3539_then_3_lut.init = 16'hacac;
    LUT4 i15_4_lut (.A(n17_adj_646), .B(n30), .C(n26), .D(n18), .Z(Length1_N_618)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 n459_bdd_3_lut_3539_else_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), 
         .Z(n4071)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n459_bdd_3_lut_3539_else_3_lut.init = 16'hcaca;
    PFUMX i3488 (.BLUT(n3890), .ALUT(n3889), .C0(A_out_0), .Z(n3891));
    PFUMX i3508 (.BLUT(n3916), .ALUT(n3915), .C0(A_out_0), .Z(n3917));
    LUT4 REUA_4__bdd_2_lut_3547 (.A(\REUA[4] ), .B(A_out_1), .Z(n3913)) /* synthesis lut_function=(A+(B)) */ ;
    defparam REUA_4__bdd_2_lut_3547.init = 16'heeee;
    LUT4 mux_201_i3_3_lut_4_lut (.A(n4044), .B(n4039), .C(D_out_2), .D(n435[2]), 
         .Z(n444[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_201_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_201_i2_3_lut_4_lut (.A(n4044), .B(n4039), .C(D_out_1), .D(n435[1]), 
         .Z(n444[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_201_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_12__690 (.D(Length_12__N_326), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_12__690.GSR = "ENABLED";
    LUT4 A_0__I_0_1_lut (.A(\REUA[0] ), .Z(A_0__N_542)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(148[12:17])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 REUA_4__bdd_3_lut_3546 (.A(A_out_1), .B(Length[4]), .C(\REUA[12] ), 
         .Z(n3912)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam REUA_4__bdd_3_lut_3546.init = 16'hd8d8;
    LUT4 i2130_2_lut_rep_92 (.A(D_out_4), .B(n4271), .Z(n4047)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2130_2_lut_rep_92.init = 16'heeee;
    LUT4 A_4__I_0_709_i6_2_lut_rep_99 (.A(A_out_0), .B(A_out_1), .Z(n4054)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam A_4__I_0_709_i6_2_lut_rep_99.init = 16'heeee;
    LUT4 i6_4_lut_adj_169 (.A(CA[4]), .B(CA[7]), .C(CA[0]), .D(CA[1]), 
         .Z(n15_adj_643)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_169.init = 16'h8000;
    FD1P3JX Length_13__689 (.D(Length_13__N_321), .SP(PHI2_N_553_enable_84), 
            .PD(n4272), .CK(PHI2_N_553), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam Length_13__689.GSR = "ENABLED";
    PFUMX i3504 (.BLUT(n3913), .ALUT(n3912), .C0(A_out_0), .Z(n3914));
    LUT4 i1_2_lut_adj_170 (.A(Length[0]), .B(Length[12]), .Z(n17_adj_646)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i1_2_lut_adj_170.init = 16'hdddd;
    LUT4 mux_201_i1_3_lut_4_lut (.A(n4044), .B(n4039), .C(D_out_0), .D(n435[0]), 
         .Z(n444[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_201_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i14_4_lut (.A(n27), .B(Length[10]), .C(n4056), .D(Length[15]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(Length[14]), .B(Length[5]), .C(Length[13]), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 mux_648_i7_3_lut_4_lut (.A(n4018), .B(n4030), .C(LengthWritten[6]), 
         .D(Length_7__N_354[6]), .Z(n953[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_648_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n4044), .B(n4037), .C(D_out_4), 
         .D(n953[4]), .Z(Length_4__N_367)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3344_4_lut (.A(Length[10]), .B(Length[12]), .C(Length[9]), .D(Length[13]), 
         .Z(n3700)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3344_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_171 (.A(Length[8]), .B(Length[1]), .Z(n11_adj_640)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_171.init = 16'h4444;
    LUT4 i1_2_lut_rep_104 (.A(A_out_3), .B(A_out_4), .Z(n4059)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i1_2_lut_rep_104.init = 16'heeee;
    LUT4 i11_4_lut (.A(n2395), .B(\RAMRDD[7] ), .C(DMA), .D(n3894), 
         .Z(\D_7__N_1[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i11_4_lut.init = 16'hcfca;
    LUT4 Autoload_I_0_805_2_lut_rep_60_3_lut_4_lut (.A(n4044), .B(n4037), 
         .C(XferEnd), .D(AutoloadEN), .Z(n4015)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam Autoload_I_0_805_2_lut_rep_60_3_lut_4_lut.init = 16'h4f44;
    LUT4 i1_2_lut_rep_89_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n4044)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i1_2_lut_rep_89_3_lut.init = 16'hefef;
    LUT4 i2_2_lut_adj_172 (.A(n3478), .B(\Length[11] ), .Z(n12_adj_641)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_172.init = 16'h2222;
    LUT4 i3330_2_lut (.A(Length[15]), .B(Length[14]), .Z(n3686)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3330_2_lut.init = 16'heeee;
    LUT4 i4_2_lut (.A(\IncMode[1] ), .B(CA[2]), .Z(n13_adj_644)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4_2_lut.init = 16'h4444;
    LUT4 i2052_3_lut_4_lut (.A(n4042), .B(n4036), .C(Fault), .D(SetVerifyErr), 
         .Z(Fault_N_467)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(95[15:36])
    defparam i2052_3_lut_4_lut.init = 16'hddd0;
    LUT4 i5_3_lut (.A(CA[3]), .B(CA[6]), .C(CA[5]), .Z(n14_adj_645)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    LUT4 i2_2_lut_adj_173 (.A(\Length[3] ), .B(Length[8]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2_2_lut_adj_173.init = 16'heeee;
    LUT4 i2051_3_lut_4_lut (.A(n4042), .B(n4036), .C(EndOfBlock), .D(SetEndOfBlock), 
         .Z(EndOfBlock_N_462)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(95[15:36])
    defparam i2051_3_lut_4_lut.init = 16'hddd0;
    LUT4 i11_4_lut_adj_174 (.A(Length[6]), .B(Length[9]), .C(\Length[11] ), 
         .D(Length[2]), .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i11_4_lut_adj_174.init = 16'hfffe;
    LUT4 i51_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), .Z(n37)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i51_3_lut.init = 16'hcaca;
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3326), .S0(Length_7__N_354[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3325), .COUT(n3326), .S0(Length_7__N_354[5]), 
          .S1(Length_7__N_354[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 i2128_2_lut (.A(D_out_3), .B(n4271), .Z(n1193)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 232[4])
    defparam i2128_2_lut.init = 16'heeee;
    LUT4 i2194_4_lut (.A(A_out_4), .B(A_out_3), .C(n2416), .D(A_out_2), 
         .Z(n2395)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2194_4_lut.init = 16'heeea;
    CCU2D Length_7__I_0_add_2_5 (.A0(\Length[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3324), .COUT(n3325), .S0(Length_7__N_354[3]), 
          .S1(Length_7__N_354[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 i2131_2_lut (.A(D_out_5), .B(n4271), .Z(n1218)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2131_2_lut.init = 16'heeee;
    LUT4 i2077_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2416)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2077_2_lut.init = 16'h8888;
    PFUMX i3574 (.BLUT(n4071), .ALUT(n4072), .C0(A_out_2), .Z(n4073));
    PFUMX i3568 (.BLUT(n4062), .ALUT(n4063), .C0(A_out_2), .Z(n4064));
    
endmodule
