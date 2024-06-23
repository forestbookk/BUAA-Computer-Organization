`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:54 10/27/2022 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath(
    input wire CLK,
    input wire RESET
    );
//IFU
wire [31:0] Instr;
wire [31:0] PC;
//NPC
wire [31:0] NPC;
wire [31:0] PC4;
//GRF
wire [31:0] RD1;
wire [31:0] RD2;
//EXT
wire [31:0] i32;
//DM
wire [31:0] RD;
//Control
wire ExtendSign; //��չָ�� 0������չ 1�޷�����չ 
wire Jump; //�Ƿ�ΪJalָ�� 
wire RegWrite; //Reg д�ź�
wire MemWrite;	//Mem д�ź�
wire [2:0] MemToReg; //ѡ�������Reg_WD�����ݵ�ѡ���ź�
wire [2:0] RegDest;	//ѡ��A3�˿ڶ�Ӧ�Ĵ�����ַ�ź�
wire RegSrc; //ѡ�����뵽ALU�ڶ��������������ź�
wire [3:0] ALUop; //ѡ��ALUִ�й���ѡ���ź� 0�� 1�� 2�� 3�� 4Luiר��
wire Branch; //Beq�Ƿ���ת
wire Jreg; //�Ƿ�Ϊjrָ��
//ALU
wire [31:0] Res;
wire Bigger;
//�����ź�ΪRegDest�Ķ�·ѡ���� ѡ�����뵽A3�ĵ�ַ 0ΪRt 1ΪRd 2Ϊ31�żĴ���
wire [4:0] RegAddr = (RegDest == 3'd0) ? Instr[20:16] :
                        (RegDest == 3'd1) ? Instr[15:11] :
                            (RegDest == 3'd2) ? 5'd31 : 0;
//�����ź�ΪRegSrc�Ķ�·ѡ���� ѡ�����뵽ALU�ڶ������������� 0ΪReg_RD2 1Ϊ������
wire [31:0] AluIn = (RegSrc == 2'd0) ? RD2 :
                (RegSrc == 2'd1) ? i32 : 0 ;
//�����ź�ΪMemToReg�Ķ�·ѡ����	ѡ�������Reg_WD�ڵ����� 0ΪALU 1ΪDM_RD 2ΪPC+4
wire [31:0] DataToReg = (MemToReg== 3'd0) ? Res :
                            (MemToReg == 3'd1) ? RD :
                                (MemToReg == 3'd2) ? PC4 : 0;	
//����lh lb sh sb���ź�
wire [1:0] SelectBit;										  
//ʵ����
//IFU
IFU ifu(
    .NPC(NPC),
    .CLK(CLK),
    .RESET(RESET),
    .PC(PC),
    .Instr(Instr)
);
//GRF
GRF grf(
    .A1(Instr[25:21]),
    .A2(Instr[20:16]),
    .A3(RegAddr),
    .WD(DataToReg),
    .RD1(RD1),
    .RD2(RD2),
    .CLK(CLK),
	 .PC(PC),
    .WE(RegWrite),
    .RESET(RESET)
);
//NPC
NPC npc(
    .Beq(Branch),
    .Jump(Jump),
    .Jr(Jreg),
    .PC(PC),
    .J26imm(Instr[25:0]),
    .B32imm(i32),
    .RegJump(RD1),
    .NPC(NPC),
	 .PC4(PC4)
);
//EXT
EXT ext(
    .i16(Instr[15:0]),
    .i32(i32),
    .ExtendSign(ExtendSign)
);
//DM
DM dm(
    .A(Res),
    .RD(RD),
    .WD(RD2),
    .PC(PC),
    .RESET(RESET),
    .CLK(CLK),
    .WE(MemWrite),
	 .SelectBit(SelectBit)
);
//Control
Control ctrl(
    .Instr(Instr),
    .Bigger(Bigger),
    .ExtendSign(ExtendSign),
    .Jump(Jump),
    .RegWrite(RegWrite),
    .MemWrite(MemWrite),
    .MemToReg(MemToReg),
    .RegDest(RegDest),
    .RegSrc(RegSrc),
    .ALUop(ALUop),
    .Branch(Branch),
    .Jreg(Jreg),
	 .SelectBit(SelectBit)
);
//ALU
ALU alu(
    .SrcA(RD1),
    .SrcB(AluIn),
    .ALUControl(ALUop),
    .Bigger(Bigger),
    .Res(Res)
);
										  
endmodule

