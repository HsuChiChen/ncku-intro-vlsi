module mux8to1 (A, B, C, D, E, F, G, H, sel, Q);

	input A, B, C, D, E, F, G, H;
	input [2:0] sel;
	output Q;
    reg Q;
/************ your code **************/
always @(*)begin
	case(sel)
	3'd0 : Q = A;
	3'd1 : Q = B;
	3'd2 : Q = C;
	3'd3 : Q = D;
	3'd4 : Q = E;
	3'd5 : Q = F;
	3'd6 : Q = G;
	3'd7 : Q = H;
	endcase
end
/************************************/
endmodule
