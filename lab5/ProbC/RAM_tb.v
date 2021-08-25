//*************************************************
//** 2021 spring iVCAD
//** Description: Random-access memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//** Mar. 2020 Claire revised
//** Mar. 2021 Michael revised
//*************************************************

`timescale 1ns/10ps
`include "RAM.v"
module RAM_tb;

/*Please rewrite this example code according to the assignment*/

reg        clk, read_enable, write_enable;
reg [23:0] data_in;
reg [15:0] address;
wire[23:0] data_out;
integer i;

RAM ram1 (clk, address, write_enable, read_enable, data_in, data_out);

initial clk=1'b0;
always #10 clk=~clk;
initial begin
	//initialization
		read_enable=0; write_enable=0; address=16'd0; data_in=24'd0;
	#20 read_enable=0; write_enable=0;
	#20                write_enable=1; address=16'd0; data_in=24'h0;
	
	//Please add some test pattern to verify your module
	//test_a Write data ... into addr ...
	#20 read_enable=0; write_enable=1; address=16'd00000; data_in=24'h00_0afc;
	#20 address=16'd01887; data_in=24'h00_b031;
	#20 address=16'd22453; data_in=24'hf0_0005;
	#20 address=16'd00308; data_in=24'h00_0246;
	#20 address=16'd00074; data_in=24'h00_00a9;
	#20 address=16'd00299; data_in=24'h00_006e;
	#20 address=16'd00051; data_in=24'hff_ffff;
	#20 address=16'd16388; data_in=24'h00_046a;
	#20 address=16'd65535; data_in=24'hc1_0dd3;
	
	//test_b Read data from addr (70, 299, 0, 1888, 308, 51, 22453, 97) (dec).
	#20 read_enable=1; write_enable=0; address=16'd00070; data_in=24'h00_0000;
	#20 address=16'd00299;
	#20 address=16'd00000;
	#20 address=16'd01888;
	#20 address=16'd00308;
	#20 address=16'd00051;
	#20 address=16'd22453;
	#20 address=16'd00097;
	
	//test_c Write data (0x00_1fc3, 0xed_2a24) into addr (74, 1888) (dec).
	#20 read_enable=0; write_enable=1; address=16'd00074; data_in=24'h00_1fc3;
	#20 address=16'd01888; data_in=24'hed_2a24;
	
	//test_d Read data from addr (16388) (dec).
	#20 read_enable=1; write_enable=0; address=16'd16388; data_in=24'h00_0000;
	
	//test e Write data (0x00_0123) into addr (65535) (dec).
	#20 read_enable=0; write_enable=1; address=16'd65535; data_in=24'h00_0123;
	
	//test f Read data from addr (74) (dec).
	#20 read_enable=1; write_enable=0; address=16'd00074; data_in=24'h00_0000;
	
	//test g Write data (0x00_00cc) into addr (45294) (dec).
	#20 read_enable=0; write_enable=1; address=16'd45294; data_in=24'h00_00cc;
	
	//test h Read data from addr (65535, 45294) (dec).
	#20 read_enable=1; write_enable=0; address=16'd65535; data_in=24'h00_0000;
	#20 address=16'd45294;
	
	// Display result
	#20 for (i=0 ; i<100; i=i+1)
			$display($time, " RAM[%d]=%h, ", i, ram1.memory[i]);
	
	#20 $finish;
end
initial begin
	`ifdef FSDB
	  $fsdbDumpfile("RAM.fsdb");
	  $fsdbDumpvars;
	`endif
	#10000 $finish;
end

endmodule