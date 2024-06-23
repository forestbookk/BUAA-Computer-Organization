`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:40:02 10/14/2023
// Design Name:   sd1101_mealy_over
// Module Name:   D:/BUAA/practice/ise/moore/sd1101_tb.v
// Project Name:  moore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sd1101_mealy_over
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sd1101_tb;

	// Inputs
	reg clk;
	reg reset;
	reg din;

	// Outputs
	wire dout;
	wire [2:0] state;

	// Instantiate the Unit Under Test (UUT)
	sd1101_mealy_over uut (
		.clk(clk), 
		.reset(reset), 
		.din(din), 
		.state(state),
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		din = 0;

		// Wait 100 ns for global reset to finish
		#100;
       reset = 0;
din = 1'b1;
#10 din = 1'b1;
#10 din = 1'b0;
#10 din = 1'b1;		 
		// Add stimulus here

	end
   always #5 clk = ~clk;   
endmodule

