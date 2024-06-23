`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:27 10/27/2022 
// Design Name: 
// Module Name:    MUX 
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
module MUX_4_32(
    input wire [31:0] data0,
    input wire [31:0] data1,
    input wire [31:0] data2,
    input wire [31:0] data3,
    input wire [1:0] sel,
    output wire [31:0] out
    );
    assign out = (sel==2'b00) ? data0 : 
                    (sel==2'b01) ? data1 :
                        (sel==2'b10) ? data2 : data3;
endmodule


module MUX_4_5(
    input wire [4:0] data0,
    input wire [4:0] data1,
    input wire [4:0] data2,
    input wire [4:0] data3,
    input wire [1:0] sel,
    output wire [4:0] out
    );
    assign out = (sel==2'b00) ? data0 : 
                    (sel==2'b01) ? data1 :
                        (sel==2'b10) ? data2 : data3;
endmodule

module MUX_2_32(
    input wire [31:0] data0,
    input wire [31:0] data1,
    input wire sel,
    output wire [31:0] out
    );
    assign out = (sel==2'b00) ? data0 : data1;
endmodule