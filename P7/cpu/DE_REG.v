`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:01 11/08/2023 
// Design Name: 
// Module Name:    DE_REG 
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
module DE_REG(
    input wire clk,
	 input wire flush,//×èÈû£º²åÈënop
	 input wire WE,
    input wire reset,
	 input wire req,
	 input wire[4:0] D_ExcCode,
	 output reg[4:0] DE_ExcCode,

    input wire D_isBD,
	 output reg E_isBD,
	 
	 input wire[31:0] D_V1,
	 output reg[31:0] E_V1,
	 
    input wire[31:0] D_V2,
	 output reg[31:0] E_V2,
	 
	 input wire[4:0] D_A3,
	 output reg[4:0] E_A3,
	 
    input wire[31:0] D_E32,
	 output reg[31:0] E_E32,
	 
	 input wire D_b_jump,
	 output reg E_b_jump,
	 
    input wire[31:0] D_Instr,
    input wire[31:0] D_PC,
    output reg[31:0] E_Instr,
	 output reg[31:0] E_PC
    );
	 
	 initial 
		 begin
				E_Instr = 32'h0000_0000;
				E_PC = 32'h0000_0000;
				E_V1 = 32'h0000_0000;
				E_V2 = 32'h0000_0000;
				E_A3 = 32'h0000_0000;
				E_E32 = 32'h0000_0000;
				E_b_jump = 32'h0000_0000;
				DE_ExcCode = `REPOSITION_DATA;
				E_isBD = 0;
		 end
	 always @(posedge clk)
	     begin
		     if(reset) begin
			        E_Instr <= 32'h0000_0000;
					  E_PC <= 32'h0000_0000;
					  E_V1 <= 32'h0000_0000;
					  E_V2 <= 32'h0000_0000;
					  E_A3 <= 32'h0000_0000;
				     E_E32 <= 32'h0000_0000;
					  E_b_jump <= 32'h0000_0000;
					  
					  DE_ExcCode <=  0;
					  E_isBD <=  0;
			     end
			  else if(req) begin
			        E_Instr <= 32'h0000_0000;
					  E_PC <= 32'h0000_4180;
					  E_V1 <= 32'h0000_0000;
					  E_V2 <= 32'h0000_0000;
					  E_A3 <= 32'h0000_0000;
				     E_E32 <= 32'h0000_0000;
					  E_b_jump <= 32'h0000_0000;
					  
					  DE_ExcCode <=  0;
					  E_isBD <=  0;
              end
           else if(flush) begin // flush = stall
			        E_Instr <= 32'h0000_0000;
					  E_PC <= D_PC;
					  E_V1 <= 32'h0000_0000;
					  E_V2 <= 32'h0000_0000;
					  E_A3 <= 32'h0000_0000;
				     E_E32 <= 32'h0000_0000;
					  E_b_jump <= 32'h0000_0000;
					  
					  DE_ExcCode <= 0;
					  E_isBD <= D_isBD;
              end			  
			  else if(WE) begin
				     E_Instr <= (|D_ExcCode)?0:D_Instr;
					  E_PC <= D_PC;
					  E_V1 <= D_V1;
					  E_V2 <= D_V2;
					  E_E32 <= D_E32;
					  E_A3 <= D_A3;
					  E_b_jump <= D_b_jump;
					  DE_ExcCode <= D_ExcCode;
					  E_isBD <= D_isBD;
				  end
		  end

endmodule
