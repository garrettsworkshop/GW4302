// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Wed Apr 27 05:11:22 2022
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
    wire C8M_N_500 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(30[11:18])
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(116[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nIO2_c, 
        nAOE_c, nRWOE_c, nDOE_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, 
        nCAS_c, nRWE_c, CKE_c, RBA_c_1, RBA_c_0, RA_c_11, RA_c_10, 
        RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, 
        RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c, IRQ;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, SetEndOfBlock, DOE, Execute;
    wire [7:0]Dout;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[13:17])
    
    wire nWEDMA_N_5, n1991, EndOfBlock, Fault, ExecuteEN, AutoloadEN, 
        FF00DecodeEN;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[12:18])
    
    wire IntEnable, EndOfBlockMask;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(63[11:18])
    
    wire IncREUAg, n2773, n398, n3566, n3565, n3590, n3589, n3588, 
        n3584, n3581, n3579, n355, n3577, n3558, n8, IntPending_N_448, 
        n1942, n6, CAOut_7__N_186, n3563, n1496, CAOut_15__N_141, 
        REUAOut_7__N_98, REUAOut_15__N_53, REUAOut_15__N_51, n7, n39, 
        REUAOut_18__N_34;
    wire [2:0]REUAOut_18__N_33;
    
    wire n3576, n3575, IRQOut_N_440, Execute_N_441;
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(231[11:15])
    
    wire A_0__N_542, RAMRD_N_549, XferEnd_N_587, XferEnd_N_579, n458, 
        n3562, PHI2_N_548_enable_19, n3559, n3, n3574, n33, n31, 
        n30, n28, n3573, D_out_7, D_out_6, D_out_5, D_out_4, D_out_3, 
        D_out_2, D_out_1, D_out_0, A_out_15, A_out_14, A_out_13, 
        A_out_12, A_out_11, A_out_10, A_out_9, A_out_8, n3571, A_out_4, 
        A_out_3, n3570, A_out_2, A_out_1, A_out_0, n3569, RD_out_7, 
        RD_out_6, n2774, RD_out_5, n1038, RD_out_4, RD_out_3, RD_out_2, 
        RD_out_1, RD_out_0, n1, n1358, n3593, n1_adj_665, n3568, 
        n3480, n1_adj_666, n1_adj_667, n1362, n3557, n3227, n3473, 
        n3223, n3466, n3811, n3591, n3461, n3567, n3456, n3809, 
        n3810, n3451;
    
    VHI i2 (.Z(VCC_net));
    INV i3333 (.A(C8M_c), .Z(C8M_N_500));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    LUT4 i17_4_lut (.A(n33), .B(n31), .C(n3223), .D(n28), .Z(Execute_N_441)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i17_4_lut.init = 16'h0800;
    LUT4 i15_4_lut (.A(n3227), .B(n30), .C(n8), .D(A_out_12), .Z(n33)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i15_4_lut.init = 16'h0400;
    BB D_pad_0 (.I(Dout[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    LUT4 i13_4_lut (.A(A_out_13), .B(n7), .C(A_out_15), .D(n3589), .Z(n31)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i13_4_lut.init = 16'h0020;
    LUT4 i2971_2_lut (.A(n6), .B(A_out_3), .Z(n3223)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2971_2_lut.init = 16'heeee;
    BB D_pad_1 (.I(Dout[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_2 (.I(Dout[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_3 (.I(Dout[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    BB D_pad_4 (.I(Dout[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    LUT4 i10_4_lut (.A(FF00DecodeEN), .B(A_out_11), .C(A_out_1), .D(ExecuteEN), 
         .Z(n28)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i10_4_lut.init = 16'h0800;
    BB D_pad_5 (.I(Dout[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    LUT4 i2975_2_lut (.A(nWE_c), .B(A_out_0), .Z(n3227)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2975_2_lut.init = 16'heeee;
    BB D_pad_6 (.I(Dout[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    LUT4 i12_4_lut (.A(A_out_10), .B(A_out_9), .C(A_out_14), .D(A_out_8), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    BB D_pad_7 (.I(Dout[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(116[9:10])
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n458), .B(RAMRDD[7]), .C(DMA), .D(n1942), 
         .Z(Dout[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n3456), .B(RAMRDD[0]), .C(DMA), .D(n1942), 
         .Z(Dout[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    BB A_pad_15 (.I(CA[15]), .T(n3593), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n3451), .B(RAMRDD[5]), .C(DMA), .D(n1942), 
         .Z(Dout[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    BB A_pad_14 (.I(CA[14]), .T(n3593), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3593), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n3593), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_11 (.I(CA[11]), .T(n3593), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n3593), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_9 (.I(CA[9]), .T(n3593), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3593), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3593), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3593), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3593), .B(A[5]), .O(n6));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3593), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3593), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3593), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3593), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3593), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(118[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1038), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1038), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1038), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1038), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1038), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1038), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1038), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1038), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n3593), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_c), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n3593), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
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
    DMASeq dmaseq (.XferEnd_N_579(XferEnd_N_579), .n3565(n3565), .\XferType[0] (XferType[0]), 
           .DMA(DMA), .n3568(n3568), .AutoloadEN(AutoloadEN), .REUAOut_15__N_53(REUAOut_15__N_53), 
           .n3566(n3566), .CAOut_7__N_186(CAOut_7__N_186), .n3569(n3569), 
           .n3558(n3558), .n3567(n3567), .n3557(n3557), .REUAOut_18__N_34(REUAOut_18__N_34), 
           .\REUA[15] (REUA[15]), .\REUA[12] (REUA[12]), .\REUA[10] (REUA[10]), 
           .\REUA[13] (REUA[13]), .\REUA[9] (REUA[9]), .\REUA[11] (REUA[11]), 
           .RegReset(RegReset), .\REUA[14] (REUA[14]), .\REUA[8] (REUA[8]), 
           .n3(n3), .n3562(n3562), .REUAOut_15__N_51(REUAOut_15__N_51), 
           .PHI2_N_548(PHI2_N_548), .nRESET_c(nRESET_c), .nWEDMA_N_5(nWEDMA_N_5), 
           .n3563(n3563), .SetEndOfBlock(SetEndOfBlock), .IntPending_N_448(IntPending_N_448), 
           .nWEDMA_c(nWEDMA_c), .\IncMode[0] (IncMode[0]), .\REUA[2] (REUA[2]), 
           .\REUA[1] (REUA[1]), .\REUA[3] (REUA[3]), .RAMRD(RAMRD), .RAMRD_N_549(RAMRD_N_549), 
           .RAMWR(RAMWR), .n3593(n3593), .BA_c(BA_c), .\REUA[6] (REUA[6]), 
           .\REUA[7] (REUA[7]), .\REUA[4] (REUA[4]), .\REUA[0] (REUA[0]), 
           .\REUA[5] (REUA[5]), .n39(n39), .IncREUAg(IncREUAg), .Fault(Fault), 
           .A_out_0(A_out_0), .n355(n355), .n3571(n3571), .CAOut_15__N_141(CAOut_15__N_141), 
           .nRWOE_c(nRWOE_c), .n3559(n3559), .n1358(n1358), .n3810(n3810), 
           .XferEnd_N_587(XferEnd_N_587), .PHI2_N_548_enable_19(PHI2_N_548_enable_19), 
           .n3811(n3811), .PHI2_c(PHI2_c), .nAOE_c(nAOE_c), .nIO2_c(nIO2_c), 
           .n3590(n3590), .nWE_c(nWE_c), .n3579(n3579), .nDOE_c(nDOE_c), 
           .n3573(n3573), .REUAOut_7__N_98(REUAOut_7__N_98), .DOE(DOE), 
           .Execute(Execute), .n3581(n3581), .n1362(n1362), .n3576(n3576), 
           .n1991(n1991)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(82[9] 96[64])
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n3461), .B(RAMRDD[1]), .C(DMA), .D(n1942), 
         .Z(Dout[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2774), .S1(nWEDMA_N_5));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 RegRDD_7__I_0_i3_4_lut (.A(n3466), .B(RAMRDD[2]), .C(DMA), .D(n1942), 
         .Z(Dout[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i3_4_lut.init = 16'hcfca;
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2773), .COUT(n2774));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2773));   // c:/users/garre/repos/gw4302/cpld/reu.v(94[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n3473), .B(RAMRDD[3]), .C(DMA), .D(n1942), 
         .Z(Dout[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n3480), .B(RAMRDD[4]), .C(DMA), .D(n1942), 
         .Z(Dout[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[20:51])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    INV i3332 (.A(PHI2_c), .Z(PHI2_N_548));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Glue glue (.nWE_c(nWE_c), .nWEDMA_c(nWEDMA_c), .DMA(DMA), .DDIR_c(DDIR_c), 
         .IntEnable(IntEnable), .EndOfBlock(EndOfBlock), .IRQOut_N_440(IRQOut_N_440), 
         .EndOfBlockMask(EndOfBlockMask), .IRQ(IRQ), .n3590(n3590), .A_out_0(A_out_0), 
         .A_out_1(A_out_1), .n3574(n3574), .n3591(n3591), .n1362(n1362), 
         .n3573(n3573), .n3588(n3588), .n3570(n3570), .n3584(n3584), 
         .n3568(n3568), .n3589(n3589), .A_out_3(A_out_3), .n3575(n3575), 
         .n3577(n3577)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(98[7] 113[15])
    LUT4 m1_lut (.Z(n3809)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    REUReg reureg (.n3584(n3584), .n3575(n3575), .D_out_4(D_out_4), .D_out_5(D_out_5), 
           .D_out_6(D_out_6), .PHI2_N_548(PHI2_N_548), .n3811(n3811), 
           .D_out_0(D_out_0), .D_out_1(D_out_1), .CA({CA}), .RegReset(RegReset), 
           .n3576(n3576), .D_out_7(D_out_7), .n3591(n3591), .n3577(n3577), 
           .n3810(n3810), .A_out_2(A_out_2), .ExecuteEN(ExecuteEN), .\XferType[0] (XferType[0]), 
           .D_out_3(D_out_3), .n3565(n3565), .D_out_2(D_out_2), .EndOfBlock(EndOfBlock), 
           .SetEndOfBlock(SetEndOfBlock), .n3809(n3809), .n1991(n1991), 
           .\Length[2] (Length[2]), .REUA({REUA[23:21], Open_0, REUA[19:0]}), 
           .A_out_0(A_out_0), .A_out_1(A_out_1), .n3581(n3581), .n3566(n3566), 
           .A_out_3(A_out_3), .n1362(n1362), .n3569(n3569), .IntPending_N_448(IntPending_N_448), 
           .n3589(n3589), .n3567(n3567), .GND_net(GND_net), .REUAOut_15__N_53(REUAOut_15__N_53), 
           .n3456(n3456), .IntEnable(IntEnable), .n3574(n3574), .Fault(Fault), 
           .PHI2_N_548_enable_19(PHI2_N_548_enable_19), .FF00DecodeEN(FF00DecodeEN), 
           .IncMode({Open_1, IncMode[0]}), .n3588(n3588), .\S[0] (S[0]), 
           .n1(n1_adj_666), .n458(n458), .EndOfBlockMask(EndOfBlockMask), 
           .n1358(n1358), .n1_adj_4(n1_adj_665), .n1_adj_5(n1), .n3451(n3451), 
           .n3559(n3559), .REUAOut_18__N_34(REUAOut_18__N_34), .A_out_4(A_out_4), 
           .n1942(n1942), .AutoloadEN(AutoloadEN), .n355(n355), .n3(n3), 
           .Execute(Execute), .n39(n39), .DMA(DMA), .RAMRD_N_549(RAMRD_N_549), 
           .n3570(n3570), .XferEnd_N_579(XferEnd_N_579), .REUAOut_15__N_51(REUAOut_15__N_51), 
           .\RAMRDD[6] (RAMRDD[6]), .\Dout[6] (Dout[6]), .n3571(n3571), 
           .\REUAOut_18__N_33[2] (REUAOut_18__N_33[2]), .IRQOut_N_440(IRQOut_N_440), 
           .n3557(n3557), .n3568(n3568), .REUAOut_7__N_98(REUAOut_7__N_98), 
           .IncREUAg(IncREUAg), .n3573(n3573), .CAOut_15__N_141(CAOut_15__N_141), 
           .Execute_N_441(Execute_N_441), .n3563(n3563), .n3562(n3562), 
           .A_0__N_542(A_0__N_542), .n3480(n3480), .BA_c(BA_c), .XferEnd_N_587(XferEnd_N_587), 
           .CAOut_7__N_186(CAOut_7__N_186), .n3558(n3558), .n3473(n3473), 
           .n1496(n1496), .n3466(n3466), .n3579(n3579), .n398(n398), 
           .n1_adj_6(n1_adj_667), .n3461(n3461)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 68[11])
    RAM ram (.\S[0] (S[0]), .C8M_c(C8M_c), .n3809(n3809), .\REUA[14] (REUA[14]), 
        .\REUA[6] (REUA[6]), .\REUA[16] (REUA[16]), .\REUA[8] (REUA[8]), 
        .\REUA[17] (REUA[17]), .\REUA[23] (REUA[23]), .\REUA[19] (REUA[19]), 
        .RBA_c_0(RBA_c_0), .\REUA[21] (REUA[21]), .C8M_N_500(C8M_N_500), 
        .PHI2_c(PHI2_c), .\REUA[18] (REUA[18]), .REUAOut_18__N_34(REUAOut_18__N_34), 
        .\REUAOut_18__N_33[2] (REUAOut_18__N_33[2]), .nCS_c(nCS_c), .nRAS_c(nRAS_c), 
        .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), .CKE_c(CKE_c), .RA_c_0(RA_c_0), 
        .WRDr({WRDr}), .PHI2_N_548(PHI2_N_548), .D_out_0(D_out_0), .DQML_c(DQML_c), 
        .A_0__N_542(A_0__N_542), .nRESET_c(nRESET_c), .GND_net(GND_net), 
        .VCC_net(VCC_net), .RCLK_c(RCLK_c), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), 
        .n1038(n1038), .\Length[2] (Length[2]), .A_out_0(A_out_0), .n398(n398), 
        .RBA_c_1(RBA_c_1), .\REUA[22] (REUA[22]), .RA_c_1(RA_c_1), .RAMWR(RAMWR), 
        .RAMRD(RAMRD), .RA_c_11(RA_c_11), .n1496(n1496), .\REUA[9] (REUA[9]), 
        .\REUA[1] (REUA[1]), .RA_c_2(RA_c_2), .n1(n1_adj_667), .RA_c_3(RA_c_3), 
        .n1_adj_1(n1_adj_666), .RA_c_4(RA_c_4), .n1_adj_2(n1_adj_665), 
        .RA_c_5(RA_c_5), .RA_c_6(RA_c_6), .n1_adj_3(n1), .RA_c_7(RA_c_7), 
        .RA_c_8(RA_c_8), .RA_c_9(RA_c_9), .RA_c_10(RA_c_10), .D_out_1(D_out_1), 
        .D_out_2(D_out_2), .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), 
        .D_out_6(D_out_6), .D_out_7(D_out_7), .RD_out_1(RD_out_1), .\REUA[10] (REUA[10]), 
        .\REUA[2] (REUA[2]), .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), 
        .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), 
        .RD_out_7(RD_out_7), .DQMH_c(DQMH_c), .\REUA[0] (REUA[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(70[6] 80[32])
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (XferEnd_N_579, n3565, \XferType[0] , DMA, n3568, AutoloadEN, 
            REUAOut_15__N_53, n3566, CAOut_7__N_186, n3569, n3558, 
            n3567, n3557, REUAOut_18__N_34, \REUA[15] , \REUA[12] , 
            \REUA[10] , \REUA[13] , \REUA[9] , \REUA[11] , RegReset, 
            \REUA[14] , \REUA[8] , n3, n3562, REUAOut_15__N_51, PHI2_N_548, 
            nRESET_c, nWEDMA_N_5, n3563, SetEndOfBlock, IntPending_N_448, 
            nWEDMA_c, \IncMode[0] , \REUA[2] , \REUA[1] , \REUA[3] , 
            RAMRD, RAMRD_N_549, RAMWR, n3593, BA_c, \REUA[6] , \REUA[7] , 
            \REUA[4] , \REUA[0] , \REUA[5] , n39, IncREUAg, Fault, 
            A_out_0, n355, n3571, CAOut_15__N_141, nRWOE_c, n3559, 
            n1358, n3810, XferEnd_N_587, PHI2_N_548_enable_19, n3811, 
            PHI2_c, nAOE_c, nIO2_c, n3590, nWE_c, n3579, nDOE_c, 
            n3573, REUAOut_7__N_98, DOE, Execute, n3581, n1362, 
            n3576, n1991) /* synthesis syn_module_defined=1 */ ;
    output XferEnd_N_579;
    input n3565;
    input \XferType[0] ;
    output DMA;
    input n3568;
    input AutoloadEN;
    output REUAOut_15__N_53;
    input n3566;
    output CAOut_7__N_186;
    input n3569;
    output n3558;
    input n3567;
    output n3557;
    output REUAOut_18__N_34;
    input \REUA[15] ;
    input \REUA[12] ;
    input \REUA[10] ;
    input \REUA[13] ;
    input \REUA[9] ;
    input \REUA[11] ;
    output RegReset;
    input \REUA[14] ;
    input \REUA[8] ;
    input n3;
    input n3562;
    output REUAOut_15__N_51;
    input PHI2_N_548;
    input nRESET_c;
    input nWEDMA_N_5;
    input n3563;
    output SetEndOfBlock;
    output IntPending_N_448;
    output nWEDMA_c;
    input \IncMode[0] ;
    input \REUA[2] ;
    input \REUA[1] ;
    input \REUA[3] ;
    output RAMRD;
    input RAMRD_N_549;
    output RAMWR;
    output n3593;
    input BA_c;
    input \REUA[6] ;
    input \REUA[7] ;
    input \REUA[4] ;
    input \REUA[0] ;
    input \REUA[5] ;
    output n39;
    output IncREUAg;
    input Fault;
    input A_out_0;
    output n355;
    input n3571;
    output CAOut_15__N_141;
    output nRWOE_c;
    output n3559;
    output n1358;
    output n3810;
    input XferEnd_N_587;
    output PHI2_N_548_enable_19;
    output n3811;
    input PHI2_c;
    output nAOE_c;
    input nIO2_c;
    output n3590;
    input nWE_c;
    output n3579;
    output nDOE_c;
    input n3573;
    output REUAOut_7__N_98;
    output DOE;
    input Execute;
    output n3581;
    input n1362;
    output n3576;
    input n1991;
    
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(116[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire SwapState, n3432, n3585, XferEnd_N_588, n1133, SwapState_N_570, 
        n17, n15, n11, n12;
    wire [2:1]nRESETr;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(116[11:18])
    
    wire DMAr, IncREUA, n3052, n3560, RAMWR_N_565, DMA_N_576, DMARW_N_595, 
        n11_adj_664, n16, BAr, Equalr, n13, IncCA_N_611, n1, n3586, 
        n1494, n3433, PHI2_N_548_enable_83, n6;
    
    LUT4 XferEnd_N_579_bdd_4_lut_3254 (.A(XferEnd_N_579), .B(n3565), .C(\XferType[0] ), 
         .D(SwapState), .Z(n3432)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C)))) */ ;
    defparam XferEnd_N_579_bdd_4_lut_3254.init = 16'h4541;
    LUT4 Autoload_I_0_726_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3568), .D(AutoloadEN), .Z(REUAOut_15__N_53)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_726_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 Autoload_I_0_792_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3566), .D(AutoloadEN), .Z(CAOut_7__N_186)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_792_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 Autoload_I_0_805_2_lut_rep_59_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3569), .D(AutoloadEN), .Z(n3558)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_805_2_lut_rep_59_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i889_4_lut (.A(n3585), .B(SwapState), .C(XferEnd_N_588), .D(\XferType[0] ), 
         .Z(n1133)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i889_4_lut.init = 16'h0a88;
    LUT4 i2_1_lut (.A(SwapState), .Z(SwapState_N_570)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(12[13:18])
    defparam i2_1_lut.init = 16'h5555;
    LUT4 Autoload_I_0_2_lut_rep_58_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3567), .D(AutoloadEN), .Z(n3557)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_2_lut_rep_58_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11), .D(n12), .Z(REUAOut_18__N_34)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(\REUA[15] ), .B(\REUA[12] ), .C(\REUA[10] ), .D(\REUA[13] ), 
         .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i5_2_lut (.A(\REUA[9] ), .B(\REUA[11] ), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i5_2_lut.init = 16'h8888;
    LUT4 DMA_N_575_I_0_4_lut (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(RegReset)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(178[2] 184[25])
    defparam DMA_N_575_I_0_4_lut.init = 16'h1511;
    LUT4 i1_2_lut (.A(\REUA[14] ), .B(IncREUA), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_2_lut (.A(\REUA[8] ), .B(n3052), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3094_4_lut (.A(n3), .B(SwapState), .C(n3562), .D(n3560), .Z(RAMWR_N_565)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i3094_4_lut.init = 16'h5557;
    LUT4 i1_2_lut_adj_180 (.A(n3052), .B(IncREUA), .Z(REUAOut_15__N_51)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i1_2_lut_adj_180.init = 16'h8888;
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_548), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    LUT4 SetEndOfBlock_I_0_2_lut_4_lut (.A(n3585), .B(nWEDMA_N_5), .C(n3563), 
         .D(SetEndOfBlock), .Z(IntPending_N_448)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam SetEndOfBlock_I_0_2_lut_4_lut.init = 16'hff20;
    FD1S3AX DMA_131 (.D(DMA_N_576), .CK(PHI2_N_548), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam DMA_131.GSR = "ENABLED";
    FD1S3AX DMARW_132 (.D(DMARW_N_595), .CK(PHI2_N_548), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam DMARW_132.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n11_adj_664), .B(n16), .C(\IncMode[0] ), .D(\REUA[2] ), 
         .Z(n3052)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i8_4_lut.init = 16'h0800;
    LUT4 i2_2_lut_adj_181 (.A(\REUA[1] ), .B(\REUA[3] ), .Z(n11_adj_664)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i2_2_lut_adj_181.init = 16'h8888;
    FD1S3AX RAMRD_133 (.D(RAMRD_N_549), .CK(PHI2_N_548), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam RAMRD_133.GSR = "ENABLED";
    FD1S3IX RAMWR_134 (.D(RAMWR_N_565), .CK(PHI2_N_548), .CD(n3593), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam RAMWR_134.GSR = "ENABLED";
    FD1S3AX DMAr_135 (.D(DMA), .CK(PHI2_N_548), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam DMAr_135.GSR = "ENABLED";
    FD1S3AX BAr_136 (.D(BA_c), .CK(PHI2_N_548), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam BAr_136.GSR = "ENABLED";
    FD1S3AX Equalr_137 (.D(nWEDMA_N_5), .CK(PHI2_N_548), .Q(Equalr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam Equalr_137.GSR = "ENABLED";
    LUT4 i7_4_lut_adj_182 (.A(n13), .B(\REUA[6] ), .C(\REUA[7] ), .D(\REUA[4] ), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i7_4_lut_adj_182.init = 16'h8000;
    LUT4 i4_2_lut (.A(\REUA[0] ), .B(\REUA[5] ), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(\XferType[0] ), .B(n3565), .C(SwapState), 
         .D(XferEnd_N_579), .Z(n39)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(32[17:37])
    defparam i1_3_lut_4_lut.init = 16'h00fb;
    LUT4 IncCA_I_155_2_lut_3_lut (.A(\XferType[0] ), .B(n3565), .C(SwapState), 
         .Z(IncCA_N_611)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(32[17:37])
    defparam IncCA_I_155_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_adj_183 (.A(\IncMode[0] ), .B(IncREUA), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(160[2] 167[60])
    defparam i1_2_lut_adj_183.init = 16'h4444;
    LUT4 i1401_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1401_3_lut.init = 16'hcaca;
    PFUMX mux_180_Mux_0_i3 (.BLUT(n1), .ALUT(n1133), .C0(n3565), .Z(IncREUA));
    LUT4 i1_2_lut_rep_61 (.A(DMA), .B(XferEnd_N_579), .Z(n3560)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_61.init = 16'h8888;
    LUT4 Autoload_I_0_748_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3571), .D(AutoloadEN), .Z(CAOut_15__N_141)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_748_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i1_2_lut_rep_86 (.A(DMA), .B(BA_c), .Z(n3585)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam i1_2_lut_rep_86.init = 16'h8888;
    LUT4 mux_180_Mux_0_i1_3_lut_4_lut (.A(DMA), .B(BA_c), .C(\XferType[0] ), 
         .D(n3586), .Z(n1)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam mux_180_Mux_0_i1_3_lut_4_lut.init = 16'h8f80;
    LUT4 nRWOE_I_0_1_lut_2_lut (.A(DMA), .B(BA_c), .Z(nRWOE_c)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam nRWOE_I_0_1_lut_2_lut.init = 16'h7777;
    LUT4 DMAr_I_0_2_lut_rep_87 (.A(DMAr), .B(BAr), .Z(n3586)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(135[36:47])
    defparam DMAr_I_0_2_lut_rep_87.init = 16'h8888;
    LUT4 XferEnd_I_145_2_lut_3_lut (.A(DMAr), .B(BAr), .C(Equalr), .Z(XferEnd_N_588)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(135[36:47])
    defparam XferEnd_I_145_2_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_60_3_lut (.A(DMA), .B(XferEnd_N_579), .C(AutoloadEN), 
         .Z(n3559)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_60_3_lut.init = 16'h8080;
    LUT4 i2_4_lut (.A(n3563), .B(n3585), .C(XferEnd_N_588), .D(IncCA_N_611), 
         .Z(n1358)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (D)))) */ ;
    defparam i2_4_lut.init = 16'h4c00;
    LUT4 i1249_2_lut_3_lut_4_lut_4_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3562), .D(BA_c), .Z(n1494)) /* synthesis lut_function=((B (C+!(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1249_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hd5dd;
    PFUMX i3146 (.BLUT(n3433), .ALUT(n3432), .C0(DMA), .Z(DMARW_N_595));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(DMA), .B(XferEnd_N_579), .C(n3562), 
         .D(BA_c), .Z(PHI2_N_548_enable_83)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hdfdd;
    LUT4 DMA_N_575_I_0_4_lut_rep_96 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n3810)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(178[2] 184[25])
    defparam DMA_N_575_I_0_4_lut_rep_96.init = 16'h1511;
    LUT4 i2_4_lut_adj_184 (.A(XferEnd_N_587), .B(nRESETr[1]), .C(n3565), 
         .D(n6), .Z(XferEnd_N_579)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C (D))+!B)) */ ;
    defparam i2_4_lut_adj_184.init = 16'hfb3b;
    LUT4 i2_3_lut_rep_62_4_lut (.A(\XferType[0] ), .B(n3565), .C(nWEDMA_N_5), 
         .D(n3585), .Z(PHI2_N_548_enable_19)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_rep_62_4_lut.init = 16'h0800;
    LUT4 DMA_N_575_I_0_4_lut_rep_97 (.A(DMA), .B(nRESETr[1]), .C(nRESETr[2]), 
         .D(DMAr), .Z(n3811)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(178[2] 184[25])
    defparam DMA_N_575_I_0_4_lut_rep_97.init = 16'h1511;
    LUT4 AOE_I_0_26_1_lut_rep_94 (.A(DMA), .Z(n3593)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam AOE_I_0_26_1_lut_rep_94.init = 16'h5555;
    LUT4 i19_4_lut (.A(XferEnd_N_587), .B(XferEnd_N_588), .C(\XferType[0] ), 
         .D(SwapState), .Z(n6)) /* synthesis lut_function=(A (C+(D))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(129[2] 135[66])
    defparam i19_4_lut.init = 16'heae0;
    LUT4 i3091_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_c)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3091_3_lut_3_lut.init = 16'h2f2f;
    LUT4 i1_2_lut_rep_91 (.A(DMA), .B(nIO2_c), .Z(n3590)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_91.init = 16'heeee;
    LUT4 RegCS_I_0_30_2_lut_rep_80_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n3579)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_30_2_lut_rep_80_3_lut.init = 16'h1010;
    LUT4 i3104_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(BA_c), .D(PHI2_c), 
         .Z(nDOE_c)) /* synthesis lut_function=(!(A (C (D))+!A !(B+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(32[15:19])
    defparam i3104_4_lut_4_lut.init = 16'h4eff;
    LUT4 Autoload_I_0_735_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_579), 
         .C(n3573), .D(AutoloadEN), .Z(REUAOut_7__N_98)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_735_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 i1403_3_lut (.A(Execute), .B(XferEnd_N_579), .C(DMA), .Z(DMA_N_576)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(47[7:10])
    defparam i1403_3_lut.init = 16'h3a3a;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_548), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(117[8] 122[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1P3IX SwapState_130 (.D(SwapState_N_570), .SP(PHI2_N_548_enable_83), 
            .CD(n1494), .CK(PHI2_N_548), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=64, LSE_LLINE=82, LSE_RLINE=96 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(38[8] 43[4])
    defparam SwapState_130.GSR = "ENABLED";
    LUT4 XferEnd_N_579_bdd_3_lut_3286 (.A(Execute), .B(n3565), .C(\XferType[0] ), 
         .Z(n3433)) /* synthesis lut_function=(A (B+!(C))) */ ;
    defparam XferEnd_N_579_bdd_3_lut_3286.init = 16'h8a8a;
    LUT4 i1853_2_lut_rep_82_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3581)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1853_2_lut_rep_82_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_77_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(n1362), 
         .D(nWE_c), .Z(n3576)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_77_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_185 (.A(DMA), .B(n1991), .Z(SetEndOfBlock)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(47[8] 111[4])
    defparam i1_2_lut_adj_185.init = 16'h2222;
    
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
// Verilog Description of module Glue
//

module Glue (nWE_c, nWEDMA_c, DMA, DDIR_c, IntEnable, EndOfBlock, 
            IRQOut_N_440, EndOfBlockMask, IRQ, n3590, A_out_0, A_out_1, 
            n3574, n3591, n1362, n3573, n3588, n3570, n3584, n3568, 
            n3589, A_out_3, n3575, n3577) /* synthesis syn_module_defined=1 */ ;
    input nWE_c;
    input nWEDMA_c;
    input DMA;
    output DDIR_c;
    input IntEnable;
    input EndOfBlock;
    input IRQOut_N_440;
    input EndOfBlockMask;
    output IRQ;
    input n3590;
    input A_out_0;
    input A_out_1;
    output n3574;
    input n3591;
    input n1362;
    output n3573;
    input n3588;
    output n3570;
    input n3584;
    output n3568;
    input n3589;
    input A_out_3;
    output n3575;
    output n3577;
    
    
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(37[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 i3101_4_lut (.A(IntEnable), .B(EndOfBlock), .C(IRQOut_N_440), 
         .D(EndOfBlockMask), .Z(IRQ)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(42[15:19])
    defparam i3101_4_lut.init = 16'h575f;
    LUT4 i2_3_lut_rep_75_4_lut (.A(n3590), .B(nWE_c), .C(A_out_0), .D(A_out_1), 
         .Z(n3574)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_75_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_74_3_lut_4_lut (.A(n3590), .B(nWE_c), .C(n3591), 
         .D(n1362), .Z(n3573)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_74_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3111_2_lut_rep_71_3_lut_4_lut (.A(n3590), .B(nWE_c), .C(n3588), 
         .D(n1362), .Z(n3570)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3111_2_lut_rep_71_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_69_3_lut_4_lut (.A(n3590), .B(nWE_c), .C(n3584), 
         .D(n1362), .Z(n3568)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_69_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_76_4_lut (.A(n3590), .B(nWE_c), .C(n3589), .D(A_out_3), 
         .Z(n3575)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_76_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_78_3_lut_4_lut (.A(n3590), .B(nWE_c), .C(n3589), 
         .D(A_out_3), .Z(n3577)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_78_3_lut_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (n3584, n3575, D_out_4, D_out_5, D_out_6, PHI2_N_548, 
            n3811, D_out_0, D_out_1, CA, RegReset, n3576, D_out_7, 
            n3591, n3577, n3810, A_out_2, ExecuteEN, \XferType[0] , 
            D_out_3, n3565, D_out_2, EndOfBlock, SetEndOfBlock, n3809, 
            n1991, \Length[2] , REUA, A_out_0, A_out_1, n3581, n3566, 
            A_out_3, n1362, n3569, IntPending_N_448, n3589, n3567, 
            GND_net, REUAOut_15__N_53, n3456, IntEnable, n3574, Fault, 
            PHI2_N_548_enable_19, FF00DecodeEN, IncMode, n3588, \S[0] , 
            n1, n458, EndOfBlockMask, n1358, n1_adj_4, n1_adj_5, 
            n3451, n3559, REUAOut_18__N_34, A_out_4, n1942, AutoloadEN, 
            n355, n3, Execute, n39, DMA, RAMRD_N_549, n3570, XferEnd_N_579, 
            REUAOut_15__N_51, \RAMRDD[6] , \Dout[6] , n3571, \REUAOut_18__N_33[2] , 
            IRQOut_N_440, n3557, n3568, REUAOut_7__N_98, IncREUAg, 
            n3573, CAOut_15__N_141, Execute_N_441, n3563, n3562, A_0__N_542, 
            n3480, BA_c, XferEnd_N_587, CAOut_7__N_186, n3558, n3473, 
            n1496, n3466, n3579, n398, n1_adj_6, n3461) /* synthesis syn_module_defined=1 */ ;
    output n3584;
    input n3575;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input PHI2_N_548;
    input n3811;
    input D_out_0;
    input D_out_1;
    output [15:0]CA;
    input RegReset;
    input n3576;
    input D_out_7;
    output n3591;
    input n3577;
    input n3810;
    input A_out_2;
    output ExecuteEN;
    output \XferType[0] ;
    input D_out_3;
    output n3565;
    input D_out_2;
    output EndOfBlock;
    input SetEndOfBlock;
    input n3809;
    output n1991;
    output \Length[2] ;
    output [23:0]REUA;
    input A_out_0;
    input A_out_1;
    input n3581;
    output n3566;
    input A_out_3;
    output n1362;
    output n3569;
    input IntPending_N_448;
    output n3589;
    output n3567;
    input GND_net;
    input REUAOut_15__N_53;
    output n3456;
    output IntEnable;
    input n3574;
    output Fault;
    input PHI2_N_548_enable_19;
    output FF00DecodeEN;
    output [1:0]IncMode;
    output n3588;
    input \S[0] ;
    output n1;
    output n458;
    output EndOfBlockMask;
    input n1358;
    output n1_adj_4;
    output n1_adj_5;
    output n3451;
    input n3559;
    input REUAOut_18__N_34;
    input A_out_4;
    output n1942;
    output AutoloadEN;
    input n355;
    output n3;
    output Execute;
    input n39;
    input DMA;
    output RAMRD_N_549;
    input n3570;
    input XferEnd_N_579;
    input REUAOut_15__N_51;
    input \RAMRDD[6] ;
    output \Dout[6] ;
    output n3571;
    input \REUAOut_18__N_33[2] ;
    output IRQOut_N_440;
    input n3557;
    input n3568;
    input REUAOut_7__N_98;
    input IncREUAg;
    input n3573;
    input CAOut_15__N_141;
    input Execute_N_441;
    output n3563;
    output n3562;
    output A_0__N_542;
    output n3480;
    input BA_c;
    output XferEnd_N_587;
    input CAOut_7__N_186;
    input n3558;
    output n3473;
    output n1496;
    output n3466;
    input n3579;
    input n398;
    output n1_adj_6;
    output n3461;
    
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(116[11:18])
    wire [7:0]n846;
    
    wire Length_12__N_319, Length_13__N_314, Length_14__N_309;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[12:18])
    
    wire PHI2_N_548_enable_85, Length_10__N_329, Length_8__N_339, Length_9__N_334;
    wire [7:0]n329;
    wire [7:0]REUAOut_7__N_97;
    wire [7:0]n326;
    
    wire n3065, n15, n3229, n3214, n3395, n3393, n3396, PHI2_N_548_enable_20;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(48[12:23])
    
    wire PHI2_N_548_enable_72;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reg.v(39[11:19])
    
    wire PHI2_N_548_enable_75;
    wire [7:0]REUAOut_15__N_50;
    wire [7:0]n325;
    wire [7:0]n327;
    
    wire n1134, n15_adj_656, n13, n10, n9, n14, n10_adj_657;
    wire [7:0]n380;
    
    wire n3580;
    wire [7:0]n392;
    
    wire n3457, n3458, IntPending;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[12:25])
    
    wire PHI2_N_548_enable_56, n1105, PHI2_N_548_enable_24, n1184, n1182, 
        n1180, n1170, n4, n2877, n2876, n3455, n3454, n3287, 
        PHI2_N_548_enable_38;
    wire [7:0]n847;
    
    wire Length_6__N_350, n2875, Length_2__N_370, n3166, Length_4__N_360, 
        PHI2_N_548_enable_78, n3207, Length_3__N_365, n1099, n1101, 
        n3394;
    wire [7:0]n368;
    
    wire PHI2_N_548_enable_71;
    wire [2:0]n330;
    
    wire n3402;
    wire [7:0]n437;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(43[12:21])
    
    wire PHI2_N_548_enable_53, PHI2_N_548_enable_77, VerifyErrMask;
    wire [7:0]n404;
    wire [1:0]IncMode_c;   // c:/users/garre/repos/gw4302/cpld/reg.v(63[11:18])
    
    wire n3391, PHI2_N_548_enable_79, Length_1__N_375, n3452, n3453, 
        PHI2_N_548_enable_82, Length_0__N_380;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(35[11:25])
    
    wire n3450, n3448, n43;
    wire [2:0]n328;
    
    wire n3392, IncCAg, Length_7__N_344, Length_5__N_355, n2048;
    wire [7:0]Length_15__N_300;
    
    wire n3447, n3449, n2882;
    wire [7:0]Length_7__N_347;
    
    wire n2881, Length_15__N_297, n3572, n2880, n3291, Length_11__N_324, 
        n2879, n2874, n10_adj_660, n9_adj_661, DF01Reserved6, n3592;
    wire [23:0]REUA_c;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    
    wire n17, n15_adj_662, n11, n12, CAOut_15__N_139;
    wire [7:0]CAOut_7__N_185;
    
    wire n2870, n2869, n2868, n2867, n2865, n2864, n2863, n2862, 
        n2857;
    wire [7:0]CAOut_15__N_138;
    
    wire n2856, n2855, n2854, n3462, n3459, n3398, n3463, n3464, 
        n3469, n3470, n3471, n3400, n3476, n3477, n3478, n3465, 
        n3460, n3467, n3468, n3472, n3474, n3475, n3479, n3397, 
        n2849, n2848, n2847, n2846, n3401, n3399;
    
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_4), 
         .D(n846[4]), .Z(Length_12__N_319)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_5), 
         .D(n846[5]), .Z(Length_13__N_314)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_6), 
         .D(n846[6]), .Z(Length_14__N_309)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_10__688 (.D(Length_10__N_329), .SP(PHI2_N_548_enable_85), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_10__688.GSR = "ENABLED";
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_0), 
         .D(n846[0]), .Z(Length_8__N_339)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_1), 
         .D(n846[1]), .Z(Length_9__N_334)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_7__592 (.D(n329[7]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_7__592.GSR = "ENABLED";
    LUT4 mux_170_i8_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_7), .D(REUAOut_7__N_97[7]), 
         .Z(n326[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_170_i7_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_6), .D(REUAOut_7__N_97[6]), 
         .Z(n326[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3591), .B(n3577), .C(n3810), .D(D_out_7), 
         .Z(n3065)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i8_4_lut (.A(n15), .B(Length[6]), .C(n3229), .D(Length[3]), 
         .Z(n3214)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i8_4_lut.init = 16'h0002;
    LUT4 mux_170_i6_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_5), .D(REUAOut_7__N_97[5]), 
         .Z(n326[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i6_3_lut_4_lut.init = 16'hfe10;
    L6MUX21 i3118 (.D0(n3395), .D1(n3393), .SD(A_out_2), .Z(n3396));
    FD1P3AX ExecuteEN_586 (.D(n3065), .SP(PHI2_N_548_enable_20), .CK(PHI2_N_548), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam ExecuteEN_586.GSR = "ENABLED";
    LUT4 mux_170_i5_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_4), .D(REUAOut_7__N_97[4]), 
         .Z(n326[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_16__666 (.D(D_out_0), .SP(PHI2_N_548_enable_72), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_16__666.GSR = "ENABLED";
    LUT4 XferType_1__I_0_i1_3_lut_4_lut (.A(n3591), .B(n3577), .C(D_out_0), 
         .D(XferType[0]), .Z(\XferType[0] )) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_170_i4_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_3), .D(REUAOut_7__N_97[3]), 
         .Z(n326[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 XferType_1__I_0_i2_3_lut_rep_66_4_lut (.A(n3591), .B(n3577), .C(D_out_1), 
         .D(XferType[1]), .Z(n3565)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i2_3_lut_rep_66_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_7__632 (.D(D_out_7), .SP(PHI2_N_548_enable_75), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_7__632.GSR = "ENABLED";
    FD1P3IX REUAWritten_3__636 (.D(D_out_3), .SP(PHI2_N_548_enable_75), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_3__636.GSR = "ENABLED";
    LUT4 mux_169_i8_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_7), .D(REUAOut_15__N_50[7]), 
         .Z(n325[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_2__637 (.D(D_out_2), .SP(PHI2_N_548_enable_75), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_2__637.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__635 (.D(D_out_4), .SP(PHI2_N_548_enable_75), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_4__635.GSR = "ENABLED";
    FD1S3IX CA_6__593 (.D(n329[6]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_6__593.GSR = "ENABLED";
    LUT4 mux_169_i7_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_6), .D(REUAOut_15__N_50[6]), 
         .Z(n325[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_169_i6_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_5), .D(REUAOut_15__N_50[5]), 
         .Z(n325[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_169_i5_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_4), .D(REUAOut_15__N_50[4]), 
         .Z(n325[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_169_i4_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_3), .D(REUAOut_15__N_50[3]), 
         .Z(n325[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i4_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_5__594 (.D(n329[5]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_5__594.GSR = "ENABLED";
    FD1S3IX CA_4__595 (.D(n329[4]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_4__595.GSR = "ENABLED";
    FD1S3IX CA_3__596 (.D(n329[3]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_3__596.GSR = "ENABLED";
    FD1S3IX CA_2__597 (.D(n329[2]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_2__597.GSR = "ENABLED";
    FD1S3IX CA_1__598 (.D(n329[1]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_1__598.GSR = "ENABLED";
    FD1S3IX CA_0__599 (.D(n329[0]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CA_0__599.GSR = "ENABLED";
    FD1S3IX CA_15__608 (.D(n327[7]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_15__608.GSR = "ENABLED";
    FD1P3IX EndOfBlock_584 (.D(n3809), .SP(SetEndOfBlock), .CD(n1134), 
            .CK(PHI2_N_548), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam EndOfBlock_584.GSR = "ENABLED";
    LUT4 mux_169_i3_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_2), .D(REUAOut_15__N_50[2]), 
         .Z(n325[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_169_i2_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_1), .D(REUAOut_15__N_50[1]), 
         .Z(n325[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i8_4_lut_adj_165 (.A(n15_adj_656), .B(n13), .C(Length[8]), .D(n10), 
         .Z(n1991)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i8_4_lut_adj_165.init = 16'hfffe;
    LUT4 i6_4_lut (.A(Length[10]), .B(\Length[2] ), .C(Length[1]), .D(Length[0]), 
         .Z(n15_adj_656)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i6_4_lut.init = 16'hfeff;
    LUT4 mux_169_i1_3_lut_4_lut (.A(n3591), .B(n3576), .C(D_out_0), .D(REUAOut_15__N_50[0]), 
         .Z(n325[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_169_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4_2_lut (.A(Length[12]), .B(Length[6]), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(Length[4]), .B(n9), .C(n14), .D(n10_adj_657), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i1_4_lut.init = 16'hfffe;
    FD1P3IX REUAWritten_5__634 (.D(D_out_5), .SP(PHI2_N_548_enable_75), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_5__634.GSR = "ENABLED";
    FD1S3IX CA_14__609 (.D(n327[6]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_14__609.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(Length[9]), .B(Length[7]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX CA_13__610 (.D(n327[5]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_13__610.GSR = "ENABLED";
    FD1S3IX CA_12__611 (.D(n327[4]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_12__611.GSR = "ENABLED";
    FD1S3IX CA_11__612 (.D(n327[3]), .CK(PHI2_N_548), .CD(RegReset), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_11__612.GSR = "ENABLED";
    FD1S3IX CA_10__613 (.D(n327[2]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_10__613.GSR = "ENABLED";
    FD1S3IX CA_9__614 (.D(n327[1]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_9__614.GSR = "ENABLED";
    FD1S3IX CA_8__615 (.D(n327[0]), .CK(PHI2_N_548), .CD(n3811), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CA_8__615.GSR = "ENABLED";
    FD1S3IX REUA_7__624 (.D(n326[7]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_7__624.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_166 (.A(Length[13]), .B(Length[15]), .C(Length[14]), 
         .D(Length[11]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i6_4_lut_adj_166.init = 16'hfffe;
    LUT4 i1712_3_lut (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), .Z(n380[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1712_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_67_4_lut (.A(A_out_1), .B(n3581), .C(A_out_0), .D(n3580), 
         .Z(n3566)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_67_4_lut.init = 16'h0020;
    PFUMX i3164 (.BLUT(n392[1]), .ALUT(n3457), .C0(A_out_3), .Z(n3458));
    LUT4 i2_2_lut (.A(Length[3]), .B(Length[5]), .Z(n10_adj_657)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(54[18:38])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX REUAWritten_6__633 (.D(D_out_6), .SP(PHI2_N_548_enable_75), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_6__633.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_70_4_lut (.A(A_out_1), .B(n3581), .C(A_out_0), .D(n1362), 
         .Z(n3569)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_70_4_lut.init = 16'h0020;
    FD1P3IX IntPending_583 (.D(n3809), .SP(IntPending_N_448), .CD(n1134), 
            .CK(PHI2_N_548), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam IntPending_583.GSR = "ENABLED";
    LUT4 i1944_2_lut_rep_68_4_lut (.A(A_out_3), .B(n3589), .C(n3581), 
         .D(n3584), .Z(n3567)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1944_2_lut_rep_68_4_lut.init = 16'hfffd;
    FD1P3AX LengthWritten_5__677 (.D(n1105), .SP(PHI2_N_548_enable_56), 
            .CK(PHI2_N_548), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_5__677.GSR = "ENABLED";
    LUT4 mux_170_i3_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_2), .D(REUAOut_7__N_97[2]), 
         .Z(n326[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_8__698 (.D(n1184), .SP(PHI2_N_548_enable_24), 
            .CK(PHI2_N_548), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_8__698.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__697 (.D(n1182), .SP(PHI2_N_548_enable_24), 
            .CK(PHI2_N_548), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_9__697.GSR = "ENABLED";
    LUT4 mux_170_i2_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_1), .D(REUAOut_7__N_97[1]), 
         .Z(n326[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_10__696 (.D(n1180), .SP(PHI2_N_548_enable_24), 
            .CK(PHI2_N_548), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_10__696.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__695 (.D(n1170), .SP(PHI2_N_548_enable_24), 
            .CK(PHI2_N_548), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_11__695.GSR = "ENABLED";
    FD1S3IX REUA_6__625 (.D(n326[6]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_6__625.GSR = "ENABLED";
    FD1S3IX REUA_5__626 (.D(n326[5]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_5__626.GSR = "ENABLED";
    FD1S3IX REUA_4__627 (.D(n326[4]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_4__627.GSR = "ENABLED";
    FD1S3IX REUA_3__628 (.D(n326[3]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_3__628.GSR = "ENABLED";
    FD1S3IX REUA_2__629 (.D(n326[2]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_2__629.GSR = "ENABLED";
    FD1S3IX REUA_1__630 (.D(n326[1]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_1__630.GSR = "ENABLED";
    FD1S3IX REUA_0__631 (.D(n326[0]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUA_0__631.GSR = "ENABLED";
    FD1S3IX REUA_15__640 (.D(n325[7]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_15__640.GSR = "ENABLED";
    LUT4 mux_170_i1_3_lut_4_lut (.A(n3584), .B(n3576), .C(D_out_0), .D(REUAOut_7__N_97[0]), 
         .Z(n326[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_170_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_12__694 (.D(n4), .SP(PHI2_N_548_enable_24), .CK(PHI2_N_548), 
            .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_12__694.GSR = "ENABLED";
    LUT4 i304_2_lut_3_lut_4_lut (.A(n3581), .B(n1362), .C(n3810), .D(n3584), 
         .Z(PHI2_N_548_enable_75)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i304_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3IX REUA_21__658 (.D(D_out_5), .SP(PHI2_N_548_enable_72), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_21__658.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_53), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(REUAOut_15__N_53), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n2877), .S0(REUAOut_15__N_50[6]), .S1(REUAOut_15__N_50[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_53), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(REUAOut_15__N_53), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n2876), .COUT(n2877), .S0(REUAOut_15__N_50[4]), 
          .S1(REUAOut_15__N_50[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_13__693 (.D(n1105), .SP(PHI2_N_548_enable_24), 
            .CK(PHI2_N_548), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_13__693.GSR = "ENABLED";
    PFUMX i3162 (.BLUT(n3455), .ALUT(n3454), .C0(n3287), .Z(n3456));
    FD1P3IX IntEnable_699 (.D(D_out_7), .SP(PHI2_N_548_enable_38), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam IntEnable_699.GSR = "ENABLED";
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_6), 
         .D(n847[6]), .Z(Length_6__N_350)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_53), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(REUAOut_15__N_53), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n2875), .COUT(n2876), .S0(REUAOut_15__N_50[2]), 
          .S1(REUAOut_15__N_50[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    FD1P3IX Fault_585 (.D(n3809), .SP(PHI2_N_548_enable_19), .CD(n1134), 
            .CK(PHI2_N_548), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam Fault_585.GSR = "ENABLED";
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_2), 
         .D(n847[2]), .Z(Length_2__N_370)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX FF00DecodeEN_589 (.D(n3166), .SP(PHI2_N_548_enable_20), .CK(PHI2_N_548), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam FF00DecodeEN_589.GSR = "ENABLED";
    FD1S3IX REUA_14__641 (.D(n325[6]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_14__641.GSR = "ENABLED";
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_4), 
         .D(n847[4]), .Z(Length_4__N_360)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_13__642 (.D(n325[5]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_13__642.GSR = "ENABLED";
    FD1S3IX REUA_12__643 (.D(n325[4]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_12__643.GSR = "ENABLED";
    FD1S3IX REUA_11__644 (.D(n325[3]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_11__644.GSR = "ENABLED";
    FD1S3IX REUA_10__645 (.D(n325[2]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_10__645.GSR = "ENABLED";
    FD1S3IX REUA_9__646 (.D(n325[1]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_9__646.GSR = "ENABLED";
    FD1S3IX REUA_8__647 (.D(n325[0]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUA_8__647.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_548_enable_78), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(250[8] 253[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n3581), .B(n3589), .C(A_out_3), .D(n3584), .Z(n3207)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut.init = 16'h0010;
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_3), 
         .D(n847[3]), .Z(Length_3__N_365)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    LUT4 i380_2_lut_3_lut_4_lut (.A(n3581), .B(n1362), .C(n3810), .D(n3588), 
         .Z(PHI2_N_548_enable_72)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i380_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3IX REUA_22__657 (.D(D_out_6), .SP(PHI2_N_548_enable_72), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_22__657.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__692 (.D(n1099), .SP(PHI2_N_548_enable_24), 
            .CK(PHI2_N_548), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_14__692.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__691 (.D(n1101), .SP(PHI2_N_548_enable_24), 
            .CK(PHI2_N_548), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam LengthWritten_15__691.GSR = "ENABLED";
    PFUMX i3116 (.BLUT(n3394), .ALUT(n368[6]), .C0(A_out_1), .Z(n3395));
    FD1P3IX REUA_23__656 (.D(D_out_7), .SP(PHI2_N_548_enable_72), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_23__656.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__682 (.D(n1184), .SP(PHI2_N_548_enable_56), 
            .CK(PHI2_N_548), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_0__682.GSR = "ENABLED";
    LUT4 i332_2_lut_3_lut_4_lut (.A(n3581), .B(n1362), .C(n3810), .D(n3591), 
         .Z(PHI2_N_548_enable_71)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i332_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3AX LengthWritten_1__681 (.D(n1182), .SP(PHI2_N_548_enable_56), 
            .CK(PHI2_N_548), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_1__681.GSR = "ENABLED";
    FD1P3AX LengthWritten_2__680 (.D(n1180), .SP(PHI2_N_548_enable_56), 
            .CK(PHI2_N_548), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_2__680.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__679 (.D(n1170), .SP(PHI2_N_548_enable_56), 
            .CK(PHI2_N_548), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_3__679.GSR = "ENABLED";
    FD1S3IX REUA_18__661 (.D(n330[2]), .CK(PHI2_N_548), .CD(RegReset), 
            .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_18__661.GSR = "ENABLED";
    FD1S3IX REUA_17__662 (.D(n330[1]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_17__662.GSR = "ENABLED";
    FD1S3IX REUA_16__663 (.D(n330[0]), .CK(PHI2_N_548), .CD(n3811), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_16__663.GSR = "ENABLED";
    LUT4 i1714_3_lut (.A(REUA[12]), .B(REUA[4]), .C(\S[0] ), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1714_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_4__678 (.D(n4), .SP(PHI2_N_548_enable_56), .CK(PHI2_N_548), 
            .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_4__678.GSR = "ENABLED";
    LUT4 mux_216_i8_3_lut (.A(n3402), .B(n437[7]), .C(A_out_3), .Z(n458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_216_i8_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_10__621 (.D(D_out_2), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_10__621.GSR = "ENABLED";
    FD1P3AX CAWritten_4__603 (.D(D_out_4), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_4__603.GSR = "ENABLED";
    FD1P3AX CAWritten_3__604 (.D(D_out_3), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_3__604.GSR = "ENABLED";
    FD1P3AX CAWritten_2__605 (.D(D_out_2), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_2__605.GSR = "ENABLED";
    FD1P3AX CAWritten_5__602 (.D(D_out_5), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_5__602.GSR = "ENABLED";
    FD1P3AX CAWritten_1__606 (.D(D_out_1), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_1__606.GSR = "ENABLED";
    FD1P3IX EndOfBlockMask_700 (.D(D_out_6), .SP(PHI2_N_548_enable_38), 
            .CD(n3811), .CK(PHI2_N_548), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam EndOfBlockMask_700.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_701 (.D(D_out_5), .SP(PHI2_N_548_enable_38), .CD(n3811), 
            .CK(PHI2_N_548), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam VerifyErrMask_701.GSR = "ENABLED";
    LUT4 mux_212_i8_3_lut (.A(n404[7]), .B(IncMode_c[1]), .C(A_out_1), 
         .Z(n437[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_212_i8_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut_adj_167 (.A(n1358), .B(Length[5]), .C(Length[0]), .D(Length[4]), 
         .Z(n15)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i6_4_lut_adj_167.init = 16'h0002;
    LUT4 mux_203_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n404[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_203_i8_3_lut.init = 16'hcaca;
    LUT4 i1879_2_lut (.A(D_out_6), .B(n3810), .Z(n1099)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1879_2_lut.init = 16'heeee;
    LUT4 i3107_2_lut_3_lut_4_lut (.A(n3581), .B(n3580), .C(n3810), .D(n3588), 
         .Z(PHI2_N_548_enable_77)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3107_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut (.A(n1362), .B(n3574), .C(n3810), .Z(PHI2_N_548_enable_56)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf4f4;
    LUT4 A_out_0_bdd_3_lut_3120 (.A(Length[6]), .B(A_out_1), .C(REUA[14]), 
         .Z(n3391)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3120.init = 16'hb8b8;
    LUT4 i259_2_lut_rep_65_3_lut_4_lut (.A(n3581), .B(n3580), .C(n3810), 
         .D(n3591), .Z(PHI2_N_548_enable_79)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i259_2_lut_rep_65_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1878_2_lut (.A(D_out_7), .B(n3810), .Z(n1101)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1878_2_lut.init = 16'heeee;
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_1), 
         .D(n847[1]), .Z(Length_1__N_375)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_0__607 (.D(D_out_0), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_0__607.GSR = "ENABLED";
    FD1S3IX XferType__i0 (.D(\XferType[0] ), .CK(PHI2_N_548), .CD(n3811), 
            .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i0.GSR = "ENABLED";
    PFUMX i3160 (.BLUT(n392[0]), .ALUT(n3452), .C0(A_out_3), .Z(n3453));
    LUT4 i1715_3_lut (.A(REUA[13]), .B(REUA[5]), .C(\S[0] ), .Z(n1_adj_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1715_3_lut.init = 16'hcaca;
    LUT4 i1710_3_lut (.A(REUA[15]), .B(REUA[7]), .C(\S[0] ), .Z(n1_adj_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1710_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_8__655 (.D(D_out_0), .SP(PHI2_N_548_enable_71), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_8__655.GSR = "ENABLED";
    FD1P3JX Length_0__674 (.D(Length_0__N_380), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_0__674.GSR = "ENABLED";
    FD1P3JX Length_1__673 (.D(Length_1__N_375), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_1__673.GSR = "ENABLED";
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_548_enable_79), 
            .CD(n3811), .CK(PHI2_N_548), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    L6MUX21 i3158 (.D0(n3450), .D1(n3448), .SD(n3287), .Z(n3451));
    LUT4 mux_172_i2_4_lut (.A(n43), .B(REUAWritten[17]), .C(n3559), .D(REUA[17]), 
         .Z(n328[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_172_i2_4_lut.init = 16'hc5ca;
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_0), 
         .D(n847[0]), .Z(Length_0__N_380)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_adj_168 (.A(REUA[16]), .B(REUAOut_18__N_34), .Z(n43)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam i1_2_lut_adj_168.init = 16'h8888;
    LUT4 A_out_0_bdd_2_lut_3121 (.A(REUA[6]), .B(A_out_1), .Z(n3392)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3121.init = 16'heeee;
    LUT4 i1_2_lut_adj_169 (.A(n1358), .B(IncMode_c[1]), .Z(IncCAg)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_169.init = 16'h2222;
    FD1P3AX CAWritten_15__616 (.D(D_out_7), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_15__616.GSR = "ENABLED";
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_7), 
         .D(n847[7]), .Z(Length_7__N_344)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CAWritten_14__617 (.D(D_out_6), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_14__617.GSR = "ENABLED";
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n1362), .B(n3574), .C(D_out_5), 
         .D(n847[5]), .Z(Length_5__N_355)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_10__653 (.D(D_out_2), .SP(PHI2_N_548_enable_71), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_10__653.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__652 (.D(D_out_3), .SP(PHI2_N_548_enable_71), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_11__652.GSR = "ENABLED";
    FD1P3AX CAWritten_13__618 (.D(D_out_5), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_13__618.GSR = "ENABLED";
    LUT4 i3085_2_lut_3_lut_4_lut (.A(n3581), .B(n3580), .C(n4), .D(n3591), 
         .Z(n3166)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3085_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1950_4_lut (.A(A_out_4), .B(A_out_3), .C(n2048), .D(A_out_2), 
         .Z(n1942)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1950_4_lut.init = 16'heeea;
    FD1P3AX CAWritten_12__619 (.D(D_out_4), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_12__619.GSR = "ENABLED";
    LUT4 i1810_2_lut (.A(A_out_1), .B(A_out_0), .Z(n2048)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1810_2_lut.init = 16'h8888;
    LUT4 i2977_3_lut (.A(Length[7]), .B(Length[1]), .C(\Length[2] ), .Z(n3229)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2977_3_lut.init = 16'hfefe;
    FD1P3AX CAWritten_11__620 (.D(D_out_3), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_11__620.GSR = "ENABLED";
    LUT4 mux_645_i4_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[11]), 
         .D(Length_15__N_300[3]), .Z(n846[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n383_bdd_4_lut (.A(n437[5]), .B(A_out_0), .C(Length[5]), .D(A_out_3), 
         .Z(n3447)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam n383_bdd_4_lut.init = 16'haaf3;
    LUT4 mux_174_i2_3_lut_4_lut (.A(n3588), .B(n3576), .C(D_out_1), .D(n328[1]), 
         .Z(n330[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX AutoloadEN_588 (.D(D_out_5), .SP(PHI2_N_548_enable_79), .CD(n3811), 
            .CK(PHI2_N_548), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam AutoloadEN_588.GSR = "ENABLED";
    PFUMX i3156 (.BLUT(n355), .ALUT(n3449), .C0(A_out_1), .Z(n3450));
    LUT4 i1_4_lut_adj_170 (.A(n3), .B(Execute), .C(n39), .D(DMA), .Z(RAMRD_N_549)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(259[2] 262[45])
    defparam i1_4_lut_adj_170.init = 16'ha088;
    LUT4 mux_645_i5_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[12]), 
         .D(Length_15__N_300[4]), .Z(n846[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i896_2_lut_3_lut_4_lut (.A(A_out_3), .B(n3589), .C(n3810), .D(n3574), 
         .Z(PHI2_N_548_enable_53)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i896_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 mux_191_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n368[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_191_i5_3_lut.init = 16'hcaca;
    LUT4 mux_645_i3_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[10]), 
         .D(Length_15__N_300[2]), .Z(n846[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i3_3_lut_4_lut.init = 16'hf1e0;
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2882), .S0(Length_7__N_347[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    FD1P3AX CAWritten_9__622 (.D(D_out_1), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_9__622.GSR = "ENABLED";
    FD1P3AX CAWritten_8__623 (.D(D_out_0), .SP(PHI2_N_548_enable_53), .CK(PHI2_N_548), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(144[8] 155[4])
    defparam CAWritten_8__623.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__665 (.D(D_out_1), .SP(PHI2_N_548_enable_72), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_17__665.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__675 (.D(n1101), .SP(PHI2_N_548_enable_56), 
            .CK(PHI2_N_548), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_7__675.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2881), .COUT(n2882), .S0(Length_7__N_347[5]), 
          .S1(Length_7__N_347[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_6__676 (.D(n1099), .SP(PHI2_N_548_enable_56), 
            .CK(PHI2_N_548), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam LengthWritten_6__676.GSR = "ENABLED";
    FD1P3JX Length_15__683 (.D(Length_15__N_297), .SP(PHI2_N_548_enable_85), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_15__683.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(A_out_3), .B(n3589), .C(n3591), 
         .D(n3581), .Z(n3572)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hfffe;
    FD1P3JX Length_2__672 (.D(Length_2__N_370), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(\Length[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_2__672.GSR = "ENABLED";
    FD1P3JX Length_3__671 (.D(Length_3__N_365), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_3__671.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2880), .COUT(n2881), .S0(Length_7__N_347[3]), 
          .S1(Length_7__N_347[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 mux_645_i7_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[14]), 
         .D(Length_15__N_300[6]), .Z(n846[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3096_4_lut (.A(n3570), .B(DMA), .C(XferEnd_N_579), .D(AutoloadEN), 
         .Z(n3291)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[18:34])
    defparam i3096_4_lut.init = 16'heaaa;
    FD1P3JX Length_11__687 (.D(Length_11__N_324), .SP(PHI2_N_548_enable_85), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_11__687.GSR = "ENABLED";
    FD1P3JX Length_12__686 (.D(Length_12__N_319), .SP(PHI2_N_548_enable_85), 
            .PD(RegReset), .CK(PHI2_N_548), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_12__686.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\Length[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2879), .COUT(n2880), .S0(Length_7__N_347[1]), 
          .S1(Length_7__N_347[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    FD1P3JX Length_4__670 (.D(Length_4__N_360), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_4__670.GSR = "ENABLED";
    FD1P3JX Length_5__669 (.D(Length_5__N_355), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_5__669.GSR = "ENABLED";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2879), .S1(Length_7__N_347[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(214[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    FD1P3JX Length_6__668 (.D(Length_6__N_350), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_6__668.GSR = "ENABLED";
    PFUMX i3114 (.BLUT(n3392), .ALUT(n3391), .C0(A_out_0), .Z(n3393));
    LUT4 mux_645_i6_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[13]), 
         .D(Length_15__N_300[5]), .Z(n846[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i6_3_lut_4_lut.init = 16'hf1e0;
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_51), .B0(REUAOut_15__N_53), 
          .C0(REUAWritten[8]), .D0(REUA[8]), .A1(GND_net), .B1(REUAOut_15__N_53), 
          .C1(REUAWritten[9]), .D1(REUA[9]), .CIN(n2874), .COUT(n2875), 
          .S0(REUAOut_15__N_50[0]), .S1(REUAOut_15__N_50[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    LUT4 mux_645_i1_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[8]), 
         .D(Length_15__N_300[0]), .Z(n846[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_191_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n368[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_191_i4_3_lut.init = 16'hcaca;
    LUT4 mux_645_i2_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[9]), 
         .D(Length_15__N_300[1]), .Z(n846[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_191_i3_3_lut (.A(CA[2]), .B(CA[10]), .C(A_out_0), .Z(n368[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_191_i3_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut_adj_171 (.A(n1942), .B(\RAMRDD[6] ), .C(DMA), .D(n10_adj_660), 
         .Z(\Dout[6] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i8_4_lut_adj_171.init = 16'hcfca;
    LUT4 i11_3_lut (.A(n3396), .B(n9_adj_661), .C(A_out_3), .Z(n10_adj_660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11_3_lut.init = 16'hcaca;
    LUT4 i10_3_lut (.A(n404[6]), .B(IncMode[0]), .C(A_out_1), .Z(n9_adj_661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i10_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_18__664 (.D(D_out_2), .SP(PHI2_N_548_enable_72), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUAWritten_18__664.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_72_3_lut_4_lut (.A(A_out_3), .B(n3589), .C(n3588), 
         .D(n3581), .Z(n3571)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i1_2_lut_rep_72_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_191_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n368[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_191_i2_3_lut.init = 16'hcaca;
    PFUMX mux_174_i3 (.BLUT(\REUAOut_18__N_33[2] ), .ALUT(n328[2]), .C0(n3291), 
          .Z(n330[2]));
    LUT4 mux_203_i7_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n404[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_203_i7_3_lut.init = 16'hcaca;
    FD1P3IX REUA_19__660 (.D(D_out_3), .SP(PHI2_N_548_enable_72), .CD(n3811), 
            .CK(PHI2_N_548), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_19__660.GSR = "ENABLED";
    LUT4 n355_bdd_3_lut (.A(A_out_0), .B(CA[13]), .C(CA[5]), .Z(n3449)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n355_bdd_3_lut.init = 16'hd8d8;
    LUT4 mux_172_i1_4_lut (.A(REUAOut_18__N_34), .B(REUAWritten[16]), .C(n3559), 
         .D(REUA[16]), .Z(n328[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[18:34])
    defparam mux_172_i1_4_lut.init = 16'hc5ca;
    LUT4 i1774_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n368[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1774_3_lut.init = 16'hcaca;
    LUT4 i1836_3_lut_4_lut (.A(n3588), .B(n3576), .C(D_out_2), .D(REUAWritten[18]), 
         .Z(n328[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i1836_3_lut_4_lut.init = 16'hfe10;
    LUT4 n370_bdd_3_lut_3244 (.A(A_out_0), .B(EndOfBlock), .C(DF01Reserved6), 
         .Z(n3394)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n370_bdd_3_lut_3244.init = 16'he4e4;
    LUT4 i1_2_lut_adj_172 (.A(VerifyErrMask), .B(Fault), .Z(IRQOut_N_440)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 244[4])
    defparam i1_2_lut_adj_172.init = 16'h8888;
    LUT4 mux_191_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n368[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_191_i8_3_lut.init = 16'hcaca;
    LUT4 n400_bdd_3_lut_3273 (.A(Length[8]), .B(A_out_1), .C(A_out_0), 
         .Z(n3452)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n400_bdd_3_lut_3273.init = 16'hfefe;
    FD1P3IX REUAWritten_9__654 (.D(D_out_1), .SP(PHI2_N_548_enable_71), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_9__654.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__651 (.D(D_out_4), .SP(PHI2_N_548_enable_71), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_12__651.GSR = "ENABLED";
    LUT4 mux_174_i1_3_lut_4_lut (.A(n3588), .B(n3576), .C(D_out_0), .D(n328[0]), 
         .Z(n330[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_13__650 (.D(D_out_5), .SP(PHI2_N_548_enable_71), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_13__650.GSR = "ENABLED";
    PFUMX i3154 (.BLUT(n380[5]), .ALUT(n3447), .C0(n3592), .Z(n3448));
    FD1P3IX REUAWritten_14__649 (.D(D_out_6), .SP(PHI2_N_548_enable_71), 
            .CD(n3811), .CK(PHI2_N_548), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_14__649.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__648 (.D(D_out_7), .SP(PHI2_N_548_enable_71), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(173[8] 185[4])
    defparam REUAWritten_15__648.GSR = "ENABLED";
    LUT4 i3098_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3287)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i3098_2_lut.init = 16'heeee;
    FD1P3IX REUA_20__659 (.D(D_out_4), .SP(PHI2_N_548_enable_72), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(REUA_c[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam REUA_20__659.GSR = "ENABLED";
    LUT4 mux_191_i7_3_lut (.A(CA[6]), .B(CA[14]), .C(A_out_0), .Z(n368[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_191_i7_3_lut.init = 16'hcaca;
    FD1P3IX DF01Reserved6_587 (.D(D_out_6), .SP(PHI2_N_548_enable_79), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved6_587.GSR = "ENABLED";
    LUT4 i1875_2_lut (.A(D_out_5), .B(n3810), .Z(n1105)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1875_2_lut.init = 16'heeee;
    FD1P3IX REUAWritten_0__639 (.D(D_out_0), .SP(PHI2_N_548_enable_75), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_0__639.GSR = "ENABLED";
    FD1P3IX REUAWritten_1__638 (.D(D_out_1), .SP(PHI2_N_548_enable_75), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(158[8] 170[4])
    defparam REUAWritten_1__638.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(n17), .B(n15_adj_662), .C(n11), .D(n12), .Z(CAOut_15__N_139)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 mux_646_i4_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[3]), 
         .D(Length_7__N_347[3]), .Z(n847[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i4_3_lut_4_lut.init = 16'hf4b0;
    FD1P3AX CAWritten_7__600 (.D(D_out_7), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_7__600.GSR = "ENABLED";
    FD1P3AX CAWritten_6__601 (.D(D_out_6), .SP(PHI2_N_548_enable_77), .CK(PHI2_N_548), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(130[8] 141[4])
    defparam CAWritten_6__601.GSR = "ENABLED";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_548_enable_78), .CD(RegReset), 
            .CK(PHI2_N_548), .Q(IncMode_c[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(250[8] 253[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 mux_173_i8_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_7), .D(CAOut_7__N_185[7]), 
         .Z(n329[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_646_i1_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[0]), 
         .D(Length_7__N_347[0]), .Z(n847[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i7_4_lut (.A(CA[0]), .B(CA[4]), .C(CA[3]), .D(CA[2]), .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 mux_199_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n392[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_199_i1_3_lut.init = 16'hcaca;
    LUT4 mux_173_i7_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_6), .D(CAOut_7__N_185[6]), 
         .Z(n329[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5_2_lut (.A(CA[5]), .B(CA[1]), .Z(n15_adj_662)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 mux_646_i6_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[5]), 
         .D(Length_7__N_347[5]), .Z(n847[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_199_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n392[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_199_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_173 (.A(n1358), .B(CA[7]), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_173.init = 16'h8888;
    LUT4 mux_646_i2_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[1]), 
         .D(Length_7__N_347[1]), .Z(n847[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_2_lut_adj_174 (.A(CA[6]), .B(IncMode_c[1]), .Z(n12)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_174.init = 16'h2222;
    LUT4 i3_4_lut_adj_175 (.A(n3557), .B(PHI2_N_548_enable_56), .C(n1358), 
         .D(n1991), .Z(PHI2_N_548_enable_82)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut_adj_175.init = 16'hfeee;
    LUT4 mux_646_i5_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[4]), 
         .D(Length_7__N_347[4]), .Z(n847[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 n388_bdd_4_lut (.A(n368[0]), .B(XferType[0]), .C(A_out_1), .D(A_out_0), 
         .Z(n3455)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n388_bdd_4_lut.init = 16'haca0;
    LUT4 mux_173_i5_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_4), .D(CAOut_7__N_185[4]), 
         .Z(n329[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_173_i4_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_3), .D(CAOut_7__N_185[3]), 
         .Z(n329[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 A_4__I_0_704_i6_2_lut_rep_85 (.A(A_out_0), .B(A_out_1), .Z(n3584)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam A_4__I_0_704_i6_2_lut_rep_85.init = 16'heeee;
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3559), .B1(n3568), .C1(GND_net), .D1(GND_net), 
          .COUT(n2874));   // c:/users/garre/repos/gw4302/cpld/reg.v(183[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2870), .S0(Length_15__N_300[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_839_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2869), .COUT(n2870), .S0(Length_15__N_300[5]), 
          .S1(Length_15__N_300[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_7.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2868), .COUT(n2869), .S0(Length_15__N_300[3]), 
          .S1(Length_15__N_300[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2867), .COUT(n2868), .S0(Length_15__N_300[1]), 
          .S1(Length_15__N_300[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_15__I_0_839_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2867), .S1(Length_15__N_300[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(229[19:37])
    defparam Length_15__I_0_839_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_839_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_839_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_839_add_2_1.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_98), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n2865), .S0(REUAOut_7__N_97[6]), .S1(REUAOut_7__N_97[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_98), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n2864), .COUT(n2865), .S0(REUAOut_7__N_97[4]), 
          .S1(REUAOut_7__N_97[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_98), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n2863), .COUT(n2864), .S0(REUAOut_7__N_97[2]), 
          .S1(REUAOut_7__N_97[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_98), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(REUAOut_7__N_98), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n2862), .COUT(n2863), .S0(REUAOut_7__N_97[0]), 
          .S1(REUAOut_7__N_97[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3559), .B1(n3573), .C1(GND_net), .D1(GND_net), 
          .COUT(n2862));   // c:/users/garre/repos/gw4302/cpld/reg.v(168[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_173_i6_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_5), .D(CAOut_7__N_185[5]), 
         .Z(n329[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 n399_bdd_3_lut_3211 (.A(Length[9]), .B(A_out_1), .C(A_out_0), 
         .Z(n3457)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n399_bdd_3_lut_3211.init = 16'hfefe;
    LUT4 mux_646_i7_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[6]), 
         .D(Length_7__N_347[6]), .Z(n847[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_646_i8_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[7]), 
         .D(Length_7__N_347[7]), .Z(n847[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), .Z(n1362)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i2_3_lut.init = 16'hefef;
    LUT4 mux_646_i3_3_lut_4_lut (.A(n3559), .B(n3567), .C(LengthWritten[2]), 
         .D(Length_7__N_347[2]), .Z(n847[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(211[15:50])
    defparam mux_646_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1889_2_lut (.A(D_out_1), .B(n3810), .Z(n1182)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1889_2_lut.init = 16'heeee;
    LUT4 i1855_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n437[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam i1855_4_lut.init = 16'hfcee;
    LUT4 mux_173_i3_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_2), .D(CAOut_7__N_185[2]), 
         .Z(n329[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1888_2_lut (.A(D_out_2), .B(n3810), .Z(n1180)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1888_2_lut.init = 16'heeee;
    LUT4 i1881_2_lut (.A(D_out_3), .B(n3810), .Z(n1170)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1881_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_176 (.A(A_out_0), .B(A_out_1), .C(n3810), 
         .D(n3575), .Z(PHI2_N_548_enable_24)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i1_2_lut_3_lut_4_lut_adj_176.init = 16'hf0f1;
    LUT4 i1890_2_lut (.A(D_out_0), .B(n3810), .Z(n1184)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam i1890_2_lut.init = 16'heeee;
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_141), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n2857), .S0(CAOut_15__N_138[6]), .S1(CAOut_15__N_138[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_141), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n2856), .COUT(n2857), .S0(CAOut_15__N_138[4]), 
          .S1(CAOut_15__N_138[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_141), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n2855), .COUT(n2856), .S0(CAOut_15__N_138[2]), 
          .S1(CAOut_15__N_138[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_139), .B0(CAOut_15__N_141), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_141), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n2854), .COUT(n2855), .S0(CAOut_15__N_138[0]), 
          .S1(CAOut_15__N_138[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3559), .B1(n3571), .C1(GND_net), .D1(GND_net), .COUT(n2854));   // c:/users/garre/repos/gw4302/cpld/reg.v(153[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    FD1S3IX XferType__i1 (.D(n3565), .CK(PHI2_N_548), .CD(RegReset), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam XferType__i1.GSR = "ENABLED";
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_548_enable_79), 
            .CD(RegReset), .CK(PHI2_N_548), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    LUT4 mux_195_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n380[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_195_i1_3_lut.init = 16'hcaca;
    FD1P3JX Length_13__685 (.D(Length_13__N_314), .SP(PHI2_N_548_enable_85), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_13__685.GSR = "ENABLED";
    FD1P3JX Length_14__684 (.D(Length_14__N_309), .SP(PHI2_N_548_enable_85), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_14__684.GSR = "ENABLED";
    FD1P3JX Length_7__667 (.D(Length_7__N_344), .SP(PHI2_N_548_enable_82), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(204[8] 216[4])
    defparam Length_7__667.GSR = "ENABLED";
    LUT4 n398_bdd_3_lut_3206 (.A(Length[10]), .B(A_out_1), .C(A_out_0), 
         .Z(n3462)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n398_bdd_3_lut_3206.init = 16'hfefe;
    LUT4 Execute_I_0_3_lut_4_lut (.A(D_out_7), .B(n3572), .C(D_out_4), 
         .D(Execute_N_441), .Z(Execute)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam Execute_I_0_3_lut_4_lut.init = 16'hff20;
    LUT4 i3097_2_lut_rep_93 (.A(A_out_3), .B(A_out_1), .Z(n3592)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3097_2_lut_rep_93.init = 16'heeee;
    LUT4 i1_2_lut_adj_177 (.A(n3810), .B(D_out_4), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_177.init = 16'heeee;
    LUT4 n388_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3453), .D(n380[0]), 
         .Z(n3454)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n388_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n387_bdd_3_lut_3214_4_lut (.A(A_out_3), .B(A_out_1), .C(n3458), 
         .D(n380[1]), .Z(n3459)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n387_bdd_3_lut_3214_4_lut.init = 16'hf1e0;
    LUT4 A_out_0_bdd_2_lut_3172 (.A(REUA[7]), .B(A_out_1), .Z(n3398)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3172.init = 16'heeee;
    LUT4 mux_195_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n380[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_195_i2_3_lut.init = 16'hcaca;
    LUT4 equal_20_i6_2_lut_rep_89 (.A(A_out_0), .B(A_out_1), .Z(n3588)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[2:14])
    defparam equal_20_i6_2_lut_rep_89.init = 16'hbbbb;
    LUT4 i471_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3575), .D(n3810), 
         .Z(PHI2_N_548_enable_78)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[2:14])
    defparam i471_3_lut_4_lut.init = 16'hff04;
    LUT4 i1_2_lut_rep_90 (.A(A_out_2), .B(A_out_4), .Z(n3589)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_90.init = 16'heeee;
    LUT4 n386_bdd_3_lut_3209_4_lut (.A(A_out_3), .B(A_out_1), .C(n3463), 
         .D(n380[2]), .Z(n3464)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n386_bdd_3_lut_3209_4_lut.init = 16'hf1e0;
    LUT4 n3470_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3469), .D(n3470), 
         .Z(n3471)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n3470_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n369_bdd_3_lut_3277 (.A(A_out_0), .B(IntPending), .C(ExecuteEN), 
         .Z(n3400)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n369_bdd_3_lut_3277.init = 16'he4e4;
    LUT4 mux_195_i3_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n380[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2] 81[7])
    defparam mux_195_i3_3_lut.init = 16'hcaca;
    LUT4 n3477_bdd_3_lut_4_lut (.A(A_out_3), .B(A_out_1), .C(n3476), .D(n3477), 
         .Z(n3478)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n3477_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_81_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n3580)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_81_3_lut.init = 16'hfefe;
    LUT4 XferType_1__I_0_154_i3_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n3572), .D(\XferType[0] ), .Z(n3)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[27:62])
    defparam XferType_1__I_0_154_i3_2_lut_4_lut.init = 16'hffac;
    LUT4 n386_bdd_4_lut (.A(n368[2]), .B(DF01Reserved32[2]), .C(A_out_1), 
         .D(A_out_0), .Z(n3465)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n386_bdd_4_lut.init = 16'haca0;
    LUT4 n387_bdd_4_lut (.A(n368[1]), .B(XferType[1]), .C(A_out_1), .D(A_out_0), 
         .Z(n3460)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n387_bdd_4_lut.init = 16'haca0;
    LUT4 i1838_2_lut_rep_64_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3572), 
         .D(\XferType[0] ), .Z(n3563)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[27:62])
    defparam i1838_2_lut_rep_64_4_lut.init = 16'hac00;
    LUT4 A_out_0_bdd_2_lut_3178 (.A(Length[3]), .B(A_out_3), .Z(n3467)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut_3178.init = 16'heeee;
    LUT4 A_out_0_bdd_3_lut_3179 (.A(A_out_1), .B(Length[11]), .C(A_out_3), 
         .Z(n3468)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3179.init = 16'hefef;
    LUT4 XferType_1__I_0_147_i3_2_lut_rep_63_4_lut (.A(XferType[1]), .B(D_out_1), 
         .C(n3572), .D(\XferType[0] ), .Z(n3562)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((C+(D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(127[27:62])
    defparam XferType_1__I_0_147_i3_2_lut_rep_63_4_lut.init = 16'hff53;
    LUT4 REUA_3__bdd_3_lut (.A(REUA[3]), .B(A_out_0), .C(REUA[11]), .Z(n3470)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_3__bdd_3_lut.init = 16'he2e2;
    LUT4 REUA_3__bdd_4_lut (.A(n368[3]), .B(A_out_0), .C(A_out_1), .D(DF01Reserved32[3]), 
         .Z(n3472)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam REUA_3__bdd_4_lut.init = 16'haca0;
    LUT4 mux_645_i8_3_lut_4_lut (.A(n3559), .B(n3569), .C(LengthWritten[15]), 
         .D(Length_15__N_300[7]), .Z(n846[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(226[15:50])
    defparam mux_645_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_542)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(188[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 A_out_0_bdd_2_lut (.A(Length[4]), .B(A_out_3), .Z(n3474)) /* synthesis lut_function=(A+(B)) */ ;
    defparam A_out_0_bdd_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n3810), .B(n3572), .C(XferEnd_N_579), 
         .D(DMA), .Z(PHI2_N_548_enable_20)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(104[8] 123[4])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfbbb;
    LUT4 A_out_0_bdd_3_lut (.A(A_out_1), .B(Length[12]), .C(A_out_3), 
         .Z(n3475)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut.init = 16'hefef;
    LUT4 REUA_4__bdd_3_lut (.A(REUA[4]), .B(A_out_0), .C(REUA[12]), .Z(n3477)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_4__bdd_3_lut.init = 16'he2e2;
    LUT4 REUA_4__bdd_4_lut (.A(n368[4]), .B(A_out_0), .C(A_out_1), .D(FF00DecodeEN), 
         .Z(n3479)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C))) */ ;
    defparam REUA_4__bdd_4_lut.init = 16'ha3af;
    PFUMX i3182 (.BLUT(n3479), .ALUT(n3478), .C0(n3287), .Z(n3480));
    LUT4 i1_2_lut_adj_178 (.A(BA_c), .B(n1991), .Z(XferEnd_N_587)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    defparam i1_2_lut_adj_178.init = 16'h2222;
    PFUMX i3180 (.BLUT(n3475), .ALUT(n3474), .C0(A_out_0), .Z(n3476));
    LUT4 mux_171_i1_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_0), .D(CAOut_15__N_138[0]), 
         .Z(n327[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_171_i2_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_1), .D(CAOut_15__N_138[1]), 
         .Z(n327[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 A_out_0_bdd_3_lut_3173 (.A(Length[7]), .B(A_out_1), .C(REUA[15]), 
         .Z(n3397)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam A_out_0_bdd_3_lut_3173.init = 16'hb8b8;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_186), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n2849), .S0(CAOut_7__N_185[6]), .S1(CAOut_7__N_185[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_186), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n2848), .COUT(n2849), .S0(CAOut_7__N_185[4]), 
          .S1(CAOut_7__N_185[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_186), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n2847), .COUT(n2848), .S0(CAOut_7__N_185[2]), 
          .S1(CAOut_7__N_185[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_186), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_186), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n2846), .COUT(n2847), .S0(CAOut_7__N_185[0]), 
          .S1(CAOut_7__N_185[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3559), .B1(n3566), .C1(GND_net), .D1(GND_net), .COUT(n2846));   // c:/users/garre/repos/gw4302/cpld/reg.v(139[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_173_i2_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_1), .D(CAOut_7__N_185[1]), 
         .Z(n329[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_171_i8_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_7), .D(CAOut_15__N_138[7]), 
         .Z(n327[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_171_i7_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_6), .D(CAOut_15__N_138[6]), 
         .Z(n327[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3_4_lut_adj_179 (.A(n3214), .B(n3810), .C(n3558), .D(n3207), 
         .Z(PHI2_N_548_enable_85)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_179.init = 16'hfffe;
    PFUMX i3176 (.BLUT(n3472), .ALUT(n3471), .C0(n3287), .Z(n3473));
    LUT4 mux_171_i6_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_5), .D(CAOut_15__N_138[5]), 
         .Z(n327[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_171_i5_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_4), .D(CAOut_15__N_138[4]), 
         .Z(n327[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_171_i4_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_3), .D(CAOut_15__N_138[3]), 
         .Z(n327[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_171_i3_3_lut_4_lut (.A(n3580), .B(n3574), .C(D_out_2), .D(CAOut_15__N_138[2]), 
         .Z(n327[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_171_i3_3_lut_4_lut.init = 16'hfb40;
    FD1P3JX Length_8__690 (.D(Length_8__N_339), .SP(PHI2_N_548_enable_85), 
            .PD(RegReset), .CK(PHI2_N_548), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_8__690.GSR = "ENABLED";
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_2), 
         .D(n846[2]), .Z(Length_10__N_329)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    FD1P3JX Length_9__689 (.D(Length_9__N_334), .SP(PHI2_N_548_enable_85), 
            .PD(n3811), .CK(PHI2_N_548), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=11, LSE_LLINE=57, LSE_RLINE=68 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(219[8] 231[4])
    defparam Length_9__689.GSR = "ENABLED";
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_7), 
         .D(n846[7]), .Z(Length_15__N_297)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1251_1_lut (.A(REUA_c[20]), .Z(n1496)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(188[8] 201[4])
    defparam i1251_1_lut.init = 16'h5555;
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n3584), .B(n3575), .C(D_out_3), 
         .D(n846[3]), .Z(Length_11__N_324)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3174 (.BLUT(n3468), .ALUT(n3467), .C0(A_out_0), .Z(n3469));
    L6MUX21 i3126 (.D0(n3401), .D1(n3399), .SD(A_out_2), .Z(n3402));
    PFUMX i3170 (.BLUT(n3465), .ALUT(n3464), .C0(n3287), .Z(n3466));
    LUT4 A_4__I_0_i6_2_lut_rep_92 (.A(A_out_0), .B(A_out_1), .Z(n3591)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam A_4__I_0_i6_2_lut_rep_92.init = 16'hdddd;
    LUT4 i464_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3575), .D(n3810), 
         .Z(PHI2_N_548_enable_38)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[2:14])
    defparam i464_3_lut_4_lut.init = 16'hff02;
    PFUMX i3124 (.BLUT(n3400), .ALUT(n368[7]), .C0(A_out_1), .Z(n3401));
    LUT4 i890_4_lut (.A(n3579), .B(n3810), .C(n3584), .D(n3580), .Z(n1134)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(86[8] 100[4])
    defparam i890_4_lut.init = 16'hccce;
    LUT4 mux_173_i1_3_lut_4_lut (.A(n3588), .B(n3577), .C(D_out_0), .D(CAOut_7__N_185[0]), 
         .Z(n329[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_173_i1_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3168 (.BLUT(n398), .ALUT(n3462), .C0(A_out_3), .Z(n3463));
    PFUMX i3122 (.BLUT(n3398), .ALUT(n3397), .C0(A_out_0), .Z(n3399));
    LUT4 i1709_3_lut (.A(REUA[11]), .B(REUA[3]), .C(\S[0] ), .Z(n1_adj_6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1709_3_lut.init = 16'hcaca;
    PFUMX i3166 (.BLUT(n3460), .ALUT(n3459), .C0(n3287), .Z(n3461));
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (\S[0] , C8M_c, n3809, \REUA[14] , \REUA[6] , \REUA[16] , 
            \REUA[8] , \REUA[17] , \REUA[23] , \REUA[19] , RBA_c_0, 
            \REUA[21] , C8M_N_500, PHI2_c, \REUA[18] , REUAOut_18__N_34, 
            \REUAOut_18__N_33[2] , nCS_c, nRAS_c, nCAS_c, nRWE_c, 
            CKE_c, RA_c_0, WRDr, PHI2_N_548, D_out_0, DQML_c, A_0__N_542, 
            nRESET_c, GND_net, VCC_net, RCLK_c, RAMRDD, RD_out_0, 
            n1038, \Length[2] , A_out_0, n398, RBA_c_1, \REUA[22] , 
            RA_c_1, RAMWR, RAMRD, RA_c_11, n1496, \REUA[9] , \REUA[1] , 
            RA_c_2, n1, RA_c_3, n1_adj_1, RA_c_4, n1_adj_2, RA_c_5, 
            RA_c_6, n1_adj_3, RA_c_7, RA_c_8, RA_c_9, RA_c_10, D_out_1, 
            D_out_2, D_out_3, D_out_4, D_out_5, D_out_6, D_out_7, 
            RD_out_1, \REUA[10] , \REUA[2] , RD_out_2, RD_out_3, RD_out_4, 
            RD_out_5, RD_out_6, RD_out_7, DQMH_c, \REUA[0] ) /* synthesis syn_module_defined=1 */ ;
    output \S[0] ;
    input C8M_c;
    input n3809;
    input \REUA[14] ;
    input \REUA[6] ;
    input \REUA[16] ;
    input \REUA[8] ;
    input \REUA[17] ;
    input \REUA[23] ;
    input \REUA[19] ;
    output RBA_c_0;
    input \REUA[21] ;
    input C8M_N_500;
    input PHI2_c;
    input \REUA[18] ;
    input REUAOut_18__N_34;
    output \REUAOut_18__N_33[2] ;
    output nCS_c;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output RA_c_0;
    output [7:0]WRDr;
    input PHI2_N_548;
    input D_out_0;
    output DQML_c;
    input A_0__N_542;
    input nRESET_c;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output n1038;
    input \Length[2] ;
    input A_out_0;
    output n398;
    output RBA_c_1;
    input \REUA[22] ;
    output RA_c_1;
    input RAMWR;
    input RAMRD;
    output RA_c_11;
    input n1496;
    input \REUA[9] ;
    input \REUA[1] ;
    output RA_c_2;
    input n1;
    output RA_c_3;
    input n1_adj_1;
    output RA_c_4;
    input n1_adj_2;
    output RA_c_5;
    output RA_c_6;
    input n1_adj_3;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    output RA_c_10;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    input RD_out_1;
    input \REUA[10] ;
    input \REUA[2] ;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    output DQMH_c;
    input \REUA[0] ;
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_500 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(30[11:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_548 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(116[11:18])
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    
    wire n3594, CKE_N_536, RDOE, WRCMDg_N_535, RDOE_N_546, InitDone, 
        n3265, n3387, PORDone, PORDone_N_512, n3582, n3583, n1203, 
        n1202;
    wire [2:0]S_2__N_506;
    
    wire n3, n1_c, n1_adj_645, n3_adj_646, n317;
    wire [5:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(30[11:18])
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(39[11:16])
    
    wire nCS_N_517, nRAS_N_531, nCAS_N_532, nRWE_N_533, n3587, n1_adj_647, 
        n1492, RDD_7__N_515, n3_adj_648, n3388, n3_adj_649, n3046, 
        C8M_c_enable_2, n1_adj_650, n1495, n11;
    
    LUT4 S_2__bdd_4_lut (.A(S[2]), .B(\S[0] ), .C(S[1]), .D(n3594), 
         .Z(CKE_N_536)) /* synthesis lut_function=(A (B+!(C))+!A (C+(D))) */ ;
    defparam S_2__bdd_4_lut.init = 16'hdfda;
    FD1S3IX RDOE_136 (.D(RDOE_N_546), .CK(C8M_c), .CD(WRCMDg_N_535), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(238[8:54])
    defparam RDOE_136.GSR = "ENABLED";
    FD1P3AX InitDone_124 (.D(n3265), .SP(S[2]), .CK(C8M_c), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[8:58])
    defparam InitDone_124.GSR = "ENABLED";
    LUT4 S_2__bdd_2_lut (.A(S[2]), .B(\S[0] ), .Z(n3387)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam S_2__bdd_2_lut.init = 16'hbbbb;
    FD1P3AX PORDone_120 (.D(n3809), .SP(PORDone_N_512), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8] 36[4])
    defparam PORDone_120.GSR = "ENABLED";
    LUT4 PORDone_bdd_4_lut (.A(PORDone), .B(n3582), .C(n3583), .D(S[2]), 
         .Z(n1203)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam PORDone_bdd_4_lut.init = 16'h5575;
    FD1S3IX S__i0 (.D(S_2__N_506[0]), .CK(C8M_c), .CD(n1202), .Q(\S[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(S[1]), .B(\REUA[14] ), .C(\REUA[6] ), .D(\S[0] ), 
         .Z(n3)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i1_4_lut.init = 16'h5044;
    LUT4 S_2__I_0_142_i1_3_lut (.A(\REUA[16] ), .B(\REUA[8] ), .C(\S[0] ), 
         .Z(n1_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam S_2__I_0_142_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_141_i1_3_lut (.A(\REUA[17] ), .B(\REUA[23] ), .C(\S[0] ), 
         .Z(n1_adj_645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam S_2__I_0_141_i1_3_lut.init = 16'hcaca;
    LUT4 i2214_3_lut (.A(S[1]), .B(\S[0] ), .C(\REUA[19] ), .Z(n3_adj_646)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(45[11:12])
    defparam i2214_3_lut.init = 16'h9898;
    FD1S3IX RBA__i1 (.D(\REUA[21] ), .CK(C8M_c), .CD(n317), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RBA__i1.GSR = "ENABLED";
    FD1S3AX nRESETr_5__115 (.D(nRESETr[4]), .CK(C8M_c), .Q(nRESETr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_5__115.GSR = "ENABLED";
    FD1S3AX nRESETr_4__116 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_4__116.GSR = "ENABLED";
    FD1S3AX nRESETr_3__117 (.D(nRESETr[2]), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_3__117.GSR = "ENABLED";
    FD1S3AX nRESETr_2__118 (.D(nRESETr[1]), .CK(C8M_c), .Q(nRESETr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_2__118.GSR = "ENABLED";
    FD1S3AX nRESETr_1__119 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:54])
    defparam nRESETr_1__119.GSR = "ENABLED";
    FD1S3AX PHI2r_0__121 (.D(PHI2_c), .CK(C8M_N_500), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[8:40])
    defparam PHI2r_0__121.GSR = "ENABLED";
    FD1S3AX PHI2r_1__122 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:44])
    defparam PHI2r_1__122.GSR = "ENABLED";
    LUT4 i2632_4_lut (.A(\REUA[18] ), .B(REUAOut_18__N_34), .C(\REUA[16] ), 
         .D(\REUA[17] ), .Z(\REUAOut_18__N_33[2] )) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam i2632_4_lut.init = 16'h6aaa;
    FD1S3AX nCS_125 (.D(nCS_N_517), .CK(C8M_c), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nCS_125.GSR = "ENABLED";
    FD1S3AX nRAS_126 (.D(nRAS_N_531), .CK(C8M_c), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nRAS_126.GSR = "ENABLED";
    FD1S3AX nCAS_127 (.D(nCAS_N_532), .CK(C8M_c), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nCAS_127.GSR = "ENABLED";
    FD1S3AX nRWE_128 (.D(nRWE_N_533), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam nRWE_128.GSR = "ENABLED";
    FD1S3AX CKE_129 (.D(CKE_N_536), .CK(C8M_c), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[8] 164[4])
    defparam CKE_129.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n1_adj_647), .CK(C8M_c), .CD(n3587), .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_548), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3JX DQML_133 (.D(A_0__N_542), .CK(C8M_c), .PD(n1492), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam DQML_133.GSR = "ENABLED";
    FD1S3AX nRESETr_0__114 (.D(nRESET_c), .CK(C8M_N_500), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[8:44])
    defparam nRESETr_0__114.GSR = "ENABLED";
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(C8M_c), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(70[6] 80[32])
    defparam rclk_oddr.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 i817_1_lut (.A(RDOE), .Z(n1038)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(239[8:10])
    defparam i817_1_lut.init = 16'h5555;
    LUT4 i3_4_lut (.A(nRESETr[5]), .B(nRESETr[4]), .C(nRESETr[2]), .D(nRESETr[3]), 
         .Z(PORDone_N_512)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(35[6:58])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i957_1_lut (.A(PORDone), .Z(n1202)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(34[8] 36[4])
    defparam i957_1_lut.init = 16'h5555;
    LUT4 i2228_3_lut (.A(\REUA[18] ), .B(\Length[2] ), .C(A_out_0), .Z(n398)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2228_3_lut.init = 16'hcaca;
    LUT4 i97_2_lut_rep_83 (.A(\S[0] ), .B(S[1]), .Z(n3582)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i97_2_lut_rep_83.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(\S[0] ), .B(S[1]), .C(\REUA[18] ), .Z(n3_adj_648)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_84 (.A(PHI2r[0]), .B(PHI2r[1]), .Z(n3583)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[8:40])
    defparam i1_2_lut_rep_84.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(n3587), .D(\S[0] ), 
         .Z(S_2__N_506[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(40[8:40])
    defparam i1_3_lut_4_lut.init = 16'h00f4;
    PFUMX i3112 (.BLUT(n3388), .ALUT(n3387), .C0(S[1]), .Z(nRWE_N_533));
    LUT4 i232_2_lut (.A(\S[0] ), .B(S[1]), .Z(n3_adj_649)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(52[35:46])
    defparam i232_2_lut.init = 16'h6666;
    LUT4 i15_2_lut_3_lut (.A(\S[0] ), .B(S[1]), .C(S[2]), .Z(n3046)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i3013_3_lut_3_lut (.A(\S[0] ), .B(S[1]), .C(InitDone), .Z(n3265)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i3013_3_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_88 (.A(S[2]), .B(S[1]), .Z(n3587)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam i1_2_lut_rep_88.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_162 (.A(S[2]), .B(S[1]), .C(\S[0] ), .Z(RDOE_N_546)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam i1_2_lut_3_lut_adj_162.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_163 (.A(S[2]), .B(S[1]), .C(\S[0] ), .Z(n1492)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam i1_2_lut_3_lut_adj_163.init = 16'hefef;
    FD1P3IX S__i1 (.D(n3_adj_649), .SP(C8M_c_enable_2), .CD(n1203), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i1.GSR = "ENABLED";
    FD1P3IX S__i2 (.D(n3046), .SP(C8M_c_enable_2), .CD(n1203), .CK(C8M_c), 
            .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 53[4])
    defparam S__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_79_3_lut (.A(S[2]), .B(S[1]), .C(\S[0] ), .Z(C8M_c_enable_2)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam i1_2_lut_rep_79_3_lut.init = 16'hfefe;
    FD1S3IX RBA__i2 (.D(\REUA[22] ), .CK(C8M_c), .CD(n317), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n1_adj_650), .CK(C8M_c), .CD(n3587), .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 i1250_1_lut_2_lut_3_lut (.A(S[2]), .B(S[1]), .C(\S[0] ), .Z(n1495)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam i1250_1_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 i24_1_lut_2_lut (.A(InitDone), .B(RAMWR), .Z(WRCMDg_N_535)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i24_1_lut_2_lut.init = 16'h7777;
    LUT4 i2_3_lut_4_lut_4_lut (.A(S[2]), .B(RAMRD), .C(\S[0] ), .D(S[1]), 
         .Z(RDD_7__N_515)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i22_4_lut_4_lut_4_lut (.A(S[2]), .B(\S[0] ), .C(n11), .D(S[1]), 
         .Z(nRAS_N_531)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (D)+!B !((D)+!C))) */ ;
    defparam i22_4_lut_4_lut_4_lut.init = 16'hbbcf;
    LUT4 i1_4_lut_adj_164 (.A(S[2]), .B(S[1]), .C(n3594), .D(\S[0] ), 
         .Z(nCS_N_517)) /* synthesis lut_function=(A (B+(D))+!A !(B (D)+!B (C))) */ ;
    defparam i1_4_lut_adj_164.init = 16'habcd;
    LUT4 S_2__bdd_4_lut_3210 (.A(S[2]), .B(\S[0] ), .C(InitDone), .D(RAMWR), 
         .Z(n3388)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D)))) */ ;
    defparam S_2__bdd_4_lut_3210.init = 16'hbdfd;
    FD1S3IX RA_i12 (.D(n1495), .CK(C8M_c), .CD(n1496), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i12.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(S[1]), .B(\S[0] ), .C(n3594), .D(S[2]), .Z(nCAS_N_532)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(D))) */ ;
    defparam i2_4_lut.init = 16'heebf;
    LUT4 i1_3_lut_rep_95 (.A(InitDone), .B(RAMWR), .C(RAMRD), .Z(n3594)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_rep_95.init = 16'ha8a8;
    LUT4 i1_2_lut_4_lut (.A(InitDone), .B(RAMWR), .C(RAMRD), .D(S[2]), 
         .Z(n11)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hffa8;
    LUT4 S_2__I_0_150_i1_3_lut (.A(\REUA[9] ), .B(\REUA[1] ), .C(\S[0] ), 
         .Z(n1_adj_647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam S_2__I_0_150_i1_3_lut.init = 16'hcaca;
    FD1S3IX RA_i3 (.D(n1), .CK(C8M_c), .CD(n3587), .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n1_adj_1), .CK(C8M_c), .CD(n3587), .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n1_adj_2), .CK(C8M_c), .CD(n3587), .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3JX RA_i6 (.D(n3), .CK(C8M_c), .PD(S[2]), .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n1_adj_3), .CK(C8M_c), .CD(n3587), .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n1_c), .CK(C8M_c), .CD(n3587), .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1S3IX RA_i9 (.D(n1_adj_645), .CK(C8M_c), .CD(n3587), .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(n3_adj_648), .CK(C8M_c), .PD(S[2]), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3IX RA_i11 (.D(n3_adj_646), .CK(C8M_c), .CD(S[2]), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_548), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_548), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_548), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_548), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_548), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_548), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_548), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(233[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i1.GSR = "ENABLED";
    LUT4 S_2__I_0_148_i1_3_lut (.A(\REUA[10] ), .B(\REUA[2] ), .C(\S[0] ), 
         .Z(n1_adj_650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(167[2] 222[9])
    defparam S_2__I_0_148_i1_3_lut.init = 16'hcaca;
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_515), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(228[8:69])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1S3JX DQMH_132 (.D(\REUA[0] ), .CK(C8M_c), .PD(n1492), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=70, LSE_RLINE=80 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[8] 224[4])
    defparam DQMH_132.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(S[2]), .B(\S[0] ), .C(S[1]), .Z(n317)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1_3_lut.init = 16'hbaba;
    
endmodule
