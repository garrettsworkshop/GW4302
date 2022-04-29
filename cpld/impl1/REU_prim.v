// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Thu Apr 28 21:20:59 2022
//
// Verilog Description of module REU
//

module REU (C8M, PHI2, nRESET, BA, D, A, nWE, nWEDMA, nDMA, 
            nIRQ, nIO1, nIO2, nAOE, ADIR, nRWOE, nDOE, DDIR, 
            RCLK, nCS, nRAS, nCAS, nRWE, CKE, RBA, RA, DQMH, 
            DQML, RD) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(1[8:11])
    input C8M;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    input PHI2;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    input nRESET;   // c:/users/garre/repos/gw4302/cpld/reu.v(5[8:14])
    input BA;   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    inout [7:0]D;   // c:/users/garre/repos/gw4302/cpld/reu.v(8[14:15])
    inout [15:0]A;   // c:/users/garre/repos/gw4302/cpld/reu.v(9[15:16])
    input nWE;   // c:/users/garre/repos/gw4302/cpld/reu.v(10[8:11])
    output nWEDMA;   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    output nDMA;   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    output nIRQ;   // c:/users/garre/repos/gw4302/cpld/reu.v(13[9:13])
    input nIO1;   // c:/users/garre/repos/gw4302/cpld/reu.v(14[8:12])
    input nIO2;   // c:/users/garre/repos/gw4302/cpld/reu.v(15[8:12])
    output nAOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:13])
    output ADIR;   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    output nRWOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:14])
    output nDOE;   // c:/users/garre/repos/gw4302/cpld/reu.v(20[9:13])
    output DDIR;   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
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
    wire C8M_N_46 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[11:16])
    wire PHI2_N_571 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire GND_net, VCC_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nIRQ_c, 
        nIO2_c, DDIR_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, 
        CKE_c, RBA_c_1, RBA_c_0, RA_c_11, RA_c_10, RA_c_9, RA_c_8, 
        RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, RA_c_2, RA_c_1, 
        RA_c_0, DQMH_c, DQML_c, Execute;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(40[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(45[13:19])
    
    wire DMA, RAMRD, RAMWR, RegReset, IncREUA, SetFault;
    wire [7:0]Dout;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[13:17])
    
    wire DOE, nWEDMA_N_5, nAOE_N_8, nRWOE_N_10, nDOE_N_12;
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(240[11:15])
    
    wire A_0__N_97, EndBlock, ExecuteEN, AutoloadEN, FF00DecodeEN, 
        n3634, n3649, n3637, n3633, n3648, CAOut_7__N_282, n434, 
        n433, n3499, n3646, n3288, CAOut_15__N_237, n432, n430, 
        n8, REUAOut_7__N_194, n3645, n3327, n3636, REUAOut_15__N_149, 
        n3644, n34, n33, n32, n30, n28, n3493, XferC64REU, DMAr;
    wire [2:1]nRESETr;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire n3925, XferEnd_N_600, IncCA_N_631, Length1_N_645, n3825, 
        n22, n6, n7, D_out_7, n3664, n3662, n3661, D_out_6, 
        D_out_5, D_out_4, D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, 
        A_out_14, A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, 
        A_out_8, A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, RD_out_7, 
        RD_out_6, RD_out_5, n1103, RD_out_4, RD_out_3, RD_out_2, 
        RD_out_1, RD_out_0, n3641, n3656, n2796, n3655, n3923, 
        n3924, n2088, n2795, n3926, n3652, n3651, n3650;
    
    VHI i2 (.Z(VCC_net));
    INV i3465 (.A(C8M_c), .Z(C8M_N_46));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    LUT4 i2045_2_lut_rep_84 (.A(DMA), .B(nIO2_c), .Z(n3661)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2045_2_lut_rep_84.init = 16'heeee;
    BB A_pad_11 (.I(CA[11]), .T(n3664), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    LUT4 RegReset_I_0_4_lut_4_lut_rep_102 (.A(DMA), .B(DMAr), .C(nRESETr[2]), 
         .D(nRESETr[1]), .Z(n3925)) /* synthesis lut_function=(!(A+(B (C (D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    defparam RegReset_I_0_4_lut_4_lut_rep_102.init = 16'h0455;
    LUT4 m1_lut (.Z(n3923)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    BB A_pad_12 (.I(CA[12]), .T(n3664), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n3664), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n3664), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_15 (.I(CA[15]), .T(n3664), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB D_pad_0 (.I(Dout[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_7 (.I(Dout[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_1 (.I(Dout[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_2 (.I(Dout[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_3 (.I(Dout[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_4 (.I(Dout[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    LUT4 i15_4_lut (.A(ExecuteEN), .B(n30), .C(n22), .D(A_out_9), .Z(n33)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    BB D_pad_5 (.I(Dout[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    BB D_pad_6 (.I(Dout[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(102[9:10])
    LUT4 i16_4_lut (.A(A_out_11), .B(n32), .C(n3288), .D(FF00DecodeEN), 
         .Z(n34)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i16_4_lut.init = 16'h0800;
    LUT4 i12_4_lut (.A(A_out_10), .B(A_out_8), .C(A_out_15), .D(nWE_c), 
         .Z(n30)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i12_4_lut.init = 16'h0080;
    LUT4 i14_3_lut (.A(A_out_3), .B(n28), .C(n6), .Z(n32)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i14_3_lut.init = 16'h0404;
    LUT4 i10_4_lut (.A(n8), .B(A_out_14), .C(A_out_1), .D(A_out_12), 
         .Z(n28)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i10_4_lut.init = 16'h0400;
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n430), .B(RAMRDD[7]), .C(DMA), .D(n2088), 
         .Z(Dout[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    LUT4 i2110_2_lut_rep_74_3_lut_4_lut (.A(n3661), .B(nWE_c), .C(n3662), 
         .D(A_out_3), .Z(n3651)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2110_2_lut_rep_74_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_75_4_lut (.A(n3661), .B(nWE_c), .C(n3662), .D(A_out_3), 
         .Z(n3652)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_75_4_lut.init = 16'hfeff;
    BB A_pad_10 (.I(CA[10]), .T(n3664), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    LUT4 i3171_3_lut (.A(PHI2_c), .B(BA_c), .C(DMA), .Z(nRWOE_N_10)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(94[17:37])
    defparam i3171_3_lut.init = 16'h7f7f;
    LUT4 i3174_4_lut (.A(PHI2_c), .B(nIO2_c), .C(BA_c), .D(DMA), .Z(nDOE_N_12)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(100[16:45])
    defparam i3174_4_lut.init = 16'h5fdd;
    LUT4 nWE_N_3_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(99[16:35])
    defparam nWE_N_3_I_0_3_lut.init = 16'hc5c5;
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n3493), .B(RAMRDD[1]), .C(DMA), .D(n2088), 
         .Z(Dout[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 RegRDD_7__I_0_i4_4_lut (.A(n434), .B(RAMRDD[3]), .C(DMA), .D(n2088), 
         .Z(Dout[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i4_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i5_4_lut (.A(n433), .B(RAMRDD[4]), .C(DMA), .D(n2088), 
         .Z(Dout[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i5_4_lut.init = 16'hcfca;
    LUT4 i2047_2_lut_rep_78_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n3655)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2047_2_lut_rep_78_3_lut.init = 16'hfefe;
    REUReg reureg (.GND_net(GND_net), .REUAOut_15__N_149(REUAOut_15__N_149), 
           .REUA({REUA}), .n3651(n3651), .D_out_7(D_out_7), .D_out_4(D_out_4), 
           .A_out_1(A_out_1), .AutoloadEN(AutoloadEN), .PHI2_N_571(PHI2_N_571), 
           .n3925(n3925), .D_out_5(D_out_5), .A_out_0(A_out_0), .n432(n432), 
           .A_out_2(A_out_2), .n433(n433), .D_out_3(D_out_3), .n434(n434), 
           .n3924(n3924), .XferEnd_N_600(XferEnd_N_600), .DMA(DMA), .n3926(n3926), 
           .D_out_1(D_out_1), .\XferType[0] (XferType[0]), .XferC64REU(XferC64REU), 
           .n3637(n3637), .D_out_6(D_out_6), .D_out_2(D_out_2), .CA({CA}), 
           .D_out_0(D_out_0), .EndBlock(EndBlock), .n3636(n3636), .n3649(n3649), 
           .A_out_3(A_out_3), .A_0__N_97(A_0__N_97), .n3641(n3641), .SetFault(SetFault), 
           .n3923(n3923), .n3655(n3655), .A_out_4(A_out_4), .FF00DecodeEN(FF00DecodeEN), 
           .n33(n33), .n34(n34), .Execute(Execute), .n3652(n3652), .IncCA_N_631(IncCA_N_631), 
           .n3327(n3327), .n2088(n2088), .n3656(n3656), .n430(n430), 
           .n3662(n3662), .n3644(n3644), .n3646(n3646), .n3648(n3648), 
           .Length1_N_645(Length1_N_645), .\RAMRDD[2] (RAMRDD[2]), .\Dout[2] (Dout[2]), 
           .ExecuteEN(ExecuteEN), .nIRQ_c(nIRQ_c), .n3650(n3650), .n3499(n3499), 
           .IncREUA(IncREUA), .RegReset(RegReset), .n3493(n3493), .n7(n7), 
           .n3288(n3288), .n3645(n3645), .n3634(n3634), .A_out_13(A_out_13), 
           .n22(n22), .n3633(n3633), .n3825(n3825), .REUAOut_7__N_194(REUAOut_7__N_194), 
           .CAOut_15__N_237(CAOut_15__N_237), .CAOut_7__N_282(CAOut_7__N_282), 
           .RAMWR(RAMWR)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(67[9] 76[62])
    BB A_pad_9 (.I(CA[9]), .T(n3664), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_8 (.I(CA[8]), .T(n3664), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n3664), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_6 (.I(CA[6]), .T(n3664), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n3664), .B(A[5]), .O(n6));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n3664), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n3664), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n3664), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n3664), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB A_pad_0 (.I(CA[0]), .T(n3664), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1103), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1103), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1103), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1103), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1103), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1103), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1103), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1103), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n3664), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nIRQ_pad (.I(nIRQ_c), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld/reu.v(13[9:13])
    OB nAOE_pad (.I(nAOE_N_8), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:13])
    OB ADIR_pad (.I(n3664), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    OB nRWOE_pad (.I(nRWOE_N_10), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:14])
    OB nDOE_pad (.I(nDOE_N_12), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(20[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
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
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[8:12])
    INV i3464 (.A(PHI2_c), .Z(PHI2_N_571));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    LUT4 RegCS_I_0_112_2_lut_rep_79_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n3656)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_112_2_lut_rep_79_3_lut.init = 16'h1010;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 RegReset_I_0_4_lut_4_lut_rep_103 (.A(DMA), .B(DMAr), .C(nRESETr[2]), 
         .D(nRESETr[1]), .Z(n3926)) /* synthesis lut_function=(!(A+(B (C (D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    defparam RegReset_I_0_4_lut_4_lut_rep_103.init = 16'h0455;
    VLO i1 (.Z(GND_net));
    LUT4 RegRDD_7__I_0_i6_4_lut (.A(n432), .B(RAMRDD[5]), .C(DMA), .D(n2088), 
         .Z(Dout[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i6_4_lut.init = 16'hcfca;
    LUT4 RegRDD_7__I_0_i7_4_lut (.A(n3825), .B(RAMRDD[6]), .C(DMA), .D(n2088), 
         .Z(Dout[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i7_4_lut.init = 16'hcfca;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2796), .S1(nWEDMA_N_5));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n3499), .B(RAMRDD[0]), .C(DMA), .D(n2088), 
         .Z(Dout[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(101[20:51])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    LUT4 RegReset_I_0_4_lut_4_lut_rep_101 (.A(DMA), .B(DMAr), .C(nRESETr[2]), 
         .D(nRESETr[1]), .Z(n3924)) /* synthesis lut_function=(!(A+(B (C (D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    defparam RegReset_I_0_4_lut_4_lut_rep_101.init = 16'h0455;
    LUT4 i902_1_lut_rep_87 (.A(DMA), .Z(n3664)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    defparam i902_1_lut_rep_87.init = 16'h5555;
    LUT4 RegReset_I_0_4_lut_4_lut (.A(DMA), .B(DMAr), .C(nRESETr[2]), 
         .D(nRESETr[1]), .Z(RegReset)) /* synthesis lut_function=(!(A+(B (C (D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    defparam RegReset_I_0_4_lut_4_lut.init = 16'h0455;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i3168_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_N_8)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(95[9:10])
    defparam i3168_3_lut_3_lut.init = 16'h2f2f;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n2795));   // c:/users/garre/repos/gw4302/cpld/reu.v(84[31:50])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n2795), .COUT(n2796));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    DMASeq dmaseq (.DMA(DMA), .XferEnd_N_600(XferEnd_N_600), .n3645(n3645), 
           .AutoloadEN(AutoloadEN), .REUAOut_7__N_194(REUAOut_7__N_194), 
           .n3636(n3636), .\XferType[0] (XferType[0]), .n3641(n3641), 
           .BA_c(BA_c), .nWEDMA_c(nWEDMA_c), .nWEDMA_N_5(nWEDMA_N_5), 
           .Length1_N_645(Length1_N_645), .RAMWR(RAMWR), .n3637(n3637), 
           .Execute(Execute), .nRESETr({nRESETr}), .SetFault(SetFault), 
           .EndBlock(EndBlock), .n3327(n3327), .DMAr(DMAr), .IncCA_N_631(IncCA_N_631), 
           .PHI2_N_571(PHI2_N_571), .n3664(n3664), .nRESET_c(nRESET_c), 
           .IncREUA(IncREUA), .XferC64REU(XferC64REU), .RAMRD(RAMRD), 
           .n3646(n3646), .CAOut_15__N_237(CAOut_15__N_237), .n3644(n3644), 
           .n3633(n3633), .n3650(n3650), .REUAOut_15__N_149(REUAOut_15__N_149), 
           .n3649(n3649), .n3634(n3634), .n3648(n3648), .CAOut_7__N_282(CAOut_7__N_282)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(78[9] 86[68])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    RAMctrl ramctrl (.RAMWR(RAMWR), .C8M_N_46(C8M_N_46), .PHI2_c(PHI2_c), 
            .C8M_c(C8M_c), .RAMRD(RAMRD), .nCS_c(nCS_c), .RBA_c_0(RBA_c_0), 
            .REUA({REUA}), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), 
            .CKE_c(CKE_c), .RA_c_0(RA_c_0), .WRDr({WRDr}), .PHI2_N_571(PHI2_N_571), 
            .D_out_0(D_out_0), .DQML_c(DQML_c), .A_0__N_97(A_0__N_97), 
            .nRESET_c(nRESET_c), .GND_net(GND_net), .VCC_net(VCC_net), 
            .RCLK_c(RCLK_c), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .n1103(n1103), 
            .RBA_c_1(RBA_c_1), .n3923(n3923), .RA_c_1(RA_c_1), .DQMH_c(DQMH_c), 
            .RA_c_2(RA_c_2), .RA_c_3(RA_c_3), .RA_c_4(RA_c_4), .RA_c_5(RA_c_5), 
            .RA_c_6(RA_c_6), .RA_c_7(RA_c_7), .RA_c_8(RA_c_8), .RA_c_9(RA_c_9), 
            .RA_c_10(RA_c_10), .RA_c_11(RA_c_11), .D_out_1(D_out_1), .D_out_2(D_out_2), 
            .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), .D_out_6(D_out_6), 
            .D_out_7(D_out_7), .RD_out_1(RD_out_1), .RD_out_2(RD_out_2), 
            .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), .RD_out_5(RD_out_5), 
            .RD_out_6(RD_out_6), .RD_out_7(RD_out_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(58[10] 65[32])
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (GND_net, REUAOut_15__N_149, REUA, n3651, D_out_7, D_out_4, 
            A_out_1, AutoloadEN, PHI2_N_571, n3925, D_out_5, A_out_0, 
            n432, A_out_2, n433, D_out_3, n434, n3924, XferEnd_N_600, 
            DMA, n3926, D_out_1, \XferType[0] , XferC64REU, n3637, 
            D_out_6, D_out_2, CA, D_out_0, EndBlock, n3636, n3649, 
            A_out_3, A_0__N_97, n3641, SetFault, n3923, n3655, A_out_4, 
            FF00DecodeEN, n33, n34, Execute, n3652, IncCA_N_631, 
            n3327, n2088, n3656, n430, n3662, n3644, n3646, n3648, 
            Length1_N_645, \RAMRDD[2] , \Dout[2] , ExecuteEN, nIRQ_c, 
            n3650, n3499, IncREUA, RegReset, n3493, n7, n3288, 
            n3645, n3634, A_out_13, n22, n3633, n3825, REUAOut_7__N_194, 
            CAOut_15__N_237, CAOut_7__N_282, RAMWR) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input REUAOut_15__N_149;
    output [23:0]REUA;
    input n3651;
    input D_out_7;
    input D_out_4;
    input A_out_1;
    output AutoloadEN;
    input PHI2_N_571;
    input n3925;
    input D_out_5;
    input A_out_0;
    output n432;
    input A_out_2;
    output n433;
    input D_out_3;
    output n434;
    input n3924;
    input XferEnd_N_600;
    input DMA;
    input n3926;
    input D_out_1;
    output \XferType[0] ;
    output XferC64REU;
    output n3637;
    input D_out_6;
    input D_out_2;
    output [15:0]CA;
    input D_out_0;
    output EndBlock;
    input n3636;
    output n3649;
    input A_out_3;
    output A_0__N_97;
    output n3641;
    input SetFault;
    input n3923;
    input n3655;
    input A_out_4;
    output FF00DecodeEN;
    input n33;
    input n34;
    output Execute;
    input n3652;
    input IncCA_N_631;
    input n3327;
    output n2088;
    input n3656;
    output n430;
    output n3662;
    output n3644;
    output n3646;
    output n3648;
    output Length1_N_645;
    input \RAMRDD[2] ;
    output \Dout[2] ;
    output ExecuteEN;
    output nIRQ_c;
    output n3650;
    output n3499;
    input IncREUA;
    input RegReset;
    output n3493;
    input n7;
    output n3288;
    output n3645;
    input n3634;
    input A_out_13;
    output n22;
    input n3633;
    output n3825;
    input REUAOut_7__N_194;
    input CAOut_15__N_237;
    input CAOut_7__N_282;
    input RAMWR;
    
    wire PHI2_N_571 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire n2919;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(46[12:23])
    wire [7:0]REUAOut_15__N_146;
    
    wire n2920, n3667;
    wire [7:0]CAOut_7__N_281;
    wire [7:0]n307;
    wire [7:0]n324;
    wire [7:0]n340;
    
    wire n3324, PHI2_N_571_enable_76;
    wire [7:0]n352;
    
    wire n3315, n3317, n3346, n3823, n3502, n3824, n3312, n3314, 
        n3309, n3311;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(41[12:21])
    
    wire PHI2_N_571_enable_64, n3643, PHI2_N_571_enable_57, PHI2_N_571_enable_74;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reg.v(37[11:19])
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(50[12:18])
    
    wire n3488, DF01Reserved6, n3822, n2264;
    wire [2:0]n303;
    wire [2:0]n312;
    
    wire n3821, n3668;
    wire [7:0]CAOut_15__N_234;
    wire [7:0]n306;
    
    wire n2888;
    wire [7:0]Length_7__N_443;
    
    wire n2889;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(51[12:25])
    wire [7:0]Length_15__N_396;
    wire [7:0]n928;
    
    wire n3819;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(60[11:18])
    
    wire n3820, EndBlockMask;
    wire [3:2]DF01Reserved32;   // c:/users/garre/repos/gw4302/cpld/reg.v(33[11:25])
    
    wire PHI2_N_571_enable_67, n3310, n3666, PHI2_N_571_enable_43, n3313, 
        n3316, n3494, n3686, n3921, n3460, n3663;
    wire [7:0]n927;
    
    wire Length_5__N_451, Length_1__N_471, Fault, n1171, n17, Length_6__N_446, 
        Length_4__N_456, Length_0__N_476, Length_3__N_461, Length_7__N_440, 
        Length_2__N_466, PHI2_N_571_enable_69, n3665;
    wire [7:0]REUAOut_7__N_193;
    wire [7:0]n305;
    
    wire n3234, PHI2_N_571_enable_31, n1240, PHI2_N_571_enable_77, n3497, 
        n1238, n3642;
    wire [7:0]n304;
    
    wire n1236, n3654, n1234, n1232, Length_15__N_393, n3112;
    wire [7:0]n364;
    
    wire n3490, n1230, n1228, n1226, PHI2_N_571_enable_73, IntEnable, 
        PHI2_N_571_enable_42, n3326;
    wire [7:0]n409;
    wire [7:0]n376;
    
    wire FaultMask, PHI2_N_571_enable_75, n3491, Length_8__N_435, Length_9__N_430, 
        Length_10__N_425, n17_adj_666, n30, n26, n18, REUAOut_18__N_130, 
        n3635, Length_11__N_420, n961, Length_12__N_415, n2918, REUAOut_15__N_147, 
        n3658, n15, n13, n10, IRQ_N_536, n3919, n3920, n28, 
        n22_c, n1382, IncCAg, n3498, n3495, Length_13__N_410, Length_14__N_405, 
        n3496, n15_adj_667, n11, n2926, n12, n3632, n2925, n3492, 
        n3489, n15_adj_668, n6, n3298, PHI2_N_571_enable_86, n3274, 
        n3282, n2924, n3685, n3684, n2913, n2912, n2911, n2910, 
        IncREUAg, n2905, n2904, n2903, n2902, CAOut_15__N_235, n2897, 
        n2896, n2895, n2894, n2887, n2890, n2923, n17_adj_670, 
        n15_adj_671, n11_adj_672, n12_adj_673, n2921;
    
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(REUAOut_15__N_149), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(REUAOut_15__N_149), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n2919), .COUT(n2920), .S0(REUAOut_15__N_146[2]), 
          .S1(REUAOut_15__N_146[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    LUT4 mux_177_i8_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_7), .D(CAOut_7__N_281[7]), 
         .Z(n307[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_177_i5_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_4), .D(CAOut_7__N_281[4]), 
         .Z(n307[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i5_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3096 (.BLUT(n324[7]), .ALUT(n340[7]), .C0(A_out_1), .Z(n3324));
    FD1P3IX AutoloadEN_582 (.D(D_out_5), .SP(PHI2_N_571_enable_76), .CD(n3925), 
            .CK(PHI2_N_571), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam AutoloadEN_582.GSR = "ENABLED";
    LUT4 mux_198_i8_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n352[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i8_3_lut.init = 16'hcaca;
    L6MUX21 mux_219_i6 (.D0(n3315), .D1(n3317), .SD(n3346), .Z(n432));
    LUT4 n3823_bdd_3_lut (.A(n3823), .B(n3502), .C(A_out_2), .Z(n3824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3823_bdd_3_lut.init = 16'hcaca;
    L6MUX21 mux_219_i5 (.D0(n3312), .D1(n3314), .SD(n3346), .Z(n433));
    LUT4 mux_177_i4_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_3), .D(CAOut_7__N_281[3]), 
         .Z(n307[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i4_3_lut_4_lut.init = 16'hfe10;
    L6MUX21 mux_219_i4 (.D0(n3309), .D1(n3311), .SD(n3346), .Z(n434));
    FD1P3IX CAWritten_13__612 (.D(D_out_5), .SP(PHI2_N_571_enable_64), .CD(n3925), 
            .CK(PHI2_N_571), .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_13__612.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n3924), .B(n3643), .C(XferEnd_N_600), 
         .D(DMA), .Z(PHI2_N_571_enable_57)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfbbb;
    FD1P3IX REUAWritten_17__659 (.D(D_out_1), .SP(PHI2_N_571_enable_74), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_17__659.GSR = "ENABLED";
    LUT4 i3197_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3643), .D(\XferType[0] ), 
         .Z(XferC64REU)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(119[27:62])
    defparam i3197_2_lut_4_lut.init = 16'h0053;
    LUT4 i2_2_lut_4_lut (.A(XferType[1]), .B(D_out_1), .C(n3643), .D(\XferType[0] ), 
         .Z(n3637)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((C+(D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(119[27:62])
    defparam i2_2_lut_4_lut.init = 16'h00ac;
    LUT4 n359_bdd_3_lut_3233 (.A(A_out_1), .B(Length[9]), .C(A_out_0), 
         .Z(n3488)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n359_bdd_3_lut_3233.init = 16'hfefe;
    LUT4 mux_177_i6_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_5), .D(CAOut_7__N_281[5]), 
         .Z(n307[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX CAWritten_14__611 (.D(D_out_6), .SP(PHI2_N_571_enable_64), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_14__611.GSR = "ENABLED";
    LUT4 mux_177_i3_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_2), .D(CAOut_7__N_281[2]), 
         .Z(n307[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i3_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_7__586 (.D(n307[7]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_7__586.GSR = "ENABLED";
    LUT4 mux_177_i2_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_1), .D(CAOut_7__N_281[1]), 
         .Z(n307[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_177_i1_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_0), .D(CAOut_7__N_281[0]), 
         .Z(n307[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 EndBlock_bdd_3_lut_3410 (.A(EndBlock), .B(DF01Reserved6), .C(A_out_0), 
         .Z(n3822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam EndBlock_bdd_3_lut_3410.init = 16'hcaca;
    LUT4 mux_182_i3_3_lut_4_lut (.A(n3667), .B(n2264), .C(D_out_2), .D(n303[2]), 
         .Z(n312[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_182_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_182_i2_3_lut_4_lut (.A(n3667), .B(n2264), .C(D_out_1), .D(n303[1]), 
         .Z(n312[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_182_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_182_i1_3_lut_4_lut (.A(n3667), .B(n2264), .C(D_out_0), .D(n303[0]), 
         .Z(n312[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_182_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 EndBlock_bdd_3_lut_3405 (.A(CA[6]), .B(A_out_0), .C(CA[14]), 
         .Z(n3821)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam EndBlock_bdd_3_lut_3405.init = 16'he2e2;
    LUT4 mux_176_i3_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_2), .D(CAOut_15__N_234[2]), 
         .Z(n306[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i3_3_lut_4_lut.init = 16'hfb40;
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2888), .COUT(n2889), .S0(Length_7__N_443[3]), 
          .S1(Length_7__N_443[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 mux_755_i6_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[13]), 
         .D(Length_15__N_396[5]), .Z(n928[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3193_2_lut (.A(A_out_3), .B(A_out_2), .Z(n3346)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i3193_2_lut.init = 16'heeee;
    LUT4 n3819_bdd_3_lut (.A(n3819), .B(IncMode[0]), .C(A_out_1), .Z(n3820)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3819_bdd_3_lut.init = 16'hcaca;
    LUT4 Length_14__bdd_3_lut_3455 (.A(Length[14]), .B(A_out_0), .C(EndBlockMask), 
         .Z(n3819)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Length_14__bdd_3_lut_3455.init = 16'he2e2;
    FD1P3IX DF01Reserved32__i2 (.D(D_out_2), .SP(PHI2_N_571_enable_76), 
            .CD(n3926), .CK(PHI2_N_571), .Q(DF01Reserved32[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved32__i2.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__646 (.D(D_out_3), .SP(PHI2_N_571_enable_67), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_11__646.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__645 (.D(D_out_4), .SP(PHI2_N_571_enable_67), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_12__645.GSR = "ENABLED";
    FD1P3IX REUAWritten_13__644 (.D(D_out_5), .SP(PHI2_N_571_enable_67), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_13__644.GSR = "ENABLED";
    PFUMX i3083 (.BLUT(n352[3]), .ALUT(n3310), .C0(n3666), .Z(n3311));
    FD1P3IX REUAWritten_5__628 (.D(D_out_5), .SP(PHI2_N_571_enable_43), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_5__628.GSR = "ENABLED";
    LUT4 mux_176_i4_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_3), .D(CAOut_15__N_234[3]), 
         .Z(n306[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i4_3_lut_4_lut.init = 16'hfb40;
    PFUMX i3086 (.BLUT(n352[4]), .ALUT(n3313), .C0(n3666), .Z(n3314));
    LUT4 mux_176_i5_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_4), .D(CAOut_15__N_234[4]), 
         .Z(n306[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_97)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(218[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    FD1P3IX REUAWritten_18__658 (.D(D_out_2), .SP(PHI2_N_571_enable_74), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_18__658.GSR = "ENABLED";
    PFUMX i3089 (.BLUT(n352[5]), .ALUT(n3316), .C0(n3666), .Z(n3317));
    FD1S3IX CA_6__587 (.D(n307[6]), .CK(PHI2_N_571), .CD(n3925), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_6__587.GSR = "ENABLED";
    LUT4 mux_176_i6_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_5), .D(CAOut_15__N_234[5]), 
         .Z(n306[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 n360_bdd_3_lut_3240 (.A(Length[8]), .B(A_out_1), .C(A_out_0), 
         .Z(n3494)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n360_bdd_3_lut_3240.init = 16'hfefe;
    LUT4 mux_176_i7_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_6), .D(CAOut_15__N_234[6]), 
         .Z(n306[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_176_i8_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_7), .D(CAOut_15__N_234[7]), 
         .Z(n306[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 n3459_bdd_3_lut (.A(n3686), .B(n3921), .C(A_out_0), .Z(n3460)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3459_bdd_3_lut.init = 16'hcaca;
    FD1S3IX CA_5__588 (.D(n307[5]), .CK(PHI2_N_571), .CD(n3925), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_5__588.GSR = "ENABLED";
    FD1S3IX CA_4__589 (.D(n307[4]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_4__589.GSR = "ENABLED";
    FD1S3IX CA_3__590 (.D(n307[3]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_3__590.GSR = "ENABLED";
    FD1S3IX CA_2__591 (.D(n307[2]), .CK(PHI2_N_571), .CD(n3925), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_2__591.GSR = "ENABLED";
    FD1S3IX CA_1__592 (.D(n307[1]), .CK(PHI2_N_571), .CD(n3925), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_1__592.GSR = "ENABLED";
    FD1S3IX CA_0__593 (.D(n307[0]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CA_0__593.GSR = "ENABLED";
    FD1S3IX CA_15__602 (.D(n306[7]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_15__602.GSR = "ENABLED";
    LUT4 XferType_1__I_0_i2_3_lut_rep_64_4_lut (.A(n3663), .B(n3651), .C(D_out_1), 
         .D(XferType[1]), .Z(n3641)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i2_3_lut_rep_64_4_lut.init = 16'hfe10;
    LUT4 mux_176_i2_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_1), .D(CAOut_15__N_234[1]), 
         .Z(n306[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_176_i1_3_lut_4_lut (.A(n3651), .B(n3668), .C(D_out_0), .D(CAOut_15__N_234[0]), 
         .Z(n306[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i1_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUAWritten_0__633 (.D(D_out_0), .SP(PHI2_N_571_enable_43), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_0__633.GSR = "ENABLED";
    LUT4 Length_5__I_104_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_5), 
         .D(n927[5]), .Z(Length_5__N_451)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_104_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_1__I_112_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_1), 
         .D(n927[1]), .Z(Length_1__N_471)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_112_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX Fault_579 (.D(n3923), .SP(SetFault), .CD(n1171), .CK(PHI2_N_571), 
            .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam Fault_579.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(IncMode[0]), .B(REUA[0]), .C(REUA[2]), .D(REUA[7]), 
         .Z(n17)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7_4_lut.init = 16'h4000;
    LUT4 Length_6__I_102_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_6), 
         .D(n927[6]), .Z(Length_6__N_446)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_102_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_4__I_106_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_4), 
         .D(n927[4]), .Z(Length_4__N_456)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_106_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_0__I_114_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_0), 
         .D(n927[0]), .Z(Length_0__N_476)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_114_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_3__I_108_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_3), 
         .D(n927[3]), .Z(Length_3__N_461)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_108_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_7__I_100_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_7), 
         .D(n927[7]), .Z(Length_7__N_440)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_100_3_lut_4_lut.init = 16'hfb40;
    LUT4 Length_2__I_110_3_lut_4_lut (.A(n2264), .B(n3668), .C(D_out_2), 
         .D(n927[2]), .Z(Length_2__N_466)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_110_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX CAWritten_15__610 (.D(D_out_7), .SP(PHI2_N_571_enable_64), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_15__610.GSR = "ENABLED";
    FD1P3IX CAWritten_0__601 (.D(D_out_0), .SP(PHI2_N_571_enable_69), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_0__601.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n3655), .B(A_out_3), .C(A_out_2), .D(A_out_4), 
         .Z(n2264)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut.init = 16'hffef;
    FD1S3IX CA_14__603 (.D(n306[6]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_14__603.GSR = "ENABLED";
    LUT4 mux_175_i8_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_7), .D(REUAOut_7__N_193[7]), 
         .Z(n305[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_177_i7_3_lut_4_lut (.A(n3667), .B(n3651), .C(D_out_6), .D(CAOut_7__N_281[6]), 
         .Z(n307[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_177_i7_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_13__604 (.D(n306[5]), .CK(PHI2_N_571), .CD(n3925), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_13__604.GSR = "ENABLED";
    FD1S3IX CA_12__605 (.D(n306[4]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_12__605.GSR = "ENABLED";
    FD1S3IX CA_11__606 (.D(n306[3]), .CK(PHI2_N_571), .CD(n3925), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_11__606.GSR = "ENABLED";
    FD1S3IX CA_10__607 (.D(n306[2]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_10__607.GSR = "ENABLED";
    FD1S3IX CA_9__608 (.D(n306[1]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_9__608.GSR = "ENABLED";
    FD1S3IX CA_8__609 (.D(n306[0]), .CK(PHI2_N_571), .CD(n3926), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CA_8__609.GSR = "ENABLED";
    FD1S3IX REUA_7__618 (.D(n305[7]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_7__618.GSR = "ENABLED";
    FD1P3IX CAWritten_1__600 (.D(D_out_1), .SP(PHI2_N_571_enable_69), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_1__600.GSR = "ENABLED";
    LUT4 XferType_1__I_0_i1_3_lut_4_lut (.A(n3663), .B(n3651), .C(D_out_0), 
         .D(XferType[0]), .Z(\XferType[0] )) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam XferType_1__I_0_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_15__642 (.D(D_out_7), .SP(PHI2_N_571_enable_67), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_15__642.GSR = "ENABLED";
    FD1P3AX FF00DecodeEN_583 (.D(n3234), .SP(PHI2_N_571_enable_57), .CK(PHI2_N_571), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam FF00DecodeEN_583.GSR = "ENABLED";
    LUT4 mux_175_i7_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_6), .D(REUAOut_7__N_193[6]), 
         .Z(n305[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_8__692 (.D(n1240), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_8__692.GSR = "ENABLED";
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_571_enable_77), .CD(n3925), 
            .CK(PHI2_N_571), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 237[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 n360_bdd_4_lut (.A(n340[0]), .B(XferType[0]), .C(A_out_1), .D(A_out_0), 
         .Z(n3497)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n360_bdd_4_lut.init = 16'haca0;
    FD1P3IX REUA_20__653 (.D(D_out_4), .SP(PHI2_N_571_enable_74), .CD(n3926), 
            .CK(PHI2_N_571), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_20__653.GSR = "ENABLED";
    FD1P3IX REUA_21__652 (.D(D_out_5), .SP(PHI2_N_571_enable_74), .CD(n3926), 
            .CK(PHI2_N_571), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_21__652.GSR = "ENABLED";
    LUT4 mux_175_i6_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_5), .D(REUAOut_7__N_193[5]), 
         .Z(n305[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_9__691 (.D(n1238), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_9__691.GSR = "ENABLED";
    LUT4 mux_175_i5_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_4), .D(REUAOut_7__N_193[4]), 
         .Z(n305[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_1__632 (.D(D_out_1), .SP(PHI2_N_571_enable_43), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_1__632.GSR = "ENABLED";
    LUT4 mux_175_i4_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_3), .D(REUAOut_7__N_193[3]), 
         .Z(n305[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i4_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_6__619 (.D(n305[6]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_6__619.GSR = "ENABLED";
    LUT4 Execute_I_0_4_lut (.A(n33), .B(D_out_4), .C(n34), .D(n3642), 
         .Z(Execute)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(242[2] 245[45])
    defparam Execute_I_0_4_lut.init = 16'heca0;
    LUT4 mux_175_i3_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_2), .D(REUAOut_7__N_193[2]), 
         .Z(n305[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_175_i2_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_1), .D(REUAOut_7__N_193[1]), 
         .Z(n305[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i2_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_5__620 (.D(n305[5]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_5__620.GSR = "ENABLED";
    FD1S3IX REUA_4__621 (.D(n305[4]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_4__621.GSR = "ENABLED";
    FD1S3IX REUA_3__622 (.D(n305[3]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_3__622.GSR = "ENABLED";
    FD1S3IX REUA_2__623 (.D(n305[2]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_2__623.GSR = "ENABLED";
    FD1S3IX REUA_1__624 (.D(n305[1]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_1__624.GSR = "ENABLED";
    FD1S3IX REUA_0__625 (.D(n305[0]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUA_0__625.GSR = "ENABLED";
    LUT4 mux_175_i1_3_lut_4_lut (.A(n3665), .B(n2264), .C(D_out_0), .D(REUAOut_7__N_193[0]), 
         .Z(n305[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_175_i1_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_15__634 (.D(n304[7]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_15__634.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__690 (.D(n1236), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_10__690.GSR = "ENABLED";
    LUT4 i265_2_lut_rep_63_3_lut_4_lut (.A(n3655), .B(n3654), .C(n3924), 
         .D(n3663), .Z(PHI2_N_571_enable_76)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i265_2_lut_rep_63_3_lut_4_lut.init = 16'hf0f1;
    FD1P3IX REUAWritten_14__643 (.D(D_out_6), .SP(PHI2_N_571_enable_67), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_14__643.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__689 (.D(n1234), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_11__689.GSR = "ENABLED";
    LUT4 mux_755_i7_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[14]), 
         .D(Length_15__N_396[6]), .Z(n928[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i7_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX LengthWritten_12__688 (.D(n1232), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_12__688.GSR = "ENABLED";
    LUT4 i3177_2_lut_3_lut_4_lut (.A(n3655), .B(n3654), .C(n1232), .D(n3663), 
         .Z(n3234)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3177_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 Length_15__I_83_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_7), 
         .D(n928[7]), .Z(Length_15__N_393)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_83_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_755_i8_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[15]), 
         .D(Length_15__N_396[7]), .Z(n928[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i8_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX CAWritten_2__599 (.D(D_out_2), .SP(PHI2_N_571_enable_69), .CD(n3925), 
            .CK(PHI2_N_571), .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_2__599.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(n3655), .B(n3654), .C(D_out_7), 
         .D(n3663), .Z(n3642)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'h0010;
    FD1P3IX CAWritten_3__598 (.D(D_out_3), .SP(PHI2_N_571_enable_69), .CD(n3925), 
            .CK(PHI2_N_571), .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_3__598.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3663), .B(n3651), .C(n3924), .D(D_out_7), 
         .Z(n3112)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i282_2_lut_3_lut_4_lut (.A(n3655), .B(n3654), .C(n3924), .D(n3667), 
         .Z(PHI2_N_571_enable_69)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i282_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3IX EndBlock_578 (.D(n3327), .SP(IncCA_N_631), .CD(n1171), .CK(PHI2_N_571), 
            .Q(EndBlock)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam EndBlock_578.GSR = "ENABLED";
    LUT4 n359_bdd_3_lut_3306_4_lut (.A(A_out_3), .B(A_out_1), .C(n364[1]), 
         .D(n352[1]), .Z(n3490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n359_bdd_3_lut_3306_4_lut.init = 16'hf1e0;
    FD1P3AX LengthWritten_13__687 (.D(n1230), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_13__687.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__686 (.D(n1228), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_14__686.GSR = "ENABLED";
    PFUMX i3087 (.BLUT(n324[5]), .ALUT(n340[5]), .C0(A_out_1), .Z(n3315));
    FD1P3AX LengthWritten_15__685 (.D(n1226), .SP(PHI2_N_571_enable_31), 
            .CK(PHI2_N_571), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam LengthWritten_15__685.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__676 (.D(n1240), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_0__676.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__631 (.D(D_out_2), .SP(PHI2_N_571_enable_43), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_2__631.GSR = "ENABLED";
    FD1S3IX REUA_14__635 (.D(n304[6]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_14__635.GSR = "ENABLED";
    FD1S3IX REUA_13__636 (.D(n304[5]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_13__636.GSR = "ENABLED";
    FD1S3IX REUA_12__637 (.D(n304[4]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_12__637.GSR = "ENABLED";
    FD1S3IX REUA_11__638 (.D(n304[3]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_11__638.GSR = "ENABLED";
    FD1S3IX REUA_10__639 (.D(n304[2]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_10__639.GSR = "ENABLED";
    FD1S3IX REUA_9__640 (.D(n304[1]), .CK(PHI2_N_571), .CD(n3925), .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_9__640.GSR = "ENABLED";
    FD1S3IX REUA_8__641 (.D(n304[0]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUA_8__641.GSR = "ENABLED";
    LUT4 i2203_4_lut (.A(A_out_4), .B(A_out_3), .C(n3668), .D(A_out_2), 
         .Z(n2088)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i2203_4_lut.init = 16'heeea;
    FD1P3IX REUAWritten_3__630 (.D(D_out_3), .SP(PHI2_N_571_enable_43), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_3__630.GSR = "ENABLED";
    LUT4 i302_2_lut_3_lut_4_lut (.A(n3655), .B(n3654), .C(n3924), .D(n3668), 
         .Z(PHI2_N_571_enable_64)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i302_2_lut_3_lut_4_lut.init = 16'hf1f0;
    PFUMX i3084 (.BLUT(n324[4]), .ALUT(n340[4]), .C0(A_out_1), .Z(n3312));
    LUT4 i955_4_lut (.A(n3656), .B(n3924), .C(n3665), .D(n3654), .Z(n1171)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(81[8] 92[4])
    defparam i955_4_lut.init = 16'hccce;
    FD1S3IX XferType__i0 (.D(\XferType[0] ), .CK(PHI2_N_571), .CD(n3926), 
            .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam XferType__i0.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__629 (.D(D_out_4), .SP(PHI2_N_571_enable_43), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_4__629.GSR = "ENABLED";
    FD1P3IX REUAWritten_6__627 (.D(D_out_6), .SP(PHI2_N_571_enable_43), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_6__627.GSR = "ENABLED";
    FD1P3IX REUAWritten_16__660 (.D(D_out_0), .SP(PHI2_N_571_enable_74), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUAWritten_16__660.GSR = "ENABLED";
    FD1P3IX IntEnable_693 (.D(D_out_7), .SP(PHI2_N_571_enable_42), .CD(n3925), 
            .CK(PHI2_N_571), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam IntEnable_693.GSR = "ENABLED";
    FD1S3IX REUA_18__655 (.D(n312[2]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_18__655.GSR = "ENABLED";
    FD1S3IX REUA_17__656 (.D(n312[1]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_17__656.GSR = "ENABLED";
    FD1S3IX REUA_16__657 (.D(n312[0]), .CK(PHI2_N_571), .CD(n3926), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_16__657.GSR = "ENABLED";
    FD1P3IX CAWritten_12__613 (.D(D_out_4), .SP(PHI2_N_571_enable_64), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_12__613.GSR = "ENABLED";
    PFUMX i3081 (.BLUT(n324[3]), .ALUT(n340[3]), .C0(A_out_1), .Z(n3309));
    FD1P3AX LengthWritten_1__675 (.D(n1238), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_1__675.GSR = "ENABLED";
    FD1P3IX EndBlockMask_694 (.D(D_out_6), .SP(PHI2_N_571_enable_42), .CD(n3925), 
            .CK(PHI2_N_571), .Q(EndBlockMask)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam EndBlockMask_694.GSR = "ENABLED";
    LUT4 mux_219_i8_3_lut (.A(n3326), .B(n409[7]), .C(A_out_3), .Z(n430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_219_i8_3_lut.init = 16'hcaca;
    LUT4 mux_215_i8_3_lut (.A(n376[7]), .B(IncMode[1]), .C(A_out_1), .Z(n409[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_215_i8_3_lut.init = 16'hcaca;
    LUT4 mux_206_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n376[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_206_i8_3_lut.init = 16'hcaca;
    FD1P3IX FaultMask_695 (.D(D_out_5), .SP(PHI2_N_571_enable_42), .CD(n3925), 
            .CK(PHI2_N_571), .Q(FaultMask)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(220[8] 230[4])
    defparam FaultMask_695.GSR = "ENABLED";
    FD1P3IX REUAWritten_7__626 (.D(D_out_7), .SP(PHI2_N_571_enable_43), 
            .CD(n3925), .CK(PHI2_N_571), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(150[8] 162[4])
    defparam REUAWritten_7__626.GSR = "ENABLED";
    FD1P3JX Length_4__664 (.D(Length_4__N_456), .SP(PHI2_N_571_enable_75), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_4__664.GSR = "ENABLED";
    FD1P3IX CAWritten_8__617 (.D(D_out_0), .SP(PHI2_N_571_enable_64), .CD(n3925), 
            .CK(PHI2_N_571), .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_8__617.GSR = "ENABLED";
    LUT4 i2190_2_lut_rep_67_4_lut (.A(A_out_3), .B(n3662), .C(n3655), 
         .D(n3665), .Z(n3644)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i2190_2_lut_rep_67_4_lut.init = 16'hfffd;
    FD1P3JX Length_5__663 (.D(Length_5__N_451), .SP(PHI2_N_571_enable_75), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_5__663.GSR = "ENABLED";
    LUT4 n326_bdd_4_lut_3265 (.A(n352[6]), .B(Length[6]), .C(A_out_1), 
         .D(A_out_0), .Z(n3502)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam n326_bdd_4_lut_3265.init = 16'hcafa;
    LUT4 n359_bdd_4_lut (.A(n340[1]), .B(XferType[1]), .C(A_out_1), .D(A_out_0), 
         .Z(n3491)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n359_bdd_4_lut.init = 16'haca0;
    LUT4 i2186_2_lut_rep_66_3_lut_4_lut (.A(A_out_3), .B(n3662), .C(n3663), 
         .D(n3655), .Z(n3643)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i2186_2_lut_rep_66_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_754_i5_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[4]), 
         .D(Length_7__N_443[4]), .Z(n927[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 Length_8__I_97_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_0), 
         .D(n928[0]), .Z(Length_8__N_435)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_97_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_2__674 (.D(n1236), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_2__674.GSR = "ENABLED";
    LUT4 Length_9__I_95_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_1), 
         .D(n928[1]), .Z(Length_9__N_430)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_95_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUA_22__651 (.D(D_out_6), .SP(PHI2_N_571_enable_74), .CD(n3925), 
            .CK(PHI2_N_571), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_22__651.GSR = "ENABLED";
    LUT4 i2188_2_lut_rep_69_3_lut_4_lut (.A(A_out_3), .B(n3662), .C(n3667), 
         .D(n3655), .Z(n3646)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i2188_2_lut_rep_69_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX REUA_23__650 (.D(D_out_7), .SP(PHI2_N_571_enable_74), .CD(n3925), 
            .CK(PHI2_N_571), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_23__650.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_71_3_lut_4_lut (.A(A_out_3), .B(n3662), .C(n3668), 
         .D(n3655), .Z(n3648)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_71_3_lut_4_lut.init = 16'h0010;
    FD1P3IX CAWritten_4__597 (.D(D_out_4), .SP(PHI2_N_571_enable_69), .CD(n3925), 
            .CK(PHI2_N_571), .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_4__597.GSR = "ENABLED";
    LUT4 Length_10__I_93_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_2), 
         .D(n928[2]), .Z(Length_10__N_425)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_93_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_754_i8_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[7]), 
         .D(Length_7__N_443[7]), .Z(n927[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3185_4_lut (.A(n17_adj_666), .B(n30), .C(n26), .D(n18), .Z(Length1_N_645)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i3185_4_lut.init = 16'h0001;
    LUT4 mux_194_i1_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n340[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i1_3_lut.init = 16'hcaca;
    LUT4 mux_754_i3_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[2]), 
         .D(Length_7__N_443[2]), .Z(n927[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i781_2_lut_rep_58 (.A(REUA[16]), .B(REUAOut_18__N_130), .Z(n3635)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam i781_2_lut_rep_58.init = 16'h8888;
    FD1P3AX LengthWritten_3__673 (.D(n1234), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_3__673.GSR = "ENABLED";
    LUT4 i19_4_lut (.A(n2088), .B(\RAMRDD[2] ), .C(DMA), .D(n3460), 
         .Z(\Dout[2] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i19_4_lut.init = 16'hcfca;
    FD1P3JX Length_6__662 (.D(Length_6__N_446), .SP(PHI2_N_571_enable_75), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_6__662.GSR = "ENABLED";
    FD1P3JX Length_7__661 (.D(Length_7__N_440), .SP(PHI2_N_571_enable_75), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_7__661.GSR = "ENABLED";
    LUT4 Length_11__I_91_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_3), 
         .D(n928[3]), .Z(Length_11__N_420)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_91_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_194_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n340[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i2_3_lut.init = 16'hcaca;
    FD1P3JX Length_0__668 (.D(Length_0__N_476), .SP(PHI2_N_571_enable_75), 
            .PD(n3926), .CK(PHI2_N_571), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_0__668.GSR = "ENABLED";
    LUT4 mux_754_i4_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[3]), 
         .D(Length_7__N_443[3]), .Z(n927[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i4_3_lut_4_lut.init = 16'hf4b0;
    FD1P3JX Length_1__667 (.D(Length_1__N_471), .SP(PHI2_N_571_enable_75), 
            .PD(n3926), .CK(PHI2_N_571), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_1__667.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(Length[0]), .B(Length[10]), .Z(n17_adj_666)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i789_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_130), .C(REUA[17]), 
         .Z(n961)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam i789_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_194_i4_3_lut (.A(CA[3]), .B(CA[11]), .C(A_out_0), .Z(n340[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i4_3_lut.init = 16'hcaca;
    LUT4 mux_173_i3_4_lut (.A(REUA[18]), .B(REUAWritten[18]), .C(n3636), 
         .D(n961), .Z(n303[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_173_i3_4_lut.init = 16'hc5ca;
    LUT4 i2133_2_lut (.A(DF01Reserved32[3]), .B(A_out_0), .Z(n324[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i2133_2_lut.init = 16'h8888;
    FD1P3AX ExecuteEN_580 (.D(n3112), .SP(PHI2_N_571_enable_57), .CK(PHI2_N_571), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam ExecuteEN_580.GSR = "ENABLED";
    LUT4 i2089_2_lut (.A(D_out_4), .B(n3924), .Z(n1232)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2089_2_lut.init = 16'heeee;
    LUT4 Length_12__I_89_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_4), 
         .D(n928[4]), .Z(Length_12__N_415)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_89_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_4__672 (.D(n1232), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_4__672.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_147), .B0(REUAOut_15__N_149), 
          .C0(REUAWritten[8]), .D0(REUA[8]), .A1(GND_net), .B1(REUAOut_15__N_149), 
          .C1(REUAWritten[9]), .D1(REUA[9]), .CIN(n2918), .COUT(n2919), 
          .S0(REUAOut_15__N_146[0]), .S1(REUAOut_15__N_146[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    LUT4 mux_186_i8_3_lut (.A(n3658), .B(ExecuteEN), .C(A_out_0), .Z(n324[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_186_i8_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(n15), .B(n13), .C(REUA[11]), .D(n10), .Z(REUAOut_18__N_130)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 IntEnable_I_0_842_4_lut_rep_81 (.A(IntEnable), .B(EndBlock), .C(IRQ_N_536), 
         .D(EndBlockMask), .Z(n3658)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[14:79])
    defparam IntEnable_I_0_842_4_lut_rep_81.init = 16'ha8a0;
    PFUMX i3462 (.BLUT(n3919), .ALUT(n3920), .C0(A_out_1), .Z(n3921));
    LUT4 IRQ_I_0_1_lut_4_lut (.A(IntEnable), .B(EndBlock), .C(IRQ_N_536), 
         .D(EndBlockMask), .Z(nIRQ_c)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[14:79])
    defparam IRQ_I_0_1_lut_4_lut.init = 16'h575f;
    LUT4 i14_4_lut (.A(Length[14]), .B(n28), .C(n22_c), .D(Length[7]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(Length[9]), .B(Length[3]), .C(Length[2]), .D(Length[15]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 mux_194_i5_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n340[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i5_3_lut.init = 16'hcaca;
    LUT4 i2109_2_lut (.A(D_out_0), .B(n3924), .Z(n1240)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2109_2_lut.init = 16'heeee;
    LUT4 i2_2_lut (.A(Length[11]), .B(Length[8]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_165 (.A(n1382), .B(IncMode[1]), .Z(IncCAg)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_165.init = 16'h2222;
    LUT4 i12_4_lut (.A(Length[1]), .B(Length[13]), .C(Length[6]), .D(Length[4]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i12_4_lut.init = 16'hfffe;
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3636), .B1(n3650), .C1(GND_net), .D1(GND_net), 
          .COUT(n2918));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i2195_2_lut (.A(FF00DecodeEN), .B(A_out_0), .Z(n324[4])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2195_2_lut.init = 16'h7777;
    LUT4 mux_194_i6_3_lut (.A(CA[5]), .B(CA[13]), .C(A_out_0), .Z(n340[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i6_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_5__671 (.D(n1230), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_5__671.GSR = "ENABLED";
    LUT4 mux_186_i6_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n324[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_186_i6_3_lut.init = 16'hcaca;
    LUT4 i6_2_lut (.A(Length[12]), .B(Length[5]), .Z(n22_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[18:38])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 Fault_I_0_837_2_lut (.A(Fault), .B(FaultMask), .Z(IRQ_N_536)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(231[58:78])
    defparam Fault_I_0_837_2_lut.init = 16'h8888;
    L6MUX21 i3243 (.D0(n3498), .D1(n3495), .SD(A_out_3), .Z(n3499));
    LUT4 n11_bdd_4_lut_3208_4_lut_then_4_lut (.A(A_out_3), .B(A_out_2), 
         .C(Length[2]), .D(CA[10]), .Z(n3920)) /* synthesis lut_function=(A+(B (C)+!B (D))) */ ;
    defparam n11_bdd_4_lut_3208_4_lut_then_4_lut.init = 16'hfbea;
    LUT4 n11_bdd_4_lut_3208_4_lut_else_4_lut (.A(A_out_3), .B(A_out_2), 
         .C(REUA[10]), .D(DF01Reserved32[2]), .Z(n3919)) /* synthesis lut_function=(A+(B (C)+!B (D))) */ ;
    defparam n11_bdd_4_lut_3208_4_lut_else_4_lut.init = 16'hfbea;
    LUT4 mux_755_i2_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[9]), 
         .D(Length_15__N_396[1]), .Z(n928[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i2_3_lut_4_lut.init = 16'hf1e0;
    FD1P3IX CAWritten_5__596 (.D(D_out_5), .SP(PHI2_N_571_enable_69), .CD(n3925), 
            .CK(PHI2_N_571), .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_5__596.GSR = "ENABLED";
    FD1P3IX CAWritten_9__616 (.D(D_out_1), .SP(PHI2_N_571_enable_64), .CD(n3925), 
            .CK(PHI2_N_571), .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_9__616.GSR = "ENABLED";
    LUT4 i2126_4_lut (.A(Length[13]), .B(A_out_1), .C(FaultMask), .D(A_out_0), 
         .Z(n409[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i2126_4_lut.init = 16'hfcee;
    FD1P3IX CAWritten_10__615 (.D(D_out_2), .SP(PHI2_N_571_enable_64), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_10__615.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(REUA[15]), .B(REUA[14]), .C(REUA[8]), .D(REUA[12]), 
         .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    FD1P3IX CAWritten_11__614 (.D(D_out_3), .SP(PHI2_N_571_enable_64), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(135[8] 147[4])
    defparam CAWritten_11__614.GSR = "ENABLED";
    LUT4 Length_13__I_87_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_5), 
         .D(n928[5]), .Z(Length_13__N_410)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_87_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_8__649 (.D(D_out_0), .SP(PHI2_N_571_enable_67), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_8__649.GSR = "ENABLED";
    FD1P3IX REUAWritten_9__648 (.D(D_out_1), .SP(PHI2_N_571_enable_67), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_9__648.GSR = "ENABLED";
    FD1P3IX REUAWritten_10__647 (.D(D_out_2), .SP(PHI2_N_571_enable_67), 
            .CD(n3926), .CK(PHI2_N_571), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(163[8] 175[4])
    defparam REUAWritten_10__647.GSR = "ENABLED";
    FD1P3IX CAWritten_6__595 (.D(D_out_6), .SP(PHI2_N_571_enable_69), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_6__595.GSR = "ENABLED";
    LUT4 i4_2_lut (.A(REUA[13]), .B(REUA[9]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    FD1P3IX CAWritten_7__594 (.D(D_out_7), .SP(PHI2_N_571_enable_69), .CD(n3926), 
            .CK(PHI2_N_571), .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(122[8] 134[4])
    defparam CAWritten_7__594.GSR = "ENABLED";
    FD1P3IX DF01Reserved6_581 (.D(D_out_6), .SP(PHI2_N_571_enable_76), .CD(n3926), 
            .CK(PHI2_N_571), .Q(DF01Reserved6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved6_581.GSR = "ENABLED";
    FD1P3AX LengthWritten_6__670 (.D(n1228), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_6__670.GSR = "ENABLED";
    FD1P3JX Length_2__666 (.D(Length_2__N_466), .SP(PHI2_N_571_enable_75), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_2__666.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__669 (.D(n1226), .SP(PHI2_N_571_enable_73), 
            .CK(PHI2_N_571), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_7__669.GSR = "ENABLED";
    FD1P3IX REUA_19__654 (.D(D_out_3), .SP(PHI2_N_571_enable_74), .CD(n3926), 
            .CK(PHI2_N_571), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(176[8] 189[4])
    defparam REUA_19__654.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_166 (.A(REUA[10]), .B(REUAOut_15__N_147), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_166.init = 16'h8888;
    LUT4 Length_14__I_85_3_lut_4_lut (.A(n3665), .B(n3652), .C(D_out_6), 
         .D(n928[6]), .Z(Length_14__N_405)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_85_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_754_i2_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[1]), 
         .D(Length_7__N_443[1]), .Z(n927[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i2_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_202_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n364[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_202_i2_3_lut.init = 16'hcaca;
    PFUMX i3241 (.BLUT(n3497), .ALUT(n3496), .C0(A_out_2), .Z(n3498));
    LUT4 mux_755_i1_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[8]), 
         .D(Length_15__N_396[0]), .Z(n928[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_754_i6_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[5]), 
         .D(Length_7__N_443[5]), .Z(n927[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i6_3_lut_4_lut.init = 16'hf4b0;
    FD1P3JX Length_3__665 (.D(Length_3__N_461), .SP(PHI2_N_571_enable_75), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_3__665.GSR = "ENABLED";
    LUT4 i5_2_lut (.A(REUA[1]), .B(REUA[3]), .Z(n15_adj_667)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i2049_2_lut (.A(D_out_1), .B(n3924), .Z(n1238)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2049_2_lut.init = 16'heeee;
    PFUMX i3238 (.BLUT(n352[0]), .ALUT(n3494), .C0(n3666), .Z(n3495));
    LUT4 mux_202_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n364[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_202_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_167 (.A(REUA[6]), .B(IncREUA), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_167.init = 16'h8888;
    CCU2D Length_15__I_0_833_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2926), .S0(Length_15__N_396[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_833_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_9.INJECT1_1 = "NO";
    LUT4 mux_755_i3_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[10]), 
         .D(Length_15__N_396[2]), .Z(n928[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut_adj_168 (.A(REUA[5]), .B(REUA[4]), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_168.init = 16'h8888;
    FD1P3IX DF01Reserved32__i3 (.D(D_out_3), .SP(PHI2_N_571_enable_76), 
            .CD(n3926), .CK(PHI2_N_571), .Q(DF01Reserved32[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam DF01Reserved32__i3.GSR = "ENABLED";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_571_enable_77), .CD(RegReset), 
            .CK(PHI2_N_571), .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(234[8] 237[4])
    defparam IncMode__i1.GSR = "ENABLED";
    L6MUX21 i3098 (.D0(n3324), .D1(n3632), .SD(A_out_2), .Z(n3326));
    LUT4 mux_754_i7_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[6]), 
         .D(Length_7__N_443[6]), .Z(n927[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_rep_85 (.A(A_out_2), .B(A_out_4), .Z(n3662)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_85.init = 16'heeee;
    CCU2D Length_15__I_0_833_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2925), .COUT(n2926), .S0(Length_15__N_396[5]), 
          .S1(Length_15__N_396[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_7.INJECT1_1 = "NO";
    L6MUX21 i3236 (.D0(n3492), .D1(n3489), .SD(A_out_3), .Z(n3493));
    LUT4 i1_2_lut_rep_77_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n3654)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i1_2_lut_rep_77_3_lut.init = 16'hfefe;
    LUT4 mux_755_i4_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[11]), 
         .D(Length_15__N_396[3]), .Z(n928[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3060_2_lut_3_lut (.A(A_out_2), .B(A_out_4), .C(n7), .Z(n3288)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i3060_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_173_i2_4_lut (.A(REUA[17]), .B(REUAWritten[17]), .C(n3636), 
         .D(n3635), .Z(n303[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_173_i2_4_lut.init = 16'hc5ca;
    LUT4 i9_4_lut (.A(n17), .B(n15_adj_667), .C(n11), .D(n12), .Z(REUAOut_15__N_147)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_169 (.A(n15_adj_668), .B(n6), .C(n3924), .D(n3298), 
         .Z(PHI2_N_571_enable_86)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_169.init = 16'hfcfe;
    LUT4 i6_4_lut_adj_170 (.A(n1382), .B(Length[6]), .C(Length[4]), .D(Length[5]), 
         .Z(n15_adj_668)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i6_4_lut_adj_170.init = 16'h0002;
    LUT4 A_4__I_0_i6_2_lut_rep_86 (.A(A_out_0), .B(A_out_1), .Z(n3663)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam A_4__I_0_i6_2_lut_rep_86.init = 16'hdddd;
    LUT4 i498_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3652), .D(n3924), 
         .Z(PHI2_N_571_enable_42)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i498_3_lut_4_lut.init = 16'hff02;
    LUT4 mux_174_i8_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_7), .D(REUAOut_15__N_146[7]), 
         .Z(n304[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2146_2_lut_rep_68_3_lut (.A(A_out_0), .B(A_out_1), .C(n2264), 
         .Z(n3645)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i2146_2_lut_rep_68_3_lut.init = 16'hfdfd;
    LUT4 i366_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3924), 
         .D(n2264), .Z(PHI2_N_571_enable_67)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(76[2:14])
    defparam i366_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 mux_173_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(n3636), 
         .D(REUAOut_18__N_130), .Z(n303[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(187[18:34])
    defparam mux_173_i1_4_lut.init = 16'hc5ca;
    LUT4 i2_4_lut (.A(n3274), .B(n3634), .C(n3655), .D(A_out_3), .Z(n6)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i2_4_lut.init = 16'hcdcc;
    LUT4 i3070_4_lut (.A(n3282), .B(Length[1]), .C(Length[3]), .D(Length[0]), 
         .Z(n3298)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3070_4_lut.init = 16'hfffe;
    LUT4 mux_198_i6_3_lut (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), .Z(n352[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i6_3_lut.init = 16'hcaca;
    LUT4 i4_2_lut_2_lut (.A(A_out_0), .B(A_out_13), .Z(n22)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4_2_lut_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_adj_171 (.A(n1382), .B(PHI2_N_571_enable_73), .C(n3633), 
         .D(Length1_N_645), .Z(PHI2_N_571_enable_75)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_171.init = 16'hfcfe;
    FD1S3IX XferType__i1 (.D(n3641), .CK(PHI2_N_571), .CD(RegReset), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(96[8] 115[4])
    defparam XferType__i1.GSR = "ENABLED";
    PFUMX i3234 (.BLUT(n3491), .ALUT(n3490), .C0(A_out_2), .Z(n3492));
    LUT4 i3143_3_lut_4_lut_4_lut (.A(A_out_0), .B(n409[4]), .C(A_out_3), 
         .D(Length[4]), .Z(n3313)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i3143_3_lut_4_lut_4_lut.init = 16'hcfc5;
    PFUMX i3408 (.BLUT(n3824), .ALUT(n3820), .C0(A_out_3), .Z(n3825));
    CCU2D Length_15__I_0_833_add_2_5 (.A0(Length[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2924), .COUT(n2925), .S0(Length_15__N_396[3]), 
          .S1(Length_15__N_396[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_5.INJECT1_1 = "NO";
    LUT4 mux_198_i5_3_lut (.A(REUA[4]), .B(REUA[12]), .C(A_out_0), .Z(n352[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i5_3_lut.init = 16'hcaca;
    LUT4 Length_7__bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n352[7]), 
         .D(Length[7]), .Z(n3632)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;
    defparam Length_7__bdd_4_lut_4_lut.init = 16'hfc74;
    LUT4 i3054_2_lut (.A(Length[2]), .B(Length[7]), .Z(n3282)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3054_2_lut.init = 16'heeee;
    LUT4 mux_198_i4_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n352[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i4_3_lut.init = 16'hcaca;
    LUT4 n360_bdd_3_lut_3277_4_lut (.A(A_out_3), .B(A_out_1), .C(n364[0]), 
         .D(n352[0]), .Z(n3496)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n360_bdd_3_lut_3277_4_lut.init = 16'hf1e0;
    LUT4 A_4__I_0_733_i6_2_lut_rep_90 (.A(A_out_0), .B(A_out_1), .Z(n3667)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(69[2:14])
    defparam A_4__I_0_733_i6_2_lut_rep_90.init = 16'hbbbb;
    LUT4 mux_198_i7_3_lut (.A(REUA[6]), .B(REUA[14]), .C(A_out_0), .Z(n352[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i7_3_lut.init = 16'hcaca;
    LUT4 i2104_2_lut (.A(D_out_5), .B(n3924), .Z(n1230)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2104_2_lut.init = 16'heeee;
    LUT4 i3210_then_4_lut (.A(CA[2]), .B(A_out_3), .C(A_out_2), .D(REUA[18]), 
         .Z(n3685)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C (D)))) */ ;
    defparam i3210_then_4_lut.init = 16'hfece;
    LUT4 mux_754_i1_3_lut_4_lut (.A(n3636), .B(n3644), .C(LengthWritten[0]), 
         .D(Length_7__N_443[0]), .Z(n927[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(199[15:50])
    defparam mux_754_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i505_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3652), .D(n3924), 
         .Z(PHI2_N_571_enable_77)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i505_3_lut_4_lut.init = 16'hff04;
    LUT4 i3210_else_4_lut (.A(Length[10]), .B(A_out_3), .C(A_out_2), .D(REUA[2]), 
         .Z(n3684)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i3210_else_4_lut.init = 16'hb888;
    LUT4 i398_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3924), 
         .D(n2264), .Z(PHI2_N_571_enable_74)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(69[2:14])
    defparam i398_2_lut_3_lut_4_lut.init = 16'hf0f4;
    LUT4 i2069_2_lut_rep_91 (.A(A_out_1), .B(A_out_0), .Z(n3668)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2069_2_lut_rep_91.init = 16'h8888;
    LUT4 i3141_3_lut_4_lut_4_lut (.A(A_out_0), .B(n409[5]), .C(A_out_3), 
         .D(Length[5]), .Z(n3316)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i3141_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 i3145_3_lut_4_lut_4_lut (.A(A_out_0), .B(n409[3]), .C(A_out_3), 
         .D(Length[3]), .Z(n3310)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i3145_3_lut_4_lut_4_lut.init = 16'hcfc5;
    FD1P3JX Length_8__684 (.D(Length_8__N_435), .SP(PHI2_N_571_enable_86), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_8__684.GSR = "ENABLED";
    FD1P3JX Length_9__683 (.D(Length_9__N_430), .SP(PHI2_N_571_enable_86), 
            .PD(n3926), .CK(PHI2_N_571), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_9__683.GSR = "ENABLED";
    FD1P3JX Length_10__682 (.D(Length_10__N_425), .SP(PHI2_N_571_enable_86), 
            .PD(n3926), .CK(PHI2_N_571), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_10__682.GSR = "ENABLED";
    FD1P3JX Length_11__681 (.D(Length_11__N_420), .SP(PHI2_N_571_enable_86), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_11__681.GSR = "ENABLED";
    FD1P3JX Length_12__680 (.D(Length_12__N_415), .SP(PHI2_N_571_enable_86), 
            .PD(n3926), .CK(PHI2_N_571), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_12__680.GSR = "ENABLED";
    FD1P3JX Length_13__679 (.D(Length_13__N_410), .SP(PHI2_N_571_enable_86), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_13__679.GSR = "ENABLED";
    FD1P3JX Length_14__678 (.D(Length_14__N_405), .SP(PHI2_N_571_enable_86), 
            .PD(n3926), .CK(PHI2_N_571), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_14__678.GSR = "ENABLED";
    FD1P3JX Length_15__677 (.D(Length_15__N_393), .SP(PHI2_N_571_enable_86), 
            .PD(n3925), .CK(PHI2_N_571), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=62, LSE_LLINE=67, LSE_RLINE=76 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam Length_15__677.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_72_3_lut (.A(A_out_1), .B(A_out_0), .C(n2264), .Z(n3649)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_72_3_lut.init = 16'h0808;
    LUT4 mux_198_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n352[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i2_3_lut.init = 16'hcaca;
    LUT4 mux_174_i7_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_6), .D(REUAOut_15__N_146[6]), 
         .Z(n304[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_755_i5_3_lut_4_lut (.A(n3636), .B(n3649), .C(LengthWritten[12]), 
         .D(Length_15__N_396[4]), .Z(n928[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[15:50])
    defparam mux_755_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2106_2_lut (.A(D_out_6), .B(n3924), .Z(n1228)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2106_2_lut.init = 16'heeee;
    LUT4 mux_198_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n352[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_198_i1_3_lut.init = 16'hcaca;
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(REUAOut_7__N_194), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(REUAOut_7__N_194), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n2913), .S0(REUAOut_7__N_193[6]), .S1(REUAOut_7__N_193[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(REUAOut_7__N_194), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(REUAOut_7__N_194), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n2912), .COUT(n2913), .S0(REUAOut_7__N_193[4]), 
          .S1(REUAOut_7__N_193[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(REUAOut_7__N_194), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(REUAOut_7__N_194), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n2911), .COUT(n2912), .S0(REUAOut_7__N_193[2]), 
          .S1(REUAOut_7__N_193[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUAg), .B0(REUAOut_7__N_194), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(REUAOut_7__N_194), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n2910), .COUT(n2911), .S0(REUAOut_7__N_193[0]), 
          .S1(REUAOut_7__N_193[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3636), .B1(n3645), .C1(GND_net), .D1(GND_net), 
          .COUT(n2910));   // c:/users/garre/repos/gw4302/cpld/reg.v(160[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(CAOut_15__N_237), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(CAOut_15__N_237), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n2905), .S0(CAOut_15__N_234[6]), .S1(CAOut_15__N_234[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(CAOut_15__N_237), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(CAOut_15__N_237), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n2904), .COUT(n2905), .S0(CAOut_15__N_234[4]), 
          .S1(CAOut_15__N_234[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(CAOut_15__N_237), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(CAOut_15__N_237), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n2903), .COUT(n2904), .S0(CAOut_15__N_234[2]), 
          .S1(CAOut_15__N_234[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_235), .B0(CAOut_15__N_237), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(CAOut_15__N_237), .C1(CAWritten[9]), 
          .D1(CA[9]), .CIN(n2902), .COUT(n2903), .S0(CAOut_15__N_234[0]), 
          .S1(CAOut_15__N_234[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3636), .B1(n3646), .C1(GND_net), .D1(GND_net), .COUT(n2902));   // c:/users/garre/repos/gw4302/cpld/reg.v(145[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i2108_2_lut (.A(D_out_7), .B(n3924), .Z(n1226)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2108_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(A_out_1), .B(A_out_0), .C(n3924), 
         .D(n2264), .Z(PHI2_N_571_enable_73)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'hf0f8;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(CAOut_7__N_282), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(CAOut_7__N_282), .C1(CAWritten[7]), 
          .D1(CA[7]), .CIN(n2897), .S0(CAOut_7__N_281[6]), .S1(CAOut_7__N_281[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(CAOut_7__N_282), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(CAOut_7__N_282), .C1(CAWritten[5]), 
          .D1(CA[5]), .CIN(n2896), .COUT(n2897), .S0(CAOut_7__N_281[4]), 
          .S1(CAOut_7__N_281[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(CAOut_7__N_282), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(CAOut_7__N_282), .C1(CAWritten[3]), 
          .D1(CA[3]), .CIN(n2895), .COUT(n2896), .S0(CAOut_7__N_281[2]), 
          .S1(CAOut_7__N_281[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCAg), .B0(CAOut_7__N_282), .C0(CAWritten[0]), 
          .D0(CA[0]), .A1(GND_net), .B1(CAOut_7__N_282), .C1(CAWritten[1]), 
          .D1(CA[1]), .CIN(n2894), .COUT(n2895), .S0(CAOut_7__N_281[0]), 
          .S1(CAOut_7__N_281[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2887), .S1(Length_7__N_443[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2890), .S0(Length_7__N_443[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2887), .COUT(n2888), .S0(Length_7__N_443[1]), 
          .S1(Length_7__N_443[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3636), .B1(n3648), .C1(GND_net), .D1(GND_net), .COUT(n2894));   // c:/users/garre/repos/gw4302/cpld/reg.v(132[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2889), .COUT(n2890), .S0(Length_7__N_443[5]), 
          .S1(Length_7__N_443[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(202[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 mux_174_i6_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_5), .D(REUAOut_15__N_146[5]), 
         .Z(n304[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i6_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3231 (.BLUT(n352[1]), .ALUT(n3488), .C0(n3666), .Z(n3489));
    LUT4 mux_174_i5_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_4), .D(REUAOut_15__N_146[4]), 
         .Z(n304[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(Length[12]), .Z(n409[4])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_173 (.A(A_out_0), .B(A_out_1), .C(Length[11]), 
         .Z(n409[3])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam i1_2_lut_3_lut_adj_173.init = 16'hfefe;
    CCU2D Length_15__I_0_833_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2923), .COUT(n2924), .S0(Length_15__N_396[1]), 
          .S1(Length_15__N_396[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_833_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_3.INJECT1_1 = "NO";
    LUT4 i2076_2_lut (.A(D_out_2), .B(n3924), .Z(n1236)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2076_2_lut.init = 16'heeee;
    LUT4 A_4__I_0_825_i6_2_lut_rep_88 (.A(A_out_0), .B(A_out_1), .Z(n3665)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam A_4__I_0_825_i6_2_lut_rep_88.init = 16'heeee;
    LUT4 i3046_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(A_out_4), 
         .D(A_out_2), .Z(n3274)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i3046_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2088_2_lut (.A(D_out_3), .B(n3924), .Z(n1234)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(205[8] 217[4])
    defparam i2088_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut_adj_174 (.A(A_out_0), .B(A_out_1), .C(n3924), 
         .D(n3652), .Z(PHI2_N_571_enable_31)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i2_2_lut_3_lut_4_lut_adj_174.init = 16'hf0f1;
    LUT4 mux_174_i4_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_3), .D(REUAOut_15__N_146[3]), 
         .Z(n304[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 IncREUAg_I_126_2_lut (.A(IncMode[0]), .B(IncREUA), .Z(IncREUAg)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(61[17:39])
    defparam IncREUAg_I_126_2_lut.init = 16'h4444;
    LUT4 mux_174_i3_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_2), .D(REUAOut_15__N_146[2]), 
         .Z(n304[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9_4_lut_adj_175 (.A(n17_adj_670), .B(n15_adj_671), .C(n11_adj_672), 
         .D(n12_adj_673), .Z(CAOut_15__N_235)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut_adj_175.init = 16'h8000;
    LUT4 i7_4_lut_adj_176 (.A(CA[3]), .B(CA[4]), .C(CA[2]), .D(CA[7]), 
         .Z(n17_adj_670)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_176.init = 16'h8000;
    LUT4 i5_2_lut_adj_177 (.A(CA[5]), .B(CA[6]), .Z(n15_adj_671)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut_adj_177.init = 16'h8888;
    LUT4 i2_4_lut_adj_178 (.A(IncCA_N_631), .B(SetFault), .C(n3637), .D(RAMWR), 
         .Z(n1382)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i2_4_lut_adj_178.init = 16'h2202;
    CCU2D Length_15__I_0_833_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2923), .S1(Length_15__N_396[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(215[19:37])
    defparam Length_15__I_0_833_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_833_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_833_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_833_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_179 (.A(CA[1]), .B(n1382), .Z(n11_adj_672)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_179.init = 16'h8888;
    LUT4 i2_2_lut_adj_180 (.A(CA[0]), .B(IncMode[1]), .Z(n12_adj_673)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_180.init = 16'h2222;
    LUT4 i2142_2_lut_rep_73_3_lut (.A(A_out_0), .B(A_out_1), .C(n2264), 
         .Z(n3650)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i2142_2_lut_rep_73_3_lut.init = 16'hfefe;
    LUT4 mux_174_i2_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_1), .D(REUAOut_15__N_146[1]), 
         .Z(n304[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i2_3_lut_4_lut.init = 16'hfe10;
    PFUMX i3406 (.BLUT(n3822), .ALUT(n3821), .C0(A_out_1), .Z(n3823));
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(REUAOut_15__N_149), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(REUAOut_15__N_149), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n2921), .S0(REUAOut_15__N_146[6]), .S1(REUAOut_15__N_146[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    LUT4 i334_2_lut_3_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n3924), 
         .D(n2264), .Z(PHI2_N_571_enable_43)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(75[2:14])
    defparam i334_2_lut_3_lut_4_lut.init = 16'hf0f1;
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(REUAOut_15__N_149), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(REUAOut_15__N_149), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n2920), .COUT(n2921), .S0(REUAOut_15__N_146[4]), 
          .S1(REUAOut_15__N_146[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(173[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    LUT4 i3192_2_lut_rep_89 (.A(A_out_3), .B(A_out_1), .Z(n3666)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3192_2_lut_rep_89.init = 16'heeee;
    PFUMX i3322 (.BLUT(n3684), .ALUT(n3685), .C0(A_out_1), .Z(n3686));
    LUT4 mux_174_i1_3_lut_4_lut (.A(n3663), .B(n2264), .C(D_out_0), .D(REUAOut_15__N_146[0]), 
         .Z(n304[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_174_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_194_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n340[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(67[2] 78[7])
    defparam mux_194_i8_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DMASeq
//

module DMASeq (DMA, XferEnd_N_600, n3645, AutoloadEN, REUAOut_7__N_194, 
            n3636, \XferType[0] , n3641, BA_c, nWEDMA_c, nWEDMA_N_5, 
            Length1_N_645, RAMWR, n3637, Execute, nRESETr, SetFault, 
            EndBlock, n3327, DMAr, IncCA_N_631, PHI2_N_571, n3664, 
            nRESET_c, IncREUA, XferC64REU, RAMRD, n3646, CAOut_15__N_237, 
            n3644, n3633, n3650, REUAOut_15__N_149, n3649, n3634, 
            n3648, CAOut_7__N_282) /* synthesis syn_module_defined=1 */ ;
    output DMA;
    output XferEnd_N_600;
    input n3645;
    input AutoloadEN;
    output REUAOut_7__N_194;
    output n3636;
    input \XferType[0] ;
    input n3641;
    input BA_c;
    output nWEDMA_c;
    input nWEDMA_N_5;
    input Length1_N_645;
    output RAMWR;
    input n3637;
    input Execute;
    output [2:1]nRESETr;
    output SetFault;
    input EndBlock;
    output n3327;
    output DMAr;
    output IncCA_N_631;
    input PHI2_N_571;
    input n3664;
    input nRESET_c;
    output IncREUA;
    input XferC64REU;
    output RAMRD;
    input n3646;
    output CAOut_15__N_237;
    input n3644;
    output n3633;
    input n3650;
    output REUAOut_15__N_149;
    input n3649;
    output n3634;
    input n3648;
    output CAOut_7__N_282;
    
    wire PHI2_N_571 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire n3569, n3639, SetFault_N_638, n3647, XferEnd_N_608, n3260, 
        RAMWR_N_585, DMA_N_597, XferEnd_N_604, BAr, n1, XferEnd_N_605, 
        PHI2_N_571_enable_78, nWEDMA_N_611, n3571, n1276, n3680, RAMRD_N_572, 
        n3679, n3678, n3570;
    
    LUT4 Autoload_I_0_729_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_600), 
         .C(n3645), .D(AutoloadEN), .Z(REUAOut_7__N_194)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_729_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 AutoloadEN_I_0_2_lut_rep_59_3_lut (.A(DMA), .B(XferEnd_N_600), 
         .C(AutoloadEN), .Z(n3636)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam AutoloadEN_I_0_2_lut_rep_59_3_lut.init = 16'h8080;
    LUT4 RAMRD_N_584_bdd_4_lut_3316_4_lut (.A(\XferType[0] ), .B(n3641), 
         .C(BA_c), .D(nWEDMA_c), .Z(n3569)) /* synthesis lut_function=(A (B)+!A !(B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(29[19:39])
    defparam RAMRD_N_584_bdd_4_lut_3316_4_lut.init = 16'h9ddd;
    LUT4 i2_3_lut_rep_62 (.A(n3641), .B(BA_c), .C(\XferType[0] ), .Z(n3639)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_62.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(n3641), .B(BA_c), .C(\XferType[0] ), .D(nWEDMA_N_5), 
         .Z(SetFault_N_638)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0080;
    LUT4 BA_I_0_2_lut_rep_70 (.A(BA_c), .B(Length1_N_645), .Z(n3647)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(120[18:31])
    defparam BA_I_0_2_lut_rep_70.init = 16'h8888;
    LUT4 XferEnd_I_145_2_lut_3_lut (.A(BA_c), .B(Length1_N_645), .C(RAMWR), 
         .Z(XferEnd_N_608)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(120[18:31])
    defparam XferEnd_I_145_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut (.A(DMA), .B(\XferType[0] ), .C(n3260), .D(n3641), 
         .Z(RAMWR_N_585)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam i1_4_lut.init = 16'ha022;
    LUT4 i3_4_lut (.A(XferEnd_N_600), .B(n3637), .C(BA_c), .D(RAMWR), 
         .Z(n3260)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(XferEnd_N_600), .C(DMA), .Z(DMA_N_597)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    LUT4 XferEnd_I_0_128_4_lut (.A(nRESETr[1]), .B(n3647), .C(XferEnd_N_604), 
         .D(n3641), .Z(XferEnd_N_600)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(116[2] 123[54])
    defparam XferEnd_I_0_128_4_lut.init = 16'hf5dd;
    LUT4 i3099_4_lut_4_lut (.A(SetFault), .B(nWEDMA_N_5), .C(Length1_N_645), 
         .D(EndBlock), .Z(n3327)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(153[46:66])
    defparam i3099_4_lut_4_lut.init = 16'hffd0;
    LUT4 mux_224_Mux_0_i1_4_lut (.A(DMAr), .B(IncCA_N_631), .C(\XferType[0] ), 
         .D(BAr), .Z(n1)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(141[2] 148[44])
    defparam mux_224_Mux_0_i1_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut (.A(Length1_N_645), .B(n3639), .C(SetFault), .Z(XferEnd_N_605)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(123[4:52])
    defparam i1_3_lut.init = 16'hc8c8;
    FD1S3IX SetFault_122 (.D(SetFault_N_638), .CK(PHI2_N_571), .CD(n3664), 
            .Q(SetFault)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(155[8] 158[4])
    defparam SetFault_122.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESET_c), .CK(PHI2_N_571), .Q(nRESETr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(104[8:61])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1P3AX nWEDMA_116 (.D(nWEDMA_N_611), .SP(PHI2_N_571_enable_78), .CK(PHI2_N_571), 
            .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam nWEDMA_116.GSR = "ENABLED";
    FD1P3AX RAMWR_118 (.D(RAMWR_N_585), .SP(PHI2_N_571_enable_78), .CK(PHI2_N_571), 
            .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam RAMWR_118.GSR = "ENABLED";
    FD1S3AX BAr_119 (.D(BA_c), .CK(PHI2_N_571), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(99[8:34])
    defparam BAr_119.GSR = "ENABLED";
    FD1S3AX DMAr_120 (.D(DMA), .CK(PHI2_N_571), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(100[8:36])
    defparam DMAr_120.GSR = "ENABLED";
    FD1S3AX DMA_115 (.D(DMA_N_597), .CK(PHI2_N_571), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam DMA_115.GSR = "ENABLED";
    LUT4 RAMRD_N_584_bdd_3_lut_3317 (.A(Execute), .B(\XferType[0] ), .C(n3641), 
         .Z(n3571)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam RAMRD_N_584_bdd_3_lut_3317.init = 16'ha2a2;
    PFUMX XferEnd_I_143 (.BLUT(XferEnd_N_605), .ALUT(XferEnd_N_608), .C0(n3637), 
          .Z(XferEnd_N_604)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;
    PFUMX mux_224_Mux_0_i3 (.BLUT(n1), .ALUT(n1276), .C0(n3641), .Z(IncREUA));
    LUT4 i3181_4_lut (.A(XferC64REU), .B(Execute), .C(n3680), .D(DMA), 
         .Z(RAMRD_N_572)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;
    defparam i3181_4_lut.init = 16'h0544;
    LUT4 i1_4_lut_then_1_lut (.A(XferEnd_N_600), .Z(n3679)) /* synthesis lut_function=(A) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam i1_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 i1_4_lut_else_1_lut (.A(XferEnd_N_600), .B(RAMRD), .C(n3641), 
         .D(BA_c), .Z(n3678)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(69[11] 93[5])
    defparam i1_4_lut_else_1_lut.init = 16'heaaa;
    LUT4 i3202_4_lut_4_lut (.A(DMA), .B(XferEnd_N_600), .C(BA_c), .D(n3637), 
         .Z(PHI2_N_571_enable_78)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3202_4_lut_4_lut.init = 16'hfdff;
    LUT4 Autoload_I_0_742_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_600), 
         .C(n3646), .D(AutoloadEN), .Z(CAOut_15__N_237)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_742_2_lut_3_lut_4_lut.init = 16'h8f0f;
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(PHI2_N_571), .Q(nRESETr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(104[8:61])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1P3AX RAMRD_117 (.D(RAMRD_N_572), .SP(PHI2_N_571_enable_78), .CK(PHI2_N_571), 
            .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=68, LSE_LLINE=78, LSE_RLINE=86 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[8] 94[4])
    defparam RAMRD_117.GSR = "ENABLED";
    LUT4 n3569_bdd_2_lut (.A(n3569), .B(XferEnd_N_600), .Z(n3570)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n3569_bdd_2_lut.init = 16'h2222;
    LUT4 Autoload_I_0_2_lut_rep_56_3_lut_4_lut (.A(DMA), .B(XferEnd_N_600), 
         .C(n3644), .D(AutoloadEN), .Z(n3633)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_2_lut_rep_56_3_lut_4_lut.init = 16'h8f0f;
    LUT4 Autoload_I_0_720_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_600), 
         .C(n3650), .D(AutoloadEN), .Z(REUAOut_15__N_149)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam Autoload_I_0_720_2_lut_3_lut_4_lut.init = 16'h8f0f;
    LUT4 Autoload_I_0_799_2_lut_rep_57_3_lut_4_lut (.A(DMA), .B(XferEnd_N_600), 
         .C(n3649), .D(AutoloadEN), .Z(n3634)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_799_2_lut_rep_57_3_lut_4_lut.init = 16'hf8f0;
    LUT4 Autoload_I_0_786_2_lut_3_lut_4_lut (.A(DMA), .B(XferEnd_N_600), 
         .C(n3648), .D(AutoloadEN), .Z(CAOut_7__N_282)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam Autoload_I_0_786_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1058_4_lut_4_lut (.A(SetFault), .B(\XferType[0] ), .C(RAMWR), 
         .D(IncCA_N_631), .Z(n1276)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(129[2:11])
    defparam i1058_4_lut_4_lut.init = 16'h7400;
    PFUMX i3282 (.BLUT(n3571), .ALUT(n3570), .C0(DMA), .Z(nWEDMA_N_611));
    LUT4 DMA_I_0_2_lut (.A(DMA), .B(BA_c), .Z(IncCA_N_631)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(127[2:11])
    defparam DMA_I_0_2_lut.init = 16'h8888;
    PFUMX i3318 (.BLUT(n3678), .ALUT(n3679), .C0(\XferType[0] ), .Z(n3680));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module RAMctrl
//

module RAMctrl (RAMWR, C8M_N_46, PHI2_c, C8M_c, RAMRD, nCS_c, RBA_c_0, 
            REUA, nRAS_c, nCAS_c, nRWE_c, CKE_c, RA_c_0, WRDr, 
            PHI2_N_571, D_out_0, DQML_c, A_0__N_97, nRESET_c, GND_net, 
            VCC_net, RCLK_c, RAMRDD, RD_out_0, n1103, RBA_c_1, n3923, 
            RA_c_1, DQMH_c, RA_c_2, RA_c_3, RA_c_4, RA_c_5, RA_c_6, 
            RA_c_7, RA_c_8, RA_c_9, RA_c_10, RA_c_11, D_out_1, D_out_2, 
            D_out_3, D_out_4, D_out_5, D_out_6, D_out_7, RD_out_1, 
            RD_out_2, RD_out_3, RD_out_4, RD_out_5, RD_out_6, RD_out_7) /* synthesis syn_module_defined=1 */ ;
    input RAMWR;
    input C8M_N_46;
    input PHI2_c;
    input C8M_c;
    input RAMRD;
    output nCS_c;
    output RBA_c_0;
    input [23:0]REUA;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output RA_c_0;
    output [7:0]WRDr;
    input PHI2_N_571;
    input D_out_0;
    output DQML_c;
    input A_0__N_97;
    input nRESET_c;
    input GND_net;
    input VCC_net;
    output RCLK_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output n1103;
    output RBA_c_1;
    input n3923;
    output RA_c_1;
    output DQMH_c;
    output RA_c_2;
    output RA_c_3;
    output RA_c_4;
    output RA_c_5;
    output RA_c_6;
    output RA_c_7;
    output RA_c_8;
    output RA_c_9;
    output RA_c_10;
    output RA_c_11;
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
    
    wire C8M_N_46 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[11:16])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_N_571 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(103[11:18])
    
    wire InitDone, n3672, n1531;
    wire [2:0]S;   // c:/users/garre/repos/gw4302/cpld/ram.v(42[11:12])
    
    wire n3659, n2379, n3673, n3129, n1320;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(36[11:16])
    wire [2:0]RefCnt;   // c:/users/garre/repos/gw4302/cpld/ram.v(60[11:17])
    
    wire n3674, n3675, nCS_N_65, n3671, n4, C8M_c_enable_2, RDOE_N_101, 
        PORDone, n3677, n1278, nRAS_N_85, n3683, nRWE_N_87, CKE_N_90, 
        n1, n3226, nRESETr;
    wire [2:0]n14;
    wire [2:0]n26;
    
    wire RefCnt_2__N_61, n1534, n2419, n3, n1204, RDD_7__N_63, n6, 
        n3321, n1_adj_655;
    wire [2:0]S_2__N_52;
    
    wire RDOE, n3322, n1_adj_656, n1_adj_657, n1_adj_658, n1_adj_659, 
        n1_adj_660, n3328, n1_adj_661, n1_adj_662, n3_adj_663;
    wire [2:0]n2;
    
    wire n3682, n3681;
    
    LUT4 WRCMD_I_0_2_lut_rep_95 (.A(RAMWR), .B(InitDone), .Z(n3672)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(54[15:32])
    defparam WRCMD_I_0_2_lut_rep_95.init = 16'h8888;
    LUT4 i1313_1_lut_2_lut (.A(RAMWR), .B(InitDone), .Z(n1531)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(54[15:32])
    defparam i1313_1_lut_2_lut.init = 16'h7777;
    LUT4 i2169_2_lut_3_lut_4_lut (.A(RAMWR), .B(InitDone), .C(S[0]), .D(n3659), 
         .Z(n2379)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(54[15:32])
    defparam i2169_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 i1_2_lut_rep_96 (.A(S[0]), .B(S[1]), .Z(n3673)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_rep_96.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(S[0]), .B(S[1]), .C(InitDone), .Z(n3129)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_162 (.A(S[0]), .B(S[1]), .C(S[2]), .Z(n1320)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i1_2_lut_3_lut_adj_162.init = 16'hfefe;
    FD1S3AX PHI2r_0__135 (.D(PHI2_c), .CK(C8M_N_46), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(37[8:40])
    defparam PHI2r_0__135.GSR = "ENABLED";
    FD1S3AX PHI2r_1__136 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(38[8:44])
    defparam PHI2r_1__136.GSR = "ENABLED";
    LUT4 i2061_3_lut_rep_97 (.A(RefCnt[0]), .B(InitDone), .C(RefCnt[1]), 
         .Z(n3674)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(158[13] 171[7])
    defparam i2061_3_lut_rep_97.init = 16'hc8c8;
    LUT4 RDCMDg_I_0_180_2_lut_rep_98 (.A(RAMRD), .B(RAMWR), .Z(n3675)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(82[17:33])
    defparam RDCMDg_I_0_180_2_lut_rep_98.init = 16'heeee;
    FD1S3AX nCS_140 (.D(nCS_N_65), .CK(C8M_c), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nCS_140.GSR = "ENABLED";
    FD1S3IX RBA_i1 (.D(REUA[21]), .CK(C8M_c), .CD(n3671), .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RBA_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_163 (.A(RAMRD), .B(RAMWR), .C(S[0]), .Z(n4)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(82[17:33])
    defparam i1_2_lut_3_lut_adj_163.init = 16'hf1f1;
    LUT4 equal_12_i4_2_lut_rep_99 (.A(S[1]), .B(S[2]), .Z(n3671)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam equal_12_i4_2_lut_rep_99.init = 16'heeee;
    LUT4 equal_12_i5_2_lut_rep_83_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), 
         .Z(C8M_c_enable_2)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam equal_12_i5_2_lut_rep_83_3_lut.init = 16'hfefe;
    LUT4 i3199_2_lut_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), .Z(RDOE_N_101)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam i3199_2_lut_3_lut.init = 16'h1010;
    LUT4 i1059_1_lut_rep_100 (.A(PORDone), .Z(n3677)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:49])
    defparam i1059_1_lut_rep_100.init = 16'h5555;
    LUT4 i1060_2_lut_4_lut_4_lut (.A(PORDone), .B(PHI2r[0]), .C(PHI2r[1]), 
         .D(C8M_c_enable_2), .Z(n1278)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:49])
    defparam i1060_2_lut_4_lut_4_lut.init = 16'h5575;
    FD1S3AX nRAS_141 (.D(nRAS_N_85), .CK(C8M_c), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nRAS_141.GSR = "ENABLED";
    FD1S3JX nCAS_142 (.D(n3683), .CK(C8M_c), .PD(S[1]), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nCAS_142.GSR = "ENABLED";
    FD1S3AX nRWE_143 (.D(nRWE_N_87), .CK(C8M_c), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam nRWE_143.GSR = "ENABLED";
    FD1S3AX CKE_144 (.D(CKE_N_90), .CK(C8M_c), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(72[8] 192[4])
    defparam CKE_144.GSR = "ENABLED";
    FD1S3IX RA_i1 (.D(n1), .CK(C8M_c), .CD(n3671), .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_571), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3JX DQML_148 (.D(A_0__N_97), .CK(C8M_c), .PD(n3226), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam DQML_148.GSR = "ENABLED";
    FD1S3AX nRESETr_133 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[8:41])
    defparam nRESETr_133.GSR = "ENABLED";
    ODDRXE rclk_oddr (.D0(GND_net), .D1(VCC_net), .SCLK(C8M_c), .RST(GND_net), 
           .Q(RCLK_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(58[10] 65[32])
    defparam rclk_oddr.GSR = "ENABLED";
    LUT4 i2678_2_lut (.A(RefCnt[1]), .B(RefCnt[0]), .Z(n14[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i2678_2_lut.init = 16'h6666;
    LUT4 i2685_3_lut (.A(n26[2]), .B(RefCnt[1]), .C(RefCnt[0]), .Z(n14[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i2685_3_lut.init = 16'h6a6a;
    FD1P3IX RefCnt_254__i0 (.D(n14[0]), .SP(RefCnt_2__N_61), .CD(n1534), 
            .CK(C8M_c), .Q(RefCnt[0]));   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_254__i0.GSR = "ENABLED";
    LUT4 S_2__I_0_174_i3_4_lut (.A(InitDone), .B(n2379), .C(S[1]), .D(n3675), 
         .Z(n2419)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_174_i3_4_lut.init = 16'hcac0;
    LUT4 S_2__I_0_175_i3_4_lut (.A(InitDone), .B(n2379), .C(S[1]), .D(n4), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_175_i3_4_lut.init = 16'h3f35;
    LUT4 S_2__I_0_166_i1_3_lut (.A(REUA[9]), .B(REUA[1]), .C(S[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_166_i1_3_lut.init = 16'hcaca;
    LUT4 i2174_4_lut (.A(S[1]), .B(S[0]), .C(n3672), .D(n3659), .Z(n1204)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;
    defparam i2174_4_lut.init = 16'h373f;
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i0.GSR = "ENABLED";
    LUT4 i3093_3_lut_4_lut (.A(n3659), .B(n3672), .C(S[1]), .D(n6), 
         .Z(n3321)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(136[8:47])
    defparam i3093_3_lut_4_lut.init = 16'he0ef;
    LUT4 S_2__I_0_164_i1_3_lut (.A(REUA[10]), .B(REUA[2]), .C(S[0]), .Z(n1_adj_655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_164_i1_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(RefCnt[1]), .B(RefCnt_2__N_61), .C(n26[2]), .D(RefCnt[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i2676_1_lut (.A(RefCnt[0]), .Z(n14[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam i2676_1_lut.init = 16'h5555;
    FD1S3IX S__i0 (.D(S_2__N_52[0]), .CK(C8M_c), .CD(n3677), .Q(S[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i0.GSR = "ENABLED";
    LUT4 i910_1_lut (.A(RDOE), .Z(n1103)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(250[8:10])
    defparam i910_1_lut.init = 16'h5555;
    FD1P3IX RefCnt_254__i1 (.D(n14[1]), .SP(RefCnt_2__N_61), .CD(n1534), 
            .CK(C8M_c), .Q(RefCnt[1]));   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_254__i1.GSR = "ENABLED";
    LUT4 i3094_3_lut_3_lut (.A(n3674), .B(S[0]), .C(S[1]), .Z(n3322)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i3094_3_lut_3_lut.init = 16'hc1c1;
    FD1P3IX RefCnt_254__i2 (.D(n14[2]), .SP(RefCnt_2__N_61), .CD(n1534), 
            .CK(C8M_c), .Q(n26[2]));   // c:/users/garre/repos/gw4302/cpld/ram.v(64[23:39])
    defparam RefCnt_254__i2.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_82 (.A(RAMRD), .B(n3674), .C(RAMWR), .Z(n3659)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(136[8:37])
    defparam i2_3_lut_rep_82.init = 16'h3b3b;
    LUT4 S_2__I_0_163_i1_3_lut (.A(REUA[11]), .B(REUA[3]), .C(S[0]), .Z(n1_adj_656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_163_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_174_i7_3_lut_4_lut (.A(n3674), .B(n3673), .C(S[2]), 
         .D(n2419), .Z(nCS_N_65)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_174_i7_3_lut_4_lut.init = 16'he0ef;
    LUT4 S_2__I_0_175_i7_3_lut_4_lut (.A(n3674), .B(n3673), .C(S[2]), 
         .D(n3), .Z(nRAS_N_85)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam S_2__I_0_175_i7_3_lut_4_lut.init = 16'hefe0;
    FD1S3IX RBA_i2 (.D(REUA[22]), .CK(C8M_c), .CD(n3671), .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RBA_i2.GSR = "ENABLED";
    LUT4 S_2__I_0_162_i1_3_lut (.A(REUA[12]), .B(REUA[4]), .C(S[0]), .Z(n1_adj_657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_162_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_161_i1_3_lut (.A(REUA[13]), .B(REUA[5]), .C(S[0]), .Z(n1_adj_658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_161_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_160_i1_3_lut (.A(REUA[14]), .B(REUA[6]), .C(S[0]), .Z(n1_adj_659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_160_i1_3_lut.init = 16'hcaca;
    LUT4 S_2__I_0_159_i1_3_lut (.A(REUA[15]), .B(REUA[7]), .C(S[0]), .Z(n1_adj_660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_159_i1_3_lut.init = 16'hcaca;
    LUT4 i2054_3_lut_4_lut (.A(S[0]), .B(n3671), .C(PHI2r[0]), .D(PHI2r[1]), 
         .Z(S_2__N_52[0])) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(47[11:23])
    defparam i2054_3_lut_4_lut.init = 16'h4544;
    FD1P3AX PORDone_134 (.D(n3923), .SP(nRESETr), .CK(C8M_c), .Q(PORDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8:49])
    defparam PORDone_134.GSR = "ENABLED";
    FD1P3AX InitDone_138 (.D(n3328), .SP(S[2]), .CK(C8M_c), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[8:58])
    defparam InitDone_138.GSR = "ENABLED";
    FD1S3IX RA_i2 (.D(n1_adj_655), .CK(C8M_c), .CD(n3671), .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i2.GSR = "ENABLED";
    LUT4 S_2__I_0_157_i1_3_lut (.A(REUA[17]), .B(REUA[23]), .C(S[0]), 
         .Z(n1_adj_661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_157_i1_3_lut.init = 16'hcaca;
    PFUMX S_2__I_0_178_i7 (.BLUT(n1204), .ALUT(n3129), .C0(S[2]), .Z(nRWE_N_87)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;
    FD1S3IX RDOE_151 (.D(RDOE_N_101), .CK(C8M_c), .CD(n1531), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(249[8:54])
    defparam RDOE_151.GSR = "ENABLED";
    FD1S3JX DQMH_147 (.D(REUA[0]), .CK(C8M_c), .PD(n3226), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam DQMH_147.GSR = "ENABLED";
    FD1S3IX RA_i3 (.D(n1_adj_656), .CK(C8M_c), .CD(n3671), .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i3.GSR = "ENABLED";
    FD1S3IX RA_i4 (.D(n1_adj_657), .CK(C8M_c), .CD(n3671), .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i4.GSR = "ENABLED";
    FD1S3IX RA_i5 (.D(n1_adj_658), .CK(C8M_c), .CD(n3671), .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i5.GSR = "ENABLED";
    FD1S3JX RA_i6 (.D(n1_adj_659), .CK(C8M_c), .PD(n3671), .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i6.GSR = "ENABLED";
    FD1S3IX RA_i7 (.D(n1_adj_660), .CK(C8M_c), .CD(n3671), .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i7.GSR = "ENABLED";
    FD1S3IX RA_i8 (.D(n1_adj_662), .CK(C8M_c), .CD(n3671), .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i8.GSR = "ENABLED";
    FD1S3IX RA_i9 (.D(n1_adj_661), .CK(C8M_c), .CD(n3671), .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i9.GSR = "ENABLED";
    FD1S3JX RA_i10 (.D(REUA[18]), .CK(C8M_c), .PD(n1320), .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i10.GSR = "ENABLED";
    FD1S3IX RA_i11 (.D(n3_adj_663), .CK(C8M_c), .CD(S[2]), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i11.GSR = "ENABLED";
    FD1S3IX RA_i12 (.D(REUA[20]), .CK(C8M_c), .CD(n1320), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(196[8] 237[4])
    defparam RA_i12.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_571), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_571), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_571), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_571), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_571), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_571), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_571), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(244[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 S_2__I_0_154_i3_4_lut (.A(REUA[19]), .B(S[2]), .C(S[1]), .D(S[0]), 
         .Z(n3_adj_663)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_154_i3_4_lut.init = 16'h303a;
    LUT4 S_2__I_0_158_i1_3_lut (.A(REUA[16]), .B(REUA[8]), .C(S[0]), .Z(n1_adj_662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam S_2__I_0_158_i1_3_lut.init = 16'hcaca;
    LUT4 i766_2_lut (.A(S[1]), .B(S[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i766_2_lut.init = 16'h6666;
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_63), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(242[8:69])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1P3IX S__i1 (.D(n2[1]), .SP(C8M_c_enable_2), .CD(n1278), .CK(C8M_c), 
            .Q(S[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i1.GSR = "ENABLED";
    LUT4 i989_4_lut_then_4_lut (.A(InitDone), .B(RefCnt[0]), .C(RefCnt[1]), 
         .D(S[0]), .Z(n3682)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i989_4_lut_then_4_lut.init = 16'hffa8;
    LUT4 i989_4_lut_else_4_lut (.A(RAMRD), .B(InitDone), .C(RAMWR), .D(S[0]), 
         .Z(n3681)) /* synthesis lut_function=(!(A (B (D))+!A (B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(73[2] 191[9])
    defparam i989_4_lut_else_4_lut.init = 16'h37ff;
    FD1P3IX S__i2 (.D(n2[2]), .SP(C8M_c_enable_2), .CD(n1278), .CK(C8M_c), 
            .Q(S[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=32, LSE_LLINE=58, LSE_RLINE=65 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(43[8] 50[4])
    defparam S__i2.GSR = "ENABLED";
    LUT4 i3100_3_lut_3_lut (.A(S[1]), .B(S[0]), .C(InitDone), .Z(n3328)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i3100_3_lut_3_lut.init = 16'hf8f8;
    LUT4 i2_3_lut_4_lut (.A(S[1]), .B(S[0]), .C(RAMRD), .D(S[2]), .Z(RDD_7__N_63)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i2_3_lut_4_lut_adj_164 (.A(S[0]), .B(InitDone), .C(S[2]), .D(S[1]), 
         .Z(RefCnt_2__N_61)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_164.init = 16'h8000;
    LUT4 i773_2_lut_3_lut (.A(S[1]), .B(S[0]), .C(S[2]), .Z(n2[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(49[35:46])
    defparam i773_2_lut_3_lut.init = 16'h7878;
    LUT4 i14_3_lut_4_lut (.A(RAMRD), .B(RAMWR), .C(InitDone), .D(S[0]), 
         .Z(n6)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(105[13] 118[7])
    defparam i14_3_lut_4_lut.init = 16'h1f10;
    LUT4 i3179_2_lut_3_lut (.A(S[1]), .B(S[2]), .C(S[0]), .Z(n3226)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(197[2] 235[9])
    defparam i3179_2_lut_3_lut.init = 16'hefef;
    PFUMX i3095 (.BLUT(n3321), .ALUT(n3322), .C0(S[2]), .Z(CKE_N_90));
    PFUMX i3320 (.BLUT(n3681), .ALUT(n3682), .C0(S[2]), .Z(n3683));
    
endmodule
