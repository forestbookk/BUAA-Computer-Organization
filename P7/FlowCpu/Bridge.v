`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:34 11/19/2022 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
		input wire [31:0] PrAddr,
		input wire [31:0] PrWD,
		input wire PrWE,
		input wire [31:0] TC1_RD,
		input wire [31:0] TC2_RD,
		input wire [31:0] DM_RD,
		output wire [31:0] DEV_WD,
		output wire [31:0] DEV_Addr,
		output wire [31:0] PrRD,
		output wire TC1_WE,
		output wire TC2_WE,
		output wire DM_WE
    );
		wire HitTC1,HitTC2,HitDM;
		assign HitTC1 = (PrAddr[31:4] == 28'h00007F0) ? 1 : 0;
		assign HitTC2 = (PrAddr[31:4] == 28'h00007F1) ? 1 : 0;
		assign HitDM = (PrAddr <= 32'h0000_2fff) ?  1 : 0;
		assign DEV_Addr = PrAddr;
		assign DEV_WD = PrWD;
		assign TC1_WE = PrWE && HitTC1;
		assign TC2_WE = PrWE && HitTC2;
		assign DM_WE = PrWE && HitDM;
		assign PrRD = (HitTC1) ? TC1_RD : 
								(HitTC2) ? TC2_RD : 
									(HitDM) ? DM_RD : 32'd0;

endmodule
