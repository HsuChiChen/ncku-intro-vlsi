//*************************************************
//** 2021 spring iVCAD
//** Description: Moore machine
//** Mar. 2014 Tim revised
//** Mar. 2015 Jimmy revised
//** Mar. 2016 Yip revised
//** Mar. 2017 TimC revised
//** Mar. 2018 Henry revised
//** Mar. 2019 Kevin revised
//** Mar. 2020 Claire revised
//** Mar. 2021 Michael revised
//*************************************************

module mealy (clk, rst, din, qout);

input clk, rst, din;
output qout;

reg qout;
reg [1:0] cs, ns;

parameter s0 = 2'b00,
	  	  s1 = 2'b01,
		  s2 = 2'b10;

always @(posedge clk or posedge rst) begin
	if (rst)
		cs <= s0;
	else
		cs <= ns;

end

always @(cs or din) begin//ns case
	case (cs)
		//please write your code here according to the assignment
		s0: begin
			if(din)
				ns = s2;
			else
				ns = s1;
		end
		
		s1: begin
			if(din)
				ns = s2;
			else
				ns = s1;
		end
		
		s2: begin
			if(din)
				ns = s0;
			else
				ns = s2;
		end
		
		default
			ns = s0;
		
	endcase
end

always @(cs or din) begin//qout case
	case (cs)
		//please write your code here according to the assignment
		s0: begin
			if(din)
				qout = 1'b0;
			else
				qout = 1'b0;
		end
		
		s1: begin
			if(din)
				qout = 1'b0;
			else
				qout = 1'b1;
		end
		
		s2: begin
			if(din)
				qout = 1'b1;
			else
				qout = 1'b0;
		end
		default
			qout = 1'b0;
		
	endcase
end

endmodule
