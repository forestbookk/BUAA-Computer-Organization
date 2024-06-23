`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:22 10/07/2023 
// Design Name: 
// Module Name:    VoterPlus 
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
module VoterPlus(
    input clk,
    input reset,
    input [31:0] np,
    input [7:0] vip,
    input vvip,
    output reg [7:0] result
    );

	reg [31:0] sumNp;
	reg [7:0] sumVip;
	reg sumVvip;

wire np31 = sumNp[31:31] < np[31:31] ? 1 : 0;
wire np30 = sumNp[30:30] < np[30:30] ? 1 : 0;
wire np29 = sumNp[29:29] < np[29:29] ? 1 : 0;
wire np28 = sumNp[28:28] < np[28:28] ? 1 : 0;
wire np27 = sumNp[27:27] < np[27:27] ? 1 : 0;
wire np26 = sumNp[26:26] < np[26:26] ? 1 : 0;
wire np25 = sumNp[25:25] < np[25:25] ? 1 : 0;
wire np24 = sumNp[24:24] < np[24:24] ? 1 : 0;
wire np23 = sumNp[23:23] < np[23:23] ? 1 : 0;
wire np22 = sumNp[22:22] < np[22:22] ? 1 : 0;
wire np21 = sumNp[21:21] < np[21:21] ? 1 : 0;
wire np20 = sumNp[20:20] < np[20:20] ? 1 : 0;
wire np19 = sumNp[19:19] < np[19:19] ? 1 : 0;
wire np18 = sumNp[18:18] < np[18:18] ? 1 : 0;
wire np17 = sumNp[17:17] < np[17:17] ? 1 : 0;
wire np16 = sumNp[16:16] < np[16:16] ? 1 : 0;
wire np15 = sumNp[15:15] < np[15:15] ? 1 : 0;
wire np14 = sumNp[14:14] < np[14:14] ? 1 : 0;
wire np13 = sumNp[13:13] < np[13:13] ? 1 : 0;
wire np12 = sumNp[12:12] < np[12:12] ? 1 : 0;
wire np11 = sumNp[11:11] < np[11:11] ? 1 : 0;
wire np10 = sumNp[10:10] < np[10:10] ? 1 : 0;
wire np9 = sumNp[9:9] < np[9:9] ? 1 : 0;
wire np8 = sumNp[8:8] < np[8:8] ? 1 : 0;
wire np7 = sumNp[7:7] < np[7:7] ? 1 : 0;
wire np6 = sumNp[6:6] < np[6:6] ? 1 : 0;
wire np5 = sumNp[5:5] < np[5:5] ? 1 : 0;
wire np4 = sumNp[4:4] < np[4:4] ? 1 : 0;
wire np3 = sumNp[3:3] < np[3:3] ? 1 : 0;
wire np2 = sumNp[2:2] < np[2:2] ? 1 : 0;
wire np1 = sumNp[1:1] < np[1:1] ? 1 : 0;
wire np0 = sumNp[0:0] < np[0:0] ? 1 : 0;
wire[7:0] vip7 = sumVip[7:7] < vip[7:7] ? 8'b0100 : 0;
wire[7:0] vip6 = sumVip[6:6] < vip[6:6] ? 8'b0100 : 0;
wire[7:0] vip5 = sumVip[5:5] < vip[5:5] ? 8'b0100 : 0;
wire[7:0] vip4 = sumVip[4:4] < vip[4:4] ? 8'b0100 : 0;
wire[7:0] vip3 = sumVip[3:3] < vip[3:3] ? 8'b0100 : 0;
wire[7:0] vip2 = sumVip[2:2] < vip[2:2] ? 8'b0100 : 0;
wire[7:0] vip1 = sumVip[1:1] < vip[1:1] ? 8'b0100 : 0;
wire[7:0] vip0 = sumVip[0:0] < vip[0:0] ? 8'b0100 : 0;
wire[7:0] vvip0 = sumVvip < vvip ? 8'b0001_0000 : 0;

	always @(posedge clk, posedge reset) begin
		if(reset) begin
			sumNp <= 0;
			sumVip <= 0; 
			sumVvip <= 0;
			result <= 0;
		end else begin
			/* state_module */
			sumNp <= (sumNp | np);
			sumVip <= (sumVip | vip);
			sumVvip <= (sumVvip | vvip);
			/* output_module */
			result <= result + np31 + np30 + np29 + np28 + np27 + np26 + np25 + np24 + np23 
			        + np22 + np21 + np20 + np19 + np18 + np17 + np16 + np15 + np14 + np13 
					+ np12 + np11 + np10 + np9 + np8 + np7 + np6 + np5 + np4 + np3 + np2 
					+ np1 + np0 + vip7 + vip6 + vip5 + vip4 + vip3 + vip2 + vip1 + vip0 + vvip0;
		end
	end

endmodule
