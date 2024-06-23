`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:20 10/26/2022 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input wire [31:0] Instr,
    input wire Bigger,
    output wire ExtendSign,
    output wire Jump,
    output wire RegWrite,
    output wire MemWrite,
    output wire [2:0] MemToReg,
    output wire [2:0] RegDest,
    output wire RegSrc,
    output reg [3:0] ALUop,
    output wire Branch,
	 output wire Jreg,
	 output wire [1:0] SelectBit
	 
    );
	wire [5:0] OP;
	wire [5:0] FC;
	assign OP = Instr[31:26];
	assign FC = Instr[5:0];
	wire Add,Sub,Ori,Lw,Sw,Beq,Lui,Jal,Jr,Lb,Sb,Lh,Sh,Addu,Subu;
	
    //命令定义：
	 assign Add =  (OP == 6'b000000)&(FC == 6'b100000);
	 assign Addu =  (OP == 6'b000000)&(FC == 6'b100001);
    assign Sub =  (OP == 6'b000000)&(FC == 6'b100010);
	 assign Subu =  (OP == 6'b000000)&(FC == 6'b100011);
    assign Ori =  (OP == 6'b001101);
    assign Lw = (OP == 6'b100011);
    assign Sw = (OP == 6'b101011);
    assign Beq = (OP == 6'b000100);
    assign Lui = (OP == 6'b001111);
    assign Jal = (OP == 6'b000011);
    assign Jr = (OP == 6'b000000)&(FC == 6'b001000);
	 assign Lb = (OP == 6'b100000);
	 assign Sb = (OP == 6'b101000);
	 assign Lh = (OP == 6'b100001);
	 assign Sh = (OP == 6'b101001);
    //命令执行
		//Reg写使能指令
    assign RegWrite = Lh || Lb || Lw || Add || Sub || Subu || Addu || Ori || Lui || Jal;    
		//Mem写使能指令
    assign MemWrite = Sw || Sb || Sh;
		//选择输出给Reg_WD口数据的选择信号 0为ALU 1为DM_RD 2为PC+4
    assign MemToReg = (Lw||Lh||Lb) ? 3'b001 :
                        Jal ?  3'b010 : 3'b000;
		//选择A3端口对应寄存器地址信号 0为Rt 1为Rd 2为31号寄存器
    assign RegDest = ( Add || Sub || Subu || Addu ) ? 3'b01 :
                                        Jal ? 3'b10 : 3'b00;
		//选择输入到ALU第二操作数的数据 0为Reg_RD2 1为立即数
    assign RegSrc = Sb || Lb || Sh || Lh || Lw || Sw || Lui || Ori;
		//选择beq是否跳转信号
    assign Branch = Bigger & Beq;
		//是否为jal信号
    assign Jump = Jal;
		//扩展指令 0符号扩展 1无符号扩展 
    assign ExtendSign = Ori;
		//是否为Jr信号
    assign Jreg = Jr;
		//是否为LB LH SB SH信号
	 assign SelectBit = (Lb || Sb)? 2'b01 :
									(Lh || Sh) ? 2'b10 : 2'b00;
		//选择ALU执行功能选择信号 0加 1减 2与 3或 4Lui专用
    always @(*) begin
        if(Add||Addu) begin
            ALUop = 4'b0000;
        end
        else if(Sub||Subu) begin
            ALUop = 4'b0001;
        end
        else if(Ori) begin
            ALUop = 4'b0011;
        end
        else if(Lui) begin
            ALUop = 4'b0100;
        end
		  else begin
				ALUop = 4'b0000;
		  end
    end
	 
	 
endmodule
