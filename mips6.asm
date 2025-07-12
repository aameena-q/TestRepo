.data 
b: .space 1000
a: .asciiz "Input an array:"


.text 
la $s0, b #address of space 
#printing the input command 
li $v0,4 
la $a0,a
syscall

#initilizing 
li $s1,0 
li $s2,0

loop:
#user input 
li $v0,5
syscall 

addi $s1,$v0,0 #moving the user entered value to $s0
blt $s1,$zero,NEXT #if its less then zero end the loop 
sw $s1,0($s0) #else store the word at first memory loc
addi $s0,$s0,4 #increment of 4 in memory loc 
bgt $s1,$s2,Move #if entered num is greater then prvs num branch 
b loop #else repeat 
Move: 
move $s2,$s1 #putting it as largest num 
b loop #repeat 

NEXT:
li $v0,1 #prinitng 
addi $a0,$s2,0 #largest num 
syscall
