#B�i 1 - c�ch g�n s?
#G�n 10 cho thanh ghi $t1
#G�n 15 cho thanh ghi $t2
#G�n 20 cho thanh ghi $t3
.data #Ph?n ?? khai b�o d? li?u
	number: .word 10
.text #Ph?n code ch�nh
	lw	$t1,number	#l?y gi� tr? c?a nh�n number
	li	$t2,15		#t2 = 15
	addi	$t3,$zero,20	# t3 = 0+20