`timescale 1ns / 1ps
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
    input wire[31:0] E_V2,
    input wire[31:0] E_AO,
    input wire[31:0] E_Instr,
    input wire[31:0] E_PC,
	 input wire[4:0] E_A3,
	 output reg[4:0] M_A3,
    output reg[31:0] M_V2,
    output reg[31:0] M_AO,
    output reg[31:0] M_Instr,
    output reg[31:0] M_PC,
    input wire clk,
    input wire reset
    );
	 
	 initial begin
	     M_Instr = 32'h0000_0000;
		  M_PC = 32'h0000_0000;
		  M_AO = 32'h0000_0000;
		  M_V2 = 32'h0000_0000;
		  M_A3 = 32'h0000_0000;
	 end
	 
	 always @(posedge clk)
		 begin
		 if(reset)
			 begin
				  M_Instr <= 32'h0000_0000;
				  M_PC <= 32'h0000_0000;
				  M_AO <= 32'h0000_0000;
		        M_V2 <= 32'h0000_0000;
				  M_A3 <= 32'h0000_0000;
			 end 
		 else 
			 begin
				  M_Instr <= E_Instr;
				  M_PC <= E_PC;
				  M_AO <= E_AO;
				  M_V2 <= E_V2;
				  M_A3 <= E_A3;
			 end
		 end


endmodule
