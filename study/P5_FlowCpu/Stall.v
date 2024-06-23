`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:07 11/03/2022 
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
`default_nettype none
module Stall(
		  input wire [31:0] D_Instr,
        input wire [31:0] E_Instr,
        input wire [31:0] M_Instr,
        output wire Stall
    );
//ÅÐ¶ÏD½×¶Î
    wire D_load,D_store,D_cal_r,D_cal_i,D_jal,D_jr,D_beq;
    wire [4:0] D_rs,D_rt;
    Control D_Stall_Control(
        .Instr(D_Instr),
        .cal_i(D_cal_i),
        .cal_r(D_cal_r),
        .load(D_load),
        .store(D_store),
		  .jal(D_jal),
		  .beq(D_beq),
		  .jr(D_jr),
        .rs(D_rs),
        .rt(D_rt)
    );
//Tuse
    wire [1:0] T_use_rs = (D_cal_i || D_cal_r || D_load || D_store) ? 2'b01 :
																				(D_jr || D_beq) ? 2'b00 : 2'b11;
    wire [1:0] T_use_rt = (D_store) ? 2'b10:
                                    (D_cal_r) ? 2'b01 :
												(D_beq) ? 2'b00 : 2'b11;
	//ID/EX½×¶Î
	wire E_load,E_store,E_cal_r,E_cal_i,E_RegWrite;
    wire [4:0] E_RegDest;
	Control E_Stall_Control(
        .Instr(E_Instr),
        .cal_i(E_cal_i),
        .cal_r(E_cal_r),
        .load(E_load),
        .store(E_store),
        .RegDest(E_RegDest),
        .RegWrite(E_RegWrite)
    );
//E-Tnew
    wire [1:0] T_new_E = (E_cal_i||E_cal_r) ? 2'b01 :
                                        (E_load) ? 2'b10 :2'b00;
//E-Tnew-end
//EX/MEM½×¶Î
    wire M_load;
    wire [4:0] M_RegDest;
    wire M_RegWrite;
    Control M_Stall_Control(
        .Instr(M_Instr),
        .load(M_load),
        .RegDest(M_RegDest),
        .RegWrite(M_RegWrite)
    );
//M-Tnew
    wire [1:0] T_new_M = (M_load) ? 2'b01 : 2'b00;
//M-Tnew_end
//Stall
    wire Stall_rs_E = (E_RegDest == D_rs) && (E_RegDest) && (T_use_rs < T_new_E) && E_RegWrite;
    wire Stall_rt_E = (E_RegDest == D_rt) && (E_RegDest) && (T_use_rt < T_new_E) && E_RegWrite;
    wire Stall_E = Stall_rs_E || Stall_rt_E;
    wire Stall_rs_M = (M_RegDest == D_rs) && (M_RegDest) && (T_use_rs < T_new_M) && M_RegWrite;
    wire Stall_rt_M = (M_RegDest == D_rt) && (M_RegDest) && (T_use_rt < T_new_M) && M_RegWrite;
    wire Stall_M = Stall_rs_M || Stall_rt_M;
    assign Stall = Stall_M || Stall_E;
endmodule
