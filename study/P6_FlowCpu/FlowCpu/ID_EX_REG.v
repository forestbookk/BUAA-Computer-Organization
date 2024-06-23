`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:48 11/03/2022 
// Design Name: 
// Module Name:    ID_EX_REG 
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
`default_nettype none
module ID_EX_REG(
		input wire [31:0] ID_Instr,
		input wire [31:0] D_RD1,
		input wire [31:0] D_RD2,
		input wire [31:0] D_imm32,
		input wire [31:0] ID_PC,
		input wire D_jump,
		input wire clk,
		input wire reset,
      input wire WE,
		output reg [31:0] EX_Instr,
		output reg [31:0] EX_RD1,
		output reg [31:0] EX_RD2,
		output reg [31:0] EX_imm32,
		output reg [31:0] EX_PC,
		output reg EX_jump
    );
    initial begin
        EX_Instr = 0;
        EX_RD1 = 0;
        EX_RD2 = 0;
        EX_imm32 = 0;
		  EX_PC=0;
		  EX_jump=0;
    end
    always @(posedge clk) begin
        if(reset) begin
            EX_Instr = 0;
            EX_RD1 = 0;
            EX_RD2 = 0;
            EX_imm32 = 0;
				EX_PC=0;
				EX_jump=0;
        end
        else if(WE) begin
            EX_Instr = ID_Instr;
            EX_RD1 = D_RD1;
            EX_RD2 = D_RD2;
            EX_imm32 = D_imm32;
				EX_PC=ID_PC;
				EX_jump=D_jump;
        end
    end
endmodule
