`timescale 1ns / 1ps
`define s0 2'b00
`define s1 2'b01
`define s2 2'b11
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:01 09/02/2023 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output reg out
    );
	 
	 reg [1:0] status;
	 initial begin
		 out = 0;
		 status = `s0;
	 end
	 
	 always @(posedge clk) begin
		 if(status == `s0) begin
			 if((char <= "Z" && char >= "A") || (char <= "z" && char >= "a")) begin
				 status <= `s1;
			 end else begin
				 status <= status;
			 end
		 end else if(status == `s1) begin
		    if((char <= "Z" && char >= "A") || (char <= "z" && char >= "a")) begin
				 status <= status;
			 end else if(char <= "9" && char >= "0")begin
				 status <= `s2;
				 out <= 1;
			 end else begin
				 status <= `s0;
			 end
		 end else begin
		    if((char <= "Z" && char >= "A") || (char <= "z" && char >= "a")) begin
				 status <= `s1;
				 out <= 0;
			 end else if(char <= "9" && char >= "0")begin
				 status <= status;
			 end else begin
				 status <= `s0;
				 out <= 0;
			 end
		 end
	 end
endmodule
