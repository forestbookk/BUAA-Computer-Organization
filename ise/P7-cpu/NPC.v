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
    input wire req,
	 input wire[31:0] EPC,
	 
    input wire[31:0] F_PC,
	 input wire[31:0] D_PC,//D
    input wire[3:0] NPCOp,
    input wire[25:0] IMM26,
	 input wire[15:0] IMM16,
    input wire[31:0] RS,
    input wire Branch,
    output reg[31:0] NPC//��дF
    );
    wire[31:0] target_offset;
	 assign target_offset = ((IMM16[15]==0) ? (({{16{1'b0}},IMM16})<<2):({{16{1'b1}},IMM16})<<2);

	 always @* 
		 begin
			  if(req) begin
			        NPC = 32'h0000_4180;
			     end
			  else if(NPCOp==`NPCOp_Eret) begin
			        NPC = EPC + 4;
			     end
			  else if(NPCOp == `NPCOp_PC4) begin
						NPC = F_PC+4;
				  end 
			  else if(NPCOp == `NPCOp_Br) begin
						NPC = (Branch==1) ? D_PC+4+target_offset : F_PC+4;
				  end 
			  else if(NPCOp == `NPCOp_JL) begin
						NPC = {D_PC[31:28],IMM26,{2{1'b0}}};
				  end 
			  else if(NPCOp == `NPCOp_JR) begin
						NPC = RS;
				  end		
			  else begin
				      NPC = F_PC + 4;
              end				  
		 end

endmodule
