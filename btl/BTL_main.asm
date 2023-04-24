#Chuong trinh: 	De 8. In pho 
#				Viet chuong trinh in pho sao nhu hinh ben duoi
# -----------------------------------
# Data segment
.data
  # Cac dinh nghia bien
  		#	Cac dinh nghia bien - doc file
	  	int_array:		.space 40	#mang
  		tenfile:		.asciiz "F:/STRING.TXT"
  		file_descriptor: .word 0
  		
  		#	Cac dinh nghia bien - cho chuong trinh
		
    # Cac cau nhac nhap/xuat du lieu
  str_dl1: .asciiz "Mang da cho: \n"
  str_loi: .asciiz "Mo file bi loi."
  # -----------------------------------
  # Code segment
.text
  	# -----------------------------------
  	# Chuong trinh chinh
  	# -----------------------------------
	main:
  		# Nhap (syscall)
  		# Xu ly
  		# mo file doc
    	la      $a0,    tenfile
    	addi    $a1,    $zero,      0       # a1=0 (read only); a1 = 2 (write)
    	addi    $v0,    $zero,      13
    	syscall 
    	bltz    $v0,    baoloi				# v0 < 0 (error) -> bao loi
    	sw      $v0,    file_descriptor		# file_descriptor = v0
    	
  		# Doc het file
    	lw      $a0,    file_descriptor		# a0 = file descriptor
    	la      $a1,    int_array			# int_array = mang trong file
    	addi    $a2,    $zero,      40		# a2 = length = 40 (de cho)		
    	addi    $v0,    $zero,      14		# v0 = 14 la code doc file
    	syscall 
    	
		# Dong file
		lw      $a0,    file_descriptor		# a0 = file descriptor
    	addi    $v0,    $zero,      16		# v0 = 16 code close file
    	syscall 
    	
  		# Xuat ket qua (syscall)
		# In lenh: "Mang da cho: "
    	la      $a0,    str_dl1
    	addi    $v0,    $zero,      4		#goi he thong print mang
    	syscall 
    	
    	# in int_array
    	li		$t0,	0					#t0 = 0, bien dem
    	
    	#bat dau vong lap
    	loop:
		# in lan lap thu
		move	$a0,	$t0
		addi    $v0,    $zero,      1		#goi he thong print integer
		syscall
		
		# in hai cham
    	addi    $a0,    $zero,      ':'
    	addi    $v0,    $zero,      11
    	syscall 
    	
    	#in gia tri lan lap
		lb		$t4,	int_array($t0)
		subi	$t4,	$t4,		48			
		move	$a0,	$t4
		addi    $v0,    $zero,      1
		syscall
		
    	# in xuong dong
    	addi    $a0,    $zero,      '\n'
    	addi    $v0,    $zero,      11
    	syscall 
    	
    	addi	$t0,	$t0,		1		#t0++
    	blt		$t0,	40,			loop	#lap lai khi chua het mang
    	#ket thuc vong lap
    	j       Kthuc
	
	baoloi: 
		la $a0,str_loi
    	addi    $v0,    $zero,      4
    	syscall 

# Ket thuc chuong trinh (syscall)
Kthuc: 
	addiu $v0,$zero,10
    syscall 
#-----------------------------------
