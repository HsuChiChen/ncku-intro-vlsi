/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ---------------------- mini_vending      ---------------------- //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps
`define INTERVAL 10

`ifdef syn
   `include "mini_vending_syn.v"
   `include "/usr/cad/CBDK/CBDK_IC_Contest_v2.1/Verilog/tsmc13_neg.v"
`else
   `include "mini_vending.v"
`endif


module det_1001_tb();
  reg         clk,rst,en;
  reg  [5:0]  money,beverage;
  wire [5:0]  change;
  wire        finish;

  reg [5:0] golden [9:0];
  integer i,err;
 
  mini_vending mv0(.clk(clk),.rst(rst),.en(en),.money(money),.beverage(beverage),.change(change),.finish(finish));

  always begin
    #(`INTERVAL/2) clk = ~clk;
  end
 

 initial begin
                      clk = 1; rst = 1; en = 0;
    #`INTERVAL        rst = 1; en = 0;
    $monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
	#(`INTERVAL*0.5)  rst = 0; 
    $monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
	#`INTERVAL        en = 1; money = 6'd40;
    $monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
	#`INTERVAL        en = 0; money = 6'd0; beverage = 6'd40;
    $monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
	#`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
    $monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
	#`INTERVAL        en = 1; money = 6'd50;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd35;    
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd55;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd52; 
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd20;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd15;  
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd63;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd58;  
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd31;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd18; 
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd35;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd26;  
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd63;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd63;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd54;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd38;    
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 1; money = 6'd50;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd13; 
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
    #`INTERVAL        en = 0; money = 6'd0; beverage = 6'd0;
	$monitor($time, "clk=%d, rst=%d, en=%d, money=%d, beverage=%d, change=%d, finish=%d",clk,rst,en,money,beverage,change,finish);
 end

 initial begin
   golden[0] = 0;
   golden[1] = 15;
   golden[2] = 3;
   golden[3] = 5;
   golden[4] = 5;
   golden[5] = 13;
   golden[6] = 9;
   golden[7] = 0;
   golden[8] = 16;
   golden[9] = 37;
end


  initial begin
    err = 0;
    #(5*`INTERVAL-1)
    for(i=0;i<10;i=i+1)begin
      if(finish == 1'b1)begin
         if(change == golden[i])
            $display("Result No.%0d is correct.", i+1);
         else begin
            $display("Result No.%0d is not correct. The result is %d, but %d is expected.", i+1, change, golden[i]);
            err = err + 1;
         end
       end
       else $display("Finish signal not detect. (T^T)");
      #(3*`INTERVAL);
    end

    if(err==0)begin
          $display("                                                     ");
          $display("     ************************************************");
          $display("     *                                              *");
          $display("     *  Congrats! All results are correct. (^o^)b   *");
          $display("     *                                              *");
          $display("     ************************************************"); 
          $display("                                                     ");
    end
    else begin
          $display("                                                     ");
          $display("     ************************************************");
          $display("     *                                              *");
          $display("     *           Something is error. (T_T)          *");
          $display("     *                                              *");
          $display("     ************************************************"); 
          $display("                                                     ");
    end
    $finish;
  end

  `ifdef FSDB
  initial begin
       $fsdbDumpfile("mini_vending_tb.fsdb");
       $fsdbDumpvars();
   end
  `endif

 `ifdef syn
    initial $sdf_annotate("mini_vending_syn.sdf",mv0);
 `endif

endmodule

