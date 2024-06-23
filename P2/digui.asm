.data
matrix: .space 256        #apply matrix to store the edge of the graph
book: .space 32         #record whether each point is marked
stack: .space 44            #store data of each layer

.macro getindex(%ans, %i, %j)
    sll %ans, %i, 3
    add %ans, %ans, %j
    sll %ans, %ans, 2
.end_macro


.text
li $v0, 5
syscall
move $s0, $v0             #set $s0 = n - n points
li $v0, 5
syscall
move $t0, $v0             #set $t0 = m - m edges

li $t1, 0                 #set $t1 = i - loop variable
li $t4, 1                 #content of edge
for_read_edges_begin:
   beq $t1, $t0, for_read_edges_end
   nop
   #statement
   li $v0, 5                 #read the first point
   syscall
   move $t2, $v0             #set $t2 as the first point
   addiu $t2, $t2, -1
   li $v0, 5                 #read the second point($v0)
   syscall   
   addiu $v0, $v0, -1          
   getindex($t3, $t2, $v0)   
   sw $t4, matrix($t3)       #store the first edge
   getindex($t3, $v0, $t2)
   sw $t4, matrix($t3)       #store the second edge
   #########
   addiu $t1, $t1, 1
   j for_read_edges_begin
   nop
for_read_edges_end:

li $a0, 0                    #set $a0 = ans
li $s1, 0                    #set $s1 = x
li $t7, 1                    #set $t7 a sign to mark the beginning of dfs
jal dfs
nop
li $v0, 1
syscall

li $v0, 10
syscall


#s1->x  t2->index t3->loop variable t4->mark/flag t6pointer of stack
dfs:

   if_0_begin:
      beqz $t7, if_0_else
      nop
      li $t6, 0                   #stack space     
      addi $sp, $sp, -4
      sw $ra, 0($sp)
      sw $s1, stack($t6)
      li $t7, 0
      j if_0_end
      nop
   if_0_else:
      addi $t6, $t6, 4
      sw $s1, stack($t6)
   if_0_end:
   

   sll $t2, $s1, 2          #set $t2 = index address of book
   li $t4, 1                #the mark of book
   sw $t4, book($t2)        #store mark of book
   
   li $t3, 0
   for_1_begin:
       beq $t3, $s0, for_1_end
       nop
       sll $t2, $t3, 2
       lw $t5, book($t2)     #set $t5 as book[i]
       and $t4, $t4, $t5
       addi $t3, $t3, 1
       j for_1_begin
       nop
   for_1_end:
   
   if_1_begin:
       beqz $t4, if_1_end
       nop
       li $t3, 0            #help to find G[x][0]
       getindex($t5, $s1, $t3)
       lw $t3, matrix($t5)
       beqz $t3, if_1_end
       nop
       li $a0, 1
       lw $ra, 0($sp)       
       jr $ra
       nop  
   if_1_end:
   
   li $t3, 0                     #set $t3 as loop variable(i)
   for_2_begin:
       beq $t3, $s0, for_2_end
       nop
       if_2_begin:
           sll $t2, $t3, 2
           lw $t5, book($t2)     #set $t5 as book[i]
           bgtz $t5, if_2_end
           nop
           getindex($t5, $s1, $t3)#find G[x][i]
           lw $t1, matrix($t5)
           beqz $t1, if_2_end
           nop                    #the judge of conditions all done
           move $s1, $t3
           jal dfs
           nop
       if_2_end:
       addi $t3, $t3, 1
       j for_2_begin
       nop
   for_2_end:
   
   sll $t2, $s1, 2          #set $t2 = index address of book
   li $t4, 0                #the mark of book
   sw $t4, book($t2)        #store mark of book

   beqz $t6 return_main
   nop
   
   move $t3, $s1            #load loop variable
   addi $t6, $t6, -4 
   lw $s1, stack($t6)       #load x
   jr $ra
   nop
  
  

   return_main:
   lw $ra, 0($sp)
   jr $ra
   nop
   
   li $v0, 10
   syscall
   
