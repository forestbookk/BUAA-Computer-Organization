.data
    symbol: .word 0:7
    array: .word 0:7
    stack: .word 0:1024
    space: .asciiz " "
    enter: .asciiz "\n"
    
.macro get_int(%data)
    li $v0, 5
    syscall
    move %data, $v0
.end_macro

.macro done
    li $v0, 10 
    syscall
.end_macro    
 
.text
    #scanf("%d", &n)
    get_int($s0)   # n($s0)
    
    #FullArray(0)
    li $s2, 0      #stack of i
    li $a1, 0      #index = 0(a1)
    jal FullArray
    nop
    
    #end
    done
    
    FullArray:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    #if(index >= n)
    ifindex:
        blt $a1, $s0, ifindex_end
        nop
        #if_statment#
        li $t0, 0   #int i = 0
        forprint:
            beq $t0, $s0, forprint_end  #if(i==n)break
            nop
            #for_statment#
            #print(%d)
            sll $t1, $t0, 2
            lw $t2, array($t1)
            move $a0, $t2
            li $v0, 1
            syscall
            #print( )
            la $a0, space
            li $v0, 4
            syscall
            ##############
            addi $t0, $t0, 1 #i++
            j forprint       #loop
            nop
        forprint_end:
        #print(\n)
        la $a0, enter
        li $v0, 4
        syscall
        #return
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra
        nop
        #############
    ifindex_end:
    
    li $s1, 0 #int i = 0
    fordfs:
        beq $s1, $s0, fordfs_end #if(i==n)break
        nop
        
        #for_statement#
        ifsymbol:
        sll $t0, $s1, 2
        lw $t1, symbol($t0) #t1 = symbol[i]
        bnez $t1, ifsymbol_end
        nop
        #if_statement#
        #symbol[i] = 1
        li $t1, 1
        sw $t1, symbol($t0) 
        #array[index]=i+1
        addi $t1, $s1, 1 #i+1
        sll $t0, $a1, 2  #array[index]
        sw $t1, array($t0)
        #FullArray(index+1)
        addi $s2, $s2, 4
        sw $s1, stack($s2)
        
        addi $a1, $a1, 1#index++
        jal FullArray
        nop
        #load i and index
        lw $s1, stack($s2) #load i
        addi $s2, $s2, -4
        addi $a1, $a1, -1 #index--
        #symbol[i] = 0
        sll $t0, $s1, 2
        li $t1, 0
        sw $t1, symbol($t0)
        ##############
        ifsymbol_end:
        ###############
        addi $s1, $s1, 1  #i++
        j fordfs    #loop
        nop
    fordfs_end:
    
    #return
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra
    nop
    
    #end
    done