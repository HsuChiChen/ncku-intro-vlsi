/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sun Apr 11 22:08:14 2021
/////////////////////////////////////////////////////////////


module grayscale_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [11:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR2X1 U1 ( .A(B[11]), .B(carry[11]), .Y(SUM[11]) );
  AND2X1 U2 ( .A(A[1]), .B(B[1]), .Y(n1) );
  OAI2BB1X1 U3 ( .A0N(n1), .A1N(A[2]), .B0(n2), .Y(carry[3]) );
  OAI21XL U4 ( .A0(A[2]), .A1(n1), .B0(B[2]), .Y(n2) );
endmodule


module grayscale_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module grayscale ( d, q );
  input [23:0] d;
  output [7:0] q;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, \temp_g2[8] , \temp_g2[7] ,
         \temp_g2[6] , \temp_g2[5] , \temp_g2[4] , \temp_g2[3] , \temp_g2[2] ,
         \temp_g2[1] , \temp_g2[0] , N9, N8, N7, N6, N5, N4, N3, N2, N11, N10,
         \add_2_root_add_0_root_add_33_2/carry[9] ,
         \add_2_root_add_0_root_add_33_2/carry[8] ,
         \add_2_root_add_0_root_add_33_2/carry[7] ,
         \add_2_root_add_0_root_add_33_2/carry[6] ,
         \add_2_root_add_0_root_add_33_2/carry[5] ,
         \add_2_root_add_0_root_add_33_2/carry[4] ,
         \add_2_root_add_0_root_add_33_2/carry[3] ,
         \add_1_root_add_0_root_add_33_2/carry[4] ,
         \add_1_root_add_0_root_add_33_2/carry[5] ,
         \add_1_root_add_0_root_add_33_2/carry[6] ,
         \add_1_root_add_0_root_add_33_2/carry[7] ,
         \add_1_root_add_0_root_add_33_2/carry[8] ,
         \add_1_root_add_0_root_add_33_2/carry[9] ,
         \add_1_root_add_0_root_add_33_2/carry[10] ,
         \add_1_root_add_0_root_add_33_2/carry[11] ,
         \add_1_root_add_0_root_add_33_2/SUM[3] ,
         \add_1_root_add_0_root_add_33_2/SUM[4] ,
         \add_1_root_add_0_root_add_33_2/SUM[5] ,
         \add_1_root_add_0_root_add_33_2/SUM[6] ,
         \add_1_root_add_0_root_add_33_2/SUM[7] ,
         \add_1_root_add_0_root_add_33_2/SUM[8] ,
         \add_1_root_add_0_root_add_33_2/SUM[9] ,
         \add_1_root_add_0_root_add_33_2/SUM[10] ,
         \add_3_root_add_0_root_add_33_2/carry[7] ,
         \add_3_root_add_0_root_add_33_2/carry[6] ,
         \add_3_root_add_0_root_add_33_2/carry[5] ,
         \add_3_root_add_0_root_add_33_2/carry[4] ,
         \add_3_root_add_0_root_add_33_2/carry[3] ,
         \add_3_root_add_0_root_add_33_2/carry[2] ,
         \add_3_root_add_0_root_add_33_2/carry[1] , n1, n2;
  wire   [11:3] temp_result;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;
  assign N2 = d[16];

  grayscale_DW01_add_0 add_0_root_add_0_root_add_33_2 ( .A({1'b0, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, 1'b0}), .B({
        \add_1_root_add_0_root_add_33_2/carry[11] , 
        \add_1_root_add_0_root_add_33_2/SUM[10] , 
        \add_1_root_add_0_root_add_33_2/SUM[9] , 
        \add_1_root_add_0_root_add_33_2/SUM[8] , 
        \add_1_root_add_0_root_add_33_2/SUM[7] , 
        \add_1_root_add_0_root_add_33_2/SUM[6] , 
        \add_1_root_add_0_root_add_33_2/SUM[5] , 
        \add_1_root_add_0_root_add_33_2/SUM[4] , 
        \add_1_root_add_0_root_add_33_2/SUM[3] , \temp_g2[2] , \temp_g2[1] , 
        \temp_g2[0] }), .CI(1'b0), .SUM({temp_result, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2}) );
  grayscale_DW01_inc_0 add_34 ( .A(temp_result[11:4]), .SUM({N21, N20, N19, 
        N18, N17, N16, N15, N14}) );
  AO22X2 U3 ( .A0(temp_result[8]), .A1(n2), .B0(N18), .B1(n1), .Y(q[4]) );
  AO22X2 U4 ( .A0(temp_result[4]), .A1(n2), .B0(N14), .B1(n1), .Y(q[0]) );
  AO22X2 U5 ( .A0(temp_result[5]), .A1(n2), .B0(N15), .B1(n1), .Y(q[1]) );
  AO22X2 U6 ( .A0(temp_result[6]), .A1(n2), .B0(N16), .B1(n1), .Y(q[2]) );
  AO22X2 U7 ( .A0(temp_result[7]), .A1(n2), .B0(N17), .B1(n1), .Y(q[3]) );
  INVX3 U8 ( .A(n1), .Y(n2) );
  AO22X2 U9 ( .A0(temp_result[9]), .A1(n2), .B0(N19), .B1(n1), .Y(q[5]) );
  AO22X2 U10 ( .A0(temp_result[10]), .A1(n2), .B0(N20), .B1(n1), .Y(q[6]) );
  CLKBUFX3 U11 ( .A(temp_result[3]), .Y(n1) );
  AO22X2 U12 ( .A0(temp_result[11]), .A1(n2), .B0(n1), .B1(N21), .Y(q[7]) );
  ADDFXL U13 ( .A(d[9]), .B(d[1]), .CI(
        \add_3_root_add_0_root_add_33_2/carry[1] ), .CO(
        \add_3_root_add_0_root_add_33_2/carry[2] ), .S(\temp_g2[1] ) );
  ADDFXL U14 ( .A(d[15]), .B(d[7]), .CI(
        \add_3_root_add_0_root_add_33_2/carry[7] ), .CO(\temp_g2[8] ), .S(
        \temp_g2[7] ) );
  ADDFXL U15 ( .A(d[13]), .B(\temp_g2[8] ), .CI(
        \add_1_root_add_0_root_add_33_2/carry[8] ), .CO(
        \add_1_root_add_0_root_add_33_2/carry[9] ), .S(
        \add_1_root_add_0_root_add_33_2/SUM[8] ) );
  ADDFXL U16 ( .A(d[9]), .B(\temp_g2[4] ), .CI(
        \add_1_root_add_0_root_add_33_2/carry[4] ), .CO(
        \add_1_root_add_0_root_add_33_2/carry[5] ), .S(
        \add_1_root_add_0_root_add_33_2/SUM[4] ) );
  ADDFXL U17 ( .A(d[10]), .B(\temp_g2[5] ), .CI(
        \add_1_root_add_0_root_add_33_2/carry[5] ), .CO(
        \add_1_root_add_0_root_add_33_2/carry[6] ), .S(
        \add_1_root_add_0_root_add_33_2/SUM[5] ) );
  ADDFXL U18 ( .A(d[11]), .B(\temp_g2[6] ), .CI(
        \add_1_root_add_0_root_add_33_2/carry[6] ), .CO(
        \add_1_root_add_0_root_add_33_2/carry[7] ), .S(
        \add_1_root_add_0_root_add_33_2/SUM[6] ) );
  ADDFXL U19 ( .A(d[12]), .B(\temp_g2[7] ), .CI(
        \add_1_root_add_0_root_add_33_2/carry[7] ), .CO(
        \add_1_root_add_0_root_add_33_2/carry[8] ), .S(
        \add_1_root_add_0_root_add_33_2/SUM[7] ) );
  ADDFXL U20 ( .A(d[10]), .B(d[2]), .CI(
        \add_3_root_add_0_root_add_33_2/carry[2] ), .CO(
        \add_3_root_add_0_root_add_33_2/carry[3] ), .S(\temp_g2[2] ) );
  ADDFXL U21 ( .A(d[11]), .B(d[3]), .CI(
        \add_3_root_add_0_root_add_33_2/carry[3] ), .CO(
        \add_3_root_add_0_root_add_33_2/carry[4] ), .S(\temp_g2[3] ) );
  ADDFXL U22 ( .A(d[12]), .B(d[4]), .CI(
        \add_3_root_add_0_root_add_33_2/carry[4] ), .CO(
        \add_3_root_add_0_root_add_33_2/carry[5] ), .S(\temp_g2[4] ) );
  ADDFXL U23 ( .A(d[13]), .B(d[5]), .CI(
        \add_3_root_add_0_root_add_33_2/carry[5] ), .CO(
        \add_3_root_add_0_root_add_33_2/carry[6] ), .S(\temp_g2[5] ) );
  ADDFXL U24 ( .A(d[14]), .B(d[6]), .CI(
        \add_3_root_add_0_root_add_33_2/carry[6] ), .CO(
        \add_3_root_add_0_root_add_33_2/carry[7] ), .S(\temp_g2[6] ) );
  ADDFXL U25 ( .A(d[23]), .B(d[6]), .CI(
        \add_2_root_add_0_root_add_33_2/carry[8] ), .CO(
        \add_2_root_add_0_root_add_33_2/carry[9] ), .S(N9) );
  ADDFXL U26 ( .A(d[18]), .B(d[1]), .CI(
        \add_2_root_add_0_root_add_33_2/carry[3] ), .CO(
        \add_2_root_add_0_root_add_33_2/carry[4] ), .S(N4) );
  ADDFXL U27 ( .A(d[19]), .B(d[2]), .CI(
        \add_2_root_add_0_root_add_33_2/carry[4] ), .CO(
        \add_2_root_add_0_root_add_33_2/carry[5] ), .S(N5) );
  ADDFXL U28 ( .A(d[20]), .B(d[3]), .CI(
        \add_2_root_add_0_root_add_33_2/carry[5] ), .CO(
        \add_2_root_add_0_root_add_33_2/carry[6] ), .S(N6) );
  ADDFXL U29 ( .A(d[21]), .B(d[4]), .CI(
        \add_2_root_add_0_root_add_33_2/carry[6] ), .CO(
        \add_2_root_add_0_root_add_33_2/carry[7] ), .S(N7) );
  ADDFXL U30 ( .A(d[22]), .B(d[5]), .CI(
        \add_2_root_add_0_root_add_33_2/carry[7] ), .CO(
        \add_2_root_add_0_root_add_33_2/carry[8] ), .S(N8) );
  AND2X1 U31 ( .A(\add_2_root_add_0_root_add_33_2/carry[9] ), .B(d[7]), .Y(N11) );
  XOR2X1 U32 ( .A(d[7]), .B(\add_2_root_add_0_root_add_33_2/carry[9] ), .Y(N10) );
  AND2X1 U33 ( .A(d[17]), .B(d[0]), .Y(
        \add_2_root_add_0_root_add_33_2/carry[3] ) );
  XOR2X1 U34 ( .A(d[0]), .B(d[17]), .Y(N3) );
  AND2X1 U35 ( .A(\add_1_root_add_0_root_add_33_2/carry[10] ), .B(d[15]), .Y(
        \add_1_root_add_0_root_add_33_2/carry[11] ) );
  XOR2X1 U36 ( .A(d[15]), .B(\add_1_root_add_0_root_add_33_2/carry[10] ), .Y(
        \add_1_root_add_0_root_add_33_2/SUM[10] ) );
  AND2X1 U37 ( .A(\add_1_root_add_0_root_add_33_2/carry[9] ), .B(d[14]), .Y(
        \add_1_root_add_0_root_add_33_2/carry[10] ) );
  XOR2X1 U38 ( .A(d[14]), .B(\add_1_root_add_0_root_add_33_2/carry[9] ), .Y(
        \add_1_root_add_0_root_add_33_2/SUM[9] ) );
  AND2X1 U39 ( .A(d[8]), .B(\temp_g2[3] ), .Y(
        \add_1_root_add_0_root_add_33_2/carry[4] ) );
  XOR2X1 U40 ( .A(\temp_g2[3] ), .B(d[8]), .Y(
        \add_1_root_add_0_root_add_33_2/SUM[3] ) );
  AND2X1 U41 ( .A(d[0]), .B(d[8]), .Y(
        \add_3_root_add_0_root_add_33_2/carry[1] ) );
  XOR2X1 U42 ( .A(d[0]), .B(d[8]), .Y(\temp_g2[0] ) );
endmodule


module controller_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  ADDHXL U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHXL U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHXL U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHXL U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHXL U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHXL U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHXL U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHXL U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHXL U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHXL U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHXL U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
endmodule


module controller ( clk, rst, en_in_mem, in_mem_addr, en_out_mem, out_mem_read, 
        out_mem_write, out_mem_addr, done );
  output [31:0] in_mem_addr;
  output [31:0] out_mem_addr;
  input clk, rst;
  output en_in_mem, en_out_mem, out_mem_read, out_mem_write, done;
  wire   en_out_mem_snps_wire, \ns[1] , N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n70, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n10, n11, n12, n69, n71, n82, n83, n84, out_mem_write, n86, n87, n88;
  wire   [31:0] addr;
  assign out_mem_read = 1'b0;
  assign out_mem_addr[31] = in_mem_addr[31];
  assign out_mem_addr[30] = in_mem_addr[30];
  assign out_mem_addr[29] = in_mem_addr[29];
  assign out_mem_addr[28] = in_mem_addr[28];
  assign out_mem_addr[27] = in_mem_addr[27];
  assign out_mem_addr[26] = in_mem_addr[26];
  assign out_mem_addr[25] = in_mem_addr[25];
  assign out_mem_addr[24] = in_mem_addr[24];
  assign out_mem_addr[23] = in_mem_addr[23];
  assign out_mem_addr[22] = in_mem_addr[22];
  assign out_mem_addr[21] = in_mem_addr[21];
  assign out_mem_addr[20] = in_mem_addr[20];
  assign out_mem_addr[19] = in_mem_addr[19];
  assign out_mem_addr[18] = in_mem_addr[18];
  assign out_mem_addr[17] = in_mem_addr[17];
  assign out_mem_addr[16] = in_mem_addr[16];
  assign out_mem_addr[15] = in_mem_addr[15];
  assign out_mem_addr[14] = in_mem_addr[14];
  assign out_mem_addr[13] = in_mem_addr[13];
  assign out_mem_addr[12] = in_mem_addr[12];
  assign out_mem_addr[11] = in_mem_addr[11];
  assign out_mem_addr[10] = in_mem_addr[10];
  assign out_mem_addr[9] = in_mem_addr[9];
  assign out_mem_addr[8] = in_mem_addr[8];
  assign out_mem_addr[7] = in_mem_addr[7];
  assign out_mem_addr[6] = in_mem_addr[6];
  assign out_mem_addr[5] = in_mem_addr[5];
  assign out_mem_addr[4] = in_mem_addr[4];
  assign out_mem_addr[3] = in_mem_addr[3];
  assign out_mem_addr[2] = in_mem_addr[2];
  assign out_mem_addr[1] = in_mem_addr[1];
  assign out_mem_addr[0] = in_mem_addr[0];
  assign en_out_mem = out_mem_write;

  controller_DW01_inc_0 add_103 ( .A(addr), .SUM({N54, N53, N52, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}) );
  DFFRX1 \addr_reg[26]  ( .D(n42), .CK(clk), .RN(n69), .Q(addr[26]), .QN(n77)
         );
  DFFRX1 \addr_reg[27]  ( .D(n41), .CK(clk), .RN(n69), .Q(addr[27]), .QN(n76)
         );
  DFFRX1 \addr_reg[28]  ( .D(n40), .CK(clk), .RN(n69), .Q(addr[28]), .QN(n15)
         );
  DFFRX1 \addr_reg[29]  ( .D(n39), .CK(clk), .RN(n69), .Q(addr[29]), .QN(n14)
         );
  DFFRX1 \addr_reg[31]  ( .D(n68), .CK(clk), .RN(n71), .Q(addr[31]), .QN(n74)
         );
  DFFRX1 \addr_reg[30]  ( .D(n38), .CK(clk), .RN(n69), .Q(addr[30]), .QN(n75)
         );
  DFFRX1 \addr_reg[20]  ( .D(n48), .CK(clk), .RN(n69), .Q(addr[20]), .QN(n19)
         );
  DFFRX1 \addr_reg[21]  ( .D(n47), .CK(clk), .RN(n69), .Q(addr[21]), .QN(n18)
         );
  DFFRX1 \addr_reg[22]  ( .D(n46), .CK(clk), .RN(n69), .Q(addr[22]), .QN(n17)
         );
  DFFRX1 \addr_reg[23]  ( .D(n45), .CK(clk), .RN(n69), .Q(addr[23]), .QN(n16)
         );
  DFFRX1 \addr_reg[24]  ( .D(n44), .CK(clk), .RN(n69), .Q(addr[24]), .QN(n79)
         );
  DFFRX1 \addr_reg[25]  ( .D(n43), .CK(clk), .RN(n69), .Q(addr[25]), .QN(n78)
         );
  DFFRX1 \cs_reg[1]  ( .D(\ns[1] ), .CK(clk), .RN(n69), .Q(n10), .QN(n72) );
  DFFRX1 \cs_reg[0]  ( .D(n87), .CK(clk), .RN(n71), .QN(n73) );
  DFFRX1 \addr_reg[14]  ( .D(n54), .CK(clk), .RN(n71), .Q(addr[14]), .QN(n25)
         );
  DFFRX1 \addr_reg[15]  ( .D(n53), .CK(clk), .RN(n71), .Q(addr[15]), .QN(n24)
         );
  DFFRX1 \addr_reg[16]  ( .D(n52), .CK(clk), .RN(n71), .Q(addr[16]), .QN(n23)
         );
  DFFRX1 \addr_reg[17]  ( .D(n51), .CK(clk), .RN(n71), .Q(addr[17]), .QN(n22)
         );
  DFFRX1 \addr_reg[18]  ( .D(n50), .CK(clk), .RN(n71), .Q(addr[18]), .QN(n21)
         );
  DFFRX1 \addr_reg[19]  ( .D(n49), .CK(clk), .RN(n69), .Q(addr[19]), .QN(n20)
         );
  DFFRX1 \addr_reg[7]  ( .D(n61), .CK(clk), .RN(n71), .Q(addr[7]), .QN(n30) );
  DFFRX1 \addr_reg[8]  ( .D(n60), .CK(clk), .RN(n71), .Q(addr[8]), .QN(n81) );
  DFFRX1 \addr_reg[9]  ( .D(n59), .CK(clk), .RN(n71), .Q(addr[9]), .QN(n29) );
  DFFRX1 \addr_reg[10]  ( .D(n58), .CK(clk), .RN(n71), .Q(addr[10]), .QN(n80)
         );
  DFFRX1 \addr_reg[11]  ( .D(n57), .CK(clk), .RN(n71), .Q(addr[11]), .QN(n28)
         );
  DFFRX1 \addr_reg[12]  ( .D(n56), .CK(clk), .RN(n71), .Q(addr[12]), .QN(n27)
         );
  DFFRX1 \addr_reg[13]  ( .D(n55), .CK(clk), .RN(n71), .Q(addr[13]), .QN(n26)
         );
  DFFRX1 \addr_reg[1]  ( .D(n67), .CK(clk), .RN(n69), .Q(addr[1]), .QN(n36) );
  DFFRX1 \addr_reg[2]  ( .D(n66), .CK(clk), .RN(n71), .Q(addr[2]), .QN(n35) );
  DFFRX1 \addr_reg[3]  ( .D(n65), .CK(clk), .RN(n69), .Q(addr[3]), .QN(n34) );
  DFFRX1 \addr_reg[4]  ( .D(n64), .CK(clk), .RN(n88), .Q(addr[4]), .QN(n33) );
  DFFRX1 \addr_reg[5]  ( .D(n63), .CK(clk), .RN(n88), .Q(addr[5]), .QN(n32) );
  DFFRX1 \addr_reg[6]  ( .D(n62), .CK(clk), .RN(n88), .Q(addr[6]), .QN(n31) );
  DFFRX1 \addr_reg[0]  ( .D(n70), .CK(clk), .RN(n88), .Q(addr[0]), .QN(n37) );
  NOR2X1 U3 ( .A(en_in_mem), .B(out_mem_write), .Y(n13) );
  NOR2X2 U4 ( .A(n10), .B(n73), .Y(en_in_mem) );
  CLKINVX1 U5 ( .A(rst), .Y(n88) );
  CLKBUFX3 U6 ( .A(n13), .Y(n83) );
  CLKBUFX3 U7 ( .A(n13), .Y(n82) );
  CLKBUFX3 U8 ( .A(n13), .Y(n84) );
  CLKBUFX6 U9 ( .A(en_out_mem_snps_wire), .Y(out_mem_write) );
  CLKBUFX6 U10 ( .A(en_out_mem_snps_wire), .Y(n86) );
  CLKINVX1 U11 ( .A(en_in_mem), .Y(n87) );
  CLKBUFX3 U12 ( .A(n88), .Y(n69) );
  CLKBUFX3 U13 ( .A(n88), .Y(n71) );
  OAI2BB2XL U14 ( .B0(n75), .B1(out_mem_write), .A0N(N53), .A1N(n86), .Y(n38)
         );
  OAI2BB2XL U15 ( .B0(n14), .B1(out_mem_write), .A0N(N52), .A1N(n86), .Y(n39)
         );
  OAI2BB2XL U16 ( .B0(n15), .B1(out_mem_write), .A0N(N51), .A1N(n86), .Y(n40)
         );
  OAI2BB2XL U17 ( .B0(n76), .B1(out_mem_write), .A0N(N50), .A1N(n86), .Y(n41)
         );
  OAI2BB2XL U18 ( .B0(n74), .B1(out_mem_write), .A0N(N54), .A1N(n86), .Y(n68)
         );
  OAI2BB2XL U19 ( .B0(n77), .B1(out_mem_write), .A0N(N49), .A1N(n86), .Y(n42)
         );
  OAI2BB2XL U20 ( .B0(n78), .B1(out_mem_write), .A0N(N48), .A1N(n86), .Y(n43)
         );
  OAI2BB2XL U21 ( .B0(n79), .B1(out_mem_write), .A0N(N47), .A1N(n86), .Y(n44)
         );
  OAI2BB2XL U22 ( .B0(n16), .B1(out_mem_write), .A0N(N46), .A1N(n86), .Y(n45)
         );
  OAI2BB2XL U23 ( .B0(n17), .B1(out_mem_write), .A0N(N45), .A1N(n86), .Y(n46)
         );
  OAI2BB2XL U24 ( .B0(n18), .B1(out_mem_write), .A0N(N44), .A1N(n86), .Y(n47)
         );
  OAI2BB2XL U25 ( .B0(n19), .B1(out_mem_write), .A0N(N43), .A1N(n86), .Y(n48)
         );
  OAI2BB2XL U26 ( .B0(n20), .B1(out_mem_write), .A0N(N42), .A1N(n86), .Y(n49)
         );
  OAI2BB2XL U27 ( .B0(n21), .B1(out_mem_write), .A0N(N41), .A1N(n86), .Y(n50)
         );
  OAI2BB2XL U28 ( .B0(n22), .B1(out_mem_write), .A0N(N40), .A1N(n86), .Y(n51)
         );
  OAI2BB2XL U29 ( .B0(n23), .B1(out_mem_write), .A0N(N39), .A1N(n86), .Y(n52)
         );
  OAI2BB2XL U30 ( .B0(n24), .B1(out_mem_write), .A0N(N38), .A1N(n86), .Y(n53)
         );
  OAI2BB2XL U31 ( .B0(n25), .B1(out_mem_write), .A0N(N37), .A1N(n86), .Y(n54)
         );
  NOR2X4 U32 ( .A(n37), .B(n84), .Y(in_mem_addr[0]) );
  NOR2X4 U33 ( .A(n36), .B(n83), .Y(in_mem_addr[1]) );
  NOR2X4 U34 ( .A(n35), .B(n82), .Y(in_mem_addr[2]) );
  NOR2X4 U35 ( .A(n34), .B(n82), .Y(in_mem_addr[3]) );
  NOR2X4 U36 ( .A(n33), .B(n82), .Y(in_mem_addr[4]) );
  NOR2X4 U37 ( .A(n32), .B(n82), .Y(in_mem_addr[5]) );
  NOR2X4 U38 ( .A(n31), .B(n82), .Y(in_mem_addr[6]) );
  NOR2X4 U39 ( .A(n30), .B(n82), .Y(in_mem_addr[7]) );
  NOR2X4 U40 ( .A(n81), .B(n82), .Y(in_mem_addr[8]) );
  NOR2X4 U41 ( .A(n29), .B(n82), .Y(in_mem_addr[9]) );
  NOR2X4 U42 ( .A(n80), .B(n84), .Y(in_mem_addr[10]) );
  NOR2X4 U43 ( .A(n28), .B(n84), .Y(in_mem_addr[11]) );
  NOR2X4 U44 ( .A(n27), .B(n84), .Y(in_mem_addr[12]) );
  NOR2X4 U45 ( .A(n26), .B(n84), .Y(in_mem_addr[13]) );
  NOR2X4 U46 ( .A(n25), .B(n84), .Y(in_mem_addr[14]) );
  NOR2X4 U47 ( .A(n24), .B(n84), .Y(in_mem_addr[15]) );
  NOR2X4 U48 ( .A(n23), .B(n84), .Y(in_mem_addr[16]) );
  NOR2X4 U49 ( .A(n22), .B(n83), .Y(in_mem_addr[17]) );
  NOR2X4 U50 ( .A(n21), .B(n83), .Y(in_mem_addr[18]) );
  NOR2X4 U51 ( .A(n20), .B(n83), .Y(in_mem_addr[19]) );
  NOR2X4 U52 ( .A(n19), .B(n83), .Y(in_mem_addr[20]) );
  NOR2X4 U53 ( .A(n18), .B(n83), .Y(in_mem_addr[21]) );
  NOR2X4 U54 ( .A(n17), .B(n83), .Y(in_mem_addr[22]) );
  NOR2X4 U55 ( .A(n16), .B(n83), .Y(in_mem_addr[23]) );
  NOR2X4 U56 ( .A(n79), .B(n83), .Y(in_mem_addr[24]) );
  NOR2X4 U57 ( .A(n78), .B(n83), .Y(in_mem_addr[25]) );
  NOR2X4 U58 ( .A(n77), .B(n83), .Y(in_mem_addr[26]) );
  NOR2X4 U59 ( .A(n76), .B(n83), .Y(in_mem_addr[27]) );
  NOR2X4 U60 ( .A(n15), .B(n82), .Y(in_mem_addr[28]) );
  NOR2X4 U61 ( .A(n14), .B(n82), .Y(in_mem_addr[29]) );
  NOR2X4 U62 ( .A(n75), .B(n82), .Y(in_mem_addr[30]) );
  NOR2X4 U63 ( .A(n74), .B(n82), .Y(in_mem_addr[31]) );
  NOR2BX1 U64 ( .AN(n73), .B(n72), .Y(en_out_mem_snps_wire) );
  OAI2BB2XL U65 ( .B0(n29), .B1(out_mem_write), .A0N(N32), .A1N(n86), .Y(n59)
         );
  OAI2BB2XL U66 ( .B0(n26), .B1(n86), .A0N(N36), .A1N(n86), .Y(n55) );
  OAI2BB2XL U67 ( .B0(n27), .B1(n86), .A0N(N35), .A1N(n86), .Y(n56) );
  OAI2BB2XL U68 ( .B0(n28), .B1(n86), .A0N(N34), .A1N(n86), .Y(n57) );
  OAI2BB2XL U69 ( .B0(n80), .B1(n86), .A0N(N33), .A1N(n86), .Y(n58) );
  OAI2BB2XL U70 ( .B0(n81), .B1(n86), .A0N(N31), .A1N(n86), .Y(n60) );
  OAI2BB2XL U71 ( .B0(n30), .B1(n86), .A0N(N30), .A1N(n86), .Y(n61) );
  NOR2X2 U72 ( .A(n72), .B(n73), .Y(done) );
  NOR4X1 U73 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  NAND4X1 U74 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n6) );
  NAND4X1 U75 ( .A(n26), .B(n28), .C(n74), .D(n75), .Y(n7) );
  NAND4X1 U76 ( .A(n18), .B(n19), .C(n20), .D(n24), .Y(n8) );
  NAND4X1 U77 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n9) );
  OAI2BB2XL U78 ( .B0(n31), .B1(out_mem_write), .A0N(N29), .A1N(n86), .Y(n62)
         );
  OAI2BB2XL U79 ( .B0(n32), .B1(out_mem_write), .A0N(N28), .A1N(n86), .Y(n63)
         );
  OAI2BB2XL U80 ( .B0(n33), .B1(out_mem_write), .A0N(N27), .A1N(n86), .Y(n64)
         );
  OAI2BB2XL U81 ( .B0(n34), .B1(out_mem_write), .A0N(N26), .A1N(n86), .Y(n65)
         );
  OAI2BB2XL U82 ( .B0(n35), .B1(out_mem_write), .A0N(N25), .A1N(n86), .Y(n66)
         );
  OAI2BB2XL U83 ( .B0(n36), .B1(out_mem_write), .A0N(N24), .A1N(n86), .Y(n67)
         );
  OAI2BB2XL U84 ( .B0(n37), .B1(out_mem_write), .A0N(N23), .A1N(n86), .Y(n70)
         );
  AND4X1 U85 ( .A(n11), .B(n12), .C(addr[14]), .D(addr[12]), .Y(n4) );
  NOR4X1 U86 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(n11) );
  NOR3X1 U87 ( .A(n22), .B(n21), .C(n23), .Y(n12) );
  NAND2X1 U88 ( .A(n73), .B(n1), .Y(\ns[1] ) );
  NAND4BX1 U89 ( .AN(n2), .B(n3), .C(n4), .D(n5), .Y(n1) );
  NOR4X1 U90 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n3) );
  NAND4BX1 U91 ( .AN(n37), .B(n10), .C(n81), .D(n80), .Y(n2) );
endmodule


module top ( clk, rst, done, in_mem_data, gray_data, en_in_mem, in_mem_addr, 
        en_out_mem, out_mem_addr, out_mem_read, out_mem_write );
  input [23:0] in_mem_data;
  output [7:0] gray_data;
  output [31:0] in_mem_addr;
  output [31:0] out_mem_addr;
  input clk, rst;
  output done, en_in_mem, en_out_mem, out_mem_read, out_mem_write;
  wire   n2;
  assign out_mem_read = 1'b0;

  grayscale gray ( .d(in_mem_data), .q(gray_data) );
  controller ctrl ( .clk(clk), .rst(rst), .en_in_mem(en_in_mem), .in_mem_addr(
        in_mem_addr), .en_out_mem(en_out_mem), .out_mem_write(n2), 
        .out_mem_addr(out_mem_addr), .done(done) );
  CLKBUFX3 U1 ( .A(n2), .Y(out_mem_write) );
endmodule

