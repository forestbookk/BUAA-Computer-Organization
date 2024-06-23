`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:23 10/16/2023 
// Design Name: 
// Module Name:    event_horizen 
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
module event_horizen(
    input a,
	 input clk,
	 output reg b,
    output reg[2:0] c
    );
    
    always @(posedge clk) begin
        b <= a;
        if (b == 1) begin
            c <= 3'b010;
        end else begin
            c <= 3'b011;
        end
    end

endmodule