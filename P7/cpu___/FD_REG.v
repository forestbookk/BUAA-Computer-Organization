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
    input wire clk,
    input wire reset,
	 input wire flush,
    input wire WE,
	 input wire req,
	 input wire[4:0] F_ExcCode,
	 output reg[4:0] FD_ExcCode,
	 
	 input wire F_isBD,
	 output reg D_isBD,
	 
    input wire[31:0] F_Instr,
    input wire[31:0] F_PC,
    output reg[31:0] D_Instr,
    output reg[31:0] D_PC
    );
	 
	 initial 
		 begin
			 D_Instr = 32'h0000_0000;
			 D_PC = 32'h0000_0000;
		 end
	 
    always @(posedge clk)
        begin
			  if(reset) begin
					  D_Instr <= 32'h0000_0000;
					  D_PC <= 32'h0000_0000;
					  FD_ExcCode <= 0;
					  D_isBD <= 0;
				  end
			  else if(req) begin
			        D_Instr <= 32'h0000_0000;
					  D_PC <= 32'h0000_4180 ;
					  FD_ExcCode <= 0;
					  D_isBD <= 0;
			     end
			  else if(WE && flush) begin
			        D_Instr <= 32'h0000_0000;
					  D_PC <= 32'h0000_0000;
					  FD_ExcCode <= 0;
					  D_isBD <= F_isBD;
              end			  
			  else if(WE) begin
					  D_Instr <= (|F_ExcCode)?0:F_Instr;
					  D_PC <= F_PC;
					  FD_ExcCode <= F_ExcCode;
					  D_isBD <= F_isBD;
				  end					  
		  end		  

endmodule
