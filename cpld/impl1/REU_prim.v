// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Mon Apr 25 04:29:46 2022
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
    wire C8M_N_515 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    wire PHI2_N_556 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nIO2_c, 
        nAOE_c, nRWOE_c, DDIR_c, nIRQ_c, RCLK_c, nCS_c, nRAS_c, 
        nCAS_c, nRWE_c, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, 
        RA_c_5, RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, 
        DQML_c;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, VerifyErr, DOE, Execute, 
        nWEDMA_N_13;
    wire [7:0]D_7__N_1;
    
    wire IntPending, ExecuteEN, AutoloadEN;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(50[12:18])
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(60[11:18])
    
    wire IncCA, n383, n3855, n3854, n3853, n3852, n1437, n6, 
        n3851, n3161, n3412, n3576, n3850, CAOut_7__N_193, n3849, 
        n3848, n3547, CAOut_15__N_148, CAOut_15__N_146, n3847, n3845, 
        n4, REUAOut_7__N_105, PHI2_N_556_enable_76, n6_adj_643, n8, 
        REUAOut_15__N_60;
    wire [7:0]REUAOut_15__N_57;
    
    wire n1557, n3843, REUAOut_15__N_54, REUAOut_14__N_66, REUAOut_13__N_71, 
        REUAOut_12__N_76, REUAOut_11__N_81, REUAOut_10__N_86, REUAOut_9__N_91, 
        REUAOut_8__N_96, n4057, n3842, n3837, n3836, n3841, Length1_N_357, 
        PHI2_N_556_enable_69, n7, Execute_N_456, Execute_N_454, n3840;
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(188[11:15])
    
    wire A_0__N_545, XferVerify, SwapState;
    wire [2:1]nRESETr_adj_658;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire n30, NextREUA_N_622, n3839, nDOE_N_632, n598, n3429, n3835, 
        n4066, n3833, n3832, n3877, n3874, n559, n3873, n27, 
        PHI2_N_556_enable_45, n26, n3824, n3872, PHI2_N_556_enable_12, 
        n3817, n18, n3387, n17, n3869, D_out_7, D_out_6, D_out_5, 
        D_out_4, D_out_3, D_out_2, n3802, D_out_1, D_out_0, A_out_15, 
        A_out_14, A_out_13, A_out_12, A_out_11, A_out_10, n3797, 
        A_out_9, A_out_8, A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, 
        RD_out_7, RD_out_6, RD_out_5, n1135, RD_out_4, RD_out_3, 
        RD_out_2, RD_out_1, RD_out_0, n3528, n4067, n3831, PHI2_N_556_enable_78, 
        n3162, n4065, C8M_c_enable_12, n2230, n3865, n3864, n3863, 
        n3862, n3859;
    
    VHI i2 (.Z(VCC_net));
    INV i3531 (.A(PHI2_c), .Z(PHI2_N_556));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 i3302_2_lut_3_lut_4_lut (.A(A_out_3), .B(n3874), .C(n4066), .D(n3859), 
         .Z(PHI2_N_556_enable_69)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i3302_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(ExecuteEN), .B(n7), .Z(n17)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i14_4_lut (.A(n27), .B(A_out_15), .C(n3547), .D(A_out_4), .Z(n30)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i14_4_lut.init = 16'h0008;
    LUT4 i11_4_lut (.A(A_out_14), .B(A_out_8), .C(A_out_9), .D(A_out_13), 
         .Z(n27)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    LUT4 i3323_3_lut_rep_83 (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_12)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i3323_3_lut_rep_83.init = 16'h1313;
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 i2133_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n383)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i2133_2_lut_3_lut.init = 16'hfdfd;
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 i10_4_lut (.A(nWE_c), .B(A_out_12), .C(n8), .D(A_out_10), .Z(n26)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i10_4_lut.init = 16'h0400;
    LUT4 i1213_2_lut_4_lut (.A(S[0]), .B(S[1]), .C(S[2]), .D(RA_c_9), 
         .Z(n1557)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1213_2_lut_4_lut.init = 16'hec00;
    LUT4 i2_2_lut (.A(A_out_3), .B(A_out_11), .Z(n18)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3817), .B(RAMRDD[4]), .C(DMA), .D(n2230), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n3824), .B(RAMRDD[5]), .C(DMA), .D(n2230), 
         .Z(D_7__N_1[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n559), .B(RAMRDD[7]), .C(DMA), .D(n2230), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), .Z(Execute_N_456)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3850), .B(n3865), .C(D_out_4), .D(D_out_7), 
         .Z(Execute_N_454)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(n3850), .B(n3865), .C(n4066), 
         .D(D_out_7), .Z(n3412)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'h0200;
    LUT4 i2_3_lut_4_lut (.A(n3850), .B(n3865), .C(D_out_4), .D(n4066), 
         .Z(n3528)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i2_3_lut_4_lut.init = 16'h0002;
    BB A_pad_15 (.I(CA[15]), .T(n3877), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 mux_194_i3_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_2), .D(REUAOut_15__N_57[2]), 
         .Z(REUAOut_10__N_86)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i3_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_194_i4_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_3), .D(REUAOut_15__N_57[3]), 
         .Z(REUAOut_11__N_81)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i4_3_lut_4_lut.init = 16'hfd20;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 mux_194_i5_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_4), .D(REUAOut_15__N_57[4]), 
         .Z(REUAOut_12__N_76)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_194_i6_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_5), .D(REUAOut_15__N_57[5]), 
         .Z(REUAOut_13__N_71)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_194_i7_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_6), .D(REUAOut_15__N_57[6]), 
         .Z(REUAOut_14__N_66)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_194_i8_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_7), .D(REUAOut_15__N_57[7]), 
         .Z(REUAOut_15__N_54)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i8_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_194_i2_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_1), .D(REUAOut_15__N_57[1]), 
         .Z(REUAOut_9__N_91)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_194_i1_3_lut_4_lut (.A(n3850), .B(n1437), .C(D_out_0), .D(REUAOut_15__N_57[0]), 
         .Z(REUAOut_8__N_96)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam mux_194_i1_3_lut_4_lut.init = 16'hfd20;
    BB A_pad_14 (.I(CA[14]), .T(n3877), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3877), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n3877), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3877), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3877), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3877), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3877), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3877), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3877), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3877), .B(A[5]), .O(n6_adj_643));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3877), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3877), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3877), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3877), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3877), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1135), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1135), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1135), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1135), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1135), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1135), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1135), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1135), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n3877), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_c), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n3877), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(nRWOE_c), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_N_632), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
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
    LUT4 DF01WR_I_0_843_2_lut_rep_60_3_lut_4_lut (.A(A_out_1), .B(n3855), 
         .C(PHI2_c), .D(n3865), .Z(n3843)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam DF01WR_I_0_843_2_lut_rep_60_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_3_lut_4_lut (.A(A_out_1), .B(n3855), .C(n3863), .D(n4066), 
         .Z(PHI2_N_556_enable_12)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff04;
    LUT4 i1_2_lut_rep_61_3_lut_4_lut (.A(A_out_1), .B(n3855), .C(n4066), 
         .D(n3865), .Z(PHI2_N_556_enable_76)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_61_3_lut_4_lut.init = 16'hf0f4;
    LUT4 i373_2_lut_3_lut_4_lut (.A(A_out_1), .B(n3855), .C(n4066), .D(n1437), 
         .Z(PHI2_N_556_enable_45)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;
    defparam i373_2_lut_3_lut_4_lut.init = 16'hf0f4;
    REUReg reureg (.Length({Length}), .GND_net(GND_net), .n3797(n3797), 
           .\S[0] (S[0]), .n598(n598), .CA({CA}), .PHI2_N_556(PHI2_N_556), 
           .RegReset(RegReset), .\REUA[0] (REUA[0]), .\REUA[8] (REUA[8]), 
           .A_out_0(A_out_0), .n4067(n4067), .\nRESETr[1] (nRESETr_adj_658[1]), 
           .BA_c(BA_c), .n3836(n3836), .\REUA[16] (REUA[16]), .\REUA[7] (REUA[7]), 
           .A_out_1(A_out_1), .DMA(DMA), .n3835(n3835), .PHI2_N_556_enable_76(PHI2_N_556_enable_76), 
           .D_out_2(D_out_2), .PHI2_N_556_enable_78(PHI2_N_556_enable_78), 
           .n3429(n3429), .D_out_1(D_out_1), .IntPending(IntPending), 
           .n3576(n3576), .D_out_0(D_out_0), .\REUA[12] (REUA[12]), .D_out_6(D_out_6), 
           .\REUA[18] (REUA[18]), .n3833(n3833), .n4066(n4066), .A_0__N_545(A_0__N_545), 
           .PHI2_N_556_enable_12(PHI2_N_556_enable_12), .D_out_7(D_out_7), 
           .D_out_5(D_out_5), .D_out_4(D_out_4), .n3849(n3849), .A_out_3(A_out_3), 
           .AutoloadEN(AutoloadEN), .PHI2_N_556_enable_45(PHI2_N_556_enable_45), 
           .D_out_3(D_out_3), .\REUA[6] (REUA[6]), .\REUA[5] (REUA[5]), 
           .\REUA[3] (REUA[3]), .\REUA[2] (REUA[2]), .\REUA[1] (REUA[1]), 
           .\REUA[15] (REUA[15]), .n433({REUAOut_15__N_54, REUAOut_14__N_66, 
           REUAOut_13__N_71, REUAOut_12__N_76, REUAOut_11__N_81, REUAOut_10__N_86, 
           REUAOut_9__N_91, REUAOut_8__N_96}), .\REUA[17] (REUA[17]), 
           .\REUA[10] (REUA[10]), .n559(n559), .PHI2_N_556_enable_69(PHI2_N_556_enable_69), 
           .IncMode({IncMode[1], Open_0}), .\REUA[9] (REUA[9]), .\REUA[11] (REUA[11]), 
           .\REUA[14] (REUA[14]), .A_out_2(A_out_2), .n3872(n3872), .n3874(n3874), 
           .nWE_c(nWE_c), .n3873(n3873), .n1437(n1437), .n3851(n3851), 
           .A_out_4(A_out_4), .n3863(n3863), .n3865(n3865), .n3843(n3843), 
           .\XferType[0] (XferType[0]), .n3840(n3840), .n3839(n3839), 
           .n3869(n3869), .n3842(n3842), .SwapState(SwapState), .NextREUA_N_622(NextREUA_N_622), 
           .n3824(n3824), .XferVerify(XferVerify), .n3841(n3841), .n6(n6_adj_643), 
           .n3547(n3547), .n3528(n3528), .PHI2_c(PHI2_c), .n3852(n3852), 
           .Length1_N_357(Length1_N_357), .n2230(n2230), .\RAMRDD[6] (RAMRDD[6]), 
           .\D_7__N_1[6] (D_7__N_1[6]), .n3855(n3855), .n3859(n3859), 
           .REUAOut_15__N_60(REUAOut_15__N_60), .REUAOut_15__N_57({REUAOut_15__N_57}), 
           .n3853(n3853), .REUAOut_7__N_105(REUAOut_7__N_105), .n3848(n3848), 
           .n3862(n3862), .VerifyErr(VerifyErr), .CAOut_15__N_148(CAOut_15__N_148), 
           .CAOut_15__N_146(CAOut_15__N_146), .n3854(n3854), .CAOut_7__N_193(CAOut_7__N_193), 
           .IncCA(IncCA), .n3845(n3845), .ExecuteEN(ExecuteEN), .n3412(n3412), 
           .n3387(n3387), .n3832(n3832), .n4(n4), .Execute_N_454(Execute_N_454), 
           .Execute_N_456(Execute_N_456), .Execute(Execute), .n3864(n3864), 
           .n6_adj_1(n6), .n3847(n3847), .n4057(n4057), .\RAMRDD[0] (RAMRDD[0]), 
           .\D_7__N_1[0] (D_7__N_1[0]), .nIRQ_c(nIRQ_c), .n3817(n3817), 
           .n3831(n3831), .n3837(n3837), .n3802(n3802)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 68[11])
    LUT4 i2_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), .Z(n1437)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i2_3_lut.init = 16'hefef;
    LUT4 m1_lut (.Z(n4065)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    INV i3530 (.A(C8M_c), .Z(C8M_N_515));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3162), .S1(nWEDMA_N_13));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n3797), .B(RAMRDD[1]), .C(DMA), .D(n2230), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    DMASeq dmaseq (.DMA(DMA), .n3836(n3836), .n3852(n3852), .IntPending(IntPending), 
           .n3576(n3576), .SwapState(SwapState), .n3839(n3839), .\XferType[0] (XferType[0]), 
           .n3842(n3842), .n3869(n3869), .n3837(n3837), .nRESETr({Open_1, 
           nRESETr_adj_658[1]}), .n4066(n4066), .NextREUA_N_622(NextREUA_N_622), 
           .Execute(Execute), .RegReset(RegReset), .n4067(n4067), .PHI2_N_556(PHI2_N_556), 
           .nRESET_c(nRESET_c), .nWEDMA_c(nWEDMA_c), .n3835(n3835), .n3840(n3840), 
           .n3841(n3841), .RAMRD(RAMRD), .RAMWR(RAMWR), .n3877(n3877), 
           .BA_c(BA_c), .PHI2_c(PHI2_c), .nAOE_c(nAOE_c), .PHI2_N_556_enable_78(PHI2_N_556_enable_78), 
           .n3429(n3429), .Length({Length}), .n3387(n3387), .Length1_N_357(Length1_N_357), 
           .nWEDMA_N_13(nWEDMA_N_13), .n6(n6), .n3853(n3853), .AutoloadEN(AutoloadEN), 
           .REUAOut_15__N_60(REUAOut_15__N_60), .XferVerify(XferVerify), 
           .VerifyErr(VerifyErr), .n3849(n3849), .n3831(n3831), .n3848(n3848), 
           .REUAOut_7__N_105(REUAOut_7__N_105), .n3833(n3833), .n3854(n3854), 
           .CAOut_15__N_148(CAOut_15__N_148), .n3847(n3847), .n3832(n3832), 
           .n3845(n3845), .CAOut_7__N_193(CAOut_7__N_193)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(82[9] 96[40])
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n3161), .COUT(n3162));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n3161));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    VLO i1 (.Z(GND_net));
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n3802), .B(RAMRDD[2]), .C(DMA), .D(n2230), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n4057), .B(RAMRDD[3]), .C(DMA), .D(n2230), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    Glue glue (.\CA[3] (CA[3]), .\CA[0] (CA[0]), .n3873(n3873), .nWE_c(nWE_c), 
         .A_out_1(A_out_1), .A_out_0(A_out_0), .n3851(n3851), .\CA[1] (CA[1]), 
         .\CA[2] (CA[2]), .\IncMode[1] (IncMode[1]), .\CA[7] (CA[7]), 
         .\CA[6] (CA[6]), .\CA[5] (CA[5]), .n1437(n1437), .n3872(n3872), 
         .n3853(n3853), .n3869(n3869), .n3839(n3839), .SwapState(SwapState), 
         .\Length[0] (Length[0]), .n4(n4), .IncCA(IncCA), .DMA(DMA), 
         .BA_c(BA_c), .nRWOE_c(nRWOE_c), .nIO2_c(nIO2_c), .n3862(n3862), 
         .nWEDMA_c(nWEDMA_c), .DOE(DOE), .n3864(n3864), .n3855(n3855), 
         .\CA[4] (CA[4]), .n3837(n3837), .CAOut_15__N_146(CAOut_15__N_146), 
         .PHI2_c(PHI2_c), .nDOE_N_632(nDOE_N_632), .DDIR_c(DDIR_c), .n3865(n3865), 
         .n3852(n3852), .n3850(n3850), .n3859(n3859)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(98[7] 113[15])
    RAM ram (.S({S}), .RAMWR(RAMWR), .\REUA[12] (REUA[12]), .\REUA[3] (REUA[3]), 
        .\REUA[14] (REUA[14]), .\REUA[5] (REUA[5]), .\REUA[16] (REUA[16]), 
        .\REUA[7] (REUA[7]), .\REUA[17] (REUA[17]), .\REUA[8] (REUA[8]), 
        .\REUA[18] (REUA[18]), .\REUA[9] (REUA[9]), .C8M_c(C8M_c), .n4065(n4065), 
        .\REUA[10] (REUA[10]), .\REUA[1] (REUA[1]), .nRESET_c(nRESET_c), 
        .C8M_N_515(C8M_N_515), .PHI2_c(PHI2_c), .nCS_c(nCS_c), .nRAS_c(nRAS_c), 
        .nCAS_c(nCAS_c), .n383(n383), .nRWE_c(nRWE_c), .DQML_c(DQML_c), 
        .A_0__N_545(A_0__N_545), .RA_c_0(RA_c_0), .C8M_c_enable_12(C8M_c_enable_12), 
        .WRDr({WRDr}), .PHI2_N_556(PHI2_N_556), .D_out_0(D_out_0), .RAMRDD({RAMRDD}), 
        .RD_out_0(RD_out_0), .RA_c_1(RA_c_1), .RA_c_10(RA_c_10), .RA_c_5(RA_c_5), 
        .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), .n598(n598), .RA_c_4(RA_c_4), 
        .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), .RA_c_9(RA_c_9), 
        .n1557(n1557), .D_out_1(D_out_1), .D_out_2(D_out_2), .D_out_3(D_out_3), 
        .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), .D_out_7(D_out_7), 
        .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .DQMH_c(DQMH_c), .\REUA[0] (REUA[0]), .RAMRD(RAMRD), 
        .n1135(n1135), .RCLK_c(RCLK_c), .\REUA[11] (REUA[11]), .\REUA[2] (REUA[2]), 
        .\REUA[15] (REUA[15]), .\REUA[6] (REUA[6])) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(70[6] 80[32])
    
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

module REUReg (Length, GND_net, n3797, \S[0] , n598, CA, PHI2_N_556, 
            RegReset, \REUA[0] , \REUA[8] , A_out_0, n4067, \nRESETr[1] , 
            BA_c, n3836, \REUA[16] , \REUA[7] , A_out_1, DMA, n3835, 
            PHI2_N_556_enable_76, D_out_2, PHI2_N_556_enable_78, n3429, 
            D_out_1, IntPending, n3576, D_out_0, \REUA[12] , D_out_6, 
            \REUA[18] , n3833, n4066, A_0__N_545, PHI2_N_556_enable_12, 
            D_out_7, D_out_5, D_out_4, n3849, A_out_3, AutoloadEN, 
            PHI2_N_556_enable_45, D_out_3, \REUA[6] , \REUA[5] , \REUA[3] , 
            \REUA[2] , \REUA[1] , \REUA[15] , n433, \REUA[17] , \REUA[10] , 
            n559, PHI2_N_556_enable_69, IncMode, \REUA[9] , \REUA[11] , 
            \REUA[14] , A_out_2, n3872, n3874, nWE_c, n3873, n1437, 
            n3851, A_out_4, n3863, n3865, n3843, \XferType[0] , 
            n3840, n3839, n3869, n3842, SwapState, NextREUA_N_622, 
            n3824, XferVerify, n3841, n6, n3547, n3528, PHI2_c, 
            n3852, Length1_N_357, n2230, \RAMRDD[6] , \D_7__N_1[6] , 
            n3855, n3859, REUAOut_15__N_60, REUAOut_15__N_57, n3853, 
            REUAOut_7__N_105, n3848, n3862, VerifyErr, CAOut_15__N_148, 
            CAOut_15__N_146, n3854, CAOut_7__N_193, IncCA, n3845, 
            ExecuteEN, n3412, n3387, n3832, n4, Execute_N_454, Execute_N_456, 
            Execute, n3864, n6_adj_1, n3847, n4057, \RAMRDD[0] , 
            \D_7__N_1[0] , nIRQ_c, n3817, n3831, n3837, n3802) /* synthesis syn_module_defined=1 */ ;
    output [15:0]Length;
    input GND_net;
    output n3797;
    input \S[0] ;
    output n598;
    output [15:0]CA;
    input PHI2_N_556;
    input RegReset;
    output \REUA[0] ;
    output \REUA[8] ;
    input A_out_0;
    input n4067;
    input \nRESETr[1] ;
    input BA_c;
    output n3836;
    output \REUA[16] ;
    output \REUA[7] ;
    input A_out_1;
    input DMA;
    output n3835;
    input PHI2_N_556_enable_76;
    input D_out_2;
    output PHI2_N_556_enable_78;
    output n3429;
    input D_out_1;
    output IntPending;
    input n3576;
    input D_out_0;
    output \REUA[12] ;
    input D_out_6;
    output \REUA[18] ;
    input n3833;
    input n4066;
    output A_0__N_545;
    input PHI2_N_556_enable_12;
    input D_out_7;
    input D_out_5;
    input D_out_4;
    output n3849;
    input A_out_3;
    output AutoloadEN;
    input PHI2_N_556_enable_45;
    input D_out_3;
    output \REUA[6] ;
    output \REUA[5] ;
    output \REUA[3] ;
    output \REUA[2] ;
    output \REUA[1] ;
    output \REUA[15] ;
    input [7:0]n433;
    output \REUA[17] ;
    output \REUA[10] ;
    output n559;
    input PHI2_N_556_enable_69;
    output [1:0]IncMode;
    output \REUA[9] ;
    output \REUA[11] ;
    output \REUA[14] ;
    input A_out_2;
    output n3872;
    output n3874;
    input nWE_c;
    input n3873;
    input n1437;
    input n3851;
    input A_out_4;
    output n3863;
    output n3865;
    input n3843;
    output \XferType[0] ;
    output n3840;
    output n3839;
    input n3869;
    output n3842;
    input SwapState;
    input NextREUA_N_622;
    output n3824;
    output XferVerify;
    output n3841;
    input n6;
    output n3547;
    input n3528;
    input PHI2_c;
    input n3852;
    input Length1_N_357;
    output n2230;
    input \RAMRDD[6] ;
    output \D_7__N_1[6] ;
    input n3855;
    input n3859;
    input REUAOut_15__N_60;
    output [7:0]REUAOut_15__N_57;
    input n3853;
    input REUAOut_7__N_105;
    output n3848;
    input n3862;
    input VerifyErr;
    input CAOut_15__N_148;
    input CAOut_15__N_146;
    output n3854;
    input CAOut_7__N_193;
    input IncCA;
    output n3845;
    output ExecuteEN;
    input n3412;
    input n3387;
    input n3832;
    input n4;
    input Execute_N_454;
    input Execute_N_456;
    output Execute;
    input n3864;
    input n6_adj_1;
    output n3847;
    output n4057;
    input \RAMRDD[0] ;
    output \D_7__N_1[0] ;
    output nIRQ_c;
    output n3817;
    input n3831;
    input n3837;
    output n3802;
    
    wire PHI2_N_556 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n3266;
    wire [7:0]Length_15__N_307;
    
    wire n3796, n3795, n3876;
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [7:0]n436;
    wire [7:0]n481;
    
    wire PHI2_N_556_enable_84, Length_13__N_321, n6_c, REUAOut_18__N_39, 
        n3834, n3716;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(33[11:25])
    
    wire PHI2_N_556_enable_67, Length_1__N_385, EndOfBlock, PHI2_N_556_enable_59, 
        EndOfBlock_N_465;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(46[12:23])
    
    wire PHI2_N_556_enable_22;
    wire [7:0]n469;
    
    wire n3801, n3814, n3717, DF01Reserved6, n961;
    wire [2:0]n432;
    
    wire n1246;
    wire [7:0]n435;
    
    wire n1199, n1201, IntEnable, EndOfBlockMask;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(51[12:25])
    
    wire PHI2_N_556_enable_74, VerifyErrMask;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(41[12:21])
    
    wire PHI2_N_556_enable_46, n1205;
    wire [7:0]Length_7__N_354;
    wire [7:0]n950;
    
    wire n3812, n1212, n3811;
    wire [7:0]n434;
    
    wire FF00DecodeEN, n3816, n3818, n3819, Length_15__N_304, PHI2_N_556_enable_68, 
        n17, n15, n11, n12;
    wire [7:0]n493;
    
    wire n3793, n3794, n3719;
    wire [7:0]n538;
    
    wire n1210;
    wire [7:0]n505;
    
    wire n26, n3395, n3822;
    wire [2:0]n441;
    
    wire n4051, Length_14__N_316, n4052, n4053, n4055, n4054, n4056, 
        n3858, n1191;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reg.v(37[11:19])
    
    wire n3857, PHI2_N_556_enable_72;
    wire [1:0]IncMode_c;   // c:/users/garre/repos/gw4302/cpld/reg.v(60[11:18])
    
    wire PHI2_N_556_enable_77, Length_2__N_380, Length_7__N_351, Length_5__N_365, 
        Length_4__N_370, n3711, n3708, n3712, n16, n12_adj_639, 
        Length_6__N_360, Length_3__N_375, n1189, Length_0__N_390, n3791, 
        n3790, n3792, n3265, n3788, n3789, n3264, n3263, Fault, 
        Fault_N_470, n3709, n3706, n13, n3799, n3800, n3813, n3815, 
        n3820, n3821, n3710, n3766;
    wire [7:0]n949;
    
    wire n3823, PHI2_N_556_enable_83, n3270, Length_8__N_346, n3269, 
        n2501, Length_9__N_341, Length_10__N_336, Length_11__N_331, 
        n3846, Length_12__N_326, n18, n17_adj_641, n3268, n3267, 
        n3261, n3260, n3259, n3258, REUAOut_15__N_58, n3253;
    wire [7:0]REUAOut_7__N_104;
    
    wire n3252, n3251, n3250, IncREUA, n3245;
    wire [7:0]CAOut_15__N_145;
    
    wire n3244, n3243, n3242, n3237;
    wire [7:0]CAOut_7__N_192;
    
    wire n3236, n3235, n3234, n3798, n3707, n3718, n3715;
    wire [7:0]n453;
    
    wire IRQOut_N_452, n3713, n3714;
    
    CCU2D Length_15__I_0_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3266), .S0(Length_15__N_307[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_9.INJECT1_1 = "NO";
    PFUMX i3400 (.BLUT(n3796), .ALUT(n3795), .C0(n3876), .Z(n3797));
    LUT4 i2780_3_lut (.A(REUA[13]), .B(REUA[4]), .C(\S[0] ), .Z(n598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i2780_3_lut.init = 16'hcaca;
    FD1S3IX CA_7__598 (.D(n436[7]), .CK(PHI2_N_556), .CD(RegReset), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_7__598.GSR = "ENABLED";
    LUT4 mux_218_i1_3_lut (.A(\REUA[0] ), .B(\REUA[8] ), .C(A_out_0), 
         .Z(n481[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_218_i1_3_lut.init = 16'hcaca;
    FD1P3JX Length_13__691 (.D(Length_13__N_321), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_13__691.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_53 (.A(\nRESETr[1] ), .B(BA_c), .C(n6_c), .Z(n3836)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    defparam i1_3_lut_rep_53.init = 16'hd5d5;
    LUT4 i653_2_lut_rep_51 (.A(\REUA[16] ), .B(REUAOut_18__N_39), .Z(n3834)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam i653_2_lut_rep_51.init = 16'h8888;
    LUT4 CA_7__bdd_2_lut_3378 (.A(\REUA[7] ), .B(A_out_1), .Z(n3716)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_7__bdd_2_lut_3378.init = 16'heeee;
    LUT4 i3312_2_lut_rep_52_4_lut (.A(\nRESETr[1] ), .B(BA_c), .C(n6_c), 
         .D(DMA), .Z(n3835)) /* synthesis lut_function=(!(A (B (C (D)))+!A (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    defparam i3312_2_lut_rep_52_4_lut.init = 16'h2aff;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_556_enable_76), 
            .CD(n4067), .CK(PHI2_N_556), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    FD1P3JX Length_1__679 (.D(Length_1__N_385), .SP(PHI2_N_556_enable_67), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_1__679.GSR = "ENABLED";
    LUT4 i3292_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(BA_c), .Z(PHI2_N_556_enable_78)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3292_3_lut.init = 16'hf7f7;
    LUT4 i3299_3_lut (.A(\nRESETr[1] ), .B(DMA), .C(BA_c), .Z(n3429)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;
    defparam i3299_3_lut.init = 16'h3737;
    FD1P3IX EndOfBlock_589 (.D(EndOfBlock_N_465), .SP(PHI2_N_556_enable_59), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[8] 100[4])
    defparam EndOfBlock_589.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__671 (.D(D_out_1), .SP(PHI2_N_556_enable_22), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_17__671.GSR = "ENABLED";
    LUT4 n487_bdd_4_lut (.A(n469[2]), .B(DF01Reserved32[2]), .C(A_out_1), 
         .D(A_out_0), .Z(n3801)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n487_bdd_4_lut.init = 16'haca0;
    FD1P3IX IntPending_588 (.D(n3576), .SP(PHI2_N_556_enable_59), .CD(n4067), 
            .CK(PHI2_N_556), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[8] 100[4])
    defparam IntPending_588.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__672 (.D(D_out_0), .SP(PHI2_N_556_enable_22), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_16__672.GSR = "ENABLED";
    LUT4 REUA_4__bdd_3_lut (.A(REUA[4]), .B(A_out_0), .C(\REUA[12] ), 
         .Z(n3814)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_4__bdd_3_lut.init = 16'he2e2;
    LUT4 CA_7__bdd_3_lut_3379 (.A(CA[7]), .B(IntPending), .C(A_out_1), 
         .Z(n3717)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_7__bdd_3_lut_3379.init = 16'hacac;
    FD1P3IX DF01Reserved6_593 (.D(D_out_6), .SP(PHI2_N_556_enable_76), .CD(RegReset), 
            .CK(PHI2_N_556), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved6_593.GSR = "ENABLED";
    FD1S3IX CA_6__599 (.D(n436[6]), .CK(PHI2_N_556), .CD(RegReset), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_6__599.GSR = "ENABLED";
    LUT4 mux_193_i3_4_lut (.A(\REUA[18] ), .B(REUAWritten[18]), .C(n3833), 
         .D(n961), .Z(n432[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_193_i3_4_lut.init = 16'hc5ca;
    LUT4 i2153_2_lut (.A(D_out_0), .B(n4066), .Z(n1246)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2153_2_lut.init = 16'heeee;
    FD1S3IX CA_5__600 (.D(n436[5]), .CK(PHI2_N_556), .CD(RegReset), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_5__600.GSR = "ENABLED";
    FD1S3IX CA_4__601 (.D(n436[4]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_4__601.GSR = "ENABLED";
    FD1S3IX CA_3__602 (.D(n436[3]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_3__602.GSR = "ENABLED";
    FD1S3IX CA_2__603 (.D(n436[2]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_2__603.GSR = "ENABLED";
    FD1S3IX CA_1__604 (.D(n436[1]), .CK(PHI2_N_556), .CD(RegReset), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_1__604.GSR = "ENABLED";
    FD1S3IX CA_0__605 (.D(n436[0]), .CK(PHI2_N_556), .CD(RegReset), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_0__605.GSR = "ENABLED";
    FD1S3IX CA_15__614 (.D(n435[7]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_15__614.GSR = "ENABLED";
    LUT4 i2093_2_lut (.A(D_out_1), .B(n4066), .Z(n1199)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2093_2_lut.init = 16'heeee;
    LUT4 i2144_2_lut (.A(D_out_2), .B(n4066), .Z(n1201)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2144_2_lut.init = 16'heeee;
    LUT4 A_0__I_0_1_lut (.A(\REUA[0] ), .Z(A_0__N_545)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(148[12:17])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    FD1P3IX IntEnable_705 (.D(D_out_7), .SP(PHI2_N_556_enable_12), .CD(n4067), 
            .CK(PHI2_N_556), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam IntEnable_705.GSR = "ENABLED";
    FD1P3IX EndOfBlockMask_706 (.D(D_out_6), .SP(PHI2_N_556_enable_12), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam EndOfBlockMask_706.GSR = "ENABLED";
    FD1P3AX LengthWritten_8__704 (.D(n1246), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_8__704.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_707 (.D(D_out_5), .SP(PHI2_N_556_enable_12), .CD(n4067), 
            .CK(PHI2_N_556), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[8] 241[4])
    defparam VerifyErrMask_707.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__703 (.D(n1199), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_9__703.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__702 (.D(n1201), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_10__702.GSR = "ENABLED";
    FD1P3AX CAWritten_14__623 (.D(D_out_6), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_14__623.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__700 (.D(n1205), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_12__700.GSR = "ENABLED";
    LUT4 i2145_2_lut (.A(D_out_4), .B(n4066), .Z(n1205)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2145_2_lut.init = 16'heeee;
    LUT4 mux_649_i7_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[6]), 
         .D(Length_7__N_354[6]), .Z(n950[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 A_out_0_bdd_3_lut (.A(A_out_3), .B(A_out_1), .C(Length[12]), 
         .Z(n3812)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam A_out_0_bdd_3_lut.init = 16'hfdfd;
    FD1P3AX LengthWritten_14__698 (.D(n1212), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_14__698.GSR = "ENABLED";
    FD1S3IX CA_14__615 (.D(n435[6]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_14__615.GSR = "ENABLED";
    LUT4 A_out_0_bdd_2_lut_3416 (.A(Length[4]), .B(A_out_3), .Z(n3811)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3416.init = 16'heeee;
    LUT4 mux_649_i5_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[4]), 
         .D(Length_7__N_354[4]), .Z(n950[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i5_3_lut_4_lut.init = 16'hf4b0;
    FD1S3IX CA_13__616 (.D(n435[5]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_13__616.GSR = "ENABLED";
    FD1S3IX CA_12__617 (.D(n435[4]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_12__617.GSR = "ENABLED";
    FD1S3IX CA_11__618 (.D(n435[3]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_11__618.GSR = "ENABLED";
    FD1S3IX CA_10__619 (.D(n435[2]), .CK(PHI2_N_556), .CD(RegReset), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_10__619.GSR = "ENABLED";
    FD1S3IX CA_9__620 (.D(n435[1]), .CK(PHI2_N_556), .CD(RegReset), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_9__620.GSR = "ENABLED";
    FD1S3IX CA_8__621 (.D(n435[0]), .CK(PHI2_N_556), .CD(n4067), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_8__621.GSR = "ENABLED";
    FD1S3IX REUA_7__630 (.D(n434[7]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_7__630.GSR = "ENABLED";
    FD1P3AX CAWritten_15__622 (.D(D_out_7), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_15__622.GSR = "ENABLED";
    FD1P3AX CAWritten_13__624 (.D(D_out_5), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_13__624.GSR = "ENABLED";
    LUT4 REUA_4__bdd_4_lut (.A(n469[4]), .B(A_out_0), .C(A_out_1), .D(FF00DecodeEN), 
         .Z(n3816)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C))) */ ;
    defparam REUA_4__bdd_4_lut.init = 16'ha3af;
    FD1P3IX AutoloadEN_594 (.D(D_out_5), .SP(PHI2_N_556_enable_76), .CD(RegReset), 
            .CK(PHI2_N_556), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam AutoloadEN_594.GSR = "ENABLED";
    FD1P3AX CAWritten_12__625 (.D(D_out_4), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_12__625.GSR = "ENABLED";
    FD1P3IX REUAWritten_18__670 (.D(D_out_2), .SP(PHI2_N_556_enable_22), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUAWritten_18__670.GSR = "ENABLED";
    LUT4 A_out_0_bdd_4_lut (.A(A_out_0), .B(Length[13]), .C(A_out_1), 
         .D(VerifyErrMask), .Z(n3818)) /* synthesis lut_function=(A (C+(D))+!A (B+(C))) */ ;
    defparam A_out_0_bdd_4_lut.init = 16'hfef4;
    FD1P3IX REUAWritten_8__661 (.D(D_out_0), .SP(PHI2_N_556_enable_45), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_8__661.GSR = "ENABLED";
    LUT4 A_out_0_bdd_2_lut (.A(A_out_0), .B(Length[5]), .Z(n3819)) /* synthesis lut_function=((B)+!A) */ ;
    defparam A_out_0_bdd_2_lut.init = 16'hdddd;
    FD1P3AX CAWritten_11__626 (.D(D_out_3), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_11__626.GSR = "ENABLED";
    FD1S3IX REUA_6__631 (.D(n434[6]), .CK(PHI2_N_556), .CD(RegReset), 
            .Q(\REUA[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_6__631.GSR = "ENABLED";
    FD1P3JX Length_15__689 (.D(Length_15__N_304), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_15__689.GSR = "ENABLED";
    FD1S3IX REUA_5__632 (.D(n434[5]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_5__632.GSR = "ENABLED";
    FD1S3IX REUA_4__633 (.D(n434[4]), .CK(PHI2_N_556), .CD(n4067), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_4__633.GSR = "ENABLED";
    FD1S3IX REUA_3__634 (.D(n434[3]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_3__634.GSR = "ENABLED";
    FD1S3IX REUA_2__635 (.D(n434[2]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_2__635.GSR = "ENABLED";
    FD1S3IX REUA_1__636 (.D(n434[1]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_1__636.GSR = "ENABLED";
    FD1S3IX REUA_0__637 (.D(n434[0]), .CK(PHI2_N_556), .CD(RegReset), 
            .Q(\REUA[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_0__637.GSR = "ENABLED";
    FD1S3IX REUA_15__646 (.D(n433[7]), .CK(PHI2_N_556), .CD(RegReset), 
            .Q(\REUA[15] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_15__646.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__688 (.D(n1246), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_0__688.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11), .D(n12), .Z(REUAOut_18__N_39)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i9_4_lut.init = 16'h8000;
    LUT4 mux_649_i6_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[5]), 
         .D(Length_7__N_354[5]), .Z(n950[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i6_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i3398 (.BLUT(n493[1]), .ALUT(n3793), .C0(A_out_3), .Z(n3794));
    LUT4 i661_2_lut_3_lut (.A(\REUA[16] ), .B(REUAOut_18__N_39), .C(\REUA[17] ), 
         .Z(n961)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam i661_2_lut_3_lut.init = 16'h8080;
    FD1P3AX CAWritten_10__627 (.D(D_out_2), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_10__627.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(\REUA[15] ), .B(\REUA[12] ), .C(\REUA[10] ), .D(REUA[13]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i7_4_lut.init = 16'h8000;
    LUT4 mux_239_i8_3_lut (.A(n3719), .B(n538[7]), .C(A_out_3), .Z(n559)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_239_i8_3_lut.init = 16'hcaca;
    LUT4 i2146_2_lut (.A(D_out_5), .B(n4066), .Z(n1210)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2146_2_lut.init = 16'heeee;
    FD1P3AX LengthWritten_13__699 (.D(n1210), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_13__699.GSR = "ENABLED";
    LUT4 i2147_2_lut (.A(D_out_6), .B(n4066), .Z(n1212)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam i2147_2_lut.init = 16'heeee;
    FD1P3AX CAWritten_6__607 (.D(D_out_6), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_6__607.GSR = "ENABLED";
    FD1P3IX REUAWritten_9__660 (.D(D_out_1), .SP(PHI2_N_556_enable_45), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_9__660.GSR = "ENABLED";
    LUT4 mux_235_i8_3_lut (.A(n505[7]), .B(IncMode[1]), .C(A_out_1), .Z(n538[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_235_i8_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_10__659 (.D(D_out_2), .SP(PHI2_N_556_enable_45), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_10__659.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__658 (.D(D_out_3), .SP(PHI2_N_556_enable_45), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_11__658.GSR = "ENABLED";
    FD1P3AX CAWritten_5__608 (.D(D_out_5), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_5__608.GSR = "ENABLED";
    LUT4 i5_2_lut (.A(\REUA[9] ), .B(\REUA[11] ), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(\REUA[14] ), .B(n26), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX REUA_14__647 (.D(n433[6]), .CK(PHI2_N_556), .CD(RegReset), 
            .Q(\REUA[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_14__647.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(\REUA[8] ), .B(n3395), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i2_2_lut.init = 16'h8888;
    FD1S3IX REUA_13__648 (.D(n433[5]), .CK(PHI2_N_556), .CD(n4067), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_13__648.GSR = "ENABLED";
    FD1S3IX REUA_12__649 (.D(n433[4]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_12__649.GSR = "ENABLED";
    FD1S3IX REUA_11__650 (.D(n433[3]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_11__650.GSR = "ENABLED";
    FD1S3IX REUA_10__651 (.D(n433[2]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_10__651.GSR = "ENABLED";
    FD1S3IX REUA_9__652 (.D(n433[1]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_9__652.GSR = "ENABLED";
    FD1S3IX REUA_8__653 (.D(n433[0]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_8__653.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__657 (.D(D_out_4), .SP(PHI2_N_556_enable_45), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_12__657.GSR = "ENABLED";
    LUT4 i1793_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), .Z(n505[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1793_3_lut.init = 16'hcaca;
    LUT4 n456_bdd_3_lut (.A(A_out_0), .B(CA[5]), .C(CA[13]), .Z(n3822)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n456_bdd_3_lut.init = 16'he4e4;
    FD1P3IX REUAWritten_13__656 (.D(D_out_5), .SP(PHI2_N_556_enable_45), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_13__656.GSR = "ENABLED";
    FD1S3IX REUA_18__667 (.D(n441[2]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[18] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_18__667.GSR = "ENABLED";
    FD1S3IX REUA_17__668 (.D(n441[1]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[17] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_17__668.GSR = "ENABLED";
    FD1S3IX REUA_16__669 (.D(n441[0]), .CK(PHI2_N_556), .CD(n4067), .Q(\REUA[16] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 198[4])
    defparam REUA_16__669.GSR = "ENABLED";
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_556_enable_76), 
            .CD(n4067), .CK(PHI2_N_556), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 DF01Reserved32_3__bdd_3_lut_3520 (.A(A_out_0), .B(A_out_1), .C(Length[11]), 
         .Z(n4051)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam DF01Reserved32_3__bdd_3_lut_3520.init = 16'hfefe;
    FD1P3AX CAWritten_4__609 (.D(D_out_4), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_4__609.GSR = "ENABLED";
    FD1P3JX Length_14__690 (.D(Length_14__N_316), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_14__690.GSR = "ENABLED";
    FD1P3AX CAWritten_3__610 (.D(D_out_3), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_3__610.GSR = "ENABLED";
    FD1P3AX CAWritten_2__611 (.D(D_out_2), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_2__611.GSR = "ENABLED";
    FD1P3AX CAWritten_1__612 (.D(D_out_1), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_1__612.GSR = "ENABLED";
    FD1P3AX CAWritten_0__613 (.D(D_out_0), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_0__613.GSR = "ENABLED";
    FD1P3AX CAWritten_9__628 (.D(D_out_1), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_9__628.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__655 (.D(D_out_6), .SP(PHI2_N_556_enable_45), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_14__655.GSR = "ENABLED";
    LUT4 DF01Reserved32_3__bdd_3_lut_3521 (.A(CA[11]), .B(Length[3]), .C(A_out_2), 
         .Z(n4052)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DF01Reserved32_3__bdd_3_lut_3521.init = 16'hcaca;
    LUT4 DF01Reserved32_3__bdd_3_lut (.A(DF01Reserved32[3]), .B(\REUA[11] ), 
         .C(A_out_2), .Z(n4053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam DF01Reserved32_3__bdd_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_15__654 (.D(D_out_7), .SP(PHI2_N_556_enable_45), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_15__654.GSR = "ENABLED";
    LUT4 DF01Reserved32_3__bdd_4_lut (.A(\REUA[3] ), .B(CA[3]), .C(A_out_1), 
         .D(A_out_2), .Z(n4055)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam DF01Reserved32_3__bdd_4_lut.init = 16'hfac0;
    LUT4 A_4__I_0_711_i6_2_lut_rep_89 (.A(A_out_0), .B(A_out_1), .Z(n3872)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2:14])
    defparam A_4__I_0_711_i6_2_lut_rep_89.init = 16'heeee;
    FD1P3AX CAWritten_8__629 (.D(D_out_0), .SP(PHI2_N_556_enable_46), .CK(PHI2_N_556), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_8__629.GSR = "ENABLED";
    LUT4 mux_222_i1_3_lut (.A(\REUA[16] ), .B(Length[0]), .C(A_out_0), 
         .Z(n493[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_222_i1_3_lut.init = 16'hcaca;
    LUT4 n4055_bdd_3_lut (.A(n4055), .B(n4054), .C(A_out_0), .Z(n4056)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4055_bdd_3_lut.init = 16'hcaca;
    LUT4 A_4__I_0_711_i9_2_lut_rep_75_3_lut_4_lut (.A(A_out_0), .B(A_out_1), 
         .C(n3874), .D(A_out_3), .Z(n3858)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2:14])
    defparam A_4__I_0_711_i9_2_lut_rep_75_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX LengthWritten_7__681 (.D(n1191), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_7__681.GSR = "ENABLED";
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_556_enable_76), .CD(n4067), 
            .CK(PHI2_N_556), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3AX LengthWritten_6__682 (.D(n1212), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_6__682.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_74_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(nWE_c), 
         .D(n3873), .Z(n3857)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2:14])
    defparam i1_2_lut_rep_74_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX REUAWritten_0__645 (.D(D_out_0), .SP(PHI2_N_556_enable_72), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_0__645.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_556_enable_77), .CD(n4067), 
            .CK(PHI2_N_556), .Q(IncMode_c[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i0.GSR = "ENABLED";
    FD1P3IX REUAWritten_1__644 (.D(D_out_1), .SP(PHI2_N_556_enable_72), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_1__644.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__643 (.D(D_out_2), .SP(PHI2_N_556_enable_72), 
            .CD(n4067), .CK(PHI2_N_556), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_2__643.GSR = "ENABLED";
    FD1P3JX Length_2__678 (.D(Length_2__N_380), .SP(PHI2_N_556_enable_67), 
            .PD(RegReset), .CK(PHI2_N_556), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_2__678.GSR = "ENABLED";
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_7), 
         .D(n950[7]), .Z(Length_7__N_351)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_5), 
         .D(n950[5]), .Z(Length_5__N_365)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_4), 
         .D(n950[4]), .Z(Length_4__N_370)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_5__683 (.D(n1210), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_5__683.GSR = "ENABLED";
    L6MUX21 i3347 (.D0(n3711), .D1(n3708), .SD(A_out_0), .Z(n3712));
    LUT4 i8_4_lut (.A(REUA[4]), .B(n16), .C(n12_adj_639), .D(IncMode_c[0]), 
         .Z(n3395)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i8_4_lut.init = 16'h0080;
    FD1P3IX REUAWritten_3__642 (.D(D_out_3), .SP(PHI2_N_556_enable_72), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_3__642.GSR = "ENABLED";
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_6), 
         .D(n950[6]), .Z(Length_6__N_360)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_3), 
         .D(n950[3]), .Z(Length_3__N_375)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_4__684 (.D(n1205), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_4__684.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__685 (.D(n1189), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_3__685.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_91 (.A(A_out_2), .B(A_out_4), .Z(n3874)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_91.init = 16'heeee;
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_0), 
         .D(n950[0]), .Z(Length_0__N_390)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    PFUMX i3396 (.BLUT(n3791), .ALUT(n3790), .C0(n3876), .Z(n3792));
    LUT4 i1_2_lut_rep_80_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n3863)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_80_3_lut.init = 16'hefef;
    CCU2D Length_15__I_0_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3265), .COUT(n3266), .S0(Length_15__N_307[5]), 
          .S1(Length_15__N_307[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_7.INJECT1_1 = "NO";
    PFUMX i3394 (.BLUT(n493[0]), .ALUT(n3788), .C0(A_out_3), .Z(n3789));
    CCU2D Length_15__I_0_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3264), .COUT(n3265), .S0(Length_15__N_307[3]), 
          .S1(Length_15__N_307[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3263), .COUT(n3264), .S0(Length_15__N_307[1]), 
          .S1(Length_15__N_307[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3263), .S1(Length_15__N_307[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(226[19:37])
    defparam Length_15__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_1), 
         .D(n950[1]), .Z(Length_1__N_385)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX Fault_590 (.D(Fault_N_470), .SP(PHI2_N_556_enable_59), .CD(RegReset), 
            .CK(PHI2_N_556), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[8] 100[4])
    defparam Fault_590.GSR = "ENABLED";
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n1437), .B(n3851), .C(D_out_2), 
         .D(n950[2]), .Z(Length_2__N_380)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    LUT4 CA_6__bdd_2_lut_3360 (.A(\REUA[6] ), .B(A_out_1), .Z(n3709)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_6__bdd_2_lut_3360.init = 16'heeee;
    FD1P3AX LengthWritten_2__686 (.D(n1201), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_2__686.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__641 (.D(D_out_4), .SP(PHI2_N_556_enable_72), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_4__641.GSR = "ENABLED";
    LUT4 A_out_2_bdd_3_lut_3342 (.A(A_out_1), .B(Length[6]), .C(\REUA[14] ), 
         .Z(n3706)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3342.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_82_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n3865)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_82_3_lut.init = 16'hfefe;
    FD1P3JX Length_0__680 (.D(Length_0__N_390), .SP(PHI2_N_556_enable_67), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_0__680.GSR = "ENABLED";
    LUT4 i3296_2_lut_rep_57_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3843), 
         .D(\XferType[0] ), .Z(n3840)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:70])
    defparam i3296_2_lut_rep_57_4_lut.init = 16'h0035;
    FD1P3JX Length_3__677 (.D(Length_3__N_375), .SP(PHI2_N_556_enable_67), 
            .PD(RegReset), .CK(PHI2_N_556), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_3__677.GSR = "ENABLED";
    FD1P3JX Length_4__676 (.D(Length_4__N_370), .SP(PHI2_N_556_enable_67), 
            .PD(RegReset), .CK(PHI2_N_556), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_4__676.GSR = "ENABLED";
    LUT4 XferType_1__I_0_116_i3_2_lut_rep_56_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n3843), .D(\XferType[0] ), .Z(n3839)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:70])
    defparam XferType_1__I_0_116_i3_2_lut_rep_56_4_lut.init = 16'hff35;
    LUT4 mux_649_i8_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[7]), 
         .D(Length_7__N_354[7]), .Z(n950[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i8_3_lut_4_lut.init = 16'hf4b0;
    FD1P3JX Length_5__675 (.D(Length_5__N_365), .SP(PHI2_N_556_enable_67), 
            .PD(RegReset), .CK(PHI2_N_556), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_5__675.GSR = "ENABLED";
    FD1P3JX Length_6__674 (.D(Length_6__N_360), .SP(PHI2_N_556_enable_67), 
            .PD(RegReset), .CK(PHI2_N_556), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_6__674.GSR = "ENABLED";
    LUT4 i7_4_lut_adj_161 (.A(n13), .B(\REUA[3] ), .C(\REUA[6] ), .D(\REUA[5] ), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i7_4_lut_adj_161.init = 16'h8000;
    FD1P3JX Length_7__673 (.D(Length_7__N_351), .SP(PHI2_N_556_enable_67), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam Length_7__673.GSR = "ENABLED";
    LUT4 n489_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3789), .D(n481[0]), 
         .Z(n3790)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n489_bdd_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX LengthWritten_1__687 (.D(n1199), .SP(PHI2_N_556_enable_68), 
            .CK(PHI2_N_556), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(201[8] 213[4])
    defparam LengthWritten_1__687.GSR = "ENABLED";
    LUT4 n488_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3794), .D(n481[1]), 
         .Z(n3795)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n488_bdd_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX CAWritten_7__606 (.D(D_out_7), .SP(PHI2_N_556_enable_69), .CK(PHI2_N_556), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_7__606.GSR = "ENABLED";
    LUT4 n487_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3799), .D(n481[2]), 
         .Z(n3800)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n487_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n3814_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3813), .D(n3814), 
         .Z(n3815)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n3814_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n484_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3820), .D(n481[5]), 
         .Z(n3821)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n484_bdd_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX REUAWritten_5__640 (.D(D_out_5), .SP(PHI2_N_556_enable_72), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_5__640.GSR = "ENABLED";
    LUT4 i3313_2_lut_rep_93 (.A(A_out_3), .B(A_out_2), .Z(n3876)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i3313_2_lut_rep_93.init = 16'heeee;
    PFUMX i3345 (.BLUT(n3710), .ALUT(n3709), .C0(A_out_2), .Z(n3711));
    LUT4 nRWOE_N_627_bdd_4_lut (.A(n3869), .B(n3842), .C(SwapState), .D(NextREUA_N_622), 
         .Z(n3766)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B+!(D))) */ ;
    defparam nRWOE_N_627_bdd_4_lut.init = 16'hb380;
    FD1P3IX REUAWritten_6__639 (.D(D_out_6), .SP(PHI2_N_556_enable_72), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_6__639.GSR = "ENABLED";
    LUT4 CA_6__bdd_3_lut_3361 (.A(CA[6]), .B(EndOfBlock), .C(A_out_1), 
         .Z(n3710)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_6__bdd_3_lut_3361.init = 16'hacac;
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_5), 
         .D(n949[5]), .Z(Length_13__N_321)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    LUT4 n3823_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_2), .C(n3821), .D(n3823), 
         .Z(n3824)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam n3823_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2097_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3843), .D(\XferType[0] ), 
         .Z(XferVerify)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:70])
    defparam i2097_2_lut_4_lut.init = 16'hca00;
    LUT4 XferType_1__I_0_118_i3_2_lut_rep_58_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n3843), .D(\XferType[0] ), .Z(n3841)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:70])
    defparam XferType_1__I_0_118_i3_2_lut_rep_58_4_lut.init = 16'hcaff;
    FD1P3IX REUAWritten_7__638 (.D(D_out_7), .SP(PHI2_N_556_enable_72), 
            .CD(RegReset), .CK(PHI2_N_556), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_7__638.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__697 (.D(n1191), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_15__697.GSR = "ENABLED";
    LUT4 i3197_2_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(A_out_2), .D(n6), 
         .Z(n3547)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3197_2_lut_4_lut.init = 16'hfffe;
    FD1P3AX LengthWritten_11__701 (.D(n1189), .SP(PHI2_N_556_enable_74), 
            .CK(PHI2_N_556), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam LengthWritten_11__701.GSR = "ENABLED";
    FD1P3AX FF00DecodeEN_595 (.D(n3528), .SP(PHI2_N_556_enable_83), .CK(PHI2_N_556), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam FF00DecodeEN_595.GSR = "ENABLED";
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_556_enable_76), .CD(RegReset), 
            .CK(PHI2_N_556), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_7), 
         .D(n949[7]), .Z(Length_15__N_304)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_6), 
         .D(n949[6]), .Z(Length_14__N_316)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3270), .S0(Length_7__N_354[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_0), 
         .D(n949[0]), .Z(Length_8__N_346)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3269), .COUT(n3270), .S0(Length_7__N_354[5]), 
          .S1(Length_7__N_354[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 i2167_2_lut (.A(A_out_0), .B(A_out_1), .Z(n2501)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2167_2_lut.init = 16'h8888;
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_1), 
         .D(n949[1]), .Z(Length_9__N_341)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_2), 
         .D(n949[2]), .Z(Length_10__N_336)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_3), 
         .D(n949[3]), .Z(Length_11__N_331)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    LUT4 XferType_1__I_0_i2_3_lut_rep_59_4_lut (.A(n3846), .B(PHI2_c), .C(D_out_1), 
         .D(XferType[1]), .Z(n3842)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:43])
    defparam XferType_1__I_0_i2_3_lut_rep_59_4_lut.init = 16'hf780;
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n3863), .B(n3857), .C(D_out_4), 
         .D(n949[4]), .Z(Length_12__N_326)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2094_4_lut (.A(n3835), .B(n3852), .C(EndOfBlock), .D(Length1_N_357), 
         .Z(EndOfBlock_N_465)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(95[11] 99[5])
    defparam i2094_4_lut.init = 16'h3031;
    LUT4 XferType_1__I_0_i1_3_lut_4_lut (.A(n3846), .B(PHI2_c), .C(D_out_0), 
         .D(XferType[0]), .Z(\XferType[0] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:43])
    defparam XferType_1__I_0_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i3_2_lut (.A(\REUA[2] ), .B(\REUA[0] ), .Z(n12_adj_639)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n3846), .B(n4066), .C(n3836), .D(DMA), 
         .Z(PHI2_N_556_enable_83)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfeee;
    LUT4 i8_4_lut_adj_162 (.A(n2230), .B(\RAMRDD[6] ), .C(DMA), .D(n18), 
         .Z(\D_7__N_1[6] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i8_4_lut_adj_162.init = 16'hcfca;
    LUT4 i4_2_lut (.A(\REUA[7] ), .B(\REUA[1] ), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i16_3_lut (.A(n3712), .B(n17_adj_641), .C(A_out_3), .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16_3_lut.init = 16'hcaca;
    LUT4 i15_3_lut (.A(n505[6]), .B(IncMode_c[0]), .C(A_out_1), .Z(n17_adj_641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15_3_lut.init = 16'hcaca;
    LUT4 i900_2_lut_3_lut_4_lut (.A(A_out_1), .B(n3855), .C(n4066), .D(n3865), 
         .Z(PHI2_N_556_enable_46)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i900_2_lut_3_lut_4_lut.init = 16'h0008;
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3268), .COUT(n3269), .S0(Length_7__N_354[3]), 
          .S1(Length_7__N_354[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_556_enable_77), .CD(RegReset), 
            .CK(PHI2_N_556), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(247[8] 250[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut_adj_163 (.A(A_out_1), .B(n3855), .C(n4066), 
         .D(n1437), .Z(PHI2_N_556_enable_68)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_163.init = 16'hf0f8;
    LUT4 i413_2_lut_3_lut (.A(n1437), .B(n3859), .C(n4066), .Z(PHI2_N_556_enable_22)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i413_2_lut_3_lut.init = 16'hf1f1;
    LUT4 mux_202_i3_3_lut_4_lut (.A(n1437), .B(n3859), .C(D_out_2), .D(n432[2]), 
         .Z(n441[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_202_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_193_i2_4_lut (.A(\REUA[17] ), .B(REUAWritten[17]), .C(n3833), 
         .D(n3834), .Z(n432[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_193_i2_4_lut.init = 16'hc5ca;
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3267), .COUT(n3268), .S0(Length_7__N_354[1]), 
          .S1(Length_7__N_354[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    LUT4 mux_202_i2_3_lut_4_lut (.A(n1437), .B(n3859), .C(D_out_1), .D(n432[1]), 
         .Z(n441[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_202_i2_3_lut_4_lut.init = 16'hfe10;
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_60), .C0(REUAWritten[14]), 
          .D0(\REUA[14] ), .A1(GND_net), .B1(REUAOut_15__N_60), .C1(REUAWritten[15]), 
          .D1(\REUA[15] ), .CIN(n3261), .S0(REUAOut_15__N_57[6]), .S1(REUAOut_15__N_57[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_60), .C0(REUAWritten[12]), 
          .D0(\REUA[12] ), .A1(GND_net), .B1(REUAOut_15__N_60), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n3260), .COUT(n3261), .S0(REUAOut_15__N_57[4]), 
          .S1(REUAOut_15__N_57[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_60), .C0(REUAWritten[10]), 
          .D0(\REUA[10] ), .A1(GND_net), .B1(REUAOut_15__N_60), .C1(REUAWritten[11]), 
          .D1(\REUA[11] ), .CIN(n3259), .COUT(n3260), .S0(REUAOut_15__N_57[2]), 
          .S1(REUAOut_15__N_57[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_58), .B0(REUAOut_15__N_60), 
          .C0(REUAWritten[8]), .D0(\REUA[8] ), .A1(GND_net), .B1(REUAOut_15__N_60), 
          .C1(REUAWritten[9]), .D1(\REUA[9] ), .CIN(n3258), .COUT(n3259), 
          .S0(REUAOut_15__N_57[0]), .S1(REUAOut_15__N_57[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3833), .B1(n3853), .C1(GND_net), .D1(GND_net), 
          .COUT(n3258));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_202_i1_3_lut_4_lut (.A(n1437), .B(n3859), .C(D_out_0), .D(n432[0]), 
         .Z(n441[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_202_i1_3_lut_4_lut.init = 16'hfe10;
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_105), .C0(REUAWritten[6]), 
          .D0(\REUA[6] ), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[7]), 
          .D1(\REUA[7] ), .CIN(n3253), .S0(REUAOut_7__N_104[6]), .S1(REUAOut_7__N_104[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_105), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[5]), 
          .D1(\REUA[5] ), .CIN(n3252), .COUT(n3253), .S0(REUAOut_7__N_104[4]), 
          .S1(REUAOut_7__N_104[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_105), .C0(REUAWritten[2]), 
          .D0(\REUA[2] ), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[3]), 
          .D1(\REUA[3] ), .CIN(n3251), .COUT(n3252), .S0(REUAOut_7__N_104[2]), 
          .S1(REUAOut_7__N_104[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUA), .B0(REUAOut_7__N_105), .C0(REUAWritten[0]), 
          .D0(\REUA[0] ), .A1(GND_net), .B1(REUAOut_7__N_105), .C1(REUAWritten[1]), 
          .D1(\REUA[1] ), .CIN(n3250), .COUT(n3251), .S0(REUAOut_7__N_104[0]), 
          .S1(REUAOut_7__N_104[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3833), .B1(n3848), .C1(GND_net), .D1(GND_net), 
          .COUT(n3250));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 i2095_3_lut_4_lut (.A(n3862), .B(n3858), .C(Fault), .D(VerifyErr), 
         .Z(Fault_N_470)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(91[15:36])
    defparam i2095_3_lut_4_lut.init = 16'hddd0;
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_148), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3245), .S0(CAOut_15__N_145[6]), .S1(CAOut_15__N_145[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_148), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3244), .COUT(n3245), .S0(CAOut_15__N_145[4]), 
          .S1(CAOut_15__N_145[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_148), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3243), .COUT(n3244), .S0(CAOut_15__N_145[2]), 
          .S1(CAOut_15__N_145[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_146), .B0(CAOut_15__N_148), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_148), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n3242), .COUT(n3243), .S0(CAOut_15__N_145[0]), 
          .S1(CAOut_15__N_145[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3833), .B1(n3854), .C1(GND_net), .D1(GND_net), .COUT(n3242));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i1794_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n505[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1794_3_lut.init = 16'hcaca;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_193), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n3237), .S0(CAOut_7__N_192[6]), .S1(CAOut_7__N_192[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_193), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n3236), .COUT(n3237), .S0(CAOut_7__N_192[4]), 
          .S1(CAOut_7__N_192[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_193), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n3235), .COUT(n3236), .S0(CAOut_7__N_192[2]), 
          .S1(CAOut_7__N_192[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCA), .B0(CAOut_7__N_193), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_193), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n3234), .COUT(n3235), .S0(CAOut_7__N_192[0]), 
          .S1(CAOut_7__N_192[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3833), .B1(n3845), .C1(GND_net), .D1(GND_net), .COUT(n3234));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_195_i8_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_7), .D(REUAOut_7__N_104[7]), 
         .Z(n434[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_195_i7_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_6), .D(REUAOut_7__N_104[6]), 
         .Z(n434[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_adj_164 (.A(IncMode_c[0]), .B(n26), .Z(IncREUA)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i1_2_lut_adj_164.init = 16'h4444;
    LUT4 mux_195_i6_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_5), .D(REUAOut_7__N_104[5]), 
         .Z(n434[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_196_i6_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_5), .D(CAOut_15__N_145[5]), 
         .Z(n435[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 n499_bdd_3_lut (.A(Length[10]), .B(A_out_1), .C(A_out_0), .Z(n3798)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n499_bdd_3_lut.init = 16'hfefe;
    PFUMX i3382 (.BLUT(n3766), .ALUT(n3869), .C0(\XferType[0] ), .Z(n26));
    LUT4 A_out_2_bdd_3_lut_3349 (.A(CA[14]), .B(A_out_1), .C(DF01Reserved6), 
         .Z(n3707)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut_3349.init = 16'hb8b8;
    LUT4 mux_193_i1_4_lut (.A(\REUA[16] ), .B(REUAWritten[16]), .C(n3833), 
         .D(REUAOut_18__N_39), .Z(n432[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(196[18:34])
    defparam mux_193_i1_4_lut.init = 16'hc5ca;
    FD1P3JX Length_8__696 (.D(Length_8__N_346), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_8__696.GSR = "ENABLED";
    FD1P3JX Length_9__695 (.D(Length_9__N_341), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_9__695.GSR = "ENABLED";
    FD1P3JX Length_10__694 (.D(Length_10__N_336), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_10__694.GSR = "ENABLED";
    LUT4 mux_195_i5_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_4), .D(REUAOut_7__N_104[4]), 
         .Z(n434[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_195_i4_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_3), .D(REUAOut_7__N_104[3]), 
         .Z(n434[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_195_i3_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_2), .D(REUAOut_7__N_104[2]), 
         .Z(n434[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_195_i2_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_1), .D(REUAOut_7__N_104[1]), 
         .Z(n434[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_195_i1_3_lut_4_lut (.A(n1437), .B(n3857), .C(D_out_0), .D(REUAOut_7__N_104[0]), 
         .Z(n434[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_195_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_11__693 (.D(Length_11__N_331), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_11__693.GSR = "ENABLED";
    FD1P3AX ExecuteEN_592 (.D(n3412), .SP(PHI2_N_556_enable_83), .CK(PHI2_N_556), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam ExecuteEN_592.GSR = "ENABLED";
    LUT4 mux_197_i8_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_7), .D(CAOut_7__N_192[7]), 
         .Z(n436[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_197_i7_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_6), .D(CAOut_7__N_192[6]), 
         .Z(n436[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3_4_lut (.A(n3387), .B(PHI2_N_556_enable_74), .C(n3832), .D(n4), 
         .Z(PHI2_N_556_enable_84)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfdfc;
    FD1P3JX Length_12__692 (.D(Length_12__N_326), .SP(PHI2_N_556_enable_84), 
            .PD(n4067), .CK(PHI2_N_556), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam Length_12__692.GSR = "ENABLED";
    PFUMX Execute_I_0 (.BLUT(Execute_N_454), .ALUT(Execute_N_456), .C0(FF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;
    LUT4 n489_bdd_4_lut (.A(n469[0]), .B(XferType[0]), .C(A_out_1), .D(A_out_0), 
         .Z(n3791)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n489_bdd_4_lut.init = 16'haca0;
    LUT4 mux_197_i6_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_5), .D(CAOut_7__N_192[5]), 
         .Z(n436[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_197_i5_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_4), .D(CAOut_7__N_192[4]), 
         .Z(n436[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_197_i4_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_3), .D(CAOut_7__N_192[3]), 
         .Z(n436[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_197_i3_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_2), .D(CAOut_7__N_192[2]), 
         .Z(n436[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_197_i2_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_1), .D(CAOut_7__N_192[1]), 
         .Z(n436[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_196_i1_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_0), .D(CAOut_15__N_145[0]), 
         .Z(n435[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_197_i1_3_lut_4_lut (.A(n3865), .B(n3859), .C(D_out_0), .D(CAOut_7__N_192[0]), 
         .Z(n436[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_197_i1_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3267), .S1(Length_7__N_354[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(211[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 i2135_2_lut (.A(D_out_7), .B(n4066), .Z(n1191)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i2135_2_lut.init = 16'heeee;
    LUT4 mux_196_i2_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_1), .D(CAOut_15__N_145[1]), 
         .Z(n435[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_196_i3_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_2), .D(CAOut_15__N_145[2]), 
         .Z(n435[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_63_3_lut_4_lut (.A(A_out_0), .B(n3864), .C(n3865), 
         .D(A_out_1), .Z(n3846)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_63_3_lut_4_lut.init = 16'h0002;
    PFUMX i3343 (.BLUT(n3707), .ALUT(n3706), .C0(A_out_2), .Z(n3708));
    LUT4 mux_196_i7_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_6), .D(CAOut_15__N_145[6]), 
         .Z(n435[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 n501_bdd_4_lut (.A(Length[8]), .B(A_out_1), .C(A_out_0), .D(A_out_2), 
         .Z(n3788)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n501_bdd_4_lut.init = 16'hfffe;
    LUT4 i19_3_lut (.A(Length1_N_357), .B(n6_adj_1), .C(n3842), .Z(n6_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    defparam i19_3_lut.init = 16'hc5c5;
    L6MUX21 i3355 (.D0(n3718), .D1(n3715), .SD(A_out_0), .Z(n3719));
    LUT4 mux_196_i4_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_3), .D(CAOut_15__N_145[3]), 
         .Z(n435[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(A_out_0), .B(n3864), .C(n1437), 
         .D(A_out_1), .Z(n3848)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_62_3_lut_4_lut (.A(A_out_0), .B(n3864), .C(n3865), 
         .D(A_out_1), .Z(n3845)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_62_3_lut_4_lut.init = 16'h0200;
    LUT4 mux_648_i3_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[10]), 
         .D(Length_15__N_307[2]), .Z(n949[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i3_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i3419 (.BLUT(n453[5]), .ALUT(n3822), .C0(A_out_1), .Z(n3823));
    PFUMX i3524 (.BLUT(n4056), .ALUT(n4051), .C0(A_out_3), .Z(n4057));
    PFUMX i3522 (.BLUT(n4053), .ALUT(n4052), .C0(A_out_1), .Z(n4054));
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(A_out_0), .B(n3864), .C(n1437), 
         .D(A_out_1), .Z(n3847)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'h0200;
    LUT4 n500_bdd_3_lut (.A(Length[9]), .B(A_out_1), .C(A_out_0), .Z(n3793)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n500_bdd_3_lut.init = 16'hfefe;
    LUT4 i30_4_lut (.A(A_out_4), .B(\RAMRDD[0] ), .C(DMA), .D(n3792), 
         .Z(\D_7__N_1[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i30_4_lut.init = 16'hcfca;
    LUT4 mux_218_i2_3_lut (.A(\REUA[1] ), .B(\REUA[9] ), .C(A_out_0), 
         .Z(n481[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_218_i2_3_lut.init = 16'hcaca;
    PFUMX i3353 (.BLUT(n3717), .ALUT(n3716), .C0(A_out_2), .Z(n3718));
    LUT4 mux_196_i8_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_7), .D(CAOut_15__N_145[7]), 
         .Z(n435[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3341_4_lut (.A(IntEnable), .B(IRQOut_N_452), .C(VerifyErr), 
         .D(VerifyErrMask), .Z(nIRQ_c)) /* synthesis lut_function=(!(A (B+(C (D))))) */ ;
    defparam i3341_4_lut.init = 16'h5777;
    LUT4 A_out_2_bdd_3_lut_3350 (.A(A_out_1), .B(Length[7]), .C(\REUA[15] ), 
         .Z(n3713)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3350.init = 16'hd8d8;
    PFUMX i3417 (.BLUT(n3819), .ALUT(n3818), .C0(A_out_3), .Z(n3820));
    LUT4 mux_648_i8_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[15]), 
         .D(Length_15__N_307[7]), .Z(n949[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_648_i1_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[8]), 
         .D(Length_15__N_307[0]), .Z(n949[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i1_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i3414 (.BLUT(n3816), .ALUT(n3815), .C0(n3876), .Z(n3817));
    LUT4 mux_648_i6_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[13]), 
         .D(Length_15__N_307[5]), .Z(n949[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_218_i3_3_lut (.A(\REUA[2] ), .B(\REUA[10] ), .C(A_out_0), 
         .Z(n481[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_218_i3_3_lut.init = 16'hcaca;
    LUT4 mux_648_i7_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[14]), 
         .D(Length_15__N_307[6]), .Z(n949[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut_3_lut_4_lut_adj_165 (.A(n3864), .B(n3872), .C(n4066), 
         .D(n3863), .Z(PHI2_N_556_enable_74)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_165.init = 16'hf0f1;
    LUT4 i1_2_lut_adj_166 (.A(EndOfBlock), .B(EndOfBlockMask), .Z(IRQOut_N_452)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[8] 100[4])
    defparam i1_2_lut_adj_166.init = 16'h8888;
    LUT4 mux_648_i2_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[9]), 
         .D(Length_15__N_307[1]), .Z(n949[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_206_i6_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n453[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_206_i6_3_lut.init = 16'hcaca;
    LUT4 i341_2_lut_3_lut_4_lut (.A(n3864), .B(n3872), .C(n4066), .D(n1437), 
         .Z(PHI2_N_556_enable_72)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i341_2_lut_3_lut_4_lut.init = 16'hf0f1;
    PFUMX i3412 (.BLUT(n3812), .ALUT(n3811), .C0(A_out_0), .Z(n3813));
    LUT4 i3_4_lut_adj_167 (.A(n3831), .B(PHI2_N_556_enable_68), .C(Length1_N_357), 
         .D(n3837), .Z(PHI2_N_556_enable_67)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut_adj_167.init = 16'hfeee;
    LUT4 mux_214_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n469[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_214_i5_3_lut.init = 16'hcaca;
    LUT4 mux_648_i4_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[11]), 
         .D(Length_15__N_307[3]), .Z(n949[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_3_lut_4_lut (.A(n3872), .B(n3865), .C(n3864), .D(n4066), 
         .Z(PHI2_N_556_enable_59)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2:14])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_214_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n469[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_214_i3_3_lut.init = 16'hcaca;
    LUT4 i2140_2_lut (.A(D_out_3), .B(n4066), .Z(n1189)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(216[8] 228[4])
    defparam i2140_2_lut.init = 16'heeee;
    LUT4 i2193_2_lut_rep_71_4_lut (.A(A_out_0), .B(A_out_1), .C(n3864), 
         .D(n3865), .Z(n3854)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2193_2_lut_rep_71_4_lut.init = 16'hfffb;
    LUT4 mux_648_i5_3_lut_4_lut (.A(n3833), .B(n3847), .C(LengthWritten[12]), 
         .D(Length_15__N_307[4]), .Z(n949[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(223[15:50])
    defparam mux_648_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 A_out_2_bdd_3_lut (.A(CA[15]), .B(A_out_1), .C(ExecuteEN), .Z(n3714)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut.init = 16'hb8b8;
    LUT4 mux_214_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n469[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_214_i2_3_lut.init = 16'hcaca;
    LUT4 mux_214_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n469[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_214_i1_3_lut.init = 16'hcaca;
    LUT4 mux_196_i5_3_lut_4_lut (.A(n3865), .B(n3851), .C(D_out_4), .D(CAOut_15__N_145[4]), 
         .Z(n435[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_196_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(A_out_3), .B(n3874), .C(n3872), 
         .D(n3864), .Z(n3849)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'hfffd;
    LUT4 i492_3_lut_4_lut (.A(A_out_3), .B(n3874), .C(n3859), .D(n4066), 
         .Z(PHI2_N_556_enable_77)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i492_3_lut_4_lut.init = 16'hff02;
    LUT4 mux_649_i2_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[1]), 
         .D(Length_7__N_354[1]), .Z(n950[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i2_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i3404 (.BLUT(n3801), .ALUT(n3800), .C0(n3876), .Z(n3802));
    LUT4 mux_222_i2_3_lut (.A(\REUA[17] ), .B(Length[1]), .C(A_out_0), 
         .Z(n493[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_222_i2_3_lut.init = 16'hcaca;
    LUT4 n488_bdd_4_lut (.A(n469[1]), .B(XferType[1]), .C(A_out_1), .D(A_out_0), 
         .Z(n3796)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n488_bdd_4_lut.init = 16'haca0;
    LUT4 i1_2_lut_adj_168 (.A(n3395), .B(n26), .Z(REUAOut_15__N_58)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam i1_2_lut_adj_168.init = 16'h8888;
    LUT4 mux_649_i3_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[2]), 
         .D(Length_7__N_354[2]), .Z(n950[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_222_i3_3_lut (.A(\REUA[18] ), .B(Length[2]), .C(A_out_0), 
         .Z(n493[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_222_i3_3_lut.init = 16'hcaca;
    LUT4 i63_4_lut (.A(A_out_4), .B(A_out_3), .C(n2501), .D(A_out_2), 
         .Z(n2230)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i63_4_lut.init = 16'heeea;
    PFUMX i3402 (.BLUT(n493[2]), .ALUT(n3798), .C0(A_out_3), .Z(n3799));
    LUT4 i2781_3_lut (.A(\REUA[5] ), .B(REUA[13]), .C(A_out_0), .Z(n481[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2781_3_lut.init = 16'hcaca;
    LUT4 mux_649_i1_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[0]), 
         .D(Length_7__N_354[0]), .Z(n950[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i1_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i3351 (.BLUT(n3714), .ALUT(n3713), .C0(A_out_2), .Z(n3715));
    LUT4 mux_649_i4_3_lut_4_lut (.A(n3833), .B(n3849), .C(LengthWritten[3]), 
         .D(Length_7__N_354[3]), .Z(n950[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(208[15:50])
    defparam mux_649_i4_3_lut_4_lut.init = 16'hf4b0;
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (DMA, n3836, n3852, IntPending, n3576, SwapState, 
            n3839, \XferType[0] , n3842, n3869, n3837, nRESETr, 
            n4066, NextREUA_N_622, Execute, RegReset, n4067, PHI2_N_556, 
            nRESET_c, nWEDMA_c, n3835, n3840, n3841, RAMRD, RAMWR, 
            n3877, BA_c, PHI2_c, nAOE_c, PHI2_N_556_enable_78, n3429, 
            Length, n3387, Length1_N_357, nWEDMA_N_13, n6, n3853, 
            AutoloadEN, REUAOut_15__N_60, XferVerify, VerifyErr, n3849, 
            n3831, n3848, REUAOut_7__N_105, n3833, n3854, CAOut_15__N_148, 
            n3847, n3832, n3845, CAOut_7__N_193) /* synthesis syn_module_defined=1 */ ;
    output DMA;
    input n3836;
    input n3852;
    input IntPending;
    output n3576;
    output SwapState;
    input n3839;
    input \XferType[0] ;
    input n3842;
    input n3869;
    output n3837;
    output [2:1]nRESETr;
    output n4066;
    output NextREUA_N_622;
    input Execute;
    output RegReset;
    output n4067;
    input PHI2_N_556;
    input nRESET_c;
    output nWEDMA_c;
    input n3835;
    input n3840;
    input n3841;
    output RAMRD;
    output RAMWR;
    output n3877;
    input BA_c;
    input PHI2_c;
    output nAOE_c;
    input PHI2_N_556_enable_78;
    input n3429;
    input [15:0]Length;
    output n3387;
    output Length1_N_357;
    input nWEDMA_N_13;
    output n6;
    input n3853;
    input AutoloadEN;
    output REUAOut_15__N_60;
    input XferVerify;
    output VerifyErr;
    input n3849;
    output n3831;
    input n3848;
    output REUAOut_7__N_105;
    output n3833;
    input n3854;
    output CAOut_15__N_148;
    input n3847;
    output n3832;
    input n3845;
    output CAOut_7__N_193;
    
    wire PHI2_N_556 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire SwapState_N_578, n3, DMAr;
    wire [2:1]nRESETr_c;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire BAr, n3838, DMA_N_584, DMARW_N_601, DMARW_N_600, DMARW_N_606, 
        RAMRD_N_557, RAMWR_N_573, n12, n14, n15, n11, n18;
    
    LUT4 i3226_3_lut_4_lut (.A(DMA), .B(n3836), .C(n3852), .D(IntPending), 
         .Z(n3576)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i3226_3_lut_4_lut.init = 16'h0f08;
    LUT4 i3_1_lut (.A(SwapState), .Z(SwapState_N_578)) /* synthesis lut_function=(!(A)) */ ;
    defparam i3_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut (.A(SwapState), .B(n3839), .C(n3836), .D(DMA), 
         .Z(n3)) /* synthesis lut_function=(!(A (C (D))+!A ((C (D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(63[13] 77[7])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0eee;
    LUT4 i1_3_lut_rep_54_4_lut (.A(\XferType[0] ), .B(n3842), .C(SwapState), 
         .D(n3869), .Z(n3837)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(28[17:37])
    defparam i1_3_lut_rep_54_4_lut.init = 16'hfb00;
    LUT4 i1_4_lut_rep_95 (.A(DMA), .B(nRESETr[1]), .C(DMAr), .D(nRESETr_c[2]), 
         .Z(n4066)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut_rep_95.init = 16'h1151;
    LUT4 i1_2_lut (.A(DMAr), .B(BAr), .Z(NextREUA_N_622)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2107_2_lut_rep_55_3_lut (.A(\XferType[0] ), .B(n3842), .C(SwapState), 
         .Z(n3838)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(28[17:37])
    defparam i2107_2_lut_rep_55_3_lut.init = 16'hfbfb;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(n3836), .C(DMA), .Z(DMA_N_584)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(79[11] 103[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    LUT4 i1_4_lut (.A(DMA), .B(nRESETr[1]), .C(DMAr), .D(nRESETr_c[2]), 
         .Z(RegReset)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut.init = 16'h1151;
    LUT4 i1208_3_lut_4_lut_3_lut (.A(\XferType[0] ), .B(n3842), .C(Execute), 
         .Z(DMARW_N_601)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(27[19:39])
    defparam i1208_3_lut_4_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_4_lut_rep_96 (.A(DMA), .B(nRESETr[1]), .C(DMAr), .D(nRESETr_c[2]), 
         .Z(n4067)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut_rep_96.init = 16'h1151;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_556), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX DMA_97 (.D(DMA_N_584), .CK(PHI2_N_556), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam DMA_97.GSR = "ENABLED";
    FD1S3AX DMARW_98 (.D(DMARW_N_600), .CK(PHI2_N_556), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam DMARW_98.GSR = "ENABLED";
    LUT4 i2116_4_lut (.A(n3838), .B(n3835), .C(n3840), .D(n3841), .Z(DMARW_N_606)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(53[12] 78[6])
    defparam i2116_4_lut.init = 16'hc8c0;
    FD1S3AX RAMRD_99 (.D(RAMRD_N_557), .CK(PHI2_N_556), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam RAMRD_99.GSR = "ENABLED";
    FD1S3IX RAMWR_100 (.D(RAMWR_N_573), .CK(PHI2_N_556), .CD(n3877), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam RAMWR_100.GSR = "ENABLED";
    FD1S3AX DMAr_101 (.D(DMA), .CK(PHI2_N_556), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam DMAr_101.GSR = "ENABLED";
    FD1S3AX BAr_102 (.D(BA_c), .CK(PHI2_N_556), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam BAr_102.GSR = "ENABLED";
    LUT4 AOE_I_0_26_1_lut_rep_94 (.A(DMA), .Z(n3877)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam AOE_I_0_26_1_lut_rep_94.init = 16'h5555;
    LUT4 i3332_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_c)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3332_3_lut_3_lut.init = 16'h2f2f;
    LUT4 i1_4_lut_adj_159 (.A(n3840), .B(Execute), .C(n3), .D(DMA), 
         .Z(RAMRD_N_557)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(79[11] 103[5])
    defparam i1_4_lut_adj_159.init = 16'h5044;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_556), .Q(nRESETr_c[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    PFUMX DMARW_I_0_112 (.BLUT(DMARW_N_601), .ALUT(DMARW_N_606), .C0(DMA), 
          .Z(DMARW_N_600)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;
    FD1P3IX SwapState_96 (.D(SwapState_N_578), .SP(PHI2_N_556_enable_78), 
            .CD(n3429), .CK(PHI2_N_556), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(33[8] 38[4])
    defparam SwapState_96.GSR = "ENABLED";
    LUT4 i3338_4_lut (.A(\XferType[0] ), .B(n3835), .C(n3842), .D(SwapState), 
         .Z(RAMWR_N_573)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C)))) */ ;
    defparam i3338_4_lut.init = 16'h0545;
    LUT4 i6_4_lut (.A(Length[1]), .B(n12), .C(Length[6]), .D(Length[4]), 
         .Z(n3387)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(Length[2]), .B(Length[7]), .C(Length[5]), .D(Length[3]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(Length[9]), .B(Length[11]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i8_4_lut (.A(n15), .B(n11), .C(Length[0]), .D(Length[14]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i8_4_lut.init = 16'hffef;
    LUT4 i9_4_lut (.A(Length[13]), .B(n18), .C(n14), .D(n3387), .Z(Length1_N_357)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i19_4_lut (.A(Length1_N_357), .B(nWEDMA_N_13), .C(\XferType[0] ), 
         .D(SwapState), .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(127[2] 130[41])
    defparam i19_4_lut.init = 16'h7570;
    LUT4 i5_2_lut (.A(Length[10]), .B(Length[8]), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_160 (.A(Length[12]), .B(Length[15]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_160.init = 16'heeee;
    LUT4 Autoload_I_0_728_2_lut_3_lut_4_lut (.A(DMA), .B(n3836), .C(n3853), 
         .D(AutoloadEN), .Z(REUAOut_15__N_60)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_728_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i2_3_lut_4_lut (.A(DMA), .B(n3836), .C(XferVerify), .D(nWEDMA_N_13), 
         .Z(VerifyErr)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 Autoload_I_0_2_lut_rep_48_3_lut_4_lut (.A(DMA), .B(n3836), .C(n3849), 
         .D(AutoloadEN), .Z(n3831)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_2_lut_rep_48_3_lut_4_lut.init = 16'h8f0f;
    LUT4 Autoload_I_0_737_2_lut_3_lut_4_lut (.A(DMA), .B(n3836), .C(n3848), 
         .D(AutoloadEN), .Z(REUAOut_7__N_105)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_737_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 AutoloadEN_I_0_2_lut_rep_50_3_lut (.A(DMA), .B(n3836), .C(AutoloadEN), 
         .Z(n3833)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam AutoloadEN_I_0_2_lut_rep_50_3_lut.init = 16'h8080;
    LUT4 Autoload_I_0_750_2_lut_3_lut_4_lut (.A(DMA), .B(n3836), .C(n3854), 
         .D(AutoloadEN), .Z(CAOut_15__N_148)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_750_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 Autoload_I_0_809_2_lut_rep_49_3_lut_4_lut (.A(DMA), .B(n3836), 
         .C(n3847), .D(AutoloadEN), .Z(n3832)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_809_2_lut_rep_49_3_lut_4_lut.init = 16'hf8f0;
    LUT4 Autoload_I_0_794_2_lut_3_lut_4_lut (.A(DMA), .B(n3836), .C(n3845), 
         .D(AutoloadEN), .Z(CAOut_7__N_193)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_794_2_lut_3_lut_4_lut.init = 16'hf8f0;
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (\CA[3] , \CA[0] , n3873, nWE_c, A_out_1, A_out_0, n3851, 
            \CA[1] , \CA[2] , \IncMode[1] , \CA[7] , \CA[6] , \CA[5] , 
            n1437, n3872, n3853, n3869, n3839, SwapState, \Length[0] , 
            n4, IncCA, DMA, BA_c, nRWOE_c, nIO2_c, n3862, nWEDMA_c, 
            DOE, n3864, n3855, \CA[4] , n3837, CAOut_15__N_146, 
            PHI2_c, nDOE_N_632, DDIR_c, n3865, n3852, n3850, n3859) /* synthesis syn_module_defined=1 */ ;
    input \CA[3] ;
    input \CA[0] ;
    output n3873;
    input nWE_c;
    input A_out_1;
    input A_out_0;
    output n3851;
    input \CA[1] ;
    input \CA[2] ;
    input \IncMode[1] ;
    input \CA[7] ;
    input \CA[6] ;
    input \CA[5] ;
    input n1437;
    input n3872;
    output n3853;
    output n3869;
    input n3839;
    input SwapState;
    input \Length[0] ;
    output n4;
    output IncCA;
    input DMA;
    input BA_c;
    output nRWOE_c;
    input nIO2_c;
    output n3862;
    input nWEDMA_c;
    output DOE;
    output n3864;
    output n3855;
    input \CA[4] ;
    input n3837;
    output CAOut_15__N_146;
    input PHI2_c;
    output nDOE_N_632;
    output DDIR_c;
    input n3865;
    output n3852;
    output n3850;
    output n3859;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n9, n8, n8_adj_637;
    
    LUT4 i3_2_lut (.A(\CA[3] ), .B(\CA[0] ), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_68_3_lut_4_lut (.A(n3873), .B(nWE_c), .C(A_out_1), 
         .D(A_out_0), .Z(n3851)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_68_3_lut_4_lut.init = 16'h1000;
    LUT4 i2_4_lut (.A(\CA[1] ), .B(\CA[2] ), .C(n8), .D(\IncMode[1] ), 
         .Z(n8_adj_637)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i3_3_lut (.A(\CA[7] ), .B(\CA[6] ), .C(\CA[5] ), .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i3_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(n3873), .B(nWE_c), .C(n1437), 
         .D(n3872), .Z(n3853)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n3869), .B(n3839), .C(SwapState), .D(\Length[0] ), 
         .Z(n4)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i1_2_lut_4_lut.init = 16'h00a8;
    LUT4 i1_2_lut_4_lut_adj_158 (.A(n3869), .B(n3839), .C(SwapState), 
         .D(\IncMode[1] ), .Z(IncCA)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i1_2_lut_4_lut_adj_158.init = 16'h00a8;
    LUT4 AOE_I_0_2_lut_rep_86 (.A(DMA), .B(BA_c), .Z(n3869)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam AOE_I_0_2_lut_rep_86.init = 16'h8888;
    LUT4 nRWOE_I_0_1_lut_2_lut (.A(DMA), .B(BA_c), .Z(nRWOE_c)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam nRWOE_I_0_1_lut_2_lut.init = 16'h7777;
    LUT4 i2123_2_lut_rep_90 (.A(DMA), .B(nIO2_c), .Z(n3873)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2123_2_lut_rep_90.init = 16'heeee;
    LUT4 RegCS_I_0_30_2_lut_rep_79_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n3862)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_30_2_lut_rep_79_3_lut.init = 16'h1010;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 i2125_2_lut_rep_81_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3864)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2125_2_lut_rep_81_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_72_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(A_out_0), 
         .D(nWE_c), .Z(n3855)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_72_3_lut_4_lut.init = 16'h0010;
    LUT4 i5_4_lut (.A(n9), .B(\CA[4] ), .C(n8_adj_637), .D(n3837), .Z(CAOut_15__N_146)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i3329_4_lut (.A(PHI2_c), .B(nIO2_c), .C(BA_c), .D(DMA), .Z(nDOE_N_632)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(38[15:44])
    defparam i3329_4_lut.init = 16'h5fdd;
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(37[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 RegRD_I_0_2_lut_rep_69_3_lut_4_lut (.A(n3873), .B(nWE_c), .C(n3865), 
         .D(n3872), .Z(n3852)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(45[16:28])
    defparam RegRD_I_0_2_lut_rep_69_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_67_3_lut_4_lut (.A(n3873), .B(nWE_c), .C(A_out_1), 
         .D(A_out_0), .Z(n3850)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_67_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_rep_76_4_lut (.A(n3873), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n3859)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_76_4_lut.init = 16'hffef;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (S, RAMWR, \REUA[12] , \REUA[3] , \REUA[14] , \REUA[5] , 
            \REUA[16] , \REUA[7] , \REUA[17] , \REUA[8] , \REUA[18] , 
            \REUA[9] , C8M_c, n4065, \REUA[10] , \REUA[1] , nRESET_c, 
            C8M_N_515, PHI2_c, nCS_c, nRAS_c, nCAS_c, n383, nRWE_c, 
            DQML_c, A_0__N_545, RA_c_0, C8M_c_enable_12, WRDr, PHI2_N_556, 
            D_out_0, RAMRDD, RD_out_0, RA_c_1, RA_c_10, RA_c_5, 
            RA_c_2, RA_c_3, n598, RA_c_4, RA_c_6, RA_c_7, RA_c_8, 
            RA_c_9, n1557, D_out_1, D_out_2, D_out_3, D_out_4, D_out_5, 
            D_out_6, D_out_7, RD_out_1, RD_out_2, RD_out_3, RD_out_4, 
            RD_out_5, RD_out_6, RD_out_7, DQMH_c, \REUA[0] , RAMRD, 
            n1135, RCLK_c, \REUA[11] , \REUA[2] , \REUA[15] , \REUA[6] ) /* synthesis syn_module_defined=1 */ ;
    output [2:0]S;
    input RAMWR;
    input \REUA[12] ;
    input \REUA[3] ;
    input \REUA[14] ;
    input \REUA[5] ;
    input \REUA[16] ;
    input \REUA[7] ;
    input \REUA[17] ;
    input \REUA[8] ;
    input \REUA[18] ;
    input \REUA[9] ;
    input C8M_c;
    input n4065;
    input \REUA[10] ;
    input \REUA[1] ;
    input nRESET_c;
    input C8M_N_515;
    input PHI2_c;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    input n383;
    output nRWE_c;
    output DQML_c;
    input A_0__N_545;
    output RA_c_0;
    input C8M_c_enable_12;
    output [7:0]WRDr;
    input PHI2_N_556;
    input D_out_0;
    output [7:0]RAMRDD;
    input RD_out_0;
    output RA_c_1;
    output RA_c_10;
    output RA_c_5;
    output RA_c_2;
    output RA_c_3;
    input n598;
    output RA_c_4;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    input n1557;
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
    input RAMRD;
    output n1135;
    output RCLK_c;
    input \REUA[11] ;
    input \REUA[2] ;
    input \REUA[15] ;
    input \REUA[6] ;
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_515 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_556 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire InitDone, n3879;
    wire [14:0]n586;
    
    wire n3575, n3390, PORDone, PORDone_N_527, n3867, n3463, C8M_c_enable_6, 
        n3868, C8M_c_enable_3, RDOE_N_553, C8M_c_enable_5, n3385, 
        n3871;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[11:16])
    
    wire n1207;
    wire [2:0]S_2__N_521;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[11:18])
    
    wire CP2, CP1_N_547, n2538;
    wire [17:0]n380;
    wire [17:0]n231;
    
    wire RDOE, CP1, RDD_7__N_530, n3, n3880, n3856;
    
    LUT4 mux_179_i15_3_lut_else_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .D(RAMWR), .Z(n3879)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_179_i15_3_lut_else_3_lut.init = 16'h1f3f;
    LUT4 mux_252_i3_3_lut (.A(\REUA[12] ), .B(\REUA[3] ), .C(S[0]), .Z(n586[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i3_3_lut.init = 16'hcaca;
    LUT4 mux_252_i5_3_lut (.A(\REUA[14] ), .B(\REUA[5] ), .C(S[0]), .Z(n586[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i5_3_lut.init = 16'hcaca;
    LUT4 mux_252_i7_3_lut (.A(\REUA[16] ), .B(\REUA[7] ), .C(S[0]), .Z(n586[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i7_3_lut.init = 16'hcaca;
    LUT4 mux_252_i8_3_lut (.A(\REUA[17] ), .B(\REUA[8] ), .C(S[0]), .Z(n586[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i8_3_lut.init = 16'hcaca;
    LUT4 mux_252_i9_3_lut (.A(\REUA[18] ), .B(\REUA[9] ), .C(S[0]), .Z(n586[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i9_3_lut.init = 16'hcaca;
    FD1P3AX InitDone_109 (.D(n3575), .SP(S[2]), .CK(C8M_c), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(56[8:58])
    defparam InitDone_109.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(S[0]), .B(InitDone), .C(RAMWR), .Z(n3390)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3AX PORDone_106 (.D(n4065), .SP(PORDone_N_527), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam PORDone_106.GSR = "ENABLED";
    LUT4 mux_252_i1_3_lut (.A(\REUA[10] ), .B(\REUA[1] ), .C(S[0]), .Z(n586[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_84 (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n3867)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_84.init = 16'h0404;
    LUT4 i3325_3_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(n3463)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3325_3_lut_4_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_4_lut_3_lut (.A(S[0]), .B(S[2]), .C(S[1]), .Z(C8M_c_enable_6)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i1_2_lut_4_lut_3_lut.init = 16'h0707;
    LUT4 i184_2_lut_rep_85 (.A(S[2]), .B(S[1]), .Z(n3868)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i184_2_lut_rep_85.init = 16'heeee;
    LUT4 equal_20_i5_2_lut_rep_78_3_lut (.A(S[2]), .B(S[1]), .C(S[0]), 
         .Z(C8M_c_enable_3)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam equal_20_i5_2_lut_rep_78_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(S[2]), .B(S[1]), .C(n3390), .Z(RDOE_N_553)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_2_lut_rep_77_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(C8M_c_enable_5)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i2_2_lut_rep_77_3_lut.init = 16'h0808;
    LUT4 i3225_3_lut_3_lut (.A(S[0]), .B(S[1]), .C(InitDone), .Z(n3575)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i3225_3_lut_3_lut.init = 16'hf8f8;
    LUT4 i15_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n3385)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i863_1_lut_rep_88 (.A(PORDone), .Z(n3871)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i863_1_lut_rep_88.init = 16'h5555;
    LUT4 i864_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_3), .Z(n1207)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[8] 37[4])
    defparam i864_2_lut_4_lut_4_lut.init = 16'h5575;
    FD1S3IX S__i0 (.D(S_2__N_521[0]), .CK(C8M_c), .CD(n3871), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i0.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8:62])
    defparam nRESETr_i0.GSR = "ENABLED";
    FD1S3AX CP2_104 (.D(CP1_N_547), .CK(C8M_N_515), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[8:45])
    defparam CP2_104.GSR = "ENABLED";
    FD1S3AX PHI2r_i0 (.D(PHI2_c), .CK(C8M_N_515), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i0.GSR = "ENABLED";
    FD1S3IX nCS_110 (.D(n2538), .CK(C8M_c), .CD(n3867), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCS_110.GSR = "ENABLED";
    FD1S3IX nRAS_111 (.D(n380[16]), .CK(C8M_c), .CD(n3867), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRAS_111.GSR = "ENABLED";
    FD1S3IX nCAS_112 (.D(n383), .CK(C8M_c), .CD(n3867), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nCAS_112.GSR = "ENABLED";
    FD1S3AX nRWE_113 (.D(n231[14]), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(59[8] 135[4])
    defparam nRWE_113.GSR = "ENABLED";
    FD1S3JX DQML_116 (.D(A_0__N_545), .CK(C8M_c), .PD(n3463), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQML_116.GSR = "ENABLED";
    FD1P3IX RA_i1 (.D(n586[0]), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_556), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3AX RDOE_121 (.D(RDOE_N_553), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(193[8:54])
    defparam RDOE_121.GSR = "ENABLED";
    FD1S3AX CP1_103 (.D(CP1_N_547), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(27[8:45])
    defparam CP1_103.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 mux_177_i17_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_12), 
         .D(S[0]), .Z(n380[16])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_177_i17_4_lut.init = 16'hf353;
    FD1P3IX S__i1 (.D(n3), .SP(C8M_c_enable_3), .CD(n1207), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n3385), .SP(C8M_c_enable_3), .CD(n1207), .CK(C8M_c), 
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
    FD1S3AX PHI2r_i1 (.D(PHI2r[0]), .CK(C8M_N_515), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_i1.GSR = "ENABLED";
    FD1P3IX RA_i2 (.D(n586[1]), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i2.GSR = "ENABLED";
    FD1P3IX RA_i11 (.D(n4065), .SP(C8M_c_enable_5), .CD(C8M_c_enable_6), 
            .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1P3JX RA_i6 (.D(n586[5]), .SP(C8M_c_enable_6), .PD(n3867), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1P3IX RA_i3 (.D(n586[2]), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1P3IX RA_i4 (.D(n598), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1P3IX RA_i5 (.D(n586[4]), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i5.GSR = "ENABLED";
    LUT4 mux_179_i15_3_lut_then_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), 
         .Z(n3880)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_179_i15_3_lut_then_3_lut.init = 16'hfefe;
    FD1P3IX RA_i7 (.D(n586[6]), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1P3IX RA_i8 (.D(n586[7]), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1P3IX RA_i9 (.D(n586[8]), .SP(C8M_c_enable_12), .CD(n3867), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(n1557), .CK(C8M_c), .PD(n3867), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_556), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_556), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_556), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_556), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_556), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_556), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_556), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(189[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_530), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(183[8] 185[4])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1S3JX DQMH_115 (.D(\REUA[0] ), .CK(C8M_c), .PD(n3463), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(137[8] 180[4])
    defparam DQMH_115.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(RAMRD), .B(C8M_c_enable_5), .C(InitDone), .D(RAMWR), 
         .Z(RDD_7__N_530)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i814_1_lut (.A(RDOE), .Z(n1135)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(194[8:10])
    defparam i814_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_157 (.A(nRESETr[4]), .B(nRESETr[3]), .C(nRESETr[1]), 
         .D(nRESETr[2]), .Z(PORDone_N_527)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[6:58])
    defparam i3_4_lut_adj_157.init = 16'h8000;
    LUT4 i2106_4_lut (.A(S[0]), .B(n3856), .C(n3868), .D(PORDone), .Z(S_2__N_521[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[7:47])
    defparam i2106_4_lut.init = 16'hdc50;
    LUT4 CP1_I_0_145_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(29[15:24])
    defparam CP1_I_0_145_2_lut.init = 16'h6666;
    LUT4 i257_2_lut (.A(S[0]), .B(S[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i257_2_lut.init = 16'h6666;
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_547)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[36:40])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    LUT4 mux_252_i2_3_lut (.A(\REUA[11] ), .B(\REUA[2] ), .C(S[0]), .Z(n586[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i2_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_73_4_lut (.A(S[0]), .B(n3868), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(n3856)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(48[11:23])
    defparam i2_3_lut_rep_73_4_lut.init = 16'h0100;
    LUT4 mux_177_i18_4_lut (.A(InitDone), .B(C8M_c_enable_5), .C(C8M_c_enable_12), 
         .D(S[0]), .Z(n2538)) /* synthesis lut_function=(!(A (B+(C))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_177_i18_4_lut.init = 16'h0353;
    LUT4 mux_252_i6_3_lut (.A(\REUA[15] ), .B(\REUA[6] ), .C(S[0]), .Z(n586[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[2] 134[9])
    defparam mux_252_i6_3_lut.init = 16'hcaca;
    PFUMX i3425 (.BLUT(n3879), .ALUT(n3880), .C0(S[2]), .Z(n231[14]));
    
endmodule
