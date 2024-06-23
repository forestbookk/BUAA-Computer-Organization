`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:42 10/31/2023 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input wire clk,
    input wire reset,
	 input wire interrupt,              // 外部中断信号
	 output wire[31:0] macroscopic_pc, // 宏观 PC
	 
    output wire[31:0] i_inst_addr,    // IM 读取地址（取指 PC）
    input  wire[31:0] i_inst_rdata,   // IM 读取数据

    output wire[31:0] m_data_addr,    // DM 读写地址
    input  wire[31:0] m_data_rdata,   // DM 读取数据
    output wire[31:0] m_data_wdata,   // DM 待写入数据
    output wire[3 :0] m_data_byteen,  // DM 字节使能信号

    output wire[31:0] m_int_addr,     // 中断发生器待写入地址
    output wire[3 :0] m_int_byteen,   // 中断发生器字节使能信号

    output wire[31:0] m_inst_addr,    // M 级 PC

    output wire w_grf_we,              // GRF 写使能信号
    output wire[4 :0] w_grf_addr,     // GRF 待写入寄存器编号
    output wire[31:0] w_grf_wdata,    // GRF 待写入数据

    output wire[31:0] w_inst_addr     // W 级 PC
    );
	 
/*******命名*********/

    /*****TC*******/
    wire TC0_IRQ, TC1_IRQ;	
    /*******cpu********/
	 wire[5:0] HWInt = {3'b0, interrupt, TC1_IRQ, TC0_IRQ};
	 wire IG_Response;
    wire[31:0] CPU_data_addr;
    wire[31:0] CPU_data_wdata;
    wire[3:0]  CPU_data_byteen;
    wire[31:0] CPU_data_rdata;
	 /*****bridge********/
    wire[31:0] TC0_Addr;
    wire TC0_WE;
    wire[31:0] TC0_Din;
    wire[31:0] TC0_Dout;
	 
    wire[31:0] TC1_Addr;
    wire TC1_WE;
    wire[31:0] TC1_Din;
    wire[31:0] TC1_Dout;	
 
    /*****布线-中断发生器*****/
	 assign m_int_addr =  CPU_data_addr;
	 assign m_int_byteen = CPU_data_byteen;

	 
CPU _cpu(
    .clk(clk),
	 .reset(reset),
	 .HWInt(HWInt),
	 .macroscopic_pc(macroscopic_pc),
	 
	 .i_inst_addr(i_inst_addr),
	 .i_inst_rdata(i_inst_rdata),
	 
	 .m_data_addr(CPU_data_addr),
	 .m_data_wdata(CPU_data_wdata),
	 .m_data_byteen(CPU_data_byteen),
	 
	 .m_data_rdata(CPU_data_rdata),
	 .m_inst_addr(m_inst_addr),
	 
	 .w_grf_we(w_grf_we),
	 .w_grf_addr(w_grf_addr),
	 .w_grf_wdata(w_grf_wdata),
	 
	 .w_inst_addr(w_inst_addr),
	 .IG_Response(IG_Response)
);
	 
Bridge _bridge(
    .CPU_data_addr(CPU_data_addr),
	 .CPU_data_wdata(CPU_data_wdata),
	 .CPU_data_byteen(CPU_data_byteen),
	 .CPU_data_rdata(CPU_data_rdata),
	 .m_data_addr(m_data_addr),
	 .m_data_wdata(m_data_wdata),
	 .m_data_byteen(m_data_byteen),
	 .m_data_rdata(m_data_rdata),
	 .TC0_Addr(TC0_Addr),
	 .TC0_Din(TC0_Din),
	 .TC0_WE(TC0_WE),
	 .TC0_Dout(TC0_Dout),
	 .TC1_Addr(TC0_Addr),
	 .TC1_Din(TC0_Din),
	 .TC1_WE(TC0_WE),
	 .TC1_Dout(TC0_Dout)
);

TC _TC0(
    .clk(clk),
	 .reset(reset),
	 .WE(TC0_WE),
	 .Addr(TC0_Addr[31:2]),
	 .Din(TC0_Din),
	 .Dout(TC0_Dout),
	 .IRQ(TC0_IRQ)
);

TC _TC1(
    .clk(clk),
	 .reset(reset),
	 .WE(TC1_WE),
	 .Addr(TC1_Addr[31:2]),
	 .Din(TC1_Din),
	 .Dout(TC1_Dout),
	 .IRQ(TC1_IRQ)
);
endmodule
