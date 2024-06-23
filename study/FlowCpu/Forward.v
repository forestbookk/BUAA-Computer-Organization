`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:05 11/03/2022 
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
`default_nettype none
module Forward(
    output wire EX_Forward,
    output wire MEM_Forward,
    output wire WB_Forward,
    input wire [31:0] E_Instr,
    input wire [31:0] M_Instr,
    input wire [31:0] W_Instr
    );
    wire E_jal;
    Control E_Forward_Control(
        .Instr(E_Instr),
        .jal(E_jal)
    );
    wire M_cal_r,M_cal_i,M_jal,M_MDU_c,M_MDU_f;
    Control M_Forward_Control(
        .Instr(M_Instr),
        .cal_i(M_cal_i),
        .jal(M_jal),
        .cal_r(M_cal_r),
		  .MDU_c(M_MDU_c),
		  .MDU_f(M_MDU_f)
    );
    wire W_cal_r,W_cal_i,W_load,W_jal,W_MDU_c,W_MDU_f,W_mfc0;
    Control W_Forward_Control(
        .Instr(W_Instr),
        .cal_i(W_cal_i),
        .jal(W_jal),
        .cal_r(W_cal_r),
        .load(W_load),
		  .MDU_c(W_MDU_c),
		  .MDU_f(W_MDU_f),
		  .mfc0(W_mfc0)
    );
    assign EX_Forward = E_jal;
    assign MEM_Forward = M_jal || M_cal_i || M_cal_r || M_MDU_f ;
    assign WB_Forward = W_jal || W_cal_i || W_cal_r || W_load || W_MDU_f || W_mfc0;
endmodule
