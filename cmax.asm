#Chuong trinh: ham khong la - range = max-min
	.include "macroC5.mac"

#Data segment
	.data

#Cac dinh nghia bien
int_f:	.word	46,79,13,35,68
	.word	24,68,80,91,02
int_n:	.word	10
int_max:.word	13
int_min:.word	14
int_ran:.word	15

#Cac cau nhac nhap du lieu
Xuat_max:.asciiz "max = "


#Code segment
	.text
	.globl	main
main:	
#Nhap (syscall)
	move	$t0,$a0
#Xu ly

#Xuat ket qua (syscall)
xuat_kq:	
	addi	$v0,$zero,1
	syscall
	xuongdong
#xuat_max
	inchuoi(Xuat_max)
	inword(int_max)
	xuongdong
#xuat_min
	inchuoi(Xuat_min)
	inword(int_min)
	xuongdong
#xuat range
	inchuoi(Xuan_ran)
	intword(int_ran)
#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall
