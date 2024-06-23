`timescale 1ns / 1ps
`define s0 4'b0000
`define sb1 4'b0001
`define sb2 4'b0010
`define sb3 4'b0011
`define sb4 4'b0100
`define sb5 4'b0101
`define se1 4'b0110
`define se2 4'b0111
`define se3 4'b1000
`define sx0 4'b1001
`define sx 4'b1010
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:09:01 10/12/2023 
// Design Name: 
// Module Name:    BlockChecker 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output reg result
    );
	 
	 reg[3:0] status;
	 reg[3:0] next_status;
	 reg[31:0] count;
	 reg flag;
	 
	 always@(posedge clk, posedge reset) begin
	     if(reset) begin
				count <= 0;
		      status <= `s0;   
		  end else begin
		      status <= next_status;
		  end
	 end
	 
	 always @(status, in) begin
	    case(status) 
		     `s0: begin
			      flag = 1;
			      if((in == "b") || (in == "B")) begin
					    next_status = `sb1;
					end else if((in == "e") || (in == "E")) begin
					    next_status = `se1;
					end else if(in == " ") begin
					    next_status = status;
					end else begin
					    next_status = `sx;
					end
			  end
			  `sb1: begin
			      if((in == "e") || (in == "E")) begin
					    next_status = `sb2;
					end else if(in == " ") begin
					    next_status = `sx0;
					end else begin
					    next_status = `sx;
					end
			  end
			  `sb2: begin
			      if((in == "g") || (in == "G")) begin
					    next_status = `sb3;
					end else if(in == " ") begin
					    next_status = `sx0;
					end else begin
					    next_status = `sx;
					end
			  end
			  `sb3: begin
			      if((in == "i") || (in == "I")) begin
					    next_status = `sb4;
					end else if(in == " ") begin
					    next_status = `sx0;
					end else begin
					    next_status = `sx;
					end
			  end
			  `sb4: begin
			      if((in == "N") || (in == "n")) begin
					    next_status = `sb5;
					end else if(in == " ") begin
					    next_status = `sx0;
					end else begin
					    next_status = `sx;
					end
			  end
			  `sb5: begin
			      if(in == " ") begin
					    next_status = `sx0;
						 count = count + 1;
					end else begin
					    next_status = `sx;
					end
			  end
			  `se1: begin
			      if((in == "n") || (in == "N")) begin
					    next_status = `se2;
					end else if(in == " ") begin
					    next_status = `sx0;
					end else begin
					    next_status = `sx;
					end
			  end
			  `se2: begin
			      if((in == "d") || (in == "D")) begin
					    next_status = `se3;
					end else if(in == " ") begin
					    next_status = `sx0;
					end else begin
					    next_status = `sx;
					end
			  end
			  `se3: begin
			      if(in == " ") begin
					    next_status = `sx0;
						 if(flag) begin
						     if(count <= 0) begin
							      flag = 0;
							  end else begin
							      count = count - 1;
							  end
						 end else begin
						     flag = flag;
						 end
					end else begin
					    next_status = `sx;
					end
			  end
			  `sx0: begin
			      if(in == " ") begin
					    next_status = status;
					end else if((in == "b") || (in == "B")) begin
					    next_status = `sb1;
					end else if((in == "e") || (in == "E")) begin
					    next_status = `se1;
					end else begin
					    next_status = `sx;
					end
			  end
			  `sx: begin
			      if(in == " ") begin
					    next_status = `sx0;
					end else begin
					    next_status = status;
					end
			  end
			  default: begin
			      next_status = `s0;
			  end
		 endcase
	 end
	 
	 always @(posedge clk, posedge reset) begin
	     if(reset) begin
		      result <= 1;
		  end else begin
		      if((status == `sb4) && ((in == "n")||(in == "N"))) begin
				    result <= 0;
				end else if((status == `sb5) && (in != " ")) begin
				    result <= ((flag == 1) && (count == 0)) ? 1 : 0;
				end else if((status == `se2) && ((in == "d")||(in == "D"))) begin
				    result <= ((flag == 1) && (count == 1)) ? 1 : 0;
				end else if((status == `se3) && (in != " ")) begin
				    result <= ((flag == 1) && (count == 0)) ? 1 : 0;
				end else begin
				    result <= result;
				end
		  end
	 end


endmodule
