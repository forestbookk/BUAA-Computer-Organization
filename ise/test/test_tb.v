`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:34 10/01/2023
// Design Name:   test
// Module Name:   D:/BUAA/practice/ise/test/test_tb.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_tb;

   // inputs
	reg clk;
	reg reset;
	reg [7:0] in;
	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.clk(clk),
		.reset(reset),
		.in(in),
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		 #100;
       reset = 0;
		 
		
		// Add stimulus here

	end
     always #50 clk = ~clk; 
endmodule

