#bài 12 - hàm th? t?c
.data
	chuoi: .asciiz "xin chào"
.text
	#in ra màn hình
	li	$v0,4
	la	$a0,chuoi
	