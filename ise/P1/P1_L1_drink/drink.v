`timescale 1ns / 1ps
`define s0 3'b000
`define s1 3'b001
`define s2 3'b010
`define s3 3'b011
`define m0 2'b00
`define m1 2'b01
`define m2 2'b10
`define m3 2'b11
`define toBack 2'b11
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:33:27 10/07/2023 
// Design Name: 
// Module Name:    drink 
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
module drink(
    input clk,
    input reset,
    input [1:0] coin,
    output reg drink,
    output reg[1:0] back
    );

	reg[2:0] status;
	
	always @(posedge clk, posedge reset) begin
		if(reset) begin
			status <= `s0;
			drink <= 0;
			back <= 0;
		end else begin
			case (status)
				`s0: begin
					drink <= 0;
					back <= 0;
					if(coin == `m0) begin
						status <= status;
					end else if(coin == `m1) begin
						status <= `s1;
					end else if(coin == `m2) begin
						status <= `s2;
					end else if(coin == `m3) begin
						status <= `s0;
						back <= `m0;
					end else begin
						status <= `s0;
					end
				end
				`s1: begin
					if(coin == `m0) begin
						status <= status;
					end else if(coin == `m1) begin
						status <= `s2;
					end else if(coin == `m2) begin
						status <= `s3;
					end else if(coin == `m3) begin
						status <= `s0;
						back <= `m1;
					end else begin
						status <= `s0;
					end
				end
				`s2: begin
					if(coin == `m0) begin
						status <= status;
					end else if(coin == `m1) begin
						status <= `s3;
					end else if(coin == `m2) begin
						status <= `s0;
						drink <= 1;
						back <= `m0;
					end else if(coin == `m3) begin
						status <= `s0;
						back <= `m2;
					end else begin
						status <= status;
					end
				end
				`s3: begin
					if(coin == `m0) begin
						status <= status;
					end else if(coin == `m1) begin
						status <= `s0;
						drink <= 1;
						back <= `m0;
					end else if(coin == `m2) begin
						status <= `s0;
						drink <= 1;
						back <= `m1;
					end else if(coin == `m3) begin
						status <= `s0;
						back <= `m3;
					end else begin
						status <= `s0;
					end
				end
				default: status <= `s0;
			endcase
		end
	end

endmodule
