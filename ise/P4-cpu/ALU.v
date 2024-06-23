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
	 input wire[2:0] CMPOp,
	 output reg Branch,
    output wire[31:0] ALURes
    );
	 
    //ALU
    assign ALURes = (ALUOp==`ADD) ? A + B :
                   ((ALUOp==`SUB) ? A - B:
						 ((ALUOp==`OR)  ? A | B:
						 ((ALUOp==`LUI) ? (B<<16):
						  `REPOSITION_DATA)));	
						  
    //CMP
	 always @* 
		 begin
			  if((CMPOp==`CMPOp_beq)&&(A==B))
				  begin
						Branch = 1;
				  end 
			  else 
				  begin
						Branch = 0;
				  end
		 end
						  
endmodule
