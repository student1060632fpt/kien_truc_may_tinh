#bài 15 - k? thu?t sao l?u d? li?u
.data
.text
	li	$t1,1
	sw	$t1,-4($sp)
	
	li	$t1,2
	sw	$t1,-8($sp)
	
	li	$t1,3
	sw	$t1,-12($sp)
	
	li	$t1,4
	sw	$t1,-16($sp)
	
	li	$t1,5
	sw	$t1,-20($sp)
	
	li	$t1,6
	sw	$t1,-24($sp)
	
	li	$t1,7
	sw	$t1,-28($sp)
	
	li	$t1,8
	sw	$t1,-32($sp)	#l?u vào -32 ??a ch?(ti?n v? phía tr??c) so v?i sp
	
	lw	$t2,-32($sp)	#l?y th? coi -32 có th?c s? l?u gì ko
	