`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:53 11/10/2022 
// Design Name: 
// Module Name:    D_MDU 
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
`define Mult 3'h0
`define Multu 3'h1
`define Div 3'h2
`define Divu 3'h3
module E_MDU(
    input wire clk,
    input wire reset,
    input wire [31:0] SrcA,
    input wire [31:0] SrcB,
    input wire start,
    input wire [2:0] MDUop,
    input wire HIWrite,
    input wire LOWrite,
    input wire HIRead,
    input wire LORead,
    output reg [31:0] HI,
    output reg [31:0] LO,
    output wire busy,
    output wire [31:0] MDU_res
    );
    reg [31:0] HI_temp;
    reg [31:0] LO_temp;
    reg [3:0] cnt;
    initial begin
        HI = 0;
        LO = 0;
        HI_temp = 0;
        LO_temp = 0;
        cnt = 0;
    end
    always @(posedge clk) begin
        if(reset) begin
            HI <= 0;
            LO <= 0;
            HI_temp <= 0;
            LO_temp <= 0;
            cnt <= 0;
        end
        else if(start) begin
            case (MDUop)
                `Mult : begin
                    {HI_temp,LO_temp} <= $signed(SrcA) * $signed(SrcB) ;
                    cnt <= 5;
                end
                `Multu: begin
                    {HI_temp,LO_temp} <= SrcA * SrcB ;
                    cnt <= 5;
					 end
                `Div: begin
                    LO_temp <= $signed(SrcA) / $signed(SrcB) ;
                    HI_temp <= $signed(SrcA) % $signed(SrcB) ;
                    cnt <= 10;
                end
                `Divu:begin
                    LO_temp <= SrcA / SrcB;
                    HI_temp <= SrcA % SrcB;
                    cnt <= 10;
                end
            endcase
        end
        else if(HIWrite) begin
            HI <= SrcA;
        end
        else if(LOWrite) begin
            LO <= SrcA;
        end
        else if(cnt != 0) begin
            if(cnt == 4'd1) begin
                LO <= LO_temp;
                HI <= HI_temp;
            end
            cnt <= cnt - 1;
        end
    end
    assign busy = ((cnt)!=0||start) ? 1:0;
    assign MDU_res = (HIRead) ? HI :
                        (LORead) ? LO : 0; 
endmodule
