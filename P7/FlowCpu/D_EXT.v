`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:59 11/03/2022 
// Design Name: 
// Module Name:    D_EXT 
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
`default_nettype none
module D_EXT(
    input wire [15:0] i16,
    output reg [31:0] i32,
    input wire ExtendSign
    );
    always @(*) begin
        if(ExtendSign == 0) begin
            i32 = {{16{i16[15]}},i16};
        end
        else begin
            i32 = {16'h0000,i16};
        end
    end
endmodule
