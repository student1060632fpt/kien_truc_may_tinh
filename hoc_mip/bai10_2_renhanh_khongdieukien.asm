#B�i 10 - thao t�c ?i?u khi?n r? nh�nh
.data
	chuoi1: .asciiz "b?ng nhau"
	chuoi2:	.asciiz "kh�ng b?ng nhau"
.text
	#r? nh�nh kh?i ?i?u ki?n
	
	b in_chuoi_1
	
	#mu?n n� ko g?i lu�n c? h�m in chu?i 1 th� ph?i k?t th�c ch??ng tr�nh
	li	$v0,10
	syscall
	in_chuoi_1:
		#in chu?i 1
		li	$v0,4
		la	$a0,chuoi1
		syscall
	
	