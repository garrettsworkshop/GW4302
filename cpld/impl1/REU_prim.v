// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Thu Jan 20 14:41:50 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, nIRQ, RCLK, 
            nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, DQML, 
            RD) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(5[8:14])
    input BA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(7[8:10])
    inout [7:0]D;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(8[14:15])
    inout [15:0]A;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(9[15:16])
    input nWE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(10[8:11])
    output nWEDMA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(11[9:15])
    output nDMA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(12[9:13])
    input nIO2;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(13[8:12])
    output nAOE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(15[9:13])
    output ADIR;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(16[9:13])
    output nRWOE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(17[9:14])
    output nDOE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(18[9:13])
    output DDIR;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(19[9:13])
    output nIRQ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(21[9:13])
    output RCLK;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(23[9:13])
    output nCS;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(24[9:12])
    output nRAS;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(25[9:13])
    output nCAS;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(26[9:13])
    output nRWE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(27[9:13])
    output CKE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(28[9:12])
    output [1:0]RBA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(29[15:18])
    output [12:0]RA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    output DQMH;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(31[9:13])
    output DQML;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(32[9:13])
    inout [7:0]RD;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(33[14:16])
    
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_484 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(39[12:17])
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire nRESET_c, BA_c, n1313, n1311, n1309, n1307, nWE_c, nWEDMA_c, 
        nIO2_c, nAOE_c, nDOE_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, 
        nCAS_c, nRWE_c, CKE_c, RBA_c_1, RBA_c_0, RA_c_11, RA_c_10, 
        RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, 
        RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c, IRQ;
    wire [1:0]XferType;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(44[13:19])
    
    wire RAMWR, VerifyErr, AOE, Execute, nWEDMA_N_9;
    wire [7:0]D_7__N_1;
    
    wire VCC_net, n261, EndOfBlock, nFF00DecodeEN;
    wire [15:0]Length;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(50[12:18])
    
    wire IntEnable, EndOfBlockMask, Length1r, n569, n3577, n3360, 
        n2111, n3358, n2113, n2114, PHI2_N_544_enable_79, n3555, 
        PHI2_N_544_enable_42, n3537, n6, n18, n17, n3361, IRQOut_N_432, 
        n3341, n1272, n1270, GND_net, InitDone;
    wire [7:0]WRDr;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(215[12:16])
    
    wire PHI2Start_N_536, WRCMDr_N_500, A_0__N_525, n1264, SwapState, 
        n3366, RAMWR_N_546, n3365, NextREUA_N_568, n3364, n3381, 
        n648, n649, n651, n652, n653, n3066, n3312, PHI2_N_544_enable_55, 
        n3121, n3120, n3119, PHI2_N_544_enable_64, C8M_c_enable_19, 
        n2828, n3380, n3379, n4, PHI2_N_544_enable_62, n6_adj_599, 
        n7, n8, n2205, n3377, n1266, D_out_7, D_out_6, n3375, 
        D_out_5, D_out_4, D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, 
        A_out_14, A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, 
        A_out_8, n3374, A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, 
        RD_out_7, RD_out_6, RD_out_5, n1197, RD_out_4, RD_out_3, 
        RD_out_2, RD_out_1, RD_out_0, n3371, n1, n3370, n3369, 
        n2827, n3368;
    
    VHI i83 (.Z(VCC_net));
    INV i3012 (.A(C8M_c), .Z(C8M_N_484));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2827), .COUT(n2828));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    GSR GSR_INST (.GSR(VCC_net));
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DDIR_c), .B(D[2]), .O(D_out_2));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    L6MUX21 i2733 (.D0(n3119), .D1(n3120), .SD(A_out_0), .Z(n3121));
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DDIR_c), .B(D[4]), .O(D_out_4));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DDIR_c), .B(D[5]), .O(D_out_5));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DDIR_c), .B(D[6]), .O(D_out_6));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2827));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(91[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    INV i3011 (.A(PHI2_c), .Z(PHI2_N_544));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n3537), .B(RAMRDD[7]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 i1738_3_lut (.A(CA[8]), .B(Length[0]), .C(A_out_2), .Z(n2114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1738_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n652), .B(RAMRDD[1]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 i1737_3_lut (.A(XferType[0]), .B(REUA[8]), .C(A_out_2), .Z(n2113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1737_3_lut.init = 16'hcaca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n653), .B(RAMRDD[0]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    LUT4 m1_lut (.Z(n3577)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i1735_3_lut (.A(CA[0]), .B(REUA[16]), .C(A_out_2), .Z(n2111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1735_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(A_out_2), .B(REUA[0]), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    defparam i1_2_lut.init = 16'h8888;
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DDIR_c), .B(D[3]), .O(D_out_3));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2828), .S1(nWEDMA_N_9));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DDIR_c), .B(D[7]), .O(D_out_7));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DDIR_c), .B(D[1]), .O(D_out_1));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DDIR_c), .B(D[0]), .O(D_out_0));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n3374), .B(A[15]), .O(A_out_15));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n3374), .B(A[14]), .O(A_out_14));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3374), .B(A[13]), .O(A_out_13));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n3374), .B(A[12]), .O(A_out_12));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3374), .B(A[11]), .O(A_out_11));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3374), .B(A[10]), .O(A_out_10));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3374), .B(A[9]), .O(A_out_9));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3374), .B(A[8]), .O(A_out_8));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3374), .B(A[7]), .O(n8));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3374), .B(A[6]), .O(n7));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3374), .B(A[5]), .O(n6_adj_599));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3374), .B(A[4]), .O(A_out_4));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3374), .B(A[3]), .O(A_out_3));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3374), .B(A[2]), .O(A_out_2));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3374), .B(A[1]), .O(A_out_1));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3374), .B(A[0]), .O(A_out_0));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(116[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1197), .B(RD[7]), .O(RD_out_7));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1197), .B(RD[6]), .O(RD_out_6));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1197), .B(RD[5]), .O(RD_out_5));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1197), .B(RD[4]), .O(RD_out_4));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1197), .B(RD[3]), .O(RD_out_3));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1197), .B(RD[2]), .O(RD_out_2));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1197), .B(RD[1]), .O(RD_out_1));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1197), .B(RD[0]), .O(RD_out_0));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n3374), .O(nDMA));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_c), .O(nAOE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n3374), .O(ADIR));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(n3381), .O(nRWOE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_c), .O(nDOE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(18[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(19[9:13])
    OB nIRQ_pad (.I(IRQ), .O(nIRQ));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(21[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(23[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(24[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(25[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(26[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(27[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(28[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(29[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(29[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_11 (.I(RA_c_11), .O(RA[11]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_10 (.I(RA_c_10), .O(RA[10]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(31[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(32[9:13])
    IB C8M_pad (.I(C8M), .O(C8M_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(5[8:14])
    IB BA_pad (.I(BA), .O(BA_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(7[8:10])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(10[8:11])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(13[8:12])
    LUT4 i514_2_lut (.A(PHI2Start_N_536), .B(n261), .Z(C8M_c_enable_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i514_2_lut.init = 16'heeee;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n649), .B(RAMRDD[4]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n648), .B(RAMRDD[5]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n3555), .B(RAMRDD[6]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n651), .B(RAMRDD[2]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    DMASeq dmaseq (.AOE(AOE), .BA_c(BA_c), .n3312(n3312), .RAMWR(RAMWR), 
           .PHI2_N_544(PHI2_N_544), .n3374(n3374), .RAMWR_N_546(RAMWR_N_546), 
           .SwapState(SwapState), .n3381(n3381), .n3379(n3379), .D_out_7(D_out_7), 
           .n1266(n1266), .D_out_6(D_out_6), .n1313(n1313), .D_out_5(D_out_5), 
           .n1311(n1311), .D_out_4(D_out_4), .n1309(n1309), .D_out_3(D_out_3), 
           .n1307(n1307), .n3365(n3365), .n6(n6), .PHI2_N_544_enable_64(PHI2_N_544_enable_64), 
           .D_out_1(D_out_1), .n1270(n1270), .D_out_0(D_out_0), .n1264(n1264), 
           .n3368(n3368), .PHI2_N_544_enable_55(PHI2_N_544_enable_55), .D_out_2(D_out_2), 
           .n1272(n1272), .n3369(n3369), .Length1r(Length1r), .n3358(n3358), 
           .n3380(n3380), .\Length[0] (Length[0]), .n4(n4), .InitDone(InitDone), 
           .WRCMDr_N_500(WRCMDr_N_500), .nWEDMA_c(nWEDMA_c), .nRESET_c(nRESET_c), 
           .nAOE_c(nAOE_c), .Execute(Execute), .A_out_0(A_out_0), .n3366(n3366), 
           .A_out_1(A_out_1), .PHI2_N_544_enable_42(PHI2_N_544_enable_42), 
           .NextREUA_N_568(NextREUA_N_568), .XferType({XferType}), .n3361(n3361), 
           .VerifyErr(VerifyErr), .n3360(n3360), .PHI2_N_544_enable_79(PHI2_N_544_enable_79), 
           .n3371(n3371), .n3370(n3370), .PHI2_N_544_enable_62(PHI2_N_544_enable_62), 
           .nWEDMA_N_9(nWEDMA_N_9)) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(79[9] 93[50])
    PFUMX i2731 (.BLUT(n1), .ALUT(n2111), .C0(A_out_1), .Z(n3119));
    PFUMX i2732 (.BLUT(n2113), .ALUT(n2114), .C0(A_out_1), .Z(n3120));
    LUT4 i1745_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1745_3_lut.init = 16'hcaca;
    Glue glue (.AOE(AOE), .nIO2_c(nIO2_c), .n3375(n3375), .D_out_7(D_out_7), 
         .n3364(n3364), .nWE_c(nWE_c), .n3370(n3370), .BA_c(BA_c), .DDIR_c(DDIR_c), 
         .nDOE_c(nDOE_c), .A_out_2(A_out_2), .A_out_4(A_out_4), .n3377(n3377), 
         .A_out_1(A_out_1), .n7(n7), .n3066(n3066), .n6(n6_adj_599), 
         .IntEnable(IntEnable), .EndOfBlock(EndOfBlock), .IRQOut_N_432(IRQOut_N_432), 
         .EndOfBlockMask(EndOfBlockMask), .IRQ(IRQ), .A_out_13(A_out_13), 
         .A_out_8(A_out_8), .A_out_10(A_out_10), .n8(n8), .n17(n17), 
         .A_out_9(A_out_9), .A_out_12(A_out_12), .n18(n18), .A_out_3(A_out_3), 
         .A_out_15(A_out_15), .A_out_14(A_out_14), .A_out_11(A_out_11), 
         .nFF00DecodeEN(nFF00DecodeEN), .Execute(Execute)) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(95[7] 112[15])
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n3341), .B(RAMRDD[3]), .C(AOE), .D(n2205), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    REUReg reureg (.GND_net(GND_net), .n3369(n3369), .Length1r(Length1r), 
           .PHI2_N_544(PHI2_N_544), .n1264(n1264), .n1270(n1270), .\Length[0] (Length[0]), 
           .n1272(n1272), .n3379(n3379), .CA({CA}), .A_out_2(A_out_2), 
           .A_out_1(A_out_1), .n1307(n1307), .D_out_7(D_out_7), .D_out_0(D_out_0), 
           .A_out_0(A_out_0), .n1309(n1309), .D_out_1(D_out_1), .A_out_3(A_out_3), 
           .n3341(n3341), .VerifyErr(VerifyErr), .nWE_c(nWE_c), .n3375(n3375), 
           .n3364(n3364), .REUA({REUA}), .n1311(n1311), .n1313(n1313), 
           .D_out_2(D_out_2), .n1266(n1266), .D_out_3(D_out_3), .D_out_6(D_out_6), 
           .XferType({XferType}), .IntEnable(IntEnable), .EndOfBlockMask(EndOfBlockMask), 
           .D_out_5(D_out_5), .n3577(n3577), .EndOfBlock(EndOfBlock), 
           .nIO2_c(nIO2_c), .AOE(AOE), .n3368(n3368), .PHI2_N_544_enable_55(PHI2_N_544_enable_55), 
           .D_out_4(D_out_4), .n3365(n3365), .PHI2_N_544_enable_62(PHI2_N_544_enable_62), 
           .PHI2_N_544_enable_42(PHI2_N_544_enable_42), .PHI2_N_544_enable_64(PHI2_N_544_enable_64), 
           .PHI2_N_544_enable_79(PHI2_N_544_enable_79), .SwapState(SwapState), 
           .n3380(n3380), .NextREUA_N_568(NextREUA_N_568), .n3381(n3381), 
           .PHI2_c(PHI2_c), .n652(n652), .n3370(n3370), .n3121(n3121), 
           .n653(n653), .n3360(n3360), .A_out_4(A_out_4), .n3371(n3371), 
           .n3312(n3312), .nWEDMA_c(nWEDMA_c), .DDIR_c(DDIR_c), .n3377(n3377), 
           .IRQOut_N_432(IRQOut_N_432), .n569(n569), .n6(n6), .n3366(n3366), 
           .A_0__N_525(A_0__N_525), .n649(n649), .n648(n648), .n2205(n2205), 
           .n3555(n3555), .n3537(n3537), .n3358(n3358), .n4(n4), .nFF00DecodeEN(nFF00DecodeEN), 
           .RAMWR_N_546(RAMWR_N_546), .n18(n18), .n17(n17), .n3066(n3066), 
           .nWEDMA_N_9(nWEDMA_N_9), .n3361(n3361), .n651(n651)) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(56[9] 65[48])
    RAM ram (.C8M_N_484(C8M_N_484), .WRCMDr_N_500(WRCMDr_N_500), .InitDone(InitDone), 
        .n3577(n3577), .PHI2Start_N_536(PHI2Start_N_536), .REUA({REUA}), 
        .RAMWR(RAMWR), .C8M_c(C8M_c), .RBA_c_0(RBA_c_0), .C8M_c_enable_19(C8M_c_enable_19), 
        .n261(n261), .nRESET_c(nRESET_c), .PHI2_c(PHI2_c), .RAMRDD({RAMRDD}), 
        .RD_out_0(RD_out_0), .WRDr({WRDr}), .PHI2_N_544(PHI2_N_544), .D_out_0(D_out_0), 
        .nRAS_c(nRAS_c), .n1197(n1197), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
        .CKE_c(CKE_c), .DQMH_c(DQMH_c), .DQML_c(DQML_c), .A_0__N_525(A_0__N_525), 
        .RA_c_10(RA_c_10), .RA_c_9(RA_c_9), .RA_c_8(RA_c_8), .RA_c_7(RA_c_7), 
        .RA_c_6(RA_c_6), .RA_c_5(RA_c_5), .RA_c_4(RA_c_4), .RA_c_3(RA_c_3), 
        .RA_c_2(RA_c_2), .RA_c_1(RA_c_1), .RA_c_0(RA_c_0), .RCLK_c(RCLK_c), 
        .RBA_c_1(RBA_c_1), .RD_out_1(RD_out_1), .RA_c_11(RA_c_11), .RD_out_2(RD_out_2), 
        .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), 
        .RD_out_6(RD_out_6), .RD_out_7(RD_out_7), .D_out_1(D_out_1), .D_out_2(D_out_2), 
        .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), 
        .D_out_7(D_out_7), .nCS_c(nCS_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(67[6] 77[32])
    
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
// Verilog Description of module DMASeq
//

module DMASeq (AOE, BA_c, n3312, RAMWR, PHI2_N_544, n3374, RAMWR_N_546, 
            SwapState, n3381, n3379, D_out_7, n1266, D_out_6, n1313, 
            D_out_5, n1311, D_out_4, n1309, D_out_3, n1307, n3365, 
            n6, PHI2_N_544_enable_64, D_out_1, n1270, D_out_0, n1264, 
            n3368, PHI2_N_544_enable_55, D_out_2, n1272, n3369, Length1r, 
            n3358, n3380, \Length[0] , n4, InitDone, WRCMDr_N_500, 
            nWEDMA_c, nRESET_c, nAOE_c, Execute, A_out_0, n3366, 
            A_out_1, PHI2_N_544_enable_42, NextREUA_N_568, XferType, 
            n3361, VerifyErr, n3360, PHI2_N_544_enable_79, n3371, 
            n3370, PHI2_N_544_enable_62, nWEDMA_N_9) /* synthesis syn_module_defined=1 */ ;
    output AOE;
    input BA_c;
    input n3312;
    output RAMWR;
    input PHI2_N_544;
    output n3374;
    input RAMWR_N_546;
    output SwapState;
    output n3381;
    output n3379;
    input D_out_7;
    output n1266;
    input D_out_6;
    output n1313;
    input D_out_5;
    output n1311;
    input D_out_4;
    output n1309;
    input D_out_3;
    output n1307;
    input n3365;
    input n6;
    output PHI2_N_544_enable_64;
    input D_out_1;
    output n1270;
    input D_out_0;
    output n1264;
    input n3368;
    output PHI2_N_544_enable_55;
    input D_out_2;
    output n1272;
    input n3369;
    input Length1r;
    output n3358;
    input n3380;
    input \Length[0] ;
    output n4;
    input InitDone;
    output WRCMDr_N_500;
    output nWEDMA_c;
    input nRESET_c;
    output nAOE_c;
    input Execute;
    input A_out_0;
    input n3366;
    input A_out_1;
    output PHI2_N_544_enable_42;
    output NextREUA_N_568;
    input [1:0]XferType;
    input n3361;
    output VerifyErr;
    input n3360;
    output PHI2_N_544_enable_79;
    input n3371;
    input n3370;
    output PHI2_N_544_enable_62;
    input nWEDMA_N_9;
    
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire PHI2_N_544_enable_65, n1640, SwapState_N_548, nRESETr, RAMRD, 
        DMARW_N_561, RAMRD_N_540, DMAr, BAr, n3;
    
    LUT4 i1_2_lut_2_lut_3_lut (.A(AOE), .B(BA_c), .C(n3312), .Z(PHI2_N_544_enable_65)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(36[16:20])
    defparam i1_2_lut_2_lut_3_lut.init = 16'hd5d5;
    LUT4 i1_2_lut_3_lut (.A(AOE), .B(BA_c), .C(n3312), .Z(n1640)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3IX RAMWR_67 (.D(RAMWR_N_546), .CK(PHI2_N_544), .CD(n3374), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam RAMWR_67.GSR = "ENABLED";
    FD1S3IX SwapState_68 (.D(SwapState_N_548), .CK(PHI2_N_544), .CD(n3381), 
            .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(89[9] 93[5])
    defparam SwapState_68.GSR = "ENABLED";
    LUT4 i2810_2_lut_rep_59 (.A(nRESETr), .B(AOE), .Z(n3379)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2810_2_lut_rep_59.init = 16'h1111;
    LUT4 i1867_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_7), .Z(n1266)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1867_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1878_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_6), .Z(n1313)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1878_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1877_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_5), .Z(n1311)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1877_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1876_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_4), .Z(n1309)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1876_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1875_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_3), .Z(n1307)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1875_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i503_3_lut_4_lut (.A(nRESETr), .B(AOE), .C(n3365), .D(n6), 
         .Z(PHI2_N_544_enable_64)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;
    defparam i503_3_lut_4_lut.init = 16'h11f1;
    LUT4 i1869_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_1), .Z(n1270)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1869_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1813_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_0), .Z(n1264)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1813_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2788_2_lut_2_lut_3_lut_4_lut (.A(nRESETr), .B(AOE), .C(n3368), 
         .D(n6), .Z(PHI2_N_544_enable_55)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i2788_2_lut_2_lut_3_lut_4_lut.init = 16'h111f;
    LUT4 i1870_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_2), .Z(n1272)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1870_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2699_2_lut_rep_38_3_lut_3_lut_4_lut (.A(nRESETr), .B(AOE), .C(n3369), 
         .D(Length1r), .Z(n3358)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i2699_2_lut_rep_38_3_lut_3_lut_4_lut.init = 16'heee0;
    LUT4 i2794_2_lut_rep_61 (.A(AOE), .B(BA_c), .Z(n3381)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2794_2_lut_rep_61.init = 16'h7777;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(AOE), .B(BA_c), .C(n3380), .D(\Length[0] ), 
         .Z(n4)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_3_lut (.A(InitDone), .B(RAMWR), .C(RAMRD), .Z(WRCMDr_N_500)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_3_lut.init = 16'h2020;
    FD1S3AX DMARW_65 (.D(DMARW_N_561), .CK(PHI2_N_544), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam DMARW_65.GSR = "ENABLED";
    FD1S3AX RAMRD_66 (.D(RAMRD_N_540), .CK(PHI2_N_544), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam RAMRD_66.GSR = "ENABLED";
    FD1S3AX DMAr_69 (.D(AOE), .CK(PHI2_N_544), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(98[9] 102[5])
    defparam DMAr_69.GSR = "ENABLED";
    FD1S3AX BAr_70 (.D(BA_c), .CK(PHI2_N_544), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(98[9] 102[5])
    defparam BAr_70.GSR = "ENABLED";
    FD1S3AX nRESETr_71 (.D(nRESET_c), .CK(PHI2_N_544), .Q(nRESETr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(98[9] 102[5])
    defparam nRESETr_71.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(AOE), .B(BA_c), .Z(nAOE_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 SwapState_I_0_88_1_lut (.A(SwapState), .Z(SwapState_N_548)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(53[15] 57[9])
    defparam SwapState_I_0_88_1_lut.init = 16'h5555;
    FD1P3IX DMA_64 (.D(Execute), .SP(PHI2_N_544_enable_65), .CD(n1640), 
            .CK(PHI2_N_544), .Q(AOE)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam DMA_64.GSR = "ENABLED";
    LUT4 i892_2_lut_4_lut_4_lut (.A(n3379), .B(A_out_0), .C(n3366), .D(A_out_1), 
         .Z(PHI2_N_544_enable_42)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i892_2_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 SwapState_N_550_I_0_82_4_lut (.A(DMAr), .B(n3381), .C(n3), .D(BAr), 
         .Z(NextREUA_N_568)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(115[3:45])
    defparam SwapState_N_550_I_0_82_4_lut.init = 16'h3a30;
    LUT4 XferType_1__I_0_86_i3_2_lut (.A(XferType[0]), .B(XferType[1]), 
         .Z(n3)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(27[20:40])
    defparam XferType_1__I_0_86_i3_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n3379), .B(n3361), .C(VerifyErr), .D(n3360), 
         .Z(PHI2_N_544_enable_79)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfbff;
    LUT4 i872_2_lut_3_lut_4_lut_4_lut (.A(n3379), .B(n6), .C(n3371), .D(n3370), 
         .Z(PHI2_N_544_enable_62)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i872_2_lut_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 AOE_I_0_34_1_lut_rep_54 (.A(AOE), .Z(n3374)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(36[16:20])
    defparam AOE_I_0_34_1_lut_rep_54.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_4_lut (.A(AOE), .B(XferType[0]), .C(SwapState), 
         .D(XferType[1]), .Z(RAMRD_N_540)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(D))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(36[16:20])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hfdcc;
    LUT4 i3_4_lut (.A(XferType[0]), .B(n3381), .C(nWEDMA_N_9), .D(XferType[1]), 
         .Z(VerifyErr)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0200;
    LUT4 i1_3_lut_4_lut_4_lut (.A(AOE), .B(XferType[0]), .C(SwapState), 
         .D(XferType[1]), .Z(DMARW_N_561)) /* synthesis lut_function=(A (B (D)+!B (C+!(D)))+!A ((D)+!B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(36[16:20])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hfd33;
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (AOE, nIO2_c, n3375, D_out_7, n3364, nWE_c, n3370, 
            BA_c, DDIR_c, nDOE_c, A_out_2, A_out_4, n3377, A_out_1, 
            n7, n3066, n6, IntEnable, EndOfBlock, IRQOut_N_432, 
            EndOfBlockMask, IRQ, A_out_13, A_out_8, A_out_10, n8, 
            n17, A_out_9, A_out_12, n18, A_out_3, A_out_15, A_out_14, 
            A_out_11, nFF00DecodeEN, Execute) /* synthesis syn_module_defined=1 */ ;
    input AOE;
    input nIO2_c;
    output n3375;
    input D_out_7;
    input n3364;
    input nWE_c;
    output n3370;
    input BA_c;
    input DDIR_c;
    output nDOE_c;
    input A_out_2;
    input A_out_4;
    output n3377;
    input A_out_1;
    input n7;
    input n3066;
    input n6;
    input IntEnable;
    input EndOfBlock;
    input IRQOut_N_432;
    input EndOfBlockMask;
    output IRQ;
    input A_out_13;
    input A_out_8;
    input A_out_10;
    input n8;
    output n17;
    input A_out_9;
    input A_out_12;
    output n18;
    input A_out_3;
    input A_out_15;
    input A_out_14;
    input A_out_11;
    input nFF00DecodeEN;
    output Execute;
    
    
    wire Execute_N_587, n3097, Execute_N_590, n16;
    
    LUT4 i1840_2_lut_rep_55 (.A(AOE), .B(nIO2_c), .Z(n3375)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1840_2_lut_rep_55.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(AOE), .B(nIO2_c), .C(D_out_7), .D(n3364), 
         .Z(Execute_N_587)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_50_3_lut (.A(AOE), .B(nIO2_c), .C(nWE_c), .Z(n3370)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_50_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_4_lut (.A(AOE), .B(nIO2_c), .C(BA_c), .D(DDIR_c), 
         .Z(nDOE_c)) /* synthesis lut_function=(A ((D)+!C)+!A (B+(D))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hff4e;
    LUT4 i1871_2_lut_rep_57 (.A(A_out_2), .B(A_out_4), .Z(n3377)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1871_2_lut_rep_57.init = 16'heeee;
    LUT4 i2709_3_lut_4_lut (.A(A_out_2), .B(A_out_4), .C(nWE_c), .D(A_out_1), 
         .Z(n3097)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2709_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n7), .B(n3066), .C(n3097), .D(n6), .Z(Execute_N_590)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0004;
    LUT4 i2813_4_lut (.A(IntEnable), .B(EndOfBlock), .C(IRQOut_N_432), 
         .D(EndOfBlockMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(46[16:20])
    defparam i2813_4_lut.init = 16'h575f;
    LUT4 i7_4_lut (.A(A_out_13), .B(A_out_8), .C(A_out_10), .D(n8), 
         .Z(n17)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i7_4_lut.init = 16'h0080;
    LUT4 i8_3_lut (.A(A_out_9), .B(n16), .C(A_out_12), .Z(n18)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8_3_lut.init = 16'h8080;
    LUT4 i6_4_lut (.A(A_out_3), .B(A_out_15), .C(A_out_14), .D(A_out_11), 
         .Z(n16)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i6_4_lut.init = 16'h4000;
    PFUMX Execute_I_0 (.BLUT(Execute_N_590), .ALUT(Execute_N_587), .C0(nFF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=7, LSE_RCOL=15, LSE_LLINE=95, LSE_RLINE=112 */ ;
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (GND_net, n3369, Length1r, PHI2_N_544, n1264, n1270, 
            \Length[0] , n1272, n3379, CA, A_out_2, A_out_1, n1307, 
            D_out_7, D_out_0, A_out_0, n1309, D_out_1, A_out_3, 
            n3341, VerifyErr, nWE_c, n3375, n3364, REUA, n1311, 
            n1313, D_out_2, n1266, D_out_3, D_out_6, XferType, IntEnable, 
            EndOfBlockMask, D_out_5, n3577, EndOfBlock, nIO2_c, AOE, 
            n3368, PHI2_N_544_enable_55, D_out_4, n3365, PHI2_N_544_enable_62, 
            PHI2_N_544_enable_42, PHI2_N_544_enable_64, PHI2_N_544_enable_79, 
            SwapState, n3380, NextREUA_N_568, n3381, PHI2_c, n652, 
            n3370, n3121, n653, n3360, A_out_4, n3371, n3312, 
            nWEDMA_c, DDIR_c, n3377, IRQOut_N_432, n569, n6, n3366, 
            A_0__N_525, n649, n648, n2205, n3555, n3537, n3358, 
            n4, nFF00DecodeEN, RAMWR_N_546, n18, n17, n3066, nWEDMA_N_9, 
            n3361, n651) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n3369;
    output Length1r;
    input PHI2_N_544;
    input n1264;
    input n1270;
    output \Length[0] ;
    input n1272;
    input n3379;
    output [15:0]CA;
    input A_out_2;
    input A_out_1;
    input n1307;
    input D_out_7;
    input D_out_0;
    input A_out_0;
    input n1309;
    input D_out_1;
    input A_out_3;
    output n3341;
    input VerifyErr;
    input nWE_c;
    input n3375;
    output n3364;
    output [23:0]REUA;
    input n1311;
    input n1313;
    input D_out_2;
    input n1266;
    input D_out_3;
    input D_out_6;
    output [1:0]XferType;
    output IntEnable;
    output EndOfBlockMask;
    input D_out_5;
    input n3577;
    output EndOfBlock;
    input nIO2_c;
    input AOE;
    output n3368;
    input PHI2_N_544_enable_55;
    input D_out_4;
    output n3365;
    input PHI2_N_544_enable_62;
    input PHI2_N_544_enable_42;
    input PHI2_N_544_enable_64;
    input PHI2_N_544_enable_79;
    input SwapState;
    output n3380;
    input NextREUA_N_568;
    input n3381;
    input PHI2_c;
    output n652;
    input n3370;
    input n3121;
    output n653;
    output n3360;
    input A_out_4;
    output n3371;
    output n3312;
    input nWEDMA_c;
    output DDIR_c;
    input n3377;
    output IRQOut_N_432;
    input n569;
    output n6;
    output n3366;
    output A_0__N_525;
    output n649;
    output n648;
    output n2205;
    output n3555;
    output n3537;
    input n3358;
    input n4;
    output nFF00DecodeEN;
    output RAMWR_N_546;
    input n18;
    input n17;
    output n3066;
    input nWEDMA_N_9;
    output n3361;
    output n651;
    
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    
    wire n2932, n2928;
    wire [15:0]Length;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(50[12:18])
    wire [8:0]Length_7__N_342;
    
    wire n2927;
    wire [15:0]LengthWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(51[12:25])
    
    wire PHI2_N_544_enable_13, n2926, n2925, PHI2_N_544_enable_81, Length_7__N_339;
    wire [7:0]n522;
    wire [7:0]n556;
    
    wire n3139;
    wire [7:0]n635;
    wire [18:0]REUAWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(46[12:23])
    
    wire PHI2_N_544_enable_60;
    wire [8:0]Length_15__N_298;
    wire [7:0]n1017;
    
    wire PHI2_N_544_enable_41, n3338, n3340, PHI2_N_544_enable_20;
    wire [7:0]n520;
    
    wire n3122, n3123, n3124, n3352, n3354, n3127, n3233, n3339, 
        ExecuteENOut_N_436, PHI2_N_544_enable_63;
    wire [7:0]n568;
    
    wire ExecuteEN, n3533, n27, n3373, n30;
    wire [7:0]n1016;
    wire [7:0]n525;
    
    wire REUAOut_18__N_40, n3355, n3128, n3353, n3130, PHI2_N_544_enable_51, 
        n26, VerifyErrMask, IntPending, n1299, Fault, n3359;
    wire [31:0]REUAOut_15__N_56;
    wire [7:0]n524;
    wire [7:0]n625;
    
    wire n3378, n3101, n18_c;
    wire [15:0]CAWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(41[12:21])
    
    wire Length_6__N_349;
    wire [1:0]IncMode;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(60[11:18])
    wire [7:0]n580;
    wire [2:0]n523;
    
    wire n1028, n3137, n3138, n2937, NextREUA, n3367, Length1;
    wire [7:0]n592;
    
    wire nFF00DecodeEN_N_439, Length_13__N_309, Length_15__N_295, Length_12__N_314, 
        Length_11__N_319, n2935;
    wire [31:0]CAOut_7__N_186;
    
    wire n3382, n2924, n3310, n2934;
    wire [2:0]n518;
    
    wire n2933;
    wire [5:0]n667;
    
    wire AutoloadEN, n3534, n2923, n2922, n2921, Length_10__N_324, 
        n2919, n2918, Length_9__N_329, Length_14__N_304, n3532, Length_8__N_334, 
        n3531, n3535, n3536, n3549, n3550, n3551, n17_c, n3552, 
        n3553, n3349, n3554, n2917, n2916, REUAOut_15__N_57, n2911;
    wire [31:0]REUAOut_7__N_100;
    
    wire n2910, n2909, n2908, n3362, Length_3__N_364;
    wire [31:0]CAOut_15__N_142;
    
    wire n3363, n3356, Length_1__N_374, Length_5__N_354, n9, n14, 
        n10, n2201, n9_adj_593, n14_adj_594, n10_adj_595, CAOut_15__N_143, 
        n17_adj_596, n16, n3109, PHI2_N_544_enable_73, n3103, n2903, 
        n2902, n2901, n2900, Length_0__N_379, Length_4__N_359, Length_2__N_369;
    
    CCU2D add_809_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3369), .B1(Length1r), .C1(GND_net), .D1(GND_net), .COUT(n2932));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(129[14:23])
    defparam add_809_1.INIT0 = 16'hF000;
    defparam add_809_1.INIT1 = 16'hffff;
    defparam add_809_1.INJECT1_0 = "NO";
    defparam add_809_1.INJECT1_1 = "NO";
    CCU2D sub_84_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2928), .S0(Length_7__N_342[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(204[18:31])
    defparam sub_84_add_2_9.INIT0 = 16'h5555;
    defparam sub_84_add_2_9.INIT1 = 16'h0000;
    defparam sub_84_add_2_9.INJECT1_0 = "NO";
    defparam sub_84_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_84_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2927), .COUT(n2928), .S0(Length_7__N_342[5]), 
          .S1(Length_7__N_342[6]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(204[18:31])
    defparam sub_84_add_2_7.INIT0 = 16'h5555;
    defparam sub_84_add_2_7.INIT1 = 16'h5555;
    defparam sub_84_add_2_7.INJECT1_0 = "NO";
    defparam sub_84_add_2_7.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_8__661 (.D(n1264), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_8__661.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__660 (.D(n1270), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_9__660.GSR = "ENABLED";
    CCU2D sub_84_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2926), .COUT(n2927), .S0(Length_7__N_342[3]), 
          .S1(Length_7__N_342[4]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(204[18:31])
    defparam sub_84_add_2_5.INIT0 = 16'h5555;
    defparam sub_84_add_2_5.INIT1 = 16'h5555;
    defparam sub_84_add_2_5.INJECT1_0 = "NO";
    defparam sub_84_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_84_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2925), .COUT(n2926), .S0(Length_7__N_342[1]), 
          .S1(Length_7__N_342[2]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(204[18:31])
    defparam sub_84_add_2_3.INIT0 = 16'h5555;
    defparam sub_84_add_2_3.INIT1 = 16'h5555;
    defparam sub_84_add_2_3.INJECT1_0 = "NO";
    defparam sub_84_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_84_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\Length[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2925), .S1(Length_7__N_342[0]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(204[18:31])
    defparam sub_84_add_2_1.INIT0 = 16'hF000;
    defparam sub_84_add_2_1.INIT1 = 16'h5555;
    defparam sub_84_add_2_1.INJECT1_0 = "NO";
    defparam sub_84_add_2_1.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_10__659 (.D(n1272), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_10__659.GSR = "ENABLED";
    FD1P3JX Length_7__630 (.D(Length_7__N_339), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_7__630.GSR = "ENABLED";
    FD1S3IX CA_7__555 (.D(n522[7]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_7__555.GSR = "ENABLED";
    LUT4 mux_269_i3_4_lut (.A(n556[2]), .B(n3139), .C(A_out_2), .D(A_out_1), 
         .Z(n635[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_269_i3_4_lut.init = 16'hcac0;
    FD1P3AX LengthWritten_11__658 (.D(n1307), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_11__658.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__611 (.D(D_out_7), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_15__611.GSR = "ENABLED";
    LUT4 mux_678_i2_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[1]), 
         .D(LengthWritten[9]), .Z(n1017[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i2_3_lut_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX REUAWritten_0__602 (.D(D_out_0), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_0__602.GSR = "ENABLED";
    LUT4 n573_bdd_3_lut (.A(A_out_1), .B(Length[11]), .C(A_out_0), .Z(n3338)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n573_bdd_3_lut.init = 16'hfefe;
    FD1P3AX LengthWritten_12__657 (.D(n1309), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_12__657.GSR = "ENABLED";
    FD1P3IX REUAWritten_1__601 (.D(D_out_1), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_1__601.GSR = "ENABLED";
    LUT4 n3340_bdd_3_lut (.A(n3340), .B(n3338), .C(A_out_3), .Z(n3341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3340_bdd_3_lut.init = 16'hcaca;
    FD1S3IX CA_6__556 (.D(n522[6]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_6__556.GSR = "ENABLED";
    LUT4 i6_1_lut_rep_37_2_lut (.A(n3369), .B(Length1r), .Z(PHI2_N_544_enable_20)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6_1_lut_rep_37_2_lut.init = 16'h1111;
    FD1S3IX CA_5__557 (.D(n522[5]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_5__557.GSR = "ENABLED";
    FD1S3IX CA_4__558 (.D(n522[4]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_4__558.GSR = "ENABLED";
    FD1S3IX CA_3__559 (.D(n522[3]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_3__559.GSR = "ENABLED";
    FD1S3IX CA_2__560 (.D(n522[2]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_2__560.GSR = "ENABLED";
    FD1S3IX CA_1__561 (.D(n522[1]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_1__561.GSR = "ENABLED";
    FD1S3IX CA_0__562 (.D(n522[0]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_0__562.GSR = "ENABLED";
    FD1S3IX CA_15__571 (.D(n520[7]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_15__571.GSR = "ENABLED";
    L6MUX21 i2736 (.D0(n3122), .D1(n3123), .SD(A_out_2), .Z(n3124));
    L6MUX21 i2739 (.D0(n3352), .D1(n3354), .SD(A_out_2), .Z(n3127));
    PFUMX i2886 (.BLUT(n3233), .ALUT(n3339), .C0(A_out_2), .Z(n3340));
    LUT4 XferEnd_I_0_2_lut_3_lut (.A(n3369), .B(Length1r), .C(VerifyErr), 
         .Z(ExecuteENOut_N_436)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam XferEnd_I_0_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2785_2_lut_2_lut_3_lut_4_lut (.A(nWE_c), .B(n3375), .C(n3379), 
         .D(n3364), .Z(PHI2_N_544_enable_63)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i2785_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 mux_250_i4_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n568[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_250_i4_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_13__656 (.D(n1311), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_13__656.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__655 (.D(n1313), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_14__655.GSR = "ENABLED";
    LUT4 CA_15__bdd_3_lut_2988 (.A(CA[15]), .B(ExecuteEN), .C(A_out_1), 
         .Z(n3533)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_15__bdd_3_lut_2988.init = 16'hacac;
    FD1P3IX REUAWritten_2__600 (.D(D_out_2), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_2__600.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__654 (.D(n1266), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_15__654.GSR = "ENABLED";
    FD1S3IX CA_14__572 (.D(n520[6]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_14__572.GSR = "ENABLED";
    LUT4 i14_4_lut (.A(n27), .B(Length[13]), .C(n3373), .D(Length[11]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 mux_677_i4_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_7__N_342[3]), 
         .D(LengthWritten[3]), .Z(n1016[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_677_i4_3_lut_3_lut_4_lut.init = 16'hf1e0;
    FD1S3IX CA_13__573 (.D(n520[5]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_13__573.GSR = "ENABLED";
    FD1S3IX CA_12__574 (.D(n520[4]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_12__574.GSR = "ENABLED";
    FD1S3IX CA_11__575 (.D(n520[3]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_11__575.GSR = "ENABLED";
    FD1S3IX CA_10__576 (.D(n520[2]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_10__576.GSR = "ENABLED";
    FD1S3IX CA_9__577 (.D(n520[1]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_9__577.GSR = "ENABLED";
    FD1S3IX CA_8__578 (.D(n520[0]), .CK(PHI2_N_544), .CD(n3379), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_8__578.GSR = "ENABLED";
    FD1S3IX REUA_7__587 (.D(n525[7]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_7__587.GSR = "ENABLED";
    LUT4 mux_678_i1_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[0]), 
         .D(LengthWritten[8]), .Z(n1017[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX REUAWritten_3__599 (.D(D_out_3), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_3__599.GSR = "ENABLED";
    LUT4 mux_677_i3_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_7__N_342[2]), 
         .D(LengthWritten[2]), .Z(n1016[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_677_i3_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i682_2_lut_rep_35 (.A(REUA[16]), .B(REUAOut_18__N_40), .Z(n3355)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(189[18:31])
    defparam i682_2_lut_rep_35.init = 16'h8888;
    LUT4 mux_677_i7_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_7__N_342[6]), 
         .D(LengthWritten[6]), .Z(n1016[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_677_i7_3_lut_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX REUAWritten_14__612 (.D(D_out_6), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_14__612.GSR = "ENABLED";
    LUT4 mux_678_i6_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[5]), 
         .D(LengthWritten[13]), .Z(n1017[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i6_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_677_i1_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_7__N_342[0]), 
         .D(LengthWritten[0]), .Z(n1016[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_677_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    L6MUX21 i2742 (.D0(n3128), .D1(n3353), .SD(A_out_2), .Z(n3130));
    FD1P3AX LengthWritten_6__639 (.D(n1313), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_6__639.GSR = "ENABLED";
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_544_enable_63), .CD(n3379), 
            .CK(PHI2_N_544), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(98[8] 117[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1S3IX IntEnable_662 (.D(D_out_7), .CK(PHI2_N_544), .CD(n3379), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(224[8] 234[4])
    defparam IntEnable_662.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(Length[8]), .B(Length[3]), .C(Length[7]), .D(Length[10]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i10_4_lut.init = 16'hfffe;
    FD1P3AX LengthWritten_5__640 (.D(n1311), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_5__640.GSR = "ENABLED";
    FD1S3IX EndOfBlockMask_663 (.D(D_out_6), .CK(PHI2_N_544), .CD(n3379), 
            .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(224[8] 234[4])
    defparam EndOfBlockMask_663.GSR = "ENABLED";
    FD1S3IX VerifyErrMask_664 (.D(D_out_5), .CK(PHI2_N_544), .CD(n3379), 
            .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(224[8] 234[4])
    defparam VerifyErrMask_664.GSR = "ENABLED";
    FD1P3IX IntPending_548 (.D(n3577), .SP(ExecuteENOut_N_436), .CD(n1299), 
            .CK(PHI2_N_544), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(81[8] 95[4])
    defparam IntPending_548.GSR = "ENABLED";
    FD1P3AX LengthWritten_4__641 (.D(n1309), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_4__641.GSR = "ENABLED";
    FD1P3IX EndOfBlock_549 (.D(n3577), .SP(PHI2_N_544_enable_20), .CD(n1299), 
            .CK(PHI2_N_544), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(81[8] 95[4])
    defparam EndOfBlock_549.GSR = "ENABLED";
    FD1P3IX Fault_550 (.D(n3577), .SP(VerifyErr), .CD(n1299), .CK(PHI2_N_544), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(81[8] 95[4])
    defparam Fault_550.GSR = "ENABLED";
    FD1S3IX REUA_6__588 (.D(n525[6]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_6__588.GSR = "ENABLED";
    LUT4 mux_230_i2_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_1), 
         .D(REUAOut_15__N_56[1]), .Z(n524[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1884_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(Length[10]), 
         .Z(n625[2])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i1884_2_lut_3_lut.init = 16'hfefe;
    FD1S3IX REUA_5__589 (.D(n525[5]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_5__589.GSR = "ENABLED";
    FD1S3IX REUA_4__590 (.D(n525[4]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_4__590.GSR = "ENABLED";
    FD1S3IX REUA_3__591 (.D(n525[3]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_3__591.GSR = "ENABLED";
    FD1S3IX REUA_2__592 (.D(n525[2]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_2__592.GSR = "ENABLED";
    FD1S3IX REUA_1__593 (.D(n525[1]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_1__593.GSR = "ENABLED";
    FD1S3IX REUA_0__594 (.D(n525[0]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_0__594.GSR = "ENABLED";
    FD1S3IX REUA_15__603 (.D(n524[7]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_15__603.GSR = "ENABLED";
    LUT4 mux_677_i5_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_7__N_342[4]), 
         .D(LengthWritten[4]), .Z(n1016[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_677_i5_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_677_i6_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_7__N_342[5]), 
         .D(LengthWritten[5]), .Z(n1016[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_677_i6_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 A_4__I_0_667_i6_2_lut_rep_58 (.A(A_out_0), .B(A_out_1), .Z(n3378)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam A_4__I_0_667_i6_2_lut_rep_58.init = 16'heeee;
    LUT4 i2713_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(nIO2_c), 
         .D(AOE), .Z(n3101)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam i2713_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2800_2_lut_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3379), 
         .D(n3368), .Z(PHI2_N_544_enable_41)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam i2800_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3IX REUAWritten_6__596 (.D(D_out_6), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_6__596.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__642 (.D(n1307), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_3__642.GSR = "ENABLED";
    LUT4 mux_678_i4_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[3]), 
         .D(LengthWritten[11]), .Z(n1017[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i4_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut (.A(Length[1]), .B(Length[4]), .Z(n18_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX REUAWritten_16__629 (.D(D_out_0), .SP(PHI2_N_544_enable_55), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUAWritten_16__629.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__597 (.D(D_out_5), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_5__597.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__598 (.D(D_out_4), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_4__598.GSR = "ENABLED";
    LUT4 mux_678_i3_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[2]), 
         .D(LengthWritten[10]), .Z(n1017[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i3_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3379), .D(n3365), 
         .Z(PHI2_N_544_enable_13)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf1f0;
    FD1P3AX CAWritten_6__564 (.D(D_out_6), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_6__564.GSR = "ENABLED";
    FD1S3IX REUA_14__604 (.D(n524[6]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_14__604.GSR = "ENABLED";
    LUT4 mux_678_i5_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[4]), 
         .D(LengthWritten[12]), .Z(n1017[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i5_3_lut_3_lut_4_lut.init = 16'hf1e0;
    FD1S3IX REUA_13__605 (.D(n524[5]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_13__605.GSR = "ENABLED";
    FD1S3IX REUA_12__606 (.D(n524[4]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_12__606.GSR = "ENABLED";
    FD1S3IX REUA_11__607 (.D(n524[3]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_11__607.GSR = "ENABLED";
    FD1S3IX REUA_10__608 (.D(n524[2]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_10__608.GSR = "ENABLED";
    FD1S3IX REUA_9__609 (.D(n524[1]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_9__609.GSR = "ENABLED";
    FD1S3IX REUA_8__610 (.D(n524[0]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_8__610.GSR = "ENABLED";
    FD1P3AX CAWritten_5__565 (.D(D_out_5), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_5__565.GSR = "ENABLED";
    LUT4 mux_230_i3_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_2), 
         .D(REUAOut_15__N_56[2]), .Z(n524[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_678_i7_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[6]), 
         .D(LengthWritten[14]), .Z(n1017[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i7_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_678_i8_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_15__N_298[7]), 
         .D(LengthWritten[15]), .Z(n1017[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_678_i8_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_677_i2_3_lut_3_lut_4_lut (.A(n3369), .B(Length1r), .C(Length_7__N_342[1]), 
         .D(LengthWritten[1]), .Z(n1016[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_677_i2_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 Length_6__I_93_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_6), 
         .D(n1016[6]), .Z(Length_6__N_349)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_230_i4_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_3), 
         .D(REUAOut_15__N_56[3]), .Z(n524[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i4_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_1__569 (.D(D_out_1), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_1__569.GSR = "ENABLED";
    FD1P3AX CAWritten_10__584 (.D(D_out_2), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_10__584.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_544_enable_64), .CD(n3379), 
            .CK(PHI2_N_544), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(240[8] 243[4])
    defparam IncMode__i0.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__628 (.D(D_out_1), .SP(PHI2_N_544_enable_55), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUAWritten_17__628.GSR = "ENABLED";
    FD1P3AX CAWritten_0__570 (.D(D_out_0), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_0__570.GSR = "ENABLED";
    LUT4 mux_254_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n580[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_254_i2_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_15__579 (.D(D_out_7), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_15__579.GSR = "ENABLED";
    FD1S3IX REUA_18__624 (.D(n523[2]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_18__624.GSR = "ENABLED";
    LUT4 mux_250_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n568[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_250_i2_3_lut.init = 16'hcaca;
    LUT4 i690_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_40), .C(REUA[17]), 
         .Z(n1028)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(189[18:31])
    defparam i690_2_lut_3_lut.init = 16'h8080;
    FD1S3IX REUA_17__625 (.D(n523[1]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_17__625.GSR = "ENABLED";
    FD1S3IX REUA_16__626 (.D(n523[0]), .CK(PHI2_N_544), .CD(n3379), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_16__626.GSR = "ENABLED";
    FD1P3AX CAWritten_9__585 (.D(D_out_1), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_9__585.GSR = "ENABLED";
    FD1P3AX CAWritten_14__580 (.D(D_out_6), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_14__580.GSR = "ENABLED";
    LUT4 mux_230_i5_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_4), 
         .D(REUAOut_15__N_56[4]), .Z(n524[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i5_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_13__581 (.D(D_out_5), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_13__581.GSR = "ENABLED";
    FD1P3AX CAWritten_8__586 (.D(D_out_0), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_8__586.GSR = "ENABLED";
    FD1P3AX CAWritten_12__582 (.D(D_out_4), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_12__582.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(Length[12]), .B(Length[14]), .C(Length[15]), .D(Length[9]), 
         .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i11_4_lut.init = 16'hfffe;
    FD1P3IX REUAWritten_18__627 (.D(D_out_2), .SP(PHI2_N_544_enable_55), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUAWritten_18__627.GSR = "ENABLED";
    PFUMX i2751 (.BLUT(n3137), .ALUT(n3138), .C0(A_out_1), .Z(n3139));
    FD1P3IX REUA_19__623 (.D(D_out_3), .SP(PHI2_N_544_enable_55), .CD(n3379), 
            .CK(PHI2_N_544), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_19__623.GSR = "ENABLED";
    FD1P3IX REUAWritten_7__595 (.D(D_out_7), .SP(PHI2_N_544_enable_41), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_7__595.GSR = "ENABLED";
    LUT4 mux_230_i6_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_5), 
         .D(REUAOut_15__N_56[5]), .Z(n524[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i6_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_11__583 (.D(D_out_3), .SP(PHI2_N_544_enable_42), .CK(PHI2_N_544), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_11__583.GSR = "ENABLED";
    FD1P3AX LengthWritten_2__643 (.D(n1272), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_2__643.GSR = "ENABLED";
    FD1P3AX LengthWritten_1__644 (.D(n1270), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_1__644.GSR = "ENABLED";
    LUT4 mux_230_i7_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_6), 
         .D(REUAOut_15__N_56[6]), .Z(n524[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i7_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX ExecuteEN_551 (.D(n2937), .SP(PHI2_N_544_enable_79), .CK(PHI2_N_544), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(98[8] 117[4])
    defparam ExecuteEN_551.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_60 (.A(XferType[1]), .B(SwapState), .C(XferType[0]), 
         .Z(n3380)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(32[6:15])
    defparam i2_3_lut_rep_60.init = 16'hfdfd;
    LUT4 NextREUA_I_0_2_lut_4_lut (.A(XferType[1]), .B(SwapState), .C(XferType[0]), 
         .D(NextREUA_N_568), .Z(NextREUA)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(32[6:15])
    defparam NextREUA_I_0_2_lut_4_lut.init = 16'hfd00;
    LUT4 i1_2_lut_rep_47_2_lut_4_lut (.A(XferType[1]), .B(SwapState), .C(XferType[0]), 
         .D(n3381), .Z(n3367)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(32[6:15])
    defparam i1_2_lut_rep_47_2_lut_4_lut.init = 16'h00fd;
    FD1S3AX Length1r_547 (.D(Length1), .CK(PHI2_c), .Q(Length1r)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(79[8:44])
    defparam Length1r_547.GSR = "ENABLED";
    LUT4 mux_271_i2_4_lut (.A(n3124), .B(Length[9]), .C(A_out_3), .D(n3378), 
         .Z(n652)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_271_i2_4_lut.init = 16'hfaca;
    LUT4 mux_258_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n592[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_258_i8_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(n3370), .B(n3364), .C(D_out_7), .D(n3379), 
         .Z(n2937)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_4_lut_adj_128 (.A(n3370), .B(n3364), .C(D_out_4), .D(n3379), 
         .Z(nFF00DecodeEN_N_439)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_128.init = 16'hfffe;
    FD1P3IX REUA_20__622 (.D(D_out_4), .SP(PHI2_N_544_enable_55), .CD(n3379), 
            .CK(PHI2_N_544), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_20__622.GSR = "ENABLED";
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_5), 
         .D(n1017[5]), .Z(Length_13__N_309)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_7), 
         .D(n1017[7]), .Z(Length_15__N_295)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_4), 
         .D(n1017[4]), .Z(Length_12__N_314)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUA_21__621 (.D(D_out_5), .SP(PHI2_N_544_enable_55), .CD(n3379), 
            .CK(PHI2_N_544), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_21__621.GSR = "ENABLED";
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_3), 
         .D(n1017[3]), .Z(Length_11__N_319)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_271_i1_4_lut (.A(n3121), .B(n3378), .C(A_out_3), .D(Length[8]), 
         .Z(n653)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_271_i1_4_lut.init = 16'hfaca;
    CCU2D add_809_9 (.A0(GND_net), .B0(n3360), .C0(CAWritten[6]), .D0(CA[6]), 
          .A1(GND_net), .B1(n3360), .C1(CAWritten[7]), .D1(CA[7]), .CIN(n2935), 
          .S0(CAOut_7__N_186[6]), .S1(CAOut_7__N_186[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(129[14:23])
    defparam add_809_9.INIT0 = 16'h569a;
    defparam add_809_9.INIT1 = 16'h569a;
    defparam add_809_9.INJECT1_0 = "NO";
    defparam add_809_9.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_12__614 (.D(D_out_4), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_12__614.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_62 (.A(A_out_3), .B(A_out_4), .Z(n3382)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam i1_2_lut_rep_62.init = 16'heeee;
    LUT4 i1_2_lut_rep_51_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3371)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam i1_2_lut_rep_51_3_lut.init = 16'hfefe;
    CCU2D sub_85_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2924), .S0(Length_15__N_298[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(219[19:33])
    defparam sub_85_add_2_9.INIT0 = 16'h5555;
    defparam sub_85_add_2_9.INIT1 = 16'h0000;
    defparam sub_85_add_2_9.INJECT1_0 = "NO";
    defparam sub_85_add_2_9.INJECT1_1 = "NO";
    FD1P3IX REUA_22__620 (.D(D_out_6), .SP(PHI2_N_544_enable_55), .CD(n3379), 
            .CK(PHI2_N_544), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_22__620.GSR = "ENABLED";
    PFUMX i2871 (.BLUT(Length1), .ALUT(n3310), .C0(XferType[1]), .Z(n3312));
    FD1P3AX LengthWritten_7__638 (.D(n1266), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_7__638.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__645 (.D(n1264), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_0__645.GSR = "ENABLED";
    CCU2D add_809_7 (.A0(GND_net), .B0(n3360), .C0(CAWritten[4]), .D0(CA[4]), 
          .A1(GND_net), .B1(n3360), .C1(CAWritten[5]), .D1(CA[5]), .CIN(n2934), 
          .COUT(n2935), .S0(CAOut_7__N_186[4]), .S1(CAOut_7__N_186[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(129[14:23])
    defparam add_809_7.INIT0 = 16'h569a;
    defparam add_809_7.INIT1 = 16'h569a;
    defparam add_809_7.INJECT1_0 = "NO";
    defparam add_809_7.INJECT1_1 = "NO";
    FD1P3AX CAWritten_7__563 (.D(D_out_7), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_7__563.GSR = "ENABLED";
    FD1P3AX CAWritten_4__566 (.D(D_out_4), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_4__566.GSR = "ENABLED";
    LUT4 mux_224_i3_4_lut_4_lut (.A(n3360), .B(n1028), .C(REUAWritten[18]), 
         .D(REUA[18]), .Z(n518[2])) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(C))) */ ;
    defparam mux_224_i3_4_lut_4_lut.init = 16'h72d8;
    CCU2D add_809_5 (.A0(GND_net), .B0(n3360), .C0(CAWritten[2]), .D0(CA[2]), 
          .A1(GND_net), .B1(n3360), .C1(CAWritten[3]), .D1(CA[3]), .CIN(n2933), 
          .COUT(n2934), .S0(CAOut_7__N_186[2]), .S1(CAOut_7__N_186[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(129[14:23])
    defparam add_809_5.INIT0 = 16'h569a;
    defparam add_809_5.INIT1 = 16'h569a;
    defparam add_809_5.INJECT1_0 = "NO";
    defparam add_809_5.INJECT1_1 = "NO";
    CCU2D add_809_3 (.A0(n3367), .B0(n3360), .C0(CAWritten[0]), .D0(CA[0]), 
          .A1(GND_net), .B1(n3360), .C1(CAWritten[1]), .D1(CA[1]), .CIN(n2932), 
          .COUT(n2933), .S0(CAOut_7__N_186[0]), .S1(CAOut_7__N_186[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(129[14:23])
    defparam add_809_3.INIT0 = 16'h74b8;
    defparam add_809_3.INIT1 = 16'h569a;
    defparam add_809_3.INJECT1_0 = "NO";
    defparam add_809_3.INJECT1_1 = "NO";
    PFUMX i2740 (.BLUT(n667[3]), .ALUT(n556[5]), .C0(A_out_1), .Z(n3128));
    FD1P3IX AutoloadEN_553 (.D(D_out_6), .SP(PHI2_N_544_enable_63), .CD(n3379), 
            .CK(PHI2_N_544), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(98[8] 117[4])
    defparam AutoloadEN_553.GSR = "ENABLED";
    LUT4 mux_230_i8_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_7), 
         .D(REUAOut_15__N_56[7]), .Z(n524[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2054_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(AOE), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(52[7:10])
    defparam i2054_3_lut.init = 16'hc5c5;
    LUT4 CA_15__bdd_3_lut (.A(IntPending), .B(CA[7]), .C(A_out_1), .Z(n3534)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam CA_15__bdd_3_lut.init = 16'hcaca;
    CCU2D sub_85_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2923), .COUT(n2924), .S0(Length_15__N_298[5]), 
          .S1(Length_15__N_298[6]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(219[19:33])
    defparam sub_85_add_2_7.INIT0 = 16'h5555;
    defparam sub_85_add_2_7.INIT1 = 16'h5555;
    defparam sub_85_add_2_7.INJECT1_0 = "NO";
    defparam sub_85_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_85_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2922), .COUT(n2923), .S0(Length_15__N_298[3]), 
          .S1(Length_15__N_298[4]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(219[19:33])
    defparam sub_85_add_2_5.INIT0 = 16'h5555;
    defparam sub_85_add_2_5.INIT1 = 16'h5555;
    defparam sub_85_add_2_5.INJECT1_0 = "NO";
    defparam sub_85_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_85_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2921), .COUT(n2922), .S0(Length_15__N_298[1]), 
          .S1(Length_15__N_298[2]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(219[19:33])
    defparam sub_85_add_2_3.INIT0 = 16'h5555;
    defparam sub_85_add_2_3.INIT1 = 16'h5555;
    defparam sub_85_add_2_3.INJECT1_0 = "NO";
    defparam sub_85_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_85_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Length[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2921), .S1(Length_15__N_298[0]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(219[19:33])
    defparam sub_85_add_2_1.INIT0 = 16'hF000;
    defparam sub_85_add_2_1.INIT1 = 16'h5555;
    defparam sub_85_add_2_1.INJECT1_0 = "NO";
    defparam sub_85_add_2_1.INJECT1_1 = "NO";
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_2), 
         .D(n1017[2]), .Z(Length_10__N_324)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfb40;
    CCU2D add_812_9 (.A0(GND_net), .B0(n3360), .C0(REUAWritten[14]), .D0(REUA[14]), 
          .A1(GND_net), .B1(n3360), .C1(REUAWritten[15]), .D1(REUA[15]), 
          .CIN(n2919), .S0(REUAOut_15__N_56[6]), .S1(REUAOut_15__N_56[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(173[17:29])
    defparam add_812_9.INIT0 = 16'h569a;
    defparam add_812_9.INIT1 = 16'h569a;
    defparam add_812_9.INJECT1_0 = "NO";
    defparam add_812_9.INJECT1_1 = "NO";
    CCU2D add_812_7 (.A0(GND_net), .B0(n3360), .C0(REUAWritten[12]), .D0(REUA[12]), 
          .A1(GND_net), .B1(n3360), .C1(REUAWritten[13]), .D1(REUA[13]), 
          .CIN(n2918), .COUT(n2919), .S0(REUAOut_15__N_56[4]), .S1(REUAOut_15__N_56[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(173[17:29])
    defparam add_812_7.INIT0 = 16'h569a;
    defparam add_812_7.INIT1 = 16'h569a;
    defparam add_812_7.INJECT1_0 = "NO";
    defparam add_812_7.INJECT1_1 = "NO";
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_1), 
         .D(n1017[1]), .Z(Length_9__N_329)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2_3_lut_rep_45_4_lut (.A(nWE_c), .B(n3375), .C(n3377), .D(A_out_3), 
         .Z(n3365)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_45_4_lut.init = 16'h0100;
    FD1P3IX REUA_23__619 (.D(D_out_7), .SP(PHI2_N_544_enable_55), .CD(n3379), 
            .CK(PHI2_N_544), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_23__619.GSR = "ENABLED";
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_6), 
         .D(n1017[6]), .Z(Length_14__N_304)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfb40;
    LUT4 VerifyErr_I_0_2_lut (.A(VerifyErr), .B(VerifyErrMask), .Z(IRQOut_N_432)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(237[3:31])
    defparam VerifyErr_I_0_2_lut.init = 16'h8888;
    FD1P3IX REUAWritten_8__618 (.D(D_out_0), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_8__618.GSR = "ENABLED";
    LUT4 n569_bdd_4_lut (.A(n569), .B(A_out_0), .C(A_out_1), .D(Length[7]), 
         .Z(n3532)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam n569_bdd_4_lut.init = 16'hfa3a;
    FD1P3IX REUAWritten_9__617 (.D(D_out_1), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_9__617.GSR = "ENABLED";
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n3378), .B(n3365), .C(D_out_0), 
         .D(n1017[0]), .Z(Length_8__N_334)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_228_i8_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_7), .D(CAOut_7__N_186[7]), 
         .Z(n522[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_10__616 (.D(D_out_2), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_10__616.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__615 (.D(D_out_3), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_11__615.GSR = "ENABLED";
    FD1P3IX REUAWritten_13__613 (.D(D_out_5), .SP(PHI2_N_544_enable_60), 
            .CD(n3379), .CK(PHI2_N_544), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_13__613.GSR = "ENABLED";
    LUT4 n593_bdd_3_lut (.A(n592[7]), .B(IncMode[1]), .C(A_out_1), .Z(n3531)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n593_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_228_i7_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_6), .D(CAOut_7__N_186[6]), 
         .Z(n522[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_3__567 (.D(D_out_3), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_3__567.GSR = "ENABLED";
    LUT4 n3535_bdd_3_lut (.A(n3535), .B(n3532), .C(A_out_2), .Z(n3536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3535_bdd_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_2__568 (.D(D_out_2), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_2__568.GSR = "ENABLED";
    LUT4 mux_230_i1_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_0), 
         .D(REUAOut_15__N_56[0]), .Z(n524[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_230_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_544_enable_63), .CD(n3379), 
            .CK(PHI2_N_544), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(98[8] 117[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 mux_228_i6_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_5), .D(CAOut_7__N_186[5]), 
         .Z(n522[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_228_i5_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_4), .D(CAOut_7__N_186[4]), 
         .Z(n522[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_246_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n556[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_246_i2_3_lut.init = 16'hcaca;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_525)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(177[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 i1847_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n667[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i1847_2_lut.init = 16'h8888;
    LUT4 n3549_bdd_3_lut (.A(n3549), .B(IncMode[0]), .C(A_out_1), .Z(n3550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3549_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_250_i6_3_lut (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), .Z(n568[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_250_i6_3_lut.init = 16'hcaca;
    LUT4 CA_14__bdd_2_lut (.A(CA[14]), .B(A_out_1), .Z(n3551)) /* synthesis lut_function=(A (B)) */ ;
    defparam CA_14__bdd_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(\Length[0] ), .B(Length[6]), .Z(n17_c)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 mux_228_i4_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_3), .D(CAOut_7__N_186[3]), 
         .Z(n522[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_228_i3_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_2), .D(CAOut_7__N_186[2]), 
         .Z(n522[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_228_i2_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_1), .D(CAOut_7__N_186[1]), 
         .Z(n522[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_228_i1_3_lut_4_lut (.A(n6), .B(n3366), .C(D_out_0), .D(CAOut_7__N_186[0]), 
         .Z(n522[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_250_i5_3_lut (.A(REUA[4]), .B(REUA[12]), .C(A_out_0), .Z(n568[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_250_i5_3_lut.init = 16'hcaca;
    LUT4 CA_14__bdd_3_lut (.A(A_out_1), .B(CA[6]), .C(EndOfBlock), .Z(n3552)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam CA_14__bdd_3_lut.init = 16'hd8d8;
    LUT4 Length_14__bdd_3_lut (.A(Length[14]), .B(A_out_0), .C(EndOfBlockMask), 
         .Z(n3549)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Length_14__bdd_3_lut.init = 16'he2e2;
    LUT4 n3553_bdd_3_lut (.A(n3553), .B(n3349), .C(A_out_2), .Z(n3554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3553_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_246_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n556[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_246_i5_3_lut.init = 16'hcaca;
    CCU2D add_812_5 (.A0(GND_net), .B0(n3360), .C0(REUAWritten[10]), .D0(REUA[10]), 
          .A1(GND_net), .B1(n3360), .C1(REUAWritten[11]), .D1(REUA[11]), 
          .CIN(n2917), .COUT(n2918), .S0(REUAOut_15__N_56[2]), .S1(REUAOut_15__N_56[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(173[17:29])
    defparam add_812_5.INIT0 = 16'h569a;
    defparam add_812_5.INIT1 = 16'h569a;
    defparam add_812_5.INJECT1_0 = "NO";
    defparam add_812_5.INJECT1_1 = "NO";
    CCU2D add_812_3 (.A0(REUAOut_15__N_57), .B0(n3360), .C0(REUAWritten[8]), 
          .D0(REUA[8]), .A1(GND_net), .B1(n3360), .C1(REUAWritten[9]), 
          .D1(REUA[9]), .CIN(n2916), .COUT(n2917), .S0(REUAOut_15__N_56[0]), 
          .S1(REUAOut_15__N_56[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(173[17:29])
    defparam add_812_3.INIT0 = 16'h74b8;
    defparam add_812_3.INIT1 = 16'h569a;
    defparam add_812_3.INJECT1_0 = "NO";
    defparam add_812_3.INJECT1_1 = "NO";
    CCU2D add_812_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3369), .B1(Length1r), .C1(GND_net), .D1(GND_net), .COUT(n2916));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(173[17:29])
    defparam add_812_1.INIT0 = 16'hF000;
    defparam add_812_1.INIT1 = 16'hffff;
    defparam add_812_1.INJECT1_0 = "NO";
    defparam add_812_1.INJECT1_1 = "NO";
    CCU2D add_811_9 (.A0(GND_net), .B0(n3360), .C0(REUAWritten[6]), .D0(REUA[6]), 
          .A1(GND_net), .B1(n3360), .C1(REUAWritten[7]), .D1(REUA[7]), 
          .CIN(n2911), .S0(REUAOut_7__N_100[6]), .S1(REUAOut_7__N_100[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(158[16:27])
    defparam add_811_9.INIT0 = 16'h569a;
    defparam add_811_9.INIT1 = 16'h569a;
    defparam add_811_9.INJECT1_0 = "NO";
    defparam add_811_9.INJECT1_1 = "NO";
    CCU2D add_811_7 (.A0(GND_net), .B0(n3360), .C0(REUAWritten[4]), .D0(REUA[4]), 
          .A1(GND_net), .B1(n3360), .C1(REUAWritten[5]), .D1(REUA[5]), 
          .CIN(n2910), .COUT(n2911), .S0(REUAOut_7__N_100[4]), .S1(REUAOut_7__N_100[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(158[16:27])
    defparam add_811_7.INIT0 = 16'h569a;
    defparam add_811_7.INIT1 = 16'h569a;
    defparam add_811_7.INJECT1_0 = "NO";
    defparam add_811_7.INJECT1_1 = "NO";
    CCU2D add_811_5 (.A0(GND_net), .B0(n3360), .C0(REUAWritten[2]), .D0(REUA[2]), 
          .A1(GND_net), .B1(n3360), .C1(REUAWritten[3]), .D1(REUA[3]), 
          .CIN(n2909), .COUT(n2910), .S0(REUAOut_7__N_100[2]), .S1(REUAOut_7__N_100[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(158[16:27])
    defparam add_811_5.INIT0 = 16'h569a;
    defparam add_811_5.INIT1 = 16'h569a;
    defparam add_811_5.INJECT1_0 = "NO";
    defparam add_811_5.INJECT1_1 = "NO";
    CCU2D add_811_3 (.A0(NextREUA), .B0(n3360), .C0(REUAWritten[0]), .D0(REUA[0]), 
          .A1(GND_net), .B1(n3360), .C1(REUAWritten[1]), .D1(REUA[1]), 
          .CIN(n2908), .COUT(n2909), .S0(REUAOut_7__N_100[0]), .S1(REUAOut_7__N_100[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(158[16:27])
    defparam add_811_3.INIT0 = 16'h74b8;
    defparam add_811_3.INIT1 = 16'h569a;
    defparam add_811_3.INJECT1_0 = "NO";
    defparam add_811_3.INJECT1_1 = "NO";
    CCU2D add_811_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3369), .B1(Length1r), .C1(GND_net), .D1(GND_net), .COUT(n2908));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(158[16:27])
    defparam add_811_1.INIT0 = 16'hF000;
    defparam add_811_1.INIT1 = 16'hffff;
    defparam add_811_1.INJECT1_0 = "NO";
    defparam add_811_1.INJECT1_1 = "NO";
    LUT4 mux_229_i3_3_lut_4_lut (.A(n6), .B(n3368), .C(D_out_2), .D(n518[2]), 
         .Z(n523[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_229_i2_3_lut_4_lut (.A(n6), .B(n3368), .C(D_out_1), .D(n518[1]), 
         .Z(n523[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_229_i1_3_lut_4_lut (.A(n6), .B(n3368), .C(D_out_0), .D(n518[0]), 
         .Z(n523[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_42_4_lut (.A(n3370), .B(A_out_3), .C(n3377), .D(n3378), 
         .Z(n3362)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_42_4_lut.init = 16'h0004;
    LUT4 mux_246_i6_3_lut (.A(CA[5]), .B(CA[13]), .C(A_out_0), .Z(n556[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_246_i6_3_lut.init = 16'hcaca;
    LUT4 Length_3__I_99_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_3), 
         .D(n1016[3]), .Z(Length_3__N_364)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_226_i8_3_lut (.A(CAOut_15__N_142[7]), .B(D_out_7), .C(n3363), 
         .Z(n520[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i8_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_43_4_lut (.A(n3370), .B(n3371), .C(A_out_0), .D(A_out_1), 
         .Z(n3363)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_43_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_39_4_lut (.A(n3382), .B(n3370), .C(A_out_2), .D(A_out_0), 
         .Z(n3359)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam i1_2_lut_rep_39_4_lut.init = 16'h1000;
    LUT4 mux_277_i4_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n667[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_277_i4_3_lut.init = 16'hcaca;
    LUT4 equal_15_i6_2_lut (.A(A_out_0), .B(A_out_1), .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(74[2:14])
    defparam equal_15_i6_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_36_3_lut (.A(A_out_0), .B(n3368), .C(A_out_1), .Z(n3356)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_36_3_lut.init = 16'h2020;
    LUT4 mux_246_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n556[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_246_i3_3_lut.init = 16'hcaca;
    LUT4 mux_271_i5_4_lut (.A(n3127), .B(n3378), .C(A_out_3), .D(Length[12]), 
         .Z(n649)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_271_i5_4_lut.init = 16'hfaca;
    LUT4 Length_1__I_103_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_1), 
         .D(n1016[1]), .Z(Length_1__N_374)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_271_i6_4_lut (.A(n3130), .B(n592[5]), .C(A_out_3), .D(A_out_1), 
         .Z(n648)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_271_i6_4_lut.init = 16'hfaca;
    LUT4 mux_258_i6_3_lut (.A(Length[13]), .B(VerifyErrMask), .C(A_out_0), 
         .Z(n592[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_258_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.A(A_out_0), .B(n3368), .C(n3379), 
         .D(A_out_1), .Z(PHI2_N_544_enable_51)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_129.init = 16'hf2f0;
    LUT4 Length_5__I_95_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_5), 
         .D(n1016[5]), .Z(Length_5__N_354)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hf780;
    LUT4 i15_4_lut_rep_49 (.A(n17_c), .B(n30), .C(n26), .D(n18_c), .Z(n3369)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i15_4_lut_rep_49.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n9), .B(REUAOut_15__N_57), .C(n14), .D(n10), .Z(REUAOut_18__N_40)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i376_2_lut_3_lut_4_lut (.A(A_out_0), .B(n3368), .C(n3379), .D(A_out_1), 
         .Z(PHI2_N_544_enable_60)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i376_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 nWEDMA_N_9_bdd_1_lut_4_lut (.A(n17_c), .B(n30), .C(n26), .D(n18_c), 
         .Z(Length1)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam nWEDMA_N_9_bdd_1_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_130 (.A(REUA[10]), .B(REUA[11]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_130.init = 16'h8888;
    LUT4 i1928_4_lut (.A(A_out_4), .B(A_out_3), .C(n2201), .D(A_out_2), 
         .Z(n2205)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1928_4_lut.init = 16'heeea;
    LUT4 mux_231_i8_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_7), .D(REUAOut_7__N_100[7]), 
         .Z(n525[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i8_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3000 (.BLUT(n3554), .ALUT(n3550), .C0(A_out_3), .Z(n3555));
    LUT4 i6_4_lut (.A(REUA[12]), .B(REUA[8]), .C(REUA[13]), .D(REUA[15]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    PFUMX i2998 (.BLUT(n3552), .ALUT(n3551), .C0(A_out_0), .Z(n3553));
    LUT4 i1_4_lut_adj_131 (.A(n9_adj_593), .B(n3367), .C(n14_adj_594), 
         .D(n10_adj_595), .Z(CAOut_15__N_143)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_131.init = 16'h8000;
    LUT4 i2_3_lut_rep_48_4_lut (.A(nWE_c), .B(n3375), .C(A_out_2), .D(n3382), 
         .Z(n3368)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_48_4_lut.init = 16'hffef;
    LUT4 i2_2_lut_adj_132 (.A(REUA[14]), .B(REUA[9]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_132.init = 16'h8888;
    PFUMX i2734 (.BLUT(n667[1]), .ALUT(n556[1]), .C0(A_out_1), .Z(n3122));
    LUT4 mux_677_i8_3_lut_4_lut (.A(n3369), .B(Length1r), .C(LengthWritten[7]), 
         .D(Length_7__N_342[7]), .Z(n1016[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_677_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_226_i7_3_lut (.A(CAOut_15__N_142[6]), .B(D_out_6), .C(n3363), 
         .Z(n520[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_133 (.A(CA[4]), .B(CA[5]), .Z(n9_adj_593)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_133.init = 16'h8888;
    PFUMX i2991 (.BLUT(n3536), .ALUT(n3531), .C0(A_out_3), .Z(n3537));
    LUT4 i9_4_lut (.A(n17_adj_596), .B(REUA[0]), .C(n16), .D(REUA[4]), 
         .Z(REUAOut_15__N_57)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    PFUMX i2989 (.BLUT(n3534), .ALUT(n3533), .C0(A_out_0), .Z(n3535));
    LUT4 mux_226_i6_3_lut (.A(CAOut_15__N_142[5]), .B(D_out_5), .C(n3363), 
         .Z(n520[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i6_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut_adj_134 (.A(CA[7]), .B(CA[6]), .C(CA[3]), .D(CA[0]), 
         .Z(n14_adj_594)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_134.init = 16'h8000;
    LUT4 mux_226_i5_3_lut (.A(CAOut_15__N_142[4]), .B(D_out_4), .C(n3363), 
         .Z(n520[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i5_3_lut.init = 16'hcaca;
    LUT4 i2750_3_lut (.A(REUA[18]), .B(Length[2]), .C(A_out_0), .Z(n3138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2750_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_adj_135 (.A(CA[1]), .B(CA[2]), .Z(n10_adj_595)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_135.init = 16'h8888;
    LUT4 mux_226_i4_3_lut (.A(CAOut_15__N_142[3]), .B(D_out_3), .C(n3363), 
         .Z(n520[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i4_3_lut.init = 16'hcaca;
    LUT4 mux_226_i3_3_lut (.A(CAOut_15__N_142[2]), .B(D_out_2), .C(n3363), 
         .Z(n520[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i3_3_lut.init = 16'hcaca;
    LUT4 i1865_2_lut_rep_46_3_lut_4_lut (.A(A_out_2), .B(n3382), .C(n3375), 
         .D(nWE_c), .Z(n3366)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2:14])
    defparam i1865_2_lut_rep_46_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_231_i7_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_6), .D(REUAOut_7__N_100[6]), 
         .Z(n525[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_544_enable_64), .CD(n3379), 
            .CK(PHI2_N_544), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(240[8] 243[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 mux_226_i2_3_lut (.A(CAOut_15__N_142[1]), .B(D_out_1), .C(n3363), 
         .Z(n520[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i2_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(n3358), .B(n3109), .C(n3362), .D(n4), .Z(PHI2_N_544_enable_73)) /* synthesis lut_function=((B (C)+!B (C+(D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hf7f5;
    LUT4 mux_226_i1_3_lut (.A(CAOut_15__N_142[0]), .B(D_out_0), .C(n3363), 
         .Z(n520[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam mux_226_i1_3_lut.init = 16'hcaca;
    LUT4 i2749_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n3137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2749_3_lut.init = 16'hcaca;
    LUT4 i7_4_lut (.A(NextREUA_N_568), .B(REUA[5]), .C(REUA[7]), .D(n3380), 
         .Z(n17_adj_596)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i2721_4_lut (.A(Length[7]), .B(n3103), .C(Length[4]), .D(Length[3]), 
         .Z(n3109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2721_4_lut.init = 16'hfffe;
    CCU2D add_810_9 (.A0(GND_net), .B0(n3360), .C0(CAWritten[14]), .D0(CA[14]), 
          .A1(GND_net), .B1(n3360), .C1(CAWritten[15]), .D1(CA[15]), 
          .CIN(n2903), .S0(CAOut_15__N_142[6]), .S1(CAOut_15__N_142[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam add_810_9.INIT0 = 16'h569a;
    defparam add_810_9.INIT1 = 16'h569a;
    defparam add_810_9.INJECT1_0 = "NO";
    defparam add_810_9.INJECT1_1 = "NO";
    CCU2D add_810_7 (.A0(GND_net), .B0(n3360), .C0(CAWritten[12]), .D0(CA[12]), 
          .A1(GND_net), .B1(n3360), .C1(CAWritten[13]), .D1(CA[13]), 
          .CIN(n2902), .COUT(n2903), .S0(CAOut_15__N_142[4]), .S1(CAOut_15__N_142[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam add_810_7.INIT0 = 16'h569a;
    defparam add_810_7.INIT1 = 16'h569a;
    defparam add_810_7.INJECT1_0 = "NO";
    defparam add_810_7.INJECT1_1 = "NO";
    CCU2D add_810_5 (.A0(GND_net), .B0(n3360), .C0(CAWritten[10]), .D0(CA[10]), 
          .A1(GND_net), .B1(n3360), .C1(CAWritten[11]), .D1(CA[11]), 
          .CIN(n2901), .COUT(n2902), .S0(CAOut_15__N_142[2]), .S1(CAOut_15__N_142[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam add_810_5.INIT0 = 16'h569a;
    defparam add_810_5.INIT1 = 16'h569a;
    defparam add_810_5.INJECT1_0 = "NO";
    defparam add_810_5.INJECT1_1 = "NO";
    CCU2D add_810_3 (.A0(CAOut_15__N_143), .B0(n3360), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(n3360), .C1(CAWritten[9]), .D1(CA[9]), 
          .CIN(n2900), .COUT(n2901), .S0(CAOut_15__N_142[0]), .S1(CAOut_15__N_142[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam add_810_3.INIT0 = 16'h74b8;
    defparam add_810_3.INIT1 = 16'h569a;
    defparam add_810_3.INJECT1_0 = "NO";
    defparam add_810_3.INJECT1_1 = "NO";
    CCU2D add_810_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3369), .B1(Length1r), .C1(GND_net), .D1(GND_net), .COUT(n2900));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(143[15:25])
    defparam add_810_1.INIT0 = 16'hF000;
    defparam add_810_1.INIT1 = 16'hffff;
    defparam add_810_1.INJECT1_0 = "NO";
    defparam add_810_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_136 (.A(REUA[2]), .B(REUA[6]), .C(REUA[3]), .D(REUA[1]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_136.init = 16'h8000;
    LUT4 mux_231_i6_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_5), .D(REUAOut_7__N_100[5]), 
         .Z(n525[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_0__I_105_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_0), 
         .D(n1016[0]), .Z(Length_0__N_379)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_231_i5_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_4), .D(REUAOut_7__N_100[4]), 
         .Z(n525[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_4_lut_adj_137 (.A(n3358), .B(n3367), .C(n3356), .D(n3369), 
         .Z(PHI2_N_544_enable_81)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i2_4_lut_adj_137.init = 16'hfdf5;
    LUT4 i1827_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2201)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1827_2_lut.init = 16'h8888;
    PFUMX i2735 (.BLUT(n568[1]), .ALUT(n580[1]), .C0(A_out_1), .Z(n3123));
    LUT4 mux_231_i4_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_3), .D(REUAOut_7__N_100[3]), 
         .Z(n525[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_8__653 (.D(Length_8__N_334), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_8__653.GSR = "ENABLED";
    LUT4 Length_4__I_97_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_4), 
         .D(n1016[4]), .Z(Length_4__N_359)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hf780;
    LUT4 n1_bdd_4_lut_2895_4_lut (.A(A_out_0), .B(A_out_1), .C(n568[5]), 
         .D(Length[5]), .Z(n3353)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam n1_bdd_4_lut_2895_4_lut.init = 16'hfc74;
    LUT4 nFF00DecodeEN_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n556[4]), 
         .D(nFF00DecodeEN), .Z(n3352)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam nFF00DecodeEN_bdd_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i2782_3_lut (.A(XferType[0]), .B(XferType[1]), .C(SwapState), 
         .Z(RAMWR_N_546)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i2782_3_lut.init = 16'h1515;
    FD1P3JX Length_9__652 (.D(Length_9__N_329), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_9__652.GSR = "ENABLED";
    FD1P3JX Length_10__651 (.D(Length_10__N_324), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_10__651.GSR = "ENABLED";
    FD1P3JX Length_11__650 (.D(Length_11__N_319), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_11__650.GSR = "ENABLED";
    FD1P3JX Length_12__649 (.D(Length_12__N_314), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_12__649.GSR = "ENABLED";
    LUT4 n1_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n568[4]), .D(Length[4]), 
         .Z(n3354)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam n1_bdd_4_lut_4_lut.init = 16'hfc74;
    FD1P3JX Length_13__648 (.D(Length_13__N_309), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_13__648.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_44_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3382), 
         .D(A_out_2), .Z(n3364)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i2_3_lut_rep_44_4_lut_4_lut.init = 16'hfffd;
    LUT4 i2_4_lut_4_lut (.A(A_out_0), .B(n18), .C(ExecuteEN), .D(n17), 
         .Z(n3066)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i2_4_lut_4_lut.init = 16'h4000;
    LUT4 Length_7__I_91_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_7), 
         .D(n1016[7]), .Z(Length_7__N_339)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_250_i7_3_lut (.A(REUA[6]), .B(REUA[14]), .C(A_out_0), .Z(n568[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_250_i7_3_lut.init = 16'hcaca;
    LUT4 Length_2__I_101_3_lut_4_lut (.A(A_out_1), .B(n3359), .C(D_out_2), 
         .D(n1016[2]), .Z(Length_2__N_369)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hf780;
    LUT4 n573_bdd_4_lut_4_lut (.A(A_out_0), .B(Length[3]), .C(A_out_1), 
         .D(n568[3]), .Z(n3339)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam n573_bdd_4_lut_4_lut.init = 16'hdfd0;
    LUT4 n1_bdd_4_lut_2893_4_lut (.A(A_out_0), .B(A_out_1), .C(n568[6]), 
         .D(Length[6]), .Z(n3349)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam n1_bdd_4_lut_2893_4_lut.init = 16'hfc74;
    LUT4 nWEDMA_N_9_bdd_4_lut (.A(nWEDMA_N_9), .B(n3369), .C(XferType[0]), 
         .D(SwapState), .Z(n3310)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam nWEDMA_N_9_bdd_4_lut.init = 16'h7370;
    LUT4 n1_bdd_4_lut_2850 (.A(CA[3]), .B(A_out_1), .C(CA[11]), .D(A_out_0), 
         .Z(n3233)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam n1_bdd_4_lut_2850.init = 16'hc088;
    LUT4 i1894_2_lut_rep_41_4_lut_4_lut (.A(A_out_0), .B(n3370), .C(A_out_1), 
         .D(n3371), .Z(n3361)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i1894_2_lut_rep_41_4_lut_4_lut.init = 16'hfffd;
    LUT4 i918_4_lut (.A(n3371), .B(n3379), .C(n3101), .D(nWE_c), .Z(n1299)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(81[8] 95[4])
    defparam i918_4_lut.init = 16'hcdcc;
    LUT4 i2703_2_lut_rep_53 (.A(Length[2]), .B(Length[5]), .Z(n3373)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2703_2_lut_rep_53.init = 16'heeee;
    LUT4 mux_231_i3_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_2), .D(REUAOut_7__N_100[2]), 
         .Z(n525[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2715_3_lut_4_lut (.A(Length[2]), .B(Length[5]), .C(Length[6]), 
         .D(Length[1]), .Z(n3103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2715_3_lut_4_lut.init = 16'hfffe;
    FD1P3JX Length_14__647 (.D(Length_14__N_304), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_14__647.GSR = "ENABLED";
    FD1P3JX Length_15__646 (.D(Length_15__N_295), .SP(PHI2_N_544_enable_73), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_15__646.GSR = "ENABLED";
    FD1P3JX Length_0__637 (.D(Length_0__N_379), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(\Length[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_0__637.GSR = "ENABLED";
    FD1P3JX Length_1__636 (.D(Length_1__N_374), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_1__636.GSR = "ENABLED";
    FD1P3JX Length_2__635 (.D(Length_2__N_369), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_2__635.GSR = "ENABLED";
    FD1P3JX Length_3__634 (.D(Length_3__N_364), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_3__634.GSR = "ENABLED";
    FD1P3JX Length_4__633 (.D(Length_4__N_359), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_4__633.GSR = "ENABLED";
    FD1P3AX nFF00DecodeEN_552 (.D(nFF00DecodeEN_N_439), .SP(PHI2_N_544_enable_79), 
            .CK(PHI2_N_544), .Q(nFF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(98[8] 117[4])
    defparam nFF00DecodeEN_552.GSR = "ENABLED";
    FD1P3JX Length_5__632 (.D(Length_5__N_354), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_5__632.GSR = "ENABLED";
    FD1P3JX Length_6__631 (.D(Length_6__N_349), .SP(PHI2_N_544_enable_81), 
            .PD(n3379), .CK(PHI2_N_544), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_6__631.GSR = "ENABLED";
    LUT4 mux_224_i1_4_lut_4_lut (.A(n3360), .B(REUAOut_18__N_40), .C(REUAWritten[16]), 
         .D(REUA[16]), .Z(n518[0])) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(C))) */ ;
    defparam mux_224_i1_4_lut_4_lut.init = 16'h72d8;
    LUT4 mux_224_i2_4_lut_4_lut (.A(n3360), .B(n3355), .C(REUAWritten[17]), 
         .D(REUA[17]), .Z(n518[1])) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(C))) */ ;
    defparam mux_224_i2_4_lut_4_lut.init = 16'h72d8;
    PFUMX mux_271_i3 (.BLUT(n635[2]), .ALUT(n625[2]), .C0(A_out_3), .Z(n651));
    LUT4 mux_231_i2_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_1), .D(REUAOut_7__N_100[1]), 
         .Z(n525[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_231_i1_3_lut_4_lut (.A(n3378), .B(n3368), .C(D_out_0), .D(REUAOut_7__N_100[0]), 
         .Z(n525[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_40 (.A(n3369), .B(Length1r), .Z(n3360)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_40.init = 16'heeee;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (C8M_N_484, WRCMDr_N_500, InitDone, n3577, PHI2Start_N_536, 
            REUA, RAMWR, C8M_c, RBA_c_0, C8M_c_enable_19, n261, 
            nRESET_c, PHI2_c, RAMRDD, RD_out_0, WRDr, PHI2_N_544, 
            D_out_0, nRAS_c, n1197, nCAS_c, nRWE_c, CKE_c, DQMH_c, 
            DQML_c, A_0__N_525, RA_c_10, RA_c_9, RA_c_8, RA_c_7, 
            RA_c_6, RA_c_5, RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, 
            RCLK_c, RBA_c_1, RD_out_1, RA_c_11, RD_out_2, RD_out_3, 
            RD_out_4, RD_out_5, RD_out_6, RD_out_7, D_out_1, D_out_2, 
            D_out_3, D_out_4, D_out_5, D_out_6, D_out_7, nCS_c) /* synthesis syn_module_defined=1 */ ;
    input C8M_N_484;
    input WRCMDr_N_500;
    output InitDone;
    input n3577;
    output PHI2Start_N_536;
    input [23:0]REUA;
    input RAMWR;
    input C8M_c;
    output RBA_c_0;
    input C8M_c_enable_19;
    output n261;
    input nRESET_c;
    input PHI2_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output [7:0]WRDr;
    input PHI2_N_544;
    input D_out_0;
    output nRAS_c;
    output n1197;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output DQMH_c;
    output DQML_c;
    input A_0__N_525;
    output RA_c_10;
    output RA_c_9;
    output RA_c_8;
    output RA_c_7;
    output RA_c_6;
    output RA_c_5;
    output RA_c_4;
    output RA_c_3;
    output RA_c_2;
    output RA_c_1;
    output RA_c_0;
    output RCLK_c;
    output RBA_c_1;
    input RD_out_1;
    output RA_c_11;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    output nCS_c;
    
    wire C8M_N_484 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(39[12:17])
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire WRCMDr, C8M_N_484_enable_4, RDOE_N_539, RDD_7__N_493, n412, 
        n2289;
    wire [12:0]RA_11__N_471;
    
    wire C8M_c_enable_12, CP1, CP1_N_527, RDCMDr, n914, C8M_c_enable_21, 
        C8M_c_enable_18;
    wire [7:0]n257;
    
    wire INITCMDr, InitDone_N_516, PLLLock, PLLLock_N_531, n1637;
    wire [4:0]nRESETr;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(32[12:19])
    
    wire CP2;
    wire [1:0]PHI2r;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(39[12:17])
    
    wire nCS_N_505, nRAS_N_507, RDOE, nCAS_N_509, nRWE_N_511, CKE_N_520, 
        n3384, n3383, n1251, n1376, nCS_N_495, n6, n2958, n2951, 
        C8M_c_enable_20;
    
    FD1P3AX WRCMDr_132 (.D(WRCMDr_N_500), .SP(C8M_N_484_enable_4), .CK(C8M_N_484), 
            .Q(WRCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(65[9] 72[5])
    defparam WRCMDr_132.GSR = "ENABLED";
    FD1P3AX InitDone_133 (.D(n3577), .SP(C8M_N_484_enable_4), .CK(C8M_N_484), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(65[9] 72[5])
    defparam InitDone_133.GSR = "ENABLED";
    LUT4 i2823_2_lut_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(RDD_7__N_493), 
         .D(n412), .Z(n2289)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam i2823_2_lut_4_lut_4_lut.init = 16'h0203;
    LUT4 mux_211_i5_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[14]), 
         .D(REUA[5]), .Z(RA_11__N_471[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_211_i5_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_211_i4_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[13]), 
         .D(REUA[4]), .Z(RA_11__N_471[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_211_i4_4_lut_4_lut.init = 16'he2c0;
    LUT4 i1_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(n412), 
         .D(RDD_7__N_493), .Z(C8M_c_enable_12)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hccef;
    LUT4 mux_211_i3_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[12]), 
         .D(REUA[3]), .Z(RA_11__N_471[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_211_i3_4_lut_4_lut.init = 16'he2c0;
    LUT4 i1742_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[7]), 
         .D(REUA[16]), .Z(RA_11__N_471[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;
    defparam i1742_4_lut_4_lut.init = 16'hec20;
    LUT4 mux_211_i2_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[11]), 
         .D(REUA[2]), .Z(RA_11__N_471[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_211_i2_4_lut_4_lut.init = 16'he2c0;
    LUT4 i1744_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[8]), 
         .D(REUA[17]), .Z(RA_11__N_471[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;
    defparam i1744_4_lut_4_lut.init = 16'hec20;
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_527)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(28[37:41])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    LUT4 mux_211_i1_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[10]), 
         .D(REUA[1]), .Z(RA_11__N_471[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_211_i1_4_lut_4_lut.init = 16'he2c0;
    FD1P3IX RDCMDr_131 (.D(RAMWR), .SP(C8M_N_484_enable_4), .CD(n914), 
            .CK(C8M_N_484), .Q(RDCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(65[9] 72[5])
    defparam RDCMDr_131.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(RDD_7__N_493), 
         .D(n412), .Z(C8M_c_enable_21)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'hcecf;
    FD1P3IX S_FSM_i1 (.D(n257[7]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(PHI2Start_N_536));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i1.GSR = "ENABLED";
    FD1P3AX INITCMDr_130 (.D(InitDone_N_516), .SP(C8M_N_484_enable_4), .CK(C8M_N_484), 
            .Q(INITCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(65[9] 72[5])
    defparam INITCMDr_130.GSR = "ENABLED";
    FD1P3AX PLLLock_128 (.D(n3577), .SP(PLLLock_N_531), .CK(C8M_N_484), 
            .Q(PLLLock)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(46[9] 50[5])
    defparam PLLLock_128.GSR = "ENABLED";
    LUT4 i1254_1_lut (.A(PLLLock), .Z(n1637)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(46[9] 50[5])
    defparam i1254_1_lut.init = 16'h5555;
    FD1P3IX RBA__i1 (.D(REUA[22]), .SP(C8M_c_enable_19), .CD(n261), .CK(C8M_c), 
            .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RBA__i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i0.GSR = "ENABLED";
    LUT4 mux_211_i9_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[18]), 
         .D(REUA[9]), .Z(RA_11__N_471[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_211_i9_4_lut_4_lut.init = 16'he2c0;
    FD1S3AX CP2_124 (.D(CP1_N_527), .CK(C8M_N_484), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(28[9:46])
    defparam CP2_124.GSR = "ENABLED";
    FD1S3AX PHI2r_0__126 (.D(PHI2_c), .CK(C8M_N_484), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(41[9:51])
    defparam PHI2r_0__126.GSR = "ENABLED";
    FD1S3AX PHI2r_1__127 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(42[9:55])
    defparam PHI2r_1__127.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_544), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i0.GSR = "ENABLED";
    LUT4 RDCMDr_I_0_174_2_lut (.A(RDCMDr), .B(WRCMDr), .Z(nCS_N_505)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(78[9:25])
    defparam RDCMDr_I_0_174_2_lut.init = 16'heeee;
    FD1S3JX nRAS_135 (.D(nRAS_N_507), .CK(C8M_c), .PD(n1637), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nRAS_135.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(RDOE_N_539), .B(RDD_7__N_493), .C(n261), .D(n412), 
         .Z(C8M_c_enable_18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i838_1_lut (.A(RDOE), .Z(n1197)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[9:11])
    defparam i838_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_126 (.A(n257[2]), .B(n257[7]), .C(n257[6]), .D(n257[5]), 
         .Z(n412)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i3_4_lut_adj_126.init = 16'hfffe;
    FD1S3JX nCAS_136 (.D(nCAS_N_509), .CK(C8M_c), .PD(n1637), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nCAS_136.GSR = "ENABLED";
    FD1S3JX nRWE_137 (.D(nRWE_N_511), .CK(C8M_c), .PD(n1637), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nRWE_137.GSR = "ENABLED";
    FD1S3JX CKE_138 (.D(CKE_N_520), .CK(C8M_c), .PD(n1637), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(75[9] 163[5])
    defparam CKE_138.GSR = "ENABLED";
    FD1S3JX DQMH_139 (.D(REUA[0]), .CK(C8M_c), .PD(n3384), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam DQMH_139.GSR = "ENABLED";
    FD1S3JX DQML_140 (.D(A_0__N_525), .CK(C8M_c), .PD(n3384), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam DQML_140.GSR = "ENABLED";
    FD1S3AX RA_10__143 (.D(RA_11__N_471[10]), .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_10__143.GSR = "ENABLED";
    FD1P3AX RA_9__144 (.D(RA_11__N_471[9]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_9__144.GSR = "ENABLED";
    FD1P3AX RA_8__145 (.D(RA_11__N_471[8]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_8__145.GSR = "ENABLED";
    FD1P3AX RA_7__146 (.D(RA_11__N_471[7]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_7__146.GSR = "ENABLED";
    FD1P3AX RA_6__147 (.D(RA_11__N_471[6]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_6__147.GSR = "ENABLED";
    FD1P3AX RA_5__148 (.D(RA_11__N_471[5]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_5__148.GSR = "ENABLED";
    FD1P3AX RA_4__149 (.D(RA_11__N_471[4]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_4__149.GSR = "ENABLED";
    FD1P3AX RA_3__150 (.D(RA_11__N_471[3]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_3__150.GSR = "ENABLED";
    FD1P3AX RA_2__151 (.D(RA_11__N_471[2]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_2__151.GSR = "ENABLED";
    FD1P3AX RA_1__152 (.D(RA_11__N_471[1]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_1__152.GSR = "ENABLED";
    FD1P3AX RA_0__153 (.D(RA_11__N_471[0]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_0__153.GSR = "ENABLED";
    FD1S3AX RDOE_156 (.D(RDOE_N_539), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(220[9:37])
    defparam RDOE_156.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_63 (.A(PHI2r[0]), .B(PHI2r[1]), .Z(n3383)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i1_2_lut_rep_63.init = 16'h4444;
    LUT4 i2_3_lut_rep_52_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(PHI2Start_N_536), 
         .D(PLLLock), .Z(C8M_N_484_enable_4)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i2_3_lut_rep_52_4_lut.init = 16'h4000;
    FD1S3AX CP1_123 (.D(CP1_N_527), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(27[9:46])
    defparam CP1_123.GSR = "ENABLED";
    LUT4 i867_1_lut_rep_64 (.A(RDOE_N_539), .Z(n3384)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i867_1_lut_rep_64.init = 16'h5555;
    LUT4 mux_211_i10_3_lut_3_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[19]), 
         .Z(RA_11__N_471[9])) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam mux_211_i10_3_lut_3_lut.init = 16'hd1d1;
    LUT4 i1746_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[15]), 
         .D(REUA[6]), .Z(RA_11__N_471[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam i1746_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i2820_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_539), .D(n261), 
         .Z(nCAS_N_509)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(98[14] 110[8])
    defparam i2820_3_lut_4_lut.init = 16'h001f;
    LUT4 i871_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_539), .D(n1251), 
         .Z(CKE_N_520)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(98[14] 110[8])
    defparam i871_3_lut_4_lut.init = 16'hefe0;
    LUT4 i944_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_539), .D(n1376), 
         .Z(nCS_N_495)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(98[14] 110[8])
    defparam i944_3_lut_4_lut.init = 16'h101f;
    LUT4 i943_3_lut_4_lut (.A(RDD_7__N_493), .B(n261), .C(PHI2Start_N_536), 
         .D(nCS_N_505), .Z(n1376)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i943_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i2797_3_lut_4_lut (.A(RDD_7__N_493), .B(n261), .C(PHI2Start_N_536), 
         .D(nCS_N_505), .Z(nRAS_N_507)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i2797_3_lut_4_lut.init = 16'h0111;
    LUT4 i1787_1_lut (.A(InitDone), .Z(InitDone_N_516)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(65[9] 72[5])
    defparam i1787_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(nRESETr[1]), .B(n3383), .C(nRESETr[4]), .D(n6), 
         .Z(PLLLock_N_531)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i939_4_lut (.A(n2958), .B(INITCMDr), .C(n261), .D(RDD_7__N_493), 
         .Z(nRWE_N_511)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i939_4_lut.init = 16'h303a;
    LUT4 i2_3_lut (.A(RDOE_N_539), .B(WRCMDr), .C(RDCMDr), .Z(n2958)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i2_3_lut.init = 16'hf7f7;
    LUT4 CP1_I_0_172_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(29[16:25])
    defparam CP1_I_0_172_2_lut.init = 16'h6666;
    LUT4 i870_4_lut (.A(n257[5]), .B(nCS_N_505), .C(PHI2Start_N_536), 
         .D(n257[6]), .Z(n1251)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam i870_4_lut.init = 16'hc0c5;
    LUT4 i1_2_lut (.A(nRESETr[3]), .B(nRESETr[2]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 mux_211_i11_4_lut (.A(n2951), .B(REUA[20]), .C(PHI2Start_N_536), 
         .D(RDD_7__N_493), .Z(RA_11__N_471[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(166[3] 207[10])
    defparam mux_211_i11_4_lut.init = 16'hcfca;
    FD1P3IX S_FSM_i3 (.D(RDOE_N_539), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n257[2]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1P3IX S_FSM_i4 (.D(n257[2]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(RDD_7__N_493));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i4.GSR = "ENABLED";
    FD1P3IX S_FSM_i5 (.D(RDD_7__N_493), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n261));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i5.GSR = "ENABLED";
    FD1P3IX S_FSM_i6 (.D(n261), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n257[5]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i6.GSR = "ENABLED";
    FD1P3IX S_FSM_i7 (.D(n257[5]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n257[6]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i7.GSR = "ENABLED";
    FD1P3IX S_FSM_i8 (.D(n257[6]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n257[7]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i8.GSR = "ENABLED";
    FD1P3IX RBA__i2 (.D(REUA[23]), .SP(C8M_c_enable_19), .CD(n261), .CK(C8M_c), 
            .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3JX S_FSM_i2 (.D(PHI2Start_N_536), .SP(C8M_c_enable_20), .PD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(RDOE_N_539));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(57[23:26])
    defparam S_FSM_i2.GSR = "ENABLED";
    FD1P3IX RA_11__142 (.D(REUA[21]), .SP(C8M_c_enable_21), .CD(n2289), 
            .CK(C8M_c), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_11__142.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_544), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_544), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_544), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_544), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_544), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_544), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_544), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n3383), .B(PLLLock), .C(PHI2Start_N_536), 
         .D(C8M_c_enable_18), .Z(C8M_c_enable_20)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i1_2_lut_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_4_lut_adj_127 (.A(n3383), .B(PLLLock), .C(PHI2Start_N_536), 
         .D(InitDone), .Z(n914)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i1_2_lut_4_lut_adj_127.init = 16'h0080;
    LUT4 i2_3_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(RA_c_10), 
         .D(n412), .Z(n2951)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    FD1S3JX nCS_134 (.D(nCS_N_495), .CK(C8M_c), .PD(n1637), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nCS_134.GSR = "ENABLED";
    
endmodule
