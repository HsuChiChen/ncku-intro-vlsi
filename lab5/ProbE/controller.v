/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.26 ---------------------- //
// ---------------------- Simple Controller ---------------------- //
/////////////////////////////////////////////////////////////////////
`define size 480000
`define width 800
`define height 600

module controller(clk,
                  rst,
                  en_in_mem,
                  in_mem_addr,
                  en_out_mem,
				  out_mem_read,
				  out_mem_write,
                  out_mem_addr,
				  done
                 );
				  
// ---------------------- input  ---------------------- //
	input 		clk;
	input 		rst;
// ---------------------- output ---------------------- //
	output reg 	     en_in_mem;
	output reg[31:0] in_mem_addr;
	output reg	     en_out_mem;
	output reg       out_mem_read;
	output reg       out_mem_write;
	output reg[31:0] out_mem_addr;
	output reg	     done;
// ----------------------- others --------------------- //
	reg[1:0] cs,ns;
	reg [31:0] addr;
// --------------- below is your design --------------- //
	always @(posedge clk or posedge rst) begin //rst
		if (rst)
			cs <= 2'b00;
		else
			cs <= ns;
	end

	always@(cs or addr)begin //state relationship
		case(cs)
			2'b00 : ns = 2'b01;
			2'b01 : ns = 2'b10;
			2'b10 : ns = (addr == 32'd479999) ? 2'b11 : 2'b01;
			2'b11 : ns = 2'b11;
		endcase
	end

	always@(cs or addr) begin //output value 1
		case(cs)
			2'b00: begin
				en_in_mem = 1'b0;
				en_out_mem = 1'b0;
				out_mem_read = 1'b0;
				out_mem_write = 1'b0;
				done = 1'b0;
				in_mem_addr = 32'b0;
				out_mem_addr = 32'b0;
			end
			
			2'b01: begin
				en_in_mem = 1'b1;
				en_out_mem = 1'b0;
				out_mem_read = 1'b0;
				out_mem_write = 1'b0;
				done = 1'b0;
				in_mem_addr = addr;
				out_mem_addr = addr;
			end
			
			2'b10: begin
				en_in_mem = 1'b0;
				en_out_mem = 1'b1;
				out_mem_read = 1'b0;
				out_mem_write = 1'b1;
				done = 1'b0;
				in_mem_addr = addr;
				out_mem_addr = addr;
			end
			
			2'b11: begin
				en_in_mem = 1'b0;
				en_out_mem = 1'b0;
				out_mem_read = 1'b0;
				out_mem_write = 1'b0;
				done = 1'b1;
				in_mem_addr = 32'b0;
				out_mem_addr = 32'b0;
		    end
		endcase
	end

	always@(posedge clk or posedge rst)begin //output value 2-sequential
		if(rst)begin
			addr <= 32'd0;
		end
		else begin
			addr <= (cs == 2'b10) ? addr+1 : addr;
		end
	end
// ------------------ the end of code ------------------ //
endmodule
  
  
  
