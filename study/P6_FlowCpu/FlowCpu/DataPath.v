`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:27:12 11/04/2022 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(
   input wire clk,
   input wire reset,
	output wire [31:0] i_inst_addr,
	input wire [31:0] i_inst_rdata,
	input wire [31:0] m_data_rdata,
	output wire [31:0] m_data_addr,
	output wire [31:0] m_data_wdata,
	output wire [31:0] m_inst_addr,
	output wire [3:0] m_data_byteen,
   output wire w_grf_we,
   output wire [4:0] w_grf_addr,
   output wire [31:0] w_grf_wdata,
   output wire [31:0] w_inst_addr
    );

//Forward
wire EX_Forward;
wire MEM_Forward;
wire WB_Forward;
//Forward	 
	 
//MemtoReg
wire [31:0] M_MemToReg = (M_MemToReg_sign == 3'd1) ? 32'd0 : 
                            (M_MemToReg_sign == 3'd2) ?  MEM_PC + 8 :
											(M_MemToReg_sign == 3'd3) ? MEM_MDU_Result :  MEM_ALU_Result;
wire [31:0] E_MemToReg = (E_MemToReg_sign == 3'd1) ? 32'd0 : 
                            (E_MemToReg_sign == 3'd2) ?  EX_PC + 8 : 32'd0;
wire [31:0] W_MemToReg = (W_MemToReg_sign == 3'd1) ? WB_DM_RD : 
                            (W_MemToReg_sign == 3'd2) ?  WB_PC + 8 : 
										(W_MemToReg_sign == 3'd3) ? WB_MDU_Result : WB_ALU_Result;
//MemtoReg	 


//Stall
wire Stall_sign;
//Stall


//F_PC
wire [31:0] F_PC;
wire [31:0] F_Instr;
//F_PC


//IF_ID_REG
wire [31:0] ID_Instr;
wire [31:0] ID_PC;
//IF_ID_REG


//D_Control
wire D_ExtendSign;
wire D_Beq_sign;
wire D_Bne_sign;
wire D_Jal_sign;
wire D_Jr_sign;
wire [15:0] D_imm16;
wire [25:0] D_imm26;
wire [4:0] D_rs;
wire [4:0] D_rt;
wire [4:0] D_rd;
//D_Control


//D_GRF
wire [31:0] WB_PC;
wire [31:0] D_RD1;
wire [31:0] D_RD2;
wire [31:0] WB_Instr;
wire W_RegWrite;
wire [4:0] W_RegDest;
//D_GRF


//D_CMP
wire Equal;
wire [31:0] D_Forward_rs = (D_rs == 0)? 0 :
										((E_RegDest == D_rs) && EX_Forward && E_RegWrite) ? E_MemToReg :
											((M_RegDest == D_rs) && MEM_Forward && M_RegWrite) ? M_MemToReg : D_RD1;
wire [31:0] D_Forward_rt = (D_rt == 0)? 0 :
										((E_RegDest == D_rt) && EX_Forward && E_RegWrite) ? E_MemToReg :
											((M_RegDest == D_rt) && MEM_Forward && M_RegWrite) ? M_MemToReg : D_RD2;
wire D_jump;
//D_CMP

//D_NPC
wire [31:0] NPC;
//D_NPC

//D_EXT
wire [31:0] D_imm32;
//D_EXT


//ID_EX_REG
wire [31:0] EX_Instr;
wire [31:0] EX_RD1;
wire [31:0] EX_RD2;
wire [31:0] EX_imm32;
wire [31:0] EX_PC;
wire EX_jump;
//ID_EX_REG


//E_Control
wire E_RegSrc;
wire [3:0] E_ALUControl;
wire [4:0] E_rs;
wire [4:0] E_rt;
wire [4:0] E_rd;
wire [4:0] E_RegDest;
wire E_RegWrite;
wire [2:0] E_MemToReg_sign;
wire E_start;
wire [2:0] E_MDUop;
wire E_HIWrite;
wire E_LOWrite;
wire E_HIRead;
wire E_LORead;
//E_Control


//E_ALU
wire [31:0] E_ALU_Result;
wire [31:0] E_Forward_rs =   (E_rs == 0) ? 0 :
										((M_RegDest == E_rs) && MEM_Forward && M_RegWrite) ? M_MemToReg :
											((W_RegDest == E_rs) && WB_Forward && W_RegWrite) ? W_MemToReg : EX_RD1;
wire [31:0] E_Forward_rt =   (E_rt == 0) ? 0 :
										((M_RegDest == E_rt) && MEM_Forward && M_RegWrite) ? M_MemToReg :
											((W_RegDest == E_rt) && WB_Forward && W_RegWrite) ? W_MemToReg : EX_RD2;
wire [31:0] E_ALU_SrcB = (E_RegSrc) ? EX_imm32 : E_Forward_rt;
//E_ALU


//E_MDU
wire [31:0] E_HI;
wire [31:0] E_LO;
wire E_busy;
wire [31:0] E_MDU_res;
//E_MDU

//M_Control
wire [2:0] M_MemToReg_sign;
wire M_MemWrite;
wire [4:0] M_rs;
wire [4:0] M_rt;
wire [4:0] M_rd; 
wire [4:0] M_RegDest;
wire M_RegWrite;
wire [2:0] M_BEop;
wire [2:0] M_DMop;
//M_Control


//M_DM
wire [31:0] M_DM_RD;
wire [31:0] M_WD_Forward = (M_rt == 0) ? 0 :
									((W_RegDest == M_rt) && (WB_Forward) && (W_RegWrite)) ? W_MemToReg : MEM_RD2;
//M_DM


//M_BE
wire [31:0] M_Dout;
//M_BE

//EX_MEM_REG
wire [31:0] MEM_Instr;
wire [31:0] MEM_RD2;
wire [31:0] MEM_MDU_Result;
wire [31:0] MEM_ALU_Result;
wire [31:0] MEM_PC;
wire MEM_jump;
//EX_MEM_REG


//MEM_WB_REG
wire [31:0] WB_ALU_Result;
wire [31:0] WB_DM_RD;
wire [31:0] WB_MDU_Result;
wire WB_jump;
//MEM_WB_REG


//WB_Control
wire [2:0] W_MemToReg_sign;
//WB_Control


//F_PC
F_PC f_pc(
	.WE(!Stall_sign),
    .NPC(NPC),
    .CLK(clk),
    .RESET(reset),
    .PC(F_PC)
);


//"IFU"
assign i_inst_addr = F_PC;
assign F_Instr = i_inst_rdata;

//IF_ID_REG
IF_ID_REG if_id_reg(
    .clk(clk),
    .reset(reset),
    .WE(!Stall_sign),
    .IF_Instr(F_Instr),
    .IF_PC(F_PC),
    .ID_Instr(ID_Instr),
    .ID_PC(ID_PC)
);

//D_Control
Control D_Control(
    .Instr(ID_Instr),
    .ExtendSign(D_ExtendSign),
    .Beq_sign(D_Beq_sign),
	 .Bne_sign(D_Bne_sign),
    .Jal_sign(D_Jal_sign),
    .Jr_sign(D_Jr_sign),
    .imm16(D_imm16),
    .imm26(D_imm26),
    .rs(D_rs),
    .rt(D_rt),
    .rd(D_rd)
);


//D_GRF
D_GRF d_grf(
    .A1(D_rs),
    .A2(D_rt),
    .A3(W_RegDest),
    .WD(W_MemToReg),
    .PC(WB_PC),
    .RD1(D_RD1),
    .RD2(D_RD2),
    .CLK(clk),
    .WE(W_RegWrite),
    .RESET(reset)
);
assign w_grf_we = W_RegWrite;
assign w_grf_addr = W_RegDest;
assign w_grf_wdata = W_MemToReg;
assign w_inst_addr = WB_PC;



//D_CMP
D_CMP d_cmp(
    .A(D_Forward_rs),
    .B(D_Forward_rt),
    .Equal(Equal),
	 .jump(D_jump)
);


//D_NPC
D_NPC d_npc(
    .F_PC(F_PC),
    .D_PC(ID_PC),
    .Beq_sign(D_Beq_sign),
	 .Bne_sign(D_Bne_sign),
    .Jal_sign(D_Jal_sign),
    .Jr_sign(D_Jr_sign),
    .Jal_imm26(D_imm26),
    .D_GRF_Jr(D_Forward_rs),
    .Beq_imm16(D_imm16),
    .Equal(Equal),
    .NPC(NPC)
);

//D_EXT
D_EXT d_ext(
    .i16(D_imm16),
    .i32(D_imm32),
    .ExtendSign(D_ExtendSign)
);




//ID_EX_REG
ID_EX_REG id_ex_reg(
    .ID_Instr(ID_Instr),
    .D_RD1(D_Forward_rs),
    .D_RD2(D_Forward_rt),
    .D_imm32(D_imm32),
    .ID_PC(ID_PC),
	 .D_jump(D_jump),
    .clk(clk),
    .reset(reset||Stall_sign),
    .WE(1'b1),
    .EX_Instr(EX_Instr),
    .EX_RD1(EX_RD1),
    .EX_RD2(EX_RD2),
    .EX_imm32(EX_imm32),
    .EX_PC(EX_PC),
	 .EX_jump(EX_jump)
);

//E_Control
Control E_Control(
    .Instr(EX_Instr),
    .ALUop(E_ALUControl),
    .RegSrc(E_RegSrc),
    .rs(E_rs),
    .rt(E_rt),
    .rd(E_rd),
    .RegWrite(E_RegWrite),
    .RegDest(E_RegDest),
	.MemToReg(E_MemToReg_sign),
	.start(E_start),
	.MDUop(E_MDUop),
	.HIWrite(E_HIWrite),
	.LOWrite(E_LOWrite),
	.HIRead(E_HIRead),
	.LORead(E_LORead)
);


//E_ALU
E_ALU e_alu(
    .SrcA(E_Forward_rs),
    .SrcB(E_ALU_SrcB),
    .ALUControl(E_ALUControl),
    .Res(E_ALU_Result)
);



//E_MDU
E_MDU e_mdu(
	 .SrcA(E_Forward_rs),
	 .SrcB(E_Forward_rt),
	 .clk(clk),
	 .reset(reset),
	 .start(E_start),
	 .MDUop(E_MDUop),
	 .HIWrite(E_HIWrite),
	 .LOWrite(E_LOWrite),
	 .HIRead(E_HIRead),
	 .LORead(E_LORead),
	 .HI(E_HI),
	 .LO(E_LO),
	 .busy(E_busy),
	 .MDU_res(E_MDU_res)
);

//EX_MEM_REG
EX_MEM_REG ex_mem_reg(
    .clk(clk),
    .reset(reset),
    .WE(1'b1),
    .EX_PC(EX_PC),
    .EX_Instr(EX_Instr),
    .E_ALU_Result(E_ALU_Result),
    .EX_RD2(E_Forward_rt),
    .E_MDU_Result(E_MDU_res),
	 .EX_jump(EX_jump),
    .MEM_Instr(MEM_Instr),
    .MEM_ALU_Result(MEM_ALU_Result),
    .MEM_RD2(MEM_RD2),
    .MEM_PC(MEM_PC),
    .MEM_MDU_Result(MEM_MDU_Result),
	 .MEM_jump(MEM_jump)
);


//M_Control
Control M_Control(
    .Instr(MEM_Instr),
    .MemWrite(M_MemWrite),
    .rs(M_rs),
    .rt(M_rt),
    .rd(M_rd),
    .MemToReg(M_MemToReg_sign),
    .RegDest(M_RegDest),
    .RegWrite(M_RegWrite),
	 .BEop(M_BEop),
	 .DMop(M_DMop)
);

//"DM"
assign m_data_addr = MEM_ALU_Result;
assign m_data_wdata = (M_DMop == 3'd1) ?  M_WD_Forward : 
                        (M_DMop == 3'd2 && MEM_ALU_Result[1]) ?  {M_WD_Forward[15:0],m_data_rdata[15:0]} :
                            (M_DMop == 3'd2 && ~MEM_ALU_Result[1]) ?  {m_data_rdata[31:16],M_WD_Forward[15:0]} :
                                (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b00) ?  {m_data_rdata[31:8],M_WD_Forward[7:0]} :
                                    (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b01) ?  {m_data_rdata[31:16],M_WD_Forward[7:0],m_data_rdata[7:0]} :
                                        (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b10) ?  {m_data_rdata[31:24],M_WD_Forward[7:0],m_data_rdata[15:0]} :
                                            (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b11) ?  {M_WD_Forward[7:0],m_data_rdata[23:0]} : M_WD_Forward;
assign m_data_byteen = (M_DMop == 3'd1) ? 4'b1111 :
                            (M_DMop == 3'd2 && MEM_ALU_Result[1]) ? 4'b1100 :
                                (M_DMop == 3'd2 && ~MEM_ALU_Result[1]) ? 4'b0011 :
                                    (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b00) ? 4'b0001 :
                                        (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b01) ? 4'b0010 :
                                            (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b10) ? 4'b0100 :
                                                (M_DMop == 3'd3 && MEM_ALU_Result[1:0] == 2'b11) ? 4'b1000 : 4'b0000;
assign m_inst_addr = MEM_PC;
assign M_DM_RD = m_data_rdata;

//M_BE
M_BE m_be(
	 .A(MEM_ALU_Result[1:0]),
	 .Din(M_DM_RD),
	 .Op(M_BEop),
	 .Dout(M_Dout)
);

//MEM_WB_REG
MEM_WB_REG mem_wb_reg(
    .clk(clk),
    .reset(reset),
    .WE(1'b1),
    .MEM_PC(MEM_PC),
    .MEM_Instr(MEM_Instr),
    .MEM_ALU_Result(MEM_ALU_Result),
    .M_DM_RD(M_Dout),
    .MEM_MDU_Result(MEM_MDU_Result),
	 .MEM_jump(MEM_jump),
    .WB_PC(WB_PC),
    .WB_Instr(WB_Instr),
    .WB_ALU_Result(WB_ALU_Result),
    .WB_DM_RD(WB_DM_RD),
    .WB_MDU_Result(WB_MDU_Result),
	 .WB_jump(WB_jump)
);



//Stall
Stall stall(
    .D_Instr(ID_Instr),
    .E_Instr(EX_Instr),
    .M_Instr(MEM_Instr),
    .Stall(Stall_sign),
	.busy(E_busy)
);

//Forward
Forward forward(
    .EX_Forward(EX_Forward),
    .MEM_Forward(MEM_Forward),
    .WB_Forward(WB_Forward),
    .E_Instr(EX_Instr),
    .M_Instr(MEM_Instr),
    .W_Instr(WB_Instr)
);


//WB_Control
Control WB_Control(
    .Instr(WB_Instr),
    .RegWrite(W_RegWrite),
    .RegDest(W_RegDest),
    .MemToReg(W_MemToReg_sign)
);



endmodule
