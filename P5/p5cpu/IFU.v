`timescale 1ns / 1ps
`include "const.v"
`define REPOSITION_PC 32'h0000_3000
`define IMSIZE 4095
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:59 10/31/2023 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input wire WE,
    input wire clk,
    input wire reset,
    input wire[31:0] NPC,
    output wire[31:0] Instr,
    output reg[31:0] PC
    );
	 reg[31:0] IM[0:`IMSIZE];
		 
	initial 
		begin
		  PC = `REPOSITION_PC;
		  $readmemh("code.txt", IM);
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
	  
	wire[13:2] addr;
	wire[31:0] delta;

	assign delta = PC - `REPOSITION_PC;
	assign addr = delta[13:2];
	assign Instr = IM[addr];
endmodule
