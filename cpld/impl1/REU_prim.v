// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Wed Feb 02 21:55:38 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, nRESETOUT, BA, D, A, nWE, nWEDMA, 
            nDMA, nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, 
            nIRQ, RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, 
            DQMH, DQML, RD) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // //mac/icloud/repos/gw4302/cpld/reu.v(5[8:14])
    output nRESETOUT;   // //mac/icloud/repos/gw4302/cpld/reu.v(6[9:18])
    input BA;   // //mac/icloud/repos/gw4302/cpld/reu.v(9[8:10])
    inout [7:0]D;   // //mac/icloud/repos/gw4302/cpld/reu.v(10[14:15])
    inout [15:0]A;   // //mac/icloud/repos/gw4302/cpld/reu.v(11[15:16])
    input nWE;   // //mac/icloud/repos/gw4302/cpld/reu.v(12[8:11])
    output nWEDMA;   // //mac/icloud/repos/gw4302/cpld/reu.v(13[9:15])
    output nDMA;   // //mac/icloud/repos/gw4302/cpld/reu.v(14[9:13])
    input nIO1;   // //mac/icloud/repos/gw4302/cpld/reu.v(15[8:12])
    input nIO2;   // //mac/icloud/repos/gw4302/cpld/reu.v(16[8:12])
    output nAOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:13])
    output ADIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(20[9:13])
    output nRWOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(21[9:14])
    output nDOE;   // //mac/icloud/repos/gw4302/cpld/reu.v(22[9:13])
    output DDIR;   // //mac/icloud/repos/gw4302/cpld/reu.v(23[9:13])
    output nIRQ;   // //mac/icloud/repos/gw4302/cpld/reu.v(26[9:13])
    output RCLK;   // //mac/icloud/repos/gw4302/cpld/reu.v(29[9:13])
    output nCS;   // //mac/icloud/repos/gw4302/cpld/reu.v(30[9:12])
    output nRAS;   // //mac/icloud/repos/gw4302/cpld/reu.v(31[9:13])
    output nCAS;   // //mac/icloud/repos/gw4302/cpld/reu.v(32[9:13])
    output nRWE;   // //mac/icloud/repos/gw4302/cpld/reu.v(33[9:13])
    output CKE;   // //mac/icloud/repos/gw4302/cpld/reu.v(34[9:12])
    output [1:0]RBA;   // //mac/icloud/repos/gw4302/cpld/reu.v(35[15:18])
    output [12:0]RA;   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    output DQMH;   // //mac/icloud/repos/gw4302/cpld/reu.v(37[9:13])
    output DQML;   // //mac/icloud/repos/gw4302/cpld/reu.v(38[9:13])
    inout [7:0]RD;   // //mac/icloud/repos/gw4302/cpld/reu.v(39[14:16])
    
    wire C8M_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_498 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(41[12:17])
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire VCC_net, nRESET_c, BA_c, PHI2_N_558_enable_55, n1305, n1303, 
        n1301, n1284, nWE_c, nWEDMA_c, nIO2_c, RCLK_c, nCS_c, 
        nRAS_c, nCAS_c, nRWE_c, CKE_c, RBA_c_1, RBA_c_0, n244, 
        RA_0_11, RA_0_10, RA_0_9, RA_0_8, RA_0_7, RA_0_6, RA_0_5, 
        RA_0_4, RA_0_3, RA_0_2, RA_0_1, RA_0_0, DQMH_c, DQML_c, 
        n1280, n3198, IRQ;
    wire [1:0]XferType;   // //mac/icloud/repos/gw4302/cpld/reu.v(43[13:21])
    wire [23:0]REUA;   // //mac/icloud/repos/gw4302/cpld/reu.v(44[14:18])
    wire [15:0]CA;   // //mac/icloud/repos/gw4302/cpld/reu.v(45[14:16])
    wire [7:0]RAMRDD;   // //mac/icloud/repos/gw4302/cpld/reu.v(50[13:19])
    
    wire RAMRD, RAMWR, NextCA, NextREUA, AOE, DOE, RegRD, Execute, 
        nWEDMA_N_9;
    wire [7:0]D_7__N_1;
    
    wire EndOfBlock, nFF00Decode;
    wire [15:0]CAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(46[12:21])
    wire [23:0]REUAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(51[12:23])
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(55[12:18])
    wire [15:0]LengthWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(56[12:25])
    
    wire IntEnable, EndOfBlockMask, VerifyErrMask;
    wire [1:0]IncMode;   // //mac/icloud/repos/gw4302/cpld/reg.v(65[11:18])
    
    wire n3416, n480, n3414, n2917, n561, n560, n559, n558, 
        n557, n556, n554, n3598, n2244, n1390, n534, n3445, 
        n4, n3443, PHI2_N_558_enable_66;
    wire [7:0]Length_7__N_361;
    
    wire n3441, Length_7__N_359, Length_6__N_366, Length_5__N_371, Length_4__N_376, 
        Length_3__N_381, Length_2__N_386, Length_1__N_391, Length_0__N_396, 
        PHI2_N_558_enable_24;
    wire [7:0]Length_15__N_317;
    
    wire Length_15__N_315, Length_14__N_324, Length_13__N_329, Length_12__N_334, 
        Length_11__N_339, Length_10__N_344, Length_9__N_349, Length_8__N_354, 
        n3440, PHI2_N_558_enable_46, GND_net, INITCMDr, RDCMDr, WRCMDr;
    wire [7:0]WRDr;   // //mac/icloud/repos/gw4302/cpld/ram.v(217[12:16])
    
    wire PHI2Start_N_550, n2901, n2934, nCS_N_509, nRWE_N_525, n3178, 
        n3438, A_0__N_539, PHI2_N_558_enable_22, n2900, RDD_7__N_507, 
        n3177, RDOE_N_553, n3435, n3434, NextREUA_N_584, n3432, 
        PHI2_N_558_enable_20, nAOE_N_590, nDOE_N_595, n3411, n3431, 
        n3430, n3428, n2211, n35, n3427, n3028, n3425, n3424, 
        n2968, n1270, n3352, n3351, n3350, n12, n6, n7, n8, 
        n3133, PHI2_N_558_enable_88, n3422, D_out_7, D_out_6, D_out_5, 
        D_out_4, D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, A_out_14, 
        A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, A_out_8, 
        n1259, A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, RD_out_7, 
        RD_out_6, RD_out_5, n1207, RD_out_4, RD_out_3, RD_out_2, 
        RD_out_1, RD_out_0, n3420, n1325, n3418, n3656, n2951;
    
    VLO i1 (.Z(GND_net));
    INV i3120 (.A(PHI2_c), .Z(PHI2_N_558));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n556), .B(RAMRDD[5]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n3598), .B(RAMRDD[6]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    PFUMX i2959 (.BLUT(n3351), .ALUT(n3350), .C0(A_out_0), .Z(n3352));
    PFUMX i2818 (.BLUT(n480), .ALUT(n35), .C0(A_out_1), .Z(n3177));
    LUT4 i2819_3_lut (.A(n3352), .B(n3177), .C(A_out_2), .Z(n3178)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2819_3_lut.init = 16'hcaca;
    LUT4 i2799_2_lut_rep_53 (.A(RDOE_N_553), .B(n244), .Z(n3432)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2799_2_lut_rep_53.init = 16'heeee;
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    LUT4 i1_2_lut_3_lut (.A(RDOE_N_553), .B(n244), .C(REUA[21]), .Z(n3133)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    INV i3119 (.A(C8M_c), .Z(C8M_N_498));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    LUT4 mux_249_i8_3_lut_3_lut (.A(A_out_3), .B(n3198), .C(IncMode[1]), 
         .Z(n534)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    defparam mux_249_i8_3_lut_3_lut.init = 16'he4e4;
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2900));   // //mac/icloud/repos/gw4302/cpld/reu.v(97[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 m1_lut (.Z(n3656)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(120[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n3438), .B(A[15]), .O(A_out_15));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n3438), .B(A[14]), .O(A_out_14));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3438), .B(A[13]), .O(A_out_13));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n3438), .B(A[12]), .O(A_out_12));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3438), .B(A[11]), .O(A_out_11));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3438), .B(A[10]), .O(A_out_10));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3438), .B(A[9]), .O(A_out_9));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3438), .B(A[8]), .O(A_out_8));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3438), .B(A[7]), .O(n8));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3438), .B(A[6]), .O(n7));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3438), .B(A[5]), .O(n6));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3438), .B(A[4]), .O(A_out_4));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3438), .B(A[3]), .O(A_out_3));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    VHI i2 (.Z(VCC_net));
    BB A_pad_2 (.I(CA[2]), .T(n3438), .B(A[2]), .O(A_out_2));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3438), .B(A[1]), .O(A_out_1));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3438), .B(A[0]), .O(A_out_0));   // //mac/icloud/repos/gw4302/cpld/reu.v(122[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1207), .B(RD[7]), .O(RD_out_7));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1207), .B(RD[6]), .O(RD_out_6));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1207), .B(RD[5]), .O(RD_out_5));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1207), .B(RD[4]), .O(RD_out_4));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1207), .B(RD[3]), .O(RD_out_3));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1207), .B(RD[2]), .O(RD_out_2));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1207), .B(RD[1]), .O(RD_out_1));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1207), .B(RD[0]), .O(RD_out_0));   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    OB nRESETOUT_pad (.I(VCC_net), .O(nRESETOUT));   // //mac/icloud/repos/gw4302/cpld/reu.v(6[9:18])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(13[9:15])
    OB nDMA_pad (.I(n3438), .O(nDMA));   // //mac/icloud/repos/gw4302/cpld/reu.v(14[9:13])
    OB nAOE_pad (.I(nAOE_N_590), .O(nAOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(19[9:13])
    OB ADIR_pad (.I(n3438), .O(ADIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(20[9:13])
    OB nRWOE_pad (.I(n3443), .O(nRWOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(21[9:14])
    OB nDOE_pad (.I(nDOE_N_595), .O(nDOE));   // //mac/icloud/repos/gw4302/cpld/reu.v(22[9:13])
    OB DDIR_pad (.I(DOE), .O(DDIR));   // //mac/icloud/repos/gw4302/cpld/reu.v(23[9:13])
    OB nIRQ_pad (.I(IRQ), .O(nIRQ));   // //mac/icloud/repos/gw4302/cpld/reu.v(26[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // //mac/icloud/repos/gw4302/cpld/reu.v(29[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // //mac/icloud/repos/gw4302/cpld/reu.v(30[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // //mac/icloud/repos/gw4302/cpld/reu.v(31[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // //mac/icloud/repos/gw4302/cpld/reu.v(32[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // //mac/icloud/repos/gw4302/cpld/reu.v(33[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // //mac/icloud/repos/gw4302/cpld/reu.v(34[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // //mac/icloud/repos/gw4302/cpld/reu.v(35[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // //mac/icloud/repos/gw4302/cpld/reu.v(35[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_11 (.I(RA_0_11), .O(RA[11]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_10 (.I(RA_0_10), .O(RA[10]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_9 (.I(RA_0_9), .O(RA[9]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_8 (.I(RA_0_8), .O(RA[8]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_7 (.I(RA_0_7), .O(RA[7]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_6 (.I(RA_0_6), .O(RA[6]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_5 (.I(RA_0_5), .O(RA[5]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_4 (.I(RA_0_4), .O(RA[4]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_3 (.I(RA_0_3), .O(RA[3]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_2 (.I(RA_0_2), .O(RA[2]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_1 (.I(RA_0_1), .O(RA[1]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_0 (.I(RA_0_0), .O(RA[0]));   // //mac/icloud/repos/gw4302/cpld/reu.v(36[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // //mac/icloud/repos/gw4302/cpld/reu.v(37[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // //mac/icloud/repos/gw4302/cpld/reu.v(38[9:13])
    IB C8M_pad (.I(C8M), .O(C8M_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(5[8:14])
    IB BA_pad (.I(BA), .O(BA_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(9[8:10])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(12[8:11])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // //mac/icloud/repos/gw4302/cpld/reu.v(16[8:12])
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2901), .S1(nWEDMA_N_9));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 i1394_4_lut (.A(n3028), .B(INITCMDr), .C(n244), .D(RDD_7__N_507), 
         .Z(nRWE_N_525)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam i1394_4_lut.init = 16'h303a;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2_3_lut (.A(RDCMDr), .B(WRCMDr), .C(RDOE_N_553), .Z(n3028)) /* synthesis lut_function=(A+!(B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(221[6:10])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n558), .B(RAMRDD[3]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    GSR GSR_INST (.GSR(VCC_net));
    REUReg reureg (.GND_net(GND_net), .NextCA(NextCA), .n1390(n1390), 
           .A_out_2(A_out_2), .PHI2_N_558_enable_20(PHI2_N_558_enable_20), 
           .REUA({REUA}), .LengthWritten({LengthWritten}), .PHI2_N_558(PHI2_N_558), 
           .n1259(n1259), .n1270(n1270), .n1280(n1280), .n2951(n2951), 
           .CA({CA}), .n3440(n3440), .n1325(n1325), .Length_7__N_361({Length_7__N_361}), 
           .D_out_2(D_out_2), .D_out_3(D_out_3), .A_out_1(A_out_1), .n1284(n1284), 
           .D_out_4(D_out_4), .n1301(n1301), .\Length[4] (Length[4]), 
           .Length_15__N_317({Length_15__N_317}), .D_out_5(D_out_5), .n1303(n1303), 
           .n1305(n1305), .D_out_6(D_out_6), .A_out_3(A_out_3), .n556(n556), 
           .D_out_0(D_out_0), .D_out_7(D_out_7), .PHI2_N_558_enable_55(PHI2_N_558_enable_55), 
           .n1016({Length_7__N_359, Length_6__N_366, Length_5__N_371, 
           Length_4__N_376, Length_3__N_381, Length_2__N_386, Length_1__N_391, 
           Length_0__N_396}), .\CAWritten[8] (CAWritten[8]), .EndOfBlock(EndOfBlock), 
           .n3656(n3656), .D_out_1(D_out_1), .PHI2_N_558_enable_22(PHI2_N_558_enable_22), 
           .A_out_0(A_out_0), .VerifyErrMask(VerifyErrMask), .IntEnable(IntEnable), 
           .EndOfBlockMask(EndOfBlockMask), .PHI2_N_558_enable_24(PHI2_N_558_enable_24), 
           .PHI2_N_558_enable_46(PHI2_N_558_enable_46), .nFF00Decode(nFF00Decode), 
           .PHI2_N_558_enable_66(PHI2_N_558_enable_66), .n2934(n2934), .XferType({XferType}), 
           .PHI2_N_558_enable_88(PHI2_N_558_enable_88), .n3422(n3422), .\CAWritten[0] (CAWritten[0]), 
           .n3435(n3435), .n3424(n3424), .A_out_4(A_out_4), .n3434(n3434), 
           .\REUAWritten[8] (REUAWritten[8]), .n3428(n3428), .n3425(n3425), 
           .n2917(n2917), .\REUAWritten[0] (REUAWritten[0]), .n2968(n2968), 
           .NextREUA(NextREUA), .n534(n534), .n554(n554), .A_0__N_539(A_0__N_539), 
           .\IncMode[1] (IncMode[1]), .n3178(n3178), .n557(n557), .n1017({Length_15__N_315, 
           Length_14__N_324, Length_13__N_329, Length_12__N_334, Length_11__N_339, 
           Length_10__N_344, Length_9__N_349, Length_8__N_354}), .n558(n558), 
           .n4(n4), .n3598(n3598), .n480(n480), .n3414(n3414), .n3430(n3430), 
           .n3427(n3427), .n3416(n3416), .n560(n560), .n2244(n2244), 
           .n559(n559), .RegRD(RegRD), .n561(n561), .n2211(n2211), .n3198(n3198), 
           .NextREUA_N_584(NextREUA_N_584), .n3431(n3431), .n3411(n3411)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(62[9] 71[43])
    LUT4 i1_2_lut_rep_66 (.A(RDOE_N_553), .B(PHI2Start_N_550), .Z(n3445)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(221[6:10])
    defparam i1_2_lut_rep_66.init = 16'heeee;
    LUT4 i1_4_lut (.A(n3432), .B(n12), .C(PHI2Start_N_550), .D(RDD_7__N_507), 
         .Z(nCS_N_509)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam i1_4_lut.init = 16'hcccd;
    LUT4 i39_3_lut (.A(REUA[20]), .B(Length[4]), .C(A_out_0), .Z(n35)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i39_3_lut.init = 16'hcaca;
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2900), .COUT(n2901));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n554), .B(RAMRDD[7]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n560), .B(RAMRDD[1]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 nFF00Decode_bdd_2_lut (.A(A_out_1), .B(CA[4]), .Z(n3351)) /* synthesis lut_function=((B)+!A) */ ;
    defparam nFF00Decode_bdd_2_lut.init = 16'hdddd;
    LUT4 nFF00Decode_bdd_3_lut (.A(nFF00Decode), .B(A_out_1), .C(CA[12]), 
         .Z(n3350)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam nFF00Decode_bdd_3_lut.init = 16'he2e2;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n561), .B(RAMRDD[0]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n559), .B(RAMRDD[2]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n557), .B(RAMRDD[4]), .C(AOE), .D(n2211), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    DMASeq dmaseq (.n3420(n3420), .n3418(n3418), .AOE(AOE), .BA_c(BA_c), 
           .RAMWR(RAMWR), .PHI2_N_558(PHI2_N_558), .n3438(n3438), .n3443(n3443), 
           .nWEDMA_c(nWEDMA_c), .RAMRD(RAMRD), .nRESET_c(nRESET_c), .n3440(n3440), 
           .D_out_0(D_out_0), .n1325(n1325), .D_out_7(D_out_7), .n1305(n1305), 
           .D_out_5(D_out_5), .n1301(n1301), .D_out_3(D_out_3), .n1280(n1280), 
           .D_out_4(D_out_4), .n1284(n1284), .D_out_2(D_out_2), .n1270(n1270), 
           .D_out_1(D_out_1), .n1259(n1259), .D_out_6(D_out_6), .n1303(n1303), 
           .XferType({XferType}), .n3441(n3441), .n3431(n3431), .n1390(n1390), 
           .NextCA(NextCA), .NextREUA_N_584(NextREUA_N_584), .NextREUA(NextREUA), 
           .Execute(Execute), .nWEDMA_N_9(nWEDMA_N_9), .n3435(n3435), 
           .n3428(n3428), .n3430(n3430), .PHI2_N_558_enable_46(PHI2_N_558_enable_46), 
           .A_out_0(A_out_0), .n3424(n3424), .A_out_1(A_out_1), .PHI2_N_558_enable_55(PHI2_N_558_enable_55)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(85[9] 99[40])
    RAM ram (.RDCMDr(RDCMDr), .C8M_N_498(C8M_N_498), .RAMWR(RAMWR), .PHI2Start_N_550(PHI2Start_N_550), 
        .C8M_c(C8M_c), .RBA_c_0(RBA_c_0), .n244(n244), .\REUA[22] (REUA[22]), 
        .RA_0_11(RA_0_11), .n3133(n3133), .RA_0_9(RA_0_9), .INITCMDr(INITCMDr), 
        .n3656(n3656), .WRCMDr(WRCMDr), .nRESET_c(nRESET_c), .RAMRD(RAMRD), 
        .\REUA[18] (REUA[18]), .\REUA[9] (REUA[9]), .RDOE_N_553(RDOE_N_553), 
        .PHI2_c(PHI2_c), .RA_0_8(RA_0_8), .RAMRDD({RAMRDD}), .RDD_7__N_507(RDD_7__N_507), 
        .RD_out_0(RD_out_0), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
        .nRWE_N_525(nRWE_N_525), .CKE_c(CKE_c), .DQMH_c(DQMH_c), .\REUA[0] (REUA[0]), 
        .DQML_c(DQML_c), .A_0__N_539(A_0__N_539), .WRDr({WRDr}), .PHI2_N_558(PHI2_N_558), 
        .D_out_0(D_out_0), .RA_0_7(RA_0_7), .RA_0_6(RA_0_6), .RA_0_5(RA_0_5), 
        .RA_0_4(RA_0_4), .RA_0_3(RA_0_3), .RA_0_2(RA_0_2), .RA_0_1(RA_0_1), 
        .n3445(n3445), .RBA_c_1(RBA_c_1), .\REUA[23] (REUA[23]), .\REUA[20] (REUA[20]), 
        .nCS_c(nCS_c), .nCS_N_509(nCS_N_509), .RA_0_0(RA_0_0), .n12(n12), 
        .RA_0_10(RA_0_10), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .D_out_1(D_out_1), .D_out_2(D_out_2), .D_out_3(D_out_3), 
        .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), .D_out_7(D_out_7), 
        .\REUA[17] (REUA[17]), .\REUA[8] (REUA[8]), .\REUA[16] (REUA[16]), 
        .\REUA[7] (REUA[7]), .\REUA[15] (REUA[15]), .\REUA[6] (REUA[6]), 
        .\REUA[14] (REUA[14]), .\REUA[5] (REUA[5]), .\REUA[13] (REUA[13]), 
        .\REUA[4] (REUA[4]), .\REUA[12] (REUA[12]), .\REUA[3] (REUA[3]), 
        .\REUA[11] (REUA[11]), .\REUA[2] (REUA[2]), .\REUA[19] (REUA[19]), 
        .\REUA[10] (REUA[10]), .\REUA[1] (REUA[1]), .n1207(n1207), .RCLK_c(RCLK_c)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(73[6] 83[32])
    Glue glue (.nWE_c(nWE_c), .A_out_2(A_out_2), .n3434(n3434), .n3422(n3422), 
         .n2244(n2244), .A_out_3(A_out_3), .n3425(n3425), .n3443(n3443), 
         .n3440(n3440), .n1390(n1390), .n3431(n3431), .n3411(n3411), 
         .Length_15__N_317({Length_15__N_317}), .LengthWritten({LengthWritten}), 
         .n3418(n3418), .n1017({Length_15__N_315, Length_14__N_324, Length_13__N_329, 
         Length_12__N_334, Length_11__N_339, Length_10__N_344, Length_9__N_349, 
         Length_8__N_354}), .n3441(n3441), .XferType({XferType}), .PHI2_N_558_enable_20(PHI2_N_558_enable_20), 
         .\CA[8] (CA[8]), .\CAWritten[8] (CAWritten[8]), .n2934(n2934), 
         .\REUA[8] (REUA[8]), .\REUAWritten[8] (REUAWritten[8]), .n2951(n2951), 
         .n3416(n3416), .PHI2_N_558_enable_88(PHI2_N_558_enable_88), .\REUA[0] (REUA[0]), 
         .\REUAWritten[0] (REUAWritten[0]), .n2968(n2968), .Length_7__N_361({Length_7__N_361}), 
         .n1016({Length_7__N_359, Length_6__N_366, Length_5__N_371, Length_4__N_376, 
         Length_3__N_381, Length_2__N_386, Length_1__N_391, Length_0__N_396}), 
         .\CA[0] (CA[0]), .\CAWritten[0] (CAWritten[0]), .n2917(n2917), 
         .nWEDMA_N_9(nWEDMA_N_9), .n3414(n3414), .n3424(n3424), .AOE(AOE), 
         .nIO2_c(nIO2_c), .n3430(n3430), .RegRD(RegRD), .n3427(n3427), 
         .D_out_7(D_out_7), .nFF00Decode(nFF00Decode), .Execute(Execute), 
         .BA_c(BA_c), .n3420(n3420), .PHI2_N_558_enable_22(PHI2_N_558_enable_22), 
         .VerifyErrMask(VerifyErrMask), .n4(n4), .A_out_11(A_out_11), 
         .A_out_10(A_out_10), .A_out_13(A_out_13), .A_out_8(A_out_8), 
         .n6(n6), .A_out_1(A_out_1), .n7(n7), .A_out_4(A_out_4), .n8(n8), 
         .A_out_12(A_out_12), .A_out_9(A_out_9), .A_out_14(A_out_14), 
         .A_out_15(A_out_15), .PHI2_N_558_enable_24(PHI2_N_558_enable_24), 
         .nAOE_N_590(nAOE_N_590), .nWEDMA_c(nWEDMA_c), .nDOE_N_595(nDOE_N_595), 
         .DOE(DOE), .PHI2_N_558_enable_66(PHI2_N_558_enable_66), .IntEnable(IntEnable), 
         .EndOfBlock(EndOfBlock), .EndOfBlockMask(EndOfBlockMask), .IRQ(IRQ)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(101[7] 118[15])
    
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
// Verilog Description of module REUReg
//

module REUReg (GND_net, NextCA, n1390, A_out_2, PHI2_N_558_enable_20, 
            REUA, LengthWritten, PHI2_N_558, n1259, n1270, n1280, 
            n2951, CA, n3440, n1325, Length_7__N_361, D_out_2, D_out_3, 
            A_out_1, n1284, D_out_4, n1301, \Length[4] , Length_15__N_317, 
            D_out_5, n1303, n1305, D_out_6, A_out_3, n556, D_out_0, 
            D_out_7, PHI2_N_558_enable_55, n1016, \CAWritten[8] , EndOfBlock, 
            n3656, D_out_1, PHI2_N_558_enable_22, A_out_0, VerifyErrMask, 
            IntEnable, EndOfBlockMask, PHI2_N_558_enable_24, PHI2_N_558_enable_46, 
            nFF00Decode, PHI2_N_558_enable_66, n2934, XferType, PHI2_N_558_enable_88, 
            n3422, \CAWritten[0] , n3435, n3424, A_out_4, n3434, 
            \REUAWritten[8] , n3428, n3425, n2917, \REUAWritten[0] , 
            n2968, NextREUA, n534, n554, A_0__N_539, \IncMode[1] , 
            n3178, n557, n1017, n558, n4, n3598, n480, n3414, 
            n3430, n3427, n3416, n560, n2244, n559, RegRD, n561, 
            n2211, n3198, NextREUA_N_584, n3431, n3411) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input NextCA;
    output n1390;
    input A_out_2;
    input PHI2_N_558_enable_20;
    output [23:0]REUA;
    output [15:0]LengthWritten;
    input PHI2_N_558;
    input n1259;
    input n1270;
    input n1280;
    input n2951;
    output [15:0]CA;
    input n3440;
    input n1325;
    output [7:0]Length_7__N_361;
    input D_out_2;
    input D_out_3;
    input A_out_1;
    input n1284;
    input D_out_4;
    input n1301;
    output \Length[4] ;
    output [7:0]Length_15__N_317;
    input D_out_5;
    input n1303;
    input n1305;
    input D_out_6;
    input A_out_3;
    output n556;
    input D_out_0;
    input D_out_7;
    input PHI2_N_558_enable_55;
    input [7:0]n1016;
    output \CAWritten[8] ;
    output EndOfBlock;
    input n3656;
    input D_out_1;
    input PHI2_N_558_enable_22;
    input A_out_0;
    output VerifyErrMask;
    output IntEnable;
    output EndOfBlockMask;
    input PHI2_N_558_enable_24;
    input PHI2_N_558_enable_46;
    output nFF00Decode;
    input PHI2_N_558_enable_66;
    input n2934;
    output [1:0]XferType;
    input PHI2_N_558_enable_88;
    input n3422;
    output \CAWritten[0] ;
    output n3435;
    input n3424;
    input A_out_4;
    output n3434;
    output \REUAWritten[8] ;
    output n3428;
    input n3425;
    input n2917;
    output \REUAWritten[0] ;
    input n2968;
    input NextREUA;
    input n534;
    output n554;
    output A_0__N_539;
    output \IncMode[1] ;
    input n3178;
    output n557;
    input [7:0]n1017;
    output n558;
    output n4;
    output n3598;
    output n480;
    input n3414;
    input n3430;
    output n3427;
    output n3416;
    output n560;
    input n2244;
    output n559;
    input RegRD;
    output n561;
    output n2211;
    output n3198;
    input NextREUA_N_584;
    input n3431;
    input n3411;
    
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire n3005, n3205, n3206, n3207, n3000;
    wire [23:0]REUAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(51[12:23])
    wire [7:0]REUAOut_15__N_61;
    
    wire n2999, PHI2_N_558_enable_12, n2998, n2997, REUAOut_15__N_62;
    wire [7:0]n428;
    
    wire n3179, n3180, n3181, n2993;
    wire [15:0]Length;   // //mac/icloud/repos/gw4302/cpld/reg.v(55[12:18])
    
    wire n2992, PHI2_N_558_enable_64, n3186, n3187, n3188, n3199, 
        n3200, n3201, n3202, n3203, n3204, n2991, n2990, n2989, 
        n2988;
    wire [7:0]n432;
    
    wire PHI2_N_558_enable_51, n14, n10;
    wire [7:0]n429;
    wire [7:0]n500;
    
    wire REUAOut_18__N_45;
    wire [2:0]n425;
    
    wire PHI2_N_558_enable_49, n17;
    wire [15:0]CAWritten;   // //mac/icloud/repos/gw4302/cpld/reg.v(46[12:21])
    
    wire n3419, Length_5__N_370, n28, n22, n30, n9, n14_adj_607, 
        n10_adj_608, CAOut_15__N_148, n1293, Fault;
    wire [7:0]n430;
    wire [7:0]n476;
    wire [7:0]n488;
    
    wire n3195;
    wire [7:0]n464;
    wire [7:0]n543;
    
    wire n26;
    wire [5:0]n574;
    
    wire IntPending, n2987, n2986, n18;
    wire [1:0]IncMode;   // //mac/icloud/repos/gw4302/cpld/reg.v(65[11:18])
    
    wire PHI2_N_558_enable_65, n3594, n3322, n3593, n3591, n3592;
    wire [2:0]n431;
    
    wire n2984;
    wire [7:0]CAOut_15__N_147;
    
    wire n2983, n2982, n3595, n3596, n3597, Autoload, n3194, Length_0__N_395, 
        Length_2__N_385, n2981, Length_1__N_390, REUAOut_22__N_29, Length_7__N_358, 
        Length_6__N_365, n3439;
    wire [31:0]REUAOut_7__N_105;
    
    wire n2976;
    wire [7:0]CAOut_7__N_191;
    
    wire n3410, n1028, PHI2_N_558_enable_63;
    wire [7:0]n533;
    
    wire n2975, n2974, n2973, n3008, n3007, n3006, n3182, n3183, 
        n3174, n3184, n3185, n3413, PHI2_N_558_enable_83, n3415, 
        n3192, n3193, n3196, n3051, n14_adj_609, REUAOut_19__N_38, 
        REUAOut_20__N_35, REUAOut_21__N_32, ExecuteEN, PHI2_N_558_enable_75, 
        Length_8__N_353, Length_9__N_348, Length_10__N_343, Length_11__N_338, 
        Length_12__N_333, REUAOut_23__N_24, Length_14__N_323, Length_13__N_328, 
        n3197, n16, Length_15__N_314, n3421, PHI2_N_558_enable_87, 
        Length_3__N_380, n3014, Length_4__N_375, n10_adj_610, n3417, 
        n2209, n9_adj_611, n17_adj_612;
    
    CCU2D add_834_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(NextCA), .B1(n1390), .C1(GND_net), .D1(GND_net), .COUT(n3005));   // //mac/icloud/repos/gw4302/cpld/reg.v(165[16:27])
    defparam add_834_1.INIT0 = 16'hF000;
    defparam add_834_1.INIT1 = 16'hffff;
    defparam add_834_1.INJECT1_0 = "NO";
    defparam add_834_1.INJECT1_1 = "NO";
    L6MUX21 i2848 (.D0(n3205), .D1(n3206), .SD(A_out_2), .Z(n3207));
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n3000), .S0(REUAOut_15__N_61[6]), .S1(REUAOut_15__N_61[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(180[17:35])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n2999), .COUT(n3000), .S0(REUAOut_15__N_61[4]), 
          .S1(REUAOut_15__N_61[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(180[17:35])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_9__683 (.D(n1259), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_9__683.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__682 (.D(n1270), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_10__682.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__681 (.D(n1280), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_11__681.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n2998), .COUT(n2999), .S0(REUAOut_15__N_61[2]), 
          .S1(REUAOut_15__N_61[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(180[17:35])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_3 (.A0(n2951), .B0(NextCA), .C0(REUAOut_15__N_62), 
          .D0(n1390), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[9]), 
          .D1(REUA[9]), .CIN(n2997), .COUT(n2998), .S0(REUAOut_15__N_61[0]), 
          .S1(REUAOut_15__N_61[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(180[17:35])
    defparam REUAOut_15__I_0_3.INIT0 = 16'h5a9a;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    FD1S3IX CA_7__573 (.D(n428[7]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_7__573.GSR = "ENABLED";
    L6MUX21 i2822 (.D0(n3179), .D1(n3180), .SD(A_out_2), .Z(n3181));
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(NextCA), .B1(n1390), .C1(GND_net), .D1(GND_net), 
          .COUT(n2997));   // //mac/icloud/repos/gw4302/cpld/reg.v(180[17:35])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_8__684 (.D(n1325), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_8__684.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2993), .S0(Length_7__N_361[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(211[18:37])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2992), .COUT(n2993), .S0(Length_7__N_361[5]), 
          .S1(Length_7__N_361[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(211[18:37])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_2__618 (.D(D_out_2), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_2__618.GSR = "ENABLED";
    L6MUX21 i2829 (.D0(n3186), .D1(n3187), .SD(A_out_2), .Z(n3188));
    FD1P3IX REUAWritten_3__617 (.D(D_out_3), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_3__617.GSR = "ENABLED";
    PFUMX i2842 (.BLUT(n3199), .ALUT(n3200), .C0(A_out_1), .Z(n3201));
    FD1P3AX LengthWritten_12__680 (.D(n1284), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_12__680.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__616 (.D(D_out_4), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_4__616.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__679 (.D(n1301), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_13__679.GSR = "ENABLED";
    PFUMX i2845 (.BLUT(n3202), .ALUT(n3203), .C0(A_out_1), .Z(n3204));
    FD1S3IX CA_6__574 (.D(n428[6]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_6__574.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2991), .COUT(n2992), .S0(Length_7__N_361[3]), 
          .S1(Length_7__N_361[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(211[18:37])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2990), .COUT(n2991), .S0(Length_7__N_361[1]), 
          .S1(Length_7__N_361[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(211[18:37])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2990), .S1(Length_7__N_361[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(211[18:37])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2989), .S0(Length_15__N_317[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(226[19:39])
    defparam Length_15__I_0_828_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_828_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2988), .COUT(n2989), .S0(Length_15__N_317[5]), 
          .S1(Length_15__N_317[6]));   // //mac/icloud/repos/gw4302/cpld/reg.v(226[19:39])
    defparam Length_15__I_0_828_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_7.INJECT1_1 = "NO";
    FD1S3IX CA_5__575 (.D(n428[5]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_5__575.GSR = "ENABLED";
    FD1S3IX CA_4__576 (.D(n428[4]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_4__576.GSR = "ENABLED";
    FD1S3IX CA_3__577 (.D(n428[3]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_3__577.GSR = "ENABLED";
    FD1S3IX CA_2__578 (.D(n428[2]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_2__578.GSR = "ENABLED";
    FD1S3IX CA_1__579 (.D(n428[1]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_1__579.GSR = "ENABLED";
    FD1S3IX CA_0__580 (.D(n428[0]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_0__580.GSR = "ENABLED";
    FD1S3IX CA_15__589 (.D(n432[7]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_15__589.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__615 (.D(D_out_5), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_5__615.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__678 (.D(n1303), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_14__678.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__677 (.D(n1305), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_15__677.GSR = "ENABLED";
    FD1P3IX REUAWritten_6__614 (.D(D_out_6), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_6__614.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__668 (.D(n1325), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_0__668.GSR = "ENABLED";
    FD1S3IX CA_14__590 (.D(n432[6]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_14__590.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(Length[7]), .B(Length[6]), .C(Length[3]), .D(Length[0]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i2_2_lut (.A(Length[1]), .B(Length[2]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    FD1S3IX CA_13__591 (.D(n432[5]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_13__591.GSR = "ENABLED";
    FD1S3IX CA_12__592 (.D(n432[4]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_12__592.GSR = "ENABLED";
    FD1S3IX CA_11__593 (.D(n432[3]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_11__593.GSR = "ENABLED";
    FD1S3IX CA_10__594 (.D(n432[2]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_10__594.GSR = "ENABLED";
    FD1S3IX CA_9__595 (.D(n432[1]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_9__595.GSR = "ENABLED";
    FD1S3IX CA_8__596 (.D(n432[0]), .CK(PHI2_N_558), .CD(n3440), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_8__596.GSR = "ENABLED";
    FD1S3IX REUA_7__605 (.D(n429[7]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_7__605.GSR = "ENABLED";
    LUT4 mux_253_i6_4_lut (.A(n3188), .B(n500[5]), .C(A_out_3), .D(A_out_1), 
         .Z(n556)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_253_i6_4_lut.init = 16'hfaca;
    LUT4 mux_205_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(PHI2_N_558_enable_20), 
         .D(REUAOut_18__N_45), .Z(n425[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(196[18:37])
    defparam mux_205_i1_4_lut.init = 16'hc5ca;
    FD1P3IX REUAWritten_16__652 (.D(D_out_0), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_16__652.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(Length[0]), .B(Length[6]), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(57[18:27])
    defparam i1_2_lut.init = 16'hdddd;
    FD1P3IX REUAWritten_7__613 (.D(D_out_7), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_7__613.GSR = "ENABLED";
    FD1P3AX CAWritten_11__601 (.D(D_out_3), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_11__601.GSR = "ENABLED";
    LUT4 Length_5__I_100_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_5), 
         .D(n1016[5]), .Z(Length_5__N_370)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_5__I_100_3_lut_4_lut.init = 16'hf780;
    FD1P3AX CAWritten_8__604 (.D(D_out_0), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(\CAWritten[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_8__604.GSR = "ENABLED";
    LUT4 i14_4_lut (.A(Length[10]), .B(n28), .C(n22), .D(Length[12]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(57[18:27])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n9), .B(NextCA), .C(n14_adj_607), .D(n10_adj_608), 
         .Z(CAOut_15__N_148)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    FD1P3AX CAWritten_10__602 (.D(D_out_2), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_10__602.GSR = "ENABLED";
    FD1P3IX EndOfBlock_565 (.D(n3656), .SP(PHI2_N_558_enable_20), .CD(n1293), 
            .CK(PHI2_N_558), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(83[8] 104[4])
    defparam EndOfBlock_565.GSR = "ENABLED";
    FD1P3AX CAWritten_9__603 (.D(D_out_1), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_9__603.GSR = "ENABLED";
    FD1P3IX Fault_566 (.D(n3656), .SP(PHI2_N_558_enable_22), .CD(n1293), 
            .CK(PHI2_N_558), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(83[8] 104[4])
    defparam Fault_566.GSR = "ENABLED";
    LUT4 mux_210_i1_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_0), 
         .D(REUAOut_15__N_61[0]), .Z(n430[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_17__651 (.D(D_out_1), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_17__651.GSR = "ENABLED";
    PFUMX i2847 (.BLUT(n476[0]), .ALUT(n488[0]), .C0(A_out_1), .Z(n3206));
    LUT4 i2836_3_lut (.A(REUA[23]), .B(Length[7]), .C(A_out_0), .Z(n3195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2836_3_lut.init = 16'hcaca;
    LUT4 mux_240_i6_3_lut (.A(Length[13]), .B(VerifyErrMask), .C(A_out_0), 
         .Z(n500[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_240_i6_3_lut.init = 16'hcaca;
    LUT4 mux_210_i2_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_1), 
         .D(REUAOut_15__N_61[1]), .Z(n430[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i2_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_6__606 (.D(n429[6]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_6__606.GSR = "ENABLED";
    LUT4 mux_251_i3_4_lut (.A(n464[2]), .B(n3204), .C(A_out_2), .D(A_out_1), 
         .Z(n543[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_251_i3_4_lut.init = 16'hcac0;
    LUT4 mux_228_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n464[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_228_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_132 (.A(CA[4]), .B(CA[5]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_132.init = 16'h8888;
    FD1S3IX REUA_5__607 (.D(n429[5]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_5__607.GSR = "ENABLED";
    FD1S3IX REUA_4__608 (.D(n429[4]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_4__608.GSR = "ENABLED";
    FD1S3IX REUA_3__609 (.D(n429[3]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_3__609.GSR = "ENABLED";
    FD1S3IX REUA_2__610 (.D(n429[2]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_2__610.GSR = "ENABLED";
    FD1S3IX REUA_1__611 (.D(n429[1]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_1__611.GSR = "ENABLED";
    FD1S3IX REUA_0__612 (.D(n429[0]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_0__612.GSR = "ENABLED";
    FD1S3IX REUA_15__621 (.D(n430[7]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_15__621.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(Length[8]), .B(Length[3]), .C(Length[13]), .D(Length[5]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(57[18:27])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut_adj_133 (.A(CA[7]), .B(CA[6]), .C(CA[3]), .D(CA[0]), 
         .Z(n14_adj_607)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_133.init = 16'h8000;
    LUT4 mux_210_i3_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_2), 
         .D(REUAOut_15__N_61[2]), .Z(n430[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_210_i4_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_3), 
         .D(REUAOut_15__N_61[3]), .Z(n430[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_210_i5_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_4), 
         .D(REUAOut_15__N_61[4]), .Z(n430[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_210_i6_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_5), 
         .D(REUAOut_15__N_61[5]), .Z(n430[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_210_i7_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_6), 
         .D(REUAOut_15__N_61[6]), .Z(n430[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i7_3_lut_4_lut.init = 16'hfb40;
    PFUMX i2846 (.BLUT(n574[0]), .ALUT(n464[0]), .C0(A_out_1), .Z(n3205));
    FD1S3IX IntEnable_685 (.D(D_out_7), .CK(PHI2_N_558), .CD(n3440), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam IntEnable_685.GSR = "ENABLED";
    FD1S3IX EndOfBlockMask_686 (.D(D_out_6), .CK(PHI2_N_558), .CD(n3440), 
            .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam EndOfBlockMask_686.GSR = "ENABLED";
    FD1S3IX VerifyErrMask_687 (.D(D_out_5), .CK(PHI2_N_558), .CD(n3440), 
            .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam VerifyErrMask_687.GSR = "ENABLED";
    FD1P3IX IntPending_564 (.D(n3656), .SP(PHI2_N_558_enable_24), .CD(n1293), 
            .CK(PHI2_N_558), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(83[8] 104[4])
    defparam IntPending_564.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__661 (.D(n1305), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_7__661.GSR = "ENABLED";
    FD1S3IX REUA_14__622 (.D(n430[6]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_14__622.GSR = "ENABLED";
    FD1S3IX REUA_13__623 (.D(n430[5]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_13__623.GSR = "ENABLED";
    FD1S3IX REUA_12__624 (.D(n430[4]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_12__624.GSR = "ENABLED";
    FD1S3IX REUA_11__625 (.D(n430[3]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_11__625.GSR = "ENABLED";
    FD1S3IX REUA_10__626 (.D(n430[2]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_10__626.GSR = "ENABLED";
    FD1S3IX REUA_9__627 (.D(n430[1]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_9__627.GSR = "ENABLED";
    FD1S3IX REUA_8__628 (.D(n430[0]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_8__628.GSR = "ENABLED";
    LUT4 i2_2_lut_adj_134 (.A(CA[1]), .B(CA[2]), .Z(n10_adj_608)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_134.init = 16'h8888;
    CCU2D Length_15__I_0_828_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2987), .COUT(n2988), .S0(Length_15__N_317[3]), 
          .S1(Length_15__N_317[4]));   // //mac/icloud/repos/gw4302/cpld/reg.v(226[19:39])
    defparam Length_15__I_0_828_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_828_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2986), .COUT(n2987), .S0(Length_15__N_317[1]), 
          .S1(Length_15__N_317[2]));   // //mac/icloud/repos/gw4302/cpld/reg.v(226[19:39])
    defparam Length_15__I_0_828_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_828_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_3.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), .Z(n1390)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(57[18:27])
    defparam i15_4_lut.init = 16'hfffe;
    CCU2D Length_15__I_0_828_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2986), .S1(Length_15__N_317[0]));   // //mac/icloud/repos/gw4302/cpld/reg.v(226[19:39])
    defparam Length_15__I_0_828_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_828_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_828_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_828_add_2_1.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_18__650 (.D(D_out_2), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_18__650.GSR = "ENABLED";
    FD1P3IX REUAWritten_19__649 (.D(D_out_3), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_19__649.GSR = "ENABLED";
    LUT4 mux_210_i8_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_7), 
         .D(REUAOut_15__N_61[7]), .Z(n430[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_210_i8_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_20__648 (.D(D_out_4), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_20__648.GSR = "ENABLED";
    PFUMX i2820 (.BLUT(n574[1]), .ALUT(n464[1]), .C0(A_out_1), .Z(n3179));
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_558_enable_65), .CD(n3440), 
            .CK(PHI2_N_558), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i0.GSR = "ENABLED";
    FD1P3AX LengthWritten_6__662 (.D(n1303), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_6__662.GSR = "ENABLED";
    LUT4 CA_6__bdd_3_lut_3084 (.A(A_out_1), .B(REUA[22]), .C(REUA[6]), 
         .Z(n3594)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam CA_6__bdd_3_lut_3084.init = 16'hd8d8;
    FD1P3AX LengthWritten_5__663 (.D(n1301), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_5__663.GSR = "ENABLED";
    FD1P3AX CAWritten_6__582 (.D(D_out_6), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_6__582.GSR = "ENABLED";
    LUT4 n3322_bdd_4_lut (.A(n3322), .B(CA[14]), .C(A_out_2), .D(A_out_1), 
         .Z(n3593)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n3322_bdd_4_lut.init = 16'haca0;
    LUT4 n3591_bdd_3_lut (.A(n3591), .B(IncMode[0]), .C(A_out_1), .Z(n3592)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3591_bdd_3_lut.init = 16'hcaca;
    LUT4 Length_14__bdd_3_lut_3099 (.A(Length[14]), .B(A_out_0), .C(EndOfBlockMask), 
         .Z(n3591)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Length_14__bdd_3_lut_3099.init = 16'he2e2;
    FD1P3AX CAWritten_5__583 (.D(D_out_5), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_5__583.GSR = "ENABLED";
    FD1S3IX REUA_18__642 (.D(n431[2]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_18__642.GSR = "ENABLED";
    FD1S3IX REUA_17__643 (.D(n431[1]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_17__643.GSR = "ENABLED";
    FD1S3IX REUA_16__644 (.D(n431[0]), .CK(PHI2_N_558), .CD(n3440), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_16__644.GSR = "ENABLED";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n2984), .S0(CAOut_15__N_147[6]), .S1(CAOut_15__N_147[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n2983), .COUT(n2984), .S0(CAOut_15__N_147[4]), 
          .S1(CAOut_15__N_147[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n2982), .COUT(n2983), .S0(CAOut_15__N_147[2]), 
          .S1(CAOut_15__N_147[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    FD1P3AX nFF00Decode_571 (.D(n1284), .SP(PHI2_N_558_enable_66), .CK(PHI2_N_558), 
            .Q(nFF00Decode)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(107[8] 124[4])
    defparam nFF00Decode_571.GSR = "ENABLED";
    LUT4 CA_6__bdd_3_lut_3100 (.A(CA[6]), .B(EndOfBlock), .C(A_out_1), 
         .Z(n3595)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_6__bdd_3_lut_3100.init = 16'hacac;
    LUT4 n3596_bdd_3_lut (.A(n3596), .B(n3593), .C(A_out_0), .Z(n3597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3596_bdd_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_4__664 (.D(n1284), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_4__664.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__665 (.D(n1280), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_3__665.GSR = "ENABLED";
    FD1P3AX CAWritten_4__584 (.D(D_out_4), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_4__584.GSR = "ENABLED";
    FD1P3IX Autoload_570 (.D(D_out_6), .SP(PHI2_N_558_enable_66), .CD(n3440), 
            .CK(PHI2_N_558), .Q(Autoload)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(107[8] 124[4])
    defparam Autoload_570.GSR = "ENABLED";
    LUT4 i2835_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n3194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2835_3_lut.init = 16'hcaca;
    LUT4 Length_0__I_110_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_0), 
         .D(n1016[0]), .Z(Length_0__N_395)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_0__I_110_3_lut_4_lut.init = 16'hf780;
    LUT4 Length_2__I_106_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_2), 
         .D(n1016[2]), .Z(Length_2__N_385)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_2__I_106_3_lut_4_lut.init = 16'hf780;
    FD1P3AX CAWritten_3__585 (.D(D_out_3), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_3__585.GSR = "ENABLED";
    LUT4 mux_228_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n464[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_228_i3_3_lut.init = 16'hcaca;
    CCU2D CAOut_15__I_0_3 (.A0(n2934), .B0(NextCA), .C0(CAOut_15__N_148), 
          .D0(n1390), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n2981), .COUT(n2982), .S0(CAOut_15__N_147[0]), 
          .S1(CAOut_15__N_147[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam CAOut_15__I_0_3.INIT0 = 16'h5a9a;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    FD1P3AX CAWritten_2__586 (.D(D_out_2), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_2__586.GSR = "ENABLED";
    FD1P3AX CAWritten_1__587 (.D(D_out_1), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_1__587.GSR = "ENABLED";
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_558_enable_66), .CD(n3440), 
            .CK(PHI2_N_558), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(107[8] 124[4])
    defparam XferType__i0.GSR = "ENABLED";
    LUT4 Length_1__I_108_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_1), 
         .D(n1016[1]), .Z(Length_1__N_390)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_1__I_108_3_lut_4_lut.init = 16'hf780;
    FD1P3IX REUA_22__638 (.D(REUAOut_22__N_29), .SP(PHI2_N_558_enable_88), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_22__638.GSR = "ENABLED";
    LUT4 Length_7__I_96_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_7), 
         .D(n1016[7]), .Z(Length_7__N_358)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_7__I_96_3_lut_4_lut.init = 16'hf780;
    LUT4 Length_6__I_98_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_6), 
         .D(n1016[6]), .Z(Length_6__N_365)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_6__I_98_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_251_i4_4_lut (.A(n464[3]), .B(n3201), .C(A_out_2), .D(A_out_1), 
         .Z(n543[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_251_i4_4_lut.init = 16'hcac0;
    LUT4 mux_209_i8_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_7), .D(REUAOut_7__N_105[7]), 
         .Z(n429[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_209_i7_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_6), .D(REUAOut_7__N_105[6]), 
         .Z(n429[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_209_i6_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_5), .D(REUAOut_7__N_105[5]), 
         .Z(n429[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_209_i5_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_4), .D(REUAOut_7__N_105[4]), 
         .Z(n429[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_209_i4_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_3), .D(REUAOut_7__N_105[3]), 
         .Z(n429[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_209_i3_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_2), .D(REUAOut_7__N_105[2]), 
         .Z(n429[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_2__666 (.D(n1270), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_2__666.GSR = "ENABLED";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(NextCA), .B1(n1390), .C1(GND_net), .D1(GND_net), .COUT(n2981));   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    FD1P3AX CAWritten_7__581 (.D(D_out_7), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_7__581.GSR = "ENABLED";
    FD1P3AX CAWritten_0__588 (.D(D_out_0), .SP(PHI2_N_558_enable_46), .CK(PHI2_N_558), 
            .Q(\CAWritten[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_0__588.GSR = "ENABLED";
    FD1P3IX REUAWritten_21__647 (.D(D_out_5), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_21__647.GSR = "ENABLED";
    LUT4 mux_209_i2_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_1), .D(REUAOut_7__N_105[1]), 
         .Z(n429[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_209_i1_3_lut_4_lut (.A(n3439), .B(n3422), .C(D_out_0), .D(REUAOut_7__N_105[0]), 
         .Z(n429[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_209_i1_3_lut_4_lut.init = 16'hfe10;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n2976), .S0(CAOut_7__N_191[6]), .S1(CAOut_7__N_191[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(136[14:29])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    LUT4 i697_2_lut_rep_31 (.A(REUA[16]), .B(REUAOut_18__N_45), .Z(n3410)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(196[18:37])
    defparam i697_2_lut_rep_31.init = 16'h8888;
    LUT4 mux_208_i8_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_7), .D(CAOut_7__N_191[7]), 
         .Z(n428[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_22__646 (.D(D_out_6), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_22__646.GSR = "ENABLED";
    LUT4 i705_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_45), .C(REUA[17]), 
         .Z(n1028)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(196[18:37])
    defparam i705_2_lut_3_lut.init = 16'h8080;
    FD1P3IX REUAWritten_23__645 (.D(D_out_7), .SP(PHI2_N_558_enable_49), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_23__645.GSR = "ENABLED";
    FD1P3IX REUAWritten_1__619 (.D(D_out_1), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_1__619.GSR = "ENABLED";
    FD1P3AX LengthWritten_1__667 (.D(n1259), .SP(PHI2_N_558_enable_51), 
            .CK(PHI2_N_558), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_1__667.GSR = "ENABLED";
    PFUMX i2821 (.BLUT(n476[1]), .ALUT(n488[1]), .C0(A_out_1), .Z(n3180));
    FD1P3AX CAWritten_15__597 (.D(D_out_7), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_15__597.GSR = "ENABLED";
    FD1P3AX CAWritten_14__598 (.D(D_out_6), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_14__598.GSR = "ENABLED";
    FD1P3AX CAWritten_13__599 (.D(D_out_5), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_13__599.GSR = "ENABLED";
    FD1P3AX CAWritten_12__600 (.D(D_out_4), .SP(PHI2_N_558_enable_55), .CK(PHI2_N_558), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_12__600.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_55 (.A(A_out_3), .B(A_out_4), .Z(n3434)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_rep_55.init = 16'heeee;
    FD1P3IX REUAWritten_8__636 (.D(D_out_0), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(\REUAWritten[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_8__636.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_49_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3428)) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_rep_49_3_lut.init = 16'hfefe;
    LUT4 equal_15_i6_2_lut_rep_56 (.A(A_out_0), .B(A_out_1), .Z(n3435)) /* synthesis lut_function=(A+!(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam equal_15_i6_2_lut_rep_56.init = 16'hbbbb;
    LUT4 i503_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3425), .D(n3440), 
         .Z(PHI2_N_558_enable_65)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i503_3_lut_4_lut.init = 16'hff40;
    LUT4 i2879_2_lut_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3440), 
         .D(n3422), .Z(PHI2_N_558_enable_49)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i2879_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f4;
    LUT4 i1911_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(Length[10]), 
         .Z(n533[2])) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1911_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1914_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(Length[11]), 
         .Z(n533[3])) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1914_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_205_i2_4_lut (.A(REUA[17]), .B(REUAWritten[17]), .C(PHI2_N_558_enable_20), 
         .D(n3410), .Z(n425[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(196[18:37])
    defparam mux_205_i2_4_lut.init = 16'hc5ca;
    LUT4 i1915_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(Length[12]), 
         .Z(n533[4])) /* synthesis lut_function=(A+(B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1915_2_lut_3_lut.init = 16'hfefe;
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n2975), .COUT(n2976), .S0(CAOut_7__N_191[4]), 
          .S1(CAOut_7__N_191[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(136[14:29])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n2974), .COUT(n2975), .S0(CAOut_7__N_191[2]), 
          .S1(CAOut_7__N_191[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(136[14:29])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(n2917), .B0(NextCA), .C0(NextCA), .D0(n1390), 
          .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n2973), .COUT(n2974), .S0(CAOut_7__N_191[0]), 
          .S1(CAOut_7__N_191[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(136[14:29])
    defparam CAOut_7__I_0_3.INIT0 = 16'h5a9a;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(NextCA), .B1(n1390), .C1(GND_net), .D1(GND_net), .COUT(n2973));   // //mac/icloud/repos/gw4302/cpld/reg.v(136[14:29])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 A_4__I_0_690_i6_2_lut_rep_60 (.A(A_out_0), .B(A_out_1), .Z(n3439)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam A_4__I_0_690_i6_2_lut_rep_60.init = 16'heeee;
    CCU2D add_834_9 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n3008), .S0(REUAOut_7__N_105[6]), .S1(REUAOut_7__N_105[7]));   // //mac/icloud/repos/gw4302/cpld/reg.v(165[16:27])
    defparam add_834_9.INIT0 = 16'h596a;
    defparam add_834_9.INIT1 = 16'h596a;
    defparam add_834_9.INJECT1_0 = "NO";
    defparam add_834_9.INJECT1_1 = "NO";
    LUT4 i2885_2_lut_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3440), 
         .D(n3422), .Z(PHI2_N_558_enable_64)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i2885_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3IX REUAWritten_9__635 (.D(D_out_1), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_9__635.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3440), .D(n3425), 
         .Z(PHI2_N_558_enable_12)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf1f0;
    CCU2D add_834_7 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n3007), .COUT(n3008), .S0(REUAOut_7__N_105[4]), 
          .S1(REUAOut_7__N_105[5]));   // //mac/icloud/repos/gw4302/cpld/reg.v(165[16:27])
    defparam add_834_7.INIT0 = 16'h596a;
    defparam add_834_7.INIT1 = 16'h596a;
    defparam add_834_7.INJECT1_0 = "NO";
    defparam add_834_7.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_10__634 (.D(D_out_2), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_10__634.GSR = "ENABLED";
    CCU2D add_834_5 (.A0(GND_net), .B0(PHI2_N_558_enable_20), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n3006), .COUT(n3007), .S0(REUAOut_7__N_105[2]), 
          .S1(REUAOut_7__N_105[3]));   // //mac/icloud/repos/gw4302/cpld/reg.v(165[16:27])
    defparam add_834_5.INIT0 = 16'h596a;
    defparam add_834_5.INIT1 = 16'h596a;
    defparam add_834_5.INJECT1_0 = "NO";
    defparam add_834_5.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_11__633 (.D(D_out_3), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_11__633.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__632 (.D(D_out_4), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_12__632.GSR = "ENABLED";
    FD1P3IX REUAWritten_13__631 (.D(D_out_5), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_13__631.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__630 (.D(D_out_6), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_14__630.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__629 (.D(D_out_7), .SP(PHI2_N_558_enable_63), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_15__629.GSR = "ENABLED";
    FD1P3IX REUAWritten_0__620 (.D(D_out_0), .SP(PHI2_N_558_enable_64), 
            .CD(n3440), .CK(PHI2_N_558), .Q(\REUAWritten[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_0__620.GSR = "ENABLED";
    CCU2D add_834_3 (.A0(n2968), .B0(NextCA), .C0(NextREUA), .D0(n1390), 
          .A1(GND_net), .B1(PHI2_N_558_enable_20), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n3005), .COUT(n3006), .S0(REUAOut_7__N_105[0]), 
          .S1(REUAOut_7__N_105[1]));   // //mac/icloud/repos/gw4302/cpld/reg.v(165[16:27])
    defparam add_834_3.INIT0 = 16'h5a9a;
    defparam add_834_3.INIT1 = 16'h596a;
    defparam add_834_3.INJECT1_0 = "NO";
    defparam add_834_3.INJECT1_1 = "NO";
    LUT4 mux_208_i7_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_6), .D(CAOut_7__N_191[6]), 
         .Z(n428[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i7_3_lut_4_lut.init = 16'hfe10;
    PFUMX i2827 (.BLUT(n3182), .ALUT(n3183), .C0(A_out_1), .Z(n3186));
    PFUMX mux_253_i8 (.BLUT(n500[7]), .ALUT(n534), .C0(n3174), .Z(n554));
    PFUMX i2828 (.BLUT(n3184), .ALUT(n3185), .C0(A_out_1), .Z(n3187));
    LUT4 mux_208_i6_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_5), .D(CAOut_7__N_191[5]), 
         .Z(n428[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_3_lut_4_lut (.A(n3440), .B(PHI2_N_558_enable_20), .C(n3413), 
         .D(NextCA), .Z(PHI2_N_558_enable_83)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_212_i7_3_lut (.A(CAOut_15__N_147[6]), .B(D_out_6), .C(n3415), 
         .Z(n432[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i7_3_lut.init = 16'hcaca;
    LUT4 mux_208_i5_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_4), .D(CAOut_7__N_191[4]), 
         .Z(n428[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i5_3_lut_4_lut.init = 16'hfe10;
    PFUMX i2837 (.BLUT(n3192), .ALUT(n3193), .C0(A_out_1), .Z(n3196));
    LUT4 mux_208_i4_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_3), .D(CAOut_7__N_191[3]), 
         .Z(n428[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_2_lut_adj_135 (.A(Length[1]), .B(\Length[4] ), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(57[18:27])
    defparam i2_2_lut_adj_135.init = 16'heeee;
    LUT4 mux_208_i3_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_2), .D(CAOut_7__N_191[2]), 
         .Z(n428[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_212_i6_3_lut (.A(CAOut_15__N_147[5]), .B(D_out_5), .C(n3415), 
         .Z(n432[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i6_3_lut.init = 16'hcaca;
    LUT4 i12_4_lut (.A(Length[11]), .B(Length[9]), .C(Length[14]), .D(Length[15]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(57[18:27])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 mux_208_i2_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_1), .D(CAOut_7__N_191[1]), 
         .Z(n428[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_out_2_bdd_3_lut (.A(Length[6]), .B(A_out_1), .C(REUA[14]), 
         .Z(n3322)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut.init = 16'hb8b8;
    LUT4 i6_2_lut (.A(Length[2]), .B(Length[7]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(57[18:27])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 mux_208_i1_3_lut_4_lut (.A(n3435), .B(n3424), .C(D_out_0), .D(CAOut_7__N_191[0]), 
         .Z(n428[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_208_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_211_i3_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_2), .D(n425[2]), 
         .Z(n431[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_211_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2826_3_lut (.A(REUA[21]), .B(Length[5]), .C(A_out_0), .Z(n3185)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2826_3_lut.init = 16'hcaca;
    LUT4 i7_4_lut (.A(\Length[4] ), .B(n14), .C(n10), .D(Length[5]), 
         .Z(n3051)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 mux_236_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n488[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_236_i2_3_lut.init = 16'hcaca;
    LUT4 mux_211_i2_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_1), .D(n425[1]), 
         .Z(n431[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_211_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_211_i1_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_0), .D(n425[0]), 
         .Z(n431[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_211_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i6_4_lut_adj_136 (.A(REUA[15]), .B(REUA[8]), .C(REUA[13]), .D(REUA[12]), 
         .Z(n14_adj_609)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_136.init = 16'h8000;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_539)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(179[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 i2825_3_lut (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), .Z(n3184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2825_3_lut.init = 16'hcaca;
    LUT4 mux_240_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n500[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_240_i8_3_lut.init = 16'hcaca;
    LUT4 i2834_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n3193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2834_3_lut.init = 16'hcaca;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_558_enable_65), .CD(n3440), 
            .CK(PHI2_N_558), .Q(\IncMode[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i1.GSR = "ENABLED";
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_558_enable_66), .CD(n3440), 
            .CK(PHI2_N_558), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(107[8] 124[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 i2840_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n3199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2840_3_lut.init = 16'hcaca;
    LUT4 REUAOut_22__I_2_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_6), 
         .D(REUAWritten[22]), .Z(REUAOut_22__N_29)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_22__I_2_3_lut_4_lut.init = 16'hfe10;
    LUT4 REUAOut_19__I_5_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_3), 
         .D(REUAWritten[19]), .Z(REUAOut_19__N_38)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_19__I_5_3_lut_4_lut.init = 16'hfe10;
    LUT4 REUAOut_20__I_4_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_4), 
         .D(REUAWritten[20]), .Z(REUAOut_20__N_35)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_20__I_4_3_lut_4_lut.init = 16'hfe10;
    LUT4 REUAOut_21__I_3_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_5), 
         .D(REUAWritten[21]), .Z(REUAOut_21__N_32)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_21__I_3_3_lut_4_lut.init = 16'hfe10;
    PFUMX mux_253_i5 (.BLUT(n3178), .ALUT(n533[4]), .C0(A_out_3), .Z(n557));
    LUT4 i2833_3_lut (.A(IntPending), .B(ExecuteEN), .C(A_out_0), .Z(n3192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2833_3_lut.init = 16'hcaca;
    FD1P3JX Length_8__676 (.D(Length_8__N_353), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_8__676.GSR = "ENABLED";
    FD1P3JX Length_9__675 (.D(Length_9__N_348), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_9__675.GSR = "ENABLED";
    FD1P3JX Length_10__674 (.D(Length_10__N_343), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_10__674.GSR = "ENABLED";
    FD1P3JX Length_11__673 (.D(Length_11__N_338), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_11__673.GSR = "ENABLED";
    FD1P3JX Length_12__672 (.D(Length_12__N_333), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_12__672.GSR = "ENABLED";
    LUT4 REUAOut_23__I_1_3_lut_4_lut (.A(n3435), .B(n3422), .C(D_out_7), 
         .D(REUAWritten[23]), .Z(REUAOut_23__N_24)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_23__I_1_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_11__I_87_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_3), 
         .D(n1017[3]), .Z(Length_11__N_338)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_11__I_87_3_lut_4_lut.init = 16'hfb40;
    PFUMX mux_253_i4 (.BLUT(n543[3]), .ALUT(n533[3]), .C0(A_out_3), .Z(n558));
    LUT4 Length_9__I_91_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_1), 
         .D(n1017[1]), .Z(Length_9__N_348)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_9__I_91_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_2_lut (.A(A_out_0), .B(ExecuteEN), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 Length_10__I_89_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_2), 
         .D(n1017[2]), .Z(Length_10__N_343)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_10__I_89_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_212_i5_3_lut (.A(CAOut_15__N_147[4]), .B(D_out_4), .C(n3415), 
         .Z(n432[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i5_3_lut.init = 16'hcaca;
    LUT4 mux_212_i4_3_lut (.A(CAOut_15__N_147[3]), .B(D_out_3), .C(n3415), 
         .Z(n432[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i4_3_lut.init = 16'hcaca;
    LUT4 Length_8__I_93_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_0), 
         .D(n1017[0]), .Z(Length_8__N_353)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_8__I_93_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_14__I_81_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_6), 
         .D(n1017[6]), .Z(Length_14__N_323)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_14__I_81_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2824_3_lut (.A(CA[5]), .B(CA[13]), .C(A_out_0), .Z(n3183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2824_3_lut.init = 16'hcaca;
    LUT4 Length_12__I_85_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_4), 
         .D(n1017[4]), .Z(Length_12__N_333)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_12__I_85_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2823_3_lut (.A(Fault), .B(Autoload), .C(A_out_0), .Z(n3182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2823_3_lut.init = 16'hcaca;
    LUT4 Length_13__I_83_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_5), 
         .D(n1017[5]), .Z(Length_13__N_328)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_13__I_83_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_212_i2_3_lut (.A(CAOut_15__N_147[1]), .B(D_out_1), .C(n3415), 
         .Z(n432[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i2_3_lut.init = 16'hcaca;
    LUT4 mux_232_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n476[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_232_i2_3_lut.init = 16'hcaca;
    LUT4 mux_212_i1_3_lut (.A(CAOut_15__N_147[0]), .B(D_out_0), .C(n3415), 
         .Z(n432[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i1_3_lut.init = 16'hcaca;
    FD1P3JX Length_13__671 (.D(Length_13__N_328), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_13__671.GSR = "ENABLED";
    PFUMX i2838 (.BLUT(n3194), .ALUT(n3195), .C0(A_out_1), .Z(n3197));
    LUT4 mux_212_i3_3_lut (.A(CAOut_15__N_147[2]), .B(D_out_2), .C(n3415), 
         .Z(n432[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i3_3_lut.init = 16'hcaca;
    LUT4 i376_2_lut_3_lut_4_lut (.A(A_out_0), .B(n3422), .C(n3440), .D(A_out_1), 
         .Z(PHI2_N_558_enable_63)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i376_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i1_2_lut_rep_34_3_lut (.A(A_out_0), .B(n3422), .C(A_out_1), .Z(n3413)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_34_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_137 (.A(A_out_0), .B(n3422), .C(n3440), 
         .D(A_out_1), .Z(PHI2_N_558_enable_51)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_137.init = 16'hf2f0;
    LUT4 i6_4_lut_adj_138 (.A(REUA[2]), .B(REUA[6]), .C(REUA[3]), .D(REUA[1]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_138.init = 16'h8000;
    FD1P3JX Length_14__670 (.D(Length_14__N_323), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_14__670.GSR = "ENABLED";
    LUT4 Length_15__I_79_3_lut_4_lut (.A(n3439), .B(n3425), .C(D_out_7), 
         .D(n1017[7]), .Z(Length_15__N_314)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_15__I_79_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_15__669 (.D(Length_15__N_314), .SP(PHI2_N_558_enable_75), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_15__669.GSR = "ENABLED";
    FD1P3JX Length_0__660 (.D(Length_0__N_395), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_0__660.GSR = "ENABLED";
    FD1P3JX Length_1__659 (.D(Length_1__N_390), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_1__659.GSR = "ENABLED";
    FD1P3JX Length_2__658 (.D(Length_2__N_385), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_2__658.GSR = "ENABLED";
    PFUMX i3087 (.BLUT(n3597), .ALUT(n3592), .C0(A_out_3), .Z(n3598));
    LUT4 mux_232_i5_3_lut (.A(REUA[4]), .B(REUA[12]), .C(A_out_0), .Z(n480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_232_i5_3_lut.init = 16'hcaca;
    PFUMX i3085 (.BLUT(n3595), .ALUT(n3594), .C0(A_out_2), .Z(n3596));
    LUT4 i2_3_lut_4_lut_adj_139 (.A(n3440), .B(PHI2_N_558_enable_20), .C(n3414), 
         .D(n3421), .Z(PHI2_N_558_enable_87)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_139.init = 16'hfeff;
    FD1P3JX Length_3__657 (.D(Length_3__N_380), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_3__657.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_140 (.A(n3430), .B(n3427), .C(D_out_7), .D(n3440), 
         .Z(n3014)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_140.init = 16'h0010;
    LUT4 i1930_2_lut_rep_37_4_lut (.A(n3434), .B(n3430), .C(A_out_2), 
         .D(n3435), .Z(n3416)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i1930_2_lut_rep_37_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_40_4_lut (.A(n3434), .B(n3430), .C(A_out_2), .D(A_out_0), 
         .Z(n3419)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_rep_40_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_rep_36_4_lut (.A(n3430), .B(n3428), .C(A_out_0), .D(A_out_1), 
         .Z(n3415)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_36_4_lut.init = 16'h1000;
    LUT4 mux_228_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n464[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_228_i2_3_lut.init = 16'hcaca;
    FD1P3JX Length_4__656 (.D(Length_4__N_375), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(\Length[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_4__656.GSR = "ENABLED";
    LUT4 mux_253_i2_4_lut (.A(n3181), .B(Length[9]), .C(A_out_3), .D(n3439), 
         .Z(n560)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_253_i2_4_lut.init = 16'hfaca;
    FD1P3JX Length_5__655 (.D(Length_5__N_370), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_5__655.GSR = "ENABLED";
    FD1P3JX Length_6__654 (.D(Length_6__N_365), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_6__654.GSR = "ENABLED";
    LUT4 i1878_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n574[1])) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1878_2_lut.init = 16'h8888;
    FD1P3JX Length_7__653 (.D(Length_7__N_358), .SP(PHI2_N_558_enable_83), 
            .PD(n3440), .CK(PHI2_N_558), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_7__653.GSR = "ENABLED";
    FD1P3IX REUA_19__641 (.D(REUAOut_19__N_38), .SP(PHI2_N_558_enable_88), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_19__641.GSR = "ENABLED";
    FD1P3IX REUA_20__640 (.D(REUAOut_20__N_35), .SP(PHI2_N_558_enable_88), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_20__640.GSR = "ENABLED";
    FD1P3IX REUA_21__639 (.D(REUAOut_21__N_32), .SP(PHI2_N_558_enable_88), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_21__639.GSR = "ENABLED";
    FD1P3AX Execute_569 (.D(n3014), .SP(PHI2_N_558_enable_87), .CK(PHI2_N_558), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(107[8] 124[4])
    defparam Execute_569.GSR = "ENABLED";
    LUT4 i2_2_lut_adj_141 (.A(REUA[14]), .B(REUA[9]), .Z(n10_adj_610)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_141.init = 16'h8888;
    FD1P3IX REUA_23__637 (.D(REUAOut_23__N_24), .SP(PHI2_N_558_enable_88), 
            .CD(n3440), .CK(PHI2_N_558), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_23__637.GSR = "ENABLED";
    LUT4 Length_3__I_104_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_3), 
         .D(n1016[3]), .Z(Length_3__N_380)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_3__I_104_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_rep_38_4_lut (.A(n3430), .B(A_out_3), .C(n2244), .D(n3439), 
         .Z(n3417)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_38_4_lut.init = 16'h0004;
    LUT4 i1916_2_lut_rep_42_4_lut (.A(n3428), .B(A_out_1), .C(A_out_0), 
         .D(n3430), .Z(n3421)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(74[2:14])
    defparam i1916_2_lut_rep_42_4_lut.init = 16'hffef;
    LUT4 mux_228_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n464[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_228_i1_3_lut.init = 16'hcaca;
    LUT4 Length_4__I_102_3_lut_4_lut (.A(A_out_1), .B(n3419), .C(D_out_4), 
         .D(n1016[4]), .Z(Length_4__N_375)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_4__I_102_3_lut_4_lut.init = 16'hf780;
    LUT4 i1858_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n574[0])) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1858_2_lut.init = 16'h8888;
    PFUMX mux_253_i3 (.BLUT(n543[2]), .ALUT(n533[2]), .C0(A_out_3), .Z(n559));
    LUT4 i939_4_lut (.A(n3439), .B(n3440), .C(n3428), .D(RegRD), .Z(n1293)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(83[8] 104[4])
    defparam i939_4_lut.init = 16'hcdcc;
    LUT4 mux_236_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n488[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_236_i1_3_lut.init = 16'hcaca;
    LUT4 mux_253_i1_4_lut (.A(n3207), .B(Length[8]), .C(A_out_3), .D(n3439), 
         .Z(n561)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_253_i1_4_lut.init = 16'hfaca;
    LUT4 mux_232_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n476[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_232_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_48_4_lut (.A(A_out_2), .B(n3434), .C(A_out_0), .D(A_out_1), 
         .Z(n3427)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i2_3_lut_rep_48_4_lut.init = 16'hffef;
    LUT4 i2844_3_lut (.A(REUA[18]), .B(Length[2]), .C(A_out_0), .Z(n3203)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2844_3_lut.init = 16'hcaca;
    LUT4 i2913_2_lut (.A(A_out_3), .B(A_out_1), .Z(n3174)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i2913_2_lut.init = 16'hdddd;
    LUT4 mux_205_i3_4_lut (.A(REUA[18]), .B(REUAWritten[18]), .C(PHI2_N_558_enable_20), 
         .D(n1028), .Z(n425[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(196[18:37])
    defparam mux_205_i3_4_lut.init = 16'hc5ca;
    LUT4 i1936_4_lut (.A(A_out_4), .B(A_out_3), .C(n2209), .D(A_out_2), 
         .Z(n2211)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1936_4_lut.init = 16'heeea;
    LUT4 i1862_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2209)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1862_2_lut.init = 16'h8888;
    LUT4 i2843_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n3202)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2843_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_142 (.A(n9_adj_611), .B(REUAOut_15__N_62), .C(n14_adj_609), 
         .D(n10_adj_610), .Z(REUAOut_18__N_45)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_142.init = 16'h8000;
    LUT4 i9_4_lut (.A(n17_adj_612), .B(REUA[0]), .C(n16), .D(REUA[4]), 
         .Z(REUAOut_15__N_62)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    L6MUX21 i2839 (.D0(n3196), .D1(n3197), .SD(A_out_2), .Z(n3198));
    LUT4 i7_4_lut_adj_143 (.A(NextREUA_N_584), .B(REUA[5]), .C(REUA[7]), 
         .D(n3431), .Z(n17_adj_612)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_143.init = 16'h8000;
    LUT4 i2_4_lut (.A(n3411), .B(n3051), .C(n3417), .D(NextCA), .Z(PHI2_N_558_enable_75)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 mux_212_i8_3_lut (.A(CAOut_15__N_147[7]), .B(D_out_7), .C(n3415), 
         .Z(n432[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/reg.v(150[15:31])
    defparam mux_212_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_144 (.A(REUA[10]), .B(REUA[11]), .Z(n9_adj_611)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_144.init = 16'h8888;
    LUT4 i2841_3_lut (.A(REUA[19]), .B(Length[3]), .C(A_out_0), .Z(n3200)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2841_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (n3420, n3418, AOE, BA_c, RAMWR, PHI2_N_558, n3438, 
            n3443, nWEDMA_c, RAMRD, nRESET_c, n3440, D_out_0, n1325, 
            D_out_7, n1305, D_out_5, n1301, D_out_3, n1280, D_out_4, 
            n1284, D_out_2, n1270, D_out_1, n1259, D_out_6, n1303, 
            XferType, n3441, n3431, n1390, NextCA, NextREUA_N_584, 
            NextREUA, Execute, nWEDMA_N_9, n3435, n3428, n3430, 
            PHI2_N_558_enable_46, A_out_0, n3424, A_out_1, PHI2_N_558_enable_55) /* synthesis syn_module_defined=1 */ ;
    output n3420;
    output n3418;
    output AOE;
    input BA_c;
    output RAMWR;
    input PHI2_N_558;
    output n3438;
    input n3443;
    output nWEDMA_c;
    output RAMRD;
    input nRESET_c;
    output n3440;
    input D_out_0;
    output n1325;
    input D_out_7;
    output n1305;
    input D_out_5;
    output n1301;
    input D_out_3;
    output n1280;
    input D_out_4;
    output n1284;
    input D_out_2;
    output n1270;
    input D_out_1;
    output n1259;
    input D_out_6;
    output n1303;
    input [1:0]XferType;
    output n3441;
    output n3431;
    input n1390;
    output NextCA;
    output NextREUA_N_584;
    output NextREUA;
    input Execute;
    input nWEDMA_N_9;
    input n3435;
    input n3428;
    input n3430;
    output PHI2_N_558_enable_46;
    input A_out_0;
    input n3424;
    input A_out_1;
    output PHI2_N_558_enable_55;
    
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire n1616, SwapState, SwapState_N_562;
    wire [5:0]n340;
    
    wire DMARW_N_575, RAMRD_N_554, DMAr, nRESETr, PHI2_N_558_enable_67;
    
    LUT4 i1260_2_lut_3_lut_4_lut (.A(n3420), .B(n3418), .C(AOE), .D(BA_c), 
         .Z(n1616)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i1260_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 SwapState_I_0_1_lut (.A(SwapState), .Z(SwapState_N_562)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(47[15] 51[9])
    defparam SwapState_I_0_1_lut.init = 16'h5555;
    FD1S3IX RAMWR_66 (.D(n340[2]), .CK(PHI2_N_558), .CD(n3438), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam RAMWR_66.GSR = "ENABLED";
    FD1S3IX SwapState_67 (.D(SwapState_N_562), .CK(PHI2_N_558), .CD(n3443), 
            .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(83[9] 87[5])
    defparam SwapState_67.GSR = "ENABLED";
    FD1S3AX DMARW_64 (.D(DMARW_N_575), .CK(PHI2_N_558), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam DMARW_64.GSR = "ENABLED";
    FD1S3AX RAMRD_65 (.D(RAMRD_N_554), .CK(PHI2_N_558), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam RAMRD_65.GSR = "ENABLED";
    FD1S3AX DMAr_68 (.D(AOE), .CK(PHI2_N_558), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(90[9:37])
    defparam DMAr_68.GSR = "ENABLED";
    FD1S3AX nRESETr_69 (.D(nRESET_c), .CK(PHI2_N_558), .Q(nRESETr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(93[9:43])
    defparam nRESETr_69.GSR = "ENABLED";
    LUT4 AOE_I_0_32_1_lut_rep_59 (.A(AOE), .Z(n3438)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(36[16:20])
    defparam AOE_I_0_32_1_lut_rep_59.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(AOE), .B(BA_c), .C(n3418), .D(n3420), 
         .Z(PHI2_N_558_enable_67)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(36[16:20])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hddd5;
    LUT4 i2894_2_lut_rep_61 (.A(nRESETr), .B(AOE), .Z(n3440)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2894_2_lut_rep_61.init = 16'h1111;
    LUT4 i1905_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_0), .Z(n1325)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1905_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1903_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_7), .Z(n1305)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1903_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1901_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_5), .Z(n1301)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1901_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1899_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_3), .Z(n1280)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1899_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1900_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_4), .Z(n1284)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1900_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1894_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_2), .Z(n1270)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1894_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1893_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_1), .Z(n1259)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1893_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1902_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_6), .Z(n1303)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1902_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_rep_62 (.A(XferType[0]), .B(SwapState), .Z(n3441)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i1_2_lut_rep_62.init = 16'heeee;
    LUT4 i1_2_lut_rep_52_3_lut (.A(XferType[0]), .B(SwapState), .C(XferType[1]), 
         .Z(n3431)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i1_2_lut_rep_52_3_lut.init = 16'hefef;
    LUT4 i1123_3_lut_4_lut_4_lut_4_lut (.A(XferType[0]), .B(SwapState), 
         .C(XferType[1]), .D(AOE), .Z(DMARW_N_575)) /* synthesis lut_function=(A (C)+!A (B+!(C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i1123_3_lut_4_lut_4_lut_4_lut.init = 16'he5f5;
    LUT4 i1_2_lut_rep_39_3_lut_4_lut (.A(XferType[0]), .B(SwapState), .C(n1390), 
         .D(XferType[1]), .Z(n3418)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i1_2_lut_rep_39_3_lut_4_lut.init = 16'h0e0f;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(XferType[0]), .B(SwapState), .C(XferType[1]), 
         .D(n3443), .Z(NextCA)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h00ef;
    LUT4 NextREUA_I_0_2_lut_3_lut_4_lut (.A(XferType[0]), .B(SwapState), 
         .C(NextREUA_N_584), .D(XferType[1]), .Z(NextREUA)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam NextREUA_I_0_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i960_3_lut_4_lut_4_lut_4_lut (.A(XferType[0]), .B(SwapState), .C(XferType[1]), 
         .D(AOE), .Z(RAMRD_N_554)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i960_3_lut_4_lut_4_lut_4_lut.init = 16'heafa;
    FD1P3IX DMA_63 (.D(Execute), .SP(PHI2_N_558_enable_67), .CD(n1616), 
            .CK(PHI2_N_558), .Q(AOE)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam DMA_63.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_41 (.A(XferType[1]), .B(nWEDMA_N_9), .C(XferType[0]), 
         .Z(n3420)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_rep_41.init = 16'h2020;
    LUT4 SwapState_N_564_I_0_82_4_lut (.A(DMAr), .B(n3443), .C(XferType[0]), 
         .D(XferType[1]), .Z(NextREUA_N_584)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B+!(C+(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(99[20:65])
    defparam SwapState_N_564_I_0_82_4_lut.init = 16'h333a;
    LUT4 i2882_3_lut (.A(XferType[1]), .B(XferType[0]), .C(SwapState), 
         .Z(n340[2])) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;
    defparam i2882_3_lut.init = 16'h1313;
    LUT4 i911_2_lut_3_lut_4_lut_4_lut (.A(n3440), .B(n3435), .C(n3428), 
         .D(n3430), .Z(PHI2_N_558_enable_46)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i911_2_lut_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i961_2_lut_4_lut_4_lut (.A(n3440), .B(A_out_0), .C(n3424), .D(A_out_1), 
         .Z(PHI2_N_558_enable_55)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i961_2_lut_4_lut_4_lut.init = 16'h0400;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (RDCMDr, C8M_N_498, RAMWR, PHI2Start_N_550, C8M_c, RBA_c_0, 
            n244, \REUA[22] , RA_0_11, n3133, RA_0_9, INITCMDr, 
            n3656, WRCMDr, nRESET_c, RAMRD, \REUA[18] , \REUA[9] , 
            RDOE_N_553, PHI2_c, RA_0_8, RAMRDD, RDD_7__N_507, RD_out_0, 
            nRAS_c, nCAS_c, nRWE_c, nRWE_N_525, CKE_c, DQMH_c, \REUA[0] , 
            DQML_c, A_0__N_539, WRDr, PHI2_N_558, D_out_0, RA_0_7, 
            RA_0_6, RA_0_5, RA_0_4, RA_0_3, RA_0_2, RA_0_1, n3445, 
            RBA_c_1, \REUA[23] , \REUA[20] , nCS_c, nCS_N_509, RA_0_0, 
            n12, RA_0_10, RD_out_1, RD_out_2, RD_out_3, RD_out_4, 
            RD_out_5, RD_out_6, RD_out_7, D_out_1, D_out_2, D_out_3, 
            D_out_4, D_out_5, D_out_6, D_out_7, \REUA[17] , \REUA[8] , 
            \REUA[16] , \REUA[7] , \REUA[15] , \REUA[6] , \REUA[14] , 
            \REUA[5] , \REUA[13] , \REUA[4] , \REUA[12] , \REUA[3] , 
            \REUA[11] , \REUA[2] , \REUA[19] , \REUA[10] , \REUA[1] , 
            n1207, RCLK_c) /* synthesis syn_module_defined=1 */ ;
    output RDCMDr;
    input C8M_N_498;
    input RAMWR;
    output PHI2Start_N_550;
    input C8M_c;
    output RBA_c_0;
    output n244;
    input \REUA[22] ;
    output RA_0_11;
    input n3133;
    output RA_0_9;
    output INITCMDr;
    input n3656;
    output WRCMDr;
    input nRESET_c;
    input RAMRD;
    input \REUA[18] ;
    input \REUA[9] ;
    output RDOE_N_553;
    input PHI2_c;
    output RA_0_8;
    output [7:0]RAMRDD;
    output RDD_7__N_507;
    input RD_out_0;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    input nRWE_N_525;
    output CKE_c;
    output DQMH_c;
    input \REUA[0] ;
    output DQML_c;
    input A_0__N_539;
    output [7:0]WRDr;
    input PHI2_N_558;
    input D_out_0;
    output RA_0_7;
    output RA_0_6;
    output RA_0_5;
    output RA_0_4;
    output RA_0_3;
    output RA_0_2;
    output RA_0_1;
    input n3445;
    output RBA_c_1;
    input \REUA[23] ;
    input \REUA[20] ;
    output nCS_c;
    input nCS_N_509;
    output RA_0_0;
    output n12;
    output RA_0_10;
    input RD_out_1;
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
    input \REUA[17] ;
    input \REUA[8] ;
    input \REUA[16] ;
    input \REUA[7] ;
    input \REUA[15] ;
    input \REUA[6] ;
    input \REUA[14] ;
    input \REUA[5] ;
    input \REUA[13] ;
    input \REUA[4] ;
    input \REUA[12] ;
    input \REUA[3] ;
    input \REUA[11] ;
    input \REUA[2] ;
    input \REUA[19] ;
    input \REUA[10] ;
    input \REUA[1] ;
    output n1207;
    output RCLK_c;
    
    wire C8M_N_498 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(41[12:17])
    wire C8M_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire C8M_N_498_enable_4, n3, C8M_c_enable_19;
    wire [7:0]n240;
    
    wire C8M_c_enable_20, C8M_c_enable_21, n1618;
    wire [11:0]n613;
    
    wire InitDone_N_530, PLLLock, PLLLock_N_545, InitDone, WRCMDr_N_514;
    wire [4:0]nRESETr;   // //mac/icloud/repos/gw4302/cpld/ram.v(34[12:19])
    
    wire CP1, CP1_N_541, CP2;
    wire [1:0]PHI2r;   // //mac/icloud/repos/gw4302/cpld/ram.v(41[12:17])
    
    wire n1615, nRAS_N_521, nCAS_N_523, CKE_N_534, n3444, RDOE, 
        n3437, C8M_c_enable_22, n3446, n3442, C8M_c_enable_13;
    wire [11:0]n641;
    
    wire n6;
    
    FD1P3IX RDCMDr_120 (.D(RAMWR), .SP(C8M_N_498_enable_4), .CD(n3), .CK(C8M_N_498), 
            .Q(RDCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[9] 74[5])
    defparam RDCMDr_120.GSR = "ENABLED";
    FD1P3IX S_FSM_i1 (.D(n240[7]), .SP(C8M_c_enable_19), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(PHI2Start_N_550));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i1.GSR = "ENABLED";
    FD1P3IX RBA__i1 (.D(\REUA[22] ), .SP(C8M_c_enable_20), .CD(n244), 
            .CK(C8M_c), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RBA__i1.GSR = "ENABLED";
    FD1P3AX RA__i12 (.D(n3133), .SP(C8M_c_enable_21), .CK(C8M_c), .Q(RA_0_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i12.GSR = "ENABLED";
    FD1P3JX RA__i10 (.D(n613[9]), .SP(C8M_c_enable_21), .PD(n1618), .CK(C8M_c), 
            .Q(RA_0_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i10.GSR = "ENABLED";
    FD1P3AX INITCMDr_119 (.D(InitDone_N_530), .SP(C8M_N_498_enable_4), .CK(C8M_N_498), 
            .Q(INITCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[9] 74[5])
    defparam INITCMDr_119.GSR = "ENABLED";
    FD1P3AX PLLLock_117 (.D(n3656), .SP(PLLLock_N_545), .CK(C8M_N_498), 
            .Q(PLLLock)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(48[9] 52[5])
    defparam PLLLock_117.GSR = "ENABLED";
    FD1P3AX InitDone_122 (.D(n3656), .SP(C8M_N_498_enable_4), .CK(C8M_N_498), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[9] 74[5])
    defparam InitDone_122.GSR = "ENABLED";
    FD1P3AX WRCMDr_121 (.D(WRCMDr_N_514), .SP(C8M_N_498_enable_4), .CK(C8M_N_498), 
            .Q(WRCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[9] 74[5])
    defparam WRCMDr_121.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i0.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(InitDone), .B(RAMWR), .C(RAMRD), .Z(WRCMDr_N_514)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(67[9] 74[5])
    defparam i1_3_lut.init = 16'h2020;
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_541)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[37:41])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    LUT4 mux_270_i9_3_lut (.A(\REUA[18] ), .B(\REUA[9] ), .C(RDOE_N_553), 
         .Z(n613[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i9_3_lut.init = 16'hcaca;
    FD1S3AX CP2_113 (.D(CP1_N_541), .CK(C8M_N_498), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(30[9:46])
    defparam CP2_113.GSR = "ENABLED";
    FD1S3AX PHI2r_0__115 (.D(PHI2_c), .CK(C8M_N_498), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[9:51])
    defparam PHI2r_0__115.GSR = "ENABLED";
    FD1S3AX PHI2r_1__116 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(44[9:55])
    defparam PHI2r_1__116.GSR = "ENABLED";
    FD1P3IX RA__i9 (.D(n613[8]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i9.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1S3JX nRAS_124 (.D(nRAS_N_521), .CK(C8M_c), .PD(n1615), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nRAS_124.GSR = "ENABLED";
    FD1S3JX nCAS_125 (.D(nCAS_N_523), .CK(C8M_c), .PD(n1615), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nCAS_125.GSR = "ENABLED";
    FD1S3JX nRWE_126 (.D(nRWE_N_525), .CK(C8M_c), .PD(n1615), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nRWE_126.GSR = "ENABLED";
    FD1S3JX CKE_127 (.D(CKE_N_534), .CK(C8M_c), .PD(n1615), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(77[9] 165[5])
    defparam CKE_127.GSR = "ENABLED";
    FD1S3JX DQMH_128 (.D(\REUA[0] ), .CK(C8M_c), .PD(n3444), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam DQMH_128.GSR = "ENABLED";
    FD1S3JX DQML_129 (.D(A_0__N_539), .CK(C8M_c), .PD(n3444), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam DQML_129.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_558), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3AX RDOE_134 (.D(RDOE_N_553), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(222[9:37])
    defparam RDOE_134.GSR = "ENABLED";
    FD1S3AX CP1_112 (.D(CP1_N_541), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(29[9:46])
    defparam CP1_112.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_58 (.A(PHI2r[0]), .B(PHI2r[1]), .Z(n3437)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[9:51])
    defparam i1_2_lut_rep_58.init = 16'h4444;
    LUT4 i2_3_lut_rep_50_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(PLLLock), 
         .D(PHI2Start_N_550), .Z(C8M_N_498_enable_4)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[9:51])
    defparam i2_3_lut_rep_50_4_lut.init = 16'h4000;
    FD1P3IX RA__i8 (.D(n613[7]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i8.GSR = "ENABLED";
    FD1P3IX RA__i7 (.D(n613[6]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i7.GSR = "ENABLED";
    FD1P3JX RA__i6 (.D(n613[5]), .SP(C8M_c_enable_21), .PD(n1618), .CK(C8M_c), 
            .Q(RA_0_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i6.GSR = "ENABLED";
    FD1P3IX RA__i5 (.D(n613[4]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i5.GSR = "ENABLED";
    FD1P3IX RA__i4 (.D(n613[3]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i4.GSR = "ENABLED";
    FD1P3IX RA__i3 (.D(n613[2]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i3.GSR = "ENABLED";
    FD1P3IX RA__i2 (.D(n613[1]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i2.GSR = "ENABLED";
    LUT4 i2920_3_lut_4_lut (.A(n240[5]), .B(n240[6]), .C(n240[2]), .D(n240[7]), 
         .Z(C8M_c_enable_22)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2920_3_lut_4_lut.init = 16'h0001;
    LUT4 i22_3_lut_4_lut (.A(n240[5]), .B(n240[6]), .C(n3445), .D(n3446), 
         .Z(CKE_N_534)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i22_3_lut_4_lut.init = 16'hf101;
    LUT4 i1259_1_lut (.A(PLLLock), .Z(n1615)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(48[9] 52[5])
    defparam i1259_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_63 (.A(RDD_7__N_507), .B(n244), .Z(n3442)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_63.init = 16'heeee;
    LUT4 i2_3_lut_rep_47_4_lut (.A(RDD_7__N_507), .B(n244), .C(C8M_c_enable_22), 
         .D(RDOE_N_553), .Z(C8M_c_enable_19)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_47_4_lut.init = 16'hffef;
    FD1P3JX S_FSM_i2 (.D(PHI2Start_N_550), .SP(C8M_c_enable_13), .PD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(RDOE_N_553));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i2.GSR = "ENABLED";
    FD1P3IX S_FSM_i3 (.D(RDOE_N_553), .SP(C8M_c_enable_19), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n240[2]));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1P3IX S_FSM_i4 (.D(n240[2]), .SP(C8M_c_enable_19), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(RDD_7__N_507));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i4.GSR = "ENABLED";
    FD1P3IX S_FSM_i5 (.D(RDD_7__N_507), .SP(C8M_c_enable_19), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n244));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i5.GSR = "ENABLED";
    FD1P3IX S_FSM_i6 (.D(n244), .SP(C8M_c_enable_19), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n240[5]));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i6.GSR = "ENABLED";
    FD1P3IX S_FSM_i7 (.D(n240[5]), .SP(C8M_c_enable_19), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n240[6]));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i7.GSR = "ENABLED";
    FD1P3IX S_FSM_i8 (.D(n240[6]), .SP(C8M_c_enable_19), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n240[7]));   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i8.GSR = "ENABLED";
    FD1P3IX RBA__i2 (.D(\REUA[23] ), .SP(C8M_c_enable_20), .CD(n244), 
            .CK(C8M_c), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RBA__i2.GSR = "ENABLED";
    LUT4 i2916_3_lut_4_lut (.A(RDD_7__N_507), .B(n244), .C(n3446), .D(PHI2Start_N_550), 
         .Z(nRAS_N_521)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i2916_3_lut_4_lut.init = 16'h0111;
    LUT4 i895_1_lut_rep_65 (.A(RDOE_N_553), .Z(n3444)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam i895_1_lut_rep_65.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(RDOE_N_553), .B(\REUA[20] ), .C(RDD_7__N_507), 
         .D(n244), .Z(n641[10])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam i1_4_lut_4_lut.init = 16'h00f4;
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_67 (.A(RDCMDr), .B(WRCMDr), .Z(n3446)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_67.init = 16'heeee;
    FD1S3JX nCS_123 (.D(nCS_N_509), .CK(C8M_c), .PD(n1615), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nCS_123.GSR = "ENABLED";
    FD1P3IX RA__i1 (.D(n613[0]), .SP(C8M_c_enable_21), .CD(n1618), .CK(C8M_c), 
            .Q(RA_0_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(RDCMDr), .B(WRCMDr), .C(PHI2Start_N_550), 
         .D(RDOE_N_553), .Z(n12)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1110;
    FD1P3AX RA__i11 (.D(n641[10]), .SP(C8M_c_enable_22), .CK(C8M_c), .Q(RA_0_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i11.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_558), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_558), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_558), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_558), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_558), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_558), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_558), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 i2923_3_lut_4_lut (.A(RDCMDr), .B(WRCMDr), .C(RDOE_N_553), .D(n244), 
         .Z(nCAS_N_523)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i2923_3_lut_4_lut.init = 16'h001f;
    LUT4 mux_270_i8_3_lut (.A(\REUA[17] ), .B(\REUA[8] ), .C(RDOE_N_553), 
         .Z(n613[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i8_3_lut.init = 16'hcaca;
    LUT4 mux_270_i7_3_lut (.A(\REUA[16] ), .B(\REUA[7] ), .C(RDOE_N_553), 
         .Z(n613[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i7_3_lut.init = 16'hcaca;
    LUT4 mux_270_i6_3_lut (.A(\REUA[15] ), .B(\REUA[6] ), .C(RDOE_N_553), 
         .Z(n613[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i6_3_lut.init = 16'hcaca;
    LUT4 mux_270_i5_3_lut (.A(\REUA[14] ), .B(\REUA[5] ), .C(RDOE_N_553), 
         .Z(n613[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i5_3_lut.init = 16'hcaca;
    LUT4 mux_270_i4_3_lut (.A(\REUA[13] ), .B(\REUA[4] ), .C(RDOE_N_553), 
         .Z(n613[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i4_3_lut.init = 16'hcaca;
    LUT4 mux_270_i3_3_lut (.A(\REUA[12] ), .B(\REUA[3] ), .C(RDOE_N_553), 
         .Z(n613[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i3_3_lut.init = 16'hcaca;
    LUT4 mux_270_i2_3_lut (.A(\REUA[11] ), .B(\REUA[2] ), .C(RDOE_N_553), 
         .Z(n613[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i2_3_lut.init = 16'hcaca;
    LUT4 i1881_2_lut (.A(\REUA[19] ), .B(RDOE_N_553), .Z(n613[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam i1881_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_rep_44 (.A(RDD_7__N_507), .B(C8M_c_enable_22), .C(n244), 
         .Z(C8M_c_enable_21)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i1_3_lut_rep_44.init = 16'hc4c4;
    LUT4 i1258_2_lut_2_lut (.A(C8M_c_enable_22), .B(n244), .Z(n1618)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1258_2_lut_2_lut.init = 16'h8888;
    LUT4 mux_270_i1_3_lut (.A(\REUA[10] ), .B(\REUA[1] ), .C(RDOE_N_553), 
         .Z(n613[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_270_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut (.A(n3442), .B(RDOE_N_553), .C(C8M_c_enable_22), 
         .D(C8M_N_498_enable_4), .Z(C8M_c_enable_13)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam i1_2_lut_4_lut.init = 16'hffef;
    LUT4 InitDone_I_0_1_lut (.A(InitDone), .Z(InitDone_N_530)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(69[16:25])
    defparam InitDone_I_0_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(nRESETr[3]), .B(n3437), .C(nRESETr[4]), .D(n6), 
         .Z(PLLLock_N_545)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[9:51])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(nRESETr[2]), .B(nRESETr[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[9:51])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i863_1_lut (.A(RDOE), .Z(n1207)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(223[9:11])
    defparam i863_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_adj_130 (.A(n3437), .B(PHI2Start_N_550), .C(PLLLock), 
         .D(InitDone), .Z(n3)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(43[9:51])
    defparam i1_2_lut_4_lut_adj_130.init = 16'h0080;
    LUT4 i1_2_lut_adj_131 (.A(n244), .B(PHI2Start_N_550), .Z(C8M_c_enable_20)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(59[23:26])
    defparam i1_2_lut_adj_131.init = 16'heeee;
    LUT4 CP1_I_0_150_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld/ram.v(31[16:25])
    defparam CP1_I_0_150_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (nWE_c, A_out_2, n3434, n3422, n2244, A_out_3, n3425, 
            n3443, n3440, n1390, n3431, n3411, Length_15__N_317, 
            LengthWritten, n3418, n1017, n3441, XferType, PHI2_N_558_enable_20, 
            \CA[8] , \CAWritten[8] , n2934, \REUA[8] , \REUAWritten[8] , 
            n2951, n3416, PHI2_N_558_enable_88, \REUA[0] , \REUAWritten[0] , 
            n2968, Length_7__N_361, n1016, \CA[0] , \CAWritten[0] , 
            n2917, nWEDMA_N_9, n3414, n3424, AOE, nIO2_c, n3430, 
            RegRD, n3427, D_out_7, nFF00Decode, Execute, BA_c, n3420, 
            PHI2_N_558_enable_22, VerifyErrMask, n4, A_out_11, A_out_10, 
            A_out_13, A_out_8, n6, A_out_1, n7, A_out_4, n8, A_out_12, 
            A_out_9, A_out_14, A_out_15, PHI2_N_558_enable_24, nAOE_N_590, 
            nWEDMA_c, nDOE_N_595, DOE, PHI2_N_558_enable_66, IntEnable, 
            EndOfBlock, EndOfBlockMask, IRQ) /* synthesis syn_module_defined=1 */ ;
    input nWE_c;
    input A_out_2;
    input n3434;
    output n3422;
    output n2244;
    input A_out_3;
    output n3425;
    output n3443;
    input n3440;
    input n1390;
    input n3431;
    output n3411;
    input [7:0]Length_15__N_317;
    input [15:0]LengthWritten;
    input n3418;
    output [7:0]n1017;
    input n3441;
    input [1:0]XferType;
    output PHI2_N_558_enable_20;
    input \CA[8] ;
    input \CAWritten[8] ;
    output n2934;
    input \REUA[8] ;
    input \REUAWritten[8] ;
    output n2951;
    input n3416;
    output PHI2_N_558_enable_88;
    input \REUA[0] ;
    input \REUAWritten[0] ;
    output n2968;
    input [7:0]Length_7__N_361;
    output [7:0]n1016;
    input \CA[0] ;
    input \CAWritten[0] ;
    output n2917;
    input nWEDMA_N_9;
    output n3414;
    output n3424;
    input AOE;
    input nIO2_c;
    output n3430;
    output RegRD;
    input n3427;
    input D_out_7;
    input nFF00Decode;
    output Execute;
    input BA_c;
    input n3420;
    output PHI2_N_558_enable_22;
    input VerifyErrMask;
    input n4;
    input A_out_11;
    input A_out_10;
    input A_out_13;
    input A_out_8;
    input n6;
    input A_out_1;
    input n7;
    input A_out_4;
    input n8;
    input A_out_12;
    input A_out_9;
    input A_out_14;
    input A_out_15;
    output PHI2_N_558_enable_24;
    output nAOE_N_590;
    input nWEDMA_c;
    output nDOE_N_595;
    output DOE;
    output PHI2_N_558_enable_66;
    input IntEnable;
    input EndOfBlock;
    input EndOfBlockMask;
    output IRQ;
    
    
    wire n3433, Execute_N_602, Execute_N_605, IRQOut_N_448, n15, n3167, 
        n16, n3163, n10;
    
    LUT4 i2_3_lut_rep_43_4_lut (.A(n3433), .B(nWE_c), .C(A_out_2), .D(n3434), 
         .Z(n3422)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_43_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_rep_46_4_lut (.A(n3433), .B(nWE_c), .C(n2244), .D(A_out_3), 
         .Z(n3425)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_46_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_32_3_lut_4_lut_4_lut (.A(n3443), .B(n3440), .C(n1390), 
         .D(n3431), .Z(n3411)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_rep_32_3_lut_4_lut_4_lut.init = 16'hcdcc;
    LUT4 mux_693_i7_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[6]), 
         .C(LengthWritten[14]), .D(n3418), .Z(n1017[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_rep_33_3_lut_4_lut_4_lut (.A(n3443), .B(n1390), .C(n3441), 
         .D(XferType[1]), .Z(PHI2_N_558_enable_20)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_rep_33_3_lut_4_lut_4_lut.init = 16'h1011;
    LUT4 i2608_3_lut_4_lut_4_lut (.A(n3443), .B(\CA[8] ), .C(\CAWritten[8] ), 
         .D(n3418), .Z(n2934)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i2608_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2625_3_lut_4_lut_4_lut (.A(n3443), .B(\REUA[8] ), .C(\REUAWritten[8] ), 
         .D(n3418), .Z(n2951)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i2625_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n3443), .B(n3440), .C(n3416), 
         .D(n3418), .Z(PHI2_N_558_enable_88)) /* synthesis lut_function=(A (B+!(C))+!A (B+((D)+!C))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hdfcf;
    LUT4 i2642_3_lut_4_lut_4_lut (.A(n3443), .B(\REUA[0] ), .C(\REUAWritten[0] ), 
         .D(n3418), .Z(n2968)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i2642_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i1_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[0]), 
         .C(LengthWritten[0]), .D(n3418), .Z(n1016[0])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i1_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i7_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[6]), 
         .C(LengthWritten[6]), .D(n3418), .Z(n1016[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i5_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[4]), 
         .C(LengthWritten[4]), .D(n3418), .Z(n1016[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2591_3_lut_4_lut_4_lut (.A(n3443), .B(\CA[0] ), .C(\CAWritten[0] ), 
         .D(n3418), .Z(n2917)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i2591_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_693_i1_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[0]), 
         .C(LengthWritten[8]), .D(n3418), .Z(n1017[0])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i1_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_693_i3_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[2]), 
         .C(LengthWritten[10]), .D(n3418), .Z(n1017[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_693_i6_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[5]), 
         .C(LengthWritten[13]), .D(n3418), .Z(n1017[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i3_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[2]), 
         .C(LengthWritten[2]), .D(n3418), .Z(n1016[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i4_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[3]), 
         .C(LengthWritten[3]), .D(n3418), .Z(n1016[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i6_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[5]), 
         .C(LengthWritten[5]), .D(n3418), .Z(n1016[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i8_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[7]), 
         .C(LengthWritten[7]), .D(n3418), .Z(n1016[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_693_i2_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[1]), 
         .C(LengthWritten[9]), .D(n3418), .Z(n1017[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_693_i4_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[3]), 
         .C(LengthWritten[11]), .D(n3418), .Z(n1017[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_693_i5_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[4]), 
         .C(LengthWritten[12]), .D(n3418), .Z(n1017[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_693_i8_3_lut_4_lut_4_lut (.A(n3443), .B(Length_15__N_317[7]), 
         .C(LengthWritten[15]), .D(n3418), .Z(n1017[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_693_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_692_i2_3_lut_4_lut_4_lut (.A(n3443), .B(Length_7__N_361[1]), 
         .C(LengthWritten[1]), .D(n3418), .Z(n1016[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam mux_692_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_rep_35_4_lut_4_lut (.A(n3443), .B(XferType[0]), .C(nWEDMA_N_9), 
         .D(XferType[1]), .Z(n3414)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_rep_35_4_lut_4_lut.init = 16'h0400;
    LUT4 i1895_2_lut_rep_45_3_lut_4_lut (.A(n3433), .B(nWE_c), .C(n3434), 
         .D(A_out_2), .Z(n3424)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1895_2_lut_rep_45_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1870_2_lut_rep_54 (.A(AOE), .B(nIO2_c), .Z(n3433)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1870_2_lut_rep_54.init = 16'heeee;
    LUT4 i1872_2_lut_rep_51_3_lut (.A(AOE), .B(nIO2_c), .C(nWE_c), .Z(n3430)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1872_2_lut_rep_51_3_lut.init = 16'hfefe;
    LUT4 RegCS_I_0_34_2_lut_3_lut (.A(AOE), .B(nIO2_c), .C(nWE_c), .Z(RegRD)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_34_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_4_lut (.A(AOE), .B(nIO2_c), .C(n3427), .D(D_out_7), 
         .Z(Execute_N_602)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    PFUMX Execute_I_0 (.BLUT(Execute_N_605), .ALUT(Execute_N_602), .C0(nFF00Decode), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=7, LSE_RCOL=15, LSE_LLINE=101, LSE_RLINE=118 */ ;
    LUT4 i2905_2_lut_rep_64 (.A(AOE), .B(BA_c), .Z(n3443)) /* synthesis lut_function=(!(A (B))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i2905_2_lut_rep_64.init = 16'h7777;
    LUT4 i909_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(AOE), .B(BA_c), .C(n3418), 
         .D(n3420), .Z(PHI2_N_558_enable_22)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i909_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 VerifyErr_I_0_2_lut_3_lut_3_lut_4_lut (.A(AOE), .B(BA_c), .C(n3420), 
         .D(VerifyErrMask), .Z(IRQOut_N_448)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam VerifyErr_I_0_2_lut_3_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(n15), .B(n3167), .C(n4), .D(n16), .Z(Execute_N_605)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h2000;
    LUT4 i6_4_lut (.A(A_out_11), .B(A_out_10), .C(A_out_13), .D(A_out_8), 
         .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i2808_4_lut (.A(n6), .B(n2244), .C(n3163), .D(A_out_1), .Z(n3167)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2808_4_lut.init = 16'hfffe;
    LUT4 i2804_2_lut (.A(n7), .B(A_out_3), .Z(n3163)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2804_2_lut.init = 16'heeee;
    LUT4 i1897_2_lut (.A(A_out_2), .B(A_out_4), .Z(n2244)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1897_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(n8), .B(A_out_12), .C(A_out_9), .D(n10), .Z(n16)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7_4_lut.init = 16'h4000;
    LUT4 i1_2_lut (.A(A_out_14), .B(A_out_15), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2801_2_lut_3_lut_4_lut_4_lut (.A(n3443), .B(n3420), .C(n1390), 
         .D(n3431), .Z(PHI2_N_558_enable_24)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(38[17:29])
    defparam i2801_2_lut_3_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 i2896_2_lut (.A(AOE), .B(BA_c), .Z(nAOE_N_590)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(37[16:29])
    defparam i2896_2_lut.init = 16'h2222;
    LUT4 RegRD_I_0_4_lut (.A(RegRD), .B(BA_c), .C(AOE), .D(nWEDMA_c), 
         .Z(nDOE_N_595)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (((D)+!C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(42[17:56])
    defparam RegRD_I_0_4_lut.init = 16'hf535;
    LUT4 nWE_I_0_35_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(AOE), .Z(DOE)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(40[15:33])
    defparam nWE_I_0_35_3_lut.init = 16'hc5c5;
    LUT4 i2876_2_lut_2_lut_3_lut_4_lut (.A(n3433), .B(nWE_c), .C(n3440), 
         .D(n3427), .Z(PHI2_N_558_enable_66)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i2876_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i2911_4_lut (.A(IntEnable), .B(EndOfBlock), .C(IRQOut_N_448), 
         .D(EndOfBlockMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld/glue.v(46[16:20])
    defparam i2911_4_lut.init = 16'h575f;
    
endmodule
