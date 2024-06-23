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
    output reg[31:0] AO
    );
	 
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
       else 
		     begin
			      AO = `REPOSITION_DATA;
		     end
	 end
   
						  
endmodule
