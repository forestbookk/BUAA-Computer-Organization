`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:18:07 11/14/2023 
// Design Name: 
// Module Name:    BE 
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
module BE(
    input wire[31:0] DMAddr,
    input wire[1:0] DMOp,
    input wire DMEXTOp,
	 
	 input wire WE,
	 input wire req,
    input wire[31:0] WD_raw,
	 output reg[31:0] WD,
	 output reg[3:0] DMByteEn,
	 
	 input wire[31:0] DMRD_raw,
    output reg[31:0] DMRD
    );
	 wire[1:0] LOW;
	 
	 assign LOW = DMAddr[1:0];
	 
	 //SJudge
	 always @(*) 
		 begin
			  if(WE && !req)
			     begin
					  if(DMOp==`DMOp_w) 
						  begin
								DMByteEn = 4'b1111;
								WD = WD_raw;
						  end 
					  else if(DMOp==`DMOp_h) 
						  begin
								DMByteEn = (LOW[1]==0) ? 4'b0011:
																  4'b1100;
						      WD = (LOW[1]==0)?WD_raw:
								                {WD_raw[15:0],16'h00};
								                  
						  end 
					  else 
						  begin//DMOp==`DMOp_b
						      DMByteEn =  (LOW==2'b00) ? 4'b0001:
											  ((LOW==2'b01) ? 4'b0010:
											  ((LOW==2'b10) ? 4'b0100:
																	4'b1000));
								
						      WD =        (LOW==2'b00) ? {WD_raw}:
											  ((LOW==2'b01) ? {WD_raw[23:0],8'h00}:
											  ((LOW==2'b10) ? {WD_raw[15:0],16'h00}:
																	{WD_raw[7:0],24'h00}));
						  end
				  end
			  else 
              begin
				      DMByteEn = 4'b0000;
						WD = `REPOSITION_DATA;
              end				  
		 end
		 
	 //LJudge
	 always @* 
		 begin
			  if(DMOp==`DMOp_w) 
					begin
						 DMRD = DMRD_raw;
					end 
			  else if(DMOp==`DMOp_h) 
					begin
						if(LOW[1]==0) 
							begin
								 DMRD=(DMRD_raw[15]==0||DMEXTOp==0) ? {{16{1'b0}},DMRD_raw[15:0]} : {{16{1'b1}},DMRD_raw[15:0]};
							end 
						else 
							begin
								 DMRD=(DMRD_raw[31]==0||DMEXTOp==0) ? {{16{1'b0}},DMRD_raw[31:16]} : {{16{1'b1}},DMRD_raw[31:16]};
							end
					end			
			  else 
				  begin
				      if(LOW==2'b00) 
							begin
								 DMRD=(DMRD_raw[7]==0||DMEXTOp==0) ? {{24{1'b0}},DMRD_raw[7:0]} : {{24{1'b1}},DMRD_raw[7:0]};
							end 
						else if(LOW==2'b01) 
							begin
								 DMRD=(DMRD_raw[15]==0||DMEXTOp==0) ? {{24{1'b0}},DMRD_raw[15:8]} : {{24{1'b1}},DMRD_raw[15:8]};
							end 
						else if(LOW==2'b10) 
							begin
								 DMRD=(DMRD_raw[23]==0||DMEXTOp==0) ? {{24{1'b0}},DMRD_raw[23:16]} : {{24{1'b1}},DMRD_raw[23:16]};
							end 
						else 
							begin //LOW==2'b11
								 DMRD=(DMRD_raw[31]==0||DMEXTOp==0) ? {{24{1'b0}},DMRD_raw[31:24]} : {{24{1'b1}},DMRD_raw[31:24]};
							end
						
				  end
		 end  
	 
endmodule
