`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:24 11/03/2022 
// Design Name: 
// Module Name:    E_ALU 
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
`define Add 4'h0
`define Sub 4'h1
`define And 4'h2
`define Ori 4'h3
`define Lui 4'h4
`define Slt 4'h5
`define Sltu 4'h6

`default_nettype none
module E_ALU(
    input wire [31:0] SrcA,
    input wire [31:0] SrcB,
    input wire [3:0] ALUControl,
	 output reg OverFlow,
    output reg [31:0] Res
    );
	 reg [32:0] temp = 0;
    always @(*) begin
        case(ALUControl)
            `Add: begin
                Res = SrcA + SrcB; 
            end
            `Sub: begin
                Res = SrcA - SrcB;
            end
            `And: begin
                Res = SrcA & SrcB;
            end
            `Ori: begin
                Res = SrcA | SrcB;
            end
            `Lui: begin
                Res = SrcB << 16;
            end
				`Slt: begin
					 Res = ($signed(SrcA) < $signed(SrcB)) ? 32'd1:32'd0;
				end
				`Sltu : begin
					 Res = (SrcA<SrcB) ? 32'd1:32'd0;
				end
            default:
					 Res = `oridata ;
		  endcase 
    end
	 
	always @(*) begin
		  temp = 0;
		  if(ALUControl == `Add) begin
				temp = {SrcA[31],SrcA} + {SrcB[31],SrcB};
		  end
		  else if(ALUControl == `Sub) begin
				temp = {SrcA[31],SrcA} - {SrcB[31],SrcB};
		  end
		  if(temp[31]!=temp[32]) begin
				OverFlow = 1;
		  end
		  else begin
				OverFlow = 0;
		  end
    end
    
endmodule
