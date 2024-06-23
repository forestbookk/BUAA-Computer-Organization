`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:32 11/13/2023 
// Design Name: 
// Module Name:    test_sign 
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
module test_sign(
    input [31:0] rs,
    input [31:0] rt,
    output condition
    );
	 wire[32:0] temp = {rs[31],rs} + {rt[31],rt};
	 assign condition = (temp==0) ? 1 : 0;


endmodule
