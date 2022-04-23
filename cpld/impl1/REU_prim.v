// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Apr 23 07:20:01 2022
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
    wire C8M_N_502 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(39[11:16])
    wire PHI2_N_569 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire nRESET_c, BA_c, n1350, nWE_c, nWEDMA_c, nIO2_c, nRWOE_c, 
        DDIR_c, nIRQ_c, RCLK_c, nCS_c, nRAS_c, nCAS_c, nRWE_c, 
        CKE_c, RBA_c_1, RBA_c_0, RA_c_11, RA_c_10, RA_c_9, RA_c_8, 
        RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, RA_c_2, RA_c_1, 
        RA_c_0, DQMH_c, DQML_c, n1323, n3735, ExecuteEN, FF00DecodeEN;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RAMRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(44[13:19])
    
    wire DMA, RAMRD, RAMWR, VerifyErr, DOE, Execute, nWEDMA_N_9;
    wire [7:0]D_7__N_1;
    
    wire VCC_net, n242;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(49[12:18])
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(59[11:18])
    
    wire IncREUA, PHI2_N_569_enable_87, PHI2_N_569_enable_82, n1526, 
        n4047, n643, FF00DecodeEN_N_437, n606, n4041, n4040, PHI2_N_569_enable_83, 
        n642, n4046, Length1_N_352, PHI2_N_569_enable_84, PHI2_N_569_enable_80, 
        GND_net;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[11:18])
    
    wire PLLLock;
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(215[11:15])
    
    wire PHI2Start_N_554, n3719, n3701, n3704, n3272, n4038, A_0__N_543, 
        SwapState, n1703, n4045, nAOE_N_621, nDOE_N_628, Execute_N_633, 
        n3709, n4039, n4044, n647, n648, n649, PHI2_N_569_enable_74, 
        PHI2_N_569_enable_51, PHI2_N_569_enable_24, C8M_c_enable_19, PHI2_N_569_enable_68, 
        n6, n7, n8, n3995, D_out_7, D_out_6, D_out_5, D_out_4, 
        D_out_3, D_out_2, D_out_1, D_out_0, A_out_15, n3988, A_out_14, 
        A_out_13, A_out_12, A_out_11, A_out_10, A_out_9, A_out_8, 
        n1303, A_out_4, A_out_3, A_out_2, A_out_1, A_out_0, RD_out_7, 
        RD_out_6, RD_out_5, n1236, RD_out_4, RD_out_3, RD_out_2, 
        RD_out_1, RD_out_0, n11, n1386, n1388, n1390, n1392, n1394, 
        n4064, n4063, n4062, n3952, n4058, n4251, n4043, n4057, 
        n3273, n4056, n4055, n4050, n21, n4067, n3737;
    
    VHI i83 (.Z(VCC_net));
    INV i3660 (.A(C8M_c), .Z(C8M_N_502));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    BB A_pad_9 (.I(CA[9]), .T(n4063), .B(A[9]), .O(A_out_9));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_10 (.I(CA[10]), .T(n4063), .B(A[10]), .O(A_out_10));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_7 (.I(CA[7]), .T(n4063), .B(A[7]), .O(n8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    LUT4 RegRDD_7__I_0_i1_4_lut (.A(n649), .B(RAMRDD[0]), .C(DMA), .D(n4050), 
         .Z(D_7__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i1_4_lut.init = 16'hcfca;
    BB A_pad_11 (.I(CA[11]), .T(n4063), .B(A[11]), .O(A_out_11));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_12 (.I(CA[12]), .T(n4063), .B(A[12]), .O(A_out_12));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_13 (.I(CA[13]), .T(n4063), .B(A[13]), .O(A_out_13));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_14 (.I(CA[14]), .T(n4063), .B(A[14]), .O(A_out_14));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    TSALL TSALL_INST (.TSALL(GND_net));
    BB A_pad_15 (.I(CA[15]), .T(n4063), .B(A[15]), .O(A_out_15));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB D_pad_0 (.I(D_7__N_1[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_1 (.I(D_7__N_1[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_2 (.I(D_7__N_1[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 RegRDD_7__I_0_i2_4_lut (.A(n648), .B(RAMRDD[1]), .C(DMA), .D(n4050), 
         .Z(D_7__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i2_4_lut.init = 16'hcfca;
    BB D_pad_3 (.I(D_7__N_1[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_4 (.I(D_7__N_1[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_5 (.I(D_7__N_1[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_6 (.I(D_7__N_1[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 i556_2_lut (.A(PHI2Start_N_554), .B(n242), .Z(C8M_c_enable_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i556_2_lut.init = 16'heeee;
    CCU2D RAMRDD_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(D_out_7), .B1(RAMRDD[7]), .C1(D_out_6), .D1(RAMRDD[6]), 
          .COUT(n3272));   // c:/users/garre/repos/gw4302/cpld/reu.v(92[3:22])
    defparam RAMRDD_7__I_0_0.INIT0 = 16'hF000;
    defparam RAMRDD_7__I_0_0.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_0.INJECT1_0 = "NO";
    defparam RAMRDD_7__I_0_0.INJECT1_1 = "YES";
    BB A_pad_8 (.I(CA[8]), .T(n4063), .B(A[8]), .O(A_out_8));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    LUT4 RegRDD_7__I_0_i8_4_lut (.A(n642), .B(RAMRDD[7]), .C(DMA), .D(n4050), 
         .Z(D_7__N_1[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[24:55])
    defparam RegRDD_7__I_0_i8_4_lut.init = 16'hcfca;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i934_2_lut_3_lut_4_lut (.A(A_out_3), .B(n4056), .C(n4057), .D(n4038), 
         .Z(PHI2_N_569_enable_68)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i934_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i3415_2_lut_rep_52_3_lut_4_lut (.A(A_out_3), .B(n4056), .C(n4057), 
         .D(n4039), .Z(PHI2_N_569_enable_83)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i3415_2_lut_rep_52_3_lut_4_lut.init = 16'hf0f1;
    LUT4 Execute_I_155_2_lut_3_lut_4_lut (.A(A_out_3), .B(n4056), .C(D_out_7), 
         .D(n4039), .Z(Execute_N_633)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam Execute_I_155_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i989_2_lut_3_lut_4_lut (.A(A_out_3), .B(n4056), .C(n4057), .D(n4041), 
         .Z(PHI2_N_569_enable_80)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i989_2_lut_3_lut_4_lut.init = 16'h0100;
    BB D_pad_7 (.I(D_7__N_1[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    LUT4 i1_2_lut_rep_72 (.A(A_out_2), .B(A_out_4), .Z(n4056)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_2_lut_rep_72.init = 16'heeee;
    BB A_pad_6 (.I(CA[6]), .T(n4063), .B(A[6]), .O(n7));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_5 (.I(CA[5]), .T(n4063), .B(A[5]), .O(n6));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_4 (.I(CA[4]), .T(n4063), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_3 (.I(CA[3]), .T(n4063), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_2 (.I(CA[2]), .T(n4063), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_1 (.I(CA[1]), .T(n4063), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    BB A_pad_0 (.I(CA[0]), .T(n4063), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1236), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1236), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1236), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1236), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1236), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1236), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1236), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1236), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OB nDMA_pad (.I(n4063), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nAOE_pad (.I(nAOE_N_621), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB ADIR_pad (.I(n4063), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    OB nRWOE_pad (.I(nRWOE_c), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    OB nDOE_pad (.I(nDOE_N_628), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    OB DDIR_pad (.I(DDIR_c), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:13])
    OB nIRQ_pad (.I(nIRQ_c), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
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
    LUT4 i3479_3_lut_4_lut (.A(A_out_3), .B(n4056), .C(n4038), .D(n4057), 
         .Z(PHI2_N_569_enable_84)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i3479_3_lut_4_lut.init = 16'hff02;
    LUT4 i3477_3_lut_4_lut (.A(A_out_3), .B(n4056), .C(n4039), .D(n4057), 
         .Z(PHI2_N_569_enable_24)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i3477_3_lut_4_lut.init = 16'hff02;
    LUT4 i2_3_lut (.A(A_out_4), .B(A_out_3), .C(A_out_2), .Z(n1526)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i2_3_lut.init = 16'hefef;
    DMASeq dmaseq (.XferType({XferType}), .nWEDMA_N_9(nWEDMA_N_9), .FF00DecodeEN_N_437(FF00DecodeEN_N_437), 
           .VerifyErr(VerifyErr), .n4064(n4064), .\REUA[6] (REUA[6]), 
           .n11(n11), .\IncMode[0] (IncMode[0]), .IncREUA(IncREUA), .SwapState(SwapState), 
           .Execute(Execute), .DMA(DMA), .A_out_2(A_out_2), .A_out_1(A_out_1), 
           .A_out_0(A_out_0), .n4067(n4067), .n647(n647), .n3735(n3735), 
           .\D_7__N_1[2] (D_7__N_1[2]), .A_out_3(A_out_3), .n4062(n4062), 
           .n3988(n3988), .n3704(n3704), .n4063(n4063), .A_out_4(A_out_4), 
           .BA_c(BA_c), .PHI2_c(PHI2_c), .nAOE_N_621(nAOE_N_621), .nRWOE_c(nRWOE_c), 
           .n3952(n3952), .PHI2_N_569(PHI2_N_569), .nWEDMA_c(nWEDMA_c), 
           .RAMRD(RAMRD), .RAMWR(RAMWR), .nRESET_c(nRESET_c), .\Length[11] (Length[11]), 
           .Length1_N_352(Length1_N_352), .n4050(n4050), .\RAMRDD[3] (RAMRDD[3]), 
           .\D_7__N_1[3] (D_7__N_1[3]), .n3701(n3701), .n3995(n3995), 
           .\D_7__N_1[4] (D_7__N_1[4]), .\RAMRDD[5] (RAMRDD[5]), .\D_7__N_1[5] (D_7__N_1[5]), 
           .n3709(n3709), .n643(n643), .n3737(n3737), .\D_7__N_1[6] (D_7__N_1[6]), 
           .n606(n606), .n4057(n4057), .n4039(n4039), .n1526(n1526), 
           .PHI2_N_569_enable_74(PHI2_N_569_enable_74), .D_out_3(D_out_3), 
           .n1388(n1388), .D_out_2(D_out_2), .n1390(n1390), .D_out_1(D_out_1), 
           .n1392(n1392), .D_out_0(D_out_0), .n1394(n1394), .n4038(n4038), 
           .PHI2_N_569_enable_51(PHI2_N_569_enable_51), .D_out_7(D_out_7), 
           .n1323(n1323), .D_out_5(D_out_5), .n1350(n1350), .D_out_4(D_out_4), 
           .n1386(n1386), .D_out_6(D_out_6), .n1303(n1303), .n4041(n4041), 
           .PHI2_N_569_enable_82(PHI2_N_569_enable_82), .PHI2_N_569_enable_87(PHI2_N_569_enable_87), 
           .n1703(n1703), .n4058(n4058), .n4047(n4047)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(80[9] 94[40])
    LUT4 i1_2_lut_rep_60_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n4044)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_2_lut_rep_60_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_62_3_lut (.A(A_out_2), .B(A_out_4), .C(A_out_3), 
         .Z(n4046)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    defparam i1_2_lut_rep_62_3_lut.init = 16'hefef;
    CCU2D RAMRDD_7__I_0_8 (.A0(D_out_1), .B0(RAMRDD[1]), .C0(D_out_0), 
          .D0(RAMRDD[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3273), .S1(nWEDMA_N_9));
    defparam RAMRDD_7__I_0_8.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_8.INIT1 = 16'hFFFF;
    defparam RAMRDD_7__I_0_8.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_8.INJECT1_1 = "NO";
    CCU2D RAMRDD_7__I_0_7 (.A0(D_out_5), .B0(RAMRDD[5]), .C0(D_out_4), 
          .D0(RAMRDD[4]), .A1(D_out_3), .B1(RAMRDD[3]), .C1(D_out_2), 
          .D1(RAMRDD[2]), .CIN(n3272), .COUT(n3273));
    defparam RAMRDD_7__I_0_7.INIT0 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INIT1 = 16'h9009;
    defparam RAMRDD_7__I_0_7.INJECT1_0 = "YES";
    defparam RAMRDD_7__I_0_7.INJECT1_1 = "YES";
    LUT4 m1_lut (.Z(n4251)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    REUReg reureg (.n4062(n4062), .n648(n648), .n4043(n4043), .VerifyErr(VerifyErr), 
           .GND_net(GND_net), .REUA({REUA}), .A_out_1(A_out_1), .A_out_3(A_out_3), 
           .FF00DecodeEN_N_437(FF00DecodeEN_N_437), .n3737(n3737), .n647(n647), 
           .PHI2_N_569(PHI2_N_569), .PHI2_N_569_enable_87(PHI2_N_569_enable_87), 
           .n1703(n1703), .ExecuteEN(ExecuteEN), .CA({CA}), .n4057(n4057), 
           .\Length[11] (Length[11]), .n4044(n4044), .n4041(n4041), .D_out_6(D_out_6), 
           .n4038(n4038), .D_out_7(D_out_7), .n4046(n4046), .n4040(n4040), 
           .D_out_2(D_out_2), .D_out_3(D_out_3), .D_out_5(D_out_5), .A_out_2(A_out_2), 
           .D_out_4(D_out_4), .Length1_N_352(Length1_N_352), .PHI2_N_569_enable_82(PHI2_N_569_enable_82), 
           .n4047(n4047), .n1394(n1394), .n1392(n1392), .n1390(n1390), 
           .PHI2_N_569_enable_51(PHI2_N_569_enable_51), .D_out_1(D_out_1), 
           .D_out_0(D_out_0), .n1388(n1388), .n1386(n1386), .n1350(n1350), 
           .FF00DecodeEN(FF00DecodeEN), .n1303(n1303), .n1526(n1526), 
           .PHI2_N_569_enable_24(PHI2_N_569_enable_24), .n1323(n1323), .n3709(n3709), 
           .PHI2_N_569_enable_80(PHI2_N_569_enable_80), .n4039(n4039), .DMA(DMA), 
           .n3735(n3735), .XferType({XferType}), .PHI2_N_569_enable_83(PHI2_N_569_enable_83), 
           .IncMode({Open_0, IncMode[0]}), .PHI2_N_569_enable_84(PHI2_N_569_enable_84), 
           .PHI2_N_569_enable_68(PHI2_N_569_enable_68), .A_out_0(A_out_0), 
           .n4055(n4055), .n4045(n4045), .n4056(n4056), .PHI2_N_569_enable_74(PHI2_N_569_enable_74), 
           .n11(n11), .n642(n642), .IncREUA(IncREUA), .n4064(n4064), 
           .n4058(n4058), .SwapState(SwapState), .n3704(n3704), .n3701(n3701), 
           .n649(n649), .nIRQ_c(nIRQ_c), .n3952(n3952), .\RAMRDD[6] (RAMRDD[6]), 
           .n643(n643), .A_0__N_543(A_0__N_543), .A_out_14(A_out_14), 
           .n21(n21), .n3988(n3988), .\RAMRDD[4] (RAMRDD[4]), .n3995(n3995), 
           .n606(n606), .\RAMRDD[2] (RAMRDD[2]), .n4067(n4067)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 66[48])
    LUT4 i3347_4_lut (.A(PLLLock), .B(nRESETr[2]), .C(nRESETr[1]), .Z(n3719)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i3347_4_lut.init = 16'heaea;
    Glue glue (.nWE_c(nWE_c), .A_out_1(A_out_1), .A_out_0(A_out_0), .n4038(n4038), 
         .n4039(n4039), .n4041(n4041), .PHI2_c(PHI2_c), .nIO2_c(nIO2_c), 
         .BA_c(BA_c), .DMA(DMA), .nDOE_N_628(nDOE_N_628), .Execute_N_633(Execute_N_633), 
         .FF00DecodeEN(FF00DecodeEN), .Execute(Execute), .n21(n21), .nWEDMA_c(nWEDMA_c), 
         .DDIR_c(DDIR_c), .A_out_11(A_out_11), .A_out_13(A_out_13), .A_out_12(A_out_12), 
         .A_out_4(A_out_4), .A_out_3(A_out_3), .n4043(n4043), .DOE(DOE), 
         .n6(n6), .A_out_2(A_out_2), .n7(n7), .ExecuteEN(ExecuteEN), 
         .n4045(n4045), .A_out_8(A_out_8), .n8(n8), .A_out_15(A_out_15), 
         .A_out_9(A_out_9), .n4055(n4055), .n4040(n4040), .A_out_10(A_out_10)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(96[7] 113[15])
    INV i3661 (.A(PHI2_c), .Z(PHI2_N_569));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    RAM ram (.PHI2Start_N_554(PHI2Start_N_554), .REUA({REUA}), .C8M_N_502(C8M_N_502), 
        .n4251(n4251), .PLLLock(PLLLock), .n3719(n3719), .n242(n242), 
        .C8M_c(C8M_c), .RAMRDD({RAMRDD}), .RD_out_0(RD_out_0), .RBA_c_0(RBA_c_0), 
        .C8M_c_enable_19(C8M_c_enable_19), .RAMWR(RAMWR), .nRESET_c(nRESET_c), 
        .PHI2_c(PHI2_c), .WRDr({WRDr}), .PHI2_N_569(PHI2_N_569), .D_out_0(D_out_0), 
        .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), .nRWE_c(nRWE_c), .CKE_c(CKE_c), 
        .DQMH_c(DQMH_c), .DQML_c(DQML_c), .A_0__N_543(A_0__N_543), .RA_c_10(RA_c_10), 
        .RA_c_9(RA_c_9), .RA_c_8(RA_c_8), .RA_c_7(RA_c_7), .RA_c_6(RA_c_6), 
        .RA_c_5(RA_c_5), .RA_c_4(RA_c_4), .RA_c_3(RA_c_3), .RA_c_2(RA_c_2), 
        .RA_c_1(RA_c_1), .RA_c_0(RA_c_0), .n1236(n1236), .RD_out_1(RD_out_1), 
        .RD_out_2(RD_out_2), .RD_out_3(RD_out_3), .RD_out_4(RD_out_4), 
        .RD_out_5(RD_out_5), .RD_out_6(RD_out_6), .RD_out_7(RD_out_7), 
        .RBA_c_1(RBA_c_1), .\nRESETr[1] (nRESETr[1]), .\nRESETr[2] (nRESETr[2]), 
        .D_out_1(D_out_1), .D_out_2(D_out_2), .D_out_3(D_out_3), .D_out_4(D_out_4), 
        .D_out_5(D_out_5), .D_out_6(D_out_6), .D_out_7(D_out_7), .RCLK_c(RCLK_c), 
        .RA_c_11(RA_c_11), .nCS_c(nCS_c), .RAMRD(RAMRD)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(68[6] 78[32])
    VLO i1 (.Z(GND_net));
    
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
// Verilog Description of module DMASeq
//

module DMASeq (XferType, nWEDMA_N_9, FF00DecodeEN_N_437, VerifyErr, 
            n4064, \REUA[6] , n11, \IncMode[0] , IncREUA, SwapState, 
            Execute, DMA, A_out_2, A_out_1, A_out_0, n4067, n647, 
            n3735, \D_7__N_1[2] , A_out_3, n4062, n3988, n3704, 
            n4063, A_out_4, BA_c, PHI2_c, nAOE_N_621, nRWOE_c, n3952, 
            PHI2_N_569, nWEDMA_c, RAMRD, RAMWR, nRESET_c, \Length[11] , 
            Length1_N_352, n4050, \RAMRDD[3] , \D_7__N_1[3] , n3701, 
            n3995, \D_7__N_1[4] , \RAMRDD[5] , \D_7__N_1[5] , n3709, 
            n643, n3737, \D_7__N_1[6] , n606, n4057, n4039, n1526, 
            PHI2_N_569_enable_74, D_out_3, n1388, D_out_2, n1390, 
            D_out_1, n1392, D_out_0, n1394, n4038, PHI2_N_569_enable_51, 
            D_out_7, n1323, D_out_5, n1350, D_out_4, n1386, D_out_6, 
            n1303, n4041, PHI2_N_569_enable_82, PHI2_N_569_enable_87, 
            n1703, n4058, n4047) /* synthesis syn_module_defined=1 */ ;
    input [1:0]XferType;
    input nWEDMA_N_9;
    output FF00DecodeEN_N_437;
    output VerifyErr;
    output n4064;
    input \REUA[6] ;
    output n11;
    input \IncMode[0] ;
    output IncREUA;
    output SwapState;
    input Execute;
    output DMA;
    input A_out_2;
    input A_out_1;
    input A_out_0;
    input n4067;
    input n647;
    input n3735;
    output \D_7__N_1[2] ;
    input A_out_3;
    output n4062;
    input n3988;
    input n3704;
    output n4063;
    input A_out_4;
    input BA_c;
    input PHI2_c;
    output nAOE_N_621;
    output nRWOE_c;
    input n3952;
    input PHI2_N_569;
    output nWEDMA_c;
    output RAMRD;
    output RAMWR;
    input nRESET_c;
    input \Length[11] ;
    input Length1_N_352;
    output n4050;
    input \RAMRDD[3] ;
    output \D_7__N_1[3] ;
    input n3701;
    input n3995;
    output \D_7__N_1[4] ;
    input \RAMRDD[5] ;
    output \D_7__N_1[5] ;
    input n3709;
    input n643;
    input n3737;
    output \D_7__N_1[6] ;
    input n606;
    output n4057;
    input n4039;
    input n1526;
    output PHI2_N_569_enable_74;
    input D_out_3;
    output n1388;
    input D_out_2;
    output n1390;
    input D_out_1;
    output n1392;
    input D_out_0;
    output n1394;
    input n4038;
    output PHI2_N_569_enable_51;
    input D_out_7;
    output n1323;
    input D_out_5;
    output n1350;
    input D_out_4;
    output n1386;
    input D_out_6;
    output n1303;
    input n4041;
    output PHI2_N_569_enable_82;
    input PHI2_N_569_enable_87;
    output n1703;
    output n4058;
    output n4047;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_569 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire n4030, n4072, n4071, DMA_N_587, n22, n2471, n3578, n3743, 
        PHI2_N_569_enable_85, RAMWR_N_576, n3944, n3955, n3956, DMARW_N_599, 
        RAMRD_N_558, DMAr, BAr, nRESETr, n3954, n6, SwapState_N_581, 
        NextREUA_N_618, n3943;
    
    LUT4 i2_3_lut_4_lut (.A(XferType[0]), .B(XferType[1]), .C(nWEDMA_N_9), 
         .D(FF00DecodeEN_N_437), .Z(VerifyErr)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_4_lut (.A(XferType[0]), .B(n4030), .C(n4064), .D(\REUA[6] ), 
         .Z(n11)) /* synthesis lut_function=(A (C (D))+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(27[19:39])
    defparam i1_2_lut_4_lut.init = 16'he400;
    LUT4 IncREUA_I_118_2_lut_4_lut (.A(XferType[0]), .B(n4030), .C(n4064), 
         .D(\IncMode[0] ), .Z(IncREUA)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((D)+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(27[19:39])
    defparam IncREUA_I_118_2_lut_4_lut.init = 16'h00e4;
    LUT4 i1_4_lut_then_4_lut (.A(XferType[0]), .B(SwapState), .C(FF00DecodeEN_N_437), 
         .D(XferType[1]), .Z(n4072)) /* synthesis lut_function=(!(A (C)+!A ((C+!(D))+!B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(79[11] 103[5])
    defparam i1_4_lut_then_4_lut.init = 16'h0e0a;
    LUT4 i1_4_lut_else_4_lut (.A(XferType[0]), .B(Execute), .C(XferType[1]), 
         .Z(n4071)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(79[11] 103[5])
    defparam i1_4_lut_else_4_lut.init = 16'hc8c8;
    LUT4 Execute_I_0_3_lut (.A(Execute), .B(FF00DecodeEN_N_437), .C(DMA), 
         .Z(DMA_N_587)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(79[11] 103[5])
    defparam Execute_I_0_3_lut.init = 16'h3a3a;
    LUT4 i1_3_lut (.A(A_out_2), .B(A_out_1), .C(A_out_0), .Z(n22)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut.init = 16'heaea;
    LUT4 i1_4_lut (.A(n4067), .B(n2471), .C(n647), .D(n3735), .Z(\D_7__N_1[2] )) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut.init = 16'heefc;
    LUT4 i3443_2_lut_rep_78 (.A(A_out_3), .B(A_out_2), .Z(n4062)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3443_2_lut_rep_78.init = 16'heeee;
    LUT4 i30_3_lut_4_lut (.A(A_out_3), .B(A_out_2), .C(n3988), .D(n3704), 
         .Z(n3578)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i30_3_lut_4_lut.init = 16'hf1e0;
    LUT4 AOE_I_0_34_1_lut_rep_79 (.A(DMA), .Z(n4063)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(36[15:19])
    defparam AOE_I_0_34_1_lut_rep_79.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_4_lut (.A(DMA), .B(A_out_3), .C(n22), .D(A_out_4), 
         .Z(n2471)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(36[15:19])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5540;
    LUT4 i3472_3_lut_3_lut (.A(DMA), .B(BA_c), .C(PHI2_c), .Z(nAOE_N_621)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(36[15:19])
    defparam i3472_3_lut_3_lut.init = 16'h2f2f;
    LUT4 i3371_2_lut_3_lut_3_lut (.A(DMA), .B(A_out_2), .C(A_out_3), .Z(n3743)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(36[15:19])
    defparam i3371_2_lut_3_lut_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_2_lut (.A(DMA), .B(BA_c), .Z(PHI2_N_569_enable_85)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(36[15:19])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 DMA_I_0_102_2_lut_rep_80 (.A(DMA), .B(BA_c), .Z(n4064)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(125[18:27])
    defparam DMA_I_0_102_2_lut_rep_80.init = 16'h8888;
    LUT4 nRWOE_I_0_1_lut_2_lut (.A(DMA), .B(BA_c), .Z(nRWOE_c)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(125[18:27])
    defparam nRWOE_I_0_1_lut_2_lut.init = 16'h7777;
    LUT4 i3421_4_lut (.A(XferType[0]), .B(FF00DecodeEN_N_437), .C(XferType[1]), 
         .D(SwapState), .Z(RAMWR_N_576)) /* synthesis lut_function=(!(A+(B (C)+!B (C (D))))) */ ;
    defparam i3421_4_lut.init = 16'h0515;
    LUT4 FF00DecodeEN_N_437_bdd_3_lut (.A(Execute), .B(XferType[0]), .C(XferType[1]), 
         .Z(n3944)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam FF00DecodeEN_N_437_bdd_3_lut.init = 16'ha2a2;
    LUT4 n3955_bdd_3_lut_4_lut (.A(n3952), .B(A_out_3), .C(A_out_2), .D(n3955), 
         .Z(n3956)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n3955_bdd_3_lut_4_lut.init = 16'hefe0;
    FD1S3AX DMA_90 (.D(DMA_N_587), .CK(PHI2_N_569), .Q(DMA)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam DMA_90.GSR = "ENABLED";
    FD1S3AX DMARW_91 (.D(DMARW_N_599), .CK(PHI2_N_569), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam DMARW_91.GSR = "ENABLED";
    FD1S3AX RAMRD_92 (.D(RAMRD_N_558), .CK(PHI2_N_569), .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam RAMRD_92.GSR = "ENABLED";
    FD1S3IX RAMWR_93 (.D(RAMWR_N_576), .CK(PHI2_N_569), .CD(n4063), .Q(RAMWR)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(40[8] 104[4])
    defparam RAMWR_93.GSR = "ENABLED";
    FD1S3AX DMAr_94 (.D(DMA), .CK(PHI2_N_569), .Q(DMAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[8] 111[4])
    defparam DMAr_94.GSR = "ENABLED";
    FD1S3AX BAr_95 (.D(BA_c), .CK(PHI2_N_569), .Q(BAr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[8] 111[4])
    defparam BAr_95.GSR = "ENABLED";
    FD1S3AX nRESETr_96 (.D(nRESET_c), .CK(PHI2_N_569), .Q(nRESETr)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(107[8] 111[4])
    defparam nRESETr_96.GSR = "ENABLED";
    LUT4 n606_bdd_3_lut_3548 (.A(\Length[11] ), .B(A_out_1), .C(A_out_0), 
         .Z(n3954)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n606_bdd_3_lut_3548.init = 16'hfefe;
    LUT4 i1_4_lut_adj_169 (.A(n4064), .B(Length1_N_352), .C(n6), .D(XferType[1]), 
         .Z(FF00DecodeEN_N_437)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(125[18:27])
    defparam i1_4_lut_adj_169.init = 16'ha022;
    LUT4 i1_3_lut_rep_66 (.A(A_out_4), .B(n22), .C(A_out_3), .Z(n4050)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_rep_66.init = 16'heaea;
    LUT4 i19_4_lut (.A(Length1_N_352), .B(nWEDMA_N_9), .C(XferType[0]), 
         .D(SwapState), .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(126[2] 129[41])
    defparam i19_4_lut.init = 16'h7570;
    LUT4 i29_4_lut (.A(A_out_4), .B(\RAMRDD[3] ), .C(DMA), .D(n3956), 
         .Z(\D_7__N_1[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i29_4_lut.init = 16'hcfca;
    LUT4 i1_4_lut_adj_170 (.A(n3701), .B(n2471), .C(n3995), .D(n3743), 
         .Z(\D_7__N_1[4] )) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_170.init = 16'heefc;
    LUT4 i29_4_lut_adj_171 (.A(A_out_4), .B(\RAMRDD[5] ), .C(DMA), .D(n3578), 
         .Z(\D_7__N_1[5] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i29_4_lut_adj_171.init = 16'hcfca;
    LUT4 i1_4_lut_adj_172 (.A(n3709), .B(n2471), .C(n643), .D(n3737), 
         .Z(\D_7__N_1[6] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_172.init = 16'hfcee;
    FD1P3IX SwapState_89 (.D(SwapState_N_581), .SP(PHI2_N_569_enable_85), 
            .CD(n4063), .CK(PHI2_N_569), .Q(SwapState)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=40, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(33[8] 38[4])
    defparam SwapState_89.GSR = "ENABLED";
    PFUMX i3519 (.BLUT(n606), .ALUT(n3954), .C0(A_out_3), .Z(n3955));
    LUT4 XferEnd_N_590_bdd_4_lut (.A(n4064), .B(SwapState), .C(NextREUA_N_618), 
         .D(XferType[1]), .Z(n4030)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam XferEnd_N_590_bdd_4_lut.init = 16'h88f0;
    LUT4 i3469_2_lut_rep_73 (.A(nRESETr), .B(DMA), .Z(n4057)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3469_2_lut_rep_73.init = 16'h1111;
    LUT4 i3424_2_lut_3_lut_4_lut (.A(nRESETr), .B(DMA), .C(n4039), .D(n1526), 
         .Z(PHI2_N_569_enable_74)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i3424_2_lut_3_lut_4_lut.init = 16'h111f;
    LUT4 i2362_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_3), .Z(n1388)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2362_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i3_1_lut (.A(SwapState), .Z(SwapState_N_581)) /* synthesis lut_function=(!(A)) */ ;
    defparam i3_1_lut.init = 16'h5555;
    LUT4 i2363_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_2), .Z(n1390)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2363_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2364_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_1), .Z(n1392)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2364_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2365_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_0), .Z(n1394)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2365_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i3451_2_lut_3_lut_4_lut (.A(nRESETr), .B(DMA), .C(n4038), .D(n1526), 
         .Z(PHI2_N_569_enable_51)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam i3451_2_lut_3_lut_4_lut.init = 16'h111f;
    LUT4 DMAr_I_0_2_lut (.A(DMAr), .B(BAr), .Z(NextREUA_N_618)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(120[15:26])
    defparam DMAr_I_0_2_lut.init = 16'h8888;
    LUT4 i2349_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_7), .Z(n1323)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2349_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2357_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_5), .Z(n1350)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2357_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2361_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_4), .Z(n1386)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2361_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2290_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(D_out_6), .Z(n1303)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2290_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2_2_lut_3_lut_4_lut (.A(nRESETr), .B(DMA), .C(n4041), .D(n1526), 
         .Z(PHI2_N_569_enable_82)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h11f1;
    LUT4 i1344_2_lut_3_lut (.A(nRESETr), .B(DMA), .C(PHI2_N_569_enable_87), 
         .Z(n1703)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1344_2_lut_3_lut.init = 16'h1010;
    PFUMX i3514 (.BLUT(n3944), .ALUT(n3943), .C0(DMA), .Z(DMARW_N_599));
    LUT4 XferType_1__I_0_108_i3_2_lut_rep_74 (.A(XferType[0]), .B(XferType[1]), 
         .Z(n4058)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(28[17:37])
    defparam XferType_1__I_0_108_i3_2_lut_rep_74.init = 16'hbbbb;
    LUT4 i1_3_lut_rep_63_4_lut (.A(XferType[0]), .B(XferType[1]), .C(SwapState), 
         .D(n4064), .Z(n4047)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(28[17:37])
    defparam i1_3_lut_rep_63_4_lut.init = 16'hfb00;
    LUT4 FF00DecodeEN_N_437_bdd_4_lut_4_lut (.A(XferType[0]), .B(XferType[1]), 
         .C(SwapState), .D(FF00DecodeEN_N_437), .Z(n3943)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(28[17:37])
    defparam FF00DecodeEN_N_437_bdd_4_lut_4_lut.init = 16'h00d9;
    PFUMX i3558 (.BLUT(n4071), .ALUT(n4072), .C0(DMA), .Z(RAMRD_N_558));
    
endmodule
//
// Verilog Description of module REUReg
//

module REUReg (n4062, n648, n4043, VerifyErr, GND_net, REUA, A_out_1, 
            A_out_3, FF00DecodeEN_N_437, n3737, n647, PHI2_N_569, 
            PHI2_N_569_enable_87, n1703, ExecuteEN, CA, n4057, \Length[11] , 
            n4044, n4041, D_out_6, n4038, D_out_7, n4046, n4040, 
            D_out_2, D_out_3, D_out_5, A_out_2, D_out_4, Length1_N_352, 
            PHI2_N_569_enable_82, n4047, n1394, n1392, n1390, PHI2_N_569_enable_51, 
            D_out_1, D_out_0, n1388, n1386, n1350, FF00DecodeEN, 
            n1303, n1526, PHI2_N_569_enable_24, n1323, n3709, PHI2_N_569_enable_80, 
            n4039, DMA, n3735, XferType, PHI2_N_569_enable_83, IncMode, 
            PHI2_N_569_enable_84, PHI2_N_569_enable_68, A_out_0, n4055, 
            n4045, n4056, PHI2_N_569_enable_74, n11, n642, IncREUA, 
            n4064, n4058, SwapState, n3704, n3701, n649, nIRQ_c, 
            n3952, \RAMRDD[6] , n643, A_0__N_543, A_out_14, n21, 
            n3988, \RAMRDD[4] , n3995, n606, \RAMRDD[2] , n4067) /* synthesis syn_module_defined=1 */ ;
    input n4062;
    output n648;
    input n4043;
    input VerifyErr;
    input GND_net;
    output [23:0]REUA;
    input A_out_1;
    input A_out_3;
    input FF00DecodeEN_N_437;
    output n3737;
    output n647;
    input PHI2_N_569;
    output PHI2_N_569_enable_87;
    input n1703;
    output ExecuteEN;
    output [15:0]CA;
    input n4057;
    output \Length[11] ;
    input n4044;
    input n4041;
    input D_out_6;
    input n4038;
    input D_out_7;
    input n4046;
    input n4040;
    input D_out_2;
    input D_out_3;
    input D_out_5;
    input A_out_2;
    input D_out_4;
    output Length1_N_352;
    input PHI2_N_569_enable_82;
    input n4047;
    input n1394;
    input n1392;
    input n1390;
    input PHI2_N_569_enable_51;
    input D_out_1;
    input D_out_0;
    input n1388;
    input n1386;
    input n1350;
    output FF00DecodeEN;
    input n1303;
    input n1526;
    input PHI2_N_569_enable_24;
    input n1323;
    output n3709;
    input PHI2_N_569_enable_80;
    input n4039;
    input DMA;
    output n3735;
    output [1:0]XferType;
    input PHI2_N_569_enable_83;
    output [1:0]IncMode;
    input PHI2_N_569_enable_84;
    input PHI2_N_569_enable_68;
    input A_out_0;
    output n4055;
    input n4045;
    input n4056;
    input PHI2_N_569_enable_74;
    input n11;
    output n642;
    input IncREUA;
    input n4064;
    input n4058;
    input SwapState;
    output n3704;
    output n3701;
    output n649;
    output nIRQ_c;
    output n3952;
    input \RAMRDD[6] ;
    output n643;
    output A_0__N_543;
    input A_out_14;
    output n21;
    output n3988;
    input \RAMRDD[4] ;
    output n3995;
    output n606;
    input \RAMRDD[2] ;
    output n4067;
    
    wire PHI2_N_569 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire n3698, n3700;
    wire [7:0]n564;
    
    wire n3699, n3749, n4037, Fault, Fault_N_462, n3717, n3718, 
        n3376, n4035;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(45[12:23])
    wire [7:0]REUAOut_15__N_63;
    
    wire n3375, n3374;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(49[12:18])
    
    wire n4069, n4068, AutoloadEN;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(50[12:25])
    wire [7:0]Length_15__N_305;
    wire [7:0]n1052;
    
    wire n3373, REUAOut_15__N_64, n3713;
    wire [7:0]n631;
    
    wire Length_10__N_331, PHI2_N_569_enable_16, n3544;
    wire [7:0]n512;
    
    wire EndOfBlock, EndOfBlock_N_457, n5, n6, n8, Length_11__N_326, 
        IntPending, n3720;
    wire [7:0]CAOut_15__N_149;
    wire [7:0]n520;
    
    wire n3381, PHI2_N_569_enable_63, Length_0__N_386;
    wire [7:0]CAOut_7__N_193;
    
    wire PHI2_N_569_enable_81, n3380, n3379, n3710, n4033, n3712, 
        n3378, PHI2_N_569_enable_20, PHI2_N_569_enable_77, Length_12__N_321, 
        n23, Length_13__N_316;
    wire [7:0]n519;
    
    wire Length_15__N_302, Length_14__N_311, Length_8__N_341, Length_9__N_336, 
        n3545;
    wire [7:0]n1053;
    
    wire Length_6__N_356, IntEnable, n24;
    wire [7:0]n518;
    
    wire Length_7__N_346, n4034;
    wire [2:0]n516;
    
    wire EndOfBlockMask, Length_5__N_361, VerifyErrMask, Length_3__N_371, 
        Length_2__N_376, n4032, n4031, Length_4__N_366;
    wire [5:0]n663;
    wire [7:0]n552;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(40[12:21])
    
    wire Length_1__N_381;
    wire [2:0]n517;
    
    wire REUAOut_18__N_47, n26, PHI2_N_569_enable_79, n17, n15, n11_c, 
        n12, CAOut_15__N_150;
    wire [1:0]IncMode_c;   // c:/users/garre/repos/gw4302/cpld/reg.v(59[11:18])
    wire [7:0]REUAOut_7__N_107;
    
    wire n18, n17_adj_639, n15_adj_640, n12_adj_642, n3716;
    wire [7:0]n621;
    
    wire n11_adj_643;
    wire [7:0]n576;
    
    wire WRD_4__N_23, n3369;
    wire [7:0]Length_7__N_349;
    
    wire n3368, n3367, n3366, n3364, n3363, n3362, n3361, n3356, 
        n3355, n3354, n3353, nSize, n1285, n3986, n3985, n3987, 
        n3348, n3347, n3346, n3345, IncCA, n29, n27, n3984, 
        IRQOut_N_445, n1064;
    wire [7:0]n588;
    
    wire n3696, n16, n3688, n4066, n4070, n4065;
    
    L6MUX21 mux_280_i2 (.D0(n3698), .D1(n3700), .SD(n4062), .Z(n648));
    PFUMX i3328 (.BLUT(n564[1]), .ALUT(n3699), .C0(n3749), .Z(n3700));
    LUT4 i2293_3_lut_4_lut (.A(n4043), .B(n4037), .C(Fault), .D(VerifyErr), 
         .Z(Fault_N_462)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(90[15:36])
    defparam i2293_3_lut_4_lut.init = 16'hddd0;
    PFUMX i3346 (.BLUT(n564[0]), .ALUT(n3717), .C0(n3749), .Z(n3718));
    CCU2D REUAOut_15__I_0_9 (.A0(GND_net), .B0(n4035), .C0(REUAWritten[14]), 
          .D0(REUA[14]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[15]), 
          .D1(REUA[15]), .CIN(n3376), .S0(REUAOut_15__N_63[6]), .S1(REUAOut_15__N_63[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(177[17:33])
    defparam REUAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_7 (.A0(GND_net), .B0(n4035), .C0(REUAWritten[12]), 
          .D0(REUA[12]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[13]), 
          .D1(REUA[13]), .CIN(n3375), .COUT(n3376), .S0(REUAOut_15__N_63[4]), 
          .S1(REUAOut_15__N_63[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(177[17:33])
    defparam REUAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_15__I_0_5 (.A0(GND_net), .B0(n4035), .C0(REUAWritten[10]), 
          .D0(REUA[10]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[11]), 
          .D1(REUA[11]), .CIN(n3374), .COUT(n3375), .S0(REUAOut_15__N_63[2]), 
          .S1(REUAOut_15__N_63[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(177[17:33])
    defparam REUAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_5.INJECT1_1 = "NO";
    LUT4 n3993_bdd_3_lut_then_4_lut (.A(Length[4]), .B(A_out_1), .C(A_out_3), 
         .D(REUA[12]), .Z(n4069)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C)+!B (C+(D)))) */ ;
    defparam n3993_bdd_3_lut_then_4_lut.init = 16'hfbf8;
    LUT4 n3993_bdd_3_lut_else_4_lut (.A(REUA[4]), .B(A_out_1), .C(Length[12]), 
         .D(A_out_3), .Z(n4068)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam n3993_bdd_3_lut_else_4_lut.init = 16'hfcee;
    LUT4 mux_733_i8_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[15]), .D(Length_15__N_305[7]), .Z(n1052[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i8_3_lut_4_lut.init = 16'hf780;
    CCU2D REUAOut_15__I_0_3 (.A0(REUAOut_15__N_64), .B0(n4035), .C0(REUAWritten[8]), 
          .D0(REUA[8]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[9]), 
          .D1(REUA[9]), .CIN(n3373), .COUT(n3374), .S0(REUAOut_15__N_63[0]), 
          .S1(REUAOut_15__N_63[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(177[17:33])
    defparam REUAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_3.INJECT1_1 = "NO";
    PFUMX mux_280_i3 (.BLUT(n3713), .ALUT(n631[2]), .C0(n3737), .Z(n647));
    FD1P3JX Length_10__669 (.D(Length_10__N_331), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_10__669.GSR = "ENABLED";
    FD1P3AX ExecuteEN_569 (.D(n3544), .SP(PHI2_N_569_enable_16), .CK(PHI2_N_569), 
            .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam ExecuteEN_569.GSR = "ENABLED";
    FD1S3IX CA_7__573 (.D(n512[7]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_7__573.GSR = "ENABLED";
    LUT4 i2292_3_lut_4_lut (.A(n4043), .B(n4037), .C(EndOfBlock), .D(FF00DecodeEN_N_437), 
         .Z(EndOfBlock_N_457)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(90[15:36])
    defparam i2292_3_lut_4_lut.init = 16'hddd0;
    LUT4 i3_4_lut (.A(REUA[11]), .B(REUA[10]), .C(n5), .D(n6), .Z(n8)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    FD1P3JX Length_11__668 (.D(Length_11__N_326), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(\Length[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_11__668.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(REUA[15]), .B(REUA[8]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i3348_3_lut_4_lut (.A(n4043), .B(n4037), .C(FF00DecodeEN_N_437), 
         .D(IntPending), .Z(n3720)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(90[15:36])
    defparam i3348_3_lut_4_lut.init = 16'hddd0;
    FD1S3IX CA_6__574 (.D(n512[6]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_6__574.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(REUA[13]), .B(REUA[12]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 mux_239_i7_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_6), .D(CAOut_15__N_149[6]), 
         .Z(n520[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i7_3_lut_4_lut.init = 16'hfb40;
    CCU2D Length_15__I_0_add_2_9 (.A0(Length[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3381), .S0(Length_15__N_305[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(222[19:37])
    defparam Length_15__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_15__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_9.INJECT1_1 = "NO";
    FD1P3JX Length_0__655 (.D(Length_0__N_386), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_0__655.GSR = "ENABLED";
    FD1S3IX CA_5__575 (.D(n512[5]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_5__575.GSR = "ENABLED";
    FD1S3IX CA_4__576 (.D(n512[4]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_4__576.GSR = "ENABLED";
    FD1S3IX CA_3__577 (.D(n512[3]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_3__577.GSR = "ENABLED";
    FD1S3IX CA_2__578 (.D(n512[2]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_2__578.GSR = "ENABLED";
    FD1S3IX CA_1__579 (.D(n512[1]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_1__579.GSR = "ENABLED";
    FD1S3IX CA_0__580 (.D(n512[0]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CA_0__580.GSR = "ENABLED";
    FD1S3IX CA_15__589 (.D(n520[7]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_15__589.GSR = "ENABLED";
    LUT4 mux_231_i8_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_7), .D(CAOut_7__N_193[7]), 
         .Z(n512[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_231_i7_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_6), .D(CAOut_7__N_193[6]), 
         .Z(n512[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_10__I_84_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_2), 
         .D(n1052[2]), .Z(Length_10__N_331)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_10__I_84_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_6__614 (.D(D_out_6), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_6__614.GSR = "ENABLED";
    CCU2D Length_15__I_0_add_2_7 (.A0(Length[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3380), .COUT(n3381), .S0(Length_15__N_305[5]), 
          .S1(Length_15__N_305[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(222[19:37])
    defparam Length_15__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 Length_11__I_82_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_3), 
         .D(n1052[3]), .Z(Length_11__N_326)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_11__I_82_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_231_i6_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_5), .D(CAOut_7__N_193[5]), 
         .Z(n512[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i6_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_15__I_0_add_2_5 (.A0(\Length[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3379), .COUT(n3380), .S0(Length_15__N_305[3]), 
          .S1(Length_15__N_305[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(222[19:37])
    defparam Length_15__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_5.INJECT1_1 = "NO";
    L6MUX21 i3340 (.D0(n3710), .D1(n4033), .SD(A_out_2), .Z(n3712));
    CCU2D Length_15__I_0_add_2_3 (.A0(Length[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3378), .COUT(n3379), .S0(Length_15__N_305[1]), 
          .S1(Length_15__N_305[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(222[19:37])
    defparam Length_15__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_3.INJECT1_1 = "NO";
    LUT4 mux_231_i5_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_4), .D(CAOut_7__N_193[4]), 
         .Z(n512[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3_4_lut_adj_158 (.A(Length1_N_352), .B(PHI2_N_569_enable_82), 
         .C(n4035), .D(n4047), .Z(PHI2_N_569_enable_63)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_158.init = 16'hfefc;
    FD1P3IX REUAWritten_7__613 (.D(D_out_7), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_7__613.GSR = "ENABLED";
    FD1P3AX LengthWritten_8__679 (.D(n1394), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_8__679.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__678 (.D(n1392), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_9__678.GSR = "ENABLED";
    FD1P3IX IntPending_565 (.D(n3720), .SP(PHI2_N_569_enable_77), .CD(n4057), 
            .CK(PHI2_N_569), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(82[8] 99[4])
    defparam IntPending_565.GSR = "ENABLED";
    LUT4 Length_12__I_80_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_4), 
         .D(n1052[4]), .Z(Length_12__N_321)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_12__I_80_3_lut_4_lut.init = 16'hfe10;
    LUT4 i7_2_lut (.A(Length[12]), .B(Length[3]), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam i7_2_lut.init = 16'heeee;
    FD1P3AX LengthWritten_10__677 (.D(n1390), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_10__677.GSR = "ENABLED";
    FD1S3IX CA_14__590 (.D(n520[6]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_14__590.GSR = "ENABLED";
    LUT4 Length_13__I_78_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_5), 
         .D(n1052[5]), .Z(Length_13__N_316)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_13__I_78_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX CA_13__591 (.D(n520[5]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_13__591.GSR = "ENABLED";
    FD1S3IX CA_12__592 (.D(n520[4]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_12__592.GSR = "ENABLED";
    FD1S3IX CA_11__593 (.D(n520[3]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_11__593.GSR = "ENABLED";
    FD1S3IX CA_10__594 (.D(n520[2]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_10__594.GSR = "ENABLED";
    FD1S3IX CA_9__595 (.D(n520[1]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_9__595.GSR = "ENABLED";
    FD1S3IX CA_8__596 (.D(n520[0]), .CK(PHI2_N_569), .CD(n4057), .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CA_8__596.GSR = "ENABLED";
    FD1S3IX REUA_7__605 (.D(n519[7]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_7__605.GSR = "ENABLED";
    FD1P3IX REUAWritten_17__646 (.D(D_out_1), .SP(PHI2_N_569_enable_51), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUAWritten_17__646.GSR = "ENABLED";
    LUT4 Length_15__I_74_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_7), 
         .D(n1052[7]), .Z(Length_15__N_302)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_15__I_74_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_14__I_76_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_6), 
         .D(n1052[6]), .Z(Length_14__N_311)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_14__I_76_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_8__I_88_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_0), 
         .D(n1052[0]), .Z(Length_8__N_341)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_8__I_88_3_lut_4_lut.init = 16'hfe10;
    LUT4 Length_9__I_86_3_lut_4_lut (.A(n4046), .B(n4040), .C(D_out_1), 
         .D(n1052[1]), .Z(Length_9__N_336)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam Length_9__I_86_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_11__676 (.D(n1388), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_11__676.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__675 (.D(n1386), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_12__675.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__674 (.D(n1350), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_13__674.GSR = "ENABLED";
    CCU2D Length_15__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3378), .S1(Length_15__N_305[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(222[19:37])
    defparam Length_15__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_15__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_15__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_15__I_0_add_2_1.INJECT1_1 = "NO";
    FD1P3IX REUAWritten_18__645 (.D(D_out_2), .SP(PHI2_N_569_enable_51), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUAWritten_18__645.GSR = "ENABLED";
    FD1P3AX FF00DecodeEN_570 (.D(n3545), .SP(PHI2_N_569_enable_16), .CK(PHI2_N_569), 
            .Q(FF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam FF00DecodeEN_570.GSR = "ENABLED";
    FD1P3IX REUA_19__641 (.D(D_out_3), .SP(PHI2_N_569_enable_51), .CD(n4057), 
            .CK(PHI2_N_569), .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_19__641.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__673 (.D(n1303), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_14__673.GSR = "ENABLED";
    LUT4 Length_6__I_93_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_6), 
         .D(n1053[6]), .Z(Length_6__N_356)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_6__I_93_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX IntEnable_680 (.D(D_out_7), .SP(PHI2_N_569_enable_24), .CD(n4057), 
            .CK(PHI2_N_569), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[8] 237[4])
    defparam IntEnable_680.GSR = "ENABLED";
    LUT4 i8_2_lut (.A(Length[0]), .B(Length[5]), .Z(n24)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam i8_2_lut.init = 16'hdddd;
    FD1P3AX LengthWritten_15__672 (.D(n1323), .SP(PHI2_N_569_enable_20), 
            .CK(PHI2_N_569), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam LengthWritten_15__672.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__663 (.D(n1394), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_0__663.GSR = "ENABLED";
    FD1S3IX REUA_6__606 (.D(n519[6]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_6__606.GSR = "ENABLED";
    FD1S3IX REUA_5__607 (.D(n519[5]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_5__607.GSR = "ENABLED";
    FD1S3IX REUA_4__608 (.D(n519[4]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_4__608.GSR = "ENABLED";
    FD1S3IX REUA_3__609 (.D(n519[3]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_3__609.GSR = "ENABLED";
    FD1S3IX REUA_2__610 (.D(n519[2]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_2__610.GSR = "ENABLED";
    FD1S3IX REUA_1__611 (.D(n519[1]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_1__611.GSR = "ENABLED";
    FD1S3IX REUA_0__612 (.D(n519[0]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUA_0__612.GSR = "ENABLED";
    FD1S3IX REUA_15__621 (.D(n518[7]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_15__621.GSR = "ENABLED";
    LUT4 Length_7__I_91_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_7), 
         .D(n1053[7]), .Z(Length_7__N_346)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_7__I_91_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_235_i2_4_lut (.A(REUA[17]), .B(REUAWritten[17]), .C(n4035), 
         .D(n4034), .Z(n516[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[18:34])
    defparam mux_235_i2_4_lut.init = 16'hc5ca;
    LUT4 Length_0__I_105_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_0), 
         .D(n1053[0]), .Z(Length_0__N_386)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_0__I_105_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX EndOfBlockMask_681 (.D(D_out_6), .SP(PHI2_N_569_enable_24), 
            .CD(n4057), .CK(PHI2_N_569), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[8] 237[4])
    defparam EndOfBlockMask_681.GSR = "ENABLED";
    LUT4 Length_5__I_95_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_5), 
         .D(n1053[5]), .Z(Length_5__N_361)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_5__I_95_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_1__662 (.D(n1392), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_1__662.GSR = "ENABLED";
    FD1P3IX VerifyErrMask_682 (.D(D_out_5), .SP(PHI2_N_569_enable_24), .CD(n4057), 
            .CK(PHI2_N_569), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(227[8] 237[4])
    defparam VerifyErrMask_682.GSR = "ENABLED";
    LUT4 Length_3__I_99_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_3), 
         .D(n1053[3]), .Z(Length_3__N_371)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_3__I_99_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX LengthWritten_2__661 (.D(n1390), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_2__661.GSR = "ENABLED";
    FD1P3IX REUA_20__640 (.D(D_out_4), .SP(PHI2_N_569_enable_51), .CD(n4057), 
            .CK(PHI2_N_569), .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_20__640.GSR = "ENABLED";
    LUT4 mux_733_i6_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[13]), .D(Length_15__N_305[5]), .Z(n1052[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 Length_2__I_101_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_2), 
         .D(n1053[2]), .Z(Length_2__N_376)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_2__I_101_3_lut_4_lut.init = 16'hfb40;
    FD1P3IX REUA_21__639 (.D(D_out_5), .SP(PHI2_N_569_enable_51), .CD(n4057), 
            .CK(PHI2_N_569), .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_21__639.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__660 (.D(n1388), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_3__660.GSR = "ENABLED";
    FD1P3IX REUA_22__638 (.D(D_out_6), .SP(PHI2_N_569_enable_51), .CD(n4057), 
            .CK(PHI2_N_569), .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_22__638.GSR = "ENABLED";
    FD1S3IX REUA_14__622 (.D(n518[6]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_14__622.GSR = "ENABLED";
    L6MUX21 i3337 (.D0(n4032), .D1(n4031), .SD(A_out_2), .Z(n3709));
    FD1S3IX REUA_13__623 (.D(n518[5]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_13__623.GSR = "ENABLED";
    FD1S3IX REUA_12__624 (.D(n518[4]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_12__624.GSR = "ENABLED";
    FD1S3IX REUA_11__625 (.D(n518[3]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_11__625.GSR = "ENABLED";
    FD1S3IX REUA_10__626 (.D(n518[2]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_10__626.GSR = "ENABLED";
    FD1S3IX REUA_9__627 (.D(n518[1]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_9__627.GSR = "ENABLED";
    FD1S3IX REUA_8__628 (.D(n518[0]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUA_8__628.GSR = "ENABLED";
    FD1P3IX REUAWritten_4__616 (.D(D_out_4), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_4__616.GSR = "ENABLED";
    LUT4 Length_4__I_97_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_4), 
         .D(n1053[4]), .Z(Length_4__N_366)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_4__I_97_3_lut_4_lut.init = 16'hfb40;
    PFUMX i3326 (.BLUT(n663[1]), .ALUT(n552[1]), .C0(A_out_1), .Z(n3698));
    FD1P3IX REUAWritten_16__647 (.D(D_out_0), .SP(PHI2_N_569_enable_51), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUAWritten_16__647.GSR = "ENABLED";
    FD1P3AX LengthWritten_4__659 (.D(n1386), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_4__659.GSR = "ENABLED";
    FD1P3AX CAWritten_12__600 (.D(D_out_4), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_12__600.GSR = "ENABLED";
    LUT4 Length_1__I_103_3_lut_4_lut (.A(n1526), .B(n4041), .C(D_out_1), 
         .D(n1053[1]), .Z(Length_1__N_381)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Length_1__I_103_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX REUA_18__642 (.D(n517[2]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_18__642.GSR = "ENABLED";
    LUT4 mux_237_i8_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_7), .D(REUAOut_15__N_63[7]), 
         .Z(n518[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i8_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX REUA_17__643 (.D(n517[1]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_17__643.GSR = "ENABLED";
    FD1S3IX REUA_16__644 (.D(n517[0]), .CK(PHI2_N_569), .CD(n4057), .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_16__644.GSR = "ENABLED";
    LUT4 i3363_3_lut_3_lut_4_lut (.A(A_out_2), .B(A_out_1), .C(A_out_3), 
         .D(DMA), .Z(n3735)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i3363_3_lut_3_lut_4_lut.init = 16'h000d;
    FD1P3AX CAWritten_15__597 (.D(D_out_7), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_15__597.GSR = "ENABLED";
    FD1P3AX CAWritten_11__601 (.D(D_out_3), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_11__601.GSR = "ENABLED";
    FD1P3AX CAWritten_10__602 (.D(D_out_2), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_10__602.GSR = "ENABLED";
    FD1P3AX CAWritten_9__603 (.D(D_out_1), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_9__603.GSR = "ENABLED";
    LUT4 mux_237_i7_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_6), .D(REUAOut_15__N_63[6]), 
         .Z(n518[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i7_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX XferType__i0 (.D(D_out_0), .SP(PHI2_N_569_enable_83), .CD(n4057), 
            .CK(PHI2_N_569), .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam XferType__i0.GSR = "ENABLED";
    LUT4 mux_237_i6_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_5), .D(REUAOut_15__N_63[5]), 
         .Z(n518[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i6_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX IncMode__i0 (.D(D_out_6), .SP(PHI2_N_569_enable_84), .CD(n4057), 
            .CK(PHI2_N_569), .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(243[8] 246[4])
    defparam IncMode__i0.GSR = "ENABLED";
    LUT4 i738_2_lut_rep_50 (.A(REUA[16]), .B(REUAOut_18__N_47), .Z(n4034)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[18:34])
    defparam i738_2_lut_rep_50.init = 16'h8888;
    LUT4 mux_237_i5_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_4), .D(REUAOut_15__N_63[4]), 
         .Z(n518[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_237_i4_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_3), .D(REUAOut_15__N_63[3]), 
         .Z(n518[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_231_i4_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_3), .D(CAOut_7__N_193[3]), 
         .Z(n512[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_237_i3_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_2), .D(REUAOut_15__N_63[2]), 
         .Z(n518[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_237_i2_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_1), .D(REUAOut_15__N_63[1]), 
         .Z(n518[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_235_i1_4_lut (.A(REUA[16]), .B(REUAWritten[16]), .C(n4035), 
         .D(REUAOut_18__N_47), .Z(n516[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[18:34])
    defparam mux_235_i1_4_lut.init = 16'hc5ca;
    LUT4 mux_231_i3_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_2), .D(CAOut_7__N_193[2]), 
         .Z(n512[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_237_i1_3_lut_4_lut (.A(n1526), .B(n4039), .C(D_out_0), .D(REUAOut_15__N_63[0]), 
         .Z(n518[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_237_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i10_4_lut (.A(Length[2]), .B(Length[10]), .C(\Length[11] ), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 mux_231_i2_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_1), .D(CAOut_7__N_193[1]), 
         .Z(n512[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_236_i3_3_lut_4_lut (.A(n1526), .B(n4038), .C(D_out_2), .D(n516[2]), 
         .Z(n517[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_236_i3_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_8__604 (.D(D_out_0), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_8__604.GSR = "ENABLED";
    LUT4 mux_236_i2_3_lut_4_lut (.A(n1526), .B(n4038), .C(D_out_1), .D(n516[1]), 
         .Z(n517[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_236_i2_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX LengthWritten_7__656 (.D(n1323), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_7__656.GSR = "ENABLED";
    LUT4 mux_231_i1_3_lut_4_lut (.A(n4044), .B(n4038), .C(D_out_0), .D(CAOut_7__N_193[0]), 
         .Z(n512[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_231_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_236_i1_3_lut_4_lut (.A(n1526), .B(n4038), .C(D_out_0), .D(n516[0]), 
         .Z(n517[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_236_i1_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CAWritten_6__582 (.D(D_out_6), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_6__582.GSR = "ENABLED";
    FD1P3AX CAWritten_5__583 (.D(D_out_5), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_5__583.GSR = "ENABLED";
    FD1P3AX CAWritten_4__584 (.D(D_out_4), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_4__584.GSR = "ENABLED";
    FD1P3JX Length_12__667 (.D(Length_12__N_321), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_12__667.GSR = "ENABLED";
    LUT4 mux_259_i8_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n564[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_259_i8_3_lut.init = 16'hcaca;
    FD1P3JX Length_1__654 (.D(Length_1__N_381), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_1__654.GSR = "ENABLED";
    LUT4 i544_2_lut_3_lut_4_lut (.A(n4055), .B(n4044), .C(n4057), .D(n4045), 
         .Z(PHI2_N_569_enable_77)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i544_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3418_2_lut_3_lut_4_lut (.A(n4055), .B(n4044), .C(n4057), .D(n4045), 
         .Z(PHI2_N_569_enable_79)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i3418_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 mux_733_i3_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[10]), .D(Length_15__N_305[2]), .Z(n1052[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_259_i2_3_lut (.A(REUA[1]), .B(REUA[9]), .C(A_out_0), .Z(n564[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_259_i2_3_lut.init = 16'hcaca;
    FD1P3JX Length_2__653 (.D(Length_2__N_376), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_2__653.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11_c), .D(n12), .Z(CAOut_15__N_150)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(23[9:16])
    defparam i9_4_lut.init = 16'h8000;
    LUT4 A_4__I_0_688_i9_2_lut_rep_53_3_lut_4_lut (.A(A_out_0), .B(A_out_1), 
         .C(n4056), .D(A_out_3), .Z(n4037)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam A_4__I_0_688_i9_2_lut_rep_53_3_lut_4_lut.init = 16'hfffe;
    FD1P3JX Length_13__666 (.D(Length_13__N_316), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_13__666.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(IncMode_c[1]), .B(CA[7]), .C(CA[2]), .D(CA[0]), 
         .Z(n17)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(23[9:16])
    defparam i7_4_lut.init = 16'h4000;
    FD1P3IX Fault_567 (.D(Fault_N_462), .SP(PHI2_N_569_enable_77), .CD(n4057), 
            .CK(PHI2_N_569), .Q(Fault)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(82[8] 99[4])
    defparam Fault_567.GSR = "ENABLED";
    FD1P3AX CAWritten_3__585 (.D(D_out_3), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_3__585.GSR = "ENABLED";
    LUT4 mux_238_i8_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_7), .D(REUAOut_7__N_107[7]), 
         .Z(n519[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i8_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUA_23__637 (.D(D_out_7), .SP(PHI2_N_569_enable_51), .CD(n4057), 
            .CK(PHI2_N_569), .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(182[8] 194[4])
    defparam REUA_23__637.GSR = "ENABLED";
    LUT4 i2_2_lut_adj_159 (.A(Length[9]), .B(Length[13]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam i2_2_lut_adj_159.init = 16'heeee;
    LUT4 i3437_2_lut_3_lut_4_lut (.A(n4045), .B(n4055), .C(n4057), .D(n1526), 
         .Z(PHI2_N_569_enable_81)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i3437_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i5_2_lut (.A(CA[1]), .B(CA[4]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(23[9:16])
    defparam i5_2_lut.init = 16'h8888;
    FD1P3IX REUAWritten_8__636 (.D(D_out_0), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_8__636.GSR = "ENABLED";
    FD1P3AX CAWritten_2__586 (.D(D_out_2), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_2__586.GSR = "ENABLED";
    LUT4 i3433_2_lut_3_lut_4_lut (.A(n4045), .B(n4055), .C(n4057), .D(n4046), 
         .Z(PHI2_N_569_enable_20)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i3433_2_lut_3_lut_4_lut.init = 16'hf0f1;
    FD1P3AX CAWritten_1__587 (.D(D_out_1), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_1__587.GSR = "ENABLED";
    FD1P3AX CAWritten_0__588 (.D(D_out_0), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_0__588.GSR = "ENABLED";
    LUT4 i2_2_lut_adj_160 (.A(CA[5]), .B(CA[3]), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(23[9:16])
    defparam i2_2_lut_adj_160.init = 16'h8888;
    FD1P3IX REUAWritten_5__615 (.D(D_out_5), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_5__615.GSR = "ENABLED";
    LUT4 mux_733_i5_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[12]), .D(Length_15__N_305[4]), .Z(n1052[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i9_4_lut_adj_161 (.A(n17_adj_639), .B(n15_adj_640), .C(n11), 
         .D(n12_adj_642), .Z(REUAOut_15__N_64)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut_adj_161.init = 16'h8000;
    FD1P3JX Length_15__664 (.D(Length_15__N_302), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_15__664.GSR = "ENABLED";
    FD1P3JX Length_3__652 (.D(Length_3__N_371), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_3__652.GSR = "ENABLED";
    FD1P3JX Length_4__651 (.D(Length_4__N_366), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_4__651.GSR = "ENABLED";
    PFUMX i3344 (.BLUT(n663[0]), .ALUT(n552[0]), .C0(A_out_1), .Z(n3716));
    FD1P3JX Length_14__665 (.D(Length_14__N_311), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_14__665.GSR = "ENABLED";
    LUT4 mux_238_i7_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_6), .D(REUAOut_7__N_107[6]), 
         .Z(n519[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i7_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_280_i8_3_lut (.A(n3712), .B(n621[7]), .C(A_out_3), .Z(n642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_280_i8_3_lut.init = 16'hcaca;
    FD1P3JX Length_5__650 (.D(Length_5__N_361), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_5__650.GSR = "ENABLED";
    FD1P3JX Length_6__649 (.D(Length_6__N_356), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_6__649.GSR = "ENABLED";
    LUT4 i16_3_lut (.A(n11_adj_643), .B(IncMode_c[1]), .C(A_out_1), .Z(n621[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16_3_lut.init = 16'hcaca;
    FD1P3JX Length_7__648 (.D(Length_7__N_346), .SP(PHI2_N_569_enable_63), 
            .PD(n4057), .CK(PHI2_N_569), .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam Length_7__648.GSR = "ENABLED";
    LUT4 i15_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), .Z(n11_adj_643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15_3_lut.init = 16'hcaca;
    FD1P3AX CAWritten_14__598 (.D(D_out_6), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_14__598.GSR = "ENABLED";
    LUT4 i3402_3_lut_4_lut (.A(Length[9]), .B(n4055), .C(A_out_3), .D(n576[1]), 
         .Z(n3699)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i3402_3_lut_4_lut.init = 16'hefe0;
    LUT4 i3400_3_lut_4_lut (.A(Length[8]), .B(n4055), .C(A_out_3), .D(n576[0]), 
         .Z(n3717)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i3400_3_lut_4_lut.init = 16'hefe0;
    LUT4 WRD_4__I_0_1_lut (.A(D_out_4), .Z(WRD_4__N_23)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(108[19:26])
    defparam WRD_4__I_0_1_lut.init = 16'h5555;
    FD1P3IX REUAWritten_9__635 (.D(D_out_1), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_9__635.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(REUA[14]), .B(REUAOut_15__N_64), .C(n8), .D(REUA[9]), 
         .Z(REUAOut_18__N_47)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    FD1P3IX REUAWritten_10__634 (.D(D_out_2), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_10__634.GSR = "ENABLED";
    CCU2D REUAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FF00DecodeEN_N_437), .B1(AutoloadEN), .C1(GND_net), 
          .D1(GND_net), .COUT(n3373));   // c:/users/garre/repos/gw4302/cpld/reg.v(177[17:33])
    defparam REUAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_15__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_238_i6_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_5), .D(REUAOut_7__N_107[5]), 
         .Z(n519[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i6_3_lut_4_lut.init = 16'hfe10;
    CCU2D Length_7__I_0_add_2_9 (.A0(Length[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3369), .S0(Length_7__N_349[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(207[18:35])
    defparam Length_7__I_0_add_2_9.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_9.INIT1 = 16'h0000;
    defparam Length_7__I_0_add_2_9.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_7 (.A0(Length[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3368), .COUT(n3369), .S0(Length_7__N_349[5]), 
          .S1(Length_7__N_349[6]));   // c:/users/garre/repos/gw4302/cpld/reg.v(207[18:35])
    defparam Length_7__I_0_add_2_7.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_7.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_5 (.A0(Length[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3367), .COUT(n3368), .S0(Length_7__N_349[3]), 
          .S1(Length_7__N_349[4]));   // c:/users/garre/repos/gw4302/cpld/reg.v(207[18:35])
    defparam Length_7__I_0_add_2_5.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_5.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_3 (.A0(Length[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3366), .COUT(n3367), .S0(Length_7__N_349[1]), 
          .S1(Length_7__N_349[2]));   // c:/users/garre/repos/gw4302/cpld/reg.v(207[18:35])
    defparam Length_7__I_0_add_2_3.INIT0 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_3.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D Length_7__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Length[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3366), .S1(Length_7__N_349[0]));   // c:/users/garre/repos/gw4302/cpld/reg.v(207[18:35])
    defparam Length_7__I_0_add_2_1.INIT0 = 16'hF000;
    defparam Length_7__I_0_add_2_1.INIT1 = 16'h5555;
    defparam Length_7__I_0_add_2_1.INJECT1_0 = "NO";
    defparam Length_7__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 i7_4_lut_adj_162 (.A(IncMode[0]), .B(REUA[0]), .C(REUA[2]), .D(REUA[7]), 
         .Z(n17_adj_639)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i7_4_lut_adj_162.init = 16'h4000;
    CCU2D REUAOut_7__I_0_9 (.A0(GND_net), .B0(n4035), .C0(REUAWritten[6]), 
          .D0(REUA[6]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[7]), 
          .D1(REUA[7]), .CIN(n3364), .S0(REUAOut_7__N_107[6]), .S1(REUAOut_7__N_107[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(162[16:31])
    defparam REUAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_7 (.A0(GND_net), .B0(n4035), .C0(REUAWritten[4]), 
          .D0(REUA[4]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[5]), 
          .D1(REUA[5]), .CIN(n3363), .COUT(n3364), .S0(REUAOut_7__N_107[4]), 
          .S1(REUAOut_7__N_107[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(162[16:31])
    defparam REUAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_5 (.A0(GND_net), .B0(n4035), .C0(REUAWritten[2]), 
          .D0(REUA[2]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[3]), 
          .D1(REUA[3]), .CIN(n3362), .COUT(n3363), .S0(REUAOut_7__N_107[2]), 
          .S1(REUAOut_7__N_107[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(162[16:31])
    defparam REUAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam REUAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_3 (.A0(IncREUA), .B0(n4035), .C0(REUAWritten[0]), 
          .D0(REUA[0]), .A1(GND_net), .B1(n4035), .C1(REUAWritten[1]), 
          .D1(REUA[1]), .CIN(n3361), .COUT(n3362), .S0(REUAOut_7__N_107[0]), 
          .S1(REUAOut_7__N_107[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(162[16:31])
    defparam REUAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam REUAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam REUAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D REUAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FF00DecodeEN_N_437), .B1(AutoloadEN), .C1(GND_net), 
          .D1(GND_net), .COUT(n3361));   // c:/users/garre/repos/gw4302/cpld/reg.v(162[16:31])
    defparam REUAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam REUAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam REUAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam REUAOut_7__I_0_1.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_9 (.A0(GND_net), .B0(n4035), .C0(CAWritten[14]), 
          .D0(CA[14]), .A1(GND_net), .B1(n4035), .C1(CAWritten[15]), 
          .D1(CA[15]), .CIN(n3356), .S0(CAOut_15__N_149[6]), .S1(CAOut_15__N_149[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(147[15:29])
    defparam CAOut_15__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_7 (.A0(GND_net), .B0(n4035), .C0(CAWritten[12]), 
          .D0(CA[12]), .A1(GND_net), .B1(n4035), .C1(CAWritten[13]), 
          .D1(CA[13]), .CIN(n3355), .COUT(n3356), .S0(CAOut_15__N_149[4]), 
          .S1(CAOut_15__N_149[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(147[15:29])
    defparam CAOut_15__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_5 (.A0(GND_net), .B0(n4035), .C0(CAWritten[10]), 
          .D0(CA[10]), .A1(GND_net), .B1(n4035), .C1(CAWritten[11]), 
          .D1(CA[11]), .CIN(n3354), .COUT(n3355), .S0(CAOut_15__N_149[2]), 
          .S1(CAOut_15__N_149[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(147[15:29])
    defparam CAOut_15__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_15__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_3 (.A0(CAOut_15__N_150), .B0(n4035), .C0(CAWritten[8]), 
          .D0(CA[8]), .A1(GND_net), .B1(n4035), .C1(CAWritten[9]), .D1(CA[9]), 
          .CIN(n3353), .COUT(n3354), .S0(CAOut_15__N_149[0]), .S1(CAOut_15__N_149[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(147[15:29])
    defparam CAOut_15__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_15__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_15__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FF00DecodeEN_N_437), .B1(AutoloadEN), .C1(GND_net), .D1(GND_net), 
          .COUT(n3353));   // c:/users/garre/repos/gw4302/cpld/reg.v(147[15:29])
    defparam CAOut_15__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_15__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_15__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_15__I_0_1.INJECT1_1 = "NO";
    FD1P3AX LengthWritten_6__657 (.D(n1303), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_6__657.GSR = "ENABLED";
    FD1P3AX CAWritten_7__581 (.D(D_out_7), .SP(PHI2_N_569_enable_68), .CK(PHI2_N_569), 
            .Q(CAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 135[4])
    defparam CAWritten_7__581.GSR = "ENABLED";
    FD1P3IX REUAWritten_11__633 (.D(D_out_3), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_11__633.GSR = "ENABLED";
    PFUMX i3338 (.BLUT(n663[5]), .ALUT(n552[7]), .C0(A_out_1), .Z(n3710));
    FD1P3IX AutoloadEN_571 (.D(D_out_5), .SP(PHI2_N_569_enable_83), .CD(n4057), 
            .CK(PHI2_N_569), .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam AutoloadEN_571.GSR = "ENABLED";
    FD1P3IX REUAWritten_12__632 (.D(D_out_4), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_12__632.GSR = "ENABLED";
    LUT4 i2814_3_lut (.A(CA[4]), .B(CA[12]), .C(A_out_0), .Z(n552[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2814_3_lut.init = 16'hcaca;
    FD1P3IX REUAWritten_13__631 (.D(D_out_5), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_13__631.GSR = "ENABLED";
    FD1P3IX REUAWritten_14__630 (.D(D_out_6), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_14__630.GSR = "ENABLED";
    FD1P3IX REUAWritten_15__629 (.D(D_out_7), .SP(PHI2_N_569_enable_74), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(167[8] 179[4])
    defparam REUAWritten_15__629.GSR = "ENABLED";
    FD1P3IX REUAWritten_0__620 (.D(D_out_0), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_0__620.GSR = "ENABLED";
    FD1P3IX REUAWritten_1__619 (.D(D_out_1), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_1__619.GSR = "ENABLED";
    FD1P3IX EndOfBlock_566 (.D(EndOfBlock_N_457), .SP(PHI2_N_569_enable_77), 
            .CD(n4057), .CK(PHI2_N_569), .Q(EndOfBlock)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(82[8] 99[4])
    defparam EndOfBlock_566.GSR = "ENABLED";
    FD1P3IX REUAWritten_2__618 (.D(D_out_2), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_2__618.GSR = "ENABLED";
    FD1P3IX nSize_568 (.D(WRD_4__N_23), .SP(PHI2_N_569_enable_79), .CD(n4057), 
            .CK(PHI2_N_569), .Q(nSize)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(82[8] 99[4])
    defparam nSize_568.GSR = "ENABLED";
    LUT4 i923_3_lut (.A(nSize), .B(FF00DecodeEN), .C(A_out_0), .Z(n1285)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam i923_3_lut.init = 16'h3535;
    PFUMX i3528 (.BLUT(n3986), .ALUT(n3985), .C0(A_out_3), .Z(n3987));
    FD1P3AX CAWritten_13__599 (.D(D_out_5), .SP(PHI2_N_569_enable_80), .CK(PHI2_N_569), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(138[8] 149[4])
    defparam CAWritten_13__599.GSR = "ENABLED";
    LUT4 mux_733_i7_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[14]), .D(Length_15__N_305[6]), .Z(n1052[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_238_i5_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_4), .D(REUAOut_7__N_107[4]), 
         .Z(n519[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i5_3_lut_4_lut.init = 16'hfe10;
    FD1P3IX REUAWritten_3__617 (.D(D_out_3), .SP(PHI2_N_569_enable_81), 
            .CD(n4057), .CK(PHI2_N_569), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(152[8] 164[4])
    defparam REUAWritten_3__617.GSR = "ENABLED";
    LUT4 mux_255_i6_3_lut (.A(CA[5]), .B(CA[13]), .C(A_out_0), .Z(n552[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_255_i6_3_lut.init = 16'hcaca;
    LUT4 mux_286_i4_3_lut (.A(Fault), .B(AutoloadEN), .C(A_out_0), .Z(n663[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_286_i4_3_lut.init = 16'hcaca;
    FD1P3AX LengthWritten_5__658 (.D(n1350), .SP(PHI2_N_569_enable_82), 
            .CK(PHI2_N_569), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam LengthWritten_5__658.GSR = "ENABLED";
    LUT4 mux_734_i6_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[5]), .D(Length_7__N_349[5]), .Z(n1053[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_734_i8_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[7]), .D(Length_7__N_349[7]), .Z(n1053[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_734_i7_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[6]), .D(Length_7__N_349[6]), .Z(n1053[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i7_3_lut_4_lut.init = 16'hf780;
    CCU2D CAOut_7__I_0_9 (.A0(GND_net), .B0(n4035), .C0(CAWritten[6]), 
          .D0(CA[6]), .A1(GND_net), .B1(n4035), .C1(CAWritten[7]), .D1(CA[7]), 
          .CIN(n3348), .S0(CAOut_7__N_193[6]), .S1(CAOut_7__N_193[7]));   // c:/users/garre/repos/gw4302/cpld/reg.v(133[14:27])
    defparam CAOut_7__I_0_9.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_9.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_9.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_9.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_7 (.A0(GND_net), .B0(n4035), .C0(CAWritten[4]), 
          .D0(CA[4]), .A1(GND_net), .B1(n4035), .C1(CAWritten[5]), .D1(CA[5]), 
          .CIN(n3347), .COUT(n3348), .S0(CAOut_7__N_193[4]), .S1(CAOut_7__N_193[5]));   // c:/users/garre/repos/gw4302/cpld/reg.v(133[14:27])
    defparam CAOut_7__I_0_7.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_7.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_7.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_7.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_5 (.A0(GND_net), .B0(n4035), .C0(CAWritten[2]), 
          .D0(CA[2]), .A1(GND_net), .B1(n4035), .C1(CAWritten[3]), .D1(CA[3]), 
          .CIN(n3346), .COUT(n3347), .S0(CAOut_7__N_193[2]), .S1(CAOut_7__N_193[3]));   // c:/users/garre/repos/gw4302/cpld/reg.v(133[14:27])
    defparam CAOut_7__I_0_5.INIT0 = 16'h596a;
    defparam CAOut_7__I_0_5.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_5.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_5.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_3 (.A0(IncCA), .B0(n4035), .C0(CAWritten[0]), .D0(CA[0]), 
          .A1(GND_net), .B1(n4035), .C1(CAWritten[1]), .D1(CA[1]), .CIN(n3345), 
          .COUT(n3346), .S0(CAOut_7__N_193[0]), .S1(CAOut_7__N_193[1]));   // c:/users/garre/repos/gw4302/cpld/reg.v(133[14:27])
    defparam CAOut_7__I_0_3.INIT0 = 16'hd1e2;
    defparam CAOut_7__I_0_3.INIT1 = 16'h596a;
    defparam CAOut_7__I_0_3.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_3.INJECT1_1 = "NO";
    CCU2D CAOut_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FF00DecodeEN_N_437), .B1(AutoloadEN), .C1(GND_net), .D1(GND_net), 
          .COUT(n3345));   // c:/users/garre/repos/gw4302/cpld/reg.v(133[14:27])
    defparam CAOut_7__I_0_1.INIT0 = 16'hF000;
    defparam CAOut_7__I_0_1.INIT1 = 16'hffff;
    defparam CAOut_7__I_0_1.INJECT1_0 = "NO";
    defparam CAOut_7__I_0_1.INJECT1_1 = "NO";
    LUT4 REUA_5__bdd_4_lut_3584 (.A(VerifyErrMask), .B(Length[13]), .C(A_out_0), 
         .D(A_out_2), .Z(n3985)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam REUA_5__bdd_4_lut_3584.init = 16'hffac;
    LUT4 i5_2_lut_adj_163 (.A(REUA[1]), .B(REUA[3]), .Z(n15_adj_640)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut_adj_163.init = 16'h8888;
    LUT4 i1_2_lut_4_lut (.A(n4064), .B(n4058), .C(SwapState), .D(CA[6]), 
         .Z(n11_c)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(23[9:16])
    defparam i1_2_lut_4_lut.init = 16'ha800;
    LUT4 i1_2_lut_4_lut_adj_164 (.A(n4064), .B(n4058), .C(SwapState), 
         .D(IncMode_c[1]), .Z(IncCA)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(23[9:16])
    defparam i1_2_lut_4_lut_adj_164.init = 16'h00a8;
    LUT4 i3441_2_lut (.A(A_out_3), .B(A_out_1), .Z(n3749)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3441_2_lut.init = 16'heeee;
    LUT4 REUA_5__bdd_3_lut_3585 (.A(REUA[5]), .B(REUA[13]), .C(A_out_0), 
         .Z(n3986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam REUA_5__bdd_3_lut_3585.init = 16'hcaca;
    LUT4 mux_238_i4_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_3), .D(REUAOut_7__N_107[3]), 
         .Z(n519[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_733_i1_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[8]), .D(Length_15__N_305[0]), .Z(n1052[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_238_i3_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_2), .D(REUAOut_7__N_107[2]), 
         .Z(n519[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_733_i2_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[9]), .D(Length_15__N_305[1]), .Z(n1052[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_259_i4_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n564[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_259_i4_3_lut.init = 16'hcaca;
    FD1P3IX XferType__i1 (.D(D_out_1), .SP(PHI2_N_569_enable_83), .CD(n4057), 
            .CK(PHI2_N_569), .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam XferType__i1.GSR = "ENABLED";
    FD1P3IX IncMode__i1 (.D(D_out_7), .SP(PHI2_N_569_enable_84), .CD(n4057), 
            .CK(PHI2_N_569), .Q(IncMode_c[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(243[8] 246[4])
    defparam IncMode__i1.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(n29), .B(n27), .C(n23), .D(n24), .Z(Length1_N_352)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(Length[4]), .B(n26), .C(n18), .D(Length[8]), 
         .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam i13_4_lut.init = 16'hfffe;
    PFUMX i3332 (.BLUT(n663[3]), .ALUT(n552[5]), .C0(A_out_1), .Z(n3704));
    PFUMX i3329 (.BLUT(n1285), .ALUT(n552[4]), .C0(A_out_1), .Z(n3701));
    L6MUX21 mux_280_i1 (.D0(n3716), .D1(n3718), .SD(n4062), .Z(n649));
    LUT4 mux_238_i2_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_1), .D(REUAOut_7__N_107[1]), 
         .Z(n519[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 n2314_bdd_3_lut_3530_3_lut (.A(A_out_0), .B(Length[5]), .C(A_out_3), 
         .Z(n3984)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam n2314_bdd_3_lut_3530_3_lut.init = 16'hfdfd;
    LUT4 mux_238_i1_3_lut_4_lut (.A(n1526), .B(n4040), .C(D_out_0), .D(REUAOut_7__N_107[0]), 
         .Z(n519[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_238_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3454_4_lut (.A(IntEnable), .B(IRQOut_N_445), .C(VerifyErr), 
         .D(VerifyErrMask), .Z(nIRQ_c)) /* synthesis lut_function=(!(A (B+(C (D))))) */ ;
    defparam i3454_4_lut.init = 16'h5777;
    LUT4 mux_255_i7_3_lut (.A(CA[6]), .B(CA[14]), .C(A_out_0), .Z(n552[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_255_i7_3_lut.init = 16'hcaca;
    LUT4 n569_bdd_4_lut_3547_4_lut (.A(A_out_0), .B(A_out_1), .C(Length[3]), 
         .D(n564[3]), .Z(n3952)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam n569_bdd_4_lut_3547_4_lut.init = 16'hf7c4;
    LUT4 i1_2_lut_adj_165 (.A(EndOfBlock), .B(EndOfBlockMask), .Z(IRQOut_N_445)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(82[8] 99[4])
    defparam i1_2_lut_adj_165.init = 16'h8888;
    LUT4 i746_2_lut_3_lut (.A(REUA[16]), .B(REUAOut_18__N_47), .C(REUA[17]), 
         .Z(n1064)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[18:34])
    defparam i746_2_lut_3_lut.init = 16'h8080;
    LUT4 i2_2_lut_adj_166 (.A(REUA[5]), .B(REUA[4]), .Z(n12_adj_642)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_166.init = 16'h8888;
    LUT4 mux_280_i7_3_lut (.A(n621[6]), .B(\RAMRDD[6] ), .C(DMA), .Z(n643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_280_i7_3_lut.init = 16'hcaca;
    LUT4 mux_734_i1_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[0]), .D(Length_7__N_349[0]), .Z(n1053[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_543)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(177[12:17])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    LUT4 mux_733_i4_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[11]), .D(Length_15__N_305[3]), .Z(n1052[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_733_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_276_i7_3_lut (.A(n588[6]), .B(IncMode[0]), .C(A_out_1), .Z(n621[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_276_i7_3_lut.init = 16'hcaca;
    LUT4 mux_255_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n552[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_255_i8_3_lut.init = 16'hcaca;
    LUT4 i1950_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n588[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1950_3_lut.init = 16'hcaca;
    FD1P3JX Length_8__671 (.D(Length_8__N_341), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_8__671.GSR = "ENABLED";
    FD1P3JX Length_9__670 (.D(Length_9__N_336), .SP(PHI2_N_569_enable_87), 
            .PD(n1703), .CK(PHI2_N_569), .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(212[8] 224[4])
    defparam Length_9__670.GSR = "ENABLED";
    LUT4 mux_286_i6_3_lut (.A(IntPending), .B(ExecuteEN), .C(A_out_0), 
         .Z(n663[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_286_i6_3_lut.init = 16'hcaca;
    LUT4 i3_2_lut_2_lut (.A(A_out_0), .B(A_out_14), .Z(n21)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam i3_2_lut_2_lut.init = 16'h4444;
    LUT4 i2815_3_lut (.A(CA[0]), .B(CA[8]), .C(A_out_0), .Z(n552[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2815_3_lut.init = 16'hcaca;
    LUT4 n2314_bdd_4_lut_3553_4_lut (.A(A_out_0), .B(A_out_1), .C(n564[6]), 
         .D(Length[6]), .Z(n4031)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam n2314_bdd_4_lut_3553_4_lut.init = 16'hfc74;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4044), .B(n4039), .C(D_out_7), .D(n4057), 
         .Z(n3544)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i3455_2_lut (.A(DMA), .B(A_out_3), .Z(n3737)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i3455_2_lut.init = 16'heeee;
    LUT4 EndOfBlock_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n552[6]), 
         .D(EndOfBlock), .Z(n4032)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam EndOfBlock_bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_167 (.A(n4044), .B(n4039), .C(D_out_4), 
         .D(n4057), .Z(n3545)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_167.init = 16'h0001;
    LUT4 i2_4_lut (.A(n4035), .B(PHI2_N_569_enable_20), .C(n3696), .D(n16), 
         .Z(PHI2_N_569_enable_87)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(23[9:16])
    defparam i2_4_lut.init = 16'hefee;
    LUT4 n3987_bdd_3_lut (.A(n3987), .B(n3984), .C(A_out_1), .Z(n3988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3987_bdd_3_lut.init = 16'hcaca;
    LUT4 n2314_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n564[7]), 
         .D(Length[7]), .Z(n4033)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam n2314_bdd_4_lut_4_lut.init = 16'hfc74;
    LUT4 i3324_4_lut (.A(Length[0]), .B(Length[4]), .C(Length[1]), .D(Length[3]), 
         .Z(n3696)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3324_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut_adj_168 (.A(n3688), .B(Length[5]), .C(Length[2]), .D(n4047), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7_4_lut_adj_168.init = 16'h0100;
    LUT4 i3316_2_lut (.A(Length[6]), .B(Length[7]), .Z(n3688)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3316_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n4044), .B(n4039), .C(FF00DecodeEN_N_437), 
         .D(n4057), .Z(PHI2_N_569_enable_16)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 i2285_2_lut (.A(XferType[0]), .B(A_out_0), .Z(n663[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i2285_2_lut.init = 16'h8888;
    LUT4 AutoloadEN_I_0_2_lut_rep_51 (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .Z(n4035)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam AutoloadEN_I_0_2_lut_rep_51.init = 16'h8888;
    LUT4 i3343_then_3_lut (.A(REUA[18]), .B(Length[2]), .C(A_out_0), .Z(n4066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3343_then_3_lut.init = 16'hcaca;
    LUT4 mux_259_i7_3_lut (.A(REUA[6]), .B(REUA[14]), .C(A_out_0), .Z(n564[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_259_i7_3_lut.init = 16'hcaca;
    LUT4 n3994_bdd_3_lut (.A(n4070), .B(\RAMRDD[4] ), .C(DMA), .Z(n3995)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3994_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_239_i3_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_2), .D(CAOut_15__N_149[2]), 
         .Z(n520[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_239_i8_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_7), .D(CAOut_15__N_149[7]), 
         .Z(n520[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_255_i2_3_lut (.A(CA[1]), .B(CA[9]), .C(A_out_0), .Z(n552[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_255_i2_3_lut.init = 16'hcaca;
    LUT4 i2303_2_lut (.A(XferType[1]), .B(A_out_0), .Z(n663[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i2303_2_lut.init = 16'h8888;
    LUT4 mux_734_i4_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[3]), .D(Length_7__N_349[3]), .Z(n1053[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_734_i5_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[4]), .D(Length_7__N_349[4]), .Z(n1053[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i2340_4_lut (.A(CA[3]), .B(A_out_1), .C(CA[11]), .D(A_out_0), 
         .Z(n606)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i2340_4_lut.init = 16'hc088;
    LUT4 mux_734_i2_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[1]), .D(Length_7__N_349[1]), .Z(n1053[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_239_i2_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_1), .D(CAOut_15__N_149[1]), 
         .Z(n520[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_239_i1_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_0), .D(CAOut_15__N_149[0]), 
         .Z(n520[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_239_i4_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_3), .D(CAOut_15__N_149[3]), 
         .Z(n520[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i4_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_263_i1_3_lut (.A(REUA[16]), .B(Length[0]), .C(A_out_0), .Z(n576[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_263_i1_3_lut.init = 16'hcaca;
    LUT4 i11_4_lut (.A(Length[6]), .B(Length[14]), .C(Length[15]), .D(Length[7]), 
         .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(197[8] 209[4])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 mux_734_i3_3_lut_4_lut (.A(AutoloadEN), .B(FF00DecodeEN_N_437), 
         .C(LengthWritten[2]), .D(Length_7__N_349[2]), .Z(n1053[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(79[17:38])
    defparam mux_734_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_239_i5_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_4), .D(CAOut_15__N_149[4]), 
         .Z(n520[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_263_i2_3_lut (.A(REUA[17]), .B(Length[1]), .C(A_out_0), .Z(n576[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_263_i2_3_lut.init = 16'hcaca;
    LUT4 mux_235_i3_4_lut (.A(REUA[18]), .B(REUAWritten[18]), .C(n4035), 
         .D(n1064), .Z(n516[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[18:34])
    defparam mux_235_i3_4_lut.init = 16'hc5ca;
    LUT4 mux_278_i3_4_lut (.A(Length[10]), .B(\RAMRDD[2] ), .C(DMA), .D(n4055), 
         .Z(n631[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_278_i3_4_lut.init = 16'hcfca;
    LUT4 i3341_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n3713)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3341_3_lut.init = 16'hcaca;
    LUT4 mux_239_i6_3_lut_4_lut (.A(n4044), .B(n4041), .C(D_out_5), .D(CAOut_15__N_149[5]), 
         .Z(n520[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_239_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3343_else_3_lut (.A(A_out_1), .B(CA[2]), .C(A_out_0), .D(CA[10]), 
         .Z(n4065)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i3343_else_3_lut.init = 16'ha808;
    LUT4 mux_259_i1_3_lut (.A(REUA[0]), .B(REUA[8]), .C(A_out_0), .Z(n564[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam mux_259_i1_3_lut.init = 16'hcaca;
    LUT4 i944_2_lut_rep_76 (.A(A_out_0), .B(A_out_1), .Z(n4055)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2] 77[7])
    defparam i944_2_lut_rep_76.init = 16'heeee;
    PFUMX i3556 (.BLUT(n4068), .ALUT(n4069), .C0(A_out_0), .Z(n4070));
    PFUMX i3554 (.BLUT(n4065), .ALUT(n4066), .C0(A_out_2), .Z(n4067));
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (nWE_c, A_out_1, A_out_0, n4038, n4039, n4041, PHI2_c, 
            nIO2_c, BA_c, DMA, nDOE_N_628, Execute_N_633, FF00DecodeEN, 
            Execute, n21, nWEDMA_c, DDIR_c, A_out_11, A_out_13, 
            A_out_12, A_out_4, A_out_3, n4043, DOE, n6, A_out_2, 
            n7, ExecuteEN, n4045, A_out_8, n8, A_out_15, A_out_9, 
            n4055, n4040, A_out_10) /* synthesis syn_module_defined=1 */ ;
    input nWE_c;
    input A_out_1;
    input A_out_0;
    output n4038;
    output n4039;
    output n4041;
    input PHI2_c;
    input nIO2_c;
    input BA_c;
    input DMA;
    output nDOE_N_628;
    input Execute_N_633;
    input FF00DecodeEN;
    output Execute;
    input n21;
    input nWEDMA_c;
    output DDIR_c;
    input A_out_11;
    input A_out_13;
    input A_out_12;
    input A_out_4;
    input A_out_3;
    output n4043;
    output DOE;
    input n6;
    input A_out_2;
    input n7;
    input ExecuteEN;
    output n4045;
    input A_out_8;
    input n8;
    input A_out_15;
    input A_out_9;
    input n4055;
    output n4040;
    input A_out_10;
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n4053, Execute_N_636, n34, n30, n22, n31, n3694, n3684, 
        n20;
    
    LUT4 i2_3_lut_rep_54_4_lut (.A(n4053), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4038)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_54_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_rep_55_4_lut (.A(n4053), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4039)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_55_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_rep_57_4_lut (.A(n4053), .B(nWE_c), .C(A_out_1), .D(A_out_0), 
         .Z(n4041)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_57_4_lut.init = 16'h1000;
    LUT4 i3475_4_lut (.A(PHI2_c), .B(nIO2_c), .C(BA_c), .D(DMA), .Z(nDOE_N_628)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(42[15:44])
    defparam i3475_4_lut.init = 16'h5fdd;
    PFUMX Execute_I_0 (.BLUT(Execute_N_633), .ALUT(Execute_N_636), .C0(FF00DecodeEN), 
          .Z(Execute)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=7, LSE_RCOL=15, LSE_LLINE=96, LSE_RLINE=113 */ ;
    LUT4 i17_4_lut (.A(n21), .B(n34), .C(n30), .D(n22), .Z(Execute_N_636)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 DDIR_I_0_3_lut (.A(nWE_c), .B(nWEDMA_c), .C(DMA), .Z(DDIR_c)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/glue.v(41[15:33])
    defparam DDIR_I_0_3_lut.init = 16'hc5c5;
    LUT4 i16_4_lut (.A(n31), .B(n3694), .C(n3684), .D(n20), .Z(n34)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i16_4_lut.init = 16'h0200;
    LUT4 i13_4_lut (.A(A_out_11), .B(A_out_13), .C(A_out_12), .D(A_out_1), 
         .Z(n31)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i13_4_lut.init = 16'h0080;
    LUT4 i3322_2_lut (.A(A_out_4), .B(A_out_3), .Z(n3694)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3322_2_lut.init = 16'heeee;
    LUT4 i2326_2_lut_rep_69 (.A(DMA), .B(nIO2_c), .Z(n4053)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2326_2_lut_rep_69.init = 16'heeee;
    LUT4 RegCS_I_0_38_2_lut_rep_59_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), 
         .Z(n4043)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam RegCS_I_0_38_2_lut_rep_59_3_lut.init = 16'h1010;
    LUT4 RegRD_I_0_3_lut_4_lut_4_lut (.A(DMA), .B(nIO2_c), .C(nWEDMA_c), 
         .D(nWE_c), .Z(DOE)) /* synthesis lut_function=(A (C)+!A (B+!(D))) */ ;
    defparam RegRD_I_0_3_lut_4_lut_4_lut.init = 16'he4f5;
    LUT4 i3312_2_lut (.A(n6), .B(A_out_2), .Z(n3684)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3312_2_lut.init = 16'heeee;
    LUT4 i2_2_lut (.A(n7), .B(ExecuteEN), .Z(n20)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    LUT4 i2328_2_lut_rep_61_3_lut (.A(DMA), .B(nIO2_c), .C(nWE_c), .Z(n4045)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2328_2_lut_rep_61_3_lut.init = 16'hfefe;
    LUT4 i12_4_lut (.A(A_out_8), .B(n8), .C(A_out_15), .D(A_out_9), 
         .Z(n30)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i12_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_56_3_lut_4_lut (.A(DMA), .B(nIO2_c), .C(n4055), 
         .D(nWE_c), .Z(n4040)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_56_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(nWE_c), .B(A_out_10), .Z(n22)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (PHI2Start_N_554, REUA, C8M_N_502, n4251, PLLLock, n3719, 
            n242, C8M_c, RAMRDD, RD_out_0, RBA_c_0, C8M_c_enable_19, 
            RAMWR, nRESET_c, PHI2_c, WRDr, PHI2_N_569, D_out_0, 
            nRAS_c, nCAS_c, nRWE_c, CKE_c, DQMH_c, DQML_c, A_0__N_543, 
            RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, RA_c_4, 
            RA_c_3, RA_c_2, RA_c_1, RA_c_0, n1236, RD_out_1, RD_out_2, 
            RD_out_3, RD_out_4, RD_out_5, RD_out_6, RD_out_7, RBA_c_1, 
            \nRESETr[1] , \nRESETr[2] , D_out_1, D_out_2, D_out_3, 
            D_out_4, D_out_5, D_out_6, D_out_7, RCLK_c, RA_c_11, 
            nCS_c, RAMRD) /* synthesis syn_module_defined=1 */ ;
    output PHI2Start_N_554;
    input [23:0]REUA;
    input C8M_N_502;
    input n4251;
    output PLLLock;
    input n3719;
    output n242;
    input C8M_c;
    output [7:0]RAMRDD;
    input RD_out_0;
    output RBA_c_0;
    input C8M_c_enable_19;
    input RAMWR;
    input nRESET_c;
    input PHI2_c;
    output [7:0]WRDr;
    input PHI2_N_569;
    input D_out_0;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output DQMH_c;
    output DQML_c;
    input A_0__N_543;
    output RA_c_10;
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
    output n1236;
    input RD_out_1;
    input RD_out_2;
    input RD_out_3;
    input RD_out_4;
    input RD_out_5;
    input RD_out_6;
    input RD_out_7;
    output RBA_c_1;
    output \nRESETr[1] ;
    output \nRESETr[2] ;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    output RCLK_c;
    output RA_c_11;
    output nCS_c;
    input RAMRD;
    
    wire C8M_N_502 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(39[11:16])
    wire C8M_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_569 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire RDOE_N_557, n4061;
    wire [12:0]RA_11__N_489;
    
    wire InitDone, C8M_N_502_enable_5, RDD_7__N_511, n4048, n2761, 
        WRCMDr, WRCMDr_N_518, INITCMDr, n4052, C8M_N_502_enable_4, 
        RDCMDr, nCAS_N_527, n1289, CKE_N_538, n1423, nCS_N_513, 
        nCS_N_523, nRAS_N_525, C8M_c_enable_18;
    wire [7:0]n238;
    
    wire n943;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[11:18])
    
    wire CP2, CP1_N_545;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(39[11:16])
    
    wire CP1, n1709, nRWE_N_529, n4051, C8M_c_enable_20, C8M_c_enable_12, 
        RDOE, n3625, n3626, C8M_c_enable_21;
    
    LUT4 i924_1_lut_rep_77 (.A(RDOE_N_557), .Z(n4061)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam i924_1_lut_rep_77.init = 16'h5555;
    LUT4 mux_220_i10_3_lut_3_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[19]), 
         .Z(RA_11__N_489[9])) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam mux_220_i10_3_lut_3_lut.init = 16'hd1d1;
    FD1P3AX InitDone_133 (.D(n4251), .SP(C8M_N_502_enable_5), .CK(C8M_N_502), 
            .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[8] 72[4])
    defparam InitDone_133.GSR = "ENABLED";
    LUT4 mux_220_i3_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[12]), 
         .D(REUA[3]), .Z(RA_11__N_489[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i3_4_lut_4_lut.init = 16'he2c0;
    LUT4 i3488_2_lut_3_lut_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), 
         .C(RDD_7__N_511), .D(n4048), .Z(n2761)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam i3488_2_lut_3_lut_4_lut_4_lut.init = 16'h0203;
    FD1P3AX WRCMDr_132 (.D(WRCMDr_N_518), .SP(C8M_N_502_enable_5), .CK(C8M_N_502), 
            .Q(WRCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[8] 72[4])
    defparam WRCMDr_132.GSR = "ENABLED";
    FD1P3AX INITCMDr_130 (.D(n4052), .SP(C8M_N_502_enable_5), .CK(C8M_N_502), 
            .Q(INITCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[8] 72[4])
    defparam INITCMDr_130.GSR = "ENABLED";
    FD1P3AX PLLLock_128 (.D(n3719), .SP(C8M_N_502_enable_4), .CK(C8M_N_502), 
            .Q(PLLLock)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam PLLLock_128.GSR = "ENABLED";
    LUT4 i3430_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_557), .D(n242), 
         .Z(nCAS_N_527)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i3430_3_lut_4_lut.init = 16'h001f;
    LUT4 mux_220_i2_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[11]), 
         .D(REUA[2]), .Z(RA_11__N_489[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i2_4_lut_4_lut.init = 16'he2c0;
    LUT4 i928_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_557), .D(n1289), 
         .Z(CKE_N_538)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i928_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1021_3_lut_4_lut (.A(WRCMDr), .B(RDCMDr), .C(RDOE_N_557), .D(n1423), 
         .Z(nCS_N_513)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i1021_3_lut_4_lut.init = 16'h101f;
    LUT4 i1020_3_lut_4_lut (.A(RDD_7__N_511), .B(n242), .C(PHI2Start_N_554), 
         .D(nCS_N_523), .Z(n1423)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam i1020_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i3427_3_lut_4_lut (.A(RDD_7__N_511), .B(n242), .C(PHI2Start_N_554), 
         .D(nCS_N_523), .Z(nRAS_N_525)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam i3427_3_lut_4_lut.init = 16'h0111;
    FD1P3IX S_FSM_i1 (.D(n238[7]), .SP(C8M_c_enable_18), .CD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(PHI2Start_N_554));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i0 (.D(RD_out_0), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i0.GSR = "ENABLED";
    FD1P3IX RBA__i1 (.D(REUA[22]), .SP(C8M_c_enable_19), .CD(n242), .CK(C8M_c), 
            .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RBA__i1.GSR = "ENABLED";
    LUT4 mux_220_i1_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[10]), 
         .D(REUA[1]), .Z(RA_11__N_489[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i1_4_lut_4_lut.init = 16'he2c0;
    FD1P3IX RDCMDr_131 (.D(RAMWR), .SP(C8M_N_502_enable_5), .CD(n943), 
            .CK(C8M_N_502), .Q(RDCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[8] 72[4])
    defparam RDCMDr_131.GSR = "ENABLED";
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 36[4])
    defparam nRESETr_i0.GSR = "ENABLED";
    FD1S3AX CP2_124 (.D(CP1_N_545), .CK(C8M_N_502), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[8:45])
    defparam CP2_124.GSR = "ENABLED";
    FD1S3AX PHI2r_0__126 (.D(PHI2_c), .CK(C8M_N_502), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[8:50])
    defparam PHI2r_0__126.GSR = "ENABLED";
    FD1S3AX PHI2r_1__127 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(42[8:54])
    defparam PHI2r_1__127.GSR = "ENABLED";
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_545)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[36:40])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_569), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1S3JX nRAS_135 (.D(nRAS_N_525), .CK(C8M_c), .PD(n1709), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[8] 163[4])
    defparam nRAS_135.GSR = "ENABLED";
    FD1S3JX nCAS_136 (.D(nCAS_N_527), .CK(C8M_c), .PD(n1709), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[8] 163[4])
    defparam nCAS_136.GSR = "ENABLED";
    FD1S3JX nRWE_137 (.D(nRWE_N_529), .CK(C8M_c), .PD(n1709), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[8] 163[4])
    defparam nRWE_137.GSR = "ENABLED";
    FD1S3JX CKE_138 (.D(CKE_N_538), .CK(C8M_c), .PD(n1709), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[8] 163[4])
    defparam CKE_138.GSR = "ENABLED";
    FD1S3JX DQMH_139 (.D(REUA[0]), .CK(C8M_c), .PD(n4061), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam DQMH_139.GSR = "ENABLED";
    FD1S3JX DQML_140 (.D(A_0__N_543), .CK(C8M_c), .PD(n4061), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam DQML_140.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(PHI2Start_N_554), .B(n4051), .C(PLLLock), 
         .D(C8M_c_enable_18), .Z(C8M_c_enable_20)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i1_2_lut_4_lut.init = 16'hff80;
    FD1S3AX RA_10__143 (.D(RA_11__N_489[10]), .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_10__143.GSR = "ENABLED";
    FD1P3AX RA_9__144 (.D(RA_11__N_489[9]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_9__144.GSR = "ENABLED";
    FD1P3AX RA_8__145 (.D(RA_11__N_489[8]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_8__145.GSR = "ENABLED";
    FD1P3AX RA_7__146 (.D(RA_11__N_489[7]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_7__146.GSR = "ENABLED";
    FD1P3AX RA_6__147 (.D(RA_11__N_489[6]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_6__147.GSR = "ENABLED";
    FD1P3AX RA_5__148 (.D(RA_11__N_489[5]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_5__148.GSR = "ENABLED";
    FD1P3AX RA_4__149 (.D(RA_11__N_489[4]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_4__149.GSR = "ENABLED";
    FD1P3AX RA_3__150 (.D(RA_11__N_489[3]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_3__150.GSR = "ENABLED";
    FD1P3AX RA_2__151 (.D(RA_11__N_489[2]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_2__151.GSR = "ENABLED";
    FD1P3AX RA_1__152 (.D(RA_11__N_489[1]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_1__152.GSR = "ENABLED";
    FD1P3AX RA_0__153 (.D(RA_11__N_489[0]), .SP(C8M_c_enable_12), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_0__153.GSR = "ENABLED";
    FD1S3AX RDOE_156 (.D(RDOE_N_557), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(220[8:36])
    defparam RDOE_156.GSR = "ENABLED";
    FD1S3AX CP1_123 (.D(CP1_N_545), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(27[8:45])
    defparam CP1_123.GSR = "ENABLED";
    LUT4 i1345_1_lut (.A(PLLLock), .Z(n1709)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i1345_1_lut.init = 16'h5555;
    LUT4 i897_1_lut (.A(RDOE), .Z(n1236)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(221[8:10])
    defparam i897_1_lut.init = 16'h5555;
    LUT4 RDCMDr_I_0_174_2_lut (.A(RDCMDr), .B(WRCMDr), .Z(nCS_N_523)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(78[8:24])
    defparam RDCMDr_I_0_174_2_lut.init = 16'heeee;
    FD1P3IX S_FSM_i3 (.D(RDOE_N_557), .SP(C8M_c_enable_18), .CD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(n238[2]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1P3IX S_FSM_i4 (.D(n238[2]), .SP(C8M_c_enable_18), .CD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(RDD_7__N_511));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i4.GSR = "ENABLED";
    FD1P3IX S_FSM_i5 (.D(RDD_7__N_511), .SP(C8M_c_enable_18), .CD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(n242));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i5.GSR = "ENABLED";
    FD1P3IX S_FSM_i6 (.D(n242), .SP(C8M_c_enable_18), .CD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(n238[5]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i6.GSR = "ENABLED";
    FD1P3IX S_FSM_i7 (.D(n238[5]), .SP(C8M_c_enable_18), .CD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(n238[6]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i7.GSR = "ENABLED";
    FD1P3IX S_FSM_i8 (.D(n238[6]), .SP(C8M_c_enable_18), .CD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(n238[7]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i8.GSR = "ENABLED";
    FD1P3AX RDD_i0_i1 (.D(RD_out_1), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i1.GSR = "ENABLED";
    FD1P3AX RDD_i0_i2 (.D(RD_out_2), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i2.GSR = "ENABLED";
    FD1P3AX RDD_i0_i3 (.D(RD_out_3), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i3.GSR = "ENABLED";
    FD1P3AX RDD_i0_i4 (.D(RD_out_4), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i4.GSR = "ENABLED";
    FD1P3AX RDD_i0_i5 (.D(RD_out_5), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i5.GSR = "ENABLED";
    FD1P3AX RDD_i0_i6 (.D(RD_out_6), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i6.GSR = "ENABLED";
    FD1P3AX RDD_i0_i7 (.D(RD_out_7), .SP(RDD_7__N_511), .CK(C8M_c), .Q(RAMRDD[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(212[8:53])
    defparam RDD_i0_i7.GSR = "ENABLED";
    FD1P3IX RBA__i2 (.D(REUA[23]), .SP(C8M_c_enable_19), .CD(n242), .CK(C8M_c), 
            .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(\nRESETr[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 36[4])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i2 (.D(\nRESETr[1] ), .CK(C8M_c), .Q(\nRESETr[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 36[4])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(\nRESETr[2] ), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 36[4])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(nRESETr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[8] 36[4])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_569), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i1.GSR = "ENABLED";
    LUT4 i1019_4_lut (.A(n3625), .B(INITCMDr), .C(n242), .D(RDD_7__N_511), 
         .Z(nRWE_N_529)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam i1019_4_lut.init = 16'h303a;
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_569), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_569), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_569), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_569), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_569), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_569), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[8:46])
    defparam WRDr_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_67 (.A(PHI2r[0]), .B(PHI2r[1]), .Z(n4051)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i1_2_lut_rep_67.init = 16'h4444;
    LUT4 i2_3_lut_rep_58_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(PLLLock), 
         .D(PHI2Start_N_554), .Z(C8M_N_502_enable_5)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i2_3_lut_rep_58_4_lut.init = 16'h4000;
    LUT4 i3_3_lut_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(nRESETr[3]), .D(nRESETr[4]), 
         .Z(C8M_N_502_enable_4)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[8] 50[4])
    defparam i3_3_lut_4_lut.init = 16'h4000;
    LUT4 i2_3_lut (.A(RDCMDr), .B(RDOE_N_557), .C(WRCMDr), .Z(n3625)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 CP1_I_0_172_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(29[15:24])
    defparam CP1_I_0_172_2_lut.init = 16'h6666;
    FD1P3JX S_FSM_i2 (.D(PHI2Start_N_554), .SP(C8M_c_enable_20), .PD(C8M_N_502_enable_5), 
            .CK(C8M_c), .Q(RDOE_N_557));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam S_FSM_i2.GSR = "ENABLED";
    LUT4 mux_220_i11_4_lut (.A(n3626), .B(REUA[20]), .C(PHI2Start_N_554), 
         .D(RDD_7__N_511), .Z(RA_11__N_489[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[2] 207[9])
    defparam mux_220_i11_4_lut.init = 16'hcfca;
    FD1P3IX RA_11__142 (.D(REUA[21]), .SP(C8M_c_enable_21), .CD(n2761), 
            .CK(C8M_c), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[8] 209[4])
    defparam RA_11__142.GSR = "ENABLED";
    FD1S3JX nCS_134 (.D(nCS_N_513), .CK(C8M_c), .PD(n1709), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[8] 163[4])
    defparam nCS_134.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(RDOE_N_557), .B(n4048), .C(RDD_7__N_511), .D(n242), 
         .Z(C8M_c_enable_18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[22:28])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i2225_1_lut_rep_68 (.A(InitDone), .Z(n4052)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[8] 72[4])
    defparam i2225_1_lut_rep_68.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_4_lut (.A(InitDone), .B(PLLLock), .C(n4051), .D(PHI2Start_N_554), 
         .Z(n943)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[8] 72[4])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(n4048), 
         .D(RDD_7__N_511), .Z(C8M_c_enable_12)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hccef;
    LUT4 mux_220_i5_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[14]), 
         .D(REUA[5]), .Z(RA_11__N_489[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i5_4_lut_4_lut.init = 16'he2c0;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), 
         .C(RDD_7__N_511), .D(n4048), .Z(C8M_c_enable_21)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hcecf;
    LUT4 i2_2_lut_3_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(RA_c_10), 
         .D(n4048), .Z(n3626)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 mux_220_i8_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[17]), 
         .D(REUA[8]), .Z(RA_11__N_489[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i8_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_220_i6_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[15]), 
         .D(REUA[6]), .Z(RA_11__N_489[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam mux_220_i6_4_lut_4_lut.init = 16'hf3d1;
    LUT4 mux_220_i4_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[13]), 
         .D(REUA[4]), .Z(RA_11__N_489[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i4_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_220_i9_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[18]), 
         .D(REUA[9]), .Z(RA_11__N_489[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i9_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_220_i7_4_lut_4_lut (.A(RDOE_N_557), .B(PHI2Start_N_554), .C(REUA[16]), 
         .D(REUA[7]), .Z(RA_11__N_489[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_220_i7_4_lut_4_lut.init = 16'he2c0;
    LUT4 i2_3_lut_adj_157 (.A(RAMWR), .B(RAMRD), .C(InitDone), .Z(WRCMDr_N_518)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[8] 72[4])
    defparam i2_3_lut_adj_157.init = 16'h4040;
    LUT4 i3_3_lut_rep_64_4_lut (.A(n238[5]), .B(n238[6]), .C(n238[7]), 
         .D(n238[2]), .Z(n4048)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_64_4_lut.init = 16'hfffe;
    LUT4 i927_3_lut_4_lut (.A(n238[5]), .B(n238[6]), .C(PHI2Start_N_554), 
         .D(nCS_N_523), .Z(n1289)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i927_3_lut_4_lut.init = 16'hf101;
    
endmodule
