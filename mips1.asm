#Chuong trinh: ten chuong trinh tinh 100k+1k-100 = 100k9
#Data segment; vung bo nho chua du lieu
	.data
#Cac dinh nghia bien
int_f: .vord 13
#Cac cau nhac nhap du lieu

#Code segment
	.text
	.globl	main
main:	
#Nhap (syscall)
	move	$t0,$a0
#Xu ly
  # t0=100000/f
	lui	$t0,0x0001
	ori	$t0,$t0,0x86A0	#34464
	addi	$t0,$t0,1000
	subi	$t0,$t0,100
	sv	$t0,int_f
#Xuat ket qua (syscall)
	la	$a0,Xuat_kq
	addi	$v0,$zero,4
	syscall
	lv	$a0,int_f
	syscall
	
xuat_kq:	

#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall