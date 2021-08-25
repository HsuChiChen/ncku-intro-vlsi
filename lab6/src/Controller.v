/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------mini system controller-------------------- //
// ----------------- Feb. 2021 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include  "define.vh"

module Controller (clk, rst,
                  ROM_IF_A, ROM_W_A, ROM_IF_OE, ROM_W_OE,
                  RAM_CONV_A, RAM_CONV_WE, RAM_CONV_OE,
                  RAM_POOL_A, RAM_POOL_WE, RAM_POOL_OE,
                  sel_if, sel_w, clear, pad_en, pool_en, done);

parameter INIT    = 3'b000,
          READ_W  = 3'b001,
          READ_9  = 3'b010,
          READ_C  = 3'b011,
          WRITE_C = 3'b100,
          READ_P  = 3'b101,
          WRITE_P = 3'b110,
          DONE    = 3'b111;

input                   clk;
input                   rst;
output reg [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A;
output reg                  ROM_IF_OE, ROM_W_OE;
output reg [`ADDR_BITS-1:0] RAM_CONV_A;
output reg                  RAM_CONV_WE, RAM_CONV_OE;
output reg [`ADDR_BITS-1:0] RAM_POOL_A;
output reg                  RAM_POOL_WE, RAM_POOL_OE;
output reg [2:0]            sel_if, sel_w;
output reg                  clear;
output reg                  pad_en;
output reg                  pool_en;
output reg                  done;

// ---------------------- Write down Your design below  ---------------------- //
reg [2:0] cs, ns;
reg [`ADDR_BITS-1:0] row,column,address,row2,column2,address2,count_w;
reg [3:0] count,count2;

always@(*)begin //state machine
	case(cs)
		INIT   : ns = READ_W;
		READ_W : ns = (count_w == 18'd9) ? READ_9  : READ_W;
		READ_9 : ns = (count   ==  4'd9) ? WRITE_C : READ_9;
		READ_C : ns = (count   ==  4'd3) ? WRITE_C : READ_C;
		WRITE_C: begin
			if(address == 18'd65535)
				ns =  READ_P; //ns = DONE; for test 1 ns = READ_P; for test 2
			else begin 
				if(column == 18'd255)
					ns = READ_9; 
				else
					ns = READ_C;
			end
	    end
		
	    READ_P : ns = (count2 == 4'd4) ? WRITE_P : READ_P;
	    WRITE_P: ns = (address2 == 18'd16383) ? DONE : READ_P;
	    DONE   : ns = DONE;
	endcase
end

always@(*) begin //conbinational circuit 1 - all case
		case (cs)
			INIT: begin             //reset allvalue to 0
				ROM_IF_OE   = 1'b0;
				ROM_W_OE    = 1'b0;
				RAM_CONV_WE = 1'b0;
				RAM_CONV_OE = 1'b0;
				RAM_POOL_WE = 1'b0;
				RAM_POOL_OE = 1'b0;
				done        = 1'b0;
				RAM_CONV_A  = 18'b0;
				RAM_POOL_A  = 18'b0;
				clear       = 1'b0;
			end
			
			READ_W: begin
				ROM_IF_OE   = 1'b0;
				ROM_W_OE    = 1'b1; //weight map read enable
				RAM_CONV_WE = 1'b0;
				RAM_CONV_OE = 1'b0;
				RAM_POOL_WE = 1'b0;
				RAM_POOL_OE = 1'b0;
				done        = 1'b0;
				RAM_CONV_A  = 18'b0;
				RAM_POOL_A  = 18'b0;
				clear       = 1'b0;
			end
			
			READ_9: begin
				ROM_IF_OE   = 1'b1; //input feature map read enable
				ROM_W_OE    = 1'b0; 
				RAM_CONV_WE = 1'b0;
				RAM_CONV_OE = 1'b0;
				RAM_POOL_WE = 1'b0;
				RAM_POOL_OE = 1'b0;
				done        = 1'b0;
				RAM_CONV_A  = address;
				RAM_POOL_A  = 18'b0;
				clear       = 1'b0;
			end
			
			READ_C: begin
				ROM_IF_OE   = 1'b1; //input feature map read enable
				ROM_W_OE    = 1'b0; 
				RAM_CONV_WE = 1'b0;
				RAM_CONV_OE = 1'b0;
				RAM_POOL_WE = 1'b0;
				RAM_POOL_OE = 1'b0;
				done        = 1'b0;
				RAM_CONV_A  = address;
				RAM_POOL_A  = 18'b0;
				clear       = 1'b0;
			end
			
			WRITE_C: begin
				ROM_IF_OE   = 1'b0; 
				ROM_W_OE    = 1'b0; 
				RAM_CONV_WE = 1'b1; //convolution ram write enable
				RAM_CONV_OE = 1'b0;
				RAM_POOL_WE = 1'b0;
				RAM_POOL_OE = 1'b0;
				done        = 1'b0;
				RAM_CONV_A  = address; //Write convolution in assigned address
				RAM_POOL_A  = 18'b0;
				clear       = 1'b0;
			end
			
			READ_P: begin
				ROM_IF_OE   = 1'b0; 
				ROM_W_OE    = 1'b0; 
				RAM_CONV_WE = 1'b0; 
				RAM_CONV_OE = 1'b1; //convolution ram read enable
				RAM_POOL_WE = 1'b0;
				RAM_POOL_OE = 1'b0;
				done        = 1'b0;
				RAM_POOL_A  = 18'b0;
				clear       = 1'b0;
				case(count2)
					4'd0: RAM_CONV_A = 18'd256 * row2 + column2;  //can be optimized by repaplacing with shift operator
					4'd1: RAM_CONV_A = 18'd256 * row2 + column2 + 18'b1; //can be optimized by repaplacing with shift operator
					4'd2: RAM_CONV_A = 18'd256 * (row2 + 18'b1) + column2; //can be optimized by repaplacing with shift operator
					4'd3: RAM_CONV_A = 18'd256 * (row2 + 18'b1) + column2 + 18'b1; //can be optimized by repaplacing with shift operator
					4'd4: RAM_CONV_A = 18'b0;
					default: RAM_CONV_A = address2;
				endcase
			end
			
			WRITE_P: begin
				ROM_IF_OE   = 1'b0; 
				ROM_W_OE    = 1'b0; 
				RAM_CONV_WE = 1'b0; 
				RAM_CONV_OE = 1'b0; 
				RAM_POOL_WE = 1'b1; //pooling ram write enable
				RAM_POOL_OE = 1'b0;
				done        = 1'b0;
				RAM_CONV_A  = 18'b0;
				RAM_POOL_A  = address2; //Write pooling in assigned address
				clear       = 1'b0;
			end
			
			DONE: begin
				ROM_IF_OE   = 1'b0; 
				ROM_W_OE    = 1'b0; 
				RAM_CONV_WE = 1'b0; 
				RAM_CONV_OE = 1'b0; 
				RAM_POOL_WE = 1'b0; 
				RAM_POOL_OE = 1'b0;
				done        = 1'b1; //Done
				RAM_CONV_A  = 18'b0;
				RAM_POOL_A  = 18'b0;
				clear       = 1'b0;
			end
		endcase
	end

always@(*) begin //conbinational circuit 2 - read weight map
	if(cs == READ_W) begin
		ROM_W_A = count_w;
		case(count_w)
			//18'd0
			18'd1: sel_w = 3'b001;
			18'd2: sel_w = 3'b001;
			18'd3: sel_w = 3'b001;
			18'd4: sel_w = 3'b010;
			18'd5: sel_w = 3'b010;
			18'd6: sel_w = 3'b010;
			18'd7: sel_w = 3'b100;
			18'd8: sel_w = 3'b100;
			18'd9: sel_w = 3'b100;
			default: sel_w = 3'b000;
		endcase
	end
	else begin
		sel_w = 3'b000;
		ROM_W_A = 18'b0;	
	end
end

always@(*) begin //conbinational circuit 3 - read & write input feature map
	case(cs)
		READ_9: begin //address will delay one cycle
			case(count)
				//4'd0
				4'd1: begin
					sel_if   = 3'b001; //Conv1
					ROM_IF_A = 18'd256 * (row - 18'b1); //Cycle2
					pad_en   = 1'b1; //enable padding
				end
				
				4'd2: begin
					sel_if   = 3'b001; //Conv1
					ROM_IF_A = 18'd256 * (row - 18'b1) + 18'b1; //Cycle3
					if(row == 18'b0)   //row on the botton of input feature map
						pad_en = 1'b1;
					else
						pad_en = 1'b0; //disable padding
				end
				
				4'd3: begin
					sel_if   = 3'b001; //Conv1
					ROM_IF_A = 18'b0;  //Cycle4
					if(row == 18'b0)   //row on the botton of input feature map
						pad_en = 1'b1;
					else
						pad_en = 1'b0;
				end
				
				4'd4: begin
					sel_if   = 3'b010; //Conv2
					ROM_IF_A = 18'd256 * row; //Cycle5
					pad_en   = 1'b1; //enable padding
				end
				
				4'd5: begin
					sel_if   = 3'b010; //Conv2
					ROM_IF_A = 18'd256 * row + 18'b1; //Cycle6
					pad_en   = 1'b0;  //disable padding
				end
				
				4'd6: begin
					sel_if   = 3'b010; //Conv2
					ROM_IF_A = 18'b0; //Cycle7
					pad_en = 1'b0; //disable padding
				end
				
				4'd7: begin
					sel_if   = 3'b100; //Conv3
					ROM_IF_A = 18'd256 * (row + 18'b1); //Cycle8
					pad_en   = 1'b1;
				end
				4'd8: begin
					sel_if   = 3'b100; //Conv3
					ROM_IF_A = 18'd256 * (row + 18'b1) + 18'b1; //Cycle9
					if(row == 18'd255) //row on the top of input feature map
						pad_en = 1'b1;
					else
						pad_en = 1'b0;
				end
				
				4'd9: begin
					sel_if   = 3'b100; //Conv3
					ROM_IF_A = 18'b0;
					if(row == 18'd255) //row on the top of input feature map
						pad_en = 1'b1;
					else
						pad_en = 1'b0;
				end
				
				default: begin
					sel_if   = 3'b000; //No Conv
					ROM_IF_A = 18'b0;
					pad_en   = 1'b0;
				end
			endcase
		end
		
		READ_C: begin //address will delay one cycle
			case(count)
			4'd0: begin
				sel_if   = 3'b000; //No Conv
				if(column == 18'b0)
					ROM_IF_A = 18'd256 * (row - 18'b1) + column;
				else
					ROM_IF_A = 18'd256 * (row - 18'b1) + column + 18'b1;
				pad_en   = 1'b0;
			end
			
			4'd1: begin
				sel_if   = 3'b001; //Conv1
				if(column == 18'b0)
					ROM_IF_A = 18'd256 * row + column;
				else
					ROM_IF_A = 18'd256 * row + column  + 18'b1;
				if(column == 18'd255 | row == 18'd0)
					pad_en = 1'b1;
				else
					pad_en = 1'b0;
			end
			
			4'd2    : begin
				sel_if   = 3'b010; //Conv2
				if(column == 18'b0)
					ROM_IF_A = 18'd256 * (row + 18'b1) + column;
				else
					ROM_IF_A = 18'd256 * (row + 18'b1) + column + 18'b1;
				if(column == 18'd255)
					pad_en = 1'b1;
				else
					pad_en = 1'b0;
			end
			
			4'd3: begin
				sel_if = 3'b100; //Conv3
				ROM_IF_A = 18'b0;
				if(column == 18'd255 | row == 18'd255)
					pad_en = 1'b1;
				else
					pad_en = 1'b0;
			end
			
			default: begin
				sel_if   = 3'b000; //No Conv
				ROM_IF_A = 18'b0;
				pad_en   = 1'b0;
			end
			endcase
		end
		
		default: begin
			sel_if = 3'b000; //No Conv
			ROM_IF_A = 18'b0;
			pad_en = 1'b0;
			
		end
	endcase
end
			
always@(*) begin //conbinational circuit 4 - pooling stage
	case(cs)
		READ_P: begin //address will delay one cycle
			case(count2)
				4'd0: pool_en    = 1'b0;
				4'd1: pool_en    = 1'b1;
				4'd2: pool_en    = 1'b1;
				4'd3: pool_en    = 1'b1;
				4'd4: pool_en    = 1'b1;
				default: pool_en = 1'b0;
			endcase
		end
		default: pool_en    = 1'b0;
	endcase
end


always @(posedge clk or posedge rst) begin //sequential circuit
	if (rst)
		cs <= INIT;
	else begin
		cs <= ns;
		case(cs)
			INIT: begin
				row      <= 18'b0;
				column   <= 18'b0;
				address  <= 18'b0;
				count    <= 4'b0;
				count_w  <= 18'b0;
				row2     <= 18'b0;
				column2  <= 18'b0;
				address2 <= 18'b0;
				count2   <= 4'b0;
			end
		
			READ_W: count_w <= count_w + 18'b1;
		
			READ_9,READ_C: count <= count + 4'b1;
		
			WRITE_C: begin
				count   <= 4'b0;
				address <= address + 18'b1;
			
				if(column == 18'd255) begin //move address
					row <= row + 18'b1;
					column <= 18'b0;
				end
				else
					column <= column + 18'b1;
			end
		
			//pooling stage
			READ_P: count2 <= count2 + 4'b1;
		
			WRITE_P: begin
				count2 <= 4'b0;
				address2 <= address2 + 18'b1;
			
				if(column2 == 18'd254) begin
					row2 <= row2 + 18'd2;
					column2 <= 18'b0;
				end
				else 
					column2 <= column2 + 18'd2;
			end
		
			default: count <= 4'b0;
		endcase
	end
end

endmodule
