/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor: Tseng Hsin-Yu (Sylvia) --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.01    ---------------------- //
// ---------------------- ripple_adder --------------------------- // 
/////////////////////////////////////////////////////////////////////
`timescale 1ns/10ps
`define INTERVAL 10

module ripple_adder_tb;
  reg   [4:0] A,B;
  reg         addsub;
  wire  [4:0] S;
  wire        Cout,ov_flag;
  
  
  ripple_adder ripple_adder(.A(A),.B(B),.addsub(addsub),.S(S),.Cout(Cout),.ov_flag(ov_flag));
  
  initial begin
	$monitor($time,"ns, A=%b, B=%b, addsub=%b, S=%b, Cout=%b, ov_flag=%b",A,B,addsub,S,Cout,ov_flag);
  end
  

  initial begin
             A = 2 ;    B = 1 ;   addsub = 0;
  #`INTERVAL A = 7 ;    B = -5;   addsub = 0;
  #`INTERVAL A = -10 ;    B = 13 ;   addsub = 0;
  #`INTERVAL A = 13 ;    B = 12 ;   addsub = 0;
  #`INTERVAL A = -12 ;    B = -5;   addsub = 0;
  #`INTERVAL A = -5;    B = 2 ;   addsub = 1;
  #`INTERVAL A = -6;    B = 11 ;   addsub = 1;
  #`INTERVAL A = 8;    B = 11;   addsub = 1;
  #`INTERVAL A = 13 ;    B = 7 ;   addsub = 1;
  #`INTERVAL A = 12 ;    B = -6 ;   addsub = 1;  
  #`INTERVAL $finish;
  end


initial
  begin
  `ifdef FSDB
    $fsdbDumpfile("ripple_adder.fsdb");
    $fsdbDumpvars(0, ripple_adder);
  `endif
  end
  
endmodule
