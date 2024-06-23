`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:43 11/14/2023 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input wire WE,
    input wire clk,
    input wire reset,
    input wire[31:0] NPC,
    output reg[31:0] PC
    );
	 
	 initial 
	   begin
		  PC <= `REPOSITION_PC;
		end
		
	 always @(posedge clk) 
		begin
		  if(reset) 
			  begin
					PC <= `REPOSITION_PC;
			  end 
		  else if(WE)
			  begin
					PC <= NPC;
			  end
		end

endmodule
