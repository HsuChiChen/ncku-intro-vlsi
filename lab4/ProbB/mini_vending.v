/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ---------------------- mini_vending      ---------------------- //
/////////////////////////////////////////////////////////////////////

module mini_vending(clk,rst,en,money,beverage,change,finish);
  // ------- I/O port --------- //
	input             clk,rst,en;
	input       [5:0] money,beverage;
	output reg  [5:0] change;
	output reg        finish;
	// -------------------------- //
	reg [1:0] phase;
	reg [5:0] money_temp;
 // --------------------------- //

  
always@(posedge rst or posedge clk) begin
	if(rst) begin
		phase <= 2'd0;
		money_temp <= 6'd0;
	end
	// phase0 : insert money
	else if(phase == 2'd0 && en == 1'b1) begin
		phase <= 2'd1;
		money_temp <= money; 
	end
	// phase1 : choose beverage
	else if(phase == 2'd1) begin
		phase <= 2'd2;
		money_temp <= money_temp - beverage; 
	end
	// phase2 : give change
	else if(phase == 2'd2) begin
		phase <= 2'd0;
		money_temp <= 6'b0;
	end
	else begin
		phase <= 2'd0;
		money_temp <= 6'b0;
	end
end

  // change and finish
  always@(*)begin
	change = 6'b0;
	finish = 1'b0;
	if(phase == 2'd2) begin
		change = money_temp;
		finish = 1'b1;
	end
	else begin
		finish = 1'b0;
	end
end

endmodule
