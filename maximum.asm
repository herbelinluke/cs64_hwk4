# maximum.asm program
# CS 64, Z.Matni
#
# Get 3 integer inputs from the user (std.in)
# Reveal the maximum absolute value (e.g., entering -3, 2, 1 will give the answer 3)
# See assignment description for details

#Data Area (i.e. memory setup directive)
.data
	# TODO: Complete these incomplete declarations / initializations

    enter:	.asciiz "Enter the next number:\n"
    newline:	.asciiz "\n"
    Maximum:	.asciiz "Maximum: "

#Text Area (i.e. instructions/code directive)
.text

main:

	# TODO: Write your code here
    # You can have other labels expressed here, if you need to
	la $a0, enter 
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	move $t0, $v0

	la $a0, enter 
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	la $a0, enter 
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
	la $a0, Maximum
	li $v0, 4
	syscall
	li $v0, 1
	
	blt $t0, $t1, BMax
	blt $t0, $t2, CMax		
AMax:
	move $a0, $t0
	syscall
	j exit
BMax:
	blt $t1, $t2, CMax
	move $a0, $t1
	syscall	
	j exit
CMax:
	move $a0, $t2
	syscall
exit:
	# TODO: Write code to properly exit a SPIM simulation
	la $a0, newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
