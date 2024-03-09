/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Jan 14 20:54:48 2022
/////////////////////////////////////////////////////////////

`timescale 1ns/10ps
module FSM_test_1 ( clk, reset, gray_ready, gray_req, lbp_addr, lbp_valid, 
        gray_count, lbp_count, cycle, initialize, gray_addr_en, lbp_addr_en, 
        finish, test_si2, test_si1, test_so1, test_se );
  input [13:0] lbp_addr;
  output [1:0] gray_count;
  output [1:0] lbp_count;
  output [3:0] cycle;
  input clk, reset, gray_ready, test_si2, test_si1, test_se;
  output gray_req, lbp_valid, initialize, gray_addr_en, lbp_addr_en, finish,
         test_so1;
  wire   N75, N76, N79, N80, N100, n27, n30, n31, n32, n33, n34, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n2, n3, n4, n5, n7, n8, n9;
  wire   [2:0] cs;
  wire   [2:0] ns;

  SDFFRX1 gray_count_reg_1_ ( .D(N76), .SI(n8), .SE(test_se), .CK(clk), .RN(n5), .Q(gray_count[1]), .QN(n7) );
  SDFFRX1 gray_count_reg_0_ ( .D(N75), .SI(n32), .SE(test_se), .CK(clk), .RN(
        n5), .Q(gray_count[0]), .QN(n8) );
  SDFFRX1 lbp_count_reg_1_ ( .D(N80), .SI(n36), .SE(test_se), .CK(clk), .RN(n5), .Q(lbp_count[1]), .QN(test_so1) );
  SDFFRX1 lbp_count_reg_0_ ( .D(N79), .SI(n7), .SE(test_se), .CK(clk), .RN(n5), 
        .Q(lbp_count[0]), .QN(n36) );
  SDFFRX1 cs_reg_0_ ( .D(ns[0]), .SI(test_si1), .SE(test_se), .CK(clk), .RN(n5), .Q(cs[0]), .QN(n31) );
  SDFFRX1 cs_reg_1_ ( .D(ns[1]), .SI(n31), .SE(test_se), .CK(clk), .RN(n5), 
        .Q(cs[1]), .QN(n30) );
  SDFFRX1 cs_reg_2_ ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(clk), .RN(n5), 
        .Q(cs[2]), .QN(n27) );
  SDFFRX1 cycle_reg_3_ ( .D(n66), .SI(n33), .SE(test_se), .CK(clk), .RN(n5), 
        .Q(cycle[3]), .QN(n32) );
  SDFFRX1 finish_reg ( .D(N100), .SI(test_si2), .SE(test_se), .CK(clk), .RN(n5), .Q(finish) );
  SDFFRX1 cycle_reg_2_ ( .D(n67), .SI(n9), .SE(test_se), .CK(clk), .RN(n5), 
        .Q(cycle[2]), .QN(n33) );
  SDFFRX1 cycle_reg_1_ ( .D(n68), .SI(n34), .SE(test_se), .CK(clk), .RN(n5), 
        .Q(cycle[1]), .QN(n9) );
  SDFFRX1 cycle_reg_0_ ( .D(n69), .SI(n27), .SE(test_se), .CK(clk), .RN(n5), 
        .Q(cycle[0]), .QN(n34) );
  NAND4X1 U14 ( .A(lbp_addr[12]), .B(lbp_addr[11]), .C(lbp_addr[10]), .D(
        lbp_addr[0]), .Y(n45) );
  CLKINVX1 U16 ( .A(n59), .Y(n4) );
  CLKINVX1 U17 ( .A(n40), .Y(n2) );
  CLKINVX1 U18 ( .A(n54), .Y(n3) );
  NAND2X1 U19 ( .A(n47), .B(n48), .Y(n44) );
  NOR4X1 U20 ( .A(lbp_addr[3]), .B(lbp_addr[2]), .C(lbp_addr[1]), .D(cs[1]), 
        .Y(n47) );
  NOR4X1 U21 ( .A(lbp_addr[7]), .B(lbp_addr[6]), .C(lbp_addr[5]), .D(
        lbp_addr[4]), .Y(n48) );
  AOI2BB1X1 U22 ( .A0N(n52), .A1N(cycle[3]), .B0(n59), .Y(gray_req) );
  NAND2X1 U23 ( .A(cs[0]), .B(n30), .Y(n59) );
  NOR2X1 U24 ( .A(n30), .B(n31), .Y(n63) );
  NOR2X1 U25 ( .A(cs[2]), .B(n63), .Y(initialize) );
  NAND3BX1 U26 ( .AN(cycle[1]), .B(n33), .C(n34), .Y(n52) );
  OAI211X1 U27 ( .A0(gray_count[1]), .A1(n40), .B0(n41), .C0(n42), .Y(ns[1])
         );
  AOI211X1 U28 ( .A0(cs[2]), .A1(n43), .B0(N75), .C0(n4), .Y(n42) );
  OAI31XL U29 ( .A0(n44), .A1(n45), .A2(n46), .B0(n31), .Y(n43) );
  NAND3X1 U30 ( .A(lbp_addr[8]), .B(lbp_addr[13]), .C(lbp_addr[9]), .Y(n46) );
  OAI22XL U31 ( .A0(n4), .A1(n34), .B0(cycle[0]), .B1(n55), .Y(n69) );
  AOI2BB1X1 U32 ( .A0N(lbp_count[1]), .A1N(n37), .B0(N79), .Y(n41) );
  OAI22XL U33 ( .A0(n4), .A1(n32), .B0(n55), .B1(n56), .Y(n66) );
  XOR2X1 U34 ( .A(n32), .B(n57), .Y(n56) );
  NOR2X1 U35 ( .A(n53), .B(n33), .Y(n57) );
  NOR2BX1 U36 ( .AN(n63), .B(n27), .Y(N100) );
  NAND2X1 U37 ( .A(cycle[1]), .B(cycle[0]), .Y(n53) );
  NOR2X1 U38 ( .A(n27), .B(n59), .Y(gray_addr_en) );
  NAND2X1 U39 ( .A(cs[1]), .B(n31), .Y(n40) );
  NAND2X1 U40 ( .A(n63), .B(n27), .Y(n37) );
  OA21XL U41 ( .A0(n61), .A1(n54), .B0(n62), .Y(n55) );
  NOR4X1 U42 ( .A(cycle[2]), .B(cycle[1]), .C(n34), .D(n32), .Y(n61) );
  OAI31XL U43 ( .A0(n53), .A1(cycle[3]), .A2(cycle[2]), .B0(gray_addr_en), .Y(
        n62) );
  NAND4X1 U44 ( .A(n49), .B(n41), .C(n50), .D(n51), .Y(ns[0]) );
  AOI33X1 U45 ( .A0(gray_count[0]), .A1(n2), .A2(gray_count[1]), .B0(n31), 
        .B1(n30), .B2(gray_ready), .Y(n49) );
  NOR2X1 U46 ( .A(lbp_addr_en), .B(N100), .Y(n51) );
  AOI33X1 U47 ( .A0(n3), .A1(n52), .A2(cycle[3]), .B0(cs[0]), .B1(n39), .B2(
        cs[2]), .Y(n50) );
  NAND2X1 U48 ( .A(n4), .B(n27), .Y(n54) );
  NOR2X1 U49 ( .A(n37), .B(lbp_count[0]), .Y(N79) );
  NAND3X1 U50 ( .A(n33), .B(n32), .C(n53), .Y(n39) );
  NOR2X1 U51 ( .A(n40), .B(gray_count[0]), .Y(N75) );
  NOR2X1 U52 ( .A(n64), .B(n37), .Y(N80) );
  XOR2X1 U53 ( .A(n36), .B(lbp_count[1]), .Y(n64) );
  OAI31XL U54 ( .A0(test_so1), .A1(n37), .A2(n36), .B0(n38), .Y(ns[2]) );
  AO21X1 U55 ( .A0(n39), .A1(n4), .B0(n27), .Y(n38) );
  OAI31XL U56 ( .A0(n34), .A1(cycle[1]), .A2(n55), .B0(n60), .Y(n68) );
  OAI21XL U57 ( .A0(n34), .A1(n59), .B0(cycle[1]), .Y(n60) );
  OAI31XL U58 ( .A0(n53), .A1(cycle[2]), .A2(n55), .B0(n58), .Y(n67) );
  OAI21XL U59 ( .A0(n59), .A1(n53), .B0(cycle[2]), .Y(n58) );
  NOR2X1 U60 ( .A(n65), .B(n40), .Y(N76) );
  XNOR2X1 U61 ( .A(gray_count[0]), .B(gray_count[1]), .Y(n65) );
  CLKINVX1 U62 ( .A(reset), .Y(n5) );
  CLKBUFX3 U63 ( .A(lbp_addr_en), .Y(lbp_valid) );
  NOR3X1 U64 ( .A(cs[0]), .B(cs[1]), .C(n27), .Y(lbp_addr_en) );
endmodule


module TMR_0 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n1;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n1), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n1) );
endmodule


module TMR_27 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_26 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_25 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_24 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_23 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_22 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_21 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_20 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_19 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_18 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_17 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_16 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_15 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI21XL U1 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
  OAI2BB1X1 U2 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
endmodule


module GAC_TMR2_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module GAC_TMR2_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module GAC_TMR2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [6:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module GAC_TMR2_DW01_add_1 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [6:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module GAC_TMR2_test_1 ( clk, reset, gray_addr, lbp_addr, cycle, gray_addr_en, 
        initialize, fill_right, fill_down, fill_left, test_si, test_so, 
        test_se );
  output [13:0] gray_addr;
  input [13:0] lbp_addr;
  input [3:0] cycle;
  input clk, reset, gray_addr_en, initialize, fill_right, fill_down, fill_left,
         test_si, test_se;
  output test_so;
  wire   N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N92, N93, N94, N95, N96, N97, N98, N100, N101, N102, N103, N104, N105,
         N106, N114, N115, N116, N117, N118, N119, N120, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, N113, N110,
         N109, N108, N62, N59, N58, N57, N56, n1, n2, n3, n4, n5, n6, n48, n50,
         n51, n52, n53, n54, n55, n56, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197;
  wire   [6:0] gray_addr_row;
  wire   [6:0] gray_addr_col;
  wire   [6:0] gray_addr_row0;
  wire   [6:0] gray_addr_col0;
  wire   [6:0] gray_addr_row1;
  wire   [6:0] gray_addr_col1;
  wire   [6:0] gray_addr_row2;
  wire   [6:0] gray_addr_col2;

  SDFFRX1 gray_addr_col2_reg_6_ ( .D(n115), .SI(n178), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_col2[6]), .QN(n177) );
  SDFFRX1 gray_addr_col2_reg_5_ ( .D(n114), .SI(n179), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_col2[5]), .QN(n178) );
  SDFFRX1 gray_addr_col2_reg_4_ ( .D(n113), .SI(n180), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_col2[4]), .QN(n179) );
  SDFFRX1 gray_addr_col2_reg_3_ ( .D(n112), .SI(n181), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_col2[3]), .QN(n180) );
  SDFFRX1 gray_addr_col2_reg_2_ ( .D(n111), .SI(n182), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_col2[2]), .QN(n181) );
  SDFFRX1 gray_addr_col2_reg_1_ ( .D(n110), .SI(n183), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_col2[1]), .QN(n182) );
  SDFFRX1 gray_addr_col2_reg_0_ ( .D(n109), .SI(n184), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_col2[0]), .QN(n183) );
  SDFFRX1 gray_addr_row2_reg_6_ ( .D(n108), .SI(n157), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_row2[6]), .QN(test_so) );
  SDFFRX1 gray_addr_row2_reg_5_ ( .D(n107), .SI(n158), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_row2[5]), .QN(n157) );
  SDFFRX1 gray_addr_row2_reg_4_ ( .D(n106), .SI(n159), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_row2[4]), .QN(n158) );
  SDFFRX1 gray_addr_row2_reg_3_ ( .D(n105), .SI(n160), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_row2[3]), .QN(n159) );
  SDFFRX1 gray_addr_row2_reg_2_ ( .D(n104), .SI(n161), .SE(test_se), .CK(clk), 
        .RN(n6), .Q(gray_addr_row2[2]), .QN(n160) );
  SDFFRX1 gray_addr_row2_reg_1_ ( .D(n103), .SI(n162), .SE(test_se), .CK(clk), 
        .RN(n6), .Q(gray_addr_row2[1]), .QN(n161) );
  SDFFRX1 gray_addr_row2_reg_0_ ( .D(n102), .SI(n163), .SE(test_se), .CK(clk), 
        .RN(n6), .Q(gray_addr_row2[0]), .QN(n162) );
  SDFFRX1 gray_addr_col1_reg_6_ ( .D(n129), .SI(n185), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_col1[6]), .QN(n184) );
  SDFFRX1 gray_addr_col1_reg_5_ ( .D(n128), .SI(n186), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_col1[5]), .QN(n185) );
  SDFFRX1 gray_addr_col1_reg_4_ ( .D(n127), .SI(n187), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_col1[4]), .QN(n186) );
  SDFFRX1 gray_addr_col1_reg_3_ ( .D(n126), .SI(n188), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_col1[3]), .QN(n187) );
  SDFFRX1 gray_addr_col1_reg_2_ ( .D(n125), .SI(n189), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_col1[2]), .QN(n188) );
  SDFFRX1 gray_addr_col1_reg_1_ ( .D(n124), .SI(n190), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_col1[1]), .QN(n189) );
  SDFFRX1 gray_addr_col1_reg_0_ ( .D(n123), .SI(n191), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_col1[0]), .QN(n190) );
  SDFFRX1 gray_addr_row1_reg_6_ ( .D(n122), .SI(n164), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_row1[6]), .QN(n163) );
  SDFFRX1 gray_addr_row1_reg_5_ ( .D(n121), .SI(n165), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_row1[5]), .QN(n164) );
  SDFFRX1 gray_addr_row1_reg_4_ ( .D(n120), .SI(n166), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_row1[4]), .QN(n165) );
  SDFFRX1 gray_addr_row1_reg_3_ ( .D(n119), .SI(n167), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_row1[3]), .QN(n166) );
  SDFFRX1 gray_addr_row1_reg_2_ ( .D(n118), .SI(n168), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_row1[2]), .QN(n167) );
  SDFFRX1 gray_addr_row1_reg_1_ ( .D(n117), .SI(n169), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_row1[1]), .QN(n168) );
  SDFFRX1 gray_addr_row1_reg_0_ ( .D(n116), .SI(n170), .SE(test_se), .CK(clk), 
        .RN(n5), .Q(gray_addr_row1[0]), .QN(n169) );
  SDFFRX1 gray_addr_col0_reg_6_ ( .D(n143), .SI(n192), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_col0[6]), .QN(n191) );
  SDFFRX1 gray_addr_col0_reg_5_ ( .D(n142), .SI(n193), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_col0[5]), .QN(n192) );
  SDFFRX1 gray_addr_col0_reg_4_ ( .D(n141), .SI(n194), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_col0[4]), .QN(n193) );
  SDFFRX1 gray_addr_col0_reg_3_ ( .D(n140), .SI(n195), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_col0[3]), .QN(n194) );
  SDFFRX1 gray_addr_col0_reg_2_ ( .D(n139), .SI(n196), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_col0[2]), .QN(n195) );
  SDFFRX1 gray_addr_col0_reg_1_ ( .D(n138), .SI(n197), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_col0[1]), .QN(n196) );
  SDFFRX1 gray_addr_col0_reg_0_ ( .D(n137), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(n3), .Q(gray_addr_col0[0]), .QN(n197) );
  SDFFRX1 gray_addr_row0_reg_6_ ( .D(n136), .SI(n171), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_row0[6]), .QN(n170) );
  SDFFRX1 gray_addr_row0_reg_5_ ( .D(n135), .SI(n172), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_row0[5]), .QN(n171) );
  SDFFRX1 gray_addr_row0_reg_4_ ( .D(n134), .SI(n173), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_row0[4]), .QN(n172) );
  SDFFRX1 gray_addr_row0_reg_3_ ( .D(n133), .SI(n174), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_row0[3]), .QN(n173) );
  SDFFRX1 gray_addr_row0_reg_2_ ( .D(n132), .SI(n175), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_row0[2]), .QN(n174) );
  SDFFRX1 gray_addr_row0_reg_1_ ( .D(n131), .SI(n176), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(gray_addr_row0[1]), .QN(n175) );
  SDFFRX1 gray_addr_row0_reg_0_ ( .D(n130), .SI(n177), .SE(test_se), .CK(clk), 
        .RN(n4), .Q(gray_addr_row0[0]), .QN(n176) );
  CLKBUFX3 U5 ( .A(n72), .Y(n2) );
  OR2X1 U47 ( .A(n81), .B(n147), .Y(n74) );
  CLKINVX1 U49 ( .A(n1), .Y(n148) );
  NAND2BX1 U50 ( .AN(n88), .B(n2), .Y(n70) );
  AOI222XL U51 ( .A0(N76), .A1(n147), .B0(N120), .B1(n73), .C0(N98), .C1(n81), 
        .Y(n88) );
  NAND2BX1 U52 ( .AN(n87), .B(n2), .Y(n69) );
  AOI222XL U53 ( .A0(N75), .A1(n147), .B0(N119), .B1(n73), .C0(N97), .C1(n81), 
        .Y(n87) );
  NAND2BX1 U54 ( .AN(n85), .B(n2), .Y(n67) );
  AOI222XL U55 ( .A0(N73), .A1(n147), .B0(N117), .B1(n73), .C0(N95), .C1(n81), 
        .Y(n85) );
  NAND2BX1 U56 ( .AN(n86), .B(n2), .Y(n68) );
  AOI222XL U57 ( .A0(N74), .A1(n147), .B0(N118), .B1(n73), .C0(N96), .C1(n81), 
        .Y(n86) );
  NAND2X1 U58 ( .A(n77), .B(n2), .Y(n60) );
  AO22X1 U59 ( .A0(N103), .A1(n73), .B0(N66), .B1(n74), .Y(n77) );
  NAND2X1 U60 ( .A(n78), .B(n2), .Y(n61) );
  AO22X1 U61 ( .A0(N104), .A1(n73), .B0(N67), .B1(n74), .Y(n78) );
  NAND2X1 U62 ( .A(n79), .B(n2), .Y(n62) );
  AO22X1 U63 ( .A0(N105), .A1(n73), .B0(N68), .B1(n74), .Y(n79) );
  NAND2X1 U64 ( .A(n80), .B(n2), .Y(n63) );
  AO22X1 U65 ( .A0(N106), .A1(n73), .B0(N69), .B1(n74), .Y(n80) );
  OR2X1 U66 ( .A(lbp_addr[1]), .B(lbp_addr[0]), .Y(n53) );
  NAND2X1 U67 ( .A(n76), .B(n2), .Y(n59) );
  AO22X1 U68 ( .A0(N102), .A1(n73), .B0(N65), .B1(n74), .Y(n76) );
  CLKINVX1 U69 ( .A(lbp_addr[4]), .Y(n145) );
  NAND2BX1 U70 ( .AN(n82), .B(n2), .Y(n64) );
  AOI222XL U71 ( .A0(N70), .A1(n147), .B0(N114), .B1(n73), .C0(N92), .C1(n81), 
        .Y(n82) );
  NAND2BX1 U72 ( .AN(n83), .B(n2), .Y(n65) );
  AOI222XL U73 ( .A0(N71), .A1(n147), .B0(N115), .B1(n73), .C0(N93), .C1(n81), 
        .Y(n83) );
  NAND2BX1 U74 ( .AN(n84), .B(n2), .Y(n66) );
  AOI222XL U75 ( .A0(N72), .A1(n147), .B0(N116), .B1(n73), .C0(N94), .C1(n81), 
        .Y(n84) );
  NAND2X1 U76 ( .A(n71), .B(n2), .Y(n57) );
  AO22X1 U77 ( .A0(N100), .A1(n73), .B0(N63), .B1(n74), .Y(n71) );
  AND2X2 U78 ( .A(n89), .B(n90), .Y(n73) );
  NOR2X1 U79 ( .A(n89), .B(n147), .Y(n81) );
  NAND2X1 U80 ( .A(n75), .B(n2), .Y(n58) );
  AO22X1 U81 ( .A0(N101), .A1(n73), .B0(N64), .B1(n74), .Y(n75) );
  CLKINVX1 U82 ( .A(n90), .Y(n147) );
  CLKINVX1 U83 ( .A(n2), .Y(n146) );
  CLKBUFX3 U84 ( .A(initialize), .Y(n1) );
  CLKBUFX3 U85 ( .A(n152), .Y(n5) );
  CLKBUFX3 U86 ( .A(n152), .Y(n4) );
  CLKBUFX3 U87 ( .A(n152), .Y(n3) );
  NAND2X1 U88 ( .A(n1), .B(n151), .Y(n95) );
  OAI31XL U89 ( .A0(n91), .A1(n92), .A2(n148), .B0(n93), .Y(gray_addr[8]) );
  NOR2BX1 U90 ( .AN(gray_addr_row[6]), .B(n1), .Y(gray_addr[13]) );
  CLKBUFX3 U91 ( .A(n152), .Y(n6) );
  NOR2BX1 U92 ( .AN(gray_addr_col[6]), .B(n1), .Y(gray_addr[6]) );
  NOR2BX1 U93 ( .AN(gray_addr_row[3]), .B(n1), .Y(gray_addr[10]) );
  NOR2BX1 U94 ( .AN(gray_addr_row[4]), .B(n1), .Y(gray_addr[11]) );
  NOR2BX1 U95 ( .AN(gray_addr_col[3]), .B(n1), .Y(gray_addr[3]) );
  OR2X1 U96 ( .A(cycle[1]), .B(cycle[0]), .Y(n51) );
  OAI2BB1X1 U97 ( .A0N(gray_addr_col2[5]), .A1N(n146), .B0(n69), .Y(n114) );
  OAI2BB1X1 U98 ( .A0N(gray_addr_col2[6]), .A1N(n146), .B0(n70), .Y(n115) );
  OAI2BB1X1 U99 ( .A0N(gray_addr_col1[5]), .A1N(n146), .B0(n69), .Y(n128) );
  OAI2BB1X1 U100 ( .A0N(gray_addr_col1[6]), .A1N(n146), .B0(n70), .Y(n129) );
  OAI2BB1X1 U101 ( .A0N(gray_addr_col0[5]), .A1N(n146), .B0(n69), .Y(n142) );
  OAI2BB1X1 U102 ( .A0N(gray_addr_col0[6]), .A1N(n146), .B0(n70), .Y(n143) );
  OR2X1 U103 ( .A(cycle[1]), .B(cycle[0]), .Y(n48) );
  OAI2BB1X1 U104 ( .A0N(gray_addr_row2[3]), .A1N(n146), .B0(n60), .Y(n105) );
  OAI2BB1X1 U105 ( .A0N(gray_addr_row2[4]), .A1N(n146), .B0(n61), .Y(n106) );
  OAI2BB1X1 U106 ( .A0N(gray_addr_row2[5]), .A1N(n146), .B0(n62), .Y(n107) );
  OAI2BB1X1 U107 ( .A0N(gray_addr_row2[6]), .A1N(n146), .B0(n63), .Y(n108) );
  OAI2BB1X1 U108 ( .A0N(gray_addr_col2[3]), .A1N(n146), .B0(n67), .Y(n112) );
  OAI2BB1X1 U109 ( .A0N(gray_addr_col2[4]), .A1N(n146), .B0(n68), .Y(n113) );
  OAI2BB1X1 U110 ( .A0N(gray_addr_row1[3]), .A1N(n146), .B0(n60), .Y(n119) );
  OAI2BB1X1 U111 ( .A0N(gray_addr_row1[4]), .A1N(n146), .B0(n61), .Y(n120) );
  OAI2BB1X1 U112 ( .A0N(gray_addr_row1[5]), .A1N(n146), .B0(n62), .Y(n121) );
  OAI2BB1X1 U113 ( .A0N(gray_addr_row1[6]), .A1N(n146), .B0(n63), .Y(n122) );
  OAI2BB1X1 U114 ( .A0N(gray_addr_col1[3]), .A1N(n146), .B0(n67), .Y(n126) );
  OAI2BB1X1 U115 ( .A0N(gray_addr_col1[4]), .A1N(n146), .B0(n68), .Y(n127) );
  OAI2BB1X1 U116 ( .A0N(gray_addr_row0[3]), .A1N(n146), .B0(n60), .Y(n133) );
  OAI2BB1X1 U117 ( .A0N(gray_addr_row0[4]), .A1N(n146), .B0(n61), .Y(n134) );
  OAI2BB1X1 U118 ( .A0N(gray_addr_row0[5]), .A1N(n146), .B0(n62), .Y(n135) );
  OAI2BB1X1 U119 ( .A0N(gray_addr_row0[6]), .A1N(n146), .B0(n63), .Y(n136) );
  OAI2BB1X1 U120 ( .A0N(gray_addr_col0[3]), .A1N(n146), .B0(n67), .Y(n140) );
  OAI2BB1X1 U121 ( .A0N(gray_addr_col0[4]), .A1N(n146), .B0(n68), .Y(n141) );
  OAI2BB1X1 U122 ( .A0N(gray_addr_row2[2]), .A1N(n146), .B0(n59), .Y(n104) );
  OAI2BB1X1 U123 ( .A0N(gray_addr_col2[0]), .A1N(n146), .B0(n64), .Y(n109) );
  OAI2BB1X1 U124 ( .A0N(gray_addr_col2[1]), .A1N(n146), .B0(n65), .Y(n110) );
  OAI2BB1X1 U125 ( .A0N(gray_addr_col2[2]), .A1N(n146), .B0(n66), .Y(n111) );
  OAI2BB1X1 U126 ( .A0N(gray_addr_row1[2]), .A1N(n146), .B0(n59), .Y(n118) );
  OAI2BB1X1 U127 ( .A0N(gray_addr_col1[0]), .A1N(n146), .B0(n64), .Y(n123) );
  OAI2BB1X1 U128 ( .A0N(gray_addr_col1[1]), .A1N(n146), .B0(n65), .Y(n124) );
  OAI2BB1X1 U129 ( .A0N(gray_addr_col1[2]), .A1N(n146), .B0(n66), .Y(n125) );
  OAI2BB1X1 U130 ( .A0N(gray_addr_row0[2]), .A1N(n146), .B0(n59), .Y(n132) );
  OAI2BB1X1 U131 ( .A0N(gray_addr_col0[0]), .A1N(n146), .B0(n64), .Y(n137) );
  OAI2BB1X1 U132 ( .A0N(gray_addr_col0[1]), .A1N(n146), .B0(n65), .Y(n138) );
  OAI2BB1X1 U133 ( .A0N(gray_addr_col0[2]), .A1N(n146), .B0(n66), .Y(n139) );
  OAI2BB1X1 U134 ( .A0N(fill_down), .A1N(gray_addr_en), .B0(n73), .Y(n72) );
  NAND2X1 U135 ( .A(gray_addr_en), .B(fill_right), .Y(n90) );
  NAND2X1 U136 ( .A(fill_left), .B(gray_addr_en), .Y(n89) );
  OAI2BB1X1 U137 ( .A0N(gray_addr_row2[0]), .A1N(n146), .B0(n57), .Y(n102) );
  OAI2BB1X1 U138 ( .A0N(gray_addr_row2[1]), .A1N(n146), .B0(n58), .Y(n103) );
  OAI2BB1X1 U139 ( .A0N(gray_addr_row1[0]), .A1N(n146), .B0(n57), .Y(n116) );
  OAI2BB1X1 U140 ( .A0N(gray_addr_row1[1]), .A1N(n146), .B0(n58), .Y(n117) );
  OAI2BB1X1 U141 ( .A0N(gray_addr_row0[0]), .A1N(n146), .B0(n57), .Y(n130) );
  OAI2BB1X1 U142 ( .A0N(gray_addr_row0[1]), .A1N(n146), .B0(n58), .Y(n131) );
  NAND2X1 U143 ( .A(cycle[2]), .B(cycle[1]), .Y(n94) );
  NOR2BX1 U144 ( .AN(gray_addr_col[4]), .B(n1), .Y(gray_addr[4]) );
  NOR2BX1 U145 ( .AN(gray_addr_col[5]), .B(n1), .Y(gray_addr[5]) );
  CLKINVX1 U146 ( .A(reset), .Y(n152) );
  OAI2BB2XL U147 ( .B0(n95), .B1(n96), .A0N(gray_addr_row[0]), .A1N(n148), .Y(
        gray_addr[7]) );
  OAI21XL U148 ( .A0(n149), .A1(N56), .B0(cycle[2]), .Y(n96) );
  CLKINVX1 U149 ( .A(cycle[1]), .Y(n149) );
  NAND3BX1 U150 ( .AN(cycle[2]), .B(n101), .C(n1), .Y(n98) );
  XOR2X1 U151 ( .A(cycle[3]), .B(cycle[1]), .Y(n101) );
  AO21X1 U152 ( .A0(gray_addr_col[1]), .A1(n148), .B0(n97), .Y(gray_addr[1])
         );
  OAI32X1 U153 ( .A0(n95), .A1(cycle[0]), .A2(n94), .B0(N56), .B1(n98), .Y(n97) );
  OAI211X1 U154 ( .A0(cycle[0]), .A1(n98), .B0(n99), .C0(n100), .Y(
        gray_addr[0]) );
  NAND2X1 U155 ( .A(gray_addr_col[0]), .B(n148), .Y(n100) );
  NAND4BX1 U156 ( .AN(n95), .B(cycle[0]), .C(cycle[2]), .D(n149), .Y(n99) );
  NOR2BX1 U157 ( .AN(gray_addr_col[2]), .B(n1), .Y(gray_addr[2]) );
  NOR2BX1 U158 ( .AN(gray_addr_row[2]), .B(n1), .Y(gray_addr[9]) );
  NOR2BX1 U159 ( .AN(gray_addr_row[5]), .B(n1), .Y(gray_addr[12]) );
  CLKINVX1 U160 ( .A(cycle[3]), .Y(n151) );
  XOR2X1 U161 ( .A(cycle[2]), .B(cycle[1]), .Y(n91) );
  AOI32X1 U162 ( .A0(n150), .A1(n151), .A2(cycle[0]), .B0(cycle[3]), .B1(n94), 
        .Y(n92) );
  CLKINVX1 U163 ( .A(n94), .Y(n150) );
  NAND2X1 U164 ( .A(gray_addr_row[1]), .B(n148), .Y(n93) );
  CLKINVX1 U165 ( .A(cycle[0]), .Y(N56) );
  OAI2BB1X1 U166 ( .A0N(cycle[0]), .A1N(cycle[1]), .B0(n48), .Y(N57) );
  OR2X1 U167 ( .A(n48), .B(cycle[2]), .Y(n50) );
  OAI2BB1X1 U168 ( .A0N(n48), .A1N(cycle[2]), .B0(n50), .Y(N58) );
  NOR2X1 U169 ( .A(n50), .B(cycle[3]), .Y(N62) );
  AO21X1 U170 ( .A0(n50), .A1(cycle[3]), .B0(N62), .Y(N59) );
  OAI2BB1X1 U171 ( .A0N(cycle[0]), .A1N(cycle[1]), .B0(n51), .Y(N108) );
  OR2X1 U172 ( .A(n51), .B(cycle[2]), .Y(n52) );
  OAI2BB1X1 U173 ( .A0N(n51), .A1N(cycle[2]), .B0(n52), .Y(N109) );
  NOR2X1 U174 ( .A(n52), .B(cycle[3]), .Y(N113) );
  AO21X1 U175 ( .A0(n52), .A1(cycle[3]), .B0(N113), .Y(N110) );
  CLKINVX1 U176 ( .A(lbp_addr[0]), .Y(N92) );
  OAI2BB1X1 U177 ( .A0N(lbp_addr[0]), .A1N(lbp_addr[1]), .B0(n53), .Y(N93) );
  OR2X1 U178 ( .A(n53), .B(lbp_addr[2]), .Y(n54) );
  OAI2BB1X1 U179 ( .A0N(n53), .A1N(lbp_addr[2]), .B0(n54), .Y(N94) );
  NOR2X1 U180 ( .A(n54), .B(lbp_addr[3]), .Y(n55) );
  AO21X1 U181 ( .A0(n54), .A1(lbp_addr[3]), .B0(n55), .Y(N95) );
  NAND2X1 U182 ( .A(n55), .B(n145), .Y(n56) );
  OAI21XL U183 ( .A0(n55), .A1(n145), .B0(n56), .Y(N96) );
  XNOR2X1 U184 ( .A(lbp_addr[5]), .B(n56), .Y(N97) );
  NOR2X1 U185 ( .A(lbp_addr[5]), .B(n56), .Y(n144) );
  XOR2X1 U186 ( .A(lbp_addr[6]), .B(n144), .Y(N98) );
  TMR_0 T13 ( .Y(gray_addr_row[6]), .A(gray_addr_row0[6]), .B(
        gray_addr_row1[6]), .C(gray_addr_row2[6]) );
  TMR_27 T12 ( .Y(gray_addr_row[5]), .A(gray_addr_row0[5]), .B(
        gray_addr_row1[5]), .C(gray_addr_row2[5]) );
  TMR_26 T11 ( .Y(gray_addr_row[4]), .A(gray_addr_row0[4]), .B(
        gray_addr_row1[4]), .C(gray_addr_row2[4]) );
  TMR_25 T10 ( .Y(gray_addr_row[3]), .A(gray_addr_row0[3]), .B(
        gray_addr_row1[3]), .C(gray_addr_row2[3]) );
  TMR_24 T9 ( .Y(gray_addr_row[2]), .A(gray_addr_row0[2]), .B(
        gray_addr_row1[2]), .C(gray_addr_row2[2]) );
  TMR_23 T8 ( .Y(gray_addr_row[1]), .A(gray_addr_row0[1]), .B(
        gray_addr_row1[1]), .C(gray_addr_row2[1]) );
  TMR_22 T7 ( .Y(gray_addr_row[0]), .A(gray_addr_row0[0]), .B(
        gray_addr_row1[0]), .C(gray_addr_row2[0]) );
  TMR_21 T6 ( .Y(gray_addr_col[6]), .A(gray_addr_col0[6]), .B(
        gray_addr_col1[6]), .C(gray_addr_col2[6]) );
  TMR_20 T5 ( .Y(gray_addr_col[5]), .A(gray_addr_col0[5]), .B(
        gray_addr_col1[5]), .C(gray_addr_col2[5]) );
  TMR_19 T4 ( .Y(gray_addr_col[4]), .A(gray_addr_col0[4]), .B(
        gray_addr_col1[4]), .C(gray_addr_col2[4]) );
  TMR_18 T3 ( .Y(gray_addr_col[3]), .A(gray_addr_col0[3]), .B(
        gray_addr_col1[3]), .C(gray_addr_col2[3]) );
  TMR_17 T2 ( .Y(gray_addr_col[2]), .A(gray_addr_col0[2]), .B(
        gray_addr_col1[2]), .C(gray_addr_col2[2]) );
  TMR_16 T1 ( .Y(gray_addr_col[1]), .A(gray_addr_col0[1]), .B(
        gray_addr_col1[1]), .C(gray_addr_col2[1]) );
  TMR_15 T0 ( .Y(gray_addr_col[0]), .A(gray_addr_col0[0]), .B(
        gray_addr_col1[0]), .C(gray_addr_col2[0]) );
  GAC_TMR2_DW01_inc_0 U6 ( .A(lbp_addr[6:0]), .SUM({N76, N75, N74, N73, N72, 
        N71, N70}) );
  GAC_TMR2_DW01_inc_1 U4 ( .A(lbp_addr[13:7]), .SUM({N106, N105, N104, N103, 
        N102, N101, N100}) );
  GAC_TMR2_DW01_add_0 add_0_root_sub_0_root__cell_138 ( .A(lbp_addr[6:0]), .B(
        {N113, N113, N113, N110, N109, N108, N56}), .CI(1'b0), .SUM({N120, 
        N119, N118, N117, N116, N115, N114}) );
  GAC_TMR2_DW01_add_1 add_0_root_r392 ( .A(lbp_addr[13:7]), .B({N62, N62, N62, 
        N59, N58, N57, N56}), .CI(1'b0), .SUM({N69, N68, N67, N66, N65, N64, 
        N63}) );
endmodule


module GDM_test_1 ( clk, reset, gray_data, lbp_data, cycle, fill_right, 
        fill_down, fill_left, initialize, gray_req, test_si, test_so, test_se
 );
  input [7:0] gray_data;
  output [7:0] lbp_data;
  input [3:0] cycle;
  input clk, reset, fill_right, fill_down, fill_left, initialize, gray_req,
         test_si, test_se;
  output test_so;
  wire   n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n148, n149, n150,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n104, n147, n151, n152, n153, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n33, n34, n35, n36, n37, n38, n39, n40;

  SDFFRX1 g2_reg_6_ ( .D(n283), .SI(n148), .SE(n33), .CK(clk), .RN(n29), .Q(
        n277), .QN(n508) );
  SDFFRX1 g2_reg_2_ ( .D(n287), .SI(n510), .SE(n33), .CK(clk), .RN(n30), .Q(
        n269), .QN(n509) );
  SDFFRX1 g2_reg_1_ ( .D(n288), .SI(n511), .SE(n33), .CK(clk), .RN(n30), .Q(
        n267), .QN(n510) );
  SDFFRX1 g2_reg_0_ ( .D(n289), .SI(n106), .SE(n33), .CK(clk), .RN(n30), .Q(
        n264), .QN(n511) );
  SDFFRX1 g1_reg_6_ ( .D(n291), .SI(n108), .SE(n38), .CK(clk), .RN(n29), .Q(n9), .QN(n107) );
  SDFFRX1 g1_reg_2_ ( .D(n295), .SI(n112), .SE(n37), .CK(clk), .RN(n30), .Q(n4), .QN(n111) );
  SDFFRX1 g1_reg_1_ ( .D(n296), .SI(n113), .SE(n37), .CK(clk), .RN(n30), .Q(n5), .QN(n112) );
  SDFFRX1 g1_reg_0_ ( .D(n297), .SI(n512), .SE(n33), .CK(clk), .RN(n30), .Q(
        n13), .QN(n113) );
  SDFFRX1 g2_reg_3_ ( .D(n286), .SI(n509), .SE(n33), .CK(clk), .RN(n30), .Q(
        n271), .QN(n150) );
  SDFFRX1 g2_reg_4_ ( .D(n285), .SI(n150), .SE(n33), .CK(clk), .RN(n30), .Q(
        n273), .QN(n149) );
  SDFFRX1 g0_reg_6_ ( .D(n299), .SI(n513), .SE(n38), .CK(clk), .RN(n32), .Q(
        n24), .QN(n475) );
  SDFFRX1 g0_reg_0_ ( .D(n305), .SI(test_si), .SE(n33), .CK(clk), .RN(n30), 
        .Q(n517), .QN(n477) );
  SDFFRX1 g1_reg_3_ ( .D(n294), .SI(n111), .SE(n37), .CK(clk), .RN(n30), .Q(
        n11), .QN(n110) );
  SDFFRX1 g1_reg_4_ ( .D(n293), .SI(n110), .SE(n37), .CK(clk), .RN(n30), .Q(
        n12), .QN(n109) );
  SDFFRX1 g2_reg_7_ ( .D(n282), .SI(n508), .SE(n33), .CK(clk), .RN(n29), .Q(
        n279), .QN(n146) );
  SDFFRX1 g2_reg_5_ ( .D(n284), .SI(n149), .SE(n33), .CK(clk), .RN(n29), .Q(
        n275), .QN(n148) );
  SDFFRX1 g0_reg_4_ ( .D(n301), .SI(n515), .SE(n38), .CK(clk), .RN(n32), .Q(
        n514), .QN(n479) );
  SDFFRX1 g7_reg_6_ ( .D(n347), .SI(n485), .SE(n37), .CK(clk), .RN(n147), .Q(
        n23), .QN(n131) );
  SDFFRX1 g0_reg_3_ ( .D(n302), .SI(n516), .SE(n37), .CK(clk), .RN(n31), .Q(
        n515), .QN(n481) );
  SDFFRX1 g7_reg_0_ ( .D(n353), .SI(n490), .SE(n35), .CK(clk), .RN(n104), .Q(
        n489), .QN(n137) );
  SDFFRX1 g0_reg_1_ ( .D(n304), .SI(n517), .SE(n37), .CK(clk), .RN(n31), .Q(
        n28), .QN(n478) );
  SDFFRX1 g0_reg_7_ ( .D(n298), .SI(n24), .SE(n38), .CK(clk), .RN(n104), .Q(
        n512), .QN(n474) );
  SDFFRX1 g0_reg_5_ ( .D(n300), .SI(n514), .SE(n38), .CK(clk), .RN(n32), .Q(
        n513), .QN(n480) );
  SDFFRX1 g5_reg_6_ ( .D(n331), .SI(n497), .SE(n37), .CK(clk), .RN(n147), .Q(
        n22), .QN(n115) );
  SDFFRX1 g1_reg_7_ ( .D(n290), .SI(n107), .SE(n38), .CK(clk), .RN(n29), .Q(
        n258), .QN(n106) );
  SDFFRX1 g1_reg_5_ ( .D(n292), .SI(n109), .SE(n38), .CK(clk), .RN(n30), .Q(
        n255), .QN(n108) );
  SDFFRX1 g0_reg_2_ ( .D(n303), .SI(n28), .SE(n37), .CK(clk), .RN(n31), .Q(
        n516), .QN(n476) );
  SDFFRX1 g7_reg_4_ ( .D(n349), .SI(n487), .SE(n36), .CK(clk), .RN(n147), .Q(
        n486), .QN(n133) );
  SDFFRX1 g3_reg_6_ ( .D(n323), .SI(n503), .SE(n34), .CK(clk), .RN(n32), .Q(
        n20), .QN(n163) );
  SDFFRX1 g7_reg_3_ ( .D(n350), .SI(n488), .SE(n36), .CK(clk), .RN(n104), .Q(
        n487), .QN(n134) );
  SDFFRX1 g3_reg_0_ ( .D(n329), .SI(n146), .SE(n33), .CK(clk), .RN(n31), .Q(
        n507), .QN(n169) );
  SDFFRX1 g7_reg_1_ ( .D(n352), .SI(n489), .SE(n35), .CK(clk), .RN(n104), .Q(
        n27), .QN(n136) );
  SDFFRX1 g7_reg_7_ ( .D(n346), .SI(n23), .SE(n37), .CK(clk), .RN(n147), .Q(
        n484), .QN(n130) );
  SDFFRX1 g7_reg_5_ ( .D(n348), .SI(n486), .SE(n36), .CK(clk), .RN(n147), .Q(
        n485), .QN(n132) );
  SDFFRX1 g6_reg_3_ ( .D(n342), .SI(n494), .SE(n36), .CK(clk), .RN(n29), .Q(
        n493), .QN(n126) );
  SDFFRX1 g6_reg_4_ ( .D(n341), .SI(n493), .SE(n36), .CK(clk), .RN(n29), .Q(
        n492), .QN(n125) );
  SDFFRX1 g7_reg_2_ ( .D(n351), .SI(n27), .SE(n36), .CK(clk), .RN(n104), .Q(
        n488), .QN(n135) );
  SDFFRX1 g3_reg_4_ ( .D(n325), .SI(n505), .SE(n34), .CK(clk), .RN(n32), .Q(
        n504), .QN(n165) );
  SDFFRX1 g3_reg_3_ ( .D(n326), .SI(n506), .SE(n34), .CK(clk), .RN(n32), .Q(
        n505), .QN(n166) );
  SDFFRX1 g6_reg_1_ ( .D(n344), .SI(n495), .SE(n35), .CK(clk), .RN(n29), .Q(
        n26), .QN(n128) );
  SDFFRX1 g3_reg_1_ ( .D(n328), .SI(n507), .SE(n34), .CK(clk), .RN(n31), .Q(
        n25), .QN(n168) );
  SDFFRX1 g3_reg_7_ ( .D(n322), .SI(n20), .SE(n34), .CK(clk), .RN(n104), .Q(
        n502), .QN(n162) );
  SDFFRX1 g3_reg_5_ ( .D(n324), .SI(n504), .SE(n34), .CK(clk), .RN(n32), .Q(
        n503), .QN(n164) );
  SDFFRX1 g6_reg_2_ ( .D(n343), .SI(n26), .SE(n36), .CK(clk), .RN(n29), .Q(
        n494), .QN(n127) );
  SDFFRX1 g3_reg_2_ ( .D(n327), .SI(n25), .SE(n34), .CK(clk), .RN(n31), .Q(
        n506), .QN(n167) );
  SDFFRX1 gc_reg_7_ ( .D(n314), .SI(n155), .SE(n34), .CK(clk), .RN(n104), .Q(
        n232), .QN(test_so) );
  SDFFRX1 gc_reg_5_ ( .D(n316), .SI(n157), .SE(n34), .CK(clk), .RN(n32), .Q(
        n229), .QN(n156) );
  SDFFRX1 gc_reg_3_ ( .D(n318), .SI(n159), .SE(n34), .CK(clk), .RN(n31), .Q(
        n225), .QN(n158) );
  SDFFRX1 gc_reg_2_ ( .D(n319), .SI(n160), .SE(n34), .CK(clk), .RN(n31), .Q(
        n223), .QN(n159) );
  SDFFRX1 g4_reg_6_ ( .D(n307), .SI(n140), .SE(n35), .CK(clk), .RN(n32), .Q(
        n10), .QN(n139) );
  SDFFRX1 g4_reg_2_ ( .D(n311), .SI(n144), .SE(n35), .CK(clk), .RN(n31), .Q(n6), .QN(n143) );
  SDFFRX1 g4_reg_1_ ( .D(n312), .SI(n145), .SE(n35), .CK(clk), .RN(n31), .Q(n7), .QN(n144) );
  SDFFRX1 g4_reg_0_ ( .D(n313), .SI(n502), .SE(n35), .CK(clk), .RN(n30), .Q(
        n16), .QN(n145) );
  SDFFRX1 g4_reg_3_ ( .D(n310), .SI(n143), .SE(n35), .CK(clk), .RN(n31), .Q(
        n14), .QN(n142) );
  SDFFRX1 g4_reg_4_ ( .D(n309), .SI(n142), .SE(n35), .CK(clk), .RN(n32), .Q(
        n15), .QN(n141) );
  SDFFRX1 g4_reg_7_ ( .D(n306), .SI(n139), .SE(n35), .CK(clk), .RN(n104), .Q(
        n19), .QN(n138) );
  SDFFRX1 g4_reg_5_ ( .D(n308), .SI(n141), .SE(n35), .CK(clk), .RN(n32), .Q(
        n18), .QN(n140) );
  SDFFRX1 g6_reg_6_ ( .D(n339), .SI(n491), .SE(n37), .CK(clk), .RN(n29), .Q(
        n21), .QN(n123) );
  SDFFRX1 g5_reg_0_ ( .D(n337), .SI(n138), .SE(n35), .CK(clk), .RN(n104), .Q(
        n501), .QN(n121) );
  SDFFRX1 g6_reg_0_ ( .D(n345), .SI(n496), .SE(n35), .CK(clk), .RN(n29), .Q(
        n495), .QN(n129) );
  SDFFRX1 g5_reg_1_ ( .D(n336), .SI(n501), .SE(n36), .CK(clk), .RN(n104), .Q(
        n17), .QN(n120) );
  SDFFRX1 g5_reg_4_ ( .D(n333), .SI(n499), .SE(n36), .CK(clk), .RN(n104), .Q(
        n498), .QN(n117) );
  SDFFRX1 g5_reg_3_ ( .D(n334), .SI(n500), .SE(n36), .CK(clk), .RN(n104), .Q(
        n499), .QN(n118) );
  SDFFRX1 g5_reg_7_ ( .D(n330), .SI(n22), .SE(n37), .CK(clk), .RN(n147), .Q(
        n496), .QN(n114) );
  SDFFRX1 g5_reg_5_ ( .D(n332), .SI(n498), .SE(n36), .CK(clk), .RN(n147), .Q(
        n497), .QN(n116) );
  SDFFRX1 g6_reg_7_ ( .D(n338), .SI(n21), .SE(n37), .CK(clk), .RN(n29), .Q(
        n490), .QN(n122) );
  SDFFRX1 g6_reg_5_ ( .D(n340), .SI(n492), .SE(n36), .CK(clk), .RN(n29), .Q(
        n491), .QN(n124) );
  SDFFRX1 g5_reg_2_ ( .D(n335), .SI(n17), .SE(n36), .CK(clk), .RN(n104), .Q(
        n500), .QN(n119) );
  SDFFRX1 gc_reg_0_ ( .D(n321), .SI(n484), .SE(n33), .CK(clk), .RN(n31), .Q(n2), .QN(n161) );
  SDFFRX1 gc_reg_1_ ( .D(n320), .SI(n161), .SE(n33), .CK(clk), .RN(n31), .Q(n8), .QN(n160) );
  SDFFRX1 gc_reg_4_ ( .D(n317), .SI(n158), .SE(n34), .CK(clk), .RN(n32), .Q(
        n227), .QN(n157) );
  SDFFRX1 gc_reg_6_ ( .D(n315), .SI(n156), .SE(n34), .CK(clk), .RN(n32), .Q(n3), .QN(n155) );
  NAND3X1 U3 ( .A(n281), .B(n203), .C(n245), .Y(n1) );
  NAND2BX1 U4 ( .AN(n280), .B(n199), .Y(n248) );
  NAND2X1 U5 ( .A(n262), .B(n204), .Y(n249) );
  NOR2BX1 U6 ( .AN(n199), .B(n233), .Y(n207) );
  NAND2X1 U7 ( .A(n204), .B(n205), .Y(n172) );
  CLKINVX1 U8 ( .A(n234), .Y(n181) );
  CLKBUFX3 U9 ( .A(n152), .Y(n29) );
  CLKBUFX3 U10 ( .A(n152), .Y(n30) );
  CLKBUFX3 U11 ( .A(n152), .Y(n31) );
  CLKBUFX3 U12 ( .A(n151), .Y(n32) );
  CLKBUFX3 U13 ( .A(n151), .Y(n104) );
  CLKBUFX3 U14 ( .A(n151), .Y(n147) );
  NOR2BX1 U15 ( .AN(n245), .B(n198), .Y(n233) );
  NAND2X1 U16 ( .A(n245), .B(n204), .Y(n209) );
  NOR2X1 U17 ( .A(n259), .B(n198), .Y(n280) );
  NAND2X1 U18 ( .A(n202), .B(n203), .Y(n210) );
  NAND2X1 U19 ( .A(initialize), .B(gray_req), .Y(n199) );
  CLKBUFX3 U20 ( .A(n482), .Y(n152) );
  CLKBUFX3 U21 ( .A(n482), .Y(n151) );
  CLKINVX1 U22 ( .A(reset), .Y(n482) );
  OAI222XL U23 ( .A0(n137), .A1(n153), .B0(n170), .B1(n171), .C0(n129), .C1(
        n172), .Y(n353) );
  OAI222XL U24 ( .A0(n136), .A1(n153), .B0(n170), .B1(n173), .C0(n128), .C1(
        n172), .Y(n352) );
  OAI222XL U25 ( .A0(n135), .A1(n153), .B0(n170), .B1(n174), .C0(n127), .C1(
        n172), .Y(n351) );
  OAI222XL U26 ( .A0(n134), .A1(n153), .B0(n170), .B1(n175), .C0(n126), .C1(
        n172), .Y(n350) );
  OAI222XL U97 ( .A0(n133), .A1(n153), .B0(n170), .B1(n176), .C0(n125), .C1(
        n172), .Y(n349) );
  OAI222XL U99 ( .A0(n132), .A1(n153), .B0(n170), .B1(n177), .C0(n124), .C1(
        n172), .Y(n348) );
  OAI222XL U100 ( .A0(n131), .A1(n153), .B0(n170), .B1(n178), .C0(n123), .C1(
        n172), .Y(n347) );
  OAI222XL U101 ( .A0(n130), .A1(n153), .B0(n170), .B1(n179), .C0(n122), .C1(
        n172), .Y(n346) );
  NOR2BX1 U102 ( .AN(n180), .B(n181), .Y(n170) );
  AND2X1 U103 ( .A(n182), .B(n183), .Y(n153) );
  OAI221XL U104 ( .A0(n137), .A1(n180), .B0(n171), .B1(n1), .C0(n184), .Y(n345) );
  OA22X1 U105 ( .A0(n121), .A1(n172), .B0(n185), .B1(n129), .Y(n184) );
  OAI221XL U106 ( .A0(n136), .A1(n180), .B0(n173), .B1(n1), .C0(n186), .Y(n344) );
  AOI2BB2X1 U107 ( .B0(n17), .B1(n187), .A0N(n185), .A1N(n128), .Y(n186) );
  OAI221XL U108 ( .A0(n135), .A1(n180), .B0(n174), .B1(n1), .C0(n188), .Y(n343) );
  OA22X1 U109 ( .A0(n185), .A1(n127), .B0(n119), .B1(n172), .Y(n188) );
  OAI221XL U110 ( .A0(n134), .A1(n180), .B0(n175), .B1(n1), .C0(n189), .Y(n342) );
  OA22X1 U111 ( .A0(n185), .A1(n126), .B0(n118), .B1(n172), .Y(n189) );
  OAI221XL U112 ( .A0(n133), .A1(n180), .B0(n176), .B1(n1), .C0(n190), .Y(n341) );
  OA22X1 U113 ( .A0(n185), .A1(n125), .B0(n117), .B1(n172), .Y(n190) );
  OAI221XL U114 ( .A0(n132), .A1(n180), .B0(n177), .B1(n1), .C0(n191), .Y(n340) );
  OA22X1 U115 ( .A0(n116), .A1(n172), .B0(n185), .B1(n124), .Y(n191) );
  OAI221XL U116 ( .A0(n131), .A1(n180), .B0(n178), .B1(n1), .C0(n192), .Y(n339) );
  OA22X1 U117 ( .A0(n115), .A1(n172), .B0(n185), .B1(n123), .Y(n192) );
  OAI221XL U118 ( .A0(n130), .A1(n180), .B0(n179), .B1(n1), .C0(n193), .Y(n338) );
  OA22X1 U119 ( .A0(n114), .A1(n172), .B0(n185), .B1(n122), .Y(n193) );
  AND2X1 U120 ( .A(n194), .B(n183), .Y(n185) );
  OAI222XL U121 ( .A0(n171), .A1(n195), .B0(n121), .B1(n196), .C0(n129), .C1(
        n180), .Y(n337) );
  OAI222XL U122 ( .A0(n173), .A1(n195), .B0(n120), .B1(n196), .C0(n128), .C1(
        n180), .Y(n336) );
  OAI222XL U123 ( .A0(n174), .A1(n195), .B0(n119), .B1(n196), .C0(n127), .C1(
        n180), .Y(n335) );
  OAI222XL U124 ( .A0(n175), .A1(n195), .B0(n118), .B1(n196), .C0(n126), .C1(
        n180), .Y(n334) );
  OAI222XL U125 ( .A0(n176), .A1(n195), .B0(n117), .B1(n196), .C0(n125), .C1(
        n180), .Y(n333) );
  OAI222XL U126 ( .A0(n177), .A1(n195), .B0(n116), .B1(n196), .C0(n124), .C1(
        n180), .Y(n332) );
  OAI222XL U127 ( .A0(n178), .A1(n195), .B0(n115), .B1(n196), .C0(n123), .C1(
        n180), .Y(n331) );
  OAI222XL U128 ( .A0(n179), .A1(n195), .B0(n114), .B1(n196), .C0(n122), .C1(
        n180), .Y(n330) );
  OA21XL U129 ( .A0(n197), .A1(n198), .B0(n199), .Y(n180) );
  AND2X1 U130 ( .A(n200), .B(n183), .Y(n196) );
  NAND2X1 U131 ( .A(n197), .B(n201), .Y(n183) );
  OAI21XL U132 ( .A0(n187), .A1(n202), .B0(n203), .Y(n195) );
  CLKINVX1 U133 ( .A(n172), .Y(n187) );
  OAI221XL U134 ( .A0(n169), .A1(n206), .B0(n161), .B1(n207), .C0(n208), .Y(
        n329) );
  OA22X1 U135 ( .A0(n171), .A1(n209), .B0(n210), .B1(n121), .Y(n208) );
  OAI221XL U136 ( .A0(n168), .A1(n206), .B0(n160), .B1(n207), .C0(n211), .Y(
        n328) );
  OA22X1 U137 ( .A0(n173), .A1(n209), .B0(n210), .B1(n120), .Y(n211) );
  OAI221XL U138 ( .A0(n167), .A1(n206), .B0(n159), .B1(n207), .C0(n212), .Y(
        n327) );
  OA22X1 U139 ( .A0(n174), .A1(n209), .B0(n210), .B1(n119), .Y(n212) );
  OAI221XL U140 ( .A0(n166), .A1(n206), .B0(n158), .B1(n207), .C0(n213), .Y(
        n326) );
  OA22X1 U141 ( .A0(n175), .A1(n209), .B0(n210), .B1(n118), .Y(n213) );
  OAI221XL U142 ( .A0(n165), .A1(n206), .B0(n157), .B1(n207), .C0(n214), .Y(
        n325) );
  OA22X1 U143 ( .A0(n176), .A1(n209), .B0(n210), .B1(n117), .Y(n214) );
  OAI221XL U144 ( .A0(n164), .A1(n206), .B0(n156), .B1(n207), .C0(n215), .Y(
        n324) );
  OA22X1 U145 ( .A0(n177), .A1(n209), .B0(n210), .B1(n116), .Y(n215) );
  OAI221XL U146 ( .A0(n163), .A1(n206), .B0(n155), .B1(n207), .C0(n216), .Y(
        n323) );
  OA22X1 U147 ( .A0(n178), .A1(n209), .B0(n210), .B1(n115), .Y(n216) );
  OAI221XL U148 ( .A0(n162), .A1(n206), .B0(test_so), .B1(n207), .C0(n217), 
        .Y(n322) );
  OA22X1 U149 ( .A0(n179), .A1(n209), .B0(n210), .B1(n114), .Y(n217) );
  AND2X1 U150 ( .A(n200), .B(n218), .Y(n206) );
  OAI221XL U151 ( .A0(n169), .A1(n209), .B0(n129), .B1(n1), .C0(n219), .Y(n321) );
  AOI2BB2X1 U152 ( .B0(n220), .B1(n2), .A0N(n207), .A1N(n145), .Y(n219) );
  OAI221XL U153 ( .A0(n168), .A1(n209), .B0(n128), .B1(n1), .C0(n221), .Y(n320) );
  AOI2BB2X1 U154 ( .B0(n220), .B1(n8), .A0N(n207), .A1N(n144), .Y(n221) );
  OAI221XL U155 ( .A0(n167), .A1(n209), .B0(n127), .B1(n1), .C0(n222), .Y(n319) );
  AOI2BB2X1 U156 ( .B0(n220), .B1(n223), .A0N(n207), .A1N(n143), .Y(n222) );
  OAI221XL U157 ( .A0(n166), .A1(n209), .B0(n126), .B1(n1), .C0(n224), .Y(n318) );
  AOI2BB2X1 U158 ( .B0(n220), .B1(n225), .A0N(n207), .A1N(n142), .Y(n224) );
  OAI221XL U159 ( .A0(n165), .A1(n209), .B0(n125), .B1(n1), .C0(n226), .Y(n317) );
  AOI2BB2X1 U160 ( .B0(n220), .B1(n227), .A0N(n207), .A1N(n141), .Y(n226) );
  OAI221XL U161 ( .A0(n164), .A1(n209), .B0(n124), .B1(n1), .C0(n228), .Y(n316) );
  AOI2BB2X1 U162 ( .B0(n220), .B1(n229), .A0N(n207), .A1N(n140), .Y(n228) );
  OAI221XL U163 ( .A0(n163), .A1(n209), .B0(n123), .B1(n1), .C0(n230), .Y(n315) );
  AOI2BB2X1 U164 ( .B0(n220), .B1(n3), .A0N(n207), .A1N(n139), .Y(n230) );
  OAI221XL U165 ( .A0(n162), .A1(n209), .B0(n122), .B1(n1), .C0(n231), .Y(n314) );
  AOI2BB2X1 U166 ( .B0(n220), .B1(n232), .A0N(n207), .A1N(n138), .Y(n231) );
  NAND2X1 U167 ( .A(n194), .B(n218), .Y(n220) );
  OAI221XL U168 ( .A0(n137), .A1(n234), .B0(n121), .B1(n199), .C0(n235), .Y(
        n313) );
  AOI222XL U169 ( .A0(n236), .A1(n2), .B0(n233), .B1(gray_data[0]), .C0(n237), 
        .C1(n16), .Y(n235) );
  OAI221XL U170 ( .A0(n136), .A1(n234), .B0(n120), .B1(n199), .C0(n238), .Y(
        n312) );
  AOI222XL U171 ( .A0(n236), .A1(n8), .B0(n233), .B1(gray_data[1]), .C0(n237), 
        .C1(n7), .Y(n238) );
  OAI221XL U172 ( .A0(n135), .A1(n234), .B0(n119), .B1(n199), .C0(n239), .Y(
        n311) );
  AOI222XL U173 ( .A0(n236), .A1(n223), .B0(n233), .B1(gray_data[2]), .C0(n237), .C1(n6), .Y(n239) );
  OAI221XL U174 ( .A0(n134), .A1(n234), .B0(n118), .B1(n199), .C0(n240), .Y(
        n310) );
  AOI222XL U175 ( .A0(n236), .A1(n225), .B0(n233), .B1(gray_data[3]), .C0(n237), .C1(n14), .Y(n240) );
  OAI221XL U176 ( .A0(n133), .A1(n234), .B0(n117), .B1(n199), .C0(n241), .Y(
        n309) );
  AOI222XL U177 ( .A0(n236), .A1(n227), .B0(n233), .B1(gray_data[4]), .C0(n237), .C1(n15), .Y(n241) );
  OAI221XL U178 ( .A0(n132), .A1(n234), .B0(n116), .B1(n199), .C0(n242), .Y(
        n308) );
  AOI222XL U179 ( .A0(n236), .A1(n229), .B0(n233), .B1(gray_data[5]), .C0(n237), .C1(n18), .Y(n242) );
  OAI221XL U180 ( .A0(n131), .A1(n234), .B0(n115), .B1(n199), .C0(n243), .Y(
        n307) );
  AOI222XL U181 ( .A0(n236), .A1(n3), .B0(n233), .B1(gray_data[6]), .C0(n237), 
        .C1(n10), .Y(n243) );
  OAI221XL U182 ( .A0(n130), .A1(n234), .B0(n114), .B1(n199), .C0(n244), .Y(
        n306) );
  AOI222XL U183 ( .A0(n236), .A1(n232), .B0(n233), .B1(gray_data[7]), .C0(n237), .C1(n19), .Y(n244) );
  NAND2X1 U184 ( .A(n182), .B(n218), .Y(n237) );
  NAND2BX1 U185 ( .AN(n245), .B(n201), .Y(n218) );
  CLKINVX1 U186 ( .A(n209), .Y(n236) );
  OAI221XL U187 ( .A0(n477), .A1(n246), .B0(n169), .B1(n210), .C0(n247), .Y(
        n305) );
  AOI2BB2X1 U188 ( .B0(n248), .B1(n13), .A0N(n171), .A1N(n249), .Y(n247) );
  CLKINVX1 U189 ( .A(gray_data[0]), .Y(n171) );
  OAI221XL U190 ( .A0(n478), .A1(n246), .B0(n168), .B1(n210), .C0(n250), .Y(
        n304) );
  AOI2BB2X1 U191 ( .B0(n248), .B1(n5), .A0N(n173), .A1N(n249), .Y(n250) );
  CLKINVX1 U192 ( .A(gray_data[1]), .Y(n173) );
  OAI221XL U193 ( .A0(n476), .A1(n246), .B0(n167), .B1(n210), .C0(n251), .Y(
        n303) );
  AOI2BB2X1 U194 ( .B0(n248), .B1(n4), .A0N(n174), .A1N(n249), .Y(n251) );
  CLKINVX1 U195 ( .A(gray_data[2]), .Y(n174) );
  OAI221XL U196 ( .A0(n481), .A1(n246), .B0(n166), .B1(n210), .C0(n252), .Y(
        n302) );
  AOI2BB2X1 U197 ( .B0(n248), .B1(n11), .A0N(n175), .A1N(n249), .Y(n252) );
  CLKINVX1 U198 ( .A(gray_data[3]), .Y(n175) );
  OAI221XL U199 ( .A0(n479), .A1(n246), .B0(n165), .B1(n210), .C0(n253), .Y(
        n301) );
  AOI2BB2X1 U200 ( .B0(n248), .B1(n12), .A0N(n176), .A1N(n249), .Y(n253) );
  CLKINVX1 U201 ( .A(gray_data[4]), .Y(n176) );
  OAI221XL U202 ( .A0(n480), .A1(n246), .B0(n164), .B1(n210), .C0(n254), .Y(
        n300) );
  AOI2BB2X1 U203 ( .B0(n248), .B1(n255), .A0N(n177), .A1N(n249), .Y(n254) );
  CLKINVX1 U204 ( .A(gray_data[5]), .Y(n177) );
  OAI221XL U205 ( .A0(n475), .A1(n246), .B0(n163), .B1(n210), .C0(n256), .Y(
        n299) );
  AOI2BB2X1 U206 ( .B0(n248), .B1(n9), .A0N(n178), .A1N(n249), .Y(n256) );
  CLKINVX1 U207 ( .A(gray_data[6]), .Y(n178) );
  OAI221XL U208 ( .A0(n474), .A1(n246), .B0(n162), .B1(n210), .C0(n257), .Y(
        n298) );
  AOI2BB2X1 U209 ( .B0(n248), .B1(n258), .A0N(n179), .A1N(n249), .Y(n257) );
  CLKINVX1 U210 ( .A(gray_data[7]), .Y(n179) );
  NOR2X1 U211 ( .A(n259), .B(n260), .Y(n202) );
  AND2X1 U212 ( .A(n200), .B(n261), .Y(n246) );
  OA21XL U213 ( .A0(n262), .A1(n260), .B0(n203), .Y(n200) );
  OAI221XL U214 ( .A0(n161), .A1(n1), .B0(n477), .B1(n249), .C0(n263), .Y(n297) );
  AOI22X1 U215 ( .A0(n248), .A1(n264), .B0(n265), .B1(n13), .Y(n263) );
  OAI221XL U216 ( .A0(n160), .A1(n1), .B0(n478), .B1(n249), .C0(n266), .Y(n296) );
  AOI22X1 U217 ( .A0(n248), .A1(n267), .B0(n265), .B1(n5), .Y(n266) );
  OAI221XL U218 ( .A0(n159), .A1(n1), .B0(n476), .B1(n249), .C0(n268), .Y(n295) );
  AOI22X1 U219 ( .A0(n248), .A1(n269), .B0(n265), .B1(n4), .Y(n268) );
  OAI221XL U220 ( .A0(n158), .A1(n1), .B0(n481), .B1(n249), .C0(n270), .Y(n294) );
  AOI22X1 U221 ( .A0(n248), .A1(n271), .B0(n265), .B1(n11), .Y(n270) );
  OAI221XL U222 ( .A0(n157), .A1(n1), .B0(n479), .B1(n249), .C0(n272), .Y(n293) );
  AOI22X1 U223 ( .A0(n248), .A1(n273), .B0(n265), .B1(n12), .Y(n272) );
  OAI221XL U224 ( .A0(n156), .A1(n1), .B0(n480), .B1(n249), .C0(n274), .Y(n292) );
  AOI22X1 U225 ( .A0(n248), .A1(n275), .B0(n265), .B1(n255), .Y(n274) );
  OAI221XL U226 ( .A0(n155), .A1(n1), .B0(n475), .B1(n249), .C0(n276), .Y(n291) );
  AOI22X1 U227 ( .A0(n248), .A1(n277), .B0(n265), .B1(n9), .Y(n276) );
  OAI221XL U228 ( .A0(test_so), .A1(n1), .B0(n474), .B1(n249), .C0(n278), .Y(
        n290) );
  AOI22X1 U229 ( .A0(n248), .A1(n279), .B0(n265), .B1(n258), .Y(n278) );
  NAND2X1 U230 ( .A(n194), .B(n261), .Y(n265) );
  OA21XL U231 ( .A0(n245), .A1(n260), .B0(n203), .Y(n194) );
  NOR3BXL U232 ( .AN(n354), .B(cycle[0]), .C(n355), .Y(n245) );
  OAI221XL U233 ( .A0(n113), .A1(n249), .B0(n169), .B1(n199), .C0(n356), .Y(
        n289) );
  AOI222XL U234 ( .A0(n357), .A1(n264), .B0(n280), .B1(gray_data[0]), .C0(n181), .C1(n16), .Y(n356) );
  OAI221XL U235 ( .A0(n112), .A1(n249), .B0(n168), .B1(n199), .C0(n358), .Y(
        n288) );
  AOI222XL U236 ( .A0(n357), .A1(n267), .B0(n280), .B1(gray_data[1]), .C0(n181), .C1(n7), .Y(n358) );
  OAI221XL U237 ( .A0(n111), .A1(n249), .B0(n167), .B1(n199), .C0(n359), .Y(
        n287) );
  AOI222XL U238 ( .A0(n357), .A1(n269), .B0(n280), .B1(gray_data[2]), .C0(n181), .C1(n6), .Y(n359) );
  OAI221XL U239 ( .A0(n110), .A1(n249), .B0(n166), .B1(n199), .C0(n360), .Y(
        n286) );
  AOI222XL U240 ( .A0(n357), .A1(n271), .B0(n280), .B1(gray_data[3]), .C0(n181), .C1(n14), .Y(n360) );
  OAI221XL U241 ( .A0(n109), .A1(n249), .B0(n165), .B1(n199), .C0(n361), .Y(
        n285) );
  AOI222XL U242 ( .A0(n357), .A1(n273), .B0(n280), .B1(gray_data[4]), .C0(n181), .C1(n15), .Y(n361) );
  OAI221XL U243 ( .A0(n108), .A1(n249), .B0(n164), .B1(n199), .C0(n362), .Y(
        n284) );
  AOI222XL U244 ( .A0(n357), .A1(n275), .B0(n280), .B1(gray_data[5]), .C0(n181), .C1(n18), .Y(n362) );
  OAI221XL U245 ( .A0(n107), .A1(n249), .B0(n163), .B1(n199), .C0(n363), .Y(
        n283) );
  AOI222XL U246 ( .A0(n357), .A1(n277), .B0(n280), .B1(gray_data[6]), .C0(n181), .C1(n10), .Y(n363) );
  OAI221XL U247 ( .A0(n106), .A1(n249), .B0(n162), .B1(n199), .C0(n364), .Y(
        n282) );
  AOI222XL U248 ( .A0(n357), .A1(n279), .B0(n280), .B1(gray_data[7]), .C0(n181), .C1(n19), .Y(n364) );
  NAND3X1 U249 ( .A(n281), .B(n203), .C(n205), .Y(n234) );
  NAND2X1 U250 ( .A(n182), .B(n261), .Y(n357) );
  NAND2X1 U251 ( .A(n259), .B(n201), .Y(n261) );
  NAND2X1 U252 ( .A(n198), .B(n365), .Y(n201) );
  NAND3X1 U253 ( .A(gray_req), .B(n199), .C(fill_right), .Y(n198) );
  OA21XL U254 ( .A0(n205), .A1(n260), .B0(n203), .Y(n182) );
  OAI2BB1X1 U255 ( .A0N(fill_down), .A1N(gray_req), .B0(n281), .Y(n203) );
  CLKINVX1 U256 ( .A(n260), .Y(n281) );
  NAND2X1 U257 ( .A(n199), .B(n366), .Y(n260) );
  OAI21XL U258 ( .A0(fill_left), .A1(fill_right), .B0(gray_req), .Y(n366) );
  CLKINVX1 U259 ( .A(n197), .Y(n205) );
  NAND3X1 U260 ( .A(cycle[0]), .B(n354), .C(cycle[1]), .Y(n197) );
  CLKINVX1 U261 ( .A(n365), .Y(n204) );
  NAND4BX1 U262 ( .AN(fill_right), .B(fill_left), .C(gray_req), .D(n199), .Y(
        n365) );
  CLKINVX1 U263 ( .A(n259), .Y(n262) );
  NAND3X1 U264 ( .A(n354), .B(n355), .C(cycle[0]), .Y(n259) );
  CLKINVX1 U265 ( .A(cycle[1]), .Y(n355) );
  NOR2X1 U266 ( .A(cycle[2]), .B(cycle[3]), .Y(n354) );
  OAI211X1 U267 ( .A0(n130), .A1(n232), .B0(n367), .C0(n368), .Y(lbp_data[7])
         );
  NAND3X1 U268 ( .A(n369), .B(n23), .C(n155), .Y(n368) );
  OAI211X1 U269 ( .A0(n155), .A1(n23), .B0(n369), .C0(n370), .Y(n367) );
  OAI211X1 U270 ( .A0(n132), .A1(n229), .B0(n371), .C0(n372), .Y(n370) );
  NAND3BX1 U271 ( .AN(n133), .B(n373), .C(n157), .Y(n372) );
  OAI211X1 U272 ( .A0(n374), .A1(n375), .B0(n373), .C0(n376), .Y(n371) );
  AOI2BB2X1 U273 ( .B0(n133), .B1(n227), .A0N(n375), .A1N(n377), .Y(n376) );
  AOI21X1 U274 ( .A0(n223), .A1(n135), .B0(n378), .Y(n377) );
  NAND2X1 U275 ( .A(n132), .B(n229), .Y(n373) );
  OAI32X1 U276 ( .A0(n223), .A1(n135), .A2(n378), .B0(n134), .B1(n225), .Y(
        n375) );
  AND2X1 U277 ( .A(n134), .B(n225), .Y(n378) );
  OA21XL U278 ( .A0(n160), .A1(n27), .B0(n379), .Y(n374) );
  OAI211X1 U279 ( .A0(n8), .A1(n136), .B0(n137), .C0(n2), .Y(n379) );
  NAND2X1 U280 ( .A(n130), .B(n232), .Y(n369) );
  OAI211X1 U281 ( .A0(n122), .A1(n232), .B0(n380), .C0(n381), .Y(lbp_data[6])
         );
  NAND3X1 U282 ( .A(n382), .B(n21), .C(n155), .Y(n381) );
  OAI211X1 U283 ( .A0(n155), .A1(n21), .B0(n382), .C0(n383), .Y(n380) );
  OAI211X1 U284 ( .A0(n124), .A1(n229), .B0(n384), .C0(n385), .Y(n383) );
  NAND3BX1 U285 ( .AN(n125), .B(n386), .C(n157), .Y(n385) );
  OAI211X1 U286 ( .A0(n387), .A1(n388), .B0(n386), .C0(n389), .Y(n384) );
  AOI2BB2X1 U287 ( .B0(n125), .B1(n227), .A0N(n388), .A1N(n390), .Y(n389) );
  AOI21X1 U288 ( .A0(n223), .A1(n127), .B0(n391), .Y(n390) );
  NAND2X1 U289 ( .A(n124), .B(n229), .Y(n386) );
  OAI32X1 U290 ( .A0(n223), .A1(n127), .A2(n391), .B0(n126), .B1(n225), .Y(
        n388) );
  NOR2BX1 U291 ( .AN(n126), .B(n158), .Y(n391) );
  OA21XL U292 ( .A0(n160), .A1(n26), .B0(n392), .Y(n387) );
  OAI211X1 U293 ( .A0(n8), .A1(n128), .B0(n129), .C0(n2), .Y(n392) );
  NAND2X1 U294 ( .A(n122), .B(n232), .Y(n382) );
  OAI211X1 U295 ( .A0(n114), .A1(n232), .B0(n393), .C0(n394), .Y(lbp_data[5])
         );
  NAND3X1 U296 ( .A(n395), .B(n22), .C(n155), .Y(n394) );
  OAI211X1 U297 ( .A0(n155), .A1(n22), .B0(n395), .C0(n396), .Y(n393) );
  OAI211X1 U298 ( .A0(n116), .A1(n229), .B0(n397), .C0(n398), .Y(n396) );
  NAND3BX1 U299 ( .AN(n117), .B(n399), .C(n157), .Y(n398) );
  OAI211X1 U300 ( .A0(n400), .A1(n401), .B0(n399), .C0(n402), .Y(n397) );
  AOI2BB2X1 U301 ( .B0(n117), .B1(n227), .A0N(n401), .A1N(n403), .Y(n402) );
  AOI21X1 U302 ( .A0(n223), .A1(n119), .B0(n404), .Y(n403) );
  NAND2X1 U303 ( .A(n116), .B(n229), .Y(n399) );
  OAI32X1 U304 ( .A0(n223), .A1(n119), .A2(n404), .B0(n118), .B1(n225), .Y(
        n401) );
  AND2X1 U305 ( .A(n118), .B(n225), .Y(n404) );
  OA21XL U306 ( .A0(n160), .A1(n17), .B0(n405), .Y(n400) );
  OAI211X1 U307 ( .A0(n8), .A1(n120), .B0(n121), .C0(n2), .Y(n405) );
  NAND2X1 U308 ( .A(n114), .B(n232), .Y(n395) );
  OAI211X1 U309 ( .A0(n138), .A1(n232), .B0(n406), .C0(n407), .Y(lbp_data[4])
         );
  NAND3X1 U310 ( .A(n408), .B(n10), .C(n155), .Y(n407) );
  OAI211X1 U311 ( .A0(n155), .A1(n10), .B0(n408), .C0(n409), .Y(n406) );
  OAI211X1 U312 ( .A0(n140), .A1(n229), .B0(n410), .C0(n411), .Y(n409) );
  NAND3X1 U313 ( .A(n412), .B(n15), .C(n157), .Y(n411) );
  OAI211X1 U314 ( .A0(n413), .A1(n414), .B0(n412), .C0(n415), .Y(n410) );
  AOI22X1 U315 ( .A0(n416), .A1(n417), .B0(n141), .B1(n227), .Y(n415) );
  OAI21XL U316 ( .A0(n159), .A1(n6), .B0(n418), .Y(n417) );
  NAND2X1 U317 ( .A(n140), .B(n229), .Y(n412) );
  CLKINVX1 U318 ( .A(n416), .Y(n414) );
  AOI32X1 U319 ( .A0(n159), .A1(n6), .A2(n418), .B0(n14), .B1(n158), .Y(n416)
         );
  NAND2X1 U320 ( .A(n142), .B(n225), .Y(n418) );
  AOI2BB1X1 U321 ( .A0N(n160), .A1N(n7), .B0(n419), .Y(n413) );
  AOI211X1 U322 ( .A0(n160), .A1(n7), .B0(n16), .C0(n161), .Y(n419) );
  NAND2X1 U323 ( .A(n138), .B(n232), .Y(n408) );
  OAI211X1 U324 ( .A0(n162), .A1(n232), .B0(n420), .C0(n421), .Y(lbp_data[3])
         );
  NAND3X1 U325 ( .A(n422), .B(n20), .C(n155), .Y(n421) );
  OAI211X1 U326 ( .A0(n155), .A1(n20), .B0(n422), .C0(n423), .Y(n420) );
  OAI211X1 U327 ( .A0(n164), .A1(n229), .B0(n424), .C0(n425), .Y(n423) );
  NAND3BX1 U328 ( .AN(n165), .B(n426), .C(n157), .Y(n425) );
  OAI211X1 U329 ( .A0(n427), .A1(n428), .B0(n426), .C0(n429), .Y(n424) );
  AOI2BB2X1 U330 ( .B0(n165), .B1(n227), .A0N(n428), .A1N(n430), .Y(n429) );
  AOI21X1 U331 ( .A0(n223), .A1(n167), .B0(n431), .Y(n430) );
  NAND2X1 U332 ( .A(n164), .B(n229), .Y(n426) );
  OAI32X1 U333 ( .A0(n223), .A1(n167), .A2(n431), .B0(n166), .B1(n225), .Y(
        n428) );
  AND2X1 U334 ( .A(n166), .B(n225), .Y(n431) );
  OA21XL U335 ( .A0(n160), .A1(n25), .B0(n432), .Y(n427) );
  OAI211X1 U336 ( .A0(n8), .A1(n168), .B0(n169), .C0(n2), .Y(n432) );
  NAND2X1 U337 ( .A(n162), .B(n232), .Y(n422) );
  OAI211X1 U338 ( .A0(n146), .A1(n232), .B0(n433), .C0(n434), .Y(lbp_data[2])
         );
  NAND3X1 U339 ( .A(n435), .B(n277), .C(n155), .Y(n434) );
  OAI211X1 U340 ( .A0(n155), .A1(n277), .B0(n435), .C0(n436), .Y(n433) );
  OAI211X1 U341 ( .A0(n148), .A1(n229), .B0(n437), .C0(n438), .Y(n436) );
  NAND3X1 U342 ( .A(n439), .B(n273), .C(n157), .Y(n438) );
  OAI211X1 U343 ( .A0(n440), .A1(n441), .B0(n439), .C0(n442), .Y(n437) );
  AOI22X1 U344 ( .A0(n443), .A1(n444), .B0(n149), .B1(n227), .Y(n442) );
  OAI21XL U345 ( .A0(n159), .A1(n269), .B0(n445), .Y(n444) );
  NAND2X1 U346 ( .A(n148), .B(n229), .Y(n439) );
  CLKINVX1 U347 ( .A(n443), .Y(n441) );
  AOI32X1 U348 ( .A0(n159), .A1(n269), .A2(n445), .B0(n271), .B1(n158), .Y(
        n443) );
  NAND2X1 U349 ( .A(n150), .B(n225), .Y(n445) );
  AOI2BB1X1 U350 ( .A0N(n160), .A1N(n267), .B0(n446), .Y(n440) );
  AOI211X1 U351 ( .A0(n160), .A1(n267), .B0(n264), .C0(n161), .Y(n446) );
  NAND2X1 U352 ( .A(n146), .B(n232), .Y(n435) );
  OAI211X1 U353 ( .A0(n106), .A1(n232), .B0(n447), .C0(n448), .Y(lbp_data[1])
         );
  NAND3X1 U354 ( .A(n449), .B(n9), .C(n155), .Y(n448) );
  OAI211X1 U355 ( .A0(n155), .A1(n9), .B0(n449), .C0(n450), .Y(n447) );
  OAI211X1 U356 ( .A0(n108), .A1(n229), .B0(n451), .C0(n452), .Y(n450) );
  NAND3X1 U357 ( .A(n453), .B(n12), .C(n157), .Y(n452) );
  OAI211X1 U358 ( .A0(n454), .A1(n455), .B0(n453), .C0(n456), .Y(n451) );
  AOI22X1 U359 ( .A0(n457), .A1(n458), .B0(n109), .B1(n227), .Y(n456) );
  OAI21XL U360 ( .A0(n159), .A1(n4), .B0(n459), .Y(n458) );
  NAND2X1 U361 ( .A(n108), .B(n229), .Y(n453) );
  CLKINVX1 U362 ( .A(n457), .Y(n455) );
  AOI32X1 U363 ( .A0(n159), .A1(n4), .A2(n459), .B0(n11), .B1(n158), .Y(n457)
         );
  NAND2X1 U364 ( .A(n110), .B(n225), .Y(n459) );
  AOI2BB1X1 U365 ( .A0N(n160), .A1N(n5), .B0(n460), .Y(n454) );
  AOI211X1 U366 ( .A0(n160), .A1(n5), .B0(n13), .C0(n161), .Y(n460) );
  NAND2X1 U367 ( .A(n106), .B(n232), .Y(n449) );
  OAI211X1 U368 ( .A0(n474), .A1(n232), .B0(n461), .C0(n462), .Y(lbp_data[0])
         );
  NAND3X1 U369 ( .A(n463), .B(n24), .C(n155), .Y(n462) );
  OAI211X1 U370 ( .A0(n155), .A1(n24), .B0(n463), .C0(n464), .Y(n461) );
  OAI211X1 U371 ( .A0(n480), .A1(n229), .B0(n465), .C0(n466), .Y(n464) );
  NAND3BX1 U372 ( .AN(n479), .B(n467), .C(n157), .Y(n466) );
  OAI211X1 U373 ( .A0(n468), .A1(n469), .B0(n467), .C0(n470), .Y(n465) );
  AOI2BB2X1 U374 ( .B0(n479), .B1(n227), .A0N(n469), .A1N(n471), .Y(n470) );
  AOI21X1 U375 ( .A0(n223), .A1(n476), .B0(n472), .Y(n471) );
  NAND2X1 U376 ( .A(n480), .B(n229), .Y(n467) );
  OAI32X1 U377 ( .A0(n223), .A1(n476), .A2(n472), .B0(n481), .B1(n225), .Y(
        n469) );
  AND2X1 U378 ( .A(n481), .B(n225), .Y(n472) );
  OA21XL U379 ( .A0(n160), .A1(n28), .B0(n473), .Y(n468) );
  OAI211X1 U380 ( .A0(n8), .A1(n478), .B0(n477), .C0(n2), .Y(n473) );
  NAND2X1 U381 ( .A(n474), .B(n232), .Y(n463) );
  CLKBUFX20 U2 ( .A(n40), .Y(n33) );
  CLKBUFX20 U27 ( .A(n40), .Y(n34) );
  CLKBUFX20 U28 ( .A(n40), .Y(n35) );
  CLKBUFX20 U29 ( .A(n39), .Y(n36) );
  CLKBUFX20 U30 ( .A(n39), .Y(n37) );
  CLKBUFX20 U31 ( .A(n39), .Y(n38) );
  CLKBUFX20 U32 ( .A(test_se), .Y(n39) );
  CLKBUFX20 U33 ( .A(test_se), .Y(n40) );
endmodule


module TMR_14 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_13 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_12 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_11 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_10 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_9 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_8 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_7 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_6 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_5 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_4 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_3 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_2 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module TMR_1 ( Y, A, B, C );
  input A, B, C;
  output Y;
  wire   n2;

  OAI2BB1X1 U1 ( .A0N(A), .A1N(B), .B0(n2), .Y(Y) );
  OAI21XL U2 ( .A0(A), .A1(B), .B0(C), .Y(n2) );
endmodule


module LAC_TMR2_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LAC_TMR2_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LAC_TMR2_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LAC_TMR2_DW01_inc_3 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LAC_TMR2_DW01_inc_4 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LAC_TMR2_DW01_inc_5 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LAC_TMR2_test_1 ( clk, reset, lbp_addr, lbp_addr_en, lbp_valid, 
        fill_right, fill_down, fill_left, test_si, test_so, test_se );
  output [13:0] lbp_addr;
  input clk, reset, lbp_addr_en, lbp_valid, test_si, test_se;
  output fill_right, fill_down, fill_left, test_so;
  wire   N13, N14, N15, N16, N17, N18, N19, N22, N23, N24, N25, N26, N27, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N61,
         N62, N63, N64, N65, N66, N67, N70, N71, N72, N73, N74, N75, N77, N78,
         N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N109,
         N110, N111, N112, N113, N114, N115, N118, N119, N120, N121, N122,
         N123, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, n48, n49, n50, n72, n92, n97, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n98, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;
  wire   [6:0] lbp_addr_row0;
  wire   [6:0] lbp_addr_col0;
  wire   [6:0] lbp_addr_row1;
  wire   [6:0] lbp_addr_col1;
  wire   [6:0] lbp_addr_row2;
  wire   [6:0] lbp_addr_col2;

  SDFFRX1 lbp_addr_row2_reg_6_ ( .D(N138), .SI(n146), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row2[6]), .QN(test_so) );
  SDFFRX1 lbp_addr_row1_reg_6_ ( .D(N90), .SI(n153), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row1[6]), .QN(n152) );
  SDFFRX1 lbp_addr_row0_reg_6_ ( .D(N42), .SI(n160), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row0[6]), .QN(n159) );
  SDFFRX1 lbp_addr_row2_reg_4_ ( .D(N136), .SI(n148), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row2[4]), .QN(n147) );
  SDFFRX1 lbp_addr_row2_reg_5_ ( .D(N137), .SI(n147), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row2[5]), .QN(n146) );
  SDFFRX1 lbp_addr_row1_reg_5_ ( .D(N89), .SI(n154), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_row1[5]), .QN(n153) );
  SDFFRX1 lbp_addr_row0_reg_5_ ( .D(N41), .SI(n161), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row0[5]), .QN(n160) );
  SDFFRX1 fill_down_reg ( .D(n72), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        n12), .Q(fill_down), .QN(n48) );
  SDFFRX1 lbp_addr_col2_reg_6_ ( .D(n136), .SI(n167), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col2[6]), .QN(n166) );
  SDFFRX1 lbp_addr_col1_reg_6_ ( .D(n129), .SI(n172), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col1[6]), .QN(n171) );
  SDFFRX1 lbp_addr_col0_reg_6_ ( .D(n122), .SI(n177), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col0[6]), .QN(n176) );
  SDFFRX1 fill_left_reg ( .D(n97), .SI(n48), .SE(test_se), .CK(clk), .RN(n11), 
        .Q(fill_left), .QN(n50) );
  SDFFRX1 fill_right_reg ( .D(n92), .SI(n50), .SE(test_se), .CK(clk), .RN(n11), 
        .Q(fill_right), .QN(n49) );
  SDFFSX1 lbp_addr_row2_reg_0_ ( .D(N132), .SI(n152), .SE(test_se), .CK(clk), 
        .SN(n14), .Q(lbp_addr_row2[0]), .QN(n151) );
  SDFFRX1 lbp_addr_row2_reg_1_ ( .D(N133), .SI(n151), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row2[1]), .QN(n150) );
  SDFFRX1 lbp_addr_row2_reg_2_ ( .D(N134), .SI(n150), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row2[2]), .QN(n149) );
  SDFFRX1 lbp_addr_row2_reg_3_ ( .D(N135), .SI(n149), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row2[3]), .QN(n148) );
  SDFFSX1 lbp_addr_row1_reg_0_ ( .D(N84), .SI(n159), .SE(test_se), .CK(clk), 
        .SN(n14), .Q(lbp_addr_row1[0]), .QN(n158) );
  SDFFRX1 lbp_addr_col2_reg_1_ ( .D(n141), .SI(n5), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_col2[1]), .QN(n170) );
  SDFFSX1 lbp_addr_row0_reg_0_ ( .D(N36), .SI(n166), .SE(test_se), .CK(clk), 
        .SN(n14), .Q(lbp_addr_row0[0]), .QN(n165) );
  SDFFRX1 lbp_addr_col2_reg_2_ ( .D(n140), .SI(n170), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_col2[2]), .QN(n169) );
  SDFFRX1 lbp_addr_row1_reg_1_ ( .D(N85), .SI(n158), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_row1[1]), .QN(n157) );
  SDFFRX1 lbp_addr_row1_reg_2_ ( .D(N86), .SI(n157), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_row1[2]), .QN(n156) );
  SDFFRX1 lbp_addr_row1_reg_3_ ( .D(N87), .SI(n156), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_row1[3]), .QN(n155) );
  SDFFRX1 lbp_addr_row1_reg_4_ ( .D(N88), .SI(n155), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_row1[4]), .QN(n154) );
  SDFFRX1 lbp_addr_col2_reg_3_ ( .D(n139), .SI(n169), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_col2[3]), .QN(n168) );
  SDFFRX1 lbp_addr_row0_reg_1_ ( .D(N37), .SI(n165), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row0[1]), .QN(n164) );
  SDFFRX1 lbp_addr_row0_reg_2_ ( .D(N38), .SI(n164), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row0[2]), .QN(n163) );
  SDFFRX1 lbp_addr_row0_reg_3_ ( .D(N39), .SI(n163), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row0[3]), .QN(n162) );
  SDFFRX1 lbp_addr_row0_reg_4_ ( .D(N40), .SI(n162), .SE(test_se), .CK(clk), 
        .RN(n13), .Q(lbp_addr_row0[4]), .QN(n161) );
  SDFFRX1 lbp_addr_col2_reg_5_ ( .D(n137), .SI(n6), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col2[5]), .QN(n167) );
  SDFFRX1 lbp_addr_col1_reg_1_ ( .D(n134), .SI(n4), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col1[1]), .QN(n175) );
  SDFFRX1 lbp_addr_col1_reg_2_ ( .D(n133), .SI(n175), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col1[2]), .QN(n174) );
  SDFFRX1 lbp_addr_col0_reg_1_ ( .D(n127), .SI(n3), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col0[1]), .QN(n180) );
  SDFFRX1 lbp_addr_col1_reg_3_ ( .D(n132), .SI(n174), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col1[3]), .QN(n173) );
  SDFFRX1 lbp_addr_col0_reg_2_ ( .D(n126), .SI(n180), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col0[2]), .QN(n179) );
  SDFFRX1 lbp_addr_col0_reg_3_ ( .D(n125), .SI(n179), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_col0[3]), .QN(n178) );
  SDFFRX1 lbp_addr_col1_reg_5_ ( .D(n130), .SI(n2), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col1[5]), .QN(n172) );
  SDFFRX1 lbp_addr_col0_reg_5_ ( .D(n123), .SI(n1), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_col0[5]), .QN(n177) );
  SDFFRX1 lbp_addr_col2_reg_4_ ( .D(n138), .SI(n168), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_col2[4]), .QN(n6) );
  SDFFSX1 lbp_addr_col2_reg_0_ ( .D(n142), .SI(n171), .SE(test_se), .CK(clk), 
        .SN(n14), .Q(lbp_addr_col2[0]), .QN(n5) );
  SDFFRX1 lbp_addr_col1_reg_4_ ( .D(n131), .SI(n173), .SE(test_se), .CK(clk), 
        .RN(n11), .Q(lbp_addr_col1[4]), .QN(n2) );
  SDFFRX1 lbp_addr_col0_reg_4_ ( .D(n124), .SI(n178), .SE(test_se), .CK(clk), 
        .RN(n12), .Q(lbp_addr_col0[4]), .QN(n1) );
  SDFFSX1 lbp_addr_col1_reg_0_ ( .D(n135), .SI(n176), .SE(test_se), .CK(clk), 
        .SN(n14), .Q(lbp_addr_col1[0]), .QN(n4) );
  SDFFSX1 lbp_addr_col0_reg_0_ ( .D(n128), .SI(n49), .SE(test_se), .CK(clk), 
        .SN(n14), .Q(lbp_addr_col0[0]), .QN(n3) );
  NAND2BX1 U3 ( .AN(n105), .B(n106), .Y(n7) );
  NAND2BX1 U4 ( .AN(n105), .B(n106), .Y(n32) );
  NOR4X1 U5 ( .A(n116), .B(n112), .C(n33), .D(n31), .Y(n105) );
  CLKINVX1 U6 ( .A(n115), .Y(n31) );
  CLKINVX1 U7 ( .A(n114), .Y(n33) );
  CLKBUFX3 U8 ( .A(n9), .Y(n13) );
  CLKBUFX3 U9 ( .A(n9), .Y(n12) );
  CLKBUFX3 U11 ( .A(n9), .Y(n11) );
  CLKBUFX3 U14 ( .A(n143), .Y(n9) );
  CLKBUFX3 U17 ( .A(n10), .Y(n14) );
  CLKBUFX3 U19 ( .A(n143), .Y(n10) );
  OR2X1 U20 ( .A(lbp_addr_col2[1]), .B(lbp_addr_col2[0]), .Y(n15) );
  OR2X1 U21 ( .A(lbp_addr_col0[1]), .B(lbp_addr_col0[0]), .Y(n25) );
  OR2X1 U22 ( .A(lbp_addr_col1[1]), .B(lbp_addr_col1[0]), .Y(n20) );
  NAND3X1 U23 ( .A(n114), .B(n115), .C(n106), .Y(n8) );
  OAI2BB1X1 U24 ( .A0N(lbp_addr_col2[0]), .A1N(lbp_addr_col2[1]), .B0(n15), 
        .Y(N118) );
  OR2X1 U25 ( .A(n15), .B(lbp_addr_col2[2]), .Y(n16) );
  OAI2BB1X1 U26 ( .A0N(n15), .A1N(lbp_addr_col2[2]), .B0(n16), .Y(N119) );
  NOR2X1 U27 ( .A(n16), .B(lbp_addr_col2[3]), .Y(n17) );
  AO21X1 U28 ( .A0(n16), .A1(lbp_addr_col2[3]), .B0(n17), .Y(N120) );
  NAND2X1 U29 ( .A(n17), .B(n6), .Y(n18) );
  OAI21XL U30 ( .A0(n17), .A1(n6), .B0(n18), .Y(N121) );
  XNOR2X1 U31 ( .A(lbp_addr_col2[5]), .B(n18), .Y(N122) );
  NOR2X1 U32 ( .A(lbp_addr_col2[5]), .B(n18), .Y(n19) );
  XOR2X1 U33 ( .A(lbp_addr_col2[6]), .B(n19), .Y(N123) );
  OAI2BB1X1 U34 ( .A0N(lbp_addr_col1[0]), .A1N(lbp_addr_col1[1]), .B0(n20), 
        .Y(N70) );
  OR2X1 U35 ( .A(n20), .B(lbp_addr_col1[2]), .Y(n21) );
  OAI2BB1X1 U36 ( .A0N(n20), .A1N(lbp_addr_col1[2]), .B0(n21), .Y(N71) );
  NOR2X1 U37 ( .A(n21), .B(lbp_addr_col1[3]), .Y(n22) );
  AO21X1 U38 ( .A0(n21), .A1(lbp_addr_col1[3]), .B0(n22), .Y(N72) );
  NAND2X1 U39 ( .A(n22), .B(n2), .Y(n23) );
  OAI21XL U40 ( .A0(n22), .A1(n2), .B0(n23), .Y(N73) );
  XNOR2X1 U41 ( .A(lbp_addr_col1[5]), .B(n23), .Y(N74) );
  NOR2X1 U42 ( .A(lbp_addr_col1[5]), .B(n23), .Y(n24) );
  XOR2X1 U43 ( .A(lbp_addr_col1[6]), .B(n24), .Y(N75) );
  OAI2BB1X1 U44 ( .A0N(lbp_addr_col0[0]), .A1N(lbp_addr_col0[1]), .B0(n25), 
        .Y(N22) );
  OR2X1 U45 ( .A(n25), .B(lbp_addr_col0[2]), .Y(n26) );
  OAI2BB1X1 U46 ( .A0N(n25), .A1N(lbp_addr_col0[2]), .B0(n26), .Y(N23) );
  NOR2X1 U47 ( .A(n26), .B(lbp_addr_col0[3]), .Y(n27) );
  AO21X1 U48 ( .A0(n26), .A1(lbp_addr_col0[3]), .B0(n27), .Y(N24) );
  NAND2X1 U49 ( .A(n27), .B(n1), .Y(n28) );
  OAI21XL U50 ( .A0(n27), .A1(n1), .B0(n28), .Y(N25) );
  XNOR2X1 U51 ( .A(lbp_addr_col0[5]), .B(n28), .Y(N26) );
  NOR2X1 U52 ( .A(lbp_addr_col0[5]), .B(n28), .Y(n29) );
  XOR2X1 U53 ( .A(lbp_addr_col0[6]), .B(n29), .Y(N27) );
  CLKINVX1 U54 ( .A(n30), .Y(n122) );
  AOI222XL U55 ( .A0(N19), .A1(n31), .B0(n7), .B1(lbp_addr_col0[6]), .C0(N27), 
        .C1(n33), .Y(n30) );
  CLKINVX1 U56 ( .A(n34), .Y(n123) );
  AOI222XL U57 ( .A0(N18), .A1(n31), .B0(n32), .B1(lbp_addr_col0[5]), .C0(N26), 
        .C1(n33), .Y(n34) );
  CLKINVX1 U58 ( .A(n35), .Y(n124) );
  AOI222XL U59 ( .A0(N17), .A1(n31), .B0(n7), .B1(lbp_addr_col0[4]), .C0(N25), 
        .C1(n33), .Y(n35) );
  CLKINVX1 U60 ( .A(n36), .Y(n125) );
  AOI222XL U61 ( .A0(N16), .A1(n31), .B0(n32), .B1(lbp_addr_col0[3]), .C0(N24), 
        .C1(n33), .Y(n36) );
  CLKINVX1 U62 ( .A(n37), .Y(n126) );
  AOI222XL U63 ( .A0(N15), .A1(n31), .B0(n7), .B1(lbp_addr_col0[2]), .C0(N23), 
        .C1(n33), .Y(n37) );
  CLKINVX1 U64 ( .A(n38), .Y(n127) );
  AOI222XL U65 ( .A0(N14), .A1(n31), .B0(n32), .B1(lbp_addr_col0[1]), .C0(N22), 
        .C1(n33), .Y(n38) );
  CLKINVX1 U66 ( .A(n39), .Y(n128) );
  AOI222XL U67 ( .A0(N13), .A1(n31), .B0(n7), .B1(lbp_addr_col0[0]), .C0(n3), 
        .C1(n33), .Y(n39) );
  CLKINVX1 U68 ( .A(n40), .Y(n129) );
  AOI222XL U69 ( .A0(N67), .A1(n31), .B0(n32), .B1(lbp_addr_col1[6]), .C0(N75), 
        .C1(n33), .Y(n40) );
  CLKINVX1 U70 ( .A(n41), .Y(n130) );
  AOI222XL U71 ( .A0(N66), .A1(n31), .B0(n7), .B1(lbp_addr_col1[5]), .C0(N74), 
        .C1(n33), .Y(n41) );
  CLKINVX1 U72 ( .A(n42), .Y(n131) );
  AOI222XL U73 ( .A0(N65), .A1(n31), .B0(n32), .B1(lbp_addr_col1[4]), .C0(N73), 
        .C1(n33), .Y(n42) );
  CLKINVX1 U74 ( .A(n43), .Y(n132) );
  AOI222XL U75 ( .A0(N64), .A1(n31), .B0(n7), .B1(lbp_addr_col1[3]), .C0(N72), 
        .C1(n33), .Y(n43) );
  CLKINVX1 U76 ( .A(n44), .Y(n133) );
  AOI222XL U77 ( .A0(N63), .A1(n31), .B0(n32), .B1(lbp_addr_col1[2]), .C0(N71), 
        .C1(n33), .Y(n44) );
  CLKINVX1 U78 ( .A(n45), .Y(n134) );
  AOI222XL U79 ( .A0(N62), .A1(n31), .B0(n7), .B1(lbp_addr_col1[1]), .C0(N70), 
        .C1(n33), .Y(n45) );
  CLKINVX1 U80 ( .A(n46), .Y(n135) );
  AOI222XL U81 ( .A0(N61), .A1(n31), .B0(n32), .B1(lbp_addr_col1[0]), .C0(n4), 
        .C1(n33), .Y(n46) );
  CLKINVX1 U82 ( .A(n47), .Y(n136) );
  AOI222XL U83 ( .A0(N115), .A1(n31), .B0(n7), .B1(lbp_addr_col2[6]), .C0(N123), .C1(n33), .Y(n47) );
  CLKINVX1 U84 ( .A(n98), .Y(n137) );
  AOI222XL U85 ( .A0(N114), .A1(n31), .B0(n32), .B1(lbp_addr_col2[5]), .C0(
        N122), .C1(n33), .Y(n98) );
  CLKINVX1 U86 ( .A(n100), .Y(n138) );
  AOI222XL U87 ( .A0(N113), .A1(n31), .B0(n7), .B1(lbp_addr_col2[4]), .C0(N121), .C1(n33), .Y(n100) );
  CLKINVX1 U88 ( .A(n101), .Y(n139) );
  AOI222XL U89 ( .A0(N112), .A1(n31), .B0(n32), .B1(lbp_addr_col2[3]), .C0(
        N120), .C1(n33), .Y(n101) );
  CLKINVX1 U90 ( .A(n102), .Y(n140) );
  AOI222XL U91 ( .A0(N111), .A1(n31), .B0(n7), .B1(lbp_addr_col2[2]), .C0(N119), .C1(n33), .Y(n102) );
  CLKINVX1 U92 ( .A(n103), .Y(n141) );
  AOI222XL U93 ( .A0(N110), .A1(n31), .B0(n32), .B1(lbp_addr_col2[1]), .C0(
        N118), .C1(n33), .Y(n103) );
  CLKINVX1 U94 ( .A(n104), .Y(n142) );
  AOI222XL U95 ( .A0(N109), .A1(n31), .B0(n7), .B1(lbp_addr_col2[0]), .C0(n5), 
        .C1(n33), .Y(n104) );
  CLKINVX1 U96 ( .A(reset), .Y(n143) );
  MXI2X1 U97 ( .A(n50), .B(n107), .S0(lbp_valid), .Y(n97) );
  NAND2X1 U98 ( .A(n108), .B(n109), .Y(n107) );
  MXI2X1 U99 ( .A(n49), .B(n110), .S0(lbp_valid), .Y(n92) );
  NAND2X1 U100 ( .A(lbp_addr[7]), .B(n111), .Y(n110) );
  MXI2X1 U101 ( .A(n48), .B(n112), .S0(lbp_valid), .Y(n72) );
  AO22X1 U102 ( .A0(N83), .A1(n105), .B0(n8), .B1(lbp_addr_row1[6]), .Y(N90)
         );
  AO22X1 U148 ( .A0(N82), .A1(n105), .B0(n113), .B1(lbp_addr_row1[5]), .Y(N89)
         );
  AO22X1 U149 ( .A0(N81), .A1(n105), .B0(n8), .B1(lbp_addr_row1[4]), .Y(N88)
         );
  AO22X1 U150 ( .A0(N80), .A1(n105), .B0(n113), .B1(lbp_addr_row1[3]), .Y(N87)
         );
  AO22X1 U151 ( .A0(N79), .A1(n105), .B0(n8), .B1(lbp_addr_row1[2]), .Y(N86)
         );
  AO22X1 U152 ( .A0(N78), .A1(n105), .B0(n113), .B1(lbp_addr_row1[1]), .Y(N85)
         );
  AO22X1 U153 ( .A0(N77), .A1(n105), .B0(n8), .B1(lbp_addr_row1[0]), .Y(N84)
         );
  AO22X1 U154 ( .A0(N35), .A1(n105), .B0(n113), .B1(lbp_addr_row0[6]), .Y(N42)
         );
  AO22X1 U155 ( .A0(N34), .A1(n105), .B0(n8), .B1(lbp_addr_row0[5]), .Y(N41)
         );
  AO22X1 U156 ( .A0(N33), .A1(n105), .B0(n113), .B1(lbp_addr_row0[4]), .Y(N40)
         );
  AO22X1 U157 ( .A0(N32), .A1(n105), .B0(n8), .B1(lbp_addr_row0[3]), .Y(N39)
         );
  AO22X1 U158 ( .A0(N31), .A1(n105), .B0(n113), .B1(lbp_addr_row0[2]), .Y(N38)
         );
  AO22X1 U159 ( .A0(N30), .A1(n105), .B0(n8), .B1(lbp_addr_row0[1]), .Y(N37)
         );
  AO22X1 U160 ( .A0(N29), .A1(n105), .B0(n113), .B1(lbp_addr_row0[0]), .Y(N36)
         );
  AO22X1 U161 ( .A0(N131), .A1(n105), .B0(n8), .B1(lbp_addr_row2[6]), .Y(N138)
         );
  AO22X1 U162 ( .A0(N130), .A1(n105), .B0(n113), .B1(lbp_addr_row2[5]), .Y(
        N137) );
  AO22X1 U163 ( .A0(N129), .A1(n105), .B0(n8), .B1(lbp_addr_row2[4]), .Y(N136)
         );
  AO22X1 U164 ( .A0(N128), .A1(n105), .B0(n113), .B1(lbp_addr_row2[3]), .Y(
        N135) );
  AO22X1 U165 ( .A0(N127), .A1(n105), .B0(n8), .B1(lbp_addr_row2[2]), .Y(N134)
         );
  AO22X1 U166 ( .A0(N126), .A1(n105), .B0(n113), .B1(lbp_addr_row2[1]), .Y(
        N133) );
  AO22X1 U167 ( .A0(N125), .A1(n105), .B0(n8), .B1(lbp_addr_row2[0]), .Y(N132)
         );
  NAND3X1 U168 ( .A(n114), .B(n115), .C(n106), .Y(n113) );
  OAI211X1 U169 ( .A0(n112), .A1(n116), .B0(n114), .C0(n115), .Y(n106) );
  NAND3X1 U170 ( .A(lbp_addr[7]), .B(n111), .C(lbp_addr_en), .Y(n115) );
  NAND3X1 U171 ( .A(n108), .B(n109), .C(lbp_addr_en), .Y(n114) );
  CLKINVX1 U172 ( .A(lbp_addr[7]), .Y(n109) );
  CLKMX2X2 U173 ( .A(n111), .B(n108), .S0(lbp_addr[0]), .Y(n112) );
  NAND4X1 U174 ( .A(n117), .B(n118), .C(n119), .D(n120), .Y(n108) );
  NOR3X1 U175 ( .A(lbp_addr[4]), .B(lbp_addr[6]), .C(lbp_addr[5]), .Y(n120) );
  NAND4X1 U176 ( .A(lbp_addr[5]), .B(lbp_addr[4]), .C(lbp_addr[6]), .D(n121), 
        .Y(n111) );
  NOR3X1 U177 ( .A(n118), .B(n119), .C(n117), .Y(n121) );
  CLKINVX1 U178 ( .A(lbp_addr[2]), .Y(n117) );
  CLKINVX1 U179 ( .A(lbp_addr[1]), .Y(n119) );
  CLKINVX1 U180 ( .A(lbp_addr[3]), .Y(n118) );
  CLKINVX1 U181 ( .A(lbp_addr_en), .Y(n116) );
  TMR_14 T13 ( .Y(lbp_addr[13]), .A(lbp_addr_row0[6]), .B(lbp_addr_row1[6]), 
        .C(lbp_addr_row2[6]) );
  TMR_13 T12 ( .Y(lbp_addr[12]), .A(lbp_addr_row0[5]), .B(lbp_addr_row1[5]), 
        .C(lbp_addr_row2[5]) );
  TMR_12 T11 ( .Y(lbp_addr[11]), .A(lbp_addr_row0[4]), .B(lbp_addr_row1[4]), 
        .C(lbp_addr_row2[4]) );
  TMR_11 T10 ( .Y(lbp_addr[10]), .A(lbp_addr_row0[3]), .B(lbp_addr_row1[3]), 
        .C(lbp_addr_row2[3]) );
  TMR_10 T9 ( .Y(lbp_addr[9]), .A(lbp_addr_row0[2]), .B(lbp_addr_row1[2]), .C(
        lbp_addr_row2[2]) );
  TMR_9 T8 ( .Y(lbp_addr[8]), .A(lbp_addr_row0[1]), .B(lbp_addr_row1[1]), .C(
        lbp_addr_row2[1]) );
  TMR_8 T7 ( .Y(lbp_addr[7]), .A(lbp_addr_row0[0]), .B(lbp_addr_row1[0]), .C(
        lbp_addr_row2[0]) );
  TMR_7 T6 ( .Y(lbp_addr[6]), .A(lbp_addr_col0[6]), .B(lbp_addr_col1[6]), .C(
        lbp_addr_col2[6]) );
  TMR_6 T5 ( .Y(lbp_addr[5]), .A(lbp_addr_col0[5]), .B(lbp_addr_col1[5]), .C(
        lbp_addr_col2[5]) );
  TMR_5 T4 ( .Y(lbp_addr[4]), .A(lbp_addr_col0[4]), .B(lbp_addr_col1[4]), .C(
        lbp_addr_col2[4]) );
  TMR_4 T3 ( .Y(lbp_addr[3]), .A(lbp_addr_col0[3]), .B(lbp_addr_col1[3]), .C(
        lbp_addr_col2[3]) );
  TMR_3 T2 ( .Y(lbp_addr[2]), .A(lbp_addr_col0[2]), .B(lbp_addr_col1[2]), .C(
        lbp_addr_col2[2]) );
  TMR_2 T1 ( .Y(lbp_addr[1]), .A(lbp_addr_col0[1]), .B(lbp_addr_col1[1]), .C(
        lbp_addr_col2[1]) );
  TMR_1 T0 ( .Y(lbp_addr[0]), .A(lbp_addr_col0[0]), .B(lbp_addr_col1[0]), .C(
        lbp_addr_col2[0]) );
  LAC_TMR2_DW01_inc_0 U18 ( .A(lbp_addr_col0), .SUM({N19, N18, N17, N16, N15, 
        N14, N13}) );
  LAC_TMR2_DW01_inc_1 U16 ( .A(lbp_addr_row0), .SUM({N35, N34, N33, N32, N31, 
        N30, N29}) );
  LAC_TMR2_DW01_inc_2 U15 ( .A(lbp_addr_col1), .SUM({N67, N66, N65, N64, N63, 
        N62, N61}) );
  LAC_TMR2_DW01_inc_3 U13 ( .A(lbp_addr_row1), .SUM({N83, N82, N81, N80, N79, 
        N78, N77}) );
  LAC_TMR2_DW01_inc_4 U12 ( .A(lbp_addr_col2), .SUM({N115, N114, N113, N112, 
        N111, N110, N109}) );
  LAC_TMR2_DW01_inc_5 U10 ( .A(lbp_addr_row2), .SUM({N131, N130, N129, N128, 
        N127, N126, N125}) );
endmodule


module DS ( gray_addr, lbp_addr, lbp_data, gray_addr_qtr, lbp_addr_qtr, 
        lbp_data_qtr, gray_count, lbp_count );
  input [13:0] gray_addr;
  input [13:0] lbp_addr;
  input [7:0] lbp_data;
  output [3:0] gray_addr_qtr;
  output [3:0] lbp_addr_qtr;
  output [1:0] lbp_data_qtr;
  input [1:0] gray_count;
  input [1:0] lbp_count;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n1, n2, n3, n4;

  NOR2X1 U2 ( .A(n2), .B(n1), .Y(n12) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(n24) );
  NAND2X1 U4 ( .A(n21), .B(n22), .Y(lbp_addr_qtr[0]) );
  AOI22X1 U5 ( .A0(lbp_addr[12]), .A1(n11), .B0(lbp_addr[0]), .B1(n12), .Y(n22) );
  AOI22X1 U6 ( .A0(lbp_addr[4]), .A1(n13), .B0(lbp_addr[8]), .B1(n14), .Y(n21)
         );
  NAND2X1 U7 ( .A(n19), .B(n20), .Y(lbp_addr_qtr[1]) );
  AOI22X1 U8 ( .A0(lbp_addr[13]), .A1(n11), .B0(lbp_addr[1]), .B1(n12), .Y(n20) );
  AOI22X1 U9 ( .A0(lbp_addr[5]), .A1(n13), .B0(lbp_addr[9]), .B1(n14), .Y(n19)
         );
  NAND2X1 U10 ( .A(n30), .B(n31), .Y(gray_addr_qtr[0]) );
  AOI32X1 U11 ( .A0(n3), .A1(n4), .A2(gray_addr[12]), .B0(gray_addr[8]), .B1(
        n25), .Y(n31) );
  AOI22X1 U12 ( .A0(gray_addr[4]), .A1(n26), .B0(gray_addr[0]), .B1(n24), .Y(
        n30) );
  NAND2X1 U13 ( .A(n28), .B(n29), .Y(gray_addr_qtr[1]) );
  AOI32X1 U14 ( .A0(n3), .A1(n4), .A2(gray_addr[13]), .B0(gray_addr[9]), .B1(
        n25), .Y(n29) );
  AOI22X1 U15 ( .A0(gray_addr[5]), .A1(n26), .B0(gray_addr[1]), .B1(n24), .Y(
        n28) );
  CLKINVX1 U16 ( .A(n27), .Y(gray_addr_qtr[2]) );
  AOI222XL U17 ( .A0(gray_addr[2]), .A1(n24), .B0(gray_addr[10]), .B1(n25), 
        .C0(gray_addr[6]), .C1(n26), .Y(n27) );
  CLKINVX1 U18 ( .A(n23), .Y(gray_addr_qtr[3]) );
  AOI222XL U19 ( .A0(gray_addr[3]), .A1(n24), .B0(gray_addr[11]), .B1(n25), 
        .C0(gray_addr[7]), .C1(n26), .Y(n23) );
  CLKINVX1 U20 ( .A(n18), .Y(lbp_addr_qtr[2]) );
  AOI222XL U21 ( .A0(lbp_addr[10]), .A1(n14), .B0(lbp_addr[2]), .B1(n12), .C0(
        lbp_addr[6]), .C1(n13), .Y(n18) );
  CLKINVX1 U22 ( .A(n17), .Y(lbp_addr_qtr[3]) );
  AOI222XL U23 ( .A0(lbp_addr[11]), .A1(n14), .B0(lbp_addr[3]), .B1(n12), .C0(
        lbp_addr[7]), .C1(n13), .Y(n17) );
  NOR2X1 U24 ( .A(n2), .B(lbp_count[0]), .Y(n13) );
  NOR2X1 U25 ( .A(n1), .B(lbp_count[1]), .Y(n14) );
  NOR2X1 U26 ( .A(lbp_count[0]), .B(lbp_count[1]), .Y(n11) );
  NOR2X1 U27 ( .A(n4), .B(gray_count[0]), .Y(n26) );
  CLKINVX1 U28 ( .A(lbp_count[0]), .Y(n1) );
  CLKINVX1 U29 ( .A(gray_count[0]), .Y(n3) );
  CLKINVX1 U30 ( .A(lbp_count[1]), .Y(n2) );
  CLKINVX1 U31 ( .A(gray_count[1]), .Y(n4) );
  NOR2X1 U32 ( .A(n3), .B(gray_count[1]), .Y(n25) );
  NAND2X1 U33 ( .A(n15), .B(n16), .Y(lbp_data_qtr[0]) );
  AOI22X1 U34 ( .A0(lbp_data[6]), .A1(n11), .B0(lbp_data[0]), .B1(n12), .Y(n16) );
  AOI22X1 U35 ( .A0(lbp_data[2]), .A1(n13), .B0(lbp_data[4]), .B1(n14), .Y(n15) );
  NAND2X1 U36 ( .A(n9), .B(n10), .Y(lbp_data_qtr[1]) );
  AOI22X1 U37 ( .A0(lbp_data[7]), .A1(n11), .B0(lbp_data[1]), .B1(n12), .Y(n10) );
  AOI22X1 U38 ( .A0(lbp_data[3]), .A1(n13), .B0(lbp_data[5]), .B1(n14), .Y(n9)
         );
endmodule


module LBP ( clk, reset, gray_addr_qtr, gray_req, gray_ready, gray_data, 
        lbp_addr_qtr, lbp_valid, lbp_data_qtr, finish, test_se, SCAN_IN_1, 
        SCAN_OUT_1 );
  output [3:0] gray_addr_qtr;
  input [7:0] gray_data;
  output [3:0] lbp_addr_qtr;
  output [1:0] lbp_data_qtr;
  input clk, reset, gray_ready, test_se, SCAN_IN_1;
  output gray_req, lbp_valid, finish, SCAN_OUT_1;
  wire   initialize, gray_addr_en, lbp_addr_en, fill_right, fill_down,
         fill_left, n2, n3, n4, n5;
  wire   [13:0] lbp_addr;
  wire   [1:0] gray_count;
  wire   [1:0] lbp_count;
  wire   [3:0] cycle;
  wire   [13:0] gray_addr;
  wire   [7:0] lbp_data;

  CLKBUFX20 U1 ( .A(finish), .Y(SCAN_OUT_1) );
  FSM_test_1 finite_state_machine ( .clk(clk), .reset(reset), .gray_ready(
        gray_ready), .gray_req(gray_req), .lbp_addr(lbp_addr), .lbp_valid(
        lbp_valid), .gray_count(gray_count), .lbp_count(lbp_count), .cycle(
        cycle), .initialize(initialize), .gray_addr_en(gray_addr_en), 
        .lbp_addr_en(lbp_addr_en), .finish(finish), .test_si2(n2), .test_si1(
        SCAN_IN_1), .test_so1(n5), .test_se(test_se) );
  GAC_TMR2_test_1 gray_addr_ctrl ( .clk(clk), .reset(reset), .gray_addr(
        gray_addr), .lbp_addr(lbp_addr), .cycle(cycle), .gray_addr_en(
        gray_addr_en), .initialize(initialize), .fill_right(fill_right), 
        .fill_down(fill_down), .fill_left(fill_left), .test_si(n5), .test_so(
        n4), .test_se(test_se) );
  GDM_test_1 gray_data_matrix ( .clk(clk), .reset(reset), .gray_data(gray_data), .lbp_data(lbp_data), .cycle(cycle), .fill_right(fill_right), .fill_down(
        fill_down), .fill_left(fill_left), .initialize(initialize), .gray_req(
        gray_req), .test_si(n4), .test_so(n3), .test_se(test_se) );
  LAC_TMR2_test_1 lbp_addr_ctrl ( .clk(clk), .reset(reset), .lbp_addr(lbp_addr), .lbp_addr_en(lbp_addr_en), .lbp_valid(lbp_valid), .fill_right(fill_right), 
        .fill_down(fill_down), .fill_left(fill_left), .test_si(n3), .test_so(
        n2), .test_se(test_se) );
  DS data_spliter ( .gray_addr(gray_addr), .lbp_addr(lbp_addr), .lbp_data(
        lbp_data), .gray_addr_qtr(gray_addr_qtr), .lbp_addr_qtr(lbp_addr_qtr), 
        .lbp_data_qtr(lbp_data_qtr), .gray_count(gray_count), .lbp_count(
        lbp_count) );
endmodule

