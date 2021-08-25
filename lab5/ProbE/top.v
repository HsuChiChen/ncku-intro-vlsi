/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.26 ---------------------- //
// ---------------------- Simple Controller ---------------------- //
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////
//													   //
//               Do not modify code below              //
//													   //
/////////////////////////////////////////////////////////


`include "grayscale.v"
`include "controller.v"

module top(clk,
           rst,
           done,
		   in_mem_data,
		   gray_data,
		   en_in_mem,
		   in_mem_addr,
		   en_out_mem,
		   out_mem_addr,
		   out_mem_read,
		   out_mem_write
		   );

  input  clk;
  input  rst;  
  input  [23:0]  in_mem_data;
  output [7:0]   gray_data;  
  output         en_in_mem;
  output [31:0]  in_mem_addr;
  output         en_out_mem;
  output [31:0]  out_mem_addr;
  output         out_mem_read;
  output         out_mem_write;  
  output done;

  grayscale gray(
                 .d(in_mem_data),
                 .q(gray_data)
				);
				
  controller ctrl(.clk(clk),
                  .rst(rst),
                  .en_in_mem(en_in_mem),
                  .in_mem_addr(in_mem_addr),
                  .en_out_mem(en_out_mem),
				  .out_mem_read(out_mem_read),
				  .out_mem_write(out_mem_write),
                  .out_mem_addr(out_mem_addr),
				  .done(done)
                 );
				  
endmodule
