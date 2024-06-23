.data
    matrix1: .word 0 : 64
    matrix2: .word 0 : 64
    space: .asciiz " "
    enter: .asciiz "\n"
       
.macro calc_addr(%dst, %row, %column, %rank)
    multu %row, %rank
    mflo %dst
    addu %dst, %dst, %column
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
    scan_int($s0)                   #scanf(n)
    ##loop_read_matrix1
    li $s1, 0                        #int i = 0
    for_row_mat1:
        beq $s1, $s0, for_row_end_mat1        # if(i == n) break;
        nop
        li $s2, 0                        # int j = 0
        for_column_mat1:
            beq $s2, $s0, for_column_end_mat1 # if(j == n) break;
            nop
            calc_addr($t0, $s1, $s2, $s0)# t0 = offset_address
            scan_int($t1)                # scanf(t1)
            sw $t1, matrix1($t0)         # matrix1[i][j] = t1
            addu $s2, $s2, 1             # j++    
            j for_column_mat1
            nop
        for_column_end_mat1:  
        addu $s1, $s1, 1                 # i++  
        j for_row_mat1
        nop
    for_row_end_mat1:
    
    ##loop_read_mat2
    li $s1, 0                        #int i = 0
    for_row_mat2:
        beq $s1, $s0, for_row_end_mat2       # if(i == n) break;
        nop
        li $s2, 0                        # int j = 0
        for_column_mat2:
            beq $s2, $s0, for_column_end_mat2 # if(j == n) break;
            nop
            calc_addr($t0, $s1, $s2, $s0)# t0 = offset_address
            scan_int($t1)                # scanf(t1)
            sw $t1, matrix2($t0)         # matrix1[i][j] = t1
            addu $s2, $s2, 1             # j++    
            j for_column_mat2
            nop
        for_column_end_mat2:  
        addu $s1, $s1, 1                 # i++  
        j for_row_mat2
        nop
    for_row_end_mat2:
    
    li $s1, 0                            # int i = 0;
    for_row_out:
        beq $s1, $s0, for_row_end_out    #if(i==n)break
        nop
        li $s2, 0                        # int j = 0;
        for_column_out:
            beq $s2, $s0, for_column_end_out #if(j === n) break
            nop
            li $s4, 0                   # int sum = 0;
            li $s3, 0                   # int k = 0;
            for_k:
                beq $s3, $s0, for_k_end     #if(k == n) break
                nop
                calc_addr($t0, $s1, $s3, $s0)  # addr of [i][k]
                lw $t1, matrix1($t0)           # t1 = [i][k]
                calc_addr($t0, $s3, $s2, $s0)  # addr of [k][j]
                lw $t2, matrix2($t0)           # t2 = [k][j]
                multu $t1, $t2
                mflo $t0                       # t0 = [i][k] * [k][j]
                addu $s4, $s4, $t0             # sum += [i][k] * [k][j]
                addu $s3, $s3, 1               # k++
                j for_k
                nop
            for_k_end:
            print_int($s4)                     #printf(sum)
            addu $s2, $s2, 1                   # j++
            j for_column_out
            nop
        for_column_end_out:
        la $a0, enter
        li $v0, 4
        syscall                            # printf("\n")
        addu $s1, $s1, 1                   # i++
        j for_row_out
        nop
    for_row_end_out:
    
    done
