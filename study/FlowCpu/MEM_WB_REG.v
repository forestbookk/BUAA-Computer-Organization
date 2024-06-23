`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:20:41 11/03/2022 
// Design Name: 
// Module Name:    MEM_WB_REG 
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
module MEM_WB_REG(
        input wire clk,
        input wire reset,
        input wire WE,
        input wire [31:0] MEM_Instr,
        input wire [31:0] MEM_ALU_Result,
        input wire [31:0] M_DM_RD,
		  input wire [31:0] MEM_PC,
		  input wire [31:0] MEM_MDU_Result,
		  input wire [31:0] M_CP0_RD,
		  input wire Req,
        output reg [31:0] WB_Instr,
        output reg [31:0] WB_ALU_Result,
        output reg [31:0] WB_DM_RD,
		  output reg [31:0] WB_PC,
		  output reg [31:0] WB_MDU_Result,
		  output reg [31:0] WB_CP0_RD
    );
    initial begin
        WB_Instr = 0;
        WB_ALU_Result = 0;
        WB_DM_RD = 0;
		  WB_PC=0;
		  WB_MDU_Result=0;
		  WB_CP0_RD = 0;
    end
    always @(posedge clk) begin
        if(reset||Req) begin
            WB_Instr = 0;
            WB_ALU_Result = 0;
            WB_DM_RD = 0;
				WB_PC=0;
				WB_MDU_Result=0;
				WB_CP0_RD = 0;
        end
        else if(WE) begin
            WB_Instr = MEM_Instr;
            WB_ALU_Result = MEM_ALU_Result;
            WB_DM_RD = M_DM_RD;
				WB_PC = MEM_PC;
				WB_MDU_Result=MEM_MDU_Result;
				WB_CP0_RD = M_CP0_RD;
        end
    end
endmodule
