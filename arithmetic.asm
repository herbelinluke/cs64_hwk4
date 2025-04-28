# arithmetic.asm program
# CS 64, Z.Matni
#
# 1. Prompt the user for 3 inputs: a, b, c
# 2. Calculate 16*( a - 8*b) + 7*c using only one mult instruction
# 3. Print out the result

.text
main:
	# TODO: Write your code here!
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0

	sll $t1, $t1, 3
	sub $t0, $t0, $t1
	sll $t0, $t0, 4
	li $t3, 7
	mult $t2, $t3
	mflo $t2
	add $a0, $t0, $t2
	li $v0, 1
	syscall
	li $v0, 10
	syscall
exit:
	# Exit SPIM: Write your code here!
