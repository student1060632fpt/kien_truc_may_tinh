#b�i 15 - sao l?u d? li?u t?p 2
.data
.text
	main:
		li		$a0,10
		jal		func
		#in gi� tr? $a0
		li		$v0,1
		syscall
		
		#k?t th�c ch??ng tr�nh
		li		$v0,10
		syscall
		
	func:	#in s? 5 ra m�n h�nh
		addi	$sp,$sp,-4		# sp = sp-4
		sw		$a0,($sp)		# l?u a0 v�o sp
		li		$v0,1
		li		$a0,5
		syscall
		lw		$a0,($sp)		#tr? l?i bi?n a0 t? sp
		jr		$ra
		