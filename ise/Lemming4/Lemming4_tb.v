`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:18:46 10/15/2023
// Design Name:   top_module
// Module Name:   D:/BUAA/practice/ise/Lemming4/Lemming4_tb.v
// Project Name:  Lemming4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Lemming4_tb;

	// Inputs
	reg clk;
	reg areset;
	reg bump_left;
	reg bump_right;
	reg ground;
	reg dig;

	// Outputs
	wire walk_left;
	wire walk_right;
	wire aaah;
	wire digging;
	wire[31:0] count;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.clk(clk), 
		.count(count),
		.areset(areset), 
		.bump_left(bump_left), 
		.bump_right(bump_right), 
		.ground(ground), 
		.dig(dig), 
		.walk_left(walk_left), 
		.walk_right(walk_right), 
		.aaah(aaah), 
		.digging(digging)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		areset = 1;
		bump_left = 0;
		bump_right = 0;
		ground = 0;
		dig = 0;

		// Wait 100 ns for global reset to finish
		#100;
		bump_left = 1;
      areset = 0;  
		ground = 1;
		dig = 1;
		#20;
		ground = 0;
		#200;
		ground = 1;
		bump_right = 1;
		// Add stimulus here

	end
   always #5 clk = ~clk;   
endmodule

