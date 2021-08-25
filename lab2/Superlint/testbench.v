/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2020 Spring ---------------------- //
// ---------------------- Editor: Tseng Hsin-Yu (Sylvia) --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2020.01    ---------------------- //
// ---------------------- traffic_light  ------------------------- // 
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps
`include "traffic_light.v"

module tb_traffic_light;

reg rst,clk;
wire green,yellow,red;

traffic_light t0(rst,clk,green,yellow,red);

initial
$monitor($time," rst=%b ,clk=%b ,green=%b ,yellow=%b ,red=%b",rst,clk,green,yellow,red);

always
begin
	rst=1;clk=1;
 #5	rst=0;
 #30    $finish;
end

always #5 begin
clk=~clk;
end

initial begin
	$fsdbDumpfile("TLC.fsdb");
	$fsdbDumpvars;
end

endmodule
