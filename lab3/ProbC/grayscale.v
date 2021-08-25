module grayscale(color,gray);
	input [23:0] color;
	output [7:0] gray;
/************ your code **************/
	wire [11:0] temp_r1;
	wire [11:0] temp_g1;
	wire [11:0] temp_b1;
	wire [11:0] temp_r2;
	wire [11:0] temp_g2;
	wire [11:0] temp_b2;
	wire [11:0] temp_result;
	
	assign temp_r1 = {color[7:0],4'b0};
	assign temp_g1 = {color[15:8],4'b0};
	assign temp_b1 = {color[23:16],4'b0};
	assign temp_r2 = (temp_r1>>2) + (temp_r1>>4);
	assign temp_g2 = (temp_g1>>1) + (temp_g1>>4);
	assign temp_b2 = temp_b1>>3;
	assign temp_result = temp_r2 + temp_g2 + temp_b2;
	assign gray = (temp_result[3:0] >= 4'b1000)? temp_result[11:4] + 8'h1 : temp_result[11:4];
/************************************/
endmodule
