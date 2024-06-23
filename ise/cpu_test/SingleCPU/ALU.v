`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:44 10/26/2022 
// Design Name: 
// Module Name:    ALU 
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
`define oridata 32'h0000_0000
`define Add 4'h0
`define Sub 4'h1
`define And 4'h2
`define Ori 4'h3
`define Lui 4'h4
`default_nettype none
module ALU(
    input wire [31:0] SrcA,
    input wire [31:0] SrcB,
    input wire [3:0] ALUControl,
    output wire Bigger,
    output reg [31:0] Res
    );
    always @(*) begin
        case(ALUControl)
            `Add: begin
                Res = SrcA + SrcB; 
            end
            `Sub: begin
                Res = SrcA - SrcB;
            end
            `And: begin
                Res = SrcA & SrcB;
            end
            `Ori: begin
                Res = SrcA | SrcB;
            end
            `Lui: begin
                Res = SrcB << 16;
            end
            default:
					 Res = `oridata;
		  endcase 
    end
	 assign Bigger = (SrcA==SrcB)? 1:0;
endmodule
