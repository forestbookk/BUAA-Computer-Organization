`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:01:34 11/07/2023 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input wire[31:0] D1,
    input wire[31:0] D2,
    input wire[2:0] CMPOp,
    output reg Branch
    );
	 
	 always @* 
		 begin
			  if((CMPOp==`CMPOp_beq)&&(D1==D2))
				  begin
						Branch = 1;
				  end 
			  else if(CMPOp==`CMPOp_bne && D1!=D2)
			     begin
				      Branch = 1;
				  end
			  else
				  begin
						Branch = 0;
				  end
		 end


endmodule
