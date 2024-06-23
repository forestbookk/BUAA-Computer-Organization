`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:24 10/14/2023 
// Design Name: 
// Module Name:    sd1101_mealy_over 
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
module sd1101_mealy_over(
    input clk,
	 input reset,
	 input din,
	 output reg[2:0] state,
	 output wire dout
    );
    parameter S0 = 3'b000;
	 parameter S1 = 3'b001;
	 parameter S2 = 3'b010;
	 parameter S3 = 3'b011;
	 parameter S4 = 3'b100;
	 
	 
	 
	 always @(posedge clk or posedge reset) begin
    if(reset) begin
      state <= S0;
    end
    else begin
      case(state)
        S0: begin
          //dout <=1'b0;
          if(din)
            state <= S1;
        end
        S1: begin
          //dout <= 1'b0;
          if(din)  
            state <= S2;
          else
            state <= S0;
        end
        S2: begin
          //dout <= 1'b0;
          if(~din)
            state <= S3;
        end
        S3: begin
          //dout <= 1'b0;
          if(din)
            state <= S4;
          else
            state <= S0;
        end
        S4: begin
          if(din)
            state <= S2;
          else
            state <= S0;
        end
      endcase
    end
  end
  assign dout = (state == S4) ? 1 : 0;
endmodule
