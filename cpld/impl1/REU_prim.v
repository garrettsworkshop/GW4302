// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Apr 23 02:21:25 2022
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
    output [15:0]A;   // c:/users/garre/repos/gw4302/cpld/reu.v(9[15:16])
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
    wire C8M_N_435 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(39[12:17])
    wire PHI2_N_495 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire GND_net, nRESET_c, BA_c, nWE_c, nWEDMA_c, nIO2_c, RCLK_c, 
        nCS_c, nRAS_c, nCAS_c, nRWE_c, CKE_c, RBA_c_1, RBA_c_0, 
        RA_c_11, RA_c_10, RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, 
        RA_c_4, RA_c_3, RA_c_2, RA_c_1, RA_c_0, DQMH_c, DQML_c;
    wire [1:0]XferType;   // c:/users/garre/repos/gw4302/cpld/reu.v(37[13:21])
    wire [23:0]REUA;   // c:/users/garre/repos/gw4302/cpld/reu.v(38[14:18])
    wire [15:0]CA;   // c:/users/garre/repos/gw4302/cpld/reu.v(39[14:16])
    wire [7:0]RegRDD;   // c:/users/garre/repos/gw4302/cpld/reu.v(41[13:19])
    
    wire RAMRD, DOE, VCC_net, n2432, n2431, D_out_3, RD_out_1, 
        n1141, RD_out_2, RD_out_3, A_out_3, RD_out_0, D_out_4, D_out_5, 
        D_out_6, RD_out_4, RD_out_5, RD_out_6, D_out_7, RD_out_7, 
        A_out_0, A_out_1, A_out_2, C8M_c_enable_19, n2187, n2421, 
        n236, n2426, n2420;
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[12:19])
    
    wire PLLLock;
    wire [7:0]WRDr;   // c:/users/garre/repos/gw4302/cpld/ram.v(215[12:16])
    
    wire PHI2Start_N_487, n2424, A_out_4, D_out_0, D_out_1, D_out_2, 
        n2574;
    
    VHI i82 (.Z(VCC_net));
    INV i2188 (.A(C8M_c), .Z(C8M_N_435));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    BB A_pad_3 (.I(CA[3]), .T(VCC_net), .B(A[3]), .O(A_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_4 (.I(CA[4]), .T(VCC_net), .B(A[4]), .O(A_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB D_pad_0 (.I(RegRDD[0]), .T(DOE), .B(D[0]), .O(D_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_1 (.I(RegRDD[1]), .T(DOE), .B(D[1]), .O(D_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_2 (.I(RegRDD[2]), .T(DOE), .B(D[2]), .O(D_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_3 (.I(RegRDD[3]), .T(DOE), .B(D[3]), .O(D_out_3));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_4 (.I(RegRDD[4]), .T(DOE), .B(D[4]), .O(D_out_4));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_5 (.I(RegRDD[5]), .T(DOE), .B(D[5]), .O(D_out_5));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB D_pad_6 (.I(RegRDD[6]), .T(DOE), .B(D[6]), .O(D_out_6));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    IB nIO2_pad (.I(nIO2), .O(nIO2_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(13[8:12])
    IB nWE_pad (.I(nWE), .O(nWE_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(10[8:11])
    DMASeq dmaseq (.XferType({XferType}), .nWEDMA_c(nWEDMA_c), .PHI2_N_495(PHI2_N_495), 
           .RAMRD(RAMRD)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(80[9] 94[50])
    IB BA_pad (.I(BA), .O(BA_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(7[8:10])
    IB nRESET_pad (.I(nRESET), .O(nRESET_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(5[8:14])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    IB C8M_pad (.I(C8M), .O(C8M_c));   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    OB DQML_pad (.I(DQML_c), .O(DQML));   // c:/users/garre/repos/gw4302/cpld/reu.v(32[9:13])
    OB DQMH_pad (.I(DQMH_c), .O(DQMH));   // c:/users/garre/repos/gw4302/cpld/reu.v(31[9:13])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_10 (.I(RA_c_10), .O(RA[10]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_11 (.I(RA_c_11), .O(RA[11]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RA_pad_12 (.I(GND_net), .O(RA[12]));   // c:/users/garre/repos/gw4302/cpld/reu.v(30[16:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // c:/users/garre/repos/gw4302/cpld/reu.v(29[15:18])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // c:/users/garre/repos/gw4302/cpld/reu.v(29[15:18])
    OB CKE_pad (.I(CKE_c), .O(CKE));   // c:/users/garre/repos/gw4302/cpld/reu.v(28[9:12])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/garre/repos/gw4302/cpld/reu.v(27[9:13])
    OB nCAS_pad (.I(nCAS_c), .O(nCAS));   // c:/users/garre/repos/gw4302/cpld/reu.v(26[9:13])
    OB nRAS_pad (.I(nRAS_c), .O(nRAS));   // c:/users/garre/repos/gw4302/cpld/reu.v(25[9:13])
    OB nCS_pad (.I(nCS_c), .O(nCS));   // c:/users/garre/repos/gw4302/cpld/reu.v(24[9:12])
    OB RCLK_pad (.I(RCLK_c), .O(RCLK));   // c:/users/garre/repos/gw4302/cpld/reu.v(23[9:13])
    OB nIRQ_pad (.I(VCC_net), .O(nIRQ));   // c:/users/garre/repos/gw4302/cpld/reu.v(21[9:13])
    OB DDIR_pad (.I(DOE), .O(DDIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(19[9:13])
    OB nDOE_pad (.I(DOE), .O(nDOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(18[9:13])
    OB nRWOE_pad (.I(VCC_net), .O(nRWOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(17[9:14])
    OB ADIR_pad (.I(VCC_net), .O(ADIR));   // c:/users/garre/repos/gw4302/cpld/reu.v(16[9:13])
    OB nAOE_pad (.I(GND_net), .O(nAOE));   // c:/users/garre/repos/gw4302/cpld/reu.v(15[9:13])
    OB nDMA_pad (.I(VCC_net), .O(nDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(12[9:13])
    OB nWEDMA_pad (.I(nWEDMA_c), .O(nWEDMA));   // c:/users/garre/repos/gw4302/cpld/reu.v(11[9:15])
    OBZ A_pad_5 (.I(CA[5]), .T(VCC_net), .O(A[5]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_6 (.I(CA[6]), .T(VCC_net), .O(A[6]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_7 (.I(CA[7]), .T(VCC_net), .O(A[7]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_8 (.I(CA[8]), .T(VCC_net), .O(A[8]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_9 (.I(CA[9]), .T(VCC_net), .O(A[9]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_10 (.I(CA[10]), .T(VCC_net), .O(A[10]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_11 (.I(CA[11]), .T(VCC_net), .O(A[11]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_12 (.I(CA[12]), .T(VCC_net), .O(A[12]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_13 (.I(CA[13]), .T(VCC_net), .O(A[13]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_14 (.I(CA[14]), .T(VCC_net), .O(A[14]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    OBZ A_pad_15 (.I(CA[15]), .T(VCC_net), .O(A[15]));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB RD_pad_0 (.I(WRDr[0]), .T(n1141), .B(RD[0]), .O(RD_out_0));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB D_pad_7 (.I(RegRDD[7]), .T(DOE), .B(D[7]), .O(D_out_7));   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    BB RD_pad_1 (.I(WRDr[1]), .T(n1141), .B(RD[1]), .O(RD_out_1));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_2 (.I(WRDr[2]), .T(n1141), .B(RD[2]), .O(RD_out_2));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_3 (.I(WRDr[3]), .T(n1141), .B(RD[3]), .O(RD_out_3));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_4 (.I(WRDr[4]), .T(n1141), .B(RD[4]), .O(RD_out_4));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_5 (.I(WRDr[5]), .T(n1141), .B(RD[5]), .O(RD_out_5));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_6 (.I(WRDr[6]), .T(n1141), .B(RD[6]), .O(RD_out_6));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB RD_pad_7 (.I(WRDr[7]), .T(n1141), .B(RD[7]), .O(RD_out_7));   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    BB A_pad_0 (.I(CA[0]), .T(VCC_net), .B(A[0]), .O(A_out_0));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_1 (.I(CA[1]), .T(VCC_net), .B(A[1]), .O(A_out_1));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    BB A_pad_2 (.I(CA[2]), .T(VCC_net), .B(A[2]), .O(A_out_2));   // c:/users/garre/repos/gw4302/cpld/reu.v(117[9:10])
    INV i2189 (.A(PHI2_c), .Z(PHI2_N_495));   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    VLO i1 (.Z(GND_net));
    LUT4 i581_2_lut (.A(PHI2Start_N_487), .B(n236), .Z(C8M_c_enable_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i581_2_lut.init = 16'heeee;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1967_2_lut (.A(nIO2_c), .B(nWE_c), .Z(DOE)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(115[9:10])
    defparam i1967_2_lut.init = 16'hbbbb;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n2574)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i1900_4_lut (.A(PLLLock), .B(nRESETr[4]), .C(nRESETr[2]), .Z(n2187)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1900_4_lut.init = 16'heaea;
    REUReg reureg (.A_out_3(A_out_3), .RegRDD({RegRDD}), .CA({CA}), .A_out_1(A_out_1), 
           .A_out_0(A_out_0), .n2431(n2431), .PHI2_N_495(PHI2_N_495), 
           .D_out_7(D_out_7), .REUA({REUA}), .D_out_6(D_out_6), .D_out_5(D_out_5), 
           .D_out_4(D_out_4), .D_out_3(D_out_3), .D_out_2(D_out_2), .n2421(n2421), 
           .A_out_2(A_out_2), .n2432(n2432), .XferType({XferType}), .n2420(n2420), 
           .D_out_1(D_out_1), .D_out_0(D_out_0), .A_out_4(A_out_4), .n2424(n2424), 
           .PHI2_c(PHI2_c), .n2574(n2574), .n2426(n2426), .DOE(DOE)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(57[9] 66[48])
    Glue glue (.nIO2_c(nIO2_c), .nWE_c(nWE_c), .n2431(n2431), .n2432(n2432), 
         .A_out_2(A_out_2), .n2421(n2421), .A_out_0(A_out_0), .n2426(n2426), 
         .A_out_1(A_out_1), .n2420(n2420), .n2424(n2424)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(96[7] 113[15])
    GSR GSR_INST (.GSR(VCC_net));
    RAM ram (.n236(n236), .C8M_c(C8M_c), .PHI2Start_N_487(PHI2Start_N_487), 
        .PLLLock(PLLLock), .C8M_N_435(C8M_N_435), .n2187(n2187), .RA_c_10(RA_c_10), 
        .REUA({REUA}), .RCLK_c(RCLK_c), .n2574(n2574), .RAMRD(RAMRD), 
        .nRESET_c(nRESET_c), .PHI2_c(PHI2_c), .nRAS_c(nRAS_c), .nCAS_c(nCAS_c), 
        .nRWE_c(nRWE_c), .CKE_c(CKE_c), .DQMH_c(DQMH_c), .DQML_c(DQML_c), 
        .RA_c_9(RA_c_9), .RA_c_8(RA_c_8), .RA_c_7(RA_c_7), .RA_c_6(RA_c_6), 
        .RA_c_5(RA_c_5), .RA_c_4(RA_c_4), .RA_c_3(RA_c_3), .RA_c_2(RA_c_2), 
        .RA_c_1(RA_c_1), .RA_c_0(RA_c_0), .WRDr({WRDr}), .PHI2_N_495(PHI2_N_495), 
        .D_out_0(D_out_0), .RBA_c_0(RBA_c_0), .C8M_c_enable_19(C8M_c_enable_19), 
        .\nRESETr[2] (nRESETr[2]), .\nRESETr[4] (nRESETr[4]), .D_out_1(D_out_1), 
        .D_out_2(D_out_2), .D_out_3(D_out_3), .D_out_4(D_out_4), .D_out_5(D_out_5), 
        .D_out_6(D_out_6), .D_out_7(D_out_7), .RBA_c_1(RBA_c_1), .n1141(n1141), 
        .RA_c_11(RA_c_11), .nCS_c(nCS_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(68[6] 78[32])
    
endmodule
//
// Verilog Description of module DMASeq
//

module DMASeq (XferType, nWEDMA_c, PHI2_N_495, RAMRD) /* synthesis syn_module_defined=1 */ ;
    input [1:0]XferType;
    output nWEDMA_c;
    input PHI2_N_495;
    output RAMRD;
    
    wire PHI2_N_495 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire n1;
    
    LUT4 i868_1_lut (.A(XferType[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(67[4] 85[11])
    defparam i868_1_lut.init = 16'h5555;
    FD1S3JX DMARW_64 (.D(n1), .CK(PHI2_N_495), .PD(XferType[1]), .Q(nWEDMA_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam DMARW_64.GSR = "ENABLED";
    FD1S3JX RAMRD_65 (.D(XferType[0]), .CK(PHI2_N_495), .PD(XferType[1]), 
            .Q(RAMRD)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=50, LSE_LLINE=80, LSE_RLINE=94 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(34[9] 87[5])
    defparam RAMRD_65.GSR = "ENABLED";
    
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

module REUReg (A_out_3, RegRDD, CA, A_out_1, A_out_0, n2431, PHI2_N_495, 
            D_out_7, REUA, D_out_6, D_out_5, D_out_4, D_out_3, D_out_2, 
            n2421, A_out_2, n2432, XferType, n2420, D_out_1, D_out_0, 
            A_out_4, n2424, PHI2_c, n2574, n2426, DOE) /* synthesis syn_module_defined=1 */ ;
    input A_out_3;
    output [7:0]RegRDD;
    output [15:0]CA;
    input A_out_1;
    input A_out_0;
    input n2431;
    input PHI2_N_495;
    input D_out_7;
    output [23:0]REUA;
    input D_out_6;
    input D_out_5;
    input D_out_4;
    input D_out_3;
    input D_out_2;
    input n2421;
    input A_out_2;
    output n2432;
    output [1:0]XferType;
    input n2420;
    input D_out_1;
    input D_out_0;
    input A_out_4;
    input n2424;
    input PHI2_c;
    input n2574;
    input n2426;
    input DOE;
    
    wire PHI2_N_495 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    
    wire n2499, n2338, n1790;
    wire [7:0]n562;
    
    wire n2427, PHI2_N_495_enable_80;
    wire [18:0]REUAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(47[12:23])
    
    wire PHI2_N_495_enable_74;
    wire [15:0]Length;   // c:/users/garre/repos/gw4302/cpld/reg.v(51[12:18])
    
    wire n2182, PHI2_N_495_enable_98, n1204, n1202, n1200, PHI2_N_495_enable_72, 
        n1254, n1198, n1196, n2433, n1218, n1252, n2181, n2407, 
        n1216, n2429, CAOut_7__N_182, nSize, PHI2_N_495_enable_14, 
        WRD_4__N_15, PHI2_N_495_enable_24, n2481, n2479, n2478, PHI2_N_495_enable_77, 
        n17, n30, n26, n18, Length1, n28, n22, n2107, IncMode_1__N_379, 
        n2184, n2410, n2186, n2482, n1250, n2199, n2203, n2496, 
        n2428, n1206, n2518, n2315;
    wire [7:0]n525;
    wire [7:0]n592;
    wire [7:0]n602;
    
    wire n2494;
    wire [7:0]n582;
    
    wire AutoloadEN, PHI2_N_495_enable_95, n1248, n1214, n1243;
    wire [15:0]LengthWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(52[12:25])
    
    wire n1290, n2423, n2493, PHI2_N_495_enable_44, n1210, n2497, 
        n1228;
    wire [15:0]CAWritten;   // c:/users/garre/repos/gw4302/cpld/reg.v(42[12:21])
    
    wire PHI2_N_495_enable_66, n1194, n1184, n2513, n2408;
    wire [7:0]n513;
    
    wire IntPending, n2409, n1208, PHI2_N_495_enable_57, n1294, n1292, 
        n1288, n1286, n1284, n1282, n1280, n1277, PHI2_N_495_enable_89, 
        PHI2_N_495_enable_91, n1275, n2512, Length1r, PHI2_N_495_enable_86;
    wire [7:0]n549;
    wire [1:0]IncMode;   // c:/users/garre/repos/gw4302/cpld/reg.v(61[11:18])
    
    wire n1176, n1182, n1269, n1265, n1263, n1261, n1256, PHI2_N_495_enable_94;
    wire [5:0]n623;
    
    wire PHI2_N_495_enable_97, IntEnable, n2515, EndOfBlockMask, VerifyErrMask, 
        n1174, nFF00DecodeEN, n2516, n2519, n2437, n2438, n2439, 
        n1178, n1226, n1224, n2520, n1222, n2141, n1220, n2522, 
        n2523, n2524, n2521, n2525, n2183, n1212, n2517, n2514, 
        n2344, n2168, nFF00DecodeEN_N_388, ExecuteENOut_N_382, n2484, 
        n1809, ExecuteEN, n2498, n2495, n3, n2483, n2480;
    
    LUT4 n2342_bdd_2_lut_4_lut (.A(n2499), .B(n2338), .C(A_out_3), .D(n1790), 
         .Z(RegRDD[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n2342_bdd_2_lut_4_lut.init = 16'hffca;
    LUT4 i1521_4_lut (.A(CA[2]), .B(A_out_1), .C(CA[10]), .D(A_out_0), 
         .Z(n562[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1521_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_rep_17_3_lut_4_lut (.A(A_out_0), .B(n2431), .C(n2427), 
         .D(A_out_1), .Z(PHI2_N_495_enable_80)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_17_3_lut_4_lut.init = 16'h0200;
    FD1P3AX REUAWritten_7__568 (.D(D_out_7), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_7__568.GSR = "ENABLED";
    LUT4 i1895_3_lut (.A(REUA[18]), .B(Length[2]), .C(A_out_0), .Z(n2182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1895_3_lut.init = 16'hcaca;
    FD1P3AX REUA_12__579 (.D(n1204), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_12__579.GSR = "ENABLED";
    FD1P3AX REUAWritten_6__569 (.D(D_out_6), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_6__569.GSR = "ENABLED";
    FD1P3AX REUA_11__580 (.D(n1202), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_11__580.GSR = "ENABLED";
    FD1P3AX REUAWritten_5__570 (.D(D_out_5), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_5__570.GSR = "ENABLED";
    FD1P3AX REUA_10__581 (.D(n1200), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_10__581.GSR = "ENABLED";
    FD1P3AX REUAWritten_4__571 (.D(D_out_4), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_4__571.GSR = "ENABLED";
    FD1P3AX REUAWritten_3__572 (.D(D_out_3), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_3__572.GSR = "ENABLED";
    FD1P3AX REUAWritten_2__573 (.D(D_out_2), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_2__573.GSR = "ENABLED";
    FD1P3AX CA_15__544 (.D(n1254), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_15__544.GSR = "ENABLED";
    FD1P3AX REUA_9__582 (.D(n1198), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_9__582.GSR = "ENABLED";
    FD1P3AX REUA_8__583 (.D(n1196), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_8__583.GSR = "ENABLED";
    LUT4 i917_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_3), .D(REUAWritten[3]), 
         .Z(n1218)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i917_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX CA_14__545 (.D(n1252), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_14__545.GSR = "ENABLED";
    LUT4 Length_10__bdd_4_lut_2177 (.A(Length[10]), .B(n2433), .C(n2181), 
         .D(A_out_3), .Z(n2407)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam Length_10__bdd_4_lut_2177.init = 16'heef0;
    LUT4 i915_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_2), .D(REUAWritten[2]), 
         .Z(n1216)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i915_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1987_3_lut_4_lut (.A(A_out_2), .B(n2432), .C(n2429), .D(n2431), 
         .Z(CAOut_7__N_182)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i1987_3_lut_4_lut.init = 16'h0001;
    FD1P3AX nSize_523 (.D(WRD_4__N_15), .SP(PHI2_N_495_enable_14), .CK(PHI2_N_495), 
            .Q(nSize)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(82[8] 99[4])
    defparam nSize_523.GSR = "ENABLED";
    FD1P3AX REUAWritten_15__584 (.D(D_out_7), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_15__584.GSR = "ENABLED";
    LUT4 i1959_2_lut_rep_13_3_lut_4_lut (.A(A_out_2), .B(n2432), .C(n2431), 
         .D(n2433), .Z(PHI2_N_495_enable_14)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i1959_2_lut_rep_13_3_lut_4_lut.init = 16'h0001;
    LUT4 REUA_0__bdd_3_lut_2173 (.A(XferType[0]), .B(A_out_2), .C(REUA[8]), 
         .Z(n2481)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_0__bdd_3_lut_2173.init = 16'he2e2;
    LUT4 REUA_16__bdd_3_lut_2169 (.A(REUA[16]), .B(A_out_2), .C(CA[0]), 
         .Z(n2479)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam REUA_16__bdd_3_lut_2169.init = 16'hb8b8;
    LUT4 REUA_16__bdd_3_lut_2114 (.A(A_out_2), .B(Length[0]), .C(CA[8]), 
         .Z(n2478)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam REUA_16__bdd_3_lut_2114.init = 16'hd8d8;
    LUT4 i1981_2_lut_rep_14_3_lut_4_lut (.A(A_out_2), .B(n2432), .C(n2429), 
         .D(n2431), .Z(PHI2_N_495_enable_77)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i1981_2_lut_rep_14_3_lut_4_lut.init = 16'h0002;
    LUT4 i1971_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), .Z(Length1)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[18:27])
    defparam i1971_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(Length[0]), .B(Length[10]), .Z(n17)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[18:27])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1991_2_lut_rep_18_3_lut_4_lut (.A(A_out_2), .B(n2432), .C(n2433), 
         .D(n2431), .Z(PHI2_N_495_enable_74)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i1991_2_lut_rep_18_3_lut_4_lut.init = 16'h0002;
    LUT4 i14_4_lut (.A(Length[15]), .B(n28), .C(n22), .D(Length[14]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[18:27])
    defparam i14_4_lut.init = 16'hfffe;
    FD1P3AX REUAWritten_14__585 (.D(D_out_6), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_14__585.GSR = "ENABLED";
    LUT4 A_4__I_0_654_i6_2_lut_rep_29 (.A(A_out_0), .B(A_out_1), .Z(n2429)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam A_4__I_0_654_i6_2_lut_rep_29.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut (.A(A_out_0), .B(A_out_1), .C(n2107), .Z(IncMode_1__N_379)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(71[2:14])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i10_4_lut (.A(Length[9]), .B(Length[3]), .C(Length[2]), .D(Length[1]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[18:27])
    defparam i10_4_lut.init = 16'hfffe;
    L6MUX21 i1899 (.D0(n2184), .D1(n2410), .SD(A_out_2), .Z(n2186));
    LUT4 REUA_0__bdd_2_lut_2174 (.A(REUA[0]), .B(A_out_2), .Z(n2482)) /* synthesis lut_function=(A (B)) */ ;
    defparam REUA_0__bdd_2_lut_2174.init = 16'h8888;
    LUT4 i2_2_lut (.A(Length[11]), .B(Length[8]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[18:27])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3AX CA_12__547 (.D(n1250), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_12__547.GSR = "ENABLED";
    FD1P3AX REUAWritten_13__586 (.D(D_out_5), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_13__586.GSR = "ENABLED";
    LUT4 i1984_2_lut_3_lut (.A(A_out_2), .B(A_out_1), .C(A_out_3), .Z(n2199)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1984_2_lut_3_lut.init = 16'hfdfd;
    FD1P3AX REUAWritten_12__587 (.D(D_out_4), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_12__587.GSR = "ENABLED";
    LUT4 i1982_2_lut_3_lut (.A(A_out_2), .B(A_out_1), .C(A_out_3), .Z(n2203)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1982_2_lut_3_lut.init = 16'hf2f2;
    LUT4 REUA_1__bdd_3_lut_2158 (.A(XferType[1]), .B(A_out_2), .C(REUA[9]), 
         .Z(n2496)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam REUA_1__bdd_3_lut_2158.init = 16'he2e2;
    LUT4 i905_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_5), .D(REUAWritten[13]), 
         .Z(n1206)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i905_3_lut_4_lut.init = 16'hfb40;
    LUT4 n2319_bdd_4_lut (.A(n2518), .B(n2315), .C(A_out_3), .D(n1790), 
         .Z(RegRDD[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n2319_bdd_4_lut.init = 16'hffca;
    FD1P3AX REUAWritten_11__588 (.D(D_out_3), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_11__588.GSR = "ENABLED";
    PFUMX mux_248_i4 (.BLUT(n525[3]), .ALUT(n592[3]), .C0(n2199), .Z(n602[3]));
    LUT4 REUA_17__bdd_3_lut_2154 (.A(REUA[17]), .B(A_out_2), .C(CA[1]), 
         .Z(n2494)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam REUA_17__bdd_3_lut_2154.init = 16'hb8b8;
    LUT4 i1500_4_lut (.A(n2186), .B(n1790), .C(n582[7]), .D(A_out_3), 
         .Z(RegRDD[7])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1500_4_lut.init = 16'hfcee;
    FD1P3AX REUAWritten_10__589 (.D(D_out_2), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_10__589.GSR = "ENABLED";
    FD1P3AX AutoloadEN_526 (.D(D_out_6), .SP(PHI2_N_495_enable_95), .CK(PHI2_N_495), 
            .Q(AutoloadEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam AutoloadEN_526.GSR = "ENABLED";
    FD1P3AX REUAWritten_9__590 (.D(D_out_1), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_9__590.GSR = "ENABLED";
    FD1P3AX REUAWritten_8__591 (.D(D_out_0), .SP(PHI2_N_495_enable_24), 
            .CK(PHI2_N_495), .Q(REUAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUAWritten_8__591.GSR = "ENABLED";
    FD1P3AX CA_5__530 (.D(D_out_5), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_5__530.GSR = "ENABLED";
    FD1P3AX REUA_23__592 (.D(D_out_7), .SP(PHI2_N_495_enable_77), .CK(PHI2_N_495), 
            .Q(REUA[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_23__592.GSR = "ENABLED";
    FD1P3AX REUA_22__593 (.D(D_out_6), .SP(PHI2_N_495_enable_77), .CK(PHI2_N_495), 
            .Q(REUA[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_22__593.GSR = "ENABLED";
    FD1P3AX CA_11__548 (.D(n1248), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_11__548.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(Length[5]), .B(Length[4]), .C(Length[13]), .D(Length[6]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[18:27])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i913_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_1), .D(REUAWritten[1]), 
         .Z(n1214)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i913_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_32 (.A(A_out_3), .B(A_out_4), .Z(n2432)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i1_2_lut_rep_32.init = 16'heeee;
    FD1P3AX REUA_21__594 (.D(D_out_5), .SP(PHI2_N_495_enable_77), .CK(PHI2_N_495), 
            .Q(REUA[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_21__594.GSR = "ENABLED";
    FD1P3AX CA_4__531 (.D(D_out_4), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_4__531.GSR = "ENABLED";
    FD1P3AX CA_10__549 (.D(n1243), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_10__549.GSR = "ENABLED";
    LUT4 i988_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_3), .D(LengthWritten[3]), 
         .Z(n1290)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i988_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_27_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n2427)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i1_2_lut_rep_27_3_lut.init = 16'hfefe;
    LUT4 A_4__I_0_643_i9_2_lut_rep_23_3_lut_4_lut (.A(A_out_3), .B(A_out_4), 
         .C(n2433), .D(A_out_2), .Z(n2423)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam A_4__I_0_643_i9_2_lut_rep_23_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_28_3_lut (.A(A_out_3), .B(A_out_4), .C(A_out_2), 
         .Z(n2428)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(66[2:14])
    defparam i1_2_lut_rep_28_3_lut.init = 16'hefef;
    LUT4 REUA_17__bdd_3_lut_2127 (.A(A_out_2), .B(Length[1]), .C(CA[9]), 
         .Z(n2493)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam REUA_17__bdd_3_lut_2127.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_25_3_lut (.A(A_out_0), .B(A_out_1), .C(n2107), .Z(PHI2_N_495_enable_44)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(73[2:14])
    defparam i1_2_lut_rep_25_3_lut.init = 16'h1010;
    LUT4 i909_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_7), .D(REUAWritten[15]), 
         .Z(n1210)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i909_3_lut_4_lut.init = 16'hfb40;
    LUT4 REUA_1__bdd_2_lut_2159 (.A(REUA[1]), .B(A_out_2), .Z(n2497)) /* synthesis lut_function=(A (B)) */ ;
    defparam REUA_1__bdd_2_lut_2159.init = 16'h8888;
    FD1P3AX REUA_20__595 (.D(D_out_4), .SP(PHI2_N_495_enable_77), .CK(PHI2_N_495), 
            .Q(REUA[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_20__595.GSR = "ENABLED";
    FD1P3AX CA_3__532 (.D(D_out_3), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_3__532.GSR = "ENABLED";
    FD1P3AX REUA_19__596 (.D(D_out_3), .SP(PHI2_N_495_enable_77), .CK(PHI2_N_495), 
            .Q(REUA[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_19__596.GSR = "ENABLED";
    FD1P3AX CA_9__550 (.D(n1228), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_9__550.GSR = "ENABLED";
    LUT4 i6_2_lut (.A(Length[7]), .B(Length[12]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(53[18:27])
    defparam i6_2_lut.init = 16'heeee;
    FD1P3AX CAWritten_15__552 (.D(D_out_7), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_15__552.GSR = "ENABLED";
    FD1P3AX REUA_18__597 (.D(n1194), .SP(PHI2_N_495_enable_66), .CK(PHI2_N_495), 
            .Q(REUA[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_18__597.GSR = "ENABLED";
    FD1P3AX REUA_17__598 (.D(n1184), .SP(PHI2_N_495_enable_66), .CK(PHI2_N_495), 
            .Q(REUA[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_17__598.GSR = "ENABLED";
    FD1P3AX CAWritten_14__553 (.D(D_out_6), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_14__553.GSR = "ENABLED";
    FD1P3AX LengthWritten_8__634 (.D(D_out_0), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_8__634.GSR = "ENABLED";
    FD1P3AX LengthWritten_9__633 (.D(D_out_1), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_9__633.GSR = "ENABLED";
    FD1P3AX LengthWritten_10__632 (.D(D_out_2), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_10__632.GSR = "ENABLED";
    FD1P3AX LengthWritten_11__631 (.D(D_out_3), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_11__631.GSR = "ENABLED";
    FD1P3AX LengthWritten_12__630 (.D(D_out_4), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_12__630.GSR = "ENABLED";
    FD1P3AX LengthWritten_13__629 (.D(D_out_5), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_13__629.GSR = "ENABLED";
    FD1P3AX LengthWritten_14__628 (.D(D_out_6), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_14__628.GSR = "ENABLED";
    FD1P3AX LengthWritten_15__627 (.D(D_out_7), .SP(PHI2_N_495_enable_44), 
            .CK(PHI2_N_495), .Q(LengthWritten[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam LengthWritten_15__627.GSR = "ENABLED";
    FD1P3AX CAWritten_13__554 (.D(D_out_5), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_13__554.GSR = "ENABLED";
    FD1P3AX CAWritten_12__555 (.D(D_out_4), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_12__555.GSR = "ENABLED";
    FD1P3AX CAWritten_11__556 (.D(D_out_3), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_11__556.GSR = "ENABLED";
    FD1P3AX CA_7__528 (.D(D_out_7), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_7__528.GSR = "ENABLED";
    LUT4 Length_7__bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n525[7]), 
         .D(Length[7]), .Z(n2410)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;
    defparam Length_7__bdd_4_lut_4_lut.init = 16'hfc74;
    LUT4 CA_4__bdd_3_lut (.A(CA[4]), .B(A_out_0), .C(CA[12]), .Z(n2513)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam CA_4__bdd_3_lut.init = 16'he2e2;
    LUT4 Length_6__bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n525[6]), 
         .D(Length[6]), .Z(n2408)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;
    defparam Length_6__bdd_4_lut_4_lut.init = 16'hfc74;
    FD1P3AX CAWritten_10__557 (.D(D_out_2), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_10__557.GSR = "ENABLED";
    LUT4 IntPending_bdd_4_lut_4_lut (.A(A_out_0), .B(A_out_1), .C(n513[6]), 
         .D(IntPending), .Z(n2409)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam IntPending_bdd_4_lut_4_lut.init = 16'hd1c0;
    FD1P3AX REUA_14__577 (.D(n1208), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_14__577.GSR = "ENABLED";
    FD1P3AX Length_8__626 (.D(n1294), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_8__626.GSR = "ENABLED";
    LUT4 i903_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_4), .D(REUAWritten[12]), 
         .Z(n1204)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i903_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX Length_9__625 (.D(n1292), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_9__625.GSR = "ENABLED";
    FD1P3AX Length_10__624 (.D(n1288), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_10__624.GSR = "ENABLED";
    FD1P3AX Length_11__623 (.D(n1286), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_11__623.GSR = "ENABLED";
    FD1P3AX Length_12__622 (.D(n1284), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_12__622.GSR = "ENABLED";
    FD1P3AX Length_13__621 (.D(n1282), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_13__621.GSR = "ENABLED";
    FD1P3AX Length_14__620 (.D(n1280), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_14__620.GSR = "ENABLED";
    FD1P3AX Length_15__619 (.D(n1277), .SP(PHI2_N_495_enable_57), .CK(PHI2_N_495), 
            .Q(Length[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(207[8] 219[4])
    defparam Length_15__619.GSR = "ENABLED";
    FD1P3AX LengthWritten_4__614 (.D(D_out_4), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_4__614.GSR = "ENABLED";
    FD1P3AX LengthWritten_7__611 (.D(D_out_7), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_7__611.GSR = "ENABLED";
    FD1P3AX Length_1__609 (.D(n1275), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_1__609.GSR = "ENABLED";
    FD1P3AX LengthWritten_3__615 (.D(D_out_3), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_3__615.GSR = "ENABLED";
    FD1P3AX LengthWritten_6__612 (.D(D_out_6), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_6__612.GSR = "ENABLED";
    FD1P3AX LengthWritten_2__616 (.D(D_out_2), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_2__616.GSR = "ENABLED";
    FD1P3AX LengthWritten_5__613 (.D(D_out_5), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_5__613.GSR = "ENABLED";
    FD1P3AX LengthWritten_1__617 (.D(D_out_1), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_1__617.GSR = "ENABLED";
    LUT4 n529_bdd_3_lut_2029 (.A(Length[12]), .B(A_out_1), .C(A_out_0), 
         .Z(n2315)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n529_bdd_3_lut_2029.init = 16'hfefe;
    LUT4 i901_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_3), .D(REUAWritten[11]), 
         .Z(n1202)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i901_3_lut_4_lut.init = 16'hfb40;
    LUT4 i899_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_2), .D(REUAWritten[10]), 
         .Z(n1200)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i899_3_lut_4_lut.init = 16'hfb40;
    LUT4 CA_4__bdd_2_lut (.A(Length[4]), .B(A_out_0), .Z(n2512)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam CA_4__bdd_2_lut.init = 16'hbbbb;
    LUT4 i1977_2_lut_3_lut_4_lut (.A(Length1r), .B(Length1), .C(n2423), 
         .D(n2431), .Z(PHI2_N_495_enable_86)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i1977_2_lut_3_lut_4_lut.init = 16'h4440;
    LUT4 mux_244_i8_3_lut (.A(n549[7]), .B(IncMode[1]), .C(A_out_1), .Z(n582[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_244_i8_3_lut.init = 16'hcaca;
    LUT4 i875_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_6), .D(LengthWritten[6]), 
         .Z(n1176)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i875_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX REUA_16__599 (.D(n1182), .SP(PHI2_N_495_enable_66), .CK(PHI2_N_495), 
            .Q(REUA[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUA_16__599.GSR = "ENABLED";
    FD1P3AX REUAWritten_1__574 (.D(D_out_1), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_1__574.GSR = "ENABLED";
    FD1P3AX Length_2__608 (.D(n1269), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_2__608.GSR = "ENABLED";
    FD1P3AX CA_8__551 (.D(n1265), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_8__551.GSR = "ENABLED";
    FD1P3AX Length_0__610 (.D(n1263), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_0__610.GSR = "ENABLED";
    FD1P3AX Length_5__605 (.D(n1261), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_5__605.GSR = "ENABLED";
    FD1P3AX CA_13__546 (.D(n1256), .SP(PHI2_N_495_enable_72), .CK(PHI2_N_495), 
            .Q(CA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CA_13__546.GSR = "ENABLED";
    LUT4 i907_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_6), .D(REUAWritten[14]), 
         .Z(n1208)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i907_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX CA_6__529 (.D(D_out_6), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_6__529.GSR = "ENABLED";
    LUT4 i895_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_0), .D(REUAWritten[8]), 
         .Z(n1196)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i895_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1962_2_lut_3_lut_4_lut (.A(Length1r), .B(Length1), .C(n2421), 
         .D(n2433), .Z(PHI2_N_495_enable_94)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+!(C+(D))))) */ ;
    defparam i1962_2_lut_3_lut_4_lut.init = 16'h444f;
    PFUMX i1897 (.BLUT(n623[5]), .ALUT(n513[7]), .C0(A_out_1), .Z(n2184));
    FD1P3AX REUAWritten_18__600 (.D(D_out_2), .SP(PHI2_N_495_enable_77), 
            .CK(PHI2_N_495), .Q(REUAWritten[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUAWritten_18__600.GSR = "ENABLED";
    FD1P3AX REUAWritten_0__575 (.D(D_out_0), .SP(PHI2_N_495_enable_74), 
            .CK(PHI2_N_495), .Q(REUAWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUAWritten_0__575.GSR = "ENABLED";
    FD1P3AX REUAWritten_17__601 (.D(D_out_1), .SP(PHI2_N_495_enable_77), 
            .CK(PHI2_N_495), .Q(REUAWritten[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUAWritten_17__601.GSR = "ENABLED";
    FD1P3AX REUA_15__576 (.D(n1210), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_15__576.GSR = "ENABLED";
    FD1P3AX REUAWritten_16__602 (.D(D_out_0), .SP(PHI2_N_495_enable_77), 
            .CK(PHI2_N_495), .Q(REUAWritten[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(177[8] 189[4])
    defparam REUAWritten_16__602.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(A_out_3), .B(A_out_4), .C(n2431), .D(A_out_2), 
         .Z(n2107)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    LUT4 i897_3_lut_4_lut (.A(n2428), .B(n2420), .C(D_out_1), .D(REUAWritten[9]), 
         .Z(n1198)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i897_3_lut_4_lut.init = 16'hfb40;
    LUT4 i942_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_2), .D(CAWritten[10]), 
         .Z(n1243)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i942_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX XferType_i0_i0 (.D(D_out_0), .SP(PHI2_N_495_enable_95), .CK(PHI2_N_495), 
            .Q(XferType[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam XferType_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(Length1r), .B(Length1), .C(n2420), .D(n2427), 
         .Z(PHI2_N_495_enable_97)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h44f4;
    FD1S3AX IntEnable_635 (.D(D_out_7), .CK(PHI2_N_495), .Q(IntEnable)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(222[8] 232[4])
    defparam IntEnable_635.GSR = "ENABLED";
    LUT4 nFF00DecodeEN_bdd_3_lut_2143 (.A(REUA[4]), .B(A_out_0), .C(REUA[12]), 
         .Z(n2515)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam nFF00DecodeEN_bdd_3_lut_2143.init = 16'he2e2;
    LUT4 i927_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_1), .D(CAWritten[9]), 
         .Z(n1228)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i927_3_lut_4_lut.init = 16'hfb40;
    FD1S3AX EndOfBlockMask_636 (.D(D_out_6), .CK(PHI2_N_495), .Q(EndOfBlockMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(222[8] 232[4])
    defparam EndOfBlockMask_636.GSR = "ENABLED";
    FD1S3AX VerifyErrMask_637 (.D(D_out_5), .CK(PHI2_N_495), .Q(VerifyErrMask)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(222[8] 232[4])
    defparam VerifyErrMask_637.GSR = "ENABLED";
    FD1S3AX Length1r_519 (.D(Length1), .CK(PHI2_c), .Q(Length1r)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(80[8:44])
    defparam Length1r_519.GSR = "ENABLED";
    LUT4 i1499_4_lut (.A(Length[13]), .B(A_out_1), .C(VerifyErrMask), 
         .D(A_out_0), .Z(n582[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1499_4_lut.init = 16'hfcee;
    LUT4 i873_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_4), .D(LengthWritten[4]), 
         .Z(n1174)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i873_3_lut_4_lut.init = 16'hfb40;
    LUT4 nFF00DecodeEN_bdd_3_lut (.A(nFF00DecodeEN), .B(A_out_0), .C(nSize), 
         .Z(n2516)) /* synthesis lut_function=(A (B+!(C))+!A !(B+(C))) */ ;
    defparam nFF00DecodeEN_bdd_3_lut.init = 16'h8b8b;
    FD1P3AX CA_2__533 (.D(D_out_2), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_2__533.GSR = "ENABLED";
    LUT4 mux_227_i8_3_lut (.A(REUA[7]), .B(REUA[15]), .C(A_out_0), .Z(n525[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_227_i8_3_lut.init = 16'hcaca;
    LUT4 mux_235_i8_3_lut (.A(Length[15]), .B(IntEnable), .C(A_out_0), 
         .Z(n549[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_235_i8_3_lut.init = 16'hcaca;
    LUT4 CA_5__bdd_3_lut (.A(Length[5]), .B(A_out_2), .C(CA[13]), .Z(n2519)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam CA_5__bdd_3_lut.init = 16'hb8b8;
    FD1P3AX CAWritten_9__558 (.D(D_out_1), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_9__558.GSR = "ENABLED";
    FD1P3AX CAWritten_8__559 (.D(D_out_0), .SP(PHI2_N_495_enable_80), .CK(PHI2_N_495), 
            .Q(CAWritten[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(132[8] 143[4])
    defparam CAWritten_8__559.GSR = "ENABLED";
    PFUMX i2087 (.BLUT(n2437), .ALUT(n2438), .C0(A_out_0), .Z(n2439));
    FD1P3AX Length_7__603 (.D(n1178), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_7__603.GSR = "ENABLED";
    FD1P3AX Length_6__604 (.D(n1176), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_6__604.GSR = "ENABLED";
    FD1P3AX CA_1__534 (.D(D_out_1), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_1__534.GSR = "ENABLED";
    FD1P3AX REUA_7__560 (.D(n1226), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_7__560.GSR = "ENABLED";
    FD1P3AX REUA_6__561 (.D(n1224), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_6__561.GSR = "ENABLED";
    LUT4 mux_227_i4_3_lut (.A(REUA[3]), .B(REUA[11]), .C(A_out_0), .Z(n525[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_227_i4_3_lut.init = 16'hcaca;
    LUT4 CA_5__bdd_2_lut (.A(CA[5]), .B(A_out_2), .Z(n2520)) /* synthesis lut_function=(A+(B)) */ ;
    defparam CA_5__bdd_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_111 (.A(Length1r), .B(Length1), .C(n2424), 
         .D(n2427), .Z(PHI2_N_495_enable_72)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_111.init = 16'h44f4;
    LUT4 mux_244_i7_3_lut (.A(n549[6]), .B(IncMode[0]), .C(A_out_1), .Z(n582[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_244_i7_3_lut.init = 16'hcaca;
    LUT4 mux_235_i7_3_lut (.A(Length[14]), .B(EndOfBlockMask), .C(A_out_0), 
         .Z(n549[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_235_i7_3_lut.init = 16'hcaca;
    FD1P3AX CA_0__535 (.D(D_out_0), .SP(CAOut_7__N_182), .CK(PHI2_N_495), 
            .Q(CA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(124[8] 129[4])
    defparam CA_0__535.GSR = "ENABLED";
    LUT4 i967_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_2), .D(LengthWritten[2]), 
         .Z(n1269)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i967_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX REUA_5__562 (.D(n1222), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_5__562.GSR = "ENABLED";
    FD1P3IX IntPending_520 (.D(n2574), .SP(PHI2_N_495_enable_86), .CD(n2141), 
            .CK(PHI2_N_495), .Q(IntPending)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(82[8] 99[4])
    defparam IntPending_520.GSR = "ENABLED";
    LUT4 i946_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_3), .D(CAWritten[11]), 
         .Z(n1248)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i946_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX REUA_4__563 (.D(n1220), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_4__563.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_112 (.A(Length1r), .B(Length1), .C(n2420), 
         .D(n2428), .Z(PHI2_N_495_enable_98)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_112.init = 16'h44f4;
    FD1P3AX REUA_3__564 (.D(n1218), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_3__564.GSR = "ENABLED";
    FD1P3AX LengthWritten_0__618 (.D(D_out_0), .SP(PHI2_N_495_enable_89), 
            .CK(PHI2_N_495), .Q(LengthWritten[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam LengthWritten_0__618.GSR = "ENABLED";
    FD1P3AX Length_4__606 (.D(n1174), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_4__606.GSR = "ENABLED";
    FD1P3AX Length_3__607 (.D(n1290), .SP(PHI2_N_495_enable_91), .CK(PHI2_N_495), 
            .Q(Length[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(192[8] 204[4])
    defparam Length_3__607.GSR = "ENABLED";
    FD1P3AX REUA_2__565 (.D(n1216), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_2__565.GSR = "ENABLED";
    LUT4 n532_bdd_3_lut_2046 (.A(Length[9]), .B(A_out_1), .C(A_out_0), 
         .Z(n2338)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n532_bdd_3_lut_2046.init = 16'hfefe;
    LUT4 i881_3_lut_4_lut (.A(n2429), .B(n2421), .C(D_out_0), .D(REUAWritten[16]), 
         .Z(n1182)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i881_3_lut_4_lut.init = 16'hfe10;
    LUT4 i883_3_lut_4_lut (.A(n2429), .B(n2421), .C(D_out_1), .D(REUAWritten[17]), 
         .Z(n1184)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i883_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX REUA_1__566 (.D(n1214), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_1__566.GSR = "ENABLED";
    LUT4 REUA_5__bdd_3_lut (.A(REUA[13]), .B(A_out_2), .C(AutoloadEN), 
         .Z(n2522)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam REUA_5__bdd_3_lut.init = 16'hb8b8;
    LUT4 REUA_5__bdd_2_lut (.A(REUA[5]), .B(A_out_2), .Z(n2523)) /* synthesis lut_function=(A (B)) */ ;
    defparam REUA_5__bdd_2_lut.init = 16'h8888;
    LUT4 i1974_2_lut_3_lut_4_lut (.A(Length1r), .B(Length1), .C(n2421), 
         .D(n2429), .Z(PHI2_N_495_enable_66)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+!(C+(D))))) */ ;
    defparam i1974_2_lut_3_lut_4_lut.init = 16'h444f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_113 (.A(Length1r), .B(Length1), .C(n2424), 
         .D(n2428), .Z(PHI2_N_495_enable_91)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_113.init = 16'h44f4;
    LUT4 mux_223_i7_3_lut (.A(CA[6]), .B(CA[14]), .C(A_out_0), .Z(n513[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_223_i7_3_lut.init = 16'hcaca;
    L6MUX21 i2152 (.D0(n2524), .D1(n2521), .SD(A_out_1), .Z(n2525));
    LUT4 mux_242_i4_then_4_lut (.A(A_out_1), .B(A_out_2), .C(Length[3]), 
         .D(CA[11]), .Z(n2438)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam mux_242_i4_then_4_lut.init = 16'he2c0;
    PFUMX i2150 (.BLUT(n2523), .ALUT(n2522), .C0(A_out_0), .Z(n2524));
    LUT4 n2312_bdd_4_lut (.A(n2525), .B(n582[5]), .C(A_out_3), .D(n1790), 
         .Z(RegRDD[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n2312_bdd_4_lut.init = 16'hffca;
    L6MUX21 mux_248_i3 (.D0(n2183), .D1(n2407), .SD(n2203), .Z(n602[2]));
    PFUMX i2148 (.BLUT(n2520), .ALUT(n2519), .C0(A_out_0), .Z(n2521));
    LUT4 i959_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_5), .D(LengthWritten[5]), 
         .Z(n1261)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i959_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX IncMode_i0_i0 (.D(D_out_6), .SP(IncMode_1__N_379), .CK(PHI2_N_495), 
            .Q(IncMode[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(236[8] 238[4])
    defparam IncMode_i0_i0.GSR = "ENABLED";
    FD1P3AX REUA_0__567 (.D(n1212), .SP(PHI2_N_495_enable_94), .CK(PHI2_N_495), 
            .Q(REUA[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(146[8] 158[4])
    defparam REUA_0__567.GSR = "ENABLED";
    L6MUX21 i2146 (.D0(n2517), .D1(n2514), .SD(A_out_1), .Z(n2518));
    LUT4 n533_bdd_3_lut_2049 (.A(Length[8]), .B(A_out_1), .C(A_out_0), 
         .Z(n2344)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n533_bdd_3_lut_2049.init = 16'hfefe;
    L6MUX21 i1881 (.D0(n2409), .D1(n2408), .SD(A_out_2), .Z(n2168));
    LUT4 i1497_2_lut_3_lut_4_lut (.A(n2426), .B(A_out_1), .C(D_out_4), 
         .D(n2427), .Z(nFF00DecodeEN_N_388)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1497_2_lut_3_lut_4_lut.init = 16'hfffd;
    PFUMX i2144 (.BLUT(n2516), .ALUT(n2515), .C0(A_out_2), .Z(n2517));
    FD1P3AX XferType_i0_i1 (.D(D_out_1), .SP(PHI2_N_495_enable_95), .CK(PHI2_N_495), 
            .Q(XferType[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam XferType_i0_i1.GSR = "ENABLED";
    LUT4 mux_242_i4_else_4_lut (.A(A_out_1), .B(CA[3]), .C(A_out_2), .Z(n2437)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam mux_242_i4_else_4_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_19_3_lut_4_lut (.A(A_out_0), .B(n2431), .C(n2428), 
         .D(A_out_1), .Z(PHI2_N_495_enable_24)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_19_3_lut_4_lut.init = 16'h0002;
    LUT4 i1495_2_lut_3_lut_4_lut (.A(n2426), .B(A_out_1), .C(D_out_7), 
         .D(n2427), .Z(ExecuteENOut_N_382)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1495_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i982_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_4), .D(LengthWritten[12]), 
         .Z(n1284)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i982_3_lut_4_lut.init = 16'hfb40;
    LUT4 i954_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_5), .D(CAWritten[13]), 
         .Z(n1256)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i954_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_16_3_lut_4_lut (.A(A_out_0), .B(n2431), .C(n2428), 
         .D(A_out_1), .Z(PHI2_N_495_enable_89)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_16_3_lut_4_lut.init = 16'h0200;
    LUT4 i984_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_3), .D(LengthWritten[11]), 
         .Z(n1286)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i984_3_lut_4_lut.init = 16'hfb40;
    LUT4 i923_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_6), .D(REUAWritten[6]), 
         .Z(n1224)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i923_3_lut_4_lut.init = 16'hfe10;
    LUT4 n2348_bdd_2_lut_4_lut (.A(n2484), .B(n2344), .C(A_out_3), .D(n1790), 
         .Z(RegRDD[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n2348_bdd_2_lut_4_lut.init = 16'hffca;
    PFUMX i2141 (.BLUT(n2513), .ALUT(n2512), .C0(A_out_2), .Z(n2514));
    LUT4 i921_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_5), .D(REUAWritten[5]), 
         .Z(n1222)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i921_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1894_3_lut (.A(REUA[2]), .B(REUA[10]), .C(A_out_0), .Z(n2181)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1894_3_lut.init = 16'hcaca;
    LUT4 i973_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_1), .D(LengthWritten[1]), 
         .Z(n1275)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i973_3_lut_4_lut.init = 16'hfb40;
    LUT4 i919_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_4), .D(REUAWritten[4]), 
         .Z(n1220)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i919_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1567_4_lut (.A(A_out_4), .B(A_out_3), .C(n1809), .D(A_out_2), 
         .Z(n1790)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1567_4_lut.init = 16'heeea;
    LUT4 i1508_2_lut (.A(A_out_1), .B(A_out_0), .Z(n1809)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1508_2_lut.init = 16'h8888;
    LUT4 i911_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_0), .D(REUAWritten[0]), 
         .Z(n1212)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i911_3_lut_4_lut.init = 16'hfe10;
    LUT4 i963_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_0), .D(CAWritten[8]), 
         .Z(n1265)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i963_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_223_i8_3_lut (.A(CA[7]), .B(CA[15]), .C(A_out_0), .Z(n513[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_223_i8_3_lut.init = 16'hcaca;
    FD1P3AX IncMode_i0_i1 (.D(D_out_7), .SP(IncMode_1__N_379), .CK(PHI2_N_495), 
            .Q(IncMode[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(236[8] 238[4])
    defparam IncMode_i0_i1.GSR = "ENABLED";
    LUT4 mux_253_i6_3_lut (.A(IntPending), .B(ExecuteEN), .C(A_out_0), 
         .Z(n623[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_253_i6_3_lut.init = 16'hcaca;
    LUT4 i986_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_2), .D(LengthWritten[10]), 
         .Z(n1288)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i986_3_lut_4_lut.init = 16'hfb40;
    L6MUX21 i2132 (.D0(n2498), .D1(n2495), .SD(A_out_1), .Z(n2499));
    LUT4 i1498_2_lut (.A(n602[2]), .B(n1790), .Z(RegRDD[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1498_2_lut.init = 16'heeee;
    PFUMX i2130 (.BLUT(n2497), .ALUT(n2496), .C0(A_out_0), .Z(n2498));
    LUT4 i1491_2_lut (.A(n602[3]), .B(n1790), .Z(RegRDD[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1491_2_lut.init = 16'heeee;
    LUT4 WRD_4__I_0_1_lut (.A(D_out_4), .Z(WRD_4__N_15)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(89[12:19])
    defparam WRD_4__I_0_1_lut.init = 16'h5555;
    LUT4 i893_3_lut_4_lut (.A(n2429), .B(n2421), .C(D_out_2), .D(REUAWritten[18]), 
         .Z(n1194)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i893_3_lut_4_lut.init = 16'hfe10;
    LUT4 i618_1_lut (.A(A_out_2), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(70[2:14])
    defparam i618_1_lut.init = 16'h5555;
    LUT4 i990_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_1), .D(LengthWritten[9]), 
         .Z(n1292)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i990_3_lut_4_lut.init = 16'hfb40;
    LUT4 i952_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_7), .D(CAWritten[15]), 
         .Z(n1254)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i952_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_227_i7_3_lut (.A(REUA[6]), .B(REUA[14]), .C(A_out_0), .Z(n525[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_227_i7_3_lut.init = 16'hcaca;
    LUT4 i992_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_0), .D(LengthWritten[8]), 
         .Z(n1294)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i992_3_lut_4_lut.init = 16'hfb40;
    PFUMX i2128 (.BLUT(n2494), .ALUT(n2493), .C0(A_out_0), .Z(n2495));
    L6MUX21 i2119 (.D0(n2483), .D1(n2480), .SD(A_out_1), .Z(n2484));
    LUT4 i961_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_0), .D(LengthWritten[0]), 
         .Z(n1263)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i961_3_lut_4_lut.init = 16'hfb40;
    PFUMX i2117 (.BLUT(n2482), .ALUT(n2481), .C0(A_out_0), .Z(n2483));
    LUT4 i950_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_6), .D(CAWritten[14]), 
         .Z(n1252)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i950_3_lut_4_lut.init = 16'hfb40;
    PFUMX i2115 (.BLUT(n2479), .ALUT(n2478), .C0(A_out_0), .Z(n2480));
    LUT4 i884_2_lut (.A(A_out_0), .B(A_out_1), .Z(n2433)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i884_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(n2433), .B(n2427), .C(n2431), .D(DOE), .Z(n2141)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2:14])
    defparam i2_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_15_3_lut_4_lut (.A(A_out_0), .B(n2431), .C(n2427), 
         .D(A_out_1), .Z(PHI2_N_495_enable_95)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_15_3_lut_4_lut.init = 16'h0002;
    LUT4 i925_3_lut_4_lut (.A(n2433), .B(n2421), .C(D_out_7), .D(REUAWritten[7]), 
         .Z(n1226)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i925_3_lut_4_lut.init = 16'hfe10;
    LUT4 i975_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_7), .D(LengthWritten[15]), 
         .Z(n1277)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i975_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(n2433), .B(n2107), .C(Length1), 
         .D(Length1r), .Z(PHI2_N_495_enable_57)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'h44f4;
    LUT4 i978_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_6), .D(LengthWritten[14]), 
         .Z(n1280)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i978_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_246_i4_4_lut (.A(n2439), .B(Length[11]), .C(A_out_3), .D(n2433), 
         .Z(n592[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam mux_246_i4_4_lut.init = 16'hfaca;
    PFUMX i1896 (.BLUT(n2182), .ALUT(n562[2]), .C0(n3), .Z(n2183));
    LUT4 i877_3_lut_4_lut (.A(n2428), .B(n2424), .C(D_out_7), .D(LengthWritten[7]), 
         .Z(n1178)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i877_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX nFF00DecodeEN_525 (.D(nFF00DecodeEN_N_388), .SP(PHI2_N_495_enable_97), 
            .CK(PHI2_N_495), .Q(nFF00DecodeEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam nFF00DecodeEN_525.GSR = "ENABLED";
    LUT4 i980_3_lut_4_lut (.A(n2433), .B(n2107), .C(D_out_5), .D(LengthWritten[13]), 
         .Z(n1282)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i980_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX ExecuteEN_524 (.D(ExecuteENOut_N_382), .SP(PHI2_N_495_enable_97), 
            .CK(PHI2_N_495), .Q(ExecuteEN)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(102[8] 121[4])
    defparam ExecuteEN_524.GSR = "ENABLED";
    LUT4 i948_3_lut_4_lut (.A(n2427), .B(n2424), .C(D_out_4), .D(CAWritten[12]), 
         .Z(n1250)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i948_3_lut_4_lut.init = 16'hfb40;
    FD1P3AX REUA_13__578 (.D(n1206), .SP(PHI2_N_495_enable_98), .CK(PHI2_N_495), 
            .Q(REUA[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=9, LSE_RCOL=48, LSE_LLINE=57, LSE_RLINE=66 */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(161[8] 173[4])
    defparam REUA_13__578.GSR = "ENABLED";
    LUT4 i1501_4_lut (.A(n2168), .B(n1790), .C(n582[6]), .D(A_out_3), 
         .Z(RegRDD[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/reg.v(65[2] 76[7])
    defparam i1501_4_lut.init = 16'hfcee;
    
endmodule
//
// Verilog Description of module Glue
//

module Glue (nIO2_c, nWE_c, n2431, n2432, A_out_2, n2421, A_out_0, 
            n2426, A_out_1, n2420, n2424) /* synthesis syn_module_defined=1 */ ;
    input nIO2_c;
    input nWE_c;
    output n2431;
    input n2432;
    input A_out_2;
    output n2421;
    input A_out_0;
    output n2426;
    input A_out_1;
    output n2420;
    output n2424;
    
    
    LUT4 i1518_2_lut_rep_31 (.A(nIO2_c), .B(nWE_c), .Z(n2431)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1518_2_lut_rep_31.init = 16'heeee;
    LUT4 i1_2_lut_rep_21_3_lut_4_lut (.A(nIO2_c), .B(nWE_c), .C(n2432), 
         .D(A_out_2), .Z(n2421)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_21_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_26_3_lut (.A(nIO2_c), .B(nWE_c), .C(A_out_0), .Z(n2426)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_26_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_20_3_lut_4_lut (.A(nIO2_c), .B(nWE_c), .C(A_out_1), 
         .D(A_out_0), .Z(n2420)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_20_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_24_3_lut_4_lut (.A(nIO2_c), .B(nWE_c), .C(A_out_1), 
         .D(A_out_0), .Z(n2424)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_24_3_lut_4_lut.init = 16'h1000;
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (n236, C8M_c, PHI2Start_N_487, PLLLock, C8M_N_435, n2187, 
            RA_c_10, REUA, RCLK_c, n2574, RAMRD, nRESET_c, PHI2_c, 
            nRAS_c, nCAS_c, nRWE_c, CKE_c, DQMH_c, DQML_c, RA_c_9, 
            RA_c_8, RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, RA_c_2, 
            RA_c_1, RA_c_0, WRDr, PHI2_N_495, D_out_0, RBA_c_0, 
            C8M_c_enable_19, \nRESETr[2] , \nRESETr[4] , D_out_1, D_out_2, 
            D_out_3, D_out_4, D_out_5, D_out_6, D_out_7, RBA_c_1, 
            n1141, RA_c_11, nCS_c) /* synthesis syn_module_defined=1 */ ;
    output n236;
    input C8M_c;
    output PHI2Start_N_487;
    output PLLLock;
    input C8M_N_435;
    input n2187;
    output RA_c_10;
    input [23:0]REUA;
    output RCLK_c;
    input n2574;
    input RAMRD;
    input nRESET_c;
    input PHI2_c;
    output nRAS_c;
    output nCAS_c;
    output nRWE_c;
    output CKE_c;
    output DQMH_c;
    output DQML_c;
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
    output [7:0]WRDr;
    input PHI2_N_495;
    input D_out_0;
    output RBA_c_0;
    input C8M_c_enable_19;
    output \nRESETr[2] ;
    output \nRESETr[4] ;
    input D_out_1;
    input D_out_2;
    input D_out_3;
    input D_out_4;
    input D_out_5;
    input D_out_6;
    input D_out_7;
    output RBA_c_1;
    output n1141;
    output RA_c_11;
    output nCS_c;
    
    wire C8M_c /* synthesis is_clock=1, SET_AS_NETWORK=C8M_c */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(3[8:11])
    wire C8M_N_435 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(39[12:17])
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/reu.v(4[8:12])
    wire PHI2_N_495 /* synthesis is_inv_clock=1 */ ;   // c:/users/garre/repos/gw4302/cpld/dmaseq.v(8[13:18])
    
    wire C8M_c_enable_17, PHI2Start, RDD_7__N_444;
    wire [7:0]n232;
    
    wire RDOE_N_490;
    wire [1:0]PHI2r;   // c:/users/garre/repos/gw4302/cpld/ram.v(39[12:17])
    wire [4:0]nRESETr;   // c:/users/garre/repos/gw4302/cpld/ram.v(32[12:19])
    
    wire C8M_N_435_enable_1, n39, n2435, WRCMDr, CKE_N_471, INITCMDr, 
        InitDone_N_467, n2430, nRAS_N_458, nCS_N_446, n1557, n2434, 
        n2160;
    wire [12:0]RA_11__N_422;
    
    wire CP1, CP2, InitDone, WRCMDr_N_451, n2436, nCAS_N_460, nRWE_N_462, 
        CP1_N_478, A_0__N_476, C8M_c_enable_20, RDOE, C8M_c_enable_21, 
        n1559;
    
    FD1P3IX S_FSM_i5 (.D(RDD_7__N_444), .SP(C8M_c_enable_17), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n236));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i5.GSR = "ENABLED";
    FD1P3IX S_FSM_i4 (.D(n232[2]), .SP(C8M_c_enable_17), .CD(PHI2Start), 
            .CK(C8M_c), .Q(RDD_7__N_444));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i4.GSR = "ENABLED";
    FD1P3IX S_FSM_i3 (.D(RDOE_N_490), .SP(C8M_c_enable_17), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n232[2]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i3.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(PHI2Start_N_487), 
         .D(PLLLock), .Z(PHI2Start)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i3_3_lut_4_lut (.A(PHI2r[0]), .B(PHI2r[1]), .C(nRESETr[1]), .D(nRESETr[3]), 
         .Z(C8M_N_435_enable_1)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam i3_3_lut_4_lut.init = 16'h4000;
    LUT4 i2_3_lut_4_lut_adj_109 (.A(n232[5]), .B(n232[6]), .C(n232[7]), 
         .D(n232[2]), .Z(n39)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i2_3_lut_4_lut_adj_109.init = 16'hfffe;
    LUT4 i1504_3_lut_4_lut (.A(n232[5]), .B(n232[6]), .C(n2435), .D(WRCMDr), 
         .Z(CKE_N_471)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1504_3_lut_4_lut.init = 16'hf101;
    FD1P3AX INITCMDr_130 (.D(InitDone_N_467), .SP(PHI2Start), .CK(C8M_N_435), 
            .Q(INITCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam INITCMDr_130.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_30 (.A(n236), .B(RDD_7__N_444), .Z(n2430)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1_2_lut_rep_30.init = 16'heeee;
    LUT4 i1999_3_lut_4_lut (.A(n236), .B(RDD_7__N_444), .C(WRCMDr), .D(PHI2Start_N_487), 
         .Z(nRAS_N_458)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1999_3_lut_4_lut.init = 16'h0111;
    LUT4 i1847_3_lut_4_lut (.A(n236), .B(RDD_7__N_444), .C(n2435), .D(WRCMDr), 
         .Z(nCS_N_446)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1847_3_lut_4_lut.init = 16'h01f1;
    LUT4 i2_3_lut_rep_22_4_lut (.A(n236), .B(RDD_7__N_444), .C(n39), .D(RDOE_N_490), 
         .Z(C8M_c_enable_17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i2_3_lut_rep_22_4_lut.init = 16'hfffe;
    FD1P3AX PLLLock_128 (.D(n2187), .SP(C8M_N_435_enable_1), .CK(C8M_N_435), 
            .Q(PLLLock)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[9] 50[5])
    defparam PLLLock_128.GSR = "ENABLED";
    LUT4 i1253_1_lut (.A(PLLLock), .Z(n1557)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(46[9] 50[5])
    defparam i1253_1_lut.init = 16'h5555;
    LUT4 i1249_1_lut_rep_34 (.A(RDOE_N_490), .Z(n2434)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1249_1_lut_rep_34.init = 16'h5555;
    LUT4 i3_4_lut_4_lut (.A(RDOE_N_490), .B(PHI2Start_N_487), .C(RA_c_10), 
         .D(n39), .Z(n2160)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i3_4_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_35 (.A(PHI2Start_N_487), .B(RDOE_N_490), .Z(n2435)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1_2_lut_rep_35.init = 16'heeee;
    LUT4 mux_203_i5_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[5]), 
         .D(REUA[14]), .Z(RA_11__N_422[4])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i5_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_203_i6_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[15]), 
         .D(REUA[6]), .Z(RA_11__N_422[5])) /* synthesis lut_function=(A (C)+!A ((D)+!B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i6_4_lut_4_lut.init = 16'hf5b1;
    LUT4 mux_203_i7_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[7]), 
         .D(REUA[16]), .Z(RA_11__N_422[6])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i7_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_203_i8_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[17]), 
         .D(REUA[8]), .Z(RA_11__N_422[7])) /* synthesis lut_function=(A (C)+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i8_4_lut_4_lut.init = 16'he4a0;
    LUT4 mux_203_i9_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[18]), 
         .D(REUA[9]), .Z(RA_11__N_422[8])) /* synthesis lut_function=(A (C)+!A (B (D))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i9_4_lut_4_lut.init = 16'he4a0;
    LUT4 i1_3_lut_3_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[19]), 
         .Z(RA_11__N_422[9])) /* synthesis lut_function=(A (C)+!A !(B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1_3_lut_3_lut.init = 16'hb1b1;
    LUT4 mux_203_i4_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[4]), 
         .D(REUA[13]), .Z(RA_11__N_422[3])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i4_4_lut_4_lut.init = 16'hea40;
    LUT4 CP1_I_0_172_2_lut (.A(CP1), .B(CP2), .Z(RCLK_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(29[16:25])
    defparam CP1_I_0_172_2_lut.init = 16'h6666;
    FD1P3AX InitDone_133 (.D(n2574), .SP(PHI2Start), .CK(C8M_N_435), .Q(InitDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam InitDone_133.GSR = "ENABLED";
    FD1P3AX WRCMDr_132 (.D(WRCMDr_N_451), .SP(PHI2Start), .CK(C8M_N_435), 
            .Q(WRCMDr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(65[9] 72[5])
    defparam WRCMDr_132.GSR = "ENABLED";
    LUT4 mux_203_i3_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[3]), 
         .D(REUA[12]), .Z(RA_11__N_422[2])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i3_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_203_i2_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[2]), 
         .D(REUA[11]), .Z(RA_11__N_422[1])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i2_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_203_i1_4_lut_4_lut (.A(PHI2Start_N_487), .B(RDOE_N_490), .C(REUA[1]), 
         .D(REUA[10]), .Z(RA_11__N_422[0])) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam mux_203_i1_4_lut_4_lut.init = 16'hea40;
    LUT4 i1_2_lut_rep_36 (.A(RDOE_N_490), .B(WRCMDr), .Z(n2436)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_36.init = 16'h8888;
    LUT4 i1994_2_lut_3_lut (.A(RDOE_N_490), .B(WRCMDr), .C(n236), .Z(nCAS_N_460)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i1994_2_lut_3_lut.init = 16'h0707;
    FD1P3IX S_FSM_i1 (.D(n232[7]), .SP(C8M_c_enable_17), .CD(PHI2Start), 
            .CK(C8M_c), .Q(PHI2Start_N_487));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i1.GSR = "ENABLED";
    LUT4 WRCMDr_I_101_2_lut (.A(RAMRD), .B(InitDone), .Z(WRCMDr_N_451)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(69[14:41])
    defparam WRCMDr_I_101_2_lut.init = 16'h8888;
    FD1P3IX S_FSM_i8 (.D(n232[6]), .SP(C8M_c_enable_17), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n232[7]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i8.GSR = "ENABLED";
    LUT4 i935_4_lut (.A(n2436), .B(INITCMDr), .C(n236), .D(RDD_7__N_444), 
         .Z(nRWE_N_462)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i935_4_lut.init = 16'h3035;
    LUT4 CP1_I_0_1_lut (.A(CP1), .Z(CP1_N_478)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[37:41])
    defparam CP1_I_0_1_lut.init = 16'h5555;
    FD1S3AX nRESETr_i0 (.D(nRESET_c), .CK(C8M_c), .Q(nRESETr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i0.GSR = "ENABLED";
    FD1S3AX CP2_124 (.D(CP1_N_478), .CK(C8M_N_435), .Q(CP2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(28[9:46])
    defparam CP2_124.GSR = "ENABLED";
    FD1S3AX PHI2r_0__126 (.D(PHI2_c), .CK(C8M_N_435), .Q(PHI2r[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(41[9:51])
    defparam PHI2r_0__126.GSR = "ENABLED";
    FD1S3AX PHI2r_1__127 (.D(PHI2r[0]), .CK(C8M_c), .Q(PHI2r[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(42[9:55])
    defparam PHI2r_1__127.GSR = "ENABLED";
    FD1S3JX nRAS_135 (.D(nRAS_N_458), .CK(C8M_c), .PD(n1557), .Q(nRAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nRAS_135.GSR = "ENABLED";
    FD1S3JX nCAS_136 (.D(nCAS_N_460), .CK(C8M_c), .PD(n1557), .Q(nCAS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nCAS_136.GSR = "ENABLED";
    FD1S3JX nRWE_137 (.D(nRWE_N_462), .CK(C8M_c), .PD(n1557), .Q(nRWE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nRWE_137.GSR = "ENABLED";
    FD1S3JX CKE_138 (.D(CKE_N_471), .CK(C8M_c), .PD(n1557), .Q(CKE_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam CKE_138.GSR = "ENABLED";
    FD1S3JX DQMH_139 (.D(REUA[0]), .CK(C8M_c), .PD(n2434), .Q(DQMH_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam DQMH_139.GSR = "ENABLED";
    FD1S3JX DQML_140 (.D(A_0__N_476), .CK(C8M_c), .PD(n2434), .Q(DQML_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam DQML_140.GSR = "ENABLED";
    FD1S3AX RA_10__143 (.D(RA_11__N_422[10]), .CK(C8M_c), .Q(RA_c_10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_10__143.GSR = "ENABLED";
    FD1P3AX RA_9__144 (.D(RA_11__N_422[9]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_9)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_9__144.GSR = "ENABLED";
    FD1P3AX RA_8__145 (.D(RA_11__N_422[8]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_8)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_8__145.GSR = "ENABLED";
    FD1P3AX RA_7__146 (.D(RA_11__N_422[7]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_7)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_7__146.GSR = "ENABLED";
    FD1P3AX RA_6__147 (.D(RA_11__N_422[6]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_6)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_6__147.GSR = "ENABLED";
    FD1P3AX RA_5__148 (.D(RA_11__N_422[5]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_5__148.GSR = "ENABLED";
    FD1P3AX RA_4__149 (.D(RA_11__N_422[4]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_4)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_4__149.GSR = "ENABLED";
    FD1P3AX RA_3__150 (.D(RA_11__N_422[3]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_3__150.GSR = "ENABLED";
    FD1P3AX RA_2__151 (.D(RA_11__N_422[2]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_2)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_2__151.GSR = "ENABLED";
    FD1P3AX RA_1__152 (.D(RA_11__N_422[1]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_1__152.GSR = "ENABLED";
    FD1P3AX RA_0__153 (.D(RA_11__N_422[0]), .SP(C8M_c_enable_20), .CK(C8M_c), 
            .Q(RA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_0__153.GSR = "ENABLED";
    FD1P3IX S_FSM_i6 (.D(n236), .SP(C8M_c_enable_17), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n232[5]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i0 (.D(D_out_0), .CK(PHI2_N_495), .Q(WRDr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i0.GSR = "ENABLED";
    FD1P3IX S_FSM_i7 (.D(n232[5]), .SP(C8M_c_enable_17), .CD(PHI2Start), 
            .CK(C8M_c), .Q(n232[6]));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i7.GSR = "ENABLED";
    FD1S3AX RDOE_156 (.D(RDOE_N_490), .CK(C8M_c), .Q(RDOE)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(220[9:37])
    defparam RDOE_156.GSR = "ENABLED";
    FD1S3AX CP1_123 (.D(CP1_N_478), .CK(C8M_c), .Q(CP1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(27[9:46])
    defparam CP1_123.GSR = "ENABLED";
    LUT4 A_0__I_0_1_lut (.A(REUA[0]), .Z(A_0__N_476)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(177[13:18])
    defparam A_0__I_0_1_lut.init = 16'h5555;
    FD1P3IX RBA__i1 (.D(REUA[22]), .SP(C8M_c_enable_19), .CD(n236), .CK(C8M_c), 
            .Q(RBA_c_0)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RBA__i1.GSR = "ENABLED";
    LUT4 mux_203_i11_4_lut (.A(n2160), .B(REUA[20]), .C(PHI2Start_N_487), 
         .D(RDD_7__N_444), .Z(RA_11__N_422[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(166[3] 207[10])
    defparam mux_203_i11_4_lut.init = 16'hcfca;
    FD1S3AX nRESETr_i1 (.D(nRESETr[0]), .CK(C8M_c), .Q(nRESETr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i1.GSR = "ENABLED";
    FD1S3AX nRESETr_i2 (.D(nRESETr[1]), .CK(C8M_c), .Q(\nRESETr[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i2.GSR = "ENABLED";
    FD1S3AX nRESETr_i3 (.D(\nRESETr[2] ), .CK(C8M_c), .Q(nRESETr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i3.GSR = "ENABLED";
    FD1S3AX nRESETr_i4 (.D(nRESETr[3]), .CK(C8M_c), .Q(\nRESETr[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(33[9] 36[5])
    defparam nRESETr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i1 (.D(D_out_1), .CK(PHI2_N_495), .Q(WRDr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i1.GSR = "ENABLED";
    FD1S3AX WRDr_i2 (.D(D_out_2), .CK(PHI2_N_495), .Q(WRDr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i2.GSR = "ENABLED";
    FD1S3AX WRDr_i3 (.D(D_out_3), .CK(PHI2_N_495), .Q(WRDr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i3.GSR = "ENABLED";
    FD1S3AX WRDr_i4 (.D(D_out_4), .CK(PHI2_N_495), .Q(WRDr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i4.GSR = "ENABLED";
    FD1S3AX WRDr_i5 (.D(D_out_5), .CK(PHI2_N_495), .Q(WRDr[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i5.GSR = "ENABLED";
    FD1S3AX WRDr_i6 (.D(D_out_6), .CK(PHI2_N_495), .Q(WRDr[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i6.GSR = "ENABLED";
    FD1S3AX WRDr_i7 (.D(D_out_7), .CK(PHI2_N_495), .Q(WRDr[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(216[9:47])
    defparam WRDr_i7.GSR = "ENABLED";
    FD1P3IX RBA__i2 (.D(REUA[23]), .SP(C8M_c_enable_19), .CD(n236), .CK(C8M_c), 
            .Q(RBA_c_1)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RBA__i2.GSR = "ENABLED";
    LUT4 InitDone_I_0_1_lut (.A(InitDone), .Z(InitDone_N_467)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(67[16:25])
    defparam InitDone_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut (.A(RDOE_N_490), .B(n2430), .C(n39), .D(PHI2Start), 
         .Z(C8M_c_enable_21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i849_1_lut (.A(RDOE), .Z(n1141)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(221[9:11])
    defparam i849_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_adj_110 (.A(RDD_7__N_444), .B(RDOE_N_490), .C(n39), 
         .D(PHI2Start_N_487), .Z(C8M_c_enable_20)) /* synthesis lut_function=(A (D)+!A (B+((D)+!C))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1_2_lut_4_lut_adj_110.init = 16'hff45;
    LUT4 i1255_2_lut_4_lut (.A(RDD_7__N_444), .B(RDOE_N_490), .C(n39), 
         .D(PHI2Start_N_487), .Z(n1559)) /* synthesis lut_function=(!(A+(B (D)+!B (C+(D))))) */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam i1255_2_lut_4_lut.init = 16'h0045;
    FD1P3IX RA_11__142 (.D(REUA[21]), .SP(C8M_c_enable_20), .CD(n1559), 
            .CK(C8M_c), .Q(RA_c_11)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(165[9] 209[5])
    defparam RA_11__142.GSR = "ENABLED";
    FD1S3JX nCS_134 (.D(nCS_N_446), .CK(C8M_c), .PD(n1557), .Q(nCS_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=32, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/garre/repos/gw4302/cpld/ram.v(75[9] 163[5])
    defparam nCS_134.GSR = "ENABLED";
    FD1P3JX S_FSM_i2 (.D(PHI2Start_N_487), .SP(C8M_c_enable_21), .PD(PHI2Start), 
            .CK(C8M_c), .Q(RDOE_N_490));   // c:/users/garre/repos/gw4302/cpld/ram.v(57[23:29])
    defparam S_FSM_i2.GSR = "ENABLED";
    
endmodule
