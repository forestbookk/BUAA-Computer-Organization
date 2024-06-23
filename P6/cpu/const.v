`define REPOSITION_DATA 32'h0000_0000_0000_0000
`define REPOSITION_PC   32'h0000_0000_0000_3000
//CU
`define op06 6'b0
`define add  6'b100000
`define sub  6'b100010
`define andd 6'b100100
`define orr  6'b100101
`define slt  6'b101010
`define sltu 6'b101011
`define lui  6'b001111

`define addi 6'b001000
`define andi 6'b001100
`define ori  6'b001101

`define lb   6'b100000
`define lh   6'b100001
`define lw   6'b100011
`define sb   6'b101000
`define sh   6'b101001
`define sw   6'b101011

`define mult  6'b011000
`define multu 6'b011001
`define div   6'b011010
`define divu  6'b011011
`define mfhi  6'b010000
`define mflo  6'b010010
`define mthi  6'b010001
`define mtlo  6'b010011

`define beq   6'b000100
`define bne   6'b000101
`define jal   6'b000011
`define jr    6'b001000

`define addu  6'b100001

//MDU
`define MDUOp_mult 4'b0001
`define MDUOp_multu 4'b0010
`define MDUOp_div 4'b0011
`define MDUOp_divu 4'b0100
`define MDUOp_mfhi 4'b0101
`define MDUOp_mflo 4'b0110
`define MDUOp_mthi 4'b0111
`define MDUOp_mtlo 4'b1000
`define MDUOp_madd 4'b1001

//EXT
//EXTOp
`define EXTOp_zero 2'b00//default
`define EXTOp_sign 2'b01
`define EXTOp_lui 2'b10

//DM
//DMOp
`define DMOp_w 2'b00//default
`define DMOp_h 2'b01
`define DMOp_b 2'b10
//DMExtOp 
`define DMEXTOp_zero 1'b0//default
`define DMEXTOp_sign 1'b1

//ALU
//ALUASel
`define ALUASel_rs 2'b01//default:0
`define ALUASel_sh 2'b10
//ALUBSel
`define ALUBSel_rt 2'b01//default:0
`define ALUBSel_imm 2'b10
//ALUOp
`define ADD 3'b000//default
`define SUB 3'b001
`define OR 3'b010
`define LUI 3'b011
`define AND 3'b100
`define SLT 3'b101
`define SLTU 3'b110
//CMPOp
`define CMPOp_non 3'b000//default
`define CMPOp_beq 3'b001
`define CMPOp_bne 3'b010
//RF
//RFWRSel
`define RFWRSel_rt 3'b001//default:0
`define RFWRSel_rd 3'b010
`define RFWRSel_31 3'b011
//RFWDSel
`define RFWDSel_EU 3'b001//default:0
`define RFWDSel_DMRD 3'b010
`define RFWDSel_PC8 3'b011


//NPCOp
`define NPCOp_PC4 4'b0000//default
`define NPCOp_Br 4'b0001
`define NPCOp_JL 4'b0010
`define NPCOp_JR 4'b0011 




