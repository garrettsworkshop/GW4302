// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Thu Apr 28 16:42:22 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIRQ, nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, 
            RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, 
            DQML, RD) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // //mac/icloud/repos/gw4302/cpld/reu.v(5[8:14])
    input BA;   // //mac/icloud/repos/gw4302/cpld/reu.v(7[8:10])
    inout [7:0]D;   // //mac/icloud/repos/gw4302/cpld/reu.v(8[14:15])
    inout [15:0]A;   // //mac/icloud/repos/gw4302/cpld/reu.v(9[15:16])
    input nWE;   // //mac/icloud/repos/gw4302/cpld/reu.v(10[8:11])
    output nWEDMA;   // //mac/icloud/repos/gw4302/cpld/reu.v(11[9:15])
    output nDMA;   // //mac/icloud/repos/gw4302/cpld/reu.v(12[9:13])
    output nIRQ;   // //mac/icloud/repos/gw4302/cpld/reu.v(13[9:13])
    input nIO1;   // //mac/icloud/repos/gw4302/cpld/reu.v(14[8:12])
    input nIO2;   // //mac/icloud/repos/gw4302/cpld/reu.v(15[8:12])
    output nAOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(17[9:13])
    output ADIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(18[9:13])
    output nRWOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:14])
    output nDOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(20[9:13])
    output DDIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(21[9:13])
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
    
    wire C8M_c /* synthesis SET_AS_NETWORK=C8M_c, is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_45 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(36[11:16])
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(150[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nDMA_c, 
        nIRQ_c, nIO2_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, 
        CKE_c, RBA_c_1, RBA_c_0, RA_0_11, RA_0_10, RA_0_9, RA_0_8, 
        RA_0_7, RA_0_6, RA_0_5, RA_0_4, RA_0_3, RA_0_2, RA_0_1, 
        RA_0_0, DQMH_c, DQML_c, Execute;
    wire [23:0]REUA;   // //mac/icloud/repos/gw4302/cpld/reu.v(39[14:18])
    wire [15:0]CA;   // //mac/icloud/repos/gw4302/cpld/reu.v(40[14:16])
    wire [7:0]RAMRDD;   // //mac/icloud/repos/gw4302/cpld/reu.v(45[13:19])
    
    wire DMA, RAMRD, RAMWR, SetFault, AOE, DOE;
    wire [7:0]Dout;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[13:17])
    
    wire nWEDMA_N_5;
    wire [2:0]S;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[11:12])
    wire [7:0]WRDr;   // //mac/icloud/repos/gw4302/cpld/ram.v(240[11:15])
    
    wire A_0__N_96, EndBlock, DF01Reserved6, ExecuteEN, AutoloadEN, 
        FF00DecodeEN;
    wire [1:0]XferType_adj_686;   // //mac/icloud/repos/gw4302/cpld/reg.v(37[11:19])
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(50[12:18])
    
    wire IncREUAg, n3772, n3771, n3744, n4101, n356, n4118, n4114, 
        n4112, n4111, CAOut_7__N_281, n4110, n4109, n7, n8, CAOut_15__N_236, 
        n3734, n428, n4108, REUAOut_7__N_193, n3770, n3773, n4098, 
        n4096, n3555, REUAOut_15__N_148, REUAOut_15__N_146, n4095, 
        n4094, n6, n3926, n4107, n4106;
    wire [2:1]nRESETr;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(150[11:18])
    
    wire XferEnd_N_599, IncCA_N_630, Length1_N_644, n3921, D_out_7, 
        n4039, D_out_6, D_out_5, D_out_4, D_out_3, D_out_2, D_out_1, 
        D_out_0, A_out_15, A_out_14, A_out_13, A_out_12, A_out_11, 
        A_out_10, A_out_9, A_out_8, n4034, A_out_4, A_out_3, A_out_2, 
        A_out_1, A_out_0, RD_out_7, RD_out_6, RD_out_5, n1114, RD_out_4, 
        RD_out_3, RD_out_2, RD_out_1, RD_out_0, n1, n1_adj_672, 
        n4027, n1_adj_673, n1_adj_674, n1_adj_675, n17, n4104, n16, 
        n15, n4020, n18, n4103, n12, n3215, n1_adj_676, n6_adj_677, 
        n4129, n4128, n2307, n2338, n2337, n2334, n4343, n3216;
    
    VHI i2 (.Z(VCC_net));
    INV i3899 (.A(C8M_c), .Z(C8M_N_45));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    LUT4 m1_lut (.Z(n4343)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3216), .S1(nWEDMA_N_5));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    BB A_pad_10 (.I(CA[10]), .T(AOE), .B(A[10]), .O(A_out_10));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_11 (.I(CA[11]), .T(AOE), .B(A[11]), .O(A_out_11));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_12 (.I(CA[12]), .T(AOE), .B(A[12]), .O(A_out_12));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_13 (.I(CA[13]), .T(AOE), .B(A[13]), .O(A_out_13));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_14 (.I(CA[14]), .T(AOE), .B(A[14]), .O(A_out_14));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_15 (.I(CA[15]), .T(AOE), .B(A[15]), .O(A_out_15));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB D_pad_0 (.I(Dout[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_1 (.I(Dout[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_2 (.I(Dout[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_3 (.I(Dout[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    PFUMX i3556 (.BLUT(n2334), .ALUT(n6_adj_677), .C0(A_out_1), .Z(n3770));
    BB D_pad_4 (.I(Dout[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_5 (.I(Dout[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_6 (.I(Dout[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_7 (.I(Dout[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2153_3_lut (.A(REUA[9]), .B(REUA[1]), .C(S[0]), .Z(n1_adj_675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[11:12])
    defparam i2153_3_lut.init = 16'hcaca;
    BB A_pad_9 (.I(CA[9]), .T(AOE), .B(A[9]), .O(A_out_9));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i3530_4_lut (.A(A_out_0), .B(n6), .C(A_out_2), .D(A_out_4), 
         .Z(n3744)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3530_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n3734), .B(ExecuteEN), .C(n12), .D(A_out_1), .Z(n18)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i8_4_lut.init = 16'h0040;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n428), .B(RAMRDD[7]), .C(DMA), .D(n2307), 
         .Z(Dout[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 i3520_2_lut (.A(n7), .B(A_out_3), .Z(n3734)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3520_2_lut.init = 16'heeee;
    BB A_pad_8 (.I(CA[8]), .T(AOE), .B(A[8]), .O(A_out_8));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_7 (.I(CA[7]), .T(AOE), .B(A[7]), .O(n8));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_6 (.I(CA[6]), .T(AOE), .B(A[6]), .O(n7));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_5 (.I(CA[5]), .T(AOE), .B(A[5]), .O(n6));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    LUT4 i2_4_lut (.A(FF00DecodeEN), .B(n17), .C(n15), .D(n16), .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'h8000;
    BB A_pad_4 (.I(CA[4]), .T(AOE), .B(A[4]), .O(A_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_3 (.I(CA[3]), .T(AOE), .B(A[3]), .O(A_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_2 (.I(CA[2]), .T(AOE), .B(A[2]), .O(A_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    LUT4 i7_4_lut (.A(A_out_11), .B(n8), .C(A_out_12), .D(A_out_10), 
         .Z(n17)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i7_4_lut.init = 16'h2000;
    BB A_pad_1 (.I(CA[1]), .T(AOE), .B(A[1]), .O(A_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB A_pad_0 (.I(CA[0]), .T(AOE), .B(A[0]), .O(A_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1114), .B(RD[7]), .O(RD_out_7));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1114), .B(RD[6]), .O(RD_out_6));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1114), .B(RD[5]), .O(RD_out_5));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1114), .B(RD[4]), .O(RD_out_4));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1114), .B(RD[3]), .O(RD_out_3));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1114), .B(RD[2]), .O(RD_out_2));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1114), .B(RD[1]), .O(RD_out_1));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1114), .B(RD[0]), .O(RD_out_0));   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(nDMA_c), .O(nDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(12[9:13])
    OB nIRQ_pad (.I(nIRQ_c), .O(nIRQ));   // //mac/icloud/repos/gw4302/cpld/reu.v(13[9:13])
    OB nAOE_pad (.I(GND_net), .O(nAOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(17[9:13])
    OB ADIR_pad (.I(AOE), .O(ADIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(18[9:13])
    OB nRWOE_pad (.I(AOE), .O(nRWOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:14])
    OB nDOE_pad (.I(GND_net), .O(nDOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(20[9:13])
    OB DDIR_pad (.I(DOE), .O(DDIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(21[9:13])
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
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(15[8:12])
    LUT4 i5_2_lut (.A(A_out_13), .B(A_out_15), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i3686_3_lut (.A(PHI2_c), .B(BA_c), .C(DMA), .Z(AOE)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    defparam i3686_3_lut.init = 16'h7f7f;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n3215));   // //mac/icloud/repos/gw4302/cpld/reu.v(84[31:50])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i6_4_lut (.A(nWE_c), .B(A_out_14), .C(A_out_9), .D(A_out_8), 
         .Z(n16)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i6_4_lut.init = 16'h4000;
    LUT4 i2150_3_lut (.A(REUA[10]), .B(REUA[2]), .C(S[0]), .Z(n1_adj_674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[11:12])
    defparam i2150_3_lut.init = 16'hcaca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n3926), .B(RAMRDD[0]), .C(DMA), .D(n2307), 
         .Z(Dout[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    LUT4 i3648_4_lut (.A(PHI2_c), .B(AOE), .C(n3555), .D(nWEDMA_c), 
         .Z(DOE)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(102[9:10])
    defparam i3648_4_lut.init = 16'h5f4c;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n3921), .B(RAMRDD[1]), .C(DMA), .D(n2307), 
         .Z(Dout[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n4039), .B(RAMRDD[2]), .C(DMA), .D(n2307), 
         .Z(Dout[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n4027), .B(RAMRDD[3]), .C(DMA), .D(n2307), 
         .Z(Dout[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(n4128), .B(nWE_c), .C(A_out_2), 
         .D(n4129), .Z(n4111)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_71_3_lut_4_lut (.A(n4128), .B(nWE_c), .C(A_out_2), 
         .D(n4129), .Z(n4112)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_71_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut (.A(A_out_2), .B(CA[6]), .Z(n6_adj_677)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(94[9:10])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2134_3_lut (.A(EndBlock), .B(REUA[6]), .C(A_out_2), .Z(n2334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2134_3_lut.init = 16'hcaca;
    LUT4 i2154_3_lut (.A(REUA[14]), .B(REUA[6]), .C(S[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[11:12])
    defparam i2154_3_lut.init = 16'hcaca;
    LUT4 i2138_3_lut (.A(CA[14]), .B(Length[6]), .C(A_out_2), .Z(n2338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2138_3_lut.init = 16'hcaca;
    LUT4 i2152_3_lut (.A(REUA[13]), .B(REUA[5]), .C(S[0]), .Z(n1_adj_672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[11:12])
    defparam i2152_3_lut.init = 16'hcaca;
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n3215), .COUT(n3216));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n4034), .B(RAMRDD[4]), .C(DMA), .D(n2307), 
         .Z(Dout[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    PFUMX i3557 (.BLUT(n2337), .ALUT(n2338), .C0(A_out_1), .Z(n3771));
    VLO i1 (.Z(GND_net));
    LUT4 i2151_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2151_3_lut.init = 16'hcaca;
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n4020), .B(RAMRDD[5]), .C(DMA), .D(n2307), 
         .Z(Dout[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 i2137_3_lut (.A(DF01Reserved6), .B(REUA[14]), .C(A_out_2), .Z(n2337)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2137_3_lut.init = 16'hcaca;
    DMASeq dmaseq (.n4101(n4101), .DMA(DMA), .n4103(n4103), .BA_c(BA_c), 
           .nWEDMA_c(nWEDMA_c), .Execute(Execute), .n4109(n4109), .\XferType[0] (XferType_adj_686[0]), 
           .D_out_0(D_out_0), .XferEnd_N_599(XferEnd_N_599), .RAMRD(RAMRD), 
           .nDMA_c(nDMA_c), .SetFault(SetFault), .PHI2_N_570(PHI2_N_570), 
           .n4098(n4098), .RAMWR(RAMWR), .Length1_N_644(Length1_N_644), 
           .\nRESETr[1] (nRESETr[1]), .nRESET_c(nRESET_c), .nWEDMA_N_5(nWEDMA_N_5), 
           .EndBlock(EndBlock), .n3773(n3773), .IncREUAg(IncREUAg), .\REUA[6] (REUA[6]), 
           .REUAOut_15__N_146(REUAOut_15__N_146), .\REUA[0] (REUA[0]), .\REUA[1] (REUA[1]), 
           .\REUA[4] (REUA[4]), .\REUA[3] (REUA[3]), .\REUA[5] (REUA[5]), 
           .\REUA[2] (REUA[2]), .\REUA[7] (REUA[7]), .n4096(n4096), .IncCA_N_630(IncCA_N_630), 
           .AutoloadEN(AutoloadEN), .n4095(n4095), .n4106(n4106), .REUAOut_7__N_193(REUAOut_7__N_193), 
           .n4108(n4108), .REUAOut_15__N_148(REUAOut_15__N_148), .n4104(n4104), 
           .CAOut_15__N_236(CAOut_15__N_236), .n4107(n4107), .CAOut_7__N_281(CAOut_7__N_281), 
           .n4110(n4110), .n4094(n4094)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(78[9] 86[68])
    LUT4 i5_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n1_adj_676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i5_3_lut.init = 16'hcaca;
    LUT4 i2223_2_lut_rep_87 (.A(DMA), .B(nIO2_c), .Z(n4128)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2223_2_lut_rep_87.init = 16'heeee;
    LUT4 i2225_2_lut_rep_77_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n4118)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2225_2_lut_rep_77_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(n4129), 
         .D(nWE_c), .Z(n4114)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3555)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i3558_3_lut (.A(n3770), .B(n3771), .C(A_out_0), .Z(n3772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3558_3_lut.init = 16'hcaca;
    RAMctrl ramctrl (.S({Open_0, Open_1, S[0]}), .RAMRD(RAMRD), .RAMWR(RAMWR), 
            .C8M_c(C8M_c), .nCS_c(nCS_c), .RBA_c_0(RBA_c_0), .\REUA[21] (REUA[21]), 
            .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), .CKE_c(CKE_c), 
            .RA_0_0(RA_0_0), .n1(n1_adj_675), .WRDr({WRDr}), .PHI2_N_570(PHI2_N_570), 
            .D_out_0(D_out_0), .DQML_c(DQML_c), .A_0__N_96(A_0__N_96), 
            .nRESET_c(nRESET_c), .GND_net(GND_net), .VCC_net(VCC_net), 
            .RCLK_c(RCLK_c), .DQMH_c(DQMH_c), .\REUA[0] (REUA[0]), .RAMRDD({RAMRDD}), 
            .RD_out_0(RD_out_0), .C8M_N_45(C8M_N_45), .PHI2_c(PHI2_c), 
            .RBA_c_1(RBA_c_1), .\REUA[22] (REUA[22]), .n4343(n4343), .RA_0_1(RA_0_1), 
            .n1_adj_2(n1_adj_674), .RA_0_2(RA_0_2), .n1_adj_3(n1_adj_673), 
            .RA_0_3(RA_0_3), .RA_0_4(RA_0_4), .n1_adj_4(n1_adj_672), .RA_0_5(RA_0_5), 
            .n1_adj_5(n1), .RA_0_6(RA_0_6), .RA_0_7(RA_0_7), .RA_0_8(RA_0_8), 
            .RA_0_9(RA_0_9), .\REUA[18] (REUA[18]), .RA_0_10(RA_0_10), 
            .RA_0_11(RA_0_11), .\REUA[20] (REUA[20]), .D_out_1(D_out_1), 
            .D_out_2(D_out_2), .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), 
            .D_out_6(D_out_6), .D_out_7(D_out_7), .n1114(n1114), .RD_out_1(RD_out_1), 
            .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), 
            .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), .RD_out_7(RD_out_7), 
            .\REUA[15] (REUA[15]), .\REUA[7] (REUA[7]), .\REUA[12] (REUA[12]), 
            .\REUA[4] (REUA[4]), .\REUA[16] (REUA[16]), .\REUA[8] (REUA[8]), 
            .\REUA[17] (REUA[17]), .\REUA[23] (REUA[23]), .\REUA[19] (REUA[19])) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(58[10] 65[32])
    TSALL TSALL_INST (.TSALL(GND_net));
    INV i3898 (.A(PHI2_c), .Z(PHI2_N_570));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    REUReg reureg (.A_out_0(A_out_0), .GND_net(GND_net), .REUAOut_15__N_148(REUAOut_15__N_148), 
           .REUA({Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, 
           Open_8, Open_9, Open_10, Open_11, Open_12, Open_13, Open_14, 
           REUA[10], Open_15, Open_16, Open_17, Open_18, Open_19, 
           Open_20, Open_21, Open_22, Open_23, Open_24}), .n3772(n3772), 
           .A_out_3(A_out_3), .PHI2_N_570(PHI2_N_570), .D_out_7(D_out_7), 
           .D_out_4(D_out_4), .A_out_1(A_out_1), .AutoloadEN(AutoloadEN), 
           .D_out_5(D_out_5), .n4110(n4110), .A_out_4(A_out_4), .FF00DecodeEN(FF00DecodeEN), 
           .D_out_1(D_out_1), .D_out_0(D_out_0), .REUAOut_15__N_146(REUAOut_15__N_146), 
           .\REUA[8] (REUA[8]), .\REUA[9] (REUA[9]), .n4095(n4095), .n4108(n4108), 
           .Length1_N_644(Length1_N_644), .CA({CA}), .XferType({Open_25, 
           XferType_adj_686[0]}), .n4109(n4109), .n4103(n4103), .n4098(n4098), 
           .D_out_2(D_out_2), .SetFault(SetFault), .n4111(n4111), .D_out_3(D_out_3), 
           .D_out_6(D_out_6), .n4343(n4343), .n4112(n4112), .\REUA[7] (REUA[7]), 
           .\REUA[21] (REUA[21]), .\Length[6] (Length[6]), .\REUA[22] (REUA[22]), 
           .\REUA[6] (REUA[6]), .\REUA[5] (REUA[5]), .\REUA[4] (REUA[4]), 
           .\REUA[3] (REUA[3]), .\REUA[2] (REUA[2]), .\REUA[1] (REUA[1]), 
           .\REUA[0] (REUA[0]), .\REUA[15] (REUA[15]), .EndBlock(EndBlock), 
           .IncCA_N_630(IncCA_N_630), .n3773(n3773), .\REUA[19] (REUA[19]), 
           .\REUA[14] (REUA[14]), .\REUA[13] (REUA[13]), .\REUA[12] (REUA[12]), 
           .n4101(n4101), .\REUA[23] (REUA[23]), .\REUA[18] (REUA[18]), 
           .\REUA[17] (REUA[17]), .\REUA[16] (REUA[16]), .ExecuteEN(ExecuteEN), 
           .n3921(n3921), .A_out_2(A_out_2), .n4114(n4114), .A_0__N_96(A_0__N_96), 
           .n3744(n3744), .n18(n18), .Execute(Execute), .n4118(n4118), 
           .n4129(n4129), .n4104(n4104), .n3555(n3555), .n428(n428), 
           .DF01Reserved6(DF01Reserved6), .n4107(n4107), .\REUA[20] (REUA[20]), 
           .n4020(n4020), .IncREUAg(IncREUAg), .n4106(n4106), .RAMWR(RAMWR), 
           .REUAOut_7__N_193(REUAOut_7__N_193), .CAOut_15__N_236(CAOut_15__N_236), 
           .nIRQ_c(nIRQ_c), .n2307(n2307), .CAOut_7__N_281(CAOut_7__N_281), 
           .\S[0] (S[0]), .n1(n1_adj_673), .\nRESETr[1] (nRESETr[1]), 
           .DMA(DMA), .n4094(n4094), .n4096(n4096), .n4039(n4039), .XferEnd_N_599(XferEnd_N_599), 
           .\RAMRDD[6] (RAMRDD[6]), .\Dout[6] (Dout[6]), .n1_adj_1(n1_adj_676), 
           .n4034(n4034), .n3926(n3926), .n356(n356), .n4027(n4027)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(67[9] 76[62])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DMASeq
//

module DMASeq (n4101, DMA, n4103, BA_c, nWEDMA_c, Execute, n4109, 
            \XferType[0] , D_out_0, XferEnd_N_599, RAMRD, nDMA_c, 
            SetFault, PHI2_N_570, n4098, RAMWR, Length1_N_644, \nRESETr[1] , 
            nRESET_c, nWEDMA_N_5, EndBlock, n3773, IncREUAg, \REUA[6] , 
            REUAOut_15__N_146, \REUA[0] , \REUA[1] , \REUA[4] , \REUA[3] , 
            \REUA[5] , \REUA[2] , \REUA[7] , n4096, IncCA_N_630, AutoloadEN, 
            n4095, n4106, REUAOut_7__N_193, n4108, REUAOut_15__N_148, 
            n4104, CAOut_15__N_236, n4107, CAOut_7__N_281, n4110, 
            n4094) /* synthesis syn_module_defined=1 */ ;
    input n4101;
    output DMA;
    input n4103;
    input BA_c;
    output nWEDMA_c;
    input Execute;
    input n4109;
    input \XferType[0] ;
    input D_out_0;
    output XferEnd_N_599;
    output RAMRD;
    output nDMA_c;
    output SetFault;
    input PHI2_N_570;
    input n4098;
    output RAMWR;
    input Length1_N_644;
    output \nRESETr[1] ;
    input nRESET_c;
    input nWEDMA_N_5;
    input EndBlock;
    output n3773;
    input IncREUAg;
    input \REUA[6] ;
    output REUAOut_15__N_146;
    input \REUA[0] ;
    input \REUA[1] ;
    input \REUA[4] ;
    input \REUA[3] ;
    input \REUA[5] ;
    input \REUA[2] ;
    input \REUA[7] ;
    output n4096;
    output IncCA_N_630;
    input AutoloadEN;
    output n4095;
    input n4106;
    output REUAOut_7__N_193;
    input n4108;
    output REUAOut_15__N_148;
    input n4104;
    output CAOut_15__N_236;
    input n4107;
    output CAOut_7__N_281;
    input n4110;
    output n4094;
    
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(150[11:18])
    
    wire n3724, PHI2_N_570_enable_79, n3985, n4290, n4287, n4289, 
        SetFault_N_637, n3987, n3986, n3701, RAMWR_N_584, nWEDMA_N_610, 
        n4097, XferEnd_N_604, DMA_N_596, n4113, XferEnd_N_607, n16, 
        n12, n13, XferEnd_N_603, RAMRD_N_571, n4291, n4288;
    
    LUT4 i3678_4_lut (.A(n4101), .B(DMA), .C(n4103), .D(n3724), .Z(PHI2_N_570_enable_79)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i3678_4_lut.init = 16'hffbf;
    LUT4 RAMRD_N_583_bdd_4_lut_3744_4_lut (.A(n4101), .B(n4103), .C(BA_c), 
         .D(nWEDMA_c), .Z(n3985)) /* synthesis lut_function=(A (B)+!A !(B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(29[19:39])
    defparam RAMRD_N_583_bdd_4_lut_3744_4_lut.init = 16'h9ddd;
    LUT4 Execute_bdd_4_lut (.A(Execute), .B(n4109), .C(\XferType[0] ), 
         .D(D_out_0), .Z(n4290)) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;
    defparam Execute_bdd_4_lut.init = 16'ha280;
    LUT4 n4101_bdd_4_lut (.A(n4101), .B(XferEnd_N_599), .C(RAMRD), .D(BA_c), 
         .Z(n4287)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D))))) */ ;
    defparam n4101_bdd_4_lut.init = 16'h2333;
    LUT4 Execute_bdd_4_lut_3874 (.A(XferEnd_N_599), .B(n4109), .C(\XferType[0] ), 
         .D(D_out_0), .Z(n4289)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam Execute_bdd_4_lut_3874.init = 16'h5140;
    LUT4 DMA_I_0_1_lut (.A(DMA), .Z(nDMA_c)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(54[15:19])
    defparam DMA_I_0_1_lut.init = 16'h5555;
    FD1S3IX SetFault_119 (.D(SetFault_N_637), .CK(PHI2_N_570), .CD(nDMA_c), 
            .Q(SetFault)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(144[8] 147[4])
    defparam SetFault_119.GSR = "ENABLED";
    LUT4 RAMRD_N_583_bdd_3_lut_3745 (.A(Execute), .B(n4101), .C(n4103), 
         .Z(n3987)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam RAMRD_N_583_bdd_3_lut_3745.init = 16'ha2a2;
    LUT4 n3985_bdd_2_lut (.A(n3985), .B(XferEnd_N_599), .Z(n3986)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n3985_bdd_2_lut.init = 16'h2222;
    LUT4 i1_4_lut (.A(DMA), .B(n4101), .C(n3701), .D(n4103), .Z(RAMWR_N_584)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam i1_4_lut.init = 16'ha022;
    FD1P3AX nWEDMA_115 (.D(nWEDMA_N_610), .SP(PHI2_N_570_enable_79), .CK(PHI2_N_570), 
            .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam nWEDMA_115.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(XferEnd_N_599), .B(n4098), .C(BA_c), .D(RAMWR), 
         .Z(n3701)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    LUT4 i1_3_lut (.A(Length1_N_644), .B(n4097), .C(SetFault), .Z(XferEnd_N_604)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(112[4:52])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd_N_599), .C(DMA), .Z(DMA_N_596)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    FD1P3AX RAMWR_117 (.D(RAMWR_N_584), .SP(PHI2_N_570_enable_79), .CK(PHI2_N_570), 
            .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam RAMWR_117.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_570), .Q(\nRESETr[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(151[8:61])
    defparam nRESETr_i1.GSR = "ENABLED";
    LUT4 i3559_4_lut_4_lut (.A(SetFault), .B(nWEDMA_N_5), .C(Length1_N_644), 
         .D(EndBlock), .Z(n3773)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(142[46:66])
    defparam i3559_4_lut_4_lut.init = 16'hffd0;
    LUT4 BA_I_0_2_lut_rep_72 (.A(BA_c), .B(Length1_N_644), .Z(n4113)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(109[18:31])
    defparam BA_I_0_2_lut_rep_72.init = 16'h8888;
    LUT4 XferEnd_I_144_2_lut_3_lut (.A(BA_c), .B(Length1_N_644), .C(RAMWR), 
         .Z(XferEnd_N_607)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(109[18:31])
    defparam XferEnd_I_144_2_lut_3_lut.init = 16'h8080;
    FD1S3AX DMA_114 (.D(DMA_N_596), .CK(PHI2_N_570), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam DMA_114.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(IncREUAg), .B(n16), .C(n12), .D(\REUA[6] ), .Z(REUAOut_15__N_146)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(n13), .B(\REUA[0] ), .C(\REUA[1] ), .D(\REUA[4] ), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(\REUA[3] ), .B(\REUA[5] ), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i4_2_lut (.A(\REUA[2] ), .B(\REUA[7] ), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    PFUMX XferEnd_I_142 (.BLUT(XferEnd_N_604), .ALUT(XferEnd_N_607), .C0(n4098), 
          .Z(XferEnd_N_603)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;
    LUT4 DMA_I_0_129_2_lut_rep_55 (.A(DMA), .B(XferEnd_N_599), .Z(n4096)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam DMA_I_0_129_2_lut_rep_55.init = 16'h8888;
    PFUMX i3731 (.BLUT(n3987), .ALUT(n3986), .C0(DMA), .Z(nWEDMA_N_610));
    LUT4 DMA_I_0_2_lut (.A(DMA), .B(BA_c), .Z(IncCA_N_630)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(116[2:11])
    defparam DMA_I_0_2_lut.init = 16'h8888;
    FD1P3AX RAMRD_116 (.D(RAMRD_N_571), .SP(PHI2_N_570_enable_79), .CK(PHI2_N_570), 
            .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam RAMRD_116.GSR = "ENABLED";
    LUT4 AutoloadEN_I_0_2_lut_rep_54_3_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(AutoloadEN), .Z(n4095)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam AutoloadEN_I_0_2_lut_rep_54_3_lut.init = 16'h8080;
    LUT4 Autoload_I_0_729_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n4106), .D(AutoloadEN), .Z(REUAOut_7__N_193)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam Autoload_I_0_729_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i2_3_lut_rep_56 (.A(n4103), .B(BA_c), .C(n4101), .Z(n4097)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_56.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(n4103), .B(BA_c), .C(n4101), .D(nWEDMA_N_5), 
         .Z(SetFault_N_637)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0080;
    L6MUX21 i3877 (.D0(n4291), .D1(n4288), .SD(n4103), .Z(RAMRD_N_571));
    PFUMX i3875 (.BLUT(n4290), .ALUT(n4289), .C0(DMA), .Z(n4291));
    LUT4 Autoload_I_0_720_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n4108), .D(AutoloadEN), .Z(REUAOut_15__N_148)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam Autoload_I_0_720_2_lut_3_lut_4_lut.init = 16'h8f0f;
    PFUMX i3872 (.BLUT(Execute), .ALUT(n4287), .C0(DMA), .Z(n4288));
    LUT4 i3510_2_lut_3_lut (.A(DMA), .B(XferEnd_N_599), .C(BA_c), .Z(n3724)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam i3510_2_lut_3_lut.init = 16'hf8f8;
    LUT4 Autoload_I_0_742_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n4104), .D(AutoloadEN), .Z(CAOut_15__N_236)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam Autoload_I_0_742_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 Autoload_I_0_786_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n4107), .D(AutoloadEN), .Z(CAOut_7__N_281)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam Autoload_I_0_786_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 XferEnd_I_0_126_4_lut (.A(\nRESETr[1] ), .B(n4113), .C(XferEnd_N_603), 
         .D(n4103), .Z(XferEnd_N_599)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(105[2] 112[54])
    defparam XferEnd_I_0_126_4_lut.init = 16'hf5dd;
    LUT4 Autoload_I_0_2_lut_rep_53_3_lut_4_lut (.A(DMA), .B(XferEnd_N_599), 
         .C(n4110), .D(AutoloadEN), .Z(n4094)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(104[2] 112[54])
    defparam Autoload_I_0_2_lut_rep_53_3_lut_4_lut.init = 16'h8f0f;
    
endmodule
//
// Verilog Description of module RAMctrl
//

module RAMctrl (S, RAMRD, RAMWR, C8M_c, nCS_c, RBA_c_0, \REUA[21] , 
            nRAS_c, nCAS_c, nRWE_c, CKE_c, RA_0_0, n1, WRDr, PHI2_N_570, 
            D_out_0, DQML_c, A_0__N_96, nRESET_c, GND_net, VCC_net, 
            RCLK_c, DQMH_c, \REUA[0] , RAMRDD, RD_out_0, C8M_N_45, 
            PHI2_c, RBA_c_1, \REUA[22] , n4343, RA_0_1, n1_adj_2, 
            RA_0_2, n1_adj_3, RA_0_3, RA_0_4, n1_adj_4, RA_0_5, 
            n1_adj_5, RA_0_6, RA_0_7, RA_0_8, RA_0_9, \REUA[18] , 
            RA_0_10, RA_0_11, \REUA[20] , D_out_1, D_out_2, D_out_3, 
            D_out_4, D_out_5, D_out_6, D_out_7, n1114, RD_out_1, 
            RD_out_2, RD_out_3, RD_out_4, RD_out_5, RD_out_6, RD_out_7, 
            \REUA[15] , \REUA[7] , \REUA[12] , \REUA[4] , \REUA[16] , 
            \REUA[8] , \REUA[17] , \REUA[23] , \REUA[19] ) /* synthesis syn_module_defined=1 */ ;
    output [2:0]S;
    input RAMRD;
    input RAMWR;
    input C8M_c;
    output nCS_c;
    output RBA_c_0;
    input \REUA[21] ;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output RA_0_0;
    input n1;
    output [7:0]WRDr;
    input PHI2_N_570;
    input D_out_0;
    output DQML_c;
    input A_0__N_96;
    input nRESET_c;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    output DQMH_c;
    input \REUA[0] ;
    output [7:0]RAMRDD;
    input RD_out_0;
    input C8M_N_45;
    input PHI2_c;
    output RBA_c_1;
    input \REUA[22] ;
    input n4343;
    output RA_0_1;
    input n1_adj_2;
    output RA_0_2;
    input n1_adj_3;
    output RA_0_3;
    output RA_0_4;
    input n1_adj_4;
    output RA_0_5;
    input n1_adj_5;
    output RA_0_6;
    output RA_0_7;
    output RA_0_8;
    output RA_0_9;
    input \REUA[18] ;
    output RA_0_10;
    output RA_0_11;
    input \REUA[20] ;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    output n1114;
    input RD_out_1;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    input \REUA[15] ;
    input \REUA[7] ;
    input \REUA[12] ;
    input \REUA[4] ;
    input \REUA[16] ;
    input \REUA[8] ;
    input \REUA[17] ;
    input \REUA[23] ;
    input \REUA[19] ;
    
    wire C8M_c /* synthesis SET_AS_NETWORK=C8M_c, is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(150[11:18])
    wire C8M_N_45 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(36[11:16])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire [2:0]S_c;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[11:12])
    
    wire C8M_c_enable_1, InitDone, RefCnt_2__N_60, n3550, RDD_7__N_62, 
        n4;
    wire [1:0]PHI2r;   // //mac/icloud/repos/gw4302/cpld/ram.v(36[11:16])
    
    wire n6, nCS_N_64, n1172, nRAS_N_84, n1206, nRWE_N_86, CKE_N_89, 
        nRESETr;
    wire [2:0]n2;
    wire [2:0]n26;
    wire [2:0]RefCnt;   // //mac/icloud/repos/gw4302/cpld/ram.v(60[11:17])
    wire [2:0]n14;
    
    wire RDOE, n1535, RDOE_N_100, n1556, n4120;
    wire [2:0]S_2__N_51;
    
    wire n4124, n4116, n1205, n3752, PORDone, n4123, n1_adj_664, 
        n1_adj_667, n1_adj_668, n1_adj_669, n1321, n3, n4122, n2601, 
        n3_adj_670, n3560, n2542, n4125, n3753, C8M_c_enable_3, 
        n1287, n4_adj_671;
    
    LUT4 i2_3_lut_rep_89 (.A(S[0]), .B(S_c[1]), .C(S_c[2]), .Z(C8M_c_enable_1)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_89.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(S[0]), .B(S_c[1]), .C(S_c[2]), .D(InitDone), 
         .Z(RefCnt_2__N_60)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h8000;
    LUT4 i3625_2_lut_3_lut (.A(S[0]), .B(S_c[2]), .C(S_c[1]), .Z(n3550)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3625_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i2_3_lut_4_lut (.A(S[0]), .B(S_c[2]), .C(RAMRD), .D(S_c[1]), 
         .Z(RDD_7__N_62)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut (.A(RAMRD), .B(RAMWR), .C(InitDone), .Z(n4)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(105[13] 118[7])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    FD1S3AX PHI2r_1__136 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(38[8:44])
    defparam PHI2r_1__136.GSR = "ENABLED";
    LUT4 i14_3_lut_4_lut (.A(RAMRD), .B(RAMWR), .C(InitDone), .D(S[0]), 
         .Z(n6)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(105[13] 118[7])
    defparam i14_3_lut_4_lut.init = 16'h1f10;
    FD1S3AX nCS_140 (.D(nCS_N_64), .CK(C8M_c), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nCS_140.GSR = "ENABLED";
    FD1S3IX RBA_i1 (.D(\REUA[21] ), .CK(C8M_c), .CD(n1172), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RBA_i1.GSR = "ENABLED";
    FD1S3AX nRAS_141 (.D(nRAS_N_84), .CK(C8M_c), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nRAS_141.GSR = "ENABLED";
    FD1S3JX nCAS_142 (.D(n1206), .CK(C8M_c), .PD(S_c[1]), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nCAS_142.GSR = "ENABLED";
    FD1S3AX nRWE_143 (.D(nRWE_N_86), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nRWE_143.GSR = "ENABLED";
    FD1S3AX CKE_144 (.D(CKE_N_89), .CK(C8M_c), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam CKE_144.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n1), .CK(C8M_c), .CD(n1172), .Q(RA_0_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_570), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3JX DQML_148 (.D(A_0__N_96), .CK(C8M_c), .PD(n3550), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam DQML_148.GSR = "ENABLED";
    FD1S3AX nRESETr_133 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(32[8:41])
    defparam nRESETr_133.GSR = "ENABLED";
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(C8M_c), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(58[10] 65[32])
    defparam rclk_oddr.GSR = "ENABLED";
    LUT4 i776_2_lut (.A(S_c[1]), .B(S[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i776_2_lut.init = 16'h6666;
    LUT4 i783_3_lut (.A(S_c[2]), .B(S_c[1]), .C(S[0]), .Z(n2[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i783_3_lut.init = 16'h6a6a;
    LUT4 i3119_3_lut (.A(n26[2]), .B(RefCnt[1]), .C(RefCnt[0]), .Z(n14[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i3119_3_lut.init = 16'h6a6a;
    LUT4 i3112_2_lut (.A(RefCnt[1]), .B(RefCnt[0]), .Z(n14[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i3112_2_lut.init = 16'h6666;
    FD1S3IX RDOE_151 (.D(RDOE_N_100), .CK(C8M_c), .CD(n1535), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(249[8:54])
    defparam RDOE_151.GSR = "ENABLED";
    FD1S3JX DQMH_147 (.D(\REUA[0] ), .CK(C8M_c), .PD(n3550), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam DQMH_147.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(RefCnt[1]), .B(RefCnt_2__N_60), .C(n26[2]), .D(RefCnt[0]), 
         .Z(n1556)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0080;
    FD1S3IX S__i0 (.D(S_2__N_51[0]), .CK(C8M_c), .CD(n4120), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i0.GSR = "ENABLED";
    LUT4 i3110_1_lut (.A(RefCnt[0]), .Z(n14[0])) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i3110_1_lut.init = 16'h5555;
    LUT4 i2378_4_lut (.A(S_c[1]), .B(S[0]), .C(n4124), .D(n4116), .Z(n1205)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;
    defparam i2378_4_lut.init = 16'h373f;
    FD1S3AX PHI2r_0__135 (.D(PHI2_c), .CK(C8M_N_45), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(37[8:40])
    defparam PHI2r_0__135.GSR = "ENABLED";
    FD1P3IX RefCnt_264__i0 (.D(n14[0]), .SP(RefCnt_2__N_60), .CD(n1556), 
            .CK(C8M_c), .Q(RefCnt[0]));   // //mac/icloud/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_264__i0.GSR = "ENABLED";
    LUT4 i3538_3_lut_4_lut (.A(n4116), .B(n4124), .C(S_c[1]), .D(n6), 
         .Z(n3752)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(136[8:47])
    defparam i3538_3_lut_4_lut.init = 16'he0ef;
    FD1S3IX RBA_i2 (.D(\REUA[22] ), .CK(C8M_c), .CD(n1172), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RBA_i2.GSR = "ENABLED";
    FD1P3AX PORDone_134 (.D(n4343), .SP(nRESETr), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:49])
    defparam PORDone_134.GSR = "ENABLED";
    FD1P3AX InitDone_138 (.D(n4343), .SP(C8M_c_enable_1), .CK(C8M_c), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(57[8:58])
    defparam InitDone_138.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n1_adj_2), .CK(C8M_c), .CD(n1172), .Q(RA_0_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_75 (.A(RAMRD), .B(n4123), .C(RAMWR), .Z(n4116)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(136[8:37])
    defparam i2_3_lut_rep_75.init = 16'h3b3b;
    FD1S3IX RA_i3 (.D(n1_adj_3), .CK(C8M_c), .CD(n1172), .Q(RA_0_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n1_adj_664), .CK(C8M_c), .CD(n1172), .Q(RA_0_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n1_adj_4), .CK(C8M_c), .CD(n1172), .Q(RA_0_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3JX RA_i6 (.D(n1_adj_5), .CK(C8M_c), .PD(n1172), .Q(RA_0_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n1_adj_667), .CK(C8M_c), .CD(n1172), .Q(RA_0_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n1_adj_668), .CK(C8M_c), .CD(n1172), .Q(RA_0_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1S3IX RA_i9 (.D(n1_adj_669), .CK(C8M_c), .CD(n1172), .Q(RA_0_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(\REUA[18] ), .CK(C8M_c), .PD(n1321), .Q(RA_0_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3IX RA_i11 (.D(n3), .CK(C8M_c), .CD(S_c[2]), .Q(RA_0_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3IX RA_i12 (.D(\REUA[20] ), .CK(C8M_c), .CD(n1321), .Q(RA_0_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i12.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_570), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_570), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_570), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_570), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_570), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_570), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_570), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 S_2__I_0_174_i7_3_lut_4_lut (.A(n4123), .B(n4122), .C(S_c[2]), 
         .D(n2601), .Z(nCS_N_64)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_174_i7_3_lut_4_lut.init = 16'he0ef;
    LUT4 i920_1_lut (.A(RDOE), .Z(n1114)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(250[8:10])
    defparam i920_1_lut.init = 16'h5555;
    LUT4 S_2__I_0_175_i7_3_lut_4_lut (.A(n4123), .B(n4122), .C(S_c[2]), 
         .D(n3_adj_670), .Z(nRAS_N_84)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_175_i7_3_lut_4_lut.init = 16'hefe0;
    PFUMX S_2__I_0_178_i7 (.BLUT(n1205), .ALUT(n3560), .C0(S_c[2]), .Z(nRWE_N_86)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_62), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i7.GSR = "ENABLED";
    LUT4 S_2__I_0_174_i3_4_lut (.A(InitDone), .B(n2542), .C(S_c[1]), .D(n4125), 
         .Z(n2601)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_174_i3_4_lut.init = 16'hcac0;
    LUT4 i1001_4_lut_4_lut (.A(n4123), .B(S[0]), .C(n4), .D(S_c[2]), 
         .Z(n1206)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(D))) */ ;
    defparam i1001_4_lut_4_lut.init = 16'hee3f;
    LUT4 i3539_3_lut_3_lut (.A(n4123), .B(S[0]), .C(S_c[1]), .Z(n3753)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam i3539_3_lut_3_lut.init = 16'hc1c1;
    FD1P3IX S__i1 (.D(n2[1]), .SP(C8M_c_enable_3), .CD(n1287), .CK(C8M_c), 
            .Q(S_c[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n2[2]), .SP(C8M_c_enable_3), .CD(n1287), .CK(C8M_c), 
            .Q(S_c[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i2.GSR = "ENABLED";
    FD1P3IX RefCnt_264__i2 (.D(n14[2]), .SP(RefCnt_2__N_60), .CD(n1556), 
            .CK(C8M_c), .Q(n26[2]));   // //mac/icloud/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_264__i2.GSR = "ENABLED";
    FD1P3IX RefCnt_264__i1 (.D(n14[1]), .SP(RefCnt_2__N_60), .CD(n1556), 
            .CK(C8M_c), .Q(RefCnt[1]));   // //mac/icloud/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_264__i1.GSR = "ENABLED";
    PFUMX i3540 (.BLUT(n3752), .ALUT(n3753), .C0(S_c[2]), .Z(CKE_N_89));
    LUT4 S_2__I_0_159_i1_3_lut (.A(\REUA[15] ), .B(\REUA[7] ), .C(S[0]), 
         .Z(n1_adj_667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_159_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_162_i1_3_lut (.A(\REUA[12] ), .B(\REUA[4] ), .C(S[0]), 
         .Z(n1_adj_664)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_162_i1_3_lut.init = 16'hcaca;
    LUT4 i2230_3_lut_4_lut (.A(S[0]), .B(n1172), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(S_2__N_51[0])) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(47[11:23])
    defparam i2230_3_lut_4_lut.init = 16'h4544;
    LUT4 i1080_1_lut_rep_79 (.A(PORDone), .Z(n4120)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:49])
    defparam i1080_1_lut_rep_79.init = 16'h5555;
    LUT4 S_2__I_0_158_i1_3_lut (.A(\REUA[16] ), .B(\REUA[8] ), .C(S[0]), 
         .Z(n1_adj_668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_158_i1_3_lut.init = 16'hcaca;
    LUT4 i1081_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_3), .Z(n1287)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:49])
    defparam i1081_2_lut_4_lut_4_lut.init = 16'h5575;
    LUT4 equal_12_i4_2_lut_rep_80 (.A(S_c[1]), .B(S_c[2]), .Z(n1172)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(47[11:23])
    defparam equal_12_i4_2_lut_rep_80.init = 16'heeee;
    LUT4 i3652_2_lut_3_lut (.A(S_c[1]), .B(S_c[2]), .C(S[0]), .Z(RDOE_N_100)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(47[11:23])
    defparam i3652_2_lut_3_lut.init = 16'h1010;
    LUT4 equal_12_i5_2_lut_rep_78_3_lut (.A(S_c[1]), .B(S_c[2]), .C(S[0]), 
         .Z(C8M_c_enable_3)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(47[11:23])
    defparam equal_12_i5_2_lut_rep_78_3_lut.init = 16'hfefe;
    LUT4 S_2__I_0_157_i1_3_lut (.A(\REUA[17] ), .B(\REUA[23] ), .C(S[0]), 
         .Z(n1_adj_669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_157_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_81 (.A(S[0]), .B(S_c[1]), .Z(n4122)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_rep_81.init = 16'heeee;
    LUT4 S_2__I_0_175_i3_4_lut (.A(InitDone), .B(n2542), .C(S_c[1]), .D(n4_adj_671), 
         .Z(n3_adj_670)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_175_i3_4_lut.init = 16'h3f35;
    LUT4 S_2__I_0_154_i3_4_lut (.A(\REUA[19] ), .B(S_c[2]), .C(S_c[1]), 
         .D(S[0]), .Z(n3)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_154_i3_4_lut.init = 16'h303a;
    LUT4 i1_2_lut_3_lut_adj_171 (.A(S[0]), .B(S_c[1]), .C(InitDone), .Z(n3560)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_3_lut_adj_171.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_172 (.A(S[0]), .B(S_c[1]), .C(S_c[2]), .Z(n1321)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_3_lut_adj_172.init = 16'hfefe;
    LUT4 i2235_3_lut_rep_82 (.A(RefCnt[0]), .B(InitDone), .C(RefCnt[1]), 
         .Z(n4123)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(158[13] 171[7])
    defparam i2235_3_lut_rep_82.init = 16'hc8c8;
    LUT4 WRCMD_I_0_2_lut_rep_83 (.A(RAMWR), .B(InitDone), .Z(n4124)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(54[15:32])
    defparam WRCMD_I_0_2_lut_rep_83.init = 16'h8888;
    LUT4 i1328_1_lut_2_lut (.A(RAMWR), .B(InitDone), .Z(n1535)) /* synthesis lut_function=(!(A (B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(54[15:32])
    defparam i1328_1_lut_2_lut.init = 16'h7777;
    LUT4 i2344_2_lut_3_lut_4_lut (.A(RAMWR), .B(InitDone), .C(S[0]), .D(n4116), 
         .Z(n2542)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(54[15:32])
    defparam i2344_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 RDCMDg_I_0_180_2_lut_rep_84 (.A(RAMRD), .B(RAMWR), .Z(n4125)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(82[17:33])
    defparam RDCMDg_I_0_180_2_lut_rep_84.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_173 (.A(RAMRD), .B(RAMWR), .C(S[0]), .Z(n4_adj_671)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(82[17:33])
    defparam i1_2_lut_3_lut_adj_173.init = 16'hf1f1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module REUReg
//

module REUReg (A_out_0, GND_net, REUAOut_15__N_148, REUA, n3772, A_out_3, 
            PHI2_N_570, D_out_7, D_out_4, A_out_1, AutoloadEN, D_out_5, 
            n4110, A_out_4, FF00DecodeEN, D_out_1, D_out_0, REUAOut_15__N_146, 
            \REUA[8] , \REUA[9] , n4095, n4108, Length1_N_644, CA, 
            XferType, n4109, n4103, n4098, D_out_2, SetFault, n4111, 
            D_out_3, D_out_6, n4343, n4112, \REUA[7] , \REUA[21] , 
            \Length[6] , \REUA[22] , \REUA[6] , \REUA[5] , \REUA[4] , 
            \REUA[3] , \REUA[2] , \REUA[1] , \REUA[0] , \REUA[15] , 
            EndBlock, IncCA_N_630, n3773, \REUA[19] , \REUA[14] , 
            \REUA[13] , \REUA[12] , n4101, \REUA[23] , \REUA[18] , 
            \REUA[17] , \REUA[16] , ExecuteEN, n3921, A_out_2, n4114, 
            A_0__N_96, n3744, n18, Execute, n4118, n4129, n4104, 
            n3555, n428, DF01Reserved6, n4107, \REUA[20] , n4020, 
            IncREUAg, n4106, RAMWR, REUAOut_7__N_193, CAOut_15__N_236, 
            nIRQ_c, n2307, CAOut_7__N_281, \S[0] , n1, \nRESETr[1] , 
            DMA, n4094, n4096, n4039, XferEnd_N_599, \RAMRDD[6] , 
            \Dout[6] , n1_adj_1, n4034, n3926, n356, n4027) /* synthesis syn_module_defined=1 */ ;
    input A_out_0;
    input GND_net;
    input REUAOut_15__N_148;
    output [23:0]REUA;
    input n3772;
    input A_out_3;
    input PHI2_N_570;
    input D_out_7;
    input D_out_4;
    input A_out_1;
    output AutoloadEN;
    input D_out_5;
    output n4110;
    input A_out_4;
    output FF00DecodeEN;
    input D_out_1;
    input D_out_0;
    input REUAOut_15__N_146;
    output \REUA[8] ;
    output \REUA[9] ;
    input n4095;
    output n4108;
    output Length1_N_644;
    output [15:0]CA;
    output [1:0]XferType;
    output n4109;
    output n4103;
    output n4098;
    input D_out_2;
    input SetFault;
    input n4111;
    input D_out_3;
    input D_out_6;
    input n4343;
    input n4112;
    output \REUA[7] ;
    output \REUA[21] ;
    output \Length[6] ;
    output \REUA[22] ;
    output \REUA[6] ;
    output \REUA[5] ;
    output \REUA[4] ;
    output \REUA[3] ;
    output \REUA[2] ;
    output \REUA[1] ;
    output \REUA[0] ;
    output \REUA[15] ;
    output EndBlock;
    input IncCA_N_630;
    input n3773;
    output \REUA[19] ;
    output \REUA[14] ;
    output \REUA[13] ;
    output \REUA[12] ;
    output n4101;
    output \REUA[23] ;
    output \REUA[18] ;
    output \REUA[17] ;
    output \REUA[16] ;
    output ExecuteEN;
    output n3921;
    input A_out_2;
    input n4114;
    output A_0__N_96;
    input n3744;
    input n18;
    output Execute;
    input n4118;
    output n4129;
    output n4104;
    input n3555;
    output n428;
    output DF01Reserved6;
    output n4107;
    output \REUA[20] ;
    output n4020;
    output IncREUAg;
    output n4106;
    input RAMWR;
    input REUAOut_7__N_193;
    input CAOut_15__N_236;
    output nIRQ_c;
    output n2307;
    input CAOut_7__N_281;
    input \S[0] ;
    output n1;
    input \nRESETr[1] ;
    input DMA;
    input n4094;
    input n4096;
    output n4039;
    input XferEnd_N_599;
    input \RAMRDD[6] ;
    output \Dout[6] ;
    input n1_adj_1;
    output n4034;
    output n3926;
    input n356;
    output n4027;
    
    wire PHI2_N_570 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(150[11:18])
    
    wire n4022, n4021, n4023, n3339;
    wire [18:0]REUAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(46[12:23])
    wire [23:0]REUA_c;   // //mac/icloud/repos/gw4302/cpld/reu.v(39[14:18])
    wire [7:0]REUAOut_15__N_145;
    
    wire n3340, n9, n10, PHI2_N_570_enable_72, n4341, PHI2_N_570_enable_68, 
        n4131;
    wire [7:0]n362;
    
    wire n3922, n3923;
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(50[12:18])
    
    wire n3917, PHI2_N_570_enable_77, n2505, n3732;
    wire [7:0]n338;
    
    wire n4033, PHI2_N_570_enable_75, n4035;
    wire [15:0]CAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(41[12:21])
    
    wire PHI2_N_570_enable_24, n3338, n17, n30, n26, n18_c;
    wire [3:2]DF01Reserved32;   // //mac/icloud/repos/gw4302/cpld/reg.v(33[11:25])
    
    wire n4038, n21, n28;
    wire [7:0]n303;
    wire [1:0]XferType_c;   // //mac/icloud/repos/gw4302/cpld/reg.v(37[11:19])
    
    wire n2509, n6;
    wire [7:0]CAOut_7__N_280;
    wire [7:0]n302;
    
    wire Fault, n1170, PHI2_N_570_enable_76, n3693, PHI2_N_570_enable_63, 
        n1385;
    wire [1:0]IncMode;   // //mac/icloud/repos/gw4302/cpld/reg.v(60[11:18])
    
    wire IncCAg;
    wire [2:0]n301;
    wire [2:0]n304;
    wire [7:0]n308;
    
    wire n3742;
    wire [7:0]REUAOut_7__N_192;
    
    wire n3726, n16, PHI2_N_570_enable_78;
    wire [7:0]n350;
    
    wire n4016, n4126, n4017;
    wire [15:0]LengthWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(51[12:25])
    
    wire PHI2_N_570_enable_35, n1227, n1225;
    wire [7:0]n305;
    
    wire n2438;
    wire [7:0]n938;
    
    wire Length_1__N_470, Length_4__N_455, n1239, Length_7__N_439, n1237, 
        n1235, n1233, n1231, Length_3__N_460, Length_0__N_475, n1229, 
        n6_adj_653, IntEnable, PHI2_N_570_enable_42, PHI2_N_570_enable_74, 
        n3308;
    wire [7:0]Length_7__N_442;
    
    wire n3309, Length_2__N_465, EndBlockMask, Length_6__N_445, Length_5__N_450, 
        n4117;
    wire [7:0]n322;
    
    wire FaultMask, n3920, n3919, n3795, n3543;
    wire [7:0]n939;
    
    wire Length_15__N_392, Length_8__N_434, Length_9__N_429, Length_10__N_424, 
        PHI2_N_570_enable_62, Length_11__N_419, Length_12__N_414, Length_13__N_409, 
        Length_14__N_404, n4102, n4024, PHI2_N_570_enable_86, n4018, 
        n4019, n3760;
    wire [7:0]n407;
    wire [7:0]n374;
    
    wire n4105, n5;
    wire [7:0]Length_15__N_395;
    
    wire n3333, n3332, n3331, n3330, n3325;
    wire [7:0]CAOut_15__N_233;
    
    wire n3324, n3323, n3322, CAOut_15__N_234, IRQ_N_535, n972, 
        n3346, n3345, n6_adj_655, n3344, n3343, n3317, n3316, 
        n3315, n3314, n3307, n3310, n3918, n15, n13, n10_adj_656, 
        REUAOut_18__N_129, n4093, n3758, n4091, n3341, n4026, n4028, 
        n4029, n4037, n17_adj_657, n15_adj_658, n11, n12, n4036, 
        n4032, n3925, n3924, n4031, n4025, n4030;
    
    PFUMX i3755 (.BLUT(n4022), .ALUT(n4021), .C0(A_out_0), .Z(n4023));
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_148), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(REUAOut_15__N_148), .C1(REUAWritten[11]), 
          .D1(REUA_c[11]), .CIN(n3339), .COUT(n3340), .S0(REUAOut_15__N_145[2]), 
          .S1(REUAOut_15__N_145[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    PFUMX i11 (.BLUT(n3772), .ALUT(n9), .C0(A_out_3), .Z(n10));
    FD1P3IX REUAWritten_7__626 (.D(D_out_7), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_7__626.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__645 (.D(D_out_4), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_12__645.GSR = "ENABLED";
    LUT4 A_4__I_0_825_i6_2_lut_rep_90 (.A(A_out_0), .B(A_out_1), .Z(n4131)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(75[2:14])
    defparam A_4__I_0_825_i6_2_lut_rep_90.init = 16'heeee;
    PFUMX i3691 (.BLUT(n362[0]), .ALUT(n3922), .C0(A_out_3), .Z(n3923));
    LUT4 n369_bdd_3_lut_3713 (.A(Length[9]), .B(A_out_1), .C(A_out_0), 
         .Z(n3917)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n369_bdd_3_lut_3713.init = 16'hfefe;
    FD1P3IX AutoloadEN_582 (.D(D_out_5), .SP(PHI2_N_570_enable_77), .CD(n4341), 
            .CK(PHI2_N_570), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam AutoloadEN_582.GSR = "ENABLED";
    LUT4 i2375_2_lut_rep_69_3_lut (.A(A_out_0), .B(A_out_1), .C(n2505), 
         .Z(n4110)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i2375_2_lut_rep_69_3_lut.init = 16'hfefe;
    LUT4 i3518_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(A_out_4), 
         .D(A_out_3), .Z(n3732)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i3518_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 REUA_4__bdd_4_lut (.A(n338[4]), .B(A_out_0), .C(A_out_1), .D(FF00DecodeEN), 
         .Z(n4033)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C))) */ ;
    defparam REUA_4__bdd_4_lut.init = 16'ha3af;
    FD1P3IX REUAWritten_17__659 (.D(D_out_1), .SP(PHI2_N_570_enable_75), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_17__659.GSR = "ENABLED";
    LUT4 n368_bdd_3_lut_3769 (.A(Length[10]), .B(A_out_1), .C(A_out_0), 
         .Z(n4035)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n368_bdd_3_lut_3769.init = 16'hfefe;
    FD1P3IX CAWritten_8__617 (.D(D_out_0), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_8__617.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_146), .B0(REUAOut_15__N_148), 
          .C0(REUAWritten[8]), .D0(\REUA[8] ), .A1(GND_net), .B1(REUAOut_15__N_148), 
          .C1(REUAWritten[9]), .D1(\REUA[9] ), .CIN(n3338), .COUT(n3339), 
          .S0(REUAOut_15__N_145[0]), .S1(REUAOut_15__N_145[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4095), .B1(n4108), .C1(GND_net), .D1(GND_net), 
          .COUT(n3338));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i3632_4_lut (.A(n17), .B(n30), .C(n26), .D(n18_c), .Z(Length1_N_644)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i3632_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(Length[0]), .B(Length[10]), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 n356_bdd_4_lut (.A(n338[2]), .B(DF01Reserved32[2]), .C(A_out_1), 
         .D(A_out_0), .Z(n4038)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n356_bdd_4_lut.init = 16'haca0;
    LUT4 i14_4_lut (.A(n21), .B(n28), .C(Length[7]), .D(Length[12]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i14_4_lut.init = 16'hfffe;
    FD1S3IX CA_7__586 (.D(n303[7]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_7__586.GSR = "ENABLED";
    FD1P3IX CAWritten_9__616 (.D(D_out_1), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_9__616.GSR = "ENABLED";
    LUT4 i3636_2_lut_rep_57_4_lut (.A(XferType[0]), .B(D_out_0), .C(n4109), 
         .D(n4103), .Z(n4098)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(119[27:62])
    defparam i3636_2_lut_rep_57_4_lut.init = 16'h5300;
    LUT4 i10_4_lut (.A(Length[9]), .B(Length[3]), .C(Length[2]), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i10_4_lut.init = 16'hfffe;
    FD1P3IX CAWritten_10__615 (.D(D_out_2), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_10__615.GSR = "ENABLED";
    LUT4 i2311_2_lut_4_lut (.A(XferType_c[1]), .B(D_out_1), .C(n4109), 
         .D(SetFault), .Z(n2509)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(119[27:62])
    defparam i2311_2_lut_4_lut.init = 16'hac00;
    LUT4 mux_171_i8_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_7), .D(CAOut_7__N_280[7]), 
         .Z(n303[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_11__614 (.D(D_out_3), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_11__614.GSR = "ENABLED";
    FD1P3IX REUAWritten_18__658 (.D(D_out_2), .SP(PHI2_N_570_enable_75), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_18__658.GSR = "ENABLED";
    FD1S3IX CA_6__587 (.D(n303[6]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_6__587.GSR = "ENABLED";
    LUT4 mux_171_i7_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_6), .D(CAOut_7__N_280[6]), 
         .Z(n303[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i6_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_5), .D(CAOut_7__N_280[5]), 
         .Z(n303[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i5_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_4), .D(CAOut_7__N_280[4]), 
         .Z(n303[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i5_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_5__588 (.D(n303[5]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_5__588.GSR = "ENABLED";
    FD1S3IX CA_4__589 (.D(n303[4]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_4__589.GSR = "ENABLED";
    FD1S3IX CA_3__590 (.D(n303[3]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_3__590.GSR = "ENABLED";
    FD1S3IX CA_2__591 (.D(n303[2]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_2__591.GSR = "ENABLED";
    FD1S3IX CA_1__592 (.D(n303[1]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_1__592.GSR = "ENABLED";
    FD1S3IX CA_0__593 (.D(n303[0]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_0__593.GSR = "ENABLED";
    FD1S3IX CA_15__602 (.D(n302[7]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_15__602.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(Length[11]), .B(Length[8]), .Z(n18_c)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX Fault_579 (.D(n4343), .SP(SetFault), .CD(n1170), .CK(PHI2_N_570), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam Fault_579.GSR = "ENABLED";
    FD1P3AX FF00DecodeEN_583 (.D(n3693), .SP(PHI2_N_570_enable_76), .CK(PHI2_N_570), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam FF00DecodeEN_583.GSR = "ENABLED";
    FD1P3IX CAWritten_12__613 (.D(D_out_4), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_12__613.GSR = "ENABLED";
    LUT4 mux_171_i4_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_3), .D(CAOut_7__N_280[3]), 
         .Z(n303[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i3_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_2), .D(CAOut_7__N_280[2]), 
         .Z(n303[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i2_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_1), .D(CAOut_7__N_280[1]), 
         .Z(n303[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_13__612 (.D(D_out_5), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_13__612.GSR = "ENABLED";
    FD1P3IX CAWritten_14__611 (.D(D_out_6), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_14__611.GSR = "ENABLED";
    FD1P3IX CAWritten_2__599 (.D(D_out_2), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_2__599.GSR = "ENABLED";
    FD1S3IX CA_14__603 (.D(n302[6]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_14__603.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_161 (.A(n1385), .B(IncMode[1]), .Z(IncCAg)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_161.init = 16'h2222;
    LUT4 mux_172_i3_3_lut_4_lut (.A(n6), .B(n4112), .C(D_out_2), .D(n301[2]), 
         .Z(n304[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_172_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i1_3_lut_4_lut (.A(n6), .B(n4111), .C(D_out_0), .D(CAOut_7__N_280[0]), 
         .Z(n303[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_171_i1_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_13__604 (.D(n302[5]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_13__604.GSR = "ENABLED";
    FD1S3IX CA_12__605 (.D(n302[4]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_12__605.GSR = "ENABLED";
    FD1S3IX CA_11__606 (.D(n302[3]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_11__606.GSR = "ENABLED";
    FD1S3IX CA_10__607 (.D(n302[2]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_10__607.GSR = "ENABLED";
    FD1S3IX CA_9__608 (.D(n302[1]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_9__608.GSR = "ENABLED";
    FD1S3IX CA_8__609 (.D(n302[0]), .CK(PHI2_N_570), .CD(n4341), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_8__609.GSR = "ENABLED";
    FD1S3IX REUA_7__618 (.D(n308[7]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_7__618.GSR = "ENABLED";
    FD1P3IX REUA_21__652 (.D(D_out_5), .SP(PHI2_N_570_enable_75), .CD(n4341), 
            .CK(PHI2_N_570), .Q(\REUA[21] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_21__652.GSR = "ENABLED";
    LUT4 i3528_4_lut (.A(Length[3]), .B(Length[7]), .C(Length[4]), .D(\Length[6] ), 
         .Z(n3742)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3528_4_lut.init = 16'hfffe;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_570_enable_77), 
            .CD(n4341), .CK(PHI2_N_570), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    LUT4 mux_176_i8_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_7), .D(REUAOut_7__N_192[7]), 
         .Z(n308[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 i7_4_lut (.A(n3726), .B(Length[2]), .C(n1385), .D(Length[0]), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i7_4_lut.init = 16'h0010;
    LUT4 i5_2_lut (.A(Length[15]), .B(Length[14]), .Z(n21)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i5_2_lut.init = 16'heeee;
    FD1P3IX REUA_22__651 (.D(D_out_6), .SP(PHI2_N_570_enable_75), .CD(n4341), 
            .CK(PHI2_N_570), .Q(\REUA[22] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_22__651.GSR = "ENABLED";
    LUT4 mux_172_i1_3_lut_4_lut (.A(n6), .B(n4112), .C(D_out_0), .D(n301[0]), 
         .Z(n304[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_172_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_570_enable_78), .CD(n4341), 
            .CK(PHI2_N_570), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 237[4])
    defparam IncMode__i0.GSR = "ENABLED";
    PFUMX i3749 (.BLUT(n350[5]), .ALUT(n4016), .C0(n4126), .Z(n4017));
    FD1P3IX REUAWritten_13__644 (.D(D_out_5), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_13__644.GSR = "ENABLED";
    FD1P3IX CAWritten_1__600 (.D(D_out_1), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_1__600.GSR = "ENABLED";
    FD1P3AX LengthWritten_8__692 (.D(n1227), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_8__692.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__691 (.D(n1225), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_9__691.GSR = "ENABLED";
    LUT4 i3512_2_lut (.A(Length[1]), .B(Length[5]), .Z(n3726)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3512_2_lut.init = 16'heeee;
    FD1S3IX REUA_6__619 (.D(n308[6]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_6__619.GSR = "ENABLED";
    LUT4 mux_172_i2_3_lut_4_lut (.A(n6), .B(n4112), .C(D_out_1), .D(n301[1]), 
         .Z(n304[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_172_i2_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_5__620 (.D(n308[5]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_5__620.GSR = "ENABLED";
    FD1S3IX REUA_4__621 (.D(n308[4]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_4__621.GSR = "ENABLED";
    FD1S3IX REUA_3__622 (.D(n308[3]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_3__622.GSR = "ENABLED";
    FD1S3IX REUA_2__623 (.D(n308[2]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_2__623.GSR = "ENABLED";
    FD1S3IX REUA_1__624 (.D(n308[1]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_1__624.GSR = "ENABLED";
    FD1S3IX REUA_0__625 (.D(n308[0]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_0__625.GSR = "ENABLED";
    FD1S3IX REUA_15__634 (.D(n305[7]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[15] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_15__634.GSR = "ENABLED";
    LUT4 mux_176_i7_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_6), .D(REUAOut_7__N_192[6]), 
         .Z(n308[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_176_i6_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_5), .D(REUAOut_7__N_192[5]), 
         .Z(n308[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_1__I_111_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_1), 
         .D(n938[1]), .Z(Length_1__N_470)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_111_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_4__I_105_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_4), 
         .D(n938[4]), .Z(Length_4__N_455)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_105_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_10__690 (.D(n1239), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_10__690.GSR = "ENABLED";
    LUT4 mux_176_i5_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_4), .D(REUAOut_7__N_192[4]), 
         .Z(n308[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_15__610 (.D(D_out_7), .SP(PHI2_N_570_enable_24), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_15__610.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(Length[5]), .B(Length[4]), .C(Length[13]), .D(\Length[6] ), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 mux_176_i4_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_3), .D(REUAOut_7__N_192[3]), 
         .Z(n308[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_7__I_99_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_7), 
         .D(n938[7]), .Z(Length_7__N_439)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_99_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_11__689 (.D(n1237), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_11__689.GSR = "ENABLED";
    FD1P3IX CAWritten_0__601 (.D(D_out_0), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_0__601.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__688 (.D(n1235), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_12__688.GSR = "ENABLED";
    FD1P3IX EndBlock_578 (.D(n3773), .SP(IncCA_N_630), .CD(n1170), .CK(PHI2_N_570), 
            .Q(EndBlock)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam EndBlock_578.GSR = "ENABLED";
    FD1P3IX REUA_19__654 (.D(D_out_3), .SP(PHI2_N_570_enable_75), .CD(n4341), 
            .CK(PHI2_N_570), .Q(\REUA[19] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_19__654.GSR = "ENABLED";
    FD1P3IX CAWritten_3__598 (.D(D_out_3), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_3__598.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__687 (.D(n1233), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_13__687.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__686 (.D(n1231), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_14__686.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__643 (.D(D_out_6), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_14__643.GSR = "ENABLED";
    FD1S3IX REUA_14__635 (.D(n305[6]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[14] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_14__635.GSR = "ENABLED";
    FD1S3IX REUA_13__636 (.D(n305[5]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[13] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_13__636.GSR = "ENABLED";
    FD1S3IX REUA_12__637 (.D(n305[4]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[12] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_12__637.GSR = "ENABLED";
    FD1S3IX REUA_11__638 (.D(n305[3]), .CK(PHI2_N_570), .CD(n4341), .Q(REUA_c[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_11__638.GSR = "ENABLED";
    FD1S3IX REUA_10__639 (.D(n305[2]), .CK(PHI2_N_570), .CD(n4341), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_10__639.GSR = "ENABLED";
    FD1S3IX REUA_9__640 (.D(n305[1]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_9__640.GSR = "ENABLED";
    FD1S3IX REUA_8__641 (.D(n305[0]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_8__641.GSR = "ENABLED";
    FD1S3IX XferType__i0 (.D(n4101), .CK(PHI2_N_570), .CD(n4341), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam XferType__i0.GSR = "ENABLED";
    LUT4 Length_3__I_107_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_3), 
         .D(n938[3]), .Z(Length_3__N_460)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_107_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_0__I_113_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_0), 
         .D(n938[0]), .Z(Length_0__N_475)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_113_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_15__642 (.D(D_out_7), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_15__642.GSR = "ENABLED";
    FD1P3IX REUA_23__650 (.D(D_out_7), .SP(PHI2_N_570_enable_75), .CD(n4341), 
            .CK(PHI2_N_570), .Q(\REUA[23] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_23__650.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__685 (.D(n1229), .SP(PHI2_N_570_enable_35), 
            .CK(PHI2_N_570), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_15__685.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__660 (.D(D_out_0), .SP(PHI2_N_570_enable_75), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_16__660.GSR = "ENABLED";
    LUT4 A_4__I_0_i6_2_lut (.A(A_out_0), .B(A_out_1), .Z(n6_adj_653)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(76[2:14])
    defparam A_4__I_0_i6_2_lut.init = 16'hdddd;
    FD1P3IX IntEnable_693 (.D(D_out_7), .SP(PHI2_N_570_enable_42), .CD(n4341), 
            .CK(PHI2_N_570), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam IntEnable_693.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__676 (.D(n1227), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_0__676.GSR = "ENABLED";
    FD1S3IX REUA_18__655 (.D(n304[2]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[18] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_18__655.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3308), .COUT(n3309), .S0(Length_7__N_442[3]), 
          .S1(Length_7__N_442[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    FD1S3IX REUA_17__656 (.D(n304[1]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[17] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_17__656.GSR = "ENABLED";
    FD1S3IX REUA_16__657 (.D(n304[0]), .CK(PHI2_N_570), .CD(n4341), .Q(\REUA[16] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_16__657.GSR = "ENABLED";
    LUT4 mux_176_i3_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_2), .D(REUAOut_7__N_192[2]), 
         .Z(n308[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_6__627 (.D(D_out_6), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_6__627.GSR = "ENABLED";
    LUT4 mux_176_i2_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_1), .D(REUAOut_7__N_192[1]), 
         .Z(n308[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_1__675 (.D(n1225), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_1__675.GSR = "ENABLED";
    LUT4 mux_176_i1_3_lut_4_lut (.A(n4131), .B(n4112), .C(D_out_0), .D(REUAOut_7__N_192[0]), 
         .Z(n308[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_176_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_2__I_109_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_2), 
         .D(n938[2]), .Z(Length_2__N_465)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_109_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX EndBlockMask_694 (.D(D_out_6), .SP(PHI2_N_570_enable_42), .CD(n4341), 
            .CK(PHI2_N_570), .Q(EndBlockMask)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam EndBlockMask_694.GSR = "ENABLED";
    LUT4 Length_6__I_101_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_6), 
         .D(n938[6]), .Z(Length_6__N_445)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_101_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_190_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n338[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_190_i8_3_lut.init = 16'hcaca;
    LUT4 Length_5__I_103_3_lut_4_lut (.A(n4112), .B(n2438), .C(D_out_5), 
         .D(n938[5]), .Z(Length_5__N_450)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_103_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_182_i8_3_lut (.A(n4117), .B(ExecuteEN), .C(A_out_0), .Z(n322[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_182_i8_3_lut.init = 16'hcaca;
    FD1P3IX FaultMask_695 (.D(D_out_5), .SP(PHI2_N_570_enable_42), .CD(n4341), 
            .CK(PHI2_N_570), .Q(FaultMask)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam FaultMask_695.GSR = "ENABLED";
    PFUMX i3689 (.BLUT(n3920), .ALUT(n3919), .C0(n3795), .Z(n3921));
    FD1P3IX REUAWritten_8__649 (.D(D_out_0), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_8__649.GSR = "ENABLED";
    LUT4 i3650_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3795)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i3650_2_lut.init = 16'heeee;
    FD1P3IX REUAWritten_9__648 (.D(D_out_1), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_9__648.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n6_adj_653), .B(n4111), .C(D_out_4), .D(n4341), 
         .Z(n3693)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0001;
    LUT4 XferType_1__I_0_i1_3_lut_rep_60_4_lut (.A(n6_adj_653), .B(n4111), 
         .C(D_out_0), .D(XferType[0]), .Z(n4101)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i1_3_lut_rep_60_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n6_adj_653), .B(n4111), .C(n4341), .D(D_out_7), 
         .Z(n3543)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3AX LengthWritten_2__674 (.D(n1239), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_2__674.GSR = "ENABLED";
    LUT4 XferType_1__I_0_i2_3_lut_rep_62_4_lut (.A(n6_adj_653), .B(n4111), 
         .C(D_out_1), .D(XferType_c[1]), .Z(n4103)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i2_3_lut_rep_62_4_lut.init = 16'hfe10;
    LUT4 Length_15__I_82_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_7), 
         .D(n939[7]), .Z(Length_15__N_392)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_82_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_8__I_96_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_0), 
         .D(n939[0]), .Z(Length_8__N_434)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_96_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_9__I_94_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_1), 
         .D(n939[1]), .Z(Length_9__N_429)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_94_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_4__597 (.D(D_out_4), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_4__597.GSR = "ENABLED";
    LUT4 Length_10__I_92_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_2), 
         .D(n939[2]), .Z(Length_10__N_424)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_92_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_2__666 (.D(Length_2__N_465), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_2__666.GSR = "ENABLED";
    FD1P3JX Length_3__665 (.D(Length_3__N_460), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_3__665.GSR = "ENABLED";
    LUT4 mux_173_i8_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_7), 
         .D(REUAOut_15__N_145[7]), .Z(n305[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_11__I_90_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_3), 
         .D(n939[3]), .Z(Length_11__N_419)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_90_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_5__596 (.D(D_out_5), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_5__596.GSR = "ENABLED";
    LUT4 Length_12__I_88_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_4), 
         .D(n939[4]), .Z(Length_12__N_414)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_13__I_86_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_5), 
         .D(n939[5]), .Z(Length_13__N_409)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_14__I_84_3_lut_4_lut (.A(n4131), .B(n2505), .C(D_out_6), 
         .D(n939[6]), .Z(Length_14__N_404)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_84_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_3__673 (.D(n1237), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_3__673.GSR = "ENABLED";
    LUT4 i3675_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4114), .C(n4341), .D(n6), 
         .Z(PHI2_N_570_enable_63)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i3675_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i2118_1_lut (.A(\REUA[0] ), .Z(A_0__N_96)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam i2118_1_lut.init = 16'h5555;
    LUT4 i312_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4114), .C(n4341), .D(n2438), 
         .Z(PHI2_N_570_enable_24)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i312_2_lut_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i3628_2_lut_rep_59_3_lut_4_lut (.A(A_out_2), .B(n4114), .C(n4341), 
         .D(n6_adj_653), .Z(PHI2_N_570_enable_77)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i3628_2_lut_rep_59_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1_2_lut_rep_61_3_lut_4_lut (.A(A_out_2), .B(n4114), .C(D_out_7), 
         .D(n6_adj_653), .Z(n4102)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1_2_lut_rep_61_3_lut_4_lut.init = 16'h0010;
    LUT4 mux_173_i7_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_6), 
         .D(REUAOut_15__N_145[6]), .Z(n305[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_173_i6_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_5), 
         .D(REUAOut_15__N_145[5]), .Z(n305[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.A(A_out_2), .B(n4114), .C(n4341), 
         .D(n2438), .Z(PHI2_N_570_enable_74)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_162.init = 16'hf2f0;
    LUT4 i3639_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4114), .C(n4341), .D(n6_adj_653), 
         .Z(PHI2_N_570_enable_68)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i3639_2_lut_3_lut_4_lut.init = 16'hf0f2;
    FD1P3JX Length_4__664 (.D(Length_4__N_455), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_4__664.GSR = "ENABLED";
    FD1P3JX Length_5__663 (.D(Length_5__N_450), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_5__663.GSR = "ENABLED";
    LUT4 REUA_3__bdd_3_lut (.A(\REUA[3] ), .B(A_out_0), .C(REUA_c[11]), 
         .Z(n4024)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_3__bdd_3_lut.init = 16'he2e2;
    LUT4 i3673_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4114), .C(n4341), .D(n6), 
         .Z(PHI2_N_570_enable_75)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i3673_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 Execute_I_0_4_lut (.A(n3744), .B(D_out_4), .C(n18), .D(n4102), 
         .Z(Execute)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(242[2] 245[45])
    defparam Execute_I_0_4_lut.init = 16'hdc50;
    FD1P3JX Length_15__677 (.D(Length_15__N_392), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_15__677.GSR = "ENABLED";
    FD1P3JX Length_0__668 (.D(Length_0__N_475), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_0__668.GSR = "ENABLED";
    FD1P3JX Length_6__662 (.D(Length_6__N_445), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(\Length[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_6__662.GSR = "ENABLED";
    LUT4 mux_173_i5_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_4), 
         .D(REUAOut_15__N_145[4]), .Z(n305[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_7__661 (.D(Length_7__N_439), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_7__661.GSR = "ENABLED";
    LUT4 A_4__I_0_733_i6_2_lut (.A(A_out_0), .B(A_out_1), .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam A_4__I_0_733_i6_2_lut.init = 16'hbbbb;
    LUT4 i3642_2_lut_3_lut_4_lut (.A(A_out_2), .B(n4114), .C(n4341), .D(n4131), 
         .Z(PHI2_N_570_enable_72)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i3642_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 A_out_0_bdd_2_lut_3759 (.A(Length[3]), .B(A_out_3), .Z(n4021)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3759.init = 16'heeee;
    FD1P3IX CAWritten_6__595 (.D(D_out_6), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_6__595.GSR = "ENABLED";
    FD1P3AX LengthWritten_4__672 (.D(n1235), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_4__672.GSR = "ENABLED";
    PFUMX i3751 (.BLUT(n322[5]), .ALUT(n4018), .C0(A_out_1), .Z(n4019));
    FD1P3AX LengthWritten_5__671 (.D(n1233), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_5__671.GSR = "ENABLED";
    LUT4 i2371_2_lut_rep_63_3_lut_4_lut (.A(n4118), .B(n4129), .C(n6), 
         .D(A_out_2), .Z(n4104)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2371_2_lut_rep_63_3_lut_4_lut.init = 16'hfffe;
    FD1P3JX Length_1__667 (.D(Length_1__N_470), .SP(PHI2_N_570_enable_62), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_1__667.GSR = "ENABLED";
    FD1P3IX CAWritten_7__594 (.D(D_out_7), .SP(PHI2_N_570_enable_63), .CD(n4341), 
            .CK(PHI2_N_570), .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_7__594.GSR = "ENABLED";
    LUT4 i965_4_lut (.A(n3555), .B(n4341), .C(n3732), .D(A_out_2), .Z(n1170)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam i965_4_lut.init = 16'hccce;
    FD1P3IX REUAWritten_0__633 (.D(D_out_0), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_0__633.GSR = "ENABLED";
    LUT4 mux_215_i8_3_lut (.A(n3760), .B(n407[7]), .C(A_out_3), .Z(n428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_215_i8_3_lut.init = 16'hcaca;
    LUT4 n1_bdd_4_lut (.A(n338[1]), .B(XferType_c[1]), .C(A_out_1), .D(A_out_0), 
         .Z(n3920)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n1_bdd_4_lut.init = 16'haca0;
    FD1P3IX REUAWritten_1__632 (.D(D_out_1), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_1__632.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__631 (.D(D_out_2), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_2__631.GSR = "ENABLED";
    LUT4 mux_211_i8_3_lut (.A(n374[7]), .B(IncMode[1]), .C(A_out_1), .Z(n407[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_211_i8_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_10__647 (.D(D_out_2), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_10__647.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__646 (.D(D_out_3), .SP(PHI2_N_570_enable_68), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_11__646.GSR = "ENABLED";
    FD1P3IX DF01Reserved6_581 (.D(D_out_6), .SP(PHI2_N_570_enable_77), .CD(n4341), 
            .CK(PHI2_N_570), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved6_581.GSR = "ENABLED";
    FD1P3IX REUAWritten_3__630 (.D(D_out_3), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_3__630.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__629 (.D(D_out_4), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_4__629.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__628 (.D(D_out_5), .SP(PHI2_N_570_enable_72), 
            .CD(n4341), .CK(PHI2_N_570), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_5__628.GSR = "ENABLED";
    FD1P3AX LengthWritten_6__670 (.D(n1231), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_6__670.GSR = "ENABLED";
    LUT4 mux_173_i4_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_3), 
         .D(REUAOut_15__N_145[3]), .Z(n305[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(n4118), .B(n4129), .C(n2438), 
         .D(A_out_2), .Z(n4107)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'h0010;
    FD1P3AX LengthWritten_7__669 (.D(n1229), .SP(PHI2_N_570_enable_74), 
            .CK(PHI2_N_570), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_7__669.GSR = "ENABLED";
    LUT4 i2369_2_lut_rep_68_3_lut_4_lut (.A(n4118), .B(n4129), .C(n6_adj_653), 
         .D(A_out_2), .Z(n4109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2369_2_lut_rep_68_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX REUA_20__653 (.D(D_out_4), .SP(PHI2_N_570_enable_75), .CD(n4341), 
            .CK(PHI2_N_570), .Q(\REUA[20] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_20__653.GSR = "ENABLED";
    LUT4 i2240_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2438)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2240_2_lut.init = 16'h8888;
    L6MUX21 i3753 (.D0(n4019), .D1(n4017), .SD(n3795), .Z(n4020));
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(n4118), .B(n4129), .C(n2438), 
         .D(A_out_2), .Z(n4105)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'h1000;
    LUT4 mux_202_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n374[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_202_i8_3_lut.init = 16'hcaca;
    LUT4 mux_173_i3_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_2), 
         .D(REUAOut_15__N_145[2]), .Z(n305[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_173_i2_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_1), 
         .D(REUAOut_15__N_145[1]), .Z(n305[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3_4_lut (.A(n5), .B(IncMode[0]), .C(n4103), .D(n4101), .Z(IncREUAg)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2220;
    LUT4 i2387_2_lut_rep_65_3_lut_4_lut (.A(n4118), .B(n4129), .C(n6_adj_653), 
         .D(A_out_2), .Z(n4106)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2387_2_lut_rep_65_3_lut_4_lut.init = 16'hfeff;
    LUT4 mux_202_i7_3_lut (.A(Length[14]), .B(EndBlockMask), .C(A_out_0), 
         .Z(n374[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_202_i7_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(IncCA_N_630), .B(RAMWR), .C(n2509), .D(n4101), 
         .Z(n5)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0a88;
    FD1P3AX ExecuteEN_580 (.D(n3543), .SP(PHI2_N_570_enable_76), .CK(PHI2_N_570), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam ExecuteEN_580.GSR = "ENABLED";
    LUT4 mux_190_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n338[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_190_i2_3_lut.init = 16'hcaca;
    LUT4 mux_173_i1_3_lut_4_lut (.A(n6_adj_653), .B(n4112), .C(D_out_0), 
         .D(REUAOut_15__N_145[0]), .Z(n305[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2381_2_lut_rep_67_3_lut_4_lut (.A(n4118), .B(n4129), .C(n4131), 
         .D(A_out_2), .Z(n4108)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2381_2_lut_rep_67_3_lut_4_lut.init = 16'hfeff;
    LUT4 mux_765_i8_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[15]), 
         .D(Length_15__N_395[7]), .Z(n939[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_190_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n338[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_190_i3_3_lut.init = 16'hcaca;
    LUT4 mux_765_i6_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[13]), 
         .D(Length_15__N_395[5]), .Z(n939[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_190_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n338[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_190_i4_3_lut.init = 16'hcaca;
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_570_enable_77), 
            .CD(n4341), .CK(PHI2_N_570), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_193), .C0(REUAWritten[6]), 
          .D0(\REUA[6] ), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[7]), 
          .D1(\REUA[7] ), .CIN(n3333), .S0(REUAOut_7__N_192[6]), .S1(REUAOut_7__N_192[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_193), .C0(REUAWritten[4]), 
          .D0(\REUA[4] ), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[5]), 
          .D1(\REUA[5] ), .CIN(n3332), .COUT(n3333), .S0(REUAOut_7__N_192[4]), 
          .S1(REUAOut_7__N_192[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_193), .C0(REUAWritten[2]), 
          .D0(\REUA[2] ), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[3]), 
          .D1(\REUA[3] ), .CIN(n3331), .COUT(n3332), .S0(REUAOut_7__N_192[2]), 
          .S1(REUAOut_7__N_192[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_193), .C0(REUAWritten[0]), 
          .D0(\REUA[0] ), .A1(GND_net), .B1(REUAOut_7__N_193), .C1(REUAWritten[1]), 
          .D1(\REUA[1] ), .CIN(n3330), .COUT(n3331), .S0(REUAOut_7__N_192[0]), 
          .S1(REUAOut_7__N_192[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4095), .B1(n4106), .C1(GND_net), .D1(GND_net), 
          .COUT(n3330));   // //mac/icloud/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_765_i7_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[14]), 
         .D(Length_15__N_395[6]), .Z(n939[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i7_3_lut_4_lut.init = 16'hf1e0;
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_236), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3325), .S0(CAOut_15__N_233[6]), .S1(CAOut_15__N_233[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_236), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3324), .COUT(n3325), .S0(CAOut_15__N_233[4]), 
          .S1(CAOut_15__N_233[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_236), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3323), .COUT(n3324), .S0(CAOut_15__N_233[2]), 
          .S1(CAOut_15__N_233[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_234), .B0(CAOut_15__N_236), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_236), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n3322), .COUT(n3323), .S0(CAOut_15__N_233[0]), 
          .S1(CAOut_15__N_233[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4095), .B1(n4104), .C1(GND_net), .D1(GND_net), .COUT(n3322));   // //mac/icloud/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 n325_bdd_3_lut (.A(A_out_0), .B(CA[13]), .C(CA[5]), .Z(n4018)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n325_bdd_3_lut.init = 16'hd8d8;
    LUT4 IntEnable_I_0_842_4_lut_rep_76 (.A(IntEnable), .B(EndBlock), .C(IRQ_N_535), 
         .D(EndBlockMask), .Z(n4117)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(231[14:79])
    defparam IntEnable_I_0_842_4_lut_rep_76.init = 16'ha8a0;
    LUT4 mux_190_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n338[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_190_i5_3_lut.init = 16'hcaca;
    LUT4 IRQ_I_0_1_lut_4_lut (.A(IntEnable), .B(EndBlock), .C(IRQ_N_535), 
         .D(EndBlockMask), .Z(nIRQ_c)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(231[14:79])
    defparam IRQ_I_0_1_lut_4_lut.init = 16'h575f;
    LUT4 mux_170_i3_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_2), .D(CAOut_15__N_233[2]), 
         .Z(n302[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2390_4_lut (.A(A_out_4), .B(A_out_3), .C(n2438), .D(A_out_2), 
         .Z(n2307)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2390_4_lut.init = 16'heeea;
    LUT4 mux_169_i3_4_lut (.A(\REUA[18] ), .B(REUAWritten[18]), .C(n4095), 
         .D(n972), .Z(n301[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_169_i3_4_lut.init = 16'hc5ca;
    LUT4 Fault_I_0_837_2_lut (.A(Fault), .B(FaultMask), .Z(IRQ_N_535)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(231[58:78])
    defparam Fault_I_0_837_2_lut.init = 16'h8888;
    CCU2D Length_15__I_0_833_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3346), .S0(Length_15__N_395[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_833_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_833_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3345), .COUT(n3346), .S0(Length_15__N_395[5]), 
          .S1(Length_15__N_395[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_7.INJECT1_1 = "NO";
    LUT4 mux_170_i4_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_3), .D(CAOut_15__N_233[3]), 
         .Z(n302[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i4_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_570_enable_78), .CD(n4341), 
            .CK(PHI2_N_570), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 237[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 i3_4_lut_rep_51 (.A(n3742), .B(n6_adj_655), .C(n4341), .D(n16), 
         .Z(PHI2_N_570_enable_86)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i3_4_lut_rep_51.init = 16'hfdfc;
    LUT4 mux_194_i8_3_lut (.A(\REUA[7] ), .B(\REUA[15] ), .C(A_out_0), 
         .Z(n350[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i8_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_163 (.A(n4118), .B(A_out_3), .C(A_out_2), .D(A_out_4), 
         .Z(n2505)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_163.init = 16'hfffb;
    LUT4 n370_bdd_3_lut_3775 (.A(Length[8]), .B(A_out_1), .C(A_out_0), 
         .Z(n3922)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n370_bdd_3_lut_3775.init = 16'hfefe;
    LUT4 mux_170_i5_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_4), .D(CAOut_15__N_233[4]), 
         .Z(n302[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_764_i1_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[0]), 
         .D(Length_7__N_442[0]), .Z(n938[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_182_i6_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n322[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_182_i6_3_lut.init = 16'hcaca;
    CCU2D Length_15__I_0_833_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3344), .COUT(n3345), .S0(Length_15__N_395[3]), 
          .S1(Length_15__N_395[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_833_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3343), .COUT(n3344), .S0(Length_15__N_395[1]), 
          .S1(Length_15__N_395[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_3.INJECT1_1 = "NO";
    LUT4 mux_764_i3_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[2]), 
         .D(Length_7__N_442[2]), .Z(n938[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i3_3_lut_4_lut.init = 16'hf4b0;
    FD1S3IX XferType__i1 (.D(n4103), .CK(PHI2_N_570), .CD(n4341), .Q(XferType_c[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam XferType__i1.GSR = "ENABLED";
    CCU2D Length_15__I_0_833_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3343), .S1(Length_15__N_395[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_833_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_1.INJECT1_1 = "NO";
    FD1P3JX Length_8__684 (.D(Length_8__N_434), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_8__684.GSR = "ENABLED";
    FD1P3JX Length_9__683 (.D(Length_9__N_429), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_9__683.GSR = "ENABLED";
    FD1P3JX Length_10__682 (.D(Length_10__N_424), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_10__682.GSR = "ENABLED";
    FD1P3JX Length_11__681 (.D(Length_11__N_419), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_11__681.GSR = "ENABLED";
    FD1P3JX Length_12__680 (.D(Length_12__N_414), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_12__680.GSR = "ENABLED";
    FD1P3JX Length_13__679 (.D(Length_13__N_409), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_13__679.GSR = "ENABLED";
    FD1P3JX Length_14__678 (.D(Length_14__N_404), .SP(PHI2_N_570_enable_86), 
            .PD(n4341), .CK(PHI2_N_570), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_14__678.GSR = "ENABLED";
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_281), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n3317), .S0(CAOut_7__N_280[6]), .S1(CAOut_7__N_280[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_281), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n3316), .COUT(n3317), .S0(CAOut_7__N_280[4]), 
          .S1(CAOut_7__N_280[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_281), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n3315), .COUT(n3316), .S0(CAOut_7__N_280[2]), 
          .S1(CAOut_7__N_280[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_281), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_281), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n3314), .COUT(n3315), .S0(CAOut_7__N_280[0]), 
          .S1(CAOut_7__N_280[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3307), .S1(Length_7__N_442[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3310), .S0(Length_7__N_442[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3307), .COUT(n3308), .S0(Length_7__N_442[1]), 
          .S1(Length_7__N_442[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4095), .B1(n4107), .C1(GND_net), .D1(GND_net), .COUT(n3314));   // //mac/icloud/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3309), .COUT(n3310), .S0(Length_7__N_442[5]), 
          .S1(Length_7__N_442[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    PFUMX i3687 (.BLUT(n362[1]), .ALUT(n3917), .C0(A_out_3), .Z(n3918));
    LUT4 mux_190_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n338[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_190_i1_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(n15), .B(n13), .C(\REUA[15] ), .D(n10_adj_656), 
         .Z(REUAOut_18__N_129)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 mux_764_i7_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[6]), 
         .D(Length_7__N_442[6]), .Z(n938[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i6_4_lut (.A(REUA_c[11]), .B(REUA[10]), .C(\REUA[14] ), .D(\REUA[12] ), 
         .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i2115_3_lut (.A(REUA_c[11]), .B(\REUA[3] ), .C(\S[0] ), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(42[11:12])
    defparam i2115_3_lut.init = 16'hcaca;
    LUT4 i4_2_lut (.A(\REUA[8] ), .B(\REUA[13] ), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_164 (.A(\REUA[9] ), .B(REUAOut_15__N_146), .Z(n10_adj_656)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_164.init = 16'h8888;
    LUT4 mux_764_i5_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[4]), 
         .D(Length_7__N_442[4]), .Z(n938[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i791_2_lut_rep_52 (.A(\REUA[16] ), .B(REUAOut_18__N_129), .Z(n4093)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(187[18:34])
    defparam i791_2_lut_rep_52.init = 16'h8888;
    LUT4 i2320_4_lut (.A(Length[13]), .B(A_out_1), .C(FaultMask), .D(A_out_0), 
         .Z(n407[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i2320_4_lut.init = 16'hfcee;
    L6MUX21 i3546 (.D0(n3758), .D1(n4091), .SD(A_out_2), .Z(n3760));
    PFUMX i3544 (.BLUT(n322[7]), .ALUT(n338[7]), .C0(A_out_1), .Z(n3758));
    LUT4 i3682_3_lut_4_lut (.A(\nRESETr[1] ), .B(DMA), .C(n2505), .D(n6), 
         .Z(PHI2_N_570_enable_78)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i3682_3_lut_4_lut.init = 16'h111f;
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_148), .C0(REUAWritten[14]), 
          .D0(\REUA[14] ), .A1(GND_net), .B1(REUAOut_15__N_148), .C1(REUAWritten[15]), 
          .D1(\REUA[15] ), .CIN(n3341), .S0(REUAOut_15__N_145[6]), .S1(REUAOut_15__N_145[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    LUT4 i1347_2_lut_1_lut_2_lut (.A(\nRESETr[1] ), .B(DMA), .Z(n4341)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1347_2_lut_1_lut_2_lut.init = 16'h1111;
    LUT4 i3680_3_lut_4_lut (.A(\nRESETr[1] ), .B(DMA), .C(n2505), .D(n6_adj_653), 
         .Z(PHI2_N_570_enable_42)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i3680_3_lut_4_lut.init = 16'h111f;
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_148), .C0(REUAWritten[12]), 
          .D0(\REUA[12] ), .A1(GND_net), .B1(REUAOut_15__N_148), .C1(REUAWritten[13]), 
          .D1(\REUA[13] ), .CIN(n3340), .COUT(n3341), .S0(REUAOut_15__N_145[4]), 
          .S1(REUAOut_15__N_145[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    LUT4 i799_2_lut_3_lut (.A(\REUA[16] ), .B(REUAOut_18__N_129), .C(\REUA[17] ), 
         .Z(n972)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(187[18:34])
    defparam i799_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_764_i4_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[3]), 
         .D(Length_7__N_442[3]), .Z(n938[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_765_i2_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[9]), 
         .D(Length_15__N_395[1]), .Z(n939[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 REUA_3__bdd_4_lut_3831 (.A(n338[3]), .B(A_out_0), .C(A_out_1), 
         .D(DF01Reserved32[3]), .Z(n4026)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam REUA_3__bdd_4_lut_3831.init = 16'haca0;
    LUT4 mux_765_i1_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[8]), 
         .D(Length_15__N_395[0]), .Z(n939[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2289_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_7), .Z(n1229)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2289_2_lut_3_lut.init = 16'hf1f1;
    LUT4 mux_764_i6_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[5]), 
         .D(Length_7__N_442[5]), .Z(n938[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2268_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_6), .Z(n1231)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2268_2_lut_3_lut.init = 16'hf1f1;
    LUT4 mux_765_i5_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[12]), 
         .D(Length_15__N_395[4]), .Z(n939[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_198_i3_3_lut (.A(\REUA[18] ), .B(Length[2]), .C(A_out_0), 
         .Z(n362[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i3_3_lut.init = 16'hcaca;
    LUT4 i2263_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_5), .Z(n1233)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2263_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i3_4_lut_adj_165 (.A(n1385), .B(PHI2_N_570_enable_74), .C(n4094), 
         .D(Length1_N_644), .Z(PHI2_N_570_enable_62)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_165.init = 16'hfcfe;
    LUT4 mux_764_i8_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[7]), 
         .D(Length_7__N_442[7]), .Z(n938[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_765_i3_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[10]), 
         .D(Length_15__N_395[2]), .Z(n939[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_198_i2_3_lut (.A(\REUA[17] ), .B(Length[1]), .C(A_out_0), 
         .Z(n362[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i2_3_lut.init = 16'hcaca;
    LUT4 A_out_0_bdd_2_lut (.A(Length[4]), .B(A_out_3), .Z(n4028)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut.init = 16'heeee;
    LUT4 mux_764_i2_3_lut_4_lut (.A(n4095), .B(n4110), .C(LengthWritten[1]), 
         .D(Length_7__N_442[1]), .Z(n938[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_764_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_765_i4_3_lut_4_lut (.A(n4095), .B(n4105), .C(LengthWritten[11]), 
         .D(Length_15__N_395[3]), .Z(n939[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_765_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_198_i1_3_lut (.A(\REUA[16] ), .B(Length[0]), .C(A_out_0), 
         .Z(n362[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i1_3_lut.init = 16'hcaca;
    LUT4 mux_169_i2_4_lut (.A(\REUA[17] ), .B(REUAWritten[17]), .C(n4095), 
         .D(n4093), .Z(n301[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_169_i2_4_lut.init = 16'hc5ca;
    LUT4 mux_194_i6_3_lut (.A(\REUA[5] ), .B(\REUA[13] ), .C(A_out_0), 
         .Z(n350[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i6_3_lut.init = 16'hcaca;
    LUT4 mux_170_i6_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_5), .D(CAOut_15__N_233[5]), 
         .Z(n302[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2258_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_4), .Z(n1235)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2258_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2_2_lut_3_lut_4_lut (.A(AutoloadEN), .B(n4096), .C(n4110), .D(n4105), 
         .Z(n6_adj_655)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(63[17:38])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hff8f;
    LUT4 i2239_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_3), .Z(n1237)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2239_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2293_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_1), .Z(n1225)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2293_2_lut_3_lut.init = 16'hf1f1;
    LUT4 mux_170_i7_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_6), .D(CAOut_15__N_233[6]), 
         .Z(n302[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 A_out_0_bdd_3_lut (.A(A_out_1), .B(Length[12]), .C(A_out_3), 
         .Z(n4029)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut.init = 16'hefef;
    PFUMX i3767 (.BLUT(n4038), .ALUT(n4037), .C0(n3795), .Z(n4039));
    LUT4 i2291_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_0), .Z(n1227)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2291_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2227_2_lut_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(D_out_2), .Z(n1239)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2227_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(\nRESETr[1] ), .B(DMA), .C(XferEnd_N_599), 
         .D(n4109), .Z(PHI2_N_570_enable_76)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A ((C+!(D))+!B)) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'hd1ff;
    LUT4 i9_4_lut (.A(n17_adj_657), .B(n15_adj_658), .C(n11), .D(n12), 
         .Z(CAOut_15__N_234)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    PFUMX i3765 (.BLUT(n362[2]), .ALUT(n4035), .C0(A_out_3), .Z(n4036));
    LUT4 i7_4_lut_adj_166 (.A(CA[7]), .B(CA[4]), .C(CA[2]), .D(CA[5]), 
         .Z(n17_adj_657)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_166.init = 16'h8000;
    LUT4 i3649_2_lut_rep_85 (.A(A_out_3), .B(A_out_1), .Z(n4126)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3649_2_lut_rep_85.init = 16'heeee;
    LUT4 i8_4_lut_adj_167 (.A(n2307), .B(\RAMRDD[6] ), .C(DMA), .D(n10), 
         .Z(\Dout[6] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i8_4_lut_adj_167.init = 16'hcfca;
    LUT4 i3645_2_lut_3_lut_4_lut (.A(\nRESETr[1] ), .B(DMA), .C(n2505), 
         .D(n4131), .Z(PHI2_N_570_enable_35)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i3645_2_lut_3_lut_4_lut.init = 16'h111f;
    LUT4 n1_bdd_3_lut_3716_4_lut (.A(A_out_3), .B(A_out_1), .C(n3918), 
         .D(n1_adj_1), .Z(n3919)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n1_bdd_3_lut_3716_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut (.A(n4098), .B(SetFault), .C(RAMWR), .D(IncCA_N_630), 
         .Z(n1385)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;
    defparam i2_4_lut.init = 16'h3100;
    LUT4 mux_170_i8_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_7), .D(CAOut_15__N_233[7]), 
         .Z(n302[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i8_3_lut_4_lut.init = 16'hfb40;
    PFUMX i3763 (.BLUT(n4033), .ALUT(n4032), .C0(n3795), .Z(n4034));
    PFUMX i3693 (.BLUT(n3925), .ALUT(n3924), .C0(n3795), .Z(n3926));
    LUT4 n358_bdd_3_lut_3778_4_lut (.A(A_out_3), .B(A_out_1), .C(n3923), 
         .D(n350[0]), .Z(n3924)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n358_bdd_3_lut_3778_4_lut.init = 16'hf1e0;
    LUT4 REUA_4__bdd_3_lut (.A(\REUA[4] ), .B(A_out_0), .C(\REUA[12] ), 
         .Z(n4031)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_4__bdd_3_lut.init = 16'he2e2;
    LUT4 Length_7__bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n350[7]), 
         .D(Length[7]), .Z(n4091)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;
    defparam Length_7__bdd_4_lut_4_lut.init = 16'hfc74;
    LUT4 i1_2_lut_rep_88 (.A(A_out_3), .B(A_out_4), .Z(n4129)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1_2_lut_rep_88.init = 16'heeee;
    LUT4 mux_169_i1_4_lut (.A(\REUA[16] ), .B(REUAWritten[16]), .C(n4095), 
         .D(REUAOut_18__N_129), .Z(n301[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_169_i1_4_lut.init = 16'hc5ca;
    LUT4 mux_194_i1_3_lut (.A(\REUA[0] ), .B(\REUA[8] ), .C(A_out_0), 
         .Z(n350[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i1_3_lut.init = 16'hcaca;
    LUT4 n4024_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n4023), .D(n4024), 
         .Z(n4025)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n4024_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5_2_lut_adj_168 (.A(CA[1]), .B(CA[3]), .Z(n15_adj_658)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut_adj_168.init = 16'h8888;
    LUT4 i10_3_lut (.A(n374[6]), .B(IncMode[0]), .C(A_out_1), .Z(n9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i10_3_lut.init = 16'hcaca;
    LUT4 n353_bdd_4_lut (.A(n407[5]), .B(A_out_0), .C(Length[5]), .D(A_out_3), 
         .Z(n4016)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam n353_bdd_4_lut.init = 16'haaf3;
    LUT4 mux_170_i2_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_1), .D(CAOut_15__N_233[1]), 
         .Z(n302[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 A_out_0_bdd_3_lut_3760 (.A(A_out_1), .B(Length[11]), .C(A_out_3), 
         .Z(n4022)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3760.init = 16'hefef;
    LUT4 n4031_bdd_3_lut_3785_4_lut (.A(A_out_3), .B(A_out_1), .C(n4030), 
         .D(n4031), .Z(n4032)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n4031_bdd_3_lut_3785_4_lut.init = 16'hf1e0;
    PFUMX i3761 (.BLUT(n4029), .ALUT(n4028), .C0(A_out_0), .Z(n4030));
    LUT4 i1_2_lut_adj_169 (.A(CA[6]), .B(n1385), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_169.init = 16'h8888;
    LUT4 i2_2_lut_adj_170 (.A(CA[0]), .B(IncMode[1]), .Z(n12)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_170.init = 16'h2222;
    LUT4 mux_170_i1_3_lut_4_lut (.A(n4111), .B(n2438), .C(D_out_0), .D(CAOut_15__N_233[0]), 
         .Z(n302[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_170_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 n356_bdd_3_lut_3772_4_lut (.A(A_out_3), .B(A_out_1), .C(n4036), 
         .D(n356), .Z(n4037)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n356_bdd_3_lut_3772_4_lut.init = 16'hf1e0;
    LUT4 n358_bdd_4_lut (.A(n338[0]), .B(XferType[0]), .C(A_out_1), .D(A_out_0), 
         .Z(n3925)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n358_bdd_4_lut.init = 16'haca0;
    PFUMX i3757 (.BLUT(n4026), .ALUT(n4025), .C0(n3795), .Z(n4027));
    
endmodule
