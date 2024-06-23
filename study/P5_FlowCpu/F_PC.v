`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:15 11/03/2022 
// Design Name: 
// Module Name:    F_IFU 
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
`define ExcPC 32'h0000_4180
`define oripc 32'h0000_3000
`default_nettype none
module F_PC(
    input wire [31:0] NPC,
    input wire CLK,
    input wire RESET,
	 input wire WE,
	 input wire Req,
    output reg [31:0] PC
    );
	initial begin
		PC = `oripc;
	end
    always @(posedge CLK) begin
        if(RESET) begin
            PC <= `oripc;
        end
		  else if(Req) begin
				PC <= `ExcPC;
		  end
        else if(WE) begin
            PC <= NPC;
        end
    end
endmodule
