/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Tue Mar 30 18:37:05 2021
/////////////////////////////////////////////////////////////


module mini_vending_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [6:0] carry;

  ADDFXL U2_4 ( .A(A[4]), .B(n3), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  XOR3X1 U2_5 ( .A(A[5]), .B(n2), .C(carry[5]), .Y(DIFF[5]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n6), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n7) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n6) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n2) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n3) );
  XNOR2X1 U9 ( .A(n7), .B(A[0]), .Y(DIFF[0]) );
endmodule


module mini_vending ( clk, rst, en, money, beverage, change, finish );
  input [5:0] money;
  input [5:0] beverage;
  output [5:0] change;
  input clk, rst, en;
  output finish;
  wire   N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         n5;
  wire   [1:0] phase;
  wire   [5:0] money_temp;

  NOR2BX4 U11 ( .AN(phase[1]), .B(phase[0]), .Y(finish) );
  mini_vending_DW01_sub_0 sub_34 ( .A(money_temp), .B(beverage), .CI(1'b0), 
        .DIFF({N15, N14, N13, N12, N11, N10}) );
  DFFRX1 \money_temp_reg[2]  ( .D(N20), .CK(clk), .RN(n5), .Q(money_temp[2])
         );
  DFFRX1 \money_temp_reg[3]  ( .D(N21), .CK(clk), .RN(n5), .Q(money_temp[3])
         );
  DFFRX1 \money_temp_reg[4]  ( .D(N22), .CK(clk), .RN(n5), .Q(money_temp[4])
         );
  DFFRX1 \money_temp_reg[5]  ( .D(N23), .CK(clk), .RN(n5), .Q(money_temp[5])
         );
  DFFRX1 \money_temp_reg[1]  ( .D(N19), .CK(clk), .RN(n5), .Q(money_temp[1])
         );
  DFFRX1 \phase_reg[1]  ( .D(N17), .CK(clk), .RN(n5), .Q(phase[1]) );
  DFFRX1 \money_temp_reg[0]  ( .D(N18), .CK(clk), .RN(n5), .Q(money_temp[0])
         );
  DFFRX1 \phase_reg[0]  ( .D(N16), .CK(clk), .RN(n5), .Q(phase[0]) );
  AO22X1 U20 ( .A0(money[5]), .A1(N16), .B0(N15), .B1(N17), .Y(N23) );
  AO22X1 U21 ( .A0(money[4]), .A1(N16), .B0(N14), .B1(N17), .Y(N22) );
  AO22X1 U22 ( .A0(money[3]), .A1(N16), .B0(N13), .B1(N17), .Y(N21) );
  AO22X1 U23 ( .A0(money[2]), .A1(N16), .B0(N12), .B1(N17), .Y(N20) );
  NOR3BX2 U24 ( .AN(en), .B(phase[0]), .C(phase[1]), .Y(N16) );
  AO22X1 U25 ( .A0(money[1]), .A1(N16), .B0(N11), .B1(N17), .Y(N19) );
  AO22X1 U26 ( .A0(money[0]), .A1(N16), .B0(N10), .B1(N17), .Y(N18) );
  AND2X2 U27 ( .A(money_temp[0]), .B(finish), .Y(change[0]) );
  AND2X2 U28 ( .A(money_temp[1]), .B(finish), .Y(change[1]) );
  AND2X2 U29 ( .A(money_temp[2]), .B(finish), .Y(change[2]) );
  AND2X2 U30 ( .A(money_temp[3]), .B(finish), .Y(change[3]) );
  AND2X2 U31 ( .A(money_temp[4]), .B(finish), .Y(change[4]) );
  AND2X2 U32 ( .A(money_temp[5]), .B(finish), .Y(change[5]) );
  NOR2BX2 U33 ( .AN(phase[0]), .B(phase[1]), .Y(N17) );
  INVX3 U34 ( .A(rst), .Y(n5) );
endmodule

