`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:52 10/31/2023 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input wire[15:0] IMM16,
    input wire[1:0] EXTOp,
    output wire[31:0] IMMEXT
    );
	 
	 assign IMMEXT =  EXTOp==`EXTOp_lui ? {IMM16,{16{1'b0}}} :
	                ((EXTOp==`EXTOp_zero || (IMM16[15]==0)) ? {{16{1'b0}},IMM16}:
                	 {{16{1'b1}},IMM16});


endmodule
