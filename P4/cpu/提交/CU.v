`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:28 11/01/2023 
// Design Name: 
// Module Name:    CU 
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
module CU(
    input wire[5:0] opcode,
    input wire[5:0] func,
    output wire[3:0] NPCOp,
    output wire RFWrEn,
    output wire EXTOp,
    output wire[3:0] ALUOp,
    output wire[1:0] ALUASel,
    output wire[1:0] ALUBSel,
    output wire DMWrEn,
	 output wire[3:0] CMPOp,
    output wire[2:0] RFWRSel,
    output wire[2:0] RFWDSel,
	 output wire[1:0] DMOp,
	 output wire DMEXTOp
    );
	 wire add, sub, ori, lui, lw, sw, jal, jr, beq;
	 
	 assign add = (opcode==`op06 && func==`add) ? 1 : 0;
	 assign sub = (opcode==`op06 && func==`sub) ? 1 : 0;
	 assign ori = (opcode==`ori) ? 1 : 0;
	 assign lui = (opcode==`lui) ? 1 : 0;
	 assign lw = (opcode==`lw) ? 1 : 0;
	 assign sw = (opcode==`sw) ? 1 : 0;
	 assign jal = (opcode==`jal) ? 1 : 0;
	 assign jr = (opcode==`op06 && func == `jr) ? 1 : 0;
	 assign beq = (opcode==`beq) ? 1 : 0;
	 
	 assign ALUOp = (add || lw || sw) ? `ADD : 
	               ((sub) ? `SUB:
						((ori) ? `OR:
						((lui) ? `LUI:
						  `ADD)));
    assign NPCOp = (beq) ? `NPCOp_Br :
                  ((jal) ? `NPCOp_JAL:
                  ((jr) ? `NPCOp_JR :
                   `NPCOp_PC4));					
	 assign RFWRSel = (ori || lw || lui) ? `RFWRSel_rt:
	                 ((add || sub) ? `RFWRSel_rd :
						  ((jal) ? `RFWRSel_31 :
						    0));
	 assign RFWDSel = (ori || sub || add) ? `RFWDSel_ALU:
                    ((lw) ? `RFWDSel_DMRD : 
                    ((jal) ? `RFWDSel_PC4:
                      0));						  
    assign RFWrEn = (ori || add || sub || lw || lui || jal)? 1 : 0;
	 //assign ALUASel = (sll) ? 1 : 0;
	 assign ALUASel =  `ALUASel_rs;
	 assign ALUBSel = (lui || lw || sw || ori) ? `ALUBSel_imm : `ALUBSel_rt;
	 assign DMWrEn = (sw) ? 1 : 0;
	 assign EXTOp = (lw || sw) ? `DMEXTOp_sign : `DMEXTOp_zero;
	 assign DMOp = (lw || sw) ? `DMOp_w : 0;
	 assign DMEXTOp = `DMEXTOp_zero;
	 assign CMPOp = (beq) ? `CMPOp_beq : 0;
	 
endmodule
