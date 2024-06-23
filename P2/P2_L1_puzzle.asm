.data
    map: .word 0 : 81
    stack: .word 0 : 2048
    
.macro get_int(%data)
    li $v0, 5
    syscall
    move %data, $v0
.end_macro

.macro get_index(%dst, %row, %col)
    mul %dst, %row, 9
    addu %dst, %dst, %col
    sll %dst, %dst, 2
.end_macro
  
.text
    #scan n, m
    get_int($s0) #scanf(n)
    get_int($s1) #scanf(m)
    
    #for_…Ë÷√»´1
    li $t2, 1
    li $t0, 0   #int i = 0
    for_1:
        beq $t0, 9, for_1_end
        nop
        li $t1, 0  #int j = 0
        for_2:
            beq $t1, 9, for_2_end
            nop
            get_index($t3, $t0, $t1)
            sw $t2, map($t3)
            addi $t1, $t1, 1
            j for_2
            nop
        for_2_end:
        addi $t0, $t0, 1
        j for_1
        nop
    for_1_end:
    
    addi $s0, $s0, 1
    addi $s1, $s1, 1
    li $t0, 1   #int i = 1
    for_i:
        beq $t0, $s0, for_i_end #if(i==n+1)break
        nop
        li $t1, 1  #int j = 1
        for_j:
            beq $t1, $s1, for_j_end #if(j==m+1)break
            nop       
            get_index($t3, $t0, $t1) #index of map[i+1][j+1]
            get_int($t2)
            sw $t2, map($t3)
            addi $t1,$t1, 1 #j++
            j for_j
            nop
        for_j_end:
        addi $t0, $t0, 1
        j for_i
        nop
    for_i_end:
    
    #scan startpoint & endpoint
    get_int($a1)
    get_int($a2)
    get_int($s2)
    get_int($s3)
    
    get_index($t0, $a1, $a2)
    li $t1, 1
    sw $t1, map($t0)
    
    #dfs:
    li $s5, 0 #stack space
    jal dfs
    nop
    
    #print(count)
    move $a0, $s4
    li $v0, 1
    syscall
    
    #end:
    li $v0, 10
    syscall
    
    dfs:
    
    #store $ra
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    #check_end_point
    bne $a1, $s2, continue1
    nop
    bne $a2, $s3, continue1
    nop
        #count++
        addi $s4, $s4, 1
        #return
        lw $a2, stack($s5)
        addi $s5, $s5, -4
        lw $a1, stack($s5)
        addi $s5, $s5, -4
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra
        nop
    continue1:
    
    #up
    addi $t0, $a1, -1 #t0=x-1
    get_index($t1, $t0, $a2)
    lw $t2, map($t1)
    bnez $t2, up_end
    nop
        #map = 1
        li $t2, 1
        sw $t2, map($t1)
        #dfs
        addi $s5, $s5, 4
        sw $a1, stack($s5)
        addi $s5, $s5, 4
        sw $a2, stack($s5)
        move $a1, $t0
        jal dfs
        nop
        #map = 0
        addi $t0, $a1, -1 #x-1
        get_index($t1, $t0, $a2)
        li $t2, 0
        sw $t2, map($t1)
    up_end:
    
    #down:
    addi $t0, $a1, 1 #x+1
    get_index($t1, $t0, $a2)
    lw $t2, map($t1)
    bnez $t2, down_end
    nop
        #map = 1
        li $t2, 1
        sw $t2, map($t1)
        #dfs£∫
        addi $s5, $s5, 4
        sw $a1, stack($s5)
        addi $s5, $s5, 4
        sw $a2, stack($s5)
        move $a1, $t0
        jal dfs
        nop
        #map = 0
        addi $t0, $a1, 1 #x+1
        get_index($t1, $t0, $a2)
        li $t2, 0
        sw $t2, map($t1)
    down_end:
    
    #left:
    addi $t0, $a2, -1 #y-1
    get_index($t1, $a1, $t0)
    lw $t2, map($t1)
    bnez $t2, left_end
    nop
        #map] = 1
        li $t9, 1
        sw $t9, map($t1)
        #dfs
        addi $s5, $s5, 4
        sw $a1, stack($s5)
        addi $s5, $s5, 4
        sw $a2, stack($s5)
        move $a2, $t0
        jal dfs
        nop
        #map = 0
        addi $t0, $a2, -1 #y-1
        get_index($t1, $a1, $t0)
        li $t2, 0
        sw $t2, map($t1)
    left_end:
    
    #right:
    addi $t0, $a2, 1
    get_index($t1, $a1, $t0)
    lw $t2, map($t1)
    bnez $t2, right_end
    nop
        #map] = 1
        li $t9, 1
        sw $t9, map($t1)
        #dfs
        addi $s5, $s5, 4
        sw $a1, stack($s5)
        addi $s5, $s5, 4
        sw $a2, stack($s5)
        move $a2, $t0
        jal dfs
        nop
        #map = 0
        addi $t0, $a2, 1 #y+1
        get_index($t1, $a1, $t0)
        li $t2, 0
        sw $t2, map($t1)
    right_end:
    
    #return
        lw $a2, stack($s5)
        addi $s5, $s5, -4
        lw $a1, stack($s5)
        addi $s5, $s5, -4
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra
        nop
         
    #end
    li $v0, 10
    syscall  