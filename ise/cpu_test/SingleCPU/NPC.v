`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:10 10/26/2022 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input wire Beq,
    input wire Jump,
    input wire Jr,
    input wire [31:0] PC,
    input wire [25:0] J26imm,
    input wire [31:0] B32imm,
    input wire [31:0] RegJump,
    output reg [31:0] NPC,
	 output wire [31:0] PC4
    );
	 assign PC4 = PC + 4;
    always @(*) begin
        if(Beq) begin
            NPC = PC + 4 + {B32imm[29:0],2'b00};
        end
        else if(Jump) begin
            NPC = {PC[31:28],J26imm,2'b00};
        end
        else if(Jr) begin
            NPC = RegJump;
        end
        else begin
            NPC = PC + 4;
        end
    end
endmodule
