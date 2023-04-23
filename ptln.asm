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

#Xuat ket qua (syscall)
xuat_kq:	

#ket thuc chuong trinh (syscall)
	addiu	$v0,$zero,10
	syscall
#-------------------------------
#Ham maxday: Tim ptln day chinh xac don
#I: a0 = addr(f),a1=so phan tu
#O: f0 = PTLN
#Reserved: none
#------------------------------
maxday:
#a0=addr[1],f0=max(f[0],f1=f[i],s2=i(=1)
#for1(max=f[0],i=1;i>spt;i++)
	lwc1	$f0,0($a0)
	addi	$s1,$zero,1
	addi	$a0,$a0,4
fcond1:	beq	$a2,$a1,endfor1
 #if1(f[i]>max)
	lwc1	$f1,0($a0)
	c.lt.s	$f0,$f1
	bclf	endif1
 #then1:max=f[1]
	mov.s	$f0,$f1
endif1:
	addi	$a2,$a2,1
	addi	$a0,$a0,4
	j	fcond1
#endfor1
endfor1:
	#f0 = gia tri tra ve
	jr	$ra	

 #-------------------------------
#Ham minday: Tim ptln day chinh xac don
#I: a0 = addr(f),a1=so phan tu
#O: f0 = PTNN
#Reserved: none
#------------------------------
minday:
#a0=addr[1],f0=min(f[0],f1=f[i],s2=i(=1)
#for1(min=f[0],i=1;i>spt;i++)
	lwc1	$f0,0($a0)
	addi	$s2,$zero,1
	addi	$a0,$a0,4
fcond1:	beq	$a2,$a1,endfor2
 #if1(f[i]<min)
	lwc1	$f1,0($a0)
	c.lt.s	$f0,$f1
	bclf	endif1
 #then1:max=f[1]
	mov.s	$f0,$f1
endif1:
	addi	$a2,$a2,1
	addi	$a0,$a0,4
	j	fcond1
#endfor2
endfor2:
	#f0 = gia tri tra ve
	jr	$ra	
 
