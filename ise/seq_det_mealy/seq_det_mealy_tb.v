`timescale 1ns / 1ps
//
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/04 15:24:59
// Design Name: 
// Module Name: seq_det_moore_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//
 
 
module seq_det_mealy_tb;
	reg clk,reset;
	reg din;
	wire dout;
	reg [20:0] din_mid;
	integer i;
   wire[1:0] current_state;
   // Note: CLK must be defined as a reg when using this method
   
   parameter PERIOD = 10;
 
   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end  
				
	initial begin
	
	reset = 1'b1;
	din_mid = 21'b110111010110100101101;
	
	#  20
	reset = 1'b0;
	
    din = 1'b0;
	for(i = 0;i < 21;i = i + 1)
	begin
		#PERIOD
		din = din_mid[i];
	end
	
	end
 
	seq_det_mealy uu1(.clk(clk),.reset(reset),.din(din),.dout(dout), .current_state(current_state));
 
 
endmodule