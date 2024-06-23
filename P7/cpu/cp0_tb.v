`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:20 12/04/2023
// Design Name:   CP0
// Module Name:   C:/Users/shael/CO/P7/cpu_commit/cp0_tb.v
// Project Name:  P7-cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CP0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cp0_tb;

	// Inputs
	reg clk;
	reg reset;
	reg WE;
	reg [4:0] CP0Addr;
	reg [31:0] CP0In;
	reg [31:0] VPC;
	reg BDIn;
	reg [6:2] ExcCodeIn;
	reg [5:0] HWInt;
	reg EXLClr;

	// Outputs
	wire [31:0] CP0Out;
	wire [31:0] EPCOut;
	wire Req;
	wire IG_Response;

	// Instantiate the Unit Under Test (UUT)
	CP0 uut (
		.clk(clk), 
		.reset(reset), 
		.WE(WE), 
		.CP0Addr(CP0Addr), 
		.CP0In(CP0In), 
		.CP0Out(CP0Out), 
		.VPC(VPC), 
		.BDIn(BDIn), 
		.ExcCodeIn(ExcCodeIn), 
		.HWInt(HWInt), 
		.EXLClr(EXLClr), 
		.EPCOut(EPCOut), 
		.Req(Req), 
		.IG_Response(IG_Response)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		WE = 0;
		CP0Addr = 0;
		CP0In = 0;
		VPC = 0;
		BDIn = 0;
		ExcCodeIn = 0;
		HWInt = 0;
		EXLClr = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 0;
		HWInt = 6'b000111;
		ExcCodeIn = 5'd12;
        
		// Add stimulus here

	end
   always #2 clk = ~clk;  
endmodule

