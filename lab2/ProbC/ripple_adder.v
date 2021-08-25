/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor: Tseng Hsin-Yu (Sylvia) --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.01    ---------------------- //
// ---------------------- ripple_adder  -------------------------- // 
/////////////////////////////////////////////////////////////////////
`include "../ProbB/FullAdder.v"
// Module name and I/O port
module ripple_adder(A,B,addsub,S,Cout,ov_flag);

// Input and output ports declaration
input [4:0] A,B;
input addsub;
output [4:0]S;
output Cout, ov_flag;
/************ your code **************/
wire [3:0] c;
wire [4:0] D;
assign D = (addsub == 1'b1)? ~B+5'b1 : B;

FullAdder FullAdder0(.A(A[0]),.B(D[0]),.Cin(1'b0),.S(S[0]),.Cout(c[0]));
FullAdder FullAdder1(.A(A[1]),.B(D[1]),.Cin(c[0]),.S(S[1]),.Cout(c[1]));
FullAdder FullAdder2(.A(A[2]),.B(D[2]),.Cin(c[1]),.S(S[2]),.Cout(c[2]));
FullAdder FullAdder3(.A(A[3]),.B(D[3]),.Cin(c[2]),.S(S[3]),.Cout(c[3]));
FullAdder FullAdder4(.A(A[4]),.B(D[4]),.Cin(c[3]),.S(S[4]),.Cout(Cout));
assign ov_flag = (A[4] == D[4] && A[4] == ~S[4])? 1'b1 : 1'b0;
/************************************/

endmodule