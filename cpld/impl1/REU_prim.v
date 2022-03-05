// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Sat Mar 05 01:56:27 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, nIRQ, RCLK, 
            nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, DQML, 
            RD) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // //mac/icloud/repos/gw4302/cpld/reu.v(5[8:14])
    input BA;   // //mac/icloud/repos/gw4302/cpld/reu.v(7[8:10])
    inout [7:0]D;   // //mac/icloud/repos/gw4302/cpld/reu.v(8[14:15])
    inout [15:0]A;   // //mac/icloud/repos/gw4302/cpld/reu.v(9[15:16])
    input nWE;   // //mac/icloud/repos/gw4302/cpld/reu.v(10[8:11])
    output nWEDMA;   // //mac/icloud/repos/gw4302/cpld/reu.v(11[9:15])
    output nDMA;   // //mac/icloud/repos/gw4302/cpld/reu.v(12[9:13])
    input nIO2;   // //mac/icloud/repos/gw4302/cpld/reu.v(13[8:12])
    output nAOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(15[9:13])
    output ADIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(16[9:13])
    output nRWOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(17[9:14])
    output nDOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(18[9:13])
    output DDIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:13])
    output nIRQ;   // //mac/icloud/repos/gw4302/cpld/reu.v(21[9:13])
    output RCLK;   // //mac/icloud/repos/gw4302/cpld/reu.v(23[9:13])
    output nCS;   // //mac/icloud/repos/gw4302/cpld/reu.v(24[9:12])
    output nRAS;   // //mac/icloud/repos/gw4302/cpld/reu.v(25[9:13])
    output nCAS;   // //mac/icloud/repos/gw4302/cpld/reu.v(26[9:13])
    output nRWE;   // //mac/icloud/repos/gw4302/cpld/reu.v(27[9:13])
    output CKE;   // //mac/icloud/repos/gw4302/cpld/reu.v(28[9:12])
    output [1:0]RBA;   // //mac/icloud/repos/gw4302/cpld/reu.v(29[15:18])
    output [12:0]RA;   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    output DQMH;   // //mac/icloud/repos/gw4302/cpld/reu.v(31[9:13])
    output DQML;   // //mac/icloud/repos/gw4302/cpld/reu.v(32[9:13])
    inout [7:0]RD;   // //mac/icloud/repos/gw4302/cpld/reu.v(33[14:16])
    
    wire C8M_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_484 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(39[12:17])
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire nRESET_c, BA_c, n2160, n1283, n1281, n1277, nWE_c, nWEDMA_c, 
        nIO2_c, nAOE_c, nDOE_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, 
        nCAS_c, nRWE_c, CKE_c, RBA_c_1, RBA_c_0, RA_0_11, RA_0_10, 
        RA_0_9, RA_0_8, RA_0_7, RA_0_6, RA_0_5, RA_0_4, RA_0_3, 
        RA_0_2, RA_0_1, RA_0_0, DQMH_c, DQML_c, IRQ;
    wire [1:0]XferType;   // //mac/icloud/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // //mac/icloud/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // //mac/icloud/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // //mac/icloud/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire RAMWR, VerifyErr, AOE, Execute, nWEDMA_N_9;
    wire [7:0]D_7__N_1;
    
    wire VCC_net, n243, nFF00DecodeEN, IntEnable, VerifyErrMask, Length1r, 
        n3669, n1242, n19, n3451, n3444, n4, n3032, n6, IRQOut_N_431, 
        GND_net;
    wire [4:0]nRESETr;   // //mac/icloud/repos/gw4302/cpld/ram.v(32[12:19])
    
    wire PLLLock, InitDone;
    wire [7:0]WRDr;   // //mac/icloud/repos/gw4302/cpld/ram.v(215[12:16])
    
    wire PHI2Start_N_536, WRCMDr_N_500, n3495, A_0__N_525, n1234, 
        SwapState, RAMWR_N_546, n3450, NextREUA_N_568, nRWOE_N_576, 
        PHI2_N_544_enable_51, n2781, n3204, n628, n629, n630, n632, 
        n633, n634, n635, PHI2_N_544_enable_55, PHI2_N_544_enable_64, 
        C8M_c_enable_19, n1244, n1246, n6_adj_599, n7, n8, n3464, 
        n2200, n3462, D_out_7, D_out_6, D_out_5, D_out_4, D_out_3, 
        D_out_2, D_out_1, D_out_0, A_out_15, A_out_14, A_out_13, 
        A_out_12, A_out_11, A_out_10, A_out_9, n3461, A_out_8, A_out_4, 
        A_out_3, A_out_2, A_out_1, A_out_0, RD_out_7, RD_out_6, 
        RD_out_5, n1179, RD_out_4, RD_out_3, RD_out_2, RD_out_1, 
        RD_out_0, n3456, n3455, n3454, n3363, n2780;
    
    VHI i83 (.Z(VCC_net));
    INV i3141 (.A(C8M_c), .Z(C8M_N_484));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 m1_lut (.Z(n3669)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2781), .S1(nWEDMA_N_9));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DDIR_c), .B(D[2]), .O(D_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DDIR_c), .B(D[4]), .O(D_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DDIR_c), .B(D[5]), .O(D_out_5));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DDIR_c), .B(D[6]), .O(D_out_6));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2780), .COUT(n2781));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n628), .B(RAMRDD[7]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n634), .B(RAMRDD[1]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n635), .B(RAMRDD[0]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    LUT4 i2843_4_lut (.A(PLLLock), .B(nRESETr[3]), .C(nRESETr[4]), .Z(n3204)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i2843_4_lut.init = 16'heaea;
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DDIR_c), .B(D[3]), .O(D_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3495), .B(RAMRDD[4]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n630), .B(RAMRDD[5]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n629), .B(RAMRDD[6]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    LUT4 i512_2_lut (.A(PHI2Start_N_536), .B(n243), .Z(C8M_c_enable_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i512_2_lut.init = 16'heeee;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2780));   // //mac/icloud/repos/gw4302/cpld/reu.v(91[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DDIR_c), .B(D[7]), .O(D_out_7));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DDIR_c), .B(D[1]), .O(D_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DDIR_c), .B(D[0]), .O(D_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(114[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n3461), .B(A[15]), .O(A_out_15));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n3461), .B(A[14]), .O(A_out_14));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3461), .B(A[13]), .O(A_out_13));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n3461), .B(A[12]), .O(A_out_12));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3461), .B(A[11]), .O(A_out_11));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3461), .B(A[10]), .O(A_out_10));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3461), .B(A[9]), .O(A_out_9));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3461), .B(A[8]), .O(A_out_8));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3461), .B(A[7]), .O(n8));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3461), .B(A[6]), .O(n7));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3461), .B(A[5]), .O(n6_adj_599));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3461), .B(A[4]), .O(A_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3461), .B(A[3]), .O(A_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3461), .B(A[2]), .O(A_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3461), .B(A[1]), .O(A_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3461), .B(A[0]), .O(A_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1179), .B(RD[7]), .O(RD_out_7));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1179), .B(RD[6]), .O(RD_out_6));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1179), .B(RD[5]), .O(RD_out_5));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1179), .B(RD[4]), .O(RD_out_4));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1179), .B(RD[3]), .O(RD_out_3));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1179), .B(RD[2]), .O(RD_out_2));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1179), .B(RD[1]), .O(RD_out_1));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n633), .B(RAMRDD[2]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    BB RD_pad_0 (.I(WRDr[0]), .T(n1179), .B(RD[0]), .O(RD_out_0));   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n3461), .O(nDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_c), .O(nAOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n3461), .O(ADIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(nRWOE_N_576), .O(nRWOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_c), .O(nDOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(18[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:13])
    OB nIRQ_pad (.I(IRQ), .O(nIRQ));   // //mac/icloud/repos/gw4302/cpld/reu.v(21[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // //mac/icloud/repos/gw4302/cpld/reu.v(23[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // //mac/icloud/repos/gw4302/cpld/reu.v(24[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // //mac/icloud/repos/gw4302/cpld/reu.v(25[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // //mac/icloud/repos/gw4302/cpld/reu.v(26[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // //mac/icloud/repos/gw4302/cpld/reu.v(27[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // //mac/icloud/repos/gw4302/cpld/reu.v(28[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // //mac/icloud/repos/gw4302/cpld/reu.v(29[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // //mac/icloud/repos/gw4302/cpld/reu.v(29[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_11 (.I(RA_0_11), .O(RA[11]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_10 (.I(RA_0_10), .O(RA[10]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_9 (.I(RA_0_9), .O(RA[9]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_8 (.I(RA_0_8), .O(RA[8]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_7 (.I(RA_0_7), .O(RA[7]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_6 (.I(RA_0_6), .O(RA[6]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_5 (.I(RA_0_5), .O(RA[5]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_4 (.I(RA_0_4), .O(RA[4]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_3 (.I(RA_0_3), .O(RA[3]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_2 (.I(RA_0_2), .O(RA[2]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_1 (.I(RA_0_1), .O(RA[1]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_0 (.I(RA_0_0), .O(RA[0]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // //mac/icloud/repos/gw4302/cpld/reu.v(32[9:13])
    IB C8M_pad (.I(C8M), .O(C8M_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(5[8:14])
    IB BA_pad (.I(BA), .O(BA_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(7[8:10])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(10[8:11])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(13[8:12])
    DMASeq dmaseq (.AOE(AOE), .n3363(n3363), .BA_c(BA_c), .D_out_4(D_out_4), 
           .n4(n4), .RAMWR(RAMWR), .PHI2_N_544(PHI2_N_544), .n3461(n3461), 
           .RAMWR_N_546(RAMWR_N_546), .SwapState(SwapState), .nRWOE_N_576(nRWOE_N_576), 
           .D_out_1(D_out_1), .n1244(n1244), .nAOE_c(nAOE_c), .nWEDMA_c(nWEDMA_c), 
           .nRESET_c(nRESET_c), .D_out_0(D_out_0), .n1234(n1234), .InitDone(InitDone), 
           .WRCMDr_N_500(WRCMDr_N_500), .NextREUA_N_568(NextREUA_N_568), 
           .XferType({XferType}), .n3454(n3454), .n6(n6), .PHI2_N_544_enable_55(PHI2_N_544_enable_55), 
           .D_out_2(D_out_2), .n1246(n1246), .Execute(Execute), .D_out_3(D_out_3), 
           .n1277(n1277), .n3464(n3464), .n3032(n3032), .PHI2_N_544_enable_51(PHI2_N_544_enable_51), 
           .Length1r(Length1r), .n3455(n3455), .n3444(n3444), .nWEDMA_N_9(nWEDMA_N_9), 
           .VerifyErr(VerifyErr), .n3451(n3451), .PHI2_N_544_enable_64(PHI2_N_544_enable_64), 
           .D_out_7(D_out_7), .n1242(n1242), .D_out_6(D_out_6), .n1283(n1283), 
           .D_out_5(D_out_5), .n1281(n1281)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(79[9] 93[50])
    REUReg reureg (.A_out_2(A_out_2), .CA({CA}), .GND_net(GND_net), .n3455(n3455), 
           .Length1r(Length1r), .n634(n634), .n635(n635), .n633(n633), 
           .PHI2_N_544(PHI2_N_544), .n1234(n1234), .A_out_0(A_out_0), 
           .A_out_1(A_out_1), .n1244(n1244), .n3464(n3464), .VerifyErr(VerifyErr), 
           .REUA({REUA}), .n3454(n3454), .n3032(n3032), .D_out_4(D_out_4), 
           .D_out_1(D_out_1), .n1246(n1246), .n3456(n3456), .n3450(n3450), 
           .D_out_7(D_out_7), .n3451(n3451), .D_out_5(D_out_5), .n1277(n1277), 
           .D_out_0(D_out_0), .D_out_3(D_out_3), .D_out_2(D_out_2), .n4(n4), 
           .n1281(n1281), .D_out_6(D_out_6), .n1283(n1283), .n1242(n1242), 
           .XferType({XferType}), .SwapState(SwapState), .PHI2_N_544_enable_51(PHI2_N_544_enable_51), 
           .IntEnable(IntEnable), .NextREUA_N_568(NextREUA_N_568), .VerifyErrMask(VerifyErrMask), 
           .n3669(n3669), .nRWOE_N_576(nRWOE_N_576), .A_out_3(A_out_3), 
           .A_out_9(A_out_9), .A_out_13(A_out_13), .n19(n19), .PHI2_N_544_enable_64(PHI2_N_544_enable_64), 
           .PHI2_N_544_enable_55(PHI2_N_544_enable_55), .A_out_4(A_out_4), 
           .n6(n6), .n628(n628), .PHI2_c(PHI2_c), .nWEDMA_N_9(nWEDMA_N_9), 
           .IRQOut_N_431(IRQOut_N_431), .n2200(n2200), .A_0__N_525(A_0__N_525), 
           .n629(n629), .nWE_c(nWE_c), .n3462(n3462), .nWEDMA_c(nWEDMA_c), 
           .AOE(AOE), .DDIR_c(DDIR_c), .n2160(n2160), .n3444(n3444), 
           .n630(n630), .n632(n632), .nFF00DecodeEN(nFF00DecodeEN), .RAMWR_N_546(RAMWR_N_546), 
           .n3495(n3495), .n3363(n3363)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(56[9] 65[48])
    Glue glue (.IntEnable(IntEnable), .IRQOut_N_431(IRQOut_N_431), .VerifyErr(VerifyErr), 
         .VerifyErrMask(VerifyErrMask), .IRQ(IRQ), .n7(n7), .n6(n6_adj_599), 
         .n2200(n2200), .n19(n19), .n8(n8), .A_out_11(A_out_11), .A_out_10(A_out_10), 
         .A_out_14(A_out_14), .A_out_3(A_out_3), .A_out_15(A_out_15), 
         .A_out_8(A_out_8), .A_out_12(A_out_12), .A_out_1(A_out_1), .nWE_c(nWE_c), 
         .nFF00DecodeEN(nFF00DecodeEN), .Execute(Execute), .AOE(AOE), 
         .nIO2_c(nIO2_c), .n3462(n3462), .A_out_2(A_out_2), .A_out_4(A_out_4), 
         .n3450(n3450), .D_out_7(D_out_7), .n3456(n3456), .BA_c(BA_c), 
         .DDIR_c(DDIR_c), .nDOE_c(nDOE_c)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(95[7] 112[15])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    INV i3140 (.A(PHI2_c), .Z(PHI2_N_544));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n632), .B(RAMRDD[3]), .C(AOE), .D(n2160), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(114[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    RAM ram (.C8M_N_484(C8M_N_484), .WRCMDr_N_500(WRCMDr_N_500), .PLLLock(PLLLock), 
        .PHI2Start_N_536(PHI2Start_N_536), .InitDone(InitDone), .n3669(n3669), 
        .REUA({REUA}), .RA_0_10(RA_0_10), .RAMWR(RAMWR), .C8M_c(C8M_c), 
        .n3204(n3204), .RBA_c_0(RBA_c_0), .C8M_c_enable_19(C8M_c_enable_19), 
        .n243(n243), .nRESET_c(nRESET_c), .n1179(n1179), .PHI2_c(PHI2_c), 
        .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .WRDr({WRDr}), .PHI2_N_544(PHI2_N_544), 
        .D_out_0(D_out_0), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
        .CKE_c(CKE_c), .DQMH_c(DQMH_c), .DQML_c(DQML_c), .A_0__N_525(A_0__N_525), 
        .RA_0_9(RA_0_9), .RA_0_8(RA_0_8), .RA_0_7(RA_0_7), .RA_0_6(RA_0_6), 
        .RA_0_5(RA_0_5), .RA_0_4(RA_0_4), .RA_0_3(RA_0_3), .RA_0_2(RA_0_2), 
        .RA_0_1(RA_0_1), .RA_0_0(RA_0_0), .RCLK_c(RCLK_c), .RBA_c_1(RBA_c_1), 
        .\nRESETr[3] (nRESETr[3]), .\nRESETr[4] (nRESETr[4]), .RD_out_1(RD_out_1), 
        .RA_0_11(RA_0_11), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), 
        .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), .RD_out_7(RD_out_7), 
        .D_out_1(D_out_1), .D_out_2(D_out_2), .D_out_3(D_out_3), .D_out_4(D_out_4), 
        .D_out_5(D_out_5), .D_out_6(D_out_6), .D_out_7(D_out_7), .nCS_c(nCS_c)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(67[6] 77[32])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DMASeq
//

module DMASeq (AOE, n3363, BA_c, D_out_4, n4, RAMWR, PHI2_N_544, 
            n3461, RAMWR_N_546, SwapState, nRWOE_N_576, D_out_1, n1244, 
            nAOE_c, nWEDMA_c, nRESET_c, D_out_0, n1234, InitDone, 
            WRCMDr_N_500, NextREUA_N_568, XferType, n3454, n6, PHI2_N_544_enable_55, 
            D_out_2, n1246, Execute, D_out_3, n1277, n3464, n3032, 
            PHI2_N_544_enable_51, Length1r, n3455, n3444, nWEDMA_N_9, 
            VerifyErr, n3451, PHI2_N_544_enable_64, D_out_7, n1242, 
            D_out_6, n1283, D_out_5, n1281) /* synthesis syn_module_defined=1 */ ;
    output AOE;
    input n3363;
    input BA_c;
    input D_out_4;
    output n4;
    output RAMWR;
    input PHI2_N_544;
    output n3461;
    input RAMWR_N_546;
    output SwapState;
    output nRWOE_N_576;
    input D_out_1;
    output n1244;
    output nAOE_c;
    output nWEDMA_c;
    input nRESET_c;
    input D_out_0;
    output n1234;
    input InitDone;
    output WRCMDr_N_500;
    output NextREUA_N_568;
    input [1:0]XferType;
    input n3454;
    input n6;
    output PHI2_N_544_enable_55;
    input D_out_2;
    output n1246;
    input Execute;
    input D_out_3;
    output n1277;
    output n3464;
    input n3032;
    output PHI2_N_544_enable_51;
    input Length1r;
    input n3455;
    output n3444;
    input nWEDMA_N_9;
    output VerifyErr;
    input n3451;
    output PHI2_N_544_enable_64;
    input D_out_7;
    output n1242;
    input D_out_6;
    output n1283;
    input D_out_5;
    output n1281;
    
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire PHI2_N_544_enable_65, nRESETr, SwapState_N_548, n1610, DMARW_N_561, 
        RAMRD, RAMRD_N_540, DMAr, BAr, n3;
    
    LUT4 i1_2_lut_2_lut_3_lut (.A(AOE), .B(n3363), .C(BA_c), .Z(PHI2_N_544_enable_65)) /* synthesis lut_function=((B (C))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_2_lut_2_lut_3_lut.init = 16'hd5d5;
    LUT4 i1_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_4), .Z(n4)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf1f1;
    FD1S3IX RAMWR_67 (.D(RAMWR_N_546), .CK(PHI2_N_544), .CD(n3461), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam RAMWR_67.GSR = "ENABLED";
    FD1S3IX SwapState_68 (.D(SwapState_N_548), .CK(PHI2_N_544), .CD(nRWOE_N_576), 
            .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(89[9] 93[5])
    defparam SwapState_68.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_139 (.A(AOE), .B(n3363), .C(BA_c), .Z(n1610)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_2_lut_3_lut_adj_139.init = 16'h8080;
    LUT4 i1851_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_1), .Z(n1244)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1851_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut (.A(AOE), .B(BA_c), .Z(nAOE_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 SwapState_I_0_88_1_lut (.A(SwapState), .Z(SwapState_N_548)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(53[15] 57[9])
    defparam SwapState_I_0_88_1_lut.init = 16'h5555;
    FD1S3AX DMARW_65 (.D(DMARW_N_561), .CK(PHI2_N_544), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam DMARW_65.GSR = "ENABLED";
    FD1S3AX RAMRD_66 (.D(RAMRD_N_540), .CK(PHI2_N_544), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam RAMRD_66.GSR = "ENABLED";
    FD1S3AX DMAr_69 (.D(AOE), .CK(PHI2_N_544), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(98[9] 102[5])
    defparam DMAr_69.GSR = "ENABLED";
    FD1S3AX BAr_70 (.D(BA_c), .CK(PHI2_N_544), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(98[9] 102[5])
    defparam BAr_70.GSR = "ENABLED";
    FD1S3AX nRESETr_71 (.D(nRESET_c), .CK(PHI2_N_544), .Q(nRESETr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(98[9] 102[5])
    defparam nRESETr_71.GSR = "ENABLED";
    LUT4 i2908_2_lut (.A(AOE), .B(BA_c), .Z(nRWOE_N_576)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2908_2_lut.init = 16'h7777;
    LUT4 i1794_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_0), .Z(n1234)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1794_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2_3_lut (.A(RAMRD), .B(InitDone), .C(RAMWR), .Z(WRCMDr_N_500)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i2_3_lut.init = 16'h0808;
    LUT4 SwapState_N_550_I_0_82_4_lut (.A(DMAr), .B(nRWOE_N_576), .C(n3), 
         .D(BAr), .Z(NextREUA_N_568)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(115[3:45])
    defparam SwapState_N_550_I_0_82_4_lut.init = 16'h3a30;
    LUT4 i2054_1_lut_rep_48 (.A(AOE), .Z(n3461)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i2054_1_lut_rep_48.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_4_lut (.A(AOE), .B(XferType[0]), .C(SwapState), 
         .D(XferType[1]), .Z(RAMRD_N_540)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(D))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hfdcc;
    LUT4 XferType_1__I_0_86_i3_2_lut (.A(XferType[0]), .B(XferType[1]), 
         .Z(n3)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(27[20:40])
    defparam XferType_1__I_0_86_i3_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_4_lut (.A(AOE), .B(XferType[0]), .C(SwapState), 
         .D(XferType[1]), .Z(DMARW_N_561)) /* synthesis lut_function=(A (B (D)+!B (C+!(D)))+!A ((D)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hfd33;
    LUT4 i2919_2_lut_3_lut_4_lut (.A(nRESETr), .B(AOE), .C(n3454), .D(n6), 
         .Z(PHI2_N_544_enable_55)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i2919_2_lut_3_lut_4_lut.init = 16'h111f;
    LUT4 i1852_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_2), .Z(n1246)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1852_2_lut_3_lut.init = 16'hf1f1;
    FD1P3IX DMA_64 (.D(Execute), .SP(PHI2_N_544_enable_65), .CD(n1610), 
            .CK(PHI2_N_544), .Q(AOE)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=79, LSE_RLINE=93 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam DMA_64.GSR = "ENABLED";
    LUT4 i1857_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_3), .Z(n1277)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1857_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2937_2_lut_rep_51 (.A(nRESETr), .B(AOE), .Z(n3464)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2937_2_lut_rep_51.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut (.A(nRESETr), .B(AOE), .C(n3032), .D(n3454), 
         .Z(PHI2_N_544_enable_51)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h11f1;
    LUT4 i2695_2_lut_rep_31_3_lut_4_lut (.A(nRESETr), .B(AOE), .C(Length1r), 
         .D(n3455), .Z(n3444)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i2695_2_lut_rep_31_3_lut_4_lut.init = 16'heee0;
    LUT4 i3_4_lut (.A(XferType[0]), .B(XferType[1]), .C(nRWOE_N_576), 
         .D(nWEDMA_N_9), .Z(VerifyErr)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0008;
    LUT4 i501_3_lut_4_lut (.A(nRESETr), .B(AOE), .C(n3451), .D(n6), 
         .Z(PHI2_N_544_enable_64)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;
    defparam i501_3_lut_4_lut.init = 16'h11f1;
    LUT4 i1850_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_7), .Z(n1242)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1850_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1860_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_6), .Z(n1283)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1860_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1859_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_5), .Z(n1281)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1859_2_lut_3_lut.init = 16'hf1f1;
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (A_out_2, CA, GND_net, n3455, Length1r, n634, n635, 
            n633, PHI2_N_544, n1234, A_out_0, A_out_1, n1244, n3464, 
            VerifyErr, REUA, n3454, n3032, D_out_4, D_out_1, n1246, 
            n3456, n3450, D_out_7, n3451, D_out_5, n1277, D_out_0, 
            D_out_3, D_out_2, n4, n1281, D_out_6, n1283, n1242, 
            XferType, SwapState, PHI2_N_544_enable_51, IntEnable, NextREUA_N_568, 
            VerifyErrMask, n3669, nRWOE_N_576, A_out_3, A_out_9, A_out_13, 
            n19, PHI2_N_544_enable_64, PHI2_N_544_enable_55, A_out_4, 
            n6, n628, PHI2_c, nWEDMA_N_9, IRQOut_N_431, n2200, A_0__N_525, 
            n629, nWE_c, n3462, nWEDMA_c, AOE, DDIR_c, n2160, 
            n3444, n630, n632, nFF00DecodeEN, RAMWR_N_546, n3495, 
            n3363) /* synthesis syn_module_defined=1 */ ;
    input A_out_2;
    output [15:0]CA;
    input GND_net;
    output n3455;
    output Length1r;
    output n634;
    output n635;
    output n633;
    input PHI2_N_544;
    input n1234;
    input A_out_0;
    input A_out_1;
    input n1244;
    input n3464;
    input VerifyErr;
    output [23:0]REUA;
    output n3454;
    output n3032;
    input D_out_4;
    input D_out_1;
    input n1246;
    input n3456;
    output n3450;
    input D_out_7;
    output n3451;
    input D_out_5;
    input n1277;
    input D_out_0;
    input D_out_3;
    input D_out_2;
    input n4;
    input n1281;
    input D_out_6;
    input n1283;
    input n1242;
    output [1:0]XferType;
    input SwapState;
    input PHI2_N_544_enable_51;
    output IntEnable;
    input NextREUA_N_568;
    output VerifyErrMask;
    input n3669;
    input nRWOE_N_576;
    input A_out_3;
    input A_out_9;
    input A_out_13;
    output n19;
    input PHI2_N_544_enable_64;
    input PHI2_N_544_enable_55;
    input A_out_4;
    output n6;
    output n628;
    input PHI2_c;
    input nWEDMA_N_9;
    output IRQOut_N_431;
    input n2200;
    output A_0__N_525;
    output n629;
    input nWE_c;
    input n3462;
    input nWEDMA_c;
    input AOE;
    output DDIR_c;
    output n2160;
    input n3444;
    output n630;
    output n632;
    output nFF00DecodeEN;
    output RAMWR_N_546;
    output n3495;
    output n3363;
    
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(50[12:18])
    
    wire n3490, n2885, n3183, n3185, n3226, n2881;
    wire [7:0]Length_7__N_342;
    
    wire n2880, n3201, n3203;
    wire [7:0]Length_15__N_298;
    wire [15:0]LengthWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(51[12:25])
    wire [7:0]n999;
    
    wire n3200, n3438, n3215;
    wire [7:0]n550;
    
    wire n3184, n3228, PHI2_N_544_enable_13, n3489, n3446, n3447, 
        PHI2_N_544_enable_79, REUAOut_18__N_40;
    wire [18:0]REUAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(46[12:23])
    wire [2:0]n501;
    
    wire n2879, n2878;
    wire [7:0]n998;
    
    wire Length_4__N_359, Length_1__N_374, n3079, n3463, Length_13__N_309, 
        PHI2_N_544_enable_81, Length_7__N_339;
    wire [7:0]n502;
    
    wire Length_0__N_379, PHI2_N_544_enable_60, Length_12__N_314, n3190, 
        n3191, n18, Length_15__N_295, Length_11__N_319, Length_10__N_324, 
        PHI2_N_544_enable_25, n3202;
    wire [7:0]n507;
    
    wire n3493, Length_9__N_329, n3492, n3494, Length_14__N_304, Length_8__N_334, 
        Length_3__N_364;
    wire [7:0]n506;
    
    wire n3439, n3440, n3194, n3467, n3199;
    wire [7:0]n587;
    
    wire n3, PHI2_N_544_enable_63, NextREUA, EndOfBlockMask, IntPending, 
        ExecuteENOut_N_436, n1269, EndOfBlock, PHI2_N_544_enable_20, 
        Fault, n28;
    wire [7:0]REUAOut_7__N_100;
    wire [7:0]n505;
    
    wire n3458, n3453;
    wire [7:0]n607;
    
    wire n3469, ExecuteEN;
    wire [15:0]CAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(41[12:21])
    
    wire PHI2_N_544_enable_62, Length_5__N_354, n3442, n10, n3441, 
        n3195, n3197, n3457;
    wire [5:0]n649;
    wire [7:0]n538;
    
    wire n22, Length_6__N_349, n3449, PHI2_N_544_enable_50;
    wire [1:0]IncMode;   // //mac/icloud/repos/gw4302/cpld/reg.v(60[11:18])
    wire [2:0]n504;
    
    wire n3189, Length_2__N_369, n3452;
    wire [7:0]CAOut_7__N_186;
    wire [7:0]n574;
    
    wire Length1;
    wire [7:0]REUAOut_15__N_56;
    wire [7:0]CAOut_15__N_142;
    
    wire n3361, n3474;
    wire [7:0]n617;
    
    wire n3473, n2877, n17, n30, n3448, n15, n13, CAOut_15__N_143, 
        n2888, n2887, n2886, AutoloadEN, REUAOut_15__N_57, n2876, 
        n2875, n2874, n2872, n2871, n3445, n26;
    wire [7:0]n562;
    
    wire nFF00DecodeEN_N_439, n3472, n2870, n2869, n2864, n2863, 
        n2862, n2861, n15_adj_594, n13_adj_595, n10_adj_596, n3181, 
        n16, PHI2_N_544_enable_73, n1010, n17_adj_597, n15_adj_598, 
        n11, n12, n3165, n3219, n3491, n2856, n2855, n2854, 
        n2853, n3198, n3163;
    
    LUT4 Length_4__bdd_3_lut_3030 (.A(Length[4]), .B(A_out_2), .C(CA[12]), 
         .Z(n3490)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam Length_4__bdd_3_lut_3030.init = 16'hb8b8;
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3455), .B1(Length1r), .C1(GND_net), .D1(GND_net), 
          .COUT(n2885));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    L6MUX21 mux_269_i2 (.D0(n3183), .D1(n3185), .SD(n3226), .Z(n634));
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2881), .S0(Length_7__N_342[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(204[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2880), .COUT(n2881), .S0(Length_7__N_342[5]), 
          .S1(Length_7__N_342[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(204[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    L6MUX21 mux_269_i1 (.D0(n3201), .D1(n3203), .SD(n3226), .Z(n635));
    LUT4 mux_676_i2_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[1]), 
         .D(LengthWritten[9]), .Z(n999[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i2_3_lut_3_lut_4_lut.init = 16'hf1e0;
    L6MUX21 mux_269_i3 (.D0(n3200), .D1(n3438), .SD(n3215), .Z(n633));
    PFUMX i2824 (.BLUT(n550[1]), .ALUT(n3184), .C0(n3228), .Z(n3185));
    FD1P3AX LengthWritten_8__661 (.D(n1234), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_8__661.GSR = "ENABLED";
    LUT4 Length_12__bdd_3_lut (.A(Length[12]), .B(A_out_0), .C(A_out_1), 
         .Z(n3489)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam Length_12__bdd_3_lut.init = 16'hfefe;
    FD1P3AX LengthWritten_9__660 (.D(n1244), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_9__660.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n3464), .B(n3446), .C(n3447), .D(VerifyErr), 
         .Z(PHI2_N_544_enable_79)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffbf;
    LUT4 mux_223_i1_4_lut_4_lut (.A(n3446), .B(REUAOut_18__N_40), .C(REUAWritten[16]), 
         .D(REUA[16]), .Z(n501[0])) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(C))) */ ;
    defparam mux_223_i1_4_lut_4_lut.init = 16'h72d8;
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2879), .COUT(n2880), .S0(Length_7__N_342[3]), 
          .S1(Length_7__N_342[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(204[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2878), .COUT(n2879), .S0(Length_7__N_342[1]), 
          .S1(Length_7__N_342[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(204[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2878), .S1(Length_7__N_342[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(204[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_4), 
         .D(n998[4]), .Z(Length_4__N_359)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_1), 
         .D(n998[1]), .Z(Length_1__N_374)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_10__659 (.D(n1246), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_10__659.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_127 (.A(n3456), .B(n3450), .C(D_out_7), .D(n3464), 
         .Z(n3079)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_127.init = 16'h0010;
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_5), 
         .D(n999[5]), .Z(Length_13__N_309)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_7__630 (.D(Length_7__N_339), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_7__630.GSR = "ENABLED";
    FD1S3IX CA_7__555 (.D(n502[7]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_7__555.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__658 (.D(n1277), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_11__658.GSR = "ENABLED";
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_0), 
         .D(n998[0]), .Z(Length_0__N_379)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_15__611 (.D(D_out_7), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_15__611.GSR = "ENABLED";
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_4), 
         .D(n999[4]), .Z(Length_12__N_314)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfb40;
    PFUMX i2830 (.BLUT(n550[5]), .ALUT(n3190), .C0(n3228), .Z(n3191));
    LUT4 i2_2_lut (.A(Length[13]), .B(Length[8]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_7), 
         .D(n999[7]), .Z(Length_15__N_295)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_3), 
         .D(n999[3]), .Z(Length_11__N_319)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_2), 
         .D(n999[2]), .Z(Length_10__N_324)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_0__602 (.D(D_out_0), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_0__602.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__657 (.D(n4), .SP(PHI2_N_544_enable_13), .CK(PHI2_N_544), 
            .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_12__657.GSR = "ENABLED";
    FD1S3IX CA_6__556 (.D(n502[6]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_6__556.GSR = "ENABLED";
    PFUMX i2842 (.BLUT(n550[0]), .ALUT(n3202), .C0(n3228), .Z(n3203));
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_7), 
         .D(n998[7]), .Z(Length_7__N_339)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX CA_5__557 (.D(n502[5]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_5__557.GSR = "ENABLED";
    FD1S3IX CA_4__558 (.D(n502[4]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_4__558.GSR = "ENABLED";
    FD1S3IX CA_3__559 (.D(n502[3]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_3__559.GSR = "ENABLED";
    FD1S3IX CA_2__560 (.D(n502[2]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_2__560.GSR = "ENABLED";
    FD1S3IX CA_1__561 (.D(n502[1]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_1__561.GSR = "ENABLED";
    FD1S3IX CA_0__562 (.D(n502[0]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CA_0__562.GSR = "ENABLED";
    FD1S3IX CA_15__571 (.D(n507[7]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_15__571.GSR = "ENABLED";
    LUT4 A_out_0_bdd_4_lut_3084 (.A(A_out_1), .B(A_out_2), .C(REUA[4]), 
         .D(CA[4]), .Z(n3493)) /* synthesis lut_function=(A (B+(D))+!A ((C)+!B)) */ ;
    defparam A_out_0_bdd_4_lut_3084.init = 16'hfbd9;
    FD1P3IX REUAWritten_1__601 (.D(D_out_1), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_1__601.GSR = "ENABLED";
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_1), 
         .D(n999[1]), .Z(Length_9__N_329)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfb40;
    LUT4 n3493_bdd_3_lut_3091 (.A(n3493), .B(n3492), .C(A_out_0), .Z(n3494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3493_bdd_3_lut_3091.init = 16'hcaca;
    FD1P3AX LengthWritten_13__656 (.D(n1281), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_13__656.GSR = "ENABLED";
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_6), 
         .D(n999[6]), .Z(Length_14__N_304)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_14__655 (.D(n1283), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_14__655.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__600 (.D(D_out_2), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_2__600.GSR = "ENABLED";
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n3463), .B(n3451), .C(D_out_0), 
         .D(n999[0]), .Z(Length_8__N_334)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_15__654 (.D(n1242), .SP(PHI2_N_544_enable_13), 
            .CK(PHI2_N_544), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam LengthWritten_15__654.GSR = "ENABLED";
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_3), 
         .D(n998[3]), .Z(Length_3__N_364)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX CA_14__572 (.D(n507[6]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_14__572.GSR = "ENABLED";
    LUT4 mux_676_i7_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[6]), 
         .D(LengthWritten[14]), .Z(n999[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i7_3_lut_3_lut_4_lut.init = 16'hf1e0;
    FD1S3IX CA_13__573 (.D(n507[5]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_13__573.GSR = "ENABLED";
    FD1S3IX CA_12__574 (.D(n507[4]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_12__574.GSR = "ENABLED";
    FD1S3IX CA_11__575 (.D(n507[3]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_11__575.GSR = "ENABLED";
    FD1S3IX CA_10__576 (.D(n507[2]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_10__576.GSR = "ENABLED";
    FD1S3IX CA_9__577 (.D(n507[1]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_9__577.GSR = "ENABLED";
    FD1S3IX CA_8__578 (.D(n507[0]), .CK(PHI2_N_544), .CD(n3464), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CA_8__578.GSR = "ENABLED";
    FD1S3IX REUA_7__587 (.D(n506[7]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_7__587.GSR = "ENABLED";
    FD1P3IX REUAWritten_3__599 (.D(D_out_3), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_3__599.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__612 (.D(D_out_6), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_14__612.GSR = "ENABLED";
    L6MUX21 i2833 (.D0(n3439), .D1(n3440), .SD(A_out_2), .Z(n3194));
    LUT4 i1_2_lut_rep_54 (.A(XferType[1]), .B(SwapState), .Z(n3467)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[6:15])
    defparam i1_2_lut_rep_54.init = 16'hdddd;
    PFUMX i2839 (.BLUT(n3199), .ALUT(n587[2]), .C0(n3), .Z(n3200));
    FD1P3AX LengthWritten_6__639 (.D(n1283), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_6__639.GSR = "ENABLED";
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_544_enable_63), .CD(n3464), 
            .CK(PHI2_N_544), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(98[8] 117[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1S3IX IntEnable_662 (.D(D_out_7), .CK(PHI2_N_544), .CD(n3464), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(224[8] 234[4])
    defparam IntEnable_662.GSR = "ENABLED";
    LUT4 NextREUA_I_0_2_lut_3_lut_4_lut (.A(XferType[1]), .B(SwapState), 
         .C(NextREUA_N_568), .D(XferType[0]), .Z(NextREUA)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[6:15])
    defparam NextREUA_I_0_2_lut_3_lut_4_lut.init = 16'hf0d0;
    FD1P3AX LengthWritten_5__640 (.D(n1281), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_5__640.GSR = "ENABLED";
    FD1S3IX EndOfBlockMask_663 (.D(D_out_6), .CK(PHI2_N_544), .CD(n3464), 
            .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(224[8] 234[4])
    defparam EndOfBlockMask_663.GSR = "ENABLED";
    FD1S3IX VerifyErrMask_664 (.D(D_out_5), .CK(PHI2_N_544), .CD(n3464), 
            .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(224[8] 234[4])
    defparam VerifyErrMask_664.GSR = "ENABLED";
    FD1P3IX IntPending_548 (.D(n3669), .SP(ExecuteENOut_N_436), .CD(n1269), 
            .CK(PHI2_N_544), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 95[4])
    defparam IntPending_548.GSR = "ENABLED";
    FD1P3AX LengthWritten_4__641 (.D(n4), .SP(PHI2_N_544_enable_51), .CK(PHI2_N_544), 
            .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_4__641.GSR = "ENABLED";
    FD1P3IX EndOfBlock_549 (.D(n3669), .SP(PHI2_N_544_enable_20), .CD(n1269), 
            .CK(PHI2_N_544), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 95[4])
    defparam EndOfBlock_549.GSR = "ENABLED";
    FD1P3IX Fault_550 (.D(n3669), .SP(VerifyErr), .CD(n1269), .CK(PHI2_N_544), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 95[4])
    defparam Fault_550.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(Length[10]), .B(Length[4]), .C(Length[7]), .D(Length[6]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i12_4_lut.init = 16'hfffe;
    FD1S3IX REUA_6__588 (.D(n506[6]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_6__588.GSR = "ENABLED";
    LUT4 mux_228_i8_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_7), .D(REUAOut_7__N_100[7]), 
         .Z(n506[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_228_i7_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_6), .D(REUAOut_7__N_100[6]), 
         .Z(n506[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i7_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_5__589 (.D(n506[5]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_5__589.GSR = "ENABLED";
    FD1S3IX REUA_4__590 (.D(n506[4]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_4__590.GSR = "ENABLED";
    FD1S3IX REUA_3__591 (.D(n506[3]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_3__591.GSR = "ENABLED";
    FD1S3IX REUA_2__592 (.D(n506[2]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_2__592.GSR = "ENABLED";
    FD1S3IX REUA_1__593 (.D(n506[1]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_1__593.GSR = "ENABLED";
    FD1S3IX REUA_0__594 (.D(n506[0]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUA_0__594.GSR = "ENABLED";
    FD1S3IX REUA_15__603 (.D(n505[7]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_15__603.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_45_3_lut (.A(XferType[1]), .B(SwapState), .C(XferType[0]), 
         .Z(n3458)) /* synthesis lut_function=((B+(C))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[6:15])
    defparam i2_2_lut_rep_45_3_lut.init = 16'hfdfd;
    LUT4 mux_228_i6_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_5), .D(REUAOut_7__N_100[5]), 
         .Z(n506[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_228_i5_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_4), .D(REUAOut_7__N_100[4]), 
         .Z(n506[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_6__596 (.D(D_out_6), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_6__596.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__642 (.D(n1277), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_3__642.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_40_3_lut_4_lut (.A(XferType[1]), .B(SwapState), .C(nRWOE_N_576), 
         .D(XferType[0]), .Z(n3453)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[6:15])
    defparam i1_2_lut_rep_40_3_lut_4_lut.init = 16'h0f0d;
    LUT4 mux_228_i4_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_3), .D(REUAOut_7__N_100[3]), 
         .Z(n506[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_7__595 (.D(D_out_7), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_7__595.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__597 (.D(D_out_5), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_5__597.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__598 (.D(D_out_4), .SP(PHI2_N_544_enable_25), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(148[8] 160[4])
    defparam REUAWritten_4__598.GSR = "ENABLED";
    LUT4 i2887_3_lut_4_lut_4_lut (.A(A_out_0), .B(n607[5]), .C(A_out_3), 
         .D(Length[5]), .Z(n3190)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i2887_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 mux_228_i3_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_2), .D(REUAOut_7__N_100[2]), 
         .Z(n506[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_3_lut_rep_37_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3469), 
         .D(A_out_2), .Z(n3450)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i2_3_lut_rep_37_4_lut_4_lut.init = 16'hfffd;
    LUT4 i7_4_lut_4_lut (.A(A_out_0), .B(A_out_9), .C(ExecuteEN), .D(A_out_13), 
         .Z(n19)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i7_4_lut_4_lut.init = 16'h4000;
    FD1P3AX CAWritten_6__564 (.D(D_out_6), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_6__564.GSR = "ENABLED";
    FD1S3IX REUA_14__604 (.D(n505[6]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_14__604.GSR = "ENABLED";
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_5), 
         .D(n998[5]), .Z(Length_5__N_354)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_228_i2_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_1), .D(REUAOut_7__N_100[1]), 
         .Z(n506[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_228_i1_3_lut_4_lut (.A(n3463), .B(n3454), .C(D_out_0), .D(REUAOut_7__N_100[0]), 
         .Z(n506[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_228_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i680_2_lut_rep_29 (.A(REUA[16]), .B(REUAOut_18__N_40), .Z(n3442)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(189[18:34])
    defparam i680_2_lut_rep_29.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(XferType[0]), .B(n3467), .C(CA[4]), 
         .D(nRWOE_N_576), .Z(n10)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[6:15])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h00e0;
    FD1S3IX REUA_13__605 (.D(n505[5]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_13__605.GSR = "ENABLED";
    FD1S3IX REUA_12__606 (.D(n505[4]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_12__606.GSR = "ENABLED";
    FD1S3IX REUA_11__607 (.D(n505[3]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_11__607.GSR = "ENABLED";
    FD1S3IX REUA_10__608 (.D(n505[2]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_10__608.GSR = "ENABLED";
    FD1S3IX REUA_9__609 (.D(n505[1]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_9__609.GSR = "ENABLED";
    FD1S3IX REUA_8__610 (.D(n505[0]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_8__610.GSR = "ENABLED";
    FD1P3AX CAWritten_5__565 (.D(D_out_5), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_5__565.GSR = "ENABLED";
    LUT4 n1_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n550[7]), .D(Length[7]), 
         .Z(n3441)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam n1_bdd_4_lut_4_lut.init = 16'hfc74;
    L6MUX21 i2836 (.D0(n3195), .D1(n3441), .SD(A_out_2), .Z(n3197));
    LUT4 i1877_2_lut_rep_34_4_lut_4_lut (.A(A_out_0), .B(n3456), .C(A_out_1), 
         .D(n3457), .Z(n3447)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i1877_2_lut_rep_34_4_lut_4_lut.init = 16'hfffd;
    PFUMX i2822 (.BLUT(n649[1]), .ALUT(n538[1]), .C0(A_out_1), .Z(n3183));
    LUT4 mux_248_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n550[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_248_i2_3_lut.init = 16'hcaca;
    LUT4 i6_2_lut (.A(Length[9]), .B(Length[15]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i6_2_lut.init = 16'heeee;
    PFUMX i2840 (.BLUT(n649[0]), .ALUT(n538[0]), .C0(A_out_1), .Z(n3201));
    LUT4 n1_bdd_4_lut_3013_4_lut (.A(A_out_0), .B(A_out_1), .C(n550[6]), 
         .D(Length[6]), .Z(n3440)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam n1_bdd_4_lut_3013_4_lut.init = 16'hfc74;
    PFUMX i2834 (.BLUT(n649[5]), .ALUT(n538[7]), .C0(A_out_1), .Z(n3195));
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_6), 
         .D(n998[6]), .Z(Length_6__N_349)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2_3_lut_rep_36 (.A(A_out_0), .B(A_out_1), .C(n3454), .Z(n3449)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_rep_36.init = 16'h0202;
    FD1P3AX CAWritten_1__569 (.D(D_out_1), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_1__569.GSR = "ENABLED";
    FD1P3AX CAWritten_10__584 (.D(D_out_2), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_10__584.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_544_enable_64), .CD(n3464), 
            .CK(PHI2_N_544), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(240[8] 243[4])
    defparam IncMode__i0.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__629 (.D(D_out_0), .SP(PHI2_N_544_enable_55), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUAWritten_16__629.GSR = "ENABLED";
    FD1P3AX CAWritten_0__570 (.D(D_out_0), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_0__570.GSR = "ENABLED";
    FD1P3AX CAWritten_15__579 (.D(D_out_7), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_15__579.GSR = "ENABLED";
    FD1S3IX REUA_18__624 (.D(n504[2]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_18__624.GSR = "ENABLED";
    FD1S3IX REUA_17__625 (.D(n504[1]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_17__625.GSR = "ENABLED";
    FD1S3IX REUA_16__626 (.D(n504[0]), .CK(PHI2_N_544), .CD(n3464), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_16__626.GSR = "ENABLED";
    FD1P3AX CAWritten_9__585 (.D(D_out_1), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_9__585.GSR = "ENABLED";
    LUT4 EndOfBlock_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n538[6]), 
         .D(EndOfBlock), .Z(n3439)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam EndOfBlock_bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i374_2_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3454), .D(n3464), 
         .Z(PHI2_N_544_enable_60)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;
    defparam i374_2_lut_4_lut.init = 16'hff02;
    LUT4 i1_2_lut_rep_56 (.A(A_out_3), .B(A_out_4), .Z(n3469)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2:14])
    defparam i1_2_lut_rep_56.init = 16'heeee;
    FD1P3AX CAWritten_14__580 (.D(D_out_6), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_14__580.GSR = "ENABLED";
    FD1P3AX CAWritten_13__581 (.D(D_out_5), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_13__581.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_44_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3457)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2:14])
    defparam i1_2_lut_rep_44_3_lut.init = 16'hfefe;
    FD1P3AX CAWritten_8__586 (.D(D_out_0), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_8__586.GSR = "ENABLED";
    FD1P3AX LengthWritten_2__643 (.D(n1246), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_2__643.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__628 (.D(D_out_1), .SP(PHI2_N_544_enable_55), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUAWritten_17__628.GSR = "ENABLED";
    FD1P3IX REUAWritten_18__627 (.D(D_out_2), .SP(PHI2_N_544_enable_55), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUAWritten_18__627.GSR = "ENABLED";
    FD1P3IX REUA_19__623 (.D(D_out_3), .SP(PHI2_N_544_enable_55), .CD(n3464), 
            .CK(PHI2_N_544), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_19__623.GSR = "ENABLED";
    PFUMX i2828 (.BLUT(n649[3]), .ALUT(n538[5]), .C0(A_out_1), .Z(n3189));
    LUT4 mux_226_i3_3_lut_4_lut (.A(n6), .B(n3454), .C(D_out_2), .D(n501[2]), 
         .Z(n504[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_226_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2921_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3226)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i2921_2_lut.init = 16'heeee;
    LUT4 mux_269_i8_3_lut (.A(n3197), .B(n607[7]), .C(A_out_3), .Z(n628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_269_i8_3_lut.init = 16'hcaca;
    LUT4 mux_226_i2_3_lut_4_lut (.A(n6), .B(n3454), .C(D_out_1), .D(n501[1]), 
         .Z(n504[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_226_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n3454), .B(n3032), .C(D_out_2), 
         .D(n998[2]), .Z(Length_2__N_369)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_1__644 (.D(n1244), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_1__644.GSR = "ENABLED";
    LUT4 mux_226_i1_3_lut_4_lut (.A(n6), .B(n3454), .C(D_out_0), .D(n501[0]), 
         .Z(n504[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_226_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_224_i8_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_7), .D(CAOut_7__N_186[7]), 
         .Z(n502[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_7__638 (.D(n1242), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_7__638.GSR = "ENABLED";
    FD1P3AX CAWritten_12__582 (.D(D_out_4), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_12__582.GSR = "ENABLED";
    LUT4 mux_224_i7_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_6), .D(CAOut_7__N_186[6]), 
         .Z(n502[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX ExecuteEN_551 (.D(n3079), .SP(PHI2_N_544_enable_79), .CK(PHI2_N_544), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(98[8] 117[4])
    defparam ExecuteEN_551.GSR = "ENABLED";
    LUT4 mux_224_i6_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_5), .D(CAOut_7__N_186[5]), 
         .Z(n502[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_224_i5_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_4), .D(CAOut_7__N_186[4]), 
         .Z(n502[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_224_i4_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_3), .D(CAOut_7__N_186[3]), 
         .Z(n502[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_265_i8_3_lut (.A(n574[7]), .B(IncMode[1]), .C(A_out_1), .Z(n607[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_265_i8_3_lut.init = 16'hcaca;
    LUT4 mux_256_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n574[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_256_i8_3_lut.init = 16'hcaca;
    LUT4 mux_224_i3_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_2), .D(CAOut_7__N_186[2]), 
         .Z(n502[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_33 (.A(n3455), .B(Length1r), .Z(n3446)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_33.init = 16'heeee;
    FD1S3AX Length1r_547 (.D(Length1), .CK(PHI2_c), .Q(Length1r)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[8:44])
    defparam Length1r_547.GSR = "ENABLED";
    LUT4 mux_224_i2_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_1), .D(CAOut_7__N_186[1]), 
         .Z(n502[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_675_i7_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_7__N_342[6]), 
         .D(LengthWritten[6]), .Z(n998[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_675_i7_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_227_i8_3_lut (.A(REUAOut_15__N_56[7]), .B(D_out_7), .C(n3449), 
         .Z(n505[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i8_3_lut.init = 16'hcaca;
    LUT4 mux_224_i1_3_lut_4_lut (.A(n6), .B(n3452), .C(D_out_0), .D(CAOut_7__N_186[0]), 
         .Z(n502[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_224_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_229_i1_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_0), .D(CAOut_15__N_142[0]), 
         .Z(n507[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length1_N_345_bdd_4_lut_2998 (.A(n3455), .B(nWEDMA_N_9), .C(XferType[0]), 
         .D(SwapState), .Z(n3361)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+(D)))) */ ;
    defparam Length1_N_345_bdd_4_lut_2998.init = 16'h7570;
    FD1P3IX REUA_20__622 (.D(D_out_4), .SP(PHI2_N_544_enable_55), .CD(n3464), 
            .CK(PHI2_N_544), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_20__622.GSR = "ENABLED";
    LUT4 mux_676_i5_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[4]), 
         .D(LengthWritten[12]), .Z(n999[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i5_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_267_i4_4_lut (.A(n3474), .B(Length[11]), .C(A_out_3), .D(n3463), 
         .Z(n617[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_267_i4_4_lut.init = 16'hfaca;
    LUT4 mux_229_i2_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_1), .D(CAOut_15__N_142[1]), 
         .Z(n507[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i2_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUA_21__621 (.D(D_out_5), .SP(PHI2_N_544_enable_55), .CD(n3464), 
            .CK(PHI2_N_544), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_21__621.GSR = "ENABLED";
    LUT4 mux_229_i3_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_2), .D(CAOut_15__N_142[2]), 
         .Z(n507[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_675_i8_3_lut_4_lut (.A(n3455), .B(Length1r), .C(LengthWritten[7]), 
         .D(Length_7__N_342[7]), .Z(n998[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_675_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_263_i4_then_4_lut (.A(A_out_1), .B(A_out_2), .C(Length[3]), 
         .D(CA[11]), .Z(n3473)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_263_i4_then_4_lut.init = 16'he2c0;
    LUT4 mux_229_i4_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_3), .D(CAOut_15__N_142[3]), 
         .Z(n507[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_229_i5_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_4), .D(CAOut_15__N_142[4]), 
         .Z(n507[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 i6_1_lut_rep_30_2_lut (.A(n3455), .B(Length1r), .Z(PHI2_N_544_enable_20)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6_1_lut_rep_30_2_lut.init = 16'h1111;
    FD1P3IX REUAWritten_12__614 (.D(D_out_4), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_12__614.GSR = "ENABLED";
    CCU2D Length_15__I_0_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2877), .S0(Length_15__N_298[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(219[19:37])
    defparam Length_15__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_9.INJECT1_1 = "NO";
    LUT4 XferEnd_I_0_2_lut_3_lut (.A(n3455), .B(Length1r), .C(VerifyErr), 
         .Z(ExecuteENOut_N_436)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam XferEnd_I_0_2_lut_3_lut.init = 16'hf1f1;
    FD1P3IX REUA_22__620 (.D(D_out_6), .SP(PHI2_N_544_enable_55), .CD(n3464), 
            .CK(PHI2_N_544), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_22__620.GSR = "ENABLED";
    LUT4 mux_229_i6_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_5), .D(CAOut_15__N_142[5]), 
         .Z(n507[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut (.A(EndOfBlock), .B(EndOfBlockMask), .Z(IRQOut_N_431)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 95[4])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX CAWritten_11__583 (.D(D_out_3), .SP(PHI2_N_544_enable_50), .CK(PHI2_N_544), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(134[8] 145[4])
    defparam CAWritten_11__583.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__645 (.D(n1234), .SP(PHI2_N_544_enable_51), 
            .CK(PHI2_N_544), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam LengthWritten_0__645.GSR = "ENABLED";
    LUT4 mux_229_i7_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_6), .D(CAOut_15__N_142[6]), 
         .Z(n507[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_adj_128 (.A(Length[0]), .B(Length[12]), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i1_2_lut_adj_128.init = 16'hdddd;
    FD1P3AX CAWritten_7__563 (.D(D_out_7), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_7__563.GSR = "ENABLED";
    LUT4 i14_4_lut (.A(Length[2]), .B(n28), .C(n22), .D(Length[11]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 mux_229_i8_3_lut_4_lut (.A(n3452), .B(n3032), .C(D_out_7), .D(CAOut_15__N_142[7]), 
         .Z(n507[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_229_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_35_4_lut (.A(n2200), .B(n3456), .C(A_out_3), .D(n3463), 
         .Z(n3448)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_35_4_lut.init = 16'h0010;
    FD1P3AX CAWritten_4__566 (.D(D_out_4), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_4__566.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n15), .B(n13), .C(CA[5]), .D(n10), .Z(CAOut_15__N_143)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(CA[7]), .B(CA[1]), .C(CA[6]), .D(CA[0]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 mux_227_i7_3_lut (.A(REUAOut_15__N_56[6]), .B(D_out_6), .C(n3449), 
         .Z(n505[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i7_3_lut.init = 16'hcaca;
    LUT4 mux_227_i6_3_lut (.A(REUAOut_15__N_56[5]), .B(D_out_5), .C(n3449), 
         .Z(n505[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i6_3_lut.init = 16'hcaca;
    LUT4 i4_2_lut (.A(CA[3]), .B(CA[2]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(n3446), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n2888), .S0(REUAOut_15__N_56[6]), .S1(REUAOut_15__N_56[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h569a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h569a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(n3446), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n2887), .COUT(n2888), .S0(REUAOut_15__N_56[4]), 
          .S1(REUAOut_15__N_56[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h569a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h569a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    LUT4 mux_676_i4_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[3]), 
         .D(LengthWritten[11]), .Z(n999[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i4_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_525)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(177[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 mux_227_i5_3_lut (.A(REUAOut_15__N_56[4]), .B(D_out_4), .C(n3449), 
         .Z(n505[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i5_3_lut.init = 16'hcaca;
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(n3446), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n2886), .COUT(n2887), .S0(REUAOut_15__N_56[2]), 
          .S1(REUAOut_15__N_56[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h569a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h569a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    FD1P3IX AutoloadEN_553 (.D(D_out_6), .SP(PHI2_N_544_enable_63), .CD(n3464), 
            .CK(PHI2_N_544), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(98[8] 117[4])
    defparam AutoloadEN_553.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_57), .B0(n3446), .C0(REUAWritten[8]), 
          .D0(REUA[8]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[9]), 
          .D1(REUA[9]), .CIN(n2885), .COUT(n2886), .S0(REUAOut_15__N_56[0]), 
          .S1(REUAOut_15__N_56[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'h74b8;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h569a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2876), .COUT(n2877), .S0(Length_15__N_298[5]), 
          .S1(Length_15__N_298[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(219[19:37])
    defparam Length_15__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2875), .COUT(n2876), .S0(Length_15__N_298[3]), 
          .S1(Length_15__N_298[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(219[19:37])
    defparam Length_15__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2874), .COUT(n2875), .S0(Length_15__N_298[1]), 
          .S1(Length_15__N_298[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(219[19:37])
    defparam Length_15__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2874), .S1(Length_15__N_298[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(219[19:37])
    defparam Length_15__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(n3446), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n2872), .S0(REUAOut_7__N_100[6]), .S1(REUAOut_7__N_100[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(158[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h569a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h569a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(n3446), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n2871), .COUT(n2872), .S0(REUAOut_7__N_100[4]), 
          .S1(REUAOut_7__N_100[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(158[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h569a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h569a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    LUT4 i870_2_lut_3_lut_4_lut (.A(n3456), .B(n3457), .C(n3464), .D(n6), 
         .Z(PHI2_N_544_enable_62)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i870_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 mux_269_i7_3_lut (.A(n3194), .B(n607[6]), .C(A_out_3), .Z(n629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_269_i7_3_lut.init = 16'hcaca;
    LUT4 mux_227_i4_3_lut (.A(REUAOut_15__N_56[3]), .B(D_out_3), .C(n3449), 
         .Z(n505[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i4_3_lut.init = 16'hcaca;
    LUT4 mux_265_i7_3_lut (.A(n574[6]), .B(IncMode[0]), .C(A_out_1), .Z(n607[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_265_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_129 (.A(A_out_0), .B(A_out_1), .Z(n3032)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_129.init = 16'h8888;
    LUT4 i882_2_lut_3_lut_4_lut (.A(n3456), .B(n3457), .C(n3464), .D(n3032), 
         .Z(PHI2_N_544_enable_50)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i882_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3IX REUA_23__619 (.D(D_out_7), .SP(PHI2_N_544_enable_55), .CD(n3464), 
            .CK(PHI2_N_544), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(179[8] 191[4])
    defparam REUA_23__619.GSR = "ENABLED";
    LUT4 i1381_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n574[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1381_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_8__618 (.D(D_out_0), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_8__618.GSR = "ENABLED";
    LUT4 mux_227_i3_3_lut (.A(REUAOut_15__N_56[2]), .B(D_out_2), .C(n3449), 
         .Z(n505[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i3_3_lut.init = 16'hcaca;
    LUT4 mux_227_i2_3_lut (.A(REUAOut_15__N_56[1]), .B(D_out_1), .C(n3449), 
         .Z(n505[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i2_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_9__617 (.D(D_out_1), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_9__617.GSR = "ENABLED";
    LUT4 mux_676_i3_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[2]), 
         .D(LengthWritten[10]), .Z(n999[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i3_3_lut_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX REUAWritten_10__616 (.D(D_out_2), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_10__616.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_32_4_lut (.A(A_out_2), .B(n3469), .C(n3456), .D(n3032), 
         .Z(n3445)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2:14])
    defparam i1_2_lut_rep_32_4_lut.init = 16'h0200;
    FD1P3IX REUAWritten_11__615 (.D(D_out_3), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_11__615.GSR = "ENABLED";
    LUT4 i15_4_lut_rep_42 (.A(n17), .B(n30), .C(n26), .D(n18), .Z(n3455)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i15_4_lut_rep_42.init = 16'hfffe;
    FD1P3IX REUAWritten_13__613 (.D(D_out_5), .SP(PHI2_N_544_enable_60), 
            .CD(n3464), .CK(PHI2_N_544), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_13__613.GSR = "ENABLED";
    LUT4 equal_83_i32_1_lut_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), 
         .Z(Length1)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam equal_83_i32_1_lut_4_lut.init = 16'h0001;
    LUT4 i2891_3_lut_4_lut (.A(Length[9]), .B(n3463), .C(A_out_3), .D(n562[1]), 
         .Z(n3184)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i2891_3_lut_4_lut.init = 16'hefe0;
    LUT4 mux_227_i1_3_lut (.A(REUAOut_15__N_56[0]), .B(D_out_0), .C(n3449), 
         .Z(n505[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam mux_227_i1_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_3__567 (.D(D_out_3), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_3__567.GSR = "ENABLED";
    FD1P3AX CAWritten_2__568 (.D(D_out_2), .SP(PHI2_N_544_enable_62), .CK(PHI2_N_544), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(120[8] 131[4])
    defparam CAWritten_2__568.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(nWE_c), .B(n3462), .C(n4), .D(n3450), 
         .Z(nFF00DecodeEN_N_439)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_544_enable_63), .CD(n3464), 
            .CK(PHI2_N_544), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(98[8] 117[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 equal_15_i6_2_lut (.A(A_out_0), .B(A_out_1), .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam equal_15_i6_2_lut.init = 16'hbbbb;
    LUT4 i2914_2_lut_3_lut_4_lut (.A(nWE_c), .B(n3462), .C(n3464), .D(n3450), 
         .Z(PHI2_N_544_enable_63)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i2914_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i2_3_lut_rep_38_4_lut (.A(nWE_c), .B(n3462), .C(A_out_3), .D(n2200), 
         .Z(n3451)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_38_4_lut.init = 16'h0010;
    LUT4 i710_1_lut (.A(A_out_2), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(68[2:14])
    defparam i710_1_lut.init = 16'h5555;
    LUT4 mux_263_i4_else_4_lut (.A(A_out_1), .B(CA[3]), .C(A_out_2), .Z(n3472)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam mux_263_i4_else_4_lut.init = 16'hf8f8;
    LUT4 mux_248_i4_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n550[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_248_i4_3_lut.init = 16'hcaca;
    LUT4 mux_675_i5_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_7__N_342[4]), 
         .D(LengthWritten[4]), .Z(n998[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_675_i5_3_lut_3_lut_4_lut.init = 16'hf1e0;
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(n3446), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n2870), .COUT(n2871), .S0(REUAOut_7__N_100[2]), 
          .S1(REUAOut_7__N_100[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(158[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h569a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h569a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(NextREUA), .B0(n3446), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(n3446), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n2869), .COUT(n2870), .S0(REUAOut_7__N_100[0]), 
          .S1(REUAOut_7__N_100[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(158[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'h74b8;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h569a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3455), .B1(Length1r), .C1(GND_net), .D1(GND_net), 
          .COUT(n2869));   // //mac/icloud/repos/gw4302/cpld/reg.v(158[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_41_4_lut (.A(nWE_c), .B(n3462), .C(n3469), .D(A_out_2), 
         .Z(n3454)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_41_4_lut.init = 16'hfeff;
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(n3446), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(n3446), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n2864), .S0(CAOut_15__N_142[6]), .S1(CAOut_15__N_142[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(143[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h569a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h569a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(n3446), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(n3446), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n2863), .COUT(n2864), .S0(CAOut_15__N_142[4]), 
          .S1(CAOut_15__N_142[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(143[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h569a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h569a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(n3446), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(n3446), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n2862), .COUT(n2863), .S0(CAOut_15__N_142[2]), 
          .S1(CAOut_15__N_142[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(143[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h569a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h569a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_143), .B0(n3446), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(n3446), .C1(CAWritten[9]), .D1(CA[9]), 
          .CIN(n2861), .COUT(n2862), .S0(CAOut_15__N_142[0]), .S1(CAOut_15__N_142[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(143[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'h74b8;
    defparam CAOut_15__I_0_3.INIT1 = 16'h569a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3455), .B1(Length1r), .C1(GND_net), .D1(GND_net), .COUT(n2861));   // //mac/icloud/repos/gw4302/cpld/reg.v(143[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i2037_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(AOE), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(52[7:10])
    defparam i2037_3_lut.init = 16'hc5c5;
    LUT4 i2885_3_lut_4_lut (.A(n3463), .B(Length[8]), .C(A_out_3), .D(n562[0]), 
         .Z(n3202)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i2885_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1910_4_lut (.A(A_out_4), .B(A_out_3), .C(n3032), .D(A_out_2), 
         .Z(n2160)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1910_4_lut.init = 16'heeea;
    LUT4 i1847_2_lut_rep_39_3_lut_4_lut (.A(A_out_2), .B(n3469), .C(n3462), 
         .D(nWE_c), .Z(n3452)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2:14])
    defparam i1847_2_lut_rep_39_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_675_i6_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_7__N_342[5]), 
         .D(LengthWritten[5]), .Z(n998[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_675_i6_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_675_i4_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_7__N_342[3]), 
         .D(LengthWritten[3]), .Z(n998[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_675_i4_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_675_i3_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_7__N_342[2]), 
         .D(LengthWritten[2]), .Z(n998[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_675_i3_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_676_i8_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[7]), 
         .D(LengthWritten[15]), .Z(n999[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i8_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_675_i1_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_7__N_342[0]), 
         .D(LengthWritten[0]), .Z(n998[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_675_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2920_2_lut (.A(A_out_3), .B(A_out_1), .Z(n3228)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2920_2_lut.init = 16'heeee;
    LUT4 mux_248_i8_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n550[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_248_i8_3_lut.init = 16'hcaca;
    LUT4 mux_676_i1_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[0]), 
         .D(LengthWritten[8]), .Z(n999[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i8_4_lut_adj_130 (.A(n15_adj_594), .B(n13_adj_595), .C(REUA[13]), 
         .D(n10_adj_596), .Z(REUAOut_18__N_40)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut_adj_130.init = 16'h8000;
    LUT4 i6_4_lut_adj_131 (.A(REUA[15]), .B(REUA[9]), .C(REUA[14]), .D(REUA[11]), 
         .Z(n15_adj_594)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_131.init = 16'h8000;
    LUT4 i4_2_lut_adj_132 (.A(REUA[8]), .B(REUA[12]), .Z(n13_adj_595)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut_adj_132.init = 16'h8888;
    LUT4 i2_4_lut (.A(n3448), .B(n3444), .C(n3181), .D(n16), .Z(PHI2_N_544_enable_73)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;
    defparam i2_4_lut.init = 16'hbfbb;
    LUT4 i2820_4_lut (.A(Length[0]), .B(Length[4]), .C(Length[1]), .D(Length[2]), 
         .Z(n3181)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2820_4_lut.init = 16'hfffe;
    LUT4 i688_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_40), .C(REUA[17]), 
         .Z(n1010)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(189[18:34])
    defparam i688_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_676_i6_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_15__N_298[5]), 
         .D(LengthWritten[13]), .Z(n999[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_676_i6_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_248_i7_3_lut (.A(REUA[6]), .B(REUA[14]), .C(A_out_0), .Z(n550[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_248_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_133 (.A(REUA[10]), .B(REUAOut_15__N_57), .Z(n10_adj_596)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_133.init = 16'h8888;
    LUT4 i9_4_lut (.A(n17_adj_597), .B(n15_adj_598), .C(n11), .D(n12), 
         .Z(REUAOut_15__N_57)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(n3165), .B(Length[5]), .C(Length[7]), .D(n3453), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7_4_lut.init = 16'h0100;
    LUT4 i7_4_lut_adj_134 (.A(REUA[6]), .B(n3458), .C(REUA[4]), .D(REUA[7]), 
         .Z(n17_adj_597)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_134.init = 16'h8000;
    LUT4 i10_4_lut (.A(Length[5]), .B(Length[3]), .C(Length[14]), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2804_2_lut (.A(Length[3]), .B(Length[6]), .Z(n3165)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2804_2_lut.init = 16'heeee;
    LUT4 i5_2_lut (.A(REUA[1]), .B(REUA[3]), .Z(n15_adj_598)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 mux_244_i6_3_lut (.A(CA[5]), .B(CA[13]), .C(A_out_0), .Z(n538[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_244_i6_3_lut.init = 16'hcaca;
    LUT4 mux_275_i4_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n649[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_275_i4_3_lut.init = 16'hcaca;
    LUT4 mux_244_i7_3_lut (.A(CA[6]), .B(CA[14]), .C(A_out_0), .Z(n538[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_244_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_135 (.A(NextREUA_N_568), .B(REUA[0]), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_135.init = 16'h8888;
    LUT4 mux_244_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n538[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_244_i8_3_lut.init = 16'hcaca;
    LUT4 mux_275_i6_3_lut (.A(IntPending), .B(ExecuteEN), .C(A_out_0), 
         .Z(n649[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_275_i6_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_adj_136 (.A(REUA[2]), .B(REUA[5]), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_136.init = 16'h8888;
    LUT4 mux_244_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n538[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_244_i1_3_lut.init = 16'hcaca;
    L6MUX21 mux_269_i6 (.D0(n3189), .D1(n3191), .SD(n3226), .Z(n630));
    LUT4 i1795_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n649[0])) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i1795_2_lut.init = 16'h8888;
    LUT4 mux_244_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n538[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_244_i2_3_lut.init = 16'hcaca;
    PFUMX mux_269_i4 (.BLUT(n550[3]), .ALUT(n617[3]), .C0(n3219), .Z(n632));
    LUT4 i1829_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n649[1])) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i1829_2_lut.init = 16'h8888;
    LUT4 mux_252_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n562[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_252_i1_3_lut.init = 16'hcaca;
    LUT4 i1833_4_lut (.A(CA[2]), .B(A_out_1), .C(CA[10]), .D(A_out_0), 
         .Z(n587[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i1833_4_lut.init = 16'hc088;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_544_enable_64), .CD(n3464), 
            .CK(PHI2_N_544), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(240[8] 243[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 Length_4__bdd_3_lut_3038 (.A(A_out_2), .B(nFF00DecodeEN), .C(REUA[12]), 
         .Z(n3491)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam Length_4__bdd_3_lut_3038.init = 16'he4e4;
    LUT4 i2924_2_lut_3_lut (.A(A_out_2), .B(A_out_1), .C(A_out_3), .Z(n3215)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i2924_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i2923_2_lut_3_lut (.A(A_out_2), .B(A_out_1), .C(A_out_3), .Z(n3219)) /* synthesis lut_function=((B+(C))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i2923_2_lut_3_lut.init = 16'hfdfd;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(n3446), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(n3446), .C1(CAWritten[7]), .D1(CA[7]), 
          .CIN(n2856), .S0(CAOut_7__N_186[6]), .S1(CAOut_7__N_186[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(129[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h569a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h569a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(n3446), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(n3446), .C1(CAWritten[5]), .D1(CA[5]), 
          .CIN(n2855), .COUT(n2856), .S0(CAOut_7__N_186[4]), .S1(CAOut_7__N_186[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(129[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h569a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h569a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(n3446), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(n3446), .C1(CAWritten[3]), .D1(CA[3]), 
          .CIN(n2854), .COUT(n2855), .S0(CAOut_7__N_186[2]), .S1(CAOut_7__N_186[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(129[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h569a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h569a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(n3453), .B0(n3446), .C0(CAWritten[0]), .D0(CA[0]), 
          .A1(GND_net), .B1(n3446), .C1(CAWritten[1]), .D1(CA[1]), .CIN(n2853), 
          .COUT(n2854), .S0(CAOut_7__N_186[0]), .S1(CAOut_7__N_186[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(129[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'h74b8;
    defparam CAOut_7__I_0_3.INIT1 = 16'h569a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3455), .B1(Length1r), .C1(GND_net), .D1(GND_net), .COUT(n2853));   // //mac/icloud/repos/gw4302/cpld/reg.v(129[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 i2838_3_lut (.A(REUA[18]), .B(Length[2]), .C(A_out_0), .Z(n3199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2838_3_lut.init = 16'hcaca;
    LUT4 i2946_3_lut (.A(XferType[0]), .B(XferType[1]), .C(SwapState), 
         .Z(RAMWR_N_546)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i2946_3_lut.init = 16'h1515;
    LUT4 A_4__I_0_698_i6_2_lut_rep_50 (.A(A_out_0), .B(A_out_1), .Z(n3463)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(68[2:14])
    defparam A_4__I_0_698_i6_2_lut_rep_50.init = 16'heeee;
    LUT4 mux_223_i3_4_lut_4_lut (.A(n3446), .B(n1010), .C(REUAWritten[18]), 
         .D(REUA[18]), .Z(n501[2])) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(C))) */ ;
    defparam mux_223_i3_4_lut_4_lut.init = 16'h72d8;
    LUT4 mux_675_i2_3_lut_3_lut_4_lut (.A(n3455), .B(Length1r), .C(Length_7__N_342[1]), 
         .D(LengthWritten[1]), .Z(n998[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_675_i2_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2837_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n3198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2837_3_lut.init = 16'hcaca;
    LUT4 mux_223_i2_4_lut_4_lut (.A(n3446), .B(n3442), .C(REUAWritten[17]), 
         .D(REUA[17]), .Z(n501[1])) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(C))) */ ;
    defparam mux_223_i2_4_lut_4_lut.init = 16'h72d8;
    LUT4 i2802_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3469), 
         .D(A_out_2), .Z(n3163)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(68[2:14])
    defparam i2802_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_137 (.A(A_out_0), .B(A_out_1), .C(n3464), 
         .D(n3451), .Z(PHI2_N_544_enable_13)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(68[2:14])
    defparam i1_2_lut_3_lut_4_lut_adj_137.init = 16'hf1f0;
    LUT4 i2_4_lut_adj_138 (.A(n3445), .B(n3444), .C(n3453), .D(n3455), 
         .Z(PHI2_N_544_enable_81)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;
    defparam i2_4_lut_adj_138.init = 16'hfbbb;
    FD1P3JX Length_8__653 (.D(Length_8__N_334), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_8__653.GSR = "ENABLED";
    LUT4 i2927_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3464), 
         .D(n3454), .Z(PHI2_N_544_enable_25)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(68[2:14])
    defparam i2927_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1832_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n607[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam i1832_4_lut.init = 16'hfcee;
    LUT4 i916_4_lut (.A(n3163), .B(n3464), .C(nWE_c), .D(n3462), .Z(n1269)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 95[4])
    defparam i916_4_lut.init = 16'hccdc;
    LUT4 Length_10__bdd_4_lut (.A(Length[10]), .B(n3463), .C(n3198), .D(A_out_3), 
         .Z(n3438)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam Length_10__bdd_4_lut.init = 16'heef0;
    FD1P3JX Length_9__652 (.D(Length_9__N_329), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_9__652.GSR = "ENABLED";
    FD1P3JX Length_10__651 (.D(Length_10__N_324), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_10__651.GSR = "ENABLED";
    FD1P3JX Length_11__650 (.D(Length_11__N_319), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_11__650.GSR = "ENABLED";
    FD1P3JX Length_12__649 (.D(Length_12__N_314), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_12__649.GSR = "ENABLED";
    LUT4 mux_252_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n562[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_252_i2_3_lut.init = 16'hcaca;
    PFUMX i3033 (.BLUT(n3494), .ALUT(n3489), .C0(A_out_3), .Z(n3495));
    FD1P3JX Length_13__648 (.D(Length_13__N_309), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_13__648.GSR = "ENABLED";
    LUT4 mux_248_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n550[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_248_i1_3_lut.init = 16'hcaca;
    PFUMX i2976 (.BLUT(Length1), .ALUT(n3361), .C0(XferType[1]), .Z(n3363));
    PFUMX i3031 (.BLUT(n3491), .ALUT(n3490), .C0(A_out_1), .Z(n3492));
    FD1P3JX Length_14__647 (.D(Length_14__N_304), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_14__647.GSR = "ENABLED";
    FD1P3JX Length_15__646 (.D(Length_15__N_295), .SP(PHI2_N_544_enable_73), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(209[8] 221[4])
    defparam Length_15__646.GSR = "ENABLED";
    FD1P3JX Length_0__637 (.D(Length_0__N_379), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_0__637.GSR = "ENABLED";
    FD1P3JX Length_1__636 (.D(Length_1__N_374), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_1__636.GSR = "ENABLED";
    LUT4 mux_248_i6_3_lut (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), .Z(n550[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[2] 75[7])
    defparam mux_248_i6_3_lut.init = 16'hcaca;
    FD1P3JX Length_2__635 (.D(Length_2__N_369), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_2__635.GSR = "ENABLED";
    FD1P3JX Length_3__634 (.D(Length_3__N_364), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_3__634.GSR = "ENABLED";
    FD1P3JX Length_4__633 (.D(Length_4__N_359), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_4__633.GSR = "ENABLED";
    FD1P3AX nFF00DecodeEN_552 (.D(nFF00DecodeEN_N_439), .SP(PHI2_N_544_enable_79), 
            .CK(PHI2_N_544), .Q(nFF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(98[8] 117[4])
    defparam nFF00DecodeEN_552.GSR = "ENABLED";
    FD1P3JX Length_5__632 (.D(Length_5__N_354), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_5__632.GSR = "ENABLED";
    FD1P3JX Length_6__631 (.D(Length_6__N_349), .SP(PHI2_N_544_enable_81), 
            .PD(n3464), .CK(PHI2_N_544), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=56, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(194[8] 206[4])
    defparam Length_6__631.GSR = "ENABLED";
    PFUMX i3014 (.BLUT(n3472), .ALUT(n3473), .C0(A_out_0), .Z(n3474));
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (IntEnable, IRQOut_N_431, VerifyErr, VerifyErrMask, IRQ, 
            n7, n6, n2200, n19, n8, A_out_11, A_out_10, A_out_14, 
            A_out_3, A_out_15, A_out_8, A_out_12, A_out_1, nWE_c, 
            nFF00DecodeEN, Execute, AOE, nIO2_c, n3462, A_out_2, 
            A_out_4, n3450, D_out_7, n3456, BA_c, DDIR_c, nDOE_c) /* synthesis syn_module_defined=1 */ ;
    input IntEnable;
    input IRQOut_N_431;
    input VerifyErr;
    input VerifyErrMask;
    output IRQ;
    input n7;
    input n6;
    output n2200;
    input n19;
    input n8;
    input A_out_11;
    input A_out_10;
    input A_out_14;
    input A_out_3;
    input A_out_15;
    input A_out_8;
    input A_out_12;
    input A_out_1;
    input nWE_c;
    input nFF00DecodeEN;
    output Execute;
    input AOE;
    input nIO2_c;
    output n3462;
    input A_out_2;
    input A_out_4;
    input n3450;
    input D_out_7;
    output n3456;
    input BA_c;
    input DDIR_c;
    output nDOE_c;
    
    
    wire n7_adj_593, n3177, Execute_N_590, n21, n20, Execute_N_587;
    
    LUT4 i2940_4_lut (.A(IntEnable), .B(IRQOut_N_431), .C(VerifyErr), 
         .D(VerifyErrMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B+(C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(46[16:20])
    defparam i2940_4_lut.init = 16'h5777;
    LUT4 i5_4_lut (.A(n7), .B(n7_adj_593), .C(n6), .D(n3177), .Z(Execute_N_590)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i5_4_lut.init = 16'h0004;
    LUT4 i1_4_lut (.A(n2200), .B(n21), .C(n19), .D(n20), .Z(n7_adj_593)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h4000;
    LUT4 i9_4_lut (.A(n8), .B(A_out_11), .C(A_out_10), .D(A_out_14), 
         .Z(n21)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i9_4_lut.init = 16'h4000;
    LUT4 i8_4_lut (.A(A_out_3), .B(A_out_15), .C(A_out_8), .D(A_out_12), 
         .Z(n20)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i8_4_lut.init = 16'h4000;
    LUT4 i2816_2_lut (.A(A_out_1), .B(nWE_c), .Z(n3177)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2816_2_lut.init = 16'heeee;
    PFUMX Execute_I_0 (.BLUT(Execute_N_590), .ALUT(Execute_N_587), .C0(nFF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=7, LSE_RCOL=15, LSE_LLINE=95, LSE_RLINE=112 */ ;
    LUT4 i1822_2_lut_rep_49 (.A(AOE), .B(nIO2_c), .Z(n3462)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1822_2_lut_rep_49.init = 16'heeee;
    LUT4 i1853_2_lut (.A(A_out_2), .B(A_out_4), .Z(n2200)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1853_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(AOE), .B(nIO2_c), .C(n3450), .D(D_out_7), 
         .Z(Execute_N_587)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_43_3_lut (.A(AOE), .B(nIO2_c), .C(nWE_c), .Z(n3456)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_43_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_4_lut (.A(AOE), .B(nIO2_c), .C(BA_c), .D(DDIR_c), 
         .Z(nDOE_c)) /* synthesis lut_function=(A ((D)+!C)+!A (B+(D))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hff4e;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module RAM
//

module RAM (C8M_N_484, WRCMDr_N_500, PLLLock, PHI2Start_N_536, InitDone, 
            n3669, REUA, RA_0_10, RAMWR, C8M_c, n3204, RBA_c_0, 
            C8M_c_enable_19, n243, nRESET_c, n1179, PHI2_c, RAMRDD, 
            RD_out_0, WRDr, PHI2_N_544, D_out_0, nRAS_c, nCAS_c, 
            nRWE_c, CKE_c, DQMH_c, DQML_c, A_0__N_525, RA_0_9, RA_0_8, 
            RA_0_7, RA_0_6, RA_0_5, RA_0_4, RA_0_3, RA_0_2, RA_0_1, 
            RA_0_0, RCLK_c, RBA_c_1, \nRESETr[3] , \nRESETr[4] , RD_out_1, 
            RA_0_11, RD_out_2, RD_out_3, RD_out_4, RD_out_5, RD_out_6, 
            RD_out_7, D_out_1, D_out_2, D_out_3, D_out_4, D_out_5, 
            D_out_6, D_out_7, nCS_c) /* synthesis syn_module_defined=1 */ ;
    input C8M_N_484;
    input WRCMDr_N_500;
    output PLLLock;
    output PHI2Start_N_536;
    output InitDone;
    input n3669;
    input [23:0]REUA;
    output RA_0_10;
    input RAMWR;
    input C8M_c;
    input n3204;
    output RBA_c_0;
    input C8M_c_enable_19;
    output n243;
    input nRESET_c;
    output n1179;
    input PHI2_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output [7:0]WRDr;
    input PHI2_N_544;
    input D_out_0;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output DQMH_c;
    output DQML_c;
    input A_0__N_525;
    output RA_0_9;
    output RA_0_8;
    output RA_0_7;
    output RA_0_6;
    output RA_0_5;
    output RA_0_4;
    output RA_0_3;
    output RA_0_2;
    output RA_0_1;
    output RA_0_0;
    output RCLK_c;
    output RBA_c_1;
    output \nRESETr[3] ;
    output \nRESETr[4] ;
    input RD_out_1;
    output RA_0_11;
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
    
    wire C8M_N_484 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(39[12:17])
    wire C8M_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_544 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    wire [1:0]PHI2r;   // //mac/icloud/repos/gw4302/cpld/ram.v(39[12:17])
    
    wire n3465, WRCMDr, C8M_N_484_enable_4;
    wire [4:0]nRESETr;   // //mac/icloud/repos/gw4302/cpld/ram.v(32[12:19])
    
    wire C8M_N_484_enable_5, RDOE_N_539, n3460, RDD_7__N_493, C8M_c_enable_12;
    wire [12:0]RA_11__N_471;
    
    wire n3105, n2244, C8M_c_enable_21, RDCMDr, n896, C8M_c_enable_18;
    wire [7:0]n239;
    
    wire INITCMDr, InitDone_N_516, n1607, n3470, nCAS_N_509, n1221, 
        CKE_N_520, n1346, nCS_N_495, nCS_N_505, nRAS_N_507, RDOE, 
        CP2, CP1_N_527, n3104, nRWE_N_511, CP1, C8M_c_enable_20;
    
    LUT4 i1_2_lut_rep_52 (.A(PHI2r[0]), .B(PHI2r[1]), .Z(n3465)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i1_2_lut_rep_52.init = 16'h4444;
    FD1P3AX WRCMDr_132 (.D(WRCMDr_N_500), .SP(C8M_N_484_enable_4), .CK(C8M_N_484), 
            .Q(WRCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam WRCMDr_132.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_46_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(PLLLock), 
         .D(PHI2Start_N_536), .Z(C8M_N_484_enable_4)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i2_3_lut_rep_46_4_lut.init = 16'h4000;
    FD1P3AX InitDone_133 (.D(n3669), .SP(C8M_N_484_enable_4), .CK(C8M_N_484), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam InitDone_133.GSR = "ENABLED";
    LUT4 i3_3_lut_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(nRESETr[1]), .D(nRESETr[2]), 
         .Z(C8M_N_484_enable_5)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i3_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(n3460), 
         .D(RDD_7__N_493), .Z(C8M_c_enable_12)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hccef;
    LUT4 mux_209_i9_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[18]), 
         .D(REUA[9]), .Z(RA_11__N_471[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i9_4_lut_4_lut.init = 16'he2c0;
    LUT4 i2_2_lut_3_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(RA_0_10), 
         .D(n3460), .Z(n3105)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 mux_209_i7_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[16]), 
         .D(REUA[7]), .Z(RA_11__N_471[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i7_4_lut_4_lut.init = 16'he2c0;
    LUT4 i2949_2_lut_3_lut_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), 
         .C(RDD_7__N_493), .D(n3460), .Z(n2244)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam i2949_2_lut_3_lut_4_lut_4_lut.init = 16'h0203;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), 
         .C(RDD_7__N_493), .D(n3460), .Z(C8M_c_enable_21)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hcecf;
    LUT4 mux_209_i6_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[15]), 
         .D(REUA[6]), .Z(RA_11__N_471[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam mux_209_i6_4_lut_4_lut.init = 16'hf3d1;
    LUT4 mux_209_i5_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[14]), 
         .D(REUA[5]), .Z(RA_11__N_471[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i5_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_209_i8_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[17]), 
         .D(REUA[8]), .Z(RA_11__N_471[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i8_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_209_i2_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[11]), 
         .D(REUA[2]), .Z(RA_11__N_471[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i2_4_lut_4_lut.init = 16'he2c0;
    FD1P3IX RDCMDr_131 (.D(RAMWR), .SP(C8M_N_484_enable_4), .CD(n896), 
            .CK(C8M_N_484), .Q(RDCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam RDCMDr_131.GSR = "ENABLED";
    LUT4 mux_209_i4_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[13]), 
         .D(REUA[4]), .Z(RA_11__N_471[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i4_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_209_i3_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[12]), 
         .D(REUA[3]), .Z(RA_11__N_471[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i3_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_209_i1_4_lut_4_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[10]), 
         .D(REUA[1]), .Z(RA_11__N_471[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_209_i1_4_lut_4_lut.init = 16'he2c0;
    FD1P3IX S_FSM_i1 (.D(n239[7]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(PHI2Start_N_536));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i1.GSR = "ENABLED";
    FD1P3AX INITCMDr_130 (.D(InitDone_N_516), .SP(C8M_N_484_enable_4), .CK(C8M_N_484), 
            .Q(INITCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam INITCMDr_130.GSR = "ENABLED";
    FD1P3AX PLLLock_128 (.D(n3204), .SP(C8M_N_484_enable_5), .CK(C8M_N_484), 
            .Q(PLLLock)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[9] 50[5])
    defparam PLLLock_128.GSR = "ENABLED";
    FD1P3IX RBA__i1 (.D(REUA[22]), .SP(C8M_c_enable_19), .CD(n243), .CK(C8M_c), 
            .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RBA__i1.GSR = "ENABLED";
    LUT4 i1252_1_lut (.A(PLLLock), .Z(n1607)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[9] 50[5])
    defparam i1252_1_lut.init = 16'h5555;
    LUT4 i865_1_lut_rep_57 (.A(RDOE_N_539), .Z(n3470)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i865_1_lut_rep_57.init = 16'h5555;
    LUT4 mux_209_i10_3_lut_3_lut (.A(RDOE_N_539), .B(PHI2Start_N_536), .C(REUA[19]), 
         .Z(RA_11__N_471[9])) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_209_i10_3_lut_3_lut.init = 16'hd1d1;
    LUT4 i2911_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_539), .D(n243), 
         .Z(nCAS_N_509)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i2911_3_lut_4_lut.init = 16'h001f;
    LUT4 i869_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_539), .D(n1221), 
         .Z(CKE_N_520)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i869_3_lut_4_lut.init = 16'hefe0;
    LUT4 i942_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_539), .D(n1346), 
         .Z(nCS_N_495)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i942_3_lut_4_lut.init = 16'h101f;
    LUT4 i3_3_lut_rep_47_4_lut (.A(n239[5]), .B(n239[6]), .C(n239[7]), 
         .D(n239[2]), .Z(n3460)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_47_4_lut.init = 16'hfffe;
    LUT4 i868_3_lut_4_lut (.A(n239[5]), .B(n239[6]), .C(PHI2Start_N_536), 
         .D(nCS_N_505), .Z(n1221)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i868_3_lut_4_lut.init = 16'hf101;
    LUT4 i941_3_lut_4_lut (.A(RDD_7__N_493), .B(n243), .C(PHI2Start_N_536), 
         .D(nCS_N_505), .Z(n1346)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i941_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i2943_3_lut_4_lut (.A(RDD_7__N_493), .B(n243), .C(PHI2Start_N_536), 
         .D(nCS_N_505), .Z(nRAS_N_507)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i2943_3_lut_4_lut.init = 16'h0111;
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i0.GSR = "ENABLED";
    LUT4 RDCMDr_I_0_174_2_lut (.A(RDCMDr), .B(WRCMDr), .Z(nCS_N_505)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(78[9:25])
    defparam RDCMDr_I_0_174_2_lut.init = 16'heeee;
    LUT4 i836_1_lut (.A(RDOE), .Z(n1179)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(221[9:11])
    defparam i836_1_lut.init = 16'h5555;
    LUT4 i3_4_lut (.A(RDOE_N_539), .B(n3460), .C(RDD_7__N_493), .D(n243), 
         .Z(C8M_c_enable_18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i3_4_lut.init = 16'hfffe;
    FD1S3AX CP2_124 (.D(CP1_N_527), .CK(C8M_N_484), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(28[9:46])
    defparam CP2_124.GSR = "ENABLED";
    FD1S3AX PHI2r_0__126 (.D(PHI2_c), .CK(C8M_N_484), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(41[9:51])
    defparam PHI2r_0__126.GSR = "ENABLED";
    FD1S3AX PHI2r_1__127 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[9:55])
    defparam PHI2r_1__127.GSR = "ENABLED";
    LUT4 i1768_1_lut (.A(InitDone), .Z(InitDone_N_516)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam i1768_1_lut.init = 16'h5555;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_544), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i0.GSR = "ENABLED";
    LUT4 i937_4_lut (.A(n3104), .B(INITCMDr), .C(n243), .D(RDD_7__N_493), 
         .Z(nRWE_N_511)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i937_4_lut.init = 16'h303a;
    FD1S3JX nRAS_135 (.D(nRAS_N_507), .CK(C8M_c), .PD(n1607), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nRAS_135.GSR = "ENABLED";
    FD1S3JX nCAS_136 (.D(nCAS_N_509), .CK(C8M_c), .PD(n1607), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nCAS_136.GSR = "ENABLED";
    FD1S3JX nRWE_137 (.D(nRWE_N_511), .CK(C8M_c), .PD(n1607), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nRWE_137.GSR = "ENABLED";
    FD1S3JX CKE_138 (.D(CKE_N_520), .CK(C8M_c), .PD(n1607), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam CKE_138.GSR = "ENABLED";
    FD1S3JX DQMH_139 (.D(REUA[0]), .CK(C8M_c), .PD(n3470), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam DQMH_139.GSR = "ENABLED";
    FD1S3JX DQML_140 (.D(A_0__N_525), .CK(C8M_c), .PD(n3470), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam DQML_140.GSR = "ENABLED";
    FD1S3AX RA_10__143 (.D(RA_11__N_471[10]), .CK(C8M_c), .Q(RA_0_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_10__143.GSR = "ENABLED";
    FD1P3AX RA_9__144 (.D(RA_11__N_471[9]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_9__144.GSR = "ENABLED";
    FD1P3AX RA_8__145 (.D(RA_11__N_471[8]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_8__145.GSR = "ENABLED";
    FD1P3AX RA_7__146 (.D(RA_11__N_471[7]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_7__146.GSR = "ENABLED";
    FD1P3AX RA_6__147 (.D(RA_11__N_471[6]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_6__147.GSR = "ENABLED";
    FD1P3AX RA_5__148 (.D(RA_11__N_471[5]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_5__148.GSR = "ENABLED";
    FD1P3AX RA_4__149 (.D(RA_11__N_471[4]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_4__149.GSR = "ENABLED";
    FD1P3AX RA_3__150 (.D(RA_11__N_471[3]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_3__150.GSR = "ENABLED";
    FD1P3AX RA_2__151 (.D(RA_11__N_471[2]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_2__151.GSR = "ENABLED";
    FD1P3AX RA_1__152 (.D(RA_11__N_471[1]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_1__152.GSR = "ENABLED";
    FD1P3AX RA_0__153 (.D(RA_11__N_471[0]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_0_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_0__153.GSR = "ENABLED";
    FD1S3AX RDOE_156 (.D(RDOE_N_539), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(220[9:37])
    defparam RDOE_156.GSR = "ENABLED";
    FD1S3AX CP1_123 (.D(CP1_N_527), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(27[9:46])
    defparam CP1_123.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(RDCMDr), .B(RDOE_N_539), .C(WRCMDr), .Z(n3104)) /* synthesis lut_function=(A+!(B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 CP1_I_0_172_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(29[16:25])
    defparam CP1_I_0_172_2_lut.init = 16'h6666;
    LUT4 mux_209_i11_4_lut (.A(n3105), .B(REUA[20]), .C(PHI2Start_N_536), 
         .D(RDD_7__N_493), .Z(RA_11__N_471[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[3] 207[10])
    defparam mux_209_i11_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_4_lut (.A(PHI2Start_N_536), .B(n3465), .C(PLLLock), 
         .D(C8M_c_enable_18), .Z(C8M_c_enable_20)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i1_2_lut_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_4_lut_adj_126 (.A(PHI2Start_N_536), .B(n3465), .C(PLLLock), 
         .D(InitDone), .Z(n896)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i1_2_lut_4_lut_adj_126.init = 16'h0080;
    FD1P3IX S_FSM_i3 (.D(RDOE_N_539), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n239[2]));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1P3IX S_FSM_i4 (.D(n239[2]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(RDD_7__N_493));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i4.GSR = "ENABLED";
    FD1P3IX S_FSM_i5 (.D(RDD_7__N_493), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n243));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i5.GSR = "ENABLED";
    FD1P3IX S_FSM_i6 (.D(n243), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n239[5]));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i6.GSR = "ENABLED";
    FD1P3IX S_FSM_i7 (.D(n239[5]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n239[6]));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i7.GSR = "ENABLED";
    FD1P3IX S_FSM_i8 (.D(n239[6]), .SP(C8M_c_enable_18), .CD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(n239[7]));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i8.GSR = "ENABLED";
    FD1P3IX RBA__i2 (.D(REUA[23]), .SP(C8M_c_enable_19), .CD(n243), .CK(C8M_c), 
            .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(nRESETr[2]), .CK(C8M_c), .Q(\nRESETr[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(\nRESETr[3] ), .CK(C8M_c), .Q(\nRESETr[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3JX S_FSM_i2 (.D(PHI2Start_N_536), .SP(C8M_c_enable_20), .PD(C8M_N_484_enable_4), 
            .CK(C8M_c), .Q(RDOE_N_539));   // //mac/icloud/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i2.GSR = "ENABLED";
    FD1P3IX RA_11__142 (.D(REUA[21]), .SP(C8M_c_enable_21), .CD(n2244), 
            .CK(C8M_c), .Q(RA_0_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_11__142.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_493), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(212[9:54])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_544), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_544), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_544), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_544), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_544), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_544), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_544), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_527)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(28[37:41])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    FD1S3JX nCS_134 (.D(nCS_N_495), .CK(C8M_c), .PD(n1607), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=67, LSE_RLINE=77 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nCS_134.GSR = "ENABLED";
    
endmodule
