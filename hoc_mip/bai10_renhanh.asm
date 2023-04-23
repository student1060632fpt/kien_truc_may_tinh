#Bài 10 - thao tác ?i?u khi?n r? nhánh
.data
	chuoi1: .asciiz "b?ng nhau"
	chuoi2:	.asciiz "không b?ng nhau"
.text
	li	$t1,6	# t1 = 5
	li	$t2,5	# t2 = 5
	
	#gi? so sánh t1 và t2
	#r? nhánh có ?i?u ki?n
	beq	$t1,$t2,in_chuoi_1	#t1 = t2 ?úng thì nh?y t?i in_chuoi_1
	
	#in chu?i 2, t?c là n?u phía trên không b?ng nhau thì ti?p t?c câu l?nh này
	li	$v0,4
	la	$a0,chuoi2
	syscall
	
	#mu?n nó ko g?i luôn c? hàm in chu?i 1 thì ph?i k?t thúc ch??ng trình
	li	$v0,10
	syscall
	in_chuoi_1:
		#in chu?i 1
		li	$v0,4
		la	$a0,chuoi1
		syscall
	
	