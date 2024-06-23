.data
   size: .word -0x88
.text
la $t0, size
lw $a0, 0($t0)
li $v0, 1
syscall
li $v0, 10
syscall