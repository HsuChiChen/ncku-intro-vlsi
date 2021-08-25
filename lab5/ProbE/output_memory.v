//*************************************************                         
//** Author: LPHP Lab                               
//** Project: Simple image processor
//**    			- Output Memory 
//*************************************************

/////////////////////////////////////////////////////////
//													   //
//               Do not modify code below              //
//													   //
/////////////////////////////////////////////////////////



module output_memory(clk,
                     rst,
                     en,
					 en_r,
					 en_w,
                     addr,
                     d,
					 q);

// ---------------------- input  ---------------------- //
  input 		clk;
  input 		rst;
  input 		en;
  input [31:0]	addr;
  input [7:0]	d;
  input 		en_r;
  input 		en_w;
  output reg [7:0]   q;

// ----------------------  reg   ---------------------- // 
  reg   [7:0]	mem[`size-1:0];
  
// ----------------------  wire  ---------------------- //
  wire 			clk;
  wire 			rst;
  wire 			en;
  wire [31:0]	addr;
  wire [7:0]	d;
  wire          en_r;
  wire          en_w;
  
  integer i;

  always @ (posedge clk or posedge rst) begin
    if(rst)begin
      for( i = 0 ; i < `size ; i = i + 1)begin
        mem[i] <= 0;
      end
    end
    else if( (en_r == 1) && (en == 1) && (addr<`size) ) 
    q <= mem[addr];
	else if( (en_w == 1) && (en == 1) && (addr<`size) )
    mem[addr] <= d; 
  end

endmodule
