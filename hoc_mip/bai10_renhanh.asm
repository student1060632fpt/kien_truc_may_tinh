#B�i 10 - thao t�c ?i?u khi?n r? nh�nh
.data
	chuoi1: .asciiz "b?ng nhau"
	chuoi2:	.asciiz "kh�ng b?ng nhau"
.text
	li	$t1,6	# t1 = 5
	li	$t2,5	# t2 = 5
	
	#gi? so s�nh t1 v� t2
	#r? nh�nh c� ?i?u ki?n
	beq	$t1,$t2,in_chuoi_1	#t1 = t2 ?�ng th� nh?y t?i in_chuoi_1
	
	#in chu?i 2, t?c l� n?u ph�a tr�n kh�ng b?ng nhau th� ti?p t?c c�u l?nh n�y
	li	$v0,4
	la	$a0,chuoi2
	syscall
	
	#mu?n n� ko g?i lu�n c? h�m in chu?i 1 th� ph?i k?t th�c ch??ng tr�nh
	li	$v0,10
	syscall
	in_chuoi_1:
		#in chu?i 1
		li	$v0,4
		la	$a0,chuoi1
		syscall
	
	