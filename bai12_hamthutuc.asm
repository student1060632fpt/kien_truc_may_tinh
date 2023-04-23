#bài 12 - hàm th? t?c
.data
	chuoi: .asciiz "xin chào"
.text
	main:
		jal in_ra_man_hinh	#jump and leave: nh?y t?i cái mình truy?n zô ?? hi?n th?c l?nh
		#k?t thúc ch??ng trình
		li	$v0,10
		syscall
	
	in_ra_man_hinh:
		#in ra màn hình
		li	$v0,4
		la	$a0,chuoi
		syscall
		jr	$ra	#ph?i g?i ?? k?t thúc ch??ng tình