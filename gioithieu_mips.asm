.data
	
	var1: .word 3		#Bi?n nguy�n var c� k�ch th??c 1 word
	arr1: .byte 'a','k'	#m?ng arr1 c� 2 ph?n t?, m?i ph?n t? 1 byte
	arr2: .space 40		#m?ng arr2 c� k�ch th??c 40 byte li�n t?c
						#c?p 40 bytpe b? nh?, ch?a ???c kh?i t?o
	char_array:	.byte	'A':10	#m?ng 10 k� t? ???c kh?i t?o l� 'A', c� th? thay 'A' b?ng 65
	int_array:	.word	0:30	#m?ng 30 s? nguy�n ???c kh?i t?o l� 0
	str1: .asciiz "ahihi"	#chu?i str1 c� k?t th�c l� null
	#v� d?
	avar: .word 5
	bvar: .word	9
	cvar: .word	-1
.text
	lw	$t0,avar($0)
	lw	$t1,bvar($0)
	add	$t2,$t0,$t1
	sw	$t2,cvar($0)