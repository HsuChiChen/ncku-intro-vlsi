/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ---------------------- Register File     ---------------------- //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

`include "regfile.v"

// ---------------------- define ---------------------- //
// ----You can define the parameters you want below---- //
`define clkPeriod 10
`define AddrSize 6
`define DataSize 32

module regfile_tb();
// ---------------------------------------------------- //
// ----------------------   reg  ---------------------- //
reg	clk;
reg	rst;
reg	reg_enable;
reg reg_write;
reg	[`AddrSize-1:0]	src1_addr;
reg	[`AddrSize-1:0]	src2_addr;
reg	[`AddrSize-1:0]	write_addr;
reg	[`DataSize-1:0]	write_data;

// ----------------------  wire  ---------------------- //
wire [`DataSize-1:0] src1;
wire [`DataSize-1:0] src2;

integer i, error;

regfile RF (.clk(clk), .rst(rst), .reg_enable(reg_enable), .reg_write(reg_write),
			.src1_addr(src1_addr), .src2_addr(src2_addr), .write_addr(write_addr),
			.write_data(write_data), .src1(src1), .src2(src2));

//monitor
initial begin
	error=0;
	#110 if(src1==32'h0000_0000) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src1 is Wrong .Your src1 is %h , but Correct src1 is 00000000 \n",src1);	error = error +1; end
		 if(src2==32'h0000_0000) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src2 is Wrong .Your src2 is %h , but Correct src2 is 00000000 \n",src2);	error = error +1; end
	#10 if(src1==32'hffff_0000) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src1 is Wrong .Your src1 is %h , but Correct src1 is ffff0000 \n",src1);	error = error +1; end
		 if(src2==32'h0000_0000) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src2 is Wrong .Your src2 is %h , but Correct src2 is 00000000 \n",src2);	error = error +1; end
	#10 if(src1==32'hffff_0001) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src1 is Wrong .Your src1 is %h , but Correct src1 is ffff0001 \n",src1);	error = error +1; end
		 if(src2==32'hffff_0005) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src2 is Wrong .Your src2 is %h , but Correct src2 is ffff0005 \n",src2);	error = error +1; end
	#10 if(src1==32'hffff_0002) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src1 is Wrong .Your src1 is %h , but Correct src1 is ffff0002 \n",src1);	error = error +1; end
		 if(src2==32'hffff_ffff) $display("time", $time, "  output is correct\n");
		else begin $display("time", $time, "  src2 is Wrong .Your src2 is %h , but Correct src2 is ffffffff \n",src2);	error = error +1; end
	$display("-----------------------register file---------------------------");
  for(i=0;i<`RegSize;i=i+1)
	begin
	case(i)
	6'd5:begin	
			if(RF.storage[i]==32'hffff_0000) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be ffff0000",i,RF.storage[i]); error=error+1; end
		end
	6'd15:begin	
			if(RF.storage[i]==32'hffff_0001) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be ffff0001",i,RF.storage[i]); error=error+1; end
		end
	6'd24:begin	
			if(RF.storage[i]==32'hffff_0002) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be ffff0002",i,RF.storage[i]); error=error+1; end
		end
	6'd30:begin	
			if(RF.storage[i]==32'h0000_0000) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be 00000000",i,RF.storage[i]); error=error+1; end
		end
	6'd33:begin	
			if(RF.storage[i]==32'h0000_0000) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be 00000000",i,RF.storage[i]); error=error+1; end
		end
	6'd44:begin	
			if(RF.storage[i]==32'hffff_0005) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be ffff0005",i,RF.storage[i]); error=error+1; end
		end
	6'd63:begin	
			if(RF.storage[i]==32'hffff_ffff) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be ffffffff",i,RF.storage[i]); error=error+1; end
		end
	default:begin
			if(RF.storage[i]==32'h0000_0000) $display("REG[%d] = %h  ",i,RF.storage[i]);
			else begin $display("error! your REG[%d] = %h  , but it should be 00000000",i,RF.storage[i]); error=error+1; end
		end
	endcase
	end
	
	$display("-----------------------------------------------------------\n");
	if(error==0)begin
        $display("        ***********************************************        ");
        $display("        **                                           **        ");
        $display("        **             Congratulations !!            **        ");
        $display("        **               Test PASS  !!               **        ");
        $display("        **                                           **        ");
        $display("        ***********************************************        ");
		end
	else $display("total error = %d",error);
	$display("-----------------------------------------------------------\n");
	
end

//clock generator
always #(`clkPeriod/2) clk = ~clk;


initial begin
	clk = 0; rst = 1; reg_enable = 0; reg_write = 0; write_addr = 6'd0;  write_data = 32'd0;         src1_addr = 6'd0;  src2_addr = 6'd0;
#10			   rst = 0;                                                                                src1_addr = 6'd0;  src2_addr = 6'd0;
#6                  reg_enable = 1; reg_write = 1; write_addr = 6'd5;  write_data = 32'hffff_0000; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 1; write_addr = 6'd15; write_data = 32'hffff_0001; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 1; write_addr = 6'd24; write_data = 32'hffff_0002; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 0; write_addr = 6'd30; write_data = 32'hffff_0003; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 0; write_addr = 6'd33; write_data = 32'hffff_0004; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 1; write_addr = 6'd44; write_data = 32'hffff_0005; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 1; write_addr = 6'd63; write_data = 32'hffff_0006; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 1; write_addr = 6'd63; write_data = 32'hffff_ffff; src1_addr = 6'd0;  src2_addr = 6'd0;
#10                 reg_enable = 1; reg_write = 0; write_addr = 6'd0;  write_data = 32'h0;         src1_addr = 6'd1;  src2_addr = 6'd2;
#10                 reg_enable = 1; reg_write = 0; write_addr = 6'd0;  write_data = 32'd0;         src1_addr = 6'd5;  src2_addr = 6'd33;
#10                 reg_enable = 1; reg_write = 0; write_addr = 6'd0;  write_data = 32'd0;         src1_addr = 6'd15; src2_addr = 6'd44;
#10                 reg_enable = 1; reg_write = 0; write_addr = 6'd0;  write_data = 32'd0;         src1_addr = 6'd24; src2_addr = 6'd63;
#200 $finish;                                                                                                     
end

initial begin
	`ifdef FSDB
	$fsdbDumpfile("regfile.fsdb");
	$fsdbDumpvars;
	`endif
end
endmodule

