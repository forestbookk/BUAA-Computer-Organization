`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:03 10/26/2022 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input wire [4:0] A1,
    input wire [4:0] A2,
    input wire [4:0] A3,
    input wire [31:0] WD,
	 input wire [31:0] PC,
    output wire [31:0] RD1,
    output wire [31:0] RD2,
    input wire CLK,
    input wire WE,
    input wire RESET
    );
   reg [31:0] Wrdata;
	reg [31:0] rf[0:31];
	integer i;
	initial begin
       for(i=0;i<31;i=i+1) begin
          rf[i]=`oridata;
       end 
    end
	always @(posedge CLK) begin
        if(RESET) begin
            for(i=0;i<=31;i=i+1) begin
                rf[i]=`oridata;
            end 
        end
        else if(WE) begin
            Wrdata = (A3==5'b00000)? `oridata:WD;
            rf[A3]=Wrdata;
				if(A3!=0) begin
            $display("@%h: $%d <= %h", PC, A3, Wrdata);
				end
        end
    end
    assign RD1=rf[A1];
    assign RD2=rf[A2];
endmodule
