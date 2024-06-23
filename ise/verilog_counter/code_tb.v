`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:42 09/01/2023 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output reg [63:0] Output0,
    output reg [63:0] Output1
    );
   
    reg [1:0] cycle_count_1;
	 
	 initial begin
		 Output0 = 0;
		 Output1 = 0;
	 end
	 
	 always @(posedge Clk) begin
	   if(Reset) begin
			Output0 <= 0;
			Output1 <= 0;
			cycle_count_1 <= 0;
		end else begin
			if(En) begin
				if(Slt) begin
					cycle_count_1 <= cycle_count_1 + 1;
					Output1 <= (cycle_count_1 == 2'b11) ? Output1 + 1 : Output1; 
				end else begin
				   Output0 <= Output0 + 1;
				end
			end else begin
			end
		end
	 end

endmodule
