`timescale 1ns / 1ps
`define s0 4'b0000
`define s1 4'b0001
`define s2 4'b0010
`define s3 4'b0011
`define s4 4'b0100
`define s5 4'b0101
`define s6 4'b0110
`define s7 4'b0111
`define s8 4'b1000
`define s9 4'b1001
`define s10 4'b1010
`define s11 4'b1011
`define s12 4'b1100
`define s13 4'b1101
`define s14 4'b1110
`define s15 4'b1111
`define cnt_limit_d 3'b100
`define cnt_limit_h 4'b1000
`define format_error 2'b00
`define reg_array 2'b01
`define sto_array 2'b10
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:07 09/02/2023 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output reg [1:0] format_type
    );
	 
	 parameter YES = 1'b1;
	 parameter NO = 1'b0;
	 parameter INIT_REG_D = 3'd1;
	 parameter INIT_REG_H = 4'd1;
	 
	 reg [2:0] cnt_d;
	 reg [3:0] cnt_h;
	 reg [3:0] state;
	 reg [1:0] format_type_temp;
	 
	 wire digit = (char >= "0" && char <= "9") ? YES : NO;
	 wire hexdigit = (digit == YES) ? YES :
	                 (char >= "a" && char <= "f") ? YES : NO;
	
	 initial begin
		 cnt_d = 0;
		 cnt_h = 0;
		 format_type = 0;
	 end
	 
	 always @(posedge clk) begin
		 if(reset == YES) begin
			 format_type <= `format_error;
			 format_type_temp <= `format_error;
			 state <= `s0;
			 cnt_d <= 0;
			 cnt_h <= 0;
		 end else begin
			 case (state)
				 `s0 : begin
					 if(char == "^") begin
						 state <= `s1;
					 end else begin
						 state <= state;
					 end
				 end
				 `s1 : begin
					 if(digit == YES) begin
					    cnt_d <= INIT_REG_D;
					    state <= `s2;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s2 : begin
				    if(digit == YES) begin
					    cnt_d <= cnt_d + 3'b1;
					    if(cnt_d + 3'b1 <= `cnt_limit_d) begin
							 state <= state;
						 end else begin
							 state <= `s0;
						 end
				    end else if(char == "^") begin
    					 state <= `s1;
					 end else if(char == "@") begin
					    state <= `s3;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s3 : begin
					 if(hexdigit == YES) begin
					    cnt_h <= INIT_REG_H;
						 state <= `s4;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s4 : begin
				    if(hexdigit == YES) begin
					    cnt_h <= cnt_h + 4'b1;
					    if(cnt_h + 4'b1 <= `cnt_limit_h) begin
							 state <= state;
						 end else begin
							 state <= `s0;
						 end
					 end else if(cnt_h == `cnt_limit_h && char == ":") begin
					    state <= `s5;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s5 : begin
				    if(char == " ") begin
					    state <= `s6;
					 end else if(char == "*" || char == "$") begin
					    state <= `s7;
						 format_type_temp <= (char == "*") ? `sto_array : `reg_array;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s6 : begin
				    if(char == " ") begin
					    state <= state; 
					 end else if(char == "*" || char == "$") begin
					    state <= `s7;
						 format_type_temp <= (char == "*") ? `sto_array : `reg_array;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s7 : begin
				    if((format_type_temp == `reg_array) && (digit == YES)) begin
					    state <= `s8;
						 cnt_d <= INIT_REG_D;
                end else if	((format_type_temp == `sto_array)  &&  (hexdigit == YES)) begin					 
					    state <= `s9;
						 cnt_h <= INIT_REG_H;
				    end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s8 : begin
				    if(digit == YES) begin
					    cnt_d <= cnt_d + 3'b1;
					    if(cnt_d + 3'b1 <= `cnt_limit_d) begin
							 state <= state;
						 end else begin
							 state <= `s0;
						 end
				    end else if(char == " ") begin
					    state <= `s10;
					 end else if(char == "<") begin
					    state <= `s11;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s9 : begin
					 if(hexdigit == YES) begin
					    cnt_h <= cnt_h + 4'b1;
					    if(cnt_h + 4'b1 <= `cnt_limit_h) begin
							 state <= state;
						 end else begin
							 state <= `s0;
						 end
					 end else if((cnt_h == `cnt_limit_h) && (char == " ")) begin
						 state <= `s10;
					 end else if((cnt_h == `cnt_limit_h) && (char == "<")) begin
					     state <= `s11;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
                   state <= `s0;							 
					 end
				 end
				 `s10: begin
				    if(char == " ") begin
					    state <= state;
					 end else if(char == "<") begin
					    state <= `s11;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s11: begin
				    if(char == "=") begin
					    state <= `s12;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
				    end
				 end
				 `s12: begin
				    if(char == " ") begin
					    state <= `s13;
					 end else if(hexdigit == YES) begin
					    cnt_h <= INIT_REG_H;
					    state <= `s14;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s13: begin
				    if(char == " ") begin
					    state <= state; 
					 end else if(hexdigit == YES) begin
					    cnt_h <= INIT_REG_H;
					    state <= `s14;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s14: begin
				    if(hexdigit == YES) begin
					    cnt_h <= cnt_h + 4'b1;
					    if(cnt_h + 4'b1 <= `cnt_limit_h) begin
							 state <= state;
						 end else begin
							 state <= `s0;
						 end
					 end else if(cnt_h == `cnt_limit_h && char == "#") begin
					    format_type <= format_type_temp;
						 state <= `s15;
					 end else if(char == "^") begin
						 state <= `s1;
					 end else begin
					    state <= `s0;
					 end
				 end
				 `s15: begin
				    format_type <= `format_error;
					 format_type_temp <= `format_error;
					 state <= (char == "^") ? `s1 : `s0;
				 end
				 default: begin
				    state <= `s0;
				 end
			 endcase
		 end
   end
endmodule
