/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------- Saturation adder  ---------------------- //
// ----------------- Feb. 2020 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include "define.vh"

module Sat_adder(in0, in1, in2, sum);

input  signed [`DATA_BITS*2+1:0] in0, in1, in2;
output reg signed [`DATA_BITS-1:0]   sum;
// ---------------------- Write down Your design below  ---------------------- //
wire signed [19:0] sum_temp;
assign sum_temp = in0 + in1 +in2;

always@(*) begin
	if(sum_temp > $signed(20'd255))
		sum = 9'd255;
	else if(sum_temp < $signed(20'd0))
		sum = 9'd0;
	else
		sum = sum_temp[8:0];
end
endmodule
