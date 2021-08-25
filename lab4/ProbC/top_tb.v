/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ---------------------- Conv and PRelu Testbench  ------------- //
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// 				DO NOT MODIFY THIS TESTBENCH !!!!!!!!!!!		   //
//			 MODIFY YOUR OWN CODE TO SATISFY THIS TESTBENCH	       //
//		   TA WILL USE THIS TESTBENCH TO CHECK YOUR HOMEWORK	   //
//		    SO MAKE SURE YOUR DESIGN CAN PASS THIS TESTBENCH  	   // 
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

`include "top.v"


// ---------------------- define ---------------------- //
`define Pixel_DataSize	8
`define clkPeriod 10

module top_tb;

// ----------------------   reg  ---------------------- //

reg			clk;
reg			rst;
reg			w_w;
reg			if_w;
reg  signed[`Pixel_DataSize-1:0]	  w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, w_in6, w_in7, w_in8;
reg  signed[`Pixel_DataSize-1:0]	  if_in0, if_in1, if_in2, if_in3, if_in4, if_in5, if_in6, if_in7, if_in8;

wire  signed[`Pixel_DataSize*2:0]	  out;

integer error;


top t(.clk(clk), .rst(rst), .w_w(w_w), .if_w(if_w), .w_in0(w_in0), .w_in1(w_in1), .w_in2(w_in2), .w_in3(w_in3),.w_in4(w_in4),
		.w_in5(w_in5), .w_in6(w_in6), .w_in7(w_in7), .w_in8(w_in8), .if_in0(if_in0), .if_in1(if_in1),.if_in2(if_in2),
		.if_in3(if_in3), .if_in4(if_in4), .if_in5(if_in5), .if_in6(if_in6), .if_in7(if_in7), .if_in8(if_in8), .out(out));


		


//monitor
initial begin   
	error=0;
	#35
	$display("-------------------------------------------------------------\n");
  `ifdef tb1
	if(out==17'd45401)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 45401 \n",out);	error = error +1; end 	
	#10
	if(out==17'd49806)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 49806 \n",out);	error = error +1; end 	
	#10
	if(out==17'd40077)  $display("time", $time, "  output is correct\n");	
	else begin $display("time", $time, "  output is Wrong .Your output is %d , but Correct output is 40077 \n",out);	error = error +1; end 
  `elsif tb2
	if(t.C1.out==-17'd1792)  $display("time", $time, "  CONV output is correct\n");	
	else begin $display("time", $time, "  CONV output is Wrong .Your output is %d , but Correct output is -1755 \n",out);	error = error +1; end 	
	if(out==-17'd28)  $display("time", $time, "  PRelu output is correct\n");	
	else begin $display("time", $time, "  PRelu output is Wrong .Your output is %d , but Correct output is 0 \n",out);	error = error +1; end 
	#10
	if(t.C1.out==17'd10132)  $display("time", $time, "  CONV output is correct\n");	
	else begin $display("time", $time, "  CONV output is Wrong .Your output is %d , but Correct output is 10132 \n",out);	error = error +1; end 
	if(out==17'd10132)  $display("time", $time, "  PRelu output is correct\n");	
	else begin $display("time", $time, "  PRelu output is Wrong .Your output is %d , but Correct output is 10132 \n",out);	error = error +1; end 	
	#10
	if(t.C1.out==-17'd6272)  $display("time", $time, "  CONV output is correct\n");	
	else begin $display("time", $time, "  CONV output is Wrong .Your output is %d , but Correct output is -6272 \n",out);	error = error +1; end
	if(out==-17'd98)  $display("time", $time, "  PRelu output is correct\n");	
	else begin $display("time", $time, "  PRelu output is Wrong .Your output is %d , but Correct output is -98 \n",out);	error = error +1; end	
  `endif
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
	
//clock generator
always #(`clkPeriod/2) clk = ~clk;

initial begin
  `ifdef tb1
		clk=0; rst=1; w_w=8'd0; w_in0=8'd0; w_in1=8'd0; w_in2=8'd0; w_in3=8'd0; w_in4=8'd0; w_in5=8'd0; w_in6=8'd0; w_in7=8'd0; w_in8=8'd0;
		if_w=0; if_in0=8'd0; if_in1=8'd0; if_in2=8'd0; if_in3=8'd0; if_in4=8'd0; if_in5=8'd0; if_in6=8'd0; if_in7=8'd0; if_in8=8'd0;
	#10 rst=0;
	#10 w_w=1; w_in0=8'd99; w_in1=8'd71; w_in2=8'd64; w_in3=8'd88; w_in4=8'd76; w_in5=8'd51; w_in6=8'd57; w_in7=8'd111; w_in8=8'd39;
		if_w=1; if_in0=8'd53; if_in1=8'd18; if_in2=8'd76; if_in3=8'd55; if_in4=8'd72; if_in5=8'd120; if_in6=8'd77; if_in7=8'd83; if_in8=8'd102;
	#10 w_w=0; if_in0=8'd107; if_in1=8'd49; if_in2=8'd94; if_in3=8'd101; if_in4=8'd61; if_in5=8'd55; if_in6=8'd38; if_in7=8'd73; if_in8=8'd80;
		w_in0=8'd55; w_in1=8'd85; w_in2=8'd44; w_in3=8'd76; w_in4=8'd78; w_in5=8'd5; w_in6=8'd99; w_in7=8'd51; w_in8=8'd25;
	#10 if_w=0; w_w=1; w_in0=8'd32; w_in1=8'd72; w_in2=8'd81; w_in3=8'd12; w_in4=8'd95; w_in5=8'd27; w_in6=8'd113; w_in7=8'd45; w_in8=8'd118;
		if_in0=8'd23; if_in1=8'd65; if_in2=8'd55; if_in3=8'd26; if_in4=8'd100; if_in5=8'd62; if_in6=8'd88; if_in7=8'd36; if_in8=8'd39;
  `elsif tb2
		clk=0; rst=1; w_w=8'd0; w_in0=8'd0; w_in1=8'd0; w_in2=8'd0; w_in3=8'd0; w_in4=8'd0; w_in5=8'd0; w_in6=8'd0; w_in7=8'd0; w_in8=8'd0;
		if_w=0; if_in0=8'd0; if_in1=8'd0; if_in2=8'd0; if_in3=8'd0; if_in4=8'd0; if_in5=8'd0; if_in6=8'd0; if_in7=8'd0; if_in8=8'd0;
	#10 rst=0;
	#10 w_w=1; w_in0=-8'd12; w_in1=8'd62; w_in2=-8'd17; w_in3=8'd103; w_in4=8'd94; w_in5=-8'd82; w_in6=8'd99; w_in7=-8'd53; w_in8=8'd104;
		if_w=1; if_in0=8'd94; if_in1=-8'd125; if_in2=-8'd123; if_in3=8'd92; if_in4=-8'd108; if_in5=-8'd104; if_in6=8'd92; if_in7=8'd57; if_in8=-8'd86;
	#10 w_w=0; if_in0=-8'd124; if_in1=8'd82; if_in2=8'd87; if_in3=-8'd88; if_in4=8'd49; if_in5=8'd78; if_in6=8'd112; if_in7=-8'd73; if_in8=8'd9;
	#10 if_w=0; w_w=1; w_in0=8'd72; w_in1=-8'd114; w_in2=8'd117; w_in3=8'd18; w_in4=-8'd38; w_in5=8'd77; w_in6=-8'd82; w_in7=-8'd124; w_in8=-8'd67;
  `endif 

	
  #100 $finish;
end

initial begin
	`ifdef FSDB
	$fsdbDumpfile("top.fsdb");
	$fsdbDumpvars;
	`endif
end
endmodule
