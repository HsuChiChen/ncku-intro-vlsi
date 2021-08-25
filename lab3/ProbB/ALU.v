/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : CHLu     ---------------------- //
// ---------------------- Version : v.4.01  ---------------------- //
// ---------------------- Date : 2021.03.02 ---------------------- //
// ---------------------- ALU reference code  -------------------- // 
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

// ---------------------- define ---------------------- //

`define DataSize  32
`define ALUopSize  5
//define ALUop
`define ADDop     5'b00000
`define SUBop     5'b00001
`define ANDop     5'b00010
`define ORop      5'b00011
`define XORop     5'b00100
`define NORop     5'b00101
`define SRLop     5'b00110
`define ROTRop    5'b00111
//students should implement the following op code
`define NOTop     5'b01000
`define NANDop    5'b01001
`define MAXop     5'b01010
`define MINop     5'b01011
`define ABSop     5'b01100
`define SLTSop    5'b01101
`define SLLop     5'b01110
`define ROTLop    5'b01111
`define ADDUop    5'b10000
`define SRLUop    5'b10001

module ALU (alu_enable, alu_op, src1, src2, alu_out, alu_overflow);

// ---------------------- input  ---------------------- //
input                     alu_enable;
input   [`ALUopSize-1:0]  alu_op;
input   [`DataSize-1:0]   src1;
input   [`DataSize-1:0]   src2;

// ---------------------- output ---------------------- //
output   [`DataSize-1:0]  alu_out;
output                    alu_overflow;

// ----------------------  reg   ---------------------- //
reg    [`DataSize-1:0]    alu_out;
reg                       alu_overflow;
reg    [63:0]             temp;
reg    [63:0]             temp2;
reg                       carry;

always@(*)begin
  alu_overflow = 1'b0;
  temp         = 64'b0;
  temp2        = 64'b0;
  carry        = 1'b0;
  if(alu_enable)begin
    case(alu_op)
        `ADDop  :  begin
            alu_out = src1 + src2;
            if((src1[31]==1'b0 && src2[31]==1'b0 && alu_out[31]==1'b1)||
                 (src1[31]==1'b1 && src2[31]==1'b1 && alu_out[31]==1'b0))
				alu_overflow = 1'b1;
            else
                alu_overflow = 1'b0;
            end
        `SUBop  :  begin
            alu_out = src1 - src2;
            if((src1[31]==1'b0 && src2[31]==1'b1 && alu_out[31]==1'b1)||
                 (src1[31]==1'b1 && src2[31]==1'b0 && alu_out[31]==1'b0))
                alu_overflow = 1'b1;
            else
                alu_overflow = 1'b0;
            end
        `ANDop  :  alu_out = src1 & src2;
        `ORop   :  alu_out = src1 | src2;
        `XORop  :  alu_out = src1 ^ src2;
        `NORop  :  alu_out = ~(src1 | src2);
        `SRLop  :  alu_out = $signed(src1) >>> $signed(src2);
        `ROTRop :  begin
			temp = {src1,src1};
			temp = temp >> (src2%32);
			alu_out = temp[31:0];
			end

/************ your code **************/
		`NOTop  : alu_out = ~src1;
		`NANDop : alu_out = ~(src1&src2);
		`MAXop  : begin
			if($signed(src1) > $signed(src2))
				alu_out = src1;
			else
				alu_out = src2;
			end	
		`MINop  : begin
			if($signed(src1) < $signed(src2))
				alu_out = src1;
			else
				alu_out = src2;
			end	
		`ABSop  : begin
			if(src1[31] == 1'b1)
					alu_out = (~src1) + 32'h01;
				else
				alu_out = src1;
			end
		`SLTSop  : begin
			if($signed(src1) < $signed(src2))
				alu_out = 32'h01;
			else
				alu_out = 32'h00;
			end
		`SLLop  :  alu_out = $signed(src1) <<< $signed(src2);
		`ROTLop :  begin
			temp2 = {src1,src1};
			temp2 = temp2 << (src2%32);
			alu_out = temp2[63:32];
			end
		`ADDUop : begin
			{carry,alu_out} = src1 + src2;
			if(carry)
				alu_overflow = 1'b1;
            else
                alu_overflow = 1'b0;
			end
		`SRLUop : alu_out = src1 >> src2;
	default : alu_out = 32'b0;
/************************************/
      endcase
    end
  else
    alu_out = 32'b0;
  end
endmodule