#Chuong trinh: day so nguyen
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

#Xuat ket qua (syscall)
xuat_kq:	
	la	

#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall