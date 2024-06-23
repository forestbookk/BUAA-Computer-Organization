`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:33 11/03/2022 
// Design Name: 
// Module Name:    D_GRF 
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
module D_GRF(
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
       for(i=0;i<=31;i=i+1) begin
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
        end
    end
    assign RD1=((A1==A3) && A3 && WE)? WD : rf[A1];
    assign RD2=((A2==A3) && A3 && WE)? WD : rf[A2];
endmodule
