.data
    res: .word 0:1000
.macro print_0
    li $a0, 0
    li $v0, 1
    syscall
.end_macro     
.text
    li $v0, 5
    syscall
    move $s0, $v0  #scanf(n)
    
    li $s2, 0      #int size = 0
    li $t9, 1000000     #constant 10
    li $t8, 1
    sw $t8, res($0) #res[0] = 1
    
    li $t6, 2
    for_factorial:
        bgt $t6, $s0, for_factorial_end
        nop
        li $s1, 0      #int carry = 0
        li $t7, 0      #int j = 0;
        for_j:
            bgt $t7, $s2, for_j_end
            nop
            sll $t1, $t7, 2 #j*4 t1
            lw $t2, res($t1) #t2 = res[j]
            mul $t2, $t2, $t6
            add $t2, $t2, $s1  #int bit1_res = rse[i]*x + carry t2
        
            div $t2, $t9
            mfhi $t2
            sw $t2, res($t1)  #res[i] update
            mflo $s1 #carry update
            if:
                bne $t7, $s2, if_end
                nop
                blez $s1, if_end
                nop
                addi $s2, $s2, 1
            if_end:
            addi $t7, $t7, 1
            j for_j
            nop
        for_j_end:
        addi $t6, $t6, 1
        j for_factorial
        nop
    for_factorial_end:
    
    move $t8, $s2
    for:
        bltz $s2, for_end
        nop
        sll $t1, $s2, 2
        lw $t9, res($t1)
        
        beq $s2, $t8, out
        nop
        
        bge $t9, 100000, out
        nop
        print_0
        bge $t9, 10000, out
        nop
        print_0
        bge $t9, 1000, out
        nop
        print_0
        bge $t9, 100, out
        nop
        print_0
        bge $t9, 10, out
        nop
        print_0
        
        out:
        move $a0, $t9
        li $v0, 1
        syscall
        addi $s2, $s2, -1
        j for
        nop
    for_end:
    #end:
    li $v0, 10
    syscall
    
