#bt: vi?t chuownug trình cho phép nh?p tên và tu?i, sau ?ó in ra màn hình
.data
	chuoi1:	.asciiz "Nh?p tên: "
	chuoi2:	.asciiz "Nh?p tu?i: "
	ten:	.asciiz #?? trình duy?t hi?u tên
.text
	#hi?n th? chu?i 1
	li	$v0,4
	la	$a0,chuoi1
	syscall 
	
	#nh?p tên
	li	$v0,8	#g?i v0
	la	$a0,ten	#??a ch? mà user nh?p vào
	li	$a1,50	#gi?i h?n kí t?
	syscall	#sau khi nh?p xong ??a ch? chu?i nh?p l?u vào a0, nh?ng a0 còn dùng nhi?u vi?c khác nên ph?i copy giá tr? a0 vào t1
	move	$t1,$a0
	
	#hi?n th? chu?i 2
	li	$v0,4
	la	$a0,chuoi2
	syscall
	
	#nh?p tu?i
	li	$v0,5
	syscall
	move	$t2,$v0	#t2 = tu?i
	
	#in tên ra màn hình
	li	$v0,4
	move	$a0,$t1
	syscall
	
	#in tu?i ra màn hình
	li	$v0,1
	move	$a0,$t2
	syscall
	
	