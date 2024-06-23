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
`define ExcPC 32'h0000_4180
`default_nettype none
module ID_EX_REG(
		input wire [31:0] ID_Instr,
		input wire [31:0] D_RD1,
		input wire [31:0] D_RD2,
		input wire [31:0] D_imm32,
		input wire [31:0] ID_PC,
		input wire [4:0] D_ExcCode,
		input wire ID_Is_Delay_Instr,
		input wire clk,
		input wire reset,
      input wire WE,
		input wire Stall_sign,
		input wire Req,
		output reg [31:0] EX_Instr,
		output reg [31:0] EX_RD1,
		output reg [31:0] EX_RD2,
		output reg [31:0] EX_imm32,
		output reg [31:0] EX_PC,
		output reg [4:0] EX_ExcCode,
		output reg EX_Is_Delay_Instr
    );
    initial begin
        EX_Instr = 0;
        EX_RD1 = 0;
        EX_RD2 = 0;
        EX_imm32 = 0;
		  EX_PC=0;
		  EX_ExcCode=0;
		  EX_Is_Delay_Instr=0;
    end
    always @(posedge clk) begin
        if(reset) begin
            EX_Instr = 0;
            EX_RD1 = 0;
            EX_RD2 = 0;
            EX_imm32 = 0;
				EX_PC=0;
				EX_ExcCode=0;
				EX_Is_Delay_Instr=0;
        end
        else if(Req) begin
            EX_Instr = 0;
            EX_RD1 = 0;
            EX_RD2 = 0;
            EX_imm32 = 0;
				EX_PC= `ExcPC;
				EX_ExcCode=0;
				EX_Is_Delay_Instr=0;
        end
        else if(Stall_sign) begin
            EX_Instr = 0;
            EX_RD1 = 0;
            EX_RD2 = 0;
            EX_imm32 = 0;
				EX_PC=ID_PC;
				EX_ExcCode=0;
				EX_Is_Delay_Instr= ID_Is_Delay_Instr;
        end
        else if(WE) begin
            EX_Instr = (D_ExcCode!=0) ? 0:ID_Instr;
            EX_RD1 = D_RD1;
            EX_RD2 = D_RD2;
            EX_imm32 = D_imm32;
				EX_PC=ID_PC;
				EX_ExcCode=D_ExcCode;
				EX_Is_Delay_Instr=ID_Is_Delay_Instr;
        end
    end
endmodule
