#b�i 12 - h�m th? t?c
.data
	chuoi: .asciiz "xin ch�o"
.text
	main:
		jal in_ra_man_hinh	#jump and leave: nh?y t?i c�i m�nh truy?n z� ?? hi?n th?c l?nh
		#k?t th�c ch??ng tr�nh
		li	$v0,10
		syscall
	
	in_ra_man_hinh:
		#in ra m�n h�nh
		li	$v0,4
		la	$a0,chuoi
		syscall
		jr	$ra	#ph?i g?i ?? k?t th�c ch??ng t�nh