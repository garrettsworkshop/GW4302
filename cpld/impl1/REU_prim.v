// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Jan 18 16:15:07 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, nRESETOUT, BA, D, A, nWE, nWEDMA, 
            nDMA, nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, 
            nIRQ, RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, 
            DQMH, DQML, RD) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(5[8:14])
    output nRESETOUT;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(6[9:18])
    input BA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(9[8:10])
    inout [7:0]D;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(10[14:15])
    inout [15:0]A;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(11[15:16])
    input nWE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(12[8:11])
    output nWEDMA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(13[9:15])
    output nDMA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(14[9:13])
    input nIO1;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(15[8:12])
    input nIO2;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(16[8:12])
    output nAOE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(19[9:13])
    output ADIR;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(20[9:13])
    output nRWOE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(21[9:14])
    output nDOE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(22[9:13])
    output DDIR;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(23[9:13])
    output nIRQ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(26[9:13])
    output RCLK;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(29[9:13])
    output nCS;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[9:12])
    output nRAS;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(31[9:13])
    output nCAS;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(32[9:13])
    output nRWE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(33[9:13])
    output CKE;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(34[9:12])
    output [1:0]RBA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(35[15:18])
    output [12:0]RA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    output DQMH;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(37[9:13])
    output DQML;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(38[9:13])
    inout [7:0]RD;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(39[14:16])
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_498 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(41[12:17])
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire VCC_net, nRESET_c, BA_c, n1340, nWE_c, nWEDMA_c, nIO2_c, 
        RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, CKE_c, RBA_c_1, 
        RBA_c_0, n262, RA_c_11, RA_c_10, RA_c_9, RA_c_8, RA_c_7, 
        RA_c_6, RA_c_5, RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, 
        DQMH_c, DQML_c, n1312, n1310, n1308, IRQ, ExecuteEN;
    wire [1:0]XferType;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(43[13:21])
    wire [23:0]REUA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(44[14:18])
    wire [15:0]CA;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(45[14:16])
    wire [7:0]RAMRDD;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(50[13:19])
    
    wire RAMRD, RAMWR, NextCA, NextREUA, AOE, DOE, RegRD, Execute, 
        nWEDMA_N_9;
    wire [7:0]D_7__N_1;
    
    wire EndOfBlock, Fault, n633, n2995, Autoload, nFF00Decode;
    wire [15:0]CAWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(46[12:21])
    wire [23:0]REUAWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(51[12:23])
    wire [15:0]Length;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(55[12:18])
    wire [15:0]LengthWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(56[12:25])
    
    wire IntEnable, EndOfBlockMask, VerifyErrMask;
    wire [1:0]IncMode;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(65[11:18])
    
    wire n2986, n2017, n3217, n3443, PHI2_N_558_enable_69, n555, 
        n3007, C8M_c_enable_20, n2939, n3238, n494, n2832, n470, 
        n471, n3206, n3216, n3215, n567, n2720, n2013, PHI2_N_558_enable_74, 
        n2985, n3237, n2771, n2252, n586, n2737, n1420, n2997, 
        n2015, n663, n3236, n579, n2996, n12, n3285, n2704, 
        n3235;
    wire [8:0]Length_7__N_361;
    
    wire Length_7__N_359, Length_6__N_366, Length_5__N_371, Length_4__N_376, 
        Length_3__N_381, Length_2__N_386, Length_1__N_391, Length_0__N_396, 
        n3233, n2988, n2987;
    wire [8:0]Length_15__N_317;
    
    wire n3232, Length_15__N_315, Length_14__N_324, Length_13__N_329, 
        Length_12__N_334, Length_11__N_339, Length_10__N_344, Length_9__N_349, 
        Length_8__N_354, PHI2_N_558_enable_57, PHI2_N_558_enable_21, n3230, 
        GND_net, INITCMDr, RDCMDr, WRCMDr;
    wire [7:0]WRDr;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(217[12:16])
    
    wire n1338, PHI2Start_N_550, n3228, n2984, n2983, n3227, nCS_N_509, 
        nRWE_N_525, A_0__N_539, RDD_7__N_507, RDOE_N_553, n3226, n3225, 
        n2219, NextREUA_N_584, nAOE_N_590, C8M_N_498_enable_4, nDOE_N_595, 
        n620, PHI2_N_558_enable_18, n618, n2703, n638, n640, n3222, 
        n642, n645, C8M_c_enable_22, n3221, n2982, n3208, n3107, 
        n3106, n3105, PHI2_N_558_enable_19, n6, n7, n8, n3220, 
        n3104, n3103, n3102, n3101, n3218, n1294, D_out_7, D_out_6, 
        D_out_5, D_out_4, D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, 
        A_out_14, A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, 
        A_out_8, PHI2_N_558_enable_59, A_out_4, A_out_3, A_out_2, 
        A_out_1, A_out_0, RD_out_7, RD_out_6, RD_out_5, n1225, RD_out_4, 
        RD_out_3, RD_out_2, RD_out_1, RD_out_0, n1359, n1375, n2754, 
        n3241, n3240;
    
    VLO i1 (.Z(GND_net));
    INV i2895 (.A(PHI2_c), .Z(PHI2_N_558));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2703), .COUT(n2704));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    LUT4 A_out_2_bdd_3_lut (.A(nFF00Decode), .B(A_out_1), .C(CA[12]), 
         .Z(n3102)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam A_out_2_bdd_3_lut.init = 16'he2e2;
    PFUMX i2611 (.BLUT(n2984), .ALUT(n2985), .C0(A_out_1), .Z(n2987));
    LUT4 A_out_2_bdd_3_lut_2713 (.A(Length[4]), .B(A_out_1), .C(REUA[12]), 
         .Z(n3101)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut_2713.init = 16'hb8b8;
    LUT4 REUA_20__bdd_3_lut_2720 (.A(REUA[20]), .B(REUA[4]), .C(A_out_1), 
         .Z(n3104)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam REUA_20__bdd_3_lut_2720.init = 16'hacac;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2703));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(97[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i2607_3_lut (.A(CA[5]), .B(REUA[21]), .C(A_out_2), .Z(n2983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2607_3_lut.init = 16'hcaca;
    LUT4 i1409_4_lut (.A(n2832), .B(INITCMDr), .C(n262), .D(RDD_7__N_507), 
         .Z(nRWE_N_525)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam i1409_4_lut.init = 16'h303a;
    LUT4 i2_3_lut (.A(RDCMDr), .B(WRCMDr), .C(RDOE_N_553), .Z(n2832)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[6:10])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n642), .B(RAMRDD[3]), .C(AOE), .D(n2219), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    LUT4 i1624_3_lut (.A(REUA[14]), .B(REUA[5]), .C(RDOE_N_553), .Z(n470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[6:10])
    defparam i1624_3_lut.init = 16'hcaca;
    LUT4 REUA_20__bdd_2_lut_2721 (.A(CA[4]), .B(A_out_1), .Z(n3105)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam REUA_20__bdd_2_lut_2721.init = 16'hbbbb;
    LUT4 i2612_3_lut (.A(n2986), .B(n2987), .C(A_out_0), .Z(n2988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2612_3_lut.init = 16'hcaca;
    LUT4 i1625_3_lut (.A(REUA[13]), .B(REUA[4]), .C(RDOE_N_553), .Z(n471)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[6:10])
    defparam i1625_3_lut.init = 16'hcaca;
    PFUMX i2620 (.BLUT(n567), .ALUT(n579), .C0(A_out_1), .Z(n2996));
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n638), .B(RAMRDD[7]), .C(AOE), .D(n2219), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n2013), .B(RAMRDD[1]), .C(AOE), .D(n2939), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 i1647_3_lut (.A(n2997), .B(Length[9]), .C(A_out_3), .Z(n2013)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1647_3_lut.init = 16'hcaca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n645), .B(RAMRDD[0]), .C(AOE), .D(n2219), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    PFUMX i2610 (.BLUT(n2982), .ALUT(n2983), .C0(A_out_1), .Z(n2986));
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[9:10])
    LUT4 i3_1_lut_rep_63 (.A(RDOE_N_553), .Z(n3237)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam i3_1_lut_rep_63.init = 16'h5555;
    BB A_pad_15 (.I(CA[15]), .T(n3233), .B(A[15]), .O(A_out_15));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    LUT4 i1_4_lut_4_lut (.A(RDOE_N_553), .B(REUA[20]), .C(RDD_7__N_507), 
         .D(n262), .Z(n494)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam i1_4_lut_4_lut.init = 16'h00f4;
    BB A_pad_14 (.I(CA[14]), .T(n3233), .B(A[14]), .O(A_out_14));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3233), .B(A[13]), .O(A_out_13));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    LUT4 i1_2_lut_rep_64 (.A(RDOE_N_553), .B(PHI2Start_N_550), .Z(n3238)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(221[6:10])
    defparam i1_2_lut_rep_64.init = 16'heeee;
    BB A_pad_12 (.I(CA[12]), .T(n3233), .B(A[12]), .O(A_out_12));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3233), .B(A[11]), .O(A_out_11));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3233), .B(A[10]), .O(A_out_10));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3233), .B(A[9]), .O(A_out_9));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3233), .B(A[8]), .O(A_out_8));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3233), .B(A[7]), .O(n8));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3233), .B(A[6]), .O(n7));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3233), .B(A[5]), .O(n6));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3233), .B(A[4]), .O(A_out_4));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3233), .B(A[3]), .O(A_out_3));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3233), .B(A[2]), .O(A_out_2));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3233), .B(A[1]), .O(A_out_1));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3233), .B(A[0]), .O(A_out_0));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1225), .B(RD[7]), .O(RD_out_7));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    VHI i2 (.Z(VCC_net));
    BB RD_pad_6 (.I(WRDr[6]), .T(n1225), .B(RD[6]), .O(RD_out_6));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1225), .B(RD[5]), .O(RD_out_5));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1225), .B(RD[4]), .O(RD_out_4));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1225), .B(RD[3]), .O(RD_out_3));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1225), .B(RD[2]), .O(RD_out_2));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1225), .B(RD[1]), .O(RD_out_1));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1225), .B(RD[0]), .O(RD_out_0));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    OB nRESETOUT_pad (.I(VCC_net), .O(nRESETOUT));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(6[9:18])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(13[9:15])
    OB nDMA_pad (.I(n3233), .O(nDMA));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(14[9:13])
    OB nAOE_pad (.I(nAOE_N_590), .O(nAOE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(19[9:13])
    OB ADIR_pad (.I(n3233), .O(ADIR));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(20[9:13])
    OB nRWOE_pad (.I(n3241), .O(nRWOE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(21[9:14])
    OB nDOE_pad (.I(nDOE_N_595), .O(nDOE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(22[9:13])
    OB DDIR_pad (.I(DOE), .O(DDIR));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(23[9:13])
    OB nIRQ_pad (.I(IRQ), .O(nIRQ));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(26[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(29[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(30[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(31[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(32[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(33[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(34[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(35[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(35[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_11 (.I(RA_c_11), .O(RA[11]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_10 (.I(RA_c_10), .O(RA[10]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(36[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(37[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(38[9:13])
    IB C8M_pad (.I(C8M), .O(C8M_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(5[8:14])
    IB BA_pad (.I(BA), .O(BA_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(9[8:10])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(12[8:11])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(16[8:12])
    LUT4 m1_lut (.Z(n3443)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i1651_3_lut (.A(n633), .B(Length[10]), .C(A_out_3), .Z(n2017)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1651_3_lut.init = 16'hcaca;
    LUT4 mux_270_i8_3_lut_3_lut (.A(A_out_3), .B(n3007), .C(IncMode[1]), 
         .Z(n618)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(122[9:10])
    defparam mux_270_i8_3_lut_3_lut.init = 16'he4e4;
    L6MUX21 i2718 (.D0(n3106), .D1(n3103), .SD(A_out_0), .Z(n3107));
    PFUMX i10 (.BLUT(n2988), .ALUT(n620), .C0(A_out_3), .Z(n640));
    PFUMX i2716 (.BLUT(n3105), .ALUT(n3104), .C0(A_out_2), .Z(n3106));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1656_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1656_3_lut.init = 16'hcaca;
    PFUMX i2619 (.BLUT(n663), .ALUT(n555), .C0(A_out_1), .Z(n2995));
    LUT4 i1_4_lut (.A(n3230), .B(n12), .C(PHI2Start_N_550), .D(RDD_7__N_507), 
         .Z(nCS_N_509)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam i1_4_lut.init = 16'hcccd;
    LUT4 i2606_3_lut (.A(Fault), .B(REUA[5]), .C(A_out_2), .Z(n2982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2606_3_lut.init = 16'hcaca;
    REUReg reureg (.GND_net(GND_net), .NextCA(NextCA), .n1420(n1420), 
           .\Length_7__N_361[7] (Length_7__N_361[7]), .\Length[5] (Length[5]), 
           .\Length_7__N_361[5] (Length_7__N_361[5]), .\Length_7__N_361[6] (Length_7__N_361[6]), 
           .LengthWritten({LengthWritten}), .PHI2_N_558(PHI2_N_558), .n1338(n1338), 
           .n1294(n1294), .n1312(n1312), .\Length[4] (Length[4]), .\Length_7__N_361[3] (Length_7__N_361[3]), 
           .\Length_7__N_361[4] (Length_7__N_361[4]), .A_out_1(A_out_1), 
           .\Length_7__N_361[1] (Length_7__N_361[1]), .\Length_7__N_361[2] (Length_7__N_361[2]), 
           .\Length_7__N_361[0] (Length_7__N_361[0]), .\Length_15__N_317[7] (Length_15__N_317[7]), 
           .n3235(n3235), .D_out_1(D_out_1), .CA({CA}), .n1375(n1375), 
           .D_out_2(D_out_2), .PHI2_N_558_enable_18(PHI2_N_558_enable_18), 
           .D_out_3(D_out_3), .n1340(n1340), .D_out_4(D_out_4), .n1359(n1359), 
           .n1308(n1308), .n1310(n1310), .REUA({REUA}), .A_out_0(A_out_0), 
           .D_out_5(D_out_5), .D_out_6(D_out_6), .\REUAWritten[8] (REUAWritten[8]), 
           .D_out_0(D_out_0), .IntEnable(IntEnable), .D_out_7(D_out_7), 
           .PHI2_N_558_enable_57(PHI2_N_558_enable_57), .\CAWritten[8] (CAWritten[8]), 
           .EndOfBlock(EndOfBlock), .n3443(n3443), .Fault(Fault), .PHI2_N_558_enable_19(PHI2_N_558_enable_19), 
           .EndOfBlockMask(EndOfBlockMask), .n586(n586), .VerifyErrMask(VerifyErrMask), 
           .PHI2_N_558_enable_21(PHI2_N_558_enable_21), .A_out_3(A_out_3), 
           .n3285(n3285), .XferType({XferType}), .PHI2_N_558_enable_69(PHI2_N_558_enable_69), 
           .n2771(n2771), .n555(n555), .n663(n663), .\Length[12] (Length[12]), 
           .\Length[10] (Length[10]), .ExecuteEN(ExecuteEN), .PHI2_N_558_enable_74(PHI2_N_558_enable_74), 
           .nFF00Decode(nFF00Decode), .PHI2_N_558_enable_59(PHI2_N_558_enable_59), 
           .NextREUA_N_584(NextREUA_N_584), .n3227(n3227), .n3220(n3220), 
           .n618(n618), .n638(n638), .n3228(n3228), .n3218(n3218), .\CAWritten[0] (CAWritten[0]), 
           .\REUAWritten[0] (REUAWritten[0]), .A_0__N_539(A_0__N_539), .n620(n620), 
           .n3222(n3222), .n2219(n2219), .n2939(n2939), .Autoload(Autoload), 
           .A_out_4(A_out_4), .n3232(n3232), .\Length[14] (Length[14]), 
           .\Length_15__N_317[5] (Length_15__N_317[5]), .\Length_15__N_317[6] (Length_15__N_317[6]), 
           .\Length_15__N_317[3] (Length_15__N_317[3]), .\Length_15__N_317[4] (Length_15__N_317[4]), 
           .\Length[9] (Length[9]), .\Length_15__N_317[1] (Length_15__N_317[1]), 
           .\Length_15__N_317[2] (Length_15__N_317[2]), .A_out_2(A_out_2), 
           .n3225(n3225), .\Length_15__N_317[0] (Length_15__N_317[0]), .n2754(n2754), 
           .n645(n645), .n2737(n2737), .NextREUA(NextREUA), .n2720(n2720), 
           .n3208(n3208), .n1034({Length_7__N_359, Length_6__N_366, Length_5__N_371, 
           Length_4__N_376, Length_3__N_381, Length_2__N_386, Length_1__N_391, 
           Length_0__N_396}), .n642(n642), .n1035({Length_15__N_315, Length_14__N_324, 
           Length_13__N_329, Length_12__N_334, Length_11__N_339, Length_10__N_344, 
           Length_9__N_349, Length_8__N_354}), .\IncMode[1] (IncMode[1]), 
           .n579(n579), .n567(n567), .n3226(n3226), .n3221(n3221), .n3206(n3206), 
           .RegRD(RegRD), .n3216(n3216), .n2252(n2252), .n3007(n3007), 
           .n633(n633)) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(62[9] 71[43])
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n640), .B(RAMRDD[5]), .C(AOE), .D(n2219), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2704), .S1(nWEDMA_N_9));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n3285), .B(RAMRDD[6]), .C(AOE), .D(n2219), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    PFUMX i2714 (.BLUT(n3102), .ALUT(n3101), .C0(A_out_2), .Z(n3103));
    L6MUX21 i2621 (.D0(n2995), .D1(n2996), .SD(A_out_2), .Z(n2997));
    INV i2894 (.A(C8M_c), .Z(C8M_N_498));   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    LUT4 i2609_3_lut (.A(CA[13]), .B(Length[5]), .C(A_out_2), .Z(n2985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2609_3_lut.init = 16'hcaca;
    LUT4 i2608_3_lut (.A(Autoload), .B(REUA[13]), .C(A_out_2), .Z(n2984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2608_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut (.A(n3236), .B(RDOE_N_553), .C(C8M_c_enable_22), 
         .D(C8M_N_498_enable_4), .Z(C8M_c_enable_20)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam i1_2_lut_4_lut.init = 16'hffef;
    DMASeq dmaseq (.n3217(n3217), .n3215(n3215), .AOE(AOE), .BA_c(BA_c), 
           .RAMWR(RAMWR), .PHI2_N_558(PHI2_N_558), .n3233(n3233), .n3241(n3241), 
           .XferType({XferType}), .NextREUA_N_584(NextREUA_N_584), .n3235(n3235), 
           .n3228(n3228), .n3225(n3225), .n3226(n3226), .PHI2_N_558_enable_59(PHI2_N_558_enable_59), 
           .nWEDMA_c(nWEDMA_c), .RAMRD(RAMRD), .nRESET_c(nRESET_c), .D_out_2(D_out_2), 
           .n1294(n1294), .D_out_1(D_out_1), .n1338(n1338), .D_out_0(D_out_0), 
           .n1375(n1375), .D_out_7(D_out_7), .n1310(n1310), .D_out_6(D_out_6), 
           .n1308(n1308), .D_out_5(D_out_5), .n1359(n1359), .D_out_4(D_out_4), 
           .n1340(n1340), .D_out_3(D_out_3), .n1312(n1312), .n3240(n3240), 
           .n3227(n3227), .n1420(n1420), .NextREUA(NextREUA), .NextCA(NextCA), 
           .Execute(Execute), .nWEDMA_N_9(nWEDMA_N_9), .A_out_0(A_out_0), 
           .n3218(n3218), .A_out_1(A_out_1), .PHI2_N_558_enable_57(PHI2_N_558_enable_57)) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(85[9] 99[40])
    Glue glue (.nWE_c(nWE_c), .n3235(n3235), .n3221(n3221), .PHI2_N_558_enable_69(PHI2_N_558_enable_69), 
         .A_out_2(A_out_2), .n3232(n3232), .n3220(n3220), .n3218(n3218), 
         .nFF00Decode(nFF00Decode), .Execute(Execute), .n3241(n3241), 
         .n1420(n1420), .n3240(n3240), .XferType({XferType}), .PHI2_N_558_enable_18(PHI2_N_558_enable_18), 
         .n3227(n3227), .n3206(n3206), .\Length_7__N_361[1] (Length_7__N_361[1]), 
         .LengthWritten({LengthWritten}), .n3215(n3215), .n1034({Length_7__N_359, 
         Length_6__N_366, Length_5__N_371, Length_4__N_376, Length_3__N_381, 
         Length_2__N_386, Length_1__N_391, Length_0__N_396}), .\CA[0] (CA[0]), 
         .\CAWritten[0] (CAWritten[0]), .n2771(n2771), .n3216(n3216), 
         .PHI2_N_558_enable_74(PHI2_N_558_enable_74), .A_out_11(A_out_11), 
         .A_out_10(A_out_10), .A_out_13(A_out_13), .A_out_8(A_out_8), 
         .\Length_15__N_317[5] (Length_15__N_317[5]), .n1035({Length_15__N_315, 
         Length_14__N_324, Length_13__N_329, Length_12__N_334, Length_11__N_339, 
         Length_10__N_344, Length_9__N_349, Length_8__N_354}), .\Length_7__N_361[6] (Length_7__N_361[6]), 
         .\REUA[8] (REUA[8]), .\REUAWritten[8] (REUAWritten[8]), .n2754(n2754), 
         .\Length_15__N_317[4] (Length_15__N_317[4]), .\Length_7__N_361[7] (Length_7__N_361[7]), 
         .\Length_15__N_317[2] (Length_15__N_317[2]), .\Length_15__N_317[3] (Length_15__N_317[3]), 
         .\Length_15__N_317[7] (Length_15__N_317[7]), .\Length_7__N_361[0] (Length_7__N_361[0]), 
         .\Length_7__N_361[3] (Length_7__N_361[3]), .\REUA[0] (REUA[0]), 
         .\REUAWritten[0] (REUAWritten[0]), .n2737(n2737), .\CA[8] (CA[8]), 
         .\CAWritten[8] (CAWritten[8]), .n2720(n2720), .\Length_15__N_317[0] (Length_15__N_317[0]), 
         .\Length_15__N_317[1] (Length_15__N_317[1]), .\Length_15__N_317[6] (Length_15__N_317[6]), 
         .\Length_7__N_361[2] (Length_7__N_361[2]), .\Length_7__N_361[4] (Length_7__N_361[4]), 
         .\Length_7__N_361[5] (Length_7__N_361[5]), .n3217(n3217), .PHI2_N_558_enable_21(PHI2_N_558_enable_21), 
         .AOE(AOE), .nIO2_c(nIO2_c), .n3226(n3226), .D_out_7(D_out_7), 
         .RegRD(RegRD), .BA_c(BA_c), .nAOE_N_590(nAOE_N_590), .n6(n6), 
         .n2252(n2252), .A_out_1(A_out_1), .n7(n7), .A_out_3(A_out_3), 
         .nWEDMA_c(nWEDMA_c), .nDOE_N_595(nDOE_N_595), .IntEnable(IntEnable), 
         .EndOfBlock(EndOfBlock), .EndOfBlockMask(EndOfBlockMask), .IRQ(IRQ), 
         .VerifyErrMask(VerifyErrMask), .n3222(n3222), .PHI2_N_558_enable_19(PHI2_N_558_enable_19), 
         .ExecuteEN(ExecuteEN), .A_out_0(A_out_0), .n8(n8), .A_out_12(A_out_12), 
         .A_out_9(A_out_9), .A_out_14(A_out_14), .A_out_15(A_out_15), 
         .DOE(DOE), .A_out_4(A_out_4), .nWEDMA_N_9(nWEDMA_N_9), .n3208(n3208)) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(101[7] 118[15])
    RAM ram (.RA_c_11(RA_c_11), .C8M_c(C8M_c), .RDCMDr(RDCMDr), .C8M_N_498(C8M_N_498), 
        .C8M_N_498_enable_4(C8M_N_498_enable_4), .RAMWR(RAMWR), .PHI2Start_N_550(PHI2Start_N_550), 
        .n3443(n3443), .RBA_c_0(RBA_c_0), .n262(n262), .\REUA[22] (REUA[22]), 
        .RA_c_9(RA_c_9), .INITCMDr(INITCMDr), .WRCMDr(WRCMDr), .nRESET_c(nRESET_c), 
        .RAMRD(RAMRD), .PHI2_c(PHI2_c), .RA_c_8(RA_c_8), .\REUA[18] (REUA[18]), 
        .\REUA[9] (REUA[9]), .RDOE_N_553(RDOE_N_553), .nRAS_c(nRAS_c), 
        .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), .nRWE_N_525(nRWE_N_525), .CKE_c(CKE_c), 
        .DQMH_c(DQMH_c), .n3237(n3237), .\REUA[0] (REUA[0]), .RAMRDD({RAMRDD}), 
        .RDD_7__N_507(RDD_7__N_507), .RD_out_0(RD_out_0), .DQML_c(DQML_c), 
        .A_0__N_539(A_0__N_539), .WRDr({WRDr}), .PHI2_N_558(PHI2_N_558), 
        .D_out_0(D_out_0), .\REUA[17] (REUA[17]), .\REUA[8] (REUA[8]), 
        .\REUA[16] (REUA[16]), .\REUA[7] (REUA[7]), .\REUA[15] (REUA[15]), 
        .\REUA[6] (REUA[6]), .C8M_c_enable_22(C8M_c_enable_22), .n3238(n3238), 
        .n3230(n3230), .\REUA[21] (REUA[21]), .RA_c_7(RA_c_7), .RA_c_6(RA_c_6), 
        .RA_c_5(RA_c_5), .RA_c_4(RA_c_4), .n470(n470), .RA_c_3(RA_c_3), 
        .n471(n471), .n3236(n3236), .n1225(n1225), .n12(n12), .RA_c_2(RA_c_2), 
        .RCLK_c(RCLK_c), .RBA_c_1(RBA_c_1), .\REUA[23] (REUA[23]), .\REUA[12] (REUA[12]), 
        .\REUA[3] (REUA[3]), .\REUA[11] (REUA[11]), .\REUA[2] (REUA[2]), 
        .RA_c_1(RA_c_1), .C8M_c_enable_20(C8M_c_enable_20), .nCS_c(nCS_c), 
        .nCS_N_509(nCS_N_509), .RA_c_0(RA_c_0), .RA_c_10(RA_c_10), .n494(n494), 
        .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .D_out_1(D_out_1), .D_out_2(D_out_2), .D_out_3(D_out_3), 
        .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), .D_out_7(D_out_7), 
        .\REUA[10] (REUA[10]), .\REUA[1] (REUA[1]), .\REUA[19] (REUA[19])) /* synthesis syn_module_defined=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(73[6] 83[32])
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n2015), .B(RAMRDD[4]), .C(AOE), .D(n2939), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n2017), .B(RAMRDD[2]), .C(AOE), .D(n2939), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(120[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 i1649_3_lut (.A(n3107), .B(Length[12]), .C(A_out_3), .Z(n2015)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1649_3_lut.init = 16'hcaca;
    
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

module REUReg (GND_net, NextCA, n1420, \Length_7__N_361[7] , \Length[5] , 
            \Length_7__N_361[5] , \Length_7__N_361[6] , LengthWritten, 
            PHI2_N_558, n1338, n1294, n1312, \Length[4] , \Length_7__N_361[3] , 
            \Length_7__N_361[4] , A_out_1, \Length_7__N_361[1] , \Length_7__N_361[2] , 
            \Length_7__N_361[0] , \Length_15__N_317[7] , n3235, D_out_1, 
            CA, n1375, D_out_2, PHI2_N_558_enable_18, D_out_3, n1340, 
            D_out_4, n1359, n1308, n1310, REUA, A_out_0, D_out_5, 
            D_out_6, \REUAWritten[8] , D_out_0, IntEnable, D_out_7, 
            PHI2_N_558_enable_57, \CAWritten[8] , EndOfBlock, n3443, 
            Fault, PHI2_N_558_enable_19, EndOfBlockMask, n586, VerifyErrMask, 
            PHI2_N_558_enable_21, A_out_3, n3285, XferType, PHI2_N_558_enable_69, 
            n2771, n555, n663, \Length[12] , \Length[10] , ExecuteEN, 
            PHI2_N_558_enable_74, nFF00Decode, PHI2_N_558_enable_59, NextREUA_N_584, 
            n3227, n3220, n618, n638, n3228, n3218, \CAWritten[0] , 
            \REUAWritten[0] , A_0__N_539, n620, n3222, n2219, n2939, 
            Autoload, A_out_4, n3232, \Length[14] , \Length_15__N_317[5] , 
            \Length_15__N_317[6] , \Length_15__N_317[3] , \Length_15__N_317[4] , 
            \Length[9] , \Length_15__N_317[1] , \Length_15__N_317[2] , 
            A_out_2, n3225, \Length_15__N_317[0] , n2754, n645, n2737, 
            NextREUA, n2720, n3208, n1034, n642, n1035, \IncMode[1] , 
            n579, n567, n3226, n3221, n3206, RegRD, n3216, n2252, 
            n3007, n633) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input NextCA;
    output n1420;
    output \Length_7__N_361[7] ;
    output \Length[5] ;
    output \Length_7__N_361[5] ;
    output \Length_7__N_361[6] ;
    output [15:0]LengthWritten;
    input PHI2_N_558;
    input n1338;
    input n1294;
    input n1312;
    output \Length[4] ;
    output \Length_7__N_361[3] ;
    output \Length_7__N_361[4] ;
    input A_out_1;
    output \Length_7__N_361[1] ;
    output \Length_7__N_361[2] ;
    output \Length_7__N_361[0] ;
    output \Length_15__N_317[7] ;
    input n3235;
    input D_out_1;
    output [15:0]CA;
    input n1375;
    input D_out_2;
    input PHI2_N_558_enable_18;
    input D_out_3;
    input n1340;
    input D_out_4;
    input n1359;
    input n1308;
    input n1310;
    output [23:0]REUA;
    input A_out_0;
    input D_out_5;
    input D_out_6;
    output \REUAWritten[8] ;
    input D_out_0;
    output IntEnable;
    input D_out_7;
    input PHI2_N_558_enable_57;
    output \CAWritten[8] ;
    output EndOfBlock;
    input n3443;
    output Fault;
    input PHI2_N_558_enable_19;
    output EndOfBlockMask;
    input n586;
    output VerifyErrMask;
    input PHI2_N_558_enable_21;
    input A_out_3;
    output n3285;
    output [1:0]XferType;
    input PHI2_N_558_enable_69;
    input n2771;
    output n555;
    output n663;
    output \Length[12] ;
    output \Length[10] ;
    output ExecuteEN;
    input PHI2_N_558_enable_74;
    output nFF00Decode;
    input PHI2_N_558_enable_59;
    input NextREUA_N_584;
    input n3227;
    input n3220;
    input n618;
    output n638;
    output n3228;
    input n3218;
    output \CAWritten[0] ;
    output \REUAWritten[0] ;
    output A_0__N_539;
    output n620;
    input n3222;
    output n2219;
    output n2939;
    output Autoload;
    input A_out_4;
    output n3232;
    output \Length[14] ;
    output \Length_15__N_317[5] ;
    output \Length_15__N_317[6] ;
    output \Length_15__N_317[3] ;
    output \Length_15__N_317[4] ;
    output \Length[9] ;
    output \Length_15__N_317[1] ;
    output \Length_15__N_317[2] ;
    input A_out_2;
    output n3225;
    output \Length_15__N_317[0] ;
    input n2754;
    output n645;
    input n2737;
    input NextREUA;
    input n2720;
    input n3208;
    input [7:0]n1034;
    output n642;
    input [7:0]n1035;
    output \IncMode[1] ;
    output n579;
    output n567;
    input n3226;
    output n3221;
    input n3206;
    input RegRD;
    output n3216;
    input n2252;
    output n3007;
    output n633;
    
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire n2808, n2804;
    wire [15:0]Length;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(55[12:18])
    
    wire n2803, PHI2_N_558_enable_12, n2802, n3008, n3009, n3010, 
        n2801, n2800;
    wire [23:0]REUAWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(51[12:23])
    
    wire PHI2_N_558_enable_53;
    wire [7:0]n512;
    
    wire n2811;
    wire [15:0]CAWritten;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(46[12:21])
    wire [31:0]CAOut_7__N_191;
    
    wire n2810;
    wire [7:0]n516;
    
    wire n3211;
    wire [31:0]REUAOut_15__N_61;
    wire [7:0]n514;
    
    wire n3279;
    wire [7:0]n515;
    
    wire n3281, PHI2_N_558_enable_68, PHI2_N_558_enable_60, n3011, n3012, 
        n3013, n2809, n1354, PHI2_N_558_enable_54;
    wire [1:0]IncMode;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(65[11:18])
    
    wire n3278, IntPending, n3282, n3284, n17, n1046;
    wire [2:0]n510;
    
    wire REUAOut_18__N_45, n3207, n28, n22, n30, PHI2_N_558_enable_28, 
        n2813, REUAOut_20__N_35, REUAOut_19__N_38, PHI2_N_558_enable_70, 
        n9, REUAOut_15__N_62, n14, n10, REUAOut_21__N_32;
    wire [2:0]n513;
    
    wire n17_adj_607, n16;
    wire [5:0]n658;
    wire [7:0]n548;
    
    wire n2989, REUAOut_22__N_29;
    wire [7:0]n560;
    wire [7:0]n572;
    
    wire n2990;
    wire [7:0]n584;
    
    wire n2980, n3209, n26, n18, n3234;
    wire [31:0]REUAOut_7__N_105;
    wire [7:0]n617;
    
    wire n2799, n2798, n2797, n2795, n2794, n2793, n2792, n2991, 
        n2787, n2786, n2785, n2784, n2779;
    wire [31:0]CAOut_15__N_147;
    
    wire n2778, n2777, n2776, CAOut_15__N_148, n3214, Length_4__N_375, 
        n3003, n3004, n3006, n3001, n3002, n3005;
    wire [7:0]n627;
    
    wire Length_11__N_338, Length_7__N_358, Length_10__N_343, Length_15__N_314, 
        Length_13__N_328, n9_adj_608, n14_adj_609, n10_adj_610, Length_12__N_333, 
        Length_9__N_348, PHI2_N_558_enable_80, Length_8__N_353, Length_14__N_323, 
        n2855, n3212, n14_adj_611, n10_adj_612, Length_3__N_380, n3213, 
        Length_0__N_395, REUAOut_23__N_24, Length_5__N_370, PHI2_N_558_enable_88, 
        Length_1__N_390, Length_6__N_365, Length_2__N_385, n2217, n3283, 
        n3280;
    
    CCU2D add_834_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(NextCA), .B1(n1420), .C1(GND_net), .D1(GND_net), .COUT(n2808));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(136[14:23])
    defparam add_834_1.INIT0 = 16'hF000;
    defparam add_834_1.INIT1 = 16'hffff;
    defparam add_834_1.INJECT1_0 = "NO";
    defparam add_834_1.INJECT1_1 = "NO";
    CCU2D sub_84_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2804), .S0(\Length_7__N_361[7] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(211[18:31])
    defparam sub_84_add_2_9.INIT0 = 16'h5555;
    defparam sub_84_add_2_9.INIT1 = 16'h0000;
    defparam sub_84_add_2_9.INJECT1_0 = "NO";
    defparam sub_84_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_84_add_2_7 (.A0(\Length[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2803), .COUT(n2804), .S0(\Length_7__N_361[5] ), 
          .S1(\Length_7__N_361[6] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(211[18:31])
    defparam sub_84_add_2_7.INIT0 = 16'h5555;
    defparam sub_84_add_2_7.INIT1 = 16'h5555;
    defparam sub_84_add_2_7.INJECT1_0 = "NO";
    defparam sub_84_add_2_7.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_9__683 (.D(n1338), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_9__683.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__682 (.D(n1294), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_10__682.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__681 (.D(n1312), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_11__681.GSR = "ENABLED";
    CCU2D sub_84_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2802), .COUT(n2803), .S0(\Length_7__N_361[3] ), 
          .S1(\Length_7__N_361[4] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(211[18:31])
    defparam sub_84_add_2_5.INIT0 = 16'h5555;
    defparam sub_84_add_2_5.INIT1 = 16'h5555;
    defparam sub_84_add_2_5.INJECT1_0 = "NO";
    defparam sub_84_add_2_5.INJECT1_1 = "NO";
    PFUMX i2634 (.BLUT(n3008), .ALUT(n3009), .C0(A_out_1), .Z(n3010));
    CCU2D sub_84_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2801), .COUT(n2802), .S0(\Length_7__N_361[1] ), 
          .S1(\Length_7__N_361[2] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(211[18:31])
    defparam sub_84_add_2_3.INIT0 = 16'h5555;
    defparam sub_84_add_2_3.INIT1 = 16'h5555;
    defparam sub_84_add_2_3.INJECT1_0 = "NO";
    defparam sub_84_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_84_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Length[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2801), .S1(\Length_7__N_361[0] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(211[18:31])
    defparam sub_84_add_2_1.INIT0 = 16'hF000;
    defparam sub_84_add_2_1.INIT1 = 16'h5555;
    defparam sub_84_add_2_1.INJECT1_0 = "NO";
    defparam sub_84_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_85_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2800), .S0(\Length_15__N_317[7] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(226[19:33])
    defparam sub_85_add_2_9.INIT0 = 16'h5555;
    defparam sub_85_add_2_9.INIT1 = 16'h0000;
    defparam sub_85_add_2_9.INJECT1_0 = "NO";
    defparam sub_85_add_2_9.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_1__619 (.D(D_out_1), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_1__619.GSR = "ENABLED";
    FD1S3IX CA_7__573 (.D(n512[7]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_7__573.GSR = "ENABLED";
    FD1P3AX LengthWritten_8__684 (.D(n1375), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_8__684.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__618 (.D(D_out_2), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_2__618.GSR = "ENABLED";
    CCU2D add_834_9 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n2811), .S0(CAOut_7__N_191[6]), .S1(CAOut_7__N_191[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(136[14:23])
    defparam add_834_9.INIT0 = 16'h596a;
    defparam add_834_9.INIT1 = 16'h596a;
    defparam add_834_9.INJECT1_0 = "NO";
    defparam add_834_9.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_3__617 (.D(D_out_3), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_3__617.GSR = "ENABLED";
    CCU2D add_834_7 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n2810), .COUT(n2811), .S0(CAOut_7__N_191[4]), 
          .S1(CAOut_7__N_191[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(136[14:23])
    defparam add_834_7.INIT0 = 16'h596a;
    defparam add_834_7.INIT1 = 16'h596a;
    defparam add_834_7.INJECT1_0 = "NO";
    defparam add_834_7.INJECT1_1 = "NO";
    FD1S3IX CA_6__574 (.D(n512[6]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_6__574.GSR = "ENABLED";
    FD1S3IX CA_5__575 (.D(n512[5]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_5__575.GSR = "ENABLED";
    FD1S3IX CA_4__576 (.D(n512[4]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_4__576.GSR = "ENABLED";
    FD1S3IX CA_3__577 (.D(n512[3]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_3__577.GSR = "ENABLED";
    FD1S3IX CA_2__578 (.D(n512[2]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_2__578.GSR = "ENABLED";
    FD1S3IX CA_1__579 (.D(n512[1]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_1__579.GSR = "ENABLED";
    FD1S3IX CA_0__580 (.D(n512[0]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_0__580.GSR = "ENABLED";
    FD1S3IX CA_15__589 (.D(n516[7]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_15__589.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__680 (.D(n1340), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_12__680.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__616 (.D(D_out_4), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_4__616.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__679 (.D(n1359), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_13__679.GSR = "ENABLED";
    LUT4 mux_231_i4_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_3), 
         .D(REUAOut_15__N_61[3]), .Z(n514[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i4_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_14__678 (.D(n1308), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_14__678.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__677 (.D(n1310), .SP(PHI2_N_558_enable_12), 
            .CK(PHI2_N_558), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_15__677.GSR = "ENABLED";
    FD1S3IX CA_14__590 (.D(n516[6]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_14__590.GSR = "ENABLED";
    LUT4 mux_231_i5_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_4), 
         .D(REUAOut_15__N_61[4]), .Z(n514[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 n574_bdd_3_lut (.A(REUA[14]), .B(A_out_0), .C(REUA[6]), .Z(n3279)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam n574_bdd_3_lut.init = 16'hb8b8;
    FD1S3IX CA_13__591 (.D(n516[5]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_13__591.GSR = "ENABLED";
    FD1S3IX CA_12__592 (.D(n516[4]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_12__592.GSR = "ENABLED";
    FD1S3IX CA_11__593 (.D(n516[3]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_11__593.GSR = "ENABLED";
    FD1S3IX CA_10__594 (.D(n516[2]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_10__594.GSR = "ENABLED";
    FD1S3IX CA_9__595 (.D(n516[1]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_9__595.GSR = "ENABLED";
    FD1S3IX CA_8__596 (.D(n516[0]), .CK(PHI2_N_558), .CD(n3235), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_8__596.GSR = "ENABLED";
    FD1S3IX REUA_7__605 (.D(n515[7]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_7__605.GSR = "ENABLED";
    LUT4 mux_231_i6_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_5), 
         .D(REUAOut_15__N_61[5]), .Z(n514[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_231_i7_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_6), 
         .D(REUAOut_15__N_61[6]), .Z(n514[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 CA_14__bdd_2_lut_2796 (.A(CA[14]), .B(A_out_1), .Z(n3281)) /* synthesis lut_function=(A (B)) */ ;
    defparam CA_14__bdd_2_lut_2796.init = 16'h8888;
    FD1P3IX REUAWritten_8__636 (.D(D_out_0), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(\REUAWritten[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_8__636.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__668 (.D(n1375), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_0__668.GSR = "ENABLED";
    PFUMX i2637 (.BLUT(n3011), .ALUT(n3012), .C0(A_out_1), .Z(n3013));
    FD1S3IX IntEnable_685 (.D(D_out_7), .CK(PHI2_N_558), .CD(n3235), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(231[8] 241[4])
    defparam IntEnable_685.GSR = "ENABLED";
    FD1P3AX CAWritten_9__603 (.D(D_out_1), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_9__603.GSR = "ENABLED";
    FD1P3IX REUAWritten_7__613 (.D(D_out_7), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_7__613.GSR = "ENABLED";
    FD1P3AX CAWritten_8__604 (.D(D_out_0), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(\CAWritten[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_8__604.GSR = "ENABLED";
    CCU2D add_834_5 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n2809), .COUT(n2810), .S0(CAOut_7__N_191[2]), 
          .S1(CAOut_7__N_191[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(136[14:23])
    defparam add_834_5.INIT0 = 16'h596a;
    defparam add_834_5.INIT1 = 16'h596a;
    defparam add_834_5.INJECT1_0 = "NO";
    defparam add_834_5.INJECT1_1 = "NO";
    FD1P3IX EndOfBlock_565 (.D(n3443), .SP(PHI2_N_558_enable_18), .CD(n1354), 
            .CK(PHI2_N_558), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(83[8] 104[4])
    defparam EndOfBlock_565.GSR = "ENABLED";
    FD1P3IX Fault_566 (.D(n3443), .SP(PHI2_N_558_enable_19), .CD(n1354), 
            .CK(PHI2_N_558), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(83[8] 104[4])
    defparam Fault_566.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__652 (.D(D_out_0), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_16__652.GSR = "ENABLED";
    FD1S3IX EndOfBlockMask_686 (.D(D_out_6), .CK(PHI2_N_558), .CD(n3235), 
            .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(231[8] 241[4])
    defparam EndOfBlockMask_686.GSR = "ENABLED";
    LUT4 n586_bdd_3_lut_2886 (.A(n586), .B(IncMode[0]), .C(A_out_1), .Z(n3278)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n586_bdd_3_lut_2886.init = 16'hcaca;
    FD1S3IX VerifyErrMask_687 (.D(D_out_5), .CK(PHI2_N_558), .CD(n3235), 
            .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(231[8] 241[4])
    defparam VerifyErrMask_687.GSR = "ENABLED";
    FD1P3IX IntPending_564 (.D(n3443), .SP(PHI2_N_558_enable_21), .CD(n1354), 
            .CK(PHI2_N_558), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(83[8] 104[4])
    defparam IntPending_564.GSR = "ENABLED";
    LUT4 CA_14__bdd_3_lut_2797 (.A(A_out_1), .B(CA[6]), .C(EndOfBlock), 
         .Z(n3282)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam CA_14__bdd_3_lut_2797.init = 16'hd8d8;
    FD1S3IX REUA_6__606 (.D(n515[6]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_6__606.GSR = "ENABLED";
    LUT4 mux_231_i8_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_7), 
         .D(REUAOut_15__N_61[7]), .Z(n514[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 n3284_bdd_3_lut (.A(n3284), .B(n3278), .C(A_out_3), .Z(n3285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3284_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(Length[0]), .B(\Length[5] ), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(57[18:27])
    defparam i1_2_lut.init = 16'hdddd;
    FD1S3IX REUA_5__607 (.D(n515[5]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_5__607.GSR = "ENABLED";
    FD1S3IX REUA_4__608 (.D(n515[4]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_4__608.GSR = "ENABLED";
    FD1S3IX REUA_3__609 (.D(n515[3]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_3__609.GSR = "ENABLED";
    FD1S3IX REUA_2__610 (.D(n515[2]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_2__610.GSR = "ENABLED";
    FD1S3IX REUA_1__611 (.D(n515[1]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_1__611.GSR = "ENABLED";
    FD1S3IX REUA_0__612 (.D(n515[0]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_0__612.GSR = "ENABLED";
    FD1S3IX REUA_15__621 (.D(n514[7]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_15__621.GSR = "ENABLED";
    LUT4 mux_227_i3_4_lut (.A(REUA[18]), .B(REUAWritten[18]), .C(PHI2_N_558_enable_18), 
         .D(n1046), .Z(n510[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(196[18:31])
    defparam mux_227_i3_4_lut.init = 16'hc5ca;
    LUT4 i712_2_lut_rep_33 (.A(REUA[16]), .B(REUAOut_18__N_45), .Z(n3207)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(196[18:31])
    defparam i712_2_lut_rep_33.init = 16'h8888;
    FD1P3IX REUAWritten_5__615 (.D(D_out_5), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_5__615.GSR = "ENABLED";
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_558_enable_69), .CD(n3235), 
            .CK(PHI2_N_558), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(107[8] 124[4])
    defparam XferType__i0.GSR = "ENABLED";
    CCU2D add_834_3 (.A0(n2771), .B0(NextCA), .C0(NextCA), .D0(n1420), 
          .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n2808), .COUT(n2809), .S0(CAOut_7__N_191[0]), 
          .S1(CAOut_7__N_191[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(136[14:23])
    defparam add_834_3.INIT0 = 16'h5a9a;
    defparam add_834_3.INIT1 = 16'h596a;
    defparam add_834_3.INJECT1_0 = "NO";
    defparam add_834_3.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_6__614 (.D(D_out_6), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_6__614.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__651 (.D(D_out_1), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_17__651.GSR = "ENABLED";
    FD1P3AX LengthWritten_5__663 (.D(n1359), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_5__663.GSR = "ENABLED";
    LUT4 mux_231_i1_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_0), 
         .D(REUAOut_15__N_61[0]), .Z(n514[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_18__650 (.D(D_out_2), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_18__650.GSR = "ENABLED";
    LUT4 mux_249_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n555)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_249_i2_3_lut.init = 16'hcaca;
    FD1S3IX REUA_14__622 (.D(n514[6]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_14__622.GSR = "ENABLED";
    FD1S3IX REUA_13__623 (.D(n514[5]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_13__623.GSR = "ENABLED";
    FD1S3IX REUA_12__624 (.D(n514[4]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_12__624.GSR = "ENABLED";
    FD1S3IX REUA_11__625 (.D(n514[3]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_11__625.GSR = "ENABLED";
    FD1S3IX REUA_10__626 (.D(n514[2]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_10__626.GSR = "ENABLED";
    FD1S3IX REUA_9__627 (.D(n514[1]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_9__627.GSR = "ENABLED";
    FD1S3IX REUA_8__628 (.D(n514[0]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_8__628.GSR = "ENABLED";
    LUT4 i1869_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n663)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1869_2_lut.init = 16'h8888;
    LUT4 i14_4_lut (.A(\Length[12] ), .B(n28), .C(n22), .D(\Length[10] ), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(57[18:27])
    defparam i14_4_lut.init = 16'hfffe;
    FD1P3AX Execute_569 (.D(n2813), .SP(PHI2_N_558_enable_28), .CK(PHI2_N_558), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(107[8] 124[4])
    defparam Execute_569.GSR = "ENABLED";
    FD1P3IX REUAWritten_19__649 (.D(D_out_3), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_19__649.GSR = "ENABLED";
    FD1P3IX REUAWritten_20__648 (.D(D_out_4), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_20__648.GSR = "ENABLED";
    FD1P3IX REUA_20__640 (.D(REUAOut_20__N_35), .SP(PHI2_N_558_enable_74), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_20__640.GSR = "ENABLED";
    FD1P3IX REUA_19__641 (.D(REUAOut_19__N_38), .SP(PHI2_N_558_enable_74), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_19__641.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_558_enable_70), .CD(n3235), 
            .CK(PHI2_N_558), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n9), .B(REUAOut_15__N_62), .C(n14), .D(n10), .Z(REUAOut_18__N_45)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    FD1P3AX LengthWritten_4__664 (.D(n1340), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_4__664.GSR = "ENABLED";
    FD1P3AX nFF00Decode_571 (.D(n1340), .SP(PHI2_N_558_enable_69), .CK(PHI2_N_558), 
            .Q(nFF00Decode)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(107[8] 124[4])
    defparam nFF00Decode_571.GSR = "ENABLED";
    FD1P3IX REUA_21__639 (.D(REUAOut_21__N_32), .SP(PHI2_N_558_enable_74), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_21__639.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_132 (.A(REUA[9]), .B(REUA[11]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_132.init = 16'h8888;
    FD1P3AX CAWritten_6__582 (.D(D_out_6), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_6__582.GSR = "ENABLED";
    FD1S3IX REUA_18__642 (.D(n513[2]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_18__642.GSR = "ENABLED";
    FD1S3IX REUA_17__643 (.D(n513[1]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_17__643.GSR = "ENABLED";
    FD1S3IX REUA_16__644 (.D(n513[0]), .CK(PHI2_N_558), .CD(n3235), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_16__644.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(REUA[15]), .B(REUA[8]), .C(REUA[14]), .D(REUA[12]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    FD1P3AX CAWritten_15__597 (.D(D_out_7), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_15__597.GSR = "ENABLED";
    FD1P3AX CAWritten_5__583 (.D(D_out_5), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_5__583.GSR = "ENABLED";
    FD1P3AX CAWritten_4__584 (.D(D_out_4), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_4__584.GSR = "ENABLED";
    FD1P3AX CAWritten_14__598 (.D(D_out_6), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_14__598.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(REUA[13]), .B(REUA[10]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i9_4_lut (.A(n17_adj_607), .B(REUA[0]), .C(n16), .D(REUA[4]), 
         .Z(REUAOut_15__N_62)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(NextREUA_N_584), .B(REUA[5]), .C(REUA[7]), .D(n3227), 
         .Z(n17_adj_607)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    PFUMX i2613 (.BLUT(n658[0]), .ALUT(n548[0]), .C0(A_out_1), .Z(n2989));
    FD1P3AX CAWritten_3__585 (.D(D_out_3), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_3__585.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_133 (.A(REUA[2]), .B(REUA[6]), .C(REUA[3]), .D(REUA[1]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_133.init = 16'h8000;
    FD1P3AX CAWritten_2__586 (.D(D_out_2), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_2__586.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__665 (.D(n1312), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_3__665.GSR = "ENABLED";
    FD1P3IX REUAWritten_21__647 (.D(D_out_5), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_21__647.GSR = "ENABLED";
    FD1P3IX REUA_22__638 (.D(REUAOut_22__N_29), .SP(PHI2_N_558_enable_74), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_22__638.GSR = "ENABLED";
    FD1P3IX REUAWritten_22__646 (.D(D_out_6), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_22__646.GSR = "ENABLED";
    LUT4 i391_2_lut_3_lut_4_lut (.A(A_out_0), .B(n3220), .C(n3235), .D(A_out_1), 
         .Z(PHI2_N_558_enable_68)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i391_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 mux_227_i2_4_lut (.A(REUA[17]), .B(REUAWritten[17]), .C(PHI2_N_558_enable_18), 
         .D(n3207), .Z(n510[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(196[18:31])
    defparam mux_227_i2_4_lut.init = 16'hc5ca;
    PFUMX i2614 (.BLUT(n560[0]), .ALUT(n572[0]), .C0(A_out_1), .Z(n2990));
    PFUMX mux_274_i8 (.BLUT(n584[7]), .ALUT(n618), .C0(n2980), .Z(n638));
    LUT4 i1_2_lut_rep_35_3_lut (.A(A_out_0), .B(n3220), .C(A_out_1), .Z(n3209)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_35_3_lut.init = 16'h2020;
    LUT4 mux_227_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(PHI2_N_558_enable_18), 
         .D(REUAOut_18__N_45), .Z(n510[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(196[18:31])
    defparam mux_227_i1_4_lut.init = 16'hc5ca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(A_out_0), .B(n3220), .C(n3235), .D(A_out_1), 
         .Z(PHI2_N_558_enable_60)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf2f0;
    FD1P3AX LengthWritten_7__661 (.D(n1310), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_7__661.GSR = "ENABLED";
    LUT4 mux_229_i8_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_7), .D(CAOut_7__N_191[7]), 
         .Z(n512[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_229_i7_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_6), .D(CAOut_7__N_191[6]), 
         .Z(n512[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_6__662 (.D(n1308), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_6__662.GSR = "ENABLED";
    FD1P3AX CAWritten_13__599 (.D(D_out_5), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_13__599.GSR = "ENABLED";
    FD1P3AX CAWritten_1__587 (.D(D_out_1), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_1__587.GSR = "ENABLED";
    FD1P3AX CAWritten_0__588 (.D(D_out_0), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(\CAWritten[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_0__588.GSR = "ENABLED";
    LUT4 i2671_2_lut (.A(A_out_3), .B(A_out_1), .Z(n2980)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i2671_2_lut.init = 16'hdddd;
    FD1P3IX REUAWritten_0__620 (.D(D_out_0), .SP(PHI2_N_558_enable_53), 
            .CD(n3235), .CK(PHI2_N_558), .Q(\REUAWritten[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_0__620.GSR = "ENABLED";
    FD1P3IX REUAWritten_23__645 (.D(D_out_7), .SP(PHI2_N_558_enable_54), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUAWritten_23__645.GSR = "ENABLED";
    FD1P3AX CAWritten_12__600 (.D(D_out_4), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_12__600.GSR = "ENABLED";
    FD1P3AX CAWritten_11__601 (.D(D_out_3), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_11__601.GSR = "ENABLED";
    LUT4 equal_15_i6_2_lut_rep_54 (.A(A_out_0), .B(A_out_1), .Z(n3228)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(79[2:14])
    defparam equal_15_i6_2_lut_rep_54.init = 16'hbbbb;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_539)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(179[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 i1879_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n620)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1879_4_lut.init = 16'hfcee;
    LUT4 mux_249_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n548[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_249_i4_3_lut.init = 16'hcaca;
    LUT4 mux_229_i6_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_5), .D(CAOut_7__N_191[5]), 
         .Z(n512[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_10__602 (.D(D_out_2), .SP(PHI2_N_558_enable_57), .CK(PHI2_N_558), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_10__602.GSR = "ENABLED";
    LUT4 i518_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3222), .D(n3235), 
         .Z(PHI2_N_558_enable_70)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(79[2:14])
    defparam i518_3_lut_4_lut.init = 16'hff40;
    LUT4 i2666_2_lut_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3235), 
         .D(n3220), .Z(PHI2_N_558_enable_54)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(79[2:14])
    defparam i2666_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f4;
    LUT4 mux_229_i5_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_4), .D(CAOut_7__N_191[4]), 
         .Z(n512[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_229_i4_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_3), .D(CAOut_7__N_191[3]), 
         .Z(n512[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i4_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_2__666 (.D(n1294), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_2__666.GSR = "ENABLED";
    LUT4 mux_229_i3_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_2), .D(CAOut_7__N_191[2]), 
         .Z(n512[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), .Z(n1420)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(57[18:27])
    defparam i15_4_lut.init = 16'hfffe;
    FD1P3AX CAWritten_7__581 (.D(D_out_7), .SP(PHI2_N_558_enable_59), .CK(PHI2_N_558), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_7__581.GSR = "ENABLED";
    LUT4 mux_229_i2_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_1), .D(CAOut_7__N_191[1]), 
         .Z(n512[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_1__667 (.D(n1338), .SP(PHI2_N_558_enable_60), 
            .CK(PHI2_N_558), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_1__667.GSR = "ENABLED";
    LUT4 mux_229_i1_3_lut_4_lut (.A(n3228), .B(n3218), .C(D_out_0), .D(CAOut_7__N_191[0]), 
         .Z(n512[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_229_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(A_out_3), .D(n2219), 
         .Z(n2939)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1_3_lut_4_lut.init = 16'hffe0;
    FD1P3IX Autoload_570 (.D(D_out_6), .SP(PHI2_N_558_enable_69), .CD(n3235), 
            .CK(PHI2_N_558), .Q(Autoload)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(107[8] 124[4])
    defparam Autoload_570.GSR = "ENABLED";
    LUT4 mux_232_i8_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_7), .D(REUAOut_7__N_105[7]), 
         .Z(n515[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1901_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(Length[11]), 
         .Z(n617[3])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1901_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_232_i7_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_6), .D(REUAOut_7__N_105[6]), 
         .Z(n515[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_232_i6_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_5), .D(REUAOut_7__N_105[5]), 
         .Z(n515[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_58 (.A(A_out_3), .B(A_out_4), .Z(n3232)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_rep_58.init = 16'heeee;
    CCU2D sub_85_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[14] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2799), .COUT(n2800), .S0(\Length_15__N_317[5] ), 
          .S1(\Length_15__N_317[6] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(226[19:33])
    defparam sub_85_add_2_7.INIT0 = 16'h5555;
    defparam sub_85_add_2_7.INIT1 = 16'h5555;
    defparam sub_85_add_2_7.INJECT1_0 = "NO";
    defparam sub_85_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_85_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[12] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2798), .COUT(n2799), .S0(\Length_15__N_317[3] ), 
          .S1(\Length_15__N_317[4] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(226[19:33])
    defparam sub_85_add_2_5.INIT0 = 16'h5555;
    defparam sub_85_add_2_5.INIT1 = 16'h5555;
    defparam sub_85_add_2_5.INJECT1_0 = "NO";
    defparam sub_85_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_85_add_2_3 (.A0(\Length[9] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[10] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2797), .COUT(n2798), .S0(\Length_15__N_317[1] ), 
          .S1(\Length_15__N_317[2] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(226[19:33])
    defparam sub_85_add_2_3.INIT0 = 16'h5555;
    defparam sub_85_add_2_3.INIT1 = 16'h5555;
    defparam sub_85_add_2_3.INJECT1_0 = "NO";
    defparam sub_85_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_51_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n3225)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_rep_51_3_lut.init = 16'hfefe;
    LUT4 A_4__I_0_690_i6_2_lut_rep_60 (.A(A_out_0), .B(A_out_1), .Z(n3234)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam A_4__I_0_690_i6_2_lut_rep_60.init = 16'heeee;
    LUT4 i2674_2_lut_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3235), 
         .D(n3220), .Z(PHI2_N_558_enable_53)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i2674_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f1;
    CCU2D sub_85_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Length[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2797), .S1(\Length_15__N_317[0] ));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(226[19:33])
    defparam sub_85_add_2_1.INIT0 = 16'hF000;
    defparam sub_85_add_2_1.INIT1 = 16'h5555;
    defparam sub_85_add_2_1.INJECT1_0 = "NO";
    defparam sub_85_add_2_1.INJECT1_1 = "NO";
    CCU2D add_837_9 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n2795), .S0(REUAOut_15__N_61[6]), .S1(REUAOut_15__N_61[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(180[17:29])
    defparam add_837_9.INIT0 = 16'h596a;
    defparam add_837_9.INIT1 = 16'h596a;
    defparam add_837_9.INJECT1_0 = "NO";
    defparam add_837_9.INJECT1_1 = "NO";
    CCU2D add_837_7 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n2794), .COUT(n2795), .S0(REUAOut_15__N_61[4]), 
          .S1(REUAOut_15__N_61[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(180[17:29])
    defparam add_837_7.INIT0 = 16'h596a;
    defparam add_837_7.INIT1 = 16'h596a;
    defparam add_837_7.INJECT1_0 = "NO";
    defparam add_837_7.INJECT1_1 = "NO";
    CCU2D add_837_5 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n2793), .COUT(n2794), .S0(REUAOut_15__N_61[2]), 
          .S1(REUAOut_15__N_61[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(180[17:29])
    defparam add_837_5.INIT0 = 16'h596a;
    defparam add_837_5.INIT1 = 16'h596a;
    defparam add_837_5.INJECT1_0 = "NO";
    defparam add_837_5.INJECT1_1 = "NO";
    CCU2D add_837_3 (.A0(n2754), .B0(NextCA), .C0(REUAOut_15__N_62), .D0(n1420), 
          .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[9]), 
          .D1(REUA[9]), .CIN(n2792), .COUT(n2793), .S0(REUAOut_15__N_61[0]), 
          .S1(REUAOut_15__N_61[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(180[17:29])
    defparam add_837_3.INIT0 = 16'h5a9a;
    defparam add_837_3.INIT1 = 16'h596a;
    defparam add_837_3.INJECT1_0 = "NO";
    defparam add_837_3.INJECT1_1 = "NO";
    CCU2D add_837_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(NextCA), .B1(n1420), .C1(GND_net), .D1(GND_net), .COUT(n2792));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(180[17:29])
    defparam add_837_1.INIT0 = 16'hF000;
    defparam add_837_1.INIT1 = 16'hffff;
    defparam add_837_1.INJECT1_0 = "NO";
    defparam add_837_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_134 (.A(A_out_0), .B(A_out_1), .C(n3235), 
         .D(n3222), .Z(PHI2_N_558_enable_12)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_3_lut_4_lut_adj_134.init = 16'hf1f0;
    FD1P3IX REUAWritten_9__635 (.D(D_out_1), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_9__635.GSR = "ENABLED";
    FD1P3IX REUAWritten_10__634 (.D(D_out_2), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_10__634.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__633 (.D(D_out_3), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_11__633.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__632 (.D(D_out_4), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_12__632.GSR = "ENABLED";
    FD1P3IX REUAWritten_13__631 (.D(D_out_5), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_13__631.GSR = "ENABLED";
    LUT4 mux_274_i1_4_lut (.A(n2991), .B(Length[8]), .C(A_out_3), .D(n3234), 
         .Z(n645)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_274_i1_4_lut.init = 16'hfaca;
    FD1P3IX REUAWritten_14__630 (.D(D_out_6), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_14__630.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__629 (.D(D_out_7), .SP(PHI2_N_558_enable_68), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_15__629.GSR = "ENABLED";
    LUT4 mux_232_i5_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_4), .D(REUAOut_7__N_105[4]), 
         .Z(n515[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_232_i4_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_3), .D(REUAOut_7__N_105[3]), 
         .Z(n515[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_232_i3_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_2), .D(REUAOut_7__N_105[2]), 
         .Z(n515[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i3_3_lut_4_lut.init = 16'hfe10;
    CCU2D add_836_9 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n2787), .S0(REUAOut_7__N_105[6]), .S1(REUAOut_7__N_105[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(165[16:27])
    defparam add_836_9.INIT0 = 16'h596a;
    defparam add_836_9.INIT1 = 16'h596a;
    defparam add_836_9.INJECT1_0 = "NO";
    defparam add_836_9.INJECT1_1 = "NO";
    CCU2D add_836_7 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n2786), .COUT(n2787), .S0(REUAOut_7__N_105[4]), 
          .S1(REUAOut_7__N_105[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(165[16:27])
    defparam add_836_7.INIT0 = 16'h596a;
    defparam add_836_7.INIT1 = 16'h596a;
    defparam add_836_7.INJECT1_0 = "NO";
    defparam add_836_7.INJECT1_1 = "NO";
    CCU2D add_836_5 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n2785), .COUT(n2786), .S0(REUAOut_7__N_105[2]), 
          .S1(REUAOut_7__N_105[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(165[16:27])
    defparam add_836_5.INIT0 = 16'h596a;
    defparam add_836_5.INIT1 = 16'h596a;
    defparam add_836_5.INJECT1_0 = "NO";
    defparam add_836_5.INJECT1_1 = "NO";
    CCU2D add_836_3 (.A0(n2737), .B0(NextCA), .C0(NextREUA), .D0(n1420), 
          .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n2784), .COUT(n2785), .S0(REUAOut_7__N_105[0]), 
          .S1(REUAOut_7__N_105[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(165[16:27])
    defparam add_836_3.INIT0 = 16'h5a9a;
    defparam add_836_3.INIT1 = 16'h596a;
    defparam add_836_3.INJECT1_0 = "NO";
    defparam add_836_3.INJECT1_1 = "NO";
    CCU2D add_836_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(NextCA), .B1(n1420), .C1(GND_net), .D1(GND_net), .COUT(n2784));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(165[16:27])
    defparam add_836_1.INIT0 = 16'hF000;
    defparam add_836_1.INIT1 = 16'hffff;
    defparam add_836_1.INJECT1_0 = "NO";
    defparam add_836_1.INJECT1_1 = "NO";
    CCU2D add_835_9 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n2779), .S0(CAOut_15__N_147[6]), .S1(CAOut_15__N_147[7]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam add_835_9.INIT0 = 16'h596a;
    defparam add_835_9.INIT1 = 16'h596a;
    defparam add_835_9.INJECT1_0 = "NO";
    defparam add_835_9.INJECT1_1 = "NO";
    CCU2D add_835_7 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n2778), .COUT(n2779), .S0(CAOut_15__N_147[4]), 
          .S1(CAOut_15__N_147[5]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam add_835_7.INIT0 = 16'h596a;
    defparam add_835_7.INIT1 = 16'h596a;
    defparam add_835_7.INJECT1_0 = "NO";
    defparam add_835_7.INJECT1_1 = "NO";
    CCU2D add_835_5 (.A0(GND_net), .B0(PHI2_N_558_enable_18), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n2777), .COUT(n2778), .S0(CAOut_15__N_147[2]), 
          .S1(CAOut_15__N_147[3]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam add_835_5.INIT0 = 16'h596a;
    defparam add_835_5.INIT1 = 16'h596a;
    defparam add_835_5.INJECT1_0 = "NO";
    defparam add_835_5.INJECT1_1 = "NO";
    CCU2D add_835_3 (.A0(n2720), .B0(NextCA), .C0(CAOut_15__N_148), .D0(n1420), 
          .A1(GND_net), .B1(PHI2_N_558_enable_18), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n2776), .COUT(n2777), .S0(CAOut_15__N_147[0]), 
          .S1(CAOut_15__N_147[1]));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam add_835_3.INIT0 = 16'h5a9a;
    defparam add_835_3.INIT1 = 16'h596a;
    defparam add_835_3.INJECT1_0 = "NO";
    defparam add_835_3.INJECT1_1 = "NO";
    CCU2D add_835_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(NextCA), .B1(n1420), .C1(GND_net), .D1(GND_net), .COUT(n2776));   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam add_835_1.INIT0 = 16'hF000;
    defparam add_835_1.INIT1 = 16'hffff;
    defparam add_835_1.INJECT1_0 = "NO";
    defparam add_835_1.INJECT1_1 = "NO";
    LUT4 mux_232_i2_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_1), .D(REUAOut_7__N_105[1]), 
         .Z(n515[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_3_lut_4_lut (.A(n3235), .B(PHI2_N_558_enable_18), .C(n3208), 
         .D(n3214), .Z(PHI2_N_558_enable_28)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i10_4_lut (.A(Length[8]), .B(Length[3]), .C(Length[13]), .D(Length[6]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(57[18:27])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_135 (.A(Length[1]), .B(\Length[4] ), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(57[18:27])
    defparam i2_2_lut_adj_135.init = 16'heeee;
    LUT4 Length_4__I_102_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_4), 
         .D(n1034[4]), .Z(Length_4__N_375)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_4__I_102_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_232_i1_3_lut_4_lut (.A(n3234), .B(n3220), .C(D_out_0), .D(REUAOut_7__N_105[0]), 
         .Z(n515[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_232_i1_3_lut_4_lut.init = 16'hfe10;
    PFUMX i2630 (.BLUT(n3003), .ALUT(n3004), .C0(A_out_1), .Z(n3006));
    PFUMX i2629 (.BLUT(n3001), .ALUT(n3002), .C0(A_out_1), .Z(n3005));
    PFUMX mux_274_i4 (.BLUT(n627[3]), .ALUT(n617[3]), .C0(A_out_3), .Z(n642));
    LUT4 i720_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_45), .C(REUA[17]), 
         .Z(n1046)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(196[18:31])
    defparam i720_2_lut_3_lut.init = 16'h8080;
    LUT4 i12_4_lut (.A(Length[11]), .B(\Length[9] ), .C(\Length[14] ), 
         .D(Length[15]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(57[18:27])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 mux_272_i4_4_lut (.A(n548[3]), .B(n3013), .C(A_out_2), .D(A_out_1), 
         .Z(n627[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_272_i4_4_lut.init = 16'hcac0;
    LUT4 i6_2_lut (.A(Length[2]), .B(Length[7]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(57[18:27])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i2626_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n3002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2626_3_lut.init = 16'hcaca;
    LUT4 i2625_3_lut (.A(IntPending), .B(ExecuteEN), .C(A_out_0), .Z(n3001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2625_3_lut.init = 16'hcaca;
    LUT4 i2627_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n3003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2627_3_lut.init = 16'hcaca;
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_558_enable_69), .CD(n3235), 
            .CK(PHI2_N_558), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(107[8] 124[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 Length_11__I_87_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_3), 
         .D(n1035[3]), .Z(Length_11__N_338)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_11__I_87_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_7__I_96_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_7), 
         .D(n1034[7]), .Z(Length_7__N_358)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_7__I_96_3_lut_4_lut.init = 16'hf780;
    LUT4 Length_10__I_89_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_2), 
         .D(n1035[2]), .Z(Length_10__N_343)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_10__I_89_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_15__I_79_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_7), 
         .D(n1035[7]), .Z(Length_15__N_314)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_15__I_79_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_13__I_83_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_5), 
         .D(n1035[5]), .Z(Length_13__N_328)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_13__I_83_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2628_3_lut (.A(REUA[23]), .B(Length[7]), .C(A_out_0), .Z(n3004)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2628_3_lut.init = 16'hcaca;
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_558_enable_70), .CD(n3235), 
            .CK(PHI2_N_558), .Q(\IncMode[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_136 (.A(n9_adj_608), .B(NextCA), .C(n14_adj_609), 
         .D(n10_adj_610), .Z(CAOut_15__N_148)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_136.init = 16'h8000;
    LUT4 i2_2_lut_adj_137 (.A(CA[1]), .B(CA[2]), .Z(n10_adj_610)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_137.init = 16'h8888;
    LUT4 i1_2_lut_adj_138 (.A(CA[4]), .B(CA[5]), .Z(n9_adj_608)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_138.init = 16'h8888;
    LUT4 Length_12__I_85_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_4), 
         .D(n1035[4]), .Z(Length_12__N_333)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_12__I_85_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_9__I_91_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_1), 
         .D(n1035[1]), .Z(Length_9__N_348)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_9__I_91_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_8__676 (.D(Length_8__N_353), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_8__676.GSR = "ENABLED";
    FD1P3JX Length_9__675 (.D(Length_9__N_348), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(\Length[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_9__675.GSR = "ENABLED";
    LUT4 Length_14__I_81_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_6), 
         .D(n1035[6]), .Z(Length_14__N_323)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_14__I_81_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_8__I_93_3_lut_4_lut (.A(n3234), .B(n3222), .C(D_out_0), 
         .D(n1035[0]), .Z(Length_8__N_353)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_8__I_93_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_257_i7_3_lut (.A(REUA[22]), .B(Length[6]), .C(A_out_0), .Z(n572[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_257_i7_3_lut.init = 16'hcaca;
    LUT4 mux_257_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_257_i2_3_lut.init = 16'hcaca;
    LUT4 mux_253_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_253_i2_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_139 (.A(n3226), .B(n3221), .C(D_out_7), .D(n3235), 
         .Z(n2813)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_139.init = 16'h0010;
    LUT4 i2_4_lut (.A(n3206), .B(n2855), .C(n3212), .D(NextCA), .Z(PHI2_N_558_enable_80)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i7_4_lut_adj_140 (.A(Length[7]), .B(n14_adj_611), .C(n10_adj_612), 
         .D(Length[3]), .Z(n2855)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i7_4_lut_adj_140.init = 16'h8000;
    LUT4 i6_4_lut_adj_141 (.A(\Length[4] ), .B(Length[0]), .C(Length[6]), 
         .D(Length[2]), .Z(n14_adj_611)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i6_4_lut_adj_141.init = 16'h8000;
    LUT4 i2_2_lut_adj_142 (.A(\Length[5] ), .B(Length[1]), .Z(n10_adj_612)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2_2_lut_adj_142.init = 16'h8888;
    LUT4 Length_3__I_104_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_3), 
         .D(n1034[3]), .Z(Length_3__N_380)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_3__I_104_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_249_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n548[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_249_i3_3_lut.init = 16'hcaca;
    LUT4 mux_233_i8_3_lut (.A(CAOut_15__N_147[7]), .B(D_out_7), .C(n3213), 
         .Z(n516[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i8_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut_adj_143 (.A(CA[7]), .B(CA[6]), .C(CA[3]), .D(CA[0]), 
         .Z(n14_adj_609)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_143.init = 16'h8000;
    LUT4 Length_0__I_110_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_0), 
         .D(n1034[0]), .Z(Length_0__N_395)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_0__I_110_3_lut_4_lut.init = 16'hf780;
    LUT4 i2633_3_lut (.A(REUA[18]), .B(Length[2]), .C(A_out_0), .Z(n3009)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2633_3_lut.init = 16'hcaca;
    FD1P3IX REUA_23__637 (.D(REUAOut_23__N_24), .SP(PHI2_N_558_enable_74), 
            .CD(n3235), .CK(PHI2_N_558), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(186[8] 198[4])
    defparam REUA_23__637.GSR = "ENABLED";
    FD1P3JX Length_10__674 (.D(Length_10__N_343), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(\Length[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_10__674.GSR = "ENABLED";
    LUT4 REUAOut_20__I_4_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_4), 
         .D(REUAWritten[20]), .Z(REUAOut_20__N_35)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_20__I_4_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_5__I_100_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_5), 
         .D(n1034[5]), .Z(Length_5__N_370)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_5__I_100_3_lut_4_lut.init = 16'hf780;
    FD1P3JX Length_11__673 (.D(Length_11__N_338), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_11__673.GSR = "ENABLED";
    FD1P3JX Length_12__672 (.D(Length_12__N_333), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(\Length[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_12__672.GSR = "ENABLED";
    FD1P3JX Length_13__671 (.D(Length_13__N_328), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_13__671.GSR = "ENABLED";
    FD1P3JX Length_14__670 (.D(Length_14__N_323), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(\Length[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_14__670.GSR = "ENABLED";
    FD1P3JX Length_15__669 (.D(Length_15__N_314), .SP(PHI2_N_558_enable_80), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_15__669.GSR = "ENABLED";
    FD1P3JX Length_0__660 (.D(Length_0__N_395), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_0__660.GSR = "ENABLED";
    FD1P3JX Length_1__659 (.D(Length_1__N_390), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_1__659.GSR = "ENABLED";
    LUT4 Length_1__I_108_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_1), 
         .D(n1034[1]), .Z(Length_1__N_390)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_1__I_108_3_lut_4_lut.init = 16'hf780;
    LUT4 Length_6__I_98_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_6), 
         .D(n1034[6]), .Z(Length_6__N_365)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_6__I_98_3_lut_4_lut.init = 16'hf780;
    LUT4 REUAOut_19__I_5_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_3), 
         .D(REUAWritten[19]), .Z(REUAOut_19__N_38)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_19__I_5_3_lut_4_lut.init = 16'hfe10;
    LUT4 REUAOut_21__I_3_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_5), 
         .D(REUAWritten[21]), .Z(REUAOut_21__N_32)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_21__I_3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_3_lut_4_lut_adj_144 (.A(n3235), .B(PHI2_N_558_enable_18), .C(n3209), 
         .D(NextCA), .Z(PHI2_N_558_enable_88)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_144.init = 16'hfffe;
    FD1P3JX Length_2__658 (.D(Length_2__N_385), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_2__658.GSR = "ENABLED";
    LUT4 i1922_4_lut (.A(A_out_4), .B(A_out_3), .C(n2217), .D(A_out_2), 
         .Z(n2219)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1922_4_lut.init = 16'heeea;
    FD1P3JX Length_3__657 (.D(Length_3__N_380), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_3__657.GSR = "ENABLED";
    LUT4 mux_230_i3_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_2), .D(n510[2]), 
         .Z(n513[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_230_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_4__656 (.D(Length_4__N_375), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(\Length[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_4__656.GSR = "ENABLED";
    FD1P3JX Length_5__655 (.D(Length_5__N_370), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(\Length[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_5__655.GSR = "ENABLED";
    LUT4 mux_230_i2_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_1), .D(n510[1]), 
         .Z(n513[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_230_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_230_i1_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_0), .D(n510[0]), 
         .Z(n513[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_230_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 REUAOut_22__I_2_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_6), 
         .D(REUAWritten[22]), .Z(REUAOut_22__N_29)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_22__I_2_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_6__654 (.D(Length_6__N_365), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_6__654.GSR = "ENABLED";
    LUT4 REUAOut_23__I_1_3_lut_4_lut (.A(n3228), .B(n3220), .C(D_out_7), 
         .D(REUAWritten[23]), .Z(REUAOut_23__N_24)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam REUAOut_23__I_1_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_2__I_106_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_2), 
         .D(n1034[2]), .Z(Length_2__N_385)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Length_2__I_106_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_3_lut_rep_47_4_lut (.A(A_out_2), .B(n3232), .C(A_out_0), .D(A_out_1), 
         .Z(n3221)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i2_3_lut_rep_47_4_lut.init = 16'hffef;
    LUT4 mux_257_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n572[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_257_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_39_4_lut (.A(n3226), .B(n3225), .C(A_out_0), .D(A_out_1), 
         .Z(n3213)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_39_4_lut.init = 16'h1000;
    L6MUX21 i2615 (.D0(n2989), .D1(n2990), .SD(A_out_2), .Z(n2991));
    FD1P3JX Length_7__653 (.D(Length_7__N_358), .SP(PHI2_N_558_enable_88), 
            .PD(n3235), .CK(PHI2_N_558), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=43, LSE_LLINE=62, LSE_RLINE=71 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_7__653.GSR = "ENABLED";
    LUT4 mux_261_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n584[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_261_i8_3_lut.init = 16'hcaca;
    LUT4 mux_253_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n560[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_253_i1_3_lut.init = 16'hcaca;
    LUT4 mux_233_i7_3_lut (.A(CAOut_15__N_147[6]), .B(D_out_6), .C(n3213), 
         .Z(n516[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i7_3_lut.init = 16'hcaca;
    LUT4 mux_249_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n548[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_249_i1_3_lut.init = 16'hcaca;
    LUT4 mux_233_i6_3_lut (.A(CAOut_15__N_147[5]), .B(D_out_5), .C(n3213), 
         .Z(n516[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_37_4_lut (.A(n3232), .B(n3226), .C(A_out_2), .D(A_out_0), 
         .Z(n3211)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i1_2_lut_rep_37_4_lut.init = 16'h1000;
    LUT4 i1848_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n658[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam i1848_2_lut.init = 16'h8888;
    LUT4 mux_233_i5_3_lut (.A(CAOut_15__N_147[4]), .B(D_out_4), .C(n3213), 
         .Z(n516[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i5_3_lut.init = 16'hcaca;
    LUT4 i984_4_lut (.A(n3234), .B(n3235), .C(n3225), .D(RegRD), .Z(n1354)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(83[8] 104[4])
    defparam i984_4_lut.init = 16'hcdcc;
    LUT4 mux_233_i4_3_lut (.A(CAOut_15__N_147[3]), .B(D_out_3), .C(n3213), 
         .Z(n516[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i4_3_lut.init = 16'hcaca;
    LUT4 mux_231_i2_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_1), 
         .D(REUAOut_15__N_61[1]), .Z(n514[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1916_2_lut_rep_42_4_lut (.A(n3232), .B(n3226), .C(A_out_2), 
         .D(n3228), .Z(n3216)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2:14])
    defparam i1916_2_lut_rep_42_4_lut.init = 16'hffef;
    LUT4 mux_233_i3_3_lut (.A(CAOut_15__N_147[2]), .B(D_out_2), .C(n3213), 
         .Z(n516[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i3_3_lut.init = 16'hcaca;
    LUT4 i1855_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2217)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1855_2_lut.init = 16'h8888;
    LUT4 i1902_2_lut_rep_40_4_lut (.A(n3225), .B(A_out_1), .C(A_out_0), 
         .D(n3226), .Z(n3214)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(74[2:14])
    defparam i1902_2_lut_rep_40_4_lut.init = 16'hffef;
    L6MUX21 i2789 (.D0(n3283), .D1(n3280), .SD(A_out_2), .Z(n3284));
    LUT4 i1_2_lut_rep_38_4_lut (.A(n3226), .B(A_out_3), .C(n2252), .D(n3234), 
         .Z(n3212)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_38_4_lut.init = 16'h0004;
    PFUMX i2787 (.BLUT(n3282), .ALUT(n3281), .C0(A_out_0), .Z(n3283));
    LUT4 mux_231_i3_3_lut_4_lut (.A(A_out_1), .B(n3211), .C(D_out_2), 
         .D(REUAOut_15__N_61[2]), .Z(n514[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_231_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2636_3_lut (.A(REUA[19]), .B(Length[3]), .C(A_out_0), .Z(n3012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2636_3_lut.init = 16'hcaca;
    L6MUX21 i2631 (.D0(n3005), .D1(n3006), .SD(A_out_2), .Z(n3007));
    LUT4 mux_233_i2_3_lut (.A(CAOut_15__N_147[1]), .B(D_out_1), .C(n3213), 
         .Z(n516[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i2_3_lut.init = 16'hcaca;
    LUT4 i2632_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n3008)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2632_3_lut.init = 16'hcaca;
    LUT4 i2635_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n3011)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2635_3_lut.init = 16'hcaca;
    LUT4 mux_233_i1_3_lut (.A(CAOut_15__N_147[0]), .B(D_out_0), .C(n3213), 
         .Z(n516[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(150[15:25])
    defparam mux_233_i1_3_lut.init = 16'hcaca;
    PFUMX i2785 (.BLUT(n3279), .ALUT(n572[6]), .C0(A_out_1), .Z(n3280));
    LUT4 mux_272_i3_4_lut (.A(n548[2]), .B(n3010), .C(A_out_2), .D(A_out_1), 
         .Z(n633)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reg.v(69[2] 80[7])
    defparam mux_272_i3_4_lut.init = 16'hcac0;
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (n3217, n3215, AOE, BA_c, RAMWR, PHI2_N_558, n3233, 
            n3241, XferType, NextREUA_N_584, n3235, n3228, n3225, 
            n3226, PHI2_N_558_enable_59, nWEDMA_c, RAMRD, nRESET_c, 
            D_out_2, n1294, D_out_1, n1338, D_out_0, n1375, D_out_7, 
            n1310, D_out_6, n1308, D_out_5, n1359, D_out_4, n1340, 
            D_out_3, n1312, n3240, n3227, n1420, NextREUA, NextCA, 
            Execute, nWEDMA_N_9, A_out_0, n3218, A_out_1, PHI2_N_558_enable_57) /* synthesis syn_module_defined=1 */ ;
    output n3217;
    output n3215;
    output AOE;
    input BA_c;
    output RAMWR;
    input PHI2_N_558;
    output n3233;
    input n3241;
    input [1:0]XferType;
    output NextREUA_N_584;
    output n3235;
    input n3228;
    input n3225;
    input n3226;
    output PHI2_N_558_enable_59;
    output nWEDMA_c;
    output RAMRD;
    input nRESET_c;
    input D_out_2;
    output n1294;
    input D_out_1;
    output n1338;
    input D_out_0;
    output n1375;
    input D_out_7;
    output n1310;
    input D_out_6;
    output n1308;
    input D_out_5;
    output n1359;
    input D_out_4;
    output n1340;
    input D_out_3;
    output n1312;
    output n3240;
    output n3227;
    input n1420;
    output NextREUA;
    output NextCA;
    input Execute;
    input nWEDMA_N_9;
    input A_out_0;
    input n3218;
    input A_out_1;
    output PHI2_N_558_enable_57;
    
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire n1650;
    wire [5:0]n358;
    
    wire SwapState, SwapState_N_562, DMAr, DMARW_N_575, RAMRD_N_554, 
        nRESETr, PHI2_N_558_enable_71;
    
    LUT4 i1279_2_lut_3_lut_4_lut (.A(n3217), .B(n3215), .C(AOE), .D(BA_c), 
         .Z(n1650)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i1279_2_lut_3_lut_4_lut.init = 16'he000;
    FD1S3IX RAMWR_66 (.D(n358[2]), .CK(PHI2_N_558), .CD(n3233), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam RAMWR_66.GSR = "ENABLED";
    FD1S3IX SwapState_67 (.D(SwapState_N_562), .CK(PHI2_N_558), .CD(n3241), 
            .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(83[9] 87[5])
    defparam SwapState_67.GSR = "ENABLED";
    LUT4 SwapState_N_564_I_0_82_4_lut (.A(DMAr), .B(n3241), .C(XferType[0]), 
         .D(XferType[1]), .Z(NextREUA_N_584)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B+!(C+(D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(99[20:65])
    defparam SwapState_N_564_I_0_82_4_lut.init = 16'h333a;
    LUT4 SwapState_I_0_1_lut (.A(SwapState), .Z(SwapState_N_562)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(47[15] 51[9])
    defparam SwapState_I_0_1_lut.init = 16'h5555;
    LUT4 i920_2_lut_3_lut_4_lut_4_lut (.A(n3235), .B(n3228), .C(n3225), 
         .D(n3226), .Z(PHI2_N_558_enable_59)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i920_2_lut_3_lut_4_lut_4_lut.init = 16'h0001;
    FD1S3AX DMARW_64 (.D(DMARW_N_575), .CK(PHI2_N_558), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam DMARW_64.GSR = "ENABLED";
    FD1S3AX RAMRD_65 (.D(RAMRD_N_554), .CK(PHI2_N_558), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam RAMRD_65.GSR = "ENABLED";
    FD1S3AX DMAr_68 (.D(AOE), .CK(PHI2_N_558), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(90[9:37])
    defparam DMAr_68.GSR = "ENABLED";
    FD1S3AX nRESETr_69 (.D(nRESET_c), .CK(PHI2_N_558), .Q(nRESETr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(93[9:43])
    defparam nRESETr_69.GSR = "ENABLED";
    LUT4 AOE_I_0_32_1_lut_rep_59 (.A(AOE), .Z(n3233)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(36[16:20])
    defparam AOE_I_0_32_1_lut_rep_59.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(AOE), .B(BA_c), .C(n3215), .D(n3217), 
         .Z(PHI2_N_558_enable_71)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(36[16:20])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hddd5;
    LUT4 i2683_2_lut_rep_61 (.A(nRESETr), .B(AOE), .Z(n3235)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2683_2_lut_rep_61.init = 16'h1111;
    LUT4 i1884_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_2), .Z(n1294)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1884_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1892_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_1), .Z(n1338)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1892_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1896_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_0), .Z(n1375)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1896_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1886_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_7), .Z(n1310)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1886_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1885_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_6), .Z(n1308)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1885_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1894_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_5), .Z(n1359)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1894_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1893_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_4), .Z(n1340)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1893_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1887_2_lut_3_lut (.A(nRESETr), .B(AOE), .C(D_out_3), .Z(n1312)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1887_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_rep_66 (.A(XferType[0]), .B(SwapState), .Z(n3240)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(59[12] 80[6])
    defparam i1_2_lut_rep_66.init = 16'heeee;
    LUT4 i1001_3_lut_4_lut_4_lut_4_lut (.A(XferType[0]), .B(SwapState), 
         .C(XferType[1]), .D(AOE), .Z(RAMRD_N_554)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(59[12] 80[6])
    defparam i1001_3_lut_4_lut_4_lut_4_lut.init = 16'heafa;
    LUT4 i1138_3_lut_4_lut_4_lut_4_lut (.A(XferType[0]), .B(SwapState), 
         .C(XferType[1]), .D(AOE), .Z(DMARW_N_575)) /* synthesis lut_function=(A (C)+!A (B+!(C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(59[12] 80[6])
    defparam i1138_3_lut_4_lut_4_lut_4_lut.init = 16'he5f5;
    LUT4 i1_2_lut_rep_53_3_lut (.A(XferType[0]), .B(SwapState), .C(XferType[1]), 
         .Z(n3227)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(59[12] 80[6])
    defparam i1_2_lut_rep_53_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_41_3_lut_4_lut (.A(XferType[0]), .B(SwapState), .C(n1420), 
         .D(XferType[1]), .Z(n3215)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(59[12] 80[6])
    defparam i1_2_lut_rep_41_3_lut_4_lut.init = 16'h0e0f;
    LUT4 NextREUA_I_0_2_lut_3_lut_4_lut (.A(XferType[0]), .B(SwapState), 
         .C(NextREUA_N_584), .D(XferType[1]), .Z(NextREUA)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(59[12] 80[6])
    defparam NextREUA_I_0_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 SwapState_N_564_I_0_80_2_lut_2_lut_3_lut_4_lut (.A(XferType[0]), 
         .B(SwapState), .C(n3241), .D(XferType[1]), .Z(NextCA)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(59[12] 80[6])
    defparam SwapState_N_564_I_0_80_2_lut_2_lut_3_lut_4_lut.init = 16'h0e0f;
    FD1P3IX DMA_63 (.D(Execute), .SP(PHI2_N_558_enable_71), .CD(n1650), 
            .CK(PHI2_N_558), .Q(AOE)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=85, LSE_RLINE=99 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(28[9] 81[5])
    defparam DMA_63.GSR = "ENABLED";
    LUT4 i2669_3_lut (.A(XferType[1]), .B(XferType[0]), .C(SwapState), 
         .Z(n358[2])) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;
    defparam i2669_3_lut.init = 16'h1313;
    LUT4 i2_3_lut_rep_43 (.A(XferType[1]), .B(nWEDMA_N_9), .C(XferType[0]), 
         .Z(n3217)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(61[4] 79[11])
    defparam i2_3_lut_rep_43.init = 16'h2020;
    LUT4 i926_2_lut_4_lut_4_lut (.A(n3235), .B(A_out_0), .C(n3218), .D(A_out_1), 
         .Z(PHI2_N_558_enable_57)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i926_2_lut_4_lut_4_lut.init = 16'h0400;
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (nWE_c, n3235, n3221, PHI2_N_558_enable_69, A_out_2, n3232, 
            n3220, n3218, nFF00Decode, Execute, n3241, n1420, n3240, 
            XferType, PHI2_N_558_enable_18, n3227, n3206, \Length_7__N_361[1] , 
            LengthWritten, n3215, n1034, \CA[0] , \CAWritten[0] , 
            n2771, n3216, PHI2_N_558_enable_74, A_out_11, A_out_10, 
            A_out_13, A_out_8, \Length_15__N_317[5] , n1035, \Length_7__N_361[6] , 
            \REUA[8] , \REUAWritten[8] , n2754, \Length_15__N_317[4] , 
            \Length_7__N_361[7] , \Length_15__N_317[2] , \Length_15__N_317[3] , 
            \Length_15__N_317[7] , \Length_7__N_361[0] , \Length_7__N_361[3] , 
            \REUA[0] , \REUAWritten[0] , n2737, \CA[8] , \CAWritten[8] , 
            n2720, \Length_15__N_317[0] , \Length_15__N_317[1] , \Length_15__N_317[6] , 
            \Length_7__N_361[2] , \Length_7__N_361[4] , \Length_7__N_361[5] , 
            n3217, PHI2_N_558_enable_21, AOE, nIO2_c, n3226, D_out_7, 
            RegRD, BA_c, nAOE_N_590, n6, n2252, A_out_1, n7, A_out_3, 
            nWEDMA_c, nDOE_N_595, IntEnable, EndOfBlock, EndOfBlockMask, 
            IRQ, VerifyErrMask, n3222, PHI2_N_558_enable_19, ExecuteEN, 
            A_out_0, n8, A_out_12, A_out_9, A_out_14, A_out_15, 
            DOE, A_out_4, nWEDMA_N_9, n3208) /* synthesis syn_module_defined=1 */ ;
    input nWE_c;
    input n3235;
    input n3221;
    output PHI2_N_558_enable_69;
    input A_out_2;
    input n3232;
    output n3220;
    output n3218;
    input nFF00Decode;
    output Execute;
    output n3241;
    input n1420;
    input n3240;
    input [1:0]XferType;
    output PHI2_N_558_enable_18;
    input n3227;
    output n3206;
    input \Length_7__N_361[1] ;
    input [15:0]LengthWritten;
    input n3215;
    output [7:0]n1034;
    input \CA[0] ;
    input \CAWritten[0] ;
    output n2771;
    input n3216;
    output PHI2_N_558_enable_74;
    input A_out_11;
    input A_out_10;
    input A_out_13;
    input A_out_8;
    input \Length_15__N_317[5] ;
    output [7:0]n1035;
    input \Length_7__N_361[6] ;
    input \REUA[8] ;
    input \REUAWritten[8] ;
    output n2754;
    input \Length_15__N_317[4] ;
    input \Length_7__N_361[7] ;
    input \Length_15__N_317[2] ;
    input \Length_15__N_317[3] ;
    input \Length_15__N_317[7] ;
    input \Length_7__N_361[0] ;
    input \Length_7__N_361[3] ;
    input \REUA[0] ;
    input \REUAWritten[0] ;
    output n2737;
    input \CA[8] ;
    input \CAWritten[8] ;
    output n2720;
    input \Length_15__N_317[0] ;
    input \Length_15__N_317[1] ;
    input \Length_15__N_317[6] ;
    input \Length_7__N_361[2] ;
    input \Length_7__N_361[4] ;
    input \Length_7__N_361[5] ;
    input n3217;
    output PHI2_N_558_enable_21;
    input AOE;
    input nIO2_c;
    output n3226;
    input D_out_7;
    output RegRD;
    input BA_c;
    output nAOE_N_590;
    input n6;
    output n2252;
    input A_out_1;
    input n7;
    input A_out_3;
    input nWEDMA_c;
    output nDOE_N_595;
    input IntEnable;
    input EndOfBlock;
    input EndOfBlockMask;
    output IRQ;
    input VerifyErrMask;
    output n3222;
    output PHI2_N_558_enable_19;
    input ExecuteEN;
    input A_out_0;
    input n8;
    input A_out_12;
    input A_out_9;
    input A_out_14;
    input A_out_15;
    output DOE;
    input A_out_4;
    input nWEDMA_N_9;
    output n3208;
    
    
    wire n3231, Execute_N_605, Execute_N_602, n15, n2967, n2971, 
        IRQOut_N_448, n4, n10, n16;
    
    LUT4 i2663_2_lut_2_lut_3_lut_4_lut (.A(n3231), .B(nWE_c), .C(n3235), 
         .D(n3221), .Z(PHI2_N_558_enable_69)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i2663_2_lut_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i2_3_lut_rep_46_4_lut (.A(n3231), .B(nWE_c), .C(A_out_2), .D(n3232), 
         .Z(n3220)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_46_4_lut.init = 16'hffef;
    LUT4 i1888_2_lut_rep_44_3_lut_4_lut (.A(n3231), .B(nWE_c), .C(n3232), 
         .D(A_out_2), .Z(n3218)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1888_2_lut_rep_44_3_lut_4_lut.init = 16'hfffe;
    PFUMX Execute_I_0 (.BLUT(Execute_N_605), .ALUT(Execute_N_602), .C0(nFF00Decode), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=7, LSE_RCOL=15, LSE_LLINE=101, LSE_RLINE=118 */ ;
    LUT4 i1_2_lut_rep_36_3_lut_4_lut_4_lut (.A(n3241), .B(n1420), .C(n3240), 
         .D(XferType[1]), .Z(PHI2_N_558_enable_18)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_rep_36_3_lut_4_lut_4_lut.init = 16'h1011;
    LUT4 i1_2_lut_rep_32_3_lut_4_lut_4_lut (.A(n3241), .B(n3235), .C(n1420), 
         .D(n3227), .Z(n3206)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_rep_32_3_lut_4_lut_4_lut.init = 16'hcdcc;
    LUT4 mux_707_i2_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[1] ), 
         .C(LengthWritten[1]), .D(n3215), .Z(n1034[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2428_3_lut_4_lut_4_lut (.A(n3241), .B(\CA[0] ), .C(\CAWritten[0] ), 
         .D(n3215), .Z(n2771)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i2428_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n3241), .B(n3235), .C(n3216), 
         .D(n3215), .Z(PHI2_N_558_enable_74)) /* synthesis lut_function=(A (B+!(C))+!A (B+((D)+!C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hdfcf;
    LUT4 i6_4_lut (.A(A_out_11), .B(A_out_10), .C(A_out_13), .D(A_out_8), 
         .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 mux_708_i6_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[5] ), 
         .C(LengthWritten[13]), .D(n3215), .Z(n1035[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_707_i7_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[6] ), 
         .C(LengthWritten[6]), .D(n3215), .Z(n1034[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2411_3_lut_4_lut_4_lut (.A(n3241), .B(\REUA[8] ), .C(\REUAWritten[8] ), 
         .D(n3215), .Z(n2754)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i2411_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_708_i5_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[4] ), 
         .C(LengthWritten[12]), .D(n3215), .Z(n1035[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_707_i8_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[7] ), 
         .C(LengthWritten[7]), .D(n3215), .Z(n1034[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_708_i3_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[2] ), 
         .C(LengthWritten[10]), .D(n3215), .Z(n1035[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_708_i4_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[3] ), 
         .C(LengthWritten[11]), .D(n3215), .Z(n1035[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_708_i8_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[7] ), 
         .C(LengthWritten[15]), .D(n3215), .Z(n1035[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_707_i1_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[0] ), 
         .C(LengthWritten[0]), .D(n3215), .Z(n1034[0])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i1_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_707_i4_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[3] ), 
         .C(LengthWritten[3]), .D(n3215), .Z(n1034[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2394_3_lut_4_lut_4_lut (.A(n3241), .B(\REUA[0] ), .C(\REUAWritten[0] ), 
         .D(n3215), .Z(n2737)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i2394_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2377_3_lut_4_lut_4_lut (.A(n3241), .B(\CA[8] ), .C(\CAWritten[8] ), 
         .D(n3215), .Z(n2720)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i2377_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_708_i1_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[0] ), 
         .C(LengthWritten[8]), .D(n3215), .Z(n1035[0])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i1_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_708_i2_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[1] ), 
         .C(LengthWritten[9]), .D(n3215), .Z(n1035[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_708_i7_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_15__N_317[6] ), 
         .C(LengthWritten[14]), .D(n3215), .Z(n1035[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_708_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_707_i3_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[2] ), 
         .C(LengthWritten[2]), .D(n3215), .Z(n1034[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_707_i5_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[4] ), 
         .C(LengthWritten[4]), .D(n3215), .Z(n1034[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_707_i6_3_lut_4_lut_4_lut (.A(n3241), .B(\Length_7__N_361[5] ), 
         .C(LengthWritten[5]), .D(n3215), .Z(n1034[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam mux_707_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 i2598_2_lut_3_lut_4_lut_4_lut (.A(n3241), .B(n3217), .C(n1420), 
         .D(n3227), .Z(PHI2_N_558_enable_21)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i2598_2_lut_3_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 i1863_2_lut_rep_57 (.A(AOE), .B(nIO2_c), .Z(n3231)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1863_2_lut_rep_57.init = 16'heeee;
    LUT4 i1865_2_lut_rep_52_3_lut (.A(AOE), .B(nIO2_c), .C(nWE_c), .Z(n3226)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1865_2_lut_rep_52_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut (.A(AOE), .B(nIO2_c), .C(n3221), .D(D_out_7), 
         .Z(Execute_N_602)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 RegCS_I_0_34_2_lut_3_lut (.A(AOE), .B(nIO2_c), .C(nWE_c), .Z(RegRD)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_34_2_lut_3_lut.init = 16'h1010;
    LUT4 i2685_2_lut (.A(AOE), .B(BA_c), .Z(nAOE_N_590)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(37[16:29])
    defparam i2685_2_lut.init = 16'h2222;
    LUT4 i2596_4_lut (.A(n6), .B(n2252), .C(n2967), .D(A_out_1), .Z(n2971)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2596_4_lut.init = 16'hfffe;
    LUT4 i2592_2_lut (.A(n7), .B(A_out_3), .Z(n2967)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2592_2_lut.init = 16'heeee;
    LUT4 RegRD_I_0_4_lut (.A(RegRD), .B(BA_c), .C(AOE), .D(nWEDMA_c), 
         .Z(nDOE_N_595)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (((D)+!C)+!B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(42[17:56])
    defparam RegRD_I_0_4_lut.init = 16'hf535;
    LUT4 i2700_4_lut (.A(IntEnable), .B(EndOfBlock), .C(IRQOut_N_448), 
         .D(EndOfBlockMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(46[16:20])
    defparam i2700_4_lut.init = 16'h575f;
    LUT4 i2694_2_lut_rep_67 (.A(AOE), .B(BA_c), .Z(n3241)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i2694_2_lut_rep_67.init = 16'h7777;
    LUT4 VerifyErr_I_0_2_lut_3_lut_3_lut_4_lut (.A(AOE), .B(BA_c), .C(n3217), 
         .D(VerifyErrMask), .Z(IRQOut_N_448)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam VerifyErr_I_0_2_lut_3_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_rep_48_4_lut (.A(n3231), .B(nWE_c), .C(n2252), .D(A_out_3), 
         .Z(n3222)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_48_4_lut.init = 16'h0100;
    LUT4 i918_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(AOE), .B(BA_c), .C(n3217), 
         .D(n3215), .Z(PHI2_N_558_enable_19)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i918_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut (.A(ExecuteEN), .B(A_out_0), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i7_4_lut (.A(n8), .B(A_out_12), .C(A_out_9), .D(n10), .Z(n16)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_adj_131 (.A(A_out_14), .B(A_out_15), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_131.init = 16'h8888;
    LUT4 nWE_I_0_35_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(AOE), .Z(DOE)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(40[15:33])
    defparam nWE_I_0_35_3_lut.init = 16'hc5c5;
    LUT4 i1890_2_lut (.A(A_out_2), .B(A_out_4), .Z(n2252)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1890_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n15), .B(n2971), .C(n4), .D(n16), .Z(Execute_N_605)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_34_4_lut_4_lut (.A(n3241), .B(XferType[0]), .C(nWEDMA_N_9), 
         .D(XferType[1]), .Z(n3208)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/glue.v(38[17:29])
    defparam i1_2_lut_rep_34_4_lut_4_lut.init = 16'h0400;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (RA_c_11, C8M_c, RDCMDr, C8M_N_498, C8M_N_498_enable_4, 
            RAMWR, PHI2Start_N_550, n3443, RBA_c_0, n262, \REUA[22] , 
            RA_c_9, INITCMDr, WRCMDr, nRESET_c, RAMRD, PHI2_c, RA_c_8, 
            \REUA[18] , \REUA[9] , RDOE_N_553, nRAS_c, nCAS_c, nRWE_c, 
            nRWE_N_525, CKE_c, DQMH_c, n3237, \REUA[0] , RAMRDD, 
            RDD_7__N_507, RD_out_0, DQML_c, A_0__N_539, WRDr, PHI2_N_558, 
            D_out_0, \REUA[17] , \REUA[8] , \REUA[16] , \REUA[7] , 
            \REUA[15] , \REUA[6] , C8M_c_enable_22, n3238, n3230, 
            \REUA[21] , RA_c_7, RA_c_6, RA_c_5, RA_c_4, n470, RA_c_3, 
            n471, n3236, n1225, n12, RA_c_2, RCLK_c, RBA_c_1, 
            \REUA[23] , \REUA[12] , \REUA[3] , \REUA[11] , \REUA[2] , 
            RA_c_1, C8M_c_enable_20, nCS_c, nCS_N_509, RA_c_0, RA_c_10, 
            n494, RD_out_1, RD_out_2, RD_out_3, RD_out_4, RD_out_5, 
            RD_out_6, RD_out_7, D_out_1, D_out_2, D_out_3, D_out_4, 
            D_out_5, D_out_6, D_out_7, \REUA[10] , \REUA[1] , \REUA[19] ) /* synthesis syn_module_defined=1 */ ;
    output RA_c_11;
    input C8M_c;
    output RDCMDr;
    input C8M_N_498;
    output C8M_N_498_enable_4;
    input RAMWR;
    output PHI2Start_N_550;
    input n3443;
    output RBA_c_0;
    output n262;
    input \REUA[22] ;
    output RA_c_9;
    output INITCMDr;
    output WRCMDr;
    input nRESET_c;
    input RAMRD;
    input PHI2_c;
    output RA_c_8;
    input \REUA[18] ;
    input \REUA[9] ;
    output RDOE_N_553;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    input nRWE_N_525;
    output CKE_c;
    output DQMH_c;
    input n3237;
    input \REUA[0] ;
    output [7:0]RAMRDD;
    output RDD_7__N_507;
    input RD_out_0;
    output DQML_c;
    input A_0__N_539;
    output [7:0]WRDr;
    input PHI2_N_558;
    input D_out_0;
    input \REUA[17] ;
    input \REUA[8] ;
    input \REUA[16] ;
    input \REUA[7] ;
    input \REUA[15] ;
    input \REUA[6] ;
    output C8M_c_enable_22;
    input n3238;
    output n3230;
    input \REUA[21] ;
    output RA_c_7;
    output RA_c_6;
    output RA_c_5;
    output RA_c_4;
    input n470;
    output RA_c_3;
    input n471;
    output n3236;
    output n1225;
    output n12;
    output RA_c_2;
    output RCLK_c;
    output RBA_c_1;
    input \REUA[23] ;
    input \REUA[12] ;
    input \REUA[3] ;
    input \REUA[11] ;
    input \REUA[2] ;
    output RA_c_1;
    input C8M_c_enable_20;
    output nCS_c;
    input nCS_N_509;
    output RA_c_0;
    output RA_c_10;
    input n494;
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
    input \REUA[10] ;
    input \REUA[1] ;
    input \REUA[19] ;
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_498 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(41[12:17])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_558 /* synthesis is_inv_clock=1 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire C8M_c_enable_21, n2932, n3;
    wire [4:0]nRESETr;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(34[12:19])
    
    wire n3242, n6, PLLLock_N_545, C8M_c_enable_17;
    wire [7:0]n258;
    
    wire InitDone, C8M_c_enable_18, n1652;
    wire [11:0]n462;
    
    wire InitDone_N_530, PLLLock, WRCMDr_N_514, CP1, CP1_N_541, CP2;
    wire [1:0]PHI2r;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(41[12:17])
    
    wire n1649, nRAS_N_521, nCAS_N_523, CKE_N_534, RDOE, n3239;
    
    FD1P3AX RA__i12 (.D(n2932), .SP(C8M_c_enable_21), .CK(C8M_c), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i12.GSR = "ENABLED";
    FD1P3IX RDCMDr_120 (.D(RAMWR), .SP(C8M_N_498_enable_4), .CD(n3), .CK(C8M_N_498), 
            .Q(RDCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(67[9] 74[5])
    defparam RDCMDr_120.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(nRESETr[3]), .B(n3242), .C(nRESETr[4]), .D(n6), 
         .Z(PLLLock_N_545)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(43[9:51])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(nRESETr[2]), .B(nRESETr[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(43[9:51])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3IX S_FSM_i1 (.D(n258[7]), .SP(C8M_c_enable_17), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(PHI2Start_N_550));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i1.GSR = "ENABLED";
    FD1P3AX InitDone_122 (.D(n3443), .SP(C8M_N_498_enable_4), .CK(C8M_N_498), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(67[9] 74[5])
    defparam InitDone_122.GSR = "ENABLED";
    FD1P3IX RBA__i1 (.D(\REUA[22] ), .SP(C8M_c_enable_18), .CD(n262), 
            .CK(C8M_c), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RBA__i1.GSR = "ENABLED";
    FD1P3JX RA__i10 (.D(n462[9]), .SP(C8M_c_enable_21), .PD(n1652), .CK(C8M_c), 
            .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i10.GSR = "ENABLED";
    FD1P3AX INITCMDr_119 (.D(InitDone_N_530), .SP(C8M_N_498_enable_4), .CK(C8M_N_498), 
            .Q(INITCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(67[9] 74[5])
    defparam INITCMDr_119.GSR = "ENABLED";
    FD1P3AX PLLLock_117 (.D(n3443), .SP(PLLLock_N_545), .CK(C8M_N_498), 
            .Q(PLLLock)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(48[9] 52[5])
    defparam PLLLock_117.GSR = "ENABLED";
    FD1P3AX WRCMDr_121 (.D(WRCMDr_N_514), .SP(C8M_N_498_enable_4), .CK(C8M_N_498), 
            .Q(WRCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(67[9] 74[5])
    defparam WRCMDr_121.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i0.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(RAMRD), .B(InitDone), .C(RAMWR), .Z(WRCMDr_N_514)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(67[9] 74[5])
    defparam i2_3_lut.init = 16'h0808;
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_541)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(30[37:41])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    FD1S3AX CP2_113 (.D(CP1_N_541), .CK(C8M_N_498), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(30[9:46])
    defparam CP2_113.GSR = "ENABLED";
    FD1S3AX PHI2r_0__115 (.D(PHI2_c), .CK(C8M_N_498), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(43[9:51])
    defparam PHI2r_0__115.GSR = "ENABLED";
    FD1P3IX RA__i9 (.D(n462[8]), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i9.GSR = "ENABLED";
    FD1S3AX PHI2r_1__116 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(44[9:55])
    defparam PHI2r_1__116.GSR = "ENABLED";
    LUT4 mux_215_i9_3_lut (.A(\REUA[18] ), .B(\REUA[9] ), .C(RDOE_N_553), 
         .Z(n462[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_215_i9_3_lut.init = 16'hcaca;
    LUT4 i1278_1_lut (.A(PLLLock), .Z(n1649)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(48[9] 52[5])
    defparam i1278_1_lut.init = 16'h5555;
    FD1S3JX nRAS_124 (.D(nRAS_N_521), .CK(C8M_c), .PD(n1649), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nRAS_124.GSR = "ENABLED";
    FD1S3JX nCAS_125 (.D(nCAS_N_523), .CK(C8M_c), .PD(n1649), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nCAS_125.GSR = "ENABLED";
    FD1S3JX nRWE_126 (.D(nRWE_N_525), .CK(C8M_c), .PD(n1649), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nRWE_126.GSR = "ENABLED";
    FD1S3JX CKE_127 (.D(CKE_N_534), .CK(C8M_c), .PD(n1649), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(77[9] 165[5])
    defparam CKE_127.GSR = "ENABLED";
    FD1S3JX DQMH_128 (.D(\REUA[0] ), .CK(C8M_c), .PD(n3237), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam DQMH_128.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1S3JX DQML_129 (.D(A_0__N_539), .CK(C8M_c), .PD(n3237), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam DQML_129.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_558), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3AX RDOE_134 (.D(RDOE_N_553), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(222[9:37])
    defparam RDOE_134.GSR = "ENABLED";
    FD1S3AX CP1_112 (.D(CP1_N_541), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(29[9:46])
    defparam CP1_112.GSR = "ENABLED";
    LUT4 mux_215_i8_3_lut (.A(\REUA[17] ), .B(\REUA[8] ), .C(RDOE_N_553), 
         .Z(n462[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_215_i8_3_lut.init = 16'hcaca;
    LUT4 mux_215_i7_3_lut (.A(\REUA[16] ), .B(\REUA[7] ), .C(RDOE_N_553), 
         .Z(n462[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_215_i7_3_lut.init = 16'hcaca;
    LUT4 mux_215_i6_3_lut (.A(\REUA[15] ), .B(\REUA[6] ), .C(RDOE_N_553), 
         .Z(n462[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_215_i6_3_lut.init = 16'hcaca;
    LUT4 i2707_3_lut_4_lut (.A(n258[5]), .B(n258[6]), .C(n258[2]), .D(n258[7]), 
         .Z(C8M_c_enable_22)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2707_3_lut_4_lut.init = 16'h0001;
    LUT4 i22_3_lut_4_lut (.A(n258[5]), .B(n258[6]), .C(n3238), .D(n3239), 
         .Z(CKE_N_534)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i22_3_lut_4_lut.init = 16'hf101;
    LUT4 i2586_2_lut_rep_56 (.A(RDOE_N_553), .B(n262), .Z(n3230)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2586_2_lut_rep_56.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(RDOE_N_553), .B(n262), .C(\REUA[21] ), .Z(n2932)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    FD1P3IX RA__i8 (.D(n462[7]), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i8.GSR = "ENABLED";
    FD1P3IX RA__i7 (.D(n462[6]), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i7.GSR = "ENABLED";
    FD1P3JX RA__i6 (.D(n462[5]), .SP(C8M_c_enable_21), .PD(n1652), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i6.GSR = "ENABLED";
    FD1P3IX RA__i5 (.D(n470), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i5.GSR = "ENABLED";
    FD1P3IX RA__i4 (.D(n471), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_62 (.A(RDD_7__N_507), .B(n262), .Z(n3236)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_62.init = 16'heeee;
    LUT4 i878_1_lut (.A(RDOE), .Z(n1225)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(223[9:11])
    defparam i878_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_rep_49_4_lut (.A(RDD_7__N_507), .B(n262), .C(C8M_c_enable_22), 
         .D(RDOE_N_553), .Z(C8M_c_enable_17)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_49_4_lut.init = 16'hffef;
    LUT4 i2703_3_lut_4_lut (.A(RDD_7__N_507), .B(n262), .C(n3239), .D(PHI2Start_N_550), 
         .Z(nRAS_N_521)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i2703_3_lut_4_lut.init = 16'h0111;
    LUT4 i1_2_lut_rep_65 (.A(RDCMDr), .B(WRCMDr), .Z(n3239)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_65.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(RDCMDr), .B(WRCMDr), .C(PHI2Start_N_550), 
         .D(RDOE_N_553), .Z(n12)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i2710_3_lut_4_lut (.A(RDCMDr), .B(WRCMDr), .C(RDOE_N_553), .D(n262), 
         .Z(nCAS_N_523)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i2710_3_lut_4_lut.init = 16'h001f;
    FD1P3IX RA__i3 (.D(n462[2]), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i3.GSR = "ENABLED";
    FD1P3IX S_FSM_i3 (.D(RDOE_N_553), .SP(C8M_c_enable_17), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n258[2]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1P3IX S_FSM_i4 (.D(n258[2]), .SP(C8M_c_enable_17), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(RDD_7__N_507));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i4.GSR = "ENABLED";
    FD1P3IX S_FSM_i5 (.D(RDD_7__N_507), .SP(C8M_c_enable_17), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n262));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i5.GSR = "ENABLED";
    FD1P3IX S_FSM_i6 (.D(n262), .SP(C8M_c_enable_17), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n258[5]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i6.GSR = "ENABLED";
    FD1P3IX S_FSM_i7 (.D(n258[5]), .SP(C8M_c_enable_17), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n258[6]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i7.GSR = "ENABLED";
    FD1P3IX S_FSM_i8 (.D(n258[6]), .SP(C8M_c_enable_17), .CD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(n258[7]));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i8.GSR = "ENABLED";
    LUT4 CP1_I_0_150_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(31[16:25])
    defparam CP1_I_0_150_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_68 (.A(PHI2r[0]), .B(PHI2r[1]), .Z(n3242)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(43[9:51])
    defparam i1_2_lut_rep_68.init = 16'h4444;
    LUT4 i2_3_lut_rep_50_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(PLLLock), 
         .D(PHI2Start_N_550), .Z(C8M_N_498_enable_4)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(43[9:51])
    defparam i2_3_lut_rep_50_4_lut.init = 16'h4000;
    FD1P3IX RBA__i2 (.D(\REUA[23] ), .SP(C8M_c_enable_18), .CD(n262), 
            .CK(C8M_c), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i1.GSR = "ENABLED";
    LUT4 mux_215_i3_3_lut (.A(\REUA[12] ), .B(\REUA[3] ), .C(RDOE_N_553), 
         .Z(n462[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_215_i3_3_lut.init = 16'hcaca;
    LUT4 mux_215_i2_3_lut (.A(\REUA[11] ), .B(\REUA[2] ), .C(RDOE_N_553), 
         .Z(n462[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_215_i2_3_lut.init = 16'hcaca;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(35[9] 38[5])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1P3IX RA__i2 (.D(n462[1]), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i2.GSR = "ENABLED";
    FD1P3JX S_FSM_i2 (.D(PHI2Start_N_550), .SP(C8M_c_enable_20), .PD(C8M_N_498_enable_4), 
            .CK(C8M_c), .Q(RDOE_N_553));   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam S_FSM_i2.GSR = "ENABLED";
    FD1S3JX nCS_123 (.D(nCS_N_509), .CK(C8M_c), .PD(n1649), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(77[9] 165[5])
    defparam nCS_123.GSR = "ENABLED";
    FD1P3IX RA__i1 (.D(n462[0]), .SP(C8M_c_enable_21), .CD(n1652), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i1.GSR = "ENABLED";
    FD1P3AX RA__i11 (.D(n494), .SP(C8M_c_enable_22), .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(167[9] 211[5])
    defparam RA__i11.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_507), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(214[9:54])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_558), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_558), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_558), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_558), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_558), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_558), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_558), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=73, LSE_RLINE=83 */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(218[9:47])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 mux_215_i1_3_lut (.A(\REUA[10] ), .B(\REUA[1] ), .C(RDOE_N_553), 
         .Z(n462[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam mux_215_i1_3_lut.init = 16'hcaca;
    LUT4 InitDone_I_0_1_lut (.A(InitDone), .Z(InitDone_N_530)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(69[16:25])
    defparam InitDone_I_0_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_rep_45 (.A(RDD_7__N_507), .B(C8M_c_enable_22), .C(n262), 
         .Z(C8M_c_enable_21)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i1_3_lut_rep_45.init = 16'hc4c4;
    LUT4 i1_2_lut_adj_130 (.A(n262), .B(PHI2Start_N_550), .Z(C8M_c_enable_18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(59[23:26])
    defparam i1_2_lut_adj_130.init = 16'heeee;
    LUT4 i1277_2_lut_2_lut (.A(C8M_c_enable_22), .B(n262), .Z(n1652)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1277_2_lut_2_lut.init = 16'h8888;
    LUT4 i1883_2_lut (.A(\REUA[19] ), .B(RDOE_N_553), .Z(n462[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(168[3] 209[10])
    defparam i1883_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut (.A(n3242), .B(PHI2Start_N_550), .C(PLLLock), 
         .D(InitDone), .Z(n3)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/zanek/documents/github/gw4302/cpld/ram.v(43[9:51])
    defparam i1_2_lut_4_lut.init = 16'h0080;
    
endmodule
