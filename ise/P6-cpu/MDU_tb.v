`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:26:59 11/14/2023
// Design Name:   MDU
// Module Name:   D:/BUAA/practice/ise/P6-cpu/MDU_tb.v
// Project Name:  P6-cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MDU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MDU_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg Start;
	reg clk;
	reg reset;
	reg [3:0] MDUOp;

	// Outputs
	wire [31:0] LO;
	wire [31:0] HI;
	wire Busy;

	// Instantiate the Unit Under Test (UUT)
	MDU uut (
		.A(A), 
		.B(B), 
		.LO(LO), 
		.HI(HI), 
		.Start(Start), 
		.Busy(Busy), 
		.clk(clk), 
		.reset(reset), 
		.MDUOp(MDUOp)
	);

	initial begin
		// Initialize Inputs
		A = 3;
		B = 5;
		Start = 0;
		clk = 1;
		reset = 1;
		MDUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0;Start = 1;MDUOp=1;		
		#10 Start = 0;
		// Add stimulus here
		#100;
		Start = 1; MDUOp = 3; A = 13456; B = 134;
		#10 Start = 0;

	end
   always #5 clk = ~clk;   
endmodule

