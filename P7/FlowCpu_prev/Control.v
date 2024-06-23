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
	 output wire CP0Write,
    output wire [2:0] MemToReg,
    output wire [4:0] RegDest, //由于该模块已经解码rt,rs,因此在这里直接计算RegDest
    output wire RegSrc,
    output reg [3:0] ALUop,
    output wire Beq_sign,
	 output wire Bne_sign,
	 output wire Jr_sign,
	 output wire [15:0] imm16,
    output wire [25:0] imm26,
    output wire [4:0] rs,
    output wire [4:0] rt,
    output wire [4:0] rd,
    output reg [2:0] MDUop,
    output wire start,
    output wire HIWrite,
    output wire LOWrite,
    output wire HIRead,
    output wire LORead,
	 output wire Invaild_Instr,
	 output reg [2:0] BEop, //lh lb
	 output reg [2:0] DMop, //sh sb
	 
	 
	 output wire is_Lw,
	 output wire is_Lh,
	 output wire is_Lb,
	 output wire is_Sw,
	 output wire is_Sh,
	 output wire is_Sb,
	 output wire is_Mfc0,
	 output wire is_Mtc0,
	 output wire is_Eret,
	 output wire is_Syscall,
	 

	 output wire may_overflow_instr,
    output wire load,
    output wire store,
    output wire cal_r,
    output wire cal_i,
	 output wire jal,
	 output wire jr,
	 output wire branch,
	 output wire MDU_c,
	 output wire MDU_t,
	 output wire MDU_f,
	 output wire eret,
	 output wire mtc0,
	 output wire mfc0
    );
	wire [5:0] OP;
	wire [5:0] FC;	
	wire [4:0] MC;
//解码部分
	 assign OP = Instr[31:26];
	 assign FC = Instr[5:0];
    assign rs = Instr[25:21];
    assign rt = Instr[20:16];
    assign rd = Instr[15:11];
    assign imm16 = Instr[15:0];
    assign imm26 = Instr[25:0];
	 assign MC = Instr[25:21];
//解码结束
	 wire Addu,Subu,Add,Sub,Ori,Lw,Sw,Beq,Lui,Jal,Jr,Mult,Multu,Div,Divu,Mfhi,Mflo,Mthi,Mtlo,And,Or,Slt,Sltu,Addi,Andi,Lb,Lh,Sb,Sh,Bne,Addiu,Nop;
	 wire Mfc0,Mtc0,Eret,Syscall;
    //命令定义：
	 assign Add =  (OP == 6'b000000)&(FC == 6'b100000);
	 assign Addu = (OP == 6'b000000)&(FC == 6'b100001);
    assign Sub =  (OP == 6'b000000)&(FC == 6'b100010);
	 assign Subu = (OP == 6'b000000)&(FC == 6'b100011);
    assign Ori =  (OP == 6'b001101);
    assign Lw =   (OP == 6'b100011);
    assign Sw =   (OP == 6'b101011);
    assign Beq =  (OP == 6'b000100);
    assign Lui =  (OP == 6'b001111);
    assign Jal =  (OP == 6'b000011);
    assign Jr =   (OP == 6'b000000)&(FC == 6'b001000);
    assign Mult = (OP == 6'b000000)&(FC == 6'b011000);
    assign Multu =(OP == 6'b000000)&(FC == 6'b011001);
    assign Div =  (OP == 6'b000000)&(FC == 6'b011010);
    assign Divu = (OP == 6'b000000)&(FC == 6'b011011);
    assign Mfhi = (OP == 6'b000000)&(FC == 6'b010000);
    assign Mflo = (OP == 6'b000000)&(FC == 6'b010010);
    assign Mthi = (OP == 6'b000000)&(FC == 6'b010001);
    assign Mtlo = (OP == 6'b000000)&(FC == 6'b010011);
	 assign And =  (OP == 6'b000000)&(FC == 6'b100100);
	 assign Or =   (OP == 6'b000000)&(FC == 6'b100101);
	 assign Slt =  (OP == 6'b000000)&(FC == 6'b101010);
	 assign Sltu = (OP == 6'b000000)&(FC == 6'b101011);
	 assign Addi = (OP == 6'b001000);
	 assign Addiu =(OP == 6'b001001);
	 assign Andi = (OP == 6'b001100);
	 assign Bne =  (OP == 6'b000101);
	 assign Lb =   (OP == 6'b100000);
	 assign Lh =   (OP == 6'b100001);
	 assign Sb =   (OP == 6'b101000);
	 assign Sh =   (OP == 6'b101001);
	 assign Nop =  (OP == 6'b000000)&(FC == 6'b000000);
	 assign Mfc0 = (OP == 6'b010000)&(MC == 5'b00000);
	 assign Mtc0 = (OP == 6'b010000)&(MC == 5'b00100);
	 assign Eret = (Instr == 32'b01000010000000000000000000011000);
	 assign Syscall=(OP ==6'b000000)&(FC == 6'b001100);
    //命令执行：
    assign RegWrite = Lw || Lb || Lh || Add || Sub || Ori || Lui || Jal || Addu || Subu || Mfhi || Mflo || And || Or || Slt || Sltu || Addi || Andi || Addiu || Mfc0;
    assign MemWrite = Sw || Sb || Sh;
    assign MemToReg = (Lw||Lb||Lh) ? 3'b001 :
                        Jal ?  3'b010 : 
									(Mfhi||Mflo) ? 3'b011 :
										(Mfc0) ? 3'b100 : 3'b000;
    assign RegDest = (Add || Sub || Addu || Subu || Mfhi || Mflo || And || Or || Slt || Sltu) ? rd :
                                        Jal ? 5'd31 : 
															(Ori || Lui || Lw || Lh || Lb || Addi || Addiu || Andi || Mfc0) ? rt : 5'd0;
    assign RegSrc = Lw || Lh || Lb || Sw || Sb || Sh || Lui || Ori || Addi || Addiu || Andi;
    assign Beq_sign =  Beq;
	 assign Bne_sign = Bne;
    assign Jal_sign = Jal;
    assign ExtendSign = Ori || Andi;
    assign Jr_sign = Jr;
    assign start = Mult || Multu || Div || Divu;
    assign HIWrite = Mthi;
    assign LOWrite = Mtlo;
    assign HIRead = Mfhi;
    assign LORead = Mflo;
	 assign may_overflow_instr = Sub || Add || Addi;
	 assign CP0Write = Mtc0;
    always @(*) begin
        if(Add||Addu||Addi||Addiu) begin
            ALUop = 4'b0000;
        end
        else if(Sub||Subu) begin
            ALUop = 4'b0001;
        end
		  else if(And||Andi) begin
				ALUop = 4'b0010;
		  end
        else if(Ori||Or) begin
            ALUop = 4'b0011;
        end
        else if(Lui) begin
            ALUop = 4'b0100;
        end
		  else if(Slt) begin
				ALUop = 4'b0101;
		  end
		  else if(Sltu) begin
				ALUop = 4'b0110;
		  end
		  else begin
			   ALUop = 4'b0000;
		  end
    end
    always @(*) begin
        if(Mult) begin
            MDUop = 3'b000;
        end
        else if(Multu) begin
            MDUop = 3'b001;
        end
        else if(Div) begin
            MDUop = 3'b010;
        end
        else if(Divu) begin
            MDUop = 3'b011;
        end
    end
	 always @(*) begin
		 if(Lw) begin
				BEop = 3'b000;
		 end
		 else if(Lb) begin
				BEop = 3'b010;
		 end
		 else if(Lh) begin
				BEop = 3'b100;
		 end
		 else begin
				BEop = 3'b000;
		 end
	 end
	 always @(*) begin
		 if(Sw) begin
				DMop = 3'b001;
		 end
		 else if(Sh) begin
				DMop = 3'b010;
		 end
		 else if(Sb) begin
				DMop = 3'b011;
		 end
		 else begin
				DMop = 3'b000;
		 end
	 end
//阻塞：
assign load = Lw || Lb || Lh;
assign store = Sw || Sh || Sb;
assign cal_r = Add || Sub || Addu || Subu || And || Or || Slt || Sltu;
assign cal_i = Ori || Lui || Andi || Addi || Addiu;
assign jal = Jal;
assign jr = Jr;
assign branch = Beq||Bne;
assign MDU_c = Mult || Multu || Div || Divu;
assign MDU_f = Mfhi || Mflo;
assign MDU_t = Mthi || Mtlo;
assign eret = Eret;
assign mtc0 = Mtc0;
assign mfc0 = Mfc0;
//异常处理：
assign is_Lw = Lw;
assign is_Lh = Lh;
assign is_Lb = Lb;
assign is_Sw = Sw;
assign is_Sh = Sh;
assign is_Sb = Sb;
assign is_Syscall = Syscall;
assign is_Mfc0 = Mfc0;
assign is_Mtc0 = Mtc0;
assign is_Eret = Eret;
assign Invaild_Instr = !(Addu||Subu||Add||Sub||Ori||Lw||Sw||Beq||Lui||Jal||Jr||Mult||Multu||Div||Divu||Mfhi||Mflo||Mthi||Mtlo||And||Or||Slt||Sltu||Addi||Andi||Lb||Lh||Sb||Sh||Bne||Addiu||Nop||Mtc0||Mfc0||Syscall||Eret);
endmodule
