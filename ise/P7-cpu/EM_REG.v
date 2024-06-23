`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:17 11/08/2023 
// Design Name: 
// Module Name:    EM_REG 
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
module EM_REG(
    input wire clk,
	 input wire flush,
	 input wire WE,
    input wire reset,
	 input wire req,
	 
	 input wire[4:0] E_ExcCode,
	 output reg[4:0] EM_ExcCode,
	 
    input wire E_isBD,
	 output reg M_isBD,
	 
	 input wire E_b_jump,
	 output reg M_b_jump,
	 
    input wire[31:0] E_V2,
	 output reg[31:0] M_V2,
	 
    input wire[31:0] E_AO,
	 output reg[31:0] M_AO,
	 
	 input wire[4:0] E_A3,
	 output reg[4:0] M_A3,
	 
    input wire[31:0] E_Instr,
    input wire[31:0] E_PC,
	 output reg[31:0] M_Instr,
    output reg[31:0] M_PC
    );
	 
	 initial begin
	     M_Instr = 32'h0000_0000;
		  M_PC = 32'h0000_0000;
		  M_AO = 32'h0000_0000;
		  M_V2 = 32'h0000_0000;
		  M_A3 = 32'h0000_0000;
		  M_b_jump = 32'h0000_0000;
		  EM_ExcCode = 0;
		  M_isBD = 0;
	 end
	 
	 always @(posedge clk)
		 begin
		 if(reset || req)
			 begin
				  M_Instr <= 32'h0000_0000;
				  M_PC <= req? 32'h0000_4180 : 32'h0000_0000;
				  M_AO <= 32'h0000_0000;
		        M_V2 <= 32'h0000_0000;
				  M_A3 <= 32'h0000_0000;
				  M_b_jump <= 32'h0000_0000;
				  EM_ExcCode <= 0;
				  M_isBD <= 0;
			 end 
		 else 
			 begin
				  M_Instr <= E_Instr;
				  M_PC <= E_PC;
				  M_AO <= E_AO;
				  M_V2 <= E_V2;
				  M_A3 <= E_A3;
				  M_b_jump <= E_b_jump;
				  EM_ExcCode <= E_ExcCode;
				  M_isBD <= E_isBD;
			 end
		 end


endmodule
