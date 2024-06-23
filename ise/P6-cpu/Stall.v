`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:56 11/07/2023 
// Design Name: 
// Module Name:    Stall 
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
module Stall(
    input wire[31:0] D_Instr,
    input wire[31:0] E_Instr,
    input wire[31:0] M_Instr,
	 input wire[4:0] E_A3,
	 input wire[4:0] M_A3,
	 input wire Start,
	 input wire Busy,
    output wire Stall
    );
	 wire[4:0] D_rs_addr, D_rt_addr;
	 assign D_rs_addr = D_Instr[25:21];
	 assign D_rt_addr = D_Instr[20:16];
	 
	 wire D_Calc_r,D_Calc_i,D_Lui,D_Md,D_Mt,D_Mf,D_Load,D_Store,D_J_l,D_Jr,D_Branch;
	 CU S_D_Decode(
	     .opcode(D_Instr[31:26]),
		  .func(D_Instr[5:0]),
		  .RFWrEn(D_RFWrEn),
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
		  .j_l(D_J_l)
	 );
							  
	 wire E_Calc_r,E_Calc_i,E_Lui,E_Md,E_Mt,E_Mf,E_Load,E_Store,E_J_l,E_Jr,E_Branch;
	 CU S_E_Decode(
	     .opcode(E_Instr[31:26]),
		  .func(E_Instr[5:0]),
		  .RFWrEn(E_RFWrEn),
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
		  .j_l(E_J_l)
	 );
	 
	 wire M_Calc_r,M_Calc_i,M_Lui,M_Md,M_Mt,M_Mf,M_Load,M_Store,M_J_l,M_Jr,M_Branch;
	 CU S_M_Decode(
	     .opcode(M_Instr[31:26]),
		  .func(M_Instr[5:0]),
		  .RFWrEn(M_RFWrEn),
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
		  .j_l(M_J_l)
	 );
	 
	 wire[1:0] T_use_rs, T_use_rt, T_new_E, T_new_M;
	 wire Stall_rs, Stall_rt;
	 assign T_use_rs = (D_Branch||D_Jr||D_Lui)? 2'b00:
	                  ((D_Calc_r||D_Calc_i||D_Load||D_Store)? 2'b01:
							  2'b11);
	 assign T_use_rt = (D_Branch||D_Lui)? 2'b00:
                     ((D_Calc_r)? 2'b01:
                     ((D_Store) ? 2'b10:
                       2'b11));
	 assign T_new_E = (E_J_l||E_Branch||E_Store||E_Lui)? 2'b00:
                    ((E_Calc_r||E_Calc_i)? 2'b01:
                    ((E_Load) ? 2'b10:		
                      2'b00));					  
	 assign T_new_M = (M_Load)? 2'b01:2'b00;
	 assign Stall_rs = ((D_rs_addr==E_A3)&&(E_A3)&&(T_new_E>T_use_rs)) || (D_rs_addr==M_A3&&M_A3&&T_new_M>T_use_rs)?1:0;
	 assign Stall_rt = ((D_rt_addr==E_A3)&&(E_A3)&&(T_new_E>T_use_rt)) || (D_rt_addr==M_A3&&M_A3&&T_new_M>T_use_rt)?1:0;
	 assign Stall_md = ((Busy||Start)&&(D_Mt||D_Mf)) ? 1 : 0;
	 assign Stall = Stall_rs || Stall_rt || Stall_md;
	 
endmodule
