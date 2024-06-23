`timescale 1ns / 1ps
`define s0 3'b000
`define s1 3'b001
`define s2 3'b010
`define s3 3'b011
`define s4 3'b100
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:42 10/13/2023 
// Design Name: 
// Module Name:    Mealy_check1101 
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
module Mealy_check1101(
    input clk,
    input reset,
    input in,
	 output reg[2:0] status,
    output reg result
    );
	 
	 //reg[2:0] status;
	 reg[2:0] next_status;
	 
	 always @(posedge clk) 
	 begin
	     if(reset) begin
		      status <= `s0;
		  end else begin
		      status <= next_status;
		  end
	 end
	 
	 always @(status, in) begin
	     case(status)
		      `s0: begin
				    if(in == 1'b1) begin
					     next_status = `s1;
					 end else begin
					     next_status = `s0;
					 end
				end 
				`s1: begin
				    if(in == 1'b1) begin
					     next_status = `s2;
					 end else begin
					     next_status = `s0;
					 end
				end
				`s2: begin
				    if(in == 1'b0) begin
					     next_status = `s3;
					 end else begin
					     next_status = `s2;
					 end
				end
				`s3: begin
				    if(in == 1'b1) begin
					     next_status = `s4;
					 end else begin
					     next_status = `s0;
					 end
				end
				`s4: begin
				    if(in == 1'b1) begin
					     next_status = `s2;
					 end else begin
					     next_status = `s0;
					 end
				end
				default: next_status = `s0;
				
		  endcase
	 end
	 
	 always @(status) begin
	     if(status == `s4) begin
		      result = 1;
		  end else begin
		      result = 0;
		  end
	 end 


endmodule
