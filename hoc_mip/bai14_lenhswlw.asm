#bai 14
.data
	list:	.word 5,10,4,3,7
.text
	#store word
	li	$t1,10
	sw	$t1,268501024	#?ang l?u th? ? word th? nh?t
	
	li	$t2,268501056	#bi gi? t?ng 1056 lên 2 word và l?u ? word th? hai sau ?ó
	sw	$t1,8($t2)
	
	#load word
	la	$t3,list
	lw	$t4,8($t3)