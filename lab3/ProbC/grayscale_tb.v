`timescale 1ns/10ps
`define INTERVAL 20
`include "grayscale.v"

module grayscale_tb;
  reg [23:0] color;
  wire [7:0] gray;
  reg [7:0] golden [9:0];

  integer i, err;

  grayscale gs1(
    .color(color),
    .gray(gray)
  );

  initial begin
    golden[0] = 'h0;
    golden[1] = 'hff;
    golden[2] = 'h10;
    golden[3] = 'h1;
    golden[4] = 'h3;
    golden[5] = 'h9c;
    golden[6] = 'ha1;
    golden[7] = 'h77;
    golden[8] = 'h5d;
    golden[9] = 'h24;
  end

  initial begin
    color = 'h0;
    #`INTERVAL color = 24'hffffff;
    #`INTERVAL color = 24'h101010;
    #`INTERVAL color = 24'h010101;
    #`INTERVAL color = 24'h010205;
    #`INTERVAL color = 24'h7bde31;
    #`INTERVAL color = 24'hcb9e96;
    #`INTERVAL color = 24'h5366a5;
    #`INTERVAL color = 24'hbc524c;
    #`INTERVAL color = 24'h48162f;
    #`INTERVAL color = 24'hfeadef;
  end

  initial begin
    err = 0;
    #(`INTERVAL-1)
    for(i=0;i<10;i=i+1)begin
      if(gray===golden[i])
        $display("Result No.%0d is correct.", i+1);
      else begin
        $display("Result No.%0d is not correct. The result is %d, but %d is expected.", i+1, gray, golden[i]);
        err = err + 1;
      end
      #`INTERVAL;
    end
    if(err===0)begin
      $display("                                             ");
      $display("     ****************************************");
      $display("     *                                      *");
      $display("     *  Congrats! All results are correct.  *");
      $display("     *                                      *");
      $display("     ****************************************"); 
      $display("                                             ");
    end
    $finish;
  end

  `ifdef FSDB
    initial begin
      $fsdbDumpfile("grayscale.fsdb");
      $fsdbDumpvars();
    end
  `endif

endmodule
