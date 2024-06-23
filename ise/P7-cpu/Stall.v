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
	 
	 wire D_Calc_r,D_Calc_i,D_Lui,D_Md,D_Mt,D_Mf,D_Load,D_Store,D_J_l,D_Jr,D_Branch,D_Mfc0,D_Mtc0,D_Eret;
	 CU S_D_Decode(
	     .opcode(D_Instr[31:26]),
		  .func(D_Instr[5:0]),
		  .Instr(D_Instr),
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
		  .mtc0(D_Mtc0),
		  .eret(D_Eret)
	 );
							  
	 wire E_Calc_r,E_Calc_i,E_Lui,E_Md,E_Mt,E_Mf,E_Load,E_Store,E_J_l,E_Jr,E_Branch,E_Mfc0,E_Mtc0,E_Eret;
	 wire E_rd = E_Instr[15:11];
	 CU S_E_Decode(
	     .opcode(E_Instr[31:26]),
		  .func(E_Instr[5:0]),
		  .Instr(E_Instr),
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
		  .mtc0(E_Mtc0),
		  .eret(E_Eret)
	 );
	 
	 wire M_Calc_r,M_Calc_i,M_Lui,M_Md,M_Mt,M_Mf,M_Load,M_Store,M_J_l,M_Jr,M_Branch,M_Mfc0,M_Mtc0,M_Eret;
	 wire M_rd = M_Instr[15:11];
	 CU S_M_Decode(
	     .opcode(M_Instr[31:26]),
		  .func(M_Instr[5:0]),
		  .Instr(M_Instr),
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
		  .mtc0(M_Mtc0),
		  .eret(M_Eret)
	 );
	 
	 wire T_use_rs = (D_Branch||D_Jr)? 2'b00:
	                  ((D_Calc_r||D_Calc_i||D_Md||D_Mt||D_Load||D_Store)? 2'b01:
							  2'b11);
	 wire T_use_rt = (D_Branch)? 2'b00:
                     ((D_Calc_r||D_Md)? 2'b01:
                     ((D_Store||D_Mtc0) ? 2'b10:
                       2'b11));
	 wire T_new_E =((E_Calc_r||E_Calc_i||E_Mf)? 2'b01:
                    ((E_Load||E_Mfc0) ? 2'b10:		
                      2'b00));					  
	 wire T_new_M = (M_Load||M_Mfc0)? 2'b01:2'b00;
	 
	 wire Stall_eret = (D_Eret) && ((E_Mtc0 && E_rd == 5'd14) || (M_Mtc0 && M_rd == 5'd14));
	 wire Stall_rs = ((D_rs_addr==E_A3)&&(D_rs_addr)&&(T_new_E>T_use_rs)) || (D_rs_addr==M_A3&&D_rs_addr&&T_new_M>T_use_rs)?1:0;
	 wire Stall_rt = ((D_rt_addr==E_A3)&&(D_rt_addr)&&(T_new_E>T_use_rt)) || (D_rt_addr==M_A3&&D_rt_addr&&T_new_M>T_use_rt)?1:0;
	 wire Stall_md = ((Busy||Start)&&(D_Mt||D_Mf)) ? 1 : 0;
	 assign Stall = Stall_rs || Stall_rt || Stall_md;
	 
endmodule
