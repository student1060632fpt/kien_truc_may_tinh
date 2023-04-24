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
		sao:			.asciiz "*"
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
    	
    	#bat dau vong lap de in day so da cho
    	lap_in_day_so_da_cho:
			
    		#in gia tri lan lap
			lb		$t1,	int_array($t0)		#ra duoc ket qua nhung o dang dex
			subi	$t1,	$t1,		48		#t4 -=48 de lay ket qua o dang so
			move	$a0,	$t1
			addi    $v0,    $zero,      1		#in so nguyen do ra man hinh
			syscall
			
    		addi	$t0,	$t0,		1		#t0++
	    	blt		$t0,	40,			lap_in_day_so_da_cho	#lap lai khi chua het mang
    	# Ket thuc vong lap

    	# Lap in tat ca cac hang sao
    	li		$t5,	1
    	lap_in_het:
    		# in xuong dong
    		addi    $a0,    $zero,      '\n'
	    	addi    $v0,    $zero,      11
    		syscall 
    	
	    	# in hang dau tien
    		li		$t0,	0						# bien dieu khien lap
    	
    		# bat dau lap in hang dau tien
	    	lap_in_hang:
    		
    			#in gia tri lan lap
				lb		$t1,	int_array($t0)		#ra duoc ket qua nhung o dang dex
				subi	$t1,	$t1,		48		#t4 -=48 de lay ket qua o dang so
				

				bgt		$t1,	$t5,		in_sao	# t1 <= so lan lap -> Dung: *, Sai: rong 0
				beq		$t1,	$t5,		in_sao
				# Sai: in rong
				addi	$v0,	$zero,		11
				addi    $a0,    $zero,      '_'
				syscall		
				tiep_tuc_sau_in_sao:
			
    			addi	$t0,	$t0,		1		#t0++
	    		blt		$t0,	40,			lap_in_hang	#lap lai khi chua het mang
    		# Ket thuc vong lap in hang
    		
    		addi	$t5,	$t5,		1			#t5++
	    	blt		$t5,	10,			lap_in_het	#lap lai khi chua het mang
    	
    	
    	# Ket thuc chuong trinh
    	j       Kthuc
	
	# In hang dau co sao
	in_sao:
		addi	$v0,	$zero,		4
		la		$a0,	sao				
		syscall
		j		tiep_tuc_sau_in_sao
	
	# Doc file fail -> bao loi file
	baoloi: 
		la $a0,str_loi
    	addi    $v0,    $zero,      4
    	syscall 

# Ket thuc chuong trinh (syscall)
Kthuc: 
	addiu $v0,$zero,10
    syscall 
#-----------------------------------
