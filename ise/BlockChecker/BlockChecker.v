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
// Create Date:    19:31:19 10/11/2023 
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
	 
	 reg flag;
	 reg[3:0] status;
	 reg[31:0] count;
	 always @(posedge clk, posedge reset) begin
	     if(reset) begin
		      flag <= 1;
		      count <= 0;
		      status <= `s0;
				result <= 1;
		  end else begin
		      case(status) 
				    `s0: begin
					     if(in == " ") begin
						      status <= status;
						  end else if((in == "b") || (in == "B")) begin
						      status <= `sb1;
						  end else if((in == "e") || (in == "E")) begin
						      status <= `se1;
						  end else begin
						      status <= `sx;
						  end
					 end 
					 `sb1: begin
					     if((in == "e") || (in == "E")) begin
						      status <= `sb2;
						  end else if(in == " ") begin
						      status <= `sx0;
						  end else begin
						      status <= `sx;
						  end
					 end
					 `sb2: begin
					     if((in == "g") || (in == "G")) begin
						      status <= `sb3;
						  end else if(in == " ") begin
						      status <= `sx0;
						  end else begin
						      status <= `sx;
						  end
					 end
					 `sb3: begin
					     if((in == "i") || (in == "I")) begin
						      status <= `sb4;
						  end else if(in == " ") begin
						      status <= `sx0;
						  end else begin
						      status <= `sx;
						  end
					 end
					 `sb4: begin
					     if((in == "n") || (in == "N")) begin
						      status <= `sb5;
								result <= 0;
						  end else if(in == " ") begin
						      status <= `sx0;
						  end else begin
						      status <= `sx;
						  end
					 end
					 `sb5: begin
					     if(in == " ") begin
						      status <= `sx0;
								count <= count + 1;
						  end else begin
						      status <= `sx;
								if(count > 0) begin
								    result <= 0;
								end else if(flag) begin
								    result <= 1;
								end else begin
								    result <= 0;
								end	 
						  end
					 end
					 `se1: begin
					     if((in == "n") || (in == "N")) begin
						      status <= `se2;
						  end else if(in == " ") begin
						      status <= `sx0;
						  end else begin
						      status <= `sx;
						  end
					 end
					 `se2: begin
					     if((in == "d") || (in == "D")) begin
						      status <= `se3;
								if((count == 1) && (flag == 1)) begin
								    result <= 1;
								end else begin
								    result <= 0;
								end	 
						  end else if(in == " ") begin
						      status <= `sx0;
						  end else begin
						      status <= `sx;
						  end
					 end
					 `se3: begin
					     if(in == " ") begin
						      status <= `sx0;
								if(flag) begin
								    if(count <= 0) begin
								        result <= 0;
									     flag <= 0;//ÊäÈë±Ø°Ü
								    end else if(count == 1)begin
								        result <= 1;
								        count <= count - 1;
								    end else begin
								        result <= 0;
								        count <= count - 1;
								    end  
								end else begin
								    result <= 0;
								end
						  end else begin
						      status <= `sx;
								if(count > 0)begin
								    result <= 0;
								end else if(flag)begin
								    result <= 1;
								end else begin
								    result <= 0;
								end
						  end
					 end
					 `sx0: begin
					     if(in == " ") begin
						      status <= status;
						  end else if((in == "b") || (in == "B")) begin
						      status <= `sb1;
						  end else if((in == "e") || (in == "E")) begin
						      status <= `se1;
						  end else begin
						      status <= `sx;
						  end
					 end
					 `sx: begin
					     if(in == " ") begin
						      status <= `sx0;
						  end else begin
						      status <= status;
						  end 
					 end
					 default: begin
					     status <= `s0;
					 end
				endcase
		  end
	 end
endmodule
