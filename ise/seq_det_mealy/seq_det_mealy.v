`timescale 1ns / 1ps
//
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/04 20:34:06
// Design Name: 
// Module Name: seq_det_mealy
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//
 
 
module seq_det_mealy(
    input clk,
    input reset,
    input din,
	 output reg[1:0] current_state,
    output reg dout
    );
	
	localparam [1:0]
	s0 = 2'b00,
	s1 = 2'b01,
	s2 = 2'b10,
	s3 = 2'b11;
	
	reg [1:0] next_state;
	
	always @(posedge clk, posedge reset)
	begin
		if(reset)
			current_state <= s0;
		else
			current_state <= next_state;
	
	end
	
	always @ *
	begin
		case(current_state)
		s0:
			if(din == 1'b1) next_state = s1;
			else next_state = s0;
		s1: 
			if(din == 1'b1) next_state = s2;
			else next_state = s1;
		s2:
			if(din == 1'b0) next_state = s3;
			else next_state = s2;
		s3: next_state = s0;
		default: next_state = s0;
		endcase
	
	end
	
	always @ *
	begin
		if(reset) dout = 1'b0;
		else if( (current_state == s3)&&(din == 1'b1) ) dout = 1'b1;
		else dout = 1'b0;
	
	end
	
	
endmodule