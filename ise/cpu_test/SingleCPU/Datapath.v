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
wire ExtendSign; //扩展指令 0符号扩展 1无符号扩展 
wire Jump; //是否为Jal指令 
wire RegWrite; //Reg 写信号
wire MemWrite;	//Mem 写信号
wire [2:0] MemToReg; //选择输出给Reg_WD口数据的选择信号
wire [2:0] RegDest;	//选择A3端口对应寄存器地址信号
wire RegSrc; //选择输入到ALU第二操作数的数据信号
wire [3:0] ALUop; //选择ALU执行功能选择信号 0加 1减 2与 3或 4Lui专用
wire Branch; //Beq是否跳转
wire Jreg; //是否为jr指令
//ALU
wire [31:0] Res;
wire Bigger;
//控制信号为RegDest的多路选择器 选择输入到A3的地址 0为Rt 1为Rd 2为31号寄存器
wire [4:0] RegAddr = (RegDest == 3'd0) ? Instr[20:16] :
                        (RegDest == 3'd1) ? Instr[15:11] :
                            (RegDest == 3'd2) ? 5'd31 : 0;
//控制信号为RegSrc的多路选择器 选择输入到ALU第二操作数的数据 0为Reg_RD2 1为立即数
wire [31:0] AluIn = (RegSrc == 2'd0) ? RD2 :
                (RegSrc == 2'd1) ? i32 : 0 ;
//控制信号为MemToReg的多路选择器	选择输出给Reg_WD口的数据 0为ALU 1为DM_RD 2为PC+4
wire [31:0] DataToReg = (MemToReg== 3'd0) ? Res :
                            (MemToReg == 3'd1) ? RD :
                                (MemToReg == 3'd2) ? PC4 : 0;	
//控制lh lb sh sb的信号
wire [1:0] SelectBit;										  
//实例化
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

