#Chuong trinh: tinh chu vi va dien tich hinh tron
#Data segment
	.data
#Cac dinh nghia bien
flo_r:	.float	1.3
flo_cv:	.float	.4
flo_dt: .float	1.5
flow_pi:.float	3.141592
flow_so2:.float 2.0

#Cac cau nhac nhap du lieu
Nhap_r: .asciiz "Nhap ban kinh: "
Xuat_cv:.asciiz	"chu vi 	= "
Xuat_dt:.asciix	"Dien tich = "

#Code segment
	.text
	.globl	main
main:	
#Nhap (syscall)
	nhapfloatconhac(Nhap_r,flo_r)
	
#Xu ly#
#$f0= cv(-2,0),f1=pi,f2=r
	lwc1	$f0,flo_so2
	lwc1	$f1,flo_pi
	lwc1	$f2,flo_r
lwc1`$f1,flo_pi
 #tinh chu vi = 2*pi*t
#cv=2*pi	[cv = cv*pi] [cv=2]
	mul.s	$f0,$f0.$f1
#cv = 2*pi*r	[cv=cv*r]
	mul.s	$f0,$f0,$f2
	swc1	$f0,ss
 #ginh dien tich = pi*r*r
#dt = pr*r	[dt = dt*r] [dt = pi]
#dt = pr*r	[dt = dt*r] [dt = pi]
 
#Xuat ket qua (syscall)
	infloatconhac(Xuan_cv,flo_cv(
	xuongdong
	infloatconhac(Xuan_dt,flo_dt)

#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall
