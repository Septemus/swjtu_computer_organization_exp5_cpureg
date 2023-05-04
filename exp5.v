module exp5(
	input clk,
	input [1:0]RA,
	input wr,
	input rd,
	input [1:0]M,
	input clr,
//	input [7:0] DATA_INPUT,
	input [3:0] KEY_R,
	input key_clr,
	output [3:0] KEY_C = 4'b0111,
	output reg[7:0] R0,
	output reg[7:0] R1,
	output reg[7:0] R2,
	output reg[7:0] R3,
	output reg[7:0] PC,
	output [2:0] sel,
	output [31:0] N,
	output [7:0]codeout
);
	wire [7:0] DATA_INPUT;
	wire [7:0] key_out;
	keymodule km(.clk(clk),.KEY_R(KEY_R),.KEY_C(KEY_C),.out(key_out),.clr(key_clr));
	segment_displays sd(.clk(clk),.N(N),.seg(codeout),.sel(sel));
	assign DATA_INPUT=key_out;
	reg [31:0]second_counter=32'h0000_0000;
	reg[7:0] X,Y;
	assign N={X,16'h0000,Y};
	always@(negedge clk)
	begin
		if(second_counter==32'd100000)
		second_counter <= 0;
		else 
		second_counter<=second_counter+1;
	end
	always@(negedge clk or posedge clr)
	begin
		if(clr)
		begin
			PC<=8'h00;
		end
		else if(!clk)
		begin
			case(M)
				2'b00:
				begin 
					if(!second_counter) PC<=PC+1;
				end
				2'b01:
				begin 
					if(!second_counter) PC<=PC-1;
				end
				2'b10:
					begin
						PC<=DATA_INPUT;
					end
				default:
				begin 
					if(!second_counter) PC<=PC+1;
				end
			endcase
			Y<=PC;		
		end
	end
	always@(negedge clk)
	begin
		case(RA)
				2'b00:
				begin
					X<=R0;
					if(wr==0&&rd==1)
					begin
						R0<=DATA_INPUT;
					end
				end
				2'b01:
				begin
					X<=R1;
					if(wr==0&&rd==1)
					begin
						R1<=DATA_INPUT;
					end
				end
				2'b10:
				begin
					X<=R2;
					if(wr==0&&rd==1)
					begin
						R2<=DATA_INPUT;
					end
				end
				2'b11:
				begin
					X<=R3;
					if(wr==0&&rd==1)
					begin
						R3<=DATA_INPUT;
					end
				end
			endcase
	end
endmodule
