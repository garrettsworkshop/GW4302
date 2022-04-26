// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Apr 26 13:20:55 2022
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
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_500 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[11:18])
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(116[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, n3428, nWE_c, nWEDMA_c, 
        nIO2_c, nRWOE_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, 
        nRWE_c, CKE_c, RBA_c_1, RBA_c_0, RA_0_11, RA_0_10, RA_0_9, 
        RA_0_8, RA_0_7, RA_0_6, RA_0_5, RA_0_4, RA_0_3, RA_0_2, 
        RA_0_1, RA_0_0, DQMH_c, DQML_c, IRQ;
    wire [1:0]XferType;   // //mac/icloud/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // //mac/icloud/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // //mac/icloud/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // //mac/icloud/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, IncREUA, SetVerifyErr, DOE, 
        Execute;
    wire [7:0]Dout;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[13:17])
    
    wire nWEDMA_N_5, EndOfBlock, ExecuteEN, AutoloadEN, FF00DecodeEN;
    wire [1:0]XferType_adj_667;   // //mac/icloud/repos/gw4302/cpld/reg.v(39[11:19])
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[12:18])
    
    wire IntEnable, EndOfBlockMask, n3426, n3490, n3412, n3411, 
        n3410, n3425, n3424, n3423, n3422, n3666, IntPending_N_448, 
        CAOut_7__N_186, PHI2_N_548_enable_6, n3409, n3408, n3664, 
        n3665, n418, CAOut_15__N_141, n1813, n3636, REUAOut_7__N_98, 
        n3629, n3087, REUAOut_15__N_53, n6, n3399, n3394, n8, 
        n3390, n3102, n1452, n6_adj_664, IRQOut_N_440, n2643;
    wire [7:0]WRDr;   // //mac/icloud/repos/gw4302/cpld/ram.v(238[11:15])
    
    wire n2949, n3371, A_0__N_542, n2644, n3419, PHI2_N_548_enable_85, 
        n3366, XferVerify, n3418, n1454, XferEnd_N_579, Length1_N_622, 
        n3417, PHI2_N_548_enable_81, nAOE_N_633, n3582, nDOE_N_640, 
        n3416, n8_adj_665, PHI2_N_548_enable_72, n7, n15, n14, n13, 
        PHI2_N_548_enable_80, PHI2_N_548_enable_27, PHI2_N_548_enable_78, 
        n3414, n3445, D_out_7, n3442, D_out_6, D_out_5, D_out_4, 
        D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, A_out_14, 
        A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, A_out_8, 
        A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, RD_out_7, RD_out_6, 
        RD_out_5, n1008, RD_out_4, RD_out_3, RD_out_2, RD_out_1, 
        RD_out_0, n3413, n3438, n39, n3435, n3434, n18, n17, 
        n3433, n3432, n3431, n3430, n3429, n12;
    
    VHI i2 (.Z(VCC_net));
    INV i3212 (.A(PHI2_c), .Z(PHI2_N_548));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    BB A_pad_14 (.I(CA[14]), .T(n3442), .B(A[14]), .O(A_out_14));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    LUT4 i2_2_lut_3_lut_4_lut (.A(n3665), .B(n3419), .C(XferEnd_N_579), 
         .D(DMA), .Z(PHI2_N_548_enable_85)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfeee;
    BB A_pad_15 (.I(CA[15]), .T(n3442), .B(A[15]), .O(A_out_15));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB D_pad_0 (.I(Dout[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_1 (.I(Dout[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_2 (.I(Dout[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_3 (.I(Dout[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_4 (.I(Dout[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_5 (.I(Dout[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    LUT4 i451_3_lut (.A(n8), .B(n3665), .C(n3429), .Z(PHI2_N_548_enable_78)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i451_3_lut.init = 16'hcdcd;
    BB D_pad_6 (.I(Dout[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n3629), .B(RAMRDD[3]), .C(DMA), .D(n1813), 
         .Z(Dout[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3636), .B(RAMRDD[4]), .C(DMA), .D(n1813), 
         .Z(Dout[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n3394), .B(RAMRDD[5]), .C(DMA), .D(n1813), 
         .Z(Dout[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n3490), .B(RAMRDD[6]), .C(DMA), .D(n1813), 
         .Z(Dout[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    LUT4 XferType_1__I_0_i1_3_lut_rep_61_4_lut (.A(n3425), .B(n3433), .C(D_out_0), 
         .D(XferType_adj_667[0]), .Z(n3416)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam XferType_1__I_0_i1_3_lut_rep_61_4_lut.init = 16'hfd20;
    LUT4 i8_4_lut (.A(n3102), .B(FF00DecodeEN), .C(n12), .D(A_out_1), 
         .Z(n18)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i8_4_lut.init = 16'h0040;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n3582), .B(RAMRDD[7]), .C(DMA), .D(n1813), 
         .Z(Dout[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    BB D_pad_7 (.I(Dout[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // //mac/icloud/repos/gw4302/cpld/reu.v(116[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3442), .B(A[13]), .O(A_out_13));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3425), .B(n3433), .C(n3665), .D(D_out_7), 
         .Z(n2949)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i2_3_lut_4_lut (.A(n3425), .B(n3433), .C(D_out_4), .D(n3665), 
         .Z(n3087)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam i2_3_lut_4_lut.init = 16'h0002;
    LUT4 XferType_1__I_0_i2_3_lut_4_lut (.A(n3425), .B(n3433), .C(D_out_1), 
         .D(XferType_adj_667[1]), .Z(XferType[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam XferType_1__I_0_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_60_3_lut_4_lut (.A(A_out_1), .B(n3430), .C(n3665), 
         .D(n3433), .Z(PHI2_N_548_enable_80)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam i1_2_lut_rep_60_3_lut_4_lut.init = 16'hf0f4;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2643));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i1_2_lut_rep_59_3_lut_4_lut (.A(A_out_1), .B(n3430), .C(D_out_7), 
         .D(n3433), .Z(n3414)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam i1_2_lut_rep_59_3_lut_4_lut.init = 16'h0040;
    LUT4 i312_2_lut_3_lut_4_lut (.A(A_out_1), .B(n3430), .C(n3665), .D(n3435), 
         .Z(PHI2_N_548_enable_72)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam i312_2_lut_3_lut_4_lut.init = 16'hf0f4;
    BB A_pad_12 (.I(CA[12]), .T(n3442), .B(A[12]), .O(A_out_12));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3442), .B(A[11]), .O(A_out_11));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    LUT4 i1_3_lut_4_lut (.A(A_out_1), .B(n3430), .C(n8), .D(n3665), 
         .Z(PHI2_N_548_enable_27)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam i1_3_lut_4_lut.init = 16'hff04;
    BB A_pad_10 (.I(CA[10]), .T(n3442), .B(A[10]), .O(A_out_10));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3442), .B(A[9]), .O(A_out_9));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3442), .B(A[8]), .O(A_out_8));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3442), .B(A[7]), .O(n8_adj_665));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3442), .B(A[6]), .O(n7));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3442), .B(A[5]), .O(n6));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    INV i3211 (.A(C8M_c), .Z(C8M_N_500));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    BB A_pad_4 (.I(CA[4]), .T(n3442), .B(A[4]), .O(A_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3442), .B(A[3]), .O(A_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3442), .B(A[2]), .O(A_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3442), .B(A[1]), .O(A_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3442), .B(A[0]), .O(A_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1008), .B(RD[7]), .O(RD_out_7));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1008), .B(RD[6]), .O(RD_out_6));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1008), .B(RD[5]), .O(RD_out_5));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1008), .B(RD[4]), .O(RD_out_4));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1008), .B(RD[3]), .O(RD_out_3));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1008), .B(RD[2]), .O(RD_out_2));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1008), .B(RD[1]), .O(RD_out_1));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1008), .B(RD[0]), .O(RD_out_0));   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n3442), .O(nDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_N_633), .O(nAOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n3442), .O(ADIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(nRWOE_c), .O(nRWOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_N_640), .O(nDOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(18[9:13])
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
    LUT4 i2864_2_lut (.A(A_out_3), .B(n6), .Z(n3102)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2864_2_lut.init = 16'heeee;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2644), .S1(nWEDMA_N_5));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(nWE_c), .B(n7), .C(ExecuteEN), .D(n3438), .Z(n17)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i7_4_lut.init = 16'h0010;
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2643), .COUT(n2644));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    VLO i1 (.Z(GND_net));
    LUT4 i2_4_lut_4_lut (.A(A_out_0), .B(n14), .C(n13), .D(n15), .Z(n12)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam i2_4_lut_4_lut.init = 16'h4000;
    LUT4 i6_4_lut (.A(A_out_12), .B(A_out_14), .C(A_out_10), .D(A_out_9), 
         .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 n361_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_3), .C(Length[5]), 
         .D(n418), .Z(n3390)) /* synthesis lut_function=(A (B (D)+!B (C))+!A ((D)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(118[9:10])
    defparam n361_bdd_4_lut_4_lut.init = 16'hfd31;
    LUT4 i4_2_lut (.A(A_out_8), .B(A_out_13), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i5_3_lut (.A(A_out_15), .B(A_out_11), .C(n8_adj_665), .Z(n14)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i5_3_lut.init = 16'h0808;
    REUReg reureg (.A_out_0(A_out_0), .EndOfBlockMask(EndOfBlockMask), .n3409(n3409), 
           .n3665(n3665), .GND_net(GND_net), .CA({CA}), .PHI2_N_548(PHI2_N_548), 
           .RegReset(RegReset), .REUA({Open_0, Open_1, Open_2, Open_3, 
           Open_4, Open_5, Open_6, REUA[16:15], Open_7, Open_8, 
           Open_9, Open_10, REUA[10], Open_11, Open_12, REUA[7:0]}), 
           .A_out_2(A_out_2), .A_out_4(A_out_4), .n3438(n3438), .n3666(n3666), 
           .D_out_1(D_out_1), .nWE_c(nWE_c), .D_out_2(D_out_2), .D_out_3(D_out_3), 
           .XferType({XferType_adj_667}), .D_out_0(D_out_0), .n3419(n3419), 
           .\XferType[1] (XferType[1]), .XferVerify(XferVerify), .n3412(n3412), 
           .A_out_3(A_out_3), .n3433(n3433), .n3426(n3426), .D_out_4(D_out_4), 
           .n3435(n3435), .EndOfBlock(EndOfBlock), .PHI2_N_548_enable_6(PHI2_N_548_enable_6), 
           .n3664(n3664), .D_out_5(D_out_5), .IntPending_N_448(IntPending_N_448), 
           .D_out_6(D_out_6), .D_out_7(D_out_7), .FF00DecodeEN(FF00DecodeEN), 
           .PHI2_N_548_enable_85(PHI2_N_548_enable_85), .n3087(n3087), .\Length[5] (Length[5]), 
           .nIO2_c(nIO2_c), .n6(n6_adj_664), .\REUA[21] (REUA[21]), .\REUA[22] (REUA[22]), 
           .\REUA[23] (REUA[23]), .\REUA[14] (REUA[14]), .A_out_1(A_out_1), 
           .\REUA[13] (REUA[13]), .\REUA[12] (REUA[12]), .\REUA[11] (REUA[11]), 
           .\REUA[9] (REUA[9]), .\REUA[8] (REUA[8]), .IntEnable(IntEnable), 
           .PHI2_N_548_enable_27(PHI2_N_548_enable_27), .ExecuteEN(ExecuteEN), 
           .\REUA[18] (REUA[18]), .IRQOut_N_440(IRQOut_N_440), .n3425(n3425), 
           .\REUA[17] (REUA[17]), .SetVerifyErr(SetVerifyErr), .PHI2_N_548_enable_78(PHI2_N_548_enable_78), 
           .PHI2_N_548_enable_72(PHI2_N_548_enable_72), .IncREUA(IncREUA), 
           .n3416(n3416), .PHI2_N_548_enable_80(PHI2_N_548_enable_80), .n8(n8), 
           .n3428(n3428), .n1454(n1454), .n3429(n3429), .Length1_N_622(Length1_N_622), 
           .n3434(n3434), .A_0__N_542(A_0__N_542), .BA_c(BA_c), .n3413(n3413), 
           .AutoloadEN(AutoloadEN), .\REUA[19] (REUA[19]), .n17(n17), 
           .n18(n18), .n3414(n3414), .Execute(Execute), .n3422(n3422), 
           .n3430(n3430), .n3432(n3432), .n3636(n3636), .REUAOut_15__N_53(REUAOut_15__N_53), 
           .n3424(n3424), .REUAOut_7__N_98(REUAOut_7__N_98), .n3418(n3418), 
           .CAOut_15__N_141(CAOut_15__N_141), .n3423(n3423), .n3629(n3629), 
           .n3445(n3445), .n3411(n3411), .n3408(n3408), .n3410(n3410), 
           .n3399(n3399), .n418(n418), .n3417(n3417), .n3582(n3582), 
           .DMA(DMA), .n3394(n3394), .CAOut_7__N_186(CAOut_7__N_186), 
           .n3390(n3390), .n3490(n3490), .n3371(n3371), .n3431(n3431), 
           .n2949(n2949), .n3366(n3366)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(57[9] 68[11])
    LUT4 i14_4_lut (.A(n3399), .B(RAMRDD[0]), .C(DMA), .D(n1813), .Z(Dout[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i14_4_lut.init = 16'hcfca;
    LUT4 i1_4_lut (.A(A_out_4), .B(A_out_3), .C(n39), .D(A_out_2), .Z(n1813)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'heeea;
    Glue glue (.DMA(DMA), .nIO2_c(nIO2_c), .nWE_c(nWE_c), .n3431(n3431), 
         .nWEDMA_c(nWEDMA_c), .DOE(DOE), .n3432(n3432), .n6(n6_adj_664), 
         .n3428(n3428), .A_out_0(A_out_0), .n3430(n3430), .PHI2_c(PHI2_c), 
         .BA_c(BA_c), .nDOE_N_640(nDOE_N_640), .n3445(n3445), .n3412(n3412), 
         .XferEnd_N_579(XferEnd_N_579), .n1452(n1452), .DDIR_c(DDIR_c), 
         .IntEnable(IntEnable), .EndOfBlock(EndOfBlock), .IRQOut_N_440(IRQOut_N_440), 
         .EndOfBlockMask(EndOfBlockMask), .IRQ(IRQ), .PHI2_N_548_enable_81(PHI2_N_548_enable_81), 
         .nRWOE_c(nRWOE_c), .n3411(n3411), .\XferType[1] (XferType[1]), 
         .n3410(n3410), .A_out_1(A_out_1), .n3425(n3425), .n3429(n3429), 
         .n3435(n3435), .n3424(n3424), .n8(n8), .n3422(n3422), .n3426(n3426)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(98[7] 113[15])
    LUT4 i1_2_lut (.A(A_out_0), .B(A_out_1), .Z(n39)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n3366), .B(RAMRDD[1]), .C(DMA), .D(n1813), 
         .Z(Dout[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n3371), .B(RAMRDD[2]), .C(DMA), .D(n1813), 
         .Z(Dout[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 m1_lut (.Z(n3664)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    DMASeq dmaseq (.n3416(n3416), .\XferType[1] (XferType[1]), .n3413(n3413), 
           .DMA(DMA), .XferEnd_N_579(XferEnd_N_579), .AutoloadEN(AutoloadEN), 
           .n3409(n3409), .n3665(n3665), .n3442(n3442), .BA_c(BA_c), 
           .PHI2_c(PHI2_c), .nAOE_N_633(nAOE_N_633), .Execute(Execute), 
           .n3434(n3434), .n3445(n3445), .Length1_N_622(Length1_N_622), 
           .SetVerifyErr(SetVerifyErr), .IntPending_N_448(IntPending_N_448), 
           .PHI2_N_548_enable_6(PHI2_N_548_enable_6), .n3417(n3417), .CAOut_7__N_186(CAOut_7__N_186), 
           .RegReset(RegReset), .PHI2_N_548(PHI2_N_548), .nRESET_c(nRESET_c), 
           .nWEDMA_c(nWEDMA_c), .n3422(n3422), .n3408(n3408), .RAMRD(RAMRD), 
           .RAMWR(RAMWR), .nWEDMA_N_5(nWEDMA_N_5), .XferVerify(XferVerify), 
           .n3424(n3424), .REUAOut_15__N_53(REUAOut_15__N_53), .n3666(n3666), 
           .PHI2_N_548_enable_81(PHI2_N_548_enable_81), .n1452(n1452), .n3418(n3418), 
           .REUAOut_7__N_98(REUAOut_7__N_98), .n3423(n3423), .CAOut_15__N_141(CAOut_15__N_141), 
           .IncREUA(IncREUA), .n3411(n3411)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(82[9] 96[64])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    RAM ram (.C8M_c(C8M_c), .RAMWR(RAMWR), .n1008(n1008), .RAMRD(RAMRD), 
        .\REUA[18] (REUA[18]), .n3664(n3664), .\REUA[9] (REUA[9]), .\REUA[1] (REUA[1]), 
        .C8M_N_500(C8M_N_500), .PHI2_c(PHI2_c), .nCS_c(nCS_c), .RBA_c_0(RBA_c_0), 
        .\REUA[21] (REUA[21]), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
        .CKE_c(CKE_c), .RA_0_0(RA_0_0), .WRDr({WRDr}), .PHI2_N_548(PHI2_N_548), 
        .D_out_0(D_out_0), .DQML_c(DQML_c), .A_0__N_542(A_0__N_542), .nRESET_c(nRESET_c), 
        .GND_net(GND_net), .VCC_net(VCC_net), .RCLK_c(RCLK_c), .\REUA[10] (REUA[10]), 
        .\REUA[2] (REUA[2]), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .\REUA[11] (REUA[11]), 
        .\REUA[3] (REUA[3]), .\REUA[12] (REUA[12]), .\REUA[4] (REUA[4]), 
        .\REUA[13] (REUA[13]), .\REUA[5] (REUA[5]), .\REUA[15] (REUA[15]), 
        .\REUA[7] (REUA[7]), .\REUA[16] (REUA[16]), .\REUA[8] (REUA[8]), 
        .\REUA[17] (REUA[17]), .\REUA[23] (REUA[23]), .\REUA[19] (REUA[19]), 
        .\REUA[14] (REUA[14]), .\REUA[6] (REUA[6]), .RBA_c_1(RBA_c_1), 
        .\REUA[22] (REUA[22]), .RA_0_11(RA_0_11), .n1454(n1454), .RA_0_1(RA_0_1), 
        .DQMH_c(DQMH_c), .\REUA[0] (REUA[0]), .RA_0_2(RA_0_2), .RA_0_3(RA_0_3), 
        .RA_0_4(RA_0_4), .RA_0_5(RA_0_5), .RA_0_6(RA_0_6), .RA_0_7(RA_0_7), 
        .RA_0_8(RA_0_8), .RA_0_9(RA_0_9), .RA_0_10(RA_0_10), .D_out_1(D_out_1), 
        .D_out_2(D_out_2), .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), 
        .D_out_6(D_out_6), .D_out_7(D_out_7), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), 
        .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), 
        .RD_out_6(RD_out_6), .RD_out_7(RD_out_7)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(70[6] 80[32])
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (A_out_0, EndOfBlockMask, n3409, n3665, GND_net, CA, 
            PHI2_N_548, RegReset, REUA, A_out_2, A_out_4, n3438, 
            n3666, D_out_1, nWE_c, D_out_2, D_out_3, XferType, D_out_0, 
            n3419, \XferType[1] , XferVerify, n3412, A_out_3, n3433, 
            n3426, D_out_4, n3435, EndOfBlock, PHI2_N_548_enable_6, 
            n3664, D_out_5, IntPending_N_448, D_out_6, D_out_7, FF00DecodeEN, 
            PHI2_N_548_enable_85, n3087, \Length[5] , nIO2_c, n6, 
            \REUA[21] , \REUA[22] , \REUA[23] , \REUA[14] , A_out_1, 
            \REUA[13] , \REUA[12] , \REUA[11] , \REUA[9] , \REUA[8] , 
            IntEnable, PHI2_N_548_enable_27, ExecuteEN, \REUA[18] , 
            IRQOut_N_440, n3425, \REUA[17] , SetVerifyErr, PHI2_N_548_enable_78, 
            PHI2_N_548_enable_72, IncREUA, n3416, PHI2_N_548_enable_80, 
            n8, n3428, n1454, n3429, Length1_N_622, n3434, A_0__N_542, 
            BA_c, n3413, AutoloadEN, \REUA[19] , n17, n18, n3414, 
            Execute, n3422, n3430, n3432, n3636, REUAOut_15__N_53, 
            n3424, REUAOut_7__N_98, n3418, CAOut_15__N_141, n3423, 
            n3629, n3445, n3411, n3408, n3410, n3399, n418, n3417, 
            n3582, DMA, n3394, CAOut_7__N_186, n3390, n3490, n3371, 
            n3431, n2949, n3366) /* synthesis syn_module_defined=1 */ ;
    input A_out_0;
    output EndOfBlockMask;
    input n3409;
    input n3665;
    input GND_net;
    output [15:0]CA;
    input PHI2_N_548;
    input RegReset;
    output [23:0]REUA;
    input A_out_2;
    input A_out_4;
    output n3438;
    input n3666;
    input D_out_1;
    input nWE_c;
    input D_out_2;
    input D_out_3;
    output [1:0]XferType;
    input D_out_0;
    output n3419;
    input \XferType[1] ;
    output XferVerify;
    output n3412;
    input A_out_3;
    output n3433;
    input n3426;
    input D_out_4;
    output n3435;
    output EndOfBlock;
    input PHI2_N_548_enable_6;
    input n3664;
    input D_out_5;
    input IntPending_N_448;
    input D_out_6;
    input D_out_7;
    output FF00DecodeEN;
    input PHI2_N_548_enable_85;
    input n3087;
    output \Length[5] ;
    input nIO2_c;
    output n6;
    output \REUA[21] ;
    output \REUA[22] ;
    output \REUA[23] ;
    output \REUA[14] ;
    input A_out_1;
    output \REUA[13] ;
    output \REUA[12] ;
    output \REUA[11] ;
    output \REUA[9] ;
    output \REUA[8] ;
    output IntEnable;
    input PHI2_N_548_enable_27;
    output ExecuteEN;
    output \REUA[18] ;
    output IRQOut_N_440;
    input n3425;
    output \REUA[17] ;
    input SetVerifyErr;
    input PHI2_N_548_enable_78;
    input PHI2_N_548_enable_72;
    input IncREUA;
    input n3416;
    input PHI2_N_548_enable_80;
    output n8;
    input n3428;
    output n1454;
    input n3429;
    output Length1_N_622;
    input n3434;
    output A_0__N_542;
    input BA_c;
    input n3413;
    output AutoloadEN;
    output \REUA[19] ;
    input n17;
    input n18;
    input n3414;
    output Execute;
    input n3422;
    input n3430;
    input n3432;
    output n3636;
    input REUAOut_15__N_53;
    input n3424;
    input REUAOut_7__N_98;
    output n3418;
    input CAOut_15__N_141;
    output n3423;
    output n3629;
    input n3445;
    input n3411;
    input n3408;
    input n3410;
    output n3399;
    output n418;
    output n3417;
    output n3582;
    input DMA;
    output n3394;
    input CAOut_7__N_186;
    input n3390;
    output n3490;
    output n3371;
    input n3431;
    input n2949;
    output n3366;
    
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(116[11:18])
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[12:18])
    
    wire n3484, n3420, n29, PHI2_N_548_enable_84, n2748;
    wire [7:0]Length_15__N_300;
    wire [7:0]n307;
    wire [7:0]n358;
    
    wire n3488, n3486, n3489;
    wire [7:0]Length_7__N_347;
    
    wire n2749, Length_11__N_324;
    wire [18:0]REUAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(48[12:23])
    
    wire PHI2_N_548_enable_73, n3100;
    wire [7:0]n306;
    
    wire n3440;
    wire [7:0]CAOut_15__N_138;
    
    wire n1062;
    wire [15:0]LengthWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[12:25])
    
    wire PHI2_N_548_enable_18, n1137, n1106, n1101, n1065;
    wire [7:0]n370;
    
    wire n3392;
    wire [7:0]n305;
    
    wire IntPending, n3362, n3363, n1067, n20, n3096, n3084, Length_12__N_319, 
        n1069, n1071, n1073, n3089;
    wire [7:0]n304;
    
    wire n3580, n3319, n3581, PHI2_N_548_enable_76;
    wire [23:0]REUA_c;   // //mac/icloud/repos/gw4302/cpld/reu.v(38[14:18])
    
    wire PHI2_N_548_enable_74, n3395, n2747, n3579, n2746, n2745, 
        n3578, VerifyErrMask;
    wire [15:0]CAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(43[12:21])
    
    wire PHI2_N_548_enable_75, n3576;
    wire [1:0]IncMode;   // //mac/icloud/repos/gw4302/cpld/reg.v(63[11:18])
    
    wire n3577;
    wire [2:0]n309;
    
    wire Fault;
    wire [7:0]n346;
    
    wire n3398;
    wire [7:0]REUAOut_15__N_50;
    
    wire PHI2_N_548_enable_41, n3446, n3364, n3368, n3369, n3396, 
        n3397, IncREUAg, n3624, n17_c, n15, n11, n12, CAOut_15__N_139, 
        n3623;
    wire [3:2]DF01Reserved32;   // //mac/icloud/repos/gw4302/cpld/reg.v(35[11:25])
    
    wire n3626, PHI2_N_548_enable_79, Length_0__N_380, n3627;
    wire [7:0]n822;
    
    wire Length_1__N_375, Length_15__N_297, REUAOut_18__N_34;
    wire [2:0]n303;
    
    wire n3630, n3631, Length_13__N_314, Length_14__N_309, n3633, 
        Length_8__N_339, Length_9__N_334, n3634, Length_10__N_329;
    wire [7:0]CAOut_7__N_185;
    
    wire Length_2__N_370, Length_3__N_365, Length_4__N_360, Length_5__N_355;
    wire [7:0]n823;
    
    wire Length_6__N_350, n23, n15_adj_653, n22, n16, n19, n6_adj_654;
    wire [7:0]REUAOut_7__N_97;
    
    wire n18_c, n3092, n3407, Length_7__N_344, DF01Reserved6, n834, 
        n3635, n3632, n3156, n2743, n2742, n2741, n2740, REUAOut_15__N_51, 
        n2735, n2734, n2733, n2732, n2727, n2726, n2725, n2724, 
        n3628, n3625, n3367;
    wire [7:0]n330;
    
    wire IncCAg, n3487, n3370, n3485, n3393, n3391, n2719, n2718, 
        n2717, n2716, n3365, n9, n8_adj_658, n6_adj_659, n9_adj_660, 
        n8_adj_661, n7, n6_adj_662, n2752, n2751, n2750;
    
    LUT4 Length_14__bdd_3_lut_3181 (.A(Length[14]), .B(A_out_0), .C(EndOfBlockMask), 
         .Z(n3484)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Length_14__bdd_3_lut_3181.init = 16'he2e2;
    LUT4 i2_3_lut_4_lut (.A(n3409), .B(n3420), .C(n29), .D(n3665), .Z(PHI2_N_548_enable_84)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    CCU2D Length_15__I_0_839_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2748), .S0(Length_15__N_300[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_839_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_9.INJECT1_1 = "NO";
    FD1S3IX CA_7__592 (.D(n307[7]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_7__592.GSR = "ENABLED";
    LUT4 mux_176_i3_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n358[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_176_i3_3_lut.init = 16'hcaca;
    LUT4 n3488_bdd_3_lut (.A(n3488), .B(n3486), .C(A_out_2), .Z(n3489)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3488_bdd_3_lut.init = 16'hcaca;
    LUT4 i2733_2_lut_rep_83 (.A(A_out_2), .B(A_out_4), .Z(n3438)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2733_2_lut_rep_83.init = 16'heeee;
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2749), .S1(Length_7__N_347[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    FD1P3JX Length_11__687 (.D(Length_11__N_324), .SP(PHI2_N_548_enable_84), 
            .PD(RegReset), .CK(PHI2_N_548), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_11__687.GSR = "ENABLED";
    FD1P3IX REUAWritten_1__638 (.D(D_out_1), .SP(PHI2_N_548_enable_73), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_1__638.GSR = "ENABLED";
    LUT4 i2862_2_lut_3_lut (.A(A_out_2), .B(A_out_4), .C(nWE_c), .Z(n3100)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2862_2_lut_3_lut.init = 16'hfefe;
    FD1P3IX REUAWritten_2__637 (.D(D_out_2), .SP(PHI2_N_548_enable_73), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_2__637.GSR = "ENABLED";
    FD1P3IX REUAWritten_3__636 (.D(D_out_3), .SP(PHI2_N_548_enable_73), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_3__636.GSR = "ENABLED";
    FD1S3IX CA_6__593 (.D(n307[6]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_6__593.GSR = "ENABLED";
    FD1S3IX CA_5__594 (.D(n307[5]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_5__594.GSR = "ENABLED";
    FD1S3IX CA_4__595 (.D(n307[4]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_4__595.GSR = "ENABLED";
    FD1S3IX CA_3__596 (.D(n307[3]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_3__596.GSR = "ENABLED";
    FD1S3IX CA_2__597 (.D(n307[2]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_2__597.GSR = "ENABLED";
    FD1S3IX CA_1__598 (.D(n307[1]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_1__598.GSR = "ENABLED";
    FD1S3IX CA_0__599 (.D(n307[0]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_0__599.GSR = "ENABLED";
    FD1S3IX CA_15__608 (.D(n306[7]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_15__608.GSR = "ENABLED";
    LUT4 i1737_2_lut_4_lut (.A(XferType[0]), .B(D_out_0), .C(n3419), .D(\XferType[1] ), 
         .Z(XferVerify)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[27:62])
    defparam i1737_2_lut_4_lut.init = 16'hca00;
    LUT4 XferType_1__I_0_147_i3_2_lut_rep_57_4_lut (.A(XferType[0]), .B(D_out_0), 
         .C(n3419), .D(\XferType[1] ), .Z(n3412)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[27:62])
    defparam XferType_1__I_0_147_i3_2_lut_rep_57_4_lut.init = 16'hcaff;
    LUT4 i1_2_lut_rep_85 (.A(A_out_3), .B(A_out_4), .Z(n3440)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1_2_lut_rep_85.init = 16'heeee;
    LUT4 mux_153_i1_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_0), .D(CAOut_15__N_138[0]), 
         .Z(n306[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_78_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3433)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1_2_lut_rep_78_3_lut.init = 16'hfefe;
    FD1P3IX REUAWritten_4__635 (.D(D_out_4), .SP(PHI2_N_548_enable_73), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_4__635.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_80_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3435)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1_2_lut_rep_80_3_lut.init = 16'hefef;
    FD1P3IX EndOfBlock_584 (.D(n3664), .SP(PHI2_N_548_enable_6), .CD(n1062), 
            .CK(PHI2_N_548), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam EndOfBlock_584.GSR = "ENABLED";
    FD1P3AX LengthWritten_8__698 (.D(n1137), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_8__698.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__697 (.D(n1106), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_9__697.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__696 (.D(n1101), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_10__696.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__695 (.D(n1065), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_11__695.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__634 (.D(D_out_5), .SP(PHI2_N_548_enable_73), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_5__634.GSR = "ENABLED";
    FD1S3IX CA_14__609 (.D(n306[6]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_14__609.GSR = "ENABLED";
    LUT4 mux_180_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n370[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_180_i1_3_lut.init = 16'hcaca;
    LUT4 n333_bdd_3_lut (.A(A_out_0), .B(CA[13]), .C(CA[5]), .Z(n3392)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n333_bdd_3_lut.init = 16'hd8d8;
    FD1S3IX CA_13__610 (.D(n306[5]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_13__610.GSR = "ENABLED";
    FD1S3IX CA_12__611 (.D(n306[4]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_12__611.GSR = "ENABLED";
    FD1S3IX CA_11__612 (.D(n306[3]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_11__612.GSR = "ENABLED";
    FD1S3IX CA_10__613 (.D(n306[2]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_10__613.GSR = "ENABLED";
    FD1S3IX CA_9__614 (.D(n306[1]), .CK(PHI2_N_548), .CD(n3666), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_9__614.GSR = "ENABLED";
    FD1S3IX CA_8__615 (.D(n306[0]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_8__615.GSR = "ENABLED";
    FD1S3IX REUA_7__624 (.D(n305[7]), .CK(PHI2_N_548), .CD(n3666), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_7__624.GSR = "ENABLED";
    FD1P3IX IntPending_583 (.D(n3664), .SP(IntPending_N_448), .CD(n1062), 
            .CK(PHI2_N_548), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam IntPending_583.GSR = "ENABLED";
    LUT4 mux_153_i2_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_1), .D(CAOut_15__N_138[1]), 
         .Z(n306[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i2_3_lut_4_lut.init = 16'hfb40;
    PFUMX i3050 (.BLUT(n370[1]), .ALUT(n3362), .C0(A_out_3), .Z(n3363));
    FD1P3IX REUAWritten_6__633 (.D(D_out_6), .SP(PHI2_N_548_enable_73), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_6__633.GSR = "ENABLED";
    LUT4 mux_153_i8_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_7), .D(CAOut_15__N_138[7]), 
         .Z(n306[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_153_i7_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_6), .D(CAOut_15__N_138[6]), 
         .Z(n306[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i7_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX FF00DecodeEN_589 (.D(n3087), .SP(PHI2_N_548_enable_85), .CK(PHI2_N_548), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam FF00DecodeEN_589.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__694 (.D(n1067), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_12__694.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(Length[6]), .B(n20), .C(n3096), .D(\Length[5] ), 
         .Z(n3084)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i10_4_lut.init = 16'h0004;
    FD1P3JX Length_12__686 (.D(Length_12__N_319), .SP(PHI2_N_548_enable_84), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_12__686.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__693 (.D(n1069), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_13__693.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__692 (.D(n1071), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_14__692.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__691 (.D(n1073), .SP(PHI2_N_548_enable_18), 
            .CK(PHI2_N_548), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_15__691.GSR = "ENABLED";
    LUT4 i4_4_lut_4_lut (.A(nIO2_c), .B(n3100), .C(A_out_3), .D(n6), 
         .Z(n3089)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i4_4_lut_4_lut.init = 16'h0010;
    LUT4 mux_153_i6_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_5), .D(CAOut_15__N_138[5]), 
         .Z(n306[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i6_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_6__625 (.D(n305[6]), .CK(PHI2_N_548), .CD(n3666), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_6__625.GSR = "ENABLED";
    FD1S3IX REUA_5__626 (.D(n305[5]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_5__626.GSR = "ENABLED";
    FD1S3IX REUA_4__627 (.D(n305[4]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_4__627.GSR = "ENABLED";
    FD1S3IX REUA_3__628 (.D(n305[3]), .CK(PHI2_N_548), .CD(n3666), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_3__628.GSR = "ENABLED";
    FD1S3IX REUA_2__629 (.D(n305[2]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_2__629.GSR = "ENABLED";
    FD1S3IX REUA_1__630 (.D(n305[1]), .CK(PHI2_N_548), .CD(n3666), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_1__630.GSR = "ENABLED";
    FD1S3IX REUA_0__631 (.D(n305[0]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_0__631.GSR = "ENABLED";
    FD1S3IX REUA_15__640 (.D(n304[7]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_15__640.GSR = "ENABLED";
    LUT4 n3580_bdd_3_lut (.A(n3580), .B(n3319), .C(A_out_2), .Z(n3581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3580_bdd_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_0__682 (.D(n1137), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_0__682.GSR = "ENABLED";
    FD1P3AX LengthWritten_1__681 (.D(n1106), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_1__681.GSR = "ENABLED";
    FD1P3IX REUA_20__659 (.D(D_out_4), .SP(PHI2_N_548_enable_74), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(REUA_c[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_20__659.GSR = "ENABLED";
    FD1P3IX REUA_21__658 (.D(D_out_5), .SP(PHI2_N_548_enable_74), .CD(n3666), 
            .CK(PHI2_N_548), .Q(\REUA[21] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_21__658.GSR = "ENABLED";
    LUT4 mux_153_i5_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_4), .D(CAOut_15__N_138[4]), 
         .Z(n306[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i5_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUA_22__657 (.D(D_out_6), .SP(PHI2_N_548_enable_74), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(\REUA[22] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_22__657.GSR = "ENABLED";
    FD1P3IX REUA_23__656 (.D(D_out_7), .SP(PHI2_N_548_enable_74), .CD(n3666), 
            .CK(PHI2_N_548), .Q(\REUA[23] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_23__656.GSR = "ENABLED";
    FD1S3IX REUA_14__641 (.D(n304[6]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(\REUA[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_14__641.GSR = "ENABLED";
    LUT4 mux_153_i4_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_3), .D(CAOut_15__N_138[3]), 
         .Z(n306[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 n378_bdd_3_lut_3100 (.A(Length[8]), .B(A_out_1), .C(A_out_0), 
         .Z(n3395)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n378_bdd_3_lut_3100.init = 16'hfefe;
    FD1S3IX REUA_13__642 (.D(n304[5]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(\REUA[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_13__642.GSR = "ENABLED";
    FD1S3IX REUA_12__643 (.D(n304[4]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(\REUA[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_12__643.GSR = "ENABLED";
    FD1S3IX REUA_11__644 (.D(n304[3]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(\REUA[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_11__644.GSR = "ENABLED";
    FD1S3IX REUA_10__645 (.D(n304[2]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_10__645.GSR = "ENABLED";
    FD1S3IX REUA_9__646 (.D(n304[1]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(\REUA[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_9__646.GSR = "ENABLED";
    FD1S3IX REUA_8__647 (.D(n304[0]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(\REUA[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_8__647.GSR = "ENABLED";
    FD1P3IX IntEnable_699 (.D(D_out_7), .SP(PHI2_N_548_enable_27), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam IntEnable_699.GSR = "ENABLED";
    LUT4 mux_153_i3_3_lut_4_lut (.A(n3433), .B(n3426), .C(D_out_2), .D(CAOut_15__N_138[2]), 
         .Z(n306[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_153_i3_3_lut_4_lut.init = 16'hfb40;
    CCU2D Length_15__I_0_839_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2747), .COUT(n2748), .S0(Length_15__N_300[5]), 
          .S1(Length_15__N_300[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_7.INJECT1_1 = "NO";
    LUT4 IntPending_bdd_3_lut_3166 (.A(IntPending), .B(ExecuteEN), .C(A_out_0), 
         .Z(n3579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam IntPending_bdd_3_lut_3166.init = 16'hcaca;
    CCU2D Length_15__I_0_839_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2746), .COUT(n2747), .S0(Length_15__N_300[3]), 
          .S1(Length_15__N_300[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2745), .COUT(n2746), .S0(Length_15__N_300[1]), 
          .S1(Length_15__N_300[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_3.INJECT1_1 = "NO";
    LUT4 IntPending_bdd_3_lut_3155 (.A(CA[7]), .B(A_out_0), .C(CA[15]), 
         .Z(n3578)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam IntPending_bdd_3_lut_3155.init = 16'he2e2;
    FD1P3IX EndOfBlockMask_700 (.D(D_out_6), .SP(PHI2_N_548_enable_27), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam EndOfBlockMask_700.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_701 (.D(D_out_5), .SP(PHI2_N_548_enable_27), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam VerifyErrMask_701.GSR = "ENABLED";
    FD1P3AX CAWritten_1__606 (.D(D_out_1), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_1__606.GSR = "ENABLED";
    LUT4 n3576_bdd_3_lut (.A(n3576), .B(IncMode[1]), .C(A_out_1), .Z(n3577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3576_bdd_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_0__607 (.D(D_out_0), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_0__607.GSR = "ENABLED";
    FD1S3IX REUA_18__661 (.D(n309[2]), .CK(PHI2_N_548), .CD(n3666), .Q(\REUA[18] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_18__661.GSR = "ENABLED";
    LUT4 Fault_I_0_845_2_lut (.A(Fault), .B(VerifyErrMask), .Z(IRQOut_N_440)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(247[3:27])
    defparam Fault_I_0_845_2_lut.init = 16'h8888;
    LUT4 n366_bdd_4_lut (.A(n346[0]), .B(XferType[0]), .C(A_out_1), .D(A_out_0), 
         .Z(n3398)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n366_bdd_4_lut.init = 16'haca0;
    LUT4 mux_151_i2_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_1), .D(REUAOut_15__N_50[1]), 
         .Z(n304[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i2_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_17__662 (.D(n309[1]), .CK(PHI2_N_548), .CD(n3666), .Q(\REUA[17] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_17__662.GSR = "ENABLED";
    FD1S3IX REUA_16__663 (.D(n309[0]), .CK(PHI2_N_548), .CD(n3666), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_16__663.GSR = "ENABLED";
    FD1P3IX Fault_585 (.D(n3664), .SP(SetVerifyErr), .CD(n1062), .CK(PHI2_N_548), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam Fault_585.GSR = "ENABLED";
    FD1P3AX CAWritten_15__616 (.D(D_out_7), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_15__616.GSR = "ENABLED";
    FD1P3AX CAWritten_3__604 (.D(D_out_3), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_3__604.GSR = "ENABLED";
    FD1P3AX CAWritten_2__605 (.D(D_out_2), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_2__605.GSR = "ENABLED";
    FD1P3AX CAWritten_14__617 (.D(D_out_6), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_14__617.GSR = "ENABLED";
    FD1P3AX CAWritten_13__618 (.D(D_out_5), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_13__618.GSR = "ENABLED";
    LUT4 Length_15__bdd_3_lut_3165 (.A(Length[15]), .B(A_out_0), .C(IntEnable), 
         .Z(n3576)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Length_15__bdd_3_lut_3165.init = 16'he2e2;
    FD1P3AX CAWritten_12__619 (.D(D_out_4), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_12__619.GSR = "ENABLED";
    FD1P3AX CAWritten_11__620 (.D(D_out_3), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_11__620.GSR = "ENABLED";
    LUT4 i2964_2_lut_rep_91 (.A(A_out_3), .B(A_out_1), .Z(n3446)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2964_2_lut_rep_91.init = 16'heeee;
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_548_enable_78), .CD(n3666), 
            .CK(PHI2_N_548), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(250[8] 253[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 n365_bdd_3_lut_3085_4_lut (.A(A_out_3), .B(A_out_1), .C(n3363), 
         .D(n358[1]), .Z(n3364)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n365_bdd_3_lut_3085_4_lut.init = 16'hf1e0;
    FD1P3IX REUAWritten_8__655 (.D(D_out_0), .SP(PHI2_N_548_enable_72), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_8__655.GSR = "ENABLED";
    LUT4 mux_151_i3_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_2), .D(REUAOut_15__N_50[2]), 
         .Z(n304[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 n364_bdd_3_lut_3069_4_lut (.A(A_out_3), .B(A_out_1), .C(n3368), 
         .D(n358[2]), .Z(n3369)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n364_bdd_3_lut_3069_4_lut.init = 16'hf1e0;
    LUT4 n366_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3396), .D(n358[0]), 
         .Z(n3397)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n366_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_151_i4_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_3), .D(REUAOut_15__N_50[3]), 
         .Z(n304[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_151_i5_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_4), .D(REUAOut_15__N_50[4]), 
         .Z(n304[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 IncREUAg_I_118_2_lut (.A(IncMode[0]), .B(IncREUA), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[17:39])
    defparam IncREUAg_I_118_2_lut.init = 16'h4444;
    LUT4 REUA_3__bdd_4_lut (.A(REUA[3]), .B(A_out_1), .C(Length[11]), 
         .D(A_out_3), .Z(n3624)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam REUA_3__bdd_4_lut.init = 16'hfcee;
    LUT4 mux_151_i6_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_5), .D(REUAOut_15__N_50[5]), 
         .Z(n304[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 i9_4_lut (.A(n17_c), .B(n15), .C(n11), .D(n12), .Z(CAOut_15__N_139)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(CA[7]), .B(CA[0]), .C(CA[4]), .D(CA[3]), .Z(n17_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 mux_151_i7_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_6), .D(REUAOut_15__N_50[6]), 
         .Z(n304[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 i5_2_lut (.A(CA[2]), .B(CA[5]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 mux_151_i8_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_7), .D(REUAOut_15__N_50[7]), 
         .Z(n304[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2_2_lut (.A(CA[6]), .B(IncMode[1]), .Z(n12)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    FD1P3AX CAWritten_10__621 (.D(D_out_2), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_10__621.GSR = "ENABLED";
    LUT4 mux_151_i1_3_lut_4_lut (.A(n3435), .B(n3425), .C(D_out_0), .D(REUAOut_15__N_50[0]), 
         .Z(n304[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_151_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_9__622 (.D(D_out_1), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_9__622.GSR = "ENABLED";
    LUT4 REUA_3__bdd_4_lut_3184 (.A(A_out_1), .B(A_out_3), .C(Length[3]), 
         .D(\REUA[11] ), .Z(n3623)) /* synthesis lut_function=(A (B+(C))+!A (B+(D))) */ ;
    defparam REUA_3__bdd_4_lut_3184.init = 16'hfdec;
    FD1S3IX XferType__i0 (.D(n3416), .CK(PHI2_N_548), .CD(n3666), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3AX CAWritten_8__623 (.D(D_out_0), .SP(PHI2_N_548_enable_41), .CK(PHI2_N_548), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_8__623.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__675 (.D(n1073), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_7__675.GSR = "ENABLED";
    FD1P3IX REUAWritten_9__654 (.D(D_out_1), .SP(PHI2_N_548_enable_72), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_9__654.GSR = "ENABLED";
    LUT4 DF01Reserved32_3__bdd_3_lut (.A(DF01Reserved32[3]), .B(CA[11]), 
         .C(A_out_1), .Z(n3626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DF01Reserved32_3__bdd_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_11__652 (.D(D_out_3), .SP(PHI2_N_548_enable_72), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_11__652.GSR = "ENABLED";
    FD1P3JX Length_0__674 (.D(Length_0__N_380), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_0__674.GSR = "ENABLED";
    LUT4 DF01Reserved32_3__bdd_2_lut (.A(CA[3]), .B(A_out_1), .Z(n3627)) /* synthesis lut_function=(A (B)) */ ;
    defparam DF01Reserved32_3__bdd_2_lut.init = 16'h8888;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_548_enable_80), 
            .CD(n3666), .CK(PHI2_N_548), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_3), 
         .D(n822[3]), .Z(Length_11__N_324)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_1__673 (.D(Length_1__N_375), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_1__673.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__651 (.D(D_out_4), .SP(PHI2_N_548_enable_72), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_12__651.GSR = "ENABLED";
    LUT4 i1225_1_lut (.A(REUA_c[20]), .Z(n1454)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam i1225_1_lut.init = 16'h5555;
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_4), 
         .D(n822[4]), .Z(Length_12__N_319)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_7), 
         .D(n822[7]), .Z(Length_15__N_297)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_13__650 (.D(D_out_5), .SP(PHI2_N_548_enable_72), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_13__650.GSR = "ENABLED";
    LUT4 mux_150_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(n3409), 
         .D(REUAOut_18__N_34), .Z(n303[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_150_i1_4_lut.init = 16'hc5ca;
    LUT4 REUA_4__bdd_4_lut_3191 (.A(A_out_1), .B(A_out_3), .C(Length[4]), 
         .D(\REUA[12] ), .Z(n3630)) /* synthesis lut_function=(A (B+(C))+!A (B+(D))) */ ;
    defparam REUA_4__bdd_4_lut_3191.init = 16'hfdec;
    LUT4 i360_2_lut_3_lut_4_lut (.A(A_out_2), .B(n3440), .C(n3665), .D(n3429), 
         .Z(PHI2_N_548_enable_74)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i360_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i1809_2_lut (.A(D_out_0), .B(n3665), .Z(n1137)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1809_2_lut.init = 16'heeee;
    LUT4 REUA_4__bdd_4_lut (.A(REUA[4]), .B(A_out_1), .C(Length[12]), 
         .D(A_out_3), .Z(n3631)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam REUA_4__bdd_4_lut.init = 16'hfcee;
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_5), 
         .D(n822[5]), .Z(Length_13__N_314)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_6), 
         .D(n822[6]), .Z(Length_14__N_309)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_6__676 (.D(n1071), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_6__676.GSR = "ENABLED";
    LUT4 FF00DecodeEN_bdd_3_lut (.A(FF00DecodeEN), .B(CA[12]), .C(A_out_1), 
         .Z(n3633)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam FF00DecodeEN_bdd_3_lut.init = 16'hc5c5;
    FD1P3AX LengthWritten_5__677 (.D(n1069), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_5__677.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__666 (.D(D_out_0), .SP(PHI2_N_548_enable_74), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_16__666.GSR = "ENABLED";
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_0), .D(n822[0]), 
         .Z(Length_8__N_339)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_625_i1_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[8]), 
         .D(Length_15__N_300[0]), .Z(n822[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_1), .D(n822[1]), 
         .Z(Length_9__N_334)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 FF00DecodeEN_bdd_2_lut (.A(CA[4]), .B(A_out_1), .Z(n3634)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam FF00DecodeEN_bdd_2_lut.init = 16'hbbbb;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n8), .B(n3428), .C(D_out_2), 
         .D(n822[2]), .Z(Length_10__N_329)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_156_i3_3_lut_4_lut (.A(n3435), .B(n3429), .C(D_out_2), .D(n303[2]), 
         .Z(n309[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_156_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_156_i2_3_lut_4_lut (.A(n3435), .B(n3429), .C(D_out_1), .D(n303[1]), 
         .Z(n309[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_156_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_156_i1_3_lut_4_lut (.A(n3435), .B(n3429), .C(D_out_0), .D(n303[0]), 
         .Z(n309[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_156_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_4__678 (.D(n1067), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_4__678.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__679 (.D(n1065), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_3__679.GSR = "ENABLED";
    FD1P3AX CAWritten_7__600 (.D(D_out_7), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_7__600.GSR = "ENABLED";
    FD1P3AX CAWritten_6__601 (.D(D_out_6), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_6__601.GSR = "ENABLED";
    LUT4 A_4__I_0_831_i6_2_lut (.A(A_out_0), .B(A_out_1), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(78[2:14])
    defparam A_4__I_0_831_i6_2_lut.init = 16'heeee;
    LUT4 mux_154_i8_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_7), .D(CAOut_7__N_185[7]), 
         .Z(n307[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_15__683 (.D(Length_15__N_297), .SP(PHI2_N_548_enable_84), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_15__683.GSR = "ENABLED";
    LUT4 mux_154_i7_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_6), .D(CAOut_7__N_185[6]), 
         .Z(n307[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_154_i6_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_5), .D(CAOut_7__N_185[5]), 
         .Z(n307[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_2__672 (.D(Length_2__N_370), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_2__672.GSR = "ENABLED";
    FD1P3JX Length_3__671 (.D(Length_3__N_365), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_3__671.GSR = "ENABLED";
    LUT4 n377_bdd_3_lut_3082 (.A(Length[9]), .B(A_out_1), .C(A_out_0), 
         .Z(n3362)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n377_bdd_3_lut_3082.init = 16'hfefe;
    LUT4 mux_154_i5_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_4), .D(CAOut_7__N_185[4]), 
         .Z(n307[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_13__685 (.D(Length_13__N_314), .SP(PHI2_N_548_enable_84), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_13__685.GSR = "ENABLED";
    FD1P3JX Length_14__684 (.D(Length_14__N_309), .SP(PHI2_N_548_enable_84), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_14__684.GSR = "ENABLED";
    LUT4 mux_154_i4_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_3), .D(CAOut_7__N_185[3]), 
         .Z(n307[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_4__670 (.D(Length_4__N_360), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_4__670.GSR = "ENABLED";
    FD1P3JX Length_5__669 (.D(Length_5__N_355), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(\Length[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_5__669.GSR = "ENABLED";
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_3), 
         .D(n823[3]), .Z(Length_3__N_365)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_154_i3_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_2), .D(CAOut_7__N_185[2]), 
         .Z(n307[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_6__668 (.D(Length_6__N_350), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_6__668.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(n23), .B(n15_adj_653), .C(n22), .D(n16), .Z(Length1_N_622)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i1746_2_lut (.A(D_out_1), .B(n3665), .Z(n1106)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1746_2_lut.init = 16'heeee;
    FD1P3AX CAWritten_5__602 (.D(D_out_5), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_5__602.GSR = "ENABLED";
    CCU2D Length_15__I_0_839_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2745), .S1(Length_15__N_300[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_839_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_1.INJECT1_1 = "NO";
    LUT4 i10_4_lut_adj_163 (.A(n19), .B(Length[6]), .C(Length[0]), .D(Length[10]), 
         .Z(n23)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i10_4_lut_adj_163.init = 16'hffef;
    LUT4 i2_4_lut (.A(Length[11]), .B(Length[8]), .C(n6_adj_654), .D(Length[9]), 
         .Z(n15_adj_653)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 mux_154_i2_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_1), .D(CAOut_7__N_185[1]), 
         .Z(n307[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9_4_lut_adj_164 (.A(Length[7]), .B(Length[13]), .C(Length[3]), 
         .D(\Length[5] ), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i9_4_lut_adj_164.init = 16'hfffe;
    LUT4 i3_2_lut (.A(Length[2]), .B(Length[12]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i6_2_lut (.A(Length[1]), .B(Length[4]), .Z(n19)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_adj_165 (.A(Length[14]), .B(Length[15]), .Z(n6_adj_654)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i2_2_lut_adj_165.init = 16'heeee;
    LUT4 mux_154_i1_3_lut_4_lut (.A(n3433), .B(n3429), .C(D_out_0), .D(CAOut_7__N_185[0]), 
         .Z(n307[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_154_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_625_i6_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[13]), 
         .D(Length_15__N_300[5]), .Z(n822[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_625_i5_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[12]), 
         .D(Length_15__N_300[4]), .Z(n822[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_152_i8_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_7), .D(REUAOut_7__N_97[7]), 
         .Z(n305[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_10__653 (.D(D_out_2), .SP(PHI2_N_548_enable_72), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_10__653.GSR = "ENABLED";
    LUT4 mux_625_i2_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[9]), 
         .D(Length_15__N_300[1]), .Z(n822[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_152_i7_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_6), .D(REUAOut_7__N_97[6]), 
         .Z(n305[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_14__649 (.D(D_out_6), .SP(PHI2_N_548_enable_72), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_14__649.GSR = "ENABLED";
    LUT4 i1799_2_lut (.A(D_out_2), .B(n3665), .Z(n1101)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1799_2_lut.init = 16'heeee;
    LUT4 mux_152_i6_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_5), .D(REUAOut_7__N_97[5]), 
         .Z(n305[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i5_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_4), .D(REUAOut_7__N_97[4]), 
         .Z(n305[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i4_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_3), .D(REUAOut_7__N_97[3]), 
         .Z(n305[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9_4_lut_adj_166 (.A(XferVerify), .B(n18_c), .C(n3092), .D(n3434), 
         .Z(n20)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C)+!B))) */ ;
    defparam i9_4_lut_adj_166.init = 16'h040c;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_542)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(188[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 i1807_2_lut (.A(D_out_4), .B(n3665), .Z(n1067)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1807_2_lut.init = 16'heeee;
    LUT4 mux_152_i3_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_2), .D(REUAOut_7__N_97[2]), 
         .Z(n305[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i7_4_lut_adj_167 (.A(BA_c), .B(n3413), .C(Length[3]), .D(Length[7]), 
         .Z(n18_c)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i7_4_lut_adj_167.init = 16'h0008;
    LUT4 i2854_2_lut (.A(Length[4]), .B(Length[0]), .Z(n3092)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2854_2_lut.init = 16'heeee;
    LUT4 i2858_2_lut (.A(Length[2]), .B(Length[1]), .Z(n3096)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2858_2_lut.init = 16'heeee;
    LUT4 mux_152_i2_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_1), .D(REUAOut_7__N_97[1]), 
         .Z(n305[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i1_3_lut_4_lut (.A(n3435), .B(n3428), .C(D_out_0), .D(REUAOut_7__N_97[0]), 
         .Z(n305[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1806_2_lut (.A(D_out_5), .B(n3665), .Z(n1069)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1806_2_lut.init = 16'heeee;
    LUT4 i630_2_lut_rep_52 (.A(REUA[16]), .B(REUAOut_18__N_34), .Z(n3407)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam i630_2_lut_rep_52.init = 16'h8888;
    LUT4 n331_bdd_4_lut_3044 (.A(n358[7]), .B(Length[7]), .C(A_out_1), 
         .D(A_out_0), .Z(n3319)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam n331_bdd_4_lut_3044.init = 16'hcafa;
    LUT4 i1805_2_lut (.A(D_out_6), .B(n3665), .Z(n1071)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1805_2_lut.init = 16'heeee;
    LUT4 mux_176_i7_3_lut (.A(REUA[6]), .B(\REUA[14] ), .C(A_out_0), .Z(n358[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_176_i7_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_7__632 (.D(D_out_7), .SP(PHI2_N_548_enable_73), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_7__632.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__665 (.D(D_out_1), .SP(PHI2_N_548_enable_74), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_17__665.GSR = "ENABLED";
    FD1P3IX REUAWritten_18__664 (.D(D_out_2), .SP(PHI2_N_548_enable_74), 
            .CD(n3666), .CK(PHI2_N_548), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_18__664.GSR = "ENABLED";
    LUT4 mux_176_i6_3_lut (.A(REUA[5]), .B(\REUA[13] ), .C(A_out_0), .Z(n358[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_176_i6_3_lut.init = 16'hcaca;
    FD1P3IX AutoloadEN_588 (.D(D_out_5), .SP(PHI2_N_548_enable_80), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam AutoloadEN_588.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__648 (.D(D_out_7), .SP(PHI2_N_548_enable_72), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_15__648.GSR = "ENABLED";
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_7), 
         .D(n823[7]), .Z(Length_7__N_344)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_0__639 (.D(D_out_0), .SP(PHI2_N_548_enable_73), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_0__639.GSR = "ENABLED";
    FD1P3IX REUA_19__660 (.D(D_out_3), .SP(PHI2_N_548_enable_74), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(\REUA[19] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_19__660.GSR = "ENABLED";
    LUT4 mux_625_i3_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[10]), 
         .D(Length_15__N_300[2]), .Z(n822[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i3_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX CAWritten_4__603 (.D(D_out_4), .SP(PHI2_N_548_enable_75), .CK(PHI2_N_548), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_4__603.GSR = "ENABLED";
    FD1P3AX LengthWritten_2__680 (.D(n1101), .SP(PHI2_N_548_enable_76), 
            .CK(PHI2_N_548), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_2__680.GSR = "ENABLED";
    LUT4 i1804_2_lut (.A(D_out_7), .B(n3665), .Z(n1073)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1804_2_lut.init = 16'heeee;
    FD1P3IX DF01Reserved6_587 (.D(D_out_6), .SP(PHI2_N_548_enable_80), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved6_587.GSR = "ENABLED";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_548_enable_78), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(250[8] 253[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 i638_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_34), .C(\REUA[17] ), 
         .Z(n834)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam i638_2_lut_3_lut.init = 16'h8080;
    LUT4 Execute_I_0_4_lut (.A(n17), .B(D_out_4), .C(n18), .D(n3414), 
         .Z(Execute)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(259[2] 262[45])
    defparam Execute_I_0_4_lut.init = 16'heca0;
    LUT4 mux_176_i8_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n358[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_176_i8_3_lut.init = 16'hcaca;
    LUT4 mux_626_i6_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[5]), 
         .D(Length_7__N_347[5]), .Z(n823[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(A_out_1), .B(n3430), .C(n3665), .D(n3435), 
         .Z(PHI2_N_548_enable_76)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i867_2_lut_3_lut_4_lut (.A(A_out_1), .B(n3430), .C(n3665), .D(n3433), 
         .Z(PHI2_N_548_enable_41)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i867_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 mux_172_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n346[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_172_i3_3_lut.init = 16'hcaca;
    FD1P3JX Length_7__667 (.D(Length_7__N_344), .SP(PHI2_N_548_enable_79), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_7__667.GSR = "ENABLED";
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_6), 
         .D(n823[6]), .Z(Length_6__N_350)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_172_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n346[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_172_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_168 (.A(n3432), .B(n6), .C(n3665), .D(n8), 
         .Z(PHI2_N_548_enable_18)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_168.init = 16'hf0f1;
    LUT4 mux_626_i1_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[0]), 
         .D(Length_7__N_347[0]), .Z(n823[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i1_3_lut_4_lut.init = 16'hf4b0;
    L6MUX21 i3196 (.D0(n3635), .D1(n3632), .SD(n3156), .Z(n3636));
    LUT4 i288_2_lut_3_lut_4_lut (.A(n3432), .B(n6), .C(n3665), .D(n3435), 
         .Z(PHI2_N_548_enable_73)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i288_2_lut_3_lut_4_lut.init = 16'hf0f1;
    PFUMX i3194 (.BLUT(n3634), .ALUT(n3633), .C0(A_out_0), .Z(n3635));
    PFUMX i3192 (.BLUT(n3631), .ALUT(n3630), .C0(A_out_0), .Z(n3632));
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_53), .C0(REUAWritten[14]), 
          .D0(\REUA[14] ), .A1(GND_net), .B1(REUAOut_15__N_53), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n2743), .S0(REUAOut_15__N_50[6]), .S1(REUAOut_15__N_50[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_53), .C0(REUAWritten[12]), 
          .D0(\REUA[12] ), .A1(GND_net), .B1(REUAOut_15__N_53), .C1(REUAWritten[13]), 
          .D1(\REUA[13] ), .CIN(n2742), .COUT(n2743), .S0(REUAOut_15__N_50[4]), 
          .S1(REUAOut_15__N_50[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_53), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(REUAOut_15__N_53), .C1(REUAWritten[11]), 
          .D1(\REUA[11] ), .CIN(n2741), .COUT(n2742), .S0(REUAOut_15__N_50[2]), 
          .S1(REUAOut_15__N_50[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_51), .B0(REUAOut_15__N_53), 
          .C0(REUAWritten[8]), .D0(\REUA[8] ), .A1(GND_net), .B1(REUAOut_15__N_53), 
          .C1(REUAWritten[9]), .D1(\REUA[9] ), .CIN(n2740), .COUT(n2741), 
          .S0(REUAOut_15__N_50[0]), .S1(REUAOut_15__N_50[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3409), .B1(n3424), .C1(GND_net), .D1(GND_net), 
          .COUT(n2740));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_626_i2_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[1]), 
         .D(Length_7__N_347[1]), .Z(n823[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i2_3_lut_4_lut.init = 16'hf4b0;
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_98), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n2735), .S0(REUAOut_7__N_97[6]), .S1(REUAOut_7__N_97[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_98), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n2734), .COUT(n2735), .S0(REUAOut_7__N_97[4]), 
          .S1(REUAOut_7__N_97[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_98), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n2733), .COUT(n2734), .S0(REUAOut_7__N_97[2]), 
          .S1(REUAOut_7__N_97[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_98), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n2732), .COUT(n2733), .S0(REUAOut_7__N_97[0]), 
          .S1(REUAOut_7__N_97[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3409), .B1(n3418), .C1(GND_net), .D1(GND_net), 
          .COUT(n2732));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_141), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n2727), .S0(CAOut_15__N_138[6]), .S1(CAOut_15__N_138[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_141), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n2726), .COUT(n2727), .S0(CAOut_15__N_138[4]), 
          .S1(CAOut_15__N_138[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_141), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n2725), .COUT(n2726), .S0(CAOut_15__N_138[2]), 
          .S1(CAOut_15__N_138[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_139), .B0(CAOut_15__N_141), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n2724), .COUT(n2725), .S0(CAOut_15__N_138[0]), 
          .S1(CAOut_15__N_138[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3409), .B1(n3423), .C1(GND_net), .D1(GND_net), .COUT(n2724));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    L6MUX21 i3189 (.D0(n3628), .D1(n3625), .SD(n3156), .Z(n3629));
    LUT4 mux_172_i7_3_lut (.A(CA[6]), .B(CA[14]), .C(A_out_0), .Z(n346[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_172_i7_3_lut.init = 16'hcaca;
    PFUMX i3187 (.BLUT(n3627), .ALUT(n3626), .C0(A_out_0), .Z(n3628));
    FD1S3IX XferType__i1 (.D(\XferType[1] ), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i1.GSR = "ENABLED";
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_548_enable_80), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_5), 
         .D(n823[5]), .Z(Length_5__N_355)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    LUT4 n348_bdd_4_lut_3108 (.A(n358[6]), .B(A_out_1), .C(Length[6]), 
         .D(A_out_0), .Z(n3486)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+!(D)))) */ ;
    defparam n348_bdd_4_lut_3108.init = 16'he2ee;
    LUT4 i1_2_lut_4_lut (.A(n3445), .B(\XferType[1] ), .C(n3411), .D(CA[1]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'ha200;
    LUT4 mux_626_i3_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[2]), 
         .D(Length_7__N_347[2]), .Z(n823[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i3_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i3185 (.BLUT(n3624), .ALUT(n3623), .C0(A_out_0), .Z(n3625));
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_4), 
         .D(n823[4]), .Z(Length_4__N_360)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    LUT4 n376_bdd_3_lut_3066 (.A(Length[10]), .B(A_out_1), .C(A_out_0), 
         .Z(n3367)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n376_bdd_3_lut_3066.init = 16'hfefe;
    LUT4 i1850_2_lut_rep_68_4_lut (.A(A_out_0), .B(A_out_1), .C(n3432), 
         .D(n3433), .Z(n3423)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1850_2_lut_rep_68_4_lut.init = 16'hfffb;
    LUT4 mux_164_i6_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n330[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_164_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_169 (.A(n3445), .B(\XferType[1] ), .C(n3411), 
         .D(IncMode[1]), .Z(IncCAg)) /* synthesis lut_function=(!((B ((D)+!C)+!B (D))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_169.init = 16'h00a2;
    LUT4 n348_bdd_3_lut_3109 (.A(EndOfBlock), .B(A_out_0), .C(DF01Reserved6), 
         .Z(n3487)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n348_bdd_3_lut_3109.init = 16'he2e2;
    LUT4 i1_2_lut_rep_63_3_lut_4_lut (.A(A_out_0), .B(n3432), .C(n3435), 
         .D(A_out_1), .Z(n3418)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_63_3_lut_4_lut.init = 16'h0002;
    LUT4 i3_4_lut (.A(Length1_N_622), .B(PHI2_N_548_enable_76), .C(n3408), 
         .D(n3410), .Z(PHI2_N_548_enable_79)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfefc;
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_2), 
         .D(n823[2]), .Z(Length_2__N_370)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    LUT4 n364_bdd_4_lut (.A(n346[2]), .B(DF01Reserved32[2]), .C(A_out_1), 
         .D(A_out_0), .Z(n3370)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n364_bdd_4_lut.init = 16'haca0;
    LUT4 i2965_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3156)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i2965_2_lut.init = 16'heeee;
    LUT4 n3484_bdd_3_lut (.A(n3484), .B(IncMode[0]), .C(A_out_1), .Z(n3485)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3484_bdd_3_lut.init = 16'hcaca;
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_1), 
         .D(n823[1]), .Z(Length_1__N_375)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_172_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n346[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_172_i1_3_lut.init = 16'hcaca;
    PFUMX i3078 (.BLUT(n3398), .ALUT(n3397), .C0(n3156), .Z(n3399));
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(A_out_0), .B(n3432), .C(n3433), 
         .D(A_out_1), .Z(n3419)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'h0002;
    LUT4 mux_626_i4_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[3]), 
         .D(Length_7__N_347[3]), .Z(n823[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1779_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n418)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1779_4_lut.init = 16'hfcee;
    LUT4 i1_2_lut_rep_62_3_lut_4_lut (.A(A_out_0), .B(n3432), .C(n3433), 
         .D(A_out_1), .Z(n3417)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_62_3_lut_4_lut.init = 16'h0200;
    PFUMX i3158 (.BLUT(n3581), .ALUT(n3577), .C0(A_out_3), .Z(n3582));
    PFUMX i36 (.BLUT(n3089), .ALUT(n3084), .C0(DMA), .Z(n29));
    LUT4 i1808_2_lut (.A(D_out_3), .B(n3665), .Z(n1065)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1808_2_lut.init = 16'heeee;
    PFUMX i3076 (.BLUT(n370[0]), .ALUT(n3395), .C0(A_out_3), .Z(n3396));
    LUT4 mux_625_i8_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[15]), 
         .D(Length_15__N_300[7]), .Z(n822[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_626_i5_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[4]), 
         .D(Length_7__N_347[4]), .Z(n823[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_176_i2_3_lut (.A(REUA[1]), .B(\REUA[9] ), .C(A_out_0), .Z(n358[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_176_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(A_out_0), .B(n3432), .C(n3435), 
         .D(A_out_1), .Z(n3420)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'h0200;
    PFUMX i3156 (.BLUT(n3579), .ALUT(n3578), .C0(A_out_1), .Z(n3580));
    LUT4 mux_625_i4_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[11]), 
         .D(Length_15__N_300[3]), .Z(n822[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i4_3_lut_4_lut.init = 16'hf1e0;
    FD1P3JX Length_8__690 (.D(Length_8__N_339), .SP(PHI2_N_548_enable_84), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_8__690.GSR = "ENABLED";
    L6MUX21 i3074 (.D0(n3393), .D1(n3391), .SD(n3156), .Z(n3394));
    LUT4 mux_180_i2_3_lut (.A(\REUA[17] ), .B(Length[1]), .C(A_out_0), 
         .Z(n370[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_180_i2_3_lut.init = 16'hcaca;
    LUT4 mux_626_i7_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[6]), 
         .D(Length_7__N_347[6]), .Z(n823[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i7_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i3072 (.BLUT(n330[5]), .ALUT(n3392), .C0(A_out_1), .Z(n3393));
    LUT4 mux_625_i7_3_lut_4_lut (.A(n3409), .B(n3420), .C(LengthWritten[14]), 
         .D(Length_15__N_300[6]), .Z(n822[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_180_i3_3_lut (.A(\REUA[18] ), .B(Length[2]), .C(A_out_0), 
         .Z(n370[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_180_i3_3_lut.init = 16'hcaca;
    LUT4 mux_626_i8_3_lut_4_lut (.A(n3409), .B(n3422), .C(LengthWritten[7]), 
         .D(Length_7__N_347[7]), .Z(n823[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_626_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_150_i3_4_lut (.A(\REUA[18] ), .B(REUAWritten[18]), .C(n3409), 
         .D(n834), .Z(n303[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_150_i3_4_lut.init = 16'hc5ca;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_186), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n2719), .S0(CAOut_7__N_185[6]), .S1(CAOut_7__N_185[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_186), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n2718), .COUT(n2719), .S0(CAOut_7__N_185[4]), 
          .S1(CAOut_7__N_185[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_186), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n2717), .COUT(n2718), .S0(CAOut_7__N_185[2]), 
          .S1(CAOut_7__N_185[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_186), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n2716), .COUT(n2717), .S0(CAOut_7__N_185[0]), 
          .S1(CAOut_7__N_185[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3409), .B1(n3417), .C1(GND_net), .D1(GND_net), .COUT(n2716));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 n365_bdd_4_lut (.A(n346[1]), .B(XferType[1]), .C(A_out_1), .D(A_out_0), 
         .Z(n3365)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n365_bdd_4_lut.init = 16'haca0;
    PFUMX i3070 (.BLUT(n358[5]), .ALUT(n3390), .C0(n3446), .Z(n3391));
    FD1P3JX Length_9__689 (.D(Length_9__N_334), .SP(PHI2_N_548_enable_84), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_9__689.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(n9), .B(REUA[10]), .C(n8_adj_658), .D(REUAOut_15__N_51), 
         .Z(REUAOut_18__N_34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i3_2_lut_adj_170 (.A(\REUA[9] ), .B(\REUA[11] ), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut_adj_170.init = 16'h8888;
    LUT4 i2_4_lut_adj_171 (.A(REUA[15]), .B(\REUA[14] ), .C(n6_adj_659), 
         .D(\REUA[8] ), .Z(n8_adj_658)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_171.init = 16'h8000;
    LUT4 i2_2_lut_adj_172 (.A(\REUA[12] ), .B(\REUA[13] ), .Z(n6_adj_659)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_172.init = 16'h8888;
    LUT4 i5_4_lut_adj_173 (.A(n9_adj_660), .B(REUA[6]), .C(n8_adj_661), 
         .D(IncREUA), .Z(REUAOut_15__N_51)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_173.init = 16'h8000;
    FD1P3JX Length_10__688 (.D(Length_10__N_329), .SP(PHI2_N_548_enable_84), 
            .PD(n3666), .CK(PHI2_N_548), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_10__688.GSR = "ENABLED";
    LUT4 i3_2_lut_adj_174 (.A(REUA[7]), .B(REUA[1]), .Z(n9_adj_660)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut_adj_174.init = 16'h8888;
    LUT4 i2_4_lut_adj_175 (.A(n7), .B(IncMode[0]), .C(REUA[0]), .D(n6_adj_662), 
         .Z(n8_adj_661)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_4_lut_adj_175.init = 16'h2000;
    PFUMX i3106 (.BLUT(n3489), .ALUT(n3485), .C0(A_out_3), .Z(n3490));
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2752), .S0(Length_7__N_347[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(\Length[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2751), .COUT(n2752), .S0(Length_7__N_347[5]), 
          .S1(Length_7__N_347[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    PFUMX i3104 (.BLUT(n3487), .ALUT(n346[6]), .C0(A_out_1), .Z(n3488));
    LUT4 i2_2_lut_adj_176 (.A(REUA[2]), .B(REUA[3]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_176.init = 16'h8888;
    LUT4 i1_2_lut (.A(REUA[5]), .B(REUA[4]), .Z(n6_adj_662)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i3056 (.BLUT(n3370), .ALUT(n3369), .C0(n3156), .Z(n3371));
    LUT4 i2_3_lut (.A(A_out_2), .B(A_out_3), .C(A_out_4), .Z(n8)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i2_3_lut.init = 16'hfbfb;
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n3435), .B(n3426), .C(D_out_0), 
         .D(n823[0]), .Z(Length_0__N_380)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_150_i2_4_lut (.A(\REUA[17] ), .B(REUAWritten[17]), .C(n3409), 
         .D(n3407), .Z(n303[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_150_i2_4_lut.init = 16'hc5ca;
    LUT4 i835_4_lut (.A(n3431), .B(n3665), .C(n6), .D(n3433), .Z(n1062)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam i835_4_lut.init = 16'hccce;
    LUT4 mux_176_i1_3_lut (.A(REUA[0]), .B(\REUA[8] ), .C(A_out_0), .Z(n358[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_176_i1_3_lut.init = 16'hcaca;
    PFUMX i3054 (.BLUT(n370[2]), .ALUT(n3367), .C0(A_out_3), .Z(n3368));
    FD1P3AX ExecuteEN_586 (.D(n2949), .SP(PHI2_N_548_enable_85), .CK(PHI2_N_548), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam ExecuteEN_586.GSR = "ENABLED";
    LUT4 i2986_2_lut_3_lut_4_lut (.A(A_out_2), .B(n3440), .C(n3665), .D(n3429), 
         .Z(PHI2_N_548_enable_75)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i2986_2_lut_3_lut_4_lut.init = 16'h0001;
    PFUMX i3052 (.BLUT(n3365), .ALUT(n3364), .C0(n3156), .Z(n3366));
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2750), .COUT(n2751), .S0(Length_7__N_347[3]), 
          .S1(Length_7__N_347[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2749), .COUT(n2750), .S0(Length_7__N_347[1]), 
          .S1(Length_7__N_347[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (DMA, nIO2_c, nWE_c, n3431, nWEDMA_c, DOE, n3432, 
            n6, n3428, A_out_0, n3430, PHI2_c, BA_c, nDOE_N_640, 
            n3445, n3412, XferEnd_N_579, n1452, DDIR_c, IntEnable, 
            EndOfBlock, IRQOut_N_440, EndOfBlockMask, IRQ, PHI2_N_548_enable_81, 
            nRWOE_c, n3411, \XferType[1] , n3410, A_out_1, n3425, 
            n3429, n3435, n3424, n8, n3422, n3426) /* synthesis syn_module_defined=1 */ ;
    input DMA;
    input nIO2_c;
    input nWE_c;
    output n3431;
    input nWEDMA_c;
    output DOE;
    output n3432;
    input n6;
    output n3428;
    input A_out_0;
    output n3430;
    input PHI2_c;
    input BA_c;
    output nDOE_N_640;
    output n3445;
    input n3412;
    input XferEnd_N_579;
    output n1452;
    output DDIR_c;
    input IntEnable;
    input EndOfBlock;
    input IRQOut_N_440;
    input EndOfBlockMask;
    output IRQ;
    output PHI2_N_548_enable_81;
    output nRWOE_c;
    input n3411;
    input \XferType[1] ;
    output n3410;
    input A_out_1;
    output n3425;
    output n3429;
    input n3435;
    output n3424;
    input n8;
    output n3422;
    output n3426;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n3439;
    
    LUT4 i1775_2_lut_rep_84 (.A(DMA), .B(nIO2_c), .Z(n3439)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1775_2_lut_rep_84.init = 16'heeee;
    LUT4 RegCS_I_0_30_2_lut_rep_76_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n3431)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_30_2_lut_rep_76_3_lut.init = 16'h1010;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 i1777_2_lut_rep_77_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3432)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1777_2_lut_rep_77_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(n6), .D(nWE_c), 
         .Z(n3428)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(A_out_0), 
         .D(nWE_c), .Z(n3430)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'h0010;
    LUT4 i2978_4_lut (.A(PHI2_c), .B(nIO2_c), .C(BA_c), .D(DMA), .Z(nDOE_N_640)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[15:44])
    defparam i2978_4_lut.init = 16'h5fdd;
    LUT4 AOE_I_0_2_lut_rep_90 (.A(DMA), .B(BA_c), .Z(n3445)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(34[17:28])
    defparam AOE_I_0_2_lut_rep_90.init = 16'h8888;
    LUT4 i1223_2_lut_3_lut_4_lut_4_lut_4_lut (.A(DMA), .B(BA_c), .C(n3412), 
         .D(XferEnd_N_579), .Z(n1452)) /* synthesis lut_function=((B (C (D))+!B (D))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i1223_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hf755;
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(37[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 i2981_4_lut (.A(IntEnable), .B(EndOfBlock), .C(IRQOut_N_440), 
         .D(EndOfBlockMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(42[15:19])
    defparam i2981_4_lut.init = 16'h575f;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(DMA), .B(BA_c), .C(n3412), 
         .D(XferEnd_N_579), .Z(PHI2_N_548_enable_81)) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hff5d;
    LUT4 nRWOE_I_0_1_lut_2_lut (.A(DMA), .B(BA_c), .Z(nRWOE_c)) /* synthesis lut_function=(!(A (B))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(34[17:28])
    defparam nRWOE_I_0_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_3_lut_rep_55_4_lut (.A(DMA), .B(BA_c), .C(n3411), .D(\XferType[1] ), 
         .Z(n3410)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i1_3_lut_rep_55_4_lut.init = 16'h8088;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(n3439), .B(nWE_c), .C(A_out_1), 
         .D(A_out_0), .Z(n3425)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_rep_74_4_lut (.A(n3439), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3429)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_74_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_69_3_lut_4_lut (.A(n3439), .B(nWE_c), .C(n3435), 
         .D(n6), .Z(n3424)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_69_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_67_3_lut_4_lut (.A(n3439), .B(nWE_c), .C(n8), .D(n6), 
         .Z(n3422)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_67_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_71_3_lut_4_lut (.A(n3439), .B(nWE_c), .C(A_out_1), 
         .D(A_out_0), .Z(n3426)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_71_3_lut_4_lut.init = 16'h1000;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DMASeq
//

module DMASeq (n3416, \XferType[1] , n3413, DMA, XferEnd_N_579, AutoloadEN, 
            n3409, n3665, n3442, BA_c, PHI2_c, nAOE_N_633, Execute, 
            n3434, n3445, Length1_N_622, SetVerifyErr, IntPending_N_448, 
            PHI2_N_548_enable_6, n3417, CAOut_7__N_186, RegReset, PHI2_N_548, 
            nRESET_c, nWEDMA_c, n3422, n3408, RAMRD, RAMWR, nWEDMA_N_5, 
            XferVerify, n3424, REUAOut_15__N_53, n3666, PHI2_N_548_enable_81, 
            n1452, n3418, REUAOut_7__N_98, n3423, CAOut_15__N_141, 
            IncREUA, n3411) /* synthesis syn_module_defined=1 */ ;
    input n3416;
    input \XferType[1] ;
    output n3413;
    output DMA;
    output XferEnd_N_579;
    input AutoloadEN;
    output n3409;
    output n3665;
    output n3442;
    input BA_c;
    input PHI2_c;
    output nAOE_N_633;
    input Execute;
    output n3434;
    input n3445;
    input Length1_N_622;
    output SetVerifyErr;
    output IntPending_N_448;
    output PHI2_N_548_enable_6;
    input n3417;
    output CAOut_7__N_186;
    output RegReset;
    input PHI2_N_548;
    input nRESET_c;
    output nWEDMA_c;
    input n3422;
    output n3408;
    output RAMRD;
    output RAMWR;
    input nWEDMA_N_5;
    input XferVerify;
    input n3424;
    output REUAOut_15__N_53;
    output n3666;
    input PHI2_N_548_enable_81;
    input n1452;
    input n3418;
    output REUAOut_7__N_98;
    input n3423;
    output CAOut_15__N_141;
    output IncREUA;
    output n3411;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(116[11:18])
    
    wire SwapState;
    wire [2:1]nRESETr;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(116[11:18])
    
    wire DMAr, n3246, n3351, n15, RAMWR_N_565, n6, n3247, BAr, 
        n3443, Equalr, n1, n3352, DMARW_N_595, SwapState_N_570, 
        DMA_N_576, XferEnd_N_587, RAMRD_N_549, n1133;
    
    LUT4 i1757_2_lut_3_lut_rep_58 (.A(n3416), .B(\XferType[1] ), .C(SwapState), 
         .Z(n3413)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[17:37])
    defparam i1757_2_lut_3_lut_rep_58.init = 16'hfbfb;
    LUT4 AutoloadEN_I_0_2_lut_rep_54_3_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(AutoloadEN), .Z(n3409)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(127[18] 135[67])
    defparam AutoloadEN_I_0_2_lut_rep_54_3_lut.init = 16'h8080;
    LUT4 DMA_N_575_I_0_4_lut_rep_92 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n3665)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(178[2] 184[25])
    defparam DMA_N_575_I_0_4_lut_rep_92.init = 16'h1511;
    LUT4 XferType_0__bdd_4_lut_4_lut (.A(n3416), .B(\XferType[1] ), .C(SwapState), 
         .D(XferEnd_N_579), .Z(n3246)) /* synthesis lut_function=(!(A (D)+!A (((D)+!C)+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[17:37])
    defparam XferType_0__bdd_4_lut_4_lut.init = 16'h00ea;
    LUT4 RAMRD_N_557_bdd_4_lut_4_lut (.A(n3416), .B(\XferType[1] ), .C(SwapState), 
         .D(XferEnd_N_579), .Z(n3351)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B ((D)+!C)+!B (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(32[17:37])
    defparam RAMRD_N_557_bdd_4_lut_4_lut.init = 16'h00d9;
    LUT4 i1_4_lut (.A(n3416), .B(\XferType[1] ), .C(SwapState), .D(n15), 
         .Z(RAMWR_N_565)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h1511;
    LUT4 AOE_I_0_26_1_lut_rep_87 (.A(DMA), .Z(n3442)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(32[15:19])
    defparam AOE_I_0_26_1_lut_rep_87.init = 16'h5555;
    LUT4 i2975_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_N_633)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i2975_3_lut_3_lut.init = 16'h2f2f;
    LUT4 i1_3_lut_3_lut (.A(DMA), .B(nRESETr[1]), .C(n6), .Z(n15)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_3_lut_3_lut.init = 16'h5d5d;
    LUT4 XferType_0__bdd_3_lut (.A(n3416), .B(Execute), .C(\XferType[1] ), 
         .Z(n3247)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam XferType_0__bdd_3_lut.init = 16'hc8c8;
    LUT4 DMAr_I_0_2_lut_rep_88 (.A(DMAr), .B(BAr), .Z(n3443)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(135[36:47])
    defparam DMAr_I_0_2_lut_rep_88.init = 16'h8888;
    LUT4 XferEnd_I_145_2_lut_rep_79_3_lut (.A(DMAr), .B(BAr), .C(Equalr), 
         .Z(n3434)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(135[36:47])
    defparam XferEnd_I_145_2_lut_rep_79_3_lut.init = 16'h0808;
    LUT4 mux_161_Mux_0_i1_3_lut_4_lut (.A(DMAr), .B(BAr), .C(n3416), .D(n3445), 
         .Z(n1)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(135[36:47])
    defparam mux_161_Mux_0_i1_3_lut_4_lut.init = 16'hf808;
    PFUMX i3048 (.BLUT(n3352), .ALUT(n3351), .C0(DMA), .Z(DMARW_N_595));
    LUT4 SetEndOfBlock_I_0_2_lut_3_lut (.A(DMA), .B(Length1_N_622), .C(SetVerifyErr), 
         .Z(IntPending_N_448)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(171[24:38])
    defparam SetEndOfBlock_I_0_2_lut_3_lut.init = 16'hf2f2;
    LUT4 DMA_I_0_2_lut_rep_66 (.A(DMA), .B(Length1_N_622), .Z(PHI2_N_548_enable_6)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(171[24:38])
    defparam DMA_I_0_2_lut_rep_66.init = 16'h2222;
    LUT4 Autoload_I_0_792_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3417), .D(AutoloadEN), .Z(CAOut_7__N_186)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(127[18] 135[67])
    defparam Autoload_I_0_792_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i3_1_lut (.A(SwapState), .Z(SwapState_N_570)) /* synthesis lut_function=(!(A)) */ ;
    defparam i3_1_lut.init = 16'h5555;
    LUT4 DMA_N_575_I_0_4_lut (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(RegReset)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(178[2] 184[25])
    defparam DMA_N_575_I_0_4_lut.init = 16'h1511;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_548), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX DMA_131 (.D(DMA_N_576), .CK(PHI2_N_548), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam DMA_131.GSR = "ENABLED";
    FD1S3AX DMARW_132 (.D(DMARW_N_595), .CK(PHI2_N_548), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam DMARW_132.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_162 (.A(nRESETr[1]), .B(XferEnd_N_587), .C(n6), 
         .D(\XferType[1] ), .Z(XferEnd_N_579)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(127[25] 135[67])
    defparam i1_4_lut_adj_162.init = 16'hf5dd;
    LUT4 BA_I_0_2_lut (.A(BA_c), .B(Length1_N_622), .Z(XferEnd_N_587)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(135[16:31])
    defparam BA_I_0_2_lut.init = 16'h2222;
    LUT4 i19_4_lut (.A(XferEnd_N_587), .B(n3434), .C(n3416), .D(SwapState), 
         .Z(n6)) /* synthesis lut_function=(A (C+(D))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(129[2] 135[66])
    defparam i19_4_lut.init = 16'heae0;
    LUT4 Autoload_I_0_2_lut_rep_53_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3422), .D(AutoloadEN), .Z(n3408)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(127[18] 135[67])
    defparam Autoload_I_0_2_lut_rep_53_3_lut_4_lut.init = 16'h8f0f;
    FD1S3AX RAMRD_133 (.D(RAMRD_N_549), .CK(PHI2_N_548), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam RAMRD_133.GSR = "ENABLED";
    FD1S3IX RAMWR_134 (.D(RAMWR_N_565), .CK(PHI2_N_548), .CD(n3442), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam RAMWR_134.GSR = "ENABLED";
    FD1S3AX DMAr_135 (.D(DMA), .CK(PHI2_N_548), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam DMAr_135.GSR = "ENABLED";
    FD1S3AX BAr_136 (.D(BA_c), .CK(PHI2_N_548), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam BAr_136.GSR = "ENABLED";
    FD1S3AX Equalr_137 (.D(nWEDMA_N_5), .CK(PHI2_N_548), .Q(Equalr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam Equalr_137.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(XferVerify), .B(nWEDMA_N_5), .C(DMA), .D(BA_c), 
         .Z(SetVerifyErr)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd_N_579), .C(DMA), .Z(DMA_N_576)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(86[11] 110[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    LUT4 Autoload_I_0_726_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3424), .D(AutoloadEN), .Z(REUAOut_15__N_53)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(127[18] 135[67])
    defparam Autoload_I_0_726_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 DMA_N_575_I_0_4_lut_rep_93 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n3666)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(178[2] 184[25])
    defparam DMA_N_575_I_0_4_lut_rep_93.init = 16'h1511;
    FD1P3IX SwapState_130 (.D(SwapState_N_570), .SP(PHI2_N_548_enable_81), 
            .CD(n1452), .CK(PHI2_N_548), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(38[8] 43[4])
    defparam SwapState_130.GSR = "ENABLED";
    LUT4 Autoload_I_0_735_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3418), .D(AutoloadEN), .Z(REUAOut_7__N_98)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(127[18] 135[67])
    defparam Autoload_I_0_735_2_lut_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i2991 (.BLUT(n3247), .ALUT(n3246), .C0(DMA), .Z(RAMRD_N_549));
    LUT4 Autoload_I_0_748_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3423), .D(AutoloadEN), .Z(CAOut_15__N_141)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(127[18] 135[67])
    defparam Autoload_I_0_748_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i904_2_lut_4_lut (.A(SwapState), .B(n3434), .C(n3416), .D(n3445), 
         .Z(n1133)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i904_2_lut_4_lut.init = 16'h3a00;
    PFUMX mux_161_Mux_0_i3 (.BLUT(n1), .ALUT(n1133), .C0(\XferType[1] ), 
          .Z(IncREUA));
    LUT4 RAMRD_N_557_bdd_3_lut (.A(Execute), .B(n3416), .C(\XferType[1] ), 
         .Z(n3352)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam RAMRD_N_557_bdd_3_lut.init = 16'ha2a2;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_548), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    LUT4 mux_161_Mux_0_i2_3_lut_rep_56_4_lut (.A(n3443), .B(Equalr), .C(n3416), 
         .D(SwapState), .Z(n3411)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(135[35:59])
    defparam mux_161_Mux_0_i2_3_lut_rep_56_4_lut.init = 16'hdfd0;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module RAM
//

module RAM (C8M_c, RAMWR, n1008, RAMRD, \REUA[18] , n3664, \REUA[9] , 
            \REUA[1] , C8M_N_500, PHI2_c, nCS_c, RBA_c_0, \REUA[21] , 
            nRAS_c, nCAS_c, nRWE_c, CKE_c, RA_0_0, WRDr, PHI2_N_548, 
            D_out_0, DQML_c, A_0__N_542, nRESET_c, GND_net, VCC_net, 
            RCLK_c, \REUA[10] , \REUA[2] , RAMRDD, RD_out_0, \REUA[11] , 
            \REUA[3] , \REUA[12] , \REUA[4] , \REUA[13] , \REUA[5] , 
            \REUA[15] , \REUA[7] , \REUA[16] , \REUA[8] , \REUA[17] , 
            \REUA[23] , \REUA[19] , \REUA[14] , \REUA[6] , RBA_c_1, 
            \REUA[22] , RA_0_11, n1454, RA_0_1, DQMH_c, \REUA[0] , 
            RA_0_2, RA_0_3, RA_0_4, RA_0_5, RA_0_6, RA_0_7, RA_0_8, 
            RA_0_9, RA_0_10, D_out_1, D_out_2, D_out_3, D_out_4, 
            D_out_5, D_out_6, D_out_7, RD_out_1, RD_out_2, RD_out_3, 
            RD_out_4, RD_out_5, RD_out_6, RD_out_7) /* synthesis syn_module_defined=1 */ ;
    input C8M_c;
    input RAMWR;
    output n1008;
    input RAMRD;
    input \REUA[18] ;
    input n3664;
    input \REUA[9] ;
    input \REUA[1] ;
    input C8M_N_500;
    input PHI2_c;
    output nCS_c;
    output RBA_c_0;
    input \REUA[21] ;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output RA_0_0;
    output [7:0]WRDr;
    input PHI2_N_548;
    input D_out_0;
    output DQML_c;
    input A_0__N_542;
    input nRESET_c;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    input \REUA[10] ;
    input \REUA[2] ;
    output [7:0]RAMRDD;
    input RD_out_0;
    input \REUA[11] ;
    input \REUA[3] ;
    input \REUA[12] ;
    input \REUA[4] ;
    input \REUA[13] ;
    input \REUA[5] ;
    input \REUA[15] ;
    input \REUA[7] ;
    input \REUA[16] ;
    input \REUA[8] ;
    input \REUA[17] ;
    input \REUA[23] ;
    input \REUA[19] ;
    input \REUA[14] ;
    input \REUA[6] ;
    output RBA_c_1;
    input \REUA[22] ;
    output RA_0_11;
    input n1454;
    output RA_0_1;
    output DQMH_c;
    input \REUA[0] ;
    output RA_0_2;
    output RA_0_3;
    output RA_0_4;
    output RA_0_5;
    output RA_0_6;
    output RA_0_7;
    output RA_0_8;
    output RA_0_9;
    output RA_0_10;
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
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_500 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(116[11:18])
    
    wire InitDone;
    wire [2:0]S;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    
    wire n3134, RDOE, WRCMDg_N_535, RDOE_N_546, n2922, n3441, C8M_c_enable_2, 
        n12, nRAS_N_531, n2941, RDD_7__N_515, n3444, n3031, RA_12__N_489, 
        PORDone, PORDone_N_512, n3400, n3401, CKE_N_537, n3, n3437;
    wire [2:0]S_2__N_506;
    
    wire CKE_N_536;
    wire [5:0]nRESETr;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[11:18])
    
    wire n1;
    wire [1:0]PHI2r;   // //mac/icloud/repos/gw4302/cpld/ram.v(39[11:16])
    
    wire nCS_N_517, n1163, nCAS_N_532, nRWE_N_533, n1_adj_645, n1_adj_646, 
        n1_adj_647, n1_adj_648, n1_adj_649, n1_adj_650, n1_adj_651, 
        n3_adj_652, n1187;
    
    FD1P3AX InitDone_124 (.D(n3134), .SP(S[2]), .CK(C8M_c), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(60[8:58])
    defparam InitDone_124.GSR = "ENABLED";
    FD1S3IX RDOE_136 (.D(RDOE_N_546), .CK(C8M_c), .CD(WRCMDg_N_535), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:54])
    defparam RDOE_136.GSR = "ENABLED";
    LUT4 i15_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n2922)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(52[35:46])
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i2896_3_lut_3_lut (.A(S[0]), .B(S[1]), .C(InitDone), .Z(n3134)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(52[35:46])
    defparam i2896_3_lut_3_lut.init = 16'hf8f8;
    LUT4 S_2__I_0_i4_2_lut_rep_86 (.A(S[1]), .B(S[2]), .Z(n3441)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[41:53])
    defparam S_2__I_0_i4_2_lut_rep_86.init = 16'heeee;
    LUT4 i2962_2_lut_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), .Z(RDOE_N_546)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[41:53])
    defparam i2962_2_lut_3_lut.init = 16'h1010;
    LUT4 equal_21_i5_2_lut_rep_81_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), 
         .Z(C8M_c_enable_2)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[41:53])
    defparam equal_21_i5_2_lut_rep_81_3_lut.init = 16'hfefe;
    LUT4 WRCMDg_I_0_166_1_lut_2_lut (.A(RAMWR), .B(InitDone), .Z(WRCMDg_N_535)) /* synthesis lut_function=(!(A (B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[15:32])
    defparam WRCMDg_I_0_166_1_lut_2_lut.init = 16'h7777;
    LUT4 i791_1_lut (.A(RDOE), .Z(n1008)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(246[8:10])
    defparam i791_1_lut.init = 16'h5555;
    LUT4 i24_4_lut_4_lut (.A(S[0]), .B(S[2]), .C(n12), .D(S[1]), .Z(nRAS_N_531)) /* synthesis lut_function=(A (B+!(D))+!A ((D)+!C)) */ ;
    defparam i24_4_lut_4_lut.init = 16'hddaf;
    LUT4 i2967_2_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n2941)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2967_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i2_3_lut_4_lut (.A(S[0]), .B(S[2]), .C(RAMRD), .D(S[1]), .Z(RDD_7__N_515)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_89 (.A(S[2]), .B(S[1]), .Z(n3444)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam i1_2_lut_rep_89.init = 16'heeee;
    LUT4 i2990_2_lut_3_lut (.A(S[2]), .B(S[1]), .C(S[0]), .Z(n3031)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam i2990_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut (.A(S[0]), .B(S[1]), .C(\REUA[18] ), .D(S[2]), 
         .Z(RA_12__N_489)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[2] 163[9])
    defparam i1_3_lut_4_lut.init = 16'h1110;
    FD1P3AX PORDone_120 (.D(n3664), .SP(PORDone_N_512), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(34[8] 36[4])
    defparam PORDone_120.GSR = "ENABLED";
    LUT4 S_2__bdd_2_lut (.A(S[2]), .B(S[0]), .Z(n3400)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam S_2__bdd_2_lut.init = 16'hbbbb;
    LUT4 S_2__bdd_4_lut (.A(S[2]), .B(InitDone), .C(S[0]), .D(RAMWR), 
         .Z(n3401)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D)))) */ ;
    defparam S_2__bdd_4_lut.init = 16'hbdfd;
    LUT4 i1_3_lut (.A(InitDone), .B(RAMWR), .C(RAMRD), .Z(CKE_N_537)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i1_4_lut (.A(S[2]), .B(RAMRD), .C(InitDone), .D(RAMWR), .Z(n12)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[2] 163[9])
    defparam i1_4_lut.init = 16'hfaea;
    LUT4 i213_2_lut (.A(S[0]), .B(S[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(52[35:46])
    defparam i213_2_lut.init = 16'h6666;
    FD1S3IX S__i0 (.D(S_2__N_506[0]), .CK(C8M_c), .CD(n3437), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i0.GSR = "ENABLED";
    LUT4 i35_4_lut (.A(S[1]), .B(S[0]), .C(S[2]), .D(CKE_N_537), .Z(CKE_N_536)) /* synthesis lut_function=(A (B+!(C))+!A (C+(D))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(65[2] 163[9])
    defparam i35_4_lut.init = 16'hdfda;
    FD1S3AX nRESETr_5__115 (.D(nRESETr[4]), .CK(C8M_c), .Q(nRESETr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_5__115.GSR = "ENABLED";
    LUT4 S_2__I_0_150_i1_3_lut (.A(\REUA[9] ), .B(\REUA[1] ), .C(S[0]), 
         .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_150_i1_3_lut.init = 16'hcaca;
    FD1S3AX nRESETr_4__116 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_4__116.GSR = "ENABLED";
    FD1S3AX nRESETr_3__117 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_3__117.GSR = "ENABLED";
    FD1S3AX nRESETr_2__118 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_2__118.GSR = "ENABLED";
    FD1S3AX nRESETr_1__119 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_1__119.GSR = "ENABLED";
    FD1S3AX PHI2r_0__121 (.D(PHI2_c), .CK(C8M_N_500), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(40[8:40])
    defparam PHI2r_0__121.GSR = "ENABLED";
    FD1S3AX PHI2r_1__122 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(41[8:44])
    defparam PHI2r_1__122.GSR = "ENABLED";
    LUT4 i933_1_lut_rep_82 (.A(PORDone), .Z(n3437)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(34[8] 36[4])
    defparam i933_1_lut_rep_82.init = 16'h5555;
    FD1S3AX nCS_125 (.D(nCS_N_517), .CK(C8M_c), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nCS_125.GSR = "ENABLED";
    FD1S3IX RBA_i1 (.D(\REUA[21] ), .CK(C8M_c), .CD(n3444), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RBA_i1.GSR = "ENABLED";
    LUT4 i934_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_2), .Z(n1163)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(34[8] 36[4])
    defparam i934_2_lut_4_lut_4_lut.init = 16'h5575;
    FD1S3AX nRAS_126 (.D(nRAS_N_531), .CK(C8M_c), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nRAS_126.GSR = "ENABLED";
    FD1S3AX nCAS_127 (.D(nCAS_N_532), .CK(C8M_c), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nCAS_127.GSR = "ENABLED";
    FD1S3AX nRWE_128 (.D(nRWE_N_533), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nRWE_128.GSR = "ENABLED";
    FD1S3AX CKE_129 (.D(CKE_N_536), .CK(C8M_c), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam CKE_129.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n1), .CK(C8M_c), .CD(n3444), .Q(RA_0_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_548), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3JX DQML_133 (.D(A_0__N_542), .CK(C8M_c), .PD(n2941), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam DQML_133.GSR = "ENABLED";
    FD1S3AX nRESETr_0__114 (.D(nRESET_c), .CK(C8M_N_500), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(32[8:44])
    defparam nRESETr_0__114.GSR = "ENABLED";
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(C8M_c), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(70[6] 80[32])
    defparam rclk_oddr.GSR = "ENABLED";
    LUT4 S_2__I_0_148_i1_3_lut (.A(\REUA[10] ), .B(\REUA[2] ), .C(S[0]), 
         .Z(n1_adj_645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_148_i1_3_lut.init = 16'hcaca;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 CKE_N_537_bdd_4_lut (.A(CKE_N_537), .B(S[2]), .C(S[0]), .D(S[1]), 
         .Z(nCS_N_517)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam CKE_N_537_bdd_4_lut.init = 16'hcfd1;
    LUT4 i1758_3_lut_4_lut (.A(S[0]), .B(n3441), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(S_2__N_506[0])) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(50[11:23])
    defparam i1758_3_lut_4_lut.init = 16'h4544;
    LUT4 S_2__I_0_147_i1_3_lut (.A(\REUA[11] ), .B(\REUA[3] ), .C(S[0]), 
         .Z(n1_adj_646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_147_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_146_i1_3_lut (.A(\REUA[12] ), .B(\REUA[4] ), .C(S[0]), 
         .Z(n1_adj_647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_146_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_145_i1_3_lut (.A(\REUA[13] ), .B(\REUA[5] ), .C(S[0]), 
         .Z(n1_adj_648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_145_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_143_i1_3_lut (.A(\REUA[15] ), .B(\REUA[7] ), .C(S[0]), 
         .Z(n1_adj_649)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_143_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_142_i1_3_lut (.A(\REUA[16] ), .B(\REUA[8] ), .C(S[0]), 
         .Z(n1_adj_650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_142_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_141_i1_3_lut (.A(\REUA[17] ), .B(\REUA[23] ), .C(S[0]), 
         .Z(n1_adj_651)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_141_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_139_i3_3_lut (.A(\REUA[19] ), .B(S[0]), .C(S[1]), .Z(n3_adj_652)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam S_2__I_0_139_i3_3_lut.init = 16'hc2c2;
    LUT4 i958_4_lut (.A(\REUA[14] ), .B(S[2]), .C(\REUA[6] ), .D(S[0]), 
         .Z(n1187)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B !(C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[2] 229[9])
    defparam i958_4_lut.init = 16'h30ee;
    FD1P3IX S__i1 (.D(n3), .SP(C8M_c_enable_2), .CD(n1163), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n2922), .SP(C8M_c_enable_2), .CD(n1163), .CK(C8M_c), 
            .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i2.GSR = "ENABLED";
    FD1S3IX RBA_i2 (.D(\REUA[22] ), .CK(C8M_c), .CD(n3444), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RBA_i2.GSR = "ENABLED";
    FD1S3IX RA_i12 (.D(n3031), .CK(C8M_c), .CD(n1454), .Q(RA_0_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i12.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n1_adj_645), .CK(C8M_c), .CD(n3444), .Q(RA_0_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i2.GSR = "ENABLED";
    PFUMX i3080 (.BLUT(n3401), .ALUT(n3400), .C0(S[1]), .Z(nRWE_N_533));
    FD1S3JX DQMH_132 (.D(\REUA[0] ), .CK(C8M_c), .PD(n2941), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam DQMH_132.GSR = "ENABLED";
    LUT4 S_0__bdd_4_lut (.A(S[0]), .B(CKE_N_537), .C(S[2]), .D(S[1]), 
         .Z(nCAS_N_532)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!C)) */ ;
    defparam S_0__bdd_4_lut.init = 16'hffa7;
    LUT4 i3_4_lut (.A(nRESETr[5]), .B(nRESETr[4]), .C(nRESETr[2]), .D(nRESETr[3]), 
         .Z(PORDone_N_512)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(35[6:58])
    defparam i3_4_lut.init = 16'h8000;
    FD1S3IX RA_i3 (.D(n1_adj_646), .CK(C8M_c), .CD(n3444), .Q(RA_0_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n1_adj_647), .CK(C8M_c), .CD(n3444), .Q(RA_0_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n1_adj_648), .CK(C8M_c), .CD(n3444), .Q(RA_0_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3IX RA_i6 (.D(n1187), .CK(C8M_c), .CD(S[1]), .Q(RA_0_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n1_adj_649), .CK(C8M_c), .CD(n3444), .Q(RA_0_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n1_adj_650), .CK(C8M_c), .CD(n3444), .Q(RA_0_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1S3IX RA_i9 (.D(n1_adj_651), .CK(C8M_c), .CD(n3444), .Q(RA_0_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3AX RA_i10 (.D(RA_12__N_489), .CK(C8M_c), .Q(RA_0_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3IX RA_i11 (.D(n3_adj_652), .CK(C8M_c), .CD(S[2]), .Q(RA_0_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(166[8] 231[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_548), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_548), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_548), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_548), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_548), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_548), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_548), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(235[8:69])
    defparam RDD_i0_i7.GSR = "ENABLED";
    
endmodule
