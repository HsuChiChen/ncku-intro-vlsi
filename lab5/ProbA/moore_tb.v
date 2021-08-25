//*************************************************
//** 2021 spring iVCAD
//** Description: Moore machine
//** Mar. 2014 Tim revised
//** Mar. 2015 Jimmy revised
//** Mar. 2016 Yip revised
//** Mar. 2017 TimC revised
//** Mar. 2018 Henry revised
//** Mar. 2019 Kevin revised
//** Mar. 2020 Claire revised
//** Mar. 2021 Michael revised
//*************************************************

`timescale 1ns/10ps
`include "moore.v"

module moore_tb;

reg clk, rst, din;   //inputs
wire qout;           //outputs

moore m0 (.qout(qout), .clk(clk), .rst(rst), .din(din));

initial $monitor($time, " clk=%d, rst=%d, din=%d, qout=%d", clk, rst, din, qout);

initial clk = 1'b0;
always #10 clk = ~clk;

initial begin
      rst=1;
    #20	rst=0; din=0;
	#20	din=1;
	#20	din=0;
	#20	din=0;
	#20	din=1;
	#20	din=0;
	#20	din=1;
	#20	din=1;
	#20 $finish;
end

initial begin
  `ifdef FSDB
	$fsdbDumpfile("moore.fsdb");
	$fsdbDumpvars;
  `endif
  #10000 $finish;
end

endmodule



