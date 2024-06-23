`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:27 11/04/2022 
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
`default_nettype none
module mips(
    input wire clk,
    input wire reset,
    input wire interrupt,
    output wire [31:0] macroscopic_pc,

	 output wire [31:0] i_inst_addr,
	 input wire [31:0] i_inst_rdata,

	 input wire [31:0] m_data_rdata,
    output wire [31:0] m_data_addr,
	 output wire [31:0] m_data_wdata,
	 output wire [3:0] m_data_byteen,
    
    output wire [31:0] m_int_addr,     // 中断发生器待写入地址
    output wire [3 :0] m_int_byteen,   // 中断发生器字节使能信号

	 output wire [31:0] m_inst_addr,

	 output wire w_grf_we,
    output wire [4:0] w_grf_addr,
    output wire [31:0] w_grf_wdata,

    output wire [31:0] w_inst_addr
    );


//CPU
wire [31:0] DM_Dout = m_data_rdata;
wire [31:0] PrAddr;
wire [31:0] PrWD;
wire [3:0] data_byteen;
wire [31:0] inst_addr;
//CPU

//Bridge
wire [31:0] DEV_WD;
wire [31:0] DEV_Addr;
wire TC1_WE;
wire TC2_WE;
wire DM_WE;
wire PrWE = |data_byteen;
wire [31:0] PrRD;
//Bridge

//TC1
wire [31:0] TC1_Dout;
wire TC1_IRQ;
//TC1

//TC2
wire [31:0] TC2_Dout;
wire TC2_IRQ;
//TC2


DataPath cpu(
	.clk(clk),
	.reset(reset),
	.i_inst_addr(i_inst_addr),
	.i_inst_rdata(i_inst_rdata),
	.m_data_rdata(PrRD),
	.m_data_addr(PrAddr),
	.m_data_wdata(PrWD),
	.m_data_byteen(data_byteen),
	.m_inst_addr(inst_addr),
	.w_grf_we(w_grf_we),
	.w_grf_addr(w_grf_addr),
	.w_grf_wdata(w_grf_wdata),
	.w_inst_addr(w_inst_addr),
	.HWInt({3'd0,interrupt,TC2_IRQ,TC1_IRQ})
);



Bridge bridge(
	.PrAddr(PrAddr),
	.PrWD(PrWD),
    .PrWE(PrWE),
    .TC1_RD(TC1_Dout),
    .TC2_RD(TC2_Dout),
    .DM_RD(DM_Dout),
    .DEV_WD(DEV_WD),
    .DEV_Addr(DEV_Addr),
    .PrRD(PrRD),
    .TC1_WE(TC1_WE),
    .TC2_WE(TC2_WE),
    .DM_WE(DM_WE)
);


TC TC1(
    .clk(clk),
    .reset(reset),
    .Addr(DEV_Addr[31:2]),
    .WE(TC1_WE),
    .Din(DEV_WD),
    .Dout(TC1_Dout),
    .IRQ(TC1_IRQ)
);

TC TC2(
    .clk(clk),
    .reset(reset),
    .Addr(DEV_Addr[31:2]),
    .WE(TC2_WE),
    .Din(DEV_WD),
    .Dout(TC2_Dout),
    .IRQ(TC2_IRQ)    
);


//"DM"
assign m_data_addr = PrAddr;
assign m_data_wdata = DEV_WD;
assign m_data_byteen =(DM_WE) ? data_byteen : 4'd0;
assign m_inst_addr = inst_addr;



//"Exc"
assign m_int_addr = PrAddr;
assign m_int_byteen = data_byteen;


assign macroscopic_pc = m_inst_addr;
endmodule