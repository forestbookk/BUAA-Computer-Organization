`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:41 11/03/2022 
// Design Name: 
// Module Name:    EX_MEM_REG 
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
module EX_MEM_REG(
    input wire clk,
    input wire reset,
    input wire WE,
	 input wire Req,
    input wire [31:0] EX_Instr,
    input wire [31:0] E_ALU_Result,
	 input wire [31:0] E_MDU_Result,
    input wire [31:0] EX_RD2,
	 input wire [31:0] EX_PC,
	 input wire [4:0] E_ExcCode,
	 input wire EX_Is_Delay_Instr,
    output reg [31:0] MEM_Instr,
    output reg [31:0] MEM_ALU_Result,
    output reg [31:0] MEM_RD2,
	 output reg [31:0] MEM_PC,
	 output reg [31:0] MEM_MDU_Result,
	 output reg [4:0] MEM_ExcCode,
	 output reg MEM_Is_Delay_Instr
    );
    initial begin
        MEM_Instr = 0;
        MEM_ALU_Result = 0;
        MEM_RD2 = 0;
		  MEM_PC=0;
		  MEM_MDU_Result=0;
		  MEM_ExcCode=0;
		  MEM_Is_Delay_Instr=0;
    end
    always @(posedge clk) begin
        if(reset) begin
            MEM_Instr = 0;
            MEM_ALU_Result = 0;
            MEM_RD2 = 0;
				MEM_PC=0;
				MEM_MDU_Result=0;
				MEM_ExcCode=0;
				MEM_Is_Delay_Instr=0;
        end
        else if(Req) begin
            MEM_Instr = 0;
            MEM_ALU_Result = 0;
            MEM_RD2 = 0;
				MEM_PC= `ExcPC;
				MEM_MDU_Result=0;
				MEM_ExcCode=0;
				MEM_Is_Delay_Instr= EX_Is_Delay_Instr;
        end
        else if(WE) begin
            MEM_Instr = (E_ExcCode!=0) ?0:EX_Instr;
            MEM_ALU_Result = E_ALU_Result;
            MEM_RD2 = EX_RD2;     
				MEM_PC = EX_PC;
				MEM_MDU_Result=E_MDU_Result;
				MEM_ExcCode=E_ExcCode;
				MEM_Is_Delay_Instr=EX_Is_Delay_Instr;
        end
    end

endmodule
