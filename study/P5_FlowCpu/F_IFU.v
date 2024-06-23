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
`define oripc 32'h0000_3000
`default_nettype none
module F_IFU(
    input wire [31:0] NPC,
    input wire CLK,
    input wire RESET,
	 input wire WE,
    output reg [31:0] PC,
    output wire [31:0] Instr
    );
	 reg [31:0] IMROM [0:4095];
	 wire [31:0] TPC;
	 wire [13:2] bug;
	initial begin
		$readmemh("code.txt",IMROM);
		PC = `oripc;
	end
    always @(posedge CLK) begin
        if(RESET) begin
            PC <= `oripc;
        end
        else if(WE) begin
            PC <= NPC;
        end
    end
	 assign TPC = PC - `oripc;
	 assign bug=(TPC<32'h4000)? TPC[13:2]:12'hfff;
    assign Instr =(TPC<32'h4000)?  IMROM[bug]:32'h0000_0000 ;
endmodule
