.data
array: .space 10000
space: .asciiz " "
changeLine:.asciiz "\n"

.text
li $v0, 5          #input n
syscall
move $s1, $v0      #set $s1 = n
nop
li $v0, 5          #input m
syscall
move $s2, $v0      #set $s2 = m

li $t0, 0          #set $t0 = input loop variable
mul $t1, $s1, $s2  #set $t1 =input loop limit

for_begin:
beq $t0, $t1, for_end
li $v0, 5          #read factor
syscall
sll $t2, $t0, 2    #t2 for temp variable
sw $v0, array($t2)
addiu $t0, $t0, 1
j for_begin
nop
for_end:

move $s3, $s2
addiu $t0, $t0, -1  #t0 for loop variable
for_a_begin:
beqz $s1,for_a_end
move $s3, $s2
for_b_begin:
beqz $s3, for_b_end
#####################
#####statement#######
sll $t2, $t0, 2     #t2 for temp variable
lw $t1, array($t2)  #set $t1 as array factor
addiu $t0, $t0, -1
if_begin:
beqz $t1, if_end    #if $t1 > 0
#######output########
move $a0, $s1
li $v0, 1
syscall
la $a0, space
li $v0, 4
syscall
move $a0, $s3
li $v0, 1
syscall
la $a0, space
li $v0, 4
syscall
move $a0, $t1
li $v0, 1
syscall
la $a0, changeLine
li $v0, 4
syscall
#####################
if_end:
addiu $s3, $s3, -1
j for_b_begin
nop
for_b_end:
addiu $s1, $s1, -1
j for_a_begin
nop
for_a_end:

li $v0, 10
syscall
