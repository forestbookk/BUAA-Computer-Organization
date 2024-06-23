`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:16:24 10/11/2023
// Design Name:   expr
// Module Name:   D:/BUAA/practice/ise/P1-L0/expr_tb.v
// Project Name:  P1-L0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: expr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module expr_tb;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	expr uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		clr = 1;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
       clr = 0;
		 in = "1";
		 #10 in = "+";
		 #10 in = "2";
		 #10 in = "*";
		 #10 in = "3";
		 clr = 1;
		 #10 clr = 0;
		  in = "1";
		 #10 in = "+";
		 #10 in = "2";
		 #10 in = "*";
		 #10 in = "3";
		// Add stimulus here

	end
    always #5 clk = ~clk;  
endmodule

