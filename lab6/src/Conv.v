/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------- Convolution module---------------------- //
// ----------------- Feb. 2020 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include "define.vh"
//`define DATA_BIT 9
module Conv(clk, rst, clear, w_w, w_in, if_w, if_in, result);

// ---------------------- input  ---------------------- //
input                     clk, rst, clear;
input                     w_w, if_w;
input  [`DATA_BITS-1:0]   w_in;
input  [`DATA_BITS-1:0]   if_in;
output [`DATA_BITS*2+1:0] result;
// -----------------------  reg  ----------------------- //
reg signed [`DATA_BITS-1:0]   weight [2:0];
reg signed [`DATA_BITS-1:0]   feature [2:0];
// ----------------------  others  --------------------- //
integer i;
wire [19:0] weight0,weight1,weight2,feature0,feature1,feature2;
// ---------------------- Write down Your design below  ---------------------- //
always@(posedge clk or posedge rst) begin
	if(rst) begin
		for(i=0; i<3; i=i+1) begin
			weight[i] <= `DATA_BITS 'b0;
			feature[i] <= `DATA_BITS 'b0;
		end
	end
	
	else if(clear) begin
		for(i=0; i<3; i=i+1) begin
			weight[i] <= `DATA_BITS 'b0;
			feature[i] <= `DATA_BITS 'b0;
		end
	end
	
	else begin
		if(w_w) begin
			weight[0] <= w_in;
			weight[1] <= weight[0];
			weight[2] <= weight[1];
		end

		if(if_w) begin
			feature[0] <= if_in;
			feature[1] <= feature[0];
			feature[2] <= feature[1];
		end
	
		else
			feature[0] <= feature[0];
		end
	end

 assign weight0 = {{11{weight[0][8]}},weight[0]};
 assign weight1 = {{11{weight[0][8]}},weight[1]};
 assign weight2 = {{11{weight[0][8]}},weight[2]};
 assign feature0 = {{11{feature[0][8]}},feature[0]};
 assign feature1 = {{11{feature[0][8]}},feature[1]};
 assign feature2 = {{11{feature[0][8]}},feature[2]};
 assign result = weight0 * feature0 + weight1 * feature1 + weight2 * feature2;

//assign result = weight[0] * feature[0] + weight[1] * feature[1] + weight[2] * feature[2];
endmodule
