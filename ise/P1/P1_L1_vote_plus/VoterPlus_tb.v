`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:57 10/07/2023
// Design Name:   VoterPlus
// Module Name:   D:/BUAA/practice/ise/P1_L1_vote_plus/VoterPlus_tb.v
// Project Name:  P1_L1_vote_plus
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VoterPlus
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VoterPlus_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] np;
	reg [7:0] vip;
	reg vvip;

	// Outputs
	wire [7:0] result;

	// Instantiate the Unit Under Test (UUT)
	VoterPlus uut (
		.clk(clk), 
		.reset(reset), 
		.np(np), 
		.vip(vip), 
		.vvip(vvip), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		np = 0;
		vip = 0;
		vvip = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		 
		// Add stimulus here
		np = 32'b1000_0110_1111_0111;
		vip = 8'b0000_1111;
		vvip = 0;
		
		#10;
		np = 32'b1111_1111_1111_1111;
		vip = 8'b1111_1111;
		vvip = 1;

	end
   always #5 clk = ~clk;  
endmodule

