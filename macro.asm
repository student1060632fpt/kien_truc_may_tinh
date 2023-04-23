.macro	inchuoi(%bien)
la	$a0,%bien
addi	$v0,$zero,1
syscall
.end_macro

.macro	inword(%bien)
lw	$a0,%bien
addi	$v0,$zero,1
syscall
.end_macro

.macro	xuongdong
addi	$a0,$zero,'\n'
addi	$v0,$zero,11
syscall
.end_macro