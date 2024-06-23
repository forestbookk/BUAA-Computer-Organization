`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:02 10/15/2023 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output reg Overflow
    );
	 
	 reg[2:0] count;
	 
	 always @(posedge Clk) begin
	     if(Reset) begin
				Overflow <= 0;
				count <= 0;
		  end else if(En && count < 7)begin
		      count <= count + 1;
		  end else if(En && count == 7) begin
		      Overflow <= 1;
				count <= 0;
		  end else begin
		      count <= count;
		  end
	 end
	 
	 assign Output = {count[2], count[2] ^ count[1], count[1] ^ count[0]};

endmodule
