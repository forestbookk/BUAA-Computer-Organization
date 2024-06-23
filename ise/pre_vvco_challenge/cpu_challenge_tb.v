`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:56:33 09/04/2023
// Design Name:   cpu_challenge
// Module Name:   D:/BUAA/practice/ise/pre_vvco_challenge/cpu_challenge_tb.v
// Project Name:  pre_vvco_challenge
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_challenge
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_challenge_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] char;
	reg [15:0] freq;
	reg finish;

	// Outputs
	wire [1:0] format_type;
	wire [3:0] error_code;
   
	always @(posedge clk) begin
      if (!reset && !finish) begin
         $display("%d", format_type);
      end
   end
	// Instantiate the Unit Under Test (UUT)
	cpu_challenge uut (
		.clk(clk), 
		.reset(reset),
		.char(char), 
		.freq(freq), 
		.format_type(format_type), 
		.error_code(error_code)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		char = 0;
		freq = 4;

		// Wait 100 ns for global reset to finish
		#10 reset = 0;
		
		#2 char = "^";
		#2 char = "6";
		#2 char = "@"; 
		#2 char = "1";
		#2 char = "2";
		#2 char = "3";
		#2 char = "4";
		#2 char = "5";
		#2 char = "6";
		#2 char = "7";
		#2 char = "8"; 
		#2 char = ":";
		#2 char = "$";
		#2 char = "4";
		#2 char = "<";
		#2 char = "=";
		#2 char = "0";
		#2 char = "0";
		#2 char = "0";
		#2 char = "0";
		#2 char = "3";
		#2 char = "0";
		#2 char = "f";
		#2 char = "4";
		#2 char = "#";
		#2 char = "1";
		
		#20 finish = 1;

	end
	
	always #1 clk = ~clk;
      
endmodule

