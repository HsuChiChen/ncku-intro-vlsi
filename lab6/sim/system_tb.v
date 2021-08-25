/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.05 ---------------------- //
// ---------------------- System testbench  ---------------------- //
// ----------------- Feb. 2020 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps
`define PERIOD 10.0     // Modify the clock period for your design
`define MAX    1000000  // Modify simulation max cycle here

/////////////////////////////////////////////////////////
//                                                     //
//           Do not modify the code below              //
//                                                     //
/////////////////////////////////////////////////////////

`define INPUT_PIC   "../sim/penguin.bmp"
`define WEIGHT      "../sim/weight.txt"
`define GOLDEN_CONV "../sim/GOLDEN_CONV.txt"
`define GOLDEN_POOL "../sim/GOLDEN_POOL.txt"

`include "define.vh"
`include "RAM.v"
`include "ROM.v"

`ifdef SYN
`include "/usr/cad/CBDK/CBDK_IC_Contest_v2.1/Verilog/tsmc13_neg.v"
`include "system_syn.v"
`else
`include "system.v"
`endif

module system_tb;

reg         clk;
reg         rst;

wire  [`DATA_BITS-1:0] ROM_IF_Q, ROM_W_Q;
wire  [`DATA_BITS-1:0] RAM_CONV_Q;
wire  [`DATA_BITS-1:0] RAM_POOL_Q;

wire [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A;
wire                  ROM_IF_OE, ROM_W_OE;
wire [`ADDR_BITS-1:0] RAM_CONV_A;
wire                  RAM_CONV_WE;
wire                  RAM_CONV_OE;
wire [`DATA_BITS-1:0] RAM_CONV_D;
wire [`ADDR_BITS-1:0] RAM_POOL_A;
wire                  RAM_POOL_WE;
wire                  RAM_POOL_OE;
wire [`DATA_BITS-1:0] RAM_POOL_D;
wire                  done;

reg [`DATA_BITS-2:0] data [0:`size*3+54];
reg [`DATA_BITS-2:0] exp_conv [0:`size-1];
reg [`DATA_BITS-2:0] exp_pool [0:`size/4-1];
reg                  real_done;

integer temp;
integer ifile1, ofile, pointer;
integer i, j, x, y, a, b;
integer point=0, error=0;

system sys1(
  .clk(clk), .rst(rst),
  .ROM_IF_Q(ROM_IF_Q), .ROM_W_Q(ROM_W_Q), .RAM_CONV_Q(RAM_CONV_Q),
  .RAM_POOL_Q(RAM_POOL_Q), .ROM_IF_A(ROM_IF_A), .ROM_W_A(ROM_W_A),
  .ROM_IF_OE(ROM_IF_OE), .ROM_W_OE(ROM_W_OE), .RAM_CONV_A(RAM_CONV_A),
  .RAM_CONV_WE(RAM_CONV_WE), .RAM_CONV_OE(RAM_CONV_OE), .RAM_CONV_D(RAM_CONV_D),
  .RAM_POOL_A(RAM_POOL_A), .RAM_POOL_WE(RAM_POOL_WE), .RAM_POOL_OE(RAM_POOL_OE),
  .RAM_POOL_D(RAM_POOL_D), .done(done));

ROM rom_if (
  .CK(clk      ),
  .A (ROM_IF_A ),
  .OE(ROM_IF_OE),
  .Q (ROM_IF_Q )
);

ROM rom_w (
  .CK(clk     ),
  .A (ROM_W_A ),
  .OE(ROM_W_OE),
  .Q (ROM_W_Q )
);

RAM ram_conv (
  .CK(clk   ),
  .A (RAM_CONV_A ),
  .WE(RAM_CONV_WE),
  .OE(RAM_CONV_OE),
  .D (RAM_CONV_D ),
  .Q (RAM_CONV_Q )
);

RAM ram_pool (
  .CK(clk   ),
  .A (RAM_POOL_A ),
  .WE(RAM_POOL_WE),
  .OE(RAM_POOL_OE),
  .D (RAM_POOL_D ),
  .Q (RAM_POOL_Q )
);

always #(`PERIOD/2) clk = ~clk;
always @(posedge clk) real_done <= done;

`ifdef SYN
  initial $sdf_annotate("system_syn.sdf", sys1);
`endif

initial begin
      clk = 0; rst = 0;
  #5           rst = 1;
  #5           rst = 0;
end

initial $readmemh(`GOLDEN_CONV, exp_conv); // Read golden file (conv)
initial $readmemh(`GOLDEN_POOL, exp_pool); // Read golden file (pool)
initial begin
  // Open file
  ifile1 = $fopen(`INPUT_PIC, "rb");
  `ifdef SYN
  ofile = $fopen("after_conv_syn.bmp", "wb");
  `else
  ofile = $fopen("after_conv_rtl.bmp", "wb");
  `endif
  // Padding the input image
  pointer = $fread(data, ifile1);
  // Take single channel data
  for(i=0;i<`size;i=i+1)begin
    rom_if.memory[point] = data[3*i+54];
    point=point+1;
  end
  // Conv weight
  $readmemh(`WEIGHT, rom_w.memory);
  $fclose(ifile1);

  wait (real_done)
  // Write conv result into image
  for (i=0; i<54; i=i+1) begin
    $fwrite(ofile, "%c", data[i]);
  end
  for (i=0; i<`size; i=i+1) begin
    temp = ram_conv.memory[i];
    for(j=0;j<3;j=j+1)
      $fwrite(ofile, "%c", temp);
  end
  $fclose(ofile);
  // Check conv result
`ifdef rtl0
  for (x=0;x<256;x=x+1)begin
    for (y=0;y<256;y=y+1)begin
      if(ram_conv.memory[x*256+y]!==exp_conv[x*256+y])begin
        error=error+1;
        $display("Error!!, At mem[%d], conv_result = %d, golden = %d",x*256+y,ram_conv.memory[x*256+y],exp_conv[x*256+y]);
      end
      else begin
        $display("Pass!!, At mem[%d], conv_result = %d, golden = %d",x*256+y,ram_conv.memory[x*256+y],exp_conv[x*256+y]);
      end
    end
  end
`endif
  // Check pool result
`ifdef rtl1
  for (x=0;x<128;x=x+1)begin
    for (y=0;y<128;y=y+1)begin
      if(ram_pool.memory[x*128+y]!==exp_pool[x*128+y])begin
        error=error+1;
        $display("Error!!, At mem[%d], pool_result = %d, golden = %d",x*128+y,ram_pool.memory[x*128+y],exp_pool[x*128+y]);
      end
      else begin
        $display("Pass!!, At mem[%d], pool_result = %d, golden = %d",x*128+y,ram_pool.memory[x*128+y],exp_pool[x*128+y]);
      end
    end
  end
`endif
  // Check all result
`ifdef SYN
  for (x=0;x<256;x=x+1)begin
    for (y=0;y<256;y=y+1)begin
      if(ram_conv.memory[x*256+y]!==exp_conv[x*256+y])begin
        error=error+1;
        $display("Error!!, At mem[%d], conv_result = %d, golden = %d",x*256+y,ram_conv.memory[x*256+y],exp_conv[x*256+y]);
      end
      else begin
        $display("Pass!!, At mem[%d], conv_result = %d, golden = %d",x*256+y,ram_conv.memory[x*256+y],exp_conv[x*256+y]);
      end
    end
  end
  for (x=0;x<128;x=x+1)begin
    for (y=0;y<128;y=y+1)begin
      if(ram_pool.memory[x*128+y]!==exp_pool[x*128+y])begin
        error=error+1;
        $display("Error!!, At mem[%d], pool_result = %d, golden = %d",x*128+y,ram_pool.memory[x*128+y],exp_pool[x*128+y]);
      end
      else begin
        $display("Pass!!, At mem[%d], pool_result = %d, golden = %d",x*128+y,ram_pool.memory[x*128+y],exp_pool[x*128+y]);
      end
    end
  end
`endif
  result(error);
  $finish;
end

  initial begin
`ifdef FSDB
    $fsdbDumpfile("system.fsdb");
    $fsdbDumpvars();
`elsif FSDB_ALL
    $fsdbDumpfile("system.fsdb");
    $fsdbDumpvars("+struct", "+mda");
`endif
    #(`PERIOD*`MAX)
    $display("\nOut of simulation time");
    $display("Use larger cycle number or Check the done signal");
`ifdef rtl0
    for (a=0;a<256*256;a=a+1)begin
      error=error+1;
    end
`endif
    // Check pool result
`ifdef rtl1
    for (a=0;a<128*128;a=a+1)begin
      error=error+1;
    end
`endif
`ifdef SYN
  for (a=0;a<256*256;a=a+1)begin
    error=error+1;
  end
  for (a=0;a<128*128;a=a+1)begin
    error=error+1;
  end
`endif
    result(error);
    $finish;
  end

  task result;
    input integer err;
    begin
      if (err === 0)
      begin
        $display("");
        $display("");
        $display("        ****************************               ");
        $display("        **                        **       |\__||  ");
        $display("        **  Congratulations !!    **      / O.O  | ");
        $display("        **                        **    /_____   | ");
        $display("        **  Simulation PASS!!     **   /^ ^ ^ \\  |");
        $display("        **                        **  |^ ^ ^ ^ |w| ");
        $display("        ****************************   \\m___m__|_|");
        $display("");
      end
      else
      begin
        $display("");
        $display("");
        $display("        ****************************               ");
        $display("        **                        **       |\__||  ");
        $display("        **  OOPS!!                **      / X,X  | ");
        $display("        **                        **    /_____   | ");
        $display("        **  Simulation Failed!!   **   /^ ^ ^ \\  |");
        $display("        **                        **  |^ ^ ^ ^ |w| ");
        $display("        ****************************   \\m___m__|_|");
        $display("         Totally has %d errors                     ", err);
        $display("");
      end
    end
  endtask
endmodule
