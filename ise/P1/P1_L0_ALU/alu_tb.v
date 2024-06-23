`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:38:09 10/11/2023
// Design Name:   alu
// Module Name:   D:/BUAA/practice/ise/P1_L0_ALU/alu_tb.v
// Project Name:  P1_L0_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.ALUOp(ALUOp), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
       A = 32;
		 B = 1;
		 ALUOp = 3'b000;
		 
		 #100;
       A = 32;
		 B = 1;
		 ALUOp = 3'b001;
		 
		 #100;
       A = 32'b0000_1111;
		 B = 32'b1111_0001;
		 ALUOp = 3'b010;
		 
       #100;
       A = 32'b0000_1111;
		 B = 32'b1111_0001;
		 ALUOp = 3'b010;
		
		 #100;
       A = 32'b0000_1111;
		 B = 2;
		 ALUOp = 3'b100;
		 
		  #100;
       A = 32'b1111_1111_1111_1111_1111_1111_0000_1111;
		 B = 32'b1111_0001;
		 ALUOp = 3'b101;
		// Add stimulus here

	end
      
endmodule

