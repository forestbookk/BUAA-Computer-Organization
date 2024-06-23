.data
    size: .word 12
.text
    lw $a0, size
    li $v0, 1
    syscall