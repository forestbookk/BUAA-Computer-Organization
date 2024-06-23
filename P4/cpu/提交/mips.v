`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:42 10/31/2023 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input wire clk,
    input wire reset
    );
//EXT
wire[31:0] IMMEXT;
//IFU
wire[31:0] Instr;
wire[31:0] PC;

//CU
wire RFWrEn;
wire[3:0] NPCOp;
wire EXTOp;
wire[3:0] ALUOp;
wire[1:0] ALUASel;
wire[1:0] ALUBSel;
wire DMWrEn;
wire[2:0] RFWRSel;
wire[2:0] RFWDSel;
wire[3:0] CMPOp;
wire[1:0] DMOp;
wire DMEXTOp;

//ALU
wire[31:0] A;
wire[31:0] B;
wire Branch;
wire[31:0] ALURes;	
					
//RF
wire[4:0] rs = Instr[25:21];
wire[4:0] rt = Instr[20:16];
wire[4:0] rd = Instr[15:11];
wire[15:0] IMM16 = Instr[15:0];
wire[4:0] shamt = Instr[10:5];
wire[5:0] opcode = Instr[31:26];
wire[5:0] func = Instr[5:0];

wire[4:0] A3;
wire[31:0] WD;
						
wire[31:0] RD1;
wire[31:0] RD2;

//NPC
wire[25:0] IMM26 = Instr[25:0];
wire[31:0] NPC;
wire[31:0] RA;

wire[31:0] PC4;

//DM
wire[31:0] DMRD;

//Á¬Ïß
assign PC4 = PC + 32'd4;
assign RA = RD1;
//MUXA3
    assign A3 =      (RFWRSel==`RFWRSel_rd) ? rd :
	                 ((RFWRSel==`RFWRSel_rt) ? rt :
						  ((RFWRSel==`RFWRSel_31) ? 5'd31 :
						   `REPOSITION_DATA));
//MUXWD							
    assign WD =     ( A3 == 0 ) ? 0 :
	                 ((RFWDSel==`RFWDSel_ALU) ? ALURes :
                    ((RFWDSel==`RFWDSel_DMRD) ? DMRD : 
						  ((RFWDSel==`RFWDSel_PC4) ? PC4 : 
						   `REPOSITION_DATA))); 
//MUXA
    assign A = (ALUASel == `ALUASel_rs) ? RD1 :
	           ((ALUASel == `ALUASel_sh) ? shamt :
				    `REPOSITION_DATA);
					 
//MUXB 	
	 assign B = (ALUBSel==`ALUBSel_rt) ? RD2:
              ((ALUBSel==`ALUBSel_imm)? IMMEXT:
				   `REPOSITION_DATA);								
						
IFU _ifu(
.clk(clk),
.reset(reset),
.NPC(NPC),
.Instr(Instr),
.PC(PC)
);
	 
NPC _npc(
.PC(PC),
.NPCOp(NPCOp),
.IMM26(IMM26),
.IMM16(IMM16),
.RA(RA),
.Branch(Branch),
.PC4(PC4),
.NPC(NPC)
);

EXT _ext(
.IMM16(IMM16),
.EXTOp(EXTOp),
.IMMEXT(IMMEXT)
);

RF _rf(
.Instr(Instr),
.clk(clk),
.reset(reset),
.A1(rs),
.A2(rt),
.A3(A3),
.WD(WD),
.RFWrEn(RFWrEn),
.PC(PC),
.RD1(RD1),
.RD2(RD2)
);

CU _cu(
.opcode(opcode),
.func(func),
.NPCOp(NPCOp),
.RFWrEn(RFWrEn),
.EXTOp(EXTOp),
.ALUOp(ALUOp),
.ALUASel(ALUASel),
.ALUBSel(ALUBSel),
.DMWrEn(DMWrEn),
.RFWRSel(RFWRSel),
.RFWDSel(RFWDSel),
.CMPOp(CMPOp),
.DMOp(DMOp),
.DMEXTOp(DMEXTOp)
);

ALU _alu(
.A(A), 
.B(B),
.ALUOp(ALUOp),
.CMPOp(CMPOp),
.Branch(Branch),
.ALURes(ALURes)
);

DM _dm(
.Instr(Instr),
.clk(clk),
.reset(reset),
.PC(PC),
.DMWrEn(DMWrEn),
.DMMemAddr(ALURes),
.DMRawData(RD2),
.DMEXTOp(DMEXTOp),
.DMOp(DMOp),
.DMRD(DMRD)
);
endmodule
