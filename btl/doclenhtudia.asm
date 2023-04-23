# Chuong trinh: Doc du lieu tu file
# -----------------------------------
# Data segment
.data
  # Cac dinh nghia bien
  dulieu1: .space 4
  dulieu2: .space 4
  tenfile: .asciiz "STRING.TXT"
  fdescr: .word 0
  # Cac cau nhac nhap/xuat du lieu
  str_dl1: .asciiz "Du lieu 1 = "
  str_dl2: .asciiz "Du lieu 2 = "
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
    addi    $a1,    $zero,      0       # a1=0 (read only)
    addi    $v0,    $zero,      13
    syscall 
    bltz    $v0,    baoloi
    sw      $v0,    fdescr
  # doc file
  # 4 byte dau
    lw      $a0,    fdescr
    la      $a1,    dulieu1
    addi    $a2,    $zero,      4
    addi    $v0,    $zero,      14
    syscall 
  # 4 byte sau
    la      $a1,    dulieu2
    addi    $a2,    $zero,      4
    addi    $v0,    $zero,      14
    syscall 
  # dong file
    lw      $a0,    fdescr
    addi    $v0,    $zero,      16
    syscall 
  # Xuat ket qua (syscall)
  # in du lieu 1
    la      $a0,    str_dl1
    addi    $v0,    $zero,      4
    syscall 
    lw      $a0,    dulieu1
    addi    $v0,    $zero,      1
    syscall 
  # xuong dong
    addi    $a0,    $zero,      '\n'
    addi    $v0,    $zero,      11
    syscall 
  # in du lieu 2
    la      $a0,    str_dl2
    addi    $v0,    $zero,      4
    syscall 
    lwc1    $f12,   dulieu2
    addi    $v0,    $zero,      2
    syscall 
    j       Kthuc
baoloi: la $a0,str_loi
    addi    $v0,    $zero,      4
    syscall 
  # Ket thuc chuong trinh (syscall)
Kthuc: addiu $v0,$zero,10
    syscall 
  # -----------------------------------