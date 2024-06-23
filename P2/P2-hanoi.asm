.data
    stack: .word 0 : 1024
    A: .ascii "A"
    B: .ascii "B"
    C: .ascii "C"
    tran: .asciiz "->"
    enter: .asciiz "\n"

.macro mov(%x, %y)
    move $a0, %x
    li $v0, 11
    syscall
    la $a0, tran
    li $v0, 4
    syscall
    move $a0, %y
    li $v0, 11
    syscall
    la $a0, enter
    li $v0, 4
    syscall
.end_macro

.macro push
    addi $s0, $s0, 4
    sw $a1, 0($s0)
    addi $s0, $s0, 4
    sw $t6, 0($s0)
    addi $s0, $s0, 4
    sw $t7, 0($s0)
    addi $s0, $s0, 4
    sw $t8, 0($s0)
.end_macro

.macro pop
    lw $t8, 0($s0)
    addi $s0, $s0, -4
    lw $t7, 0($s0)
    addi $s0, $s0, -4
    lw $t6, 0($s0)
    addi $s0, $s0, -4
    lw $a1, 0($s0)
    addi $s0, $s0, -4
.end_macro

.macro done
    li $v0, 10
    syscall
.end_macro

.text
    li $v0, 5
    syscall
    move $a1, $v0
    lb $t6, A
    la $t0, B
    lb $t7, 0($t0)
    la $t0, C
    lb $t8, 0($t0)
    li $s0, 0 #stack space
    jal hanoi
    nop
    done

hanoi:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    la $t0, B
    lh $t1, 0($t0)
    if:
        bne $a1, 1, else
        nop
        if_b_1:
            bne $t7, $t1, if_b_1_else
            nop
            mov($t6, $t7)
            mov($t7, $t8)
            j end
            nop
        if_b_1_else:
            mov($t6, $t8)
            j end
            nop
    else:
        if_b_2:
            bne $t7, $t1, if_b_2_else
            nop
            #hanoi(n-1, a,c,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t1, $t7
            move $t2, $t8
            move $t7, $t2
            move $t8, $t1
            jal hanoi
            nop
            pop
            #hanoi(n-1, b,a,c);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t6, $t1
            move $t7, $t0
            jal hanoi
            nop
            pop
            #mov
            mov($t6, $t7)
            #hanoi(n-1, c,a,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t2, $t8 
            move $t6, $t2
            move $t7, $t0
            move $t8, $t1
            jal hanoi
            nop
            pop
            #hanoi(n-1, b,c,a);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t2, $t8 
            move $t6, $t1
            move $t7, $t2
            move $t8, $t0
            jal hanoi
            nop
            pop
            #mov
            mov($t7, $t8)
            #hanoi(n-1, a,c,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t1, $t7
            move $t2, $t8 
            move $t7, $t2
            move $t8, $t1
            jal hanoi
            nop
            pop
            #hanoi(n-1, b,a,c);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t6, $t1
            move $t7, $t0
            jal hanoi
            nop
            pop
            j end
            nop
        if_b_2_else:
            #hanoi(n-1, a,c,b);
            push
            addi $a1, $a1, -1 #n-1
            move $t1, $t7
            move $t2, $t8
            move $t7, $t2
            move $t8, $t1
            jal hanoi
            nop
            pop
            #mov
            mov($t6, $t8)
            #hanoi(n-1, b,a,c);
            push
            addi $a1, $a1, -1 #n-1
            move $t0, $t6
            move $t1, $t7
            move $t6, $t1
            move $t7, $t0
            jal hanoi
            nop
            pop
            j end
            nop
    end:    
    #return:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra 
    
    done 