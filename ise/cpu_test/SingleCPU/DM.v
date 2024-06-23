`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:41 10/26/2022 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input wire [31:0] A,
    output wire [31:0] RD,
    input wire [31:0] WD,
    input wire [31:0] PC,
    input wire RESET,
    input wire CLK,
    input wire WE,
	 input wire [1:0] SelectBit
    );
	 wire [31:0] Write;
	 wire [31:0] Read;
	 wire [1:0] Low;
	 wire [31:0] OriData;
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
            DMRAM[A[13:2]] = Write;
            $display("@%h: *%h <= %h", PC, A, Write);
        end
     end
	 assign Low = A[1:0];
	 assign OriData = DMRAM[A[13:2]];
	 assign Write = (SelectBit == 2'b01 && Low == 2'b00) ? {OriData[31:8],WD[7:0]} :
							(SelectBit == 2'b01 && Low == 2'b01) ? {OriData[31:16],WD[7:0],OriData[7:0]} :
								(SelectBit == 2'b01 && Low == 2'b10) ? {OriData[31:24],WD[7:0],OriData[15:0]} :
									(SelectBit == 2'b01 && Low == 2'b11) ? {WD[7:0],OriData[23:0]} :
										(SelectBit == 2'b10 && Low == 2'b00) ? {OriData[15:0],WD[15:0]} :
											(SelectBit == 2'b10 && Low == 2'b10) ? {WD[15:0],OriData[31:16]} : WD;
	 assign Read = (SelectBit == 2'b01 && Low == 2'b00) ? {{24{OriData[7]}},OriData[7:0]} :
							(SelectBit == 2'b01 && Low == 2'b01) ? {{24{OriData[15]}},OriData[15:8]} :
								(SelectBit == 2'b01 && Low == 2'b10) ? {{24{OriData[23]}},OriData[23:16]} :
									(SelectBit == 2'b01 && Low == 2'b11) ? {{24{OriData[31]}},OriData[31:24]} :
										(SelectBit == 2'b10 && Low == 2'b00) ? {{16{OriData[15]}},OriData[15:0]} :
											(SelectBit == 2'b10 && Low == 2'b10) ? {{16{OriData[31]}},OriData[31:16]} : OriData;
    assign RD =  Read;
endmodule
