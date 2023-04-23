#bài 13 - l?nh sb(store byte), lb (load byte)
.data
	chuoi:	.asciiz "xin chao"
.text
	#store byte
	li	$t1,'b'			#t1 = b
	#sb giá_tr?,offset (address) = offset + address
	li	$t2,268501024	#t2 = cái chu?i s? n? là ??a ch? mình mu?n l?u ?ó
	sb	$t1,0($t2) 		#t1 ???c l?u vào ô nh? t2, cái s? 0 ?ó ko có ngh?a lý gì ?êu ??ng lo, vì nó là 0+t2 thôi
	sb	$t1,2($t2)		#t1 l?u ? v? trí t2+2 n?a
	
	#load byte
	la	$t3,chuoi		#t3 = xin chao
	lb	$t5,0($t3)		# có ho?c ko có 0 ??u ???c
						#0 là l?y kí t? ??u tiên
	lb	$t6,1($t3)		#l?y th? kí t? i