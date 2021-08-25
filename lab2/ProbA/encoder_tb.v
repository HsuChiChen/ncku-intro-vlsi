`timescale 1ns/10ps
/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor: Tseng Hsin-Yu (Sylvia) --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.01    ---------------------- //
// ---------------------- priority encoder  ---------------------- // 
/////////////////////////////////////////////////////////////////////
module encoder_tb;
  reg   I3,I2,I1,I0;
  wire  O1,O0;
  
  
  encoder encoder(.I3(I3),.I2(I2),.I1(I1),.I0(I0),.O1(O1),.O0(O0));
  
  integer i;
  
  initial
  begin
	{I3,I2,I1,I0} = 4'd0;
	
  for (i = 0; i < 15; i = i + 1)
	begin
		#10 {I3,I2,I1,I0} = i;
		$monitor ("%d ns: input = %b%b%b%b, output = %b%b" , $time,I3,I2,I1,I0,O1,O0);
	end
	
	#10 $finish;
  end
 
initial
  begin
  `ifdef FSDB
    $fsdbDumpfile("encoder.fsdb");
    $fsdbDumpvars(0, encoder);
  `endif
  end

endmodule
