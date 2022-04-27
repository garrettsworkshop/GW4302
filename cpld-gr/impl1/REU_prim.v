// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Wed Apr 27 14:43:25 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, nIRQ, 
            RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, 
            DQML, RD) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(1[8:11])
    input C8M;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(3[8:11])
    input PHI2;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(4[8:12])
    input nRESET;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(5[8:14])
    input BA;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(7[8:10])
    inout [7:0]D;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(8[14:15])
    input [15:0]A;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    input nWE;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(10[8:11])
    output nWEDMA;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(11[9:15])
    output nDMA;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(12[9:13])
    input nIO1;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(13[8:12])
    input nIO2;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(14[8:12])
    output nAOE;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(16[9:13])
    output ADIR;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(17[9:13])
    output nRWOE;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(18[9:14])
    output nDOE;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(19[9:13])
    output DDIR;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(20[9:13])
    output nIRQ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(22[9:13])
    output RCLK;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(24[9:13])
    output nCS;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(25[9:12])
    output nRAS;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(26[9:13])
    output nCAS;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(27[9:13])
    output nRWE;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(28[9:13])
    output CKE;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(29[9:12])
    output [1:0]RBA;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(30[15:18])
    output [12:0]RA;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    output DQMH;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(32[9:13])
    output DQML;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(33[9:13])
    inout [7:0]RD;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(34[14:16])
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(4[8:12])
    wire PHI2_N_15 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(11[19:24])
    
    wire GND_net, VCC_net, nRESET_c, A_c_7, A_c_6, A_c_5, A_c_4, 
        A_c_3, A_c_2, A_c_1, A_c_0, nWE_c, nIO1_c, nIO2_c, nDOE_c, 
        DDIR_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, CKE_c, RBA_c_1, 
        RBA_c_0, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, 
        RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c;
    wire [7:0]Block;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(37[13:18])
    wire [5:0]Window;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(38[13:19])
    wire [7:0]RAMRDD;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(41[13:19])
    
    wire D_out_6, D_out_4, n686, n645, n692, D_out_7, D_out_5, 
        D_out_3, n198, D_out_2, D_out_1, D_out_0, RD_out_7, RD_out_6, 
        RD_out_5, n210, RD_out_4, RD_out_3, RD_out_2, RD_out_1, 
        RD_out_0;
    
    VHI i2 (.Z(VCC_net));
    LUT4 m1_lut (.Z(n692)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    BB D_pad_1 (.I(RAMRDD[1]), .T(n198), .B(D[1]), .O(D_out_1));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_4 (.I(RAMRDD[4]), .T(n198), .B(D[4]), .O(D_out_4));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_7 (.I(RAMRDD[7]), .T(n198), .B(D[7]), .O(D_out_7));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_2 (.I(RAMRDD[2]), .T(n198), .B(D[2]), .O(D_out_2));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_3 (.I(RAMRDD[3]), .T(n198), .B(D[3]), .O(D_out_3));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB RD_pad_6 (.I(D_out_6), .T(n210), .B(RD[6]), .O(RD_out_6));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_7 (.I(D_out_7), .T(n210), .B(RD[7]), .O(RD_out_7));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB D_pad_5 (.I(RAMRDD[5]), .T(n198), .B(D[5]), .O(D_out_5));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_6 (.I(RAMRDD[6]), .T(n198), .B(D[6]), .O(D_out_6));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_0 (.I(RAMRDD[0]), .T(n198), .B(D[0]), .O(D_out_0));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB RD_pad_5 (.I(D_out_5), .T(n210), .B(RD[5]), .O(RD_out_5));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_4 (.I(D_out_4), .T(n210), .B(RD[4]), .O(RD_out_4));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_3 (.I(D_out_3), .T(n210), .B(RD[3]), .O(RD_out_3));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_2 (.I(D_out_2), .T(n210), .B(RD[2]), .O(RD_out_2));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_1 (.I(D_out_1), .T(n210), .B(RD[1]), .O(RD_out_1));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_0 (.I(D_out_0), .T(n210), .B(RD[0]), .O(RD_out_0));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    OB nWEDMA_pad (.I(VCC_net), .O(nWEDMA));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(11[9:15])
    OB nDMA_pad (.I(VCC_net), .O(nDMA));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(12[9:13])
    OB nAOE_pad (.I(GND_net), .O(nAOE));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(16[9:13])
    OB ADIR_pad (.I(VCC_net), .O(ADIR));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(17[9:13])
    OB nRWOE_pad (.I(VCC_net), .O(nRWOE));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(18[9:14])
    OB nDOE_pad (.I(nDOE_c), .O(nDOE));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(19[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(20[9:13])
    OB nIRQ_pad (.I(VCC_net), .O(nIRQ));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(22[9:13])
    OB RCLK_pad (.I(GND_net), .O(RCLK));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(24[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(25[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(26[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(27[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(28[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(29[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(30[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(30[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_11 (.I(GND_net), .O(RA[11]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_10 (.I(RA_c_10), .O(RA[10]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(32[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(33[9:13])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(5[8:14])
    IB A_pad_7 (.I(A[7]), .O(A_c_7));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_6 (.I(A[6]), .O(A_c_6));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_5 (.I(A[5]), .O(A_c_5));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_4 (.I(A[4]), .O(A_c_4));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_3 (.I(A[3]), .O(A_c_3));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_2 (.I(A[2]), .O(A_c_2));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_1 (.I(A[1]), .O(A_c_1));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_0 (.I(A[0]), .O(A_c_0));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(10[8:11])
    IB nIO1_pad (.I(nIO1), .O(nIO1_c));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(13[8:12])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(14[8:12])
    INV i605 (.A(PHI2_c), .Z(PHI2_N_15));   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(4[8:12])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    GeoReg georeg (.Block({Block}), .PHI2_N_15(PHI2_N_15), .D_out_6(D_out_6), 
           .D_out_5(D_out_5), .D_out_0(D_out_0), .PHI2_c(PHI2_c), .nRESET_c(nRESET_c), 
           .Window({Window}), .D_out_4(D_out_4), .D_out_3(D_out_3), .D_out_2(D_out_2), 
           .D_out_1(D_out_1), .D_out_7(D_out_7), .n645(n645), .A_c_0(A_c_0), 
           .n686(n686), .nWE_c(nWE_c), .DDIR_c(DDIR_c)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(43[9] 49[27])
    RAM ram (.RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .PHI2_c(PHI2_c), 
        .nCS_c(nCS_c), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
        .RA_c_0(RA_c_0), .DQML_c(DQML_c), .n686(n686), .nIO1_c(nIO1_c), 
        .nWE_c(nWE_c), .nRESET_c(nRESET_c), .GND_net(GND_net), .n692(n692), 
        .Window({Window}), .A_c_3(A_c_3), .DQMH_c(DQMH_c), .A_c_0(A_c_0), 
        .CKE_c(CKE_c), .RBA_c_0(RBA_c_0), .Block({Block}), .RD_out_1(RD_out_1), 
        .A_c_4(A_c_4), .A_c_6(A_c_6), .nIO2_c(nIO2_c), .A_c_7(A_c_7), 
        .n645(n645), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), 
        .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), .RD_out_7(RD_out_7), 
        .RBA_c_1(RBA_c_1), .RA_c_1(RA_c_1), .n210(n210), .A_c_5(A_c_5), 
        .n198(n198), .nDOE_c(nDOE_c), .A_c_2(A_c_2), .A_c_1(A_c_1), 
        .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), .RA_c_4(RA_c_4), .RA_c_5(RA_c_5), 
        .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), .RA_c_9(RA_c_9), 
        .RA_c_10(RA_c_10)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(51[6] 62[32])
    
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
// Verilog Description of module GeoReg
//

module GeoReg (Block, PHI2_N_15, D_out_6, D_out_5, D_out_0, PHI2_c, 
            nRESET_c, Window, D_out_4, D_out_3, D_out_2, D_out_1, 
            D_out_7, n645, A_c_0, n686, nWE_c, DDIR_c) /* synthesis syn_module_defined=1 */ ;
    output [7:0]Block;
    input PHI2_N_15;
    input D_out_6;
    input D_out_5;
    input D_out_0;
    input PHI2_c;
    input nRESET_c;
    output [5:0]Window;
    input D_out_4;
    input D_out_3;
    input D_out_2;
    input D_out_1;
    input D_out_7;
    input n645;
    input A_c_0;
    output n686;
    input nWE_c;
    output DDIR_c;
    
    wire PHI2_N_15 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(11[19:24])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(4[8:12])
    
    wire PHI2_N_15_enable_9, n688, nRESETr, PHI2_N_15_enable_14;
    
    FD1P3IX Block__i6 (.D(D_out_6), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i6.GSR = "ENABLED";
    FD1P3IX Block__i5 (.D(D_out_5), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i5.GSR = "ENABLED";
    FD1P3IX Block__i0 (.D(D_out_0), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i0.GSR = "ENABLED";
    FD1S3AX nRESETr_24 (.D(nRESET_c), .CK(PHI2_c), .Q(nRESETr)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(20[8] 22[4])
    defparam nRESETr_24.GSR = "ENABLED";
    LUT4 i83_1_lut_rep_14 (.A(nRESETr), .Z(n688)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(20[8] 22[4])
    defparam i83_1_lut_rep_14.init = 16'h5555;
    FD1P3IX Window__i0 (.D(D_out_0), .SP(PHI2_N_15_enable_14), .CD(n688), 
            .CK(PHI2_N_15), .Q(Window[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window__i0.GSR = "ENABLED";
    FD1P3IX Block__i4 (.D(D_out_4), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i4.GSR = "ENABLED";
    FD1P3IX Block__i3 (.D(D_out_3), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i3.GSR = "ENABLED";
    FD1P3IX Block__i2 (.D(D_out_2), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i2.GSR = "ENABLED";
    FD1P3IX Block__i1 (.D(D_out_1), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i1.GSR = "ENABLED";
    FD1P3IX Block__i7 (.D(D_out_7), .SP(PHI2_N_15_enable_9), .CD(n688), 
            .CK(PHI2_N_15), .Q(Block[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block__i7.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut_3_lut (.A(nRESETr), .B(n645), .C(A_c_0), .Z(PHI2_N_15_enable_14)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(20[8] 22[4])
    defparam i1_3_lut_3_lut_3_lut.init = 16'h5d5d;
    LUT4 i1_3_lut (.A(nRESETr), .B(A_c_0), .C(n645), .Z(PHI2_N_15_enable_9)) /* synthesis lut_function=((B (C))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(20[8] 22[4])
    defparam i1_3_lut.init = 16'hd5d5;
    LUT4 A_0__I_0_1_lut_rep_12 (.A(A_c_0), .Z(n686)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(208[13:18])
    defparam A_0__I_0_1_lut_rep_12.init = 16'h5555;
    LUT4 nWE_I_0_1_lut (.A(nWE_c), .Z(DDIR_c)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(65[16:20])
    defparam nWE_I_0_1_lut.init = 16'h5555;
    FD1P3IX Window__i1 (.D(D_out_1), .SP(PHI2_N_15_enable_14), .CD(n688), 
            .CK(PHI2_N_15), .Q(Window[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window__i1.GSR = "ENABLED";
    FD1P3IX Window__i2 (.D(D_out_2), .SP(PHI2_N_15_enable_14), .CD(n688), 
            .CK(PHI2_N_15), .Q(Window[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window__i2.GSR = "ENABLED";
    FD1P3IX Window__i3 (.D(D_out_3), .SP(PHI2_N_15_enable_14), .CD(n688), 
            .CK(PHI2_N_15), .Q(Window[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window__i3.GSR = "ENABLED";
    FD1P3IX Window__i4 (.D(D_out_4), .SP(PHI2_N_15_enable_14), .CD(n688), 
            .CK(PHI2_N_15), .Q(Window[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window__i4.GSR = "ENABLED";
    FD1P3IX Window__i5 (.D(D_out_5), .SP(PHI2_N_15_enable_14), .CD(n688), 
            .CK(PHI2_N_15), .Q(Window[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window__i5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (RAMRDD, RD_out_0, PHI2_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, 
            RA_c_0, DQML_c, n686, nIO1_c, nWE_c, nRESET_c, GND_net, 
            n692, Window, A_c_3, DQMH_c, A_c_0, CKE_c, RBA_c_0, 
            Block, RD_out_1, A_c_4, A_c_6, nIO2_c, A_c_7, n645, 
            RD_out_2, RD_out_3, RD_out_4, RD_out_5, RD_out_6, RD_out_7, 
            RBA_c_1, RA_c_1, n210, A_c_5, n198, nDOE_c, A_c_2, 
            A_c_1, RA_c_2, RA_c_3, RA_c_4, RA_c_5, RA_c_6, RA_c_7, 
            RA_c_8, RA_c_9, RA_c_10) /* synthesis syn_module_defined=1 */ ;
    output [7:0]RAMRDD;
    input RD_out_0;
    input PHI2_c;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output RA_c_0;
    output DQML_c;
    input n686;
    input nIO1_c;
    input nWE_c;
    input nRESET_c;
    input GND_net;
    input n692;
    input [5:0]Window;
    input A_c_3;
    output DQMH_c;
    input A_c_0;
    output CKE_c;
    output RBA_c_0;
    input [7:0]Block;
    input RD_out_1;
    input A_c_4;
    input A_c_6;
    input nIO2_c;
    input A_c_7;
    output n645;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    output RBA_c_1;
    output RA_c_1;
    output n210;
    input A_c_5;
    output n198;
    output nDOE_c;
    input A_c_2;
    input A_c_1;
    output RA_c_2;
    output RA_c_3;
    output RA_c_4;
    output RA_c_5;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    output RA_c_10;
    
    wire FCLK_N_55 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(11[19:22])
    wire FCLK /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(26[6:10])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(4[8:12])
    
    wire RDD_7__N_83;
    wire [5:0]nRESETr;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(35[11:18])
    wire [2:0]PHI2r;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(44[11:16])
    
    wire n687, n231, nRAS_N_95, nCAS_N_96, nRWE_N_97, n684, n2, 
        n334;
    wire [3:0]S;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(50[11:12])
    
    wire n689, RDOE, nCS_N_90, n227, n637;
    wire [2:0]n27;
    
    wire PORDone, PORDone_N_80, n2_adj_112, InitDone, n677, FCLK_enable_1, 
        FCLK_enable_2, n2_adj_113, n12, n226;
    wire [3:0]S_3__N_73;
    
    wire n2_adj_114, n2_adj_115, RA_12__N_59, n678, n2_adj_116, n2_adj_117, 
        n504, n3, RA_12__N_63, n2_adj_118, n652, RA_12__N_58;
    
    INV i604 (.A(FCLK), .Z(FCLK_N_55));
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1S3AX nRESETr_5__115 (.D(nRESETr[4]), .CK(FCLK), .Q(nRESETr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_5__115.GSR = "ENABLED";
    FD1S3AX nRESETr_4__116 (.D(nRESETr[3]), .CK(FCLK), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_4__116.GSR = "ENABLED";
    FD1S3AX nRESETr_3__117 (.D(nRESETr[2]), .CK(FCLK), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_3__117.GSR = "ENABLED";
    FD1S3AX nRESETr_2__118 (.D(nRESETr[1]), .CK(FCLK), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_2__118.GSR = "ENABLED";
    FD1S3AX nRESETr_1__119 (.D(nRESETr[0]), .CK(FCLK), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_1__119.GSR = "ENABLED";
    FD1S3AX PHI2r_0__121 (.D(PHI2_c), .CK(FCLK_N_55), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(45[8:41])
    defparam PHI2r_0__121.GSR = "ENABLED";
    FD1S3AX PHI2r_2__122 (.D(PHI2r[1]), .CK(FCLK), .Q(PHI2r[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(46[8:49])
    defparam PHI2r_2__122.GSR = "ENABLED";
    FD1S3AX PHI2r_1__123 (.D(PHI2r[0]), .CK(FCLK), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(46[8:49])
    defparam PHI2r_1__123.GSR = "ENABLED";
    FD1S3JX nCS_126 (.D(n231), .CK(FCLK), .PD(n687), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nCS_126.GSR = "ENABLED";
    FD1S3AX nRAS_127 (.D(nRAS_N_95), .CK(FCLK), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nRAS_127.GSR = "ENABLED";
    FD1S3AX nCAS_128 (.D(nCAS_N_96), .CK(FCLK), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nCAS_128.GSR = "ENABLED";
    FD1S3AX nRWE_129 (.D(nRWE_N_97), .CK(FCLK), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nRWE_129.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n2), .CK(FCLK), .CD(n684), .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3JX DQML_134 (.D(n686), .CK(FCLK), .PD(n334), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam DQML_134.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(nIO1_c), .B(nWE_c), .C(S[2]), .D(n689), .Z(RDD_7__N_83)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut.init = 16'h4000;
    FD1S3IX RDOE_136 (.D(nCS_N_90), .CK(FCLK), .CD(n334), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(246[8:63])
    defparam RDOE_136.GSR = "ENABLED";
    FD1S3AX nRESETr_0__114 (.D(nRESET_c), .CK(FCLK_N_55), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(37[8:45])
    defparam nRESETr_0__114.GSR = "ENABLED";
    OSCH fclk_OSCH (.STDBY(GND_net), .OSC(FCLK)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(51[6] 62[32])
    defparam fclk_OSCH.NOM_FREQ = "26.60";
    FD1S3IX S__i2 (.D(n637), .CK(FCLK), .CD(n227), .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i2.GSR = "ENABLED";
    FD1S3IX S__i1 (.D(n27[1]), .CK(FCLK), .CD(n227), .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3AX PORDone_120 (.D(n692), .SP(PORDone_N_80), .CK(FCLK), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(39[8] 41[4])
    defparam PORDone_120.GSR = "ENABLED";
    LUT4 S_2__I_0_146_i2_3_lut (.A(Window[3]), .B(A_c_3), .C(S[0]), .Z(n2_adj_112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_146_i2_3_lut.init = 16'hcaca;
    LUT4 InitDone_bdd_3_lut (.A(InitDone), .B(S[1]), .C(S[0]), .Z(n677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;
    defparam InitDone_bdd_3_lut.init = 16'hcbcb;
    FD1P3AX InitDone_125 (.D(n692), .SP(FCLK_enable_1), .CK(FCLK), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[8:59])
    defparam InitDone_125.GSR = "ENABLED";
    LUT4 i16_4_lut (.A(S[1]), .B(S[0]), .C(S[2]), .D(nIO1_c), .Z(nRAS_N_95)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(B (C))) */ ;
    defparam i16_4_lut.init = 16'h9f9d;
    LUT4 i2_1_lut (.A(S[0]), .Z(FCLK_enable_2)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut.init = 16'h5555;
    FD1S3JX DQMH_133 (.D(A_c_0), .CK(FCLK), .PD(n334), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam DQMH_133.GSR = "ENABLED";
    FD1S3JX CKE_130 (.D(n2_adj_113), .CK(FCLK), .PD(n684), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam CKE_130.GSR = "ENABLED";
    FD1S3IX RBA__i1 (.D(Block[6]), .CK(FCLK), .CD(n12), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RBA__i1.GSR = "ENABLED";
    FD1S3IX S__i0 (.D(S_3__N_73[0]), .CK(FCLK), .CD(n226), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i0.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i1.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_6 (.A(nRESETr[5]), .B(nRESETr[2]), .C(nRESETr[3]), 
         .D(nRESETr[4]), .Z(PORDone_N_80)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(40[6:58])
    defparam i3_4_lut_adj_6.init = 16'h8000;
    LUT4 i1_4_lut_4_lut (.A(S[2]), .B(S[1]), .C(nIO1_c), .D(S[0]), .Z(nCAS_N_96)) /* synthesis lut_function=(A ((D)+!B)+!A ((C+!(D))+!B)) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfb77;
    LUT4 S_2__I_0_145_i2_3_lut (.A(Window[4]), .B(A_c_4), .C(S[0]), .Z(n2_adj_114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_145_i2_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(nWE_c), .B(A_c_6), .C(nIO2_c), .D(A_c_7), .Z(n645)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(9[15:16])
    defparam i2_4_lut.init = 16'h0400;
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_83), .CK(FCLK_N_55), 
            .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1S3IX RBA__i2 (.D(Block[7]), .CK(FCLK), .CD(n12), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n2_adj_115), .CK(FCLK), .CD(n684), .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_15 (.A(S[1]), .B(S[0]), .Z(n689)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_15.init = 16'h2222;
    LUT4 i599_2_lut (.A(nWE_c), .B(nIO1_c), .Z(nCS_N_90)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i599_2_lut.init = 16'h1111;
    LUT4 i104_2_lut (.A(S[1]), .B(S[0]), .Z(n27[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(58[35:46])
    defparam i104_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_4_lut (.A(S[2]), .B(S[1]), .C(Block[4]), .D(S[0]), 
         .Z(RA_12__N_59)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h88c8;
    LUT4 i1_2_lut_3_lut (.A(S[2]), .B(S[1]), .C(S[0]), .Z(FCLK_enable_1)) /* synthesis lut_function=(A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i147_1_lut (.A(RDOE), .Z(n210)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    defparam i147_1_lut.init = 16'h5555;
    LUT4 i305_1_lut (.A(nIO1_c), .Z(n2_adj_113)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reu.v(13[8:12])
    defparam i305_1_lut.init = 16'h5555;
    LUT4 i15_2_lut (.A(S[2]), .B(S[1]), .Z(n12)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i15_2_lut.init = 16'h9999;
    LUT4 InitDone_bdd_4_lut (.A(nWE_c), .B(nIO1_c), .C(S[1]), .D(S[0]), 
         .Z(n678)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam InitDone_bdd_4_lut.init = 16'hefff;
    LUT4 i153_1_lut (.A(PORDone), .Z(n226)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(39[8] 41[4])
    defparam i153_1_lut.init = 16'h5555;
    LUT4 i477_3_lut (.A(Block[1]), .B(A_c_7), .C(S[0]), .Z(n2_adj_116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i477_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_144_i2_3_lut (.A(Window[5]), .B(A_c_5), .C(S[0]), .Z(n2_adj_117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_144_i2_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_3_lut (.A(S[2]), .B(nIO1_c), .C(S[0]), .Z(n231)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i1_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut (.A(PHI2r[1]), .B(PHI2r[2]), .Z(n504)) /* synthesis lut_function=(!((B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(46[8:49])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i127_1_lut_rep_13 (.A(S[1]), .Z(n687)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[44:56])
    defparam i127_1_lut_rep_13.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_3_lut (.A(S[1]), .B(S[0]), .C(S[2]), .Z(n334)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[44:56])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i596_3_lut (.A(PHI2_c), .B(nWE_c), .C(nIO1_c), .Z(n198)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i596_3_lut.init = 16'h7f7f;
    LUT4 i1_3_lut (.A(S[1]), .B(S[2]), .C(n3), .Z(RA_12__N_63)) /* synthesis lut_function=(A (B+(C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i382_3_lut (.A(Block[0]), .B(A_c_6), .C(S[0]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i382_3_lut.init = 16'hcaca;
    LUT4 i19_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n637)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i19_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut (.A(S[0]), .B(S[2]), .C(n504), .D(S[1]), .Z(S_3__N_73[0])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h5554;
    LUT4 i1_2_lut_adj_7 (.A(nIO1_c), .B(PHI2_c), .Z(nDOE_c)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'h8888;
    PFUMX i600 (.BLUT(n678), .ALUT(n677), .C0(S[2]), .Z(nRWE_N_97));
    LUT4 S_2__I_0_141_i2_3_lut (.A(Block[2]), .B(Window[0]), .C(S[0]), 
         .Z(n2_adj_118)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_141_i2_3_lut.init = 16'hcaca;
    LUT4 i154_4_lut (.A(n652), .B(PORDone), .C(n504), .D(S[2]), .Z(n227)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i154_4_lut.init = 16'h3373;
    LUT4 i583_2_lut (.A(S[0]), .B(S[1]), .Z(n652)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i583_2_lut.init = 16'heeee;
    LUT4 S_2__I_0_147_i2_3_lut (.A(Window[2]), .B(A_c_2), .C(S[0]), .Z(n2_adj_115)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_147_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_10_2_lut (.A(S[1]), .B(S[2]), .Z(n684)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[44:56])
    defparam i1_2_lut_rep_10_2_lut.init = 16'hdddd;
    LUT4 S_2__I_0_149_i2_3_lut (.A(Window[1]), .B(A_c_1), .C(S[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_149_i2_3_lut.init = 16'hcaca;
    LUT4 Block_5__bdd_4_lut (.A(Block[5]), .B(S[0]), .C(S[2]), .D(S[1]), 
         .Z(RA_12__N_58)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A ((D)+!C))) */ ;
    defparam Block_5__bdd_4_lut.init = 16'h02f0;
    FD1S3IX RA_i3 (.D(n2_adj_112), .CK(FCLK), .CD(n684), .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n2_adj_114), .CK(FCLK), .CD(n684), .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n2_adj_117), .CK(FCLK), .CD(n684), .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3AX RA_i6 (.D(RA_12__N_63), .CK(FCLK), .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n2_adj_116), .CK(FCLK), .CD(n684), .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n2_adj_118), .CK(FCLK), .CD(n684), .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1P3IX RA_i9 (.D(Block[3]), .SP(FCLK_enable_2), .CD(n684), .CK(FCLK), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3AX RA_i10 (.D(RA_12__N_59), .CK(FCLK), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3AX RA_i11 (.D(RA_12__N_58), .CK(FCLK), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i11.GSR = "ENABLED";
    
endmodule
