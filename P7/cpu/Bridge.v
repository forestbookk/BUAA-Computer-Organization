`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:10 11/24/2023 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
    output wire[31:0] m_data_addr,
    output wire[31:0] m_data_wdata,
    output wire[3:0] m_data_byteen,
    input  wire[31:0] m_data_rdata,
	 
    input wire[31:0] CPU_data_addr,
    input wire[31:0] CPU_data_wdata,
    input wire[3:0]  CPU_data_byteen,
    output wire[31:0] CPU_data_rdata,
	 
    output wire[31:0] TC0_Addr,
    output wire TC0_WE,
    output wire[31:0] TC0_Din,
    input wire[31:0] TC0_Dout,
	 
    output wire[31:0] TC1_Addr,
    output wire TC1_WE,
    output wire[31:0] TC1_Din,
    input wire[31:0] TC1_Dout
    );
	 
	 wire TC0AddrRange = (CPU_data_addr >= `StartTC0&&CPU_data_addr <= `EndTC0);
	 wire TC1AddrRange = (CPU_data_addr >= `StartTC1&&CPU_data_addr <= `EndTC1);
	 wire DMAddrRange = (CPU_data_addr >= `StartDM &&CPU_data_addr <= `EndDM);
	 wire IntAddrRange = (CPU_data_addr >= `StartInt&&CPU_data_addr <= `EndInt);
	 
	 assign m_data_addr = CPU_data_addr;
	 assign TC0_Addr = CPU_data_addr;
	 assign TC1_Addr = CPU_data_addr;
	 
	 assign m_data_wdata = CPU_data_wdata;
	 assign TC0_Din = CPU_data_wdata;
	 assign TC1_Din = CPU_data_wdata;
	 
	 assign m_data_byteen = (DMAddrRange) ? CPU_data_byteen : 4'd0;
	 assign TC0_WE = (|CPU_data_byteen) && TC0AddrRange;
	 assign TC1_WE = (|CPU_data_byteen) && TC1AddrRange;
	 
	 assign CPU_data_rdata = (TC0AddrRange) ? TC0_Dout :
	                        ((TC1AddrRange) ? TC1_Dout :
									((DMAddrRange) ? m_data_rdata : 
									  32'd0)) ;

endmodule
