`timescale 1ns / 1ps
`define ADDU 3'b000
`define SUBU 3'b001
`define AND 3'b010
`define OR 3'b011
`define L_RIGHT 3'b100
`define S_RIGHT 3'b101
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:00 10/11/2023 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output reg[31:0] C
    );
	 
	 always @* begin
	     case(ALUOp) 
		      `ADDU: begin
				    C = $unsigned(A) + $unsigned(B);
				end
				`SUBU: begin
				    C = $unsigned(A) - $unsigned(B);
				end 
				`AND: begin
				    C = A & B;
				end 
				`OR: begin
				    C = A | B;
				end 
				`L_RIGHT: begin
				    C = $unsigned(A) >> B;
				end
				`S_RIGHT: begin
				    C = $signed(A) >>> B;
				end
				default: begin
				    $display("error");
				end
		  endcase
	 end


endmodule
