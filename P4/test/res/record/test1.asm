ori $0, $0, 156
ori $1, $0, 108
ori $2, $0, 108
ori $3, $0, 0
ori $4, $0, 140
ori $5, $0, 80
ori $6, $0, 116
ori $7, $0, 0
ori $8, $0, 4
ori $9, $0, 136
ori $10, $0, 40
ori $11, $0, 56
ori $12, $0, 84
ori $13, $0, 124
ori $14, $0, 152
ori $15, $0, 72
ori $16, $0, 48
ori $17, $0, 144
ori $18, $0, 88
ori $19, $0, 60
ori $20, $0, 124
ori $21, $0, 76
ori $22, $0, 72
ori $23, $0, 80
ori $24, $0, 16
ori $25, $0, 28
ori $26, $0, 44
ori $27, $0, 68
ori $28, $0, 124
ori $29, $0, 128
ori $30, $0, 96
ori $31, $0, 32

lw $3,120($0)
lui $0,16
sub $2,$0,$1
jal Test1
lw $0,100($0)
Back1:
add $0,$3,$2
lw $0,4($0)
sub $2,$2,$2
ori $2,$2,108
sw $4,-96($2)
jal Test2
sw $0,116($0)
Back2:
sub $1,$1,$1
lw $1,76($1)
lw $2,120($0)
add $2,$1,$1
jal Test3
add $3,$3,$1
Back3:
sub $2,$2,$2
lw $2,124($2)
sw $0,144($0)
sub $3,$3,$3
sw $3,56($3)
jal Test4
sw $0,48($0)
Back4:
ori $1,$3,20
lui $3,140
sub $0,$2,$4
jal Test5
add $2,$4,$1
Back5:
add $0,$1,$0
ori $0,$4,32
add $1,$2,$1
jal Test6
ori $3,$2,16
Back6:
sw $4,40($0)
lw $0,124($0)
lw $1,8($0)
jal Test7
add $1,$2,$0
Back7:
lui $0,80
sub $1,$1,$1
ori $1,$1,88
sw $2,-48($1)
add $2,$3,$1
jal Test8
lw $1,124($0)
Back8:
lui $4,72
ori $1,$3,120
sub $2,$3,$4
jal Test9
lui $4,8
Back9:
lui $0,24
sub $1,$1,$1
sw $2,108($1)
sub $2,$2,$2
ori $2,$2,140
sw $2,-52($2)
jal Test10
sub $4,$4,$2
Back10:
sub $1,$1,$1
ori $1,$1,16
sw $2,-8($1)
sub $2,$4,$4
sw $3,80($0)
jal Test11
lw $3,60($0)
Back11:
sub $2,$2,$2
ori $2,$2,132
lw $0,-68($2)
sub $1,$1,$1
ori $1,$1,16
sw $0,-16($1)
sub $1,$1,$1
sw $3,116($1)
jal Test12
lw $1,104($0)
Back12:
ori $4,$0,88
ori $4,$2,56
add $1,$4,$1
jal Test13
sub $4,$2,$2
Back13:
ori $0,$0,140
ori $4,$0,112
sub $1,$1,$1
ori $1,$1,116
sw $2,-76($1)
jal Test14
ori $4,$1,124
Back14:
lui $2,124
lw $0,0($0)
lw $1,156($0)
jal Test15
lui $4,64
jal End
lw $1,108($0)

Test1:
lui $1,12
sub $1,$1,$1
ori $1,$1,80
lw $3,-40($1)
sub $0,$0,$4
lui $2,96
sub $4,$4,$4
ori $4,$4,148
lw $3,-24($4)
lw $4,12($0)
add $4,$3,$4
sub $1,$4,$0
sub $4,$3,$1
sub $3,$3,$3
lw $4,60($3)
sub $4,$4,$4
ori $4,$4,64
sw $4,-36($4)
sub $1,$1,$1
lw $2,112($1)
lw $3,112($0)
ori $2,$4,44
lw $4,92($0)
sub $0,$4,$1
sw $4,60($0)
sw $3,12($0)
lui $4,96
sub $2,$1,$0
sub $1,$1,$1
ori $1,$1,84
lw $3,-24($1)
sub $0,$3,$3
ori $0,$1,24
sub $4,$0,$1
add $1,$0,$4
EndTest1:
jr $ra
sw $0,92($0)


Test2:
sub $3,$3,$0
sub $4,$1,$1
sub $2,$2,$2
ori $2,$2,104
sw $2,-4($2)
ori $4,$1,132
sub $0,$0,$0
sw $0,128($0)
lw $3,76($0)
add $2,$0,$4
ori $1,$3,0
sw $1,112($0)
ori $2,$3,44
beq $4,$3,EndTest2
sw $2,128($0)
lui $2,108
lui $4,148
sub $2,$2,$0
ori $3,$2,136
sub $0,$0,$0
sw $1,44($0)
sub $1,$1,$1
sw $4,92($1)
sub $1,$1,$1
ori $1,$1,140
sw $0,-16($1)
add $1,$1,$1
add $0,$1,$4
sw $3,68($0)
sub $1,$1,$1
lw $0,68($1)
add $2,$3,$1
add $1,$2,$0
add $4,$0,$1
EndTest2:
jr $ra
lw $3,4($0)


Test3:
lui $0,104
lw $3,52($0)
sub $3,$0,$2
lw $4,48($0)
lw $3,32($0)
sub $2,$1,$0
add $4,$1,$1
sub $4,$4,$4
sw $2,108($4)
beq $1,$0,EndTest3
add $4,$3,$4
add $3,$3,$3
lui $3,24
sub $4,$1,$2
sub $4,$4,$4
ori $4,$4,116
lw $2,-108($4)
beq $1,$3,EndTest3
lui $0,0
ori $2,$3,92
lw $0,128($0)
ori $3,$3,136
sub $0,$0,$0
sw $0,88($0)
beq $0,$4,EndTest3
lw $4,116($0)
sw $4,8($0)
beq $4,$4,EndTest3
lui $3,52
sub $1,$1,$1
ori $1,$1,124
lw $3,0($1)
sub $3,$3,$3
sw $1,120($3)
lui $0,116
sw $4,100($0)
EndTest3:
jr $ra
add $1,$4,$1


Test4:
sub $0,$0,$0
sw $2,56($0)
sw $4,88($0)
lui $3,128
lui $4,76
sub $1,$1,$1
lw $2,108($1)
lui $3,4
sw $1,156($0)
sub $2,$2,$2
sw $0,96($2)
sw $0,120($0)
lui $3,88
sw $1,68($0)
lui $0,28
lui $3,92
sub $2,$0,$2
lw $1,152($0)
sw $2,88($0)
sw $2,128($0)
lui $1,64
add $3,$3,$0
sub $2,$3,$3
lui $0,80
sub $2,$2,$2
sw $2,116($2)
lui $0,96
sw $0,28($0)
ori $0,$3,36
EndTest4:
jr $ra
add $4,$1,$3


Test5:
sub $17,$17,$17
sub $14,$14,$14
ori $14,$14,10
sub $16,$16,$16
ori $16,$16,1
SubTest5:
add $17,$17,$16
beq $17,$14,EndTest5
add $0,$4,$3
sub $4,$4,$4
lw $0,140($4)
lw $2,64($0)
ori $4,$3,136
lw $1,100($0)
lw $1,96($0)
lui $3,24
sub $4,$0,$0
ori $4,$0,68
beq $0,$3,SubTest5
lw $1,76($0)
beq $3,$4,SubTest5
sub $2,$2,$3
sub $4,$4,$4
lw $2,112($4)
sub $0,$2,$4
sub $3,$3,$3
lw $3,128($3)
lui $2,88
lw $1,144($0)
sw $2,24($0)
sw $0,4($0)
beq $3,$1,SubTest5
sw $0,0($0)
sub $4,$0,$0
lui $4,48
beq $4,$0,SubTest5
ori $3,$0,88
beq $4,$3,SubTest5
add $0,$2,$3
sw $4,0($0)
beq $0,$0,SubTest5
lw $2,148($0)
sub $4,$4,$4
lw $4,92($4)
EndTest5:
jr $ra
add $4,$4,$0


Test6:
sub $4,$4,$4
sw $3,32($4)
sw $1,140($0)
ori $0,$0,36
lw $2,84($0)
add $1,$2,$0
lui $4,24
lui $4,144
sub $1,$3,$1
add $3,$3,$4
lui $0,120
lui $1,96
sub $1,$2,$2
sw $3,136($0)
sub $4,$4,$4
ori $4,$4,100
sw $4,-20($4)
sub $3,$3,$3
lw $4,140($3)
beq $1,$0,EndTest6
sub $0,$0,$3
sub $1,$1,$1
ori $1,$1,52
sw $2,-28($1)
lui $0,88
ori $0,$3,48
lw $2,12($0)
sub $4,$4,$4
ori $4,$4,52
lw $1,-12($4)
ori $2,$2,56
beq $4,$2,EndTest6
sub $1,$3,$4
sub $4,$4,$4
ori $4,$4,76
lw $0,-8($4)
sw $2,28($0)
EndTest6:
jr $ra
ori $0,$1,132


Test7:
sub $27,$27,$27
sub $7,$7,$7
ori $7,$7,10
sub $10,$10,$10
ori $10,$10,1
SubTest7:
add $27,$27,$10
beq $27,$7,EndTest7
lw $0,128($0)
lui $2,44
sub $4,$4,$4
ori $4,$4,84
lw $4,0($4)
sub $4,$4,$4
lw $3,0($4)
lui $0,144
lui $4,24
sub $1,$1,$1
ori $1,$1,28
lw $3,-20($1)
sub $0,$0,$0
sw $2,72($0)
sub $4,$4,$4
lw $0,96($4)
lui $1,152
sw $4,76($0)
add $0,$1,$3
ori $4,$0,88
beq $1,$0,SubTest7
add $1,$1,$0
add $3,$1,$2
add $4,$1,$1
sub $3,$2,$4
sub $1,$1,$1
ori $1,$1,36
sw $1,-4($1)
ori $4,$4,76
lw $3,44($0)
sub $1,$1,$1
ori $1,$1,108
sw $1,-96($1)
lui $2,84
lui $3,128
ori $0,$0,88
sw $4,100($0)
beq $3,$4,SubTest7
ori $0,$4,116
EndTest7:
jr $ra
ori $0,$3,148


Test8:
sub $9,$9,$9
sub $22,$22,$22
ori $22,$22,10
sub $16,$16,$16
ori $16,$16,1
SubTest8:
add $9,$9,$16
beq $9,$22,EndTest8
ori $3,$3,148
sw $2,32($0)
ori $2,$2,48
sub $0,$0,$0
sw $3,84($0)
add $4,$4,$0
ori $0,$3,0
add $2,$2,$4
lui $0,140
sub $2,$1,$0
add $1,$1,$3
sub $0,$0,$0
sw $2,12($0)
lui $2,48
add $3,$2,$0
lw $3,104($0)
beq $4,$3,SubTest8
add $3,$3,$2
lw $3,88($0)
sub $0,$4,$2
beq $3,$3,SubTest8
sw $0,4($0)
ori $0,$0,132
lui $3,112
sub $0,$0,$0
lw $1,60($0)
beq $2,$0,SubTest8
ori $1,$4,16
beq $0,$1,SubTest8
ori $2,$1,24
beq $4,$2,SubTest8
ori $2,$3,96
sub $2,$2,$2
sw $2,88($2)
lw $3,148($0)
EndTest8:
jr $ra
sw $2,20($0)


Test9:
sub $20,$20,$20
sub $21,$21,$21
ori $21,$21,10
sub $22,$22,$22
ori $22,$22,1
SubTest9:
add $20,$20,$22
beq $20,$21,EndTest9
sw $4,16($0)
sub $4,$4,$4
lw $2,16($4)
add $3,$1,$1
sub $0,$4,$2
sw $1,100($0)
sub $1,$1,$1
sw $3,8($1)
add $1,$1,$3
sub $2,$2,$2
sw $3,36($2)
beq $1,$3,SubTest9
lui $4,20
sub $3,$2,$4
sw $3,76($0)
beq $3,$1,SubTest9
ori $4,$3,88
sw $2,96($0)
add $1,$1,$4
ori $2,$4,132
add $2,$1,$2
sub $1,$3,$4
sub $3,$3,$3
sw $4,52($3)
lui $3,60
lui $0,20
lui $3,136
sub $4,$4,$4
ori $4,$4,140
sw $0,-20($4)
sub $3,$3,$3
ori $3,$3,136
lw $1,-36($3)
sw $4,48($0)
sub $3,$2,$1
ori $0,$0,80
EndTest9:
jr $ra
lui $1,140


Test10:
sub $25,$25,$25
sub $6,$6,$6
ori $6,$6,10
sub $28,$28,$28
ori $28,$28,1
SubTest10:
add $25,$25,$28
beq $25,$6,EndTest10
lw $1,112($0)
sw $2,128($0)
lui $3,148
sub $4,$4,$4
ori $4,$4,136
lw $1,-56($4)
sub $0,$4,$0
sw $1,56($0)
ori $3,$1,32
lui $2,132
lui $0,12
sub $0,$0,$0
lw $2,136($0)
beq $3,$4,SubTest10
add $2,$2,$3
lw $0,140($0)
sub $0,$0,$0
lw $1,104($0)
ori $4,$4,104
lui $4,28
beq $0,$1,SubTest10
ori $4,$2,88
lui $1,36
beq $3,$4,SubTest10
sw $0,12($0)
lw $3,100($0)
lw $2,64($0)
sub $2,$0,$2
ori $0,$3,96
sub $2,$2,$2
sw $3,0($2)
sub $4,$4,$4
sw $2,112($4)
ori $3,$2,140
beq $1,$4,SubTest10
add $4,$0,$1
EndTest10:
jr $ra
sw $0,116($0)


Test11:
sub $9,$9,$9
sub $28,$28,$28
ori $28,$28,10
sub $18,$18,$18
ori $18,$18,1
SubTest11:
add $9,$9,$18
beq $9,$28,EndTest11
lw $0,28($0)
lw $1,96($0)
add $0,$0,$2
lw $0,136($0)
ori $1,$2,144
sub $1,$1,$1
ori $1,$1,96
lw $2,-24($1)
ori $4,$0,96
add $4,$1,$2
sub $4,$4,$2
sub $3,$3,$3
lw $2,104($3)
sub $0,$0,$0
lw $0,52($0)
add $0,$4,$2
ori $1,$1,156
sw $0,36($0)
sub $3,$3,$3
ori $3,$3,144
sw $3,-100($3)
sw $2,36($0)
add $4,$4,$3
ori $3,$4,64
sw $1,32($0)
beq $4,$0,SubTest11
ori $2,$0,112
sw $2,152($0)
sub $0,$0,$0
sw $1,32($0)
lui $1,32
sub $3,$2,$1
sub $3,$3,$3
ori $3,$3,140
lw $2,-108($3)
add $2,$0,$3
EndTest11:
jr $ra
lui $1,0


Test12:
sub $22,$22,$22
sub $29,$29,$29
ori $29,$29,10
sub $5,$5,$5
ori $5,$5,1
SubTest12:
add $22,$22,$5
beq $22,$29,EndTest12
add $4,$2,$4
lw $4,16($0)
sub $2,$2,$2
ori $2,$2,136
lw $1,-48($2)
sub $0,$0,$0
lw $3,60($0)
lui $4,104
sw $0,124($0)
sw $4,12($0)
add $4,$1,$3
lw $4,140($0)
lui $3,84
ori $4,$2,64
lui $3,48
lui $3,124
add $1,$3,$4
lui $0,36
lui $1,52
lw $1,60($0)
beq $3,$0,SubTest12
lw $3,148($0)
ori $4,$4,120
sw $1,60($0)
beq $0,$1,SubTest12
lui $3,132
sw $2,88($0)
ori $4,$0,108
sub $4,$4,$4
ori $4,$4,68
lw $1,-12($4)
sw $4,152($0)
beq $0,$3,SubTest12
add $1,$1,$3
EndTest12:
jr $ra
lui $0,48


Test13:
sw $4,116($0)
sub $2,$2,$2
ori $2,$2,136
lw $2,-76($2)
sub $0,$2,$4
sub $4,$4,$4
lw $2,132($4)
add $0,$4,$3
ori $0,$1,0
sub $1,$1,$1
lw $2,52($1)
ori $0,$2,56
lw $0,12($0)
sub $2,$2,$2
ori $2,$2,108
sw $2,-40($2)
add $1,$0,$3
sw $4,76($0)
lui $3,152
sw $0,148($0)
lw $3,100($0)
lw $1,128($0)
lui $2,140
sub $4,$1,$2
ori $1,$0,144
lw $3,96($0)
add $4,$4,$1
sub $0,$4,$1
sub $4,$4,$4
lw $2,84($4)
lui $2,0
beq $1,$4,EndTest13
lw $1,120($0)
EndTest13:
jr $ra
lui $4,136


Test14:
ori $2,$0,128
lui $0,48
ori $1,$3,128
lui $1,20
lui $2,128
sub $1,$1,$1
ori $1,$1,152
lw $2,-48($1)
sub $0,$0,$0
sw $1,64($0)
sub $0,$1,$3
lw $2,136($0)
sub $0,$0,$0
lw $0,16($0)
sw $3,32($0)
beq $3,$1,EndTest14
lw $4,24($0)
sub $4,$4,$4
lw $0,124($4)
sub $3,$3,$3
sw $3,132($3)
sub $2,$2,$3
add $2,$1,$4
ori $3,$4,152
sub $2,$2,$2
sub $4,$4,$4
ori $4,$4,68
sw $4,-28($4)
beq $2,$1,EndTest14
sub $3,$0,$0
sw $1,28($0)
sw $3,124($0)
sub $4,$4,$4
lw $4,136($4)
lui $2,16
ori $1,$2,16
EndTest14:
jr $ra
lui $4,20


Test15:
sub $9,$9,$9
sub $15,$15,$15
ori $15,$15,10
sub $25,$25,$25
ori $25,$25,1
SubTest15:
add $9,$9,$25
beq $9,$15,EndTest15
ori $3,$4,36
sub $3,$3,$3
lw $3,40($3)
lw $3,152($0)
sub $3,$3,$3
sw $1,80($3)
lw $0,84($0)
lw $0,124($0)
lui $0,128
lui $1,44
ori $1,$3,112
ori $2,$4,24
lw $4,108($0)
lw $3,24($0)
ori $3,$4,20
sw $2,56($0)
add $0,$3,$4
lui $1,20
sub $4,$4,$4
ori $4,$4,44
lw $3,0($4)
ori $2,$4,80
sub $1,$4,$4
sub $4,$4,$4
sw $0,96($4)
lui $2,116
beq $2,$0,SubTest15
sub $2,$0,$2
lui $4,152
beq $0,$4,SubTest15
sw $4,56($0)
beq $2,$4,SubTest15
ori $1,$4,24
lui $2,44
EndTest15:
jr $ra
sub $3,$2,$0


End:
