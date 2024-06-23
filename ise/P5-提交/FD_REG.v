`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:48:38 11/07/2023 
// Design Name: 
// Module Name:    FD_REG 
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
module FD_REG(
    input wire[31:0] F_Instr,
    input wire[31:0] F_PC,
    output reg[31:0] D_Instr,
    output reg[31:0] D_PC,
    input wire clk,
    input wire reset,
    input wire WE
    );
	 
	 initial 
		 begin
			 D_Instr = 32'h0000_0000;
			 D_PC = 32'h0000_3000;
		 end
	 
    always @(posedge clk)
        begin
			  if(reset) 
				  begin
					  D_Instr <= 32'h0000_0000;
					  D_PC <= 32'h0000_3000;
				  end
			  else if(WE) 
				  begin
					  D_Instr <= F_Instr;
					  D_PC <= F_PC;
				  end					  
		  end		  

endmodule
