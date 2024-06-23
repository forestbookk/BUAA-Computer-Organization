`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:47 10/16/2023
// Design Name:   event_horizen
// Module Name:   D:/BUAA/practice/ise/if/event_horizen_tb.v
// Project Name:  if
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: event_horizen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module event_horizen_tb;

	// Outputs
	wire[2:0] c;
	wire b;
	reg a;
	reg clk;
	
	// Instantiate the Unit Under Test (UUT)
	event_horizen uut (
	   .clk(clk),
		.c(c),
		.b(b),
		.a(a)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		//b = 0;
		a = 1;		
		// Wait 100 ns for global reset to finish
		#50;
	end
   
	always #5 clk = ~clk;
endmodule

