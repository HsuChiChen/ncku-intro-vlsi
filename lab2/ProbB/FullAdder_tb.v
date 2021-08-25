/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor: Tseng Hsin-Yu (Sylvia) --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02    ---------------------- //
// ---------------------- FullAdder    --------------------------- // 
/////////////////////////////////////////////////////////////////////
`timescale 1ns/10ps
module FullAdder_tb;
  reg   A,B,Cin;
  wire  S,Cout;
  
  
  FullAdder FullAdder(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));
  
  integer i;
  
  initial
  begin
	A = 0;
	B = 0;
	Cin = 0;
	
  for (i = 0; i < 8; i = i + 1)
	begin
		#10 {A, B, Cin} = i;
		$monitor ("%d ns: A = %b, B = %b, Cin = %b, S = %b, Cout = %b" , $time, A, B, Cin, S, Cout);
	end
	
	#10 $finish;
  end
  
initial
  begin
  `ifdef FSDB
    $fsdbDumpfile("FullAdder.fsdb");
    $fsdbDumpvars(0, FullAdder);
  `endif
  end
  
endmodule
