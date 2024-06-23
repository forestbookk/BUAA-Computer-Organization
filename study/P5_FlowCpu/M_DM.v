`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:21 11/03/2022 
// Design Name: 
// Module Name:    M_DM 
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
`define oridata 32'h0000_0000
`default_nettype none
module M_DM(
    input wire [31:0] A,
    output wire [31:0] RD,
    input wire [31:0] WD,
    input wire [31:0] PC,
    input wire RESET,
    input wire CLK,
    input wire WE
    );
	 reg [31:0] DMRAM [0:3071];
     integer i;
     initial begin
        for(i=0;i<3072;i=i+1) begin
            DMRAM[i] = `oridata;
        end
     end
	 always @(posedge CLK) begin
        if(RESET) begin
            for(i=0;i<3072;i=i+1) begin
                DMRAM[i] = `oridata;
            end
        end
        else if(WE) begin
            DMRAM[A[13:2]] = WD;
				$display("%d@%h: *%h <= %h",$time,PC, A, WD);
        end
     end
    assign RD =  DMRAM[A[13:2]];
endmodule
