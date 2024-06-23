`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:51 09/02/2023
// Design Name:   id_fsm
// Module Name:   D:/BUAA/practice/ise/id_FSM/id_fsm_tb.v
// Project Name:  id_FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: id_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module id_fsm_tb;

	// Inputs
	reg [7:0] char;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	id_fsm uut (
		.char(char), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		char = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      char = "a";
      #100;
		char = "b";
		#100;
		char = "c";
		#100;
		char = "d";
		#100;
		char = "1";
		#100;
		char = "2";
		#100;
		char = "3";
		#100;
		char = "4";
		#100;
		char = "/";		

	end
   
   always #50 clk = ~clk;	
endmodule

