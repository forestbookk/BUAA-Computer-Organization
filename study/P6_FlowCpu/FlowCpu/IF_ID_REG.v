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
`default_nettype none
module IF_ID_REG(
        input wire clk,
        input wire reset,
        input wire WE,
        input wire [31:0] IF_Instr,
        input wire [31:0] IF_PC,
        output reg [31:0] ID_Instr,
        output reg [31:0] ID_PC
    );
    initial begin
        ID_Instr = 0;
        ID_PC = 0;
    end
    always @(posedge clk) begin
        if(reset) begin
            ID_Instr = 0;
            ID_PC = 0;
        end
        else if(WE) begin
            ID_Instr = IF_Instr;
            ID_PC = IF_PC;
        end
    end

endmodule
