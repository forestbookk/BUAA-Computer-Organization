`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:52:36 10/07/2023
// Design Name:   drink
// Module Name:   D:/BUAA/practice/ise/P1_L1_drink/drink_tb.v
// Project Name:  P1_L1_drink
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: drink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module drink_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] coin;

	// Outputs
	wire drink;
	wire [1:0] back;

	// Instantiate the Unit Under Test (UUT)
	drink uut (
		.clk(clk), 
		.reset(reset), 
		.coin(coin), 
		.drink(drink), 
		.back(back)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		coin = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0; 
		// Add stimulus here
		coin = 2'b01;
		#10 coin = 2'b11;
		#10 coin = 2'b01;
	end
   always #5 clk = ~clk;   
endmodule

