ori $0, $0, 100
ori $1, $0, 144
ori $2, $0, 32
ori $3, $0, 48
ori $4, $0, 108
ori $5, $0, 148
ori $6, $0, 92
ori $7, $0, 8
ori $8, $0, 100
ori $9, $0, 52
ori $10, $0, 40
ori $11, $0, 16
ori $12, $0, 28
ori $13, $0, 16
ori $14, $0, 120
ori $15, $0, 152
ori $16, $0, 56
ori $17, $0, 100
ori $18, $0, 32
ori $19, $0, 16
ori $20, $0, 32
ori $21, $0, 120
ori $22, $0, 156
ori $23, $0, 100
ori $24, $0, 20
ori $25, $0, 4
ori $26, $0, 28
ori $27, $0, 36
ori $28, $0, 0
ori $29, $0, 40
ori $30, $0, 32
ori $31, $0, 40

sub $0,$0,$0
ori $0,$0,96
sw $0,0($0)
ori $0,$0,120
lw $3,0($0)
sw $0,32($3)
sw $1,0($0)
jal Test_jal1
ori $4,$31,140
beq $0,$0,Test_beq1
sw $1,-12288($31)
Test_jal1: jr $ra
Test_beq1:
sw $4,20($0)
jal Test1
lw $3,104($0)
Back1:
sub $1,$4,$1
ori $0,$3,116
sub $4,$4,$4
ori $4,$4,12
sw $4,0($0)
lw $4,0($0)
lw $4,16($4)
sw $4,36($0)
jal Test2
lui $3,120
Back2:
sub $2,$2,$2
sw $2,12($2)
sw $2,104($0)
sw $4,132($0)
jal Test3
add $4,$4,$2
Back3:
sw $2,0($0)
sub $0,$0,$0
ori $0,$0,12
sw $0,0($0)
lw $2,0($0)
lw $0,12($2)
sw $0,148($0)
sub $3,$3,$3
ori $3,$3,148
sw $0,-36($3)
jal Test4
lui $1,104
Back4:
sub $0,$3,$3
lw $3,36($0)
jal Test_jal5
sw $3,-12288($31)
beq $0,$0,Test_beq5
lw $0,-12288($31)
Test_jal5: jr $ra
Test_beq5:
lui $0,108
jal Test5
lw $2,152($0)
Back5:
sub $3,$0,$1
ori $1,$1,96
jal Test_jal6
add $4,$31,$3
beq $0,$0,Test_beq6
lw $4,-12288($31)
Test_jal6: jr $ra
Test_beq6:
lw $0,128($0)
jal Test6
sub $3,$1,$2
Back6:
sub $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $3,0($0)
lw $2,112($3)
sw $2,56($0)
sw $3,100($0)
jal Test_jal7
add $2,$31,$3
beq $0,$0,Test_beq7
add $2,$31,$0
Test_jal7: jr $ra
Test_beq7:
sub $2,$2,$2
sw $3,128($2)
jal Test7
sw $1,156($0)
Back7:
lui $2,48
ori $2,$1,4
jal Test_jal8
lw $3,-12288($31)
beq $0,$0,Test_beq8
add $0,$31,$2
Test_jal8: jr $ra
Test_beq8:
add $1,$2,$0
jal Test8
ori $4,$4,16
Back8:
sub $4,$4,$4
sw $1,28($4)
sw $0,144($0)
jal Test_jal9
ori $0,$31,136
beq $0,$0,Test_beq9
lw $2,-12288($31)
Test_jal9: jr $ra
Test_beq9:
lw $0,56($0)
jal Test9
lw $0,84($0)
Back9:
lw $3,52($0)
add $3,$4,$3
jal Test_jal10
add $4,$31,$2
beq $0,$0,Test_beq10
sw $3,-12288($31)
Test_jal10: jr $ra
Test_beq10:
add $1,$3,$4
jal Test10
lw $0,56($0)
Back10:
lui $3,92
sub $3,$3,$3
sw $4,96($3)
jal Test_jal11
sw $3,-12288($31)
beq $0,$0,Test_beq11
add $3,$31,$0
Test_jal11: jr $ra
Test_beq11:
sub $1,$4,$2
jal Test11
lw $2,112($0)
Back11:
sw $3,24($0)
sw $3,116($0)
sub $0,$1,$3
jal Test12
lw $1,112($0)
Back12:
add $0,$3,$0
sw $3,144($0)
jal Test_jal13
lw $4,-12288($31)
beq $0,$0,Test_beq13
lw $0,-12288($31)
Test_jal13: jr $ra
Test_beq13:
sub $1,$1,$1
sw $2,140($1)
jal Test13
ori $1,$3,32
Back13:
add $1,$0,$0
sub $1,$1,$1
lw $0,44($1)
jal Test_jal14
add $2,$31,$0
beq $0,$0,Test_beq14
lw $3,-12288($31)
Test_jal14: jr $ra
Test_beq14:
sub $1,$1,$1
ori $1,$1,88
lw $0,-44($1)
jal Test14
sw $2,144($0)
Back14:
sub $1,$1,$1
ori $1,$1,136
sw $1,-64($1)
sw $2,60($0)
jal Test_jal15
lw $4,-12288($31)
beq $0,$0,Test_beq15
ori $1,$31,4
Test_jal15: jr $ra
Test_beq15:
sub $0,$0,$3
jal Test15
add $4,$3,$1
jal End
sw $4,124($0)

Test1:
ori $1,$31,36
sub $3,$2,$1
sub $3,$3,$3
sw $4,88($3)
sw $1,52($0)
lw $1,112($0)
ori $2,$1,68
sub $1,$1,$2
sub $4,$4,$4
lw $2,44($4)
sub $0,$0,$0
lw $2,68($0)
sub $2,$2,$2
sw $1,152($2)
sw $1,96($0)
add $0,$0,$2
lui $1,36
ori $1,$3,140
beq $4,$1,EndTest1
add $0,$4,$1
sub $2,$0,$4
lui $2,1
lw $4,-65484($2)
lw $2,76($0)
sw $2,48($0)
ori $3,$2,32
ori $4,$4,72
add $0,$0,$0
lw $1,32($0)
lui $4,152
ori $4,$2,104
sub $3,$4,$1
sub $4,$4,$4
ori $4,$4,40
sw $2,-8($4)
EndTest1:
sub $2,$2,$2
add $2,$31,$2
sub $31,$31,$31
add $31,$0,$2
ori $2,$4,64
jr $ra
ori $1,$1,116


Test2:
lw $2,-12288($31)
sub $11,$11,$11
sub $21,$21,$21
ori $21,$21,10
sub $27,$27,$27
ori $27,$27,1
SubTest2:
add $11,$11,$27
beq $11,$21,EndTest2
lw $4,120($0)
add $4,$3,$3
sub $4,$4,$4
ori $4,$4,32
sw $4,0($0)
ori $4,$4,40
lw $1,0($0)
sw $4,64($1)
add $3,$4,$1
lui $2,104
sub $4,$4,$4
lw $1,104($4)
sub $2,$0,$3
lw $4,148($0)
sw $1,148($0)
sub $3,$1,$3
sub $3,$3,$1
add $3,$1,$4
sub $1,$0,$0
ori $3,$4,52
lui $4,152
lw $1,28($0)
ori $4,$0,104
lui $4,136
beq $4,$3,SubTest2
lw $4,48($0)
sw $1,96($0)
sub $0,$0,$3
ori $3,$0,128
beq $4,$1,SubTest2
sw $0,92($0)
add $1,$1,$3
beq $4,$3,SubTest2
lw $4,48($0)
lui $4,84
EndTest2:
sub $4,$4,$4
add $2,$31,$4
sub $31,$31,$31
ori $31,$2,0
jr $ra
lui $3,152


Test3:
lw $1,-12288($31)
sub $21,$21,$21
sub $20,$20,$20
ori $20,$20,10
sub $12,$12,$12
ori $12,$12,1
SubTest3:
add $21,$21,$12
beq $21,$20,EndTest3
lui $2,116
sw $0,116($0)
add $3,$4,$3
sw $0,124($0)
sub $1,$1,$1
ori $1,$1,128
sw $1,0($0)
ori $1,$1,8
lw $0,0($0)
sw $1,0($0)
sub $1,$3,$0
ori $3,$3,80
sw $1,32($0)
lui $3,20
add $2,$3,$0
add $0,$0,$2
add $2,$4,$0
beq $2,$2,SubTest3
sw $0,96($0)
sub $0,$0,$3
lw $3,0($0)
beq $3,$0,SubTest3
sw $0,20($0)
sub $4,$4,$4
ori $4,$4,124
sw $4,0($0)
ori $4,$4,128
lw $4,0($0)
sw $4,120($4)
lui $2,56
sub $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $2,0($0)
lw $2,108($2)
sw $2,56($0)
sub $1,$1,$1
ori $1,$1,68
sw $0,0($1)
ori $3,$1,12
lui $1,76
beq $4,$1,SubTest3
lw $0,100($0)
ori $2,$0,104
beq $0,$2,SubTest3
lui $3,36
beq $1,$4,SubTest3
sub $0,$4,$0
EndTest3:
sub $3,$3,$3
add $4,$31,$3
sub $31,$31,$31
ori $31,$4,0
add $0,$0,$1
jr $ra
add $0,$1,$3


Test4:
beq $2,$31,EndTest4
sub $23,$23,$23
sub $28,$28,$28
ori $28,$28,10
sub $25,$25,$25
ori $25,$25,1
SubTest4:
add $23,$23,$25
beq $23,$28,EndTest4
sw $3,96($0)
lw $1,20($0)
sub $3,$3,$3
ori $3,$3,88
sw $3,-16($3)
sub $4,$4,$4
sw $4,44($4)
lui $1,48
sub $1,$1,$1
sw $4,148($1)
ori $4,$0,68
ori $4,$2,132
ori $1,$0,72
sub $0,$0,$0
lw $0,24($0)
sub $3,$3,$3
lw $4,140($3)
beq $0,$0,SubTest4
lw $4,116($0)
sw $1,144($0)
sw $3,84($0)
beq $2,$3,SubTest4
add $4,$0,$3
lui $3,148
sw $2,52($0)
sub $0,$0,$0
sw $3,24($0)
add $0,$2,$4
sw $2,92($0)
lw $0,12($0)
lw $1,112($0)
ori $3,$2,104
sub $3,$3,$3
sw $0,132($3)
lui $2,68
sub $1,$1,$1
ori $1,$1,88
lw $1,-76($1)
EndTest4:
sub $2,$2,$2
add $3,$31,$2
sub $31,$31,$31
ori $31,$3,0
ori $2,$4,44
jr $ra
sw $1,32($0)


Test5:
add $2,$31,$0
lui $1,156
ori $0,$1,120
sw $0,152($0)
sw $4,4($0)
sub $1,$3,$3
add $0,$1,$0
sub $0,$0,$1
lui $0,92
sub $2,$2,$2
ori $2,$2,144
sw $2,0($0)
ori $2,$2,140
lw $4,0($0)
sw $2,36($4)
beq $0,$1,EndTest5
sw $1,20($0)
beq $4,$4,EndTest5
lw $0,136($0)
lui $1,132
ori $3,$2,64
lw $1,112($0)
lw $4,40($0)
lw $0,152($0)
sub $1,$1,$1
ori $1,$1,148
sw $1,-24($1)
sub $1,$1,$1
sw $4,60($1)
sub $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $4,0($0)
lw $2,108($4)
sw $2,120($0)
sub $0,$0,$2
lw $1,88($0)
beq $3,$2,EndTest5
lui $4,24
lw $1,132($0)
ori $4,$1,124
lui $0,76
EndTest5:
sub $3,$3,$3
add $4,$31,$3
sub $31,$31,$31
add $31,$0,$4
jr $ra
sub $4,$0,$0


Test6:
add $3,$31,$3
sub $6,$6,$6
sub $20,$20,$20
ori $20,$20,10
sub $26,$26,$26
ori $26,$26,1
SubTest6:
add $6,$6,$26
beq $6,$20,EndTest6
add $4,$1,$0
lui $0,132
lw $1,52($0)
sub $4,$4,$3
ori $0,$3,80
add $0,$4,$2
ori $3,$1,8
sub $4,$4,$4
ori $4,$4,140
sw $3,-84($4)
sub $4,$4,$4
ori $4,$4,92
sw $3,-4($4)
beq $4,$4,SubTest6
sw $4,152($0)
beq $4,$0,SubTest6
lui $1,28
sub $4,$4,$4
ori $4,$4,92
sw $3,-44($4)
ori $2,$1,144
sub $2,$2,$2
sw $0,84($2)
add $3,$3,$2
ori $1,$1,140
lw $4,60($0)
sub $3,$2,$2
beq $3,$3,SubTest6
add $2,$0,$1
ori $3,$4,1
lui $3,0
lw $4,136($3)
sw $0,108($0)
sub $2,$2,$2
ori $2,$2,76
sw $2,0($0)
ori $2,$2,52
lw $0,0($0)
sw $2,48($0)
lw $3,140($0)
lw $4,84($0)
sub $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $0,0($0)
lw $2,60($0)
sw $2,44($0)
sub $1,$1,$1
ori $1,$1,80
lw $0,-16($1)
EndTest6:
sub $4,$4,$4
add $2,$31,$4
sub $31,$31,$31
ori $31,$2,0
jr $ra
lw $0,100($0)


Test7:
lw $3,-12288($31)
sub $1,$1,$1
ori $1,$1,140
sw $3,-60($1)
lui $0,72
lui $4,4
ori $3,$4,1
lui $3,0
lw $2,96($3)
sw $2,24($0)
lui $2,120
lw $2,104($0)
add $4,$3,$0
lui $3,8
sub $4,$4,$3
beq $4,$4,EndTest7
sub $0,$4,$0
lui $2,144
lw $4,20($0)
lw $2,28($0)
sub $1,$3,$4
sub $1,$3,$1
beq $4,$4,EndTest7
ori $2,$2,96
beq $0,$3,EndTest7
ori $2,$1,0
add $0,$0,$1
sw $4,8($0)
beq $4,$1,EndTest7
ori $0,$0,36
add $4,$0,$2
lui $2,40
sw $1,136($0)
lui $4,60
EndTest7:
sub $2,$2,$2
add $3,$31,$2
add $31,$31,$31
sub $31,$31,$3
ori $2,$0,28
jr $ra
lw $4,28($0)


Test8:
lw $0,-12288($31)
sub $5,$5,$5
sub $11,$11,$11
ori $11,$11,10
sub $12,$12,$12
ori $12,$12,1
SubTest8:
add $5,$5,$12
beq $5,$11,EndTest8
ori $3,$0,32
ori $3,$1,48
add $1,$4,$0
sub $0,$0,$0
sw $4,36($0)
sub $2,$2,$2
ori $2,$2,132
sw $0,-108($2)
sub $2,$2,$2
sw $2,88($2)
sub $1,$1,$1
sw $1,80($1)
ori $4,$1,140
lui $1,76
ori $3,$1,44
sw $4,104($0)
sub $2,$4,$4
lui $4,36
ori $4,$2,1
lui $4,0
lw $4,0($4)
sw $2,84($0)
lui $2,68
ori $3,$2,1
lui $3,0
lw $2,48($3)
sub $4,$4,$4
sw $1,40($4)
sub $4,$4,$4
sw $4,8($4)
lui $1,112
sub $2,$2,$2
lw $4,120($2)
ori $1,$0,32
ori $4,$2,24
sub $4,$1,$0
sw $4,52($0)
sub $2,$1,$3
lui $2,1
lw $3,-65428($2)
EndTest8:
sub $2,$2,$2
add $4,$31,$2
sub $31,$31,$31
ori $31,$4,0
jr $ra
ori $0,$1,108


Test9:
lw $2,-12288($31)
sub $25,$25,$25
sub $18,$18,$18
ori $18,$18,10
sub $20,$20,$20
ori $20,$20,1
SubTest9:
add $25,$25,$20
beq $25,$18,EndTest9
add $0,$0,$1
sub $1,$1,$1
ori $1,$1,156
sw $1,-120($1)
ori $2,$0,1
lui $2,0
lw $3,24($2)
lw $1,68($0)
add $0,$1,$2
add $1,$2,$0
lw $0,100($0)
lui $2,72
sub $3,$3,$3
ori $3,$3,28
sw $3,0($0)
ori $3,$3,88
lw $1,0($0)
sw $3,132($1)
sub $4,$4,$4
ori $4,$4,128
lw $0,-116($4)
sub $4,$4,$4
ori $4,$4,128
lw $0,-120($4)
sub $1,$4,$3
beq $4,$4,SubTest9
ori $0,$4,140
sub $3,$0,$3
lui $3,1
lw $2,-65440($3)
lui $4,96
sw $1,36($0)
sub $1,$1,$1
sw $1,4($1)
sub $3,$3,$3
sw $3,76($3)
sw $4,88($0)
beq $3,$2,SubTest9
lw $1,120($0)
lui $2,52
lui $0,32
sw $3,116($0)
lui $4,132
beq $3,$0,SubTest9
sub $3,$4,$1
sub $4,$3,$2
EndTest9:
sub $2,$2,$2
sw $31,92($2)
sub $31,$31,$31
lw $31,92($2)
ori $3,$3,20
jr $ra
sw $4,112($0)


Test10:
beq $0,$31,EndTest10
sub $17,$17,$17
sub $30,$30,$30
ori $30,$30,10
sub $28,$28,$28
ori $28,$28,1
SubTest10:
add $17,$17,$28
beq $17,$30,EndTest10
sub $1,$1,$3
sub $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lw $0,0($0)
lw $1,44($0)
sw $1,68($0)
sub $3,$3,$3
sw $0,68($3)
sub $4,$4,$4
lw $3,12($4)
lui $0,16
sw $2,44($0)
sw $0,144($0)
lw $1,8($0)
sub $3,$3,$3
lw $1,0($3)
ori $3,$4,112
lui $3,12
lw $1,132($0)
sw $1,68($0)
lw $2,132($0)
lui $3,56
sub $3,$3,$3
sw $4,92($3)
beq $2,$1,SubTest10
add $0,$0,$1
sub $2,$2,$2
lw $1,56($2)
sw $4,68($0)
add $1,$0,$4
add $1,$0,$4
ori $2,$0,8
sub $3,$4,$3
lui $1,24
lui $2,140
lw $3,28($0)
EndTest10:
sub $3,$3,$3
add $4,$31,$3
sub $31,$31,$31
ori $31,$4,0
jr $ra
sw $2,104($0)


Test11:
ori $0,$31,32
sub $11,$11,$11
sub $27,$27,$27
ori $27,$27,10
sub $28,$28,$28
ori $28,$28,1
SubTest11:
add $11,$11,$28
beq $11,$27,EndTest11
sw $4,44($0)
sub $2,$2,$2
lw $0,152($2)
ori $0,$0,112
sub $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $0,0($0)
lw $2,156($0)
sw $2,96($0)
sw $4,84($0)
lui $2,116
lui $4,8
add $0,$3,$2
lw $3,84($0)
beq $2,$4,SubTest11
add $0,$4,$1
add $1,$1,$4
sw $0,132($0)
ori $4,$2,48
ori $2,$0,144
add $3,$3,$3
lui $4,60
beq $2,$0,SubTest11
sw $4,0($0)
sw $2,64($0)
sw $4,152($0)
add $1,$2,$2
sub $1,$0,$2
beq $0,$3,SubTest11
sub $2,$3,$1
lui $1,124
ori $2,$2,40
sub $4,$1,$3
lui $2,136
EndTest11:
sub $3,$3,$3
add $3,$31,$3
sub $31,$31,$31
ori $31,$3,0
jr $ra
lui $0,132


Test12:
ori $2,$31,128
sub $21,$21,$21
sub $13,$13,$13
ori $13,$13,10
sub $8,$8,$8
ori $8,$8,1
SubTest12:
add $21,$21,$8
beq $21,$13,EndTest12
sub $2,$2,$2
add $0,$4,$4
sw $1,116($0)
sub $3,$3,$3
ori $3,$3,112
sw $3,0($0)
ori $3,$3,0
lw $1,0($0)
sw $3,104($1)
lw $1,28($0)
sub $4,$4,$4
ori $4,$4,136
sw $2,-104($4)
sub $3,$3,$3
sw $4,80($3)
lui $1,148
ori $2,$2,96
sub $4,$2,$4
beq $1,$1,SubTest12
sw $0,64($0)
beq $0,$4,SubTest12
add $2,$0,$3
lw $4,148($0)
lui $3,56
sub $3,$3,$3
ori $3,$3,12
sw $3,0($0)
lw $3,0($0)
lw $3,148($3)
sw $3,16($0)
lui $4,64
lui $0,16
beq $3,$3,SubTest12
ori $4,$3,24
ori $3,$4,36
sub $2,$2,$2
sw $3,72($2)
sub $4,$3,$4
lui $4,1
lw $2,-65532($4)
lw $0,148($0)
sub $4,$4,$2
beq $3,$1,SubTest12
sw $3,20($0)
sub $2,$2,$3
sub $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lw $2,0($0)
lw $1,128($2)
sw $1,40($0)
EndTest12:
sub $3,$3,$3
add $3,$31,$3
sub $31,$31,$31
add $31,$0,$3
ori $2,$4,8
jr $ra
ori $3,$3,56


Test13:
sw $0,-12288($31)
sub $10,$10,$10
sub $18,$18,$18
ori $18,$18,10
sub $19,$19,$19
ori $19,$19,1
SubTest13:
add $10,$10,$19
beq $10,$18,EndTest13
sw $2,40($0)
sub $0,$0,$0
sw $1,68($0)
sub $0,$0,$0
sw $3,24($0)
sub $4,$4,$4
ori $4,$4,12
sw $4,0($0)
lw $3,0($0)
lw $4,152($3)
sw $4,36($0)
sw $4,48($0)
sub $0,$0,$0
ori $0,$0,24
sw $0,0($0)
ori $0,$0,36
lw $4,0($0)
sw $0,76($4)
sub $1,$1,$1
ori $1,$1,156
lw $4,-44($1)
ori $3,$2,40
sub $3,$3,$3
sw $1,0($3)
lui $4,12
ori $2,$2,144
lw $1,152($0)
add $3,$3,$4
sub $2,$3,$4
sub $1,$1,$1
ori $1,$1,108
sw $3,-92($1)
ori $1,$0,124
ori $1,$2,56
add $2,$3,$3
lw $4,32($0)
beq $0,$1,SubTest13
lui $0,48
sw $0,124($0)
lw $2,4($0)
add $1,$0,$4
beq $4,$3,SubTest13
sw $0,24($0)
sub $0,$0,$0
ori $0,$0,12
sw $0,0($0)
lw $4,0($0)
lw $0,56($4)
sw $0,136($0)
lui $2,92
EndTest13:
sub $2,$2,$2
add $4,$31,$2
sub $31,$31,$31
add $31,$0,$4
lw $4,72($0)
jr $ra
sub $2,$0,$2


Test14:
add $2,$31,$2
sub $0,$3,$1
sub $3,$3,$2
sub $4,$4,$4
ori $4,$4,12
sw $4,0($0)
lw $0,0($0)
lw $4,152($0)
sw $4,116($0)
sub $3,$3,$3
lw $1,24($3)
lui $0,64
ori $1,$0,104
ori $0,$3,60
ori $0,$0,120
lw $2,156($0)
ori $1,$1,152
sub $4,$4,$1
lui $4,1
lw $4,-65436($4)
beq $0,$4,EndTest14
lui $1,52
sub $1,$0,$0
sw $0,120($0)
beq $2,$0,EndTest14
sub $4,$4,$2
sub $0,$1,$2
sw $2,136($0)
beq $1,$0,EndTest14
lui $3,96
lw $4,88($0)
add $2,$3,$1
sub $1,$0,$2
add $2,$1,$4
beq $3,$4,EndTest14
lui $2,0
lui $2,16
lui $2,76
EndTest14:
sub $3,$3,$3
add $4,$31,$3
sub $31,$31,$31
add $31,$0,$4
jr $ra
add $3,$1,$3


Test15:
add $3,$31,$2
sub $4,$4,$4
ori $4,$4,132
sw $4,0($0)
ori $4,$4,32
lw $3,0($0)
sw $4,24($3)
sub $3,$3,$3
ori $3,$3,12
sw $3,0($0)
lw $3,0($0)
lw $3,108($3)
sw $3,76($0)
add $3,$4,$2
sub $0,$1,$1
add $2,$2,$4
lui $2,112
sw $3,20($0)
sub $2,$1,$2
lui $2,76
sub $0,$0,$0
lw $4,156($0)
sub $4,$2,$0
sub $3,$4,$2
lui $4,20
sub $2,$2,$2
ori $2,$2,68
lw $2,-40($2)
sub $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $3,0($0)
lw $2,132($3)
sw $2,92($0)
ori $1,$2,116
sub $3,$1,$4
lui $3,1
lw $4,-65524($3)
beq $2,$0,EndTest15
sw $3,104($0)
sub $4,$4,$4
sw $1,152($4)
beq $1,$4,EndTest15
lw $3,104($0)
sub $1,$1,$0
sub $2,$2,$2
ori $2,$2,128
sw $0,-76($2)
ori $1,$1,92
ori $0,$3,32
beq $0,$0,EndTest15
sw $4,12($0)
EndTest15:
sub $4,$4,$4
add $3,$31,$4
sub $31,$31,$31
add $31,$0,$3
ori $1,$1,44
jr $ra
lw $1,0($0)


End:
