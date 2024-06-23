ori $1, $0, 3
ori $2, $0, 1
ori $4, $0, 10

loop:
add $1, $1, $2
beq $1, $4, end
nop

bsoal $1, $0, hi
nop
ori $3, $0, 100
hi:
jal loop
nop


end:
ori $1, $0, 100
