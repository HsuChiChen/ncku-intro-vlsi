/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Wed Mar 31 01:09:45 2021
/////////////////////////////////////////////////////////////


module CONV_DW_mult_uns_8 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n77,
         n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, \product[15] , n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U6 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  ADDFXL U8 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  ADDFXL U10 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  ADDFXL U11 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFXL U12 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  ADDFXL U13 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n203), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n205), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  CLKXOR2X2 U142 ( .A(b[6]), .B(n207), .Y(n216) );
  NAND2X4 U143 ( .A(a[1]), .B(n208), .Y(n210) );
  CLKINVX8 U144 ( .A(a[0]), .Y(n208) );
  OAI22X1 U145 ( .A0(n227), .A1(n228), .B0(n192), .B1(n229), .Y(n71) );
  OAI22XL U146 ( .A0(n230), .A1(n228), .B0(n192), .B1(n231), .Y(n69) );
  INVX3 U147 ( .A(a[5]), .Y(n204) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n209) );
  INVX8 U149 ( .A(n198), .Y(n218) );
  CLKBUFX8 U150 ( .A(n197), .Y(n192) );
  INVX3 U151 ( .A(a[7]), .Y(n202) );
  OR2X1 U152 ( .A(b[0]), .B(n210), .Y(n193) );
  ADDFX2 U153 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  OAI22XL U154 ( .A0(n229), .A1(n228), .B0(n192), .B1(n230), .Y(n70) );
  AND2X1 U155 ( .A(n86), .B(n79), .Y(n191) );
  OAI22X1 U156 ( .A0(n212), .A1(n210), .B0(n213), .B1(n208), .Y(n86) );
  CMPR22X2 U157 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  OAI21X1 U158 ( .A0(b[0]), .A1(n207), .B0(n210), .Y(n56) );
  XOR2X2 U159 ( .A(a[2]), .B(a[1]), .Y(n198) );
  XOR2X1 U160 ( .A(a[3]), .B(a[2]), .Y(n249) );
  OAI22X1 U161 ( .A0(n211), .A1(n210), .B0(n212), .B1(n208), .Y(n87) );
  ADDFX2 U162 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  NAND2X8 U163 ( .A(n218), .B(n249), .Y(n220) );
  NOR2X1 U164 ( .A(n218), .B(n221), .Y(n196) );
  XOR2X1 U165 ( .A(b[1]), .B(n206), .Y(n221) );
  OAI22X1 U166 ( .A0(n221), .A1(n220), .B0(n218), .B1(n222), .Y(n78) );
  ADDFX1 U167 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  ADDHX1 U168 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  XNOR2X2 U169 ( .A(a[4]), .B(a[3]), .Y(n197) );
  OR2XL U170 ( .A(n211), .B(n208), .Y(n194) );
  NAND2X2 U171 ( .A(n193), .B(n194), .Y(n88) );
  XOR2X4 U172 ( .A(b[1]), .B(n207), .Y(n211) );
  NOR2X1 U173 ( .A(n219), .B(n220), .Y(n195) );
  OR2X2 U174 ( .A(n195), .B(n196), .Y(n79) );
  XOR2X1 U175 ( .A(n86), .B(n79), .Y(n52) );
  XOR2XL U176 ( .A(n206), .B(b[0]), .Y(n219) );
  ADDFHX2 U177 ( .A(n50), .B(n191), .CI(n13), .CO(n12), .S(product[4]) );
  ADDFHX2 U178 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  NAND2X8 U179 ( .A(n192), .B(n250), .Y(n228) );
  NOR2X2 U180 ( .A(n192), .B(n209), .Y(n72) );
  CLKINVX12 U181 ( .A(a[1]), .Y(n207) );
  CMPR32X2 U182 ( .A(n18), .B(n201), .C(n4), .CO(n3), .S(product[13]) );
  ADDFHX2 U183 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  INVX1 U184 ( .A(n30), .Y(n205) );
  OAI2BB1XL U185 ( .A0N(n208), .A1N(n210), .B0(n217), .Y(n246) );
  ADDFX1 U186 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  NAND2X4 U187 ( .A(n199), .B(n251), .Y(n238) );
  XOR2XL U188 ( .A(b[2]), .B(n206), .Y(n222) );
  XOR2XL U189 ( .A(b[3]), .B(n206), .Y(n223) );
  CLKINVX8 U190 ( .A(a[3]), .Y(n206) );
  XOR2XL U191 ( .A(b[4]), .B(n206), .Y(n224) );
  XOR2XL U192 ( .A(b[1]), .B(n202), .Y(n239) );
  XOR2XL U193 ( .A(b[2]), .B(n202), .Y(n240) );
  XOR2XL U194 ( .A(b[3]), .B(n202), .Y(n241) );
  XOR2XL U195 ( .A(b[5]), .B(n206), .Y(n225) );
  XOR2XL U196 ( .A(b[6]), .B(n206), .Y(n248) );
  XOR2XL U197 ( .A(b[8]), .B(n206), .Y(n226) );
  XOR2XL U198 ( .A(b[6]), .B(n202), .Y(n244) );
  XOR2XL U199 ( .A(b[4]), .B(n202), .Y(n242) );
  XOR2XL U200 ( .A(b[5]), .B(n202), .Y(n243) );
  XOR2XL U201 ( .A(b[8]), .B(n202), .Y(n245) );
  CLKINVX1 U202 ( .A(n16), .Y(n201) );
  CLKINVX1 U203 ( .A(n2), .Y(\product[15] ) );
  OAI22XL U204 ( .A0(n213), .A1(n210), .B0(n214), .B1(n208), .Y(n85) );
  CMPR32X2 U205 ( .A(n16), .B(n57), .C(n3), .CO(n2), .S(product[14]) );
  CLKINVX1 U206 ( .A(n22), .Y(n203) );
  CLKBUFX3 U207 ( .A(n236), .Y(n199) );
  XNOR2X1 U208 ( .A(a[6]), .B(a[5]), .Y(n236) );
  NOR2X1 U209 ( .A(n208), .B(n209), .Y(product[0]) );
  XOR2X1 U210 ( .A(b[2]), .B(n207), .Y(n212) );
  XOR2X1 U211 ( .A(b[3]), .B(n207), .Y(n213) );
  OAI22XL U212 ( .A0(n214), .A1(n210), .B0(n215), .B1(n208), .Y(n84) );
  XOR2X1 U213 ( .A(b[4]), .B(n207), .Y(n214) );
  OAI22XL U214 ( .A0(n215), .A1(n210), .B0(n216), .B1(n208), .Y(n83) );
  XOR2X1 U215 ( .A(b[5]), .B(n207), .Y(n215) );
  OAI2BB2XL U216 ( .B0(n216), .B1(n210), .A0N(n217), .A1N(a[0]), .Y(n82) );
  NOR2X1 U217 ( .A(n218), .B(n209), .Y(n80) );
  OAI22XL U218 ( .A0(n222), .A1(n220), .B0(n218), .B1(n223), .Y(n77) );
  OAI22XL U219 ( .A0(n223), .A1(n220), .B0(n218), .B1(n224), .Y(n76) );
  OAI22XL U220 ( .A0(n224), .A1(n220), .B0(n218), .B1(n225), .Y(n75) );
  AO21X1 U221 ( .A0(n220), .A1(n218), .B0(n226), .Y(n73) );
  XOR2X1 U222 ( .A(n204), .B(b[0]), .Y(n227) );
  XOR2X1 U223 ( .A(b[1]), .B(n204), .Y(n229) );
  XOR2X1 U224 ( .A(b[2]), .B(n204), .Y(n230) );
  OAI22XL U225 ( .A0(n231), .A1(n228), .B0(n192), .B1(n232), .Y(n68) );
  XOR2X1 U226 ( .A(b[3]), .B(n204), .Y(n231) );
  OAI22XL U227 ( .A0(n232), .A1(n228), .B0(n192), .B1(n233), .Y(n67) );
  XOR2X1 U228 ( .A(b[4]), .B(n204), .Y(n232) );
  OAI22XL U229 ( .A0(n233), .A1(n228), .B0(n192), .B1(n234), .Y(n66) );
  XOR2X1 U230 ( .A(b[5]), .B(n204), .Y(n233) );
  AO21X1 U231 ( .A0(n228), .A1(n192), .B0(n235), .Y(n65) );
  NOR2X1 U232 ( .A(n199), .B(n209), .Y(n64) );
  OAI22XL U233 ( .A0(n237), .A1(n238), .B0(n199), .B1(n239), .Y(n63) );
  XOR2X1 U234 ( .A(n202), .B(b[0]), .Y(n237) );
  OAI22XL U235 ( .A0(n239), .A1(n238), .B0(n199), .B1(n240), .Y(n62) );
  OAI22XL U236 ( .A0(n240), .A1(n238), .B0(n199), .B1(n241), .Y(n61) );
  OAI22XL U237 ( .A0(n241), .A1(n238), .B0(n199), .B1(n242), .Y(n60) );
  OAI22XL U238 ( .A0(n242), .A1(n238), .B0(n199), .B1(n243), .Y(n59) );
  OAI22XL U239 ( .A0(n243), .A1(n238), .B0(n199), .B1(n244), .Y(n58) );
  AO21X1 U240 ( .A0(n238), .A1(n199), .B0(n245), .Y(n57) );
  OAI32X1 U241 ( .A0(n206), .A1(b[0]), .A2(n218), .B0(n206), .B1(n220), .Y(n55) );
  OAI32X1 U242 ( .A0(n204), .A1(b[0]), .A2(n192), .B0(n204), .B1(n228), .Y(n54) );
  OAI32X1 U243 ( .A0(n202), .A1(b[0]), .A2(n199), .B0(n202), .B1(n238), .Y(n53) );
  XOR2X1 U244 ( .A(n246), .B(n247), .Y(n36) );
  NAND2BX1 U245 ( .AN(n246), .B(n247), .Y(n35) );
  OA22X1 U246 ( .A0(n225), .A1(n220), .B0(n218), .B1(n248), .Y(n247) );
  XOR2X1 U247 ( .A(b[8]), .B(a[1]), .Y(n217) );
  OAI22XL U248 ( .A0(n218), .A1(n226), .B0(n248), .B1(n220), .Y(n30) );
  OAI22XL U249 ( .A0(n192), .A1(n235), .B0(n234), .B1(n228), .Y(n22) );
  XOR2X1 U250 ( .A(a[5]), .B(a[4]), .Y(n250) );
  XOR2X1 U251 ( .A(b[6]), .B(n204), .Y(n234) );
  XOR2X1 U252 ( .A(b[8]), .B(n204), .Y(n235) );
  OAI22XL U253 ( .A0(n199), .A1(n245), .B0(n244), .B1(n238), .Y(n16) );
  XOR2X1 U254 ( .A(a[8]), .B(a[6]), .Y(n251) );
endmodule


module CONV_DW_mult_uns_7 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, \product[15] , n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U8 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  ADDFXL U14 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  ADDFXL U15 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n203), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n205), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  OAI22X1 U142 ( .A0(n211), .A1(n210), .B0(n212), .B1(n208), .Y(n87) );
  ADDFX2 U143 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFHX1 U144 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  OAI21X2 U145 ( .A0(b[0]), .A1(n207), .B0(n210), .Y(n56) );
  CMPR22X2 U146 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  OAI22X2 U147 ( .A0(n212), .A1(n210), .B0(n213), .B1(n208), .Y(n86) );
  ADDFHX1 U148 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  OAI22X1 U149 ( .A0(n213), .A1(n210), .B0(n214), .B1(n208), .Y(n85) );
  ADDHX2 U150 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  XOR2X2 U151 ( .A(b[1]), .B(n206), .Y(n221) );
  XOR2X4 U152 ( .A(b[2]), .B(n207), .Y(n212) );
  OAI22X1 U153 ( .A0(n221), .A1(n220), .B0(n218), .B1(n222), .Y(n78) );
  XOR2X4 U154 ( .A(b[1]), .B(n207), .Y(n211) );
  CMPR32X2 U155 ( .A(n16), .B(n57), .C(n3), .CO(n2), .S(product[14]) );
  ADDFX1 U156 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  CMPR22X2 U157 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  XNOR2X2 U158 ( .A(a[6]), .B(a[5]), .Y(n237) );
  INVX16 U159 ( .A(a[5]), .Y(n204) );
  NAND2X2 U160 ( .A(b[1]), .B(a[5]), .Y(n192) );
  XOR2X4 U161 ( .A(b[5]), .B(n207), .Y(n215) );
  NAND2X2 U162 ( .A(n192), .B(n193), .Y(n230) );
  OAI22X1 U163 ( .A0(b[0]), .A1(n210), .B0(n211), .B1(n208), .Y(n88) );
  ADDFHX2 U164 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  INVX3 U165 ( .A(a[7]), .Y(n202) );
  ADDFHX1 U166 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  OAI22XL U167 ( .A0(n230), .A1(n229), .B0(n198), .B1(n231), .Y(n70) );
  ADDFXL U168 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  ADDFXL U169 ( .A(n18), .B(n201), .CI(n4), .CO(n3), .S(product[13]) );
  ADDFX2 U170 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  INVX3 U171 ( .A(a[3]), .Y(n206) );
  XOR2X2 U172 ( .A(b[3]), .B(n207), .Y(n213) );
  NAND2X8 U173 ( .A(n218), .B(n250), .Y(n220) );
  CLKXOR2X2 U174 ( .A(a[3]), .B(a[2]), .Y(n250) );
  INVX16 U175 ( .A(n197), .Y(n218) );
  XOR2X4 U176 ( .A(a[2]), .B(a[1]), .Y(n197) );
  NAND2X1 U177 ( .A(n191), .B(n204), .Y(n193) );
  INVXL U178 ( .A(b[1]), .Y(n191) );
  OAI22X2 U179 ( .A0(n228), .A1(n229), .B0(n198), .B1(n230), .Y(n71) );
  OAI22XL U180 ( .A0(n222), .A1(n220), .B0(n218), .B1(n223), .Y(n77) );
  NAND2X8 U181 ( .A(n199), .B(n252), .Y(n239) );
  CLKINVX12 U182 ( .A(a[0]), .Y(n208) );
  NAND2XL U183 ( .A(b[2]), .B(a[3]), .Y(n195) );
  NAND2X2 U184 ( .A(n195), .B(n196), .Y(n222) );
  NAND2X1 U185 ( .A(n194), .B(n206), .Y(n196) );
  INVXL U186 ( .A(b[2]), .Y(n194) );
  ADDFX2 U187 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  CLKINVX12 U188 ( .A(a[1]), .Y(n207) );
  OAI22XL U189 ( .A0(n214), .A1(n210), .B0(n215), .B1(n208), .Y(n84) );
  NAND2X4 U190 ( .A(a[1]), .B(n208), .Y(n210) );
  NAND2X8 U191 ( .A(n198), .B(n251), .Y(n229) );
  INVX2 U192 ( .A(b[0]), .Y(n209) );
  INVX1 U193 ( .A(n30), .Y(n205) );
  OAI2BB1XL U194 ( .A0N(n208), .A1N(n210), .B0(n217), .Y(n247) );
  INVX1 U195 ( .A(n22), .Y(n203) );
  NAND2BXL U196 ( .AN(n247), .B(n248), .Y(n35) );
  BUFX8 U197 ( .A(n227), .Y(n198) );
  OAI22X2 U198 ( .A0(n219), .A1(n220), .B0(n218), .B1(n221), .Y(n79) );
  XOR2XL U199 ( .A(b[3]), .B(n206), .Y(n223) );
  XOR2XL U200 ( .A(b[4]), .B(n206), .Y(n224) );
  XOR2XL U201 ( .A(b[2]), .B(n204), .Y(n231) );
  XOR2XL U202 ( .A(b[3]), .B(n204), .Y(n232) );
  XOR2XL U203 ( .A(b[1]), .B(n202), .Y(n240) );
  XOR2XL U204 ( .A(b[5]), .B(n206), .Y(n225) );
  XOR2XL U205 ( .A(b[6]), .B(n204), .Y(n235) );
  XOR2XL U206 ( .A(b[4]), .B(n204), .Y(n233) );
  XOR2XL U207 ( .A(b[5]), .B(n204), .Y(n234) );
  XOR2XL U208 ( .A(b[2]), .B(n202), .Y(n241) );
  XOR2XL U209 ( .A(b[3]), .B(n202), .Y(n242) );
  XOR2XL U210 ( .A(b[4]), .B(n202), .Y(n243) );
  XOR2XL U211 ( .A(b[5]), .B(n202), .Y(n244) );
  XOR2XL U212 ( .A(b[6]), .B(n206), .Y(n249) );
  XOR2XL U213 ( .A(b[8]), .B(n206), .Y(n226) );
  XOR2XL U214 ( .A(b[8]), .B(n204), .Y(n236) );
  XOR2XL U215 ( .A(b[6]), .B(n202), .Y(n245) );
  XOR2XL U216 ( .A(b[8]), .B(n202), .Y(n246) );
  CLKINVX1 U217 ( .A(n2), .Y(\product[15] ) );
  ADDFXL U218 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  CLKINVX1 U219 ( .A(n16), .Y(n201) );
  XNOR2X1 U220 ( .A(a[4]), .B(a[3]), .Y(n227) );
  CLKBUFX3 U221 ( .A(n237), .Y(n199) );
  NOR2X1 U222 ( .A(n208), .B(n209), .Y(product[0]) );
  XOR2X1 U223 ( .A(b[4]), .B(n207), .Y(n214) );
  OAI22XL U224 ( .A0(n215), .A1(n210), .B0(n216), .B1(n208), .Y(n83) );
  OAI2BB2XL U225 ( .B0(n216), .B1(n210), .A0N(n217), .A1N(a[0]), .Y(n82) );
  XOR2X1 U226 ( .A(b[6]), .B(n207), .Y(n216) );
  NOR2X1 U227 ( .A(n218), .B(n209), .Y(n80) );
  XOR2X1 U228 ( .A(n206), .B(b[0]), .Y(n219) );
  OAI22XL U229 ( .A0(n223), .A1(n220), .B0(n218), .B1(n224), .Y(n76) );
  OAI22XL U230 ( .A0(n224), .A1(n220), .B0(n218), .B1(n225), .Y(n75) );
  AO21X1 U231 ( .A0(n220), .A1(n218), .B0(n226), .Y(n73) );
  NOR2X1 U232 ( .A(n198), .B(n209), .Y(n72) );
  XOR2X1 U233 ( .A(n204), .B(b[0]), .Y(n228) );
  OAI22XL U234 ( .A0(n231), .A1(n229), .B0(n198), .B1(n232), .Y(n69) );
  OAI22XL U235 ( .A0(n232), .A1(n229), .B0(n198), .B1(n233), .Y(n68) );
  OAI22XL U236 ( .A0(n233), .A1(n229), .B0(n198), .B1(n234), .Y(n67) );
  OAI22XL U237 ( .A0(n234), .A1(n229), .B0(n198), .B1(n235), .Y(n66) );
  AO21X1 U238 ( .A0(n229), .A1(n198), .B0(n236), .Y(n65) );
  NOR2X1 U239 ( .A(n199), .B(n209), .Y(n64) );
  OAI22XL U240 ( .A0(n238), .A1(n239), .B0(n199), .B1(n240), .Y(n63) );
  XOR2X1 U241 ( .A(n202), .B(b[0]), .Y(n238) );
  OAI22XL U242 ( .A0(n240), .A1(n239), .B0(n199), .B1(n241), .Y(n62) );
  OAI22XL U243 ( .A0(n241), .A1(n239), .B0(n199), .B1(n242), .Y(n61) );
  OAI22XL U244 ( .A0(n242), .A1(n239), .B0(n199), .B1(n243), .Y(n60) );
  OAI22XL U245 ( .A0(n243), .A1(n239), .B0(n199), .B1(n244), .Y(n59) );
  OAI22XL U246 ( .A0(n244), .A1(n239), .B0(n199), .B1(n245), .Y(n58) );
  AO21X1 U247 ( .A0(n239), .A1(n199), .B0(n246), .Y(n57) );
  OAI32X1 U248 ( .A0(n206), .A1(b[0]), .A2(n218), .B0(n206), .B1(n220), .Y(n55) );
  OAI32X1 U249 ( .A0(n204), .A1(b[0]), .A2(n198), .B0(n204), .B1(n229), .Y(n54) );
  OAI32X1 U250 ( .A0(n202), .A1(b[0]), .A2(n199), .B0(n202), .B1(n239), .Y(n53) );
  XOR2X1 U251 ( .A(n247), .B(n248), .Y(n36) );
  OA22X1 U252 ( .A0(n225), .A1(n220), .B0(n218), .B1(n249), .Y(n248) );
  XOR2X1 U253 ( .A(b[8]), .B(a[1]), .Y(n217) );
  OAI22XL U254 ( .A0(n218), .A1(n226), .B0(n249), .B1(n220), .Y(n30) );
  OAI22XL U255 ( .A0(n198), .A1(n236), .B0(n235), .B1(n229), .Y(n22) );
  XOR2X1 U256 ( .A(a[5]), .B(a[4]), .Y(n251) );
  OAI22XL U257 ( .A0(n199), .A1(n246), .B0(n245), .B1(n239), .Y(n16) );
  XOR2X1 U258 ( .A(a[8]), .B(a[6]), .Y(n252) );
endmodule


module CONV_DW_mult_uns_6 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, \product[15] , n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U12 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  ADDFXL U14 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n212), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  NAND2X4 U142 ( .A(a[1]), .B(n215), .Y(n217) );
  ADDFX2 U143 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  CLKXOR2X2 U144 ( .A(b[3]), .B(n214), .Y(n220) );
  OR2X1 U145 ( .A(n192), .B(n227), .Y(n198) );
  XNOR2X1 U146 ( .A(a[2]), .B(a[1]), .Y(n205) );
  OAI22X2 U147 ( .A0(b[0]), .A1(n217), .B0(n218), .B1(n215), .Y(n88) );
  ADDFX2 U148 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  OAI21X1 U149 ( .A0(b[0]), .A1(n214), .B0(n217), .Y(n56) );
  XOR2XL U150 ( .A(b[5]), .B(n213), .Y(n231) );
  ADDFXL U151 ( .A(n210), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  NAND2X2 U152 ( .A(n206), .B(n257), .Y(n244) );
  NAND3X2 U153 ( .A(n194), .B(n195), .C(n196), .Y(n5) );
  NAND2X1 U154 ( .A(n25), .B(n21), .Y(n196) );
  NAND2X1 U155 ( .A(n21), .B(n6), .Y(n194) );
  INVX3 U156 ( .A(a[7]), .Y(n209) );
  OAI22XL U157 ( .A0(n235), .A1(n234), .B0(n204), .B1(n236), .Y(n70) );
  ADDFX2 U158 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  ADDFXL U159 ( .A(n18), .B(n208), .CI(n4), .CO(n3), .S(product[13]) );
  OR2X2 U160 ( .A(n225), .B(n226), .Y(n197) );
  XOR2X1 U161 ( .A(n213), .B(b[0]), .Y(n225) );
  NAND2X1 U162 ( .A(n202), .B(n203), .Y(n235) );
  NAND2X1 U163 ( .A(b[1]), .B(a[5]), .Y(n202) );
  INVX4 U164 ( .A(a[3]), .Y(n213) );
  XOR2X1 U165 ( .A(a[5]), .B(a[4]), .Y(n256) );
  INVX6 U166 ( .A(n191), .Y(n192) );
  INVX3 U167 ( .A(n205), .Y(n191) );
  NAND2X1 U168 ( .A(n25), .B(n6), .Y(n195) );
  NOR2X1 U169 ( .A(n215), .B(n216), .Y(product[0]) );
  ADDFX2 U170 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFXL U171 ( .A(n16), .B(n57), .CI(n3), .CO(n2), .S(product[14]) );
  XOR2X1 U172 ( .A(n6), .B(n193), .Y(product[11]) );
  INVX3 U173 ( .A(a[5]), .Y(n211) );
  XOR2X2 U174 ( .A(b[2]), .B(n214), .Y(n219) );
  ADDFHX2 U175 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  OAI22X1 U176 ( .A0(n220), .A1(n217), .B0(n221), .B1(n215), .Y(n85) );
  OAI22X1 U177 ( .A0(n219), .A1(n217), .B0(n220), .B1(n215), .Y(n86) );
  ADDFX2 U178 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  ADDHX1 U179 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  XOR2XL U180 ( .A(n21), .B(n25), .Y(n193) );
  ADDFHX4 U181 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  ADDFHX4 U182 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  NAND2X2 U183 ( .A(n197), .B(n198), .Y(n79) );
  XOR2X1 U184 ( .A(b[1]), .B(n213), .Y(n227) );
  OR2X1 U185 ( .A(n227), .B(n226), .Y(n199) );
  OR2X1 U186 ( .A(n192), .B(n228), .Y(n200) );
  NAND2X2 U187 ( .A(n199), .B(n200), .Y(n78) );
  NAND2X8 U188 ( .A(n192), .B(n255), .Y(n226) );
  ADDFHX2 U189 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  NAND2X1 U190 ( .A(n201), .B(n211), .Y(n203) );
  INVXL U191 ( .A(b[1]), .Y(n201) );
  OAI22X1 U192 ( .A0(n233), .A1(n234), .B0(n204), .B1(n235), .Y(n71) );
  CLKINVX3 U193 ( .A(a[1]), .Y(n214) );
  INVX1 U194 ( .A(n30), .Y(n212) );
  OAI2BB1XL U195 ( .A0N(n215), .A1N(n217), .B0(n224), .Y(n252) );
  ADDHX1 U196 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  ADDHX1 U197 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  XOR2XL U198 ( .A(n211), .B(b[0]), .Y(n233) );
  NAND2X4 U199 ( .A(n204), .B(n256), .Y(n234) );
  CLKINVX8 U200 ( .A(a[0]), .Y(n215) );
  XNOR2X4 U201 ( .A(a[4]), .B(a[3]), .Y(n204) );
  XOR2XL U202 ( .A(b[2]), .B(n211), .Y(n236) );
  XOR2XL U203 ( .A(b[6]), .B(n211), .Y(n240) );
  XOR2XL U204 ( .A(b[3]), .B(n211), .Y(n237) );
  XOR2XL U205 ( .A(b[4]), .B(n211), .Y(n238) );
  XOR2XL U206 ( .A(b[5]), .B(n211), .Y(n239) );
  XOR2XL U207 ( .A(b[1]), .B(n209), .Y(n245) );
  XOR2XL U208 ( .A(b[2]), .B(n209), .Y(n246) );
  XOR2XL U209 ( .A(b[3]), .B(n209), .Y(n247) );
  XOR2XL U210 ( .A(b[4]), .B(n209), .Y(n248) );
  XOR2XL U211 ( .A(b[8]), .B(n211), .Y(n241) );
  XOR2XL U212 ( .A(b[5]), .B(n209), .Y(n249) );
  XOR2XL U213 ( .A(b[6]), .B(n209), .Y(n250) );
  XOR2XL U214 ( .A(b[8]), .B(n209), .Y(n251) );
  CLKINVX1 U215 ( .A(n16), .Y(n208) );
  CLKINVX1 U216 ( .A(n2), .Y(\product[15] ) );
  CLKINVX1 U217 ( .A(n22), .Y(n210) );
  INVX1 U218 ( .A(b[0]), .Y(n216) );
  ADDFHX1 U219 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  CLKBUFX3 U220 ( .A(n242), .Y(n206) );
  XNOR2X1 U221 ( .A(a[6]), .B(a[5]), .Y(n242) );
  OAI22XL U222 ( .A0(n218), .A1(n217), .B0(n219), .B1(n215), .Y(n87) );
  XOR2X1 U223 ( .A(b[1]), .B(n214), .Y(n218) );
  OAI22XL U224 ( .A0(n221), .A1(n217), .B0(n222), .B1(n215), .Y(n84) );
  XOR2X1 U225 ( .A(b[4]), .B(n214), .Y(n221) );
  OAI22XL U226 ( .A0(n222), .A1(n217), .B0(n223), .B1(n215), .Y(n83) );
  XOR2X1 U227 ( .A(b[5]), .B(n214), .Y(n222) );
  OAI2BB2XL U228 ( .B0(n223), .B1(n217), .A0N(n224), .A1N(a[0]), .Y(n82) );
  XOR2X1 U229 ( .A(b[6]), .B(n214), .Y(n223) );
  NOR2X1 U230 ( .A(n192), .B(n216), .Y(n80) );
  OAI22XL U231 ( .A0(n228), .A1(n226), .B0(n192), .B1(n229), .Y(n77) );
  XOR2X1 U232 ( .A(b[2]), .B(n213), .Y(n228) );
  OAI22XL U233 ( .A0(n229), .A1(n226), .B0(n192), .B1(n230), .Y(n76) );
  XOR2X1 U234 ( .A(b[3]), .B(n213), .Y(n229) );
  OAI22XL U235 ( .A0(n230), .A1(n226), .B0(n192), .B1(n231), .Y(n75) );
  XOR2X1 U236 ( .A(b[4]), .B(n213), .Y(n230) );
  AO21X1 U237 ( .A0(n226), .A1(n192), .B0(n232), .Y(n73) );
  NOR2X1 U238 ( .A(n204), .B(n216), .Y(n72) );
  OAI22XL U239 ( .A0(n236), .A1(n234), .B0(n204), .B1(n237), .Y(n69) );
  OAI22XL U240 ( .A0(n237), .A1(n234), .B0(n204), .B1(n238), .Y(n68) );
  OAI22XL U241 ( .A0(n238), .A1(n234), .B0(n204), .B1(n239), .Y(n67) );
  OAI22XL U242 ( .A0(n239), .A1(n234), .B0(n204), .B1(n240), .Y(n66) );
  AO21X1 U243 ( .A0(n234), .A1(n204), .B0(n241), .Y(n65) );
  NOR2X1 U244 ( .A(n206), .B(n216), .Y(n64) );
  OAI22XL U245 ( .A0(n243), .A1(n244), .B0(n206), .B1(n245), .Y(n63) );
  XOR2X1 U246 ( .A(n209), .B(b[0]), .Y(n243) );
  OAI22XL U247 ( .A0(n245), .A1(n244), .B0(n206), .B1(n246), .Y(n62) );
  OAI22XL U248 ( .A0(n246), .A1(n244), .B0(n206), .B1(n247), .Y(n61) );
  OAI22XL U249 ( .A0(n247), .A1(n244), .B0(n206), .B1(n248), .Y(n60) );
  OAI22XL U250 ( .A0(n248), .A1(n244), .B0(n206), .B1(n249), .Y(n59) );
  OAI22XL U251 ( .A0(n249), .A1(n244), .B0(n206), .B1(n250), .Y(n58) );
  AO21X1 U252 ( .A0(n244), .A1(n206), .B0(n251), .Y(n57) );
  OAI32X1 U253 ( .A0(n213), .A1(b[0]), .A2(n192), .B0(n213), .B1(n226), .Y(n55) );
  OAI32X1 U254 ( .A0(n211), .A1(b[0]), .A2(n204), .B0(n211), .B1(n234), .Y(n54) );
  OAI32X1 U255 ( .A0(n209), .A1(b[0]), .A2(n206), .B0(n209), .B1(n244), .Y(n53) );
  XOR2X1 U256 ( .A(n252), .B(n253), .Y(n36) );
  NAND2BX1 U257 ( .AN(n252), .B(n253), .Y(n35) );
  OA22X1 U258 ( .A0(n231), .A1(n226), .B0(n192), .B1(n254), .Y(n253) );
  XOR2X1 U259 ( .A(b[8]), .B(a[1]), .Y(n224) );
  OAI22XL U260 ( .A0(n192), .A1(n232), .B0(n254), .B1(n226), .Y(n30) );
  XOR2X1 U261 ( .A(a[3]), .B(a[2]), .Y(n255) );
  XOR2X1 U262 ( .A(b[6]), .B(n213), .Y(n254) );
  XOR2X1 U263 ( .A(b[8]), .B(n213), .Y(n232) );
  OAI22XL U264 ( .A0(n204), .A1(n241), .B0(n240), .B1(n234), .Y(n22) );
  OAI22XL U265 ( .A0(n206), .A1(n251), .B0(n250), .B1(n244), .Y(n16) );
  XOR2X1 U266 ( .A(a[8]), .B(a[6]), .Y(n257) );
endmodule


module CONV_DW_mult_uns_5 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, \product[15] , n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U11 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n203), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n205), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  ADDFX2 U142 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  ADDHX2 U143 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  OAI22X2 U144 ( .A0(b[0]), .A1(n210), .B0(n211), .B1(n208), .Y(n88) );
  OAI22X2 U145 ( .A0(n224), .A1(n220), .B0(n198), .B1(n225), .Y(n75) );
  OA22X2 U146 ( .A0(n225), .A1(n220), .B0(n198), .B1(n248), .Y(n247) );
  XOR2X1 U147 ( .A(b[5]), .B(n206), .Y(n225) );
  XOR2X1 U148 ( .A(n206), .B(b[0]), .Y(n219) );
  INVX4 U149 ( .A(a[5]), .Y(n204) );
  OAI32X4 U150 ( .A0(n202), .A1(b[0]), .A2(n199), .B0(n202), .B1(n238), .Y(n53) );
  XOR2X2 U151 ( .A(b[4]), .B(n206), .Y(n224) );
  CLKINVX6 U152 ( .A(a[3]), .Y(n206) );
  OAI22X1 U153 ( .A0(n215), .A1(n210), .B0(n216), .B1(n208), .Y(n83) );
  XOR2X2 U154 ( .A(b[6]), .B(n207), .Y(n216) );
  ADDFHX2 U155 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  OAI22X1 U156 ( .A0(n222), .A1(n220), .B0(n198), .B1(n223), .Y(n77) );
  XOR2XL U157 ( .A(b[8]), .B(n206), .Y(n226) );
  XOR2XL U158 ( .A(b[6]), .B(n206), .Y(n248) );
  OAI32X4 U159 ( .A0(n206), .A1(b[0]), .A2(n198), .B0(n206), .B1(n220), .Y(n55) );
  CLKXOR2X1 U160 ( .A(b[2]), .B(n206), .Y(n222) );
  XOR2X1 U161 ( .A(b[1]), .B(n206), .Y(n221) );
  NAND2X8 U162 ( .A(n199), .B(n251), .Y(n238) );
  NOR2X6 U163 ( .A(n199), .B(n209), .Y(n64) );
  OAI22X4 U164 ( .A0(n237), .A1(n238), .B0(n199), .B1(n239), .Y(n63) );
  OAI22X1 U165 ( .A0(n239), .A1(n238), .B0(n199), .B1(n240), .Y(n62) );
  BUFX12 U166 ( .A(n236), .Y(n199) );
  OAI22X1 U167 ( .A0(n221), .A1(n220), .B0(n198), .B1(n222), .Y(n78) );
  NAND2X6 U168 ( .A(n198), .B(n249), .Y(n220) );
  OAI22X1 U169 ( .A0(n213), .A1(n210), .B0(n214), .B1(n208), .Y(n85) );
  OAI22X1 U170 ( .A0(n229), .A1(n228), .B0(n197), .B1(n230), .Y(n70) );
  OAI22X1 U171 ( .A0(n230), .A1(n228), .B0(n197), .B1(n231), .Y(n69) );
  OAI22X1 U172 ( .A0(n227), .A1(n228), .B0(n197), .B1(n229), .Y(n71) );
  ADDFHX4 U173 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  ADDFHX2 U174 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  CLKXOR2X1 U175 ( .A(b[1]), .B(n202), .Y(n239) );
  OAI22X1 U176 ( .A0(n214), .A1(n210), .B0(n215), .B1(n208), .Y(n84) );
  INVX3 U177 ( .A(a[7]), .Y(n202) );
  ADDHX1 U178 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  XOR2X2 U179 ( .A(b[2]), .B(n207), .Y(n212) );
  INVX12 U180 ( .A(a[1]), .Y(n207) );
  XOR2X2 U181 ( .A(b[3]), .B(n207), .Y(n213) );
  INVX12 U182 ( .A(a[0]), .Y(n208) );
  BUFX8 U183 ( .A(n218), .Y(n198) );
  ADDFXL U184 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  ADDFX2 U185 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  ADDFX2 U186 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  ADDFXL U187 ( .A(n16), .B(n57), .CI(n3), .CO(n2), .S(product[14]) );
  OAI21X1 U188 ( .A0(b[0]), .A1(n207), .B0(n210), .Y(n56) );
  ADDFHX2 U189 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  OAI22X1 U190 ( .A0(n211), .A1(n210), .B0(n212), .B1(n208), .Y(n87) );
  OAI22X2 U191 ( .A0(n219), .A1(n220), .B0(n198), .B1(n221), .Y(n79) );
  ADDHX1 U192 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  OR2XL U193 ( .A(n212), .B(n210), .Y(n191) );
  OR2XL U194 ( .A(n213), .B(n208), .Y(n192) );
  NAND2X1 U195 ( .A(n191), .B(n192), .Y(n86) );
  NAND2X4 U196 ( .A(a[1]), .B(n208), .Y(n210) );
  NAND2XL U197 ( .A(n49), .B(n12), .Y(n195) );
  NOR2X1 U198 ( .A(n198), .B(n209), .Y(n80) );
  ADDFHX2 U199 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  XOR2X1 U200 ( .A(a[3]), .B(a[2]), .Y(n249) );
  NAND2XL U201 ( .A(n46), .B(n12), .Y(n194) );
  NAND2XL U202 ( .A(n49), .B(n46), .Y(n196) );
  ADDFHX2 U203 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  XOR2X1 U204 ( .A(n46), .B(n49), .Y(n193) );
  XOR2X1 U205 ( .A(n12), .B(n193), .Y(product[5]) );
  NAND3X1 U206 ( .A(n194), .B(n195), .C(n196), .Y(n11) );
  XOR2X1 U207 ( .A(b[1]), .B(n204), .Y(n229) );
  INVX2 U208 ( .A(b[0]), .Y(n209) );
  ADDFX1 U209 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  CMPR32X2 U210 ( .A(n18), .B(n201), .C(n4), .CO(n3), .S(product[13]) );
  INVX1 U211 ( .A(n30), .Y(n205) );
  OAI2BB1XL U212 ( .A0N(n208), .A1N(n210), .B0(n217), .Y(n246) );
  NAND2X4 U213 ( .A(n197), .B(n250), .Y(n228) );
  XNOR2X4 U214 ( .A(a[4]), .B(a[3]), .Y(n197) );
  XOR2XL U215 ( .A(b[2]), .B(n204), .Y(n230) );
  XOR2XL U216 ( .A(b[3]), .B(n204), .Y(n231) );
  XOR2XL U217 ( .A(b[4]), .B(n204), .Y(n232) );
  XOR2XL U218 ( .A(b[2]), .B(n202), .Y(n240) );
  XOR2XL U219 ( .A(b[6]), .B(n204), .Y(n234) );
  XOR2XL U220 ( .A(b[5]), .B(n204), .Y(n233) );
  XOR2XL U221 ( .A(b[3]), .B(n202), .Y(n241) );
  XOR2XL U222 ( .A(b[4]), .B(n202), .Y(n242) );
  XOR2XL U223 ( .A(b[5]), .B(n202), .Y(n243) );
  XOR2XL U224 ( .A(b[8]), .B(n204), .Y(n235) );
  XOR2XL U225 ( .A(b[6]), .B(n202), .Y(n244) );
  XOR2XL U226 ( .A(b[8]), .B(n202), .Y(n245) );
  CLKINVX1 U227 ( .A(n16), .Y(n201) );
  CLKINVX1 U228 ( .A(n2), .Y(\product[15] ) );
  CLKINVX1 U229 ( .A(n22), .Y(n203) );
  XNOR2X1 U230 ( .A(a[6]), .B(a[5]), .Y(n236) );
  XOR2X2 U231 ( .A(b[1]), .B(n207), .Y(n211) );
  XNOR2X4 U232 ( .A(a[2]), .B(a[1]), .Y(n218) );
  NOR2X1 U233 ( .A(n208), .B(n209), .Y(product[0]) );
  XOR2X1 U234 ( .A(b[4]), .B(n207), .Y(n214) );
  XOR2X1 U235 ( .A(b[5]), .B(n207), .Y(n215) );
  OAI2BB2XL U236 ( .B0(n216), .B1(n210), .A0N(n217), .A1N(a[0]), .Y(n82) );
  OAI22XL U237 ( .A0(n223), .A1(n220), .B0(n198), .B1(n224), .Y(n76) );
  XOR2X1 U238 ( .A(b[3]), .B(n206), .Y(n223) );
  AO21X1 U239 ( .A0(n220), .A1(n198), .B0(n226), .Y(n73) );
  NOR2X1 U240 ( .A(n197), .B(n209), .Y(n72) );
  XOR2X1 U241 ( .A(n204), .B(b[0]), .Y(n227) );
  OAI22XL U242 ( .A0(n231), .A1(n228), .B0(n197), .B1(n232), .Y(n68) );
  OAI22XL U243 ( .A0(n232), .A1(n228), .B0(n197), .B1(n233), .Y(n67) );
  OAI22XL U244 ( .A0(n233), .A1(n228), .B0(n197), .B1(n234), .Y(n66) );
  AO21X1 U245 ( .A0(n228), .A1(n197), .B0(n235), .Y(n65) );
  XOR2X1 U246 ( .A(n202), .B(b[0]), .Y(n237) );
  OAI22XL U247 ( .A0(n240), .A1(n238), .B0(n199), .B1(n241), .Y(n61) );
  OAI22XL U248 ( .A0(n241), .A1(n238), .B0(n199), .B1(n242), .Y(n60) );
  OAI22XL U249 ( .A0(n242), .A1(n238), .B0(n199), .B1(n243), .Y(n59) );
  OAI22XL U250 ( .A0(n243), .A1(n238), .B0(n199), .B1(n244), .Y(n58) );
  AO21X1 U251 ( .A0(n238), .A1(n199), .B0(n245), .Y(n57) );
  OAI32X1 U252 ( .A0(n204), .A1(b[0]), .A2(n197), .B0(n204), .B1(n228), .Y(n54) );
  XOR2X1 U253 ( .A(n246), .B(n247), .Y(n36) );
  NAND2BX1 U254 ( .AN(n246), .B(n247), .Y(n35) );
  XOR2X1 U255 ( .A(b[8]), .B(a[1]), .Y(n217) );
  OAI22XL U256 ( .A0(n198), .A1(n226), .B0(n248), .B1(n220), .Y(n30) );
  OAI22XL U257 ( .A0(n197), .A1(n235), .B0(n234), .B1(n228), .Y(n22) );
  XOR2X1 U258 ( .A(a[5]), .B(a[4]), .Y(n250) );
  OAI22XL U259 ( .A0(n199), .A1(n245), .B0(n244), .B1(n238), .Y(n16) );
  XOR2X1 U260 ( .A(a[8]), .B(a[6]), .Y(n251) );
endmodule


module CONV_DW_mult_uns_4 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, \product[15] ,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U9 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  ADDFXL U10 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  ADDFXL U11 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFXL U14 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  ADDFXL U15 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n205), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n207), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  XOR2XL U142 ( .A(b[4]), .B(n209), .Y(n216) );
  ADDHX1 U143 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  XOR2X2 U144 ( .A(b[1]), .B(n208), .Y(n223) );
  OAI22XL U145 ( .A0(n224), .A1(n222), .B0(n220), .B1(n225), .Y(n77) );
  OAI22XL U146 ( .A0(n232), .A1(n231), .B0(n200), .B1(n233), .Y(n70) );
  CLKINVX1 U147 ( .A(n2), .Y(\product[15] ) );
  XOR2X1 U148 ( .A(b[3]), .B(n209), .Y(n215) );
  INVX3 U149 ( .A(a[7]), .Y(n204) );
  NAND2X1 U150 ( .A(n197), .B(n198), .Y(n224) );
  NAND2X2 U151 ( .A(n200), .B(n253), .Y(n231) );
  ADDFHX2 U152 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  ADDFXL U153 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  ADDFX2 U154 ( .A(n18), .B(n203), .CI(n4), .CO(n3), .S(product[13]) );
  INVX3 U155 ( .A(a[3]), .Y(n208) );
  INVX3 U156 ( .A(a[5]), .Y(n206) );
  ADDFX1 U157 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  ADDFHX1 U158 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  OAI22X1 U159 ( .A0(n215), .A1(n212), .B0(n216), .B1(n210), .Y(n85) );
  NAND2X8 U160 ( .A(n220), .B(n252), .Y(n222) );
  CLKXOR2X2 U161 ( .A(a[3]), .B(a[2]), .Y(n252) );
  ADDFX2 U162 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  OAI22X1 U163 ( .A0(n213), .A1(n212), .B0(n214), .B1(n210), .Y(n87) );
  ADDFX2 U164 ( .A(n16), .B(n57), .CI(n3), .CO(n2), .S(product[14]) );
  INVX16 U165 ( .A(n199), .Y(n220) );
  XOR2X4 U166 ( .A(a[2]), .B(a[1]), .Y(n199) );
  OR2X2 U167 ( .A(b[0]), .B(n212), .Y(n191) );
  OR2XL U168 ( .A(n213), .B(n210), .Y(n192) );
  NAND2X1 U169 ( .A(n191), .B(n192), .Y(n88) );
  ADDHX1 U170 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  NAND2X4 U171 ( .A(a[1]), .B(n210), .Y(n212) );
  XOR2X4 U172 ( .A(b[1]), .B(n209), .Y(n213) );
  INVX16 U173 ( .A(a[0]), .Y(n210) );
  OAI22X1 U174 ( .A0(n230), .A1(n231), .B0(n200), .B1(n232), .Y(n71) );
  XOR2XL U175 ( .A(n206), .B(b[0]), .Y(n230) );
  NAND2X1 U176 ( .A(n194), .B(n195), .Y(n232) );
  NAND2XL U177 ( .A(b[1]), .B(a[5]), .Y(n194) );
  NAND2X1 U178 ( .A(n193), .B(n206), .Y(n195) );
  INVXL U179 ( .A(b[1]), .Y(n193) );
  NAND2XL U180 ( .A(b[2]), .B(a[3]), .Y(n197) );
  NAND2X1 U181 ( .A(n196), .B(n208), .Y(n198) );
  INVXL U182 ( .A(b[2]), .Y(n196) );
  ADDFHX1 U183 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  OAI22XL U184 ( .A0(n216), .A1(n212), .B0(n217), .B1(n210), .Y(n84) );
  ADDFX1 U185 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  CLKINVX12 U186 ( .A(a[1]), .Y(n209) );
  NAND2X4 U187 ( .A(n201), .B(n254), .Y(n241) );
  INVX1 U188 ( .A(n30), .Y(n207) );
  ADDFX1 U189 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  NOR2XL U190 ( .A(n200), .B(n211), .Y(n72) );
  OAI22X1 U191 ( .A0(n223), .A1(n222), .B0(n220), .B1(n224), .Y(n78) );
  NOR2XL U192 ( .A(n210), .B(n211), .Y(product[0]) );
  OAI2BB1XL U193 ( .A0N(n210), .A1N(n212), .B0(n219), .Y(n249) );
  INVX1 U194 ( .A(n22), .Y(n205) );
  NAND2BXL U195 ( .AN(n249), .B(n250), .Y(n35) );
  BUFX8 U196 ( .A(n229), .Y(n200) );
  OAI22X2 U197 ( .A0(n221), .A1(n222), .B0(n220), .B1(n223), .Y(n79) );
  ADDHX1 U198 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  OAI22X1 U199 ( .A0(n214), .A1(n212), .B0(n215), .B1(n210), .Y(n86) );
  XOR2XL U200 ( .A(b[3]), .B(n208), .Y(n225) );
  XOR2XL U201 ( .A(b[4]), .B(n208), .Y(n226) );
  XOR2XL U202 ( .A(b[2]), .B(n206), .Y(n233) );
  XOR2XL U203 ( .A(b[3]), .B(n206), .Y(n234) );
  XOR2XL U204 ( .A(b[1]), .B(n204), .Y(n242) );
  XOR2XL U205 ( .A(b[5]), .B(n208), .Y(n227) );
  XOR2XL U206 ( .A(b[6]), .B(n206), .Y(n237) );
  XOR2XL U207 ( .A(b[4]), .B(n206), .Y(n235) );
  XOR2XL U208 ( .A(b[5]), .B(n206), .Y(n236) );
  XOR2XL U209 ( .A(b[2]), .B(n204), .Y(n243) );
  XOR2XL U210 ( .A(b[3]), .B(n204), .Y(n244) );
  XOR2XL U211 ( .A(b[4]), .B(n204), .Y(n245) );
  XOR2XL U212 ( .A(b[5]), .B(n204), .Y(n246) );
  XOR2XL U213 ( .A(b[6]), .B(n208), .Y(n251) );
  XOR2XL U214 ( .A(b[8]), .B(n208), .Y(n228) );
  XOR2XL U215 ( .A(b[8]), .B(n206), .Y(n238) );
  XOR2XL U216 ( .A(b[6]), .B(n204), .Y(n247) );
  XOR2XL U217 ( .A(b[8]), .B(n204), .Y(n248) );
  CLKINVX1 U218 ( .A(n16), .Y(n203) );
  INVX1 U219 ( .A(b[0]), .Y(n211) );
  XNOR2X1 U220 ( .A(a[4]), .B(a[3]), .Y(n229) );
  CLKBUFX3 U221 ( .A(n239), .Y(n201) );
  XNOR2X1 U222 ( .A(a[6]), .B(a[5]), .Y(n239) );
  XOR2X1 U223 ( .A(b[2]), .B(n209), .Y(n214) );
  OAI22XL U224 ( .A0(n217), .A1(n212), .B0(n218), .B1(n210), .Y(n83) );
  XOR2X1 U225 ( .A(b[5]), .B(n209), .Y(n217) );
  OAI2BB2XL U226 ( .B0(n218), .B1(n212), .A0N(n219), .A1N(a[0]), .Y(n82) );
  XOR2X1 U227 ( .A(b[6]), .B(n209), .Y(n218) );
  NOR2X1 U228 ( .A(n220), .B(n211), .Y(n80) );
  XOR2X1 U229 ( .A(n208), .B(b[0]), .Y(n221) );
  OAI22XL U230 ( .A0(n225), .A1(n222), .B0(n220), .B1(n226), .Y(n76) );
  OAI22XL U231 ( .A0(n226), .A1(n222), .B0(n220), .B1(n227), .Y(n75) );
  AO21X1 U232 ( .A0(n222), .A1(n220), .B0(n228), .Y(n73) );
  OAI22XL U233 ( .A0(n233), .A1(n231), .B0(n200), .B1(n234), .Y(n69) );
  OAI22XL U234 ( .A0(n234), .A1(n231), .B0(n200), .B1(n235), .Y(n68) );
  OAI22XL U235 ( .A0(n235), .A1(n231), .B0(n200), .B1(n236), .Y(n67) );
  OAI22XL U236 ( .A0(n236), .A1(n231), .B0(n200), .B1(n237), .Y(n66) );
  AO21X1 U237 ( .A0(n231), .A1(n200), .B0(n238), .Y(n65) );
  NOR2X1 U238 ( .A(n201), .B(n211), .Y(n64) );
  OAI22XL U239 ( .A0(n240), .A1(n241), .B0(n201), .B1(n242), .Y(n63) );
  XOR2X1 U240 ( .A(n204), .B(b[0]), .Y(n240) );
  OAI22XL U241 ( .A0(n242), .A1(n241), .B0(n201), .B1(n243), .Y(n62) );
  OAI22XL U242 ( .A0(n243), .A1(n241), .B0(n201), .B1(n244), .Y(n61) );
  OAI22XL U243 ( .A0(n244), .A1(n241), .B0(n201), .B1(n245), .Y(n60) );
  OAI22XL U244 ( .A0(n245), .A1(n241), .B0(n201), .B1(n246), .Y(n59) );
  OAI22XL U245 ( .A0(n246), .A1(n241), .B0(n201), .B1(n247), .Y(n58) );
  AO21X1 U246 ( .A0(n241), .A1(n201), .B0(n248), .Y(n57) );
  OAI21XL U247 ( .A0(b[0]), .A1(n209), .B0(n212), .Y(n56) );
  OAI32X1 U248 ( .A0(n208), .A1(b[0]), .A2(n220), .B0(n208), .B1(n222), .Y(n55) );
  OAI32X1 U249 ( .A0(n206), .A1(b[0]), .A2(n200), .B0(n206), .B1(n231), .Y(n54) );
  OAI32X1 U250 ( .A0(n204), .A1(b[0]), .A2(n201), .B0(n204), .B1(n241), .Y(n53) );
  XOR2X1 U251 ( .A(n249), .B(n250), .Y(n36) );
  OA22X1 U252 ( .A0(n227), .A1(n222), .B0(n220), .B1(n251), .Y(n250) );
  XOR2X1 U253 ( .A(b[8]), .B(a[1]), .Y(n219) );
  OAI22XL U254 ( .A0(n220), .A1(n228), .B0(n251), .B1(n222), .Y(n30) );
  OAI22XL U255 ( .A0(n200), .A1(n238), .B0(n237), .B1(n231), .Y(n22) );
  XOR2X1 U256 ( .A(a[5]), .B(a[4]), .Y(n253) );
  OAI22XL U257 ( .A0(n201), .A1(n248), .B0(n247), .B1(n241), .Y(n16) );
  XOR2X1 U258 ( .A(a[8]), .B(a[6]), .Y(n254) );
endmodule


module CONV_DW_mult_uns_3 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, n194, n195, n196, n197, \product[15] , n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U6 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  ADDFXL U7 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  ADDFXL U9 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  ADDFXL U10 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  ADDFXL U16 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  ADDHXL U17 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n201), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n203), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  ADDFXL U31 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  ADDHX1 U142 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  ADDFHX4 U143 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFX2 U144 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  ADDFX2 U145 ( .A(n16), .B(n57), .CI(n3), .CO(n2), .S(product[14]) );
  OAI22X1 U146 ( .A0(n227), .A1(n226), .B0(n195), .B1(n228), .Y(n70) );
  OAI22X2 U147 ( .A0(n210), .A1(n191), .B0(n211), .B1(n206), .Y(n86) );
  CLKXOR2X2 U148 ( .A(b[2]), .B(n205), .Y(n210) );
  XNOR2X2 U149 ( .A(a[2]), .B(a[1]), .Y(n216) );
  XOR2X4 U150 ( .A(a[3]), .B(a[2]), .Y(n247) );
  XOR2X1 U151 ( .A(n204), .B(b[0]), .Y(n217) );
  INVX12 U152 ( .A(a[3]), .Y(n204) );
  XOR2X1 U153 ( .A(b[1]), .B(n200), .Y(n237) );
  XOR2X4 U154 ( .A(b[1]), .B(n205), .Y(n209) );
  OAI22X1 U155 ( .A0(n219), .A1(n218), .B0(n196), .B1(n220), .Y(n78) );
  OAI22X2 U156 ( .A0(n217), .A1(n218), .B0(n196), .B1(n219), .Y(n79) );
  CLKINVX12 U157 ( .A(b[0]), .Y(n207) );
  OAI21X2 U158 ( .A0(b[0]), .A1(n205), .B0(n191), .Y(n56) );
  XOR2X1 U159 ( .A(n202), .B(b[0]), .Y(n225) );
  OAI32XL U160 ( .A0(n204), .A1(b[0]), .A2(n196), .B0(n204), .B1(n218), .Y(n55) );
  OAI22X1 U161 ( .A0(n211), .A1(n191), .B0(n212), .B1(n206), .Y(n85) );
  CLKXOR2X1 U162 ( .A(b[3]), .B(n205), .Y(n211) );
  BUFX12 U163 ( .A(n208), .Y(n191) );
  OAI22X1 U164 ( .A0(n209), .A1(n191), .B0(n210), .B1(n206), .Y(n87) );
  NAND2X8 U165 ( .A(n196), .B(n247), .Y(n218) );
  ADDFHX2 U166 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  XOR2X4 U167 ( .A(b[3]), .B(n204), .Y(n221) );
  OAI22X1 U168 ( .A0(n225), .A1(n226), .B0(n195), .B1(n227), .Y(n71) );
  ADDHX1 U169 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  NAND2X2 U170 ( .A(n193), .B(n194), .Y(n227) );
  NAND2XL U171 ( .A(b[1]), .B(a[5]), .Y(n193) );
  INVX6 U172 ( .A(a[0]), .Y(n206) );
  INVX3 U173 ( .A(a[7]), .Y(n200) );
  NAND2X2 U174 ( .A(n197), .B(n249), .Y(n236) );
  ADDFXL U175 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  ADDFXL U176 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  OAI22XL U177 ( .A0(n220), .A1(n218), .B0(n196), .B1(n221), .Y(n77) );
  ADDFHX2 U178 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  OAI22X1 U179 ( .A0(b[0]), .A1(n191), .B0(n209), .B1(n206), .Y(n88) );
  CLKXOR2X1 U180 ( .A(a[5]), .B(a[4]), .Y(n248) );
  NAND2X1 U181 ( .A(n192), .B(n202), .Y(n194) );
  INVXL U182 ( .A(b[1]), .Y(n192) );
  INVX3 U183 ( .A(a[5]), .Y(n202) );
  ADDFHX2 U184 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  NAND2X2 U185 ( .A(a[1]), .B(n206), .Y(n208) );
  INVX1 U186 ( .A(n30), .Y(n203) );
  OAI2BB1XL U187 ( .A0N(n206), .A1N(n191), .B0(n215), .Y(n244) );
  ADDHX1 U188 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  NAND2X4 U189 ( .A(n195), .B(n248), .Y(n226) );
  XNOR2X4 U190 ( .A(a[4]), .B(a[3]), .Y(n195) );
  CLKINVX12 U191 ( .A(a[1]), .Y(n205) );
  BUFX20 U192 ( .A(n216), .Y(n196) );
  XOR2XL U193 ( .A(b[6]), .B(n202), .Y(n232) );
  XOR2XL U194 ( .A(b[2]), .B(n202), .Y(n228) );
  XOR2XL U195 ( .A(b[3]), .B(n202), .Y(n229) );
  XOR2XL U196 ( .A(b[4]), .B(n202), .Y(n230) );
  XOR2XL U197 ( .A(b[5]), .B(n202), .Y(n231) );
  XOR2XL U198 ( .A(b[2]), .B(n200), .Y(n238) );
  XOR2XL U199 ( .A(b[3]), .B(n200), .Y(n239) );
  XOR2XL U200 ( .A(b[4]), .B(n200), .Y(n240) );
  XOR2XL U201 ( .A(b[8]), .B(n202), .Y(n233) );
  XOR2XL U202 ( .A(b[6]), .B(n200), .Y(n242) );
  XOR2XL U203 ( .A(b[5]), .B(n200), .Y(n241) );
  XOR2XL U204 ( .A(b[8]), .B(n200), .Y(n243) );
  CLKINVX1 U205 ( .A(n2), .Y(\product[15] ) );
  CLKINVX1 U206 ( .A(n16), .Y(n199) );
  CLKINVX1 U207 ( .A(n22), .Y(n201) );
  CLKBUFX3 U208 ( .A(n234), .Y(n197) );
  XNOR2X1 U209 ( .A(a[6]), .B(a[5]), .Y(n234) );
  ADDFX2 U210 ( .A(n18), .B(n199), .CI(n4), .CO(n3), .S(product[13]) );
  NOR2X1 U211 ( .A(n206), .B(n207), .Y(product[0]) );
  OAI22XL U212 ( .A0(n212), .A1(n191), .B0(n213), .B1(n206), .Y(n84) );
  XOR2X1 U213 ( .A(b[4]), .B(n205), .Y(n212) );
  OAI22XL U214 ( .A0(n213), .A1(n191), .B0(n214), .B1(n206), .Y(n83) );
  XOR2X1 U215 ( .A(b[5]), .B(n205), .Y(n213) );
  OAI2BB2XL U216 ( .B0(n214), .B1(n191), .A0N(n215), .A1N(a[0]), .Y(n82) );
  XOR2X1 U217 ( .A(b[6]), .B(n205), .Y(n214) );
  NOR2X1 U218 ( .A(n196), .B(n207), .Y(n80) );
  XOR2X1 U219 ( .A(b[1]), .B(n204), .Y(n219) );
  XOR2X1 U220 ( .A(b[2]), .B(n204), .Y(n220) );
  OAI22XL U221 ( .A0(n221), .A1(n218), .B0(n196), .B1(n222), .Y(n76) );
  OAI22XL U222 ( .A0(n222), .A1(n218), .B0(n196), .B1(n223), .Y(n75) );
  XOR2X1 U223 ( .A(b[4]), .B(n204), .Y(n222) );
  AO21X1 U224 ( .A0(n218), .A1(n196), .B0(n224), .Y(n73) );
  NOR2X1 U225 ( .A(n195), .B(n207), .Y(n72) );
  OAI22XL U226 ( .A0(n228), .A1(n226), .B0(n195), .B1(n229), .Y(n69) );
  OAI22XL U227 ( .A0(n229), .A1(n226), .B0(n195), .B1(n230), .Y(n68) );
  OAI22XL U228 ( .A0(n230), .A1(n226), .B0(n195), .B1(n231), .Y(n67) );
  OAI22XL U229 ( .A0(n231), .A1(n226), .B0(n195), .B1(n232), .Y(n66) );
  AO21X1 U230 ( .A0(n226), .A1(n195), .B0(n233), .Y(n65) );
  NOR2X1 U231 ( .A(n197), .B(n207), .Y(n64) );
  OAI22XL U232 ( .A0(n235), .A1(n236), .B0(n197), .B1(n237), .Y(n63) );
  XOR2X1 U233 ( .A(n200), .B(b[0]), .Y(n235) );
  OAI22XL U234 ( .A0(n237), .A1(n236), .B0(n197), .B1(n238), .Y(n62) );
  OAI22XL U235 ( .A0(n238), .A1(n236), .B0(n197), .B1(n239), .Y(n61) );
  OAI22XL U236 ( .A0(n239), .A1(n236), .B0(n197), .B1(n240), .Y(n60) );
  OAI22XL U237 ( .A0(n240), .A1(n236), .B0(n197), .B1(n241), .Y(n59) );
  OAI22XL U238 ( .A0(n241), .A1(n236), .B0(n197), .B1(n242), .Y(n58) );
  AO21X1 U239 ( .A0(n236), .A1(n197), .B0(n243), .Y(n57) );
  OAI32X1 U240 ( .A0(n202), .A1(b[0]), .A2(n195), .B0(n202), .B1(n226), .Y(n54) );
  OAI32X1 U241 ( .A0(n200), .A1(b[0]), .A2(n197), .B0(n200), .B1(n236), .Y(n53) );
  XOR2X1 U242 ( .A(n244), .B(n245), .Y(n36) );
  NAND2BX1 U243 ( .AN(n244), .B(n245), .Y(n35) );
  OA22X1 U244 ( .A0(n223), .A1(n218), .B0(n196), .B1(n246), .Y(n245) );
  XOR2X1 U245 ( .A(b[5]), .B(n204), .Y(n223) );
  XOR2X1 U246 ( .A(b[8]), .B(a[1]), .Y(n215) );
  OAI22XL U247 ( .A0(n196), .A1(n224), .B0(n246), .B1(n218), .Y(n30) );
  XOR2X1 U248 ( .A(b[6]), .B(n204), .Y(n246) );
  XOR2X1 U249 ( .A(b[8]), .B(n204), .Y(n224) );
  OAI22XL U250 ( .A0(n195), .A1(n233), .B0(n232), .B1(n226), .Y(n22) );
  OAI22XL U251 ( .A0(n197), .A1(n243), .B0(n242), .B1(n236), .Y(n16) );
  XOR2X1 U252 ( .A(a[8]), .B(a[6]), .Y(n249) );
endmodule


module CONV_DW_mult_uns_2 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, \product[15] , n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U8 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  ADDFXL U12 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n197), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n199), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  ADDFXL U31 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  ADDFX2 U142 ( .A(n16), .B(n57), .CI(n3), .CO(n2), .S(product[14]) );
  CLKXOR2X1 U143 ( .A(n200), .B(b[0]), .Y(n212) );
  OAI22X1 U144 ( .A0(n214), .A1(n213), .B0(n191), .B1(n215), .Y(n78) );
  OAI22X1 U145 ( .A0(n215), .A1(n213), .B0(n191), .B1(n216), .Y(n77) );
  XNOR2X4 U146 ( .A(a[6]), .B(a[5]), .Y(n230) );
  INVX3 U147 ( .A(a[5]), .Y(n198) );
  OAI21XL U148 ( .A0(b[0]), .A1(n201), .B0(n204), .Y(n56) );
  OAI22X1 U149 ( .A0(n207), .A1(n204), .B0(n208), .B1(n202), .Y(n85) );
  OAI22X2 U150 ( .A0(n206), .A1(n204), .B0(n207), .B1(n202), .Y(n86) );
  NAND2X6 U151 ( .A(a[1]), .B(n202), .Y(n204) );
  CLKINVX12 U152 ( .A(a[1]), .Y(n201) );
  OAI22X1 U153 ( .A0(n209), .A1(n204), .B0(n210), .B1(n202), .Y(n83) );
  OAI32X4 U154 ( .A0(n198), .A1(b[0]), .A2(n192), .B0(n198), .B1(n222), .Y(n54) );
  NAND2X6 U155 ( .A(n192), .B(n244), .Y(n222) );
  OAI22X1 U156 ( .A0(n223), .A1(n222), .B0(n192), .B1(n224), .Y(n70) );
  OAI22X2 U157 ( .A0(n221), .A1(n222), .B0(n192), .B1(n223), .Y(n71) );
  CLKBUFX8 U158 ( .A(n220), .Y(n192) );
  XOR2X1 U159 ( .A(b[3]), .B(n200), .Y(n216) );
  OAI22X2 U160 ( .A0(n212), .A1(n213), .B0(n191), .B1(n214), .Y(n79) );
  NAND2X8 U161 ( .A(n191), .B(n243), .Y(n213) );
  XOR2X1 U162 ( .A(b[1]), .B(n201), .Y(n205) );
  ADDFX2 U163 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  ADDFX2 U164 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFX2 U165 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  ADDFX2 U166 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  XNOR2X4 U167 ( .A(a[2]), .B(a[1]), .Y(n191) );
  XOR2X1 U168 ( .A(b[1]), .B(n198), .Y(n223) );
  ADDFX2 U169 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  XOR2XL U170 ( .A(n198), .B(b[0]), .Y(n221) );
  OAI22X1 U171 ( .A0(b[0]), .A1(n204), .B0(n205), .B1(n202), .Y(n88) );
  ADDHX1 U172 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  INVX12 U173 ( .A(a[3]), .Y(n200) );
  INVX3 U174 ( .A(a[7]), .Y(n196) );
  ADDFX1 U175 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  CMPR32X2 U176 ( .A(n18), .B(n195), .C(n4), .CO(n3), .S(product[13]) );
  CMPR32X2 U177 ( .A(n85), .B(n72), .C(n78), .CO(n49), .S(n50) );
  INVX1 U178 ( .A(n30), .Y(n199) );
  ADDFX1 U179 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  ADDFHX1 U180 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  NAND2BXL U181 ( .AN(n240), .B(n241), .Y(n35) );
  OAI2BB1XL U182 ( .A0N(n202), .A1N(n204), .B0(n211), .Y(n240) );
  INVX1 U183 ( .A(n22), .Y(n197) );
  ADDHX1 U184 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  XOR2XL U185 ( .A(b[2]), .B(n200), .Y(n215) );
  INVX1 U186 ( .A(b[0]), .Y(n203) );
  CLKINVX8 U187 ( .A(a[0]), .Y(n202) );
  NAND2X4 U188 ( .A(n193), .B(n245), .Y(n232) );
  XOR2XL U189 ( .A(b[4]), .B(n200), .Y(n217) );
  XOR2XL U190 ( .A(b[2]), .B(n198), .Y(n224) );
  XOR2XL U191 ( .A(b[3]), .B(n198), .Y(n225) );
  XOR2XL U192 ( .A(b[1]), .B(n196), .Y(n233) );
  XOR2XL U193 ( .A(b[5]), .B(n200), .Y(n218) );
  XOR2XL U194 ( .A(b[6]), .B(n201), .Y(n210) );
  XOR2XL U195 ( .A(b[8]), .B(a[1]), .Y(n211) );
  XOR2XL U196 ( .A(b[6]), .B(n198), .Y(n228) );
  XOR2XL U197 ( .A(b[4]), .B(n198), .Y(n226) );
  XOR2XL U198 ( .A(b[5]), .B(n198), .Y(n227) );
  XOR2XL U199 ( .A(b[2]), .B(n196), .Y(n234) );
  XOR2XL U200 ( .A(b[3]), .B(n196), .Y(n235) );
  XOR2XL U201 ( .A(b[4]), .B(n196), .Y(n236) );
  XOR2XL U202 ( .A(b[6]), .B(n200), .Y(n242) );
  XOR2XL U203 ( .A(b[8]), .B(n200), .Y(n219) );
  XOR2XL U204 ( .A(b[8]), .B(n198), .Y(n229) );
  XOR2XL U205 ( .A(b[6]), .B(n196), .Y(n238) );
  XOR2XL U206 ( .A(b[5]), .B(n196), .Y(n237) );
  XOR2XL U207 ( .A(b[8]), .B(n196), .Y(n239) );
  CLKINVX1 U208 ( .A(n2), .Y(\product[15] ) );
  CLKINVX1 U209 ( .A(n16), .Y(n195) );
  ADDFXL U210 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  XNOR2X1 U211 ( .A(a[4]), .B(a[3]), .Y(n220) );
  CLKBUFX3 U212 ( .A(n230), .Y(n193) );
  ADDHX1 U213 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  NOR2X1 U214 ( .A(n202), .B(n203), .Y(product[0]) );
  OAI22XL U215 ( .A0(n205), .A1(n204), .B0(n206), .B1(n202), .Y(n87) );
  XOR2X1 U216 ( .A(b[2]), .B(n201), .Y(n206) );
  XOR2X1 U217 ( .A(b[3]), .B(n201), .Y(n207) );
  OAI22XL U218 ( .A0(n208), .A1(n204), .B0(n209), .B1(n202), .Y(n84) );
  XOR2X1 U219 ( .A(b[4]), .B(n201), .Y(n208) );
  XOR2X1 U220 ( .A(b[5]), .B(n201), .Y(n209) );
  OAI2BB2XL U221 ( .B0(n210), .B1(n204), .A0N(n211), .A1N(a[0]), .Y(n82) );
  NOR2X1 U222 ( .A(n191), .B(n203), .Y(n80) );
  XOR2X1 U223 ( .A(b[1]), .B(n200), .Y(n214) );
  OAI22XL U224 ( .A0(n216), .A1(n213), .B0(n191), .B1(n217), .Y(n76) );
  OAI22XL U225 ( .A0(n217), .A1(n213), .B0(n191), .B1(n218), .Y(n75) );
  AO21X1 U226 ( .A0(n213), .A1(n191), .B0(n219), .Y(n73) );
  NOR2X1 U227 ( .A(n192), .B(n203), .Y(n72) );
  OAI22XL U228 ( .A0(n224), .A1(n222), .B0(n192), .B1(n225), .Y(n69) );
  OAI22XL U229 ( .A0(n225), .A1(n222), .B0(n192), .B1(n226), .Y(n68) );
  OAI22XL U230 ( .A0(n226), .A1(n222), .B0(n192), .B1(n227), .Y(n67) );
  OAI22XL U231 ( .A0(n227), .A1(n222), .B0(n192), .B1(n228), .Y(n66) );
  AO21X1 U232 ( .A0(n222), .A1(n192), .B0(n229), .Y(n65) );
  NOR2X1 U233 ( .A(n193), .B(n203), .Y(n64) );
  OAI22XL U234 ( .A0(n231), .A1(n232), .B0(n193), .B1(n233), .Y(n63) );
  XOR2X1 U235 ( .A(n196), .B(b[0]), .Y(n231) );
  OAI22XL U236 ( .A0(n233), .A1(n232), .B0(n193), .B1(n234), .Y(n62) );
  OAI22XL U237 ( .A0(n234), .A1(n232), .B0(n193), .B1(n235), .Y(n61) );
  OAI22XL U238 ( .A0(n235), .A1(n232), .B0(n193), .B1(n236), .Y(n60) );
  OAI22XL U239 ( .A0(n236), .A1(n232), .B0(n193), .B1(n237), .Y(n59) );
  OAI22XL U240 ( .A0(n237), .A1(n232), .B0(n193), .B1(n238), .Y(n58) );
  AO21X1 U241 ( .A0(n232), .A1(n193), .B0(n239), .Y(n57) );
  OAI32X1 U242 ( .A0(n200), .A1(b[0]), .A2(n191), .B0(n200), .B1(n213), .Y(n55) );
  OAI32X1 U243 ( .A0(n196), .A1(b[0]), .A2(n193), .B0(n196), .B1(n232), .Y(n53) );
  XOR2X1 U244 ( .A(n240), .B(n241), .Y(n36) );
  OA22X1 U245 ( .A0(n218), .A1(n213), .B0(n191), .B1(n242), .Y(n241) );
  OAI22XL U246 ( .A0(n191), .A1(n219), .B0(n242), .B1(n213), .Y(n30) );
  XOR2X1 U247 ( .A(a[3]), .B(a[2]), .Y(n243) );
  OAI22XL U248 ( .A0(n192), .A1(n229), .B0(n228), .B1(n222), .Y(n22) );
  XOR2X1 U249 ( .A(a[5]), .B(a[4]), .Y(n244) );
  OAI22XL U250 ( .A0(n193), .A1(n239), .B0(n238), .B1(n232), .Y(n16) );
  XOR2X1 U251 ( .A(a[8]), .B(a[6]), .Y(n245) );
endmodule


module CONV_DW_mult_uns_1 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, \product[15] , n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U11 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n208), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n210), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  ADDFXL U31 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  XOR2X1 U142 ( .A(b[4]), .B(n211), .Y(n229) );
  OAI22X1 U143 ( .A0(n227), .A1(n225), .B0(n203), .B1(n228), .Y(n77) );
  XOR2X1 U144 ( .A(b[3]), .B(n211), .Y(n228) );
  CMPR42X2 U145 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), 
        .ICO(n37), .CO(n38) );
  OAI32X1 U146 ( .A0(n209), .A1(b[0]), .A2(n232), .B0(n209), .B1(n234), .Y(n54) );
  NAND2X4 U147 ( .A(n232), .B(n255), .Y(n234) );
  OR2XL U148 ( .A(n232), .B(n235), .Y(n200) );
  NOR2XL U149 ( .A(n232), .B(n214), .Y(n72) );
  ADDFX2 U150 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  XOR2X2 U151 ( .A(b[1]), .B(n207), .Y(n245) );
  XOR2X4 U152 ( .A(b[1]), .B(n212), .Y(n216) );
  NOR2X4 U153 ( .A(n203), .B(n214), .Y(n80) );
  NOR2XL U154 ( .A(n213), .B(n214), .Y(product[0]) );
  NAND2XL U155 ( .A(n211), .B(n214), .Y(n191) );
  INVX4 U156 ( .A(b[0]), .Y(n214) );
  INVX12 U157 ( .A(a[1]), .Y(n212) );
  INVX4 U158 ( .A(a[5]), .Y(n209) );
  OAI22X1 U159 ( .A0(n217), .A1(n215), .B0(n218), .B1(n213), .Y(n86) );
  NAND2X1 U160 ( .A(n199), .B(n200), .Y(n71) );
  OR2X4 U161 ( .A(n201), .B(n202), .Y(n225) );
  CLKINVX1 U162 ( .A(n203), .Y(n201) );
  INVX3 U163 ( .A(a[7]), .Y(n207) );
  OAI21X1 U164 ( .A0(b[0]), .A1(n212), .B0(n215), .Y(n56) );
  ADDFHX1 U165 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  NAND2X4 U166 ( .A(n204), .B(n256), .Y(n244) );
  ADDFHX2 U167 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  CLKINVX1 U168 ( .A(n2), .Y(\product[15] ) );
  INVX3 U169 ( .A(a[3]), .Y(n211) );
  OAI22X2 U170 ( .A0(n216), .A1(n215), .B0(n217), .B1(n213), .Y(n87) );
  OAI22X2 U171 ( .A0(b[0]), .A1(n215), .B0(n216), .B1(n213), .Y(n88) );
  NAND2X4 U172 ( .A(a[1]), .B(n213), .Y(n215) );
  OAI22X1 U173 ( .A0(n219), .A1(n215), .B0(n220), .B1(n213), .Y(n84) );
  XOR2X1 U174 ( .A(b[3]), .B(n212), .Y(n218) );
  XOR2X1 U175 ( .A(b[2]), .B(n212), .Y(n217) );
  ADDFHX2 U176 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  XNOR2X4 U177 ( .A(a[4]), .B(a[3]), .Y(n232) );
  NAND2XL U178 ( .A(a[3]), .B(b[0]), .Y(n192) );
  NAND2X2 U179 ( .A(n191), .B(n192), .Y(n224) );
  ADDFHX2 U180 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  ADDFHX2 U181 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  CLKINVX12 U182 ( .A(a[0]), .Y(n213) );
  OR2X1 U183 ( .A(n218), .B(n215), .Y(n193) );
  OR2XL U184 ( .A(n219), .B(n213), .Y(n194) );
  NAND2X2 U185 ( .A(n193), .B(n194), .Y(n85) );
  XOR2X4 U186 ( .A(b[4]), .B(n212), .Y(n219) );
  ADDFHX2 U187 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  NAND2XL U188 ( .A(b[1]), .B(a[3]), .Y(n196) );
  NAND2XL U189 ( .A(n195), .B(n211), .Y(n197) );
  NAND2X2 U190 ( .A(n196), .B(n197), .Y(n226) );
  INVXL U191 ( .A(b[1]), .Y(n195) );
  OAI22X1 U192 ( .A0(n226), .A1(n225), .B0(n203), .B1(n198), .Y(n78) );
  OAI22X2 U193 ( .A0(n224), .A1(n225), .B0(n203), .B1(n226), .Y(n79) );
  ADDHX1 U194 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  OR2X2 U195 ( .A(n233), .B(n234), .Y(n199) );
  XNOR2X1 U196 ( .A(a[3]), .B(a[2]), .Y(n202) );
  XOR2XL U197 ( .A(b[2]), .B(n211), .Y(n198) );
  ADDFX2 U198 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  ADDFX2 U199 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  CMPR32X2 U200 ( .A(n18), .B(n206), .C(n4), .CO(n3), .S(product[13]) );
  INVX1 U201 ( .A(n30), .Y(n210) );
  OAI2BB1XL U202 ( .A0N(n213), .A1N(n215), .B0(n222), .Y(n252) );
  INVX1 U203 ( .A(n22), .Y(n208) );
  ADDHX1 U204 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  ADDHX1 U205 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  XOR2XL U206 ( .A(b[2]), .B(n211), .Y(n227) );
  BUFX20 U207 ( .A(n223), .Y(n203) );
  ADDFX1 U208 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  XOR2XL U209 ( .A(b[2]), .B(n209), .Y(n236) );
  XOR2XL U210 ( .A(b[3]), .B(n209), .Y(n237) );
  XOR2XL U211 ( .A(b[5]), .B(n212), .Y(n220) );
  XOR2XL U212 ( .A(b[6]), .B(n212), .Y(n221) );
  XOR2XL U213 ( .A(b[4]), .B(n209), .Y(n238) );
  XOR2XL U214 ( .A(b[5]), .B(n209), .Y(n239) );
  XOR2XL U215 ( .A(b[2]), .B(n207), .Y(n246) );
  XOR2XL U216 ( .A(b[3]), .B(n207), .Y(n247) );
  XOR2XL U217 ( .A(b[5]), .B(n211), .Y(n230) );
  XOR2XL U218 ( .A(b[6]), .B(n211), .Y(n254) );
  XOR2XL U219 ( .A(b[8]), .B(n211), .Y(n231) );
  XOR2XL U220 ( .A(b[6]), .B(n209), .Y(n240) );
  XOR2XL U221 ( .A(b[6]), .B(n207), .Y(n250) );
  XOR2XL U222 ( .A(b[4]), .B(n207), .Y(n248) );
  XOR2XL U223 ( .A(b[5]), .B(n207), .Y(n249) );
  XOR2XL U224 ( .A(b[8]), .B(n209), .Y(n241) );
  XOR2XL U225 ( .A(b[8]), .B(n207), .Y(n251) );
  XOR2XL U226 ( .A(n209), .B(b[0]), .Y(n233) );
  XOR2XL U227 ( .A(b[1]), .B(n209), .Y(n235) );
  ADDFXL U228 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  CLKINVX1 U229 ( .A(n16), .Y(n206) );
  ADDFXL U230 ( .A(n16), .B(n57), .CI(n3), .CO(n2), .S(product[14]) );
  CLKBUFX3 U231 ( .A(n242), .Y(n204) );
  XNOR2X1 U232 ( .A(a[6]), .B(a[5]), .Y(n242) );
  XNOR2X4 U233 ( .A(a[2]), .B(a[1]), .Y(n223) );
  OAI22XL U234 ( .A0(n220), .A1(n215), .B0(n221), .B1(n213), .Y(n83) );
  OAI2BB2XL U235 ( .B0(n221), .B1(n215), .A0N(n222), .A1N(a[0]), .Y(n82) );
  OAI22XL U236 ( .A0(n228), .A1(n225), .B0(n203), .B1(n229), .Y(n76) );
  OAI22XL U237 ( .A0(n229), .A1(n225), .B0(n203), .B1(n230), .Y(n75) );
  AO21X1 U238 ( .A0(n225), .A1(n203), .B0(n231), .Y(n73) );
  OAI22XL U239 ( .A0(n235), .A1(n234), .B0(n232), .B1(n236), .Y(n70) );
  OAI22XL U240 ( .A0(n236), .A1(n234), .B0(n232), .B1(n237), .Y(n69) );
  OAI22XL U241 ( .A0(n237), .A1(n234), .B0(n232), .B1(n238), .Y(n68) );
  OAI22XL U242 ( .A0(n238), .A1(n234), .B0(n232), .B1(n239), .Y(n67) );
  OAI22XL U243 ( .A0(n239), .A1(n234), .B0(n232), .B1(n240), .Y(n66) );
  AO21X1 U244 ( .A0(n234), .A1(n232), .B0(n241), .Y(n65) );
  NOR2X1 U245 ( .A(n204), .B(n214), .Y(n64) );
  OAI22XL U246 ( .A0(n243), .A1(n244), .B0(n204), .B1(n245), .Y(n63) );
  XOR2X1 U247 ( .A(n207), .B(b[0]), .Y(n243) );
  OAI22XL U248 ( .A0(n245), .A1(n244), .B0(n204), .B1(n246), .Y(n62) );
  OAI22XL U249 ( .A0(n246), .A1(n244), .B0(n204), .B1(n247), .Y(n61) );
  OAI22XL U250 ( .A0(n247), .A1(n244), .B0(n204), .B1(n248), .Y(n60) );
  OAI22XL U251 ( .A0(n248), .A1(n244), .B0(n204), .B1(n249), .Y(n59) );
  OAI22XL U252 ( .A0(n249), .A1(n244), .B0(n204), .B1(n250), .Y(n58) );
  AO21X1 U253 ( .A0(n244), .A1(n204), .B0(n251), .Y(n57) );
  OAI32X1 U254 ( .A0(n211), .A1(b[0]), .A2(n203), .B0(n211), .B1(n225), .Y(n55) );
  OAI32X1 U255 ( .A0(n207), .A1(b[0]), .A2(n204), .B0(n207), .B1(n244), .Y(n53) );
  XOR2X1 U256 ( .A(n252), .B(n253), .Y(n36) );
  NAND2BX1 U257 ( .AN(n252), .B(n253), .Y(n35) );
  OA22X1 U258 ( .A0(n230), .A1(n225), .B0(n203), .B1(n254), .Y(n253) );
  XOR2X1 U259 ( .A(b[8]), .B(a[1]), .Y(n222) );
  OAI22XL U260 ( .A0(n203), .A1(n231), .B0(n254), .B1(n225), .Y(n30) );
  OAI22XL U261 ( .A0(n232), .A1(n241), .B0(n240), .B1(n234), .Y(n22) );
  XOR2X1 U262 ( .A(a[5]), .B(a[4]), .Y(n255) );
  OAI22XL U263 ( .A0(n204), .A1(n251), .B0(n250), .B1(n244), .Y(n16) );
  XOR2X1 U264 ( .A(a[8]), .B(a[6]), .Y(n256) );
endmodule


module CONV_DW_mult_uns_0 ( a, b, product );
  input [16:0] a;
  input [16:0] b;
  output [33:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76,
         n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, \product[15] , n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251;
  assign product[16] = \product[15] ;
  assign product[15] = \product[15] ;

  ADDFXL U10 ( .A(n34), .B(n38), .CI(n9), .CO(n8), .S(product[8]) );
  ADDFXL U11 ( .A(n39), .B(n43), .CI(n10), .CO(n9), .S(product[7]) );
  ADDFXL U14 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[4]) );
  ADDFXL U19 ( .A(n22), .B(n65), .CI(n58), .CO(n18), .S(n19) );
  ADDFXL U20 ( .A(n203), .B(n59), .CI(n24), .CO(n20), .S(n21) );
  CMPR42X1 U22 ( .A(n73), .B(n66), .C(n30), .D(n60), .ICI(n27), .S(n26), .ICO(
        n24), .CO(n25) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n205), .D(n35), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n68), .B(n62), .C(n40), .D(n37), .ICI(n36), .S(n34), .ICO(
        n32), .CO(n33) );
  CMPR42X1 U28 ( .A(n82), .B(n69), .C(n75), .D(n42), .ICI(n41), .S(n39), .ICO(
        n37), .CO(n38) );
  ADDHXL U29 ( .A(n63), .B(n53), .CO(n40), .S(n41) );
  CMPR42X1 U30 ( .A(n64), .B(n83), .C(n76), .D(n70), .ICI(n47), .S(n44), .ICO(
        n42), .CO(n43) );
  ADDHXL U32 ( .A(n71), .B(n54), .CO(n47), .S(n48) );
  ADDFHX1 U142 ( .A(n45), .B(n44), .CI(n11), .CO(n10), .S(product[6]) );
  ADDFX2 U143 ( .A(n46), .B(n49), .CI(n12), .CO(n11), .S(product[5]) );
  XOR2X2 U144 ( .A(b[2]), .B(n207), .Y(n212) );
  XOR2X1 U145 ( .A(b[2]), .B(n206), .Y(n221) );
  CLKBUFX8 U146 ( .A(n197), .Y(n191) );
  CLKINVX8 U147 ( .A(a[0]), .Y(n208) );
  BUFX6 U148 ( .A(n226), .Y(n198) );
  XOR2X1 U149 ( .A(b[3]), .B(n207), .Y(n213) );
  NAND2X1 U150 ( .A(n194), .B(n206), .Y(n196) );
  XOR2X1 U151 ( .A(b[4]), .B(n206), .Y(n223) );
  NAND2X6 U152 ( .A(n198), .B(n250), .Y(n228) );
  ADDFX2 U153 ( .A(n87), .B(n80), .CI(n15), .CO(n14), .S(product[2]) );
  OAI22XL U154 ( .A0(n211), .A1(n210), .B0(n212), .B1(n208), .Y(n87) );
  ADDFXL U155 ( .A(n29), .B(n33), .CI(n8), .CO(n7), .S(product[9]) );
  ADDFXL U156 ( .A(n26), .B(n28), .CI(n7), .CO(n6), .S(product[10]) );
  ADDFX2 U157 ( .A(n18), .B(n201), .CI(n4), .CO(n3), .S(product[13]) );
  INVX3 U158 ( .A(a[3]), .Y(n206) );
  ADDFX2 U159 ( .A(n85), .B(n72), .CI(n78), .CO(n49), .S(n50) );
  XOR2X1 U160 ( .A(b[1]), .B(n202), .Y(n239) );
  ADDFX2 U161 ( .A(n52), .B(n55), .CI(n14), .CO(n13), .S(product[3]) );
  NAND2X4 U162 ( .A(a[1]), .B(n208), .Y(n210) );
  XNOR2X2 U163 ( .A(a[2]), .B(a[1]), .Y(n197) );
  ADDHX2 U164 ( .A(n56), .B(n88), .CO(n15), .S(product[1]) );
  OAI21X1 U165 ( .A0(b[0]), .A1(n207), .B0(n210), .Y(n56) );
  OAI22X2 U166 ( .A0(n212), .A1(n210), .B0(n213), .B1(n208), .Y(n86) );
  OR2X1 U167 ( .A(b[0]), .B(n210), .Y(n192) );
  OR2XL U168 ( .A(n211), .B(n208), .Y(n193) );
  NAND2X2 U169 ( .A(n192), .B(n193), .Y(n88) );
  XOR2X4 U170 ( .A(b[1]), .B(n207), .Y(n211) );
  XOR2X2 U171 ( .A(n206), .B(b[0]), .Y(n218) );
  INVX8 U172 ( .A(a[5]), .Y(n204) );
  OAI22X4 U173 ( .A0(n218), .A1(n219), .B0(n191), .B1(n220), .Y(n79) );
  CMPR22X2 U174 ( .A(n86), .B(n79), .CO(n51), .S(n52) );
  NAND2X1 U175 ( .A(n195), .B(n196), .Y(n220) );
  NAND2XL U176 ( .A(b[1]), .B(a[3]), .Y(n195) );
  INVXL U177 ( .A(b[1]), .Y(n194) );
  OAI22X1 U178 ( .A0(n220), .A1(n219), .B0(n191), .B1(n221), .Y(n78) );
  OAI22X1 U179 ( .A0(n227), .A1(n228), .B0(n198), .B1(n229), .Y(n71) );
  CLKINVX12 U180 ( .A(a[1]), .Y(n207) );
  INVX2 U181 ( .A(b[0]), .Y(n209) );
  INVX1 U182 ( .A(n30), .Y(n205) );
  ADDFX1 U183 ( .A(n77), .B(n84), .CI(n48), .CO(n45), .S(n46) );
  OAI2BB1XL U184 ( .A0N(n208), .A1N(n210), .B0(n217), .Y(n246) );
  NAND2X4 U185 ( .A(n191), .B(n249), .Y(n219) );
  NAND2X4 U186 ( .A(n199), .B(n251), .Y(n238) );
  XOR2XL U187 ( .A(b[1]), .B(n204), .Y(n229) );
  XOR2XL U188 ( .A(b[3]), .B(n206), .Y(n222) );
  XOR2XL U189 ( .A(b[6]), .B(n204), .Y(n234) );
  XOR2XL U190 ( .A(b[2]), .B(n204), .Y(n230) );
  XOR2XL U191 ( .A(b[3]), .B(n204), .Y(n231) );
  XOR2XL U192 ( .A(b[4]), .B(n204), .Y(n232) );
  XOR2XL U193 ( .A(b[5]), .B(n204), .Y(n233) );
  XOR2XL U194 ( .A(b[2]), .B(n202), .Y(n240) );
  XOR2XL U195 ( .A(b[3]), .B(n202), .Y(n241) );
  XOR2XL U196 ( .A(b[5]), .B(n206), .Y(n224) );
  XOR2XL U197 ( .A(b[6]), .B(n206), .Y(n248) );
  XOR2XL U198 ( .A(b[8]), .B(n206), .Y(n225) );
  XOR2XL U199 ( .A(b[4]), .B(n202), .Y(n242) );
  XOR2XL U200 ( .A(b[5]), .B(n202), .Y(n243) );
  XOR2XL U201 ( .A(b[8]), .B(n204), .Y(n235) );
  XOR2XL U202 ( .A(b[6]), .B(n202), .Y(n244) );
  XOR2XL U203 ( .A(b[8]), .B(n202), .Y(n245) );
  CLKINVX1 U204 ( .A(n16), .Y(n201) );
  ADDFX1 U205 ( .A(n20), .B(n19), .CI(n5), .CO(n4), .S(product[12]) );
  CLKINVX1 U206 ( .A(n2), .Y(\product[15] ) );
  CMPR32X2 U207 ( .A(n16), .B(n57), .C(n3), .CO(n2), .S(product[14]) );
  CLKINVX1 U208 ( .A(n22), .Y(n203) );
  XNOR2X1 U209 ( .A(a[4]), .B(a[3]), .Y(n226) );
  CLKBUFX3 U210 ( .A(n236), .Y(n199) );
  XNOR2X1 U211 ( .A(a[6]), .B(a[5]), .Y(n236) );
  INVX3 U212 ( .A(a[7]), .Y(n202) );
  ADDFX2 U213 ( .A(n21), .B(n25), .CI(n6), .CO(n5), .S(product[11]) );
  NOR2X1 U214 ( .A(n208), .B(n209), .Y(product[0]) );
  OAI22XL U215 ( .A0(n213), .A1(n210), .B0(n214), .B1(n208), .Y(n85) );
  OAI22XL U216 ( .A0(n214), .A1(n210), .B0(n215), .B1(n208), .Y(n84) );
  XOR2X1 U217 ( .A(b[4]), .B(n207), .Y(n214) );
  OAI22XL U218 ( .A0(n215), .A1(n210), .B0(n216), .B1(n208), .Y(n83) );
  XOR2X1 U219 ( .A(b[5]), .B(n207), .Y(n215) );
  OAI2BB2XL U220 ( .B0(n216), .B1(n210), .A0N(n217), .A1N(a[0]), .Y(n82) );
  XOR2X1 U221 ( .A(b[6]), .B(n207), .Y(n216) );
  NOR2X1 U222 ( .A(n191), .B(n209), .Y(n80) );
  OAI22XL U223 ( .A0(n221), .A1(n219), .B0(n191), .B1(n222), .Y(n77) );
  OAI22XL U224 ( .A0(n222), .A1(n219), .B0(n191), .B1(n223), .Y(n76) );
  OAI22XL U225 ( .A0(n223), .A1(n219), .B0(n191), .B1(n224), .Y(n75) );
  AO21X1 U226 ( .A0(n219), .A1(n191), .B0(n225), .Y(n73) );
  NOR2X1 U227 ( .A(n198), .B(n209), .Y(n72) );
  XOR2X1 U228 ( .A(n204), .B(b[0]), .Y(n227) );
  OAI22XL U229 ( .A0(n229), .A1(n228), .B0(n198), .B1(n230), .Y(n70) );
  OAI22XL U230 ( .A0(n230), .A1(n228), .B0(n198), .B1(n231), .Y(n69) );
  OAI22XL U231 ( .A0(n231), .A1(n228), .B0(n198), .B1(n232), .Y(n68) );
  OAI22XL U232 ( .A0(n232), .A1(n228), .B0(n198), .B1(n233), .Y(n67) );
  OAI22XL U233 ( .A0(n233), .A1(n228), .B0(n198), .B1(n234), .Y(n66) );
  AO21X1 U234 ( .A0(n228), .A1(n198), .B0(n235), .Y(n65) );
  NOR2X1 U235 ( .A(n199), .B(n209), .Y(n64) );
  OAI22XL U236 ( .A0(n237), .A1(n238), .B0(n199), .B1(n239), .Y(n63) );
  XOR2X1 U237 ( .A(n202), .B(b[0]), .Y(n237) );
  OAI22XL U238 ( .A0(n239), .A1(n238), .B0(n199), .B1(n240), .Y(n62) );
  OAI22XL U239 ( .A0(n240), .A1(n238), .B0(n199), .B1(n241), .Y(n61) );
  OAI22XL U240 ( .A0(n241), .A1(n238), .B0(n199), .B1(n242), .Y(n60) );
  OAI22XL U241 ( .A0(n242), .A1(n238), .B0(n199), .B1(n243), .Y(n59) );
  OAI22XL U242 ( .A0(n243), .A1(n238), .B0(n199), .B1(n244), .Y(n58) );
  AO21X1 U243 ( .A0(n238), .A1(n199), .B0(n245), .Y(n57) );
  OAI32X1 U244 ( .A0(n206), .A1(b[0]), .A2(n191), .B0(n206), .B1(n219), .Y(n55) );
  OAI32X1 U245 ( .A0(n204), .A1(b[0]), .A2(n198), .B0(n204), .B1(n228), .Y(n54) );
  OAI32X1 U246 ( .A0(n202), .A1(b[0]), .A2(n199), .B0(n202), .B1(n238), .Y(n53) );
  XOR2X1 U247 ( .A(n246), .B(n247), .Y(n36) );
  NAND2BX1 U248 ( .AN(n246), .B(n247), .Y(n35) );
  OA22X1 U249 ( .A0(n224), .A1(n219), .B0(n191), .B1(n248), .Y(n247) );
  XOR2X1 U250 ( .A(b[8]), .B(a[1]), .Y(n217) );
  OAI22XL U251 ( .A0(n191), .A1(n225), .B0(n248), .B1(n219), .Y(n30) );
  XOR2X1 U252 ( .A(a[3]), .B(a[2]), .Y(n249) );
  OAI22XL U253 ( .A0(n198), .A1(n235), .B0(n234), .B1(n228), .Y(n22) );
  XOR2X1 U254 ( .A(a[5]), .B(a[4]), .Y(n250) );
  OAI22XL U255 ( .A0(n199), .A1(n245), .B0(n244), .B1(n238), .Y(n16) );
  XOR2X1 U256 ( .A(a[8]), .B(a[6]), .Y(n251) );
endmodule


module CONV_DW01_add_7 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [16:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  CMPR32X2 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CMPR32X2 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  CMPR32X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX4 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  NAND3X2 U1 ( .A(n3), .B(n4), .C(n5), .Y(carry[10]) );
  NAND2X1 U2 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NAND2X1 U3 ( .A(B[9]), .B(carry[9]), .Y(n4) );
  XOR2X1 U4 ( .A(carry[9]), .B(n2), .Y(SUM[9]) );
  XOR2X1 U5 ( .A(A[9]), .B(B[9]), .Y(n2) );
  AND2X2 U6 ( .A(B[0]), .B(A[0]), .Y(n1) );
  NAND2X2 U7 ( .A(A[9]), .B(carry[9]), .Y(n3) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_6 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [16:1] carry;

  ADDFX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFHX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  CMPR32X2 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  NAND3X2 U1 ( .A(n7), .B(n8), .C(n9), .Y(carry[14]) );
  XOR2XL U2 ( .A(carry[6]), .B(n2), .Y(SUM[6]) );
  NAND3X2 U3 ( .A(n3), .B(n4), .C(n5), .Y(carry[7]) );
  NAND2X1 U4 ( .A(A[6]), .B(B[6]), .Y(n5) );
  AND2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U6 ( .A(B[6]), .B(A[6]), .Y(n2) );
  NAND2X2 U7 ( .A(B[6]), .B(carry[6]), .Y(n3) );
  NAND2X2 U8 ( .A(A[6]), .B(carry[6]), .Y(n4) );
  XOR2X4 U9 ( .A(A[13]), .B(B[13]), .Y(n6) );
  XOR2X4 U10 ( .A(carry[13]), .B(n6), .Y(SUM[13]) );
  NAND2X2 U11 ( .A(A[13]), .B(carry[13]), .Y(n7) );
  NAND2X2 U12 ( .A(B[13]), .B(carry[13]), .Y(n8) );
  NAND2X2 U13 ( .A(B[13]), .B(A[13]), .Y(n9) );
  XOR2X1 U14 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_5 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX4 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX4 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_4 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  CMPR32X2 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX4 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_3 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [16:1] carry;

  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(n1), .CI(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  BUFX8 U1 ( .A(B[11]), .Y(n1) );
  XOR2X1 U2 ( .A(carry[5]), .B(n3), .Y(SUM[5]) );
  XOR2X1 U3 ( .A(B[5]), .B(A[5]), .Y(n3) );
  NAND3X1 U4 ( .A(n12), .B(n13), .C(n14), .Y(carry[11]) );
  AND2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n2) );
  XOR2X1 U6 ( .A(carry[10]), .B(n11), .Y(SUM[10]) );
  NAND2X1 U7 ( .A(A[7]), .B(B[7]), .Y(n10) );
  NAND2X1 U8 ( .A(B[7]), .B(carry[7]), .Y(n8) );
  NAND2X1 U9 ( .A(A[7]), .B(carry[7]), .Y(n9) );
  NAND2XL U10 ( .A(B[5]), .B(carry[5]), .Y(n4) );
  NAND2XL U11 ( .A(A[5]), .B(carry[5]), .Y(n5) );
  NAND2XL U12 ( .A(A[5]), .B(B[5]), .Y(n6) );
  NAND3X1 U13 ( .A(n4), .B(n5), .C(n6), .Y(carry[6]) );
  NAND2XL U14 ( .A(A[10]), .B(B[10]), .Y(n14) );
  NAND3X2 U15 ( .A(n8), .B(n9), .C(n10), .Y(carry[8]) );
  XOR2X1 U16 ( .A(carry[7]), .B(n7), .Y(SUM[7]) );
  XOR2X1 U17 ( .A(B[7]), .B(A[7]), .Y(n7) );
  XOR2X1 U18 ( .A(B[10]), .B(A[10]), .Y(n11) );
  NAND2X1 U19 ( .A(B[10]), .B(carry[10]), .Y(n12) );
  NAND2X1 U20 ( .A(A[10]), .B(carry[10]), .Y(n13) );
  XOR2X1 U21 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_2 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [16:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  CMPR32X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  NAND2X1 U1 ( .A(B[9]), .B(carry[9]), .Y(n4) );
  XOR2X1 U2 ( .A(carry[9]), .B(n2), .Y(SUM[9]) );
  XOR2X1 U3 ( .A(A[9]), .B(B[9]), .Y(n2) );
  AND2X2 U4 ( .A(B[0]), .B(A[0]), .Y(n1) );
  NAND2X2 U5 ( .A(A[9]), .B(carry[9]), .Y(n3) );
  NAND2X2 U6 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NAND3X6 U7 ( .A(n3), .B(n4), .C(n5), .Y(carry[10]) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [16:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_10 ( .A(A[10]), .B(n1), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  BUFX4 U1 ( .A(B[10]), .Y(n1) );
  XOR2X2 U2 ( .A(carry[14]), .B(n17), .Y(SUM[14]) );
  XOR2X4 U3 ( .A(B[14]), .B(A[14]), .Y(n17) );
  XOR2X2 U4 ( .A(carry[13]), .B(n12), .Y(SUM[13]) );
  XOR2X2 U5 ( .A(B[13]), .B(A[13]), .Y(n12) );
  CLKINVX1 U6 ( .A(B[11]), .Y(n3) );
  AND2X2 U7 ( .A(B[0]), .B(A[0]), .Y(n2) );
  XOR2X1 U8 ( .A(carry[6]), .B(n4), .Y(SUM[6]) );
  NAND2X1 U9 ( .A(n3), .B(n16), .Y(n9) );
  NAND2X6 U10 ( .A(n11), .B(n14), .Y(carry[14]) );
  NAND2X1 U11 ( .A(A[13]), .B(carry[13]), .Y(n14) );
  OR2X2 U12 ( .A(n3), .B(n16), .Y(n8) );
  XOR2X2 U13 ( .A(carry[11]), .B(A[11]), .Y(n16) );
  NAND2X1 U14 ( .A(A[13]), .B(B[13]), .Y(n15) );
  NAND2X2 U15 ( .A(B[13]), .B(carry[13]), .Y(n13) );
  NAND2X2 U16 ( .A(n15), .B(n13), .Y(n10) );
  CLKINVX3 U17 ( .A(n10), .Y(n11) );
  NAND2X2 U18 ( .A(n8), .B(n9), .Y(SUM[11]) );
  NAND2X1 U19 ( .A(B[14]), .B(carry[14]), .Y(n18) );
  NAND2X1 U20 ( .A(A[14]), .B(carry[14]), .Y(n19) );
  NAND2X1 U21 ( .A(B[6]), .B(carry[6]), .Y(n5) );
  NAND2X1 U22 ( .A(A[6]), .B(carry[6]), .Y(n6) );
  NAND2X1 U23 ( .A(A[6]), .B(B[6]), .Y(n7) );
  NAND3X1 U24 ( .A(n5), .B(n6), .C(n7), .Y(carry[7]) );
  XOR2X1 U25 ( .A(B[6]), .B(A[6]), .Y(n4) );
  NAND2XL U26 ( .A(A[14]), .B(B[14]), .Y(n20) );
  NAND3X1 U27 ( .A(n18), .B(n19), .C(n20), .Y(carry[15]) );
  NAND2X1 U28 ( .A(carry[11]), .B(B[11]), .Y(n21) );
  NAND2X1 U29 ( .A(A[11]), .B(B[11]), .Y(n22) );
  NAND2X1 U30 ( .A(A[11]), .B(carry[11]), .Y(n23) );
  NAND3X1 U31 ( .A(n21), .B(n22), .C(n23), .Y(carry[12]) );
  XOR2X1 U32 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n25, n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [16:1] carry;

  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  XOR3X4 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CMPR32X2 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  BUFX12 U1 ( .A(B[14]), .Y(n1) );
  BUFX8 U2 ( .A(n25), .Y(SUM[14]) );
  XOR2X1 U3 ( .A(carry[14]), .B(n14), .Y(n25) );
  NAND2X4 U4 ( .A(B[13]), .B(carry[13]), .Y(n11) );
  NAND2X6 U5 ( .A(B[13]), .B(A[13]), .Y(n10) );
  NAND2X2 U6 ( .A(carry[15]), .B(A[15]), .Y(n24) );
  CLKINVX1 U7 ( .A(A[14]), .Y(n3) );
  NAND2X1 U8 ( .A(A[14]), .B(n4), .Y(n5) );
  CLKXOR2X2 U9 ( .A(A[13]), .B(n8), .Y(SUM[13]) );
  AND2X2 U10 ( .A(B[0]), .B(A[0]), .Y(n2) );
  NAND2X1 U11 ( .A(n3), .B(n1), .Y(n6) );
  NAND2X2 U12 ( .A(n5), .B(n6), .Y(n14) );
  INVX1 U13 ( .A(n1), .Y(n4) );
  XOR2XL U14 ( .A(carry[13]), .B(B[13]), .Y(n8) );
  NAND2X4 U15 ( .A(carry[13]), .B(A[13]), .Y(n9) );
  NAND3X8 U16 ( .A(n9), .B(n10), .C(n11), .Y(carry[14]) );
  NAND3X4 U17 ( .A(n19), .B(n20), .C(n21), .Y(carry[13]) );
  NAND2X6 U18 ( .A(A[14]), .B(carry[14]), .Y(n15) );
  NAND2X2 U19 ( .A(n1), .B(carry[14]), .Y(n16) );
  NAND2X2 U20 ( .A(carry[15]), .B(B[15]), .Y(n23) );
  NAND2X2 U21 ( .A(A[12]), .B(B[12]), .Y(n21) );
  INVX3 U22 ( .A(n12), .Y(n13) );
  NAND2X1 U23 ( .A(n1), .B(A[14]), .Y(n17) );
  NAND2X2 U24 ( .A(n17), .B(n15), .Y(n12) );
  NAND2X6 U25 ( .A(n13), .B(n16), .Y(carry[15]) );
  NAND3X2 U26 ( .A(n22), .B(n23), .C(n24), .Y(carry[16]) );
  XOR3X2 U27 ( .A(B[15]), .B(carry[15]), .C(A[15]), .Y(SUM[15]) );
  NAND2X1 U28 ( .A(A[15]), .B(B[15]), .Y(n22) );
  XOR2X1 U29 ( .A(B[12]), .B(A[12]), .Y(n18) );
  CLKXOR2X2 U30 ( .A(carry[12]), .B(n18), .Y(SUM[12]) );
  NAND2X1 U31 ( .A(B[12]), .B(carry[12]), .Y(n19) );
  NAND2X1 U32 ( .A(A[12]), .B(carry[12]), .Y(n20) );
  CLKXOR2X2 U33 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV ( clk, rst, w_w, if_w, w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, 
        w_in6, w_in7, w_in8, if_in0, if_in1, if_in2, if_in3, if_in4, if_in5, 
        if_in6, if_in7, if_in8, out );
  input [7:0] w_in0;
  input [7:0] w_in1;
  input [7:0] w_in2;
  input [7:0] w_in3;
  input [7:0] w_in4;
  input [7:0] w_in5;
  input [7:0] w_in6;
  input [7:0] w_in7;
  input [7:0] w_in8;
  input [7:0] if_in0;
  input [7:0] if_in1;
  input [7:0] if_in2;
  input [7:0] if_in3;
  input [7:0] if_in4;
  input [7:0] if_in5;
  input [7:0] if_in6;
  input [7:0] if_in7;
  input [7:0] if_in8;
  output [16:0] out;
  input clk, rst, w_w, if_w;
  wire   \w_in[8][7] , \w_in[8][6] , \w_in[8][4] , \w_in[8][2] , \w_in[8][1] ,
         \w_in[8][0] , \w_in[7][7] , \w_in[7][6] , \w_in[7][4] , \w_in[7][2] ,
         \w_in[7][1] , \w_in[7][0] , \w_in[6][7] , \w_in[6][6] , \w_in[6][5] ,
         \w_in[6][4] , \w_in[6][3] , \w_in[6][2] , \w_in[6][1] , \w_in[6][0] ,
         \w_in[5][7] , \w_in[5][6] , \w_in[5][5] , \w_in[5][4] , \w_in[5][3] ,
         \w_in[5][2] , \w_in[5][1] , \w_in[5][0] , \w_in[4][7] , \w_in[4][6] ,
         \w_in[4][4] , \w_in[4][2] , \w_in[4][1] , \w_in[4][0] , \w_in[3][7] ,
         \w_in[3][6] , \w_in[3][4] , \w_in[3][3] , \w_in[3][2] , \w_in[3][1] ,
         \w_in[3][0] , \w_in[2][7] , \w_in[2][6] , \w_in[2][5] , \w_in[2][4] ,
         \w_in[2][3] , \w_in[2][2] , \w_in[2][1] , \w_in[2][0] , \w_in[1][7] ,
         \w_in[1][6] , \w_in[1][4] , \w_in[1][2] , \w_in[1][1] , \w_in[1][0] ,
         \w_in[0][7] , \w_in[0][6] , \w_in[0][5] , \w_in[0][4] , \w_in[0][3] ,
         \w_in[0][2] , \w_in[0][1] , \w_in[0][0] , \if_in[8][7] ,
         \if_in[8][6] , \if_in[8][5] , \if_in[8][4] , \if_in[8][3] ,
         \if_in[8][2] , \if_in[8][1] , \if_in[8][0] , \if_in[7][7] ,
         \if_in[7][6] , \if_in[7][5] , \if_in[7][4] , \if_in[7][3] ,
         \if_in[7][2] , \if_in[7][1] , \if_in[7][0] , \if_in[6][7] ,
         \if_in[6][6] , \if_in[6][5] , \if_in[6][4] , \if_in[6][3] ,
         \if_in[6][2] , \if_in[6][1] , \if_in[6][0] , \if_in[5][7] ,
         \if_in[5][6] , \if_in[5][5] , \if_in[5][4] , \if_in[5][3] ,
         \if_in[5][2] , \if_in[5][1] , \if_in[5][0] , \if_in[4][7] ,
         \if_in[4][6] , \if_in[4][5] , \if_in[4][4] , \if_in[4][3] ,
         \if_in[4][2] , \if_in[4][1] , \if_in[4][0] , \if_in[3][7] ,
         \if_in[3][6] , \if_in[3][5] , \if_in[3][4] , \if_in[3][3] ,
         \if_in[3][2] , \if_in[3][1] , \if_in[2][7] , \if_in[2][6] ,
         \if_in[2][5] , \if_in[2][4] , \if_in[2][3] , \if_in[2][2] ,
         \if_in[2][1] , \if_in[2][0] , \if_in[1][7] , \if_in[1][6] ,
         \if_in[1][5] , \if_in[1][4] , \if_in[1][3] , \if_in[1][2] ,
         \if_in[1][1] , \if_in[1][0] , \if_in[0][7] , \if_in[0][6] ,
         \if_in[0][5] , \if_in[0][4] , \if_in[0][3] , \if_in[0][2] ,
         \if_in[0][1] , \if_in[0][0] , n17, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418,
         N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407,
         N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396,
         N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385,
         N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374,
         N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363,
         N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352,
         N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341,
         N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330,
         N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319,
         N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308,
         N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297,
         N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286,
         N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275,
         N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264,
         N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253,
         N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242,
         N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231,
         N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220,
         N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209,
         N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198,
         N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187,
         N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176,
         N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165,
         N164, N163, N162, N161, N160, N159, N158, N157, N156, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, 
        SYNOPSYS_UNCONNECTED__102, SYNOPSYS_UNCONNECTED__103, 
        SYNOPSYS_UNCONNECTED__104, SYNOPSYS_UNCONNECTED__105, 
        SYNOPSYS_UNCONNECTED__106, SYNOPSYS_UNCONNECTED__107, 
        SYNOPSYS_UNCONNECTED__108, SYNOPSYS_UNCONNECTED__109, 
        SYNOPSYS_UNCONNECTED__110, SYNOPSYS_UNCONNECTED__111, 
        SYNOPSYS_UNCONNECTED__112, SYNOPSYS_UNCONNECTED__113, 
        SYNOPSYS_UNCONNECTED__114, SYNOPSYS_UNCONNECTED__115, 
        SYNOPSYS_UNCONNECTED__116, SYNOPSYS_UNCONNECTED__117, 
        SYNOPSYS_UNCONNECTED__118, SYNOPSYS_UNCONNECTED__119, 
        SYNOPSYS_UNCONNECTED__120, SYNOPSYS_UNCONNECTED__121, 
        SYNOPSYS_UNCONNECTED__122, SYNOPSYS_UNCONNECTED__123, 
        SYNOPSYS_UNCONNECTED__124, SYNOPSYS_UNCONNECTED__125, 
        SYNOPSYS_UNCONNECTED__126, SYNOPSYS_UNCONNECTED__127, 
        SYNOPSYS_UNCONNECTED__128, SYNOPSYS_UNCONNECTED__129, 
        SYNOPSYS_UNCONNECTED__130, SYNOPSYS_UNCONNECTED__131, 
        SYNOPSYS_UNCONNECTED__132, SYNOPSYS_UNCONNECTED__133, 
        SYNOPSYS_UNCONNECTED__134, SYNOPSYS_UNCONNECTED__135, 
        SYNOPSYS_UNCONNECTED__136, SYNOPSYS_UNCONNECTED__137, 
        SYNOPSYS_UNCONNECTED__138, SYNOPSYS_UNCONNECTED__139, 
        SYNOPSYS_UNCONNECTED__140, SYNOPSYS_UNCONNECTED__141, 
        SYNOPSYS_UNCONNECTED__142, SYNOPSYS_UNCONNECTED__143, 
        SYNOPSYS_UNCONNECTED__144, SYNOPSYS_UNCONNECTED__145, 
        SYNOPSYS_UNCONNECTED__146, SYNOPSYS_UNCONNECTED__147, 
        SYNOPSYS_UNCONNECTED__148, SYNOPSYS_UNCONNECTED__149, 
        SYNOPSYS_UNCONNECTED__150, SYNOPSYS_UNCONNECTED__151, 
        SYNOPSYS_UNCONNECTED__152;

  DFFRX4 \w_in_reg[8][1]  ( .D(n157), .CK(clk), .RN(n177), .Q(\w_in[8][1] ) );
  DFFRX4 \w_in_reg[7][1]  ( .D(n149), .CK(clk), .RN(n178), .Q(\w_in[7][1] ) );
  DFFRX4 \w_in_reg[5][1]  ( .D(n133), .CK(clk), .RN(n179), .Q(\w_in[5][1] ) );
  DFFRX4 \w_in_reg[4][1]  ( .D(n125), .CK(clk), .RN(n180), .Q(\w_in[4][1] ) );
  DFFRX4 \w_in_reg[3][3]  ( .D(n119), .CK(clk), .RN(n180), .Q(\w_in[3][3] ) );
  DFFRX4 \w_in_reg[3][1]  ( .D(n117), .CK(clk), .RN(n180), .Q(\w_in[3][1] ) );
  DFFRX4 \w_in_reg[2][1]  ( .D(n109), .CK(clk), .RN(n181), .Q(\w_in[2][1] ) );
  DFFRX4 \w_in_reg[1][1]  ( .D(n101), .CK(clk), .RN(n182), .Q(\w_in[1][1] ) );
  DFFRX4 \w_in_reg[0][3]  ( .D(n95), .CK(clk), .RN(n182), .Q(\w_in[0][3] ) );
  DFFRX4 \w_in_reg[0][1]  ( .D(n93), .CK(clk), .RN(n182), .Q(\w_in[0][1] ) );
  CONV_DW_mult_uns_8 mult_96 ( .a({\w_in[0][7] , \w_in[0][7] , \w_in[0][7] , 
        \w_in[0][7] , \w_in[0][7] , \w_in[0][7] , \w_in[0][7] , \w_in[0][7] , 
        \w_in[0][7] , \w_in[0][7] , \w_in[0][6] , \w_in[0][5] , \w_in[0][4] , 
        \w_in[0][3] , \w_in[0][2] , \w_in[0][1] , \w_in[0][0] }), .b({
        \if_in[0][7] , \if_in[0][7] , \if_in[0][7] , \if_in[0][7] , 
        \if_in[0][7] , \if_in[0][7] , \if_in[0][7] , \if_in[0][7] , 
        \if_in[0][7] , \if_in[0][7] , \if_in[0][6] , \if_in[0][5] , 
        \if_in[0][4] , \if_in[0][3] , \if_in[0][2] , \if_in[0][1] , 
        \if_in[0][0] }), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, N172, N171, N170, 
        N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, 
        N157, N156}) );
  CONV_DW_mult_uns_7 mult_96_I2 ( .a({\w_in[1][7] , \w_in[1][7] , \w_in[1][7] , 
        \w_in[1][7] , \w_in[1][7] , \w_in[1][7] , \w_in[1][7] , \w_in[1][7] , 
        \w_in[1][7] , \w_in[1][7] , \w_in[1][6] , n166, \w_in[1][4] , n168, 
        \w_in[1][2] , \w_in[1][1] , \w_in[1][0] }), .b({\if_in[1][7] , 
        \if_in[1][7] , \if_in[1][7] , \if_in[1][7] , \if_in[1][7] , 
        \if_in[1][7] , \if_in[1][7] , \if_in[1][7] , \if_in[1][7] , 
        \if_in[1][7] , \if_in[1][6] , \if_in[1][5] , \if_in[1][4] , 
        \if_in[1][3] , \if_in[1][2] , \if_in[1][1] , \if_in[1][0] }), 
        .product({SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, N189, N188, N187, N186, N185, N184, N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173}) );
  CONV_DW_mult_uns_6 mult_96_I3 ( .a({\w_in[2][7] , \w_in[2][7] , \w_in[2][7] , 
        \w_in[2][7] , \w_in[2][7] , \w_in[2][7] , \w_in[2][7] , \w_in[2][7] , 
        \w_in[2][7] , \w_in[2][7] , \w_in[2][6] , \w_in[2][5] , \w_in[2][4] , 
        \w_in[2][3] , \w_in[2][2] , \w_in[2][1] , \w_in[2][0] }), .b({
        \if_in[2][7] , \if_in[2][7] , \if_in[2][7] , \if_in[2][7] , 
        \if_in[2][7] , \if_in[2][7] , \if_in[2][7] , \if_in[2][7] , 
        \if_in[2][7] , \if_in[2][7] , \if_in[2][6] , \if_in[2][5] , 
        \if_in[2][4] , \if_in[2][3] , \if_in[2][2] , \if_in[2][1] , 
        \if_in[2][0] }), .product({SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, 
        N208, N207}) );
  CONV_DW_mult_uns_5 mult_96_I4 ( .a({\w_in[3][7] , \w_in[3][7] , \w_in[3][7] , 
        \w_in[3][7] , \w_in[3][7] , \w_in[3][7] , \w_in[3][7] , \w_in[3][7] , 
        \w_in[3][7] , \w_in[3][7] , \w_in[3][6] , n173, \w_in[3][4] , 
        \w_in[3][3] , \w_in[3][2] , \w_in[3][1] , \w_in[3][0] }), .b({
        \if_in[3][7] , \if_in[3][7] , \if_in[3][7] , \if_in[3][7] , 
        \if_in[3][7] , \if_in[3][7] , \if_in[3][7] , \if_in[3][7] , 
        \if_in[3][7] , \if_in[3][7] , \if_in[3][6] , \if_in[3][5] , 
        \if_in[3][4] , \if_in[3][3] , \if_in[3][2] , \if_in[3][1] , n164}), 
        .product({SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247, N246, N245, N244, N243, N242, N241}) );
  CONV_DW_mult_uns_4 mult_96_I5 ( .a({\w_in[4][7] , \w_in[4][7] , \w_in[4][7] , 
        \w_in[4][7] , \w_in[4][7] , \w_in[4][7] , \w_in[4][7] , \w_in[4][7] , 
        \w_in[4][7] , \w_in[4][7] , \w_in[4][6] , n169, \w_in[4][4] , n170, 
        \w_in[4][2] , \w_in[4][1] , \w_in[4][0] }), .b({\if_in[4][7] , 
        \if_in[4][7] , \if_in[4][7] , \if_in[4][7] , \if_in[4][7] , 
        \if_in[4][7] , \if_in[4][7] , \if_in[4][7] , \if_in[4][7] , 
        \if_in[4][7] , \if_in[4][6] , \if_in[4][5] , \if_in[4][4] , 
        \if_in[4][3] , \if_in[4][2] , \if_in[4][1] , \if_in[4][0] }), 
        .product({SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, N291, N290, N289, N288, N287, N286, N285, 
        N284, N283, N282, N281, N280, N279, N278, N277, N276, N275}) );
  CONV_DW_mult_uns_3 mult_96_I6 ( .a({\w_in[5][7] , \w_in[5][7] , \w_in[5][7] , 
        \w_in[5][7] , \w_in[5][7] , \w_in[5][7] , \w_in[5][7] , \w_in[5][7] , 
        \w_in[5][7] , \w_in[5][7] , \w_in[5][6] , \w_in[5][5] , \w_in[5][4] , 
        \w_in[5][3] , \w_in[5][2] , \w_in[5][1] , \w_in[5][0] }), .b({
        \if_in[5][7] , \if_in[5][7] , \if_in[5][7] , \if_in[5][7] , 
        \if_in[5][7] , \if_in[5][7] , \if_in[5][7] , \if_in[5][7] , 
        \if_in[5][7] , \if_in[5][7] , \if_in[5][6] , \if_in[5][5] , 
        \if_in[5][4] , \if_in[5][3] , \if_in[5][2] , \if_in[5][1] , 
        \if_in[5][0] }), .product({SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, N325, N324, N323, 
        N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, 
        N310, N309}) );
  CONV_DW_mult_uns_2 mult_96_I7 ( .a({\w_in[6][7] , \w_in[6][7] , \w_in[6][7] , 
        \w_in[6][7] , \w_in[6][7] , \w_in[6][7] , \w_in[6][7] , \w_in[6][7] , 
        \w_in[6][7] , \w_in[6][7] , \w_in[6][6] , \w_in[6][5] , \w_in[6][4] , 
        \w_in[6][3] , \w_in[6][2] , \w_in[6][1] , \w_in[6][0] }), .b({
        \if_in[6][7] , \if_in[6][7] , \if_in[6][7] , \if_in[6][7] , 
        \if_in[6][7] , \if_in[6][7] , \if_in[6][7] , \if_in[6][7] , 
        \if_in[6][7] , \if_in[6][7] , \if_in[6][6] , \if_in[6][5] , 
        \if_in[6][4] , \if_in[6][3] , \if_in[6][2] , \if_in[6][1] , 
        \if_in[6][0] }), .product({SYNOPSYS_UNCONNECTED__102, 
        SYNOPSYS_UNCONNECTED__103, SYNOPSYS_UNCONNECTED__104, 
        SYNOPSYS_UNCONNECTED__105, SYNOPSYS_UNCONNECTED__106, 
        SYNOPSYS_UNCONNECTED__107, SYNOPSYS_UNCONNECTED__108, 
        SYNOPSYS_UNCONNECTED__109, SYNOPSYS_UNCONNECTED__110, 
        SYNOPSYS_UNCONNECTED__111, SYNOPSYS_UNCONNECTED__112, 
        SYNOPSYS_UNCONNECTED__113, SYNOPSYS_UNCONNECTED__114, 
        SYNOPSYS_UNCONNECTED__115, SYNOPSYS_UNCONNECTED__116, 
        SYNOPSYS_UNCONNECTED__117, SYNOPSYS_UNCONNECTED__118, N359, N358, N357, 
        N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, 
        N344, N343}) );
  CONV_DW_mult_uns_1 mult_96_I8 ( .a({\w_in[7][7] , \w_in[7][7] , \w_in[7][7] , 
        \w_in[7][7] , \w_in[7][7] , \w_in[7][7] , \w_in[7][7] , \w_in[7][7] , 
        \w_in[7][7] , \w_in[7][7] , \w_in[7][6] , n171, \w_in[7][4] , n172, 
        \w_in[7][2] , \w_in[7][1] , \w_in[7][0] }), .b({\if_in[7][7] , 
        \if_in[7][7] , \if_in[7][7] , \if_in[7][7] , \if_in[7][7] , 
        \if_in[7][7] , \if_in[7][7] , \if_in[7][7] , \if_in[7][7] , 
        \if_in[7][7] , \if_in[7][6] , \if_in[7][5] , \if_in[7][4] , 
        \if_in[7][3] , \if_in[7][2] , \if_in[7][1] , \if_in[7][0] }), 
        .product({SYNOPSYS_UNCONNECTED__119, SYNOPSYS_UNCONNECTED__120, 
        SYNOPSYS_UNCONNECTED__121, SYNOPSYS_UNCONNECTED__122, 
        SYNOPSYS_UNCONNECTED__123, SYNOPSYS_UNCONNECTED__124, 
        SYNOPSYS_UNCONNECTED__125, SYNOPSYS_UNCONNECTED__126, 
        SYNOPSYS_UNCONNECTED__127, SYNOPSYS_UNCONNECTED__128, 
        SYNOPSYS_UNCONNECTED__129, SYNOPSYS_UNCONNECTED__130, 
        SYNOPSYS_UNCONNECTED__131, SYNOPSYS_UNCONNECTED__132, 
        SYNOPSYS_UNCONNECTED__133, SYNOPSYS_UNCONNECTED__134, 
        SYNOPSYS_UNCONNECTED__135, N393, N392, N391, N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377}) );
  CONV_DW_mult_uns_0 mult_96_I9 ( .a({\w_in[8][7] , \w_in[8][7] , \w_in[8][7] , 
        \w_in[8][7] , \w_in[8][7] , \w_in[8][7] , \w_in[8][7] , \w_in[8][7] , 
        \w_in[8][7] , \w_in[8][7] , \w_in[8][6] , n165, \w_in[8][4] , n167, 
        \w_in[8][2] , \w_in[8][1] , \w_in[8][0] }), .b({\if_in[8][7] , 
        \if_in[8][7] , \if_in[8][7] , \if_in[8][7] , \if_in[8][7] , 
        \if_in[8][7] , \if_in[8][7] , \if_in[8][7] , \if_in[8][7] , 
        \if_in[8][7] , \if_in[8][6] , \if_in[8][5] , \if_in[8][4] , 
        \if_in[8][3] , \if_in[8][2] , \if_in[8][1] , \if_in[8][0] }), 
        .product({SYNOPSYS_UNCONNECTED__136, SYNOPSYS_UNCONNECTED__137, 
        SYNOPSYS_UNCONNECTED__138, SYNOPSYS_UNCONNECTED__139, 
        SYNOPSYS_UNCONNECTED__140, SYNOPSYS_UNCONNECTED__141, 
        SYNOPSYS_UNCONNECTED__142, SYNOPSYS_UNCONNECTED__143, 
        SYNOPSYS_UNCONNECTED__144, SYNOPSYS_UNCONNECTED__145, 
        SYNOPSYS_UNCONNECTED__146, SYNOPSYS_UNCONNECTED__147, 
        SYNOPSYS_UNCONNECTED__148, SYNOPSYS_UNCONNECTED__149, 
        SYNOPSYS_UNCONNECTED__150, SYNOPSYS_UNCONNECTED__151, 
        SYNOPSYS_UNCONNECTED__152, N427, N426, N425, N424, N423, N422, N421, 
        N420, N419, N418, N417, N416, N415, N414, N413, N412, N411}) );
  CONV_DW01_add_7 add_7_root_add_0_root_add_96_I9 ( .A({N223, N222, N221, N220, 
        N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, 
        N207}), .B({N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, 
        N349, N348, N347, N346, N345, N344, N343}), .CI(1'b0), .SUM({N206, 
        N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, 
        N193, N192, N191, N190}) );
  CONV_DW01_add_6 add_6_root_add_0_root_add_96_I9 ( .A({N427, N426, N425, N424, 
        N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, 
        N411}), .B({N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, 
        N281, N280, N279, N278, N277, N276, N275}), .CI(1'b0), .SUM({N342, 
        N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, 
        N329, N328, N327, N326}) );
  CONV_DW01_add_5 add_2_root_add_0_root_add_96_I9 ( .A({N342, N341, N340, N339, 
        N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, 
        N326}), .B({N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, 
        N196, N195, N194, N193, N192, N191, N190}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224}) );
  CONV_DW01_add_4 add_4_root_add_0_root_add_96_I9 ( .A({N257, N256, N255, N254, 
        N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, 
        N241}), .B({N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, 
        N383, N382, N381, N380, N379, N378, N377}), .CI(1'b0), .SUM({N410, 
        N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, 
        N397, N396, N395, N394}) );
  CONV_DW01_add_3 add_3_root_add_0_root_add_96_I9 ( .A({N325, N324, N323, N322, 
        N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, 
        N309}), .B({N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, 
        N400, N399, N398, N397, N396, N395, N394}), .CI(1'b0), .SUM({N274, 
        N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, 
        N261, N260, N259, N258}) );
  CONV_DW01_add_2 add_5_root_add_0_root_add_96_I9 ( .A({N172, N171, N170, N169, 
        N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, 
        N156}), .B({N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, 
        N179, N178, N177, N176, N175, N174, N173}), .CI(1'b0), .SUM({N308, 
        N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, 
        N295, N294, N293, N292}) );
  CONV_DW01_add_1 add_1_root_add_0_root_add_96_I9 ( .A({N308, N307, N306, N305, 
        N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, 
        N292}), .B({N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, 
        N264, N263, N262, N261, N260, N259, N258}), .CI(1'b0), .SUM({N376, 
        N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, 
        N363, N362, N361, N360}) );
  CONV_DW01_add_0 add_0_root_add_0_root_add_96_I9 ( .A({N240, N239, N238, N237, 
        N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, 
        N224}), .B({N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, 
        N366, N365, N364, N363, N362, N361, N360}), .CI(1'b0), .SUM(out) );
  DFFRX1 \if_in_reg[8][7]  ( .D(n91), .CK(clk), .RN(n183), .Q(\if_in[8][7] )
         );
  DFFRX1 \w_in_reg[0][6]  ( .D(n98), .CK(clk), .RN(n182), .Q(\w_in[0][6] ) );
  DFFRX1 \if_in_reg[5][7]  ( .D(n67), .CK(clk), .RN(n185), .Q(\if_in[5][7] )
         );
  DFFRX1 \if_in_reg[2][7]  ( .D(n43), .CK(clk), .RN(n187), .Q(\if_in[2][7] )
         );
  DFFRX1 \if_in_reg[0][7]  ( .D(n27), .CK(clk), .RN(n188), .Q(\if_in[0][7] )
         );
  DFFRX1 \w_in_reg[8][7]  ( .D(n163), .CK(clk), .RN(n177), .Q(\w_in[8][7] ) );
  DFFRX1 \w_in_reg[0][7]  ( .D(n99), .CK(clk), .RN(n182), .Q(\w_in[0][7] ) );
  DFFRX2 \if_in_reg[2][0]  ( .D(n36), .CK(clk), .RN(n187), .Q(\if_in[2][0] )
         );
  DFFRX2 \w_in_reg[8][6]  ( .D(n162), .CK(clk), .RN(n177), .Q(\w_in[8][6] ) );
  DFFRX2 \w_in_reg[4][6]  ( .D(n130), .CK(clk), .RN(n179), .Q(\w_in[4][6] ) );
  DFFRX2 \w_in_reg[4][7]  ( .D(n131), .CK(clk), .RN(n179), .Q(\w_in[4][7] ) );
  DFFRX2 \if_in_reg[0][5]  ( .D(n25), .CK(clk), .RN(n188), .Q(\if_in[0][5] )
         );
  DFFRX2 \if_in_reg[5][5]  ( .D(n65), .CK(clk), .RN(n185), .Q(\if_in[5][5] )
         );
  DFFRX2 \if_in_reg[5][4]  ( .D(n64), .CK(clk), .RN(n185), .Q(\if_in[5][4] )
         );
  DFFRX2 \if_in_reg[8][4]  ( .D(n88), .CK(clk), .RN(n183), .Q(\if_in[8][4] )
         );
  DFFRX2 \if_in_reg[0][4]  ( .D(n24), .CK(clk), .RN(n188), .Q(\if_in[0][4] )
         );
  DFFRX2 \if_in_reg[5][2]  ( .D(n62), .CK(clk), .RN(n185), .Q(\if_in[5][2] )
         );
  DFFRX2 \if_in_reg[0][3]  ( .D(n23), .CK(clk), .RN(n188), .Q(\if_in[0][3] )
         );
  DFFRX2 \if_in_reg[8][3]  ( .D(n87), .CK(clk), .RN(n183), .Q(\if_in[8][3] )
         );
  DFFRX2 \w_in_reg[8][2]  ( .D(n158), .CK(clk), .RN(n177), .Q(\w_in[8][2] ) );
  DFFRX2 \w_in_reg[4][2]  ( .D(n126), .CK(clk), .RN(n180), .Q(\w_in[4][2] ) );
  DFFRX2 \w_in_reg[1][2]  ( .D(n102), .CK(clk), .RN(n182), .Q(\w_in[1][2] ) );
  DFFRX4 \w_in_reg[5][0]  ( .D(n132), .CK(clk), .RN(n179), .Q(\w_in[5][0] ) );
  DFFRX4 \w_in_reg[0][0]  ( .D(n92), .CK(clk), .RN(n182), .Q(\w_in[0][0] ) );
  DFFRX4 \w_in_reg[4][0]  ( .D(n124), .CK(clk), .RN(n180), .Q(\w_in[4][0] ) );
  DFFRX4 \w_in_reg[1][0]  ( .D(n100), .CK(clk), .RN(n182), .Q(\w_in[1][0] ) );
  DFFRX2 \if_in_reg[0][2]  ( .D(n22), .CK(clk), .RN(n188), .Q(\if_in[0][2] )
         );
  DFFRX2 \if_in_reg[2][2]  ( .D(n38), .CK(clk), .RN(n187), .Q(\if_in[2][2] )
         );
  DFFRX2 \w_in_reg[3][4]  ( .D(n120), .CK(clk), .RN(n180), .Q(\w_in[3][4] ) );
  DFFRX4 \w_in_reg[3][0]  ( .D(n116), .CK(clk), .RN(n180), .Q(\w_in[3][0] ) );
  DFFRX4 \w_in_reg[7][0]  ( .D(n148), .CK(clk), .RN(n178), .Q(\w_in[7][0] ) );
  DFFRX2 \w_in_reg[7][2]  ( .D(n150), .CK(clk), .RN(n178), .Q(\w_in[7][2] ) );
  DFFRX1 \if_in_reg[6][7]  ( .D(n75), .CK(clk), .RN(n184), .Q(\if_in[6][7] )
         );
  DFFRX1 \if_in_reg[4][7]  ( .D(n59), .CK(clk), .RN(n185), .Q(\if_in[4][7] )
         );
  DFFRX1 \if_in_reg[1][7]  ( .D(n35), .CK(clk), .RN(n187), .Q(\if_in[1][7] )
         );
  DFFRX2 \if_in_reg[1][4]  ( .D(n32), .CK(clk), .RN(n187), .Q(\if_in[1][4] )
         );
  DFFRX2 \if_in_reg[6][2]  ( .D(n70), .CK(clk), .RN(n184), .Q(\if_in[6][2] )
         );
  DFFRX2 \if_in_reg[4][3]  ( .D(n55), .CK(clk), .RN(n186), .Q(\if_in[4][3] )
         );
  DFFRX2 \if_in_reg[1][3]  ( .D(n31), .CK(clk), .RN(n188), .Q(\if_in[1][3] )
         );
  DFFRX2 \if_in_reg[6][1]  ( .D(n69), .CK(clk), .RN(n184), .Q(\if_in[6][1] )
         );
  DFFRX2 \if_in_reg[7][6]  ( .D(n82), .CK(clk), .RN(n183), .Q(\if_in[7][6] )
         );
  DFFRX2 \if_in_reg[7][5]  ( .D(n81), .CK(clk), .RN(n183), .Q(\if_in[7][5] )
         );
  DFFRX2 \if_in_reg[7][3]  ( .D(n79), .CK(clk), .RN(n184), .Q(\if_in[7][3] )
         );
  DFFRX2 \if_in_reg[0][1]  ( .D(n21), .CK(clk), .RN(n188), .Q(\if_in[0][1] )
         );
  DFFRX2 \if_in_reg[3][4]  ( .D(n48), .CK(clk), .RN(n186), .Q(\if_in[3][4] )
         );
  DFFRX2 \if_in_reg[3][3]  ( .D(n47), .CK(clk), .RN(n186), .Q(\if_in[3][3] )
         );
  DFFRX2 \if_in_reg[3][2]  ( .D(n46), .CK(clk), .RN(n186), .Q(\if_in[3][2] )
         );
  DFFRX2 \if_in_reg[3][1]  ( .D(n45), .CK(clk), .RN(n186), .Q(\if_in[3][1] )
         );
  DFFRX4 \w_in_reg[8][4]  ( .D(n160), .CK(clk), .RN(n177), .Q(\w_in[8][4] ) );
  DFFRX4 \if_in_reg[8][1]  ( .D(n85), .CK(clk), .RN(n183), .Q(\if_in[8][1] )
         );
  DFFRX1 \w_in_reg[0][4]  ( .D(n96), .CK(clk), .RN(n182), .Q(\w_in[0][4] ) );
  DFFRX4 \w_in_reg[6][1]  ( .D(n141), .CK(clk), .RN(n178), .Q(\w_in[6][1] ) );
  DFFRX4 \if_in_reg[4][0]  ( .D(n52), .CK(clk), .RN(n186), .Q(\if_in[4][0] )
         );
  DFFRX4 \if_in_reg[7][0]  ( .D(n76), .CK(clk), .RN(n184), .Q(\if_in[7][0] )
         );
  DFFRX4 \if_in_reg[0][0]  ( .D(n20), .CK(clk), .RN(n188), .Q(\if_in[0][0] )
         );
  DFFRX4 \if_in_reg[1][0]  ( .D(n28), .CK(clk), .RN(n188), .Q(\if_in[1][0] )
         );
  DFFRX2 \w_in_reg[0][2]  ( .D(n94), .CK(clk), .RN(n182), .Q(\w_in[0][2] ) );
  DFFRX2 \w_in_reg[5][3]  ( .D(n135), .CK(clk), .RN(n179), .Q(\w_in[5][3] ) );
  DFFRX2 \w_in_reg[2][3]  ( .D(n111), .CK(clk), .RN(n181), .Q(\w_in[2][3] ) );
  DFFRX2 \w_in_reg[0][5]  ( .D(n97), .CK(clk), .RN(n182), .Q(\w_in[0][5] ) );
  DFFRX1 \w_in_reg[2][7]  ( .D(n115), .CK(clk), .RN(n181), .Q(\w_in[2][7] ) );
  DFFRX1 \w_in_reg[5][7]  ( .D(n139), .CK(clk), .RN(n179), .Q(\w_in[5][7] ) );
  DFFRX1 \if_in_reg[8][6]  ( .D(n90), .CK(clk), .RN(n183), .Q(\if_in[8][6] )
         );
  DFFRX1 \if_in_reg[5][6]  ( .D(n66), .CK(clk), .RN(n185), .Q(\if_in[5][6] )
         );
  DFFRX1 \w_in_reg[2][6]  ( .D(n114), .CK(clk), .RN(n181), .Q(\w_in[2][6] ) );
  DFFRX1 \w_in_reg[5][6]  ( .D(n138), .CK(clk), .RN(n179), .Q(\w_in[5][6] ) );
  DFFRX1 \w_in_reg[6][6]  ( .D(n146), .CK(clk), .RN(n178), .Q(\w_in[6][6] ) );
  DFFRX1 \w_in_reg[1][6]  ( .D(n106), .CK(clk), .RN(n181), .Q(\w_in[1][6] ) );
  DFFRX1 \w_in_reg[6][7]  ( .D(n147), .CK(clk), .RN(n178), .Q(\w_in[6][7] ) );
  DFFRX1 \w_in_reg[1][7]  ( .D(n107), .CK(clk), .RN(n181), .Q(\w_in[1][7] ) );
  DFFRX1 \if_in_reg[0][6]  ( .D(n26), .CK(clk), .RN(n188), .Q(\if_in[0][6] )
         );
  DFFRX1 \if_in_reg[2][6]  ( .D(n42), .CK(clk), .RN(n187), .Q(\if_in[2][6] )
         );
  DFFRX1 \if_in_reg[3][7]  ( .D(n51), .CK(clk), .RN(n186), .Q(\if_in[3][7] )
         );
  DFFRX1 \if_in_reg[8][5]  ( .D(n89), .CK(clk), .RN(n183), .Q(\if_in[8][5] )
         );
  DFFRX1 \if_in_reg[6][6]  ( .D(n74), .CK(clk), .RN(n184), .Q(\if_in[6][6] )
         );
  DFFRX1 \if_in_reg[4][6]  ( .D(n58), .CK(clk), .RN(n185), .Q(\if_in[4][6] )
         );
  DFFRX1 \if_in_reg[1][6]  ( .D(n34), .CK(clk), .RN(n187), .Q(\if_in[1][6] )
         );
  DFFRX1 \if_in_reg[7][7]  ( .D(n83), .CK(clk), .RN(n183), .Q(\if_in[7][7] )
         );
  DFFRX1 \w_in_reg[5][4]  ( .D(n136), .CK(clk), .RN(n179), .Q(\w_in[5][4] ) );
  DFFRX1 \w_in_reg[2][4]  ( .D(n112), .CK(clk), .RN(n181), .Q(\w_in[2][4] ) );
  DFFRX1 \w_in_reg[3][6]  ( .D(n122), .CK(clk), .RN(n180), .Q(\w_in[3][6] ) );
  DFFRX2 \w_in_reg[7][6]  ( .D(n154), .CK(clk), .RN(n177), .Q(\w_in[7][6] ) );
  DFFRX1 \w_in_reg[6][4]  ( .D(n144), .CK(clk), .RN(n178), .Q(\w_in[6][4] ) );
  DFFRX2 \w_in_reg[4][4]  ( .D(n128), .CK(clk), .RN(n179), .Q(\w_in[4][4] ) );
  DFFRX1 \w_in_reg[1][4]  ( .D(n104), .CK(clk), .RN(n181), .Q(\w_in[1][4] ) );
  DFFRX2 \w_in_reg[8][0]  ( .D(n156), .CK(clk), .RN(n177), .Q(\w_in[8][0] ) );
  DFFRX2 \w_in_reg[2][0]  ( .D(n108), .CK(clk), .RN(n181), .Q(\w_in[2][0] ) );
  DFFRX2 \w_in_reg[6][0]  ( .D(n140), .CK(clk), .RN(n178), .Q(\w_in[6][0] ) );
  DFFRX1 \w_in_reg[7][7]  ( .D(n155), .CK(clk), .RN(n177), .Q(\w_in[7][7] ) );
  DFFRX1 \if_in_reg[4][5]  ( .D(n57), .CK(clk), .RN(n185), .Q(\if_in[4][5] )
         );
  DFFRX1 \if_in_reg[2][4]  ( .D(n40), .CK(clk), .RN(n187), .Q(\if_in[2][4] )
         );
  DFFRX1 \if_in_reg[2][3]  ( .D(n39), .CK(clk), .RN(n187), .Q(\if_in[2][3] )
         );
  DFFRX1 \if_in_reg[3][6]  ( .D(n50), .CK(clk), .RN(n186), .Q(\if_in[3][6] )
         );
  DFFRX1 \w_in_reg[6][2]  ( .D(n142), .CK(clk), .RN(n178), .Q(\w_in[6][2] ) );
  DFFRX1 \if_in_reg[6][3]  ( .D(n71), .CK(clk), .RN(n184), .Q(\if_in[6][3] )
         );
  DFFRX1 \if_in_reg[7][4]  ( .D(n80), .CK(clk), .RN(n183), .Q(\if_in[7][4] )
         );
  DFFRX1 \if_in_reg[3][5]  ( .D(n49), .CK(clk), .RN(n186), .Q(\if_in[3][5] )
         );
  DFFRX1 \w_in_reg[3][7]  ( .D(n123), .CK(clk), .RN(n180), .Q(\w_in[3][7] ) );
  DFFRHQX1 \w_in_reg[3][5]  ( .D(n121), .CK(clk), .RN(n180), .Q(n173) );
  DFFRHQX4 \w_in_reg[7][3]  ( .D(n151), .CK(clk), .RN(n178), .Q(n172) );
  DFFRX2 \w_in_reg[3][2]  ( .D(n118), .CK(clk), .RN(n180), .Q(\w_in[3][2] ) );
  DFFRHQX2 \w_in_reg[7][5]  ( .D(n153), .CK(clk), .RN(n177), .Q(n171) );
  DFFRX2 \if_in_reg[4][2]  ( .D(n54), .CK(clk), .RN(n186), .Q(\if_in[4][2] )
         );
  DFFRHQX2 \w_in_reg[4][3]  ( .D(n127), .CK(clk), .RN(n180), .Q(n170) );
  DFFRHQX2 \w_in_reg[4][5]  ( .D(n129), .CK(clk), .RN(n179), .Q(n169) );
  DFFRX2 \if_in_reg[1][2]  ( .D(n30), .CK(clk), .RN(n188), .Q(\if_in[1][2] )
         );
  DFFRHQX4 \w_in_reg[1][3]  ( .D(n103), .CK(clk), .RN(n182), .Q(n168) );
  DFFRHQX2 \w_in_reg[8][3]  ( .D(n159), .CK(clk), .RN(n177), .Q(n167) );
  DFFRX2 \if_in_reg[1][1]  ( .D(n29), .CK(clk), .RN(n188), .Q(\if_in[1][1] )
         );
  DFFRX2 \if_in_reg[2][1]  ( .D(n37), .CK(clk), .RN(n187), .Q(\if_in[2][1] )
         );
  DFFRX2 \w_in_reg[2][5]  ( .D(n113), .CK(clk), .RN(n181), .Q(\w_in[2][5] ) );
  DFFRHQX2 \w_in_reg[8][5]  ( .D(n161), .CK(clk), .RN(n177), .Q(n165) );
  DFFRHQX2 \if_in_reg[3][0]  ( .D(n44), .CK(clk), .RN(n186), .Q(n164) );
  DFFRX2 \w_in_reg[6][3]  ( .D(n143), .CK(clk), .RN(n178), .Q(\w_in[6][3] ) );
  DFFRX2 \w_in_reg[7][4]  ( .D(n152), .CK(clk), .RN(n177), .Q(\w_in[7][4] ) );
  DFFRX2 \if_in_reg[8][0]  ( .D(n84), .CK(clk), .RN(n183), .Q(\if_in[8][0] )
         );
  DFFRX2 \w_in_reg[5][5]  ( .D(n137), .CK(clk), .RN(n179), .Q(\w_in[5][5] ) );
  DFFRX2 \if_in_reg[6][0]  ( .D(n68), .CK(clk), .RN(n184), .Q(\if_in[6][0] )
         );
  DFFRX2 \if_in_reg[7][2]  ( .D(n78), .CK(clk), .RN(n184), .Q(\if_in[7][2] )
         );
  DFFRX2 \if_in_reg[1][5]  ( .D(n33), .CK(clk), .RN(n187), .Q(\if_in[1][5] )
         );
  DFFRHQX8 \w_in_reg[1][5]  ( .D(n105), .CK(clk), .RN(n181), .Q(n166) );
  DFFRX2 \if_in_reg[5][3]  ( .D(n63), .CK(clk), .RN(n185), .Q(\if_in[5][3] )
         );
  DFFRX4 \if_in_reg[5][0]  ( .D(n60), .CK(clk), .RN(n185), .Q(\if_in[5][0] )
         );
  DFFRX4 \if_in_reg[5][1]  ( .D(n61), .CK(clk), .RN(n185), .Q(\if_in[5][1] )
         );
  DFFRX2 \w_in_reg[5][2]  ( .D(n134), .CK(clk), .RN(n179), .Q(\w_in[5][2] ) );
  DFFRX4 \if_in_reg[7][1]  ( .D(n77), .CK(clk), .RN(n184), .Q(\if_in[7][1] )
         );
  DFFRX2 \if_in_reg[6][5]  ( .D(n73), .CK(clk), .RN(n184), .Q(\if_in[6][5] )
         );
  DFFRX2 \if_in_reg[8][2]  ( .D(n86), .CK(clk), .RN(n183), .Q(\if_in[8][2] )
         );
  DFFRX2 \if_in_reg[2][5]  ( .D(n41), .CK(clk), .RN(n187), .Q(\if_in[2][5] )
         );
  DFFRX2 \if_in_reg[6][4]  ( .D(n72), .CK(clk), .RN(n184), .Q(\if_in[6][4] )
         );
  DFFRX2 \w_in_reg[6][5]  ( .D(n145), .CK(clk), .RN(n178), .Q(\w_in[6][5] ) );
  DFFRX4 \if_in_reg[4][1]  ( .D(n53), .CK(clk), .RN(n186), .Q(\if_in[4][1] )
         );
  DFFRX2 \if_in_reg[4][4]  ( .D(n56), .CK(clk), .RN(n185), .Q(\if_in[4][4] )
         );
  DFFRX2 \w_in_reg[2][2]  ( .D(n110), .CK(clk), .RN(n181), .Q(\w_in[2][2] ) );
  AO22XL U150 ( .A0(\w_in[0][1] ), .A1(n198), .B0(w_in0[1]), .B1(n202), .Y(n93) );
  AO22XL U151 ( .A0(\w_in[0][3] ), .A1(n198), .B0(w_in0[3]), .B1(n202), .Y(n95) );
  AO22XL U152 ( .A0(\w_in[0][5] ), .A1(n198), .B0(w_in0[5]), .B1(n202), .Y(n97) );
  AO22XL U153 ( .A0(\w_in[1][1] ), .A1(n198), .B0(w_in1[1]), .B1(n202), .Y(
        n101) );
  AO22XL U154 ( .A0(\w_in[2][1] ), .A1(n197), .B0(w_in2[1]), .B1(n203), .Y(
        n109) );
  AO22XL U155 ( .A0(\w_in[2][3] ), .A1(n197), .B0(w_in2[3]), .B1(n203), .Y(
        n111) );
  AO22XL U156 ( .A0(\w_in[3][1] ), .A1(n196), .B0(w_in3[1]), .B1(n203), .Y(
        n117) );
  AO22XL U157 ( .A0(\w_in[3][3] ), .A1(n196), .B0(w_in3[3]), .B1(n203), .Y(
        n119) );
  AO22XL U158 ( .A0(\w_in[4][1] ), .A1(n196), .B0(w_in4[1]), .B1(w_w), .Y(n125) );
  AO22XL U159 ( .A0(\w_in[5][1] ), .A1(n195), .B0(w_in5[1]), .B1(w_w), .Y(n133) );
  AO22XL U160 ( .A0(\w_in[5][3] ), .A1(n195), .B0(w_in5[3]), .B1(w_w), .Y(n135) );
  AO22XL U161 ( .A0(\w_in[7][1] ), .A1(n194), .B0(w_in7[1]), .B1(w_w), .Y(n149) );
  AO22XL U162 ( .A0(\w_in[8][1] ), .A1(n198), .B0(w_in8[1]), .B1(n204), .Y(
        n157) );
  AO22XL U163 ( .A0(\if_in[0][0] ), .A1(n193), .B0(if_in0[0]), .B1(n199), .Y(
        n20) );
  AO22XL U164 ( .A0(\if_in[1][0] ), .A1(n193), .B0(if_in1[0]), .B1(n199), .Y(
        n28) );
  AO22XL U165 ( .A0(\if_in[2][0] ), .A1(n192), .B0(if_in2[0]), .B1(n200), .Y(
        n36) );
  AO22XL U166 ( .A0(n164), .A1(n191), .B0(if_in3[0]), .B1(n200), .Y(n44) );
  AO22XL U167 ( .A0(\if_in[4][0] ), .A1(n191), .B0(if_in4[0]), .B1(n200), .Y(
        n52) );
  AO22XL U168 ( .A0(\if_in[5][0] ), .A1(n190), .B0(if_in5[0]), .B1(if_w), .Y(
        n60) );
  AO22XL U169 ( .A0(\if_in[6][0] ), .A1(n189), .B0(if_in6[0]), .B1(n201), .Y(
        n68) );
  AO22XL U170 ( .A0(\if_in[7][0] ), .A1(n189), .B0(if_in7[0]), .B1(n201), .Y(
        n76) );
  AO22XL U171 ( .A0(\if_in[8][0] ), .A1(n191), .B0(if_in8[0]), .B1(n201), .Y(
        n84) );
  AO22XL U172 ( .A0(\w_in[6][1] ), .A1(n194), .B0(w_in6[1]), .B1(n203), .Y(
        n141) );
  AO22XL U173 ( .A0(\if_in[0][1] ), .A1(n193), .B0(if_in0[1]), .B1(n199), .Y(
        n21) );
  AO22XL U174 ( .A0(\if_in[0][2] ), .A1(n193), .B0(if_in0[2]), .B1(n199), .Y(
        n22) );
  AO22XL U175 ( .A0(\if_in[0][3] ), .A1(n193), .B0(if_in0[3]), .B1(n199), .Y(
        n23) );
  AO22XL U176 ( .A0(\if_in[0][4] ), .A1(n193), .B0(if_in0[4]), .B1(n199), .Y(
        n24) );
  AO22XL U177 ( .A0(\if_in[0][5] ), .A1(n193), .B0(if_in0[5]), .B1(n199), .Y(
        n25) );
  AO22XL U178 ( .A0(\if_in[0][6] ), .A1(n193), .B0(if_in0[6]), .B1(n199), .Y(
        n26) );
  AO22XL U179 ( .A0(\if_in[0][7] ), .A1(n193), .B0(if_in0[7]), .B1(n199), .Y(
        n27) );
  AO22XL U180 ( .A0(\if_in[1][1] ), .A1(n193), .B0(if_in1[1]), .B1(n199), .Y(
        n29) );
  AO22XL U181 ( .A0(\if_in[1][2] ), .A1(n193), .B0(if_in1[2]), .B1(n199), .Y(
        n30) );
  AO22XL U182 ( .A0(\if_in[1][3] ), .A1(n193), .B0(if_in1[3]), .B1(n199), .Y(
        n31) );
  AO22XL U183 ( .A0(\if_in[1][4] ), .A1(n192), .B0(if_in1[4]), .B1(n199), .Y(
        n32) );
  AO22XL U184 ( .A0(\if_in[1][5] ), .A1(n192), .B0(if_in1[5]), .B1(n199), .Y(
        n33) );
  AO22XL U185 ( .A0(\if_in[1][6] ), .A1(n192), .B0(if_in1[6]), .B1(n199), .Y(
        n34) );
  AO22XL U186 ( .A0(\if_in[1][7] ), .A1(n192), .B0(if_in1[7]), .B1(n199), .Y(
        n35) );
  AO22XL U187 ( .A0(\w_in[0][0] ), .A1(n198), .B0(w_in0[0]), .B1(n202), .Y(n92) );
  AO22XL U188 ( .A0(\w_in[0][2] ), .A1(n198), .B0(w_in0[2]), .B1(n202), .Y(n94) );
  AO22XL U189 ( .A0(\w_in[0][4] ), .A1(n198), .B0(w_in0[4]), .B1(n202), .Y(n96) );
  AO22XL U190 ( .A0(\w_in[0][6] ), .A1(n198), .B0(w_in0[6]), .B1(n202), .Y(n98) );
  AO22XL U191 ( .A0(\w_in[0][7] ), .A1(n198), .B0(w_in0[7]), .B1(n202), .Y(n99) );
  AO22XL U192 ( .A0(\w_in[1][0] ), .A1(n198), .B0(w_in1[0]), .B1(n202), .Y(
        n100) );
  AO22XL U193 ( .A0(\w_in[1][2] ), .A1(n198), .B0(w_in1[2]), .B1(n202), .Y(
        n102) );
  AO22XL U194 ( .A0(n168), .A1(n198), .B0(w_in1[3]), .B1(n202), .Y(n103) );
  AO22XL U195 ( .A0(\w_in[1][4] ), .A1(n197), .B0(w_in1[4]), .B1(n202), .Y(
        n104) );
  AO22XL U196 ( .A0(n166), .A1(n197), .B0(w_in1[5]), .B1(n202), .Y(n105) );
  AO22XL U197 ( .A0(\w_in[8][6] ), .A1(n198), .B0(w_in8[6]), .B1(n202), .Y(
        n162) );
  AO22XL U198 ( .A0(\if_in[3][1] ), .A1(n191), .B0(if_in3[1]), .B1(n200), .Y(
        n45) );
  AO22XL U199 ( .A0(\if_in[2][1] ), .A1(n192), .B0(if_in2[1]), .B1(n200), .Y(
        n37) );
  AO22XL U200 ( .A0(\if_in[2][2] ), .A1(n192), .B0(if_in2[2]), .B1(n200), .Y(
        n38) );
  AO22XL U201 ( .A0(\if_in[2][3] ), .A1(n192), .B0(if_in2[3]), .B1(n200), .Y(
        n39) );
  AO22XL U202 ( .A0(\if_in[2][4] ), .A1(n192), .B0(if_in2[4]), .B1(n200), .Y(
        n40) );
  AO22XL U203 ( .A0(\if_in[2][5] ), .A1(n192), .B0(if_in2[5]), .B1(n200), .Y(
        n41) );
  AO22XL U204 ( .A0(\if_in[2][6] ), .A1(n192), .B0(if_in2[6]), .B1(n200), .Y(
        n42) );
  AO22XL U205 ( .A0(\if_in[2][7] ), .A1(n192), .B0(if_in2[7]), .B1(n200), .Y(
        n43) );
  AO22XL U206 ( .A0(\if_in[3][2] ), .A1(n191), .B0(if_in3[2]), .B1(n200), .Y(
        n46) );
  AO22XL U207 ( .A0(\if_in[3][3] ), .A1(n191), .B0(if_in3[3]), .B1(n200), .Y(
        n47) );
  AO22XL U208 ( .A0(\if_in[3][4] ), .A1(n191), .B0(if_in3[4]), .B1(n200), .Y(
        n48) );
  AO22XL U209 ( .A0(\if_in[3][5] ), .A1(n191), .B0(if_in3[5]), .B1(n200), .Y(
        n49) );
  AO22XL U210 ( .A0(\if_in[3][6] ), .A1(n191), .B0(if_in3[6]), .B1(n200), .Y(
        n50) );
  AO22XL U211 ( .A0(\if_in[3][7] ), .A1(n191), .B0(if_in3[7]), .B1(n200), .Y(
        n51) );
  AO22XL U212 ( .A0(\if_in[4][1] ), .A1(n191), .B0(if_in4[1]), .B1(n199), .Y(
        n53) );
  AO22XL U213 ( .A0(\if_in[4][2] ), .A1(n191), .B0(if_in4[2]), .B1(n201), .Y(
        n54) );
  AO22XL U214 ( .A0(\if_in[4][3] ), .A1(n191), .B0(if_in4[3]), .B1(if_w), .Y(
        n55) );
  AO22XL U215 ( .A0(\if_in[4][4] ), .A1(n190), .B0(if_in4[4]), .B1(if_w), .Y(
        n56) );
  AO22XL U216 ( .A0(\if_in[4][5] ), .A1(n190), .B0(if_in4[5]), .B1(if_w), .Y(
        n57) );
  AO22XL U217 ( .A0(\if_in[4][6] ), .A1(n190), .B0(if_in4[6]), .B1(if_w), .Y(
        n58) );
  AO22XL U218 ( .A0(\if_in[4][7] ), .A1(n190), .B0(if_in4[7]), .B1(n199), .Y(
        n59) );
  AO22XL U219 ( .A0(\if_in[5][1] ), .A1(n190), .B0(if_in5[1]), .B1(n199), .Y(
        n61) );
  AO22XL U220 ( .A0(\if_in[5][2] ), .A1(n190), .B0(if_in5[2]), .B1(if_w), .Y(
        n62) );
  AO22XL U221 ( .A0(\if_in[5][3] ), .A1(n190), .B0(if_in5[3]), .B1(if_w), .Y(
        n63) );
  AO22XL U222 ( .A0(\if_in[5][4] ), .A1(n190), .B0(if_in5[4]), .B1(if_w), .Y(
        n64) );
  AO22XL U223 ( .A0(\if_in[5][5] ), .A1(n190), .B0(if_in5[5]), .B1(if_w), .Y(
        n65) );
  AO22XL U224 ( .A0(\if_in[5][6] ), .A1(n190), .B0(if_in5[6]), .B1(if_w), .Y(
        n66) );
  AO22XL U225 ( .A0(\if_in[5][7] ), .A1(n190), .B0(if_in5[7]), .B1(n199), .Y(
        n67) );
  AO22XL U226 ( .A0(\if_in[6][1] ), .A1(n189), .B0(if_in6[1]), .B1(n199), .Y(
        n69) );
  AO22XL U227 ( .A0(\if_in[6][2] ), .A1(n189), .B0(if_in6[2]), .B1(if_w), .Y(
        n70) );
  AO22XL U228 ( .A0(\if_in[6][3] ), .A1(n189), .B0(if_in6[3]), .B1(n200), .Y(
        n71) );
  AO22XL U229 ( .A0(\if_in[6][4] ), .A1(n189), .B0(if_in6[4]), .B1(if_w), .Y(
        n72) );
  AO22XL U230 ( .A0(\if_in[6][5] ), .A1(n189), .B0(if_in6[5]), .B1(n200), .Y(
        n73) );
  AO22XL U231 ( .A0(\if_in[6][6] ), .A1(n189), .B0(if_in6[6]), .B1(if_w), .Y(
        n74) );
  AO22XL U232 ( .A0(\if_in[6][7] ), .A1(n189), .B0(if_in6[7]), .B1(n200), .Y(
        n75) );
  AO22XL U233 ( .A0(\if_in[7][1] ), .A1(n189), .B0(if_in7[1]), .B1(n201), .Y(
        n77) );
  AO22XL U234 ( .A0(\if_in[7][2] ), .A1(n189), .B0(if_in7[2]), .B1(if_w), .Y(
        n78) );
  AO22XL U235 ( .A0(\if_in[7][3] ), .A1(n189), .B0(if_in7[3]), .B1(n200), .Y(
        n79) );
  AO22XL U236 ( .A0(\if_in[7][4] ), .A1(n193), .B0(if_in7[4]), .B1(if_w), .Y(
        n80) );
  AO22XL U237 ( .A0(\if_in[7][5] ), .A1(n193), .B0(if_in7[5]), .B1(n200), .Y(
        n81) );
  AO22XL U238 ( .A0(\if_in[7][6] ), .A1(n193), .B0(if_in7[6]), .B1(if_w), .Y(
        n82) );
  AO22XL U239 ( .A0(\if_in[7][7] ), .A1(n193), .B0(if_in7[7]), .B1(n201), .Y(
        n83) );
  AO22XL U240 ( .A0(\if_in[8][1] ), .A1(n191), .B0(if_in8[1]), .B1(if_w), .Y(
        n85) );
  AO22XL U241 ( .A0(\if_in[8][2] ), .A1(n193), .B0(if_in8[2]), .B1(n201), .Y(
        n86) );
  AO22XL U242 ( .A0(\w_in[1][6] ), .A1(n197), .B0(w_in1[6]), .B1(n203), .Y(
        n106) );
  AO22XL U243 ( .A0(\w_in[1][7] ), .A1(n197), .B0(w_in1[7]), .B1(n203), .Y(
        n107) );
  AO22XL U244 ( .A0(\w_in[2][0] ), .A1(n197), .B0(w_in2[0]), .B1(n202), .Y(
        n108) );
  AO22XL U245 ( .A0(\w_in[2][2] ), .A1(n197), .B0(w_in2[2]), .B1(n203), .Y(
        n110) );
  AO22XL U246 ( .A0(\w_in[2][4] ), .A1(n197), .B0(w_in2[4]), .B1(n203), .Y(
        n112) );
  AO22XL U247 ( .A0(\w_in[2][5] ), .A1(n197), .B0(w_in2[5]), .B1(n203), .Y(
        n113) );
  AO22XL U248 ( .A0(\w_in[2][6] ), .A1(n197), .B0(w_in2[6]), .B1(n203), .Y(
        n114) );
  AO22XL U249 ( .A0(\w_in[2][7] ), .A1(n197), .B0(w_in2[7]), .B1(n203), .Y(
        n115) );
  AO22XL U250 ( .A0(\w_in[3][0] ), .A1(n196), .B0(w_in3[0]), .B1(n203), .Y(
        n116) );
  AO22XL U251 ( .A0(\w_in[3][2] ), .A1(n196), .B0(w_in3[2]), .B1(n203), .Y(
        n118) );
  AO22XL U252 ( .A0(\w_in[3][4] ), .A1(n196), .B0(w_in3[4]), .B1(n203), .Y(
        n120) );
  AO22XL U253 ( .A0(n173), .A1(n196), .B0(w_in3[5]), .B1(n203), .Y(n121) );
  AO22XL U254 ( .A0(\w_in[3][6] ), .A1(n196), .B0(w_in3[6]), .B1(n203), .Y(
        n122) );
  AO22XL U255 ( .A0(\w_in[3][7] ), .A1(n196), .B0(w_in3[7]), .B1(n203), .Y(
        n123) );
  AO22XL U256 ( .A0(\w_in[4][0] ), .A1(n196), .B0(w_in4[0]), .B1(n204), .Y(
        n124) );
  AO22XL U257 ( .A0(\w_in[4][2] ), .A1(n196), .B0(w_in4[2]), .B1(w_w), .Y(n126) );
  AO22XL U258 ( .A0(n170), .A1(n196), .B0(w_in4[3]), .B1(w_w), .Y(n127) );
  AO22XL U259 ( .A0(\w_in[4][4] ), .A1(n195), .B0(w_in4[4]), .B1(n202), .Y(
        n128) );
  AO22XL U260 ( .A0(n169), .A1(n195), .B0(w_in4[5]), .B1(w_w), .Y(n129) );
  AO22XL U261 ( .A0(\w_in[4][6] ), .A1(n195), .B0(w_in4[6]), .B1(w_w), .Y(n130) );
  AO22XL U262 ( .A0(\w_in[4][7] ), .A1(n195), .B0(w_in4[7]), .B1(w_w), .Y(n131) );
  AO22XL U263 ( .A0(\w_in[5][0] ), .A1(n195), .B0(w_in5[0]), .B1(n204), .Y(
        n132) );
  AO22XL U264 ( .A0(\w_in[5][2] ), .A1(n195), .B0(w_in5[2]), .B1(n202), .Y(
        n134) );
  AO22XL U265 ( .A0(\w_in[5][4] ), .A1(n195), .B0(w_in5[4]), .B1(w_w), .Y(n136) );
  AO22XL U266 ( .A0(\w_in[5][5] ), .A1(n195), .B0(w_in5[5]), .B1(n202), .Y(
        n137) );
  AO22XL U267 ( .A0(\w_in[5][6] ), .A1(n195), .B0(w_in5[6]), .B1(w_w), .Y(n138) );
  AO22XL U268 ( .A0(\w_in[5][7] ), .A1(n195), .B0(w_in5[7]), .B1(w_w), .Y(n139) );
  AO22XL U269 ( .A0(\w_in[6][0] ), .A1(n194), .B0(w_in6[0]), .B1(w_w), .Y(n140) );
  AO22XL U270 ( .A0(\w_in[6][2] ), .A1(n194), .B0(w_in6[2]), .B1(n204), .Y(
        n142) );
  AO22XL U271 ( .A0(\w_in[6][3] ), .A1(n194), .B0(w_in6[3]), .B1(n204), .Y(
        n143) );
  AO22XL U272 ( .A0(\w_in[6][4] ), .A1(n194), .B0(w_in6[4]), .B1(n204), .Y(
        n144) );
  AO22XL U273 ( .A0(\w_in[6][5] ), .A1(n194), .B0(w_in6[5]), .B1(n203), .Y(
        n145) );
  AO22XL U274 ( .A0(\w_in[6][6] ), .A1(n194), .B0(w_in6[6]), .B1(w_w), .Y(n146) );
  AO22XL U275 ( .A0(\w_in[6][7] ), .A1(n194), .B0(w_in6[7]), .B1(n203), .Y(
        n147) );
  AO22XL U276 ( .A0(\w_in[7][0] ), .A1(n194), .B0(w_in7[0]), .B1(n204), .Y(
        n148) );
  AO22XL U277 ( .A0(\w_in[7][2] ), .A1(n194), .B0(w_in7[2]), .B1(w_w), .Y(n150) );
  AO22XL U278 ( .A0(n172), .A1(n194), .B0(w_in7[3]), .B1(n202), .Y(n151) );
  AO22XL U279 ( .A0(\w_in[7][4] ), .A1(n198), .B0(w_in7[4]), .B1(n204), .Y(
        n152) );
  AO22XL U280 ( .A0(n171), .A1(n198), .B0(w_in7[5]), .B1(n203), .Y(n153) );
  AO22XL U281 ( .A0(\w_in[7][6] ), .A1(n196), .B0(w_in7[6]), .B1(w_w), .Y(n154) );
  AO22XL U282 ( .A0(\w_in[7][7] ), .A1(n196), .B0(w_in7[7]), .B1(w_w), .Y(n155) );
  AO22XL U283 ( .A0(\w_in[8][2] ), .A1(n198), .B0(w_in8[2]), .B1(n203), .Y(
        n158) );
  AO22XL U284 ( .A0(\if_in[8][3] ), .A1(n193), .B0(if_in8[3]), .B1(n201), .Y(
        n87) );
  AO22XL U285 ( .A0(\if_in[8][4] ), .A1(n193), .B0(if_in8[4]), .B1(n201), .Y(
        n88) );
  AO22XL U286 ( .A0(\if_in[8][5] ), .A1(n193), .B0(if_in8[5]), .B1(n201), .Y(
        n89) );
  AO22XL U287 ( .A0(\if_in[8][6] ), .A1(n193), .B0(if_in8[6]), .B1(n201), .Y(
        n90) );
  AO22XL U288 ( .A0(\if_in[8][7] ), .A1(n193), .B0(if_in8[7]), .B1(n201), .Y(
        n91) );
  AO22XL U289 ( .A0(\w_in[8][7] ), .A1(n198), .B0(n202), .B1(w_in8[7]), .Y(
        n163) );
  AO22XL U290 ( .A0(n167), .A1(n198), .B0(w_in8[3]), .B1(n204), .Y(n159) );
  AO22XL U291 ( .A0(n165), .A1(n198), .B0(w_in8[5]), .B1(n204), .Y(n161) );
  AO22XL U292 ( .A0(\w_in[8][0] ), .A1(n198), .B0(w_in8[0]), .B1(n204), .Y(
        n156) );
  AO22XL U293 ( .A0(\w_in[8][4] ), .A1(n198), .B0(w_in8[4]), .B1(n204), .Y(
        n160) );
  CLKBUFX3 U294 ( .A(n18), .Y(n193) );
  CLKBUFX3 U295 ( .A(n18), .Y(n192) );
  CLKBUFX3 U296 ( .A(n18), .Y(n191) );
  CLKBUFX3 U297 ( .A(n18), .Y(n190) );
  CLKBUFX3 U298 ( .A(n18), .Y(n189) );
  CLKBUFX3 U299 ( .A(n17), .Y(n198) );
  CLKBUFX3 U300 ( .A(n17), .Y(n197) );
  CLKBUFX3 U301 ( .A(n17), .Y(n196) );
  CLKBUFX3 U302 ( .A(n17), .Y(n195) );
  CLKBUFX3 U303 ( .A(n17), .Y(n194) );
  CLKBUFX3 U304 ( .A(n174), .Y(n188) );
  CLKBUFX3 U305 ( .A(n174), .Y(n187) );
  CLKBUFX3 U306 ( .A(n205), .Y(n186) );
  CLKBUFX3 U307 ( .A(n176), .Y(n185) );
  CLKBUFX3 U308 ( .A(n175), .Y(n184) );
  CLKBUFX3 U309 ( .A(n175), .Y(n183) );
  CLKBUFX3 U310 ( .A(n176), .Y(n182) );
  CLKBUFX3 U311 ( .A(n175), .Y(n181) );
  CLKBUFX3 U312 ( .A(n176), .Y(n180) );
  CLKBUFX3 U313 ( .A(n174), .Y(n179) );
  CLKBUFX3 U314 ( .A(n176), .Y(n178) );
  CLKBUFX3 U315 ( .A(n205), .Y(n177) );
  CLKBUFX3 U316 ( .A(n175), .Y(n174) );
  NOR2BX1 U317 ( .AN(n204), .B(n199), .Y(n18) );
  NOR2BX1 U318 ( .AN(n201), .B(n202), .Y(n17) );
  CLKBUFX3 U319 ( .A(n205), .Y(n175) );
  CLKBUFX3 U320 ( .A(n205), .Y(n176) );
  CLKBUFX3 U321 ( .A(w_w), .Y(n202) );
  CLKBUFX3 U322 ( .A(if_w), .Y(n199) );
  CLKBUFX3 U323 ( .A(w_w), .Y(n204) );
  CLKBUFX3 U324 ( .A(if_w), .Y(n201) );
  CLKBUFX3 U325 ( .A(if_w), .Y(n200) );
  CLKBUFX3 U326 ( .A(w_w), .Y(n203) );
  CLKINVX1 U327 ( .A(rst), .Y(n205) );
endmodule

