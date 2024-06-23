`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:04 11/03/2022 
// Design Name: 
// Module Name:    D_NPC 
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
`default_nettype none
module D_NPC(
    input wire [31:0] F_PC,
    input wire [31:0] D_PC,
    input wire Beq_sign,
	 input wire Bne_sign,
    input wire Jal_sign,
    input wire Jr_sign,
    input wire [25:0] Jal_imm26,
    input wire [31:0] D_GRF_Jr,
    input wire [15:0] Beq_imm16,
    input wire Equal,
    output reg [31:0] NPC,
    output wire [31:0] PC4
    );
    always @(*) begin
        if((Beq_sign && Equal)||(Bne_sign && !Equal)) begin
            NPC = D_PC + 4 + {{14{Beq_imm16[15]}},Beq_imm16,2'b00};
        end
        else if(Jal_sign) begin
            NPC = {D_PC[31:28],Jal_imm26,2'b00};
        end
        else if(Jr_sign) begin
            NPC = D_GRF_Jr;
        end
        else begin
            NPC = F_PC + 4;
        end
    end
    assign PC4 = F_PC + 4;
endmodule
