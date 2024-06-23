`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:41 11/08/2023 
// Design Name: 
// Module Name:    MW_REG 
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
module MW_REG(
    input wire clk,
	 input wire flush,
	 input wire WE,
    input wire reset,
	 
    input wire[31:0] M_CP0Out,
	 output reg[31:0] W_CP0Out,
	 
	 input wire M_b_jump,
	 output reg W_b_jump,
	 
    input wire[31:0] M_AO,
	 output reg[31:0] W_AO,
	 
    input wire[4:0] M_A3,
	 output reg[4:0] W_A3,
	 
	 input wire[31:0] M_DR,
	 output reg[31:0] W_DR,
	 
    input wire[31:0] M_Instr,
	 output reg[31:0] W_Instr,
    input wire[31:0] M_PC,
	 output reg[31:0] W_PC
    );
	 
	 initial begin
		 W_Instr = 32'h0000_0000;
		 W_PC = 32'h0000_0000;
		 W_AO = 32'h0000_0000;
		 W_DR = 32'h0000_0000;
		 W_A3 = 32'h0000_0000;
		 W_b_jump = 32'h0000_0000;
		 W_CP0Out = `REPOSITION_DATA;
	 end
	 
	 always @(posedge clk)
		 begin
		 if(reset) 
			 begin
				  W_Instr <= 32'h0000_0000;
				  W_PC <= 32'h0000_0000;
				  W_AO <= 32'h0000_0000;
				  W_DR <= 32'h0000_0000;
				  W_A3 <= 32'h0000_0000;
				  W_b_jump = 32'h0000_0000;
				  W_CP0Out = `REPOSITION_DATA;
			 end 
		 else 
			 begin
			     W_Instr <= M_Instr;
				  W_PC <= M_PC;
				  W_AO <= M_AO;
				  W_DR <= M_DR;
				  W_A3 <= M_A3;
				  W_b_jump <= M_b_jump;
				  W_CP0Out <= M_CP0Out;
			 end
		 end

endmodule
