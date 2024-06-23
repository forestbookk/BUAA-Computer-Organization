`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:18 10/31/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input wire[31:0] A,
    input wire[31:0] B,
    input wire[3:0] ALUOp,
    output wire[31:0] AO
    );
	 
    //ALU
    assign AO = (ALUOp==`ADD) ? A + B :
                   ((ALUOp==`SUB) ? A - B:
						 ((ALUOp==`OR)  ? A | B:
						  `REPOSITION_DATA));	
						  
    
						  
endmodule
