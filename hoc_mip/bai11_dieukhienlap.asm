#b�i 11 - ?i?u khi?n l?p
.data
	chuoi_bat_dau:	.asciiz "B?t ??u l?p: "
	chuoi: .asciiz "\nL?n l?p th?: "
.text
	li	$t1,1	# bi?n ?i?u khi?n l?p
	
	lap: #b?t ??u v�ng quay cu?c s?ng
		bgt		$t1,5,thoat_lap	# ?k k?t th�c l?p: t1>5 ?�ng -> tho�t l?p (thoat_lap)
		
		#in chu?i ra m�n h�nh
		li		$v0,4		#g?i chu?i
		la		$a0,chuoi	#in chu?i
		syscall
		
		#in s? l?n l?p ra m�n h�nh
		li		$v0,1		#g?i print interger
		move	$a0,$t1		#a0 = t1
		syscall
		
		addi	$t1,$t1,1	#	t1++
		j		lap	#nh?y t?i nh�n l?p
		
	thoat_lap:
		
		
		