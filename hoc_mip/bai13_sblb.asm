#b�i 13 - l?nh sb(store byte), lb (load byte)
.data
	chuoi:	.asciiz "xin chao"
.text
	#store byte
	li	$t1,'b'			#t1 = b
	#sb gi�_tr?,offset (address) = offset + address
	li	$t2,268501024	#t2 = c�i chu?i s? n? l� ??a ch? m�nh mu?n l?u ?�
	sb	$t1,0($t2) 		#t1 ???c l?u v�o � nh? t2, c�i s? 0 ?� ko c� ngh?a l� g� ?�u ??ng lo, v� n� l� 0+t2 th�i
	sb	$t1,2($t2)		#t1 l?u ? v? tr� t2+2 n?a
	
	#load byte
	la	$t3,chuoi		#t3 = xin chao
	lb	$t5,0($t3)		# c� ho?c ko c� 0 ??u ???c
						#0 l� l?y k� t? ??u ti�n
	lb	$t6,1($t3)		#l?y th? k� t? i