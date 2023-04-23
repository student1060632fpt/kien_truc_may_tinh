# Chuong trinh: xuat chuoi
# Data segment
.data
    str: .asciiz "Kien Truc May Tinh 2022.\n"    # chuoi can xuat

# Code segment
.text
.globl main
main:
    # Xu ly xuat chuoi
    li $v0, 4              # syscall 4: xuat chuoi
    la $a0, str
    syscall                 # thuc hien syscall de xuat chuoi
    
    # Ket thuc chuong trinh
    li $v0, 10             # syscall 10: thoat chuong trinh
    syscall
