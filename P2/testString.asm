.data
    str: .space 400
.text
    la $a0, str
    li $a1, 400
    li $v0, 8
    syscall
    li $v0, 4
    syscall
    li $v0, 10
    syscall