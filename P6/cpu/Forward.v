`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:57 11/08/2023 
// Design Name: 
// Module Name:    Forward 
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
module Forward(
    //地址
	 input wire[31:0] D_PC,
	 input wire[31:0] E_PC,
	 input wire[31:0] M_PC,
    //指令
    input wire[31:0] D_Instr,
    input wire[31:0] E_Instr,
    input wire[31:0] M_Instr,
    input wire[31:0] W_Instr,
	 //写寄存器地址
	 input wire[4:0] E_A3,
	 input wire[4:0] M_A3,
	 input wire[4:0] W_A3,
	 //转发来源
	 input wire[31:0] D_V2,
	 input wire[31:0] D_V1,
	 input wire[31:0] E_V2,
	 input wire[31:0] M_V2,
	 input wire[31:0] E_V1,
	 input wire[31:0] M_AO,
	 input wire[31:0] W_RW,
	 //转发结果
    output wire[31:0] FD_NPCRA,
    output wire[31:0] FD_rs,
    output wire[31:0] FD_rt,
	 output wire[31:0] FE_rs,
	 output wire[31:0] FE_rt,
	 output wire[31:0] FM_DW
    );
	 
	 wire E_Forward, M_Forward, W_Forward;
	 
	 wire E_J_l;
	 CU F_E_Decode(
	     .opcode(E_Instr[31:26]),
		  .func(E_Instr[5:0]),
		  .J_l(E_J_l)
	 );
	 
	 wire M_Calc_r, M_Calc_i, M_J_l;
	 CU F_M_Decode(
	     .opcode(M_Instr[31:26]),
		  .func(M_Instr[5:0]),
		  .Calc_r(M_Calc_r),
		  .Calc_i(M_Calc_i),
		  .J_l(M_J_l)
	 );
	 
	 wire W_Calc_r, W_Calc_i, W_Load, W_J_l;
	 CU F_W_Decode(
	     .opcode(W_Instr[31:26]),
		  .func(W_Instr[5:0]),
		  .Calc_r(W_Calc_r),
		  .Calc_i(W_Calc_i),
		  .Load(W_Load),
		  .J_l(W_J_l)
	 );
	 
	 assign E_Forward = E_J_l;
	 assign M_Forward = M_Calc_r || M_Calc_i || M_J_l;
	 assign W_Forward = W_Calc_r || W_Calc_i || W_J_l || W_Load;
	 
	 //转发
    assign FD_NPCRA = (E_A3==5'd31 && E_Forward)? E_PC+32'd8:
                     ((M_A3==5'd31 && M_Forward)? ((M_Calc_r||M_Calc_i)?M_AO:M_PC+32'd8):
						   ((W_A3==5'd31 && W_Forward)? W_RW:
						     D_V1));
	 assign FD_rs = (D_Instr[25:21]==E_A3 && E_A3 && E_Forward)? E_PC+32'd8:
						  ((D_Instr[25:21]==M_A3 && M_A3 && M_Forward)? ((M_J_l)?M_PC+32'd8:M_AO):
						  ((D_Instr[25:21]==W_A3 && W_A3 && W_Forward)? W_RW:
						    D_V1));
	 assign FD_rt = (D_Instr[20:16]==E_A3 && E_A3 && E_Forward)? E_PC+32'd8:
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
endmodule
