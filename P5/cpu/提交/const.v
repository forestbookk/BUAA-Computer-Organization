`default_nettype none
`define REPOSITION_DATA 32'h0000_0000_0000_0000
//CU
`define op06 6'b0
`define add 6'b10_0000
`define sub 6'b10_0010
`define ori 6'b00_1101
`define lui 6'b00_1111
`define lw 6'b10_0011
`define sw 6'b10_1011
`define jal 6'b00_0011
`define jr 6'b00_1000
`define beq 6'b00_0100

//EXT
//EXTOp
`define EXTOp_zero 1'b0
`define EXTOp_sign 1'b1

//DM
//DMOp
`define DMOp_w 2'b00
`define DMOp_h 2'b01
`define DMOp_b 2'b10
//DMExtOp 
`define DMEXTOp_zero 1'b0
`define DMEXTOp_sign 1'b1

//ALU
`define ALUBug 32'h0000_0000
//ALUASel
`define ALUASel_rs 2'b01
`define ALUASel_sh 2'b10
//ALUBSel
`define ALUBSel_rt 2'b01
`define ALUBSel_imm 2'b10
//ALUOp
`define ADD 3'b000
`define SUB 3'b001
`define OR 3'b010
`define LUI 3'b011
//CMPOp
`define CMPOp_non 3'b000
`define CMPOp_beq 3'b001

//RF
//RFWRSel
`define RFWRSel_rt 3'b000
`define RFWRSel_rd 3'b001
`define RFWRSel_31 3'b010
//RFWDSel
`define RFWDSel_ALU 3'b000
`define RFWDSel_DMRD 3'b001
`define RFWDSel_PC4 3'b010


//NPCOp
`define NPCOp_PC4 4'b0000
`define NPCOp_Br 4'b0001
`define NPCOp_JAL 4'b0010
`define NPCOp_JR 4'b0011 




