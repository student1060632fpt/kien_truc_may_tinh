# B�i 4 - nh?p s?
.data
.text
	# Th? s? nguy�n
#	addi	$v0,$zero,5 #v0 = 0 + 5
#	syscall	# sau ?� s? xu?t hi?n h?p tho?i v� nh?p gi� tr? x?n x� v�o thanh ghi v0 
#	move	$t2,$v0	# t2 = v0
	# Th? s? th?c
	addi	$f0,$zero,6	#f0 = 0 + 6 = 6
	syscall
	move	$t3,$f0	