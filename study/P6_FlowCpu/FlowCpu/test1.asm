ori $0, $0, 80
ori $1, $0, 68
ori $2, $0, 64
ori $3, $0, 140
ori $4, $0, 156
ori $5, $0, 72
ori $6, $0, 116
ori $7, $0, 108
ori $8, $0, 8
ori $9, $0, 12
ori $10, $0, 20
ori $11, $0, 84
ori $12, $0, 96
ori $13, $0, 4
ori $14, $0, 128
ori $15, $0, 20
ori $16, $0, 112
ori $17, $0, 32
ori $18, $0, 112
ori $19, $0, 136
ori $20, $0, 148
ori $21, $0, 152
ori $22, $0, 40
ori $23, $0, 20
ori $24, $0, 20
ori $25, $0, 124
ori $26, $0, 148
ori $27, $0, 148
ori $28, $0, 88
ori $29, $0, 4
ori $30, $0, 132
ori $31, $0, 152

subu $2,$1,$1
lui $2,1
lw $2,-65496($2)
lui $0,80
jal Test_jal1
ori $1,$31,56
beq $0,$0,Test_beq1
addiu $2,$31,96
Test_jal1: jr $ra
Test_beq1:
mult $2,$3
jal Test1
ori $2,$0,12
Back1:

multu $3,$0
subu $3,$3,$3
sw $0,0($3)
jal Test_jal2
subu $1,$4,$31
beq $0,$0,Test_beq2
addiu $4,$31,144
Test_jal2: jr $ra
Test_beq2:
lui $0,84
jal Test2
or $2,$3,$1
Back2:

subu $3,$2,$1
mthi $2
jal Test_jal3
multu $31,$0
beq $0,$0,Test_beq3
lb $0,-12288($31)
Test_jal3: jr $ra
Test_beq3:
sb $2,32($0)
jal Test3
lw $1,64($0)
Back3:

lui $1,116
mult $2,$1
jal Test_jal4
sltu $0,$3,$31
beq $0,$0,Test_beq4
lb $0,-12288($31)
Test_jal4: jr $ra
Test_beq4:
mult $3,$3
jal Test4
addiu $4,$0,148
Back4:

mflo $1
ori $1,$0,152
lb $0,48($0)
jal Test5
slt $0,$0,$4
Back5:

sltu $2,$0,$2
and $3,$0,$4
jal Test_jal6
slt $3,$3,$31
beq $0,$0,Test_beq6
or $4,$1,$31
Test_jal6: jr $ra
Test_beq6:
mflo $4
jal Test6
mflo $3
Back6:

sltu $4,$3,$1
sh $1,0($0)
jal Test_jal7
slt $4,$0,$31
beq $0,$0,Test_beq7
addu $1,$31,$1
Test_jal7: jr $ra
Test_beq7:
multu $2,$2
jal Test7
lh $1,16($0)
Back7:

addu $0,$4,$3
and $0,$2,$2
and $3,$2,$0
jal Test8
sltu $0,$0,$4
Back8:

mtlo $4
ori $4,$4,76
ori $4,$4,16
and $0,$3,$1
and $1,$2,$2
div $4,$4
jal Test_jal9
multu $31,$2
beq $0,$0,Test_beq9
addu $1,$31,$4
Test_jal9: jr $ra
Test_beq9:
subu $2,$3,$4
jal Test9
slt $1,$2,$3
Back9:

subu $0,$4,$1
ori $4,$1,4
ori $4,$1,24
and $3,$2,$2
and $2,$2,$2
div $1,$4
mthi $3
jal Test10
ori $3,$1,152
ori $3,$1,80
multu $2,$2
addiu $0,$0,36
divu $1,$3
Back10:

lui $3,72
mult $0,$1
jal Test_jal11
sh $3,-12288($31)
beq $0,$0,Test_beq11
andi $4,$31,12
Test_jal11: jr $ra
Test_beq11:
ori $1,$2,56
ori $1,$2,104
mthi $4
mthi $4
div $2,$1
jal Test11
addu $3,$3,$4
Back11:

subu $4,$1,$2
ori $0,$2,120
jal Test_jal12
or $1,$4,$31
beq $0,$0,Test_beq12
or $2,$2,$31
Test_jal12: jr $ra
Test_beq12:
mthi $2
jal Test12
lui $1,48
Back12:

mfhi $2
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,0
sw $1,0($0)
ori $1,$1,64
lw $4,0($0)
sh $1,48($4)
ori $4,$0,48
lui $4,0
lh $4,144($4)
jal Test13
subu $2,$0,$0
jal End
mfhi $4


Test1:
beq $2,$31,EndTest1
subu $9,$9,$9
subu $13,$13,$13
ori $13,$13,10
subu $5,$5,$5
ori $5,$5,1
SubTest1:
addu $9,$9,$5
bne $9,$13,EndTest1
multu $3,$0
lui $0,32
subu $4,$3,$4
mtlo $3
slt $1,$3,$2
subu $1,$1,$1
sw $4,112($1)
andi $1,$4,112
mthi $0
lw $1,32($0)
slt $2,$4,$3
bne $0,$0,SubTest1
mthi $2
lui $3,144
slt $2,$4,$0
mtlo $0
sltu $0,$2,$1
lui $2,100
and $4,$2,$3
slt $4,$2,$0
andi $4,$4,100
mult $4,$4
sltu $4,$4,$3
mtlo $1
or $1,$1,$0
lui $3,144
subu $1,$1,$1
ori $1,$1,80
sb $4,-48($1)
subu $2,$3,$2
EndTest1:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
lui $0,48


Test2:
and $3,$0,$31
andi $2,$3,16
lui $3,108
slt $0,$3,$1
mfhi $1
ori $3,$3,32
lui $3,0
lb $2,0($3)
mult $3,$4
subu $1,$1,$1
sw $1,96($1)
ori $1,$4,72
ori $1,$4,128
mthi $3
mthi $0
div $4,$1
ori $2,$4,12
ori $2,$4,16
subu $3,$1,$1
or $0,$1,$3
divu $4,$2
or $0,$3,$1
ori $1,$4,108
ori $1,$4,144
mfhi $2
or $3,$3,$2
divu $4,$1
lui $1,32
andi $2,$2,104
bne $0,$1,EndTest2
ori $4,$2,152
ori $4,$2,104
mfhi $3
andi $3,$3,92
divu $2,$4
mfhi $1
mtlo $3
mthi $1
subu $2,$2,$2
ori $2,$2,112
lb $4,-95($2)
mthi $4
mfhi $4
lh $3,16($0)
subu $4,$4,$2
subu $4,$4,$4
lh $4,58($4)
ori $4,$3,16
ori $4,$3,68
mult $2,$2
addiu $2,$1,112
divu $3,$4
slt $3,$3,$1
EndTest2:
subu $3,$3,$3
sw $31,148($3)
subu $31,$31,$31
lw $31,148($3)
or $1,$3,$4
jr $ra
or $0,$3,$2


Test3:
or $2,$1,$31
subu $12,$12,$12
subu $25,$25,$25
ori $25,$25,10
subu $28,$28,$28
ori $28,$28,1
SubTest3:
addu $12,$12,$28
bne $12,$25,EndTest3
andi $1,$3,36
lui $0,152
subu $3,$0,$0
and $4,$2,$3
mfhi $0
ori $2,$3,4
ori $2,$3,12
andi $4,$0,112
andi $1,$1,144
div $3,$2
subu $1,$1,$1
ori $1,$1,48
sh $0,-16($1)
ori $4,$1,64
ori $4,$1,108
ori $3,$3,148
ori $2,$2,116
divu $1,$4
addu $2,$0,$0
subu $3,$1,$3
mtlo $1
ori $4,$4,28
ori $4,$4,124
lw $0,16($0)
lb $1,80($0)
div $4,$4
ori $3,$2,40
ori $3,$2,44
andi $0,$1,148
andi $1,$0,124
div $2,$3
ori $3,$3,100
ori $3,$3,160
mthi $2
addu $2,$2,$1
divu $3,$3
sltu $4,$4,$1
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sh $4,0($0)
lh $2,0($0)
lw $4,32($2)
sw $4,96($0)
mult $0,$0
ori $1,$1,116
ori $1,$1,160
mflo $4
mflo $2
div $1,$1
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lb $4,0($0)
lb $2,96($4)
sb $2,32($0)
ori $2,$3,96
ori $2,$3,24
mtlo $1
ori $1,$4,132
divu $3,$2
mtlo $1
lui $2,96
subu $2,$2,$2
ori $2,$2,112
sw $3,-48($2)
ori $0,$4,148
addiu $3,$1,108
lb $0,64($0)
EndTest3:
subu $3,$3,$3
addu $4,$31,$3
addu $31,$31,$31
subu $31,$31,$4
or $1,$3,$3
jr $ra
or $4,$2,$2


Test4:
beq $4,$31,EndTest4
subu $8,$8,$8
subu $23,$23,$23
ori $23,$23,10
subu $6,$6,$6
ori $6,$6,1
SubTest4:
addu $8,$8,$6
beq $8,$23,EndTest4
subu $2,$1,$0
subu $1,$1,$1
sb $0,16($1)
slt $2,$2,$3
mflo $3
multu $4,$4
mtlo $2
andi $1,$0,0
sltu $2,$1,$0
mult $2,$1
mfhi $2
mtlo $4
sb $2,96($0)
mtlo $3
mflo $2
beq $4,$4,SubTest4
or $1,$1,$4
ori $4,$1,116
ori $4,$1,4
subu $3,$2,$3
or $0,$2,$2
divu $1,$4
or $0,$1,$3
mflo $4
mtlo $0
mflo $2
mult $3,$2
or $2,$1,$0
subu $1,$2,$1
subu $1,$4,$1
addu $1,$2,$3
bne $3,$1,SubTest4
multu $0,$1
EndTest4:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
jr $ra
divu $3,$ra


Test5:
andi $1,$31,156
subu $14,$14,$14
subu $20,$20,$20
ori $20,$20,10
subu $11,$11,$11
ori $11,$11,1
SubTest5:
addu $14,$14,$11
bne $14,$20,EndTest5
subu $2,$0,$0
mfhi $4
subu $0,$0,$0
lw $1,0($0)
mthi $3
or $4,$3,$3
subu $4,$3,$2
multu $1,$3
mflo $2
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sh $3,0($0)
lw $4,0($0)
lb $3,48($4)
sh $3,48($0)
or $0,$1,$0
slt $2,$2,$0
subu $4,$4,$4
sh $4,16($4)
subu $2,$2,$2
sw $0,0($2)
subu $1,$3,$1
or $2,$0,$2
bne $0,$3,SubTest5
mult $0,$1
subu $3,$4,$1
or $1,$4,$1
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,80
sb $3,0($0)
ori $3,$3,80
lw $0,0($0)
sh $3,96($0)
mflo $1
andi $3,$1,132
andi $2,$4,120
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sh $1,0($0)
lw $3,0($0)
lh $1,32($3)
sw $1,16($0)
slt $4,$2,$1
ori $2,$0,96
multu $0,$1
EndTest5:
subu $4,$4,$4
sw $31,8($4)
subu $31,$31,$31
lw $31,8($4)
ori $3,$2,20
ori $3,$2,4
subu $4,$4,$4
sh $4,96($0)
divu $2,$3
jr $ra
sh $2,16($0)


Test6:
addiu $2,$31,156
or $0,$1,$1
ori $1,$3,56
sb $3,112($0)
or $2,$0,$1
sltu $1,$2,$2
ori $4,$3,116
andi $3,$1,152
sb $1,32($0)
subu $4,$4,$4
sw $1,96($4)
mult $2,$3
sh $0,96($0)
lui $1,88
andi $1,$1,88
subu $0,$1,$2
andi $1,$1,20
ori $2,$3,0
lui $2,0
lw $3,64($2)
sb $3,0($0)
beq $0,$0,EndTest6
or $4,$3,$1
mult $3,$1
beq $2,$0,EndTest6
addu $4,$2,$0
addu $2,$0,$0
lw $2,16($0)
mfhi $4
sb $1,112($0)
subu $3,$3,$1
EndTest6:
subu $2,$2,$2
addu $2,$31,$2
addu $31,$31,$31
subu $31,$31,$2
jr $ra
lh $0,64($0)


Test7:
multu $31,$1
lb $2,16($0)
subu $0,$0,$0
sw $3,112($0)
subu $3,$3,$3
sw $2,96($3)
lui $0,32
lui $3,36
subu $2,$2,$2
sb $3,32($2)
mfhi $0
subu $1,$4,$3
mthi $4
addu $3,$2,$0
mthi $1
and $1,$2,$1
or $1,$4,$1
or $3,$0,$4
mult $2,$2
subu $1,$1,$1
sw $4,16($1)
subu $3,$3,$3
subu $1,$1,$1
ori $3,$0,5
ori $1,$0,44
divu $1,$3
mflo $4
multu $2,$2
lw $1,0($4)
bne $4,$0,EndTest7
mflo $3
or $3,$0,$0
mflo $3
andi $1,$4,108
mtlo $3
sltu $3,$2,$3
mfhi $1
lb $1,16($0)
EndTest7:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
ori $4,$1,112
ori $4,$1,144
slt $3,$3,$2
slt $2,$3,$3
div $1,$4
jr $ra
lw $3,96($0)


Test8:
addiu $0,$31,108
and $1,$0,$0
subu $3,$2,$1
subu $1,$1,$1
sw $1,16($1)
mult $3,$3
ori $1,$4,112
ori $1,$4,40
and $2,$0,$3
and $3,$3,$0
div $4,$1
mult $2,$2
or $3,$3,$3
andi $3,$2,72
mfhi $4
sh $0,32($0)
mult $4,$2
lui $0,0
bne $2,$3,EndTest8
addu $1,$2,$4
sltu $2,$0,$2
mthi $1
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sb $4,0($0)
lb $2,0($0)
lb $4,48($2)
sw $4,32($0)
slt $2,$0,$2
sltu $3,$0,$1
multu $2,$0
sltu $1,$1,$0
ori $1,$2,32
ori $1,$2,104
mtlo $4
lui $3,64
divu $2,$1
ori $2,$2,136
ori $2,$2,4
multu $1,$1
multu $4,$3
div $2,$2
mflo $0
mthi $0
mthi $4
EndTest8:
subu $2,$2,$2
sw $31,28($2)
subu $31,$31,$31
lw $31,28($2)
jr $ra
lb $2,112($0)


Test9:
bne $3,$31,EndTest9
subu $7,$7,$7
subu $19,$19,$19
ori $19,$19,10
subu $15,$15,$15
ori $15,$15,1
SubTest9:
addu $7,$7,$15
beq $7,$19,EndTest9
addu $2,$3,$0
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,16
sw $4,0($0)
ori $4,$4,112
lh $0,0($0)
sw $4,112($0)
mflo $3
subu $2,$2,$2
ori $2,$2,16
sb $2,0($2)
ori $1,$1,44
ori $1,$1,84
multu $4,$4
multu $3,$3
div $1,$1
mtlo $4
mthi $1
or $3,$3,$0
mtlo $1
mfhi $0
addu $3,$1,$2
mfhi $3
lui $2,68
ori $4,$4,108
ori $4,$4,36
ori $1,$2,20
slt $1,$2,$3
divu $4,$4
andi $3,$3,112
ori $1,$1,160
ori $1,$1,8
mthi $3
subu $3,$3,$3
divu $1,$1
sb $4,16($0)
mthi $4
ori $3,$3,128
ori $3,$3,36
and $0,$2,$2
and $4,$0,$0
div $3,$3
addu $3,$0,$2
subu $3,$3,$2
slt $4,$2,$2
mthi $2
lui $1,12
and $2,$1,$2
and $1,$0,$4
EndTest9:
subu $4,$4,$4
sw $31,32($4)
subu $31,$31,$31
lw $31,32($4)
jr $ra
ori $1,$2,96


Test10:
lh $1,-12288($31)
subu $9,$9,$9
subu $24,$24,$24
ori $24,$24,10
subu $25,$25,$25
ori $25,$25,1
SubTest10:
addu $9,$9,$25
bne $9,$24,EndTest10
lui $3,88
addiu $4,$1,20
mult $1,$1
or $0,$1,$4
and $2,$1,$3
multu $1,$0
mult $4,$1
subu $1,$1,$1
lw $3,32($1)
lb $1,80($0)
sltu $3,$0,$1
lui $4,72
mult $4,$4
or $0,$0,$1
subu $4,$4,$4
sw $3,112($4)
beq $0,$3,SubTest10
mtlo $3
subu $3,$3,$3
sw $4,16($3)
addu $0,$0,$2
subu $2,$2,$2
ori $2,$2,112
sw $1,-32($2)
subu $2,$2,$2
sh $2,16($2)
mult $0,$4
andi $3,$3,16
slt $2,$4,$0
mfhi $3
ori $2,$4,44
subu $4,$4,$4
sh $1,48($4)
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sb $0,0($0)
lw $2,0($0)
lw $0,64($2)
sb $0,96($0)
EndTest10:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
jr $ra
slt $2,$2,$2


Test11:
bne $2,$31,EndTest11
subu $0,$0,$0
lb $2,8($0)
lb $3,80($0)
addiu $2,$0,32
slt $4,$4,$0
slt $3,$3,$1
slt $3,$0,$1
lw $2,32($0)
lh $0,64($0)
mfhi $4
mthi $0
addu $0,$0,$3
sw $0,96($0)
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,32
sh $4,0($0)
ori $4,$4,0
lh $4,0($0)
sw $4,80($4)
lb $4,48($0)
mult $0,$0
slt $2,$4,$0
ori $1,$1,116
ori $1,$1,124
lui $4,12
mtlo $4
divu $1,$1
addu $3,$3,$1
or $2,$1,$2
mult $1,$1
sltu $2,$4,$3
andi $4,$3,92
ori $3,$3,12
beq $1,$3,EndTest11
ori $1,$1,96
ori $1,$1,144
multu $4,$4
multu $4,$3
div $1,$1
ori $4,$2,80
ori $4,$2,148
mult $3,$0
andi $1,$1,8
divu $2,$4
EndTest11:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
mflo $2
jr $ra
divu $1,$ra


Test12:
mult $31,$0
subu $8,$8,$8
subu $28,$28,$28
ori $28,$28,10
subu $7,$7,$7
ori $7,$7,1
SubTest12:
addu $8,$8,$7
beq $8,$28,EndTest12
ori $3,$3,32
ori $3,$3,24
mthi $2
ori $1,$1,116
divu $3,$3
mflo $4
mtlo $1
or $4,$2,$0
mflo $1
mfhi $1
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,64
sw $3,0($0)
ori $3,$3,112
lb $0,0($0)
sw $3,32($0)
or $1,$4,$1
mult $1,$1
slt $1,$0,$3
subu $4,$4,$4
sb $0,96($4)
sltu $4,$4,$3
lui $0,36
mfhi $4
slt $4,$1,$1
andi $3,$4,12
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sb $0,0($0)
lw $0,0($0)
lw $0,32($0)
sw $0,0($0)
bne $3,$3,SubTest12
sw $0,48($0)
mult $2,$4
mthi $1
ori $1,$4,4
mult $3,$0
mfhi $3
mflo $0
mfhi $3
slt $1,$3,$3
EndTest12:
subu $3,$3,$3
addu $2,$31,$3
addu $31,$31,$31
subu $31,$31,$2
andi $1,$0,128
jr $ra
sw $3,112($0)


Test13:
sltu $3,$0,$31
subu $28,$28,$28
subu $29,$29,$29
ori $29,$29,10
subu $8,$8,$8
ori $8,$8,1
SubTest13:
addu $28,$28,$8
bne $28,$29,EndTest13
ori $4,$4,56
ori $4,$4,148
sb $0,112($0)
sh $1,16($0)
div $4,$4
mfhi $0
lui $1,140
mthi $0
slt $2,$1,$4
ori $3,$1,112
or $0,$2,$3
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,112
sb $2,0($0)
ori $2,$2,64
lb $1,0($0)
sw $2,96($1)
sltu $3,$4,$1
slt $3,$0,$0
and $0,$0,$1
mfhi $1
slt $4,$4,$3
ori $4,$2,116
ori $4,$2,128
lb $0,32($0)
mtlo $0
divu $2,$4
slt $1,$4,$2
mfhi $2
lb $0,64($0)
subu $4,$4,$4
ori $4,$4,112
lh $4,-14($4)
ori $2,$3,28
ori $2,$3,112
sb $1,112($0)
sw $1,16($0)
div $3,$2
multu $1,$1
or $3,$4,$4
or $4,$4,$2
ori $4,$3,8
multu $4,$2
andi $0,$4,4
andi $2,$0,12
EndTest13:
subu $4,$4,$4
sw $31,128($4)
subu $31,$31,$31
lw $31,128($4)
jr $ra
ori $2,$4,52


End:
