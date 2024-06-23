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
	 reg[4:0] had_odd_one_bits_A;
	 
    //ALU
    assign ALURes = (ALUOp==`ADD) ? A + B :
                   ((ALUOp==`SUB) ? A - B:
						 ((ALUOp==`OR)  ? A | B:
						 ((ALUOp==`LUI) ? (B<<16):
						  `REPOSITION_DATA)));	
	 					  
    //CMP
	 always @* begin
	     if((CMPOp==`CMPOp_beq)&&(A==B))
		  begin
		      Branch = 1;
	     end 
		  else if(CMPOp==`CMPOp_bsoal) 
		  begin
            had_odd_one_bits_A = A[31]+A[30]+A[29]+A[28]+A[27]+A[26]+A[25]+A[24]
				                    +A[23]+A[22]+A[21]+A[20]+A[19]+A[18]+A[17]+A[16]
										  +A[15]+A[14]+A[13]+A[12]+A[11]+A[10]+A[9]+A[8]
										  +A[7]+A[6]+A[5]+A[4]+A[3]+A[2]+A[1]+A[0];	  
		      if(had_odd_one_bits_A[0]) 
				begin
				    Branch = 1;
				end 
				else 
				begin
				    Branch = 0;
				end
		  end 
		  else 
		  begin
		      Branch = 0;
		  end
	 end
						  
endmodule
