`timescale 1ns / 1ps
`include "const.v"
`define DMSIZE 3071
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:50:31 10/31/2023 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input wire clk,
    input wire reset,
    input wire WE,
	 input wire[31:0] PC,
    input wire[31:0] A,
    input wire[31:0] WD,
    input wire DMEXTOp,
    input wire[1:0] DMOp,
    output reg[31:0] DMRD
    );
	 
	 wire[31:0] DMMemAddr;
	 reg[31:0] DMMemData;
	 reg[31:0] DMRAM[0:3071];
	 wire[1:0] LOW;
	 wire[31:0] orData;
	 
	 assign LOW = DMMemAddr[1:0];
	 assign orData = DMRAM[DMMemAddr[13:2]];
	 assign DMMemAddr = A;
	 
	 //SJUDGE
	 always @(*) 
		 begin
			  if(DMOp==`DMOp_w) 
				  begin
						DMMemData = WD;
				  end 
			  else if(DMOp==`DMOp_h) 
				  begin
				      DMMemData = (LOW==2'b00) ? {orData[31:8],WD[7:0]}:
						           ((LOW==2'b01) ? {orData[31:16],WD[15:8],orData[7:0]}:
									  ((LOW==2'b10) ? {orData[31:24],WD[23:16],orData[15:0]}:
									                  {WD[31:24],orData[23:0]}));
				  end 
			  else 
				  begin//DMOp==`DMOp_b
						DMMemData = (LOW[1]==0) ? {orData[31:16], WD[15:0]}:
						                          {WD[31:16], orData[15:0]};
				  end
		 end
	 
	 //LJUDGE && Read Logic
	 always @* 
		 begin
			  if(DMOp==`DMOp_w) 
					begin
						 DMRD = orData;
					end 
			  else if(DMOp==`DMOp_h) 
					begin
						if(LOW==2'b00) begin
							 DMRD=(orData[7]==0||DMEXTOp==0) ? {{24{1'b0}},orData[7:0]} : {{24{1'b1}},orData[7:0]};
						end else if(LOW==2'b01) begin
							 DMRD=(orData[15]==0||DMEXTOp==0) ? {{24{1'b0}},orData[15:8]} : {{24{1'b1}},orData[15:8]};
						end else if(LOW==2'b10) begin
							 DMRD=(orData[23]==0||DMEXTOp==0) ? {{24{1'b0}},orData[23:16]} : {{24{1'b1}},orData[23:16]};
						end else begin //LOW==2'b11
							 DMRD=(orData[31]==0||DMEXTOp==0) ? {{24{1'b0}},orData[31:24]} : {{24{1'b1}},orData[31:24]};
						end
					end			
			  else 
				  begin
						if(LOW[1]==0) begin
							 DMRD=(orData[15]==0||DMEXTOp==0) ? {{16{1'b0}},orData[15:0]} : {{16{1'b1}},orData[15:0]};
						end else begin
							 DMRD=(orData[31]==0||DMEXTOp==0) ? {{16{1'b0}},orData[31:16]} : {{16{1'b1}},orData[31:16]};
						end
				  end
		 end 
	 
	 //Write Logic
	 integer i;
	 initial 
		 begin
				for(i=0; i<=`DMSIZE; i=i+1) begin
					 DMRAM[i]<=`REPOSITION_DATA;
				end
		 end
	  
	 always @(posedge clk) 
		 begin
			  if(reset) 
				  begin
						for(i=0; i<=`DMSIZE; i=i+1) begin
							 DMRAM[i]<=`REPOSITION_DATA;
						end
				  end 
			  else if(WE)
				  begin
						DMRAM[DMMemAddr[13:2]]=DMMemData;
						$display("@%h: *%h <= %h",  PC, DMMemAddr, DMMemData);
				  end
		 end

endmodule
