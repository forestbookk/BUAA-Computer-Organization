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
    input wire reset,
    input wire[31:0] i_inst_rdata, //F_Instr
    input wire[31:0] m_data_rdata, //DM - Data fetched RAW
	 
    output wire[31:0] i_inst_addr, //F_PC
    output wire[31:0] m_data_addr, //DM_A
    output wire[31:0] m_data_wdata,//DM_WD
    output wire[3 :0] m_data_byteen,
    output wire[31:0] m_inst_addr, //M_PC
    output wire w_grf_we,           //RFWrEn
    output wire[4:0] w_grf_addr,   //W_A3
    output wire[31:0] w_grf_wdata, //W_RW
    output wire[31:0] w_inst_addr  //W_PC
    );
/*******命名*********/
    wire Stall;
	 wire IFU_WrEn;
	 wire FD_REG_WrEn, DE_REG_WrEn, EM_REG_WrEn, MW_REG_WrEn;
	 wire FD_REG_flush, DE_REG_flush, EM_REG_flush, MW_REG_flush;//插入nop的flush控制信号
	 wire D_b_jump, E_b_jump, M_b_jump, W_b_jump;//CMP的输出：B指令是否跳转
	 
    wire[31:0] F_NPC;
    wire[31:0] F_Instr;
    wire[31:0] F_PC;

	 wire[31:0] D_Instr;
	 wire[31:0] D_PC;
	 wire[31:0] FD_rs;//处理转发后的寄存器rs值
    wire[31:0] FD_rt;//处理转发后的寄存器rt值
	 wire[1:0] EXTOp; wire[31:0] D_E32;
    wire[3:0] NPCOp;
	 wire RFWrEn; wire[2:0] RFWRSel,RFWDSel; wire[4:0] D_A3; wire[31:0] D_V1, D_V2;  	
    wire[2:0] CMPOp;
	 wire D_Calc_r,D_Calc_i,D_Lui,D_Load,D_Store,D_J_l,D_Jr,D_Branch;
	 
    wire[31:0] E_Instr;
    wire[31:0] E_PC;
	 wire[31:0] E_V1;
    wire[31:0] E_V2;
    wire[31:0] E_E32;
	 wire[4:0] E_A3;
    wire[31:0] FE_rs;//处理转发后的寄存器rs值
    wire[31:0] FE_rt;//处理转发后的寄存器rt值	 
    wire[3:0] ALUOp; wire[1:0] ALUASel, ALUBSel; wire[31:0] E_A, E_B, E_AO;
    wire E_Calc_r,E_Calc_i,E_Lui,E_Load,E_Store,E_J_l,E_Jr,E_Branch;
	 
    wire[31:0] M_Instr;
    wire[31:0] M_PC;
	 wire[31:0] M_V2;
	 wire[31:0] M_DR;
	 wire[31:0] M_AO;
	 wire[4:0] M_A3;
	 wire[31:0] FM_DW;//处理转发后的DM写数据
	 wire DMWrEn; wire[1:0] DMOp; wire DMEXTOp;
    wire M_Calc_r,M_Calc_i,M_Lui,M_Load,M_Store,M_J_l,M_Jr,M_Branch;
	 
    wire[31:0] W_Instr;
	 wire[31:0] W_PC;
	 wire[31:0] W_AO;
    wire[31:0] W_DR;
	 wire[4:0] W_A3;
	 wire[31:0] W_RW;
	 wire W_Calc_r,W_Calc_i,W_Lui,W_Load,W_Store,W_J_l,W_Jr,W_Branch;
	 
	 wire E_Forward, M_Forward, W_Forward;
	 
/*****外置存储器******/
    assign F_Instr = i_inst_rdata;
	 
    assign i_inst_addr = F_PC;
	 assign m_data_addr = M_AO;
	 assign m_data_wdata = FM_DW;
	 assign m_inst_addr = M_PC;
	 assign w_grf_we = RFWrEn;
	 assign w_grf_addr = W_A3;
	 assign w_grf_wdata = W_RW;
	 assign w_inst_addr = W_PC;	
	 
/*******布线*********/

    assign IFU_WrEn = !Stall;
	 
    assign FD_REG_WrEn = !Stall;
	 assign DE_REG_WrEn = 1;
	 assign EM_REG_WrEn = 1;
	 assign MW_REG_WrEn = 1;
	 
	 //高电平插入nop
	 assign FD_REG_flush = 1'b0;//清除延迟槽情况使用：assign FD_REG_flush = !D_b_jump && CMPOp==`CMPOp_BXXZALL;
	 assign DE_REG_flush = Stall;//阻塞情况使用：指令阻塞在D级，插入nop进E级流水
	 assign EM_REG_flush = 1'b0;
	 assign MW_REG_flush = 1'b0;
	 
/*******MUX*********/
	 assign D_A3 = (RFWRSel==`RFWRSel_rd) ? D_Instr[15:11] :
							  ((RFWRSel==`RFWRSel_rt) ? D_Instr[20:16] :
							  ((RFWRSel==`RFWRSel_31) ? 5'd31 :
								`REPOSITION_DATA));
	 assign E_A = (ALUASel == `ALUASel_rs) ? FE_rs:
					  ((ALUASel == `ALUASel_sh) ? {{28{1'b0}},E_Instr[10:6]} :
						 32'hffff_ffff);
	 assign E_B = (ALUBSel==`ALUBSel_rt) ? FE_rt:
					  ((ALUBSel==`ALUBSel_imm)? E_E32:
						 32'hffff_ffff);								
	 assign W_RW = (W_A3 == 0) ? 0 :
	                 ((RFWDSel==`RFWDSel_ALU) ? W_AO :
                    ((RFWDSel==`RFWDSel_DMRD) ? W_DR : 
						  ((RFWDSel==`RFWDSel_PC8) ? W_PC+32'd8 : 
						   `REPOSITION_DATA))); 							
/******转发********/
    assign E_Forward = E_J_l || E_Lui;
	 assign M_Forward = M_Calc_r || M_Calc_i || M_J_l || M_Lui;
	 assign W_Forward = W_Calc_r || W_Calc_i || W_J_l || W_Lui || W_Load;
	 assign FD_rs = (D_Instr[25:21]==E_A3 && E_A3 && E_Forward)? ((E_J_l)?E_PC+32'd8:E_E32):
						  ((D_Instr[25:21]==M_A3 && M_A3 && M_Forward)? ((M_J_l)?M_PC+32'd8:M_AO):
						  ((D_Instr[25:21]==W_A3 && W_A3 && W_Forward)? W_RW:
						    D_V1));
	 assign FD_rt = (D_Instr[20:16]==E_A3 && E_A3 && E_Forward)? ((E_J_l)?E_PC+32'd8:E_E32):
						  ((D_Instr[20:16]==M_A3 && M_A3 && M_Forward)? ((M_J_l)?M_PC+32'd8:M_AO):
						  ((D_Instr[20:16]==W_A3 && W_A3 && W_Forward)? W_RW:
						    D_V2));	
    assign FE_rs = (E_Instr[25:21]==M_A3 && M_A3 && M_Forward)? ((M_J_l)?M_PC+32'd8:M_AO):
                       ((E_Instr[25:21]==W_A3 && W_A3 && W_Forward)? W_RW:
                         E_V1);
    assign FE_rt = (E_Instr[20:16]==M_A3 && M_A3 && M_Forward)? ((M_J_l)?M_PC+32'd8:M_AO):
                       ((E_Instr[20:16]==W_A3 && W_A3 && W_Forward)? W_RW:
                         E_V2);
    assign FM_DW = (M_Instr[20:16]==W_A3 && W_A3 && W_Forward)? W_RW:M_V2;	
/*******暂停*********/
Stall _stall(
    .D_Instr(D_Instr),
    .E_Instr(E_Instr),
	 .M_Instr(M_Instr),
	 .E_A3(E_A3),
	 .M_A3(M_A3),
	 .Stall(Stall)
);
/*******F级**********/
PC F_pc(
    .WE(IFU_WrEn),
	 .clk(clk),
	 .reset(reset),
	 .NPC(F_NPC),
	 .PC(F_PC)
);
/*IFU F_ifu(
    .WE(IFU_WrEn),
	 .clk(clk),
	 .reset(reset),
	 .NPC(F_NPC),
	 .Instr(F_Instr),
	 .PC(F_PC)
);*/
/******D级*********/
FD_REG FD_REG(
    .WE(FD_REG_WrEn),
	 .flush(FD_REG_flush),
	 .clk(clk),
	 .reset(reset),
	 .F_Instr(F_Instr),
	 .F_PC(F_PC),
	 .D_Instr(D_Instr),
	 .D_PC(D_PC)
);
CU D_cu(
    .opcode(D_Instr[31:26]),
	 .func(D_Instr[5:0]),
	 .RFWRSel(RFWRSel),
	 .NPCOp(NPCOp),
	 .EXTOp(EXTOp),
	 .CMPOp(CMPOp),
	 .Calc_r(D_Calc_r),
    .Calc_i(D_Calc_i),
	 .Lui(D_Lui),
    .Load(D_Load),
    .Store(D_Store),
    .Branch(D_Branch),
    .Jr(D_Jr),
    .J_l(D_J_l)
);								
NPC D_npc(
    .F_PC(F_PC),
	 .D_PC(D_PC),
	 .NPCOp(NPCOp),
	 .NPC(F_NPC),
	 .IMM26(D_Instr[25:0]),
	 .IMM16(D_Instr[15:0]),
	 .Branch(D_b_jump),
	 .RS(FD_rs)
);
RF D_rf(
    .W_PC(W_PC),
	 .WD(W_RW),
	 .A3(W_A3),
	 .clk(clk),
	 .reset(reset),
	 .WE(RFWrEn),
	 .A1(D_Instr[25:21]),
	 .A2(D_Instr[20:16]),
	 .RD1(D_V1),
	 .RD2(D_V2)
);
EXT D_ext(
    .IMM16(D_Instr[15:0]),
	 .EXTOp(EXTOp),
	 .IMMEXT(D_E32)
);	  
CMP D_cmp(
    .D1(FD_rs),
	 .D2(FD_rt),
	 .CMPOp(CMPOp),
	 .Branch(D_b_jump)
);
/******E级*********/
DE_REG DE_REG(
    .WE(DE_REG_WrEn),
	 .flush(DE_REG_flush),
	 .D_b_jump(D_b_jump),
	 .E_b_jump(E_b_jump),
    .D_A3(D_A3),
    .D_V1(FD_rs),
	 .D_V2(FD_rt),
	 .D_E32(D_E32),
	 .D_Instr(D_Instr),
	 .D_PC(D_PC),
	 .E_A3(E_A3),
	 .E_Instr(E_Instr),
	 .E_PC(E_PC),
	 .E_V1(E_V1),
	 .E_V2(E_V2),
	 .E_E32(E_E32),
	 .clk(clk),
	 .reset(reset)
);
CU E_cu(
    .opcode(E_Instr[31:26]),
	 .func(E_Instr[5:0]),
	 .ALUOp(ALUOp),
	 .ALUASel(ALUASel),
	 .ALUBSel(ALUBSel),
	 .Calc_r(E_Calc_r),
	 .Calc_i(E_Calc_i),
	 .Lui(E_Lui),
	 .Load(E_Load),
    .Store(E_Store),
	 .Branch(E_Branch),
	 .Jr(E_Jr),
	 .J_l(E_J_l)
);					 
ALU E_alu(
    .A(E_A),
	 .B(E_B),
	 .ALUOp(ALUOp),
	 .AO(E_AO)
);
/********M级************/
EM_REG EM_REG(
    .WE(EM_REG_WrEn),
	 .flush(EM_REG_flush),
	 .E_V2(FE_rt),
	 .E_b_jump(E_b_jump),
	 .M_b_jump(M_b_jump),
	 .E_AO(E_AO),
	 .E_A3(E_A3),
	 .E_Instr(E_Instr),
	 .E_PC(E_PC),
	 .M_V2(M_V2),
	 .M_AO(M_AO),
	 .M_A3(M_A3),
	 .M_Instr(M_Instr),
	 .M_PC(M_PC),
	 .clk(clk),
	 .reset(reset)
);
CU M_cu(
    .opcode(M_Instr[31:26]),
	 .func(M_Instr[5:0]),
	 .DMOp(DMOp),
	 .DMEXTOp(DMEXTOp),
	 .DMWrEn(DMWrEn),
	 .Calc_r(M_Calc_r),
	 .Calc_i(M_Calc_i),
	 .Lui(M_Lui),
	 .Load(M_Load),
	 .Store(M_Store),
	 .Branch(M_Branch),
	 .Jr(M_Jr),
	 .J_l(M_J_l)
);
BE M_be(
    .WE(DMWrEn),
	 .DMRD_raw(m_data_rdata),
	 .DMAddr(M_AO),
	 .DMOp(DMOp),
	 .DMEXTOp(DMEXTOp),
	 .DMByteEn(m_data_byteen),
	 .DMRD(M_DR)
);
/*DM M_dm(
    .PC(M_PC),
	 .WE(DMWrEn),
	 .A(M_AO),
	 .WD(FM_DW),
	 .DMEXTOp(DMEXTOp),
	 .DMOp(DMOp),
	 .DMRD(M_DR),
	 .clk(clk),
	 .reset(reset)
);*/
/********W级*********/
MW_REG MW_REG(
    .WE(MW_REG_WrEn),
	 .flush(MW_REG_flush),
	 .M_b_jump(M_b_jump),
	 .W_b_jump(W_b_jump),
    .M_AO(M_AO),
	 .M_DR(M_DR),
	 .M_A3(M_A3),
	 .M_Instr(M_Instr),
	 .M_PC(M_PC),
	 .W_AO(W_AO),
	 .W_A3(W_A3),
	 .W_DR(W_DR),
	 .W_Instr(W_Instr),
	 .W_PC(W_PC),
	 .clk(clk),
	 .reset(reset)
);
CU W_cu(
    .opcode(W_Instr[31:26]),
	 .func(W_Instr[5:0]),
	 .RFWrEn(RFWrEn),
	 .RFWDSel(RFWDSel),
	 .Calc_r(W_Calc_r),
	 .Calc_i(W_Calc_i),
	 .Lui(W_Lui),
	 .Load(W_Load),
	 .J_l(W_J_l)
);

endmodule
