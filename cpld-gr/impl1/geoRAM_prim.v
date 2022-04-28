// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Thu Apr 28 09:02:43 2022
//
// Verilog Description of module geoRAM
//

module geoRAM (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, nIRQ, 
            RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, 
            DQML, RD) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(1[8:14])
    input C8M;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(3[8:11])
    input PHI2;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(4[8:12])
    input nRESET;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(5[8:14])
    input BA;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(7[8:10])
    inout [7:0]D;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(8[14:15])
    input [15:0]A;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    input nWE;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(10[8:11])
    output nWEDMA;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(11[9:15])
    output nDMA;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(12[9:13])
    input nIO1;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(13[8:12])
    input nIO2;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(14[8:12])
    output nAOE;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(16[9:13])
    output ADIR;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(17[9:13])
    output nRWOE;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(18[9:14])
    output nDOE;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(19[9:13])
    output DDIR;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(20[9:13])
    output nIRQ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(22[9:13])
    output RCLK;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(24[9:13])
    output nCS;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(25[9:12])
    output nRAS;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(26[9:13])
    output nCAS;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(27[9:13])
    output nRWE;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(28[9:13])
    output CKE;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(29[9:12])
    output [1:0]RBA;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(30[15:18])
    output [12:0]RA;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    output DQMH;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(32[9:13])
    output DQML;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(33[9:13])
    inout [7:0]RD;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(34[14:16])
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(4[8:12])
    wire PHI2_N_16 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(11[19:24])
    
    wire GND_net, VCC_net, nRESET_c, A_c_7, A_c_6, A_c_5, A_c_4, 
        A_c_3, A_c_2, A_c_1, A_c_0, nWE_c, nIO1_c, nIO2_c, RCLK_c, 
        nCS_c, nRAS_c, nCAS_c, nRWE_c, CKE_c, RBA_c_1, RBA_c_0, 
        D_out_7, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, 
        RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c, 
        n454;
    wire [7:0]Block;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(37[13:18])
    wire [5:0]Window;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(38[13:19])
    wire [7:0]RAMRDD;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(41[13:19])
    
    wire DOE, D_out_6, n459, D_out_5, D_out_4, D_out_3, D_out_2, 
        D_out_1, D_out_0, RD_out_7, RD_out_6, RD_out_5, n209, RD_out_4, 
        RD_out_3, RD_out_2, RD_out_1, RD_out_0;
    
    VHI i2 (.Z(VCC_net));
    INV i378 (.A(PHI2_c), .Z(PHI2_N_16));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(4[8:12])
    BB D_pad_2 (.I(RAMRDD[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    LUT4 i374_3_lut (.A(nWE_c), .B(nIO1_c), .C(PHI2_c), .Z(DOE)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    defparam i374_3_lut.init = 16'hdfdf;
    BB D_pad_7 (.I(RAMRDD[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    BB D_pad_5 (.I(RAMRDD[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    BB D_pad_3 (.I(RAMRDD[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    BB D_pad_6 (.I(RAMRDD[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    BB D_pad_4 (.I(RAMRDD[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    BB D_pad_0 (.I(RAMRDD[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    BB D_pad_1 (.I(RAMRDD[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(68[9:10])
    BB RD_pad_7 (.I(D_out_7), .T(n209), .B(RD[7]), .O(RD_out_7));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_6 (.I(D_out_6), .T(n209), .B(RD[6]), .O(RD_out_6));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_5 (.I(D_out_5), .T(n209), .B(RD[5]), .O(RD_out_5));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_4 (.I(D_out_4), .T(n209), .B(RD[4]), .O(RD_out_4));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_3 (.I(D_out_3), .T(n209), .B(RD[3]), .O(RD_out_3));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_2 (.I(D_out_2), .T(n209), .B(RD[2]), .O(RD_out_2));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_1 (.I(D_out_1), .T(n209), .B(RD[1]), .O(RD_out_1));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_0 (.I(D_out_0), .T(n209), .B(RD[0]), .O(RD_out_0));   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    OB nWEDMA_pad (.I(VCC_net), .O(nWEDMA));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(11[9:15])
    OB nDMA_pad (.I(VCC_net), .O(nDMA));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(12[9:13])
    OB nAOE_pad (.I(GND_net), .O(nAOE));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(16[9:13])
    OB ADIR_pad (.I(VCC_net), .O(ADIR));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(17[9:13])
    OB nRWOE_pad (.I(VCC_net), .O(nRWOE));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(18[9:14])
    OB nDOE_pad (.I(GND_net), .O(nDOE));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(19[9:13])
    OB DDIR_pad (.I(DOE), .O(DDIR));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(20[9:13])
    OB nIRQ_pad (.I(VCC_net), .O(nIRQ));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(22[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(24[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(25[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(26[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(27[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(28[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(29[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(30[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(30[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_11 (.I(GND_net), .O(RA[11]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_10 (.I(RA_c_10), .O(RA[10]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(31[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(32[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(33[9:13])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(5[8:14])
    IB A_pad_7 (.I(A[7]), .O(A_c_7));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB A_pad_6 (.I(A[6]), .O(A_c_6));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB A_pad_5 (.I(A[5]), .O(A_c_5));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB A_pad_4 (.I(A[4]), .O(A_c_4));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB A_pad_3 (.I(A[3]), .O(A_c_3));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB A_pad_2 (.I(A[2]), .O(A_c_2));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB A_pad_1 (.I(A[1]), .O(A_c_1));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB A_pad_0 (.I(A[0]), .O(A_c_0));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(9[15:16])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(10[8:11])
    IB nIO1_pad (.I(nIO1), .O(nIO1_c));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(13[8:12])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(14[8:12])
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n459)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    GeoReg georeg (.Block({Block}), .PHI2_N_16(PHI2_N_16), .D_out_0(D_out_0), 
           .A_c_0(A_c_0), .PHI2_c(PHI2_c), .nRESET_c(nRESET_c), .nWE_c(nWE_c), 
           .nIO2_c(nIO2_c), .D_out_7(D_out_7), .D_out_6(D_out_6), .D_out_5(D_out_5), 
           .D_out_4(D_out_4), .D_out_3(D_out_3), .D_out_2(D_out_2), .D_out_1(D_out_1), 
           .Window({Window}), .n454(n454), .A_c_7(A_c_7), .A_c_6(A_c_6)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(43[9] 49[27])
    RAM ram (.nIO1_c(nIO1_c), .nWE_c(nWE_c), .Block({Block}), .RBA_c_0(RBA_c_0), 
        .GND_net(GND_net), .VCC_net(VCC_net), .RCLK_c(RCLK_c), .PHI2_c(PHI2_c), 
        .nCS_c(nCS_c), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
        .Window({Window}), .A_c_2(A_c_2), .RA_c_0(RA_c_0), .DQML_c(DQML_c), 
        .n454(n454), .nRESET_c(nRESET_c), .n459(n459), .n209(n209), 
        .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .RA_c_1(RA_c_1), .DQMH_c(DQMH_c), 
        .A_c_0(A_c_0), .CKE_c(CKE_c), .RBA_c_1(RBA_c_1), .A_c_1(A_c_1), 
        .A_c_3(A_c_3), .A_c_4(A_c_4), .A_c_5(A_c_5), .A_c_6(A_c_6), 
        .A_c_7(A_c_7), .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), .RA_c_4(RA_c_4), 
        .RA_c_5(RA_c_5), .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), 
        .RA_c_9(RA_c_9), .RA_c_10(RA_c_10), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), 
        .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), 
        .RD_out_6(RD_out_6), .RD_out_7(RD_out_7)) /* synthesis syn_module_defined=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(51[6] 62[32])
    
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

module GeoReg (Block, PHI2_N_16, D_out_0, A_c_0, PHI2_c, nRESET_c, 
            nWE_c, nIO2_c, D_out_7, D_out_6, D_out_5, D_out_4, D_out_3, 
            D_out_2, D_out_1, Window, n454, A_c_7, A_c_6) /* synthesis syn_module_defined=1 */ ;
    output [7:0]Block;
    input PHI2_N_16;
    input D_out_0;
    input A_c_0;
    input PHI2_c;
    input nRESET_c;
    input nWE_c;
    input nIO2_c;
    input D_out_7;
    input D_out_6;
    input D_out_5;
    input D_out_4;
    input D_out_3;
    input D_out_2;
    input D_out_1;
    output [5:0]Window;
    output n454;
    input A_c_7;
    input A_c_6;
    
    wire PHI2_N_16 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(11[19:24])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(4[8:12])
    
    wire PHI2_N_16_enable_8, n421, nRESETr, n433, PHI2_N_16_enable_14;
    
    FD1P3AX Block_i0_i0 (.D(D_out_0), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(A_c_0), .B(n421), .Z(PHI2_N_16_enable_8)) /* synthesis lut_function=(A (B)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(15[16:38])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3AX nRESETr_24 (.D(nRESET_c), .CK(PHI2_c), .Q(nRESETr)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(20[8] 22[4])
    defparam nRESETr_24.GSR = "ENABLED";
    LUT4 i362_2_lut (.A(nWE_c), .B(nIO2_c), .Z(n433)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i362_2_lut.init = 16'heeee;
    FD1P3AX Block_i0_i7 (.D(D_out_7), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i7.GSR = "ENABLED";
    FD1P3AX Block_i0_i6 (.D(D_out_6), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i6.GSR = "ENABLED";
    FD1P3AX Block_i0_i5 (.D(D_out_5), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i5.GSR = "ENABLED";
    FD1P3AX Block_i0_i4 (.D(D_out_4), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i4.GSR = "ENABLED";
    FD1P3AX Block_i0_i3 (.D(D_out_3), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i3.GSR = "ENABLED";
    FD1P3AX Block_i0_i2 (.D(D_out_2), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i2.GSR = "ENABLED";
    FD1P3AX Block_i0_i1 (.D(D_out_1), .SP(PHI2_N_16_enable_8), .CK(PHI2_N_16), 
            .Q(Block[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Block_i0_i1.GSR = "ENABLED";
    FD1P3AX Window_i0_i5 (.D(D_out_5), .SP(PHI2_N_16_enable_14), .CK(PHI2_N_16), 
            .Q(Window[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window_i0_i5.GSR = "ENABLED";
    FD1P3AX Window_i0_i4 (.D(D_out_4), .SP(PHI2_N_16_enable_14), .CK(PHI2_N_16), 
            .Q(Window[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window_i0_i4.GSR = "ENABLED";
    FD1P3AX Window_i0_i3 (.D(D_out_3), .SP(PHI2_N_16_enable_14), .CK(PHI2_N_16), 
            .Q(Window[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window_i0_i3.GSR = "ENABLED";
    FD1P3AX Window_i0_i2 (.D(D_out_2), .SP(PHI2_N_16_enable_14), .CK(PHI2_N_16), 
            .Q(Window[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window_i0_i2.GSR = "ENABLED";
    FD1P3AX Window_i0_i1 (.D(D_out_1), .SP(PHI2_N_16_enable_14), .CK(PHI2_N_16), 
            .Q(Window[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window_i0_i1.GSR = "ENABLED";
    FD1P3AX Window_i0_i0 (.D(D_out_0), .SP(PHI2_N_16_enable_14), .CK(PHI2_N_16), 
            .Q(Window[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(25[8] 33[4])
    defparam Window_i0_i0.GSR = "ENABLED";
    LUT4 A_0__I_0_1_lut_rep_5 (.A(A_c_0), .Z(n454)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(208[13:18])
    defparam A_0__I_0_1_lut_rep_5.init = 16'h5555;
    LUT4 i2_4_lut (.A(nRESETr), .B(A_c_7), .C(n433), .D(A_c_6), .Z(n421)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/reg.v(15[16:38])
    defparam i2_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_2_lut (.A(A_c_0), .B(n421), .Z(PHI2_N_16_enable_14)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(208[13:18])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (nIO1_c, nWE_c, Block, RBA_c_0, GND_net, VCC_net, RCLK_c, 
            PHI2_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, Window, A_c_2, 
            RA_c_0, DQML_c, n454, nRESET_c, n459, n209, RAMRDD, 
            RD_out_0, RA_c_1, DQMH_c, A_c_0, CKE_c, RBA_c_1, A_c_1, 
            A_c_3, A_c_4, A_c_5, A_c_6, A_c_7, RA_c_2, RA_c_3, 
            RA_c_4, RA_c_5, RA_c_6, RA_c_7, RA_c_8, RA_c_9, RA_c_10, 
            RD_out_1, RD_out_2, RD_out_3, RD_out_4, RD_out_5, RD_out_6, 
            RD_out_7) /* synthesis syn_module_defined=1 */ ;
    input nIO1_c;
    input nWE_c;
    input [7:0]Block;
    output RBA_c_0;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    input PHI2_c;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    input [5:0]Window;
    input A_c_2;
    output RA_c_0;
    output DQML_c;
    input n454;
    input nRESET_c;
    input n459;
    output n209;
    output [7:0]RAMRDD;
    input RD_out_0;
    output RA_c_1;
    output DQMH_c;
    input A_c_0;
    output CKE_c;
    output RBA_c_1;
    input A_c_1;
    input A_c_3;
    input A_c_4;
    input A_c_5;
    input A_c_6;
    input A_c_7;
    output RA_c_2;
    output RA_c_3;
    output RA_c_4;
    output RA_c_5;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    output RA_c_10;
    input RD_out_1;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    
    wire FCLK /* synthesis is_clock=1, SET_AS_NETWORK=\ram/FCLK */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(26[6:10])
    wire FCLK_N_56 /* synthesis is_inv_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(11[19:22])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(4[8:12])
    wire [3:0]S;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(50[11:12])
    
    wire n3, nCS_N_91, RA_12__N_59, nCAS_N_97, n435;
    wire [5:0]nRESETr;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(35[11:18])
    wire [2:0]PHI2r;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(44[11:16])
    
    wire PORDone_N_81, n456, n230, n6, RDD_7__N_84, n307;
    wire [2:0]n27;
    
    wire nRAS_N_96, nRWE_N_98, n2, n2_adj_113, n457;
    wire [3:0]S_3__N_74;
    
    wire n2_adj_114, RA_12__N_64, n430, RDOE, n304, FCLK_enable_1, 
        PORDone, nIO1_N_2, InitDone, n4, n6_adj_115, n2_adj_116, 
        n2_adj_117, n2_adj_118, n453, n2_adj_119, n2_adj_120, RA_12__N_60, 
        FCLK_enable_2, n228;
    
    LUT4 i275_2_lut_3_lut_4_lut (.A(nIO1_c), .B(nWE_c), .C(S[1]), .D(S[0]), 
         .Z(n3)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i275_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i259_1_lut_2_lut (.A(nIO1_c), .B(nWE_c), .Z(nCS_N_91)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i259_1_lut_2_lut.init = 16'h1111;
    LUT4 Block_5__bdd_4_lut (.A(Block[5]), .B(S[2]), .C(S[1]), .D(S[0]), 
         .Z(RA_12__N_59)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam Block_5__bdd_4_lut.init = 16'h0c2c;
    LUT4 nIO1_c_bdd_4_lut (.A(nIO1_c), .B(S[1]), .C(S[2]), .D(S[0]), 
         .Z(nCAS_N_97)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C (D)+!C !(D))+!B)) */ ;
    defparam nIO1_c_bdd_4_lut.init = 16'hfb3f;
    FD1S3IX RBA__i1 (.D(Block[6]), .CK(FCLK), .CD(n435), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RBA__i1.GSR = "ENABLED";
    FD1S3AX nRESETr_5__115 (.D(nRESETr[4]), .CK(FCLK), .Q(nRESETr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_5__115.GSR = "ENABLED";
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(FCLK), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(51[6] 62[32])
    defparam rclk_oddr.GSR = "ENABLED";
    FD1S3AX nRESETr_4__116 (.D(nRESETr[3]), .CK(FCLK), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_4__116.GSR = "ENABLED";
    FD1S3AX nRESETr_3__117 (.D(nRESETr[2]), .CK(FCLK), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_3__117.GSR = "ENABLED";
    FD1S3AX nRESETr_2__118 (.D(nRESETr[1]), .CK(FCLK), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_2__118.GSR = "ENABLED";
    FD1S3AX nRESETr_1__119 (.D(nRESETr[0]), .CK(FCLK), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_1__119.GSR = "ENABLED";
    FD1S3AX PHI2r_0__121 (.D(PHI2_c), .CK(FCLK_N_56), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(45[8:41])
    defparam PHI2r_0__121.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(nRESETr[5]), .B(nRESETr[2]), .C(nRESETr[3]), .D(nRESETr[4]), 
         .Z(PORDone_N_81)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(40[6:58])
    defparam i3_4_lut.init = 16'h8000;
    FD1S3AX PHI2r_2__122 (.D(PHI2r[1]), .CK(FCLK), .Q(PHI2r[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(46[8:49])
    defparam PHI2r_2__122.GSR = "ENABLED";
    FD1S3AX PHI2r_1__123 (.D(PHI2r[0]), .CK(FCLK), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(46[8:49])
    defparam PHI2r_1__123.GSR = "ENABLED";
    FD1S3JX nCS_126 (.D(n230), .CK(FCLK), .PD(n456), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nCS_126.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_6 (.A(nIO1_c), .B(n6), .C(S[1]), .D(nWE_c), .Z(RDD_7__N_84)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut_adj_6.init = 16'h4000;
    LUT4 i369_2_lut (.A(S[1]), .B(S[2]), .Z(n307)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(66[2] 176[9])
    defparam i369_2_lut.init = 16'hdddd;
    LUT4 i106_2_lut (.A(S[1]), .B(S[0]), .Z(n27[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(58[35:46])
    defparam i106_2_lut.init = 16'h6666;
    FD1S3AX nRAS_127 (.D(nRAS_N_96), .CK(FCLK), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nRAS_127.GSR = "ENABLED";
    LUT4 i160_3_lut (.A(nIO1_c), .B(S[0]), .C(S[2]), .Z(n230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(66[2] 176[9])
    defparam i160_3_lut.init = 16'hcaca;
    FD1S3AX nCAS_128 (.D(nCAS_N_97), .CK(FCLK), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nCAS_128.GSR = "ENABLED";
    FD1S3AX nRWE_129 (.D(nRWE_N_98), .CK(FCLK), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nRWE_129.GSR = "ENABLED";
    LUT4 S_2__I_0_147_i2_3_lut (.A(Window[2]), .B(A_c_2), .C(S[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_147_i2_3_lut.init = 16'hcaca;
    FD1S3IX RA_i1 (.D(n2_adj_113), .CK(FCLK), .CD(n307), .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3IX S__i0 (.D(S_3__N_74[0]), .CK(FCLK), .CD(n457), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i0.GSR = "ENABLED";
    LUT4 i268_3_lut (.A(S[2]), .B(S[1]), .C(n2_adj_114), .Z(RA_12__N_64)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam i268_3_lut.init = 16'hc8c8;
    FD1S3JX DQML_134 (.D(n454), .CK(FCLK), .PD(n430), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam DQML_134.GSR = "ENABLED";
    FD1S3IX RDOE_136 (.D(nCS_N_91), .CK(FCLK), .CD(n304), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(246[8:63])
    defparam RDOE_136.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(FCLK_enable_1)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3AX nRESETr_0__114 (.D(nRESET_c), .CK(FCLK_N_56), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(37[8:45])
    defparam nRESETr_0__114.GSR = "ENABLED";
    OSCH fclk_OSCH (.STDBY(GND_net), .OSC(FCLK)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/georam.v(51[6] 62[32])
    defparam fclk_OSCH.NOM_FREQ = "26.60";
    FD1P3AX PORDone_120 (.D(n459), .SP(PORDone_N_81), .CK(FCLK), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(39[8] 41[4])
    defparam PORDone_120.GSR = "ENABLED";
    LUT4 i149_1_lut (.A(RDOE), .Z(n209)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(247[8:10])
    defparam i149_1_lut.init = 16'h5555;
    LUT4 i1_1_lut (.A(nIO1_c), .Z(nIO1_N_2)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n2), .CK(FCLK), .CD(n307), .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 i366_2_lut (.A(S[2]), .B(S[1]), .Z(n435)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i366_2_lut.init = 16'h9999;
    FD1P3AX InitDone_125 (.D(n459), .SP(FCLK_enable_1), .CK(FCLK), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[8:59])
    defparam InitDone_125.GSR = "ENABLED";
    LUT4 equal_22_i4_2_lut (.A(S[1]), .B(S[2]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(56[11:23])
    defparam equal_22_i4_2_lut.init = 16'heeee;
    FD1S3JX DQMH_133 (.D(A_c_0), .CK(FCLK), .PD(n430), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam DQMH_133.GSR = "ENABLED";
    FD1S3JX CKE_130 (.D(nIO1_N_2), .CK(FCLK), .PD(n307), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam CKE_130.GSR = "ENABLED";
    FD1S3IX RBA__i2 (.D(Block[7]), .CK(FCLK), .CD(n435), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RBA__i2.GSR = "ENABLED";
    LUT4 S_2__I_0_149_i2_3_lut (.A(Window[1]), .B(A_c_1), .C(S[0]), .Z(n2_adj_113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_149_i2_3_lut.init = 16'hcaca;
    LUT4 i113_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n27[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i113_2_lut_3_lut.init = 16'h7878;
    PFUMX S_2__I_0_157_i7 (.BLUT(n3), .ALUT(n6_adj_115), .C0(S[2]), .Z(nRWE_N_98)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;
    LUT4 S_2__I_0_157_i6_4_lut_3_lut (.A(S[0]), .B(S[1]), .C(InitDone), 
         .Z(n6_adj_115)) /* synthesis lut_function=(A (B)+!A ((C)+!B)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam S_2__I_0_157_i6_4_lut_3_lut.init = 16'hd9d9;
    LUT4 i2_2_lut_2_lut (.A(S[0]), .B(S[2]), .Z(n6)) /* synthesis lut_function=(!(A+!(B))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam i2_2_lut_2_lut.init = 16'h4444;
    LUT4 S_2__I_0_146_i2_3_lut (.A(Window[3]), .B(A_c_3), .C(S[0]), .Z(n2_adj_116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_146_i2_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_145_i2_3_lut (.A(Window[4]), .B(A_c_4), .C(S[0]), .Z(n2_adj_117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_145_i2_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_144_i2_3_lut (.A(Window[5]), .B(A_c_5), .C(S[0]), .Z(n2_adj_118)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_144_i2_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_rep_4_4_lut (.A(S[0]), .B(PHI2r[1]), .C(n4), .D(PHI2r[2]), 
         .Z(n453)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam i2_4_lut_rep_4_4_lut.init = 16'h0004;
    INV i377 (.A(FCLK), .Z(FCLK_N_56));
    LUT4 S_2__I_0_143_i2_3_lut (.A(Block[0]), .B(A_c_6), .C(S[0]), .Z(n2_adj_114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_143_i2_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_142_i2_3_lut (.A(Block[1]), .B(A_c_7), .C(S[0]), .Z(n2_adj_119)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_142_i2_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_141_i2_3_lut (.A(Block[2]), .B(Window[0]), .C(S[0]), 
         .Z(n2_adj_120)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_141_i2_3_lut.init = 16'hcaca;
    LUT4 nIO1_c_bdd_4_lut_376 (.A(nIO1_c), .B(S[2]), .C(S[0]), .D(S[1]), 
         .Z(nRAS_N_96)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B (C (D)+!C !(D))+!B (C+!(D)))) */ ;
    defparam nIO1_c_bdd_4_lut_376.init = 16'hf23f;
    LUT4 i1_4_lut_4_lut (.A(S[0]), .B(Block[4]), .C(S[2]), .D(S[1]), 
         .Z(RA_12__N_60)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam i1_4_lut_4_lut.init = 16'hf400;
    FD1S3IX RA_i3 (.D(n2_adj_116), .CK(FCLK), .CD(n307), .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n2_adj_117), .CK(FCLK), .CD(n307), .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n2_adj_118), .CK(FCLK), .CD(n307), .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3AX RA_i6 (.D(RA_12__N_64), .CK(FCLK), .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n2_adj_119), .CK(FCLK), .CD(n307), .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n2_adj_120), .CK(FCLK), .CD(n307), .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1P3IX RA_i9 (.D(Block[3]), .SP(FCLK_enable_2), .CD(n307), .CK(FCLK), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3AX RA_i10 (.D(RA_12__N_60), .CK(FCLK), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3AX RA_i11 (.D(RA_12__N_59), .CK(FCLK), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3IX S__i1 (.D(n27[1]), .CK(FCLK), .CD(n228), .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i1.GSR = "ENABLED";
    FD1S3IX S__i2 (.D(n27[2]), .CK(FCLK), .CD(n228), .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i1.GSR = "ENABLED";
    LUT4 i125_1_lut_rep_7 (.A(S[1]), .Z(n456)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam i125_1_lut_rep_7.init = 16'h5555;
    LUT4 i2_3_lut_3_lut_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), .Z(n304)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam i2_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i255_3_lut_4_lut_4_lut (.A(S[0]), .B(PHI2r[1]), .C(n4), .D(PHI2r[2]), 
         .Z(S_3__N_74[0])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam i255_3_lut_4_lut_4_lut.init = 16'h5054;
    LUT4 i155_1_lut_rep_8 (.A(PORDone), .Z(n457)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(39[8] 41[4])
    defparam i155_1_lut_rep_8.init = 16'h5555;
    LUT4 i158_2_lut_2_lut (.A(PORDone), .B(n453), .Z(n228)) /* synthesis lut_function=((B)+!A) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(39[8] 41[4])
    defparam i158_2_lut_2_lut.init = 16'hdddd;
    LUT4 i126_1_lut_rep_6 (.A(S[0]), .Z(FCLK_enable_2)) /* synthesis lut_function=(!(A)) */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(61[28:40])
    defparam i126_1_lut_rep_6.init = 16'h5555;
    LUT4 i371_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n430)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i371_2_lut_3_lut.init = 16'hf7f7;
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_84), .CK(FCLK_N_56), 
            .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // //mac/icloud/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i7.GSR = "ENABLED";
    
endmodule
