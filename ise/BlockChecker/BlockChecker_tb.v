`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:24:04 10/11/2023
// Design Name:   BlockChecker
// Module Name:   D:/BUAA/practice/ise/BlockChecker/BlockChecker_tb.v
// Project Name:  BlockChecker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BlockChecker_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;
	wire count;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.count(count),
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
in = "a";
#10 in = " ";
#10 in = "B";
#10 in = "E";
#10 in = "g";
#10 in = "I";
#10 in = "n";
#10 in = " ";
#10 in = "E";
#10 in = "n";
#10 in = "d";
#10 in = "c";
#10 in = " ";
#10 in = "e";
#10 in = "n";
#10 in = "d";
#10 in = " ";
#10 in = "e";
#10 in = "n";
#10 in = "d";
#10 in = " ";
#10 in = "b";
#10 in = "E";
#10 in = "G";
#10 in = "i";
#10 in = "n";		
		// Add stimulus here

	end
   always #5 clk = ~clk;   
endmodule

