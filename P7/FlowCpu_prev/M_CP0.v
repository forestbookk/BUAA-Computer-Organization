`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:47 11/18/2022 
// Design Name: 
// Module Name:    M_CP0 
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
`define IE SR[0]
`define EXL SR[1]
`define BD Cause[31]
`define ExcCode Cause[6:2]
`define IP Cause[15:10]
module M_CP0(
		  input wire clk,
        input wire reset,
        input wire en,
        input wire [4:0] CP0Add,
        input wire [31:0] CP0In,
        output wire [31:0] CP0Out,
        input wire [31:0] VPC,
        input wire BDIn,
        input wire [4:0] ExcCodeIn,
        input wire [5:0] HWInt,
        input wire EXLCLr,
        output wire [31:0] EPCOut,
        output wire Req,
        output wire tbReq
    );
    reg [31:0] SR;
    reg [31:0] Cause;
    reg [31:0] EPC;
    wire IntReq = (|(HWInt & `IM)) && `IE && !`EXL;
    wire ExcReq = (|(ExcCodeIn)) && !`EXL;
    assign Req = IntReq || ExcReq;
    assign CP0Out = (CP0Add == 5'd12) ? SR :
                        (CP0Add == 5'd13) ? Cause :
                            (CP0Add == 5'd14) ? EPC : 32'd0;
    assign tbReq =  (SR[12] && Cause[12] && !`EXL && `IE);
	 assign EPCOut = EPC;
    initial begin
        SR = 0;
        Cause = 0;
        EPC = 0;
    end
    always @(posedge clk) begin
        if(reset) begin
            SR = 0;
            Cause = 0;
            EPC = 0;
        end
        else begin
		      `IP = HWInt;
            if(EXLCLr) begin
                `EXL = 1'b0;
            end
            else if(Req) begin
                `EXL = 1'b1;
                EPC = (BDIn) ? VPC-4 : VPC;
                `BD = BDIn;
                `ExcCode = IntReq ? 5'd0 : ExcCodeIn;
            end
            else if(en) begin
                if(CP0Add==5'd12) begin
                    SR = CP0In;
                end
                else if(CP0Add == 5'd13) begin
                    Cause = CP0In;
                end
                else if(CP0Add == 5'd14) begin
                    EPC = CP0In;
                end
            end
        end
    end
endmodule
