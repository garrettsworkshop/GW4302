// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Thu Apr 28 11:56:35 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, nIRQ, 
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
    input nIO1;   // //mac/icloud/repos/gw4302/cpld/reu.v(13[8:12])
    input nIO2;   // //mac/icloud/repos/gw4302/cpld/reu.v(14[8:12])
    output nAOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(16[9:13])
    output ADIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(17[9:13])
    output nRWOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(18[9:14])
    output nDOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:13])
    output DDIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(20[9:13])
    output nIRQ;   // //mac/icloud/repos/gw4302/cpld/reu.v(22[9:13])
    output RCLK;   // //mac/icloud/repos/gw4302/cpld/reu.v(24[9:13])
    output nCS;   // //mac/icloud/repos/gw4302/cpld/reu.v(25[9:12])
    output nRAS;   // //mac/icloud/repos/gw4302/cpld/reu.v(26[9:13])
    output nCAS;   // //mac/icloud/repos/gw4302/cpld/reu.v(27[9:13])
    output nRWE;   // //mac/icloud/repos/gw4302/cpld/reu.v(28[9:13])
    output CKE;   // //mac/icloud/repos/gw4302/cpld/reu.v(29[9:12])
    output [1:0]RBA;   // //mac/icloud/repos/gw4302/cpld/reu.v(30[15:18])
    output [12:0]RA;   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    output DQMH;   // //mac/icloud/repos/gw4302/cpld/reu.v(32[9:13])
    output DQML;   // //mac/icloud/repos/gw4302/cpld/reu.v(33[9:13])
    inout [7:0]RD;   // //mac/icloud/repos/gw4302/cpld/reu.v(34[14:16])
    
    wire C8M_c /* synthesis SET_AS_NETWORK=C8M_c, is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_34 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[11:18])
    wire PHI2_N_565 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(100[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nDMA_c, 
        nIO2_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, CKE_c, 
        RBA_c_1, RBA_c_0, RA_0_11, RA_0_10, RA_0_9, RA_0_8, RA_0_7, 
        RA_0_6, RA_0_5, RA_0_4, RA_0_3, RA_0_2, RA_0_1, RA_0_0, 
        DQMH_c, DQML_c, IRQ;
    wire [1:0]XferType;   // //mac/icloud/repos/gw4302/cpld/reu.v(38[13:21])
    wire [23:0]REUA;   // //mac/icloud/repos/gw4302/cpld/reu.v(39[14:18])
    wire [15:0]CA;   // //mac/icloud/repos/gw4302/cpld/reu.v(40[14:16])
    wire [7:0]RAMRDD;   // //mac/icloud/repos/gw4302/cpld/reu.v(45[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, IncREUA, SetEndOfBlock, DOE, 
        Execute;
    wire [7:0]Dout;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[13:17])
    
    wire nWEDMA_N_5;
    wire [2:0]S;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    
    wire InitDone;
    wire [7:0]WRDr;   // //mac/icloud/repos/gw4302/cpld/ram.v(243[11:15])
    
    wire A_0__N_88, n2170, n7, EndOfBlock, ExecuteEN, AutoloadEN, 
        FF00DecodeEN;
    wire [1:0]XferType_adj_687;   // //mac/icloud/repos/gw4302/cpld/reg.v(38[11:19])
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(51[12:18])
    
    wire IntEnable, EndOfBlockMask, n3851, n4161, n3849, n3848, 
        n3874, n3872, n3638, IntPending_N_535, n3673, CAOut_7__N_273, 
        n3865, n3864, n3479, CAOut_15__N_228, n427, n426, n3455, 
        n3668, REUAOut_7__N_185, n3863, n3847, REUAOut_15__N_140, 
        n3845, PHI2_N_565_enable_23, n3453, n3862, n3861, n7_adj_677, 
        n4162, n6, IRQOut_N_527, n2922, n15, n14, n3860, n13, 
        XferEnd_N_594, Length1_N_640, n3631, n3859, n8, PHI2_N_565_enable_76, 
        D_out_7, n3442, n2921, D_out_6, D_out_5, D_out_4, D_out_3, 
        D_out_2, n3651, D_out_1, D_out_0, A_out_15, n18, A_out_14, 
        A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, A_out_8, 
        n3275, A_out_4, A_out_3, A_out_2, A_out_1, n3858, A_out_0, 
        RD_out_7, RD_out_6, RD_out_5, n1024, RD_out_4, RD_out_3, 
        RD_out_2, RD_out_1, n12, RD_out_0, n3889, n3840, n3888, 
        n3857, n1371, n3463, n3842, n3853, n3565, n3884, n3882, 
        n3881, n3686, n4163;
    
    VHI i2 (.Z(VCC_net));
    INV i3646 (.A(PHI2_c), .Z(PHI2_N_565));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    BB D_pad_7 (.I(Dout[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    LUT4 i3076_2_lut_rep_112 (.A(A_out_2), .B(A_out_4), .Z(n3889)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3076_2_lut_rep_112.init = 16'heeee;
    LUT4 i3221_2_lut_3_lut (.A(A_out_2), .B(A_out_4), .C(nWE_c), .Z(n3453)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3221_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3247_4_lut (.A(nWE_c), .B(n7), .C(A_out_0), .D(n3889), .Z(n3479)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3247_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n3463), .B(FF00DecodeEN), .C(n12), .D(A_out_1), 
         .Z(n18)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i8_4_lut.init = 16'h0040;
    LUT4 i3231_2_lut (.A(n6), .B(A_out_3), .Z(n3463)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3231_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(n15), .B(ExecuteEN), .C(n13), .D(n14), .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(A_out_12), .B(A_out_14), .C(A_out_10), .D(A_out_9), 
         .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(A_out_8), .B(A_out_13), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i5_3_lut (.A(A_out_15), .B(A_out_11), .C(n8), .Z(n14)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i5_3_lut.init = 16'h0808;
    LUT4 i3371_4_lut (.A(RAMWR), .B(S[0]), .C(InitDone), .D(n3884), 
         .Z(n3565)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(252[8:54])
    defparam i3371_4_lut.init = 16'h0080;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n426), .B(RAMRDD[7]), .C(DMA), .D(n2170), 
         .Z(Dout[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2921), .COUT(n2922));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    LUT4 i455_3_lut (.A(n1371), .B(n4162), .C(n3863), .Z(PHI2_N_565_enable_76)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i455_3_lut.init = 16'hcdcd;
    BB D_pad_6 (.I(Dout[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    BB D_pad_5 (.I(Dout[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    BB D_pad_4 (.I(Dout[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    BB D_pad_3 (.I(Dout[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    BB D_pad_2 (.I(Dout[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    BB D_pad_1 (.I(Dout[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    BB D_pad_0 (.I(Dout[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(107[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n3872), .B(A[15]), .O(A_out_15));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n3872), .B(A[14]), .O(A_out_14));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3872), .B(A[13]), .O(A_out_13));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n3872), .B(A[12]), .O(A_out_12));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3872), .B(A[11]), .O(A_out_11));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3872), .B(A[10]), .O(A_out_10));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3872), .B(A[9]), .O(A_out_9));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3872), .B(A[8]), .O(A_out_8));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3872), .B(A[7]), .O(n8));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3872), .B(A[6]), .O(n7));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3872), .B(A[5]), .O(n6));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3872), .B(A[4]), .O(A_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3872), .B(A[3]), .O(A_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3872), .B(A[2]), .O(A_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3872), .B(A[1]), .O(A_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3872), .B(A[0]), .O(A_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(109[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1024), .B(RD[7]), .O(RD_out_7));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1024), .B(RD[6]), .O(RD_out_6));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1024), .B(RD[5]), .O(RD_out_5));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1024), .B(RD[4]), .O(RD_out_4));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1024), .B(RD[3]), .O(RD_out_3));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1024), .B(RD[2]), .O(RD_out_2));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1024), .B(RD[1]), .O(RD_out_1));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1024), .B(RD[0]), .O(RD_out_0));   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(nDMA_c), .O(nDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(GND_net), .O(nAOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(16[9:13])
    OB ADIR_pad (.I(n3872), .O(ADIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(17[9:13])
    OB nRWOE_pad (.I(n3872), .O(nRWOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(18[9:14])
    OB nDOE_pad (.I(GND_net), .O(nDOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:13])
    OB DDIR_pad (.I(DOE), .O(DDIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(20[9:13])
    OB nIRQ_pad (.I(IRQ), .O(nIRQ));   // //mac/icloud/repos/gw4302/cpld/reu.v(22[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // //mac/icloud/repos/gw4302/cpld/reu.v(24[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // //mac/icloud/repos/gw4302/cpld/reu.v(25[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // //mac/icloud/repos/gw4302/cpld/reu.v(26[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // //mac/icloud/repos/gw4302/cpld/reu.v(27[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // //mac/icloud/repos/gw4302/cpld/reu.v(28[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // //mac/icloud/repos/gw4302/cpld/reu.v(29[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_11 (.I(RA_0_11), .O(RA[11]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_10 (.I(RA_0_10), .O(RA[10]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_9 (.I(RA_0_9), .O(RA[9]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_8 (.I(RA_0_8), .O(RA[8]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_7 (.I(RA_0_7), .O(RA[7]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_6 (.I(RA_0_6), .O(RA[6]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_5 (.I(RA_0_5), .O(RA[5]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_4 (.I(RA_0_4), .O(RA[4]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_3 (.I(RA_0_3), .O(RA[3]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_2 (.I(RA_0_2), .O(RA[2]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_1 (.I(RA_0_1), .O(RA[1]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB RA_pad_0 (.I(RA_0_0), .O(RA[0]));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // //mac/icloud/repos/gw4302/cpld/reu.v(32[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // //mac/icloud/repos/gw4302/cpld/reu.v(33[9:13])
    IB C8M_pad (.I(C8M), .O(C8M_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(5[8:14])
    IB BA_pad (.I(BA), .O(BA_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(7[8:10])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(10[8:11])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(14[8:12])
    LUT4 m1_lut (.Z(n4161)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2921));   // //mac/icloud/repos/gw4302/cpld/reu.v(88[31:50])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n427), .B(RAMRDD[6]), .C(DMA), .D(n2170), 
         .Z(Dout[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2922), .S1(nWEDMA_N_5));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n3631), .B(RAMRDD[5]), .C(DMA), .D(n2170), 
         .Z(Dout[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3638), .B(RAMRDD[4]), .C(DMA), .D(n2170), 
         .Z(Dout[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n3651), .B(RAMRDD[3]), .C(DMA), .D(n2170), 
         .Z(Dout[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n3668), .B(RAMRDD[2]), .C(DMA), .D(n2170), 
         .Z(Dout[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n3673), .B(RAMRDD[1]), .C(DMA), .D(n2170), 
         .Z(Dout[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n3686), .B(RAMRDD[0]), .C(DMA), .D(n2170), 
         .Z(Dout[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(106[20:51])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    DMASeq dmaseq (.Execute(Execute), .n3853(n3853), .\XferType[1] (XferType[1]), 
           .DMA(DMA), .BA_c(BA_c), .PHI2_c(PHI2_c), .n3872(n3872), .XferEnd_N_594(XferEnd_N_594), 
           .n3857(n3857), .AutoloadEN(AutoloadEN), .CAOut_7__N_273(CAOut_7__N_273), 
           .RAMWR(RAMWR), .n3847(n3847), .IncREUA(IncREUA), .Length1_N_640(Length1_N_640), 
           .n4163(n4163), .PHI2_N_565(PHI2_N_565), .nRESET_c(nRESET_c), 
           .nWEDMA_c(nWEDMA_c), .nWEDMA_N_5(nWEDMA_N_5), .n3881(n3881), 
           .n3848(n3848), .SetEndOfBlock(SetEndOfBlock), .IntPending_N_535(IntPending_N_535), 
           .n3861(n3861), .n3840(n3840), .RegReset(RegReset), .n3851(n3851), 
           .RAMRD(RAMRD), .n3858(n3858), .REUAOut_15__N_140(REUAOut_15__N_140), 
           .n3849(n3849), .n7(n7_adj_677), .n3842(n3842), .PHI2_N_565_enable_23(PHI2_N_565_enable_23), 
           .\Length[2] (Length[2]), .n3455(n3455), .n3862(n3862), .REUAOut_7__N_185(REUAOut_7__N_185), 
           .n3860(n3860), .D_out_0(D_out_0), .\XferType[0] (XferType_adj_687[0]), 
           .n4162(n4162), .n3845(n3845), .n3442(n3442), .n3859(n3859), 
           .CAOut_15__N_228(CAOut_15__N_228), .nDMA_c(nDMA_c)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(78[9] 90[64])
    REUReg reureg (.GND_net(GND_net), .REUAOut_15__N_140(REUAOut_15__N_140), 
           .REUA({REUA}), .n3842(n3842), .n3861(n3861), .PHI2_N_565(PHI2_N_565), 
           .RegReset(RegReset), .D_out_7(D_out_7), .XferType({Open_0, 
           XferType_adj_687[0]}), .D_out_0(D_out_0), .n3860(n3860), .\XferType[1] (XferType[1]), 
           .n3848(n3848), .A_out_0(A_out_0), .A_out_1(A_out_1), .n3882(n3882), 
           .nWE_c(nWE_c), .n3888(n3888), .n4163(n4163), .D_out_3(D_out_3), 
           .ExecuteEN(ExecuteEN), .CA({CA}), .EndOfBlock(EndOfBlock), 
           .D_out_6(D_out_6), .n3673(n3673), .n3851(n3851), .D_out_4(D_out_4), 
           .D_out_5(D_out_5), .A_out_3(A_out_3), .D_out_2(D_out_2), .SetEndOfBlock(SetEndOfBlock), 
           .n4161(n4161), .n3479(n3479), .n18(n18), .Execute(Execute), 
           .n7(n7_adj_677), .PHI2_N_565_enable_23(PHI2_N_565_enable_23), 
           .n4162(n4162), .XferEnd_N_594(XferEnd_N_594), .DMA(DMA), .A_out_2(A_out_2), 
           .A_out_4(A_out_4), .n1371(n1371), .FF00DecodeEN(FF00DecodeEN), 
           .D_out_1(D_out_1), .A_0__N_88(A_0__N_88), .n3864(n3864), .IntPending_N_535(IntPending_N_535), 
           .IntEnable(IntEnable), .EndOfBlockMask(EndOfBlockMask), .n426(n426), 
           .AutoloadEN(AutoloadEN), .n2170(n2170), .PHI2_N_565_enable_76(PHI2_N_565_enable_76), 
           .n3668(n3668), .n3863(n3863), .n3853(n3853), .n3865(n3865), 
           .Length1_N_640(Length1_N_640), .\Length[2] (Length[2]), .n3874(n3874), 
           .n3859(n3859), .n3857(n3857), .n3862(n3862), .n3881(n3881), 
           .n3849(n3849), .n3858(n3858), .IncREUA(IncREUA), .n3631(n3631), 
           .n3651(n3651), .n3840(n3840), .n3845(n3845), .RAMWR(RAMWR), 
           .BA_c(BA_c), .n3442(n3442), .n3455(n3455), .n3847(n3847), 
           .nIO2_c(nIO2_c), .n3453(n3453), .n3275(n3275), .REUAOut_7__N_185(REUAOut_7__N_185), 
           .CAOut_15__N_228(CAOut_15__N_228), .CAOut_7__N_273(CAOut_7__N_273), 
           .n427(n427), .n3638(n3638), .n3686(n3686), .IRQOut_N_527(IRQOut_N_527)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(67[9] 76[62])
    Glue glue (.DMA(DMA), .nIO2_c(nIO2_c), .n3888(n3888), .nWE_c(nWE_c), 
         .n3874(n3874), .n3275(n3275), .PHI2_c(PHI2_c), .n3881(n3881), 
         .nWEDMA_c(nWEDMA_c), .DOE(DOE), .A_out_1(A_out_1), .A_out_0(A_out_0), 
         .n3863(n3863), .n3864(n3864), .n3865(n3865), .n1371(n1371), 
         .n3882(n3882), .n3861(n3861), .IntEnable(IntEnable), .EndOfBlock(EndOfBlock), 
         .IRQOut_N_527(IRQOut_N_527), .EndOfBlockMask(EndOfBlockMask), .IRQ(IRQ)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(92[7] 104[20])
    INV i3647 (.A(C8M_c), .Z(C8M_N_34));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    RAM ram (.\S[0] (S[0]), .C8M_c(C8M_c), .C8M_N_34(C8M_N_34), .PHI2_c(PHI2_c), 
        .nCS_c(nCS_c), .RBA_c_0(RBA_c_0), .n3884(n3884), .REUA({REUA}), 
        .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), .CKE_c(CKE_c), 
        .RA_0_0(RA_0_0), .WRDr({WRDr}), .PHI2_N_565(PHI2_N_565), .D_out_0(D_out_0), 
        .DQML_c(DQML_c), .A_0__N_88(A_0__N_88), .nRESET_c(nRESET_c), .InitDone(InitDone), 
        .GND_net(GND_net), .VCC_net(VCC_net), .RCLK_c(RCLK_c), .DQMH_c(DQMH_c), 
        .RAMWR(RAMWR), .RAMRD(RAMRD), .n4161(n4161), .RAMRDD({RAMRDD}), 
        .RD_out_0(RD_out_0), .RBA_c_1(RBA_c_1), .RA_0_1(RA_0_1), .RA_0_2(RA_0_2), 
        .RA_0_3(RA_0_3), .RA_0_4(RA_0_4), .RA_0_5(RA_0_5), .RA_0_6(RA_0_6), 
        .RA_0_7(RA_0_7), .RA_0_8(RA_0_8), .RA_0_9(RA_0_9), .RA_0_10(RA_0_10), 
        .RA_0_11(RA_0_11), .D_out_1(D_out_1), .D_out_2(D_out_2), .D_out_3(D_out_3), 
        .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), .D_out_7(D_out_7), 
        .RD_out_1(RD_out_1), .n3565(n3565), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .n1024(n1024)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(58[6] 65[32])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DMASeq
//

module DMASeq (Execute, n3853, \XferType[1] , DMA, BA_c, PHI2_c, 
            n3872, XferEnd_N_594, n3857, AutoloadEN, CAOut_7__N_273, 
            RAMWR, n3847, IncREUA, Length1_N_640, n4163, PHI2_N_565, 
            nRESET_c, nWEDMA_c, nWEDMA_N_5, n3881, n3848, SetEndOfBlock, 
            IntPending_N_535, n3861, n3840, RegReset, n3851, RAMRD, 
            n3858, REUAOut_15__N_140, n3849, n7, n3842, PHI2_N_565_enable_23, 
            \Length[2] , n3455, n3862, REUAOut_7__N_185, n3860, D_out_0, 
            \XferType[0] , n4162, n3845, n3442, n3859, CAOut_15__N_228, 
            nDMA_c) /* synthesis syn_module_defined=1 */ ;
    input Execute;
    input n3853;
    input \XferType[1] ;
    output DMA;
    input BA_c;
    input PHI2_c;
    output n3872;
    output XferEnd_N_594;
    input n3857;
    input AutoloadEN;
    output CAOut_7__N_273;
    output RAMWR;
    output n3847;
    output IncREUA;
    input Length1_N_640;
    output n4163;
    input PHI2_N_565;
    input nRESET_c;
    output nWEDMA_c;
    input nWEDMA_N_5;
    output n3881;
    input n3848;
    output SetEndOfBlock;
    output IntPending_N_535;
    input n3861;
    output n3840;
    output RegReset;
    input n3851;
    output RAMRD;
    input n3858;
    output REUAOut_15__N_140;
    output n3849;
    input n7;
    output n3842;
    output PHI2_N_565_enable_23;
    input \Length[2] ;
    output n3455;
    input n3862;
    output REUAOut_7__N_185;
    input n3860;
    input D_out_0;
    input \XferType[0] ;
    output n4162;
    output n3845;
    input n3442;
    input n3859;
    output CAOut_15__N_228;
    output nDMA_c;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_565 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(100[11:18])
    
    wire n3959, RAMRD_N_567, RAMRD_N_572, RAMRD_N_566, n1, n1217;
    wire [2:1]nRESETr;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(100[11:18])
    
    wire XferEnd_N_602, n6, n3871, DMAr, PHI2_N_565_enable_71, nWEDMA_N_608, 
        RAMWR_N_579, BAr, Equalr, DMA_N_591, n4, n3846, n3843, 
        n3879, n9, n3955, n3956, n3957, n3958;
    
    LUT4 XferEnd_N_594_bdd_3_lut (.A(Execute), .B(n3853), .C(\XferType[1] ), 
         .Z(n3959)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam XferEnd_N_594_bdd_3_lut.init = 16'ha2a2;
    LUT4 i3352_2_lut_rep_95_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(n3872)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(157[23:56])
    defparam i3352_2_lut_rep_95_3_lut.init = 16'h7f7f;
    LUT4 Autoload_I_0_792_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_594), 
         .C(n3857), .D(AutoloadEN), .Z(CAOut_7__N_273)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[18] 119[67])
    defparam Autoload_I_0_792_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_2_lut_rep_70_3_lut (.A(n3853), .B(\XferType[1] ), .C(RAMWR), 
         .Z(n3847)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(30[19:39])
    defparam i1_2_lut_rep_70_3_lut.init = 16'hfbfb;
    PFUMX RAMRD_I_0_132 (.BLUT(RAMRD_N_567), .ALUT(RAMRD_N_572), .C0(DMA), 
          .Z(RAMRD_N_566)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;
    PFUMX mux_201_Mux_0_i3 (.BLUT(n1), .ALUT(n1217), .C0(\XferType[1] ), 
          .Z(IncREUA));
    LUT4 i1_4_lut (.A(nRESETr[1]), .B(XferEnd_N_602), .C(n6), .D(\XferType[1] ), 
         .Z(XferEnd_N_594)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[25] 119[67])
    defparam i1_4_lut.init = 16'hf5dd;
    LUT4 BA_I_0_2_lut (.A(BA_c), .B(Length1_N_640), .Z(XferEnd_N_602)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(119[16:31])
    defparam BA_I_0_2_lut.init = 16'h2222;
    LUT4 i19_4_lut (.A(XferEnd_N_602), .B(n3871), .C(n3853), .D(RAMWR), 
         .Z(n6)) /* synthesis lut_function=(A (C+(D))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(113[2] 119[66])
    defparam i19_4_lut.init = 16'heae0;
    LUT4 RegReset_I_0_4_lut_rep_114 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4163)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(162[2] 168[25])
    defparam RegReset_I_0_4_lut_rep_114.init = 16'h1511;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_565), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(101[8] 106[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1P3AX nWEDMA_125 (.D(nWEDMA_N_608), .SP(PHI2_N_565_enable_71), .CK(PHI2_N_565), 
            .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(35[8] 95[4])
    defparam nWEDMA_125.GSR = "ENABLED";
    LUT4 SetEndOfBlock_I_0_2_lut_4_lut (.A(nWEDMA_N_5), .B(n3881), .C(n3848), 
         .D(SetEndOfBlock), .Z(IntPending_N_535)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam SetEndOfBlock_I_0_2_lut_4_lut.init = 16'hff40;
    FD1P3AX RAMWR_127 (.D(RAMWR_N_579), .SP(PHI2_N_565_enable_71), .CK(PHI2_N_565), 
            .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(35[8] 95[4])
    defparam RAMWR_127.GSR = "ENABLED";
    FD1S3AX DMAr_128 (.D(DMA), .CK(PHI2_N_565), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(101[8] 106[4])
    defparam DMAr_128.GSR = "ENABLED";
    FD1S3AX BAr_129 (.D(BA_c), .CK(PHI2_N_565), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(101[8] 106[4])
    defparam BAr_129.GSR = "ENABLED";
    FD1S3AX Equalr_130 (.D(nWEDMA_N_5), .CK(PHI2_N_565), .Q(Equalr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(101[8] 106[4])
    defparam Equalr_130.GSR = "ENABLED";
    FD1S3AX DMA_124 (.D(DMA_N_591), .CK(PHI2_N_565), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(35[8] 95[4])
    defparam DMA_124.GSR = "ENABLED";
    LUT4 Autoload_I_0_2_lut_rep_63_3_lut_4_lut (.A(DMA), .B(XferEnd_N_594), 
         .C(n3861), .D(AutoloadEN), .Z(n3840)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[18] 119[67])
    defparam Autoload_I_0_2_lut_rep_63_3_lut_4_lut.init = 16'h8f0f;
    LUT4 RegReset_I_0_4_lut (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(RegReset)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(162[2] 168[25])
    defparam RegReset_I_0_4_lut.init = 16'h1511;
    LUT4 i2076_4_lut_4_lut (.A(n3851), .B(n4), .C(n3846), .D(n3843), 
         .Z(RAMRD_N_572)) /* synthesis lut_function=(!((B (C+(D))+!B (D))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(28[19:39])
    defparam i2076_4_lut_4_lut.init = 16'h002a;
    FD1P3AX RAMRD_126 (.D(RAMRD_N_566), .SP(PHI2_N_565_enable_71), .CK(PHI2_N_565), 
            .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(35[8] 95[4])
    defparam RAMRD_126.GSR = "ENABLED";
    LUT4 i2024_2_lut_3_lut (.A(n3853), .B(\XferType[1] ), .C(Execute), 
         .Z(RAMRD_N_567)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(28[19:39])
    defparam i2024_2_lut_3_lut.init = 16'he0e0;
    LUT4 DMA_I_0_139_2_lut_rep_66 (.A(DMA), .B(XferEnd_N_594), .Z(n3843)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[18] 119[67])
    defparam DMA_I_0_139_2_lut_rep_66.init = 16'h8888;
    LUT4 Autoload_I_0_726_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_594), 
         .C(n3858), .D(AutoloadEN), .Z(REUAOut_15__N_140)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[18] 119[67])
    defparam Autoload_I_0_726_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 DMAr_I_0_2_lut_rep_102 (.A(DMAr), .B(BAr), .Z(n3879)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(119[36:47])
    defparam DMAr_I_0_2_lut_rep_102.init = 16'h8888;
    LUT4 XferEnd_I_149_2_lut_rep_94_3_lut (.A(DMAr), .B(BAr), .C(Equalr), 
         .Z(n3871)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(119[36:47])
    defparam XferEnd_I_149_2_lut_rep_94_3_lut.init = 16'h0808;
    LUT4 mux_201_Mux_0_i1_3_lut_4_lut (.A(DMAr), .B(BAr), .C(n3853), .D(n3881), 
         .Z(n1)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(119[36:47])
    defparam mux_201_Mux_0_i1_3_lut_4_lut.init = 16'hf808;
    LUT4 mux_201_Mux_0_i2_3_lut_rep_72_4_lut (.A(n3879), .B(Equalr), .C(n3853), 
         .D(RAMWR), .Z(n3849)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(119[35:59])
    defparam mux_201_Mux_0_i2_3_lut_rep_72_4_lut.init = 16'hdfd0;
    LUT4 i3347_4_lut (.A(n9), .B(n7), .C(n6), .D(DMA), .Z(PHI2_N_565_enable_71)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3347_4_lut.init = 16'hf7ff;
    LUT4 AutoloadEN_I_0_2_lut_rep_65_3_lut (.A(DMA), .B(XferEnd_N_594), 
         .C(AutoloadEN), .Z(n3842)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[18] 119[67])
    defparam AutoloadEN_I_0_2_lut_rep_65_3_lut.init = 16'h8080;
    LUT4 i3_2_lut (.A(BA_c), .B(nRESETr[1]), .Z(n9)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i3_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_rep_67_4_lut (.A(n3853), .B(\XferType[1] ), .C(n3881), 
         .D(nWEDMA_N_5), .Z(PHI2_N_565_enable_23)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_67_4_lut.init = 16'h0080;
    LUT4 i3223_3_lut_4_lut (.A(n3853), .B(\XferType[1] ), .C(n3871), .D(\Length[2] ), 
         .Z(n3455)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i3223_3_lut_4_lut.init = 16'hff80;
    LUT4 Autoload_I_0_735_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_594), 
         .C(n3862), .D(AutoloadEN), .Z(REUAOut_7__N_185)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[18] 119[67])
    defparam Autoload_I_0_735_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 DMA_I_0_2_lut (.A(DMA), .B(Length1_N_640), .Z(SetEndOfBlock)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(155[24:38])
    defparam DMA_I_0_2_lut.init = 16'h2222;
    LUT4 i993_2_lut_4_lut (.A(RAMWR), .B(n3871), .C(n3853), .D(n3881), 
         .Z(n1217)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(144[2] 151[60])
    defparam i993_2_lut_4_lut.init = 16'h3a00;
    LUT4 n3853_bdd_3_lut_3542 (.A(n3853), .B(nWEDMA_c), .C(BA_c), .Z(n3955)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam n3853_bdd_3_lut_3542.init = 16'hbfbf;
    LUT4 n3853_bdd_3_lut_3631 (.A(n3860), .B(D_out_0), .C(\XferType[0] ), 
         .Z(n3956)) /* synthesis lut_function=(!(A (C)+!A (B))) */ ;
    defparam n3853_bdd_3_lut_3631.init = 16'h1b1b;
    LUT4 RegReset_I_0_4_lut_rep_113 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n4162)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(162[2] 168[25])
    defparam RegReset_I_0_4_lut_rep_113.init = 16'h1511;
    LUT4 i1_3_lut_rep_68_4_lut (.A(DMA), .B(BA_c), .C(n3849), .D(\XferType[1] ), 
         .Z(n3845)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(124[2:11])
    defparam i1_3_lut_rep_68_4_lut.init = 16'h8088;
    LUT4 n3957_bdd_2_lut (.A(n3957), .B(XferEnd_N_594), .Z(n3958)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n3957_bdd_2_lut.init = 16'h2222;
    LUT4 XferSwap_I_0_141_2_lut_rep_69_3_lut (.A(n3853), .B(\XferType[1] ), 
         .C(BA_c), .Z(n3846)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(30[19:39])
    defparam XferSwap_I_0_141_2_lut_rep_69_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_104 (.A(DMA), .B(BA_c), .Z(n3881)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(157[23:56])
    defparam i1_2_lut_rep_104.init = 16'h8888;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_565), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=78, LSE_RLINE=90 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(101[8] 106[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(n3853), .B(\XferType[1] ), .C(RAMRD), .Z(n4)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(29[19:39])
    defparam i1_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_4_lut_adj_181 (.A(DMA), .B(n3853), .C(n3442), .D(\XferType[1] ), 
         .Z(RAMWR_N_579)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(70[11] 94[5])
    defparam i1_4_lut_adj_181.init = 16'ha022;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd_N_594), .C(DMA), .Z(DMA_N_591)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(70[11] 94[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    PFUMX i3545 (.BLUT(n3959), .ALUT(n3958), .C0(DMA), .Z(nWEDMA_N_608));
    PFUMX i3543 (.BLUT(n3956), .ALUT(n3955), .C0(\XferType[1] ), .Z(n3957));
    LUT4 Autoload_I_0_748_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_594), 
         .C(n3859), .D(AutoloadEN), .Z(CAOut_15__N_228)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(111[18] 119[67])
    defparam Autoload_I_0_748_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 DMA_I_0_1_lut (.A(DMA), .Z(nDMA_c)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(46[16:20])
    defparam DMA_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (GND_net, REUAOut_15__N_140, REUA, n3842, n3861, PHI2_N_565, 
            RegReset, D_out_7, XferType, D_out_0, n3860, \XferType[1] , 
            n3848, A_out_0, A_out_1, n3882, nWE_c, n3888, n4163, 
            D_out_3, ExecuteEN, CA, EndOfBlock, D_out_6, n3673, 
            n3851, D_out_4, D_out_5, A_out_3, D_out_2, SetEndOfBlock, 
            n4161, n3479, n18, Execute, n7, PHI2_N_565_enable_23, 
            n4162, XferEnd_N_594, DMA, A_out_2, A_out_4, n1371, 
            FF00DecodeEN, D_out_1, A_0__N_88, n3864, IntPending_N_535, 
            IntEnable, EndOfBlockMask, n426, AutoloadEN, n2170, PHI2_N_565_enable_76, 
            n3668, n3863, n3853, n3865, Length1_N_640, \Length[2] , 
            n3874, n3859, n3857, n3862, n3881, n3849, n3858, IncREUA, 
            n3631, n3651, n3840, n3845, RAMWR, BA_c, n3442, n3455, 
            n3847, nIO2_c, n3453, n3275, REUAOut_7__N_185, CAOut_15__N_228, 
            CAOut_7__N_273, n427, n3638, n3686, IRQOut_N_527) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input REUAOut_15__N_140;
    output [23:0]REUA;
    input n3842;
    input n3861;
    input PHI2_N_565;
    input RegReset;
    input D_out_7;
    output [1:0]XferType;
    input D_out_0;
    output n3860;
    output \XferType[1] ;
    output n3848;
    input A_out_0;
    input A_out_1;
    output n3882;
    input nWE_c;
    input n3888;
    input n4163;
    input D_out_3;
    output ExecuteEN;
    output [15:0]CA;
    output EndOfBlock;
    input D_out_6;
    output n3673;
    output n3851;
    input D_out_4;
    input D_out_5;
    input A_out_3;
    input D_out_2;
    input SetEndOfBlock;
    input n4161;
    input n3479;
    input n18;
    output Execute;
    output n7;
    input PHI2_N_565_enable_23;
    input n4162;
    input XferEnd_N_594;
    input DMA;
    input A_out_2;
    input A_out_4;
    output n1371;
    output FF00DecodeEN;
    input D_out_1;
    output A_0__N_88;
    input n3864;
    input IntPending_N_535;
    output IntEnable;
    output EndOfBlockMask;
    output n426;
    output AutoloadEN;
    output n2170;
    input PHI2_N_565_enable_76;
    output n3668;
    input n3863;
    output n3853;
    input n3865;
    output Length1_N_640;
    output \Length[2] ;
    input n3874;
    output n3859;
    output n3857;
    output n3862;
    input n3881;
    input n3849;
    output n3858;
    input IncREUA;
    output n3631;
    output n3651;
    input n3840;
    input n3845;
    input RAMWR;
    input BA_c;
    output n3442;
    input n3455;
    input n3847;
    input nIO2_c;
    input n3453;
    input n3275;
    input REUAOut_7__N_185;
    input CAOut_15__N_228;
    input CAOut_7__N_273;
    output n427;
    output n3638;
    output n3686;
    output IRQOut_N_527;
    
    wire PHI2_N_565 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(100[11:18])
    
    wire n3045;
    wire [18:0]REUAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(47[12:23])
    wire [7:0]REUAOut_15__N_137;
    
    wire n3046;
    wire [15:0]LengthWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(52[12:25])
    wire [7:0]Length_7__N_434;
    wire [7:0]n816;
    
    wire PHI2_N_565_enable_69, n3648, PHI2_N_565_enable_68, n1119, n3866;
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(51[12:18])
    
    wire n3709, n1133, n3052;
    wire [7:0]Length_15__N_387;
    
    wire n3710, n3852, n3051, PHI2_N_565_enable_24, n3267;
    wire [7:0]n304;
    
    wire DF01Reserved6, n3712, n3715, n3716, PHI2_N_565_enable_75, 
        n3672, n3671, n3528, n1091, n1093, n1072, PHI2_N_565_enable_67, 
        n3868, n1097;
    wire [15:0]CAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(42[12:21])
    
    wire PHI2_N_565_enable_70, PHI2_N_565_enable_54, PHI2_N_565_enable_61;
    wire [7:0]n303;
    
    wire n3050, n3049, n3646, n3629, IntPending, n3718, n1134, 
        n3855, Fault;
    wire [7:0]n302;
    
    wire n3369, PHI2_N_565_enable_55, n3869, Length_7__N_431, Length_0__N_467;
    wire [3:2]DF01Reserved32;   // //mac/icloud/repos/gw4302/cpld/reg.v(34[11:25])
    
    wire PHI2_N_565_enable_32;
    wire [7:0]n360;
    
    wire n3669, n3670, n3645, n3440, n3450, n29, n3047;
    wire [7:0]n301;
    
    wire n3720;
    wire [7:0]n405;
    
    wire n15;
    wire [7:0]n372;
    wire [1:0]IncMode;   // //mac/icloud/repos/gw4302/cpld/reg.v(62[11:18])
    
    wire VerifyErrMask, Length_5__N_442, Length_4__N_447, n2172, Length_3__N_452, 
        Length_2__N_457, Length_1__N_462, Length_6__N_437, n3856;
    wire [7:0]n817;
    
    wire n3870;
    wire [7:0]CAOut_15__N_225;
    
    wire n1103, n3841, n850, n3667, n3666;
    wire [2:0]n300;
    wire [7:0]n336;
    
    wire n3650, n3014, n3015, n3627, n3633, n3632, n3634;
    wire [7:0]REUAOut_7__N_184;
    wire [7:0]CAOut_7__N_272;
    
    wire PHI2_N_565_enable_87, Length_15__N_384, n17, n30, n26, n18_adj_672, 
        n21, n28;
    wire [2:0]n299;
    
    wire n13, REUAOut_15__N_138, n14;
    wire [7:0]n320;
    
    wire n3044, n11, n3664, n3665, n3839;
    wire [7:0]n348;
    
    wire IncCAg, n3875, n9, n8, n3630, n3628, n3649, n7_adj_673, 
        n6, IncREUAg, n17_adj_674, n12, CAOut_15__N_226, PHI2_N_565_enable_81, 
        Length_8__N_426, Length_9__N_421, Length_10__N_416, n3682;
    wire [1:0]XferType_c;   // //mac/icloud/repos/gw4302/cpld/reg.v(38[11:19])
    
    wire n18_adj_676, n20, n3685, n3635, n3719, n3717, n3876, 
        n3637, Length_11__N_411, Length_12__N_406, Length_13__N_401, 
        Length_14__N_396, n3039, n3038, n3037, n3036, n3031, n3030, 
        n3029, n3028, n3023, n3022, n3021, n3020, n3013, n3016, 
        n3713, n3711, n3714, n3683, n3684, n3647, n3636;
    
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_140), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(REUAOut_15__N_140), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n3045), .COUT(n3046), .S0(REUAOut_15__N_137[2]), 
          .S1(REUAOut_15__N_137[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    LUT4 mux_624_i7_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[6]), 
         .D(Length_7__N_434[6]), .Z(n816[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i7_3_lut_4_lut.init = 16'hf4b0;
    FD1P3IX REUA_23__656 (.D(D_out_7), .SP(PHI2_N_565_enable_69), .CD(RegReset), 
            .CK(PHI2_N_565), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_23__656.GSR = "ENABLED";
    LUT4 i1945_2_lut_rep_71_4_lut (.A(XferType[0]), .B(D_out_0), .C(n3860), 
         .D(\XferType[1] ), .Z(n3848)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[27:62])
    defparam i1945_2_lut_rep_71_4_lut.init = 16'hac00;
    LUT4 A_4__I_0_831_i6_2_lut_rep_105 (.A(A_out_0), .B(A_out_1), .Z(n3882)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(77[2:14])
    defparam A_4__I_0_831_i6_2_lut_rep_105.init = 16'heeee;
    LUT4 REUA_3__bdd_3_lut (.A(REUA[3]), .B(A_out_0), .C(REUA[11]), .Z(n3648)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_3__bdd_3_lut.init = 16'he2e2;
    FD1P3AX LengthWritten_14__692 (.D(n1119), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_14__692.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_89_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(nWE_c), 
         .D(n3888), .Z(n3866)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(77[2:14])
    defparam i1_2_lut_rep_89_3_lut_4_lut.init = 16'hfffe;
    LUT4 A_out_0_bdd_3_lut_3436 (.A(Length[6]), .B(A_out_1), .C(REUA[14]), 
         .Z(n3709)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3436.init = 16'hb8b8;
    FD1P3AX LengthWritten_8__698 (.D(n1133), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_8__698.GSR = "ENABLED";
    CCU2D Length_15__I_0_839_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3052), .S0(Length_15__N_387[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_839_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_9.INJECT1_1 = "NO";
    LUT4 A_out_0_bdd_2_lut_3437 (.A(REUA[6]), .B(A_out_1), .Z(n3710)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3437.init = 16'heeee;
    LUT4 XferType_1__I_0_142_i3_2_lut_rep_75_4_lut (.A(XferType[0]), .B(D_out_0), 
         .C(n3860), .D(\XferType[1] ), .Z(n3852)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[27:62])
    defparam XferType_1__I_0_142_i3_2_lut_rep_75_4_lut.init = 16'hacff;
    CCU2D Length_15__I_0_839_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3051), .COUT(n3052), .S0(Length_15__N_387[5]), 
          .S1(Length_15__N_387[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_7.INJECT1_1 = "NO";
    FD1P3IX REUA_19__660 (.D(D_out_3), .SP(PHI2_N_565_enable_69), .CD(n4163), 
            .CK(PHI2_N_565), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_19__660.GSR = "ENABLED";
    FD1P3AX ExecuteEN_586 (.D(n3267), .SP(PHI2_N_565_enable_24), .CK(PHI2_N_565), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam ExecuteEN_586.GSR = "ENABLED";
    FD1S3IX CA_7__592 (.D(n304[7]), .CK(PHI2_N_565), .CD(RegReset), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_7__592.GSR = "ENABLED";
    LUT4 n338_bdd_3_lut_3528 (.A(A_out_0), .B(EndOfBlock), .C(DF01Reserved6), 
         .Z(n3712)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n338_bdd_3_lut_3528.init = 16'he4e4;
    LUT4 A_out_0_bdd_3_lut (.A(Length[7]), .B(A_out_1), .C(REUA[15]), 
         .Z(n3715)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut.init = 16'hb8b8;
    LUT4 A_out_0_bdd_2_lut (.A(REUA[7]), .B(A_out_1), .Z(n3716)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut.init = 16'heeee;
    FD1P3IX DF01Reserved6_587 (.D(D_out_6), .SP(PHI2_N_565_enable_75), .CD(RegReset), 
            .CK(PHI2_N_565), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved6_587.GSR = "ENABLED";
    FD1P3IX REUA_22__657 (.D(D_out_6), .SP(PHI2_N_565_enable_69), .CD(RegReset), 
            .CK(PHI2_N_565), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_22__657.GSR = "ENABLED";
    PFUMX i3406 (.BLUT(n3672), .ALUT(n3671), .C0(n3528), .Z(n3673));
    LUT4 XferType_1__I_0_148_i3_2_lut_rep_74_4_lut (.A(XferType[0]), .B(D_out_0), 
         .C(n3860), .D(\XferType[1] ), .Z(n3851)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[27:62])
    defparam XferType_1__I_0_148_i3_2_lut_rep_74_4_lut.init = 16'hffac;
    FD1P3AX LengthWritten_9__697 (.D(n1091), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_9__697.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__696 (.D(n1093), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_10__696.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__695 (.D(n1072), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_11__695.GSR = "ENABLED";
    FD1P3IX REUAWritten_6__633 (.D(D_out_6), .SP(PHI2_N_565_enable_67), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_6__633.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__694 (.D(n3868), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_12__694.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__693 (.D(n1097), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_13__693.GSR = "ENABLED";
    FD1P3IX REUAWritten_7__632 (.D(D_out_7), .SP(PHI2_N_565_enable_67), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_7__632.GSR = "ENABLED";
    FD1P3AX CAWritten_12__619 (.D(D_out_4), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_12__619.GSR = "ENABLED";
    FD1P3AX CAWritten_0__607 (.D(D_out_0), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_0__607.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__682 (.D(n1133), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_0__682.GSR = "ENABLED";
    FD1S3IX CA_6__593 (.D(n304[6]), .CK(PHI2_N_565), .CD(RegReset), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_6__593.GSR = "ENABLED";
    FD1S3IX CA_5__594 (.D(n304[5]), .CK(PHI2_N_565), .CD(RegReset), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_5__594.GSR = "ENABLED";
    FD1S3IX CA_4__595 (.D(n304[4]), .CK(PHI2_N_565), .CD(RegReset), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_4__595.GSR = "ENABLED";
    FD1S3IX CA_3__596 (.D(n304[3]), .CK(PHI2_N_565), .CD(RegReset), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_3__596.GSR = "ENABLED";
    FD1S3IX CA_2__597 (.D(n304[2]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_2__597.GSR = "ENABLED";
    FD1S3IX CA_1__598 (.D(n304[1]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_1__598.GSR = "ENABLED";
    FD1S3IX CA_0__599 (.D(n304[0]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_0__599.GSR = "ENABLED";
    FD1S3IX CA_15__608 (.D(n303[7]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_15__608.GSR = "ENABLED";
    CCU2D Length_15__I_0_839_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3050), .COUT(n3051), .S0(Length_15__N_387[3]), 
          .S1(Length_15__N_387[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3049), .COUT(n3050), .S0(Length_15__N_387[1]), 
          .S1(Length_15__N_387[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_3.INJECT1_1 = "NO";
    FD1P3IX REUA_21__658 (.D(D_out_5), .SP(PHI2_N_565_enable_69), .CD(n4163), 
            .CK(PHI2_N_565), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_21__658.GSR = "ENABLED";
    LUT4 A_out_0_bdd_3_lut_3428 (.A(A_out_1), .B(Length[11]), .C(A_out_3), 
         .Z(n3646)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3428.init = 16'hefef;
    FD1P3IX REUA_20__659 (.D(D_out_4), .SP(PHI2_N_565_enable_69), .CD(n4163), 
            .CK(PHI2_N_565), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_20__659.GSR = "ENABLED";
    LUT4 n323_bdd_3_lut (.A(A_out_0), .B(CA[13]), .C(CA[5]), .Z(n3629)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n323_bdd_3_lut.init = 16'hd8d8;
    FD1P3IX REUAWritten_18__664 (.D(D_out_2), .SP(PHI2_N_565_enable_69), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_18__664.GSR = "ENABLED";
    LUT4 n337_bdd_3_lut_3592 (.A(A_out_0), .B(IntPending), .C(ExecuteEN), 
         .Z(n3718)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n337_bdd_3_lut_3592.init = 16'he4e4;
    FD1P3AX CAWritten_11__620 (.D(D_out_3), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_11__620.GSR = "ENABLED";
    FD1P3IX EndOfBlock_584 (.D(n4161), .SP(SetEndOfBlock), .CD(n1134), 
            .CK(PHI2_N_565), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam EndOfBlock_584.GSR = "ENABLED";
    LUT4 Execute_I_0_4_lut (.A(n3479), .B(D_out_4), .C(n18), .D(n3855), 
         .Z(Execute)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(258[2] 261[45])
    defparam Execute_I_0_4_lut.init = 16'hdc50;
    LUT4 i1_2_lut_4_lut (.A(XferType[0]), .B(D_out_0), .C(n3860), .D(\XferType[1] ), 
         .Z(n7)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[27:62])
    defparam i1_2_lut_4_lut.init = 16'h5300;
    FD1P3AX CAWritten_10__621 (.D(D_out_2), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_10__621.GSR = "ENABLED";
    FD1P3IX Fault_585 (.D(n4161), .SP(PHI2_N_565_enable_23), .CD(n1134), 
            .CK(PHI2_N_565), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam Fault_585.GSR = "ENABLED";
    FD1S3IX CA_14__609 (.D(n303[6]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_14__609.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n4162), .B(n3860), .C(XferEnd_N_594), 
         .D(DMA), .Z(PHI2_N_565_enable_24)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfbbb;
    FD1S3IX CA_13__610 (.D(n303[5]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_13__610.GSR = "ENABLED";
    FD1S3IX CA_12__611 (.D(n303[4]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_12__611.GSR = "ENABLED";
    FD1S3IX CA_11__612 (.D(n303[3]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_11__612.GSR = "ENABLED";
    FD1S3IX CA_10__613 (.D(n303[2]), .CK(PHI2_N_565), .CD(RegReset), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_10__613.GSR = "ENABLED";
    FD1S3IX CA_9__614 (.D(n303[1]), .CK(PHI2_N_565), .CD(RegReset), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_9__614.GSR = "ENABLED";
    FD1S3IX CA_8__615 (.D(n303[0]), .CK(PHI2_N_565), .CD(n4163), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_8__615.GSR = "ENABLED";
    FD1S3IX REUA_7__624 (.D(n302[7]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_7__624.GSR = "ENABLED";
    LUT4 i1992_2_lut (.A(D_out_6), .B(n4162), .Z(n1119)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam i1992_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), .Z(n1371)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i2_3_lut.init = 16'hefef;
    FD1P3AX FF00DecodeEN_589 (.D(n3369), .SP(PHI2_N_565_enable_24), .CK(PHI2_N_565), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam FF00DecodeEN_589.GSR = "ENABLED";
    FD1P3AX CAWritten_9__622 (.D(D_out_1), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_9__622.GSR = "ENABLED";
    CCU2D Length_15__I_0_839_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3049), .S1(Length_15__N_387[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_839_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_1.INJECT1_1 = "NO";
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_88)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(221[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    FD1P3IX REUAWritten_8__655 (.D(D_out_0), .SP(PHI2_N_565_enable_55), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_8__655.GSR = "ENABLED";
    LUT4 Length_7__I_101_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_7), 
         .D(n816[7]), .Z(Length_7__N_431)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_101_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_8__623 (.D(D_out_0), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_8__623.GSR = "ENABLED";
    LUT4 Length_0__I_115_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_0), 
         .D(n816[0]), .Z(Length_0__N_467)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_115_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_565_enable_75), 
            .CD(n4163), .CK(PHI2_N_565), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    FD1P3IX IntPending_583 (.D(n4161), .SP(IntPending_N_535), .CD(n1134), 
            .CK(PHI2_N_565), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam IntPending_583.GSR = "ENABLED";
    FD1P3IX IntEnable_699 (.D(D_out_7), .SP(PHI2_N_565_enable_32), .CD(RegReset), 
            .CK(PHI2_N_565), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam IntEnable_699.GSR = "ENABLED";
    FD1P3IX EndOfBlockMask_700 (.D(D_out_6), .SP(PHI2_N_565_enable_32), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam EndOfBlockMask_700.GSR = "ENABLED";
    PFUMX i3404 (.BLUT(n360[1]), .ALUT(n3669), .C0(A_out_3), .Z(n3670));
    LUT4 A_out_0_bdd_2_lut_3429 (.A(Length[3]), .B(A_out_3), .Z(n3645)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3429.init = 16'heeee;
    FD1S3IX REUA_6__625 (.D(n302[6]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_6__625.GSR = "ENABLED";
    LUT4 i1985_2_lut (.A(D_out_0), .B(n4162), .Z(n1133)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1985_2_lut.init = 16'heeee;
    PFUMX i36 (.BLUT(n3440), .ALUT(n3450), .C0(DMA), .Z(n29));
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_140), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(REUAOut_15__N_140), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n3047), .S0(REUAOut_15__N_137[6]), .S1(REUAOut_15__N_137[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    FD1S3IX REUA_5__626 (.D(n302[5]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_5__626.GSR = "ENABLED";
    FD1S3IX REUA_4__627 (.D(n302[4]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_4__627.GSR = "ENABLED";
    FD1S3IX REUA_3__628 (.D(n302[3]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_3__628.GSR = "ENABLED";
    FD1S3IX REUA_2__629 (.D(n302[2]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_2__629.GSR = "ENABLED";
    FD1S3IX REUA_1__630 (.D(n302[1]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_1__630.GSR = "ENABLED";
    FD1S3IX REUA_0__631 (.D(n302[0]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_0__631.GSR = "ENABLED";
    FD1S3IX REUA_15__640 (.D(n301[7]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_15__640.GSR = "ENABLED";
    LUT4 mux_196_i8_3_lut (.A(n3720), .B(n405[7]), .C(A_out_3), .Z(n426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_196_i8_3_lut.init = 16'hcaca;
    LUT4 i5_2_lut (.A(CA[4]), .B(CA[5]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[15:35])
    defparam i5_2_lut.init = 16'h8888;
    LUT4 mux_192_i8_3_lut (.A(n372[7]), .B(IncMode[1]), .C(A_out_1), .Z(n405[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_192_i8_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_6__601 (.D(D_out_6), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_6__601.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_140), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(REUAOut_15__N_140), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n3046), .COUT(n3047), .S0(REUAOut_15__N_137[4]), 
          .S1(REUAOut_15__N_137[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    LUT4 mux_183_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n372[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_183_i8_3_lut.init = 16'hcaca;
    FD1P3IX VerifyErrMask_701 (.D(D_out_5), .SP(PHI2_N_565_enable_32), .CD(RegReset), 
            .CK(PHI2_N_565), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam VerifyErrMask_701.GSR = "ENABLED";
    FD1P3AX CAWritten_5__602 (.D(D_out_5), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_5__602.GSR = "ENABLED";
    FD1P3IX AutoloadEN_588 (.D(D_out_5), .SP(PHI2_N_565_enable_75), .CD(n4163), 
            .CK(PHI2_N_565), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam AutoloadEN_588.GSR = "ENABLED";
    LUT4 Length_5__I_105_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_5), 
         .D(n816[5]), .Z(Length_5__N_442)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_105_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_4__I_107_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_4), 
         .D(n816[4]), .Z(Length_4__N_447)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_107_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2077_4_lut (.A(A_out_4), .B(A_out_3), .C(n2172), .D(A_out_2), 
         .Z(n2170)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2077_4_lut.init = 16'heeea;
    LUT4 i1954_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2172)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1954_2_lut.init = 16'h8888;
    FD1P3AX CAWritten_4__603 (.D(D_out_4), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_4__603.GSR = "ENABLED";
    FD1P3AX CAWritten_3__604 (.D(D_out_3), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_3__604.GSR = "ENABLED";
    LUT4 Length_3__I_109_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_3), 
         .D(n816[3]), .Z(Length_3__N_452)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_109_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_2__I_111_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_2), 
         .D(n816[2]), .Z(Length_2__N_457)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_111_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_9__654 (.D(D_out_1), .SP(PHI2_N_565_enable_55), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_9__654.GSR = "ENABLED";
    FD1P3IX REUAWritten_10__653 (.D(D_out_2), .SP(PHI2_N_565_enable_55), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_10__653.GSR = "ENABLED";
    LUT4 Length_1__I_113_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_1), 
         .D(n816[1]), .Z(Length_1__N_462)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_113_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_6__I_103_3_lut_4_lut (.A(n3869), .B(n3864), .C(D_out_6), 
         .D(n816[6]), .Z(Length_6__N_437)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_103_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_625_i4_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[11]), 
         .D(Length_15__N_387[3]), .Z(n817[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i4_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX CAWritten_2__605 (.D(D_out_2), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_2__605.GSR = "ENABLED";
    LUT4 mux_154_i5_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_4), .D(CAOut_15__N_225[4]), 
         .Z(n303[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i5_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_11__652 (.D(D_out_3), .SP(PHI2_N_565_enable_55), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_11__652.GSR = "ENABLED";
    FD1P3AX CAWritten_15__616 (.D(D_out_7), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_15__616.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__675 (.D(n1103), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_7__675.GSR = "ENABLED";
    FD1P3AX LengthWritten_6__676 (.D(n1119), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_6__676.GSR = "ENABLED";
    LUT4 mux_154_i1_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_0), .D(CAOut_15__N_225[0]), 
         .Z(n303[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_14__617 (.D(D_out_6), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_14__617.GSR = "ENABLED";
    FD1S3IX REUA_14__641 (.D(n301[6]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_14__641.GSR = "ENABLED";
    FD1S3IX REUA_13__642 (.D(n301[5]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_13__642.GSR = "ENABLED";
    FD1S3IX REUA_12__643 (.D(n301[4]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_12__643.GSR = "ENABLED";
    FD1S3IX REUA_11__644 (.D(n301[3]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_11__644.GSR = "ENABLED";
    FD1S3IX REUA_10__645 (.D(n301[2]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_10__645.GSR = "ENABLED";
    FD1S3IX REUA_9__646 (.D(n301[1]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_9__646.GSR = "ENABLED";
    FD1S3IX REUA_8__647 (.D(n301[0]), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_8__647.GSR = "ENABLED";
    FD1P3AX LengthWritten_5__677 (.D(n1097), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_5__677.GSR = "ENABLED";
    LUT4 mux_154_i2_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_1), .D(CAOut_15__N_225[1]), 
         .Z(n303[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_154_i3_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_2), .D(CAOut_15__N_225[2]), 
         .Z(n303[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i3_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_12__651 (.D(D_out_4), .SP(PHI2_N_565_enable_55), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_12__651.GSR = "ENABLED";
    LUT4 i659_2_lut_3_lut (.A(REUA[16]), .B(n3841), .C(REUA[17]), .Z(n850)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam i659_2_lut_3_lut.init = 16'h8080;
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_565_enable_76), .CD(RegReset), 
            .CK(PHI2_N_565), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(250[8] 253[4])
    defparam IncMode__i0.GSR = "ENABLED";
    PFUMX i3402 (.BLUT(n3667), .ALUT(n3666), .C0(n3528), .Z(n3668));
    FD1P3AX LengthWritten_4__678 (.D(n3868), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_4__678.GSR = "ENABLED";
    FD1P3AX LengthWritten_2__680 (.D(n1093), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_2__680.GSR = "ENABLED";
    FD1P3AX LengthWritten_1__681 (.D(n1091), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_1__681.GSR = "ENABLED";
    FD1S3IX REUA_18__661 (.D(n300[2]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_18__661.GSR = "ENABLED";
    LUT4 mux_154_i8_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_7), .D(CAOut_15__N_225[7]), 
         .Z(n303[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_154_i7_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_6), .D(CAOut_15__N_225[6]), 
         .Z(n303[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_624_i5_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[4]), 
         .D(Length_7__N_434[4]), .Z(n816[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 REUA_3__bdd_4_lut_3452 (.A(n336[3]), .B(A_out_0), .C(A_out_1), 
         .D(DF01Reserved32[3]), .Z(n3650)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam REUA_3__bdd_4_lut_3452.init = 16'haca0;
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3014), .COUT(n3015), .S0(Length_7__N_434[3]), 
          .S1(Length_7__N_434[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    FD1S3IX REUA_17__662 (.D(n300[1]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_17__662.GSR = "ENABLED";
    FD1S3IX REUA_16__663 (.D(n300[0]), .CK(PHI2_N_565), .CD(n4163), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_16__663.GSR = "ENABLED";
    LUT4 n351_bdd_4_lut (.A(n405[5]), .B(A_out_0), .C(Length[5]), .D(A_out_3), 
         .Z(n3627)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam n351_bdd_4_lut.init = 16'haaf3;
    LUT4 mux_154_i4_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_3), .D(CAOut_15__N_225[3]), 
         .Z(n303[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i4_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_7__600 (.D(D_out_7), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_7__600.GSR = "ENABLED";
    PFUMX i3378 (.BLUT(n3633), .ALUT(n3632), .C0(A_out_0), .Z(n3634));
    LUT4 mux_154_i6_3_lut_4_lut (.A(n3870), .B(n3864), .C(D_out_5), .D(CAOut_15__N_225[5]), 
         .Z(n303[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_154_i6_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_13__650 (.D(D_out_5), .SP(PHI2_N_565_enable_55), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_13__650.GSR = "ENABLED";
    LUT4 mux_153_i8_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_7), .D(REUAOut_7__N_184[7]), 
         .Z(n302[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_153_i7_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_6), .D(REUAOut_7__N_184[6]), 
         .Z(n302[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_14__649 (.D(D_out_6), .SP(PHI2_N_565_enable_55), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_14__649.GSR = "ENABLED";
    LUT4 mux_153_i6_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_5), .D(REUAOut_7__N_184[5]), 
         .Z(n302[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_153_i5_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_4), .D(REUAOut_7__N_184[4]), 
         .Z(n302[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_153_i4_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_3), .D(REUAOut_7__N_184[3]), 
         .Z(n302[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_153_i3_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_2), .D(REUAOut_7__N_184[2]), 
         .Z(n302[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_153_i2_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_1), .D(REUAOut_7__N_184[1]), 
         .Z(n302[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_153_i1_3_lut_4_lut (.A(n3869), .B(n3866), .C(D_out_0), .D(REUAOut_7__N_184[0]), 
         .Z(n302[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_153_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_1__606 (.D(D_out_1), .SP(PHI2_N_565_enable_54), .CK(PHI2_N_565), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_1__606.GSR = "ENABLED";
    LUT4 mux_155_i8_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_7), .D(CAOut_7__N_272[7]), 
         .Z(n304[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i8_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX XferType__i0 (.D(n3853), .CK(PHI2_N_565), .CD(n4163), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__648 (.D(D_out_7), .SP(PHI2_N_565_enable_55), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_15__648.GSR = "ENABLED";
    LUT4 i1996_2_lut (.A(D_out_7), .B(n4162), .Z(n1103)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1996_2_lut.init = 16'heeee;
    LUT4 mux_155_i7_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_6), .D(CAOut_7__N_272[6]), 
         .Z(n304[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_155_i6_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_5), .D(CAOut_7__N_272[5]), 
         .Z(n304[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_0__639 (.D(D_out_0), .SP(PHI2_N_565_enable_67), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_0__639.GSR = "ENABLED";
    FD1P3JX Length_6__668 (.D(Length_6__N_437), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_6__668.GSR = "ENABLED";
    FD1P3JX Length_7__667 (.D(Length_7__N_431), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_7__667.GSR = "ENABLED";
    LUT4 mux_155_i5_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_4), .D(CAOut_7__N_272[4]), 
         .Z(n304[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_155_i4_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_3), .D(CAOut_7__N_272[3]), 
         .Z(n304[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_1__638 (.D(D_out_1), .SP(PHI2_N_565_enable_67), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_1__638.GSR = "ENABLED";
    LUT4 mux_155_i3_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_2), .D(CAOut_7__N_272[2]), 
         .Z(n304[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_15__I_84_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_7), 
         .D(n817[7]), .Z(Length_15__N_384)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_84_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i8_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_7), .D(REUAOut_15__N_137[7]), 
         .Z(n301[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_155_i2_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_1), .D(CAOut_7__N_272[1]), 
         .Z(n304[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i7_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_6), .D(REUAOut_15__N_137[6]), 
         .Z(n301[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_2__637 (.D(D_out_2), .SP(PHI2_N_565_enable_67), 
            .CD(n4163), .CK(PHI2_N_565), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_2__637.GSR = "ENABLED";
    LUT4 mux_625_i3_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[10]), 
         .D(Length_15__N_387[2]), .Z(n817[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_152_i6_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_5), .D(REUAOut_15__N_137[5]), 
         .Z(n301[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i5_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_4), .D(REUAOut_15__N_137[4]), 
         .Z(n301[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i4_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_3), .D(REUAOut_15__N_137[3]), 
         .Z(n301[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i3_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_2), .D(REUAOut_15__N_137[2]), 
         .Z(n301[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_152_i2_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_1), .D(REUAOut_15__N_137[1]), 
         .Z(n301[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18_adj_672), .Z(Length1_N_640)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[18:38])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(Length[0]), .B(Length[10]), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[18:38])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 mux_152_i1_3_lut_4_lut (.A(n3869), .B(n3865), .C(D_out_0), .D(REUAOut_15__N_137[0]), 
         .Z(n301[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_152_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_3__679 (.D(n1072), .SP(PHI2_N_565_enable_61), 
            .CK(PHI2_N_565), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_3__679.GSR = "ENABLED";
    LUT4 i14_4_lut (.A(n21), .B(n28), .C(Length[7]), .D(Length[12]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[18:38])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(Length[9]), .B(Length[3]), .C(\Length[2] ), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[18:38])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(Length[11]), .B(Length[8]), .Z(n18_adj_672)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[18:38])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 mux_155_i1_3_lut_4_lut (.A(n3870), .B(n3863), .C(D_out_0), .D(CAOut_7__N_272[0]), 
         .Z(n304[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_155_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5_2_lut_adj_169 (.A(Length[15]), .B(Length[14]), .Z(n21)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[18:38])
    defparam i5_2_lut_adj_169.init = 16'heeee;
    LUT4 i2067_2_lut_rep_82_4_lut (.A(A_out_0), .B(A_out_1), .C(n3874), 
         .D(n3870), .Z(n3859)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2067_2_lut_rep_82_4_lut.init = 16'hfffb;
    LUT4 i3344_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3528)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i3344_2_lut.init = 16'heeee;
    LUT4 A_out_0_bdd_2_lut_3384 (.A(Length[4]), .B(A_out_3), .Z(n3632)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3384.init = 16'heeee;
    LUT4 i1_2_lut_rep_79_4_lut (.A(A_out_0), .B(n3874), .C(A_out_1), .D(n3869), 
         .Z(n3856)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_79_4_lut.init = 16'h0020;
    LUT4 mux_151_i3_3_lut_4_lut (.A(n3869), .B(n3863), .C(D_out_2), .D(n299[2]), 
         .Z(n300[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_151_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_out_0_bdd_3_lut_3385 (.A(A_out_1), .B(Length[12]), .C(A_out_3), 
         .Z(n3633)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3385.init = 16'hefef;
    LUT4 mux_625_i5_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[12]), 
         .D(Length_15__N_387[4]), .Z(n817[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i12_4_lut (.A(Length[5]), .B(Length[4]), .C(Length[13]), .D(Length[6]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(53[18:38])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_80_4_lut (.A(A_out_0), .B(n3874), .C(A_out_1), .D(n3870), 
         .Z(n3857)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_80_4_lut.init = 16'h0020;
    LUT4 mux_624_i6_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[5]), 
         .D(Length_7__N_434[5]), .Z(n816[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_3_lut_rep_64 (.A(n13), .B(REUAOut_15__N_138), .C(n14), .Z(n3841)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_rep_64.init = 16'h8080;
    LUT4 mux_163_i6_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n320[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_163_i6_3_lut.init = 16'hcaca;
    LUT4 i2061_2_lut_rep_83_4_lut (.A(A_out_0), .B(A_out_1), .C(n3874), 
         .D(n3870), .Z(n3860)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2061_2_lut_rep_83_4_lut.init = 16'hfffd;
    LUT4 i2059_2_lut_rep_85_4_lut (.A(A_out_0), .B(A_out_1), .C(n3874), 
         .D(n3869), .Z(n3862)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2059_2_lut_rep_85_4_lut.init = 16'hfffd;
    LUT4 i284_2_lut_3_lut_4_lut (.A(n3874), .B(n3882), .C(n4162), .D(n3869), 
         .Z(PHI2_N_565_enable_67)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i284_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 mux_625_i6_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[13]), 
         .D(Length_15__N_387[5]), .Z(n817[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i6_3_lut_4_lut.init = 16'hf1e0;
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_138), .B0(REUAOut_15__N_140), 
          .C0(REUAWritten[8]), .D0(REUA[8]), .A1(GND_net), .B1(REUAOut_15__N_140), 
          .C1(REUAWritten[9]), .D1(REUA[9]), .CIN(n3044), .COUT(n3045), 
          .S0(REUAOut_15__N_137[0]), .S1(REUAOut_15__N_137[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    LUT4 mux_151_i2_3_lut_4_lut (.A(n3869), .B(n3863), .C(D_out_1), .D(n299[1]), 
         .Z(n300[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_151_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i7_3_lut (.A(CA[6]), .B(CA[14]), .C(A_out_0), .Z(n336[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_171_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_170 (.A(n3881), .B(\XferType[1] ), .C(n3849), 
         .D(CA[1]), .Z(n11)) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[15:35])
    defparam i1_2_lut_4_lut_adj_170.init = 16'ha200;
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3842), .B1(n3858), .C1(GND_net), .D1(GND_net), 
          .COUT(n3044));   // //mac/icloud/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_171_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n336[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_171_i8_3_lut.init = 16'hcaca;
    PFUMX i3400 (.BLUT(n360[2]), .ALUT(n3664), .C0(A_out_3), .Z(n3665));
    LUT4 mux_151_i1_3_lut_4_lut (.A(n3869), .B(n3863), .C(D_out_0), .D(n299[0]), 
         .Z(n300[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_151_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_2_lut_3_lut_4_lut_adj_171 (.A(n3874), .B(n3882), .C(n4162), 
         .D(n1371), .Z(PHI2_N_565_enable_68)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_171.init = 16'hf0f1;
    LUT4 i651_2_lut_rep_62_4_lut (.A(n13), .B(REUAOut_15__N_138), .C(n14), 
         .D(REUA[16]), .Z(n3839)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i651_2_lut_rep_62_4_lut.init = 16'h8000;
    FD1P3IX REUAWritten_16__666 (.D(D_out_0), .SP(PHI2_N_565_enable_69), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_16__666.GSR = "ENABLED";
    LUT4 n355_bdd_3_lut_3422_4_lut (.A(A_out_3), .B(A_out_1), .C(n3670), 
         .D(n348[1]), .Z(n3671)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n355_bdd_3_lut_3422_4_lut.init = 16'hf1e0;
    LUT4 mux_150_i3_4_lut (.A(REUA[18]), .B(REUAWritten[18]), .C(n3842), 
         .D(n850), .Z(n299[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_150_i3_4_lut.init = 16'hc5ca;
    LUT4 i1998_2_lut_rep_91 (.A(D_out_4), .B(n4162), .Z(n3868)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1998_2_lut_rep_91.init = 16'heeee;
    LUT4 XferType_1__I_0_i1_3_lut_rep_76_4_lut (.A(n3870), .B(n3865), .C(D_out_0), 
         .D(XferType[0]), .Z(n3853)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i1_3_lut_rep_76_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_4_lut_adj_172 (.A(n3881), .B(\XferType[1] ), .C(n3849), 
         .D(IncMode[1]), .Z(IncCAg)) /* synthesis lut_function=(!((B ((D)+!C)+!B (D))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[15:35])
    defparam i1_2_lut_4_lut_adj_172.init = 16'h00a2;
    LUT4 mux_171_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n336[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_171_i1_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_3__636 (.D(D_out_3), .SP(PHI2_N_565_enable_67), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_3__636.GSR = "ENABLED";
    LUT4 i3369_2_lut_3_lut_4_lut (.A(D_out_4), .B(n4162), .C(n3865), .D(n3870), 
         .Z(n3369)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i3369_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 mux_171_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n336[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_171_i2_3_lut.init = 16'hcaca;
    LUT4 i5_4_lut (.A(REUA[10]), .B(REUA[8]), .C(REUA[15]), .D(REUA[13]), 
         .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i2_2_lut_3_lut_4_lut_adj_173 (.A(A_out_2), .B(n3875), .C(n4162), 
         .D(n3864), .Z(PHI2_N_565_enable_61)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i2_2_lut_3_lut_4_lut_adj_173.init = 16'hf2f0;
    LUT4 i6_4_lut (.A(REUA[14]), .B(REUA[11]), .C(REUA[9]), .D(REUA[12]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 mux_171_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n336[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_171_i3_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_4__635 (.D(D_out_4), .SP(PHI2_N_565_enable_67), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_4__635.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__634 (.D(D_out_5), .SP(PHI2_N_565_enable_67), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_5__634.GSR = "ENABLED";
    LUT4 mux_171_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n336[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_171_i4_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_15__691 (.D(n1103), .SP(PHI2_N_565_enable_68), 
            .CK(PHI2_N_565), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_15__691.GSR = "ENABLED";
    LUT4 i5_4_lut_adj_174 (.A(n9), .B(REUA[6]), .C(n8), .D(IncREUA), 
         .Z(REUAOut_15__N_138)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_174.init = 16'h8000;
    FD1P3IX REUAWritten_17__665 (.D(D_out_1), .SP(PHI2_N_565_enable_69), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_17__665.GSR = "ENABLED";
    FD1P3AX CAWritten_13__618 (.D(D_out_5), .SP(PHI2_N_565_enable_70), .CK(PHI2_N_565), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_13__618.GSR = "ENABLED";
    LUT4 i360_2_lut_3_lut_4_lut (.A(A_out_2), .B(n3875), .C(n4162), .D(n3863), 
         .Z(PHI2_N_565_enable_69)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i360_2_lut_3_lut_4_lut.init = 16'hf0f2;
    L6MUX21 i3376 (.D0(n3630), .D1(n3628), .SD(n3528), .Z(n3631));
    LUT4 mux_171_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n336[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_171_i5_3_lut.init = 16'hcaca;
    PFUMX i3388 (.BLUT(n3650), .ALUT(n3649), .C0(n3528), .Z(n3651));
    LUT4 i3_2_lut (.A(REUA[1]), .B(REUA[7]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 mux_625_i1_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[8]), 
         .D(Length_15__N_387[0]), .Z(n817[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_625_i2_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[9]), 
         .D(Length_15__N_387[1]), .Z(n817[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut (.A(n7_adj_673), .B(IncMode[0]), .C(REUA[3]), .D(n6), 
         .Z(n8)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_4_lut.init = 16'h2000;
    LUT4 n366_bdd_3_lut_3444 (.A(Length[10]), .B(A_out_1), .C(A_out_0), 
         .Z(n3664)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n366_bdd_3_lut_3444.init = 16'hfefe;
    PFUMX i3374 (.BLUT(n320[5]), .ALUT(n3629), .C0(A_out_1), .Z(n3630));
    LUT4 i2_2_lut_adj_175 (.A(REUA[2]), .B(REUA[0]), .Z(n7_adj_673)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_175.init = 16'h8888;
    LUT4 IncREUAg_I_128_2_lut (.A(IncMode[0]), .B(IncREUA), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(63[17:39])
    defparam IncREUAg_I_128_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_81_3_lut_4_lut (.A(A_out_2), .B(n3875), .C(n3882), 
         .D(n3874), .Z(n3858)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i1_2_lut_rep_81_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_adj_176 (.A(REUA[5]), .B(REUA[4]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_176.init = 16'h8888;
    LUT4 i316_2_lut_3_lut_4_lut (.A(A_out_2), .B(n3875), .C(n4162), .D(n3865), 
         .Z(PHI2_N_565_enable_55)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i316_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i9_4_lut (.A(n17_adj_674), .B(n15), .C(n11), .D(n12), .Z(CAOut_15__N_226)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[15:35])
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(n3842), .B(n3856), .C(n29), .D(n4162), .Z(PHI2_N_565_enable_81)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_179_i3_3_lut (.A(REUA[18]), .B(\Length[2] ), .C(A_out_0), 
         .Z(n360[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_179_i3_3_lut.init = 16'hcaca;
    LUT4 i1999_2_lut (.A(D_out_2), .B(n4162), .Z(n1093)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1999_2_lut.init = 16'heeee;
    LUT4 mux_150_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(n3842), 
         .D(n3841), .Z(n299[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_150_i1_4_lut.init = 16'hc5ca;
    FD1P3JX Length_8__690 (.D(Length_8__N_426), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_8__690.GSR = "ENABLED";
    FD1P3JX Length_9__689 (.D(Length_9__N_421), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_9__689.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(CA[7]), .B(CA[3]), .C(CA[0]), .D(CA[2]), .Z(n17_adj_674)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[15:35])
    defparam i7_4_lut.init = 16'h8000;
    LUT4 mux_150_i2_4_lut (.A(REUA[17]), .B(REUAWritten[17]), .C(n3842), 
         .D(n3839), .Z(n299[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_150_i2_4_lut.init = 16'hc5ca;
    LUT4 mux_625_i7_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[14]), 
         .D(Length_15__N_387[6]), .Z(n817[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_179_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n360[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_179_i2_3_lut.init = 16'hcaca;
    LUT4 i875_2_lut_3_lut_4_lut (.A(A_out_2), .B(n3875), .C(n4162), .D(n3864), 
         .Z(PHI2_N_565_enable_70)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i875_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_2_lut_adj_177 (.A(CA[6]), .B(IncMode[1]), .Z(n12)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(64[15:35])
    defparam i2_2_lut_adj_177.init = 16'h2222;
    LUT4 i3_4_lut (.A(Length1_N_640), .B(PHI2_N_565_enable_61), .C(n3840), 
         .D(n3845), .Z(PHI2_N_565_enable_87)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfefc;
    FD1P3JX Length_10__688 (.D(Length_10__N_416), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_10__688.GSR = "ENABLED";
    LUT4 mux_625_i8_3_lut_4_lut (.A(n3842), .B(n3856), .C(LengthWritten[15]), 
         .D(Length_15__N_387[7]), .Z(n817[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_625_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i448_3_lut (.A(n4162), .B(n1371), .C(n3865), .Z(PHI2_N_565_enable_32)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam i448_3_lut.init = 16'habab;
    LUT4 mux_624_i2_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[1]), 
         .D(Length_7__N_434[1]), .Z(n816[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 n368_bdd_3_lut_3509 (.A(Length[8]), .B(A_out_1), .C(A_out_0), 
         .Z(n3682)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n368_bdd_3_lut_3509.init = 16'hfefe;
    LUT4 mux_624_i3_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[2]), 
         .D(Length_7__N_434[2]), .Z(n816[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2003_2_lut (.A(D_out_3), .B(n4162), .Z(n1072)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i2003_2_lut.init = 16'heeee;
    LUT4 mux_179_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n360[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_179_i1_3_lut.init = 16'hcaca;
    LUT4 i246_2_lut_rep_77_3_lut_4_lut (.A(A_out_2), .B(n3875), .C(n4162), 
         .D(n3865), .Z(PHI2_N_565_enable_75)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i246_2_lut_rep_77_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1_2_lut_rep_78_3_lut_4_lut (.A(A_out_2), .B(n3875), .C(D_out_7), 
         .D(n3865), .Z(n3855)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_78_3_lut_4_lut.init = 16'h0010;
    LUT4 i3_3_lut_4_lut (.A(RAMWR), .B(n3852), .C(BA_c), .D(XferEnd_N_594), 
         .Z(n3442)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0010;
    LUT4 XferType_1__I_0_i2_3_lut_4_lut (.A(n3870), .B(n3865), .C(D_out_1), 
         .D(XferType_c[1]), .Z(\XferType[1] )) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9_4_lut_adj_178 (.A(Length[1]), .B(n18_adj_676), .C(Length[4]), 
         .D(Length[0]), .Z(n20)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i9_4_lut_adj_178.init = 16'h0004;
    LUT4 i2011_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n405[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i2011_4_lut.init = 16'hfcee;
    LUT4 n356_bdd_4_lut (.A(n336[0]), .B(XferType[0]), .C(A_out_1), .D(A_out_0), 
         .Z(n3685)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n356_bdd_4_lut.init = 16'haca0;
    LUT4 REUA_4__bdd_3_lut (.A(REUA[4]), .B(A_out_0), .C(REUA[12]), .Z(n3635)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_4__bdd_3_lut.init = 16'he2e2;
    LUT4 n367_bdd_3_lut_3419 (.A(Length[9]), .B(A_out_1), .C(A_out_0), 
         .Z(n3669)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n367_bdd_3_lut_3419.init = 16'hfefe;
    LUT4 i2000_2_lut (.A(D_out_1), .B(n4162), .Z(n1091)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i2000_2_lut.init = 16'heeee;
    LUT4 i3364_2_lut_3_lut_4_lut (.A(A_out_2), .B(n3875), .C(n4162), .D(n3863), 
         .Z(PHI2_N_565_enable_54)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i3364_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 n354_bdd_4_lut (.A(n336[2]), .B(DF01Reserved32[2]), .C(A_out_1), 
         .D(A_out_0), .Z(n3667)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n354_bdd_4_lut.init = 16'haca0;
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_565_enable_75), 
            .CD(RegReset), .CK(PHI2_N_565), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 mux_624_i8_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[7]), 
         .D(Length_7__N_434[7]), .Z(n816[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_624_i1_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[0]), 
         .D(Length_7__N_434[0]), .Z(n816[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i10_4_lut_adj_179 (.A(Length[6]), .B(n20), .C(n3455), .D(Length[5]), 
         .Z(n3450)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i10_4_lut_adj_179.init = 16'h0004;
    LUT4 i7_4_lut_adj_180 (.A(BA_c), .B(n3847), .C(Length[3]), .D(Length[7]), 
         .Z(n18_adj_676)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i7_4_lut_adj_180.init = 16'h0008;
    LUT4 i4_4_lut (.A(A_out_3), .B(n3882), .C(nIO2_c), .D(n3453), .Z(n3440)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0002;
    L6MUX21 i3442 (.D0(n3719), .D1(n3717), .SD(A_out_2), .Z(n3720));
    LUT4 i1997_2_lut (.A(D_out_5), .B(n4162), .Z(n1097)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1997_2_lut.init = 16'heeee;
    LUT4 mux_175_i3_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n348[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_175_i3_3_lut.init = 16'hcaca;
    LUT4 mux_175_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n348[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_175_i2_3_lut.init = 16'hcaca;
    LUT4 mux_175_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n348[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_175_i1_3_lut.init = 16'hcaca;
    PFUMX i3440 (.BLUT(n3718), .ALUT(n336[7]), .C0(A_out_1), .Z(n3719));
    LUT4 i911_4_lut (.A(n3870), .B(n4162), .C(n3275), .D(n3882), .Z(n1134)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam i911_4_lut.init = 16'hccdc;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_565_enable_76), .CD(RegReset), 
            .CK(PHI2_N_565), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(250[8] 253[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 mux_175_i6_3_lut (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), .Z(n348[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_175_i6_3_lut.init = 16'hcaca;
    LUT4 n355_bdd_4_lut (.A(n336[1]), .B(XferType_c[1]), .C(A_out_1), 
         .D(A_out_0), .Z(n3672)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n355_bdd_4_lut.init = 16'haca0;
    FD1S3IX XferType__i1 (.D(\XferType[1] ), .CK(PHI2_N_565), .CD(RegReset), 
            .Q(XferType_c[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i1.GSR = "ENABLED";
    PFUMX i3372 (.BLUT(n348[5]), .ALUT(n3627), .C0(n3876), .Z(n3628));
    LUT4 REUA_4__bdd_4_lut (.A(n336[4]), .B(A_out_0), .C(A_out_1), .D(FF00DecodeEN), 
         .Z(n3637)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C))) */ ;
    defparam REUA_4__bdd_4_lut.init = 16'ha3af;
    LUT4 mux_624_i4_3_lut_4_lut (.A(n3842), .B(n3861), .C(LengthWritten[3]), 
         .D(Length_7__N_434[3]), .Z(n816[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_624_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3870), .B(n3865), .C(n4162), .D(D_out_7), 
         .Z(n3267)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3JX Length_11__687 (.D(Length_11__N_411), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_11__687.GSR = "ENABLED";
    FD1P3JX Length_12__686 (.D(Length_12__N_406), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_12__686.GSR = "ENABLED";
    FD1P3JX Length_13__685 (.D(Length_13__N_401), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_13__685.GSR = "ENABLED";
    FD1P3JX Length_14__684 (.D(Length_14__N_396), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_14__684.GSR = "ENABLED";
    FD1P3JX Length_15__683 (.D(Length_15__N_384), .SP(PHI2_N_565_enable_81), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_15__683.GSR = "ENABLED";
    FD1P3JX Length_0__674 (.D(Length_0__N_467), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_0__674.GSR = "ENABLED";
    FD1P3JX Length_1__673 (.D(Length_1__N_462), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_1__673.GSR = "ENABLED";
    FD1P3JX Length_2__672 (.D(Length_2__N_457), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(\Length[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_2__672.GSR = "ENABLED";
    FD1P3JX Length_3__671 (.D(Length_3__N_452), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_3__671.GSR = "ENABLED";
    FD1P3JX Length_4__670 (.D(Length_4__N_447), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_4__670.GSR = "ENABLED";
    FD1P3JX Length_5__669 (.D(Length_5__N_442), .SP(PHI2_N_565_enable_87), 
            .PD(n4163), .CK(PHI2_N_565), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_5__669.GSR = "ENABLED";
    PFUMX i3438 (.BLUT(n3716), .ALUT(n3715), .C0(A_out_0), .Z(n3717));
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_185), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(REUAOut_7__N_185), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n3039), .S0(REUAOut_7__N_184[6]), .S1(REUAOut_7__N_184[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_185), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(REUAOut_7__N_185), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n3038), .COUT(n3039), .S0(REUAOut_7__N_184[4]), 
          .S1(REUAOut_7__N_184[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_185), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(REUAOut_7__N_185), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n3037), .COUT(n3038), .S0(REUAOut_7__N_184[2]), 
          .S1(REUAOut_7__N_184[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_185), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(REUAOut_7__N_185), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n3036), .COUT(n3037), .S0(REUAOut_7__N_184[0]), 
          .S1(REUAOut_7__N_184[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3842), .B1(n3862), .C1(GND_net), .D1(GND_net), 
          .COUT(n3036));   // //mac/icloud/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_228), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_228), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3031), .S0(CAOut_15__N_225[6]), .S1(CAOut_15__N_225[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_228), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_228), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3030), .COUT(n3031), .S0(CAOut_15__N_225[4]), 
          .S1(CAOut_15__N_225[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_228), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_228), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3029), .COUT(n3030), .S0(CAOut_15__N_225[2]), 
          .S1(CAOut_15__N_225[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_226), .B0(CAOut_15__N_228), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_228), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n3028), .COUT(n3029), .S0(CAOut_15__N_225[0]), 
          .S1(CAOut_15__N_225[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3842), .B1(n3859), .C1(GND_net), .D1(GND_net), .COUT(n3028));   // //mac/icloud/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_273), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_273), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n3023), .S0(CAOut_7__N_272[6]), .S1(CAOut_7__N_272[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_273), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_273), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n3022), .COUT(n3023), .S0(CAOut_7__N_272[4]), 
          .S1(CAOut_7__N_272[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_273), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_273), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n3021), .COUT(n3022), .S0(CAOut_7__N_272[2]), 
          .S1(CAOut_7__N_272[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_273), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_273), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n3020), .COUT(n3021), .S0(CAOut_7__N_272[0]), 
          .S1(CAOut_7__N_272[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3013), .S1(Length_7__N_434[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3016), .S0(Length_7__N_434[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3013), .COUT(n3014), .S0(Length_7__N_434[1]), 
          .S1(Length_7__N_434[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3842), .B1(n3857), .C1(GND_net), .D1(GND_net), .COUT(n3020));   // //mac/icloud/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3015), .COUT(n3016), .S0(Length_7__N_434[5]), 
          .S1(Length_7__N_434[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    L6MUX21 i3434 (.D0(n3713), .D1(n3711), .SD(A_out_2), .Z(n3714));
    LUT4 Length_8__I_98_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_0), 
         .D(n817[0]), .Z(Length_8__N_426)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_98_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_9__I_96_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_1), 
         .D(n817[1]), .Z(Length_9__N_421)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_96_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3432 (.BLUT(n3712), .ALUT(n336[6]), .C0(A_out_1), .Z(n3713));
    LUT4 i1_2_lut_rep_98 (.A(A_out_3), .B(A_out_4), .Z(n3875)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_98.init = 16'heeee;
    PFUMX i3430 (.BLUT(n3710), .ALUT(n3709), .C0(A_out_0), .Z(n3711));
    LUT4 i1_2_lut_rep_92_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3869)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_92_3_lut.init = 16'hefef;
    LUT4 mux_196_i7_3_lut (.A(n3714), .B(n405[6]), .C(A_out_3), .Z(n427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_196_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_93_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3870)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i1_2_lut_rep_93_3_lut.init = 16'hfefe;
    LUT4 mux_192_i7_3_lut (.A(n372[6]), .B(IncMode[0]), .C(A_out_1), .Z(n405[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_192_i7_3_lut.init = 16'hcaca;
    LUT4 n356_bdd_3_lut_3512_4_lut (.A(A_out_3), .B(A_out_1), .C(n3683), 
         .D(n348[0]), .Z(n3684)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n356_bdd_3_lut_3512_4_lut.init = 16'hf1e0;
    LUT4 mux_183_i7_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n372[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_183_i7_3_lut.init = 16'hcaca;
    PFUMX i3386 (.BLUT(n3646), .ALUT(n3645), .C0(A_out_0), .Z(n3647));
    LUT4 i3343_2_lut_rep_99 (.A(A_out_3), .B(A_out_1), .Z(n3876)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3343_2_lut_rep_99.init = 16'heeee;
    PFUMX i3380 (.BLUT(n3637), .ALUT(n3636), .C0(n3528), .Z(n3638));
    LUT4 Length_10__I_94_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_2), 
         .D(n817[2]), .Z(Length_10__N_416)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_94_3_lut_4_lut.init = 16'hfe10;
    LUT4 n3635_bdd_3_lut_3397_4_lut (.A(A_out_3), .B(A_out_1), .C(n3634), 
         .D(n3635), .Z(n3636)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n3635_bdd_3_lut_3397_4_lut.init = 16'hf1e0;
    LUT4 Length_11__I_92_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_3), 
         .D(n817[3]), .Z(Length_11__N_411)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_92_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3415 (.BLUT(n3685), .ALUT(n3684), .C0(n3528), .Z(n3686));
    LUT4 n3648_bdd_3_lut_3392_4_lut (.A(A_out_3), .B(A_out_1), .C(n3647), 
         .D(n3648), .Z(n3649)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n3648_bdd_3_lut_3392_4_lut.init = 16'hf1e0;
    LUT4 Length_12__I_90_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_4), 
         .D(n817[4]), .Z(Length_12__N_406)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_90_3_lut_4_lut.init = 16'hfe10;
    LUT4 n354_bdd_3_lut_3447_4_lut (.A(A_out_3), .B(A_out_1), .C(n3665), 
         .D(n348[2]), .Z(n3666)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n354_bdd_3_lut_3447_4_lut.init = 16'hf1e0;
    LUT4 Fault_I_0_844_2_lut (.A(Fault), .B(VerifyErrMask), .Z(IRQOut_N_527)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(247[3:27])
    defparam Fault_I_0_844_2_lut.init = 16'h8888;
    LUT4 Length_13__I_88_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_5), 
         .D(n817[5]), .Z(Length_13__N_401)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_14__I_86_3_lut_4_lut (.A(n1371), .B(n3866), .C(D_out_6), 
         .D(n817[6]), .Z(Length_14__N_396)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_86_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3413 (.BLUT(n360[0]), .ALUT(n3682), .C0(A_out_3), .Z(n3683));
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (DMA, nIO2_c, n3888, nWE_c, n3874, n3275, PHI2_c, 
            n3881, nWEDMA_c, DOE, A_out_1, A_out_0, n3863, n3864, 
            n3865, n1371, n3882, n3861, IntEnable, EndOfBlock, IRQOut_N_527, 
            EndOfBlockMask, IRQ) /* synthesis syn_module_defined=1 */ ;
    input DMA;
    input nIO2_c;
    output n3888;
    input nWE_c;
    output n3874;
    output n3275;
    input PHI2_c;
    input n3881;
    input nWEDMA_c;
    output DOE;
    input A_out_1;
    input A_out_0;
    output n3863;
    output n3864;
    output n3865;
    input n1371;
    input n3882;
    output n3861;
    input IntEnable;
    input EndOfBlock;
    input IRQOut_N_527;
    input EndOfBlockMask;
    output IRQ;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    
    LUT4 i1981_2_lut_rep_111 (.A(DMA), .B(nIO2_c), .Z(n3888)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1981_2_lut_rep_111.init = 16'heeee;
    LUT4 i1983_2_lut_rep_97_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3874)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1983_2_lut_rep_97_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3275)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i3355_4_lut_4_lut (.A(PHI2_c), .B(n3881), .C(nWEDMA_c), .D(n3275), 
         .Z(DOE)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(31[15:19])
    defparam i3355_4_lut_4_lut.init = 16'h55f7;
    LUT4 i2_3_lut_rep_86_4_lut (.A(n3888), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3863)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_86_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_rep_87_4_lut (.A(n3888), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3864)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_87_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_rep_88_4_lut (.A(n3888), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3865)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_88_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_84_3_lut_4_lut (.A(n3888), .B(nWE_c), .C(n1371), 
         .D(n3882), .Z(n3861)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_84_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3358_4_lut (.A(IntEnable), .B(EndOfBlock), .C(IRQOut_N_527), 
         .D(EndOfBlockMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(43[15:19])
    defparam i3358_4_lut.init = 16'h575f;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module RAM
//

module RAM (\S[0] , C8M_c, C8M_N_34, PHI2_c, nCS_c, RBA_c_0, n3884, 
            REUA, nRAS_c, nCAS_c, nRWE_c, CKE_c, RA_0_0, WRDr, 
            PHI2_N_565, D_out_0, DQML_c, A_0__N_88, nRESET_c, InitDone, 
            GND_net, VCC_net, RCLK_c, DQMH_c, RAMWR, RAMRD, n4161, 
            RAMRDD, RD_out_0, RBA_c_1, RA_0_1, RA_0_2, RA_0_3, RA_0_4, 
            RA_0_5, RA_0_6, RA_0_7, RA_0_8, RA_0_9, RA_0_10, RA_0_11, 
            D_out_1, D_out_2, D_out_3, D_out_4, D_out_5, D_out_6, 
            D_out_7, RD_out_1, n3565, RD_out_2, RD_out_3, RD_out_4, 
            RD_out_5, RD_out_6, RD_out_7, n1024) /* synthesis syn_module_defined=1 */ ;
    output \S[0] ;
    input C8M_c;
    input C8M_N_34;
    input PHI2_c;
    output nCS_c;
    output RBA_c_0;
    output n3884;
    input [23:0]REUA;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output RA_0_0;
    output [7:0]WRDr;
    input PHI2_N_565;
    input D_out_0;
    output DQML_c;
    input A_0__N_88;
    input nRESET_c;
    output InitDone;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    output DQMH_c;
    input RAMWR;
    input RAMRD;
    input n4161;
    output [7:0]RAMRDD;
    input RD_out_0;
    output RBA_c_1;
    output RA_0_1;
    output RA_0_2;
    output RA_0_3;
    output RA_0_4;
    output RA_0_5;
    output RA_0_6;
    output RA_0_7;
    output RA_0_8;
    output RA_0_9;
    output RA_0_10;
    output RA_0_11;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    input RD_out_1;
    input n3565;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    output n1024;
    
    wire C8M_c /* synthesis SET_AS_NETWORK=C8M_c, is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_34 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_565 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(100[11:18])
    
    wire n3791;
    wire [2:0]S;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    
    wire n3790, nRAS_N_76;
    wire [5:0]nRESETr;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[11:18])
    wire [1:0]PHI2r;   // //mac/icloud/repos/gw4302/cpld/ram.v(39[11:16])
    
    wire nCS_N_56, nCAS_N_77, nRWE_N_78, CKE_N_81, n1, n1468, C8M_c_enable_1, 
        RefCnt_2__N_52;
    wire [2:0]n2;
    
    wire n6, n3785, C8M_c_enable_3;
    wire [2:0]RefCnt;   // //mac/icloud/repos/gw4302/cpld/ram.v(63[11:17])
    
    wire n3885, n3873, n3687, n70, n3886, n3867, n3887, RDD_7__N_54, 
        PORDone, PORDone_N_46, n1894;
    wire [2:0]n25;
    
    wire n3780, n3878, n3779, n3877, n1219, n3781, n3778, n3783, 
        n3824, n1923;
    wire [2:0]S_2__N_40;
    
    wire n1871, n1865;
    wire [2:0]n14;
    
    wire n1_adj_664, n1_adj_665, n1_adj_666, n1_adj_667, n1_adj_668, 
        n1_adj_669, n1_adj_670, n1_adj_671, n4, RDOE, n3688, n3689;
    
    LUT4 n3791_bdd_4_lut (.A(n3791), .B(S[1]), .C(n3790), .D(\S[0] ), 
         .Z(nRAS_N_76)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n3791_bdd_4_lut.init = 16'hf0ee;
    FD1S3AX nRESETr_4__144 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_4__144.GSR = "ENABLED";
    FD1S3AX nRESETr_3__145 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_3__145.GSR = "ENABLED";
    FD1S3AX nRESETr_2__146 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_2__146.GSR = "ENABLED";
    FD1S3AX nRESETr_1__147 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_1__147.GSR = "ENABLED";
    FD1S3AX PHI2r_0__149 (.D(PHI2_c), .CK(C8M_N_34), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(40[8:40])
    defparam PHI2r_0__149.GSR = "ENABLED";
    FD1S3AX PHI2r_1__150 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(41[8:44])
    defparam PHI2r_1__150.GSR = "ENABLED";
    FD1S3AX nCS_154 (.D(nCS_N_56), .CK(C8M_c), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[8] 195[4])
    defparam nCS_154.GSR = "ENABLED";
    FD1S3IX RBA_i1 (.D(REUA[21]), .CK(C8M_c), .CD(n3884), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RBA_i1.GSR = "ENABLED";
    FD1S3AX nRAS_155 (.D(nRAS_N_76), .CK(C8M_c), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[8] 195[4])
    defparam nRAS_155.GSR = "ENABLED";
    FD1S3AX nCAS_156 (.D(nCAS_N_77), .CK(C8M_c), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[8] 195[4])
    defparam nCAS_156.GSR = "ENABLED";
    FD1S3AX nRWE_157 (.D(nRWE_N_78), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[8] 195[4])
    defparam nRWE_157.GSR = "ENABLED";
    FD1S3AX CKE_158 (.D(CKE_N_81), .CK(C8M_c), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(75[8] 195[4])
    defparam CKE_158.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n1), .CK(C8M_c), .CD(n3884), .Q(RA_0_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_565), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3JX DQML_162 (.D(A_0__N_88), .CK(C8M_c), .PD(n1468), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam DQML_162.GSR = "ENABLED";
    FD1S3AX nRESETr_0__142 (.D(nRESET_c), .CK(C8M_N_34), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(32[8:44])
    defparam nRESETr_0__142.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_106 (.A(S[1]), .B(\S[0] ), .C(S[2]), .Z(C8M_c_enable_1)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam i2_3_lut_rep_106.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(S[1]), .B(\S[0] ), .C(S[2]), .D(InitDone), 
         .Z(RefCnt_2__N_52)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam i1_2_lut_4_lut.init = 16'h8000;
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(C8M_c), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(58[6] 65[32])
    defparam rclk_oddr.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_167 (.A(S[1]), .B(\S[0] ), .C(S[2]), .D(n2[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam i1_2_lut_4_lut_adj_167.init = 16'h8000;
    LUT4 i3241_2_lut_rep_107 (.A(S[1]), .B(S[2]), .Z(n3884)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3241_2_lut_rep_107.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(S[1]), .B(S[2]), .C(\S[0] ), .Z(n1468)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 S_1__bdd_4_lut_3_lut (.A(S[1]), .B(S[2]), .C(\S[0] ), .Z(n3785)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;
    defparam S_1__bdd_4_lut_3_lut.init = 16'hdbdb;
    LUT4 i1_2_lut_3_lut_adj_168 (.A(S[1]), .B(S[2]), .C(\S[0] ), .Z(C8M_c_enable_3)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_168.init = 16'hfefe;
    FD1S3JX DQMH_161 (.D(REUA[0]), .CK(C8M_c), .PD(n1468), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam DQMH_161.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_108 (.A(RefCnt[0]), .B(RefCnt[1]), .Z(n3885)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(63[11:17])
    defparam i1_2_lut_rep_108.init = 16'heeee;
    LUT4 i1_3_lut_rep_96_4_lut (.A(RefCnt[0]), .B(RefCnt[1]), .C(RAMWR), 
         .D(RAMRD), .Z(n3873)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(63[11:17])
    defparam i1_3_lut_rep_96_4_lut.init = 16'he0ee;
    LUT4 S_2__bdd_3_lut_3479_4_lut (.A(RefCnt[0]), .B(RefCnt[1]), .C(\S[0] ), 
         .D(InitDone), .Z(n3687)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(63[11:17])
    defparam S_2__bdd_3_lut_3479_4_lut.init = 16'h010f;
    LUT4 i1_2_lut_3_lut_4_lut (.A(RefCnt[0]), .B(RefCnt[1]), .C(S[2]), 
         .D(InitDone), .Z(n70)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B !(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(63[11:17])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hef0f;
    LUT4 i1_2_lut_rep_109 (.A(InitDone), .B(RAMWR), .Z(n3886)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1_2_lut_rep_109.init = 16'h2222;
    LUT4 i1_2_lut_rep_90_4_lut_4_lut (.A(InitDone), .B(RAMWR), .C(RAMRD), 
         .D(n3885), .Z(n3867)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1_2_lut_rep_90_4_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_110 (.A(\S[0] ), .B(S[2]), .Z(n3887)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam i1_2_lut_rep_110.init = 16'h2222;
    LUT4 i2_3_lut_4_lut (.A(\S[0] ), .B(S[2]), .C(S[1]), .D(RAMRD), 
         .Z(RDD_7__N_54)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam i2_3_lut_4_lut.init = 16'h2000;
    FD1P3AX PORDone_148 (.D(n4161), .SP(PORDone_N_46), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(34[8] 36[4])
    defparam PORDone_148.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(S[1]), .B(n70), .C(n1894), .D(\S[0] ), .Z(nCAS_N_77)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1_4_lut.init = 16'hafee;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 S_2__I_0_180_i1_3_lut (.A(REUA[9]), .B(REUA[1]), .C(\S[0] ), 
         .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_180_i1_3_lut.init = 16'hcaca;
    LUT4 i636_2_lut (.A(S[1]), .B(\S[0] ), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(52[35:46])
    defparam i636_2_lut.init = 16'h6666;
    FD1P3AX InitDone_152 (.D(n4161), .SP(C8M_c_enable_1), .CK(C8M_c), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(60[8:58])
    defparam InitDone_152.GSR = "ENABLED";
    LUT4 n97_bdd_1_lut (.A(\S[0] ), .Z(n3780)) /* synthesis lut_function=(!(A)) */ ;
    defparam n97_bdd_1_lut.init = 16'h5555;
    LUT4 n97_bdd_4_lut (.A(n3878), .B(\S[0] ), .C(S[2]), .D(n3885), 
         .Z(n3779)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam n97_bdd_4_lut.init = 16'h0a3a;
    LUT4 PORDone_bdd_4_lut (.A(PORDone), .B(n3884), .C(n3877), .D(\S[0] ), 
         .Z(n1219)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam PORDone_bdd_4_lut.init = 16'h5575;
    LUT4 n3781_bdd_3_lut (.A(n3781), .B(n3778), .C(S[1]), .Z(CKE_N_81)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3781_bdd_3_lut.init = 16'hcaca;
    LUT4 S_1__bdd_4_lut_3472 (.A(S[1]), .B(n3873), .C(RAMWR), .D(\S[0] ), 
         .Z(n3783)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (C (D)))) */ ;
    defparam S_1__bdd_4_lut_3472.init = 16'h0dff;
    LUT4 S_2__bdd_4_lut_3503 (.A(S[2]), .B(n3878), .C(n3885), .D(InitDone), 
         .Z(n3791)) /* synthesis lut_function=(A (C (D))+!A !(B (D))) */ ;
    defparam S_2__bdd_4_lut_3503.init = 16'hb155;
    LUT4 S_2__bdd_4_lut (.A(S[2]), .B(S[1]), .C(REUA[19]), .D(\S[0] ), 
         .Z(n3824)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+!((D)+!C)))) */ ;
    defparam S_2__bdd_4_lut.init = 16'h4474;
    FD1S3IX S__i0 (.D(S_2__N_40[0]), .CK(C8M_c), .CD(n1923), .Q(\S[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i0.GSR = "ENABLED";
    FD1S3AX nRESETr_5__143 (.D(nRESETr[4]), .CK(C8M_c), .Q(nRESETr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_5__143.GSR = "ENABLED";
    FD1P3IX RefCnt_233__i0 (.D(n1865), .SP(RefCnt_2__N_52), .CD(n1871), 
            .CK(C8M_c), .Q(RefCnt[0]));   // //mac/icloud/repos/gw4302/cpld/ram.v(67[23:39])
    defparam RefCnt_233__i0.GSR = "ENABLED";
    LUT4 n97_bdd_3_lut_3475_4_lut (.A(n3873), .B(n3886), .C(S[2]), .D(\S[0] ), 
         .Z(n3778)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    defparam n97_bdd_3_lut_3475_4_lut.init = 16'hf707;
    LUT4 S_2__bdd_3_lut_4_lut (.A(n3873), .B(n3886), .C(S[1]), .D(S[2]), 
         .Z(n3790)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    defparam S_2__bdd_3_lut_4_lut.init = 16'hff8f;
    FD1S3IX RBA_i2 (.D(REUA[22]), .CK(C8M_c), .CD(n3884), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RBA_i2.GSR = "ENABLED";
    FD1P3IX RefCnt_233__i2 (.D(n14[2]), .SP(RefCnt_2__N_52), .CD(n1871), 
            .CK(C8M_c), .Q(n2[2]));   // //mac/icloud/repos/gw4302/cpld/ram.v(67[23:39])
    defparam RefCnt_233__i2.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n1_adj_664), .CK(C8M_c), .CD(n3884), .Q(RA_0_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i2.GSR = "ENABLED";
    FD1P3IX RefCnt_233__i1 (.D(n14[1]), .SP(RefCnt_2__N_52), .CD(n1871), 
            .CK(C8M_c), .Q(RefCnt[1]));   // //mac/icloud/repos/gw4302/cpld/ram.v(67[23:39])
    defparam RefCnt_233__i1.GSR = "ENABLED";
    LUT4 i1704_1_lut (.A(PORDone), .Z(n1923)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(34[8] 36[4])
    defparam i1704_1_lut.init = 16'h5555;
    FD1S3IX RA_i3 (.D(n1_adj_665), .CK(C8M_c), .CD(n3884), .Q(RA_0_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n1_adj_666), .CK(C8M_c), .CD(n3884), .Q(RA_0_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n1_adj_667), .CK(C8M_c), .CD(n3884), .Q(RA_0_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3JX RA_i6 (.D(n1_adj_668), .CK(C8M_c), .PD(n3884), .Q(RA_0_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n1_adj_669), .CK(C8M_c), .CD(n3884), .Q(RA_0_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n1_adj_670), .CK(C8M_c), .CD(n3884), .Q(RA_0_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1S3IX RA_i9 (.D(n1_adj_671), .CK(C8M_c), .CD(n3884), .Q(RA_0_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(REUA[18]), .CK(C8M_c), .PD(C8M_c_enable_3), .Q(RA_0_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3IX RA_i11 (.D(n3824), .CK(C8M_c), .CD(S[2]), .Q(RA_0_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3IX RA_i12 (.D(REUA[20]), .CK(C8M_c), .CD(C8M_c_enable_3), .Q(RA_0_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(199[8] 240[4])
    defparam RA_i12.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_565), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_565), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_565), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_565), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_565), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_565), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_565), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(247[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_100 (.A(PHI2r[0]), .B(PHI2r[1]), .Z(n3877)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1_2_lut_rep_100.init = 16'h4444;
    LUT4 i1_2_lut_rep_101 (.A(RAMWR), .B(RAMRD), .Z(n3878)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(49[14:19])
    defparam i1_2_lut_rep_101.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(RAMWR), .B(RAMRD), .C(S[1]), .D(n3887), 
         .Z(n4)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(49[14:19])
    defparam i1_3_lut_4_lut.init = 16'hfe00;
    LUT4 i2_2_lut_3_lut_4_lut (.A(RAMWR), .B(RAMRD), .C(S[2]), .D(InitDone), 
         .Z(n1894)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(49[14:19])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 S_2__I_0_177_i1_3_lut (.A(REUA[11]), .B(REUA[3]), .C(\S[0] ), 
         .Z(n1_adj_665)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_177_i1_3_lut.init = 16'hcaca;
    PFUMX i3470 (.BLUT(n3780), .ALUT(n3779), .C0(InitDone), .Z(n3781));
    LUT4 S_2__I_0_176_i1_3_lut (.A(REUA[12]), .B(REUA[4]), .C(\S[0] ), 
         .Z(n1_adj_666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_176_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_175_i1_3_lut (.A(REUA[13]), .B(REUA[5]), .C(\S[0] ), 
         .Z(n1_adj_667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_175_i1_3_lut.init = 16'hcaca;
    FD1S3AX RDOE_165 (.D(n3565), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(252[8:54])
    defparam RDOE_165.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_54), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(245[8:69])
    defparam RDD_i0_i7.GSR = "ENABLED";
    LUT4 S_2__I_0_174_i1_3_lut (.A(REUA[14]), .B(REUA[6]), .C(\S[0] ), 
         .Z(n1_adj_668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_174_i1_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(\S[0] ), .B(n3884), .C(PHI2r[1]), .D(PHI2r[0]), 
         .Z(S_2__N_40[0])) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h4454;
    LUT4 i3_4_lut (.A(nRESETr[5]), .B(nRESETr[4]), .C(nRESETr[2]), .D(nRESETr[3]), 
         .Z(PORDone_N_46)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(35[6:58])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i4_4_lut (.A(RefCnt[0]), .B(InitDone), .C(RefCnt[1]), .D(n6), 
         .Z(n1871)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam i4_4_lut.init = 16'h4000;
    LUT4 S_2__I_0_173_i1_3_lut (.A(REUA[15]), .B(REUA[7]), .C(\S[0] ), 
         .Z(n1_adj_669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_173_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_172_i1_3_lut (.A(REUA[16]), .B(REUA[8]), .C(\S[0] ), 
         .Z(n1_adj_670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_172_i1_3_lut.init = 16'hcaca;
    LUT4 i1642_1_lut (.A(RefCnt[0]), .Z(n1865)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[23:39])
    defparam i1642_1_lut.init = 16'h5555;
    LUT4 S_2__I_0_171_i1_3_lut (.A(REUA[17]), .B(REUA[23]), .C(\S[0] ), 
         .Z(n1_adj_671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_171_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__bdd_4_lut_3480 (.A(n3878), .B(InitDone), .C(\S[0] ), .D(S[1]), 
         .Z(n3688)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam S_2__bdd_4_lut_3480.init = 16'hc888;
    LUT4 i48_4_lut (.A(n3689), .B(n3867), .C(S[1]), .D(n4), .Z(nCS_N_56)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i48_4_lut.init = 16'hc5f5;
    LUT4 n3783_bdd_4_lut (.A(n3783), .B(S[2]), .C(n3785), .D(InitDone), 
         .Z(nRWE_N_78)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n3783_bdd_4_lut.init = 16'heef0;
    LUT4 i643_2_lut_3_lut (.A(S[1]), .B(\S[0] ), .C(S[2]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(52[35:46])
    defparam i643_2_lut_3_lut.init = 16'h7878;
    FD1P3IX S__i1 (.D(n25[1]), .SP(C8M_c_enable_3), .CD(n1219), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n25[2]), .SP(C8M_c_enable_3), .CD(n1219), .CK(C8M_c), 
            .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i2.GSR = "ENABLED";
    LUT4 i2807_3_lut (.A(n2[2]), .B(RefCnt[1]), .C(RefCnt[0]), .Z(n14[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[23:39])
    defparam i2807_3_lut.init = 16'h6a6a;
    LUT4 S_2__I_0_178_i1_3_lut (.A(REUA[10]), .B(REUA[2]), .C(\S[0] ), 
         .Z(n1_adj_664)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(200[2] 238[9])
    defparam S_2__I_0_178_i1_3_lut.init = 16'hcaca;
    PFUMX i3417 (.BLUT(n3688), .ALUT(n3687), .C0(S[2]), .Z(n3689));
    LUT4 i812_1_lut (.A(RDOE), .Z(n1024)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(253[8:10])
    defparam i812_1_lut.init = 16'h5555;
    LUT4 i2800_2_lut (.A(RefCnt[1]), .B(RefCnt[0]), .Z(n14[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[23:39])
    defparam i2800_2_lut.init = 16'h6666;
    
endmodule
