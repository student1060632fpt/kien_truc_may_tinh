#Chuong trinh: if a >= -3 && a <= 4
#Data segment
	.data
#Cac dinh nghia bien
int_a: .word 13
int_b: .word 14
int_c: .word 15
#Cac cau nhac nhap du lieu
Nhap_a:	.asciiz "Nhap a: "
Xuat_kq:.asciiz "a = "
#Code segment
	.text
	.globl	main
main:	
#Nhap (syscall)
	la	$a0,Nhap_a
	addi	$v0,$zero,4
	syscall
	addi	$v0,$zero,5
	syscall
	sw	$v0,int_a
#Xu ly
 #t0=a/dk/a,t1=-3/4,t2=dk1'/dk1,t3=dk2' (chua)/ dk2, t4 = b, t5 = c
 #if31 (a>=-3)
 	
 #then2: a = b - c
 	lw	$t4,int_b
 	lw	$t5,int_c
 	sub	$t0,$t4,$t5
 	sw	$t0,int_a
 	j	endif2
 #else2
else2:
	add	$t0,$t4,$t5

 #endif
endif2:    
	sw	$t0,int_a
#Xuat ket qua (syscall)
xuat_kq:	
	la	$a0,Xuat_kq
	addi	$v0,$zero,4
	syscall
	lw	$a0,int_a
	addi	$v0,$zero,1
	syscall
	

#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall
