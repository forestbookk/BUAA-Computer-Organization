`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:29 11/22/2023 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
    input wire clk,
    input wire reset,
	 input wire[5:0] HWInt,
	 output wire[31:0] macroscopic_pc,
	 output wire IG_Response,
	 
    input wire[31:0] i_inst_rdata, //F_Instr 
    output wire[31:0] i_inst_addr, //F_PC
	 
    output wire[31:0] m_inst_addr, //M_PC
	 output wire[31:0] m_data_addr, //DM_Address
	 input wire[31:0] m_data_rdata, //DM Data Read Raw
    output wire[31:0] m_data_wdata,//DM Data Write Deal
    output wire[3 :0] m_data_byteen,//DM Byte En
    
    output wire w_grf_we,           //RFWrEn
    output wire[4:0] w_grf_addr,    //W_A3
    output wire[31:0] w_grf_wdata,  //W_RW
    output wire[31:0] w_inst_addr   //W_PC
   );
	
	 /****异常*****/
	 wire[4:0] F_ExcCode,D_ExcCode,M_ExcCode,E_ExcCode,W_ExcCode;
	 wire[4:0] FD_ExcCode,DE_ExcCode,EM_ExcCode,MW_ExcCode;
	 
    /***Stall&Forward****/
    wire Stall;
	 wire E_Forward, M_Forward, W_Forward;
	
	 /****写使能*****/
	 wire FD_REG_WrEn, DE_REG_WrEn, EM_REG_WrEn, MW_REG_WrEn;
	 /****刷新*******/
	 wire FD_REG_flush, DE_REG_flush, EM_REG_flush, MW_REG_flush;//插入nop的flush控制信号
	 /****跳转******/
	 wire D_b_jump, E_b_jump, M_b_jump, W_b_jump;//CMP的输出：B指令是否跳转
	 /****BD*******/
	 wire F_isBD, D_isBD, E_isBD, M_isBD;
	 /****F级*****/
    wire[31:0] F_NPC;
    wire[31:0] F_Instr;
    wire[31:0] F_PC;
	 wire IFU_WrEn;
	 
	 /*****D级****/
	 wire[31:0] D_Instr;
	 wire[31:0] D_PC;
	 wire[31:0] FD_rs;//处理转发后的寄存器rs值
    wire[31:0] FD_rt;//处理转发后的寄存器rt值
	 wire[1:0] EXTOp; wire[31:0] D_E32;
    wire[3:0] NPCOp;
	 wire RFWrEn; wire[2:0] RFWRSel,RFWDSel; wire[4:0] D_A3; wire[31:0] D_V1, D_V2;  	
    wire[2:0] CMPOp;
	 wire D_Calc_r,D_Calc_i,D_Lui,D_Md,D_Mt,D_Mf,D_Load,D_Store,
	      D_J_l,D_Jr,D_Branch,D_Mfc0,D_Mtc0,D_Eret;
    wire D_isAri,D_isLw,D_isLb,D_isLh,D_isLoad,D_isSw,D_isSh,D_isSb,D_isStore;//部分引出端口
	 wire D_isSyscall,D_isRI;	
	 
	 /*****E级****/	 
	 wire[31:0] E_Instr;
    wire[31:0] E_PC;
	 wire[31:0] E_V1;
    wire[31:0] E_V2;
    wire[31:0] E_E32;
	 wire[4:0] E_A3;
    wire[31:0] FE_rs;//处理转发后的寄存器rs值
    wire[31:0] FE_rt;//处理转发后的寄存器rt值	 
    wire[3:0] ALUOp; wire[1:0] ALUASel, ALUBSel; wire[31:0] E_ALU_RES;
	 wire[3:0] MDUOp; wire[31:0] HI, LO; wire Start, Busy;
	 wire[31:0] E_A, E_B, E_AO;
    wire E_Calc_r,E_Calc_i,E_Lui,E_Md,E_Mt,E_Mf,E_Load,E_Store,
	      E_J_l,E_Jr,E_Branch,E_Mfc0,E_Mtc0,E_Eret;
	 wire E_isAri,E_isLw,E_isLb,E_isLh,E_isLoad,E_isSw,E_isSh,E_isSb,E_isStore;
	 wire E_isSyscall,E_isRI;
	 wire E_isALUOv;
	 
	 /*****M级****/
    wire[31:0] M_Instr;
    wire[31:0] M_PC;
	 wire[31:0] M_V2;
	 wire[31:0] M_DR;
	 wire[31:0] M_AO;
	 wire[4:0] M_A3;
	 wire[31:0] FM_DW;//处理转发后的DM写数据
	 wire CP0WrEn, Req; wire[31:0] CP0In, M_CP0Out, EPCOut;
	 wire DMWrEn; wire[1:0] DMOp; wire DMEXTOp;
    wire M_Calc_r,M_Calc_i,M_Lui,M_Md,M_Mt,M_Mf,M_Load,M_Store,
	      M_J_l,M_Jr,M_Branch,M_Mfc0,M_Mtc0,M_Eret;
    wire M_isAri,M_isLw,M_isLb,M_isLh,M_isLoad,M_isSw,M_isSh,M_isSb,M_isStore;
	 wire M_isSyscall,M_isRI;
	 
	 /*****W级****/
    wire[31:0] W_Instr;
	 wire[31:0] W_PC;
	 wire[31:0] W_AO;
    wire[31:0] W_DR;
	 wire[31:0] W_CP0Out;
	 wire[4:0] W_A3;
	 wire[31:0] W_RW;
	 wire W_Calc_r,W_Calc_i,W_Lui,W_Md,W_Mt,W_Mf,W_Load,W_Store,
	      W_J_l,W_Jr,W_Branch,W_Mfc0,W_Mtc0,W_Eret;
	 wire W_isAri,W_isLw,W_isLb,W_isLh,W_isLoad,W_isSw,W_isSh,W_isSb,W_isStore;
	 wire W_isSyscall,W_isRI;
	 
/*****外置存储器******/
    assign macroscopic_pc = M_PC;
    assign F_Instr = F_ExcCode ? 32'd0 : i_inst_rdata;
	 
    assign i_inst_addr = F_PC;
	 assign m_data_addr = M_AO;
	 assign m_inst_addr = M_PC;
	 assign w_grf_we = RFWrEn;
	 assign w_grf_addr = W_A3;
	 assign w_grf_wdata = W_RW;
	 assign w_inst_addr = W_PC;	
	 
/*******写使能&刷新&BD*********/
    assign IFU_WrEn = !Stall;
	 
    assign FD_REG_WrEn = !Stall;
	 assign DE_REG_WrEn = 1'b1;
	 assign EM_REG_WrEn = 1'b1;
	 assign MW_REG_WrEn = 1'b1;
	 
	 //高电平插入nop
	 assign FD_REG_flush = 1'b0;//清除延迟槽情况使用：assign FD_REG_flush = !D_b_jump && CMPOp==`CMPOp_BXXZALL;
	 assign DE_REG_flush = Stall;//阻塞情况使用：指令阻塞在D级，插入nop进E级流水
	 assign EM_REG_flush = 1'b0;
	 assign MW_REG_flush = 1'b0;
	 
    //is Branch Delay
    assign F_isBD = (D_Branch||D_Jr||D_J_l); 
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
	 assign E_AO = (MDUOp==`MDUOp_mfhi)? HI:
					  ((MDUOp==`MDUOp_mflo)? LO:
					  	 E_ALU_RES);							 
	 assign W_RW =    (W_A3 == 0) ? 0 :
	                 ((RFWDSel==`RFWDSel_EU) ? W_AO :
                    ((RFWDSel==`RFWDSel_DMRD) ? W_DR : 
						  ((RFWDSel==`RFWDSel_PC8) ? W_PC+32'd8 : 
						  ((RFWDSel==`RFWDSel_CP0) ? W_CP0Out :
						   `REPOSITION_DATA)))); 							
/******转发********/
    assign E_Forward = E_J_l || E_Lui;
	 assign M_Forward = M_Calc_r || M_Calc_i || M_J_l || M_Lui || M_Mf;
	 assign W_Forward = W_Calc_r || W_Calc_i || W_J_l || W_Lui || W_Mf || W_Load || W_Mfc0;
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
	 
/******异常码*******/	 
    wire F_Exc_AdEL = ((|F_PC[1:0])||(!(F_PC >= `StartPC && F_PC <= `EndPC)))&&(!D_Eret);
	 assign F_ExcCode = F_Exc_AdEL ? `Exc_AdEL : 5'd0;
	 wire D_Exc_Syscall = D_isSyscall;
	 wire D_Exc_RI = D_isRI;
	 assign D_ExcCode = (|(FD_ExcCode)) ?  FD_ExcCode :
	                     ((D_Exc_Syscall) ? `Exc_Syscall :
	                     ((D_Exc_RI)      ? `Exc_RI : 
							     5'd0));
    wire E_Exc_Ov = (E_isALUOv && M_isAri);
	 wire E_Exc_AdEL = (E_isALUOv && M_isLoad);
	 wire E_Exc_AdES = (E_isALUOv && M_isStore);
	 assign E_ExcCode = (|(DE_ExcCode)) ? DE_ExcCode :
                       ((E_Exc_Ov) ? `Exc_Ov :
                       ((E_Exc_AdEL) ? `Exc_AdEL :
                       ((E_Exc_AdES) ? `Exc_AdES :
                         5'd0)));							 
	 
	 wire TC0AddrRange = (M_AO >= `StartTC0&&M_AO <= `EndTC0);
	 wire TC1AddrRange = (M_AO >= `StartTC1&&M_AO <= `EndTC1);
	 wire DMAddrRange  = (M_AO >= `StartDM &&M_AO <= `EndDM);
	 wire IntAddrRange = (M_AO >= `StartInt&&M_AO <= `EndInt);
	 
	 wire ErrAlign      = (DMOp==`DMOp_w && |M_AO[1:0])|| (DMOp==`DMOp_h && M_AO[0]);
	 wire ErrOutOfRange = (!DMAddrRange && !TC0AddrRange && !TC1AddrRange && !IntAddrRange);
    wire ErrTimer      = (DMOp!=`DMOp_w) && (TC0AddrRange||TC1AddrRange);						
	 wire ErrCount      = (M_AO>=32'h0000_7F08 && M_AO<=32'h0000_7F0B)||
	                      (M_AO>=32'h0000_7F18 && M_AO<=32'h0000_7F1B);
	 wire M_Exc_AdEL = (M_isLoad && (ErrAlign||ErrOutOfRange||ErrTimer));
	 wire M_Exc_AdES = (M_isStore && (ErrAlign||ErrOutOfRange||ErrTimer||ErrCount));
	 assign M_ExcCode   = (|EM_ExcCode) ? EM_ExcCode :
	                      ((M_Exc_AdEL)? `Exc_AdEL :
							    ((M_Exc_AdES)? `Exc_AdES :
							      5'd0));
	                  
/*******暂停*********/
Stall _stall(
    .D_Instr(D_Instr),
    .E_Instr(E_Instr),
	 .M_Instr(M_Instr),
	 .E_A3(E_A3),
	 .M_A3(M_A3),
	 .Start(Start),
	 .Busy(Busy),
	 .Stall(Stall)
);
/*******F级**********/
wire[31:0] temp_F_PC;
PC F_pc(
    .WE(IFU_WrEn),
	 .clk(clk),
	 .req(Req),
	 .reset(reset),
	 .NPC(F_NPC),
	 .PC(temp_F_PC)
);
assign F_PC = D_Eret ? EPCOut : temp_F_PC;
/******D级*********/
FD_REG FD_REG(
    .WE(FD_REG_WrEn),
	 .flush(FD_REG_flush),
	 .clk(clk),
	 .reset(reset),
	 .req(Req),
	 .F_Instr(F_Instr),
	 .F_PC(F_PC),
	 .D_Instr(D_Instr),
	 .D_PC(D_PC),
	 
	 .F_isBD(F_isBD),
	 .D_isBD(D_isBD),
	 .F_ExcCode(F_ExcCode),
	 .FD_ExcCode(FD_ExcCode)
);
CU D_cu(
    .opcode(D_Instr[31:26]),
	 .func(D_Instr[5:0]),
	 .Instr(D_Instr),
	 
	 .RFWRSel(RFWRSel),
	 .NPCOp(NPCOp),
	 .EXTOp(EXTOp),
	 .CMPOp(CMPOp),
	 
	 .calc_r(D_Calc_r),
    .calc_i(D_Calc_i),
	 .lui(D_Lui),
	 .md(D_Md),
	 .mt(D_Mt),
	 .mf(D_Mf),
    .load(D_Load),
    .store(D_Store),
    .branch(D_Branch),
    .jr(D_Jr),
    .j_l(D_J_l),
	 .mfc0(D_Mfc0),
	 .eret(D_Eret),
	
	 .isSyscall(D_isSyscall),
	 .isRI(D_isRI)
);								
NPC D_npc(
    .req(Req),
	 .EPC(EPCOut),
	 
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
	 .D_Instr(D_isRI ? `REPOSITION_DATA : D_Instr),
	 .D_PC(D_PC),
	 .E_A3(E_A3),
	 .E_Instr(E_Instr),
	 .E_PC(E_PC),
	 .E_V1(E_V1),
	 .E_V2(E_V2),
	 .E_E32(E_E32),
	 .clk(clk),
	 .reset(reset),
	 .req(Req),
	 
	 .D_isBD(D_isBD),
	 .E_isBD(E_isBD),
	 .D_ExcCode(D_ExcCode),
	 .DE_ExcCode(DE_ExcCode)
);
CU E_cu(
    .opcode(E_Instr[31:26]),
	 .func(E_Instr[5:0]),
	 .Instr(E_Instr),
	 
	 .Start(Start),
	 .MDUOp(MDUOp),
	 .ALUOp(ALUOp),
	 .ALUASel(ALUASel),
	 .ALUBSel(ALUBSel),
	 
	 .calc_r(E_Calc_r),
	 .calc_i(E_Calc_i),
	 .lui(E_Lui),
	 .md(E_Md),
	 .mt(E_Mt),
	 .mf(E_Mf),
	 .load(E_Load),
    .store(E_Store),
	 .branch(E_Branch),
	 .jr(E_Jr),
	 .j_l(E_J_l),
	 .mfc0(E_Mfc0),
	 
	 .isAri(E_isAri),
	 .isLw(E_isLw),
	 .isLh(E_isLh),
	 .isLb(E_isLb),
	 .isLoad(E_isLoad),
	 .isSw(E_isSw),
	 .isSh(E_isSh),
	 .isSb(E_isSb),
	 .isStore(E_isStore),
	 .isSyscall(E_isSyscall),
	 .isRI(E_isRI)
);				 
ALU E_alu(
    .A(E_A),
	 .B(E_B),
	 .ALUOp(ALUOp),
	 .AO(E_ALU_RES),
	 
	 .isALUOv(E_isALUOv)
);
MDU E_mdu(
    .A(E_A),
	 .B(E_B),
	 .LO(LO),
	 .HI(HI),
	 .Start(Start),
	 .Busy(Busy),
	 .clk(clk),
	 .reset(reset),
	 .MDUOp(MDUOp),
	 
	 .req(Req)
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
	 .reset(reset),
	 .req(Req),
	 
	 .E_isBD(E_isBD),
	 .M_isBD(M_isBD),
	 .E_ExcCode(E_ExcCode),
	 .EM_ExcCode(EM_ExcCode)
);
CU M_cu(
    .opcode(M_Instr[31:26]),
	 .func(M_Instr[5:0]),
	 .Instr(M_Instr),
	 
	 .DMOp(DMOp),
	 .DMEXTOp(DMEXTOp),
	 .DMWrEn(DMWrEn),
	 .CP0WrEn(CP0WrEn),
	 
	 .calc_r(M_Calc_r),
	 .calc_i(M_Calc_i),
	 .lui(M_Lui),
	 .md(M_Md),
	 .mt(M_Mt),
	 .mf(M_Mf),
	 .load(M_Load),
	 .store(M_Store),
	 .branch(M_Branch),
	 .jr(M_Jr),
	 .j_l(M_J_l),
	 .mfc0(M_Mfc0),
	 
	 .isAri(M_isAri),
	 .isLw(M_isLw),
	 .isLh(M_isLh),
	 .isLb(M_isLb),
	 .isLoad(M_isLoad),
	 .isSw(M_isSw),
	 .isSh(M_isSh),
	 .isSb(M_isSb),
	 .isStore(M_isStore),
	 .isSyscall(M_isSyscall),
	 .isRI(M_isRI)
);
BE M_be(
    .WE(DMWrEn),
	 .WD_raw(FM_DW),
	 .WD(m_data_wdata),
	 .DMRD_raw(m_data_rdata),
	 .DMAddr(M_AO),
	 .DMOp(DMOp),
	 .DMEXTOp(DMEXTOp),
	 .DMByteEn(m_data_byteen),
	 .DMRD(M_DR)
);
CP0 _cp0(
    .clk(clk),
	 .reset(reset),
	 .WE(CP0WrEn),
	 
	 .CP0Addr(M_Instr[15:11]),
	 .CP0In(FM_DW),
	 .CP0Out(M_CP0Out),
	 .VPC(M_PC),
	 .BDIn(M_isBD),
	 .ExcCodeIn(M_ExcCode),
	 .HWInt(HWInt),
	 .EXLClr(M_Eret),
	 .EPCOut(EPCOut),
	 .Req(Req),
	 .IG_Response(IG_Response)
);
/********W级*********/
MW_REG MW_REG(
    .WE(MW_REG_WrEn),
	 .flush(MW_REG_flush),
	 .M_b_jump(M_b_jump),
	 .W_b_jump(W_b_jump),
	 .M_CP0Out(M_CP0Out),
	 .W_CP0Out(W_CP0Out),
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
	 .Instr(W_Instr),
	 
	 .RFWrEn(RFWrEn),
	 .RFWDSel(RFWDSel),
	 
	 .calc_r(W_Calc_r),
	 .calc_i(W_Calc_i),
	 .lui(W_Lui),
	 .md(W_Md),
	 .mt(W_Mt),
	 .mf(W_Mf),
	 .load(W_Load),
	 .j_l(W_J_l),
	 .mfc0(W_Mfc0),
	 
	 .isAri(W_isAri),
	 .isLw(W_isLw),
	 .isLh(W_isLh),
	 .isLb(W_isLb),
	 .isLoad(W_isLoad),
	 .isSw(W_isSw),
	 .isSh(W_isSh),
	 .isSb(W_isSb),
	 .isStore(W_isStore),
	 .isSyscall(W_isSyscall),
	 .isRI(W_isRI)
);

endmodule
