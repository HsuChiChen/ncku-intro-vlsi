/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.26 ---------------------- //
// ---------------------- Simple Controller ---------------------- //
/////////////////////////////////////////////////////////////////////

module grayscale(
                 d,
                 q
				);

// ---------------------- input  ---------------------- //
	input [23:0]d;
// ---------------------- output ---------------------- //  
	output [7:0]q;
// --------------- below is your design --------------- //
	wire [11:0] temp_r1;
	wire [11:0] temp_g1;
	wire [11:0] temp_b1;
	wire [11:0] temp_r2;
	wire [11:0] temp_g2;
	wire [11:0] temp_b2;
	wire [11:0] temp_result;
	
	assign temp_r1 = {d[7:0],4'b0};
	assign temp_g1 = {d[15:8],4'b0};
	assign temp_b1 = {d[23:16],4'b0};
	assign temp_r2 = (temp_r1>>2) + (temp_r1>>4);
	assign temp_g2 = (temp_g1>>1) + (temp_g1>>4);
	assign temp_b2 = temp_b1>>3;
	assign temp_result = temp_r2 + temp_g2 + temp_b2;
	assign q = (temp_result[3:0] >= 4'b1000)? temp_result[11:4] + 8'h1 : temp_result[11:4];
endmodule
// ------------------ the end of code ------------------ //
