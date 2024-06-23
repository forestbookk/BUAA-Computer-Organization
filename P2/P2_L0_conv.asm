.data
    matrix1: .word 0 : 100
    matrix2: .word 0 : 100
    space: .asciiz " "
    enter: .asciiz "\n"

.macro calc_addr(%dst, %row, %col)
    mul %dst, %row, 10
    addu %dst, %dst, %col
    sll %dst, %dst, 2
.end_macro

.macro scan_int(%data)
    li $v0, 5
    syscall
    move %data, $v0
.end_macro     

.macro print_int(%data)
    move $a0, %data
    li $v0, 1
    syscall
    la $a0, space
    li $v0, 4
    syscall
.end_macro

.macro done
    li $v0, 10
    syscall
.end_macro

.text
    scan_int($s0)                  #scan(m1);s0 = m1
    scan_int($s1)                  #scan(n1);s1 = n1
    scan_int($s2)                  #scan(m2);s2 = m2
    scan_int($s3)                  #scan(n2);s3 = n2
    
    li $s4, 0                      #int i = 0;s4 = i
    m1_for_row_begin:
        beq $s4, $s0, m1_for_row_end #if(i==m1)break
        nop
        li $s5, 0                    # int j = 0; s5 = j
        m1_for_col_begin:
            beq $s5, $s1, m1_for_col_end #if(j==n1)break
            nop
            calc_addr($t0, $s4, $s5) #t0 = offset_addr
            scan_int($t1)                #scan(m1[i][j]); t1 = m1[i][j]
            sw $t1, matrix1($t0)         
            addiu $s5, $s5, 1            #j++
            j m1_for_col_begin           #loop
            nop
        m1_for_col_end:
        addiu $s4, $s4, 1            # i++
        j m1_for_row_begin           #loop
        nop
    m1_for_row_end:
    
    li $s4, 0                       # int i = 0;
    m2_for_row_begin:
        beq $s4, $s2, m2_for_row_end   #if(i==m2)break
        nop
        li $s5, 0                      #int j = 0
        m2_for_col_begin:
            beq $s5, $s3, m2_for_col_end  #if(j==n2)break
            nop
            calc_addr($t0, $s4, $s5)
            scan_int($t1)
            sw $t1, matrix2($t0)
            addiu $s5, $s5, 1             #j++
            j m2_for_col_begin            #loop
            nop
        m2_for_col_end:
        addiu $s4, $s4, 1              #i++
        j m2_for_row_begin             #loop
        nop
    m2_for_row_end:

    sub $s4, $s0, $s2                 # m1-m2
    addiu $s4, $s4, 1                  #m1-m2+1
    move $s0, $s4                      #s0 = m1-m2+1
    
    sub $s4, $s1, $s3                 # n1-n2
    addiu $s4, $s4, 1                  # n1-n2+1
    move $s1, $s4                      # s1 = n1-n2+1
    
    li $s4, 0                          #int i = 0
    for_i_begin:
        beq $s4, $s0, for_i_end        #if(i==m1-m2+1) break
        nop
        li $s5, 0                      #int j = 0
        for_j_begin:
            beq $s5, $s1, for_j_end    #if(j==n1-n2+1)break
            nop
            li $t8, 0                  #int sum = 0
            li $s6, 0                  #int k = 0
            for_k_begin:
                beq $s6, $s2, for_k_end #if(k==m2)break
                nop
                li $s7, 0               #int l = 0
                for_l_begin:
                    beq $s7, $s3, for_l_end  #if(l==n2)break
                    nop
                    addu $t1, $s4, $s6 #i+k
                    addu $t2, $s5, $s7 #j+l
                    calc_addr($t0, $t1, $t2)
                    lw $t1, matrix1($t0)
                    calc_addr($t0, $s6, $s7)
                    lw $t2, matrix2($t0)
                    mul $t0, $t1, $t2      #f[i+k][j+l]*h[k][l]
                    add $t8, $t8, $t0
                    addiu $s7, $s7, 1       #l++
                    j for_l_begin           #loop
                    nop
                for_l_end:
                addiu $s6, $s6, 1       #k++
                j for_k_begin           #loop
                nop
            for_k_end:
            print_int($t8)
            addiu $s5, $s5, 1          #j++
            j for_j_begin              #loop
            nop
        for_j_end:
        la $a0, enter
        li $v0, 4
        syscall
        addiu $s4, $s4, 1              #i++
        j for_i_begin
        nop                            #loop
    for_i_end:
    
    done