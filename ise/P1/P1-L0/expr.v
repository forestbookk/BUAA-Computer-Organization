`timescale 1ns / 1ps
`define s0 2'b00
`define s1 2'b01
`define s2 2'b10
`define s3 2'b11
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:34 10/11/2023 
// Design Name: 
// Module Name:    expr 
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
module expr(
    input clk,
    input clr,
    input [7:0] in,
    output reg out
    );
	 
	 parameter YES = 1'b1;
	 parameter NO = 1'b0;
	 
	 reg[1:0] status;
	 wire isDigit = (in >= "0" && in <= "9") ? YES : NO;
	 
	 always @(posedge clk, posedge clr) begin
	     if(clr) begin
		      status <= `s0;
				out <= NO;
		  end else begin
		      case(status) 
				    `s0: begin
					     if(isDigit) begin
						      status <= `s1;
								out <= YES;
						  end else begin
						      status <= `s3;
								out <= NO;
						  end
					 end 
					 `s1: begin
					     if((in == "+") || (in == "*")) begin
						      status <= `s2;
								out <= NO;
						  end else begin
						      status <= `s3;
								out <= NO;
						  end
					 end 
					 `s2: begin
					     if(isDigit) begin
						      status <= `s1;
								out <= YES;
						  end else begin 
						      status <= `s3;
								out <= NO;
						  end
					 end
					 `s3: begin
					     status <= status;
					 end 
					 default: begin
					     status <= `s0;
						  out <= NO;
					 end
				endcase
		  end
	 end


endmodule
