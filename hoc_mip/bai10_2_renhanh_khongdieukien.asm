#Bài 10 - thao tác ?i?u khi?n r? nhánh
.data
	chuoi1: .asciiz "b?ng nhau"
	chuoi2:	.asciiz "không b?ng nhau"
.text
	#r? nhánh kh?i ?i?u ki?n
	
	b in_chuoi_1
	
	#mu?n nó ko g?i luôn c? hàm in chu?i 1 thì ph?i k?t thúc ch??ng trình
	li	$v0,10
	syscall
	in_chuoi_1:
		#in chu?i 1
		li	$v0,4
		la	$a0,chuoi1
		syscall
	
	