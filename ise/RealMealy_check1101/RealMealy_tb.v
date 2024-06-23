`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:40 10/13/2023
// Design Name:   RealMealy
// Module Name:   D:/BUAA/practice/ise/RealMealy_check1101/RealMealy_tb.v
// Project Name:  RealMealy_check1101
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RealMealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RealMealy_tb;

	// Inputs
	reg clk;
	reg reset;
	reg in;

	// Outputs
	wire result;
	wire[2:0] status;
	wire[2:0] next_status;

	// Instantiate the Unit Under Test (UUT)
	RealMealy uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.status(status),
		.next_status(next_status),
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		in = 0;

		// Wait 100 ns for global reset to finish
		#97;
      reset = 0; 
        in = 1'b1;
       #10 in = 1'b1;
       #10 in = 1'b0;
       #10 in = 1'b1;
       #10 in = 1'b0;
       #10 in = 1'b1;		 
		// Add stimulus here

	end
   always #5 clk = ~clk;   
endmodule

