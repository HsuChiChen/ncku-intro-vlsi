//*************************************************
//** 2021 spring iVCAD
//** Description: Read-only memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//** Feb. 2021 Eric revised
//*************************************************

`timescale 1ns/10ps
`include  "define.vh"

module ROM (CK, A, OE, Q);

input                   CK;
input  [`ADDR_BITS-1:0] A;
input                   OE;
output [`DATA_BITS-1:0] Q;

reg [`DATA_BITS-1:0] Q;
reg [`ADDR_BITS-1:0] latched_A;
reg [`DATA_BITS-1:0] memory [0:`MEM_SIZE-1];

always @(posedge CK) begin
  latched_A <= A;
end

always @(OE or latched_A) begin
  if (OE) begin
    Q = memory[latched_A];
  end
  else begin
    Q = `DATA_BITS'hz;
  end
end

endmodule
