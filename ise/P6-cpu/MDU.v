`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:04:26 11/14/2023 
// Design Name: 
// Module Name:    MDU 
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
module MDU(
    input wire[31:0] A,
    input wire[31:0] B,
    output wire[31:0] LO,
    output wire[31:0] HI,
    input wire Start,
    output wire Busy,
    input wire clk,
    input wire reset,
    input wire[3:0] MDUOp
    );
	 reg calEn;
	 reg[31:0] temp_hi, temp_lo;
	 integer mul_count, div_count;
	 
	 assign Busy = ((MDUOp==`MDUOp_mult || MDUOp==`MDUOp_multu)&&(mul_count<=5)&&!reset&&!Start&&calEn)?1:
	              (((MDUOp==`MDUOp_div || MDUOp==`MDUOp_divu)&&(div_count<=10)&&!reset&&!Start&&calEn) ?1:
						  0);
	 //mf
	 assign HI = (MDUOp==`MDUOp_mfhi) ? temp_hi : `REPOSITION_DATA;
	 assign LO = (MDUOp==`MDUOp_mflo) ? temp_lo : `REPOSITION_DATA;
	 
	 always @(posedge clk) 
		 begin
			 if(reset)
				 begin
					 temp_hi <= `REPOSITION_DATA;
					 temp_lo <= `REPOSITION_DATA;
					 mul_count <= 32'h0000_ffff;
					 div_count <= 32'h0000_ffff;
				 end
			 else if(MDUOp==`MDUOp_mtlo)
             begin
				    temp_lo <= A;
             end
          else if(MDUOp==`MDUOp_mthi)	
             begin 
				    temp_hi <= A;
             end				 
			 else if(Start)
				 begin
					 calEn <= 1;
					 mul_count <= 0;
					 div_count <= 0;
				 end
			 else if(calEn)
				 begin
					 if(MDUOp==`MDUOp_mult || MDUOp==`MDUOp_multu) 
						 begin
							 if(mul_count==5) 
								 begin
									  calEn <= 1'b0;
									  {temp_hi,temp_lo} <= (MDUOp==`MDUOp_mult) ? $signed( $signed({{32{A[31]}},A[31:0]}) * $signed({{32{B[31]}},B[31:0]})):
									              A * B;
									  mul_count <= 32'h0000_ffff;
								 end
							 else if(mul_count < 5)
								 begin
									  mul_count <= mul_count + 1;
								 end
						 end
					 else if(MDUOp==`MDUOp_div || MDUOp==`MDUOp_divu)
						 begin
							 if(div_count==10)
								 begin
									 calEn <= 1'b0;
									 temp_hi <= (MDUOp==`MDUOp_div)?$signed( $signed({{32{A[31]}},A[31:0]}) % $signed({{32{B[31]}},B[31:0]})):
									        A % B;
									 temp_lo <= (MDUOp==`MDUOp_div)?$signed( $signed({{32{A[31]}},A[31:0]}) / $signed({{32{B[31]}},B[31:0]})):
									        A / B;
									 div_count <= 32'h0000_ffff;
								 end
							 else if(div_count < 10)
                         begin
								    div_count <= div_count + 1;
                         end								 
						 end
					 end
				 end	 
endmodule
