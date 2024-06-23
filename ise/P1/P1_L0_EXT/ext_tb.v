`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:23:02 10/11/2023
// Design Name:   ext
// Module Name:   D:/BUAA/practice/ise/P1_L0_EXT/ext_tb.v
// Project Name:  P1_L0_EXT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ext_tb;

	// Inputs
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin
		// Initialize Inputs
		imm = 0;
		EOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
      imm = 32'b0000_1111_1010_0101_1100_0011_1001_0110;
      EOp = 2'b00;
      #10 EOp = 2'b01;
      #10 EOp = 2'b10;
      #10 EOp = 2'b11;		
		// Add stimulus here

	end
      
endmodule

