#Chuong trinh: ten chuong trinh
#Data segment
	.data
#Cac dinh nghia bien
int_a: .word 13
#Cac cau nhac nhap du lieu
Nhap_a: .asciiz "Nhap a: "
Xuat_a: .asciiz "Computar science"

#Code segment
	.text
	.globl	main
main:	
#Nhap (syscall)
	move	$t0,$a0
	syscall
	addi $v0,$zero,5
	syscall
	sw $v0,int_a
#Xu ly
 #t0 = dieu kien(=a), t1 = 2
 	lw	$t0,int_a
 	addi	$t1,$zero,2
 #if(a%2==0)
 	div	$t0,$t1
 	mfhi	$t0
 	bne	$t0,$zero,else1
 #then1
 	la	$a0,Xuat_d
 	addi	$v0,$zero,4
 	syscall
 	j endif
 #else 1
else1:
 #endif1
endif1:
#Xuat ket qua (syscall)
xuat_kq:	

#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall
