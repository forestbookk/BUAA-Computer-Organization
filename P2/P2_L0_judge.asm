.data
    str: .word 0 : 20
    
.macro done 
    li $v0, 10
    syscall
.end_macro

.macro scan_char (%data)
    li $v0, 12
    syscall
    move %data, $v0
.end_macro

.text
    li $v0, 5
    syscall
    move $s0, $v0                     # scan(n); s0 = n
    
    li $s1, 0                         # int i = 0; s1 = i
    read_for_begin:
        beq $s1, $s0, read_for_end    # if(i==n) break
        nop
        sll $t0, $s1, 2               # t0 = offset       
        scan_char($t1)                # scan(%c); t1 = %c
        sw $t1, str($t0)
        addu $s1, $s1, 1              # i++
        j read_for_begin              # loop
        nop
    read_for_end:
    
    li $s1, 0                         # int i = 0
    match_for_begin:
        subu $t0, $s0, $s1            # t0 = n - i
        subiu $t0, $t0, 1             # t0 = n - i - 1
        bge $s1, $t0, match_for_end   # if(i >= n - i - 1) break;
        nop
        sll $t1, $s1, 2
        lw $t2, str($t1)              # t2 = str[i]
        sll $t1, $t0, 2      
        lw $t3, str($t1)              # t3 = str[n-i-1]
        #if(str[i] == str[n-i-1])
            bne $t2, $t3, else
            nop
            j end                         # if str[i] == str[n-i-1] continue
            nop
        else:
            li $a0, 0
            li $v0, 1
            syscall    
            done
        end:
        addu $s1, $s1, 1              # i++
        j match_for_begin             # loop
        nop
    match_for_end:
    
    li $a0, 1
    li $v0, 1
    syscall
    done
