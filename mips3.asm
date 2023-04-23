#Chuong trinh: ten chuong trinh
#Data segment
	.data
#Cac dinh nghia bien

#Cac cau nhac nhap du lieu

#Code segment
	.text
	.globl	main
main:	
#Nhap (syscall)
	move	$t0,$a0
#Xu ly
	#to=a/f,t1=x,
	#f=((a.x+b).x-c)x-d	[f=f-d]
	lv	$t2,int_d
	sub	$t0,$t0,$t2
	sv	$t0,int_f
	
#Xuat ket qua (syscall)
	la	$a0,Xuat_s1
	addi	$v0,$zero,4
	syscall
	lv	$a0,int_x
	addi	$v0,$zero,1
	syscall
Xuat_kq:	

#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall
