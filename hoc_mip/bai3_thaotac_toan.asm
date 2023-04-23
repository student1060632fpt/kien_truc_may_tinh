#Bai 3 - thao tác phép toán c? b?n + - * /
.data

.text
	li	$t1,32	# t1 = 32
	li	$t2,5	# t2 = 5
	#phép + 
	add	$t3,$t1,$t2	# t3 = t1 + t2
	#phép -
	sub	$t4,$t1,$t2	# t4 = t1 - t2
	#phép *
	mul	$t5,$t1,$t2 # t5 = t1 * t2
	#phép /
	div	$t1,$t2
	mflo $t6	# t6 = th??ng (th??ng là lo)
	mfhi $t7	# t7 = d? (high)