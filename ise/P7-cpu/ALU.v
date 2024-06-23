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
    output reg[31:0] AO,
	 
	 output wire isALUOv
    );
	 
	 wire[32:0] Exc_temp = (ALUOp==`ADD) ? {A[31],A}+{B[31],B} :
                     	 ((ALUOp==`SUB) ? {A[31],A}-{B[31],B} :
								   `REPOSITION_DATA);
	 assign isALUOv = (Exc_temp[32]!=Exc_temp[31]) ? 1 : 0;
	 
    //ALU
	 always @* begin
	    if(ALUOp==`ADD)
		     begin
			      AO = A + B;
			  end
		 else if(ALUOp==`SUB)
           begin
			      AO = A - B;
           end
       else if(ALUOp==`OR)
           begin
			      AO = A | B;
           end
		 else if(ALUOp==`AND)
           begin
			      AO = A & B;
           end			  
		 else if(ALUOp==`SLT)
           begin
			      AO = ($signed({A[31],A[31:0]}) < $signed({B[31],B[31:0]})) ? {{31{1'b0}},1'b1} : `REPOSITION_DATA;
           end	
		 else if(ALUOp==`SLTU)
           begin
			      AO = ({1'b0, A[31:0]} < {1'b0, B[31:0]}) ? {{31{1'b0}},1'b1}:`REPOSITION_DATA;
           end			  
       else 
		     begin
			      AO = `REPOSITION_DATA;
		     end
	 end
   
						  
endmodule
