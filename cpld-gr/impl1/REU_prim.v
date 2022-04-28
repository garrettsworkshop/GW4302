// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Thu Apr 28 07:00:04 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, nIRQ, 
            RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, 
            DQML, RD) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(1[8:11])
    input C8M;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(3[8:11])
    input PHI2;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(4[8:12])
    input nRESET;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(5[8:14])
    input BA;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(7[8:10])
    inout [7:0]D;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(8[14:15])
    input [15:0]A;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    input nWE;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(10[8:11])
    output nWEDMA;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(11[9:15])
    output nDMA;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(12[9:13])
    input nIO1;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(13[8:12])
    input nIO2;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(14[8:12])
    output nAOE;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(16[9:13])
    output ADIR;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(17[9:13])
    output nRWOE;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(18[9:14])
    output nDOE;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(19[9:13])
    output DDIR;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(20[9:13])
    output nIRQ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(22[9:13])
    output RCLK;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(24[9:13])
    output nCS;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(25[9:12])
    output nRAS;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(26[9:13])
    output nCAS;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(27[9:13])
    output nRWE;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(28[9:13])
    output CKE;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(29[9:12])
    output [1:0]RBA;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(30[15:18])
    output [12:0]RA;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    output DQMH;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(32[9:13])
    output DQML;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(33[9:13])
    inout [7:0]RD;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(34[14:16])
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(4[8:12])
    wire PHI2_N_16 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(11[19:24])
    
    wire GND_net, VCC_net, nRESET_c, A_c_7, A_c_6, A_c_5, A_c_4, 
        A_c_3, A_c_2, A_c_1, A_c_0, nWE_c, nIO1_c, nIO2_c, DDIR_c, 
        RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, CKE_c, RBA_c_1, 
        RBA_c_0, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, 
        RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c;
    wire [7:0]Block;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(37[13:18])
    wire [5:0]Window;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(38[13:19])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(41[13:19])
    
    wire BlockWR, n563, n512, D_out_7, D_out_6, D_out_5, D_out_4, 
        D_out_3, D_out_2, D_out_1, D_out_0, RD_out_7, RD_out_6, 
        RD_out_5, n203, RD_out_4, RD_out_3, RD_out_2, RD_out_1, 
        RD_out_0, n558;
    
    VHI i2 (.Z(VCC_net));
    INV i470 (.A(PHI2_c), .Z(PHI2_N_16));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(4[8:12])
    BB D_pad_2 (.I(RAMRDD[2]), .T(DDIR_c), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_7 (.I(RAMRDD[7]), .T(DDIR_c), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_5 (.I(RAMRDD[5]), .T(DDIR_c), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    TSALL TSALL_INST (.TSALL(GND_net));
    BB D_pad_3 (.I(RAMRDD[3]), .T(DDIR_c), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_6 (.I(RAMRDD[6]), .T(DDIR_c), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    BB D_pad_4 (.I(RAMRDD[4]), .T(DDIR_c), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_1 (.I(RAMRDD[1]), .T(DDIR_c), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB D_pad_0 (.I(RAMRDD[0]), .T(DDIR_c), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(68[9:10])
    BB RD_pad_7 (.I(D_out_7), .T(n203), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_6 (.I(D_out_6), .T(n203), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_5 (.I(D_out_5), .T(n203), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_4 (.I(D_out_4), .T(n203), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_3 (.I(D_out_3), .T(n203), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_2 (.I(D_out_2), .T(n203), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_1 (.I(D_out_1), .T(n203), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    BB RD_pad_0 (.I(D_out_0), .T(n203), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    OB nWEDMA_pad (.I(VCC_net), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(11[9:15])
    OB nDMA_pad (.I(VCC_net), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(12[9:13])
    OB nAOE_pad (.I(GND_net), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(16[9:13])
    OB ADIR_pad (.I(VCC_net), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(17[9:13])
    OB nRWOE_pad (.I(VCC_net), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(18[9:14])
    OB nDOE_pad (.I(GND_net), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(19[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(20[9:13])
    OB nIRQ_pad (.I(VCC_net), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(22[9:13])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(24[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(25[9:12])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(26[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(27[9:13])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(28[9:13])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(29[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(30[15:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(30[15:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_11 (.I(GND_net), .O(RA[11]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_10 (.I(RA_c_10), .O(RA[10]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(31[16:18])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(32[9:13])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(33[9:13])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(4[8:12])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(5[8:14])
    IB A_pad_7 (.I(A[7]), .O(A_c_7));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_6 (.I(A[6]), .O(A_c_6));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_5 (.I(A[5]), .O(A_c_5));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_4 (.I(A[4]), .O(A_c_4));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_3 (.I(A[3]), .O(A_c_3));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_2 (.I(A[2]), .O(A_c_2));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_1 (.I(A[1]), .O(A_c_1));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB A_pad_0 (.I(A[0]), .O(A_c_0));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(9[15:16])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(10[8:11])
    IB nIO1_pad (.I(nIO1), .O(nIO1_c));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(13[8:12])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(14[8:12])
    LUT4 m1_lut (.Z(n563)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    RAM ram (.Block({Block}), .Window({Window}), .nIO1_c(nIO1_c), .GND_net(GND_net), 
        .VCC_net(VCC_net), .RCLK_c(RCLK_c), .PHI2_c(PHI2_c), .nCS_c(nCS_c), 
        .A_c_1(A_c_1), .A_c_4(A_c_4), .A_c_0(A_c_0), .n512(n512), .BlockWR(BlockWR), 
        .nRAS_c(nRAS_c), .A_c_5(A_c_5), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
        .RA_c_0(RA_c_0), .DQML_c(DQML_c), .n558(n558), .nRESET_c(nRESET_c), 
        .RBA_c_1(RBA_c_1), .n563(n563), .A_c_7(A_c_7), .A_c_6(A_c_6), 
        .nWE_c(nWE_c), .nIO2_c(nIO2_c), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), 
        .RA_c_1(RA_c_1), .DQMH_c(DQMH_c), .CKE_c(CKE_c), .RBA_c_0(RBA_c_0), 
        .A_c_3(A_c_3), .DDIR_c(DDIR_c), .n203(n203), .A_c_2(A_c_2), 
        .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), .RA_c_4(RA_c_4), .RA_c_5(RA_c_5), 
        .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), .RA_c_9(RA_c_9), 
        .RA_c_10(RA_c_10), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(51[6] 62[32])
    GeoReg georeg (.Block({Block}), .PHI2_N_16(PHI2_N_16), .BlockWR(BlockWR), 
           .D_out_7(D_out_7), .D_out_6(D_out_6), .D_out_5(D_out_5), .D_out_4(D_out_4), 
           .D_out_3(D_out_3), .D_out_2(D_out_2), .D_out_1(D_out_1), .Window({Window}), 
           .D_out_0(D_out_0), .A_c_0(A_c_0), .n558(n558), .n512(n512)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(43[9] 49[27])
    
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
// Verilog Description of module RAM
//

module RAM (Block, Window, nIO1_c, GND_net, VCC_net, RCLK_c, PHI2_c, 
            nCS_c, A_c_1, A_c_4, A_c_0, n512, BlockWR, nRAS_c, 
            A_c_5, nCAS_c, nRWE_c, RA_c_0, DQML_c, n558, nRESET_c, 
            RBA_c_1, n563, A_c_7, A_c_6, nWE_c, nIO2_c, RAMRDD, 
            RD_out_0, RA_c_1, DQMH_c, CKE_c, RBA_c_0, A_c_3, DDIR_c, 
            n203, A_c_2, RA_c_2, RA_c_3, RA_c_4, RA_c_5, RA_c_6, 
            RA_c_7, RA_c_8, RA_c_9, RA_c_10, RD_out_1, RD_out_2, 
            RD_out_3, RD_out_4, RD_out_5, RD_out_6, RD_out_7) /* synthesis syn_module_defined=1 */ ;
    input [7:0]Block;
    input [5:0]Window;
    input nIO1_c;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    input PHI2_c;
    output nCS_c;
    input A_c_1;
    input A_c_4;
    input A_c_0;
    output n512;
    output BlockWR;
    output nRAS_c;
    input A_c_5;
    output nCAS_c;
    output nRWE_c;
    output RA_c_0;
    output DQML_c;
    input n558;
    input nRESET_c;
    output RBA_c_1;
    input n563;
    input A_c_7;
    input A_c_6;
    input nWE_c;
    input nIO2_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output RA_c_1;
    output DQMH_c;
    output CKE_c;
    output RBA_c_0;
    input A_c_3;
    output DDIR_c;
    output n203;
    input A_c_2;
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
    
    wire FCLK /* synthesis is_clock=1, SET_AS_NETWORK=\ram/FCLK */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(26[6:10])
    wire FCLK_N_40 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(11[19:22])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(4[8:12])
    wire [3:0]S;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    
    wire n2, nCAS_N_81, FCLK_enable_2;
    wire [5:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(35[11:18])
    wire [2:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(44[11:16])
    
    wire n556, n230, n2_adj_97, n2_adj_98, nRAS_N_80, n338, n2_adj_99, 
        nRWE_N_82, n552, n268;
    wire [3:0]S_3__N_58;
    
    wire RDOE, nCS_N_75, n33, PORDone, PORDone_N_65, n3, RA_12__N_48, 
        RDD_7__N_68, InitDone, n559, n2_adj_100, FCLK_enable_1, n557, 
        n554, n2_adj_101, RA_12__N_43, n2_adj_102, n5, n519, n38, 
        RA_12__N_44;
    wire [2:0]n27;
    
    wire n560, n502;
    
    LUT4 S_2__I_0_141_i2_3_lut (.A(Block[2]), .B(Window[0]), .C(S[0]), 
         .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_141_i2_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut (.A(S[1]), .B(S[2]), .C(nIO1_c), .D(S[0]), .Z(nCAS_N_81)) /* synthesis lut_function=((B (D)+!B (C+!(D)))+!A) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfd77;
    LUT4 i5_1_lut (.A(S[0]), .Z(FCLK_enable_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i5_1_lut.init = 16'h5555;
    FD1S3AX nRESETr_5__115 (.D(nRESETr[4]), .CK(FCLK), .Q(nRESETr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_5__115.GSR = "ENABLED";
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(FCLK), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(51[6] 62[32])
    defparam rclk_oddr.GSR = "ENABLED";
    FD1S3AX nRESETr_4__116 (.D(nRESETr[3]), .CK(FCLK), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_4__116.GSR = "ENABLED";
    FD1S3AX nRESETr_3__117 (.D(nRESETr[2]), .CK(FCLK), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_3__117.GSR = "ENABLED";
    FD1S3AX nRESETr_2__118 (.D(nRESETr[1]), .CK(FCLK), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_2__118.GSR = "ENABLED";
    FD1S3AX nRESETr_1__119 (.D(nRESETr[0]), .CK(FCLK), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(38[8:53])
    defparam nRESETr_1__119.GSR = "ENABLED";
    FD1S3AX PHI2r_0__121 (.D(PHI2_c), .CK(FCLK_N_40), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(45[8:41])
    defparam PHI2r_0__121.GSR = "ENABLED";
    FD1S3AX PHI2r_2__122 (.D(PHI2r[1]), .CK(FCLK), .Q(PHI2r[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(46[8:49])
    defparam PHI2r_2__122.GSR = "ENABLED";
    FD1S3AX PHI2r_1__123 (.D(PHI2r[0]), .CK(FCLK), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(46[8:49])
    defparam PHI2r_1__123.GSR = "ENABLED";
    FD1S3JX nCS_126 (.D(n230), .CK(FCLK), .PD(n556), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nCS_126.GSR = "ENABLED";
    LUT4 S_2__I_0_149_i2_3_lut (.A(Window[1]), .B(A_c_1), .C(S[0]), .Z(n2_adj_97)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_149_i2_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_145_i2_3_lut (.A(Window[4]), .B(A_c_4), .C(S[0]), .Z(n2_adj_98)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_145_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(A_c_0), .B(n512), .Z(BlockWR)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1S3AX nRAS_127 (.D(nRAS_N_80), .CK(FCLK), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nRAS_127.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut (.A(S[1]), .B(S[0]), .C(S[2]), .Z(n338)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 S_2__I_0_144_i2_3_lut (.A(Window[5]), .B(A_c_5), .C(S[0]), .Z(n2_adj_99)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_144_i2_3_lut.init = 16'hcaca;
    FD1S3AX nCAS_128 (.D(nCAS_N_81), .CK(FCLK), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nCAS_128.GSR = "ENABLED";
    FD1S3AX nRWE_129 (.D(nRWE_N_82), .CK(FCLK), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam nRWE_129.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n2_adj_97), .CK(FCLK), .CD(n552), .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3IX S__i0 (.D(S_3__N_58[0]), .CK(FCLK), .CD(n268), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i0.GSR = "ENABLED";
    FD1S3JX DQML_134 (.D(n558), .CK(FCLK), .PD(n338), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam DQML_134.GSR = "ENABLED";
    FD1S3IX RDOE_136 (.D(nCS_N_75), .CK(FCLK), .CD(n338), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(246[8:63])
    defparam RDOE_136.GSR = "ENABLED";
    FD1S3AX nRESETr_0__114 (.D(nRESET_c), .CK(FCLK_N_40), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(37[8:45])
    defparam nRESETr_0__114.GSR = "ENABLED";
    FD1S3IX RBA__i2 (.D(Block[7]), .CK(FCLK), .CD(n33), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RBA__i2.GSR = "ENABLED";
    OSCH fclk_OSCH (.STDBY(GND_net), .OSC(FCLK)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(51[6] 62[32])
    defparam fclk_OSCH.NOM_FREQ = "26.60";
    FD1P3AX PORDone_120 (.D(n563), .SP(PORDone_N_65), .CK(FCLK), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(39[8] 41[4])
    defparam PORDone_120.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(S[1]), .B(S[2]), .C(n3), .Z(RA_12__N_48)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i2_4_lut (.A(A_c_7), .B(A_c_6), .C(nWE_c), .D(nIO2_c), .Z(n512)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0008;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 i25_3_lut_4_lut_else_4_lut (.A(S[2]), .B(S[1]), .C(InitDone), 
         .Z(n559)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i25_3_lut_4_lut_else_4_lut.init = 16'hf7f7;
    FD1S3IX RA_i2 (.D(n2_adj_100), .CK(FCLK), .CD(n552), .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(nRESETr[5]), .B(nRESETr[2]), .C(nRESETr[3]), .D(nRESETr[4]), 
         .Z(PORDone_N_65)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(40[6:58])
    defparam i3_4_lut.init = 16'h8000;
    FD1P3AX InitDone_125 (.D(n563), .SP(FCLK_enable_1), .CK(FCLK), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(61[8:59])
    defparam InitDone_125.GSR = "ENABLED";
    LUT4 i374_3_lut (.A(Block[0]), .B(A_c_6), .C(S[0]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i374_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_5_2_lut (.A(S[1]), .B(S[2]), .Z(n552)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_5_2_lut.init = 16'hdddd;
    FD1S3JX DQMH_133 (.D(A_c_0), .CK(FCLK), .PD(n338), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam DQMH_133.GSR = "ENABLED";
    FD1S3JX CKE_130 (.D(n557), .CK(FCLK), .PD(n552), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(65[8] 177[4])
    defparam CKE_130.GSR = "ENABLED";
    FD1S3IX RBA__i1 (.D(Block[6]), .CK(FCLK), .CD(n33), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RBA__i1.GSR = "ENABLED";
    LUT4 i187_1_lut (.A(PORDone), .Z(n268)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(39[8] 41[4])
    defparam i187_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_7 (.A(S[1]), .B(S[0]), .Z(n554)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i1_2_lut_rep_7.init = 16'h2222;
    LUT4 i380_3_lut (.A(Block[1]), .B(A_c_7), .C(S[0]), .Z(n2_adj_101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i380_3_lut.init = 16'hcaca;
    LUT4 Block_5__bdd_4_lut (.A(Block[5]), .B(S[0]), .C(S[2]), .D(S[1]), 
         .Z(RA_12__N_43)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A ((D)+!C))) */ ;
    defparam Block_5__bdd_4_lut.init = 16'h02f0;
    LUT4 i457_2_lut (.A(nIO1_c), .B(nWE_c), .Z(nCS_N_75)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i457_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_3_lut_adj_6 (.A(S[0]), .B(S[2]), .C(nIO1_c), .Z(n230)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i1_2_lut_3_lut_3_lut_adj_6.init = 16'hb8b8;
    LUT4 S_2__I_0_146_i2_3_lut (.A(Window[3]), .B(A_c_3), .C(S[0]), .Z(n2_adj_102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_146_i2_3_lut.init = 16'hcaca;
    LUT4 i454_4_lut (.A(n5), .B(PORDone), .C(PHI2r[1]), .D(n519), .Z(n38)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)))) */ ;
    defparam i454_4_lut.init = 16'h3373;
    LUT4 i1_1_lut_rep_10 (.A(nIO1_c), .Z(n557)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i1_1_lut_rep_10.init = 16'h5555;
    LUT4 i1_3_lut_4_lut_4_lut (.A(S[1]), .B(S[0]), .C(Block[4]), .D(S[2]), 
         .Z(RA_12__N_44)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i1_3_lut_4_lut_4_lut.init = 16'haa20;
    LUT4 i3_4_lut_4_lut (.A(nIO1_c), .B(n554), .C(nWE_c), .D(S[2]), 
         .Z(RDD_7__N_68)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_adj_7 (.A(S[0]), .B(PHI2r[2]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i1_2_lut_adj_7.init = 16'heeee;
    LUT4 i100_2_lut (.A(S[1]), .B(S[0]), .Z(n27[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(58[35:46])
    defparam i100_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_3_lut (.A(nWE_c), .B(nIO1_c), .C(PHI2_c), .Z(DDIR_c)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reu.v(10[8:11])
    defparam i2_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i25_3_lut_4_lut_then_4_lut (.A(S[2]), .B(S[1]), .C(nIO1_c), .D(nWE_c), 
         .Z(n560)) /* synthesis lut_function=(A (B)+!A ((C+(D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i25_3_lut_4_lut_then_4_lut.init = 16'hddd9;
    LUT4 i143_1_lut (.A(RDOE), .Z(n203)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(247[8:10])
    defparam i143_1_lut.init = 16'h5555;
    LUT4 i5_1_lut_rep_9 (.A(S[1]), .Z(n556)) /* synthesis lut_function=(!(A)) */ ;
    defparam i5_1_lut_rep_9.init = 16'h5555;
    LUT4 i1_4_lut (.A(S[0]), .B(PHI2r[1]), .C(n519), .D(PHI2r[2]), .Z(S_3__N_58[0])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut.init = 16'h5054;
    LUT4 i32_2_lut (.A(S[1]), .B(S[2]), .Z(n33)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i32_2_lut.init = 16'h9999;
    LUT4 i16_4_lut (.A(S[1]), .B(S[0]), .C(S[2]), .D(nIO1_c), .Z(nRAS_N_80)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i16_4_lut.init = 16'h9f9d;
    LUT4 i1_2_lut_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), .Z(FCLK_enable_1)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_8 (.A(S[2]), .B(S[1]), .Z(n519)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(50[11:12])
    defparam i1_2_lut_adj_8.init = 16'heeee;
    LUT4 S_2__I_0_147_i2_3_lut (.A(Window[2]), .B(A_c_2), .C(S[0]), .Z(n2_adj_100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(180[2] 235[9])
    defparam S_2__I_0_147_i2_3_lut.init = 16'hcaca;
    LUT4 i19_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n502)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i19_2_lut_3_lut.init = 16'h7878;
    INV i469 (.A(FCLK), .Z(FCLK_N_40));
    PFUMX i467 (.BLUT(n559), .ALUT(n560), .C0(S[0]), .Z(nRWE_N_82));
    FD1S3IX RA_i3 (.D(n2_adj_102), .CK(FCLK), .CD(n552), .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n2_adj_98), .CK(FCLK), .CD(n552), .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n2_adj_99), .CK(FCLK), .CD(n552), .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3AX RA_i6 (.D(RA_12__N_48), .CK(FCLK), .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n2_adj_101), .CK(FCLK), .CD(n552), .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n2), .CK(FCLK), .CD(n552), .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1P3IX RA_i9 (.D(Block[3]), .SP(FCLK_enable_2), .CD(n552), .CK(FCLK), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3AX RA_i10 (.D(RA_12__N_44), .CK(FCLK), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3AX RA_i11 (.D(RA_12__N_43), .CK(FCLK), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(179[8] 237[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3IX S__i1 (.D(n27[1]), .CK(FCLK), .CD(n38), .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i1.GSR = "ENABLED";
    FD1S3IX S__i2 (.D(n502), .CK(FCLK), .CD(n38), .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(52[8] 59[4])
    defparam S__i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_68), .CK(FCLK_N_40), 
            .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=51, LSE_RLINE=62 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(241[8:78])
    defparam RDD_i0_i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module GeoReg
//

module GeoReg (Block, PHI2_N_16, BlockWR, D_out_7, D_out_6, D_out_5, 
            D_out_4, D_out_3, D_out_2, D_out_1, Window, D_out_0, 
            A_c_0, n558, n512) /* synthesis syn_module_defined=1 */ ;
    output [7:0]Block;
    input PHI2_N_16;
    input BlockWR;
    input D_out_7;
    input D_out_6;
    input D_out_5;
    input D_out_4;
    input D_out_3;
    input D_out_2;
    input D_out_1;
    output [5:0]Window;
    input D_out_0;
    input A_c_0;
    output n558;
    input n512;
    
    wire PHI2_N_16 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(11[19:24])
    
    wire WindowWR;
    
    FD1P3AX Block_i0_i7 (.D(D_out_7), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i7.GSR = "ENABLED";
    FD1P3AX Block_i0_i6 (.D(D_out_6), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i6.GSR = "ENABLED";
    FD1P3AX Block_i0_i5 (.D(D_out_5), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i5.GSR = "ENABLED";
    FD1P3AX Block_i0_i4 (.D(D_out_4), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i4.GSR = "ENABLED";
    FD1P3AX Block_i0_i3 (.D(D_out_3), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i3.GSR = "ENABLED";
    FD1P3AX Block_i0_i2 (.D(D_out_2), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i2.GSR = "ENABLED";
    FD1P3AX Block_i0_i1 (.D(D_out_1), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i1.GSR = "ENABLED";
    FD1P3AX Window_i0_i5 (.D(D_out_5), .SP(WindowWR), .CK(PHI2_N_16), 
            .Q(Window[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Window_i0_i5.GSR = "ENABLED";
    FD1P3AX Window_i0_i4 (.D(D_out_4), .SP(WindowWR), .CK(PHI2_N_16), 
            .Q(Window[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Window_i0_i4.GSR = "ENABLED";
    FD1P3AX Window_i0_i3 (.D(D_out_3), .SP(WindowWR), .CK(PHI2_N_16), 
            .Q(Window[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Window_i0_i3.GSR = "ENABLED";
    FD1P3AX Window_i0_i2 (.D(D_out_2), .SP(WindowWR), .CK(PHI2_N_16), 
            .Q(Window[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Window_i0_i2.GSR = "ENABLED";
    FD1P3AX Window_i0_i1 (.D(D_out_1), .SP(WindowWR), .CK(PHI2_N_16), 
            .Q(Window[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Window_i0_i1.GSR = "ENABLED";
    FD1P3AX Window_i0_i0 (.D(D_out_0), .SP(WindowWR), .CK(PHI2_N_16), 
            .Q(Window[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Window_i0_i0.GSR = "ENABLED";
    FD1P3AX Block_i0_i0 (.D(D_out_0), .SP(BlockWR), .CK(PHI2_N_16), .Q(Block[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=27, LSE_LLINE=43, LSE_RLINE=49 */ ;   // c:/users/garre/repos/gw4302/cpld-gr/reg.v(25[8] 28[4])
    defparam Block_i0_i0.GSR = "ENABLED";
    LUT4 A_0__I_0_1_lut_rep_11 (.A(A_c_0), .Z(n558)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(208[13:18])
    defparam A_0__I_0_1_lut_rep_11.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(A_c_0), .B(n512), .Z(WindowWR)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld-gr/ram.v(208[13:18])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    
endmodule
