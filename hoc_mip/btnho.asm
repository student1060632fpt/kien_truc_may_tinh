#bt: vi?t chuownug tr�nh cho ph�p nh?p t�n v� tu?i, sau ?� in ra m�n h�nh
.data
	chuoi1:	.asciiz "Nh?p t�n: "
	chuoi2:	.asciiz "Nh?p tu?i: "
	ten:	.asciiz #?? tr�nh duy?t hi?u t�n
.text
	#hi?n th? chu?i 1
	li	$v0,4
	la	$a0,chuoi1
	syscall 
	
	#nh?p t�n
	li	$v0,8	#g?i v0
	la	$a0,ten	#??a ch? m� user nh?p v�o
	li	$a1,50	#gi?i h?n k� t?
	syscall	#sau khi nh?p xong ??a ch? chu?i nh?p l?u v�o a0, nh?ng a0 c�n d�ng nhi?u vi?c kh�c n�n ph?i copy gi� tr? a0 v�o t1
	move	$t1,$a0
	
	#hi?n th? chu?i 2
	li	$v0,4
	la	$a0,chuoi2
	syscall
	
	#nh?p tu?i
	li	$v0,5
	syscall
	move	$t2,$v0	#t2 = tu?i
	
	#in t�n ra m�n h�nh
	li	$v0,4
	move	$a0,$t1
	syscall
	
	#in tu?i ra m�n h�nh
	li	$v0,1
	move	$a0,$t2
	syscall
	
	