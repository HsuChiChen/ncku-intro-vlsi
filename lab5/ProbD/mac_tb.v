/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.03.04 ---------------------- //
// ----------------------   MAC Testbench   ---------------------- //
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// 				DO NOT MODIFY THIS TESTBENCH !!!!!!!!!!!		   //
//			 MODIFY YOUR OWN CODE TO SATISFY THIS TESTBENCH	       //
//		   TA WILL USE THIS TESTBENCH TO CHECK YOUR HOMEWORK	   //
//		    SO MAKE SURE YOUR DESIGN CAN PASS THIS TESTBENCH  	   // 
/////////////////////////////////////////////////////////////////////
`timescale 1ns/10ps

`define DATA_BIT 16

`ifdef syn
`include "mac_syn.v"
`include "/usr/cad/CBDK/CBDK_IC_Contest_v2.1/Verilog/tsmc13_neg.v"
`else
`include "mac.v"
`endif

module mac_tb;

 reg	clk;
 reg	rst;
 reg	clear;
 reg	w_w;
 reg	if_w;	
 reg	signed [`DATA_BIT-1:0] w_in;
 reg	signed [`DATA_BIT-1:0] if_in;

 wire	signed [`DATA_BIT*2+1:0]out;

 integer error;
 
 mac m1(.clk(clk),.rst(rst),.clear(clear),.w_w(w_w),.w_in(w_in),.if_w(if_w),.if_in(if_in),.out(out));

`ifdef syn 
initial $sdf_annotate("mac_syn.sdf",m1);
`endif
 always #5 clk=~clk;
 
//monitor
initial begin   
	error=0;
	#30
	$display("-------------------------------------------------------------\n");
	if(out==34'd8359200)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 8259200 \n",out);	error = error +1; end 
	#10
	if(out==34'd25700720)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 25700720 \n",out);	error = error +1; end 	
	#10
	if(out==34'd34065680)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 34065680 \n",out);	error = error +1; end 	
	#10
	if(out==34'd20602740)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 20602740 \n",out);	error = error +1; end 
	#10
	if(out==34'd28594494)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 28594494 \n",out);	error = error +1; end 
	#10
	if(out==34'd11292414)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 11292414 \n",out);	error = error +1; end 
	#10
	if(out==-34'd10766616)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is -10766616 \n",out);	error = error +1; end 
	#10
	if(out==34'd11699304)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 11699304 \n",out);	error = error +1; end 
	#10 
	if(out==34'd47692934)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 47692934 \n",out);	error = error +1; end
	#10
	if(out==34'd0)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 0 \n",out);	error = error +1; end	

	$display("-----------------------------------------------------------\n");

	if(error==0)begin
        $display("        ***********************************************        ");
        $display("        **                                           **        ");
        $display("        **             Congratulations !!            **        ");
        $display("        **               Test PASS  !!               **        ");
        $display("        **                                           **        ");
        $display("        ***********************************************        ");
		end
	$display("-----------------------------------------------------------\n");	
	end 
	//32768
 initial begin
  #0  clk = 1'b1; rst = 1'b1; clear = 1'b0; w_w = 1'b0; w_in = 16'd0; if_w = 1'b0; if_in = 16'd0;
  #15 rst = 1'b0; w_w = 1'b1; w_in = 16'd324; if_w = 1'b1; if_in = 16'd25800;
  #10 w_w = 1'b1; w_in = 16'd1211; if_w = 1'b1; if_in = 32'd14320;
  #10 w_w = 1'b1; w_in = 16'd888; if_w = 1'b1; if_in = 32'd9420;
  #10 w_w = 1'b0; w_in = 16'd0; if_w = 1'b1; if_in = 16'd5130;
  #10 w_w = 1'b0; if_w = 1'b1; if_in = 16'd21768;
  #10 w_w = 1'b1; w_in = -16'd2500; if_w = 1'b1; if_in = 16'd5700;
  #10 w_w = 1'b1; w_in = 16'd3300; if_w = 1'b1; if_in = -16'd4802;
  #10 w_w = 1'b1; w_in = -16'd9852; if_w = 1'b0; if_in = 16'd0;
  #10 w_w = 1'b1; w_in = -16'd6667; if_w = 1'b0;
  #10 w_w = 1'b0; w_in = 16'd0; if_w = 1'b0; if_in = 16'd0;clear = 1'b1;
  #10 clear = 1'b0;
  #20 $finish;
 end

`ifdef FSDB
 initial begin
    $fsdbDumpfile("mac_tb.fsdb");
    $fsdbDumpvars("+struct", "+mda");
 end
`endif

endmodule
