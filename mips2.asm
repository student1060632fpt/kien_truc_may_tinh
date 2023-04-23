# Chuong trinh: ten chuong trinh
# Data segment
	.data
# Cac dinh nghia bien

# Cac cau nhap nhap du lieu

# Code segment
	.text
	.globl	main
main:	
# Nhap (syscall)
	move	$t0,$a0
# Xu ly

# Xuat ket qua (syscall)
xuat_kq:	

# Ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall
