# B�i 7 - in chu?i k� t? ra m�n h�nh
.data
	chuoi:	.asciiz "Xin ch�o\n"
.text
	li	$v0,4
	la	$a0,chuoi
	syscall
	
	li	$v0,4
	la	$a0,chuoi
	syscall