`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:42 11/13/2022 
// Design Name: 
// Module Name:    W_BE 
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
module W_BE(
    input wire [1:0] A,
    input wire [31:0] Din,
    input wire [2:0] Op,
    output wire [31:0] Dout
    );
    wire [7:0] BTemp;
    wire [15:0] HTemp;
    assign BTemp = (A==2'b00) ? Din[7:0] :
                      (A==2'b01) ? Din[15:8] :
                        (A==2'b10) ? Din[23:16] : Din[31:24];
    assign HTemp = (A==2'b00) ? Din[15:0] : Din[31:16];
    assign Dout = (Op == 3'b000) ? Din : 
                    (Op == 3'b001) ? {24'd0,BTemp} :
                        (Op == 3'b010) ? {{24{BTemp[7]}},BTemp} :
                            (Op == 3'b011) ? {16'd0,HTemp} : 
                                (Op ==3'b100 ) ? {{16{HTemp[15]}},HTemp} : Din ; 
endmodule
