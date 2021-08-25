/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ----------------------      System       ---------------------- //
// ----------------- Feb. 2020 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps
`include "define.vh"
`include "Conv.v"
`include "Sat_adder.v"
`include "Controller.v"
`include "Pooling.v"
`include "Pad.v"

/////////////////////////////////////////////////////////
//                                                     //
//            Do not modify the code below             //
//                                                     //
/////////////////////////////////////////////////////////

module system (clk,
               rst,
               ROM_IF_Q,
               ROM_W_Q,
               RAM_CONV_Q,
               RAM_POOL_Q,
               ROM_IF_A,
               ROM_W_A,
               ROM_IF_OE,
               ROM_W_OE,
               RAM_CONV_A,
               RAM_CONV_WE,
               RAM_CONV_OE,
               RAM_CONV_D,
               RAM_POOL_A,
               RAM_POOL_WE,
               RAM_POOL_OE,
               RAM_POOL_D,
               done);

input                   clk;
input                   rst;
input  [`DATA_BITS-1:0] ROM_IF_Q, ROM_W_Q;
input  [`DATA_BITS-1:0] RAM_CONV_Q;
input  [`DATA_BITS-1:0] RAM_POOL_Q;

output [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A;
output                  ROM_IF_OE, ROM_W_OE;
output [`ADDR_BITS-1:0] RAM_CONV_A;
output                  RAM_CONV_WE;
output                  RAM_CONV_OE;
output [`DATA_BITS-1:0] RAM_CONV_D;
output [`ADDR_BITS-1:0] RAM_POOL_A;
output                  RAM_POOL_WE;
output                  RAM_POOL_OE;
output [`DATA_BITS-1:0] RAM_POOL_D;
output                  done;


wire [2:0]              sel_if, sel_w;
wire                    clear;
wire [`DATA_BITS*2+1:0] out0, out1, out2;
wire                    pool_en;
wire                    pad_en;
wire [`DATA_BITS-1:0]   conv_if_in;

//assign pad_en = 1'b0;

// Sub-modules
Conv conv1 (
  .clk(clk), .rst(rst), .clear(clear), .w_w(sel_w[0]), .w_in(ROM_W_Q),
  .if_w(sel_if[0]), .if_in(conv_if_in), .result(out0));

Conv conv2 (
  .clk(clk), .rst(rst), .clear(clear), .w_w(sel_w[1]), .w_in(ROM_W_Q),
  .if_w(sel_if[1]), .if_in(conv_if_in), .result(out1));

Conv conv3 (
  .clk(clk), .rst(rst), .clear(clear), .w_w(sel_w[2]), .w_in(ROM_W_Q),
  .if_w(sel_if[2]), .if_in(conv_if_in), .result(out2));

Sat_adder a1 (
  .in0(out0), .in1(out1), .in2(out2), .sum(RAM_CONV_D));

Pooling p1 (
  .clk(clk), .rst(rst), .en(pool_en), .Data_in(RAM_CONV_Q), .Data_out(RAM_POOL_D));

Pad p2(.en(pad_en), .Data_in(ROM_IF_Q), .Data_out(conv_if_in));

Controller c1(
  .clk(clk), .rst(rst),
  .ROM_IF_A(ROM_IF_A), .ROM_W_A(ROM_W_A), .ROM_IF_OE(ROM_IF_OE),
  .ROM_W_OE(ROM_W_OE), .RAM_CONV_A(RAM_CONV_A),
  .RAM_CONV_WE(RAM_CONV_WE), .RAM_CONV_OE(RAM_CONV_OE),
  .RAM_POOL_A(RAM_POOL_A), .RAM_POOL_WE(RAM_POOL_WE), .RAM_POOL_OE(RAM_POOL_OE),
  .sel_if(sel_if), .sel_w(sel_w), .clear(clear),
  .pad_en(pad_en), .pool_en(pool_en) ,.done(done));

endmodule
