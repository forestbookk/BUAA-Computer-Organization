`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:04:11 10/13/2023
// Design Name:   Mealy_check1101
// Module Name:   D:/BUAA/practice/ise/Mealy_check1101/Mealy_check1101_tb.v
// Project Name:  Mealy_check1101
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mealy_check1101
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mealy_check1101_tb;

	// Inputs
	reg clk;
	reg reset;
	reg in;

	// Outputs
	wire result;
	wire[2:0] status;

	// Instantiate the Unit Under Test (UUT)
	Mealy_check1101 uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.status(status),
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
      in = 1'b1;
      #10 in = 1'b1;
      #10 in = 1'b0;
      #10 in = 1'b1;
      #10 in = 1'b0;		
		// Add stimulus here

	end
   always #5 clk = ~clk;   
endmodule

