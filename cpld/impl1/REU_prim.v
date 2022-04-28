// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Thu Apr 28 18:25:28 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIRQ, nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, 
            RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, 
            DQML, RD) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // c:/users/garre/repos/gw4302/cpld/reu.v(5[8:14])
    input BA;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    inout [7:0]D;   // c:/users/garre/repos/gw4302/cpld/reu.v(8[14:15])
    inout [15:0]A;   // c:/users/garre/repos/gw4302/cpld/reu.v(9[15:16])
    input nWE;   // c:/users/garre/repos/gw4302/cpld/reu.v(10[8:11])
    output nWEDMA;   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    output nDMA;   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    output nIRQ;   // c:/users/garre/repos/gw4302/cpld/reu.v(13[9:13])
    input nIO1;   // c:/users/garre/repos/gw4302/cpld/reu.v(14[8:12])
    input nIO2;   // c:/users/garre/repos/gw4302/cpld/reu.v(15[8:12])
    output nAOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:13])
    output ADIR;   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    output nRWOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:14])
    output nDOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(20[9:13])
    output DDIR;   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
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
    
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_45 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[11:16])
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nDMA_c, 
        nIRQ_c, nIO2_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, 
        CKE_c, RBA_c_1, RBA_c_0, RA_c_11, RA_c_10, RA_c_9, RA_c_8, 
        RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, RA_c_2, RA_c_1, 
        RA_c_0, DQMH_c, DQML_c, Execute;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(40[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(45[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, IncREUA, SetFault, AOE, 
        DOE;
    wire [7:0]Dout;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[13:17])
    
    wire nWEDMA_N_5;
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(240[11:15])
    
    wire A_0__N_96, n3756, EndBlock, ExecuteEN, AutoloadEN, n3417, 
        n3771, n3759, n3755, n3770, n3769, CAOut_7__N_281, n428, 
        n427, n36, n35, CAOut_15__N_236, n426, n424, n31, n3237, 
        n8, n30, REUAOut_7__N_193, n3768, n3448, n3758, n3767, 
        REUAOut_15__N_148, n26, n20, XferC64REU, n3613, XferEnd_N_599, 
        IncCA_N_630, Length1_N_644, n3950, n6, n7, n4045, n3607, 
        D_out_7, D_out_6, D_out_5, D_out_4, D_out_3, D_out_2, D_out_1, 
        D_out_0, A_out_15, A_out_14, A_out_13, A_out_12, A_out_11, 
        A_out_10, A_out_9, A_out_8, A_out_4, A_out_3, A_out_2, n3765, 
        A_out_1, A_out_0, RD_out_7, RD_out_6, RD_out_5, n1097, RD_out_4, 
        RD_out_3, RD_out_2, RD_out_1, RD_out_0, n2901, n3787, n3784, 
        n4046, n3762, n3780, n3776, n4043, n4044, n2140, n3775, 
        n2900, n3772;
    
    VHI i2 (.Z(VCC_net));
    INV i3579 (.A(C8M_c), .Z(C8M_N_45));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    BB A_pad_11 (.I(CA[11]), .T(AOE), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    LUT4 m1_lut (.Z(n4043)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    BB A_pad_12 (.I(CA[12]), .T(AOE), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_13 (.I(CA[13]), .T(AOE), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_14 (.I(CA[14]), .T(AOE), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_15 (.I(CA[15]), .T(AOE), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB D_pad_0 (.I(Dout[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_7 (.I(Dout[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_1 (.I(Dout[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_2 (.I(Dout[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_3 (.I(Dout[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_4 (.I(Dout[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_5 (.I(Dout[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_6 (.I(Dout[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2901), .S1(nWEDMA_N_5));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 i16_4_lut (.A(n31), .B(n8), .C(n26), .D(A_out_10), .Z(n35)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i16_4_lut.init = 16'h2000;
    LUT4 i17_4_lut (.A(n3417), .B(A_out_3), .C(n30), .D(n20), .Z(n36)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i17_4_lut.init = 16'h1000;
    LUT4 i3319_3_lut (.A(PHI2_c), .B(BA_c), .C(DMA), .Z(AOE)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    defparam i3319_3_lut.init = 16'h7f7f;
    LUT4 i12_4_lut (.A(A_out_14), .B(A_out_11), .C(A_out_8), .D(A_out_12), 
         .Z(n31)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i7_2_lut (.A(A_out_13), .B(A_out_15), .Z(n26)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7_2_lut.init = 16'h8888;
    LUT4 i3189_4_lut (.A(A_out_2), .B(A_out_4), .C(n6), .D(n7), .Z(n3417)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3189_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(ExecuteEN), .B(A_out_1), .Z(n20)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    BB A_pad_10 (.I(CA[10]), .T(AOE), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n3613), .B(RAMRDD[0]), .C(DMA), .D(n2140), 
         .Z(Dout[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    LUT4 i3304_4_lut (.A(PHI2_c), .B(AOE), .C(n3237), .D(nWEDMA_c), 
         .Z(DOE)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    defparam i3304_4_lut.init = 16'h5f4c;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n424), .B(RAMRDD[7]), .C(DMA), .D(n2140), 
         .Z(Dout[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 i2086_2_lut_rep_84_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3780)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2086_2_lut_rep_84_3_lut.init = 16'hfefe;
    BB A_pad_9 (.I(CA[9]), .T(AOE), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_8 (.I(CA[8]), .T(AOE), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_7 (.I(CA[7]), .T(AOE), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_6 (.I(CA[6]), .T(AOE), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_5 (.I(CA[5]), .T(AOE), .B(A[5]), .O(n6));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_4 (.I(CA[4]), .T(AOE), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_3 (.I(CA[3]), .T(AOE), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_2 (.I(CA[2]), .T(AOE), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_1 (.I(CA[1]), .T(AOE), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_0 (.I(CA[0]), .T(AOE), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1097), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1097), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n3607), .B(RAMRDD[1]), .C(DMA), .D(n2140), 
         .Z(Dout[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    BB RD_pad_5 (.I(WRDr[5]), .T(n1097), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1097), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1097), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1097), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1097), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1097), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(nDMA_c), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nIRQ_pad (.I(nIRQ_c), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld/reu.v(13[9:13])
    OB nAOE_pad (.I(GND_net), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:13])
    OB ADIR_pad (.I(AOE), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    OB nRWOE_pad (.I(AOE), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:14])
    OB nDOE_pad (.I(GND_net), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(20[9:13])
    OB DDIR_pad (.I(DOE), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // c:/users/garre/repos/gw4302/cpld/reu.v(23[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // c:/users/garre/repos/gw4302/cpld/reu.v(24[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // c:/users/garre/repos/gw4302/cpld/reu.v(25[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // c:/users/garre/repos/gw4302/cpld/reu.v(26[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/garre/repos/gw4302/cpld/reu.v(27[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // c:/users/garre/repos/gw4302/cpld/reu.v(28[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // c:/users/garre/repos/gw4302/cpld/reu.v(29[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // c:/users/garre/repos/gw4302/cpld/reu.v(29[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_11 (.I(RA_c_11), .O(RA[11]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
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
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[8:12])
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n428), .B(RAMRDD[3]), .C(DMA), .D(n2140), 
         .Z(Dout[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n427), .B(RAMRDD[4]), .C(DMA), .D(n2140), 
         .Z(Dout[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    INV i3578 (.A(PHI2_c), .Z(PHI2_N_570));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    LUT4 i2_3_lut_rep_79_4_lut (.A(n3787), .B(nWE_c), .C(n3784), .D(A_out_3), 
         .Z(n3775)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_79_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(n3787), .B(nWE_c), .C(n3784), 
         .D(A_out_3), .Z(n3771)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    LUT4 i1_2_lut_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3237)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_80_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(A_out_3), 
         .D(nWE_c), .Z(n3776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_80_3_lut_4_lut.init = 16'hfffe;
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n426), .B(RAMRDD[5]), .C(DMA), .D(n2140), 
         .Z(Dout[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n3950), .B(RAMRDD[6]), .C(DMA), .D(n2140), 
         .Z(Dout[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2900), .COUT(n2901));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2900));   // c:/users/garre/repos/gw4302/cpld/reu.v(84[31:50])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    DMASeq dmaseq (.DMA(DMA), .XferEnd_N_599(XferEnd_N_599), .n3772(n3772), 
           .AutoloadEN(AutoloadEN), .n3755(n3755), .n3758(n3758), .nDMA_c(nDMA_c), 
           .n3770(n3770), .n3756(n3756), .n3769(n3769), .CAOut_7__N_281(CAOut_7__N_281), 
           .n3765(n3765), .REUAOut_7__N_193(REUAOut_7__N_193), .n4044(n4044), 
           .\XferType[0] (XferType[0]), .n3762(n3762), .BA_c(BA_c), .nWEDMA_c(nWEDMA_c), 
           .nWEDMA_N_5(nWEDMA_N_5), .n4045(n4045), .n3759(n3759), .RAMWR(RAMWR), 
           .Execute(Execute), .IncCA_N_630(IncCA_N_630), .SetFault(SetFault), 
           .PHI2_N_570(PHI2_N_570), .Length1_N_644(Length1_N_644), .RegReset(RegReset), 
           .nRESET_c(nRESET_c), .EndBlock(EndBlock), .n3448(n3448), .XferC64REU(XferC64REU), 
           .IncREUA(IncREUA), .RAMRD(RAMRD), .n4046(n4046), .n3767(n3767), 
           .CAOut_15__N_236(CAOut_15__N_236), .n3768(n3768), .REUAOut_15__N_148(REUAOut_15__N_148)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(78[9] 86[68])
    LUT4 i2084_2_lut_rep_91 (.A(DMA), .B(nIO2_c), .Z(n3787)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2084_2_lut_rep_91.init = 16'heeee;
    REUReg reureg (.GND_net(GND_net), .REUAOut_15__N_148(REUAOut_15__N_148), 
           .REUA({REUA}), .D_out_6(D_out_6), .n4044(n4044), .A_out_0(A_out_0), 
           .A_out_1(A_out_1), .D_out_7(D_out_7), .n426(n426), .n427(n427), 
           .AutoloadEN(AutoloadEN), .PHI2_N_570(PHI2_N_570), .n4045(n4045), 
           .D_out_5(D_out_5), .n428(n428), .n3775(n3775), .A_out_4(A_out_4), 
           .A_out_2(A_out_2), .EndBlock(EndBlock), .D_out_1(D_out_1), 
           .D_out_4(D_out_4), .n4046(n4046), .CA({CA}), .D_out_2(D_out_2), 
           .D_out_3(D_out_3), .D_out_0(D_out_0), .\XferType[0] (XferType[0]), 
           .XferC64REU(XferC64REU), .n3759(n3759), .SetFault(SetFault), 
           .n4043(n4043), .XferEnd_N_599(XferEnd_N_599), .DMA(DMA), .n3771(n3771), 
           .n35(n35), .n36(n36), .Execute(Execute), .IncCA_N_630(IncCA_N_630), 
           .n3448(n3448), .A_out_3(A_out_3), .n3758(n3758), .n3770(n3770), 
           .A_0__N_96(A_0__N_96), .nIRQ_c(nIRQ_c), .n3784(n3784), .n3776(n3776), 
           .n3765(n3765), .ExecuteEN(ExecuteEN), .n3768(n3768), .n2140(n2140), 
           .n3237(n3237), .n424(n424), .n3780(n3780), .n3772(n3772), 
           .n3767(n3767), .n3769(n3769), .\RAMRDD[2] (RAMRDD[2]), .\Dout[2] (Dout[2]), 
           .IncREUA(IncREUA), .n3762(n3762), .n3613(n3613), .Length1_N_644(Length1_N_644), 
           .RegReset(RegReset), .n3756(n3756), .nWE_c(nWE_c), .n3787(n3787), 
           .n3755(n3755), .n3950(n3950), .REUAOut_7__N_193(REUAOut_7__N_193), 
           .CAOut_15__N_236(CAOut_15__N_236), .CAOut_7__N_281(CAOut_7__N_281), 
           .n3607(n3607), .A_out_9(A_out_9), .n30(n30), .RAMWR(RAMWR)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(67[9] 76[62])
    RAMctrl ramctrl (.C8M_N_45(C8M_N_45), .PHI2_c(PHI2_c), .C8M_c(C8M_c), 
            .nCS_c(nCS_c), .RBA_c_0(RBA_c_0), .REUA({REUA}), .RAMRD(RAMRD), 
            .RAMWR(RAMWR), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
            .CKE_c(CKE_c), .RA_c_0(RA_c_0), .WRDr({WRDr}), .PHI2_N_570(PHI2_N_570), 
            .D_out_0(D_out_0), .DQML_c(DQML_c), .A_0__N_96(A_0__N_96), 
            .nRESET_c(nRESET_c), .GND_net(GND_net), .VCC_net(VCC_net), 
            .RCLK_c(RCLK_c), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .n1097(n1097), 
            .RBA_c_1(RBA_c_1), .n4043(n4043), .RA_c_1(RA_c_1), .DQMH_c(DQMH_c), 
            .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), .RA_c_4(RA_c_4), .RA_c_5(RA_c_5), 
            .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), .RA_c_9(RA_c_9), 
            .RA_c_10(RA_c_10), .RA_c_11(RA_c_11), .D_out_1(D_out_1), .D_out_2(D_out_2), 
            .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), 
            .D_out_7(D_out_7), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), 
            .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), 
            .RD_out_6(RD_out_6), .RD_out_7(RD_out_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(58[10] 65[32])
    
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

module DMASeq (DMA, XferEnd_N_599, n3772, AutoloadEN, n3755, n3758, 
            nDMA_c, n3770, n3756, n3769, CAOut_7__N_281, n3765, 
            REUAOut_7__N_193, n4044, \XferType[0] , n3762, BA_c, nWEDMA_c, 
            nWEDMA_N_5, n4045, n3759, RAMWR, Execute, IncCA_N_630, 
            SetFault, PHI2_N_570, Length1_N_644, RegReset, nRESET_c, 
            EndBlock, n3448, XferC64REU, IncREUA, RAMRD, n4046, 
            n3767, CAOut_15__N_236, n3768, REUAOut_15__N_148) /* synthesis syn_module_defined=1 */ ;
    output DMA;
    output XferEnd_N_599;
    input n3772;
    input AutoloadEN;
    output n3755;
    output n3758;
    output nDMA_c;
    input n3770;
    output n3756;
    input n3769;
    output CAOut_7__N_281;
    input n3765;
    output REUAOut_7__N_193;
    output n4044;
    input \XferType[0] ;
    input n3762;
    input BA_c;
    output nWEDMA_c;
    input nWEDMA_N_5;
    output n4045;
    input n3759;
    output RAMWR;
    input Execute;
    output IncCA_N_630;
    output SetFault;
    input PHI2_N_570;
    input Length1_N_644;
    output RegReset;
    input nRESET_c;
    input EndBlock;
    output n3448;
    input XferC64REU;
    output IncREUA;
    output RAMRD;
    output n4046;
    input n3767;
    output CAOut_15__N_236;
    input n3768;
    output REUAOut_15__N_148;
    
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire n3694, n3695;
    wire [2:1]nRESETr;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire DMAr, n3761, SetFault_N_637, n3378, RAMWR_N_584, DMA_N_596, 
        BAr, n1, XferEnd_N_604, PHI2_N_570_enable_78, nWEDMA_N_610, 
        n3773, XferEnd_N_607, n3696, XferEnd_N_603, n3800, RAMRD_N_571, 
        n1270, n3799, n3798;
    
    LUT4 Autoload_I_0_2_lut_rep_59_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n3772), .D(AutoloadEN), .Z(n3755)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_2_lut_rep_59_3_lut_4_lut.init = 16'h8f0f;
    LUT4 AutoloadEN_I_0_2_lut_rep_62_3_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(AutoloadEN), .Z(n3758)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam AutoloadEN_I_0_2_lut_rep_62_3_lut.init = 16'h8080;
    LUT4 n3694_bdd_2_lut (.A(n3694), .B(XferEnd_N_599), .Z(n3695)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n3694_bdd_2_lut.init = 16'h2222;
    LUT4 DMA_I_0_1_lut (.A(DMA), .Z(nDMA_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(54[15:19])
    defparam DMA_I_0_1_lut.init = 16'h5555;
    LUT4 Autoload_I_0_799_2_lut_rep_60_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n3770), .D(AutoloadEN), .Z(n3756)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_799_2_lut_rep_60_3_lut_4_lut.init = 16'hf8f0;
    LUT4 Autoload_I_0_786_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n3769), .D(AutoloadEN), .Z(CAOut_7__N_281)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_786_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 Autoload_I_0_729_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n3765), .D(AutoloadEN), .Z(REUAOut_7__N_193)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_729_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 RegReset_I_0_4_lut_rep_102 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4044)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[2:58])
    defparam RegReset_I_0_4_lut_rep_102.init = 16'h1511;
    LUT4 RAMRD_N_583_bdd_4_lut_3433_4_lut (.A(\XferType[0] ), .B(n3762), 
         .C(BA_c), .D(nWEDMA_c), .Z(n3694)) /* synthesis lut_function=(A (B)+!A !(B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(29[19:39])
    defparam RAMRD_N_583_bdd_4_lut_3433_4_lut.init = 16'h9ddd;
    LUT4 i2_3_lut_rep_65 (.A(n3762), .B(BA_c), .C(\XferType[0] ), .Z(n3761)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_65.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(n3762), .B(BA_c), .C(\XferType[0] ), .D(nWEDMA_N_5), 
         .Z(SetFault_N_637)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0080;
    LUT4 RegReset_I_0_4_lut_rep_103 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4045)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[2:58])
    defparam RegReset_I_0_4_lut_rep_103.init = 16'h1511;
    LUT4 i1_4_lut (.A(DMA), .B(\XferType[0] ), .C(n3378), .D(n3762), 
         .Z(RAMWR_N_584)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam i1_4_lut.init = 16'ha022;
    LUT4 i3_4_lut (.A(XferEnd_N_599), .B(n3759), .C(BA_c), .D(RAMWR), 
         .Z(n3378)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd_N_599), .C(DMA), .Z(DMA_N_596)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    LUT4 mux_218_Mux_0_i1_4_lut (.A(DMAr), .B(IncCA_N_630), .C(\XferType[0] ), 
         .D(BAr), .Z(n1)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(141[2] 148[44])
    defparam mux_218_Mux_0_i1_4_lut.init = 16'hcac0;
    FD1S3IX SetFault_122 (.D(SetFault_N_637), .CK(PHI2_N_570), .CD(nDMA_c), 
            .Q(SetFault)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(155[8] 158[4])
    defparam SetFault_122.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(Length1_N_644), .B(n3761), .C(SetFault), .Z(XferEnd_N_604)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(123[4:52])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 RegReset_I_0_4_lut (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(RegReset)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[2:58])
    defparam RegReset_I_0_4_lut.init = 16'h1511;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_570), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(104[8:61])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1P3AX nWEDMA_116 (.D(nWEDMA_N_610), .SP(PHI2_N_570_enable_78), .CK(PHI2_N_570), 
            .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam nWEDMA_116.GSR = "ENABLED";
    LUT4 BA_I_0_2_lut_rep_77 (.A(BA_c), .B(Length1_N_644), .Z(n3773)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(120[18:31])
    defparam BA_I_0_2_lut_rep_77.init = 16'h8888;
    LUT4 XferEnd_I_144_2_lut_3_lut (.A(BA_c), .B(Length1_N_644), .C(RAMWR), 
         .Z(XferEnd_N_607)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(120[18:31])
    defparam XferEnd_I_144_2_lut_3_lut.init = 16'h8080;
    FD1P3AX RAMWR_118 (.D(RAMWR_N_584), .SP(PHI2_N_570_enable_78), .CK(PHI2_N_570), 
            .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam RAMWR_118.GSR = "ENABLED";
    FD1S3AX BAr_119 (.D(BA_c), .CK(PHI2_N_570), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(99[8:34])
    defparam BAr_119.GSR = "ENABLED";
    FD1S3AX DMAr_120 (.D(DMA), .CK(PHI2_N_570), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(100[8:36])
    defparam DMAr_120.GSR = "ENABLED";
    FD1S3AX DMA_115 (.D(DMA_N_596), .CK(PHI2_N_570), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam DMA_115.GSR = "ENABLED";
    LUT4 i3220_4_lut_4_lut (.A(SetFault), .B(nWEDMA_N_5), .C(Length1_N_644), 
         .D(EndBlock), .Z(n3448)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(153[46:66])
    defparam i3220_4_lut_4_lut.init = 16'hffd0;
    LUT4 RAMRD_N_583_bdd_3_lut_3434 (.A(Execute), .B(\XferType[0] ), .C(n3762), 
         .Z(n3696)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam RAMRD_N_583_bdd_3_lut_3434.init = 16'ha2a2;
    LUT4 XferEnd_I_0_128_4_lut (.A(nRESETr[1]), .B(n3773), .C(XferEnd_N_603), 
         .D(n3762), .Z(XferEnd_N_599)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(116[2] 123[54])
    defparam XferEnd_I_0_128_4_lut.init = 16'hf5dd;
    LUT4 i3309_4_lut (.A(XferC64REU), .B(Execute), .C(n3800), .D(DMA), 
         .Z(RAMRD_N_571)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;
    defparam i3309_4_lut.init = 16'h0544;
    PFUMX XferEnd_I_142 (.BLUT(XferEnd_N_604), .ALUT(XferEnd_N_607), .C0(n3759), 
          .Z(XferEnd_N_603)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;
    PFUMX mux_218_Mux_0_i3 (.BLUT(n1), .ALUT(n1270), .C0(n3762), .Z(IncREUA));
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_570), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(104[8:61])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1P3AX RAMRD_117 (.D(RAMRD_N_571), .SP(PHI2_N_570_enable_78), .CK(PHI2_N_570), 
            .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam RAMRD_117.GSR = "ENABLED";
    LUT4 i1_4_lut_then_1_lut (.A(XferEnd_N_599), .Z(n3799)) /* synthesis lut_function=(A) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam i1_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 i1_4_lut_else_1_lut (.A(XferEnd_N_599), .B(RAMRD), .C(n3762), 
         .D(BA_c), .Z(n3798)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam i1_4_lut_else_1_lut.init = 16'heaaa;
    LUT4 i3315_4_lut_4_lut (.A(DMA), .B(XferEnd_N_599), .C(BA_c), .D(n3759), 
         .Z(PHI2_N_570_enable_78)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3315_4_lut_4_lut.init = 16'hfdff;
    LUT4 RegReset_I_0_4_lut_rep_104 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4046)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(111[2:58])
    defparam RegReset_I_0_4_lut_rep_104.init = 16'h1511;
    LUT4 Autoload_I_0_742_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n3767), .D(AutoloadEN), .Z(CAOut_15__N_236)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_742_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 Autoload_I_0_720_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n3768), .D(AutoloadEN), .Z(REUAOut_15__N_148)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_720_2_lut_3_lut_4_lut.init = 16'h8f0f;
    PFUMX i3402 (.BLUT(n3696), .ALUT(n3695), .C0(DMA), .Z(nWEDMA_N_610));
    LUT4 i1052_4_lut_4_lut (.A(SetFault), .B(\XferType[0] ), .C(RAMWR), 
         .D(IncCA_N_630), .Z(n1270)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(129[2:11])
    defparam i1052_4_lut_4_lut.init = 16'h7400;
    LUT4 DMA_I_0_2_lut (.A(DMA), .B(BA_c), .Z(IncCA_N_630)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(127[2:11])
    defparam DMA_I_0_2_lut.init = 16'h8888;
    PFUMX i3435 (.BLUT(n3798), .ALUT(n3799), .C0(\XferType[0] ), .Z(n3800));
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (GND_net, REUAOut_15__N_148, REUA, D_out_6, n4044, A_out_0, 
            A_out_1, D_out_7, n426, n427, AutoloadEN, PHI2_N_570, 
            n4045, D_out_5, n428, n3775, A_out_4, A_out_2, EndBlock, 
            D_out_1, D_out_4, n4046, CA, D_out_2, D_out_3, D_out_0, 
            \XferType[0] , XferC64REU, n3759, SetFault, n4043, XferEnd_N_599, 
            DMA, n3771, n35, n36, Execute, IncCA_N_630, n3448, 
            A_out_3, n3758, n3770, A_0__N_96, nIRQ_c, n3784, n3776, 
            n3765, ExecuteEN, n3768, n2140, n3237, n424, n3780, 
            n3772, n3767, n3769, \RAMRDD[2] , \Dout[2] , IncREUA, 
            n3762, n3613, Length1_N_644, RegReset, n3756, nWE_c, 
            n3787, n3755, n3950, REUAOut_7__N_193, CAOut_15__N_236, 
            CAOut_7__N_281, n3607, A_out_9, n30, RAMWR) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input REUAOut_15__N_148;
    output [23:0]REUA;
    input D_out_6;
    input n4044;
    input A_out_0;
    input A_out_1;
    input D_out_7;
    output n426;
    output n427;
    output AutoloadEN;
    input PHI2_N_570;
    input n4045;
    input D_out_5;
    output n428;
    input n3775;
    input A_out_4;
    input A_out_2;
    output EndBlock;
    input D_out_1;
    input D_out_4;
    input n4046;
    output [15:0]CA;
    input D_out_2;
    input D_out_3;
    input D_out_0;
    output \XferType[0] ;
    output XferC64REU;
    output n3759;
    input SetFault;
    input n4043;
    input XferEnd_N_599;
    input DMA;
    input n3771;
    input n35;
    input n36;
    output Execute;
    input IncCA_N_630;
    input n3448;
    input A_out_3;
    input n3758;
    output n3770;
    output A_0__N_96;
    output nIRQ_c;
    output n3784;
    input n3776;
    output n3765;
    output ExecuteEN;
    output n3768;
    output n2140;
    input n3237;
    output n424;
    input n3780;
    output n3772;
    output n3767;
    output n3769;
    input \RAMRDD[2] ;
    output \Dout[2] ;
    input IncREUA;
    output n3762;
    output n3613;
    output Length1_N_644;
    input RegReset;
    input n3756;
    input nWE_c;
    input n3787;
    input n3755;
    output n3950;
    input REUAOut_7__N_193;
    input CAOut_15__N_236;
    input CAOut_7__N_281;
    output n3607;
    input A_out_9;
    output n30;
    input RAMWR;
    
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire n3024;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(46[12:23])
    wire [7:0]REUAOut_15__N_145;
    
    wire n3025, n1222, n3790, n1220, n3774, PHI2_N_570_enable_43, 
        n3436, n3438, n3466, n3433, n3435, PHI2_N_570_enable_76, 
        n3430, n3432, PHI2_N_570_enable_31, n3781, n3791, PHI2_N_570_enable_73, 
        DF01Reserved6, n3947;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(41[12:21])
    
    wire PHI2_N_570_enable_64, PHI2_N_570_enable_74;
    wire [7:0]REUAOut_7__N_192;
    wire [7:0]n299;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(50[12:18])
    
    wire n3602;
    wire [7:0]n301;
    
    wire n2993;
    wire [7:0]Length_7__N_442;
    
    wire n2994;
    wire [7:0]n346;
    
    wire n3431, n3788;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(33[11:25])
    
    wire PHI2_N_570_enable_67, n3434, n3437, n3944;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(60[11:18])
    
    wire n3945;
    wire [7:0]n300;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reg.v(37[11:19])
    
    wire n3766, Fault, n1165, PHI2_N_570_enable_57, n3608, PHI2_N_570_enable_69, 
        n3786;
    wire [7:0]n298;
    
    wire FF00DecodeEN, n3297, n3789;
    wire [2:0]n297;
    wire [2:0]n306;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(51[12:25])
    
    wire n1234, PHI2_N_570_enable_77;
    wire [7:0]n334;
    
    wire n3611, n1232;
    wire [7:0]CAOut_15__N_233;
    
    wire n1230, n1228, n1226, n3803, n4041, n3580, n3764, n3946, 
        EndBlockMask, n1224;
    wire [7:0]n921;
    
    wire Length_2__N_465, Length_1__N_470, n3948, n3616, n3949, IntEnable, 
        PHI2_N_570_enable_42, Length_5__N_450, Length_0__N_475, Length_3__N_460, 
        Length_7__N_439;
    wire [7:0]Length_15__N_395;
    wire [7:0]n922;
    
    wire FaultMask, PHI2_N_570_enable_75, Length_4__N_455, Length_6__N_445, 
        n3603, n4039, IRQ_N_535, Length_8__N_434, Length_9__N_429, 
        Length_10__N_424, Length_11__N_419;
    wire [7:0]n318;
    
    wire Length_12__N_414, Length_13__N_409, Length_14__N_404, Length_15__N_392, 
        n3230, n3023, REUAOut_15__N_146, n955, n3447;
    wire [7:0]n403;
    wire [7:0]n370;
    
    wire n15, n13, n10, REUAOut_18__N_129, n3757, n5, n4, PHI2_N_570_enable_86, 
        n3031, n3030, n15_adj_666, n13_adj_667, n14, n4040;
    wire [7:0]CAOut_7__N_280;
    
    wire n3612, n3609, n17, n30_c, n26, n18, n3778, IncREUAg, 
        n15_adj_668, n3411, n3409, n3029, n17_adj_669, n15_adj_670, 
        n11, n12, CAOut_15__N_234, n1378, IncCAg, n21, n28, n3610;
    wire [7:0]n358;
    
    wire n3018, n3017, n3016, n3015, n3445, n3754, n3010, n3009, 
        n3008, n3007, n3002, n3001, n3000, n2999, n2992, n2995, 
        n3605, n3802, n3604, n3801, n3606, n3028, n3026;
    
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_148), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(REUAOut_15__N_148), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n3024), .COUT(n3025), .S0(REUAOut_15__N_145[2]), 
          .S1(REUAOut_15__N_145[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    LUT4 i2143_2_lut (.A(D_out_6), .B(n4044), .Z(n1222)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2143_2_lut.init = 16'heeee;
    LUT4 A_4__I_0_825_i6_2_lut_rep_94 (.A(A_out_0), .B(A_out_1), .Z(n3790)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam A_4__I_0_825_i6_2_lut_rep_94.init = 16'heeee;
    LUT4 i2145_2_lut (.A(D_out_7), .B(n4044), .Z(n1220)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2145_2_lut.init = 16'heeee;
    LUT4 i328_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n4044), 
         .D(n3774), .Z(PHI2_N_570_enable_43)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i328_2_lut_3_lut_4_lut.init = 16'hf0f1;
    L6MUX21 mux_213_i6 (.D0(n3436), .D1(n3438), .SD(n3466), .Z(n426));
    L6MUX21 mux_213_i5 (.D0(n3433), .D1(n3435), .SD(n3466), .Z(n427));
    FD1P3IX AutoloadEN_582 (.D(D_out_5), .SP(PHI2_N_570_enable_76), .CD(n4045), 
            .CK(PHI2_N_570), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam AutoloadEN_582.GSR = "ENABLED";
    L6MUX21 mux_213_i4 (.D0(n3430), .D1(n3432), .SD(n3466), .Z(n428));
    LUT4 i2_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n4044), .D(n3775), 
         .Z(PHI2_N_570_enable_31)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i3043_2_lut_rep_85_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(A_out_4), 
         .D(A_out_2), .Z(n3781)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i3043_2_lut_rep_85_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2108_2_lut_rep_95 (.A(A_out_1), .B(A_out_0), .Z(n3791)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2108_2_lut_rep_95.init = 16'h8888;
    LUT4 i2_2_lut_3_lut_4_lut_adj_164 (.A(A_out_1), .B(A_out_0), .C(n4044), 
         .D(n3774), .Z(PHI2_N_570_enable_73)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_164.init = 16'hf0f8;
    LUT4 EndBlock_bdd_3_lut_3526 (.A(EndBlock), .B(DF01Reserved6), .C(A_out_0), 
         .Z(n3947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam EndBlock_bdd_3_lut_3526.init = 16'hcaca;
    FD1P3IX CAWritten_13__612 (.D(D_out_5), .SP(PHI2_N_570_enable_64), .CD(n4045), 
            .CK(PHI2_N_570), .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_13__612.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__659 (.D(D_out_1), .SP(PHI2_N_570_enable_74), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_17__659.GSR = "ENABLED";
    LUT4 mux_169_i5_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_4), .D(REUAOut_7__N_192[4]), 
         .Z(n299[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 n353_bdd_3_lut_3346 (.A(A_out_1), .B(Length[9]), .C(A_out_0), 
         .Z(n3602)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n353_bdd_3_lut_3346.init = 16'hfefe;
    FD1P3IX CAWritten_14__611 (.D(D_out_6), .SP(PHI2_N_570_enable_64), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_14__611.GSR = "ENABLED";
    FD1S3IX CA_7__586 (.D(n301[7]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_7__586.GSR = "ENABLED";
    LUT4 mux_169_i6_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_5), .D(REUAOut_7__N_192[5]), 
         .Z(n299[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i6_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2993), .COUT(n2994), .S0(Length_7__N_442[3]), 
          .S1(Length_7__N_442[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    PFUMX i3204 (.BLUT(n346[3]), .ALUT(n3431), .C0(n3788), .Z(n3432));
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_570_enable_76), 
            .CD(n4046), .CK(PHI2_N_570), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__646 (.D(D_out_3), .SP(PHI2_N_570_enable_67), 
            .CD(n4046), .CK(PHI2_N_570), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_11__646.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__645 (.D(D_out_4), .SP(PHI2_N_570_enable_67), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_12__645.GSR = "ENABLED";
    FD1P3IX REUAWritten_13__644 (.D(D_out_5), .SP(PHI2_N_570_enable_67), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_13__644.GSR = "ENABLED";
    PFUMX i3207 (.BLUT(n346[4]), .ALUT(n3434), .C0(n3788), .Z(n3435));
    FD1P3IX REUAWritten_5__628 (.D(D_out_5), .SP(PHI2_N_570_enable_43), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_5__628.GSR = "ENABLED";
    PFUMX i3210 (.BLUT(n346[5]), .ALUT(n3437), .C0(n3788), .Z(n3438));
    FD1P3IX REUAWritten_18__658 (.D(D_out_2), .SP(PHI2_N_570_enable_74), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_18__658.GSR = "ENABLED";
    FD1S3IX CA_6__587 (.D(n301[6]), .CK(PHI2_N_570), .CD(n4045), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_6__587.GSR = "ENABLED";
    LUT4 n3944_bdd_3_lut (.A(n3944), .B(IncMode[0]), .C(A_out_1), .Z(n3945)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3944_bdd_3_lut.init = 16'hcaca;
    FD1S3IX CA_5__588 (.D(n301[5]), .CK(PHI2_N_570), .CD(n4045), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_5__588.GSR = "ENABLED";
    FD1S3IX CA_4__589 (.D(n301[4]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_4__589.GSR = "ENABLED";
    FD1S3IX CA_3__590 (.D(n301[3]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_3__590.GSR = "ENABLED";
    FD1S3IX CA_2__591 (.D(n301[2]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_2__591.GSR = "ENABLED";
    FD1S3IX CA_1__592 (.D(n301[1]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_1__592.GSR = "ENABLED";
    FD1S3IX CA_0__593 (.D(n301[0]), .CK(PHI2_N_570), .CD(n4045), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_0__593.GSR = "ENABLED";
    FD1S3IX CA_15__602 (.D(n300[7]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_15__602.GSR = "ENABLED";
    FD1P3IX REUAWritten_0__633 (.D(D_out_0), .SP(PHI2_N_570_enable_43), 
            .CD(n4046), .CK(PHI2_N_570), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_0__633.GSR = "ENABLED";
    LUT4 i3293_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3766), .D(\XferType[0] ), 
         .Z(XferC64REU)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(119[27:62])
    defparam i3293_2_lut_4_lut.init = 16'h0053;
    LUT4 i2_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3766), .D(\XferType[0] ), 
         .Z(n3759)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((C+(D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(119[27:62])
    defparam i2_2_lut_4_lut.init = 16'h00ac;
    FD1P3IX Fault_579 (.D(n4043), .SP(SetFault), .CD(n1165), .CK(PHI2_N_570), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam Fault_579.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut_adj_165 (.A(n4044), .B(n3766), .C(XferEnd_N_599), 
         .D(DMA), .Z(PHI2_N_570_enable_57)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam i2_2_lut_3_lut_4_lut_adj_165.init = 16'hfbbb;
    LUT4 n354_bdd_3_lut_3353 (.A(Length[8]), .B(A_out_1), .C(A_out_0), 
         .Z(n3608)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n354_bdd_3_lut_3353.init = 16'hfefe;
    FD1P3IX CAWritten_15__610 (.D(D_out_7), .SP(PHI2_N_570_enable_64), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_15__610.GSR = "ENABLED";
    FD1P3IX CAWritten_0__601 (.D(D_out_0), .SP(PHI2_N_570_enable_69), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_0__601.GSR = "ENABLED";
    FD1S3IX CA_14__603 (.D(n300[6]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_14__603.GSR = "ENABLED";
    LUT4 mux_168_i8_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_7), .D(REUAOut_15__N_145[7]), 
         .Z(n298[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_168_i7_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_6), .D(REUAOut_15__N_145[6]), 
         .Z(n298[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_168_i6_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_5), .D(REUAOut_15__N_145[5]), 
         .Z(n298[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i6_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_13__604 (.D(n300[5]), .CK(PHI2_N_570), .CD(n4045), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_13__604.GSR = "ENABLED";
    FD1S3IX CA_12__605 (.D(n300[4]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_12__605.GSR = "ENABLED";
    FD1S3IX CA_11__606 (.D(n300[3]), .CK(PHI2_N_570), .CD(n4045), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_11__606.GSR = "ENABLED";
    FD1S3IX CA_10__607 (.D(n300[2]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_10__607.GSR = "ENABLED";
    FD1S3IX CA_9__608 (.D(n300[1]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_9__608.GSR = "ENABLED";
    FD1S3IX CA_8__609 (.D(n300[0]), .CK(PHI2_N_570), .CD(n4046), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_8__609.GSR = "ENABLED";
    FD1S3IX REUA_7__618 (.D(n299[7]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_7__618.GSR = "ENABLED";
    LUT4 mux_169_i7_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_6), .D(REUAOut_7__N_192[6]), 
         .Z(n299[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_169_i4_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_3), .D(REUAOut_7__N_192[3]), 
         .Z(n299[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_1__600 (.D(D_out_1), .SP(PHI2_N_570_enable_69), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_1__600.GSR = "ENABLED";
    LUT4 mux_169_i3_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_2), .D(REUAOut_7__N_192[2]), 
         .Z(n299[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_15__642 (.D(D_out_7), .SP(PHI2_N_570_enable_67), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_15__642.GSR = "ENABLED";
    LUT4 mux_169_i2_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_1), .D(REUAOut_7__N_192[1]), 
         .Z(n299[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX FF00DecodeEN_583 (.D(n3297), .SP(PHI2_N_570_enable_57), .CK(PHI2_N_570), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam FF00DecodeEN_583.GSR = "ENABLED";
    LUT4 mux_169_i1_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_0), .D(REUAOut_7__N_192[0]), 
         .Z(n299[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_176_i3_3_lut_4_lut (.A(n3789), .B(n3774), .C(D_out_2), .D(n297[2]), 
         .Z(n306[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_176_i2_3_lut_4_lut (.A(n3789), .B(n3774), .C(D_out_1), .D(n297[1]), 
         .Z(n306[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_8__692 (.D(n1234), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_8__692.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_570_enable_77), .CD(n4045), 
            .CK(PHI2_N_570), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 237[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 n354_bdd_4_lut (.A(n334[0]), .B(XferType[0]), .C(A_out_1), .D(A_out_0), 
         .Z(n3611)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n354_bdd_4_lut.init = 16'haca0;
    LUT4 mux_168_i5_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_4), .D(REUAOut_15__N_145[4]), 
         .Z(n298[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUA_20__653 (.D(D_out_4), .SP(PHI2_N_570_enable_74), .CD(n4046), 
            .CK(PHI2_N_570), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_20__653.GSR = "ENABLED";
    FD1P3IX REUA_21__652 (.D(D_out_5), .SP(PHI2_N_570_enable_74), .CD(n4046), 
            .CK(PHI2_N_570), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_21__652.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__691 (.D(n1232), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_9__691.GSR = "ENABLED";
    LUT4 mux_176_i1_3_lut_4_lut (.A(n3789), .B(n3774), .C(D_out_0), .D(n297[0]), 
         .Z(n306[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_1__632 (.D(D_out_1), .SP(PHI2_N_570_enable_43), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_1__632.GSR = "ENABLED";
    LUT4 mux_170_i3_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_2), .D(CAOut_15__N_233[2]), 
         .Z(n300[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i3_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_6__619 (.D(n299[6]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_6__619.GSR = "ENABLED";
    LUT4 mux_170_i4_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_3), .D(CAOut_15__N_233[3]), 
         .Z(n300[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_170_i5_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_4), .D(CAOut_15__N_233[4]), 
         .Z(n300[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_170_i6_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_5), .D(CAOut_15__N_233[5]), 
         .Z(n300[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i6_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_5__620 (.D(n299[5]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_5__620.GSR = "ENABLED";
    FD1S3IX REUA_4__621 (.D(n299[4]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_4__621.GSR = "ENABLED";
    FD1S3IX REUA_3__622 (.D(n299[3]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_3__622.GSR = "ENABLED";
    FD1S3IX REUA_2__623 (.D(n299[2]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_2__623.GSR = "ENABLED";
    FD1S3IX REUA_1__624 (.D(n299[1]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_1__624.GSR = "ENABLED";
    FD1S3IX REUA_0__625 (.D(n299[0]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_0__625.GSR = "ENABLED";
    LUT4 mux_170_i7_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_6), .D(CAOut_15__N_233[6]), 
         .Z(n300[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i7_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_15__634 (.D(n298[7]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_15__634.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__690 (.D(n1230), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_10__690.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__643 (.D(D_out_6), .SP(PHI2_N_570_enable_67), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_14__643.GSR = "ENABLED";
    LUT4 mux_170_i8_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_7), .D(CAOut_15__N_233[7]), 
         .Z(n300[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i8_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_11__689 (.D(n1228), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_11__689.GSR = "ENABLED";
    LUT4 mux_170_i2_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_1), .D(CAOut_15__N_233[1]), 
         .Z(n300[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i2_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_12__688 (.D(n1226), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_12__688.GSR = "ENABLED";
    LUT4 n3579_bdd_3_lut (.A(n3803), .B(n4041), .C(A_out_0), .Z(n3580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3579_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_170_i1_3_lut_4_lut (.A(n3771), .B(n3791), .C(D_out_0), .D(CAOut_15__N_233[0]), 
         .Z(n300[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX CAWritten_2__599 (.D(D_out_2), .SP(PHI2_N_570_enable_69), .CD(n4045), 
            .CK(PHI2_N_570), .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_2__599.GSR = "ENABLED";
    LUT4 Execute_I_0_4_lut (.A(n35), .B(D_out_4), .C(n36), .D(n3764), 
         .Z(Execute)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(242[2] 245[45])
    defparam Execute_I_0_4_lut.init = 16'heca0;
    LUT4 EndBlock_bdd_3_lut_3521 (.A(CA[6]), .B(A_out_0), .C(CA[14]), 
         .Z(n3946)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam EndBlock_bdd_3_lut_3521.init = 16'he2e2;
    FD1P3IX CAWritten_3__598 (.D(D_out_3), .SP(PHI2_N_570_enable_69), .CD(n4045), 
            .CK(PHI2_N_570), .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_3__598.GSR = "ENABLED";
    LUT4 Length_14__bdd_3_lut_3540 (.A(Length[14]), .B(A_out_0), .C(EndBlockMask), 
         .Z(n3944)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Length_14__bdd_3_lut_3540.init = 16'he2e2;
    FD1P3IX EndBlock_578 (.D(n3448), .SP(IncCA_N_630), .CD(n1165), .CK(PHI2_N_570), 
            .Q(EndBlock)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam EndBlock_578.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__687 (.D(n1224), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_13__687.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__686 (.D(n1222), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_14__686.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__685 (.D(n1220), .SP(PHI2_N_570_enable_31), 
            .CK(PHI2_N_570), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_15__685.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__676 (.D(n1234), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_0__676.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__631 (.D(D_out_2), .SP(PHI2_N_570_enable_43), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_2__631.GSR = "ENABLED";
    FD1S3IX REUA_14__635 (.D(n298[6]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_14__635.GSR = "ENABLED";
    FD1S3IX REUA_13__636 (.D(n298[5]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_13__636.GSR = "ENABLED";
    FD1S3IX REUA_12__637 (.D(n298[4]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_12__637.GSR = "ENABLED";
    FD1S3IX REUA_11__638 (.D(n298[3]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_11__638.GSR = "ENABLED";
    FD1S3IX REUA_10__639 (.D(n298[2]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_10__639.GSR = "ENABLED";
    FD1S3IX REUA_9__640 (.D(n298[1]), .CK(PHI2_N_570), .CD(n4045), .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_9__640.GSR = "ENABLED";
    FD1S3IX REUA_8__641 (.D(n298[0]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_8__641.GSR = "ENABLED";
    LUT4 Length_2__I_109_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_2), 
         .D(n921[2]), .Z(Length_2__N_465)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_109_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_3__630 (.D(D_out_3), .SP(PHI2_N_570_enable_43), 
            .CD(n4046), .CK(PHI2_N_570), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_3__630.GSR = "ENABLED";
    LUT4 Length_1__I_111_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_1), 
         .D(n921[1]), .Z(Length_1__N_470)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_111_3_lut_4_lut.init = 16'hfb40;
    LUT4 n3948_bdd_3_lut (.A(n3948), .B(n3616), .C(A_out_2), .Z(n3949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3948_bdd_3_lut.init = 16'hcaca;
    LUT4 i3312_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3466)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i3312_2_lut.init = 16'heeee;
    FD1S3IX XferType__i0 (.D(\XferType[0] ), .CK(PHI2_N_570), .CD(n4046), 
            .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__629 (.D(D_out_4), .SP(PHI2_N_570_enable_43), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_4__629.GSR = "ENABLED";
    FD1P3IX REUAWritten_6__627 (.D(D_out_6), .SP(PHI2_N_570_enable_43), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_6__627.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__660 (.D(D_out_0), .SP(PHI2_N_570_enable_74), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_16__660.GSR = "ENABLED";
    FD1P3IX IntEnable_693 (.D(D_out_7), .SP(PHI2_N_570_enable_42), .CD(n4045), 
            .CK(PHI2_N_570), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam IntEnable_693.GSR = "ENABLED";
    FD1S3IX REUA_18__655 (.D(n306[2]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_18__655.GSR = "ENABLED";
    LUT4 Length_5__I_103_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_5), 
         .D(n921[5]), .Z(Length_5__N_450)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_103_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_17__656 (.D(n306[1]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_17__656.GSR = "ENABLED";
    FD1S3IX REUA_16__657 (.D(n306[0]), .CK(PHI2_N_570), .CD(n4046), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_16__657.GSR = "ENABLED";
    FD1P3IX CAWritten_12__613 (.D(D_out_4), .SP(PHI2_N_570_enable_64), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_12__613.GSR = "ENABLED";
    FD1P3AX LengthWritten_1__675 (.D(n1232), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_1__675.GSR = "ENABLED";
    FD1P3IX EndBlockMask_694 (.D(D_out_6), .SP(PHI2_N_570_enable_42), .CD(n4045), 
            .CK(PHI2_N_570), .Q(EndBlockMask)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam EndBlockMask_694.GSR = "ENABLED";
    LUT4 Length_0__I_113_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_0), 
         .D(n921[0]), .Z(Length_0__N_475)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_113_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_3__I_107_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_3), 
         .D(n921[3]), .Z(Length_3__N_460)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_107_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_7__I_99_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_7), 
         .D(n921[7]), .Z(Length_7__N_439)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_99_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_749_i7_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[14]), 
         .D(Length_15__N_395[6]), .Z(n922[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i7_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX FaultMask_695 (.D(D_out_5), .SP(PHI2_N_570_enable_42), .CD(n4045), 
            .CK(PHI2_N_570), .Q(FaultMask)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam FaultMask_695.GSR = "ENABLED";
    FD1P3IX REUAWritten_7__626 (.D(D_out_7), .SP(PHI2_N_570_enable_43), 
            .CD(n4045), .CK(PHI2_N_570), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_7__626.GSR = "ENABLED";
    FD1P3JX Length_4__664 (.D(Length_4__N_455), .SP(PHI2_N_570_enable_75), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_4__664.GSR = "ENABLED";
    FD1P3IX CAWritten_8__617 (.D(D_out_0), .SP(PHI2_N_570_enable_64), .CD(n4045), 
            .CK(PHI2_N_570), .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_8__617.GSR = "ENABLED";
    LUT4 Length_6__I_101_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_6), 
         .D(n921[6]), .Z(Length_6__N_445)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_101_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_5__663 (.D(Length_5__N_450), .SP(PHI2_N_570_enable_75), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_5__663.GSR = "ENABLED";
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_96)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(218[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 mux_168_i4_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_3), .D(REUAOut_15__N_145[3]), 
         .Z(n298[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i4_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3344 (.BLUT(n346[1]), .ALUT(n3602), .C0(n3788), .Z(n3603));
    LUT4 n11_bdd_4_lut_3325_4_lut_else_4_lut (.A(A_out_3), .B(A_out_2), 
         .C(REUA[10]), .D(DF01Reserved32[2]), .Z(n4039)) /* synthesis lut_function=(A+(B (C)+!B (D))) */ ;
    defparam n11_bdd_4_lut_3325_4_lut_else_4_lut.init = 16'hfbea;
    LUT4 Length_4__I_105_3_lut_4_lut (.A(n3774), .B(n3791), .C(D_out_4), 
         .D(n921[4]), .Z(Length_4__N_455)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_105_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_749_i8_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[15]), 
         .D(Length_15__N_395[7]), .Z(n922[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_168_i3_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_2), .D(REUAOut_15__N_145[2]), 
         .Z(n298[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_168_i2_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_1), .D(REUAOut_15__N_145[1]), 
         .Z(n298[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_2__674 (.D(n1230), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_2__674.GSR = "ENABLED";
    LUT4 IRQ_I_0_1_lut_4_lut (.A(IntEnable), .B(EndBlock), .C(IRQ_N_535), 
         .D(EndBlockMask), .Z(nIRQ_c)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[14:79])
    defparam IRQ_I_0_1_lut_4_lut.init = 16'h575f;
    LUT4 i1_2_lut_rep_68_3_lut_4_lut (.A(n3784), .B(n3776), .C(D_out_7), 
         .D(n3786), .Z(n3764)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1_2_lut_rep_68_3_lut_4_lut.init = 16'h0010;
    LUT4 i259_2_lut_rep_67_3_lut_4_lut (.A(n3784), .B(n3776), .C(n4044), 
         .D(n3786), .Z(PHI2_N_570_enable_76)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i259_2_lut_rep_67_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i3288_2_lut_3_lut_4_lut (.A(n3784), .B(n3776), .C(n1226), .D(n3786), 
         .Z(n3297)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i3288_2_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3IX REUA_22__651 (.D(D_out_6), .SP(PHI2_N_570_enable_74), .CD(n4045), 
            .CK(PHI2_N_570), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_22__651.GSR = "ENABLED";
    FD1P3IX REUA_23__650 (.D(D_out_7), .SP(PHI2_N_570_enable_74), .CD(n4045), 
            .CK(PHI2_N_570), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_23__650.GSR = "ENABLED";
    LUT4 i276_2_lut_3_lut_4_lut (.A(n3784), .B(n3776), .C(n4044), .D(n3789), 
         .Z(PHI2_N_570_enable_69)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i276_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i296_2_lut_3_lut_4_lut (.A(n3784), .B(n3776), .C(n4044), .D(n3791), 
         .Z(PHI2_N_570_enable_64)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i296_2_lut_3_lut_4_lut.init = 16'hf1f0;
    LUT4 Length_8__I_96_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_0), 
         .D(n922[0]), .Z(Length_8__N_434)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_96_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_9__I_94_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_1), 
         .D(n922[1]), .Z(Length_9__N_429)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_94_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_10__I_92_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_2), 
         .D(n922[2]), .Z(Length_10__N_424)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_92_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_4__597 (.D(D_out_4), .SP(PHI2_N_570_enable_69), .CD(n4045), 
            .CK(PHI2_N_570), .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_4__597.GSR = "ENABLED";
    LUT4 Length_11__I_90_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_3), 
         .D(n922[3]), .Z(Length_11__N_419)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_90_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3208 (.BLUT(n318[5]), .ALUT(n334[5]), .C0(A_out_1), .Z(n3436));
    LUT4 Length_12__I_88_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_4), 
         .D(n922[4]), .Z(Length_12__N_414)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_13__I_86_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_5), 
         .D(n922[5]), .Z(Length_13__N_409)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_14__I_84_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_6), 
         .D(n922[6]), .Z(Length_14__N_404)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_84_3_lut_4_lut.init = 16'hfe10;
    LUT4 n320_bdd_4_lut_3385 (.A(n346[6]), .B(Length[6]), .C(A_out_1), 
         .D(A_out_0), .Z(n3616)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam n320_bdd_4_lut_3385.init = 16'hcafa;
    FD1P3AX LengthWritten_3__673 (.D(n1228), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_3__673.GSR = "ENABLED";
    PFUMX i3205 (.BLUT(n318[4]), .ALUT(n334[4]), .C0(A_out_1), .Z(n3433));
    LUT4 Length_15__I_82_3_lut_4_lut (.A(n3790), .B(n3775), .C(D_out_7), 
         .D(n922[7]), .Z(Length_15__N_392)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_82_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_6__662 (.D(Length_6__N_445), .SP(PHI2_N_570_enable_75), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_6__662.GSR = "ENABLED";
    FD1P3JX Length_7__661 (.D(Length_7__N_439), .SP(PHI2_N_570_enable_75), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_7__661.GSR = "ENABLED";
    LUT4 mux_168_i1_3_lut_4_lut (.A(n3786), .B(n3774), .C(D_out_0), .D(REUAOut_15__N_145[0]), 
         .Z(n298[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_168_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2185_2_lut_rep_69_4_lut (.A(A_out_2), .B(n3776), .C(A_out_4), 
         .D(n3786), .Z(n3765)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2185_2_lut_rep_69_4_lut.init = 16'hfffd;
    FD1P3JX Length_0__668 (.D(Length_0__N_475), .SP(PHI2_N_570_enable_75), 
            .PD(n4046), .CK(PHI2_N_570), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_0__668.GSR = "ENABLED";
    FD1P3JX Length_1__667 (.D(Length_1__N_470), .SP(PHI2_N_570_enable_75), 
            .PD(n4046), .CK(PHI2_N_570), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_1__667.GSR = "ENABLED";
    PFUMX i3202 (.BLUT(n318[3]), .ALUT(n334[3]), .C0(A_out_1), .Z(n3430));
    FD1P3AX ExecuteEN_580 (.D(n3230), .SP(PHI2_N_570_enable_57), .CK(PHI2_N_570), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam ExecuteEN_580.GSR = "ENABLED";
    LUT4 i2181_2_lut_rep_72_4_lut (.A(A_out_2), .B(n3776), .C(A_out_4), 
         .D(n3790), .Z(n3768)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2181_2_lut_rep_72_4_lut.init = 16'hfffd;
    LUT4 i2244_4_lut (.A(A_out_4), .B(A_out_3), .C(n3791), .D(A_out_2), 
         .Z(n2140)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2244_4_lut.init = 16'heeea;
    LUT4 i949_4_lut (.A(n3237), .B(n4044), .C(n3781), .D(A_out_3), .Z(n1165)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam i949_4_lut.init = 16'hccce;
    FD1P3AX LengthWritten_4__672 (.D(n1226), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_4__672.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_146), .B0(REUAOut_15__N_148), 
          .C0(REUAWritten[8]), .D0(REUA[8]), .A1(GND_net), .B1(REUAOut_15__N_148), 
          .C1(REUAWritten[9]), .D1(REUA[9]), .CIN(n3023), .COUT(n3024), 
          .S0(REUAOut_15__N_145[0]), .S1(REUAOut_15__N_145[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_74_4_lut (.A(A_out_2), .B(n3776), .C(A_out_4), .D(n3791), 
         .Z(n3770)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_74_4_lut.init = 16'h0200;
    LUT4 mux_167_i3_4_lut (.A(REUA[18]), .B(REUAWritten[18]), .C(n3758), 
         .D(n955), .Z(n297[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_167_i3_4_lut.init = 16'hc5ca;
    LUT4 mux_213_i8_3_lut (.A(n3447), .B(n403[7]), .C(A_out_3), .Z(n424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_213_i8_3_lut.init = 16'hcaca;
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3758), .B1(n3768), .C1(GND_net), .D1(GND_net), 
          .COUT(n3023));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_209_i8_3_lut (.A(n370[7]), .B(IncMode[1]), .C(A_out_1), .Z(n403[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_209_i8_3_lut.init = 16'hcaca;
    LUT4 mux_200_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n370[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_200_i8_3_lut.init = 16'hcaca;
    LUT4 i2231_2_lut_rep_76_4_lut (.A(A_out_3), .B(n3784), .C(n3780), 
         .D(n3790), .Z(n3772)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2231_2_lut_rep_76_4_lut.init = 16'hfffd;
    LUT4 mux_192_i8_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n346[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_192_i8_3_lut.init = 16'hcaca;
    LUT4 i2224_2_lut_rep_70_3_lut_4_lut (.A(A_out_3), .B(n3780), .C(n3786), 
         .D(n3784), .Z(n3766)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i2224_2_lut_rep_70_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX LengthWritten_5__671 (.D(n1224), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_5__671.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n15), .B(n13), .C(REUA[11]), .D(n10), .Z(REUAOut_18__N_129)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 mux_748_i8_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[7]), 
         .D(Length_7__N_442[7]), .Z(n921[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_188_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n334[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_188_i1_3_lut.init = 16'hcaca;
    LUT4 mux_748_i1_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[0]), 
         .D(Length_7__N_442[0]), .Z(n921[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i775_2_lut_rep_61 (.A(REUA[16]), .B(REUAOut_18__N_129), .Z(n3757)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam i775_2_lut_rep_61.init = 16'h8888;
    LUT4 mux_188_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n334[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_188_i2_3_lut.init = 16'hcaca;
    FD1P3IX CAWritten_5__596 (.D(D_out_5), .SP(PHI2_N_570_enable_69), .CD(n4045), 
            .CK(PHI2_N_570), .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_5__596.GSR = "ENABLED";
    FD1P3IX CAWritten_9__616 (.D(D_out_1), .SP(PHI2_N_570_enable_64), .CD(n4045), 
            .CK(PHI2_N_570), .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_9__616.GSR = "ENABLED";
    LUT4 mux_748_i3_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[2]), 
         .D(Length_7__N_442[2]), .Z(n921[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i783_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_129), .C(REUA[17]), 
         .Z(n955)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam i783_2_lut_3_lut.init = 16'h8080;
    FD1P3IX CAWritten_10__615 (.D(D_out_2), .SP(PHI2_N_570_enable_64), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_10__615.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(REUA[15]), .B(REUA[14]), .C(REUA[8]), .D(REUA[12]), 
         .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i3_4_lut (.A(n5), .B(A_out_3), .C(n4044), .D(n4), .Z(PHI2_N_570_enable_86)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;
    defparam i3_4_lut.init = 16'hfafe;
    FD1P3IX CAWritten_11__614 (.D(D_out_3), .SP(PHI2_N_570_enable_64), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_11__614.GSR = "ENABLED";
    CCU2D Length_15__I_0_833_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3031), .S0(Length_15__N_395[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_833_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_9.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_8__649 (.D(D_out_0), .SP(PHI2_N_570_enable_67), 
            .CD(n4046), .CK(PHI2_N_570), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_8__649.GSR = "ENABLED";
    CCU2D Length_15__I_0_833_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3030), .COUT(n3031), .S0(Length_15__N_395[5]), 
          .S1(Length_15__N_395[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_7.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_9__648 (.D(D_out_1), .SP(PHI2_N_570_enable_67), 
            .CD(n4046), .CK(PHI2_N_570), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_9__648.GSR = "ENABLED";
    FD1P3IX REUAWritten_10__647 (.D(D_out_2), .SP(PHI2_N_570_enable_67), 
            .CD(n4046), .CK(PHI2_N_570), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_10__647.GSR = "ENABLED";
    FD1P3IX CAWritten_6__595 (.D(D_out_6), .SP(PHI2_N_570_enable_69), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_6__595.GSR = "ENABLED";
    FD1P3IX CAWritten_7__594 (.D(D_out_7), .SP(PHI2_N_570_enable_69), .CD(n4046), 
            .CK(PHI2_N_570), .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_7__594.GSR = "ENABLED";
    LUT4 mux_188_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n334[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_188_i4_3_lut.init = 16'hcaca;
    FD1P3IX DF01Reserved6_581 (.D(D_out_6), .SP(PHI2_N_570_enable_76), .CD(n4046), 
            .CK(PHI2_N_570), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved6_581.GSR = "ENABLED";
    LUT4 i4_2_lut (.A(REUA[13]), .B(REUA[9]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3786), .B(n3771), .C(n4044), .D(D_out_7), 
         .Z(n3230)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3AX LengthWritten_6__670 (.D(n1222), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_6__670.GSR = "ENABLED";
    FD1P3JX Length_2__666 (.D(Length_2__N_465), .SP(PHI2_N_570_enable_75), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_2__666.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__669 (.D(n1220), .SP(PHI2_N_570_enable_73), 
            .CK(PHI2_N_570), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_7__669.GSR = "ENABLED";
    FD1P3IX REUA_19__654 (.D(D_out_3), .SP(PHI2_N_570_enable_74), .CD(n4046), 
            .CK(PHI2_N_570), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_19__654.GSR = "ENABLED";
    LUT4 i2172_2_lut (.A(DF01Reserved32[3]), .B(A_out_0), .Z(n318[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i2172_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(REUA[10]), .B(REUAOut_15__N_146), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 mux_188_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n334[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_188_i5_3_lut.init = 16'hcaca;
    LUT4 mux_748_i4_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[3]), 
         .D(Length_7__N_442[3]), .Z(n921[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2236_2_lut (.A(FF00DecodeEN), .B(A_out_0), .Z(n318[4])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2236_2_lut.init = 16'h7777;
    LUT4 i2226_2_lut_rep_71_3_lut_4_lut (.A(A_out_3), .B(n3780), .C(n3789), 
         .D(n3784), .Z(n3767)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i2226_2_lut_rep_71_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(A_out_3), .B(n3780), .C(n3791), 
         .D(n3784), .Z(n3769)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'h0010;
    LUT4 i19_4_lut (.A(n2140), .B(\RAMRDD[2] ), .C(DMA), .D(n3580), 
         .Z(\Dout[2] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i19_4_lut.init = 16'hcfca;
    LUT4 i1_4_lut (.A(n15_adj_666), .B(IncREUA), .C(n13_adj_667), .D(n14), 
         .Z(REUAOut_15__N_146)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_rep_78_4_lut (.A(A_out_3), .B(n3780), .C(A_out_4), .D(A_out_2), 
         .Z(n3774)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i2_3_lut_rep_78_4_lut.init = 16'hfeff;
    LUT4 XferType_1__I_0_i1_3_lut_4_lut (.A(n3786), .B(n3771), .C(D_out_0), 
         .D(XferType[0]), .Z(\XferType[0] )) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i1_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3576 (.BLUT(n4039), .ALUT(n4040), .C0(A_out_1), .Z(n4041));
    LUT4 XferType_1__I_0_i2_3_lut_rep_66_4_lut (.A(n3786), .B(n3771), .C(D_out_1), 
         .D(XferType[1]), .Z(n3762)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i2_3_lut_rep_66_4_lut.init = 16'hfe10;
    LUT4 mux_188_i6_3_lut (.A(CA[5]), .B(CA[13]), .C(A_out_0), .Z(n334[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_188_i6_3_lut.init = 16'hcaca;
    FD1P3JX Length_3__665 (.D(Length_3__N_460), .SP(PHI2_N_570_enable_75), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_3__665.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_166 (.A(IncMode[0]), .B(REUA[1]), .C(REUA[7]), .D(REUA[4]), 
         .Z(n15_adj_666)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i6_4_lut_adj_166.init = 16'h4000;
    LUT4 mux_180_i6_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n318[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_180_i6_3_lut.init = 16'hcaca;
    LUT4 mux_171_i1_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_0), .D(CAOut_7__N_280[0]), 
         .Z(n301[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_188_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n334[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_188_i8_3_lut.init = 16'hcaca;
    LUT4 i2126_2_lut (.A(D_out_4), .B(n4044), .Z(n1226)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2126_2_lut.init = 16'heeee;
    LUT4 i2146_2_lut (.A(D_out_0), .B(n4044), .Z(n1234)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2146_2_lut.init = 16'heeee;
    L6MUX21 i3356 (.D0(n3612), .D1(n3609), .SD(A_out_3), .Z(n3613));
    LUT4 i4_2_lut_adj_167 (.A(REUA[2]), .B(REUA[0]), .Z(n13_adj_667)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut_adj_167.init = 16'h8888;
    LUT4 i5_3_lut (.A(REUA[3]), .B(REUA[6]), .C(REUA[5]), .Z(n14)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    LUT4 i3297_4_lut (.A(n17), .B(n30_c), .C(n26), .D(n18), .Z(Length1_N_644)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i3297_4_lut.init = 16'h0001;
    LUT4 IntEnable_I_0_842_4_lut_rep_82 (.A(IntEnable), .B(EndBlock), .C(IRQ_N_535), 
         .D(EndBlockMask), .Z(n3778)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[14:79])
    defparam IntEnable_I_0_842_4_lut_rep_82.init = 16'ha8a0;
    LUT4 i1_2_lut_adj_168 (.A(Length[0]), .B(Length[10]), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i1_2_lut_adj_168.init = 16'hdddd;
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_570_enable_76), 
            .CD(n4046), .CK(PHI2_N_570), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 mux_749_i2_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[9]), 
         .D(Length_15__N_395[1]), .Z(n922[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 IncREUAg_I_125_2_lut (.A(IncMode[0]), .B(IncREUA), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(61[17:39])
    defparam IncREUAg_I_125_2_lut.init = 16'h4444;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_570_enable_77), .CD(RegReset), 
            .CK(PHI2_N_570), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 237[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_169 (.A(n15_adj_668), .B(n3756), .C(n3411), .D(n3409), 
         .Z(n5)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_169.init = 16'hccce;
    LUT4 n11_bdd_4_lut_3325_4_lut_then_4_lut (.A(A_out_3), .B(A_out_2), 
         .C(Length[2]), .D(CA[10]), .Z(n4040)) /* synthesis lut_function=(A+(B (C)+!B (D))) */ ;
    defparam n11_bdd_4_lut_3325_4_lut_then_4_lut.init = 16'hfbea;
    CCU2D Length_15__I_0_833_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3029), .COUT(n3030), .S0(Length_15__N_395[3]), 
          .S1(Length_15__N_395[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_5.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(n17_adj_669), .B(n15_adj_670), .C(n11), .D(n12), 
         .Z(CAOut_15__N_234)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i2088_2_lut (.A(D_out_1), .B(n4044), .Z(n1232)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2088_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(CA[3]), .B(CA[4]), .C(CA[2]), .D(CA[7]), .Z(n17_adj_669)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i5_2_lut (.A(CA[5]), .B(CA[6]), .Z(n15_adj_670)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_170 (.A(CA[1]), .B(n1378), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_170.init = 16'h8888;
    LUT4 i2_2_lut (.A(CA[0]), .B(IncMode[1]), .Z(n12)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i2165_4_lut (.A(Length[13]), .B(A_out_1), .C(FaultMask), .D(A_out_0), 
         .Z(n403[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i2165_4_lut.init = 16'hfcee;
    LUT4 i6_4_lut_adj_171 (.A(n1378), .B(Length[6]), .C(Length[4]), .D(Length[5]), 
         .Z(n15_adj_668)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i6_4_lut_adj_171.init = 16'h0002;
    LUT4 i1_2_lut_adj_172 (.A(n1378), .B(IncMode[1]), .Z(IncCAg)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_172.init = 16'h2222;
    LUT4 i3183_2_lut (.A(Length[2]), .B(Length[7]), .Z(n3411)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3183_2_lut.init = 16'heeee;
    LUT4 mux_167_i2_4_lut (.A(REUA[17]), .B(REUAWritten[17]), .C(n3758), 
         .D(n3757), .Z(n297[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_167_i2_4_lut.init = 16'hc5ca;
    LUT4 i14_4_lut (.A(n21), .B(n28), .C(Length[7]), .D(Length[12]), 
         .Z(n30_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_173 (.A(n3784), .B(n3790), .C(nWE_c), 
         .D(n3787), .Z(n4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_173.init = 16'hfffe;
    LUT4 i3181_3_lut (.A(Length[1]), .B(Length[3]), .C(Length[0]), .Z(n3409)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3181_3_lut.init = 16'hfefe;
    LUT4 mux_167_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(n3758), 
         .D(REUAOut_18__N_129), .Z(n297[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_167_i1_4_lut.init = 16'hc5ca;
    LUT4 i3_4_lut_adj_174 (.A(n1378), .B(PHI2_N_570_enable_73), .C(n3755), 
         .D(Length1_N_644), .Z(PHI2_N_570_enable_75)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_174.init = 16'hfcfe;
    FD1S3IX XferType__i1 (.D(n3762), .CK(PHI2_N_570), .CD(RegReset), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 mux_171_i8_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_7), .D(CAOut_7__N_280[7]), 
         .Z(n301[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i8_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3524 (.BLUT(n3949), .ALUT(n3945), .C0(A_out_3), .Z(n3950));
    LUT4 mux_748_i2_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[1]), 
         .D(Length_7__N_442[1]), .Z(n921[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_180_i8_3_lut (.A(n3778), .B(ExecuteEN), .C(A_out_0), .Z(n318[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_180_i8_3_lut.init = 16'hcaca;
    LUT4 mux_169_i8_3_lut_4_lut (.A(n3790), .B(n3774), .C(D_out_7), .D(REUAOut_7__N_192[7]), 
         .Z(n299[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i8_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3522 (.BLUT(n3947), .ALUT(n3946), .C0(A_out_1), .Z(n3948));
    PFUMX i3354 (.BLUT(n3611), .ALUT(n3610), .C0(A_out_2), .Z(n3612));
    LUT4 i10_4_lut (.A(Length[9]), .B(Length[3]), .C(Length[2]), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_175 (.A(Length[11]), .B(Length[8]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i2_2_lut_adj_175.init = 16'heeee;
    LUT4 mux_196_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n358[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_196_i2_3_lut.init = 16'hcaca;
    FD1P3JX Length_8__684 (.D(Length_8__N_434), .SP(PHI2_N_570_enable_86), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_8__684.GSR = "ENABLED";
    FD1P3JX Length_9__683 (.D(Length_9__N_429), .SP(PHI2_N_570_enable_86), 
            .PD(n4046), .CK(PHI2_N_570), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_9__683.GSR = "ENABLED";
    FD1P3JX Length_10__682 (.D(Length_10__N_424), .SP(PHI2_N_570_enable_86), 
            .PD(n4046), .CK(PHI2_N_570), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_10__682.GSR = "ENABLED";
    FD1P3JX Length_11__681 (.D(Length_11__N_419), .SP(PHI2_N_570_enable_86), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_11__681.GSR = "ENABLED";
    FD1P3JX Length_12__680 (.D(Length_12__N_414), .SP(PHI2_N_570_enable_86), 
            .PD(n4046), .CK(PHI2_N_570), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_12__680.GSR = "ENABLED";
    FD1P3JX Length_13__679 (.D(Length_13__N_409), .SP(PHI2_N_570_enable_86), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_13__679.GSR = "ENABLED";
    FD1P3JX Length_14__678 (.D(Length_14__N_404), .SP(PHI2_N_570_enable_86), 
            .PD(n4046), .CK(PHI2_N_570), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_14__678.GSR = "ENABLED";
    FD1P3JX Length_15__677 (.D(Length_15__N_392), .SP(PHI2_N_570_enable_86), 
            .PD(n4045), .CK(PHI2_N_570), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_15__677.GSR = "ENABLED";
    LUT4 mux_749_i3_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[10]), 
         .D(Length_15__N_395[2]), .Z(n922[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i3_3_lut_4_lut.init = 16'hf1e0;
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_193), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n3018), .S0(REUAOut_7__N_192[6]), .S1(REUAOut_7__N_192[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_193), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n3017), .COUT(n3018), .S0(REUAOut_7__N_192[4]), 
          .S1(REUAOut_7__N_192[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_193), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n3016), .COUT(n3017), .S0(REUAOut_7__N_192[2]), 
          .S1(REUAOut_7__N_192[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_193), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n3015), .COUT(n3016), .S0(REUAOut_7__N_192[0]), 
          .S1(REUAOut_7__N_192[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3758), .B1(n3765), .C1(GND_net), .D1(GND_net), 
          .COUT(n3015));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    L6MUX21 i3219 (.D0(n3445), .D1(n3754), .SD(A_out_2), .Z(n3447));
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_236), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3010), .S0(CAOut_15__N_233[6]), .S1(CAOut_15__N_233[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_236), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3009), .COUT(n3010), .S0(CAOut_15__N_233[4]), 
          .S1(CAOut_15__N_233[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_236), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3008), .COUT(n3009), .S0(CAOut_15__N_233[2]), 
          .S1(CAOut_15__N_233[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_234), .B0(CAOut_15__N_236), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n3007), .COUT(n3008), .S0(CAOut_15__N_233[0]), 
          .S1(CAOut_15__N_233[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3758), .B1(n3767), .C1(GND_net), .D1(GND_net), .COUT(n3007));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_281), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n3002), .S0(CAOut_7__N_280[6]), .S1(CAOut_7__N_280[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_281), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n3001), .COUT(n3002), .S0(CAOut_7__N_280[4]), 
          .S1(CAOut_7__N_280[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_281), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n3000), .COUT(n3001), .S0(CAOut_7__N_280[2]), 
          .S1(CAOut_7__N_280[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_281), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n2999), .COUT(n3000), .S0(CAOut_7__N_280[0]), 
          .S1(CAOut_7__N_280[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2992), .S1(Length_7__N_442[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2995), .S0(Length_7__N_442[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2992), .COUT(n2993), .S0(Length_7__N_442[1]), 
          .S1(Length_7__N_442[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3758), .B1(n3769), .C1(GND_net), .D1(GND_net), .COUT(n2999));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2994), .COUT(n2995), .S0(Length_7__N_442[5]), 
          .S1(Length_7__N_442[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_88 (.A(A_out_2), .B(A_out_4), .Z(n3784)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_88.init = 16'heeee;
    LUT4 mux_748_i5_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[4]), 
         .D(Length_7__N_442[4]), .Z(n921[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_196_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n358[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_196_i1_3_lut.init = 16'hcaca;
    LUT4 mux_749_i5_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[12]), 
         .D(Length_15__N_395[4]), .Z(n922[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n353_bdd_4_lut (.A(n334[1]), .B(XferType[1]), .C(A_out_1), .D(A_out_0), 
         .Z(n3605)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n353_bdd_4_lut.init = 16'haca0;
    LUT4 mux_171_i7_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_6), .D(CAOut_7__N_280[6]), 
         .Z(n301[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(Length[12]), .Z(n403[4])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_748_i6_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[5]), 
         .D(Length_7__N_442[5]), .Z(n921[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_192_i7_3_lut (.A(REUA[6]), .B(REUA[14]), .C(A_out_0), .Z(n346[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_192_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_176 (.A(A_out_0), .B(A_out_1), .C(Length[11]), 
         .Z(n403[3])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i1_2_lut_3_lut_adj_176.init = 16'hfefe;
    LUT4 mux_749_i6_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[13]), 
         .D(Length_15__N_395[5]), .Z(n922[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3311_2_lut_rep_92 (.A(A_out_3), .B(A_out_1), .Z(n3788)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3311_2_lut_rep_92.init = 16'heeee;
    PFUMX i3217 (.BLUT(n318[7]), .ALUT(n334[7]), .C0(A_out_1), .Z(n3445));
    LUT4 i3327_then_4_lut (.A(CA[2]), .B(A_out_3), .C(A_out_2), .D(REUA[18]), 
         .Z(n3802)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C (D)))) */ ;
    defparam i3327_then_4_lut.init = 16'hfece;
    LUT4 n353_bdd_3_lut_3428_4_lut (.A(A_out_3), .B(A_out_1), .C(n358[1]), 
         .D(n346[1]), .Z(n3604)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n353_bdd_3_lut_3428_4_lut.init = 16'hf1e0;
    LUT4 i3327_else_4_lut (.A(Length[10]), .B(A_out_3), .C(A_out_2), .D(REUA[2]), 
         .Z(n3801)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i3327_else_4_lut.init = 16'hb888;
    PFUMX i3351 (.BLUT(n346[0]), .ALUT(n3608), .C0(n3788), .Z(n3609));
    LUT4 i5_2_lut_adj_177 (.A(Length[15]), .B(Length[14]), .Z(n21)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i5_2_lut_adj_177.init = 16'heeee;
    LUT4 mux_748_i7_3_lut_4_lut (.A(n3758), .B(n3772), .C(LengthWritten[6]), 
         .D(Length_7__N_442[6]), .Z(n921[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_748_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 n354_bdd_3_lut_3397_4_lut (.A(A_out_3), .B(A_out_1), .C(n358[0]), 
         .D(n346[0]), .Z(n3610)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n354_bdd_3_lut_3397_4_lut.init = 16'hf1e0;
    LUT4 A_4__I_0_733_i6_2_lut_rep_93 (.A(A_out_0), .B(A_out_1), .Z(n3789)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(69[2:14])
    defparam A_4__I_0_733_i6_2_lut_rep_93.init = 16'hbbbb;
    LUT4 i2141_2_lut (.A(D_out_5), .B(n4044), .Z(n1224)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2141_2_lut.init = 16'heeee;
    LUT4 mux_749_i1_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[8]), 
         .D(Length_15__N_395[0]), .Z(n922[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 A_4__I_0_i6_2_lut_rep_90 (.A(A_out_0), .B(A_out_1), .Z(n3786)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam A_4__I_0_i6_2_lut_rep_90.init = 16'hdddd;
    LUT4 i12_4_lut (.A(Length[5]), .B(Length[4]), .C(Length[13]), .D(Length[6]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i499_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3775), .D(n4044), 
         .Z(PHI2_N_570_enable_77)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i499_3_lut_4_lut.init = 16'hff04;
    LUT4 i360_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n4044), 
         .D(n3774), .Z(PHI2_N_570_enable_67)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i360_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i392_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n4044), 
         .D(n3774), .Z(PHI2_N_570_enable_74)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i392_2_lut_3_lut_4_lut.init = 16'hf0f4;
    LUT4 mux_192_i6_3_lut (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), .Z(n346[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_192_i6_3_lut.init = 16'hcaca;
    LUT4 mux_192_i5_3_lut (.A(REUA[4]), .B(REUA[12]), .C(A_out_0), .Z(n346[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_192_i5_3_lut.init = 16'hcaca;
    L6MUX21 i3349 (.D0(n3606), .D1(n3603), .SD(A_out_3), .Z(n3607));
    LUT4 mux_171_i6_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_5), .D(CAOut_7__N_280[5]), 
         .Z(n301[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i492_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3775), .D(n4044), 
         .Z(PHI2_N_570_enable_42)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i492_3_lut_4_lut.init = 16'hff02;
    LUT4 i11_4_lut_4_lut (.A(A_out_0), .B(A_out_9), .C(nWE_c), .D(FF00DecodeEN), 
         .Z(n30)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i11_4_lut_4_lut.init = 16'h0400;
    LUT4 mux_192_i4_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n346[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_192_i4_3_lut.init = 16'hcaca;
    LUT4 i3263_3_lut_4_lut_4_lut (.A(A_out_0), .B(n403[4]), .C(A_out_3), 
         .D(Length[4]), .Z(n3434)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i3263_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 mux_749_i4_3_lut_4_lut (.A(n3758), .B(n3770), .C(LengthWritten[11]), 
         .D(Length_15__N_395[3]), .Z(n922[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_749_i4_3_lut_4_lut.init = 16'hf1e0;
    CCU2D Length_15__I_0_833_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3028), .COUT(n3029), .S0(Length_15__N_395[1]), 
          .S1(Length_15__N_395[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_3.INJECT1_1 = "NO";
    LUT4 Length_7__bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n346[7]), 
         .D(Length[7]), .Z(n3754)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;
    defparam Length_7__bdd_4_lut_4_lut.init = 16'hfc74;
    PFUMX i3347 (.BLUT(n3605), .ALUT(n3604), .C0(A_out_2), .Z(n3606));
    LUT4 i3261_3_lut_4_lut_4_lut (.A(A_out_0), .B(n403[5]), .C(A_out_3), 
         .D(Length[5]), .Z(n3437)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i3261_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 mux_192_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n346[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_192_i2_3_lut.init = 16'hcaca;
    LUT4 i3265_3_lut_4_lut_4_lut (.A(A_out_0), .B(n403[3]), .C(A_out_3), 
         .D(Length[3]), .Z(n3431)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i3265_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 Fault_I_0_837_2_lut (.A(Fault), .B(FaultMask), .Z(IRQ_N_535)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[58:78])
    defparam Fault_I_0_837_2_lut.init = 16'h8888;
    LUT4 mux_192_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n346[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_192_i1_3_lut.init = 16'hcaca;
    LUT4 i2115_2_lut (.A(D_out_2), .B(n4044), .Z(n1230)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2115_2_lut.init = 16'heeee;
    LUT4 mux_171_i5_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_4), .D(CAOut_7__N_280[4]), 
         .Z(n301[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i5_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_15__I_0_833_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3028), .S1(Length_15__N_395[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_833_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(IncCA_N_630), .B(SetFault), .C(n3759), .D(RAMWR), 
         .Z(n1378)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i2_4_lut.init = 16'h2202;
    LUT4 i2125_2_lut (.A(D_out_3), .B(n4044), .Z(n1228)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2125_2_lut.init = 16'heeee;
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_148), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(REUAOut_15__N_148), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n3026), .S0(REUAOut_15__N_145[6]), .S1(REUAOut_15__N_145[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_148), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(REUAOut_15__N_148), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n3025), .COUT(n3026), .S0(REUAOut_15__N_145[4]), 
          .S1(REUAOut_15__N_145[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    LUT4 mux_171_i4_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_3), .D(CAOut_7__N_280[3]), 
         .Z(n301[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i4_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3437 (.BLUT(n3801), .ALUT(n3802), .C0(A_out_1), .Z(n3803));
    LUT4 mux_171_i3_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_2), .D(CAOut_7__N_280[2]), 
         .Z(n301[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i2_3_lut_4_lut (.A(n3789), .B(n3771), .C(D_out_1), .D(CAOut_7__N_280[1]), 
         .Z(n301[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i2_3_lut_4_lut.init = 16'hfe10;
    
endmodule
//
// Verilog Description of module RAMctrl
//

module RAMctrl (C8M_N_45, PHI2_c, C8M_c, nCS_c, RBA_c_0, REUA, RAMRD, 
            RAMWR, nRAS_c, nCAS_c, nRWE_c, CKE_c, RA_c_0, WRDr, 
            PHI2_N_570, D_out_0, DQML_c, A_0__N_96, nRESET_c, GND_net, 
            VCC_net, RCLK_c, RAMRDD, RD_out_0, n1097, RBA_c_1, n4043, 
            RA_c_1, DQMH_c, RA_c_2, RA_c_3, RA_c_4, RA_c_5, RA_c_6, 
            RA_c_7, RA_c_8, RA_c_9, RA_c_10, RA_c_11, D_out_1, D_out_2, 
            D_out_3, D_out_4, D_out_5, D_out_6, D_out_7, RD_out_1, 
            RD_out_2, RD_out_3, RD_out_4, RD_out_5, RD_out_6, RD_out_7) /* synthesis syn_module_defined=1 */ ;
    input C8M_N_45;
    input PHI2_c;
    input C8M_c;
    output nCS_c;
    output RBA_c_0;
    input [23:0]REUA;
    input RAMRD;
    input RAMWR;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output RA_c_0;
    output [7:0]WRDr;
    input PHI2_N_570;
    input D_out_0;
    output DQML_c;
    input A_0__N_96;
    input nRESET_c;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output n1097;
    output RBA_c_1;
    input n4043;
    output RA_c_1;
    output DQMH_c;
    output RA_c_2;
    output RA_c_3;
    output RA_c_4;
    output RA_c_5;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    output RA_c_10;
    output RA_c_11;
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
    
    wire C8M_N_45 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[11:16])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[11:16])
    
    wire nCS_N_64, n3792, InitDone, n4;
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(42[11:12])
    
    wire n6, nRAS_N_84, n1199, nRWE_N_86, CKE_N_89, n1, n3356, 
        nRESETr, n3793, n1530, n3782, n2416;
    wire [2:0]RefCnt;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[11:17])
    
    wire RefCnt_2__N_60, n1533;
    wire [2:0]n14;
    
    wire n3794, n3249, n1314, n3795, n3796, n4_adj_653, C8M_c_enable_3, 
        RDOE_N_100;
    wire [2:0]n26;
    
    wire RDD_7__N_62, n1198, n2460, n3, n3785;
    wire [2:0]S_2__N_51;
    
    wire n1_adj_655, RDOE, n1_adj_656, n1_adj_657, n1_adj_658, n1_adj_659, 
        n1_adj_660, n1_adj_661, n1_adj_662, PORDone, C8M_c_enable_1, 
        n3_adj_663, n3442;
    wire [2:0]n2;
    
    wire n3443, n1272;
    
    FD1S3AX PHI2r_0__135 (.D(PHI2_c), .CK(C8M_N_45), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(37[8:40])
    defparam PHI2r_0__135.GSR = "ENABLED";
    FD1S3AX PHI2r_1__136 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(38[8:44])
    defparam PHI2r_1__136.GSR = "ENABLED";
    FD1S3AX nCS_140 (.D(nCS_N_64), .CK(C8M_c), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nCS_140.GSR = "ENABLED";
    FD1S3IX RBA_i1 (.D(REUA[21]), .CK(C8M_c), .CD(n3792), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RBA_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(RAMRD), .B(RAMWR), .C(InitDone), .Z(n4)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(105[13] 118[7])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i14_3_lut_4_lut (.A(RAMRD), .B(RAMWR), .C(InitDone), .D(S[0]), 
         .Z(n6)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(105[13] 118[7])
    defparam i14_3_lut_4_lut.init = 16'h1f10;
    FD1S3AX nRAS_141 (.D(nRAS_N_84), .CK(C8M_c), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nRAS_141.GSR = "ENABLED";
    FD1S3JX nCAS_142 (.D(n1199), .CK(C8M_c), .PD(S[1]), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nCAS_142.GSR = "ENABLED";
    FD1S3AX nRWE_143 (.D(nRWE_N_86), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nRWE_143.GSR = "ENABLED";
    FD1S3AX CKE_144 (.D(CKE_N_89), .CK(C8M_c), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam CKE_144.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n1), .CK(C8M_c), .CD(n3792), .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_570), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    LUT4 i3290_2_lut_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), .Z(n3356)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam i3290_2_lut_3_lut.init = 16'hefef;
    FD1S3JX DQML_148 (.D(A_0__N_96), .CK(C8M_c), .PD(n3356), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam DQML_148.GSR = "ENABLED";
    FD1S3AX nRESETr_133 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[8:41])
    defparam nRESETr_133.GSR = "ENABLED";
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(C8M_c), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(58[10] 65[32])
    defparam rclk_oddr.GSR = "ENABLED";
    LUT4 WRCMD_I_0_2_lut_rep_97 (.A(RAMWR), .B(InitDone), .Z(n3793)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(54[15:32])
    defparam WRCMD_I_0_2_lut_rep_97.init = 16'h8888;
    LUT4 i1312_1_lut_2_lut (.A(RAMWR), .B(InitDone), .Z(n1530)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(54[15:32])
    defparam i1312_1_lut_2_lut.init = 16'h7777;
    LUT4 i2206_2_lut_3_lut_4_lut (.A(RAMWR), .B(InitDone), .C(S[0]), .D(n3782), 
         .Z(n2416)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(54[15:32])
    defparam i2206_2_lut_3_lut_4_lut.init = 16'hf080;
    FD1P3IX RefCnt_248__i0 (.D(n14[0]), .SP(RefCnt_2__N_60), .CD(n1533), 
            .CK(C8M_c), .Q(RefCnt[0]));   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_248__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_98 (.A(S[0]), .B(S[1]), .Z(n3794)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_rep_98.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_161 (.A(S[0]), .B(S[1]), .C(InitDone), .Z(n3249)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_3_lut_adj_161.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_162 (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n1314)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_3_lut_adj_162.init = 16'hfefe;
    LUT4 i2098_3_lut_rep_99 (.A(RefCnt[0]), .B(InitDone), .C(RefCnt[1]), 
         .Z(n3795)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(158[13] 171[7])
    defparam i2098_3_lut_rep_99.init = 16'hc8c8;
    LUT4 RDCMDg_I_0_180_2_lut_rep_100 (.A(RAMRD), .B(RAMWR), .Z(n3796)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(82[17:33])
    defparam RDCMDg_I_0_180_2_lut_rep_100.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_163 (.A(RAMRD), .B(RAMWR), .C(S[0]), .Z(n4_adj_653)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(82[17:33])
    defparam i1_2_lut_3_lut_adj_163.init = 16'hf1f1;
    LUT4 equal_12_i4_2_lut_rep_101 (.A(S[1]), .B(S[2]), .Z(n3792)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam equal_12_i4_2_lut_rep_101.init = 16'heeee;
    LUT4 equal_12_i5_2_lut_rep_87_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), 
         .Z(C8M_c_enable_3)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam equal_12_i5_2_lut_rep_87_3_lut.init = 16'hfefe;
    LUT4 i3306_2_lut_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), .Z(RDOE_N_100)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam i3306_2_lut_3_lut.init = 16'h1010;
    LUT4 i2783_2_lut (.A(RefCnt[1]), .B(RefCnt[0]), .Z(n14[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i2783_2_lut.init = 16'h6666;
    LUT4 i2790_3_lut (.A(n26[2]), .B(RefCnt[1]), .C(RefCnt[0]), .Z(n14[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i2790_3_lut.init = 16'h6a6a;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 i2229_4_lut (.A(S[1]), .B(S[0]), .C(n3793), .D(n3782), .Z(n1198)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;
    defparam i2229_4_lut.init = 16'h373f;
    LUT4 S_2__I_0_174_i3_4_lut (.A(InitDone), .B(n2416), .C(S[1]), .D(n3796), 
         .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_174_i3_4_lut.init = 16'hcac0;
    LUT4 S_2__I_0_175_i3_4_lut (.A(InitDone), .B(n2416), .C(S[1]), .D(n4_adj_653), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_175_i3_4_lut.init = 16'h3f35;
    LUT4 S_2__I_0_166_i1_3_lut (.A(REUA[9]), .B(REUA[1]), .C(S[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_166_i1_3_lut.init = 16'hcaca;
    FD1S3IX S__i0 (.D(S_2__N_51[0]), .CK(C8M_c), .CD(n3785), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i0.GSR = "ENABLED";
    LUT4 S_2__I_0_164_i1_3_lut (.A(REUA[10]), .B(REUA[2]), .C(S[0]), .Z(n1_adj_655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_164_i1_3_lut.init = 16'hcaca;
    LUT4 i904_1_lut (.A(RDOE), .Z(n1097)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    defparam i904_1_lut.init = 16'h5555;
    FD1P3IX RefCnt_248__i1 (.D(n14[1]), .SP(RefCnt_2__N_60), .CD(n1533), 
            .CK(C8M_c), .Q(RefCnt[1]));   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_248__i1.GSR = "ENABLED";
    FD1P3IX RefCnt_248__i2 (.D(n14[2]), .SP(RefCnt_2__N_60), .CD(n1533), 
            .CK(C8M_c), .Q(n26[2]));   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_248__i2.GSR = "ENABLED";
    LUT4 S_2__I_0_163_i1_3_lut (.A(REUA[11]), .B(REUA[3]), .C(S[0]), .Z(n1_adj_656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_163_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_162_i1_3_lut (.A(REUA[12]), .B(REUA[4]), .C(S[0]), .Z(n1_adj_657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_162_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_161_i1_3_lut (.A(REUA[13]), .B(REUA[5]), .C(S[0]), .Z(n1_adj_658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_161_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_160_i1_3_lut (.A(REUA[14]), .B(REUA[6]), .C(S[0]), .Z(n1_adj_659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_160_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_159_i1_3_lut (.A(REUA[15]), .B(REUA[7]), .C(S[0]), .Z(n1_adj_660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_159_i1_3_lut.init = 16'hcaca;
    FD1S3IX RBA_i2 (.D(REUA[22]), .CK(C8M_c), .CD(n3792), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RBA_i2.GSR = "ENABLED";
    LUT4 S_2__I_0_158_i1_3_lut (.A(REUA[16]), .B(REUA[8]), .C(S[0]), .Z(n1_adj_661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_158_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_157_i1_3_lut (.A(REUA[17]), .B(REUA[23]), .C(S[0]), 
         .Z(n1_adj_662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_157_i1_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(RefCnt[1]), .B(RefCnt_2__N_60), .C(n26[2]), .D(RefCnt[0]), 
         .Z(n1533)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i2781_1_lut (.A(RefCnt[0]), .Z(n14[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i2781_1_lut.init = 16'h5555;
    FD1P3AX PORDone_134 (.D(n4043), .SP(nRESETr), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:49])
    defparam PORDone_134.GSR = "ENABLED";
    FD1P3AX InitDone_138 (.D(n4043), .SP(C8M_c_enable_1), .CK(C8M_c), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[8:58])
    defparam InitDone_138.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n1_adj_655), .CK(C8M_c), .CD(n3792), .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 S_2__I_0_154_i3_4_lut (.A(REUA[19]), .B(S[2]), .C(S[1]), .D(S[0]), 
         .Z(n3_adj_663)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_154_i3_4_lut.init = 16'h303a;
    LUT4 i3214_3_lut_4_lut (.A(n3782), .B(n3793), .C(S[1]), .D(n6), 
         .Z(n3442)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(136[8:47])
    defparam i3214_3_lut_4_lut.init = 16'he0ef;
    FD1S3IX RDOE_151 (.D(RDOE_N_100), .CK(C8M_c), .CD(n1530), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(249[8:54])
    defparam RDOE_151.GSR = "ENABLED";
    FD1S3JX DQMH_147 (.D(REUA[0]), .CK(C8M_c), .PD(n3356), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam DQMH_147.GSR = "ENABLED";
    LUT4 i760_2_lut (.A(S[1]), .B(S[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i760_2_lut.init = 16'h6666;
    FD1S3IX RA_i3 (.D(n1_adj_656), .CK(C8M_c), .CD(n3792), .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n1_adj_657), .CK(C8M_c), .CD(n3792), .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n1_adj_658), .CK(C8M_c), .CD(n3792), .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3JX RA_i6 (.D(n1_adj_659), .CK(C8M_c), .PD(n3792), .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n1_adj_660), .CK(C8M_c), .CD(n3792), .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n1_adj_661), .CK(C8M_c), .CD(n3792), .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1S3IX RA_i9 (.D(n1_adj_662), .CK(C8M_c), .CD(n3792), .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(REUA[18]), .CK(C8M_c), .PD(n1314), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3IX RA_i11 (.D(n3_adj_663), .CK(C8M_c), .CD(S[2]), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3IX RA_i12 (.D(REUA[20]), .CK(C8M_c), .CD(n1314), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i12.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_570), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_570), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_570), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_570), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_570), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_570), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_570), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 i983_4_lut_4_lut (.A(n3795), .B(S[0]), .C(n4), .D(S[2]), .Z(n1199)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(D))) */ ;
    defparam i983_4_lut_4_lut.init = 16'hee3f;
    LUT4 i3215_3_lut_3_lut (.A(n3795), .B(S[0]), .C(S[1]), .Z(n3443)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam i3215_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i2_3_lut_rep_86 (.A(RAMRD), .B(n3795), .C(RAMWR), .Z(n3782)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(136[8:37])
    defparam i2_3_lut_rep_86.init = 16'h3b3b;
    LUT4 S_2__I_0_174_i7_3_lut_4_lut (.A(n3795), .B(n3794), .C(S[2]), 
         .D(n2460), .Z(nCS_N_64)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_174_i7_3_lut_4_lut.init = 16'he0ef;
    LUT4 S_2__I_0_175_i7_3_lut_4_lut (.A(n3795), .B(n3794), .C(S[2]), 
         .D(n3), .Z(nRAS_N_84)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_175_i7_3_lut_4_lut.init = 16'hefe0;
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1P3IX S__i1 (.D(n2[1]), .SP(C8M_c_enable_3), .CD(n1272), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n2[2]), .SP(C8M_c_enable_3), .CD(n1272), .CK(C8M_c), 
            .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i2.GSR = "ENABLED";
    PFUMX S_2__I_0_178_i7 (.BLUT(n1198), .ALUT(n3249), .C0(S[2]), .Z(nRWE_N_86)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;
    LUT4 i2091_3_lut_4_lut (.A(S[0]), .B(n3792), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(S_2__N_51[0])) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam i2091_3_lut_4_lut.init = 16'h4544;
    PFUMX i3216 (.BLUT(n3442), .ALUT(n3443), .C0(S[2]), .Z(CKE_N_89));
    LUT4 i1053_1_lut_rep_89 (.A(PORDone), .Z(n3785)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:49])
    defparam i1053_1_lut_rep_89.init = 16'h5555;
    LUT4 i1054_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_3), .Z(n1272)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:49])
    defparam i1054_2_lut_4_lut_4_lut.init = 16'h5575;
    LUT4 i1_2_lut_rep_83_3_lut (.A(S[1]), .B(S[0]), .C(S[2]), .Z(C8M_c_enable_1)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i1_2_lut_rep_83_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut (.A(S[1]), .B(S[0]), .C(InitDone), .D(S[2]), 
         .Z(RefCnt_2__N_60)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(S[1]), .B(S[0]), .C(RAMRD), .D(S[2]), .Z(RDD_7__N_62)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i767_2_lut_3_lut (.A(S[1]), .B(S[0]), .C(S[2]), .Z(n2[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i767_2_lut_3_lut.init = 16'h7878;
    
endmodule
