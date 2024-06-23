.data
    res: .word 0:1000
      
.text
    li $v0, 5
    syscall
    move $s0, $v0  #scanf(n)
    li $s1, 0      #int carry = 0
    li $s2, 0      #int size = 0
    li $t9, 10     #constant 10
    li $t8, 1
    sw $t8, res($0) #res[0] = 1
    
    while_n:
        beqz $s0, while_n_end
        nop
        jal factorial
        addi $s0, $s0, -1
        j while_n
        nop
    while_n_end:
    
    addi $s2, $s2, -1
    for:
        bltz $s2, for_end
        nop
        sll $t1, $s2, 2
        lw $a0, res($t1)
        li $v0, 1
        syscall
        addi $s2, $s2, -1
        j for
        nop
    for_end:
    #end:
    li $v0, 10
    syscall
    
    factorial:
    li $t0, 0
    while_1:
        #if:
        bnez $s1, if_end
        nop
        blt $t0, $s2, if_end
        nop
        j while_1_end
        nop
        if_end:
        
        sll $t1, $t0, 2 #i*4 t1
        lw $t2, res($t1) #t2 = res[i]
        mul $t2, $t2, $s0
        add $t2, $t2, $s1  #int bit1_res = rse[i]*x + carry t2
        
        div $t2, $t9
        mfhi $t2
        sw $t2, res($t1)  #res[i] update
        mflo $s1 #carry update
        
        addi $t0, $t0, 1 #i++
        j while_1
        nop
    while_1_end:
    
    move $s2, $t0 #size = i
    jr $ra  #return
    nop
    
    #end
    li $v0, 10
    syscall
