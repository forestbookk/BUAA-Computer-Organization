`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:17 10/31/2023 
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
 
module NPC(
    input wire[31:0] PC,
    input wire[3:0] NPCOp,
    input wire[25:0] IMM26,
	 input wire[15:0] IMM16,
    input wire[31:0] RA,
    input wire Branch,
    output wire[31:0] PC4,
    output reg[31:0] NPC
    );
    wire[31:0] IMMBr;
	 assign IMMBr = (IMM16[15]==0) ? {{16{1'b0}},IMM16}:{{16{1'b1}},IMM16};
	 assign PC4 = PC + 4;
	 
	 always @* begin
	     if(NPCOp == `NPCOp_PC4)begin
		      NPC = PC+4;
		  end else if(NPCOp == `NPCOp_Br) begin
		      NPC = (Branch==1) ? PC+4+(IMMBr<<2) : PC+4;
		  end else if(NPCOp == `NPCOp_JAL) begin
		      NPC = {PC[31:28],IMM26,{2{1'b0}}};
		  end else begin
		      NPC = RA;
		  end		
	 end

endmodule
