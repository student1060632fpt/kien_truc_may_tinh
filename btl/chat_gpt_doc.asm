.data
buffer: .space 41	# T?o m?t b? ??m có ?? dài 41 byte ?? l?u tr? chu?i ký t? ??c ???c.
filename: .asciiz "F:/STRING.TXT"
prompt: .asciiz "Ket qua: "
newline: .asciiz "\n"

.text
.globl main
main:
	# M? file ?? ??c và l?u tr? file descriptor vào $a0
	li $v0, 13
	la $a0, buffer
	li $a1, 40
	la $a2, filename
	syscall

	# In chu?i "Ket qua: " ra màn hình
	li $v0, 4
	la $a0, prompt
	syscall

	# In chu?i ??c ???c t? file ra màn hình
	li $v0, 4
	la $a0, buffer
	syscall
	
	# In ký t? xu?ng dòng
	li $v0, 4
	la $a0, newline
	syscall
	
	# K?t thúc ch??ng trình
	li $v0, 10
	syscall
