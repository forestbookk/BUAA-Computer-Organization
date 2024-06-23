`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:54 11/03/2022 
// Design Name: 
// Module Name:    IF_ID_REG 
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
module IF_ID_REG(
        input wire clk,
        input wire reset,
        input wire WE,
        input wire [31:0] IF_Instr,
        input wire [31:0] IF_PC,
		  input wire F_Is_Delay_Instr,
		  input wire [4:0] F_ExcCode,
		  input wire Req,
        output reg [31:0] ID_Instr,
        output reg [31:0] ID_PC,
		  output reg [4:0] ID_ExcCode,
		  output reg ID_Is_Delay_Instr
    );
    initial begin
        ID_Instr = 0;
        ID_PC = 0;
		  ID_ExcCode = 0;
		  ID_Is_Delay_Instr=0;
    end
    always @(posedge clk) begin
        if(reset) begin
            ID_Instr = 0;
            ID_PC = 0;
				ID_ExcCode = 0;
				ID_Is_Delay_Instr=0;
        end
		  else if(Req) begin
            ID_Instr = 0;
            ID_PC =  `ExcPC;
				ID_ExcCode = 0;
				ID_Is_Delay_Instr=0;
		  end
        else if(WE) begin
            ID_Instr =(F_ExcCode != 0) ? 0 : IF_Instr;
            ID_PC = IF_PC;
				ID_ExcCode = F_ExcCode;
				ID_Is_Delay_Instr= F_Is_Delay_Instr;
        end
    end

endmodule
