`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:31 10/31/2023 
// Design Name: 
// Module Name:    CU 
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
module RF(
    input wire[31:0] Instr,
    input wire clk,
    input wire reset,
    input wire[4:0] A1,
    input wire[4:0] A2,
    input wire[4:0] A3,
	 input wire[31:0] WD,
    input wire RFWrEn,
	 input wire[31:0] PC,
    output wire[31:0] RD1,
    output wire[31:0] RD2
    );
	 
	 reg[31:0] GRF[0:31];
	 
	 //Read Logic
	 assign RD1 = GRF[A1];
	 assign RD2 = GRF[A2];
	 
	 //Write Logic					
	 integer i;
	 initial begin
	     for(i=0; i<32; i=i+1) begin
				GRF[i]<=`REPOSITION_DATA;
		  end
	 end
	 always @(posedge clk) begin
	     if(reset) begin
		      for(i=0; i<32; i=i+1) begin
				    GRF[i]<=`REPOSITION_DATA;
				end
		  end else if(RFWrEn) begin//Ð´Ê¹ÄÜ
		      GRF[A3]<=WD;
				$display("@%h: $%d <= %h", PC, A3, WD);
	     end
	 end
	 
endmodule
