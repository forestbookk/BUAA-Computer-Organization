`timescale 1ns / 1ps
`define s0 4'b0000
`define sx 4'b1111
`define s1 4'b0001
`define s2 4'b0010
`define s3 4'b0011
`define s4 4'b0100
`define s5 4'b0101
`define s6 4'b0110
`define s7 4'b0111
`define s8 4'b1000
`define s9 4'b1001
`define sa 4'b1010
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:02:10 10/06/2023 
// Design Name: 
// Module Name:    intcheck 
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
module intcheck(
    input clk,
    input reset,
    input [7:0] in,
    output reg out
    );
	 
	 reg[3:0] status;
	 parameter YES = 1'b1;
	 parameter NO = 1'b0;
	 
	 wire isDigit = (in >= "0" && in <= "9") ? YES : NO;
	 wire isBlank = (in == " " || in == "\t" ) ? YES : NO;
	 //wire isBlank = (in == " " || in == "\t" || in == "\0") ? YES : NO;
	 wire is_letter = (in == "_" || (in >= "a" && in <= "z") || (in >= "A" && in <= "Z")) ? YES : NO;
	 
	 always @(posedge clk) begin
		if(reset) begin
			status <= `s0;
			out <= NO;
		end else begin
			case (status)
				`s0: begin
				    out <= NO;
					if(isBlank || in == ";") begin
						status <= status;
					end else if(in == "i") begin
						status <= `s1;
					end else begin
						status <= `sx;
					end 
				end
				`s1: begin
				    if(in == ";") begin
						status <= `s0;
					end else if(in == "n") begin
						status <= `s2;
					end else begin
						status <= `sx;
					end
				end
				`s2: begin
				    if(in == ";") begin
						status <= `s0;
					end else if (in == "t") begin
						status <= `s3;
					end else begin
						status <= `sx;
					end
				end
				`s3: begin
				    if(in == ";") begin
						status <= `s0;
					end else if(isBlank) begin
						status <= `s4;
					end else begin 
						status <= `sx;
					end
				end
				`s4: begin
				    if(in == ";") begin
						status <= `s0;
					end else if(isBlank) begin
						status <= status;
					end else if(in == "i") begin
						status <= `s5;
					end else if(is_letter) begin
						status <= `s8;
					end else begin
						status <= `sx;
					end
				end
				`s5: begin
				    if(in == ";") begin
						out <= YES; //符合语法规范 int [标识符,]i;
						status <= `s0;
					end else if(in == "n") begin
						status <= `s6;
					end else if(is_letter || isDigit) begin
						status <= `s8;
					end else if(isBlank) begin
						status <= `s9;
					end else if(in == ",") begin
						status <= `sa;
					end else begin
						status <= `sx;
					end
				end
				`s6: begin
				    if(in == ";") begin
						out <= YES;//符合语法规范 int [标识符,] in;
						status <= `s0;
					end else if(in == "t") begin
						status <= `s7;
					end else if(is_letter || isDigit) begin
						status <= `s8;
					end else if(isBlank) begin
						status <= `s9;
					end else if(in == ",") begin
						status <= `sa;
					end else begin
						status <= `sx;
					end
				end
				`s7: begin
				    if(in == ";") begin
						status <= `s0; //不符合规范， int int;
					end else if(in == "," || isBlank) begin
						status <= `sx; //不符合规范， int int,
					end else if(is_letter || isDigit) begin
						status <= `s8;
					end else begin
						status <= `sx;
					end
				end
				`s8: begin
				    if(in == ";") begin
						out <= 1'b1;
						status <= `s0;
					end else if(in == ",") begin
						status <= `sa;
					end else if(is_letter || isDigit) begin
						status <= status;
					end else if(isBlank) begin
						status <= `s9;
					end else begin
						status <= `sx;
					end
				end
				`s9: begin
				    if(in == ";") begin
						out <= YES;
						status <= `s0;
					end else if(isBlank) begin
						status <= status;
					end else if(in == ",") begin
						status <= `sa;
					end else begin
						status <= `sx;
					end
				end
				`sa: begin
				    if(in == ";") begin
						status <= `s0;
					end else if(isBlank) begin
						status <= `s4;
					end else if(in == "i") begin
						status <= `s5;
					end else if(is_letter) begin
						status <= `s8;
					end else begin
						status <= `sx;
					end
				end
				`sx: begin
				    if(in == ";") begin
					   status <= `s0;
				    end else begin
					   status <= status;
					 end
				end
				default: status <= `sx;
			endcase
		end
	 end

endmodule
