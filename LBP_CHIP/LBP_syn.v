/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Thu Oct 14 22:13:44 2021
/////////////////////////////////////////////////////////////

`timescale 1ns/10ps
module FSM ( clk, reset, gray_ready, gray_req, lbp_addr, lbp_valid, gray_count,
        lbp_count, cycle, initialize, gray_addr_en, lbp_addr_en, finish );
  input [13:0] lbp_addr;
  output [1:0] gray_count;
  output [1:0] lbp_count;
  output [3:0] cycle;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, initialize, gray_addr_en, lbp_addr_en, finish;
  wire   n19, N75, N76, N79, N80, N89, N92, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign gray_addr_en = N89;
  assign lbp_addr_en = N92;

  ND2 U60 ( .I1(n8), .I2(n31), .O(n30) );
  ND2 U61 ( .I1(lbp_count[0]), .I2(n6), .O(n29) );
  OA112 U62 ( .C1(n35), .C2(n10), .A1(n36), .B1(n4), .O(n34) );
  OA13S U63 ( .B1(n37), .B2(n38), .B3(n39), .A1(n7), .O(n35) );
  AN3B2S U64 ( .I1(n43), .B1(lbp_addr[5]), .B2(lbp_addr[4]), .O(n42) );
  AN2 U65 ( .I1(lbp_addr[10]), .I2(lbp_addr[0]), .O(n44) );
  AN3B2S U66 ( .I1(gray_ready), .B1(cs[0]), .B2(cs[1]), .O(n54) );
  ND2 U67 ( .I1(cycle[1]), .I2(cycle[0]), .O(n52) );
  ND2 U68 ( .I1(cs[0]), .I2(n11), .O(n36) );
  ND2 U69 ( .I1(n64), .I2(n10), .O(n53) );
  ND2 U70 ( .I1(cs[1]), .I2(n7), .O(n32) );
  ND2 U71 ( .I1(cs[2]), .I2(n64), .O(n49) );
  QDFFRBN \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RB(n18), .Q(cs[1]) );
  QDFFRBN \lbp_count_reg[1]  ( .D(N80), .CK(clk), .RB(n18), .Q(lbp_count[1])
         );
  QDFFRBN \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RB(n18), .Q(cs[0]) );
  QDFFRBN \gray_count_reg[0]  ( .D(N75), .CK(clk), .RB(n18), .Q(gray_count[0])
         );
  QDFFRBN \gray_count_reg[1]  ( .D(N76), .CK(clk), .RB(n18), .Q(gray_count[1])
         );
  QDFFRBN \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RB(n18), .Q(cs[2]) );
  QDFFRBN \lbp_count_reg[0]  ( .D(N79), .CK(clk), .RB(n18), .Q(lbp_count[0])
         );
  QDFFRBN \cycle_reg[2]  ( .D(n68), .CK(clk), .RB(n18), .Q(cycle[2]) );
  QDFFRBN \cycle_reg[3]  ( .D(n67), .CK(clk), .RB(n18), .Q(cycle[3]) );
  QDFFRBN \cycle_reg[1]  ( .D(n69), .CK(clk), .RB(n18), .Q(cycle[1]) );
  QDFFRBN \cycle_reg[0]  ( .D(n70), .CK(clk), .RB(n18), .Q(cycle[0]) );
  QDFFN finish_reg ( .D(n5), .CK(clk), .Q(n19) );
  BUF3 U3 ( .I(n19), .O(finish) );
  OA12T U4 ( .B1(cycle[3]), .B2(n51), .A1(n8), .O(gray_req) );
  INV1S U5 ( .I(n53), .O(n6) );
  INV1S U6 ( .I(n36), .O(n8) );
  NR2 U7 ( .I1(n11), .I2(n7), .O(n64) );
  ND3 U8 ( .I1(n15), .I2(n16), .I3(n12), .O(n51) );
  NR2 U9 ( .I1(n10), .I2(n36), .O(N89) );
  AOI12HS U10 ( .B1(n9), .B2(n6), .A1(N79), .O(n33) );
  OAI22S U11 ( .A1(n55), .A2(n56), .B1(n8), .B2(n17), .O(n67) );
  XOR2HS U12 ( .I1(n17), .I2(n57), .O(n56) );
  NR2 U13 ( .I1(n52), .I2(n16), .O(n57) );
  ND3 U14 ( .I1(n16), .I2(n17), .I3(n52), .O(n31) );
  INV1S U15 ( .I(n52), .O(n14) );
  INV1S U16 ( .I(n32), .O(n3) );
  INV1S U17 ( .I(n49), .O(n5) );
  NR2 U18 ( .I1(cs[2]), .I2(n64), .O(initialize) );
  INV1S U19 ( .I(cycle[2]), .O(n16) );
  INV1S U20 ( .I(cycle[0]), .O(n12) );
  INV1S U21 ( .I(cycle[1]), .O(n15) );
  INV1S U22 ( .I(cs[0]), .O(n7) );
  INV1S U23 ( .I(cs[1]), .O(n11) );
  INV1S U24 ( .I(cs[2]), .O(n10) );
  ND3 U25 ( .I1(n45), .I2(n33), .I3(n46), .O(ns[0]) );
  AN4B1S U26 ( .I1(n47), .I2(n48), .I3(n49), .B1(N92), .O(n46) );
  AOI13HS U27 ( .B1(n3), .B2(gray_count[0]), .B3(gray_count[1]), .A1(n54), .O(
        n45) );
  ND3 U28 ( .I1(n50), .I2(n51), .I3(cycle[3]), .O(n48) );
  AOI22S U29 ( .A1(n13), .A2(n50), .B1(N89), .B2(n62), .O(n55) );
  INV1S U30 ( .I(n63), .O(n13) );
  ND3 U31 ( .I1(n16), .I2(n17), .I3(n14), .O(n62) );
  AN4B1S U32 ( .I1(n15), .I2(cycle[0]), .I3(n16), .B1(n17), .O(n63) );
  ND3 U33 ( .I1(n40), .I2(n41), .I3(n42), .O(n39) );
  NR2 U34 ( .I1(lbp_addr[1]), .I2(cs[1]), .O(n40) );
  NR2 U35 ( .I1(lbp_addr[3]), .I2(lbp_addr[2]), .O(n41) );
  INV1S U36 ( .I(cycle[3]), .O(n17) );
  OAI22S U37 ( .A1(cycle[0]), .A2(n55), .B1(n8), .B2(n12), .O(n70) );
  NR2 U38 ( .I1(n36), .I2(cs[2]), .O(n50) );
  NR2 U39 ( .I1(n32), .I2(gray_count[0]), .O(N75) );
  INV1S U40 ( .I(lbp_count[1]), .O(n9) );
  NR2 U41 ( .I1(n53), .I2(lbp_count[0]), .O(N79) );
  MOAI1S U42 ( .A1(n60), .A2(n15), .B1(n61), .B2(cycle[0]), .O(n69) );
  NR2 U43 ( .I1(n12), .I2(n36), .O(n60) );
  NR2 U44 ( .I1(cycle[1]), .I2(n55), .O(n61) );
  MOAI1S U45 ( .A1(n9), .A2(n29), .B1(cs[2]), .B2(n30), .O(ns[2]) );
  NR2 U46 ( .I1(n66), .I2(n32), .O(N76) );
  XNR2HS U47 ( .I1(gray_count[0]), .I2(gray_count[1]), .O(n66) );
  NR2 U48 ( .I1(lbp_addr[7]), .I2(lbp_addr[6]), .O(n43) );
  OAI112HS U49 ( .C1(gray_count[1]), .C2(n32), .A1(n33), .B1(n34), .O(ns[1])
         );
  INV1S U50 ( .I(N75), .O(n4) );
  NR2 U51 ( .I1(n65), .I2(n53), .O(N80) );
  XOR2HS U52 ( .I1(lbp_count[0]), .I2(n9), .O(n65) );
  ND3 U53 ( .I1(cs[0]), .I2(n31), .I3(cs[2]), .O(n47) );
  MOAI1S U54 ( .A1(n58), .A2(n16), .B1(n59), .B2(n14), .O(n68) );
  NR2 U55 ( .I1(n36), .I2(n52), .O(n58) );
  NR2 U56 ( .I1(cycle[2]), .I2(n55), .O(n59) );
  ND3 U57 ( .I1(lbp_addr[8]), .I2(lbp_addr[13]), .I3(lbp_addr[9]), .O(n38) );
  ND3 U58 ( .I1(lbp_addr[12]), .I2(lbp_addr[11]), .I3(n44), .O(n37) );
  INV1S U59 ( .I(reset), .O(n18) );
  BUF3 U72 ( .I(N92), .O(lbp_valid) );
  NR3 U73 ( .I1(cs[0]), .I2(cs[1]), .I3(n10), .O(N92) );
endmodule


module GAC_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[6]), .I2(A[6]), .O(SUM[6]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module GAC_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[6]), .I2(A[6]), .O(SUM[6]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module GAC_DW01_add_1 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:1] carry;

  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR3 U1_6 ( .I1(A[6]), .I2(B[6]), .I3(carry[6]), .O(SUM[6]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module GAC_DW01_add_0 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:1] carry;

  XOR3 U1_6 ( .I1(A[6]), .I2(B[6]), .I3(carry[6]), .O(SUM[6]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module GAC ( clk, reset, gray_addr, lbp_addr, cycle, gray_addr_en, initialize,
        fill_right, fill_down, fill_left );
  output [13:0] gray_addr;
  input [13:0] lbp_addr;
  input [3:0] cycle;
  input clk, reset, gray_addr_en, initialize, fill_right, fill_down, fill_left;
  wire   N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N92, N93, N94, N95, N96, N97, N98, N100, N101, N102, N103, N104, N105,
         N106, N114, N115, N116, N117, N118, N119, N120, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, N113,
         N110, N109, N108, N62, N59, N58, N57, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71;
  wire   [6:0] gray_addr_row;
  wire   [6:0] gray_addr_col;

  AO222 U37 ( .A1(N100), .A2(n2), .B1(N63), .B2(n17), .C1(gray_addr_row[0]),
        .C2(n18), .O(n46) );
  AO222 U38 ( .A1(N101), .A2(n2), .B1(N64), .B2(n17), .C1(gray_addr_row[1]),
        .C2(n18), .O(n47) );
  AO222 U39 ( .A1(N102), .A2(n2), .B1(N65), .B2(n17), .C1(gray_addr_row[2]),
        .C2(n18), .O(n48) );
  AO222 U40 ( .A1(N103), .A2(n2), .B1(N66), .B2(n17), .C1(gray_addr_row[3]),
        .C2(n18), .O(n49) );
  AO222 U41 ( .A1(N104), .A2(n2), .B1(N67), .B2(n17), .C1(gray_addr_row[4]),
        .C2(n18), .O(n50) );
  AO222 U42 ( .A1(N105), .A2(n2), .B1(N68), .B2(n17), .C1(gray_addr_row[5]),
        .C2(n18), .O(n51) );
  AO222 U43 ( .A1(N106), .A2(n2), .B1(N69), .B2(n17), .C1(gray_addr_row[6]),
        .C2(n18), .O(n52) );
  ND2 U44 ( .I1(n20), .I2(n21), .O(n53) );
  ND2 U45 ( .I1(n22), .I2(n23), .O(n54) );
  ND2 U46 ( .I1(n24), .I2(n25), .O(n55) );
  ND2 U47 ( .I1(n26), .I2(n27), .O(n56) );
  ND2 U48 ( .I1(n28), .I2(n29), .O(n57) );
  ND2 U49 ( .I1(n30), .I2(n31), .O(n58) );
  ND2 U50 ( .I1(n32), .I2(n33), .O(n59) );
  ND2 U53 ( .I1(fill_down), .I2(gray_addr_en), .O(n36) );
  ND2 U54 ( .I1(gray_addr_en), .I2(fill_right), .O(n35) );
  ND2 U55 ( .I1(fill_left), .I2(gray_addr_en), .O(n34) );
  AN2 U56 ( .I1(n67), .I2(gray_addr_row[2]), .O(gray_addr[9]) );
  AO222 U57 ( .A1(n37), .A2(n38), .B1(cycle[3]), .B2(n39), .C1(n67), .C2(
        gray_addr_row[1]), .O(gray_addr[8]) );
  AN2 U58 ( .I1(n67), .I2(gray_addr_col[6]), .O(gray_addr[6]) );
  AN2 U59 ( .I1(n67), .I2(gray_addr_col[5]), .O(gray_addr[5]) );
  AN2 U60 ( .I1(n67), .I2(gray_addr_col[4]), .O(gray_addr[4]) );
  AN2 U61 ( .I1(n67), .I2(gray_addr_col[3]), .O(gray_addr[3]) );
  AN2 U62 ( .I1(n67), .I2(gray_addr_col[2]), .O(gray_addr[2]) );
  AN2 U63 ( .I1(n67), .I2(gray_addr_row[6]), .O(gray_addr[13]) );
  AN2 U64 ( .I1(n67), .I2(gray_addr_row[5]), .O(gray_addr[12]) );
  AN2 U65 ( .I1(n67), .I2(gray_addr_row[4]), .O(gray_addr[11]) );
  AN2 U66 ( .I1(n67), .I2(gray_addr_row[3]), .O(gray_addr[10]) );
  ND2 U67 ( .I1(n43), .I2(n68), .O(n45) );
  ND2 U68 ( .I1(cycle[0]), .I2(n69), .O(n44) );
  AN3B2S U69 ( .I1(cycle[2]), .B1(cycle[3]), .B2(n67), .O(n38) );
  GAC_DW01_inc_0 add_82 ( .A(lbp_addr[13:7]), .SUM({N106, N105, N104, N103,
        N102, N101, N100}) );
  GAC_DW01_inc_1 add_75 ( .A(lbp_addr[6:0]), .SUM({N76, N75, N74, N73, N72,
        N71, N70}) );
  GAC_DW01_add_1 add_0_root_sub_0_root_add_83 ( .A(lbp_addr[6:0]), .B({N113,
        N113, N113, N110, N109, N108, n68}), .SUM({N120, N119, N118, N117,
        N116, N115, N114}) );
  GAC_DW01_add_0 add_0_root_r392 ( .A(lbp_addr[13:7]), .B({N62, N62, N62, N59,
        N58, N57, n68}), .SUM({N69, N68, N67, N66, N65, N64, N63}) );
  QDFFRBN \gray_addr_row_reg[6]  ( .D(n52), .CK(clk), .RB(n70), .Q(
        gray_addr_row[6]) );
  QDFFRBN \gray_addr_row_reg[5]  ( .D(n51), .CK(clk), .RB(n70), .Q(
        gray_addr_row[5]) );
  QDFFRBN \gray_addr_row_reg[2]  ( .D(n48), .CK(clk), .RB(n70), .Q(
        gray_addr_row[2]) );
  QDFFRBN \gray_addr_row_reg[1]  ( .D(n47), .CK(clk), .RB(n70), .Q(
        gray_addr_row[1]) );
  QDFFRBN \gray_addr_col_reg[5]  ( .D(n58), .CK(clk), .RB(n70), .Q(
        gray_addr_col[5]) );
  QDFFRBN \gray_addr_col_reg[4]  ( .D(n57), .CK(clk), .RB(n70), .Q(
        gray_addr_col[4]) );
  QDFFRBN \gray_addr_col_reg[1]  ( .D(n54), .CK(clk), .RB(n70), .Q(
        gray_addr_col[1]) );
  QDFFRBN \gray_addr_col_reg[0]  ( .D(n53), .CK(clk), .RB(n70), .Q(
        gray_addr_col[0]) );
  QDFFRBN \gray_addr_row_reg[4]  ( .D(n50), .CK(clk), .RB(n70), .Q(
        gray_addr_row[4]) );
  QDFFRBN \gray_addr_row_reg[3]  ( .D(n49), .CK(clk), .RB(n70), .Q(
        gray_addr_row[3]) );
  QDFFRBN \gray_addr_row_reg[0]  ( .D(n46), .CK(clk), .RB(n70), .Q(
        gray_addr_row[0]) );
  QDFFRBN \gray_addr_col_reg[6]  ( .D(n59), .CK(clk), .RB(n70), .Q(
        gray_addr_col[6]) );
  QDFFRBN \gray_addr_col_reg[3]  ( .D(n56), .CK(clk), .RB(n70), .Q(
        gray_addr_col[3]) );
  QDFFRBN \gray_addr_col_reg[2]  ( .D(n55), .CK(clk), .RB(n70), .Q(
        gray_addr_col[2]) );
  OR2 U3 ( .I1(n62), .I2(n19), .O(n17) );
  INV1S U4 ( .I(n38), .O(n65) );
  INV1S U5 ( .I(initialize), .O(n67) );
  NR2 U6 ( .I1(n69), .I2(n68), .O(n37) );
  INV1S U7 ( .I(n42), .O(n66) );
  NR2 U8 ( .I1(n34), .I2(n62), .O(n19) );
  INV1S U9 ( .I(n35), .O(n62) );
  BUF1CK U10 ( .I(n16), .O(n2) );
  AN3B2S U11 ( .I1(n34), .B1(n62), .B2(n18), .O(n16) );
  INV1S U12 ( .I(n10), .O(n60) );
  INV1S U13 ( .I(n3), .O(n5) );
  INV1S U14 ( .I(n11), .O(n61) );
  INV1S U15 ( .I(n8), .O(n9) );
  INV1S U16 ( .I(n4), .O(n6) );
  MOAI1S U17 ( .A1(n37), .A2(n65), .B1(n67), .B2(gray_addr_row[0]), .O(
        gray_addr[7]) );
  INV1S U18 ( .I(cycle[0]), .O(n68) );
  INV1S U19 ( .I(cycle[1]), .O(n69) );
  OAI222S U20 ( .A1(n65), .A2(n44), .B1(n66), .B2(n45), .C1(initialize), .C2(
        n64), .O(gray_addr[0]) );
  INV1S U21 ( .I(gray_addr_col[0]), .O(n64) );
  XNR2HS U22 ( .I1(cycle[3]), .I2(n69), .O(n43) );
  OAI112HS U23 ( .C1(initialize), .C2(n63), .A1(n40), .B1(n41), .O(
        gray_addr[1]) );
  INV1S U24 ( .I(gray_addr_col[1]), .O(n63) );
  ND3 U25 ( .I1(n42), .I2(n43), .I3(cycle[0]), .O(n41) );
  ND3 U26 ( .I1(cycle[1]), .I2(n68), .I3(n38), .O(n40) );
  NR2 U27 ( .I1(n67), .I2(cycle[2]), .O(n42) );
  NR2 U28 ( .I1(n66), .I2(cycle[1]), .O(n39) );
  AOI22S U29 ( .A1(N92), .A2(n19), .B1(N70), .B2(n62), .O(n21) );
  AOI22S U30 ( .A1(N114), .A2(n2), .B1(gray_addr_col[0]), .B2(n18), .O(n20) );
  AOI22S U31 ( .A1(N93), .A2(n19), .B1(N71), .B2(n62), .O(n23) );
  AOI22S U32 ( .A1(N115), .A2(n2), .B1(gray_addr_col[1]), .B2(n18), .O(n22) );
  AOI22S U33 ( .A1(N94), .A2(n19), .B1(N72), .B2(n62), .O(n25) );
  AOI22S U34 ( .A1(N116), .A2(n2), .B1(gray_addr_col[2]), .B2(n18), .O(n24) );
  AOI22S U35 ( .A1(N95), .A2(n19), .B1(N73), .B2(n62), .O(n27) );
  AOI22S U36 ( .A1(N117), .A2(n2), .B1(gray_addr_col[3]), .B2(n18), .O(n26) );
  AOI22S U51 ( .A1(N96), .A2(n19), .B1(N74), .B2(n62), .O(n29) );
  AOI22S U52 ( .A1(N118), .A2(n2), .B1(gray_addr_col[4]), .B2(n18), .O(n28) );
  AOI22S U70 ( .A1(N97), .A2(n19), .B1(N75), .B2(n62), .O(n31) );
  AOI22S U71 ( .A1(N119), .A2(n2), .B1(gray_addr_col[5]), .B2(n18), .O(n30) );
  AOI22S U72 ( .A1(N98), .A2(n19), .B1(N76), .B2(n62), .O(n33) );
  AOI22S U73 ( .A1(N120), .A2(n2), .B1(gray_addr_col[6]), .B2(n18), .O(n32) );
  ND3 U74 ( .I1(n34), .I2(n35), .I3(n36), .O(n1) );
  INV1S U75 ( .I(n1), .O(n18) );
  INV1S U76 ( .I(lbp_addr[4]), .O(n15) );
  INV1S U77 ( .I(reset), .O(n70) );
  TIE0 U78 ( .O(n71) );
  NR2 U79 ( .I1(cycle[1]), .I2(cycle[0]), .O(n3) );
  AO12 U80 ( .B1(cycle[0]), .B2(cycle[1]), .A1(n3), .O(N108) );
  NR2 U81 ( .I1(n5), .I2(cycle[2]), .O(n4) );
  AO12 U82 ( .B1(n5), .B2(cycle[2]), .A1(n4), .O(N109) );
  NR2 U83 ( .I1(n6), .I2(cycle[3]), .O(N113) );
  AO12 U84 ( .B1(n6), .B2(cycle[3]), .A1(N113), .O(N110) );
  NR2 U85 ( .I1(cycle[1]), .I2(cycle[0]), .O(n7) );
  AO12 U86 ( .B1(cycle[0]), .B2(cycle[1]), .A1(n7), .O(N57) );
  NR2 U87 ( .I1(n5), .I2(cycle[2]), .O(n8) );
  AO12 U88 ( .B1(n5), .B2(cycle[2]), .A1(n8), .O(N58) );
  NR2 U89 ( .I1(n9), .I2(cycle[3]), .O(N62) );
  AO12 U90 ( .B1(n9), .B2(cycle[3]), .A1(N62), .O(N59) );
  INV1S U91 ( .I(lbp_addr[0]), .O(N92) );
  NR2 U92 ( .I1(lbp_addr[1]), .I2(lbp_addr[0]), .O(n10) );
  AO12 U93 ( .B1(lbp_addr[0]), .B2(lbp_addr[1]), .A1(n10), .O(N93) );
  NR2 U94 ( .I1(n60), .I2(lbp_addr[2]), .O(n11) );
  AO12 U95 ( .B1(n60), .B2(lbp_addr[2]), .A1(n11), .O(N94) );
  NR2 U96 ( .I1(n61), .I2(lbp_addr[3]), .O(n12) );
  AO12 U97 ( .B1(n61), .B2(lbp_addr[3]), .A1(n12), .O(N95) );
  ND2 U98 ( .I1(n12), .I2(n15), .O(n13) );
  OAI12HS U99 ( .B1(n12), .B2(n15), .A1(n13), .O(N96) );
  XNR2HS U100 ( .I1(lbp_addr[5]), .I2(n13), .O(N97) );
  NR2 U101 ( .I1(lbp_addr[5]), .I2(n13), .O(n14) );
  XOR2HS U102 ( .I1(lbp_addr[6]), .I2(n14), .O(N98) );
endmodule


module GDM ( clk, reset, gray_data, lbp_data, cycle, fill_right, fill_down,
        fill_left, initialize, gray_req );
  input [7:0] gray_data;
  output [7:0] lbp_data;
  input [3:0] cycle;
  input clk, reset, fill_right, fill_down, fill_left, initialize, gray_req;
  wire   n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444;
  wire   [7:0] g7;
  wire   [7:0] gc;
  wire   [7:0] g6;
  wire   [7:0] g5;
  wire   [7:0] g4;
  wire   [7:0] g3;
  wire   [7:0] g2;
  wire   [7:0] g1;
  wire   [7:0] g0;

  QDFFRBN \g4_reg[1]  ( .D(n273), .CK(clk), .RB(n21), .Q(g4[1]) );
  QDFFRBN \g4_reg[6]  ( .D(n268), .CK(clk), .RB(n18), .Q(g4[6]) );
  QDFFRBN \g2_reg[6]  ( .D(n244), .CK(clk), .RB(n19), .Q(g2[6]) );
  QDFFRBN \g4_reg[7]  ( .D(n267), .CK(clk), .RB(n18), .Q(g4[7]) );
  QDFFRBN \g2_reg[7]  ( .D(n243), .CK(clk), .RB(n18), .Q(g2[7]) );
  QDFFRBN \g0_reg[7]  ( .D(n259), .CK(clk), .RB(n18), .Q(g0[7]) );
  QDFFRBN \g4_reg[2]  ( .D(n272), .CK(clk), .RB(n21), .Q(g4[2]) );
  QDFFRBN \g2_reg[2]  ( .D(n248), .CK(clk), .RB(n21), .Q(g2[2]) );
  QDFFRBN \g0_reg[2]  ( .D(n264), .CK(clk), .RB(n21), .Q(g0[2]) );
  QDFFRBN \g0_reg[6]  ( .D(n260), .CK(clk), .RB(n19), .Q(g0[6]) );
  QDFFRBN \g6_reg[7]  ( .D(n299), .CK(clk), .RB(n16), .Q(g6[7]) );
  QDFFRBN \g7_reg[6]  ( .D(n308), .CK(clk), .RB(n16), .Q(g7[6]) );
  QDFFRBN \g7_reg[7]  ( .D(n307), .CK(clk), .RB(n16), .Q(g7[7]) );
  QDFFRBN \g1_reg[7]  ( .D(n251), .CK(clk), .RB(n18), .Q(g1[7]) );
  QDFFRBN \g6_reg[2]  ( .D(n304), .CK(clk), .RB(n17), .Q(g6[2]) );
  QDFFRBN \g7_reg[2]  ( .D(n312), .CK(clk), .RB(n17), .Q(g7[2]) );
  QDFFRBN \g1_reg[2]  ( .D(n256), .CK(clk), .RB(n21), .Q(g1[2]) );
  QDFFRBN \g1_reg[6]  ( .D(n252), .CK(clk), .RB(n19), .Q(g1[6]) );
  QDFFRBN \g5_reg[6]  ( .D(n292), .CK(clk), .RB(n16), .Q(g5[6]) );
  QDFFRBN \g5_reg[7]  ( .D(n291), .CK(clk), .RB(n16), .Q(g5[7]) );
  QDFFRBN \g3_reg[7]  ( .D(n283), .CK(clk), .RB(n18), .Q(g3[7]) );
  QDFFRBN \g5_reg[2]  ( .D(n296), .CK(clk), .RB(n17), .Q(g5[2]) );
  QDFFRBN \g3_reg[2]  ( .D(n288), .CK(clk), .RB(n20), .Q(g3[2]) );
  QDFFRBN \gc_reg[7]  ( .D(n275), .CK(clk), .RB(n18), .Q(gc[7]) );
  QDFFRBN \g4_reg[3]  ( .D(n271), .CK(clk), .RB(n20), .Q(g4[3]) );
  QDFFRBN \g2_reg[3]  ( .D(n247), .CK(clk), .RB(n20), .Q(g2[3]) );
  QDFFRBN \g0_reg[3]  ( .D(n263), .CK(clk), .RB(n20), .Q(g0[3]) );
  QDFFRBN \g6_reg[3]  ( .D(n303), .CK(clk), .RB(n17), .Q(g6[3]) );
  QDFFRBN \g4_reg[4]  ( .D(n270), .CK(clk), .RB(n20), .Q(g4[4]) );
  QDFFRBN \g2_reg[4]  ( .D(n246), .CK(clk), .RB(n20), .Q(g2[4]) );
  QDFFRBN \g4_reg[0]  ( .D(n274), .CK(clk), .RB(n22), .Q(g4[0]) );
  QDFFRBN \g2_reg[0]  ( .D(n250), .CK(clk), .RB(n22), .Q(g2[0]) );
  QDFFRBN \g2_reg[1]  ( .D(n249), .CK(clk), .RB(n21), .Q(g2[1]) );
  QDFFRBN \g0_reg[1]  ( .D(n265), .CK(clk), .RB(n21), .Q(g0[1]) );
  QDFFRBN \g7_reg[3]  ( .D(n311), .CK(clk), .RB(n17), .Q(g7[3]) );
  QDFFRBN \gc_reg[3]  ( .D(n279), .CK(clk), .RB(n20), .Q(gc[3]) );
  QDFFRBN \g4_reg[5]  ( .D(n269), .CK(clk), .RB(n19), .Q(g4[5]) );
  QDFFRBN \g2_reg[5]  ( .D(n245), .CK(clk), .RB(n19), .Q(g2[5]) );
  QDFFRBN \g0_reg[4]  ( .D(n262), .CK(clk), .RB(n20), .Q(g0[4]) );
  QDFFRBN \g6_reg[4]  ( .D(n302), .CK(clk), .RB(n16), .Q(g6[4]) );
  QDFFRBN \g6_reg[0]  ( .D(n306), .CK(clk), .RB(n18), .Q(g6[0]) );
  QDFFRBN \g0_reg[0]  ( .D(n266), .CK(clk), .RB(n22), .Q(g0[0]) );
  QDFFRBN \g1_reg[3]  ( .D(n255), .CK(clk), .RB(n20), .Q(g1[3]) );
  QDFFRBN \g6_reg[1]  ( .D(n305), .CK(clk), .RB(n17), .Q(g6[1]) );
  QDFFRBN \g5_reg[3]  ( .D(n295), .CK(clk), .RB(n17), .Q(g5[3]) );
  QDFFRBN \g7_reg[4]  ( .D(n310), .CK(clk), .RB(n16), .Q(g7[4]) );
  QDFFRBN \g7_reg[0]  ( .D(n314), .CK(clk), .RB(n17), .Q(g7[0]) );
  QDFFRBN \g7_reg[1]  ( .D(n313), .CK(clk), .RB(n17), .Q(g7[1]) );
  QDFFRBN \g1_reg[1]  ( .D(n257), .CK(clk), .RB(n21), .Q(g1[1]) );
  QDFFRBN \g0_reg[5]  ( .D(n261), .CK(clk), .RB(n19), .Q(g0[5]) );
  QDFFRBN \g6_reg[6]  ( .D(n300), .CK(clk), .RB(n16), .Q(g6[6]) );
  QDFFRBN \g6_reg[5]  ( .D(n301), .CK(clk), .RB(n16), .Q(g6[5]) );
  QDFFRBN \gc_reg[0]  ( .D(n282), .CK(clk), .RB(n22), .Q(gc[0]) );
  QDFFRBN \g7_reg[5]  ( .D(n309), .CK(clk), .RB(n16), .Q(g7[5]) );
  QDFFRBN \g1_reg[4]  ( .D(n254), .CK(clk), .RB(n20), .Q(g1[4]) );
  QDFFRBN \g5_reg[4]  ( .D(n294), .CK(clk), .RB(n17), .Q(g5[4]) );
  QDFFRBN \g1_reg[0]  ( .D(n258), .CK(clk), .RB(n22), .Q(g1[0]) );
  QDFFRBN \g5_reg[0]  ( .D(n298), .CK(clk), .RB(n18), .Q(g5[0]) );
  QDFFRBN \g3_reg[3]  ( .D(n287), .CK(clk), .RB(n20), .Q(g3[3]) );
  QDFFRBN \g5_reg[1]  ( .D(n297), .CK(clk), .RB(n17), .Q(g5[1]) );
  QDFFRBN \g3_reg[1]  ( .D(n289), .CK(clk), .RB(n21), .Q(g3[1]) );
  QDFFRBN \g1_reg[5]  ( .D(n253), .CK(clk), .RB(n19), .Q(g1[5]) );
  QDFFRBN \g5_reg[5]  ( .D(n293), .CK(clk), .RB(n16), .Q(g5[5]) );
  QDFFRBN \g3_reg[4]  ( .D(n286), .CK(clk), .RB(n19), .Q(g3[4]) );
  QDFFRBN \g3_reg[0]  ( .D(n290), .CK(clk), .RB(n22), .Q(g3[0]) );
  QDFFRBN \g3_reg[6]  ( .D(n284), .CK(clk), .RB(n18), .Q(g3[6]) );
  QDFFRBN \g3_reg[5]  ( .D(n285), .CK(clk), .RB(n19), .Q(g3[5]) );
  QDFFRBN \gc_reg[1]  ( .D(n281), .CK(clk), .RB(n21), .Q(gc[1]) );
  QDFFRBN \gc_reg[2]  ( .D(n280), .CK(clk), .RB(n21), .Q(gc[2]) );
  QDFFRBN \gc_reg[6]  ( .D(n276), .CK(clk), .RB(n18), .Q(gc[6]) );
  QDFFRBN \gc_reg[4]  ( .D(n278), .CK(clk), .RB(n19), .Q(gc[4]) );
  QDFFRBN \gc_reg[5]  ( .D(n277), .CK(clk), .RB(n19), .Q(gc[5]) );
  NR3 U2 ( .I1(n188), .I2(n89), .I3(n166), .O(n1) );
  ND2 U3 ( .I1(n85), .I2(n208), .O(n2) );
  NR2 U4 ( .I1(n190), .I2(n90), .O(n3) );
  OA12 U5 ( .B1(n83), .B2(n84), .A1(n85), .O(n4) );
  INV1S U6 ( .I(n85), .O(n137) );
  INV1S U7 ( .I(n169), .O(n51) );
  BUF1CK U8 ( .I(n1), .O(n9) );
  BUF1CK U9 ( .I(n1), .O(n8) );
  ND2 U10 ( .I1(n85), .I2(n131), .O(n96) );
  ND2 U11 ( .I1(n167), .I2(n168), .O(n131) );
  ND2 U12 ( .I1(n91), .I2(n168), .O(n208) );
  INV1S U13 ( .I(n56), .O(n27) );
  BUF1CK U14 ( .I(n3), .O(n11) );
  BUF1CK U15 ( .I(n3), .O(n10) );
  INV1S U16 ( .I(n4), .O(n50) );
  BUF1CK U17 ( .I(n14), .O(n20) );
  BUF1CK U18 ( .I(n12), .O(n17) );
  BUF1CK U19 ( .I(n12), .O(n16) );
  BUF1CK U20 ( .I(n14), .O(n21) );
  BUF1CK U21 ( .I(n13), .O(n19) );
  BUF1CK U22 ( .I(n13), .O(n18) );
  ND3 U23 ( .I1(n92), .I2(n189), .I3(n235), .O(n169) );
  NR2 U24 ( .I1(n90), .I2(n84), .O(n56) );
  OR2 U25 ( .I1(n166), .I2(n90), .O(n5) );
  INV1S U26 ( .I(n5), .O(n97) );
  OR3S U27 ( .I1(n188), .I2(n89), .I3(n190), .O(n6) );
  INV1S U28 ( .I(n6), .O(n98) );
  BUF1CK U29 ( .I(n444), .O(n14) );
  BUF1CK U30 ( .I(n444), .O(n13) );
  BUF1CK U31 ( .I(n444), .O(n12) );
  BUF1CK U32 ( .I(n15), .O(n22) );
  BUF1CK U33 ( .I(n444), .O(n15) );
  INV1S U34 ( .I(gc[4]), .O(n152) );
  INV1S U35 ( .I(gc[2]), .O(n144) );
  INV1S U36 ( .I(gc[5]), .O(n156) );
  BUF1CK U37 ( .I(gc[3]), .O(n7) );
  INV1S U38 ( .I(gc[7]), .O(n164) );
  INV1S U39 ( .I(reset), .O(n444) );
  OAI222S U40 ( .A1(n23), .A2(n24), .B1(n25), .B2(n26), .C1(n27), .C2(n28),
        .O(n314) );
  OAI222S U41 ( .A1(n23), .A2(n29), .B1(n25), .B2(n30), .C1(n27), .C2(n31),
        .O(n313) );
  INV1S U42 ( .I(g7[1]), .O(n29) );
  OAI222S U43 ( .A1(n23), .A2(n32), .B1(n25), .B2(n33), .C1(n27), .C2(n34),
        .O(n312) );
  INV1S U44 ( .I(g7[2]), .O(n32) );
  OAI222S U45 ( .A1(n23), .A2(n35), .B1(n25), .B2(n36), .C1(n27), .C2(n37),
        .O(n311) );
  OAI222S U46 ( .A1(n23), .A2(n38), .B1(n25), .B2(n39), .C1(n27), .C2(n40),
        .O(n310) );
  OAI222S U47 ( .A1(n23), .A2(n41), .B1(n25), .B2(n42), .C1(n27), .C2(n43),
        .O(n309) );
  OAI222S U48 ( .A1(n23), .A2(n44), .B1(n25), .B2(n45), .C1(n27), .C2(n46),
        .O(n308) );
  OAI222S U49 ( .A1(n23), .A2(n47), .B1(n25), .B2(n48), .C1(n27), .C2(n49),
        .O(n307) );
  NR2 U50 ( .I1(n50), .I2(n51), .O(n25) );
  INV1S U51 ( .I(g7[7]), .O(n47) );
  AN2 U52 ( .I1(n52), .I2(n53), .O(n23) );
  ND2 U53 ( .I1(n54), .I2(n55), .O(n306) );
  AOI22S U54 ( .A1(g5[0]), .A2(n56), .B1(g6[0]), .B2(n57), .O(n55) );
  AOI22S U55 ( .A1(g7[0]), .A2(n50), .B1(n9), .B2(gray_data[0]), .O(n54) );
  ND2 U56 ( .I1(n58), .I2(n59), .O(n305) );
  AOI22S U57 ( .A1(g5[1]), .A2(n56), .B1(g6[1]), .B2(n57), .O(n59) );
  AOI22S U58 ( .A1(g7[1]), .A2(n50), .B1(n9), .B2(gray_data[1]), .O(n58) );
  ND2 U59 ( .I1(n60), .I2(n61), .O(n304) );
  AOI22S U60 ( .A1(g5[2]), .A2(n56), .B1(g6[2]), .B2(n57), .O(n61) );
  AOI22S U61 ( .A1(g7[2]), .A2(n50), .B1(n9), .B2(gray_data[2]), .O(n60) );
  ND2 U62 ( .I1(n62), .I2(n63), .O(n303) );
  AOI22S U63 ( .A1(g5[3]), .A2(n56), .B1(g6[3]), .B2(n57), .O(n63) );
  AOI22S U64 ( .A1(g7[3]), .A2(n50), .B1(n9), .B2(gray_data[3]), .O(n62) );
  ND2 U65 ( .I1(n64), .I2(n65), .O(n302) );
  AOI22S U66 ( .A1(g5[4]), .A2(n56), .B1(g6[4]), .B2(n57), .O(n65) );
  AOI22S U67 ( .A1(g7[4]), .A2(n50), .B1(n9), .B2(gray_data[4]), .O(n64) );
  ND2 U68 ( .I1(n66), .I2(n67), .O(n301) );
  AOI22S U69 ( .A1(g5[5]), .A2(n56), .B1(g6[5]), .B2(n57), .O(n67) );
  AOI22S U70 ( .A1(g7[5]), .A2(n50), .B1(n9), .B2(gray_data[5]), .O(n66) );
  ND2 U71 ( .I1(n68), .I2(n69), .O(n300) );
  AOI22S U72 ( .A1(g5[6]), .A2(n56), .B1(g6[6]), .B2(n57), .O(n69) );
  AOI22S U73 ( .A1(g7[6]), .A2(n50), .B1(n9), .B2(gray_data[6]), .O(n68) );
  ND2 U74 ( .I1(n70), .I2(n71), .O(n299) );
  AOI22S U75 ( .A1(g5[7]), .A2(n56), .B1(g6[7]), .B2(n57), .O(n71) );
  ND2 U76 ( .I1(n72), .I2(n53), .O(n57) );
  AOI22S U77 ( .A1(g7[7]), .A2(n50), .B1(n9), .B2(gray_data[7]), .O(n70) );
  OAI222S U78 ( .A1(n26), .A2(n73), .B1(n74), .B2(n75), .C1(n4), .C2(n28), .O(
        n298) );
  OAI222S U79 ( .A1(n30), .A2(n73), .B1(n74), .B2(n76), .C1(n4), .C2(n31), .O(
        n297) );
  INV1S U80 ( .I(g6[1]), .O(n31) );
  INV1S U81 ( .I(g5[1]), .O(n76) );
  OAI222S U82 ( .A1(n33), .A2(n73), .B1(n74), .B2(n77), .C1(n4), .C2(n34), .O(
        n296) );
  INV1S U83 ( .I(g6[2]), .O(n34) );
  INV1S U84 ( .I(g5[2]), .O(n77) );
  OAI222S U85 ( .A1(n36), .A2(n73), .B1(n74), .B2(n78), .C1(n4), .C2(n37), .O(
        n295) );
  OAI222S U86 ( .A1(n39), .A2(n73), .B1(n74), .B2(n79), .C1(n4), .C2(n40), .O(
        n294) );
  OAI222S U87 ( .A1(n42), .A2(n73), .B1(n74), .B2(n80), .C1(n4), .C2(n43), .O(
        n293) );
  OAI222S U88 ( .A1(n45), .A2(n73), .B1(n74), .B2(n81), .C1(n4), .C2(n46), .O(
        n292) );
  OAI222S U89 ( .A1(n48), .A2(n73), .B1(n74), .B2(n82), .C1(n4), .C2(n49), .O(
        n291) );
  INV1S U90 ( .I(g6[7]), .O(n49) );
  INV1S U91 ( .I(g5[7]), .O(n82) );
  AN2 U92 ( .I1(n86), .I2(n53), .O(n74) );
  ND2 U93 ( .I1(n84), .I2(n87), .O(n53) );
  AO12 U94 ( .B1(n88), .B2(n27), .A1(n89), .O(n73) );
  ND2 U95 ( .I1(n91), .I2(n92), .O(n88) );
  ND2 U96 ( .I1(n93), .I2(n94), .O(n290) );
  AOI22S U97 ( .A1(g3[0]), .A2(n95), .B1(gc[0]), .B2(n96), .O(n94) );
  AOI22S U98 ( .A1(n97), .A2(gray_data[0]), .B1(n98), .B2(g5[0]), .O(n93) );
  ND2 U99 ( .I1(n99), .I2(n100), .O(n289) );
  AOI22S U100 ( .A1(g3[1]), .A2(n95), .B1(gc[1]), .B2(n96), .O(n100) );
  AOI22S U101 ( .A1(n97), .A2(gray_data[1]), .B1(n98), .B2(g5[1]), .O(n99) );
  ND2 U102 ( .I1(n101), .I2(n102), .O(n288) );
  AOI22S U103 ( .A1(g3[2]), .A2(n95), .B1(gc[2]), .B2(n96), .O(n102) );
  AOI22S U104 ( .A1(n97), .A2(gray_data[2]), .B1(n98), .B2(g5[2]), .O(n101) );
  ND2 U105 ( .I1(n103), .I2(n104), .O(n287) );
  AOI22S U106 ( .A1(g3[3]), .A2(n95), .B1(n7), .B2(n96), .O(n104) );
  AOI22S U107 ( .A1(n97), .A2(gray_data[3]), .B1(n98), .B2(g5[3]), .O(n103) );
  ND2 U108 ( .I1(n105), .I2(n106), .O(n286) );
  AOI22S U109 ( .A1(g3[4]), .A2(n95), .B1(gc[4]), .B2(n96), .O(n106) );
  AOI22S U110 ( .A1(n97), .A2(gray_data[4]), .B1(n98), .B2(g5[4]), .O(n105) );
  ND2 U111 ( .I1(n107), .I2(n108), .O(n285) );
  AOI22S U112 ( .A1(g3[5]), .A2(n95), .B1(gc[5]), .B2(n96), .O(n108) );
  AOI22S U113 ( .A1(n97), .A2(gray_data[5]), .B1(n98), .B2(g5[5]), .O(n107) );
  ND2 U114 ( .I1(n109), .I2(n110), .O(n284) );
  AOI22S U115 ( .A1(g3[6]), .A2(n95), .B1(gc[6]), .B2(n96), .O(n110) );
  AOI22S U116 ( .A1(n97), .A2(gray_data[6]), .B1(n98), .B2(g5[6]), .O(n109) );
  ND2 U117 ( .I1(n111), .I2(n112), .O(n283) );
  AOI22S U118 ( .A1(g3[7]), .A2(n95), .B1(gc[7]), .B2(n96), .O(n112) );
  ND2 U119 ( .I1(n86), .I2(n113), .O(n95) );
  AOI22S U120 ( .A1(n97), .A2(gray_data[7]), .B1(n98), .B2(g5[7]), .O(n111) );
  ND2 U121 ( .I1(n114), .I2(n115), .O(n282) );
  AOI22S U122 ( .A1(g4[0]), .A2(n96), .B1(gc[0]), .B2(n116), .O(n115) );
  AOI22S U123 ( .A1(n97), .A2(g3[0]), .B1(n9), .B2(g6[0]), .O(n114) );
  ND2 U124 ( .I1(n117), .I2(n118), .O(n281) );
  AOI22S U125 ( .A1(g4[1]), .A2(n96), .B1(gc[1]), .B2(n116), .O(n118) );
  AOI22S U126 ( .A1(g3[1]), .A2(n97), .B1(n9), .B2(g6[1]), .O(n117) );
  ND2 U127 ( .I1(n119), .I2(n120), .O(n280) );
  AOI22S U128 ( .A1(g4[2]), .A2(n96), .B1(gc[2]), .B2(n116), .O(n120) );
  AOI22S U129 ( .A1(g3[2]), .A2(n97), .B1(n9), .B2(g6[2]), .O(n119) );
  ND2 U130 ( .I1(n121), .I2(n122), .O(n279) );
  AOI22S U131 ( .A1(g4[3]), .A2(n96), .B1(n7), .B2(n116), .O(n122) );
  AOI22S U132 ( .A1(g3[3]), .A2(n97), .B1(n9), .B2(g6[3]), .O(n121) );
  ND2 U133 ( .I1(n123), .I2(n124), .O(n278) );
  AOI22S U134 ( .A1(g4[4]), .A2(n96), .B1(gc[4]), .B2(n116), .O(n124) );
  AOI22S U135 ( .A1(g3[4]), .A2(n97), .B1(n9), .B2(g6[4]), .O(n123) );
  ND2 U136 ( .I1(n125), .I2(n126), .O(n277) );
  AOI22S U137 ( .A1(g4[5]), .A2(n96), .B1(gc[5]), .B2(n116), .O(n126) );
  AOI22S U138 ( .A1(g3[5]), .A2(n97), .B1(n8), .B2(g6[5]), .O(n125) );
  ND2 U139 ( .I1(n127), .I2(n128), .O(n276) );
  AOI22S U140 ( .A1(g4[6]), .A2(n96), .B1(gc[6]), .B2(n116), .O(n128) );
  AOI22S U141 ( .A1(g3[6]), .A2(n97), .B1(n8), .B2(g6[6]), .O(n127) );
  ND2 U142 ( .I1(n129), .I2(n130), .O(n275) );
  AOI22S U143 ( .A1(g4[7]), .A2(n96), .B1(gc[7]), .B2(n116), .O(n130) );
  ND2 U144 ( .I1(n72), .I2(n113), .O(n116) );
  AOI22S U145 ( .A1(g3[7]), .A2(n97), .B1(n8), .B2(g6[7]), .O(n129) );
  ND2 U146 ( .I1(n132), .I2(n133), .O(n274) );
  OA222 U147 ( .A1(n134), .A2(n5), .B1(n26), .B2(n131), .C1(n135), .C2(n136),
        .O(n133) );
  AOI22S U148 ( .A1(n51), .A2(g7[0]), .B1(n137), .B2(g5[0]), .O(n132) );
  ND2 U149 ( .I1(n138), .I2(n139), .O(n273) );
  OA222 U150 ( .A1(n5), .A2(n140), .B1(n30), .B2(n131), .C1(n135), .C2(n141),
        .O(n139) );
  AOI22S U151 ( .A1(n51), .A2(g7[1]), .B1(n137), .B2(g5[1]), .O(n138) );
  ND2 U152 ( .I1(n142), .I2(n143), .O(n272) );
  OA222 U153 ( .A1(n5), .A2(n144), .B1(n33), .B2(n131), .C1(n135), .C2(n145),
        .O(n143) );
  AOI22S U154 ( .A1(n51), .A2(g7[2]), .B1(n137), .B2(g5[2]), .O(n142) );
  ND2 U155 ( .I1(n146), .I2(n147), .O(n271) );
  OA222 U156 ( .A1(n5), .A2(n148), .B1(n36), .B2(n131), .C1(n135), .C2(n149),
        .O(n147) );
  INV1S U157 ( .I(n7), .O(n148) );
  AOI22S U158 ( .A1(n51), .A2(g7[3]), .B1(n137), .B2(g5[3]), .O(n146) );
  ND2 U159 ( .I1(n150), .I2(n151), .O(n270) );
  OA222 U160 ( .A1(n5), .A2(n152), .B1(n39), .B2(n131), .C1(n135), .C2(n153),
        .O(n151) );
  AOI22S U161 ( .A1(n51), .A2(g7[4]), .B1(n137), .B2(g5[4]), .O(n150) );
  ND2 U162 ( .I1(n154), .I2(n155), .O(n269) );
  OA222 U163 ( .A1(n5), .A2(n156), .B1(n42), .B2(n131), .C1(n135), .C2(n157),
        .O(n155) );
  AOI22S U164 ( .A1(n51), .A2(g7[5]), .B1(n137), .B2(g5[5]), .O(n154) );
  ND2 U165 ( .I1(n158), .I2(n159), .O(n268) );
  OA222 U166 ( .A1(n5), .A2(n160), .B1(n45), .B2(n131), .C1(n135), .C2(n161),
        .O(n159) );
  AOI22S U167 ( .A1(n51), .A2(g7[6]), .B1(n137), .B2(g5[6]), .O(n158) );
  ND2 U168 ( .I1(n162), .I2(n163), .O(n267) );
  OA222 U169 ( .A1(n5), .A2(n164), .B1(n48), .B2(n131), .C1(n135), .C2(n165),
        .O(n163) );
  AN2 U170 ( .I1(n52), .I2(n113), .O(n135) );
  ND2 U171 ( .I1(n166), .I2(n87), .O(n113) );
  AOI22S U172 ( .A1(n51), .A2(g7[7]), .B1(n137), .B2(g5[7]), .O(n162) );
  ND2 U173 ( .I1(n170), .I2(n171), .O(n266) );
  AOI22S U174 ( .A1(n98), .A2(g3[0]), .B1(g0[0]), .B2(n172), .O(n171) );
  AOI22S U175 ( .A1(g1[0]), .A2(n2), .B1(n10), .B2(gray_data[0]), .O(n170) );
  ND2 U176 ( .I1(n173), .I2(n174), .O(n265) );
  AOI22S U177 ( .A1(g3[1]), .A2(n98), .B1(g0[1]), .B2(n172), .O(n174) );
  AOI22S U178 ( .A1(g1[1]), .A2(n2), .B1(n11), .B2(gray_data[1]), .O(n173) );
  ND2 U179 ( .I1(n175), .I2(n176), .O(n264) );
  AOI22S U180 ( .A1(g3[2]), .A2(n98), .B1(g0[2]), .B2(n172), .O(n176) );
  AOI22S U181 ( .A1(g1[2]), .A2(n2), .B1(n11), .B2(gray_data[2]), .O(n175) );
  ND2 U182 ( .I1(n177), .I2(n178), .O(n263) );
  AOI22S U183 ( .A1(g3[3]), .A2(n98), .B1(g0[3]), .B2(n172), .O(n178) );
  AOI22S U184 ( .A1(g1[3]), .A2(n2), .B1(n11), .B2(gray_data[3]), .O(n177) );
  ND2 U185 ( .I1(n179), .I2(n180), .O(n262) );
  AOI22S U186 ( .A1(g3[4]), .A2(n98), .B1(g0[4]), .B2(n172), .O(n180) );
  AOI22S U187 ( .A1(g1[4]), .A2(n2), .B1(n11), .B2(gray_data[4]), .O(n179) );
  ND2 U188 ( .I1(n181), .I2(n182), .O(n261) );
  AOI22S U189 ( .A1(g3[5]), .A2(n98), .B1(g0[5]), .B2(n172), .O(n182) );
  AOI22S U190 ( .A1(g1[5]), .A2(n2), .B1(n11), .B2(gray_data[5]), .O(n181) );
  ND2 U191 ( .I1(n183), .I2(n184), .O(n260) );
  AOI22S U192 ( .A1(g3[6]), .A2(n98), .B1(g0[6]), .B2(n172), .O(n184) );
  AOI22S U193 ( .A1(g1[6]), .A2(n2), .B1(n11), .B2(gray_data[6]), .O(n183) );
  ND2 U194 ( .I1(n185), .I2(n186), .O(n259) );
  AOI22S U195 ( .A1(g3[7]), .A2(n98), .B1(g0[7]), .B2(n172), .O(n186) );
  ND2 U196 ( .I1(n86), .I2(n187), .O(n172) );
  OA12 U197 ( .B1(n91), .B2(n188), .A1(n189), .O(n86) );
  AOI22S U198 ( .A1(g1[7]), .A2(n2), .B1(n11), .B2(gray_data[7]), .O(n185) );
  ND2 U199 ( .I1(n191), .I2(n192), .O(n258) );
  AOI22S U200 ( .A1(g2[0]), .A2(n2), .B1(g1[0]), .B2(n193), .O(n192) );
  AOI22S U201 ( .A1(gc[0]), .A2(n8), .B1(n11), .B2(g0[0]), .O(n191) );
  ND2 U202 ( .I1(n194), .I2(n195), .O(n257) );
  AOI22S U203 ( .A1(g2[1]), .A2(n2), .B1(g1[1]), .B2(n193), .O(n195) );
  AOI22S U204 ( .A1(gc[1]), .A2(n8), .B1(g0[1]), .B2(n11), .O(n194) );
  ND2 U205 ( .I1(n196), .I2(n197), .O(n256) );
  AOI22S U206 ( .A1(g2[2]), .A2(n2), .B1(g1[2]), .B2(n193), .O(n197) );
  AOI22S U207 ( .A1(gc[2]), .A2(n8), .B1(g0[2]), .B2(n11), .O(n196) );
  ND2 U208 ( .I1(n198), .I2(n199), .O(n255) );
  AOI22S U209 ( .A1(g2[3]), .A2(n2), .B1(g1[3]), .B2(n193), .O(n199) );
  AOI22S U210 ( .A1(n7), .A2(n8), .B1(g0[3]), .B2(n11), .O(n198) );
  ND2 U211 ( .I1(n200), .I2(n201), .O(n254) );
  AOI22S U212 ( .A1(g2[4]), .A2(n2), .B1(g1[4]), .B2(n193), .O(n201) );
  AOI22S U213 ( .A1(gc[4]), .A2(n8), .B1(g0[4]), .B2(n11), .O(n200) );
  ND2 U214 ( .I1(n202), .I2(n203), .O(n253) );
  AOI22S U215 ( .A1(g2[5]), .A2(n2), .B1(g1[5]), .B2(n193), .O(n203) );
  AOI22S U216 ( .A1(gc[5]), .A2(n8), .B1(g0[5]), .B2(n10), .O(n202) );
  ND2 U217 ( .I1(n204), .I2(n205), .O(n252) );
  AOI22S U218 ( .A1(g2[6]), .A2(n2), .B1(g1[6]), .B2(n193), .O(n205) );
  AOI22S U219 ( .A1(gc[6]), .A2(n8), .B1(g0[6]), .B2(n10), .O(n204) );
  ND2 U220 ( .I1(n206), .I2(n207), .O(n251) );
  AOI22S U221 ( .A1(g2[7]), .A2(n2), .B1(g1[7]), .B2(n193), .O(n207) );
  ND2 U222 ( .I1(n72), .I2(n187), .O(n193) );
  OA12 U223 ( .B1(n167), .B2(n188), .A1(n189), .O(n72) );
  INV1S U224 ( .I(n166), .O(n167) );
  AOI22S U225 ( .A1(gc[7]), .A2(n8), .B1(g0[7]), .B2(n10), .O(n206) );
  OR3B2 U226 ( .I1(cycle[0]), .B1(n209), .B2(cycle[1]), .O(n166) );
  INV1S U227 ( .I(n189), .O(n89) );
  ND2 U228 ( .I1(n210), .I2(n211), .O(n250) );
  OA222 U229 ( .A1(n212), .A2(n213), .B1(n26), .B2(n208), .C1(n136), .C2(n169),
        .O(n211) );
  INV1S U230 ( .I(gray_data[0]), .O(n26) );
  AOI22S U231 ( .A1(n10), .A2(g1[0]), .B1(n137), .B2(g3[0]), .O(n210) );
  ND2 U232 ( .I1(n214), .I2(n215), .O(n249) );
  OA222 U233 ( .A1(n212), .A2(n216), .B1(n30), .B2(n208), .C1(n141), .C2(n169),
        .O(n215) );
  INV1S U234 ( .I(g4[1]), .O(n141) );
  INV1S U235 ( .I(gray_data[1]), .O(n30) );
  INV1S U236 ( .I(g2[1]), .O(n216) );
  AOI22S U237 ( .A1(g1[1]), .A2(n10), .B1(n137), .B2(g3[1]), .O(n214) );
  ND2 U238 ( .I1(n217), .I2(n218), .O(n248) );
  OA222 U239 ( .A1(n212), .A2(n219), .B1(n33), .B2(n208), .C1(n145), .C2(n169),
        .O(n218) );
  INV1S U240 ( .I(g4[2]), .O(n145) );
  INV1S U241 ( .I(gray_data[2]), .O(n33) );
  INV1S U242 ( .I(g2[2]), .O(n219) );
  AOI22S U243 ( .A1(g1[2]), .A2(n10), .B1(n137), .B2(g3[2]), .O(n217) );
  ND2 U244 ( .I1(n220), .I2(n221), .O(n247) );
  OA222 U245 ( .A1(n212), .A2(n222), .B1(n36), .B2(n208), .C1(n149), .C2(n169),
        .O(n221) );
  INV1S U246 ( .I(gray_data[3]), .O(n36) );
  AOI22S U247 ( .A1(g1[3]), .A2(n10), .B1(n137), .B2(g3[3]), .O(n220) );
  ND2 U248 ( .I1(n223), .I2(n224), .O(n246) );
  OA222 U249 ( .A1(n212), .A2(n225), .B1(n39), .B2(n208), .C1(n153), .C2(n169),
        .O(n224) );
  INV1S U250 ( .I(gray_data[4]), .O(n39) );
  AOI22S U251 ( .A1(g1[4]), .A2(n10), .B1(n137), .B2(g3[4]), .O(n223) );
  ND2 U252 ( .I1(n226), .I2(n227), .O(n245) );
  OA222 U253 ( .A1(n212), .A2(n228), .B1(n42), .B2(n208), .C1(n157), .C2(n169),
        .O(n227) );
  INV1S U254 ( .I(gray_data[5]), .O(n42) );
  AOI22S U255 ( .A1(g1[5]), .A2(n10), .B1(n137), .B2(g3[5]), .O(n226) );
  ND2 U256 ( .I1(n229), .I2(n230), .O(n244) );
  OA222 U257 ( .A1(n212), .A2(n231), .B1(n45), .B2(n208), .C1(n161), .C2(n169),
        .O(n230) );
  INV1S U258 ( .I(gray_data[6]), .O(n45) );
  AOI22S U259 ( .A1(g1[6]), .A2(n10), .B1(n137), .B2(g3[6]), .O(n229) );
  ND2 U260 ( .I1(n232), .I2(n233), .O(n243) );
  OA222 U261 ( .A1(n212), .A2(n234), .B1(n48), .B2(n208), .C1(n165), .C2(n169),
        .O(n233) );
  INV1S U262 ( .I(n188), .O(n92) );
  INV1S U263 ( .I(g4[7]), .O(n165) );
  INV1S U264 ( .I(n83), .O(n168) );
  INV1S U265 ( .I(n190), .O(n91) );
  INV1S U266 ( .I(gray_data[7]), .O(n48) );
  INV1S U267 ( .I(g2[7]), .O(n234) );
  AN2 U268 ( .I1(n52), .I2(n187), .O(n212) );
  ND2 U269 ( .I1(n190), .I2(n87), .O(n187) );
  ND2 U270 ( .I1(n83), .I2(n90), .O(n87) );
  ND3 U271 ( .I1(gray_req), .I2(n85), .I3(fill_right), .O(n83) );
  OA12 U272 ( .B1(n235), .B2(n188), .A1(n189), .O(n52) );
  AO12 U273 ( .B1(fill_down), .B2(gray_req), .A1(n188), .O(n189) );
  AO12 U274 ( .B1(n236), .B2(gray_req), .A1(n137), .O(n188) );
  OR2 U275 ( .I1(fill_left), .I2(fill_right), .O(n236) );
  INV1S U276 ( .I(n84), .O(n235) );
  ND3 U277 ( .I1(cycle[0]), .I2(n209), .I3(cycle[1]), .O(n84) );
  AOI22S U278 ( .A1(g1[7]), .A2(n10), .B1(n137), .B2(g3[7]), .O(n232) );
  OR3B2 U279 ( .I1(fill_right), .B1(n85), .B2(n237), .O(n90) );
  AN2 U280 ( .I1(gray_req), .I2(fill_left), .O(n237) );
  ND2 U281 ( .I1(initialize), .I2(gray_req), .O(n85) );
  OR3B2 U282 ( .I1(cycle[1]), .B1(n209), .B2(cycle[0]), .O(n190) );
  NR2 U283 ( .I1(cycle[2]), .I2(cycle[3]), .O(n209) );
  MOAI1S U284 ( .A1(n238), .A2(n239), .B1(n164), .B2(g7[7]), .O(lbp_data[7])
         );
  NR2 U285 ( .I1(g7[7]), .I2(n164), .O(n239) );
  AOI13HS U286 ( .B1(n240), .B2(n241), .B3(n242), .A1(n315), .O(n238) );
  MOAI1S U287 ( .A1(gc[6]), .A2(n316), .B1(g7[6]), .B2(n317), .O(n315) );
  NR2 U288 ( .I1(g7[6]), .I2(n317), .O(n316) );
  MOAI1S U289 ( .A1(n38), .A2(n318), .B1(n156), .B2(g7[5]), .O(n317) );
  OAI12HS U290 ( .B1(n156), .B2(g7[5]), .A1(n152), .O(n318) );
  INV1S U291 ( .I(g7[4]), .O(n38) );
  ND2 U292 ( .I1(gc[6]), .I2(n44), .O(n242) );
  INV1S U293 ( .I(g7[6]), .O(n44) );
  OAI22S U294 ( .A1(n319), .A2(gc[5]), .B1(n319), .B2(n41), .O(n241) );
  INV1S U295 ( .I(g7[5]), .O(n41) );
  NR2 U296 ( .I1(g7[4]), .I2(n152), .O(n319) );
  OAI112HS U297 ( .C1(n7), .C2(n35), .A1(n320), .B1(n321), .O(n240) );
  ND3 U298 ( .I1(n322), .I2(n144), .I3(g7[2]), .O(n321) );
  OAI112HS U299 ( .C1(g7[2]), .C2(n144), .A1(n323), .B1(n322), .O(n320) );
  ND2 U300 ( .I1(n7), .I2(n35), .O(n322) );
  OAI112HS U301 ( .C1(gc[1]), .C2(n24), .A1(n324), .B1(n325), .O(n323) );
  OAI12HS U302 ( .B1(g7[0]), .B2(n326), .A1(g7[1]), .O(n324) );
  INV1S U303 ( .I(g7[0]), .O(n24) );
  INV1S U304 ( .I(g7[3]), .O(n35) );
  MOAI1S U305 ( .A1(n327), .A2(n328), .B1(n164), .B2(g6[7]), .O(lbp_data[6])
         );
  NR2 U306 ( .I1(g6[7]), .I2(n164), .O(n328) );
  AOI13HS U307 ( .B1(n329), .B2(n330), .B3(n331), .A1(n332), .O(n327) );
  MOAI1S U308 ( .A1(gc[6]), .A2(n333), .B1(g6[6]), .B2(n334), .O(n332) );
  NR2 U309 ( .I1(g6[6]), .I2(n334), .O(n333) );
  MOAI1S U310 ( .A1(n40), .A2(n335), .B1(n156), .B2(g6[5]), .O(n334) );
  OAI12HS U311 ( .B1(n156), .B2(g6[5]), .A1(n152), .O(n335) );
  INV1S U312 ( .I(g6[4]), .O(n40) );
  ND2 U313 ( .I1(gc[6]), .I2(n46), .O(n331) );
  INV1S U314 ( .I(g6[6]), .O(n46) );
  OAI22S U315 ( .A1(n336), .A2(gc[5]), .B1(n336), .B2(n43), .O(n330) );
  INV1S U316 ( .I(g6[5]), .O(n43) );
  NR2 U317 ( .I1(g6[4]), .I2(n152), .O(n336) );
  OAI112HS U318 ( .C1(n7), .C2(n37), .A1(n337), .B1(n338), .O(n329) );
  ND3 U319 ( .I1(n339), .I2(n144), .I3(g6[2]), .O(n338) );
  OAI112HS U320 ( .C1(g6[2]), .C2(n144), .A1(n340), .B1(n339), .O(n337) );
  ND2 U321 ( .I1(n7), .I2(n37), .O(n339) );
  OAI112HS U322 ( .C1(gc[1]), .C2(n28), .A1(n341), .B1(n325), .O(n340) );
  OAI12HS U323 ( .B1(g6[0]), .B2(n326), .A1(g6[1]), .O(n341) );
  INV1S U324 ( .I(g6[0]), .O(n28) );
  INV1S U325 ( .I(g6[3]), .O(n37) );
  MOAI1S U326 ( .A1(n342), .A2(n343), .B1(n164), .B2(g5[7]), .O(lbp_data[5])
         );
  NR2 U327 ( .I1(g5[7]), .I2(n164), .O(n343) );
  AOI13HS U328 ( .B1(n344), .B2(n345), .B3(n346), .A1(n347), .O(n342) );
  MOAI1S U329 ( .A1(gc[6]), .A2(n348), .B1(g5[6]), .B2(n349), .O(n347) );
  NR2 U330 ( .I1(g5[6]), .I2(n349), .O(n348) );
  MOAI1S U331 ( .A1(n79), .A2(n350), .B1(n156), .B2(g5[5]), .O(n349) );
  OAI12HS U332 ( .B1(n156), .B2(g5[5]), .A1(n152), .O(n350) );
  INV1S U333 ( .I(g5[4]), .O(n79) );
  ND2 U334 ( .I1(gc[6]), .I2(n81), .O(n346) );
  INV1S U335 ( .I(g5[6]), .O(n81) );
  OAI22S U336 ( .A1(n351), .A2(gc[5]), .B1(n351), .B2(n80), .O(n345) );
  INV1S U337 ( .I(g5[5]), .O(n80) );
  NR2 U338 ( .I1(g5[4]), .I2(n152), .O(n351) );
  OAI112HS U339 ( .C1(n7), .C2(n78), .A1(n352), .B1(n353), .O(n344) );
  ND3 U340 ( .I1(n354), .I2(n144), .I3(g5[2]), .O(n353) );
  OAI112HS U341 ( .C1(g5[2]), .C2(n144), .A1(n355), .B1(n354), .O(n352) );
  ND2 U342 ( .I1(n7), .I2(n78), .O(n354) );
  OAI112HS U343 ( .C1(gc[1]), .C2(n75), .A1(n356), .B1(n325), .O(n355) );
  OAI12HS U344 ( .B1(g5[0]), .B2(n326), .A1(g5[1]), .O(n356) );
  INV1S U345 ( .I(g5[0]), .O(n75) );
  INV1S U346 ( .I(g5[3]), .O(n78) );
  MOAI1S U347 ( .A1(n357), .A2(n358), .B1(n164), .B2(g4[7]), .O(lbp_data[4])
         );
  NR2 U348 ( .I1(g4[7]), .I2(n164), .O(n358) );
  AOI13HS U349 ( .B1(n359), .B2(n360), .B3(n361), .A1(n362), .O(n357) );
  MOAI1S U350 ( .A1(gc[6]), .A2(n363), .B1(g4[6]), .B2(n364), .O(n362) );
  NR2 U351 ( .I1(g4[6]), .I2(n364), .O(n363) );
  MOAI1S U352 ( .A1(n153), .A2(n365), .B1(n156), .B2(g4[5]), .O(n364) );
  OAI12HS U353 ( .B1(n156), .B2(g4[5]), .A1(n152), .O(n365) );
  INV1S U354 ( .I(g4[4]), .O(n153) );
  ND2 U355 ( .I1(gc[6]), .I2(n161), .O(n361) );
  INV1S U356 ( .I(g4[6]), .O(n161) );
  OAI22S U357 ( .A1(n366), .A2(gc[5]), .B1(n366), .B2(n157), .O(n360) );
  INV1S U358 ( .I(g4[5]), .O(n157) );
  NR2 U359 ( .I1(g4[4]), .I2(n152), .O(n366) );
  OAI112HS U360 ( .C1(n7), .C2(n149), .A1(n367), .B1(n368), .O(n359) );
  ND3 U361 ( .I1(n369), .I2(n144), .I3(g4[2]), .O(n368) );
  OAI112HS U362 ( .C1(g4[2]), .C2(n144), .A1(n370), .B1(n369), .O(n367) );
  ND2 U363 ( .I1(n7), .I2(n149), .O(n369) );
  OAI112HS U364 ( .C1(gc[1]), .C2(n136), .A1(n371), .B1(n325), .O(n370) );
  OAI12HS U365 ( .B1(g4[0]), .B2(n326), .A1(g4[1]), .O(n371) );
  INV1S U366 ( .I(g4[0]), .O(n136) );
  INV1S U367 ( .I(g4[3]), .O(n149) );
  MOAI1S U368 ( .A1(n372), .A2(n373), .B1(n164), .B2(g3[7]), .O(lbp_data[3])
         );
  NR2 U369 ( .I1(g3[7]), .I2(n164), .O(n373) );
  AOI13HS U370 ( .B1(n374), .B2(n375), .B3(n376), .A1(n377), .O(n372) );
  MOAI1S U371 ( .A1(gc[6]), .A2(n378), .B1(g3[6]), .B2(n379), .O(n377) );
  NR2 U372 ( .I1(g3[6]), .I2(n379), .O(n378) );
  MOAI1S U373 ( .A1(n380), .A2(n381), .B1(n156), .B2(g3[5]), .O(n379) );
  OAI12HS U374 ( .B1(n156), .B2(g3[5]), .A1(n152), .O(n381) );
  OR2 U375 ( .I1(n160), .I2(g3[6]), .O(n376) );
  MOAI1S U376 ( .A1(n382), .A2(gc[5]), .B1(n383), .B2(g3[5]), .O(n375) );
  ND2 U377 ( .I1(n380), .I2(gc[4]), .O(n383) );
  INV1S U378 ( .I(g3[4]), .O(n380) );
  NR2 U379 ( .I1(g3[4]), .I2(n152), .O(n382) );
  OAI112HS U380 ( .C1(n7), .C2(n384), .A1(n385), .B1(n386), .O(n374) );
  ND3 U381 ( .I1(n387), .I2(n144), .I3(g3[2]), .O(n386) );
  OAI112HS U382 ( .C1(g3[2]), .C2(n144), .A1(n388), .B1(n387), .O(n385) );
  ND2 U383 ( .I1(n7), .I2(n384), .O(n387) );
  OAI112HS U384 ( .C1(gc[1]), .C2(n389), .A1(n390), .B1(n325), .O(n388) );
  OAI12HS U385 ( .B1(g3[0]), .B2(n326), .A1(g3[1]), .O(n390) );
  INV1S U386 ( .I(g3[0]), .O(n389) );
  INV1S U387 ( .I(g3[3]), .O(n384) );
  MOAI1S U388 ( .A1(n391), .A2(n392), .B1(n164), .B2(g2[7]), .O(lbp_data[2])
         );
  NR2 U389 ( .I1(g2[7]), .I2(n164), .O(n392) );
  AOI13HS U390 ( .B1(n393), .B2(n394), .B3(n395), .A1(n396), .O(n391) );
  MOAI1S U391 ( .A1(gc[6]), .A2(n397), .B1(g2[6]), .B2(n398), .O(n396) );
  NR2 U392 ( .I1(g2[6]), .I2(n398), .O(n397) );
  MOAI1S U393 ( .A1(n225), .A2(n399), .B1(n156), .B2(g2[5]), .O(n398) );
  OAI12HS U394 ( .B1(n156), .B2(g2[5]), .A1(n152), .O(n399) );
  INV1S U395 ( .I(g2[4]), .O(n225) );
  ND2 U396 ( .I1(gc[6]), .I2(n231), .O(n395) );
  INV1S U397 ( .I(g2[6]), .O(n231) );
  OAI22S U398 ( .A1(n400), .A2(gc[5]), .B1(n400), .B2(n228), .O(n394) );
  INV1S U399 ( .I(g2[5]), .O(n228) );
  NR2 U400 ( .I1(g2[4]), .I2(n152), .O(n400) );
  OAI112HS U401 ( .C1(n7), .C2(n222), .A1(n401), .B1(n402), .O(n393) );
  ND3 U402 ( .I1(n403), .I2(n144), .I3(g2[2]), .O(n402) );
  OAI112HS U403 ( .C1(g2[2]), .C2(n144), .A1(n404), .B1(n403), .O(n401) );
  ND2 U404 ( .I1(n7), .I2(n222), .O(n403) );
  OAI112HS U405 ( .C1(gc[1]), .C2(n213), .A1(n405), .B1(n325), .O(n404) );
  OAI12HS U406 ( .B1(g2[0]), .B2(n326), .A1(g2[1]), .O(n405) );
  INV1S U407 ( .I(g2[0]), .O(n213) );
  INV1S U408 ( .I(g2[3]), .O(n222) );
  MOAI1S U409 ( .A1(n406), .A2(n407), .B1(n164), .B2(g1[7]), .O(lbp_data[1])
         );
  NR2 U410 ( .I1(g1[7]), .I2(n164), .O(n407) );
  AOI13HS U411 ( .B1(n408), .B2(n409), .B3(n410), .A1(n411), .O(n406) );
  MOAI1S U412 ( .A1(gc[6]), .A2(n412), .B1(g1[6]), .B2(n413), .O(n411) );
  NR2 U413 ( .I1(g1[6]), .I2(n413), .O(n412) );
  MOAI1S U414 ( .A1(n414), .A2(n415), .B1(n156), .B2(g1[5]), .O(n413) );
  OAI12HS U415 ( .B1(n156), .B2(g1[5]), .A1(n152), .O(n415) );
  OR2 U416 ( .I1(n160), .I2(g1[6]), .O(n410) );
  MOAI1S U417 ( .A1(n416), .A2(gc[5]), .B1(n417), .B2(g1[5]), .O(n409) );
  ND2 U418 ( .I1(n414), .I2(gc[4]), .O(n417) );
  INV1S U419 ( .I(g1[4]), .O(n414) );
  NR2 U420 ( .I1(g1[4]), .I2(n152), .O(n416) );
  OAI112HS U421 ( .C1(n7), .C2(n418), .A1(n419), .B1(n420), .O(n408) );
  ND3 U422 ( .I1(n421), .I2(n144), .I3(g1[2]), .O(n420) );
  OAI112HS U423 ( .C1(g1[2]), .C2(n144), .A1(n422), .B1(n421), .O(n419) );
  ND2 U424 ( .I1(n7), .I2(n418), .O(n421) );
  OAI112HS U425 ( .C1(gc[1]), .C2(n423), .A1(n424), .B1(n325), .O(n422) );
  OAI12HS U426 ( .B1(g1[0]), .B2(n326), .A1(g1[1]), .O(n424) );
  INV1S U427 ( .I(g1[0]), .O(n423) );
  INV1S U428 ( .I(g1[3]), .O(n418) );
  MOAI1S U429 ( .A1(n425), .A2(n426), .B1(n164), .B2(g0[7]), .O(lbp_data[0])
         );
  NR2 U430 ( .I1(g0[7]), .I2(n164), .O(n426) );
  AOI13HS U431 ( .B1(n427), .B2(n428), .B3(n429), .A1(n430), .O(n425) );
  MOAI1S U432 ( .A1(gc[6]), .A2(n431), .B1(g0[6]), .B2(n432), .O(n430) );
  NR2 U433 ( .I1(g0[6]), .I2(n432), .O(n431) );
  MOAI1S U434 ( .A1(n433), .A2(n434), .B1(n156), .B2(g0[5]), .O(n432) );
  OAI12HS U435 ( .B1(n156), .B2(g0[5]), .A1(n152), .O(n434) );
  OR2 U436 ( .I1(n160), .I2(g0[6]), .O(n429) );
  INV1S U437 ( .I(gc[6]), .O(n160) );
  MOAI1S U438 ( .A1(n435), .A2(gc[5]), .B1(n436), .B2(g0[5]), .O(n428) );
  ND2 U439 ( .I1(n433), .I2(gc[4]), .O(n436) );
  INV1S U440 ( .I(g0[4]), .O(n433) );
  NR2 U441 ( .I1(g0[4]), .I2(n152), .O(n435) );
  OAI112HS U442 ( .C1(n7), .C2(n437), .A1(n438), .B1(n439), .O(n427) );
  ND3 U443 ( .I1(n440), .I2(n144), .I3(g0[2]), .O(n439) );
  OAI112HS U444 ( .C1(g0[2]), .C2(n144), .A1(n441), .B1(n440), .O(n438) );
  ND2 U445 ( .I1(n7), .I2(n437), .O(n440) );
  OAI112HS U446 ( .C1(gc[1]), .C2(n442), .A1(n443), .B1(n325), .O(n441) );
  ND2 U447 ( .I1(n134), .I2(n140), .O(n325) );
  INV1S U448 ( .I(gc[1]), .O(n140) );
  INV1S U449 ( .I(gc[0]), .O(n134) );
  OAI12HS U450 ( .B1(g0[0]), .B2(n326), .A1(g0[1]), .O(n443) );
  ND2 U451 ( .I1(gc[1]), .I2(gc[0]), .O(n326) );
  INV1S U452 ( .I(g0[0]), .O(n442) );
  INV1S U453 ( .I(g0[3]), .O(n437) );
endmodule


module LAC_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[6]), .I2(A[6]), .O(SUM[6]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module LAC_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[6]), .I2(A[6]), .O(SUM[6]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module LAC ( clk, reset, lbp_addr, lbp_addr_en, lbp_valid, fill_right,
        fill_down, fill_left );
  output [13:0] lbp_addr;
  input clk, reset, lbp_addr_en, lbp_valid;
  output fill_right, fill_down, fill_left;
  wire   N11, N12, N13, N14, N15, N16, N17, N20, N21, N22, N23, N24, N25, N27,
         N28, N29, N30, N31, N32, N33, n30, n31, n32, n33, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25;

  DFFSBN \lbp_addr_row_reg[0]  ( .D(n49), .CK(clk), .SB(n25), .Q(lbp_addr[7]),
        .QB(n35) );
  DFFSBN \lbp_addr_col_reg[0]  ( .D(n48), .CK(clk), .SB(n25), .Q(lbp_addr[0]),
        .QB(n30) );
  LAC_DW01_inc_0 add_47 ( .A(lbp_addr[13:7]), .SUM({N33, N32, N31, N30, N29,
        N28, N27}) );
  LAC_DW01_inc_1 add_40 ( .A(lbp_addr[6:0]), .SUM({N17, N16, N15, N14, N13,
        N12, N11}) );
  QDFFN fill_down_reg ( .D(n31), .CK(clk), .Q(fill_down) );
  QDFFN fill_left_reg ( .D(n33), .CK(clk), .Q(fill_left) );
  QDFFN fill_right_reg ( .D(n32), .CK(clk), .Q(fill_right) );
  QDFFRBN \lbp_addr_row_reg[3]  ( .D(n39), .CK(clk), .RB(n25), .Q(lbp_addr[10]) );
  QDFFRBN \lbp_addr_row_reg[4]  ( .D(n38), .CK(clk), .RB(n25), .Q(lbp_addr[11]) );
  QDFFRBN \lbp_addr_row_reg[1]  ( .D(n41), .CK(clk), .RB(n25), .Q(lbp_addr[8])
         );
  QDFFRBN \lbp_addr_row_reg[2]  ( .D(n40), .CK(clk), .RB(n25), .Q(lbp_addr[9])
         );
  QDFFRBN \lbp_addr_row_reg[5]  ( .D(n37), .CK(clk), .RB(n25), .Q(lbp_addr[12]) );
  QDFFRBN \lbp_addr_row_reg[6]  ( .D(n36), .CK(clk), .RB(n25), .Q(lbp_addr[13]) );
  QDFFRBN \lbp_addr_col_reg[6]  ( .D(n42), .CK(clk), .RB(n25), .Q(lbp_addr[6])
         );
  QDFFRBN \lbp_addr_col_reg[4]  ( .D(n44), .CK(clk), .RB(n25), .Q(lbp_addr[4])
         );
  QDFFRBN \lbp_addr_col_reg[2]  ( .D(n46), .CK(clk), .RB(n25), .Q(lbp_addr[2])
         );
  QDFFRBN \lbp_addr_col_reg[3]  ( .D(n45), .CK(clk), .RB(n25), .Q(lbp_addr[3])
         );
  QDFFRBN \lbp_addr_col_reg[5]  ( .D(n43), .CK(clk), .RB(n25), .Q(lbp_addr[5])
         );
  QDFFRBN \lbp_addr_col_reg[1]  ( .D(n47), .CK(clk), .RB(n25), .Q(lbp_addr[1])
         );
  INV1S U3 ( .I(n14), .O(n12) );
  INV1S U4 ( .I(n1), .O(n7) );
  INV1S U5 ( .I(n2), .O(n8) );
  INV1S U6 ( .I(lbp_addr[4]), .O(n6) );
  NR2 U7 ( .I1(lbp_addr[1]), .I2(lbp_addr[0]), .O(n1) );
  AO12 U8 ( .B1(lbp_addr[0]), .B2(lbp_addr[1]), .A1(n1), .O(N20) );
  NR2 U9 ( .I1(n7), .I2(lbp_addr[2]), .O(n2) );
  AO12 U10 ( .B1(n7), .B2(lbp_addr[2]), .A1(n2), .O(N21) );
  NR2 U11 ( .I1(n8), .I2(lbp_addr[3]), .O(n3) );
  AO12 U12 ( .B1(n8), .B2(lbp_addr[3]), .A1(n3), .O(N22) );
  ND2 U13 ( .I1(n3), .I2(n6), .O(n4) );
  OAI12HS U14 ( .B1(n3), .B2(n6), .A1(n4), .O(N23) );
  XNR2HS U15 ( .I1(lbp_addr[5]), .I2(n4), .O(N24) );
  NR2 U16 ( .I1(lbp_addr[5]), .I2(n4), .O(n5) );
  XOR2HS U17 ( .I1(lbp_addr[6]), .I2(n5), .O(N25) );
  INV1S U18 ( .I(reset), .O(n25) );
  MUX2 U19 ( .A(lbp_addr[7]), .B(N27), .S(n9), .O(n49) );
  AO222 U20 ( .A1(n10), .A2(lbp_addr[0]), .B1(n30), .B2(n11), .C1(N11), .C2(
        n12), .O(n48) );
  AO222 U21 ( .A1(n10), .A2(lbp_addr[1]), .B1(N20), .B2(n11), .C1(N12), .C2(
        n12), .O(n47) );
  AO222 U22 ( .A1(n10), .A2(lbp_addr[2]), .B1(N21), .B2(n11), .C1(N13), .C2(
        n12), .O(n46) );
  AO222 U23 ( .A1(n10), .A2(lbp_addr[3]), .B1(N22), .B2(n11), .C1(N14), .C2(
        n12), .O(n45) );
  AO222 U24 ( .A1(n10), .A2(lbp_addr[4]), .B1(N23), .B2(n11), .C1(N15), .C2(
        n12), .O(n44) );
  AO222 U25 ( .A1(n10), .A2(lbp_addr[5]), .B1(N24), .B2(n11), .C1(N16), .C2(
        n12), .O(n43) );
  AO222 U26 ( .A1(n10), .A2(lbp_addr[6]), .B1(N25), .B2(n11), .C1(N17), .C2(
        n12), .O(n42) );
  NR2 U27 ( .I1(n12), .I2(n10), .O(n11) );
  AOI13HS U28 ( .B1(lbp_addr_en), .B2(n13), .B3(n35), .A1(n12), .O(n10) );
  MUX2 U29 ( .A(lbp_addr[8]), .B(N28), .S(n9), .O(n41) );
  MUX2 U30 ( .A(lbp_addr[9]), .B(N29), .S(n9), .O(n40) );
  MUX2 U31 ( .A(lbp_addr[10]), .B(N30), .S(n9), .O(n39) );
  MUX2 U32 ( .A(lbp_addr[11]), .B(N31), .S(n9), .O(n38) );
  MUX2 U33 ( .A(lbp_addr[12]), .B(N32), .S(n9), .O(n37) );
  MUX2 U34 ( .A(lbp_addr[13]), .B(N33), .S(n9), .O(n36) );
  OA112 U35 ( .C1(n15), .C2(lbp_addr[7]), .A1(n14), .B1(n16), .O(n9) );
  AN2 U36 ( .I1(n17), .I2(lbp_addr_en), .O(n16) );
  OR3B2 U37 ( .I1(n18), .B1(lbp_addr_en), .B2(lbp_addr[7]), .O(n14) );
  MUX2 U38 ( .A(fill_left), .B(n19), .S(lbp_valid), .O(n33) );
  NR2 U39 ( .I1(n15), .I2(lbp_addr[7]), .O(n19) );
  MUX2 U40 ( .A(fill_right), .B(n20), .S(lbp_valid), .O(n32) );
  NR2 U41 ( .I1(n35), .I2(n18), .O(n20) );
  MUX2 U42 ( .A(fill_down), .B(n17), .S(lbp_valid), .O(n31) );
  MUX2 U43 ( .A(n15), .B(n18), .S(n30), .O(n17) );
  NR2 U44 ( .I1(n21), .I2(n22), .O(n18) );
  ND3 U45 ( .I1(lbp_addr[5]), .I2(lbp_addr[4]), .I3(lbp_addr[6]), .O(n22) );
  ND3 U46 ( .I1(lbp_addr[2]), .I2(lbp_addr[1]), .I3(lbp_addr[3]), .O(n21) );
  INV1S U47 ( .I(n13), .O(n15) );
  OR3B2 U48 ( .I1(lbp_addr[1]), .B1(n23), .B2(n24), .O(n13) );
  NR3 U49 ( .I1(lbp_addr[4]), .I2(lbp_addr[6]), .I3(lbp_addr[5]), .O(n24) );
  NR2 U50 ( .I1(lbp_addr[3]), .I2(lbp_addr[2]), .O(n23) );
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
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n26, n27;

  ND2 U35 ( .I1(gray_addr[9]), .I2(n18), .O(n20) );
  ND2 U36 ( .I1(gray_addr[8]), .I2(n18), .O(n23) );
  AN2 U2 ( .I1(n23), .I2(n24), .O(n1) );
  AN2 U3 ( .I1(n20), .I2(n21), .O(n2) );
  AO222T U4 ( .A1(lbp_addr[7]), .A2(n9), .B1(lbp_addr[3]), .B2(n8), .C1(
        lbp_addr[11]), .C2(n10), .O(lbp_addr_qtr[3]) );
  AO222T U5 ( .A1(lbp_addr[6]), .A2(n9), .B1(lbp_addr[2]), .B2(n8), .C1(
        lbp_addr[10]), .C2(n10), .O(lbp_addr_qtr[2]) );
  ND2F U6 ( .I1(n22), .I2(n2), .O(gray_addr_qtr[1]) );
  ND3 U7 ( .I1(n26), .I2(n27), .I3(gray_addr[13]), .O(n21) );
  AOI22S U8 ( .A1(gray_addr[5]), .A2(n17), .B1(gray_addr[1]), .B2(n19), .O(n22) );
  ND2F U9 ( .I1(n15), .I2(n16), .O(lbp_addr_qtr[0]) );
  ND2F U10 ( .I1(n25), .I2(n1), .O(gray_addr_qtr[0]) );
  ND3 U11 ( .I1(n26), .I2(n27), .I3(gray_addr[12]), .O(n24) );
  AOI22S U12 ( .A1(gray_addr[4]), .A2(n17), .B1(gray_addr[0]), .B2(n19), .O(
        n25) );
  ND2F U13 ( .I1(n13), .I2(n14), .O(lbp_addr_qtr[1]) );
  AO222T U14 ( .A1(gray_addr[6]), .A2(n17), .B1(gray_addr[10]), .B2(n18), .C1(
        gray_addr[2]), .C2(n19), .O(gray_addr_qtr[2]) );
  ND2F U15 ( .I1(n5), .I2(n6), .O(lbp_data_qtr[1]) );
  AO222T U16 ( .A1(gray_addr[7]), .A2(n17), .B1(gray_addr[11]), .B2(n18), .C1(
        gray_addr[3]), .C2(n19), .O(gray_addr_qtr[3]) );
  ND2F U17 ( .I1(n11), .I2(n12), .O(lbp_data_qtr[0]) );
  NR2 U18 ( .I1(n4), .I2(n3), .O(n8) );
  NR2 U19 ( .I1(n27), .I2(n26), .O(n19) );
  AOI22S U20 ( .A1(lbp_data[2]), .A2(n9), .B1(lbp_data[4]), .B2(n10), .O(n11)
         );
  AOI22S U21 ( .A1(lbp_data[6]), .A2(n7), .B1(lbp_data[0]), .B2(n8), .O(n12)
         );
  AOI22S U22 ( .A1(lbp_data[3]), .A2(n9), .B1(lbp_data[5]), .B2(n10), .O(n5)
         );
  AOI22S U23 ( .A1(lbp_data[7]), .A2(n7), .B1(lbp_data[1]), .B2(n8), .O(n6) );
  AOI22S U24 ( .A1(lbp_addr[13]), .A2(n7), .B1(lbp_addr[1]), .B2(n8), .O(n14)
         );
  AOI22S U25 ( .A1(lbp_addr[5]), .A2(n9), .B1(lbp_addr[9]), .B2(n10), .O(n13)
         );
  NR2 U26 ( .I1(n4), .I2(lbp_count[0]), .O(n9) );
  NR2 U27 ( .I1(n3), .I2(lbp_count[1]), .O(n10) );
  NR2 U28 ( .I1(lbp_count[0]), .I2(lbp_count[1]), .O(n7) );
  INV1S U29 ( .I(gray_count[1]), .O(n27) );
  NR2 U30 ( .I1(n27), .I2(gray_count[0]), .O(n17) );
  INV1S U31 ( .I(gray_count[0]), .O(n26) );
  NR2 U32 ( .I1(n26), .I2(gray_count[1]), .O(n18) );
  AOI22S U33 ( .A1(lbp_addr[4]), .A2(n9), .B1(lbp_addr[8]), .B2(n10), .O(n15)
         );
  AOI22S U34 ( .A1(lbp_addr[12]), .A2(n7), .B1(lbp_addr[0]), .B2(n8), .O(n16)
         );
  INV1S U37 ( .I(lbp_count[1]), .O(n4) );
  INV1S U38 ( .I(lbp_count[0]), .O(n3) );
endmodule


module LBP ( clk, reset, gray_addr_qtr, gray_req, gray_ready, gray_data,
        lbp_addr_qtr, lbp_valid, lbp_data_qtr, finish );
  output [3:0] gray_addr_qtr;
  input [7:0] gray_data;
  output [3:0] lbp_addr_qtr;
  output [1:0] lbp_data_qtr;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   initialize, gray_addr_en, lbp_addr_en, fill_right, fill_down,
         fill_left;
  wire   [13:0] lbp_addr;
  wire   [1:0] gray_count;
  wire   [1:0] lbp_count;
  wire   [3:0] cycle;
  wire   [13:0] gray_addr;
  wire   [7:0] lbp_data;

  FSM finite_state_machine ( .clk(clk), .reset(reset), .gray_ready(gray_ready),
        .gray_req(gray_req), .lbp_addr(lbp_addr), .lbp_valid(lbp_valid),
        .gray_count(gray_count), .lbp_count(lbp_count), .cycle(cycle),
        .initialize(initialize), .gray_addr_en(gray_addr_en), .lbp_addr_en(
        lbp_addr_en), .finish(finish) );
  GAC gray_addr_ctrl ( .clk(clk), .reset(reset), .gray_addr(gray_addr),
        .lbp_addr(lbp_addr), .cycle(cycle), .gray_addr_en(gray_addr_en),
        .initialize(initialize), .fill_right(fill_right), .fill_down(fill_down), .fill_left(fill_left) );
  GDM gray_data_matrix ( .clk(clk), .reset(reset), .gray_data(gray_data),
        .lbp_data(lbp_data), .cycle(cycle), .fill_right(fill_right),
        .fill_down(fill_down), .fill_left(fill_left), .initialize(initialize),
        .gray_req(gray_req) );
  LAC lbp_addr_ctrl ( .clk(clk), .reset(reset), .lbp_addr(lbp_addr),
        .lbp_addr_en(lbp_addr_en), .lbp_valid(lbp_valid), .fill_right(
        fill_right), .fill_down(fill_down), .fill_left(fill_left) );
  DS data_spliter ( .gray_addr(gray_addr), .lbp_addr(lbp_addr), .lbp_data(
        lbp_data), .gray_addr_qtr(gray_addr_qtr), .lbp_addr_qtr(lbp_addr_qtr),
        .lbp_data_qtr(lbp_data_qtr), .gray_count(gray_count), .lbp_count(
        lbp_count) );
endmodule

