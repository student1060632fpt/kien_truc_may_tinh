.data
	
	var1: .word 3		#Bi?n nguyên var có kích th??c 1 word
	arr1: .byte 'a','k'	#m?ng arr1 có 2 ph?n t?, m?i ph?n t? 1 byte
	arr2: .space 40		#m?ng arr2 có kích th??c 40 byte liên t?c
						#c?p 40 bytpe b? nh?, ch?a ???c kh?i t?o
	char_array:	.byte	'A':10	#m?ng 10 kí t? ???c kh?i t?o là 'A', có th? thay 'A' b?ng 65
	int_array:	.word	0:30	#m?ng 30 s? nguyên ???c kh?i t?o là 0
	str1: .asciiz "ahihi"	#chu?i str1 có k?t thúc là null
	#ví d?
	avar: .word 5
	bvar: .word	9
	cvar: .word	-1
.text
	lw	$t0,avar($0)
	lw	$t1,bvar($0)
	add	$t2,$t0,$t1
	sw	$t2,cvar($0)