#B�i 5 - nh?p chu?i
.data
	chuoi: .asciiz 
.text
	li	$v0,8		#nh?p chu?i
	la	$a0,chuoi	#load address v�o a0
	li	$a1,5
	syscall
	