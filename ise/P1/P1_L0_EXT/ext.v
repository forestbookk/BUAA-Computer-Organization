`timescale 1ns / 1ps
`define ext_sign 2'b00
`define ext_zero 2'b01
`define high_load 2'b10
`define ext_sign_left2 2'b11
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:52 10/11/2023 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output reg[31:0] ext
    );
	 parameter all1 = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
	 always@* begin
	     case(EOp)        
            `ext_sign: begin
				    if(imm[15:15] == 1) begin
					     ext = (all1 << 16) | imm;
					 end else begin
					     ext = 0 | imm;
					 end
				end
				`ext_zero: begin
				    ext = 0 | imm;
				end 
				`high_load: begin
				    ext = (0 | imm) << 16;
				end 
				`ext_sign_left2: begin
				    if(imm[15:15] == 1) begin
					     ext = ((all1 << 16) | imm) << 2;
					 end else begin
					     ext = (0 | imm) << 2;
					 end
				end 
				default: begin
				end
		  endcase
	 end


endmodule
