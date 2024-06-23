`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:12:04 10/26/2022 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input wire [31:0] NPC,
    input wire CLK,
    input wire RESET,
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
        else begin
            PC <= NPC;
        end
    end
	 assign TPC = PC - `oripc;
	 assign bug=(TPC<32'h4000)? TPC[13:2]:12'hfff;
    assign Instr =(TPC<32'h4000)? IMROM[bug]:32'h0000_0000;
endmodule
