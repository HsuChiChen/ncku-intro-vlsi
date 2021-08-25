/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ----------------------    Convolution    ---------------------- //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps
// ---------------------- define ---------------------- //

 

module CONV(clk, rst, w_w, if_w, w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, w_in6, w_in7, w_in8,
					if_in0, if_in1, if_in2, if_in3, if_in4, if_in5, if_in6, if_in7, if_in8, out);
				
  // ---------------------- input  ---------------------- //
input			clk;
input			rst;
input			w_w;
input			if_w;
input  signed	[`Pixel_DataSize-1:0]	  w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, w_in6, w_in7, w_in8;
input  signed	[`Pixel_DataSize-1:0]	  if_in0, if_in1, if_in2, if_in3, if_in4, if_in5, if_in6, if_in7, if_in8;

// ---------------------- output ---------------------- //
output reg [`Pixel_DataSize*2:0]	  out;

// ----------------------  reg   ---------------------- //
reg signed [`Pixel_DataSize-1:0] w_in[8:0],if_in[8:0];
reg [`Pixel_DataSize*2:0] w_in_temp, if_in_temp; 

integer i,j;
// ---------------------- Write down Your design below  ---------------------- //
always@(posedge clk or posedge rst) begin
	if(rst) begin
		for(i = 0; i < 9; i = i + 1) begin
			w_in[i] <= `Pixel_DataSize 'b0;
			if_in[i] <= `Pixel_DataSize 'b0;
		end
	end
	else if(w_w&&if_w) begin
		w_in[0] <= w_in0;
		w_in[1] <= w_in1;
		w_in[2] <= w_in2;
		w_in[3] <= w_in3;
		w_in[4] <= w_in4;
		w_in[5] <= w_in5;
		w_in[6] <= w_in6;
		w_in[7] <= w_in7;
		w_in[8] <= w_in8;
		if_in[0] <= if_in0;
		if_in[1] <= if_in1;
		if_in[2] <= if_in2;
		if_in[3] <= if_in3;
		if_in[4] <= if_in4;
		if_in[5] <= if_in5;
		if_in[6] <= if_in6;
		if_in[7] <= if_in7;
		if_in[8] <= if_in8;
	end
	else if(w_w) begin
		w_in[0] <= w_in0;
		w_in[1] <= w_in1;
		w_in[2] <= w_in2;
		w_in[3] <= w_in3;
		w_in[4] <= w_in4;
		w_in[5] <= w_in5;
		w_in[6] <= w_in6;
		w_in[7] <= w_in7;
		w_in[8] <= w_in8;
	end
	else if(if_w) begin
		if_in[0] <= if_in0;
		if_in[1] <= if_in1;
		if_in[2] <= if_in2;
		if_in[3] <= if_in3;
		if_in[4] <= if_in4;
		if_in[5] <= if_in5;
		if_in[6] <= if_in6;
		if_in[7] <= if_in7;
		if_in[8] <= if_in8;
	end
	else begin 
		for(i = 0; i < 9; i = i + 1) begin
			w_in[i] <= `Pixel_DataSize 'b0;
			if_in[i] <= `Pixel_DataSize 'b0;
		end
	end
end

always@(*) begin
	out = `Pixel_DataSize2 'b0;
	for(j = 0; j < 9; j = j + 1) begin
		w_in_temp = $signed({w_in[j],9'b0}) >>> 9;
		if_in_temp = $signed({if_in[j],9'b0}) >>> 9;
		out = out + (w_in_temp*if_in_temp);
	end
end

endmodule
