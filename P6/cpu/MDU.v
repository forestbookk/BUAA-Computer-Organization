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
	 reg[31:0] temp_hi;
    reg[31:0] temp_lo;
	 integer mul_count, div_count;
	 reg muling, diving;
	 
	 assign Busy = (muling&&(mul_count<5)&&!reset&&!Start)? 1:
	              ((diving&&(div_count<10)&&!reset&&!Start) ?1:
						  0);
	 //mf
	 assign HI = (MDUOp==`MDUOp_mfhi) ? temp_hi : `REPOSITION_DATA;
	 assign LO = (MDUOp==`MDUOp_mflo) ? temp_lo : `REPOSITION_DATA;
	 
	 wire[63:0] signAmulB;
	 assign signAmulB = $signed($signed(64'd0) + $signed(A) * $signed(B));
	 
	 always @(posedge clk) 
		 begin
			 if(reset)
				 begin
					 temp_hi <= `REPOSITION_DATA;
					 temp_lo <= `REPOSITION_DATA;
					 muling <= 1'b0;
					 diving <= 1'b0;
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
          else if(MDUOp==`MDUOp_madd)
			    begin
					 {temp_hi, temp_lo} <= {temp_hi,temp_lo}+signAmulB;
				 end				 
			 else if(Start)
				 begin
				    case(MDUOp)
					     `MDUOp_mult:begin
						      {temp_hi,temp_lo} <= $signed( $signed({{32{A[31]}},A[31:0]}) * $signed({{32{B[31]}},B[31:0]}));
						      muling <= 1'b1;
								mul_count <= 0;
						  end
						  `MDUOp_multu:begin
						      {temp_hi,temp_lo} <= A * B;
								muling <= 1'b1;
								mul_count <= 0;
						  end
						  `MDUOp_div:begin
						      temp_lo <= $signed(A) / $signed(B);	
								temp_hi <= $signed(A) % $signed(B);
                        diving <= 1'b1;
								div_count <= 0;								
						  end
						  `MDUOp_divu:begin
						      temp_hi <= A % B;
								temp_lo <= A / B;	
								diving <= 1'b1;
								div_count <= 0;
						  end
					 endcase
				 end
			 else if(muling)
             begin
					if(mul_count==4) 
						 begin
							  mul_count <= 32'h0000_ffff;
							  muling <= 1'b0;
						 end
					 else if(mul_count < 4)
						 begin
							  mul_count <= mul_count + 1;
						 end
             end
          else if(diving)
             begin
					 if(div_count==9)
						 begin
							 div_count <= 32'h0000_ffff;
							 diving <= 1'b0;
						 end
					 else if(div_count < 9)
						 begin
							 div_count <= div_count + 1;
						 end		
             end
        end				 
endmodule
