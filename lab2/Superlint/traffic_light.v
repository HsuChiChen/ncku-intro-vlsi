/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2020 Spring ---------------------- //
// ---------------------- Editor: Tseng Hsin-Yu (Sylvia) --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2020.01    ---------------------- //
// ---------------------- traffic_light  ------------------------- // 
/////////////////////////////////////////////////////////////////////
`define GREEN  2'd0
`define YELLOW 2'd1
`define RED    2'd2

module traffic_light(rst,clk,green,yellow,red);

input rst,clk;
output reg green,yellow,red;

reg [1:0] state,n_state;

always@(posedge rst or posedge clk)begin
  if(rst) state <= `GREEN;
  else state <= n_state;
end

always@(*)begin
   case(state)
      `GREEN: n_state = `YELLOW;
      `YELLOW: n_state = `RED;
      `RED: n_state = `GREEN;
      //default: n_state = `GREEN;
   endcase
end

always@(*)begin
  if(state == `GREEN)begin
     green = 1'b1;
     yellow = 1'b0;
     red = 1'b0;
  end
  else if(state == `YELLOW)begin
     green = 1'b0;
     yellow = 1'b1;
     red = 1'b0;
  end
  else if(state == `RED)begin
     green = 1'b0;
     yellow = 1'b0;
     red = 1'b1;
  end
  else begin
     green = 1'b0;
     yellow = 1'b0;
     //red = 1'b0;
  end
end


endmodule
