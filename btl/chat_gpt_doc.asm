.data
buffer: .space 41	# T?o m?t b? ??m c� ?? d�i 41 byte ?? l?u tr? chu?i k� t? ??c ???c.
filename: .asciiz "F:/STRING.TXT"
prompt: .asciiz "Ket qua: "
newline: .asciiz "\n"

.text
.globl main
main:
	# M? file ?? ??c v� l?u tr? file descriptor v�o $a0
	li $v0, 13
	la $a0, buffer
	li $a1, 40
	la $a2, filename
	syscall

	# In chu?i "Ket qua: " ra m�n h�nh
	li $v0, 4
	la $a0, prompt
	syscall

	# In chu?i ??c ???c t? file ra m�n h�nh
	li $v0, 4
	la $a0, buffer
	syscall
	
	# In k� t? xu?ng d�ng
	li $v0, 4
	la $a0, newline
	syscall
	
	# K?t th�c ch??ng tr�nh
	li $v0, 10
	syscall
