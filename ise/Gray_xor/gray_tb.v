`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:56:55 10/15/2023
// Design Name:   gray
// Module Name:   D:/BUAA/practice/ise/Gray_xor/gray_tb.v
// Project Name:  Gray_xor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gray_tb;

	// Inputs
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire [2:0] Output;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		Clk = 1;
		Reset = 1;
		En = 1;

		// Wait 100 ns for global reset to finish
		#100;
      Reset = 0; 	
#30 Reset = 1;
#10 Reset = 0;		
		// Add stimulus here

	end
   always #5 Clk = ~Clk;   
endmodule

