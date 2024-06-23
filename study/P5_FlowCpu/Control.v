`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:28 11/03/2022 
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
    output wire ExtendSign,
    output wire Jal_sign,
    output wire RegWrite,
    output wire MemWrite,
    output wire [2:0] MemToReg,
    output wire [4:0] RegDest, //由于该模块已经解码rt,rs,因此在这里直接计算RegDest
    output wire RegSrc,
    output reg [3:0] ALUop,
    output wire Beq_sign,
	 output wire Jr_sign,
	 output wire [15:0] imm16,
    output wire [25:0] imm26,
    output wire [4:0] rs,
    output wire [4:0] rt,
    output wire [4:0] rd,


    output wire load,
    output wire store,
    output wire cal_r,
    output wire cal_i,
	 output wire jal,
	 output wire jr,
	 output wire beq
    );
	wire [5:0] OP;
	wire [5:0] FC;	
//解码部分
	 assign OP = Instr[31:26];
	 assign FC = Instr[5:0];
    assign rs = Instr[25:21];
    assign rt = Instr[20:16];
    assign rd = Instr[15:11];
    assign imm16 = Instr[15:0];
    assign imm26 = Instr[25:0];
//解码结束
	 wire Addu,Subu,Add,Sub,Ori,Lw,Sw,Beq,Lui,Jal,Jr;
    //命令定义：
	 assign Add =  (OP == 6'b000000)&(FC == 6'b100000);
	 assign Addu = (OP == 6'b000000)&(FC == 6'b100001);
    assign Sub =  (OP == 6'b000000)&(FC == 6'b100010);
	 assign Subu = (OP == 6'b000000)&(FC == 6'b100011);
    assign Ori =  (OP == 6'b001101);
    assign Lw = (OP == 6'b100011);
    assign Sw = (OP == 6'b101011);
    assign Beq = (OP == 6'b000100);
    assign Lui = (OP == 6'b001111);
    assign Jal = (OP == 6'b000011);
    assign Jr = (OP == 6'b000000)&(FC == 6'b001000);
    //命令执行：
    assign RegWrite = Lw || Add || Sub || Ori || Lui || Jal ||Addu ||Subu;
    assign MemWrite = Sw;
    assign MemToReg = Lw ? 2'b001 :
                        Jal ?  2'b010 : 2'b000;
    assign RegDest = (Add || Sub ||Addu ||Subu) ? rd :
                                        Jal ? 5'd31 : 
															(Ori || Lui || Lw) ? rt : 5'd0;
    assign RegSrc = Lw || Sw || Lui || Ori;
    assign Beq_sign =  Beq;
    assign Jal_sign = Jal;
    assign ExtendSign = Ori;
    assign Jr_sign = Jr;
    always @(*) begin
        if(Add||Addu) begin
            ALUop = 3'b0000;
        end
        else if(Sub||Subu) begin
            ALUop = 3'b0001;
        end
        else if(Ori) begin
            ALUop = 3'b0011;
        end
        else if(Lui) begin
            ALUop = 3'b0100;
        end
		else begin
			ALUop = 3'b0000;
		end
    end
//阻塞：
assign load = Lw;
assign store = Sw;
assign cal_r = Add || Sub || Addu ||Subu;
assign cal_i = Ori || Lui;
assign jal = Jal;
assign jr = Jr;
assign beq = Beq;
endmodule
