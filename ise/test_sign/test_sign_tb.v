`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:51:30 11/13/2023
// Design Name:   test_sign
// Module Name:   D:/BUAA/practice/ise/test_sign/test_sign_tb.v
// Project Name:  test_sign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test_sign
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sign_tb;

	// Inputs
	reg [31:0] rs;
	reg [31:0] rt;

	// Outputs
	wire condition;

	// Instantiate the Unit Under Test (UUT)
	test_sign uut (
		.rs(rs), 
		.rt(rt), 
		.condition(condition)
	);

	initial begin
		// Initialize Inputs
		rs = 32'h8000_0000;
		rt = 32'h8000_0000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

