`timescale 1ns/10ps
`include "mux8to1.v"
module mux8to1_tb;
	reg A, B, C, D, E, F, G, H;
	reg [2:0] sel;
	wire Q;
    integer i,j;
	mux8to1 m0(.A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G), .H(H), .sel(sel), .Q(Q));

initial 
begin 
	{A, B, C, D, E, F, G, H} = 8'b0;
	sel = 3'b0;
	for (i = 1; i < 256; i = i << 1)
	begin
		for (j = 0; j < 8; j = j+1)
		begin
			#10 sel = j;
			$monitor($time, "A=%d, B=%d, C=%d, D=%d, E=%d, F=%d, G=%d, H=%d, sel=%d, Q=%d",A, B, C, D, E, F, G, H, sel, Q);
		end
		{A, B, C, D, E, F, G, H} = i;
	end
			
	#10 $finish;
end
  
initial
	begin
	`ifdef FSDB
    $fsdbDumpfile("mux8to1.fsdb");
    $fsdbDumpvars;
	`endif
	end

endmodule
