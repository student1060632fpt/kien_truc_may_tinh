# Data segment
	.data
str:	.asciiz "*"

# Code segment
	.text
	.globl	main

main:
	# Set up loop counter
	addi	$t0, $zero, 10  # loop counter i = 10

	# Outer loop to print rows
	li	$t1, 1            # row number
loop1:
	beq	$t1, $t0, exit1   # if i == 10, exit outer loop

	# Inner loop to print columns
	li	$t2, 1            # column number
loop2:
	beq	$t2, $t1, newline # if j == i, print newline and exit inner loop

	# Print a single character
	la	$a0, str          # load string pointer into argument register
	addi	$v0, $zero, 4     # syscall code for printing a string
	syscall

	# Increment column counter
	addi	$t2, $t2, 1
	j	loop2              # jump back to inner loop

newline:
	# Print newline
	li	$v0, 4            # syscall code for printing a string
	la	$a0, "\n"         # load newline character into argument register
	syscall

	# Increment row counter
	addi	$t1, $t1, 1
	j	loop1              # jump back to outer loop

exit1:
	# Exit program
	li	$v0, 10           # syscall code for exiting program
	syscall
