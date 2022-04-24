// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Apr 24 06:19:49 2022
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
    
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_N_514 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(38[11:16])
    wire PHI2_N_568 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nIO2_c, 
        nAOE_c, nRWOE_c, nDOE_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, 
        nCAS_c, nRWE_c, CKE_c, RBA_c_1, RBA_c_0, n645, RA_c_11, 
        RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, RA_c_4, 
        RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c, IRQ;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, VerifyErr, DOE, Execute, 
        nWEDMA_N_13;
    wire [7:0]D_7__N_1;
    
    wire n644, n243, IntPending, EndOfBlock, ExecuteEN, AutoloadEN;
    wire [1:0]XferType_adj_661;   // c:/users/garre/repos/gw4302/cpld/reg.v(37[11:19])
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(50[12:18])
    
    wire IntEnable, VerifyErrMask;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(60[11:18])
    
    wire IncREUA, IncCA, n4092, n4310, n4088, EndOfBlock_N_464, 
        n3297, n8, n6, CAOut_15__N_149, n586, n3568, n8_adj_658, 
        Length1_N_355, n4060, IRQOut_N_451, Execute_N_455;
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(207[11:15])
    
    wire PHI2Start_N_561, A_0__N_556, XferC64REU, XferVerify, SwapState, 
        n4084, n4069, n4081, n4000, n4058, n4062, n4079, n4067, 
        n4059, n4078, n650, n651, n4077, n11, n7, C8M_c_enable_20, 
        PHI2_N_568_enable_76, n4075, D_out_7, D_out_6, D_out_5, D_out_4, 
        D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, A_out_14, 
        A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, A_out_8, 
        A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, RD_out_7, RD_out_6, 
        RD_out_5, n1225, RD_out_4, RD_out_3, RD_out_2, RD_out_1, 
        n18, RD_out_0, n4074, n11_adj_659, n3719, n34, n31, n30, 
        n3298, n4073, n4064, n3944, n3886, n22, n3727, n2328, 
        n3744, n20, n19, n4072, n2369, n4308, n3715, n4309, 
        n3920;
    
    VHI i2 (.Z(VCC_net));
    INV i3750 (.A(PHI2_c), .Z(PHI2_N_568));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    BB A_pad_9 (.I(CA[9]), .T(n4092), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n4092), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n4092), .B(A[7]), .O(n8_adj_658));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n4092), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    LUT4 REUA_2__bdd_4_lut (.A(REUA[10]), .B(A_out_3), .C(A_out_1), .D(Length[2]), 
         .Z(n3944)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C (D)))) */ ;
    defparam REUA_2__bdd_4_lut.init = 16'hfece;
    BB A_pad_12 (.I(CA[12]), .T(n4092), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n4092), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n4092), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    LUT4 i1970_3_lut (.A(REUA[12]), .B(Length[4]), .C(A_out_1), .Z(n2328)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1970_3_lut.init = 16'hcaca;
    BB A_pad_15 (.I(CA[15]), .T(n4092), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 i555_2_lut (.A(PHI2Start_N_561), .B(n243), .Z(C8M_c_enable_20)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i555_2_lut.init = 16'heeee;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n651), .B(RAMRDD[0]), .C(DMA), .D(n2369), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n650), .B(RAMRDD[1]), .C(DMA), .D(n2369), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n644), .B(RAMRDD[7]), .C(DMA), .D(n2369), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n4000), .B(RAMRDD[2]), .C(DMA), .D(n2369), 
         .Z(D_7__N_1[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    BB A_pad_8 (.I(CA[8]), .T(n4092), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n3920), .B(RAMRDD[3]), .C(DMA), .D(n2369), 
         .Z(D_7__N_1[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3886), .B(RAMRDD[4]), .C(DMA), .D(n2369), 
         .Z(D_7__N_1[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n645), .B(RAMRDD[6]), .C(DMA), .D(n2369), 
         .Z(D_7__N_1[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    BB A_pad_6 (.I(CA[6]), .T(n4092), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n4092), .B(A[5]), .O(n6));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n4092), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n4092), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n4092), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n4092), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n4092), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1225), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1225), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1225), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1225), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1225), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1225), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1225), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1225), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n4092), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_c), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n4092), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(nRWOE_c), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_c), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:13])
    OB nIRQ_pad (.I(IRQ), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
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
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(13[8:12])
    LUT4 i3416_3_lut_4_lut (.A(Length[8]), .B(n4081), .C(A_out_3), .D(n586), 
         .Z(n3727)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i3416_3_lut_4_lut.init = 16'hefe0;
    LUT4 i2_2_lut (.A(A_out_3), .B(A_out_11), .Z(n20)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    INV i3749 (.A(C8M_c), .Z(C8M_N_514));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1860_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1860_3_lut.init = 16'hcaca;
    LUT4 i17_4_lut (.A(n3719), .B(n34), .C(n30), .D(n22), .Z(Execute_N_455)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i17_4_lut.init = 16'h4000;
    LUT4 i3349_2_lut (.A(nWE_c), .B(n8_adj_658), .Z(n3719)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3349_2_lut.init = 16'heeee;
    LUT4 i4_2_lut (.A(A_out_12), .B(A_out_10), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i16_4_lut (.A(n31), .B(n3715), .C(n19), .D(n20), .Z(n34)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i16_4_lut.init = 16'h2000;
    LUT4 i13_4_lut (.A(A_out_15), .B(A_out_4), .C(A_out_1), .D(A_out_0), 
         .Z(n31)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i13_4_lut.init = 16'h0002;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3298), .S1(nWEDMA_N_13));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 i3345_2_lut (.A(n7), .B(n6), .Z(n3715)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3345_2_lut.init = 16'heeee;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n3297));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i12_4_lut (.A(A_out_14), .B(A_out_8), .C(A_out_9), .D(A_out_13), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    REUReg reureg (.GND_net(GND_net), .n4060(n4060), .AutoloadEN(AutoloadEN), 
           .A_out_3(A_out_3), .n3920(n3920), .n3727(n3727), .ExecuteEN(ExecuteEN), 
           .PHI2_N_568(PHI2_N_568), .PHI2_N_568_enable_76(PHI2_N_568_enable_76), 
           .CA({CA}), .n4310(n4310), .Length({Length}), .n4081(n4081), 
           .n4072(n4072), .D_out_4(D_out_4), .RegReset(RegReset), .A_out_0(A_out_0), 
           .D_out_5(D_out_5), .D_out_3(D_out_3), .D_out_0(D_out_0), .n4309(n4309), 
           .D_out_1(D_out_1), .D_out_2(D_out_2), .A_out_1(A_out_1), .IntPending(IntPending), 
           .n3744(n3744), .n4073(n4073), .REUA({REUA}), .n4059(n4059), 
           .D_out_6(D_out_6), .n4078(n4078), .n4074(n4074), .n650(n650), 
           .n4084(n4084), .n4079(n4079), .n4069(n4069), .IntEnable(IntEnable), 
           .D_out_7(D_out_7), .n651(n651), .n4075(n4075), .Length1_N_355(Length1_N_355), 
           .n4058(n4058), .n4062(n4062), .A_out_4(A_out_4), .A_out_2(A_out_2), 
           .n2369(n2369), .VerifyErrMask(VerifyErrMask), .IncMode({IncMode}), 
           .n644(n644), .XferType({XferType_adj_661}), .n8(n8), .EndOfBlock(EndOfBlock), 
           .IRQOut_N_451(IRQOut_N_451), .n3944(n3944), .A_0__N_556(A_0__N_556), 
           .n18(n18), .IncREUA(IncREUA), .PHI2_c(PHI2_c), .\RAMRDD[5] (RAMRDD[5]), 
           .DMA(DMA), .\D_7__N_1[5] (D_7__N_1[5]), .EndOfBlock_N_464(EndOfBlock_N_464), 
           .n645(n645), .\XferType[0] (XferType[0]), .XferC64REU(XferC64REU), 
           .XferVerify(XferVerify), .n3568(n3568), .CAOut_15__N_149(CAOut_15__N_149), 
           .IncCA(IncCA), .n4064(n4064), .n4000(n4000), .n3886(n3886), 
           .n11(n11_adj_659), .n4077(n4077), .VerifyErr(VerifyErr), .n2328(n2328), 
           .Execute_N_455(Execute_N_455), .Execute(Execute)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 68[11])
    LUT4 m1_lut (.Z(n4308)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    DMASeq dmaseq (.n4088(n4088), .SwapState(SwapState), .DMA(DMA), .n4092(n4092), 
           .BA_c(BA_c), .PHI2_c(PHI2_c), .nAOE_c(nAOE_c), .RegReset(RegReset), 
           .XferC64REU(XferC64REU), .Execute(Execute), .n4064(n4064), 
           .n4060(n4060), .n3568(n3568), .\Length[11] (Length[11]), .Length1_N_355(Length1_N_355), 
           .\Length[10] (Length[10]), .n18(n18), .\Length[15] (Length[15]), 
           .\XferType[0] (XferType[0]), .n4062(n4062), .\Length[14] (Length[14]), 
           .\Length[0] (Length[0]), .\Length[13] (Length[13]), .\Length[9] (Length[9]), 
           .\Length[8] (Length[8]), .\Length[12] (Length[12]), .nIO2_c(nIO2_c), 
           .nDOE_c(nDOE_c), .PHI2_N_568(PHI2_N_568), .nRESET_c(nRESET_c), 
           .nWEDMA_c(nWEDMA_c), .RAMRD(RAMRD), .RAMWR(RAMWR), .n11(n11), 
           .CAOut_15__N_149(CAOut_15__N_149), .\Length[1] (Length[1]), .\Length[7] (Length[7]), 
           .\Length[5] (Length[5]), .\Length[6] (Length[6]), .\Length[3] (Length[3]), 
           .\CA[7] (CA[7]), .\CA[1] (CA[1]), .IncMode({IncMode}), .\CA[5] (CA[5]), 
           .\CA[0] (CA[0]), .\CA[3] (CA[3]), .n4067(n4067), .IntPending(IntPending), 
           .n3744(n3744), .\CA[4] (CA[4]), .\CA[2] (CA[2]), .AutoloadEN(AutoloadEN), 
           .n4059(n4059), .EndOfBlock(EndOfBlock), .EndOfBlock_N_464(EndOfBlock_N_464), 
           .XferVerify(XferVerify), .nWEDMA_N_13(nWEDMA_N_13), .VerifyErr(VerifyErr), 
           .n4309(n4309), .n4069(n4069), .PHI2_N_568_enable_76(PHI2_N_568_enable_76), 
           .n4058(n4058), .D_out_1(D_out_1), .XferType({XferType_adj_661}), 
           .D_out_0(D_out_0), .IncREUA(IncREUA), .n4310(n4310), .\REUA[5] (REUA[5]), 
           .n11_adj_2(n11_adj_659)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(82[9] 96[40])
    Glue glue (.nWE_c(nWE_c), .nWEDMA_c(nWEDMA_c), .DMA(DMA), .DDIR_c(DDIR_c), 
         .IntEnable(IntEnable), .IRQOut_N_451(IRQOut_N_451), .VerifyErr(VerifyErr), 
         .VerifyErrMask(VerifyErrMask), .IRQ(IRQ), .n4078(n4078), .n4081(n4081), 
         .n4067(n4067), .n4084(n4084), .A_out_3(A_out_3), .n4072(n4072), 
         .A_out_1(A_out_1), .A_out_0(A_out_0), .n4074(n4074), .n4075(n4075), 
         .nIO2_c(nIO2_c), .n4077(n4077), .DOE(DOE), .n4079(n4079), .n8(n8), 
         .n4073(n4073), .n4088(n4088), .n4064(n4064), .SwapState(SwapState), 
         .\IncMode[1] (IncMode[1]), .IncCA(IncCA), .\CA[6] (CA[6]), .n11(n11), 
         .BA_c(BA_c), .nRWOE_c(nRWOE_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(98[7] 113[15])
    LUT4 i1_2_lut_rep_86 (.A(A_out_0), .B(A_out_1), .Z(n4081)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_2_lut_rep_86.init = 16'heeee;
    RAM ram (.PHI2Start_N_561(PHI2Start_N_561), .RA_c_10(RA_c_10), .REUA({REUA}), 
        .C8M_N_514(C8M_N_514), .n4308(n4308), .C8M_c(C8M_c), .RAMRDD({RAMRDD}), 
        .RD_out_0(RD_out_0), .RBA_c_0(RBA_c_0), .C8M_c_enable_20(C8M_c_enable_20), 
        .n243(n243), .nRESET_c(nRESET_c), .PHI2_c(PHI2_c), .n1225(n1225), 
        .RAMWR(RAMWR), .RAMRD(RAMRD), .WRDr({WRDr}), .PHI2_N_568(PHI2_N_568), 
        .D_out_0(D_out_0), .nCS_c(nCS_c), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), 
        .nRWE_c(nRWE_c), .CKE_c(CKE_c), .DQMH_c(DQMH_c), .DQML_c(DQML_c), 
        .A_0__N_556(A_0__N_556), .RA_c_9(RA_c_9), .RA_c_8(RA_c_8), .RA_c_7(RA_c_7), 
        .RA_c_6(RA_c_6), .RA_c_5(RA_c_5), .RA_c_4(RA_c_4), .RA_c_3(RA_c_3), 
        .RA_c_2(RA_c_2), .RA_c_1(RA_c_1), .RA_c_0(RA_c_0), .RCLK_c(RCLK_c), 
        .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .RBA_c_1(RBA_c_1), .D_out_1(D_out_1), .D_out_2(D_out_2), 
        .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), 
        .D_out_7(D_out_7), .RA_c_11(RA_c_11)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(70[6] 80[32])
    LUT4 i1_2_lut (.A(ExecuteEN), .B(A_out_2), .Z(n19)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n3297), .COUT(n3298));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    
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

module REUReg (GND_net, n4060, AutoloadEN, A_out_3, n3920, n3727, 
            ExecuteEN, PHI2_N_568, PHI2_N_568_enable_76, CA, n4310, 
            Length, n4081, n4072, D_out_4, RegReset, A_out_0, D_out_5, 
            D_out_3, D_out_0, n4309, D_out_1, D_out_2, A_out_1, 
            IntPending, n3744, n4073, REUA, n4059, D_out_6, n4078, 
            n4074, n650, n4084, n4079, n4069, IntEnable, D_out_7, 
            n651, n4075, Length1_N_355, n4058, n4062, A_out_4, A_out_2, 
            n2369, VerifyErrMask, IncMode, n644, XferType, n8, EndOfBlock, 
            IRQOut_N_451, n3944, A_0__N_556, n18, IncREUA, PHI2_c, 
            \RAMRDD[5] , DMA, \D_7__N_1[5] , EndOfBlock_N_464, n645, 
            \XferType[0] , XferC64REU, XferVerify, n3568, CAOut_15__N_149, 
            IncCA, n4064, n4000, n3886, n11, n4077, VerifyErr, 
            n2328, Execute_N_455, Execute) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input n4060;
    output AutoloadEN;
    input A_out_3;
    output n3920;
    input n3727;
    output ExecuteEN;
    input PHI2_N_568;
    input PHI2_N_568_enable_76;
    output [15:0]CA;
    input n4310;
    output [15:0]Length;
    input n4081;
    input n4072;
    input D_out_4;
    input RegReset;
    input A_out_0;
    input D_out_5;
    input D_out_3;
    input D_out_0;
    input n4309;
    input D_out_1;
    input D_out_2;
    input A_out_1;
    output IntPending;
    input n3744;
    input n4073;
    output [23:0]REUA;
    input n4059;
    input D_out_6;
    output n4078;
    input n4074;
    output n650;
    output n4084;
    input n4079;
    output n4069;
    output IntEnable;
    input D_out_7;
    output n651;
    input n4075;
    input Length1_N_355;
    input n4058;
    input n4062;
    input A_out_4;
    input A_out_2;
    output n2369;
    output VerifyErrMask;
    output [1:0]IncMode;
    output n644;
    output [1:0]XferType;
    output n8;
    output EndOfBlock;
    output IRQOut_N_451;
    input n3944;
    output A_0__N_556;
    output n18;
    input IncREUA;
    input PHI2_c;
    input \RAMRDD[5] ;
    input DMA;
    output \D_7__N_1[5] ;
    input EndOfBlock_N_464;
    output n645;
    input \XferType[0] ;
    output XferC64REU;
    output XferVerify;
    input n3568;
    input CAOut_15__N_149;
    input IncCA;
    output n4064;
    output n4000;
    output n3886;
    input n11;
    input n4077;
    input VerifyErr;
    input n2328;
    input Execute_N_455;
    output Execute;
    
    wire PHI2_N_568 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n3402, n3919, n3912;
    wire [7:0]n566;
    
    wire n3768, n3728, n3585;
    wire [7:0]n519;
    
    wire PHI2_N_568_enable_89, Length_15__N_305;
    wire [7:0]n1046;
    
    wire Length_12__N_324, n3398;
    wire [7:0]Length_7__N_352;
    
    wire n3914, n3913, n3915, Length_13__N_319;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(51[12:25])
    wire [7:0]Length_15__N_308;
    
    wire Length_11__N_329, n1384, n1382, Length_8__N_344, n1380;
    wire [7:0]n517;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(46[12:23])
    
    wire PHI2_N_568_enable_45, Length_9__N_339, n3998, n3999, Length_10__N_334, 
        PHI2_N_568_enable_72, PHI2_N_568_enable_14, n4082;
    wire [2:0]n518;
    wire [2:0]n521;
    wire [7:0]n1045;
    wire [7:0]n524;
    
    wire n4057, PHI2_N_568_enable_80, REUAOut_18__N_46;
    wire [7:0]CAOut_15__N_148;
    
    wire n1378, n3729, n3731, n3758, n4, n3879, n4095, n3880, 
        n1277, n1279, n1292, PHI2_N_568_enable_79, n3881, FF00DecodeEN, 
        n3882, n4087;
    wire [7:0]n523;
    
    wire n3910, n3907, n3911, PHI2_N_568_enable_38, n3726;
    wire [7:0]CAOut_7__N_192;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(41[12:21])
    
    wire PHI2_N_568_enable_81, PHI2_N_568_enable_69, n3397, n4070, PHI2_N_568_enable_62, 
        n2519, EndOfBlockMask;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(33[11:25])
    
    wire PHI2_N_568_enable_85, n3884, Length_14__N_314, PHI2_N_568_enable_64, 
        PHI2_N_568_enable_84, Execute_N_453, n3883, n3885, Length_0__N_389, 
        n1;
    wire [7:0]n590;
    
    wire n3909, n3908, n3992;
    wire [7:0]n538;
    wire [7:0]n554;
    
    wire n3996, n3997;
    wire [7:0]REUAOut_15__N_62;
    
    wire DF01Reserved6, n3899, n3730, Length_1__N_384, Fault, Fault_N_469, 
        Length_7__N_349, Length_3__N_374, Length_6__N_359, Length_4__N_369, 
        Length_5__N_364, Length_2__N_379, n4056, n3405, n3404, n3403, 
        n3901, n3396, n3906, n3905, n3902, REUAOut_15__N_63, n4068, 
        n3903, n3900, n3904, n3395, n3394, n3393, n3392, n3391, 
        n3389;
    wire [7:0]REUAOut_7__N_106;
    
    wire n3388, n3387, n3386, n4066, n3697;
    wire [7:0]n623;
    
    wire n3898;
    wire [7:0]n578;
    
    wire n3709, n1057, n3381, n3380, n3379, n3378, n3373, n3372, 
        n3371, n3370, n4071, n9, n4093, n17, n15, n12, n3916, 
        n4094, n3917, n3878, n1_adj_655, n15_adj_656, n13, n10, 
        n3723, n3918;
    
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4060), .B1(AutoloadEN), .C1(GND_net), .D1(GND_net), 
          .COUT(n3402));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 n3919_bdd_3_lut (.A(n3919), .B(n3912), .C(A_out_3), .Z(n3920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3919_bdd_3_lut.init = 16'hcaca;
    PFUMX i3358 (.BLUT(n566[0]), .ALUT(n3727), .C0(n3768), .Z(n3728));
    FD1P3AX ExecuteEN_579 (.D(n3585), .SP(PHI2_N_568_enable_76), .CK(PHI2_N_568), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam ExecuteEN_579.GSR = "ENABLED";
    FD1S3IX CA_7__585 (.D(n519[7]), .CK(PHI2_N_568), .CD(n4310), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_7__585.GSR = "ENABLED";
    FD1P3JX Length_15__676 (.D(Length_15__N_305), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_15__676.GSR = "ENABLED";
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_4), 
         .D(n1046[4]), .Z(Length_12__N_324)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_6__586 (.D(n519[6]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_6__586.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3398), .S0(Length_7__N_352[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(210[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    PFUMX i3511 (.BLUT(n3914), .ALUT(n3913), .C0(A_out_0), .Z(n3915));
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_5), 
         .D(n1046[5]), .Z(Length_13__N_319)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_729_i4_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[11]), 
         .D(Length_15__N_308[3]), .Z(n1046[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_3), 
         .D(n1046[3]), .Z(Length_11__N_329)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2189_2_lut (.A(D_out_0), .B(n4309), .Z(n1384)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i2189_2_lut.init = 16'heeee;
    LUT4 i2188_2_lut (.A(D_out_1), .B(n4309), .Z(n1382)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i2188_2_lut.init = 16'heeee;
    LUT4 mux_729_i2_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[9]), 
         .D(Length_15__N_308[1]), .Z(n1046[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_729_i1_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[8]), 
         .D(Length_15__N_308[0]), .Z(n1046[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_0), 
         .D(n1046[0]), .Z(Length_8__N_344)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2187_2_lut (.A(D_out_2), .B(n4309), .Z(n1380)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i2187_2_lut.init = 16'heeee;
    FD1S3IX CA_5__587 (.D(n519[5]), .CK(PHI2_N_568), .CD(n4310), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_5__587.GSR = "ENABLED";
    FD1S3IX CA_4__588 (.D(n519[4]), .CK(PHI2_N_568), .CD(n4310), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_4__588.GSR = "ENABLED";
    FD1S3IX CA_3__589 (.D(n519[3]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_3__589.GSR = "ENABLED";
    FD1S3IX CA_2__590 (.D(n519[2]), .CK(PHI2_N_568), .CD(n4310), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_2__590.GSR = "ENABLED";
    FD1S3IX CA_1__591 (.D(n519[1]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_1__591.GSR = "ENABLED";
    FD1S3IX CA_0__592 (.D(n519[0]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CA_0__592.GSR = "ENABLED";
    FD1S3IX CA_15__601 (.D(n517[7]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_15__601.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__658 (.D(D_out_1), .SP(PHI2_N_568_enable_45), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUAWritten_17__658.GSR = "ENABLED";
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_1), 
         .D(n1046[1]), .Z(Length_9__N_339)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    LUT4 n3998_bdd_3_lut_4_lut (.A(A_out_1), .B(Length[10]), .C(A_out_3), 
         .D(n3998), .Z(n3999)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n3998_bdd_3_lut_4_lut.init = 16'hefe0;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_2), 
         .D(n1046[2]), .Z(Length_10__N_334)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX IntPending_575 (.D(n3744), .SP(PHI2_N_568_enable_72), .CD(RegReset), 
            .CK(PHI2_N_568), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[8] 100[4])
    defparam IntPending_575.GSR = "ENABLED";
    FD1P3AX LengthWritten_8__691 (.D(n1384), .SP(PHI2_N_568_enable_14), 
            .CK(PHI2_N_568), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_8__691.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__690 (.D(n1382), .SP(PHI2_N_568_enable_14), 
            .CK(PHI2_N_568), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_9__690.GSR = "ENABLED";
    FD1P3IX REUAWritten_18__657 (.D(D_out_2), .SP(PHI2_N_568_enable_45), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUAWritten_18__657.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__689 (.D(n1380), .SP(PHI2_N_568_enable_14), 
            .CK(PHI2_N_568), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_10__689.GSR = "ENABLED";
    FD1S3IX CA_14__602 (.D(n517[6]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_14__602.GSR = "ENABLED";
    LUT4 mux_241_i3_3_lut_4_lut (.A(n4082), .B(n4073), .C(D_out_2), .D(n518[2]), 
         .Z(n521[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_241_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_728_i6_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[5]), 
         .D(Length_7__N_352[5]), .Z(n1045[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_241_i2_3_lut_4_lut (.A(n4082), .B(n4073), .C(D_out_1), .D(n518[1]), 
         .Z(n521[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_241_i2_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_13__603 (.D(n517[5]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_13__603.GSR = "ENABLED";
    FD1S3IX CA_12__604 (.D(n517[4]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_12__604.GSR = "ENABLED";
    FD1S3IX CA_11__605 (.D(n517[3]), .CK(PHI2_N_568), .CD(n4310), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_11__605.GSR = "ENABLED";
    FD1S3IX CA_10__606 (.D(n517[2]), .CK(PHI2_N_568), .CD(n4310), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_10__606.GSR = "ENABLED";
    FD1S3IX CA_9__607 (.D(n517[1]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_9__607.GSR = "ENABLED";
    FD1S3IX CA_8__608 (.D(n517[0]), .CK(PHI2_N_568), .CD(RegReset), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CA_8__608.GSR = "ENABLED";
    FD1S3IX REUA_7__617 (.D(n524[7]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_7__617.GSR = "ENABLED";
    LUT4 mux_238_i2_4_lut (.A(REUA[17]), .B(REUAWritten[17]), .C(n4059), 
         .D(n4057), .Z(n518[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(195[18:34])
    defparam mux_238_i2_4_lut.init = 16'hc5ca;
    FD1P3IX REUAWritten_6__626 (.D(D_out_6), .SP(PHI2_N_568_enable_80), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_6__626.GSR = "ENABLED";
    LUT4 mux_238_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(n4059), 
         .D(REUAOut_18__N_46), .Z(n518[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(195[18:34])
    defparam mux_238_i1_4_lut.init = 16'hc5ca;
    LUT4 mux_241_i1_3_lut_4_lut (.A(n4082), .B(n4073), .C(D_out_0), .D(n518[0]), 
         .Z(n521[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_241_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_237_i2_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_1), .D(CAOut_15__N_148[1]), 
         .Z(n517[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i2_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_11__688 (.D(n1378), .SP(PHI2_N_568_enable_14), 
            .CK(PHI2_N_568), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_11__688.GSR = "ENABLED";
    L6MUX21 mux_283_i2 (.D0(n3729), .D1(n3731), .SD(n3758), .Z(n650));
    LUT4 mux_729_i6_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[13]), 
         .D(Length_15__N_308[5]), .Z(n1046[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_237_i1_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_0), .D(CAOut_15__N_148[0]), 
         .Z(n517[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_237_i3_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_2), .D(CAOut_15__N_148[2]), 
         .Z(n517[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i3_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_12__687 (.D(n4), .SP(PHI2_N_568_enable_14), .CK(PHI2_N_568), 
            .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_12__687.GSR = "ENABLED";
    LUT4 n3879_bdd_3_lut (.A(n3879), .B(n4095), .C(A_out_1), .Z(n3880)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3879_bdd_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_13__686 (.D(n1277), .SP(PHI2_N_568_enable_14), 
            .CK(PHI2_N_568), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_13__686.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__685 (.D(n1279), .SP(PHI2_N_568_enable_14), 
            .CK(PHI2_N_568), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_14__685.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__684 (.D(n1292), .SP(PHI2_N_568_enable_14), 
            .CK(PHI2_N_568), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam LengthWritten_15__684.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__675 (.D(n1384), .SP(PHI2_N_568_enable_79), 
            .CK(PHI2_N_568), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_0__675.GSR = "ENABLED";
    LUT4 mux_237_i4_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_3), .D(CAOut_15__N_148[3]), 
         .Z(n517[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i4_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUA_19__653 (.D(D_out_3), .SP(PHI2_N_568_enable_45), .CD(RegReset), 
            .CK(PHI2_N_568), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_19__653.GSR = "ENABLED";
    FD1P3IX REUA_20__652 (.D(D_out_4), .SP(PHI2_N_568_enable_45), .CD(n4310), 
            .CK(PHI2_N_568), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_20__652.GSR = "ENABLED";
    LUT4 n2328_bdd_3_lut_3486 (.A(Length[12]), .B(A_out_1), .C(A_out_0), 
         .Z(n3881)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n2328_bdd_3_lut_3486.init = 16'hfefe;
    FD1P3AX LengthWritten_1__674 (.D(n1382), .SP(PHI2_N_568_enable_79), 
            .CK(PHI2_N_568), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_1__674.GSR = "ENABLED";
    FD1P3IX REUA_21__651 (.D(D_out_5), .SP(PHI2_N_568_enable_45), .CD(n4310), 
            .CK(PHI2_N_568), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_21__651.GSR = "ENABLED";
    LUT4 n2328_bdd_3_lut_3569 (.A(FF00DecodeEN), .B(CA[12]), .C(A_out_1), 
         .Z(n3882)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam n2328_bdd_3_lut_3569.init = 16'hc5c5;
    FD1P3AX LengthWritten_2__673 (.D(n1380), .SP(PHI2_N_568_enable_79), 
            .CK(PHI2_N_568), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_2__673.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(A_out_3), .B(n4084), .C(n4087), 
         .D(n4079), .Z(n4069)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX REUA_6__618 (.D(n524[6]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_6__618.GSR = "ENABLED";
    FD1S3IX REUA_5__619 (.D(n524[5]), .CK(PHI2_N_568), .CD(n4310), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_5__619.GSR = "ENABLED";
    FD1S3IX REUA_4__620 (.D(n524[4]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_4__620.GSR = "ENABLED";
    FD1S3IX REUA_3__621 (.D(n524[3]), .CK(PHI2_N_568), .CD(n4310), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_3__621.GSR = "ENABLED";
    FD1S3IX REUA_2__622 (.D(n524[2]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_2__622.GSR = "ENABLED";
    FD1S3IX REUA_1__623 (.D(n524[1]), .CK(PHI2_N_568), .CD(n4310), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_1__623.GSR = "ENABLED";
    FD1S3IX REUA_0__624 (.D(n524[0]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUA_0__624.GSR = "ENABLED";
    FD1S3IX REUA_15__633 (.D(n523[7]), .CK(PHI2_N_568), .CD(n4310), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_15__633.GSR = "ENABLED";
    LUT4 mux_237_i5_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_4), .D(CAOut_15__N_148[4]), 
         .Z(n517[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i5_3_lut_4_lut.init = 16'hfb40;
    L6MUX21 i3508 (.D0(n3910), .D1(n3907), .SD(A_out_0), .Z(n3911));
    FD1P3AX LengthWritten_3__672 (.D(n1378), .SP(PHI2_N_568_enable_79), 
            .CK(PHI2_N_568), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_3__672.GSR = "ENABLED";
    FD1P3IX IntEnable_692 (.D(D_out_7), .SP(PHI2_N_568_enable_38), .CD(RegReset), 
            .CK(PHI2_N_568), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(230[8] 240[4])
    defparam IntEnable_692.GSR = "ENABLED";
    LUT4 mux_237_i6_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_5), .D(CAOut_15__N_148[5]), 
         .Z(n517[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i6_3_lut_4_lut.init = 16'hfb40;
    L6MUX21 mux_283_i1 (.D0(n3726), .D1(n3728), .SD(n3758), .Z(n651));
    LUT4 mux_237_i7_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_6), .D(CAOut_15__N_148[6]), 
         .Z(n517[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_237_i8_3_lut_4_lut (.A(n4078), .B(n4074), .C(D_out_7), .D(CAOut_15__N_148[7]), 
         .Z(n517[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_237_i8_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_4__671 (.D(n4), .SP(PHI2_N_568_enable_79), .CK(PHI2_N_568), 
            .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_4__671.GSR = "ENABLED";
    FD1P3IX REUA_22__650 (.D(D_out_6), .SP(PHI2_N_568_enable_45), .CD(n4310), 
            .CK(PHI2_N_568), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_22__650.GSR = "ENABLED";
    LUT4 mux_239_i8_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_7), .D(CAOut_7__N_192[7]), 
         .Z(n519[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUA_23__649 (.D(D_out_7), .SP(PHI2_N_568_enable_45), .CD(n4310), 
            .CK(PHI2_N_568), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_23__649.GSR = "ENABLED";
    LUT4 mux_239_i7_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_6), .D(CAOut_7__N_192[6]), 
         .Z(n519[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_12__612 (.D(D_out_4), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_12__612.GSR = "ENABLED";
    LUT4 mux_239_i6_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_5), .D(CAOut_7__N_192[5]), 
         .Z(n519[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_239_i5_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_4), .D(CAOut_7__N_192[4]), 
         .Z(n519[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_8__648 (.D(D_out_0), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_8__648.GSR = "ENABLED";
    LUT4 mux_239_i4_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_3), .D(CAOut_7__N_192[3]), 
         .Z(n519[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i4_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_14__634 (.D(n523[6]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_14__634.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3397), .COUT(n3398), .S0(Length_7__N_352[5]), 
          .S1(Length_7__N_352[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(210[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 mux_239_i3_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_2), .D(CAOut_7__N_192[2]), 
         .Z(n519[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_239_i2_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_1), .D(CAOut_7__N_192[1]), 
         .Z(n519[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2_4_lut (.A(Length1_N_355), .B(n4058), .C(n4062), .D(n4070), 
         .Z(PHI2_N_568_enable_62)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut.init = 16'hffec;
    FD1S3IX REUA_13__635 (.D(n523[5]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_13__635.GSR = "ENABLED";
    FD1S3IX REUA_12__636 (.D(n523[4]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_12__636.GSR = "ENABLED";
    FD1S3IX REUA_11__637 (.D(n523[3]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_11__637.GSR = "ENABLED";
    FD1S3IX REUA_10__638 (.D(n523[2]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_10__638.GSR = "ENABLED";
    FD1S3IX REUA_9__639 (.D(n523[1]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_9__639.GSR = "ENABLED";
    FD1S3IX REUA_8__640 (.D(n523[0]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUA_8__640.GSR = "ENABLED";
    LUT4 mux_239_i1_3_lut_4_lut (.A(n4082), .B(n4075), .C(D_out_0), .D(CAOut_7__N_192[0]), 
         .Z(n519[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_239_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2204_4_lut (.A(A_out_4), .B(A_out_3), .C(n2519), .D(A_out_2), 
         .Z(n2369)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2204_4_lut.init = 16'heeea;
    FD1P3IX REUAWritten_9__647 (.D(D_out_1), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_9__647.GSR = "ENABLED";
    FD1P3IX EndOfBlockMask_693 (.D(D_out_6), .SP(PHI2_N_568_enable_38), 
            .CD(n4310), .CK(PHI2_N_568), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(230[8] 240[4])
    defparam EndOfBlockMask_693.GSR = "ENABLED";
    LUT4 i2165_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2519)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2165_2_lut.init = 16'h8888;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_568_enable_85), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    LUT4 mux_728_i4_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[3]), 
         .D(Length_7__N_352[3]), .Z(n1045[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i4_3_lut_4_lut.init = 16'hf780;
    FD1S3IX REUA_18__654 (.D(n521[2]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_18__654.GSR = "ENABLED";
    LUT4 n2328_bdd_4_lut_3573 (.A(REUA[4]), .B(CA[4]), .C(A_out_1), .D(A_out_2), 
         .Z(n3884)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D)))) */ ;
    defparam n2328_bdd_4_lut_3573.init = 16'hfacf;
    FD1S3IX REUA_17__655 (.D(n521[1]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_17__655.GSR = "ENABLED";
    FD1S3IX REUA_16__656 (.D(n521[0]), .CK(PHI2_N_568), .CD(RegReset), 
            .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUA_16__656.GSR = "ENABLED";
    FD1P3AX CAWritten_11__613 (.D(D_out_3), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_11__613.GSR = "ENABLED";
    FD1P3JX Length_14__677 (.D(Length_14__N_314), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_14__677.GSR = "ENABLED";
    FD1P3AX CAWritten_10__614 (.D(D_out_2), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_10__614.GSR = "ENABLED";
    LUT4 i733_2_lut_rep_54 (.A(REUA[16]), .B(REUAOut_18__N_46), .Z(n4057)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(195[18:34])
    defparam i733_2_lut_rep_54.init = 16'h8888;
    FD1P3AX CAWritten_9__615 (.D(D_out_1), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_9__615.GSR = "ENABLED";
    FD1P3AX CAWritten_8__616 (.D(D_out_0), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_8__616.GSR = "ENABLED";
    FD1P3AX CAWritten_6__594 (.D(D_out_6), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_6__594.GSR = "ENABLED";
    FD1P3AX CAWritten_5__595 (.D(D_out_5), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_5__595.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_694 (.D(D_out_5), .SP(PHI2_N_568_enable_38), .CD(n4310), 
            .CK(PHI2_N_568), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(230[8] 240[4])
    defparam VerifyErrMask_694.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_568_enable_84), .CD(n4310), 
            .CK(PHI2_N_568), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(246[8] 249[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4087), .B(n4075), .C(D_out_4), .D(D_out_7), 
         .Z(Execute_N_453)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 n3884_bdd_3_lut_3663 (.A(n3884), .B(n3883), .C(A_out_0), .Z(n3885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3884_bdd_3_lut_3663.init = 16'hcaca;
    FD1P3JX Length_12__679 (.D(Length_12__N_324), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_12__679.GSR = "ENABLED";
    FD1P3JX Length_0__667 (.D(Length_0__N_389), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_0__667.GSR = "ENABLED";
    LUT4 i6_3_lut (.A(n3911), .B(n1), .C(A_out_3), .Z(n644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(n4087), .B(n4075), .C(n4309), 
         .D(D_out_7), .Z(n3585)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'h0100;
    FD1P3AX CAWritten_4__596 (.D(D_out_4), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_4__596.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(n590[7]), .B(IncMode[1]), .C(A_out_1), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i5_3_lut.init = 16'hcaca;
    PFUMX i3506 (.BLUT(n3909), .ALUT(n3908), .C0(A_out_2), .Z(n3910));
    LUT4 n3944_bdd_3_lut (.A(DF01Reserved32[2]), .B(CA[10]), .C(A_out_1), 
         .Z(n3992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3944_bdd_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_3__597 (.D(D_out_3), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_3__597.GSR = "ENABLED";
    LUT4 mux_270_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n590[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_270_i8_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_2__598 (.D(D_out_2), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_2__598.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__659 (.D(D_out_0), .SP(PHI2_N_568_enable_45), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(185[8] 197[4])
    defparam REUAWritten_16__659.GSR = "ENABLED";
    PFUMX i3359 (.BLUT(n538[1]), .ALUT(n554[1]), .C0(A_out_1), .Z(n3729));
    LUT4 REUA_2__bdd_3_lut_3595 (.A(CA[2]), .B(REUA[18]), .C(A_out_2), 
         .Z(n3996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam REUA_2__bdd_3_lut_3595.init = 16'hcaca;
    LUT4 REUA_2__bdd_2_lut_3594 (.A(REUA[2]), .B(A_out_2), .Z(n3997)) /* synthesis lut_function=(A (B)) */ ;
    defparam REUA_2__bdd_2_lut_3594.init = 16'h8888;
    LUT4 mux_243_i8_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_7), .D(REUAOut_15__N_62[7]), 
         .Z(n523[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_out_2_bdd_3_lut_3502 (.A(CA[14]), .B(A_out_1), .C(DF01Reserved6), 
         .Z(n3899)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut_3502.init = 16'hb8b8;
    LUT4 i2186_2_lut (.A(D_out_3), .B(n4309), .Z(n1378)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i2186_2_lut.init = 16'heeee;
    LUT4 mux_243_i7_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_6), .D(REUAOut_15__N_62[6]), 
         .Z(n523[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_568_enable_85), .CD(n4310), 
            .CK(PHI2_N_568), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i0.GSR = "ENABLED";
    LUT4 mux_243_i6_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_5), .D(REUAOut_15__N_62[5]), 
         .Z(n523[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_243_i5_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_4), .D(REUAOut_15__N_62[4]), 
         .Z(n523[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_243_i4_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_3), .D(REUAOut_15__N_62[3]), 
         .Z(n523[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i4_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3361 (.BLUT(n566[1]), .ALUT(n3730), .C0(n3768), .Z(n3731));
    LUT4 i1_2_lut (.A(n4309), .B(D_out_4), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3JX Length_1__666 (.D(Length_1__N_384), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_1__666.GSR = "ENABLED";
    LUT4 mux_243_i3_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_2), .D(REUAOut_15__N_62[2]), 
         .Z(n523[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX Fault_577 (.D(Fault_N_469), .SP(PHI2_N_568_enable_72), .CD(n4310), 
            .CK(PHI2_N_568), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[8] 100[4])
    defparam Fault_577.GSR = "ENABLED";
    LUT4 mux_243_i2_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_1), .D(REUAOut_15__N_62[1]), 
         .Z(n523[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2171_2_lut (.A(D_out_5), .B(n4309), .Z(n1277)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i2171_2_lut.init = 16'heeee;
    LUT4 i2172_2_lut (.A(D_out_6), .B(n4309), .Z(n1279)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i2172_2_lut.init = 16'heeee;
    LUT4 i2174_2_lut (.A(D_out_7), .B(n4309), .Z(n1292)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i2174_2_lut.init = 16'heeee;
    LUT4 mux_243_i1_3_lut_4_lut (.A(n4087), .B(n4073), .C(D_out_0), .D(REUAOut_15__N_62[0]), 
         .Z(n523[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_243_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_7), .D(n1045[7]), 
         .Z(Length_7__N_349)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_1__599 (.D(D_out_1), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_1__599.GSR = "ENABLED";
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_3), .D(n1045[3]), 
         .Z(Length_3__N_374)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_10__646 (.D(D_out_2), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_10__646.GSR = "ENABLED";
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_6), .D(n1045[6]), 
         .Z(Length_6__N_359)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_4), .D(n1045[4]), 
         .Z(Length_4__N_369)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_0__600 (.D(D_out_0), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_0__600.GSR = "ENABLED";
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_5), .D(n1045[5]), 
         .Z(Length_5__N_364)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_2), 
         .D(n1045[2]), .Z(Length_2__N_379)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_11__645 (.D(D_out_3), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_11__645.GSR = "ENABLED";
    FD1P3AX CAWritten_15__609 (.D(D_out_7), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_15__609.GSR = "ENABLED";
    FD1P3AX CAWritten_14__610 (.D(D_out_6), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_14__610.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__668 (.D(n1292), .SP(PHI2_N_568_enable_79), 
            .CK(PHI2_N_568), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_7__668.GSR = "ENABLED";
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_1), 
         .D(n1045[1]), .Z(Length_1__N_384)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_13__678 (.D(Length_13__N_319), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_13__678.GSR = "ENABLED";
    LUT4 EndOfBlock_I_0_833_2_lut (.A(EndOfBlock), .B(EndOfBlockMask), .Z(IRQOut_N_451)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(242[3:33])
    defparam EndOfBlock_I_0_833_2_lut.init = 16'h8888;
    LUT4 n3992_bdd_4_lut (.A(n3992), .B(n3944), .C(A_out_2), .D(A_out_3), 
         .Z(n4056)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam n3992_bdd_4_lut.init = 16'hccca;
    FD1P3JX Length_2__665 (.D(Length_2__N_379), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_2__665.GSR = "ENABLED";
    FD1P3JX Length_3__664 (.D(Length_3__N_374), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_3__664.GSR = "ENABLED";
    FD1P3JX Length_4__663 (.D(Length_4__N_369), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_4__663.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(n4059), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n3405), .S0(REUAOut_15__N_62[6]), .S1(REUAOut_15__N_62[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    FD1P3JX Length_5__662 (.D(Length_5__N_364), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_5__662.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(n4059), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n3404), .COUT(n3405), .S0(REUAOut_15__N_62[4]), 
          .S1(REUAOut_15__N_62[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    FD1P3JX Length_6__661 (.D(Length_6__N_359), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_6__661.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(n4059), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n3403), .COUT(n3404), .S0(REUAOut_15__N_62[2]), 
          .S1(REUAOut_15__N_62[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    FD1P3JX Length_7__660 (.D(Length_7__N_349), .SP(PHI2_N_568_enable_62), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam Length_7__660.GSR = "ENABLED";
    LUT4 CA_6__bdd_2_lut_3547 (.A(REUA[6]), .B(A_out_1), .Z(n3901)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_6__bdd_2_lut_3547.init = 16'heeee;
    FD1P3IX REUAWritten_12__644 (.D(D_out_4), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_12__644.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3396), .COUT(n3397), .S0(Length_7__N_352[3]), 
          .S1(Length_7__N_352[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(210[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(n8), .B(n4074), .C(n4309), .Z(PHI2_N_568_enable_79)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf4f4;
    LUT4 mux_728_i7_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[6]), 
         .D(Length_7__N_352[6]), .Z(n1045[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i7_3_lut_4_lut.init = 16'hf780;
    FD1P3AX CAWritten_7__593 (.D(D_out_7), .SP(PHI2_N_568_enable_64), .CK(PHI2_N_568), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[8] 138[4])
    defparam CAWritten_7__593.GSR = "ENABLED";
    PFUMX i3504 (.BLUT(n3906), .ALUT(n3905), .C0(A_out_2), .Z(n3907));
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_556)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(169[12:17])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 CA_6__bdd_3_lut_3548 (.A(CA[6]), .B(EndOfBlock), .C(A_out_1), 
         .Z(n3902)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_6__bdd_3_lut_3548.init = 16'hacac;
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_63), .B0(n4059), .C0(REUAWritten[8]), 
          .D0(REUA[8]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[9]), 
          .D1(REUA[9]), .CIN(n3402), .COUT(n3403), .S0(REUAOut_15__N_62[0]), 
          .S1(REUAOut_15__N_62[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(180[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    LUT4 i2224_2_lut_rep_65_4_lut (.A(A_out_3), .B(n4084), .C(n4079), 
         .D(n4081), .Z(n4068)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i2224_2_lut_rep_65_4_lut.init = 16'hfffd;
    FD1P3IX AutoloadEN_581 (.D(D_out_5), .SP(PHI2_N_568_enable_85), .CD(n4310), 
            .CK(PHI2_N_568), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam AutoloadEN_581.GSR = "ENABLED";
    LUT4 i447_2_lut_3_lut_4_lut (.A(n4079), .B(n8), .C(n4309), .D(n4082), 
         .Z(PHI2_N_568_enable_45)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i447_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i407_2_lut_3_lut_4_lut (.A(n4079), .B(n8), .C(n4309), .D(n4087), 
         .Z(PHI2_N_568_enable_69)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i407_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i375_2_lut_3_lut_4_lut (.A(n4079), .B(n8), .C(n4309), .D(n4081), 
         .Z(PHI2_N_568_enable_80)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i375_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1_2_lut_rep_67_4_lut (.A(A_out_0), .B(n4079), .C(A_out_1), .D(n8), 
         .Z(n4070)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_67_4_lut.init = 16'h0020;
    L6MUX21 i3500 (.D0(n3903), .D1(n3900), .SD(A_out_0), .Z(n3904));
    LUT4 i1_2_lut_adj_170 (.A(Length[2]), .B(Length[4]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam i1_2_lut_adj_170.init = 16'heeee;
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3395), .COUT(n3396), .S0(Length_7__N_352[1]), 
          .S1(Length_7__N_352[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(210[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3395), .S1(Length_7__N_352[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(210[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3394), .S0(Length_15__N_308[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(225[19:37])
    defparam Length_15__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3393), .COUT(n3394), .S0(Length_15__N_308[5]), 
          .S1(Length_15__N_308[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(225[19:37])
    defparam Length_15__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3392), .COUT(n3393), .S0(Length_15__N_308[3]), 
          .S1(Length_15__N_308[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(225[19:37])
    defparam Length_15__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3391), .COUT(n3392), .S0(Length_15__N_308[1]), 
          .S1(Length_15__N_308[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(225[19:37])
    defparam Length_15__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3391), .S1(Length_15__N_308[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(225[19:37])
    defparam Length_15__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 i3438_2_lut_3_lut_4_lut (.A(n4079), .B(n4078), .C(n4309), .D(n4082), 
         .Z(PHI2_N_568_enable_64)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3438_2_lut_3_lut_4_lut.init = 16'h0001;
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(n4059), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n3389), .S0(REUAOut_7__N_106[6]), .S1(REUAOut_7__N_106[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(n4059), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n3388), .COUT(n3389), .S0(REUAOut_7__N_106[4]), 
          .S1(REUAOut_7__N_106[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(n4059), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n3387), .COUT(n3388), .S0(REUAOut_7__N_106[2]), 
          .S1(REUAOut_7__N_106[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUA), .B0(n4059), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(n4059), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n3386), .COUT(n3387), .S0(REUAOut_7__N_106[0]), 
          .S1(REUAOut_7__N_106[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n4060), .B1(AutoloadEN), .C1(GND_net), .D1(GND_net), 
          .COUT(n3386));   // c:/users/garre/repos/gw4302/cpld/reg.v(165[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_63_3_lut_4_lut (.A(n4079), .B(n4078), .C(PHI2_c), 
         .D(n4087), .Z(n4066)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_63_3_lut_4_lut.init = 16'h0010;
    PFUMX i3356 (.BLUT(n538[0]), .ALUT(n554[0]), .C0(A_out_1), .Z(n3726));
    LUT4 i3461_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3758)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i3461_2_lut.init = 16'heeee;
    FD1P3IX REUAWritten_7__625 (.D(D_out_7), .SP(PHI2_N_568_enable_80), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_7__625.GSR = "ENABLED";
    FD1P3IX REUAWritten_13__643 (.D(D_out_5), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_13__643.GSR = "ENABLED";
    PFUMX i3498 (.BLUT(n3902), .ALUT(n3901), .C0(A_out_2), .Z(n3903));
    LUT4 mux_728_i8_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[7]), 
         .D(Length_7__N_352[7]), .Z(n1045[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_729_i3_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[10]), 
         .D(Length_15__N_308[2]), .Z(n1046[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i3_3_lut_4_lut.init = 16'hf780;
    FD1P3IX REUAWritten_14__642 (.D(D_out_6), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_14__642.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__641 (.D(D_out_7), .SP(PHI2_N_568_enable_69), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(170[8] 182[4])
    defparam REUAWritten_15__641.GSR = "ENABLED";
    FD1P3IX REUAWritten_0__632 (.D(D_out_0), .SP(PHI2_N_568_enable_80), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_0__632.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(n2369), .B(\RAMRDD[5] ), .C(DMA), .D(n3880), 
         .Z(\D_7__N_1[5] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i15_4_lut.init = 16'hcfca;
    FD1P3IX REUAWritten_1__631 (.D(D_out_1), .SP(PHI2_N_568_enable_80), 
            .CD(n4310), .CK(PHI2_N_568), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_1__631.GSR = "ENABLED";
    FD1P3IX EndOfBlock_576 (.D(EndOfBlock_N_464), .SP(PHI2_N_568_enable_72), 
            .CD(n4310), .CK(PHI2_N_568), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(83[8] 100[4])
    defparam EndOfBlock_576.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__630 (.D(D_out_2), .SP(PHI2_N_568_enable_80), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_2__630.GSR = "ENABLED";
    FD1P3IX REUAWritten_3__629 (.D(D_out_3), .SP(PHI2_N_568_enable_80), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_3__629.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__628 (.D(D_out_4), .SP(PHI2_N_568_enable_80), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_4__628.GSR = "ENABLED";
    LUT4 i2880_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n554[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2880_3_lut.init = 16'hcaca;
    FD1P3AX FF00DecodeEN_582 (.D(n3697), .SP(PHI2_N_568_enable_76), .CK(PHI2_N_568), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam FF00DecodeEN_582.GSR = "ENABLED";
    LUT4 i2137_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n538[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i2137_2_lut.init = 16'h8888;
    FD1P3AX LengthWritten_6__669 (.D(n1279), .SP(PHI2_N_568_enable_79), 
            .CK(PHI2_N_568), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_6__669.GSR = "ENABLED";
    LUT4 mux_283_i7_3_lut (.A(n3904), .B(n623[6]), .C(A_out_3), .Z(n645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_283_i7_3_lut.init = 16'hcaca;
    FD1P3IX DF01Reserved6_580 (.D(D_out_6), .SP(PHI2_N_568_enable_85), .CD(RegReset), 
            .CK(PHI2_N_568), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved6_580.GSR = "ENABLED";
    FD1P3AX LengthWritten_5__670 (.D(n1277), .SP(PHI2_N_568_enable_79), 
            .CK(PHI2_N_568), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(200[8] 212[4])
    defparam LengthWritten_5__670.GSR = "ENABLED";
    FD1P3IX REUAWritten_5__627 (.D(D_out_5), .SP(PHI2_N_568_enable_80), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(155[8] 167[4])
    defparam REUAWritten_5__627.GSR = "ENABLED";
    FD1P3AX CAWritten_13__611 (.D(D_out_5), .SP(PHI2_N_568_enable_81), .CK(PHI2_N_568), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(141[8] 152[4])
    defparam CAWritten_13__611.GSR = "ENABLED";
    LUT4 mux_279_i7_3_lut (.A(n590[6]), .B(IncMode[0]), .C(A_out_1), .Z(n623[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_279_i7_3_lut.init = 16'hcaca;
    LUT4 A_out_2_bdd_3_lut_3495 (.A(A_out_1), .B(Length[6]), .C(REUA[14]), 
         .Z(n3898)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3495.init = 16'hd8d8;
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n8), .B(n4074), .C(D_out_0), 
         .D(n1045[0]), .Z(Length_0__N_389)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(n4079), .B(n4078), .C(n4309), 
         .D(n4087), .Z(PHI2_N_568_enable_85)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'hf0f1;
    LUT4 mux_270_i7_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n590[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_270_i7_3_lut.init = 16'hcaca;
    LUT4 i3468_2_lut_3_lut_4_lut (.A(n4079), .B(n4078), .C(n4), .D(n4087), 
         .Z(n3697)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3468_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 mux_244_i8_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_7), .D(REUAOut_7__N_106[7]), 
         .Z(n524[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_out_2_bdd_3_lut_3503 (.A(A_out_1), .B(Length[7]), .C(REUA[15]), 
         .Z(n3905)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam A_out_2_bdd_3_lut_3503.init = 16'hd8d8;
    LUT4 A_out_2_bdd_3_lut (.A(CA[15]), .B(A_out_1), .C(ExecuteEN), .Z(n3906)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_2_bdd_3_lut.init = 16'hb8b8;
    LUT4 mux_244_i7_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_6), .D(REUAOut_7__N_106[6]), 
         .Z(n524[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3422_3_lut_4_lut (.A(Length[9]), .B(n4081), .C(A_out_3), .D(n578[1]), 
         .Z(n3730)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i3422_3_lut_4_lut.init = 16'hefe0;
    LUT4 mux_258_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n554[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_258_i2_3_lut.init = 16'hcaca;
    LUT4 CA_7__bdd_3_lut_3532 (.A(CA[7]), .B(IntPending), .C(A_out_1), 
         .Z(n3909)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam CA_7__bdd_3_lut_3532.init = 16'hacac;
    LUT4 i2_3_lut_4_lut (.A(n4309), .B(n4059), .C(n3709), .D(n4068), 
         .Z(PHI2_N_568_enable_89)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i741_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_46), .C(REUA[17]), 
         .Z(n1057)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(195[18:34])
    defparam i741_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_262_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n566[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_262_i2_3_lut.init = 16'hcaca;
    FD1P3JX Length_11__680 (.D(Length_11__N_329), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_11__680.GSR = "ENABLED";
    LUT4 mux_244_i6_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_5), .D(REUAOut_7__N_106[5]), 
         .Z(n524[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3456_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4066), .D(\XferType[0] ), 
         .Z(XferC64REU)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:70])
    defparam i3456_2_lut_4_lut.init = 16'h0035;
    LUT4 i2167_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n538[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i2167_2_lut.init = 16'h8888;
    LUT4 mux_244_i5_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_4), .D(REUAOut_7__N_106[4]), 
         .Z(n524[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 CA_7__bdd_2_lut_3531 (.A(REUA[7]), .B(A_out_1), .Z(n3908)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_7__bdd_2_lut_3531.init = 16'heeee;
    LUT4 i2135_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n4066), .D(\XferType[0] ), 
         .Z(XferVerify)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:70])
    defparam i2135_2_lut_4_lut.init = 16'hca00;
    LUT4 mux_729_i7_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[14]), 
         .D(Length_15__N_308[6]), .Z(n1046[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i7_3_lut_4_lut.init = 16'hf780;
    PFUMX i3496 (.BLUT(n3899), .ALUT(n3898), .C0(A_out_2), .Z(n3900));
    LUT4 i3_4_lut (.A(n4062), .B(Length[0]), .C(n3568), .D(n18), .Z(n3709)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(n4059), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(n4059), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3381), .S0(CAOut_15__N_148[6]), .S1(CAOut_15__N_148[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(n4059), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(n4059), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3380), .COUT(n3381), .S0(CAOut_15__N_148[4]), 
          .S1(CAOut_15__N_148[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(n4059), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(n4059), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3379), .COUT(n3380), .S0(CAOut_15__N_148[2]), 
          .S1(CAOut_15__N_148[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_149), .B0(n4059), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(n4059), .C1(CAWritten[9]), .D1(CA[9]), 
          .CIN(n3378), .COUT(n3379), .S0(CAOut_15__N_148[0]), .S1(CAOut_15__N_148[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4060), .B1(AutoloadEN), .C1(GND_net), .D1(GND_net), .COUT(n3378));   // c:/users/garre/repos/gw4302/cpld/reg.v(150[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_568_enable_85), 
            .CD(RegReset), .CK(PHI2_N_568), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_568_enable_84), .CD(RegReset), 
            .CK(PHI2_N_568), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(246[8] 249[4])
    defparam IncMode__i1.GSR = "ENABLED";
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_568_enable_85), .CD(RegReset), 
            .CK(PHI2_N_568), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(A_out_0), .B(A_out_1), .C(n4309), 
         .D(n4072), .Z(PHI2_N_568_enable_14)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'hf0f1;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(n4059), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(n4059), .C1(CAWritten[7]), .D1(CA[7]), 
          .CIN(n3373), .S0(CAOut_7__N_192[6]), .S1(CAOut_7__N_192[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(n4059), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(n4059), .C1(CAWritten[5]), .D1(CA[5]), 
          .CIN(n3372), .COUT(n3373), .S0(CAOut_7__N_192[4]), .S1(CAOut_7__N_192[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(n4059), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(n4059), .C1(CAWritten[3]), .D1(CA[3]), 
          .CIN(n3371), .COUT(n3372), .S0(CAOut_7__N_192[2]), .S1(CAOut_7__N_192[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCA), .B0(n4059), .C0(CAWritten[0]), .D0(CA[0]), 
          .A1(GND_net), .B1(n4059), .C1(CAWritten[1]), .D1(CA[1]), .CIN(n3370), 
          .COUT(n3371), .S0(CAOut_7__N_192[0]), .S1(CAOut_7__N_192[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4060), .B1(AutoloadEN), .C1(GND_net), .D1(GND_net), .COUT(n3370));   // c:/users/garre/repos/gw4302/cpld/reg.v(136[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 A_4__I_0_698_i9_2_lut_rep_68_3_lut_4_lut (.A(A_out_0), .B(A_out_1), 
         .C(n4084), .D(A_out_3), .Z(n4071)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam A_4__I_0_698_i9_2_lut_rep_68_3_lut_4_lut.init = 16'hfffe;
    LUT4 A_4__I_0_709_i6_2_lut_rep_79 (.A(A_out_0), .B(A_out_1), .Z(n4082)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam A_4__I_0_709_i6_2_lut_rep_79.init = 16'hbbbb;
    LUT4 XferType_1__I_0_116_i3_2_lut_rep_61_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n4066), .D(\XferType[0] ), .Z(n4064)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[27:70])
    defparam XferType_1__I_0_116_i3_2_lut_rep_61_4_lut.init = 16'hff35;
    LUT4 i956_2_lut_3_lut_4_lut (.A(A_out_3), .B(n4084), .C(n4309), .D(n4074), 
         .Z(PHI2_N_568_enable_81)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i956_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i546_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n4072), .D(n4309), 
         .Z(PHI2_N_568_enable_84)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam i546_3_lut_4_lut.init = 16'hff04;
    LUT4 mux_244_i4_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_3), .D(REUAOut_7__N_106[3]), 
         .Z(n524[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i4_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3581 (.BLUT(n3999), .ALUT(n4056), .C0(A_out_0), .Z(n4000));
    LUT4 i1_2_lut_rep_81 (.A(A_out_2), .B(A_out_4), .Z(n4084)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_81.init = 16'heeee;
    PFUMX i3579 (.BLUT(n3997), .ALUT(n3996), .C0(A_out_1), .Z(n3998));
    LUT4 i2_3_lut (.A(A_out_2), .B(A_out_3), .C(A_out_4), .Z(n8)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2:14])
    defparam i2_3_lut.init = 16'hfdfd;
    PFUMX i3489 (.BLUT(n3885), .ALUT(n3881), .C0(A_out_3), .Z(n3886));
    LUT4 i2026_3_lut (.A(AutoloadEN), .B(REUA[13]), .C(A_out_2), .Z(n9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2026_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_75_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n4078)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_75_3_lut.init = 16'hfefe;
    LUT4 mux_244_i3_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_2), .D(REUAOut_7__N_106[2]), 
         .Z(n524[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_728_i5_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[4]), 
         .D(Length_7__N_352[4]), .Z(n1045[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 n3875_bdd_4_lut_else_4_lut (.A(CA[5]), .B(A_out_3), .C(A_out_2), 
         .Z(n4093)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n3875_bdd_4_lut_else_4_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11), .D(n12), .Z(REUAOut_15__N_63)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 A_out_0_bdd_3_lut_3520 (.A(CA[11]), .B(A_out_1), .C(DF01Reserved32[3]), 
         .Z(n3916)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3520.init = 16'hb8b8;
    LUT4 REUA_3__bdd_3_lut_3510 (.A(A_out_0), .B(A_out_1), .C(Length[11]), 
         .Z(n3912)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam REUA_3__bdd_3_lut_3510.init = 16'hfefe;
    LUT4 n3875_bdd_4_lut_then_4_lut (.A(CA[13]), .B(Length[5]), .C(A_out_3), 
         .D(A_out_2), .Z(n4094)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam n3875_bdd_4_lut_then_4_lut.init = 16'hfcfa;
    LUT4 A_out_0_bdd_2_lut_3521 (.A(CA[3]), .B(A_out_1), .Z(n3917)) /* synthesis lut_function=(A (B)) */ ;
    defparam A_out_0_bdd_2_lut_3521.init = 16'h8888;
    LUT4 i7_4_lut (.A(REUA[0]), .B(REUA[4]), .C(REUA[2]), .D(REUA[7]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    FD1P3JX Length_8__683 (.D(Length_8__N_344), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_8__683.GSR = "ENABLED";
    LUT4 i2128_3_lut_4_lut (.A(n4077), .B(n4071), .C(Fault), .D(VerifyErr), 
         .Z(Fault_N_469)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(91[15:36])
    defparam i2128_3_lut_4_lut.init = 16'hddd0;
    FD1P3JX Length_9__682 (.D(Length_9__N_339), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_9__682.GSR = "ENABLED";
    FD1P3JX Length_10__681 (.D(Length_10__N_334), .SP(PHI2_N_568_enable_89), 
            .PD(n4310), .CK(PHI2_N_568), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(215[8] 227[4])
    defparam Length_10__681.GSR = "ENABLED";
    LUT4 REUA_3__bdd_3_lut_3559 (.A(A_out_1), .B(Length[3]), .C(REUA[11]), 
         .Z(n3913)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam REUA_3__bdd_3_lut_3559.init = 16'hd8d8;
    LUT4 n3723_bdd_3_lut_3556 (.A(n9), .B(VerifyErrMask), .C(A_out_3), 
         .Z(n3878)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3723_bdd_3_lut_3556.init = 16'hcaca;
    PFUMX i3487 (.BLUT(n3882), .ALUT(n2328), .C0(A_out_2), .Z(n3883));
    LUT4 i2011_3_lut (.A(Fault), .B(REUA[5]), .C(A_out_2), .Z(n1_adj_655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2011_3_lut.init = 16'hcaca;
    LUT4 i5_2_lut (.A(REUA[1]), .B(REUA[3]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 mux_244_i2_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_1), .D(REUAOut_7__N_106[1]), 
         .Z(n524[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_238_i3_4_lut (.A(REUA[18]), .B(REUAWritten[18]), .C(n4059), 
         .D(n1057), .Z(n518[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(195[18:34])
    defparam mux_238_i3_4_lut.init = 16'hc5ca;
    LUT4 i3457_2_lut (.A(A_out_1), .B(A_out_3), .Z(n3768)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3457_2_lut.init = 16'heeee;
    LUT4 mux_729_i5_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[12]), 
         .D(Length_15__N_308[4]), .Z(n1046[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_2_lut (.A(REUA[6]), .B(IncMode[0]), .Z(n12)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 REUA_3__bdd_2_lut_3560 (.A(REUA[3]), .B(A_out_1), .Z(n3914)) /* synthesis lut_function=(A+(B)) */ ;
    defparam REUA_3__bdd_2_lut_3560.init = 16'heeee;
    LUT4 mux_244_i1_3_lut_4_lut (.A(n4081), .B(n4073), .C(D_out_0), .D(REUAOut_7__N_106[0]), 
         .Z(n524[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_244_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_728_i2_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[1]), 
         .D(Length_7__N_352[1]), .Z(n1045[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_729_i8_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[15]), 
         .D(Length_15__N_308[7]), .Z(n1046[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_729_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_266_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n578[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_266_i2_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(n15_adj_656), .B(n13), .C(REUA[11]), .D(n10), 
         .Z(REUAOut_18__N_46)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_7), 
         .D(n1046[7]), .Z(Length_15__N_305)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_728_i3_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[2]), 
         .D(Length_7__N_352[2]), .Z(n1045[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 i6_4_lut (.A(REUA[15]), .B(REUA[14]), .C(REUA[8]), .D(REUA[12]), 
         .Z(n15_adj_656)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n4081), .B(n4072), .C(D_out_6), 
         .D(n1046[6]), .Z(Length_14__N_314)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4_2_lut (.A(REUA[13]), .B(REUA[9]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 mux_728_i1_3_lut_4_lut (.A(AutoloadEN), .B(n4060), .C(LengthWritten[0]), 
         .D(Length_7__N_352[0]), .Z(n1045[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[17:38])
    defparam mux_728_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_3_lut_4_lut_adj_173 (.A(n4081), .B(n4078), .C(n4079), .D(n4309), 
         .Z(PHI2_N_568_enable_72)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2:14])
    defparam i2_3_lut_4_lut_adj_173.init = 16'hfffe;
    LUT4 A_4__I_0_719_i6_2_lut_rep_84 (.A(A_out_0), .B(A_out_1), .Z(n4087)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(72[2:14])
    defparam A_4__I_0_719_i6_2_lut_rep_84.init = 16'hdddd;
    LUT4 i1_2_lut_adj_174 (.A(REUA[10]), .B(REUAOut_15__N_63), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_174.init = 16'h8888;
    LUT4 mux_262_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n566[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_262_i1_3_lut.init = 16'hcaca;
    LUT4 i539_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n4072), .D(n4309), 
         .Z(PHI2_N_568_enable_38)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(72[2:14])
    defparam i539_3_lut_4_lut.init = 16'hff02;
    LUT4 i3353_3_lut (.A(n1_adj_655), .B(Length[13]), .C(A_out_3), .Z(n3723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3353_3_lut.init = 16'hcaca;
    L6MUX21 i3515 (.D0(n3918), .D1(n3915), .SD(A_out_2), .Z(n3919));
    PFUMX i3484 (.BLUT(n3723), .ALUT(n3878), .C0(A_out_0), .Z(n3879));
    PFUMX i3513 (.BLUT(n3917), .ALUT(n3916), .C0(A_out_0), .Z(n3918));
    PFUMX Execute_I_0 (.BLUT(Execute_N_453), .ALUT(Execute_N_455), .C0(FF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;
    PFUMX i3615 (.BLUT(n4093), .ALUT(n4094), .C0(A_out_0), .Z(n4095));
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (n4088, SwapState, DMA, n4092, BA_c, PHI2_c, nAOE_c, 
            RegReset, XferC64REU, Execute, n4064, n4060, n3568, 
            \Length[11] , Length1_N_355, \Length[10] , n18, \Length[15] , 
            \XferType[0] , n4062, \Length[14] , \Length[0] , \Length[13] , 
            \Length[9] , \Length[8] , \Length[12] , nIO2_c, nDOE_c, 
            PHI2_N_568, nRESET_c, nWEDMA_c, RAMRD, RAMWR, n11, CAOut_15__N_149, 
            \Length[1] , \Length[7] , \Length[5] , \Length[6] , \Length[3] , 
            \CA[7] , \CA[1] , IncMode, \CA[5] , \CA[0] , \CA[3] , 
            n4067, IntPending, n3744, \CA[4] , \CA[2] , AutoloadEN, 
            n4059, EndOfBlock, EndOfBlock_N_464, XferVerify, nWEDMA_N_13, 
            VerifyErr, n4309, n4069, PHI2_N_568_enable_76, n4058, 
            D_out_1, XferType, D_out_0, IncREUA, n4310, \REUA[5] , 
            n11_adj_2) /* synthesis syn_module_defined=1 */ ;
    input n4088;
    output SwapState;
    output DMA;
    output n4092;
    input BA_c;
    input PHI2_c;
    output nAOE_c;
    output RegReset;
    input XferC64REU;
    input Execute;
    input n4064;
    output n4060;
    output n3568;
    input \Length[11] ;
    output Length1_N_355;
    input \Length[10] ;
    input n18;
    input \Length[15] ;
    output \XferType[0] ;
    output n4062;
    input \Length[14] ;
    input \Length[0] ;
    input \Length[13] ;
    input \Length[9] ;
    input \Length[8] ;
    input \Length[12] ;
    input nIO2_c;
    output nDOE_c;
    input PHI2_N_568;
    input nRESET_c;
    output nWEDMA_c;
    output RAMRD;
    output RAMWR;
    input n11;
    output CAOut_15__N_149;
    input \Length[1] ;
    input \Length[7] ;
    input \Length[5] ;
    input \Length[6] ;
    input \Length[3] ;
    input \CA[7] ;
    input \CA[1] ;
    input [1:0]IncMode;
    input \CA[5] ;
    input \CA[0] ;
    input \CA[3] ;
    input n4067;
    input IntPending;
    output n3744;
    input \CA[4] ;
    input \CA[2] ;
    input AutoloadEN;
    output n4059;
    input EndOfBlock;
    output EndOfBlock_N_464;
    input XferVerify;
    input nWEDMA_N_13;
    output VerifyErr;
    output n4309;
    input n4069;
    output PHI2_N_568_enable_76;
    output n4058;
    input D_out_1;
    input [1:0]XferType;
    input D_out_0;
    output IncREUA;
    output n4310;
    input \REUA[5] ;
    output n11_adj_2;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_568 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire n4036, n4065, n4054;
    wire [2:1]nRESETr;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire DMAr, n3, RAMRD_N_569, RAMWR_N_585, n20, n16, n18_c, 
        BAr, DMA_N_596, DMARW_N_612, n4040, n17, n15, n12, n7, 
        n4061, n4039, SwapState_N_590, n3628, PHI2_N_568_enable_86, 
        n6, n6_adj_651;
    
    LUT4 nRWOE_N_639_bdd_4_lut (.A(n4088), .B(SwapState), .C(n4036), .D(n4065), 
         .Z(n4054)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam nRWOE_N_639_bdd_4_lut.init = 16'h88f0;
    LUT4 AOE_I_0_26_1_lut_rep_89 (.A(DMA), .Z(n4092)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam AOE_I_0_26_1_lut_rep_89.init = 16'h5555;
    LUT4 i3441_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_c)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3441_3_lut_3_lut.init = 16'h2f2f;
    LUT4 i1_4_lut_4_lut (.A(DMA), .B(nRESETr[2]), .C(DMAr), .D(nRESETr[1]), 
         .Z(RegReset)) /* synthesis lut_function=(!(A+(B (D)+!B !(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut_4_lut.init = 16'h1055;
    LUT4 i1_4_lut (.A(XferC64REU), .B(Execute), .C(n3), .D(DMA), .Z(RAMRD_N_569)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(79[11] 103[5])
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i3473_4_lut (.A(SwapState), .B(XferC64REU), .C(n4064), .D(n4060), 
         .Z(RAMWR_N_585)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i3473_4_lut.init = 16'hcccd;
    LUT4 i10_4_lut (.A(n3568), .B(n20), .C(n16), .D(\Length[11] ), .Z(Length1_N_355)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(\Length[10] ), .B(n18_c), .C(n18), .D(\Length[15] ), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_59_4_lut (.A(\XferType[0] ), .B(n4065), .C(SwapState), 
         .D(n4088), .Z(n4062)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(28[17:37])
    defparam i1_3_lut_rep_59_4_lut.init = 16'hfb00;
    LUT4 i5_2_lut (.A(\Length[14] ), .B(\Length[0] ), .Z(n16)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i5_2_lut.init = 16'hbbbb;
    LUT4 i7_4_lut (.A(\Length[13] ), .B(\Length[9] ), .C(\Length[8] ), 
         .D(\Length[12] ), .Z(n18_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i3451_4_lut (.A(PHI2_c), .B(nIO2_c), .C(BA_c), .D(DMA), .Z(nDOE_c)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;
    defparam i3451_4_lut.init = 16'h5fdd;
    LUT4 XferType_1__bdd_2_lut (.A(BAr), .B(DMAr), .Z(n4036)) /* synthesis lut_function=(A (B)) */ ;
    defparam XferType_1__bdd_2_lut.init = 16'h8888;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_568), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX DMA_97 (.D(DMA_N_596), .CK(PHI2_N_568), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam DMA_97.GSR = "ENABLED";
    FD1S3AX DMARW_98 (.D(DMARW_N_612), .CK(PHI2_N_568), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam DMARW_98.GSR = "ENABLED";
    LUT4 RAMRD_N_577_bdd_3_lut (.A(Execute), .B(\XferType[0] ), .C(n4065), 
         .Z(n4040)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam RAMRD_N_577_bdd_3_lut.init = 16'ha2a2;
    FD1S3AX RAMRD_99 (.D(RAMRD_N_569), .CK(PHI2_N_568), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam RAMRD_99.GSR = "ENABLED";
    FD1S3IX RAMWR_100 (.D(RAMWR_N_585), .CK(PHI2_N_568), .CD(n4092), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam RAMWR_100.GSR = "ENABLED";
    FD1S3AX DMAr_101 (.D(DMA), .CK(PHI2_N_568), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam DMAr_101.GSR = "ENABLED";
    FD1S3AX BAr_102 (.D(BA_c), .CK(PHI2_N_568), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam BAr_102.GSR = "ENABLED";
    LUT4 i9_4_lut_adj_163 (.A(n17), .B(n15), .C(n11), .D(n12), .Z(CAOut_15__N_149)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(118[2:39])
    defparam i9_4_lut_adj_163.init = 16'h8000;
    LUT4 i4_4_lut (.A(n7), .B(\Length[1] ), .C(\Length[7] ), .D(\Length[5] ), 
         .Z(n3568)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(\Length[6] ), .B(\Length[3] ), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i7_4_lut_adj_164 (.A(\CA[7] ), .B(\CA[1] ), .C(IncMode[1]), .D(\CA[5] ), 
         .Z(n17)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(118[2:39])
    defparam i7_4_lut_adj_164.init = 16'h0800;
    LUT4 i5_2_lut_adj_165 (.A(\CA[0] ), .B(\CA[3] ), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(118[2:39])
    defparam i5_2_lut_adj_165.init = 16'h8888;
    LUT4 i3374_3_lut_4_lut (.A(DMA), .B(n4061), .C(n4067), .D(IntPending), 
         .Z(n3744)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(126[18] 130[43])
    defparam i3374_3_lut_4_lut.init = 16'h0f08;
    LUT4 RAMRD_N_577_bdd_4_lut_4_lut (.A(\XferType[0] ), .B(n4065), .C(SwapState), 
         .D(n4060), .Z(n4039)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(28[17:37])
    defparam RAMRD_N_577_bdd_4_lut_4_lut.init = 16'h00d9;
    LUT4 i2_2_lut_adj_166 (.A(\CA[4] ), .B(\CA[2] ), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(118[2:39])
    defparam i2_2_lut_adj_166.init = 16'h8888;
    LUT4 AutoloadEN_I_0_2_lut_rep_56_3_lut (.A(DMA), .B(n4061), .C(AutoloadEN), 
         .Z(n4059)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(126[18] 130[43])
    defparam AutoloadEN_I_0_2_lut_rep_56_3_lut.init = 16'h8080;
    LUT4 i2127_3_lut_4_lut (.A(DMA), .B(n4061), .C(EndOfBlock), .D(n4067), 
         .Z(EndOfBlock_N_464)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(126[18] 130[43])
    defparam i2127_3_lut_4_lut.init = 16'h00f8;
    LUT4 SwapState_I_0_1_lut (.A(SwapState), .Z(SwapState_N_590)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(68[14] 72[8])
    defparam SwapState_I_0_1_lut.init = 16'h5555;
    LUT4 i3444_3_lut (.A(nRESETr[1]), .B(DMA), .C(BA_c), .Z(n3628)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;
    defparam i3444_3_lut.init = 16'h3737;
    LUT4 i3446_3_lut (.A(BA_c), .B(DMA), .C(nRESETr[1]), .Z(PHI2_N_568_enable_86)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3446_3_lut.init = 16'hbfbf;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(n4061), .C(DMA), .Z(DMA_N_596)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(79[11] 103[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    PFUMX i3607 (.BLUT(n4040), .ALUT(n4039), .C0(DMA), .Z(DMARW_N_612));
    LUT4 i2_3_lut_4_lut (.A(DMA), .B(n4061), .C(XferVerify), .D(nWEDMA_N_13), 
         .Z(VerifyErr)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(126[18] 130[43])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_4_lut_rep_90 (.A(DMA), .B(nRESETr[2]), .C(DMAr), .D(nRESETr[1]), 
         .Z(n4309)) /* synthesis lut_function=(!(A+(B (D)+!B !(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut_4_lut_rep_90.init = 16'h1055;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_568), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(108[8] 112[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    LUT4 i19_3_lut (.A(Length1_N_355), .B(n6), .C(n4065), .Z(n6_adj_651)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    defparam i19_3_lut.init = 16'hc5c5;
    LUT4 i19_4_lut (.A(Length1_N_355), .B(nWEDMA_N_13), .C(\XferType[0] ), 
         .D(SwapState), .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(127[2] 130[41])
    defparam i19_4_lut.init = 16'h7570;
    LUT4 i2_3_lut_4_lut_adj_167 (.A(DMA), .B(n4061), .C(n4069), .D(n4309), 
         .Z(PHI2_N_568_enable_76)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(126[18] 130[43])
    defparam i2_3_lut_4_lut_adj_167.init = 16'hff8f;
    LUT4 i1_2_lut_rep_55_3_lut_4_lut (.A(DMA), .B(n4061), .C(n4309), .D(AutoloadEN), 
         .Z(n4058)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(126[18] 130[43])
    defparam i1_2_lut_rep_55_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_rep_58 (.A(nRESETr[1]), .B(BA_c), .C(n6_adj_651), .Z(n4061)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    defparam i1_3_lut_rep_58.init = 16'hd5d5;
    LUT4 XferType_1__I_0_i2_3_lut_rep_62_4_lut (.A(PHI2_c), .B(n4069), .C(D_out_1), 
         .D(XferType[1]), .Z(n4065)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    defparam XferType_1__I_0_i2_3_lut_rep_62_4_lut.init = 16'hfd20;
    LUT4 XferType_1__I_0_i1_3_lut_4_lut (.A(PHI2_c), .B(n4069), .C(D_out_0), 
         .D(XferType[0]), .Z(\XferType[0] )) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    defparam XferType_1__I_0_i1_3_lut_4_lut.init = 16'hfd20;
    LUT4 DMA_I_0_109_2_lut_rep_57_4_lut (.A(nRESETr[1]), .B(BA_c), .C(n6_adj_651), 
         .D(DMA), .Z(n4060)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    defparam DMA_I_0_109_2_lut_rep_57_4_lut.init = 16'hd500;
    FD1P3IX SwapState_96 (.D(SwapState_N_590), .SP(PHI2_N_568_enable_86), 
            .CD(n3628), .CK(PHI2_N_568), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(33[8] 38[4])
    defparam SwapState_96.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n4054), .B(n4088), .C(\XferType[0] ), .D(IncMode[0]), 
         .Z(IncREUA)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h00ca;
    LUT4 i1_4_lut_4_lut_rep_91 (.A(DMA), .B(nRESETr[2]), .C(DMAr), .D(nRESETr[1]), 
         .Z(n4310)) /* synthesis lut_function=(!(A+(B (D)+!B !(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_4_lut_4_lut_rep_91.init = 16'h1055;
    LUT4 i1_2_lut_3_lut_4_lut (.A(SwapState), .B(n4064), .C(n4061), .D(DMA), 
         .Z(n3)) /* synthesis lut_function=(!(A (C (D))+!A ((C (D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(63[13] 77[7])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0eee;
    LUT4 i1_2_lut_4_lut_adj_168 (.A(n4054), .B(n4088), .C(\XferType[0] ), 
         .D(\REUA[5] ), .Z(n11_adj_2)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_168.init = 16'hca00;
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (nWE_c, nWEDMA_c, DMA, DDIR_c, IntEnable, IRQOut_N_451, 
            VerifyErr, VerifyErrMask, IRQ, n4078, n4081, n4067, 
            n4084, A_out_3, n4072, A_out_1, A_out_0, n4074, n4075, 
            nIO2_c, n4077, DOE, n4079, n8, n4073, n4088, n4064, 
            SwapState, \IncMode[1] , IncCA, \CA[6] , n11, BA_c, 
            nRWOE_c) /* synthesis syn_module_defined=1 */ ;
    input nWE_c;
    input nWEDMA_c;
    input DMA;
    output DDIR_c;
    input IntEnable;
    input IRQOut_N_451;
    input VerifyErr;
    input VerifyErrMask;
    output IRQ;
    input n4078;
    input n4081;
    output n4067;
    input n4084;
    input A_out_3;
    output n4072;
    input A_out_1;
    input A_out_0;
    output n4074;
    output n4075;
    input nIO2_c;
    output n4077;
    output DOE;
    output n4079;
    input n8;
    output n4073;
    output n4088;
    input n4064;
    input SwapState;
    input \IncMode[1] ;
    output IncCA;
    input \CA[6] ;
    output n11;
    input BA_c;
    output nRWOE_c;
    
    
    wire n4083;
    
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(37[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 i3464_4_lut (.A(IntEnable), .B(IRQOut_N_451), .C(VerifyErr), 
         .D(VerifyErrMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B+(C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(42[15:19])
    defparam i3464_4_lut.init = 16'h5777;
    LUT4 RegRD_I_0_2_lut_rep_64_3_lut_4_lut (.A(n4083), .B(nWE_c), .C(n4078), 
         .D(n4081), .Z(n4067)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(45[16:28])
    defparam RegRD_I_0_2_lut_rep_64_3_lut_4_lut.init = 16'h0004;
    LUT4 i2_3_lut_rep_69_4_lut (.A(n4083), .B(nWE_c), .C(n4084), .D(A_out_3), 
         .Z(n4072)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_69_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_rep_71_4_lut (.A(n4083), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4074)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_71_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_72_3_lut_4_lut (.A(n4083), .B(nWE_c), .C(n4084), 
         .D(A_out_3), .Z(n4075)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_72_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2157_2_lut_rep_80 (.A(DMA), .B(nIO2_c), .Z(n4083)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2157_2_lut_rep_80.init = 16'heeee;
    LUT4 RegCS_I_0_30_2_lut_rep_74_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n4077)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_30_2_lut_rep_74_3_lut.init = 16'h1010;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 i2159_2_lut_rep_76_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n4079)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2159_2_lut_rep_76_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(n8), .D(nWE_c), 
         .Z(n4073)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n4088), .B(n4064), .C(SwapState), .D(\IncMode[1] ), 
         .Z(IncCA)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i1_2_lut_4_lut.init = 16'h00a8;
    LUT4 i1_2_lut_4_lut_adj_162 (.A(n4088), .B(n4064), .C(SwapState), 
         .D(\CA[6] ), .Z(n11)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam i1_2_lut_4_lut_adj_162.init = 16'ha800;
    LUT4 AOE_I_0_2_lut_rep_85 (.A(DMA), .B(BA_c), .Z(n4088)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam AOE_I_0_2_lut_rep_85.init = 16'h8888;
    LUT4 nRWOE_I_0_1_lut_2_lut (.A(DMA), .B(BA_c), .Z(nRWOE_c)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(34[17:28])
    defparam nRWOE_I_0_1_lut_2_lut.init = 16'h7777;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (PHI2Start_N_561, RA_c_10, REUA, C8M_N_514, n4308, C8M_c, 
            RAMRDD, RD_out_0, RBA_c_0, C8M_c_enable_20, n243, nRESET_c, 
            PHI2_c, n1225, RAMWR, RAMRD, WRDr, PHI2_N_568, D_out_0, 
            nCS_c, nRAS_c, nCAS_c, nRWE_c, CKE_c, DQMH_c, DQML_c, 
            A_0__N_556, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, 
            RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, RCLK_c, RD_out_1, 
            RD_out_2, RD_out_3, RD_out_4, RD_out_5, RD_out_6, RD_out_7, 
            RBA_c_1, D_out_1, D_out_2, D_out_3, D_out_4, D_out_5, 
            D_out_6, D_out_7, RA_c_11) /* synthesis syn_module_defined=1 */ ;
    output PHI2Start_N_561;
    output RA_c_10;
    input [23:0]REUA;
    input C8M_N_514;
    input n4308;
    input C8M_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output RBA_c_0;
    input C8M_c_enable_20;
    output n243;
    input nRESET_c;
    input PHI2_c;
    output n1225;
    input RAMWR;
    input RAMRD;
    output [7:0]WRDr;
    input PHI2_N_568;
    input D_out_0;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output DQMH_c;
    output DQML_c;
    input A_0__N_556;
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
    input RD_out_1;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    output RBA_c_1;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    output RA_c_11;
    
    wire C8M_N_514 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(38[11:16])
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_568 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[11:18])
    
    wire RDOE_N_566, n4080, n95;
    wire [12:0]RA_11__N_501;
    
    wire RDD_7__N_524, C8M_c_enable_21, InitDone, InitDone_N_563, PLLLock, 
        PLLLock_N_538, C8M_c_enable_19, PHI2Start, PLLLock_N_542, RDD_7__N_523;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[11:18])
    
    wire CP2, CP1_N_558, CP1;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(38[11:16])
    
    wire RDOE, PLLLock_N_536, n7, nCS_N_526, nRAS_N_544, nCAS_N_546, 
        nRWE_N_548, CKE_N_551, n4090, n3696, C8M_c_enable_13, n4086;
    wire [7:0]n239;
    
    wire n2585, n4091, n7_adj_649;
    
    LUT4 i1_2_lut_3_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(RA_c_10), 
         .D(n4080), .Z(n95)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 mux_223_i5_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[5]), 
         .D(REUA[14]), .Z(RA_11__N_501[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam mux_223_i5_4_lut_4_lut.init = 16'hec20;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), 
         .C(RDD_7__N_524), .D(n4080), .Z(C8M_c_enable_21)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hcecf;
    LUT4 i1973_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[3]), 
         .D(REUA[12]), .Z(RA_11__N_501[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam i1973_4_lut_4_lut.init = 16'hec20;
    LUT4 mux_223_i2_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[2]), 
         .D(REUA[11]), .Z(RA_11__N_501[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam mux_223_i2_4_lut_4_lut.init = 16'hec20;
    LUT4 mux_223_i1_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[10]), 
         .D(REUA[1]), .Z(RA_11__N_501[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam mux_223_i1_4_lut_4_lut.init = 16'he2c0;
    FD1P3AX InitDone_129 (.D(n4308), .SP(InitDone_N_563), .CK(C8M_N_514), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(62[8] 64[4])
    defparam InitDone_129.GSR = "ENABLED";
    FD1P3AX PLLLock_128 (.D(n4308), .SP(PLLLock_N_538), .CK(C8M_N_514), 
            .Q(PLLLock)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(51[8] 55[4])
    defparam PLLLock_128.GSR = "ENABLED";
    FD1P3IX S_FSM_i1 (.D(PLLLock_N_542), .SP(C8M_c_enable_19), .CD(PHI2Start), 
            .CK(C8M_c), .Q(PHI2Start_N_561));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1P3IX RBA__i1 (.D(REUA[22]), .SP(C8M_c_enable_20), .CD(n243), .CK(C8M_c), 
            .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RBA__i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 35[4])
    defparam nRESETr_i0.GSR = "ENABLED";
    FD1S3AX CP2_123 (.D(CP1_N_558), .CK(C8M_N_514), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[8:45])
    defparam CP2_123.GSR = "ENABLED";
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_558)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[36:40])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    FD1S3AX PHI2r_0__125 (.D(PHI2_c), .CK(C8M_N_514), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[8:50])
    defparam PHI2r_0__125.GSR = "ENABLED";
    LUT4 i888_1_lut (.A(RDOE), .Z(n1225)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(213[8:10])
    defparam i888_1_lut.init = 16'h5555;
    FD1S3AX PHI2r_1__126 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:54])
    defparam PHI2r_1__126.GSR = "ENABLED";
    LUT4 PLLLock_I_0_1_lut (.A(PLLLock), .Z(PLLLock_N_536)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(68[6:14])
    defparam PLLLock_I_0_1_lut.init = 16'h5555;
    LUT4 i1_3_lut (.A(InitDone), .B(RAMWR), .C(RAMRD), .Z(n7)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_568), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3JX nCS_130 (.D(nCS_N_526), .CK(C8M_c), .PD(PLLLock_N_536), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(67[8] 155[4])
    defparam nCS_130.GSR = "ENABLED";
    FD1S3JX nRAS_131 (.D(nRAS_N_544), .CK(C8M_c), .PD(PLLLock_N_536), 
            .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(67[8] 155[4])
    defparam nRAS_131.GSR = "ENABLED";
    FD1S3JX nCAS_132 (.D(nCAS_N_546), .CK(C8M_c), .PD(PLLLock_N_536), 
            .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(67[8] 155[4])
    defparam nCAS_132.GSR = "ENABLED";
    FD1S3JX nRWE_133 (.D(nRWE_N_548), .CK(C8M_c), .PD(PLLLock_N_536), 
            .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(67[8] 155[4])
    defparam nRWE_133.GSR = "ENABLED";
    FD1S3JX CKE_134 (.D(CKE_N_551), .CK(C8M_c), .PD(PLLLock_N_536), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(67[8] 155[4])
    defparam CKE_134.GSR = "ENABLED";
    FD1S3JX DQMH_135 (.D(REUA[0]), .CK(C8M_c), .PD(n4090), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam DQMH_135.GSR = "ENABLED";
    FD1S3JX DQML_136 (.D(A_0__N_556), .CK(C8M_c), .PD(n4090), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam DQML_136.GSR = "ENABLED";
    FD1S3AX RA_10__139 (.D(RA_11__N_501[10]), .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_10__139.GSR = "ENABLED";
    FD1P3AX RA_9__140 (.D(RA_11__N_501[9]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_9__140.GSR = "ENABLED";
    FD1P3AX RA_8__141 (.D(RA_11__N_501[8]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_8__141.GSR = "ENABLED";
    FD1P3AX RA_7__142 (.D(RA_11__N_501[7]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_7__142.GSR = "ENABLED";
    FD1P3AX RA_6__143 (.D(RA_11__N_501[6]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_6__143.GSR = "ENABLED";
    FD1P3AX RA_5__144 (.D(RA_11__N_501[5]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_5__144.GSR = "ENABLED";
    FD1P3AX RA_4__145 (.D(RA_11__N_501[4]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_4__145.GSR = "ENABLED";
    FD1P3AX RA_3__146 (.D(RA_11__N_501[3]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_3__146.GSR = "ENABLED";
    FD1P3AX RA_2__147 (.D(RA_11__N_501[2]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_2__147.GSR = "ENABLED";
    FD1P3AX RA_1__148 (.D(RA_11__N_501[1]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_1__148.GSR = "ENABLED";
    FD1P3AX RA_0__149 (.D(RA_11__N_501[0]), .SP(C8M_c_enable_21), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_0__149.GSR = "ENABLED";
    FD1S3AX RDOE_152 (.D(RDOE_N_566), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:36])
    defparam RDOE_152.GSR = "ENABLED";
    FD1S3AX CP1_122 (.D(CP1_N_558), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(27[8:45])
    defparam CP1_122.GSR = "ENABLED";
    LUT4 CP1_I_0_168_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(29[15:24])
    defparam CP1_I_0_168_2_lut.init = 16'h6666;
    LUT4 i3479_3_lut (.A(n243), .B(RDOE_N_566), .C(n7), .Z(nCAS_N_546)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i3479_3_lut.init = 16'h1515;
    LUT4 i24_4_lut (.A(n3696), .B(InitDone), .C(n243), .D(RDD_7__N_524), 
         .Z(nRWE_N_548)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i24_4_lut.init = 16'hc0c5;
    LUT4 i3_4_lut (.A(RDOE_N_566), .B(RAMWR), .C(InitDone), .D(RAMRD), 
         .Z(n3696)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i1765_4_lut (.A(n95), .B(REUA[20]), .C(PHI2Start_N_561), .D(RDD_7__N_524), 
         .Z(RA_11__N_501[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam i1765_4_lut.init = 16'hcfca;
    FD1P3AX S_FSM_i2 (.D(PHI2Start_N_561), .SP(C8M_c_enable_13), .CK(C8M_c), 
            .Q(RDOE_N_566));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n4080), .B(n4086), .C(RDOE_N_566), .D(PHI2Start), 
         .Z(C8M_c_enable_13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(PHI2r[0]), .B(PHI2Start_N_561), .C(PHI2r[1]), .Z(PHI2Start)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[18:34])
    defparam i2_3_lut.init = 16'h4040;
    FD1P3IX S_FSM_i3 (.D(RDOE_N_566), .SP(C8M_c_enable_19), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n239[2]));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1P3IX S_FSM_i4 (.D(n239[2]), .SP(C8M_c_enable_19), .CD(PHI2Start), 
            .CK(C8M_c), .Q(RDD_7__N_524));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i4.GSR = "ENABLED";
    FD1P3IX S_FSM_i5 (.D(RDD_7__N_524), .SP(C8M_c_enable_19), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n243));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i5.GSR = "ENABLED";
    FD1P3IX S_FSM_i6 (.D(n243), .SP(C8M_c_enable_19), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n239[5]));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i6.GSR = "ENABLED";
    FD1P3IX S_FSM_i7 (.D(n239[5]), .SP(C8M_c_enable_19), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n239[6]));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i7.GSR = "ENABLED";
    FD1P3IX S_FSM_i8 (.D(n239[6]), .SP(C8M_c_enable_19), .CD(PHI2Start), 
            .CK(C8M_c), .Q(PLLLock_N_542));   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam S_FSM_i8.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_523), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(204[8:63])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1P3IX RBA__i2 (.D(REUA[23]), .SP(C8M_c_enable_20), .CD(n243), .CK(C8M_c), 
            .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 35[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 35[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 35[4])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 35[4])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_568), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_568), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_568), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_568), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_568), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_568), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_568), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(208[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 i914_1_lut_rep_87 (.A(RDOE_N_566), .Z(n4090)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam i914_1_lut_rep_87.init = 16'h5555;
    LUT4 i2_3_lut_adj_160 (.A(RDD_7__N_524), .B(InitDone), .C(RAMWR), 
         .Z(RDD_7__N_523)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam i2_3_lut_adj_160.init = 16'h8080;
    FD1P3IX RA_11__138 (.D(REUA[21]), .SP(C8M_c_enable_21), .CD(n2585), 
            .CK(C8M_c), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(157[8] 201[4])
    defparam RA_11__138.GSR = "ENABLED";
    LUT4 i2750_3_lut_3_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[19]), 
         .Z(RA_11__N_501[9])) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam i2750_3_lut_3_lut.init = 16'hd1d1;
    LUT4 i2_3_lut_rep_77_4_lut (.A(n239[6]), .B(n239[5]), .C(n239[2]), 
         .D(PLLLock_N_542), .Z(n4080)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam i2_3_lut_rep_77_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_88 (.A(RDOE_N_566), .B(PHI2Start_N_561), .Z(n4091)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam i1_2_lut_rep_88.init = 16'heeee;
    LUT4 i3476_2_lut_3_lut_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), 
         .C(RDD_7__N_524), .D(n4080), .Z(n2585)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam i3476_2_lut_3_lut_4_lut_4_lut.init = 16'h0203;
    LUT4 mux_223_i7_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[16]), 
         .D(REUA[7]), .Z(RA_11__N_501[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam mux_223_i7_4_lut_4_lut.init = 16'he2c0;
    LUT4 i15_3_lut_4_lut (.A(n239[6]), .B(n239[5]), .C(n4091), .D(n7), 
         .Z(CKE_N_551)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam i15_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_2_lut_rep_83 (.A(n243), .B(RDD_7__N_524), .Z(n4086)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_83.init = 16'heeee;
    LUT4 i2_3_lut_adj_161 (.A(InitDone), .B(PLLLock), .C(PLLLock_N_542), 
         .Z(InitDone_N_563)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(62[8] 64[4])
    defparam i2_3_lut_adj_161.init = 16'h4040;
    LUT4 i1974_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[18]), 
         .D(REUA[9]), .Z(RA_11__N_501[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam i1974_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_223_i8_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[17]), 
         .D(REUA[8]), .Z(RA_11__N_501[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam mux_223_i8_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_223_i6_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[6]), 
         .D(REUA[15]), .Z(RA_11__N_501[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A ((D)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam mux_223_i6_4_lut_4_lut.init = 16'hfd31;
    LUT4 i3253_3_lut_4_lut (.A(n243), .B(RDD_7__N_524), .C(n4091), .D(n7), 
         .Z(nCS_N_526)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam i3253_3_lut_4_lut.init = 16'h01f1;
    LUT4 i2_2_lut (.A(PLLLock_N_542), .B(nRESETr[2]), .Z(n7_adj_649)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_73_4_lut (.A(n243), .B(RDD_7__N_524), .C(RDOE_N_566), 
         .D(n4080), .Z(C8M_c_enable_19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_73_4_lut.init = 16'hfffe;
    LUT4 mux_223_i4_4_lut_4_lut (.A(RDOE_N_566), .B(PHI2Start_N_561), .C(REUA[4]), 
         .D(REUA[13]), .Z(RA_11__N_501[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[6:15])
    defparam mux_223_i4_4_lut_4_lut.init = 16'hec20;
    LUT4 i3471_3_lut_4_lut (.A(n243), .B(RDD_7__N_524), .C(n7), .D(PHI2Start_N_561), 
         .Z(nRAS_N_544)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i3471_3_lut_4_lut.init = 16'h0111;
    LUT4 i4_4_lut (.A(n7_adj_649), .B(nRESETr[4]), .C(nRESETr[1]), .D(nRESETr[3]), 
         .Z(PLLLock_N_538)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[22:28])
    defparam i4_4_lut.init = 16'h8000;
    
endmodule
