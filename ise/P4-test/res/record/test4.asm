ori $1,$0,8
ori $2,$0,6
ori $3,$0,3
ori $4,$0,12
ori $5,$0,11
ori $6,$0,10
ori $7,$0,3
ori $8,$0,3
ori $9,$0,5
ori $10,$0,12
ori $11,$0,5
ori $12,$0,9
ori $13,$0,3
ori $14,$0,11
ori $15,$0,9
ori $16,$0,5
ori $17,$0,8
ori $18,$0,5
ori $19,$0,12
ori $20,$0,5
ori $21,$0,7
ori $22,$0,11
ori $23,$0,9
ori $24,$0,12
ori $25,$0,8
ori $26,$0,3
ori $27,$0,11
ori $28,$0,10
ori $29,$0,3
ori $30,$0,9
jal oriZone
nop
JTestBefore:
jr $31
nop
oriZone:
lui $24,65535
ori $24,$24,2
lui $24,65534
ori $24,$0,8
jal Text0
nop
JumpZone0:
lui $24,234
jal JumpOut0
nop
Text0:
lui $8,206
ori $15,$0,12
sw $6,76($15)
lui $26,362
add $10,$12,$31
lui $6,65535
ori $6,$6,65534
lui $18,65535
ori $18,$18,65534
lui $19,65535
ori $19,$19,3
add $19,$6,$18
ori $6,$0,7
ori $18,$0,8
ori $19,$0,12
ori $8,$0,20
lw $11,96($8)
lui $22,65535
ori $22,$22,0
lui $17,65535
ori $17,$17,65535
lui $18,65535
ori $18,$18,65535
add $18,$22,$17
ori $22,$0,3
ori $17,$0,6
ori $18,$0,9
sub $29,$26,$9
sw $18,128($0)
nop
lui $13,65535
ori $13,$13,3
lui $16,65535
ori $16,$16,65534
lui $2,65535
ori $2,$2,65534
add $2,$13,$16
ori $13,$0,10
ori $16,$0,11
ori $2,$0,3
nop
ori $20,$0,4
lw $5,144($20)
lui $5,65535
ori $5,$5,3
lui $4,65535
ori $4,$4,3
lui $24,65535
ori $24,$24,2
sub $24,$5,$4
ori $5,$0,11
ori $4,$0,7
ori $24,$0,12
lui $7,65535
ori $7,$7,3
lui $15,65535
ori $15,$15,0
sub $15,$7,$0
ori $7,$0,4
ori $15,$0,8
lui $25,65535
ori $25,$25,65533
lui $5,65535
ori $5,$5,3
sub $5,$25,$0
ori $25,$0,10
ori $5,$0,10
ori $29,$0,24
lw $24,160($29)
lui $21,65535
ori $21,$21,65535
lui $21,65534
ori $21,$0,3
ori $25,$0,16
lw $19,156($25)
ori $12,$19,124
ori $23,$0,8
lw $25,140($23)
lui $20,65535
ori $20,$20,1
lui $2,65535
ori $2,$2,2
ori $20,$2,2
ori $20,$0,12
ori $2,$0,12
lui $19,65535
ori $19,$19,0
lui $19,0
ori $19,$0,11
lui $4,372
nop
lui $9,65535
ori $9,$9,3
lui $4,65535
ori $4,$4,65535
lui $4,65535
ori $4,$4,65534
add $4,$9,$4
ori $9,$0,3
ori $4,$0,5
ori $4,$0,8
ori $31,$0,8
sw $31,24($31)
ori $13,$0,16
lw $9,52($13)
ori $30,$0,268
nop
beq $19,$15,JumpZone0
nop
JumpOut0:
jal Text1
nop
JumpZone1:
nop
jal JumpOut1
nop
Text1:
lui $22,65535
ori $22,$22,65533
lui $22,3
ori $22,$0,4
ori $9,$0,8
sw $29,8($9)
lui $13,65535
ori $13,$13,65535
lui $10,65535
ori $10,$10,0
ori $13,$10,1
ori $13,$0,5
ori $10,$0,12
lui $30,65535
ori $30,$30,3
lui $13,65535
ori $13,$13,65534
lui $24,65535
ori $24,$24,0
sub $24,$30,$13
ori $30,$0,8
ori $13,$0,11
ori $24,$0,6
ori $10,$0,8
sw $10,96($10)
lui $16,65535
ori $16,$16,65534
lui $24,65535
ori $24,$24,0
ori $16,$24,65533
ori $16,$0,11
ori $24,$0,4
lw $17,12($0)
lui $30,65535
ori $30,$30,2
lui $9,65535
ori $9,$9,0
lui $14,65535
ori $14,$14,65533
sub $14,$30,$9
ori $30,$0,6
ori $9,$0,6
ori $14,$0,5
ori $14,$0,8
sw $26,140($14)
lui $31,65535
ori $31,$31,1
lui $10,65535
ori $10,$10,2
lui $16,65535
ori $16,$16,65533
sub $16,$31,$10
ori $31,$0,9
ori $10,$0,12
ori $16,$0,12
lui $23,307
ori $3,$0,24
lw $24,144($3)
sub $29,$5,$7
nop
ori $3,$0,24
sw $15,12($3)
lui $7,65535
ori $7,$7,3
lui $7,1
ori $7,$0,12
lui $29,366
ori $30,$0,12
lw $23,144($30)
ori $13,$0,20
lw $29,72($13)
ori $6,$0,8
lw $14,32($6)
lui $9,46
ori $22,$16,382
nop
ori $16,$0,8
lw $27,136($16)
lui $11,396
lui $4,285
lui $5,65535
ori $5,$5,1
lui $5,65535
ori $5,$0,12
ori $28,$0,24
sw $31,88($28)
nop
beq $27,$30,JumpZone1
nop
JumpOut1:
jal Text2
nop
JumpZone2:
nop
jal JumpOut2
nop
Text2:
ori $9,$0,4
lw $5,0($9)
lui $2,65535
ori $2,$2,65535
lui $23,65535
ori $23,$23,65533
ori $2,$23,65534
ori $2,$0,3
ori $23,$0,8
lui $15,246
lui $4,65535
ori $4,$4,65533
lui $14,65535
ori $14,$14,65535
lui $13,65535
ori $13,$13,2
sub $13,$4,$14
ori $4,$0,6
ori $14,$0,3
ori $13,$0,4
add $24,$26,$12
ori $8,$10,361
lui $27,65535
ori $27,$27,3
lui $27,3
ori $27,$0,10
nop
ori $21,$0,20
lw $4,76($21)
ori $31,$0,24
lw $20,44($31)
ori $26,$0,4
lw $20,40($26)
lui $2,65535
ori $2,$2,3
lui $2,65535
ori $2,$0,9
lui $4,65535
ori $4,$4,65534
lui $12,65535
ori $12,$12,65533
lui $5,65535
ori $5,$5,65533
sub $5,$4,$12
ori $4,$0,8
ori $12,$0,8
ori $5,$0,10
nop
lui $9,65535
ori $9,$9,65533
lui $9,2
ori $9,$0,12
lui $24,65535
ori $24,$24,1
lui $24,0
ori $24,$0,7
add $11,$3,$30
add $1,$25,$13
ori $1,$0,4
sw $25,160($1)
lui $20,65535
ori $20,$20,65534
lui $11,65535
ori $11,$11,0
lui $16,65535
ori $16,$16,65533
sub $16,$20,$11
ori $20,$0,10
ori $11,$0,5
ori $16,$0,3
lui $14,65535
ori $14,$14,2
lui $14,2
ori $14,$0,10
ori $8,$0,12
lw $9,72($8)
add $19,$13,$2
lui $17,65535
ori $17,$17,3
lui $24,65535
ori $24,$24,3
lui $12,65535
ori $12,$12,65535
add $12,$17,$24
ori $17,$0,4
ori $24,$0,6
ori $12,$0,10
sub $15,$24,$3
ori $31,$0,12
lw $18,144($31)
ori $17,$0,12
sw $22,100($17)
nop
add $8,$24,$4
ori $5,$11,339
beq $2,$3,JumpZone2
nop
JumpOut2:
beq $3,$21,JumpOut4
nop
JumpOut3:
nop
ori $29,$0,16
lw $21,4($29)
lui $20,419
ori $26,$0,24
sw $13,136($26)
lui $31,65535
ori $31,$31,0
lui $29,65535
ori $29,$29,65534
ori $31,$29,0
ori $31,$0,4
ori $29,$0,3
add $28,$12,$31
ori $22,$0,24
lw $13,44($22)
ori $19,$0,12
sw $13,160($19)
lui $22,65535
ori $22,$22,1
lui $5,65535
ori $5,$5,65533
lui $29,65535
ori $29,$29,2
sub $29,$22,$5
ori $22,$0,7
ori $5,$0,10
ori $29,$0,4
add $21,$7,$2
ori $17,$0,8
sw $23,72($17)
add $18,$20,$19
ori $17,$0,24
sw $26,156($17)
add $13,$6,$2
nop
lui $31,65535
ori $31,$31,3
lui $15,65535
ori $15,$15,0
lui $14,65535
ori $14,$14,1
sub $14,$31,$15
ori $31,$0,7
ori $15,$0,7
ori $14,$0,5
ori $25,$0,4
lw $8,144($25)
lui $11,65535
ori $11,$11,1
lui $11,65533
ori $11,$0,4
lui $31,422
sub $14,$9,$28
nop
lui $31,150
sub $25,$21,$26
ori $25,$0,4
sw $2,64($25)
add $14,$7,$12
lui $20,65535
ori $20,$20,3
lui $10,65535
ori $10,$10,65533
lui $2,65535
ori $2,$2,0
sub $2,$20,$10
ori $20,$0,9
ori $10,$0,10
ori $2,$0,5
sub $22,$5,$12
add $9,$3,$31
sub $4,$20,$18
lui $21,65535
ori $21,$21,2
lui $21,65535
ori $21,$21,0
ori $21,$21,65535
ori $21,$0,7
ori $21,$0,3
beq $17,$2,JumpOut5
nop
JumpOut4:
ori $12,$0,24
sw $30,136($12)
add $14,$23,$27
nop
ori $8,$24,58
sub $24,$12,$9
lui $24,365
ori $16,$6,139
add $19,$24,$2
ori $23,$0,8
lw $1,40($23)
lui $27,65535
ori $27,$27,0
lui $30,65535
ori $30,$30,2
lui $15,65535
ori $15,$15,65534
add $15,$27,$30
ori $27,$0,6
ori $30,$0,10
ori $15,$0,4
ori $28,$20,284
lui $23,65535
ori $23,$23,1
lui $7,65535
ori $7,$7,65533
lui $29,65535
ori $29,$29,1
add $29,$23,$7
ori $23,$0,11
ori $7,$0,5
ori $29,$0,11
add $9,$14,$13
lui $21,65535
ori $21,$21,0
lui $21,65533
ori $21,$0,6
nop
ori $3,$27,235
lui $31,65535
ori $31,$31,2
lui $7,65535
ori $7,$7,65535
lui $18,65535
ori $18,$18,65534
sub $18,$31,$7
ori $31,$0,8
ori $7,$0,7
ori $18,$0,12
ori $2,$0,8
sw $12,48($2)
ori $21,$0,24
lw $26,64($21)
sub $14,$22,$27
ori $6,$0,8
sw $2,160($6)
ori $30,$0,12
lw $20,60($30)
lui $4,65535
ori $4,$4,3
lui $22,65535
ori $22,$22,65533
ori $4,$22,0
ori $4,$0,7
ori $22,$0,7
ori $13,$31,175
lui $26,102
ori $31,$0,24
sw $16,156($31)
ori $9,$5,295
lui $18,65535
ori $18,$18,65535
lui $16,65535
ori $16,$16,65535
lui $19,65535
ori $19,$19,0
sub $19,$18,$16
ori $18,$0,7
ori $16,$0,10
ori $19,$0,11
beq $3,$17,JumpOut6
nop
JumpOut5:
ori $3,$0,12
lw $19,112($3)
ori $25,$7,258
ori $28,$0,4
lw $17,40($28)
nop
lui $11,65535
ori $11,$11,65535
lui $18,65535
ori $18,$18,65534
ori $11,$18,3
ori $11,$0,10
ori $18,$0,5
lui $25,65535
ori $25,$25,0
lui $29,65535
ori $29,$29,0
ori $25,$29,3
ori $25,$0,12
ori $29,$0,7
ori $24,$10,147
lui $3,65535
ori $3,$3,2
lui $29,65535
ori $29,$29,65533
ori $3,$29,65535
ori $3,$0,5
ori $29,$0,12
ori $31,$0,8
lw $31,140($31)
lui $26,65535
ori $26,$26,3
lui $28,65535
ori $28,$28,65535
lui $30,65535
ori $30,$30,65534
sub $30,$26,$28
ori $26,$0,8
ori $28,$0,5
ori $30,$0,12
add $9,$17,$28
ori $26,$0,4
lw $26,44($26)
lui $23,65535
ori $23,$23,2
lui $16,65535
ori $16,$16,0
ori $23,$16,65533
ori $23,$0,6
ori $16,$0,12
lui $11,65535
ori $11,$11,2
lui $7,65535
ori $7,$7,2
lui $20,65535
ori $20,$20,65535
add $20,$11,$7
ori $11,$0,3
ori $7,$0,10
ori $20,$0,9
add $1,$20,$18
ori $7,$6,261
ori $29,$0,12
lw $20,32($29)
sub $4,$29,$14
ori $19,$0,12
sw $26,64($19)
ori $4,$0,12
sw $0,40($4)
lui $4,65535
ori $4,$4,1
lui $1,65535
ori $1,$1,65534
ori $4,$1,0
ori $4,$0,10
ori $1,$0,7
sub $26,$23,$15
lui $2,65535
ori $2,$2,2
lui $14,65535
ori $14,$14,3
lui $1,65535
ori $1,$1,2
add $1,$2,$14
ori $2,$0,6
ori $14,$0,8
ori $1,$0,10
lui $24,65535
ori $24,$24,3
lui $7,65535
ori $7,$7,3
lui $18,65535
ori $18,$18,0
add $18,$24,$7
ori $24,$0,7
ori $7,$0,3
ori $18,$0,4
add $25,$26,$25
ori $25,$2,1
ori $17,$0,4
sw $30,108($17)
lui $17,65535
ori $17,$17,65535
lui $12,65535
ori $12,$12,1
lui $17,65535
ori $17,$17,65535
add $17,$17,$12
ori $17,$0,9
ori $12,$0,7
ori $17,$0,7
ori $6,$0,16
sw $23,20($6)
beq $24,$11,JumpOut6
nop
JumpOut6:
jal JTestBefore
nop
lui $5,65535
ori $5,$5,0
lui $5,2
ori $5,$0,12
nop
nop
ori $19,$0,8
lw $8,28($19)
lui $5,328
add $8,$24,$18
lui $3,65535
ori $3,$3,65535
lui $27,65535
ori $27,$27,65533
lui $26,65535
ori $26,$26,65535
add $26,$3,$27
ori $3,$0,5
ori $27,$0,11
ori $26,$0,12
ori $20,$0,12
sw $20,120($20)
ori $9,$0,20
sw $13,160($9)
lui $29,65535
ori $29,$29,0
lui $27,65535
ori $27,$27,65535
lui $16,65535
ori $16,$16,0
add $16,$29,$27
ori $29,$0,8
ori $27,$0,10
ori $16,$0,11
lui $20,65535
ori $20,$20,2
lui $9,65535
ori $9,$9,65535
ori $20,$9,65534
ori $20,$0,9
ori $9,$0,10
add $23,$18,$3
lui $11,65535
ori $11,$11,1
lui $29,65535
ori $29,$29,2
lui $21,65535
ori $21,$21,2
sub $21,$11,$29
ori $11,$0,8
ori $29,$0,11
ori $21,$0,10
sw $20,128($0)
sub $16,$25,$13
ori $20,$0,8
sw $5,56($20)
add $5,$24,$21
ori $16,$0,24
lw $19,72($16)
nop
