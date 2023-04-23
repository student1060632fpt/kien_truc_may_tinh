# Bài 7 - in chu?i ký t? ra màn hình
.data
	chuoi:	.asciiz "Xin chào\n"
.text
	li	$v0,4
	la	$a0,chuoi
	syscall
	
	li	$v0,4
	la	$a0,chuoi
	syscall