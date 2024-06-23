`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:14 11/22/2023 
// Design Name: 
// Module Name:    CP0 
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
`define IM SR[15:10]
`define EXL SR[1]
`define IE SR[0]
`define BD Cause[31]
`define hwint_pend Cause[15:10]
`define ExcCode Cause[6:2]
module CP0(
    input wire clk, 
    input wire reset,
	 input wire WE, // Write En of CP0 Register 

	 input wire[4:0] CP0Addr,
	 input wire[31:0] CP0In, // Write CP0 Data
    output wire[31:0] CP0Out, // Data of CP0 Output
	 
    input wire[31:0] VPC, // PC At Exception or Interrupt
	 input wire BDIn, // if it Branch Delay Instruction
    input wire[6:2] ExcCodeIn, // Type of Exception or Interrupt
    input wire[5:0] HWInt, // 6 Interrupt of External Equipment
    input wire EXLClr, // Set EXL to 0

    output wire[31:0] EPCOut, // EPC Register Output to NPC 
    output wire Req, // Request to Deal Program	 
	 output wire IG_Response

    );
	 reg[31:0] SR, Cause, EPC; 
	 
	 wire IntReq = (|(HWInt & `IM)) & (!`EXL) & `IE ;
	 wire ExcReq = (|(ExcCodeIn)) & (!`EXL) ;
	 assign Req = IntReq | ExcReq;
	 
	 assign IG_Response = (!`EXL) & `IE & (SR[12] & HWInt[2]);
	 
	 assign CP0Out = (CP0Addr==5'd12) ? SR :
	                ((CP0Addr==5'd13) ? Cause :
						 ((CP0Addr==5'd14) ? EPC :
						  `REPOSITION_DATA)) ;
	 assign EPCOut = EPC;
	 
	 initial begin
	     SR = `REPOSITION_DATA;
		  Cause = `REPOSITION_DATA;
		  EPC = `REPOSITION_DATA;
	     end
	 always @(posedge clk) begin
			 if(reset) begin
					 SR    <= `REPOSITION_DATA;
					 Cause <= `REPOSITION_DATA;
					 EPC   <= `REPOSITION_DATA;
				 end
			 else begin
					 `hwint_pend <= HWInt;
					 if(EXLClr) begin
						    `EXL <= 1'b0;
						 end
					 else if(Req) begin
					       `EXL <= 1'b1;
							 `BD <= BDIn;
							 `ExcCode <= (IntReq) ? 5'b0 : ExcCodeIn;
							 EPC <= (BDIn) ? VPC - 32'd4 : VPC;
					    end
					 else if(WE) begin
							 if(CP0Addr==5'd12) begin
									 SR <= CP0In;
								 end 
							 else if(CP0Addr==5'd13)begin
									 Cause <= CP0In;
								 end
							 else if(CP0Addr==5'd14) begin
									 EPC <= CP0In;
								 end
						 end
				 
				 end
		 end
	 


endmodule
