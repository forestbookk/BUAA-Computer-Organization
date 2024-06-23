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
	
    //����壺
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
    //����ִ��
		//Regдʹ��ָ��
    assign RegWrite = Lh || Lb || Lw || Add || Sub || Subu || Addu || Ori || Lui || Jal;    
		//Memдʹ��ָ��
    assign MemWrite = Sw || Sb || Sh;
		//ѡ�������Reg_WD�����ݵ�ѡ���ź� 0ΪALU 1ΪDM_RD 2ΪPC+4
    assign MemToReg = (Lw||Lh||Lb) ? 3'b001 :
                        Jal ?  3'b010 : 3'b000;
		//ѡ��A3�˿ڶ�Ӧ�Ĵ�����ַ�ź� 0ΪRt 1ΪRd 2Ϊ31�żĴ���
    assign RegDest = ( Add || Sub || Subu || Addu ) ? 3'b01 :
                                        Jal ? 3'b10 : 3'b00;
		//ѡ�����뵽ALU�ڶ������������� 0ΪReg_RD2 1Ϊ������
    assign RegSrc = Sb || Lb || Sh || Lh || Lw || Sw || Lui || Ori;
		//ѡ��beq�Ƿ���ת�ź�
    assign Branch = Bigger & Beq;
		//�Ƿ�Ϊjal�ź�
    assign Jump = Jal;
		//��չָ�� 0������չ 1�޷�����չ 
    assign ExtendSign = Ori;
		//�Ƿ�ΪJr�ź�
    assign Jreg = Jr;
		//�Ƿ�ΪLB LH SB SH�ź�
	 assign SelectBit = (Lb || Sb)? 2'b01 :
									(Lh || Sh) ? 2'b10 : 2'b00;
		//ѡ��ALUִ�й���ѡ���ź� 0�� 1�� 2�� 3�� 4Luiר��
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
