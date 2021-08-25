/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ----------------------   Pooling module  ---------------------- //
// ------------------- Feb. 2021 Eric authored ------------------- //
/////////////////////////////////////////////////////////////////////
`include  "define.vh"

module Pooling(
  clk,
  rst,
  en,
  Data_in,
  Data_out
);

input clk;
input rst;
input en;
input [`DATA_BITS-1:0] Data_in;
output [`DATA_BITS-1:0] Data_out;

// ---------------------- Write down Your design below  ---------------------- //
reg signed [`DATA_BITS-1:0] temp [3:0];
wire signed [`DATA_BITS-1:0] max1,max2;
always@(posedge clk or posedge rst) begin
	if(rst) begin
		temp[0] <= `DATA_BITS 'b0;
		temp[1] <= `DATA_BITS 'b0;
		temp[2] <= `DATA_BITS 'b0;
		temp[3] <= `DATA_BITS 'b0;
	end
	
	else if(en) begin
		temp[0] <= Data_in;
		temp[1] <= temp[0];
		temp[2] <= temp[1];
		temp[3] <= temp[2];
	end
	
	else begin
		temp[0] <= temp[0];
		temp[1] <= temp[1];
		temp[2] <= temp[2];
		temp[3] <= temp[3];									
	end
end

assign max1 = (temp[0] > temp[1])? temp[0] : temp[1];
assign max2 = (temp[2] > temp[3])? temp[2] : temp[3];
assign Data_out = (max1 > max2)? max1 : max2;
endmodule


