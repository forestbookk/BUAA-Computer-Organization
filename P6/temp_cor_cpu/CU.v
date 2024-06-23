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
    output wire[1:0] EXTOp,
	 output wire Start,
	 output wire[3:0] MDUOp,
    output wire[3:0] ALUOp,
    output wire[1:0] ALUASel,
    output wire[1:0] ALUBSel,
    output wire DMWrEn,
	 output wire[2:0] CMPOp,
    output wire[2:0] RFWRSel,
    output wire[2:0] RFWDSel,
	 output wire[1:0] DMOp,
	 output wire DMEXTOp,
	 
    output wire calc_r,
    output wire calc_i,
	 output wire lui,
	 output wire md,
	 output wire mt,
	 output wire mf,
    output wire load,
    output wire store,
    output wire branch,
	 output wire j_l,
    output wire jr
    );

	 wire Add, Sub, And, Or, Slt, Sltu, Lui;
	 wire Addi, Andi, Ori;
	 wire Lb, Lh, Lw, Sb, Sh, Sw;
	 wire Mult, Multu, Div, Divu, Mfhi, Mflo, Mthi, Mtlo;
	 wire Beq, Bne, Jal, Jr;
	 wire Addu;
	 
	 assign Add = (opcode==`op06 && func==`add) ? 1 : 0;
	 assign Sub = (opcode==`op06 && func==`sub) ? 1 : 0;
	 assign And = (opcode==`op06 && func==`andd) ? 1 : 0;
	 assign Or = (opcode==`op06 && func==`orr) ? 1 : 0;
	 assign Slt = (opcode==`op06 && func==`slt) ? 1 : 0;
	 assign Sltu = (opcode==`op06 && func==`sltu) ? 1 : 0;
	 assign Lui = (opcode==`lui) ? 1 : 0;
	 
	 assign Addi = (opcode==`addi) ? 1 : 0;
	 assign Andi = (opcode==`andi) ? 1 : 0;
	 assign Ori = (opcode==`ori) ? 1 : 0;
	 
	 assign Lb = (opcode==`lb) ? 1 : 0;
	 assign Lh = (opcode==`lh) ? 1 : 0;
	 assign Lw = (opcode==`lw) ? 1 : 0;
	 assign Sb = (opcode==`sb) ? 1 : 0;
	 assign Sh = (opcode==`sh) ? 1 : 0;
	 assign Sw = (opcode==`sw) ? 1 : 0;
	 
	 assign Mult = (opcode==`op06 && func==`mult) ? 1 : 0;
	 assign Multu = (opcode==`op06 && func==`multu) ? 1 : 0;
	 assign Div = (opcode==`op06 && func==`div) ? 1 : 0;
	 assign Divu = (opcode==`op06 && func==`divu) ? 1 : 0;
	 assign Mfhi = (opcode==`op06 && func==`mfhi) ? 1 : 0;
	 assign Mflo = (opcode==`op06 && func==`mflo) ? 1 : 0;
	 assign Mthi = (opcode==`op06 && func==`mthi) ? 1 : 0;
	 assign Mtlo = (opcode==`op06 && func==`mtlo) ? 1 : 0;
	 
	 assign Beq = (opcode==`beq) ? 1 : 0;
	 assign Bne = (opcode==`bne) ? 1 : 0;
	 assign Jal = (opcode==`jal) ? 1 : 0;
	 assign Jr = (opcode==`op06 && func == `jr) ? 1 : 0;
	 
	 assign Addu = (opcode==`op06 && func == `addu) ? 1 : 0;
	 
    assign NPCOp = (Beq || Bne) ? `NPCOp_Br :
                  ((Jal) ? `NPCOp_JL:
                  ((Jr) ? `NPCOp_JR :
                   `NPCOp_PC4));	
    assign RFWrEn = (Mfhi||Mflo||Andi||Addi||Sltu||Slt||And||Or||Ori||Add||
	                  Addu||Sub||Lb||Lh||Lw||Lui||Jal)? 1 : 0;						 
	 assign RFWRSel = (Andi||Addi||Ori||Lb||Lh||Lw||Lui) ? `RFWRSel_rt:
	                 ((Mfhi||Mflo||Sltu||Slt||Or||Add||Sub||And||Addu) ? `RFWRSel_rd :
						  ((Jal) ? `RFWRSel_31 :
						    0));
	 assign RFWDSel = (Mfhi||Mflo||Andi||Addi||Sltu||Slt||Or||And||Addu||Ori||Sub||Add||Lui) ? `RFWDSel_EU:
                    ((Lb||Lh||Lw) ? `RFWDSel_DMRD : 
                    ((Jal) ? `RFWDSel_PC8:
                      0));		
    assign EXTOp = (Lb||Lh||Lw||Sb||Sh||Sw||Addi) ? `EXTOp_sign :
	               ((Lui) ? `EXTOp_lui:
               	 `EXTOp_zero);
	 assign Start = (Mult||Multu||Div||Divu) ? 1 : 0;
	 assign MDUOp = (Mult) ? `MDUOp_mult:
	               ((Multu)? `MDUOp_multu:
						((Div) ? `MDUOp_div:
						((Divu)? `MDUOp_divu:
						((Mfhi)? `MDUOp_mfhi:
						((Mflo)? `MDUOp_mflo:
						((Mthi)? `MDUOp_mthi:
						((Mtlo)? `MDUOp_mtlo:
						 `REPOSITION_DATA)))))));
	 assign ALUOp = (Addu||Addi||Add||Lb||Lh||Lw||Sb||Sh||Sw) ? `ADD : 
	               ((Sub) ? `SUB:
						((Ori||Or) ? `OR:
						((And||Andi) ? `AND:
						((Slt) ? `SLT:
						((Sltu) ? `SLTU:
						  `ADD)))));					 
	 assign ALUASel =  `ALUASel_rs;//assign ALUASel = (sll) ? 1 : 0;
	 assign ALUBSel = (Andi||Addi||Lui||Lb||Lh||Lw||Sb||Sh||Sw||Ori) ? `ALUBSel_imm : `ALUBSel_rt;
	 assign CMPOp = (Beq) ? `CMPOp_beq :
	               ((Bne) ? `CMPOp_bne :
                    0);
	 assign DMWrEn = (Sb||Sh||Sw) ? 1 : 0;
	 assign DMOp = (Lw||Sw) ? `DMOp_w :
	              ((Lh||Sh) ? `DMOp_h:
					  ((Lb||Sb) ? `DMOp_b:
               	 0));
	 assign DMEXTOp = (Lb||Lh)? `DMEXTOp_sign:
	                  `DMEXTOp_zero;
	 	 
	 assign calc_r = Add||Addu||Sub||And||Or||Slt||Sltu;
	 assign calc_i = Ori||Addi||Andi;
	 assign lui = Lui;
	 assign md = Mult||Multu||Div||Divu;
	 assign mt = Mtlo || Mthi;
	 assign mf = Mfhi || Mflo;
	 assign shiftS = 0;//Sll Srl Sra
	 assign shiftV = 0;//Sllv Srlv Srav
	 assign load = Lw||Lb||Lh;
	 assign store = Sw||Sb||Sh;
	 assign branch = Beq||Bne;
	 assign j_l = Jal;
	 assign jr = Jr;
endmodule
