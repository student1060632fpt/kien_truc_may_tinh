#b�i 9 - c�c thao t�c so s�nh
.data
.text
	li	$s1,10
	li	$s2,5
	
	seq	$t1,$s1,$s2	# set equal:		s1 = s2 -> ?�ng: t1 = 1, sai t1 = 0
	slt	$t2,$s1,$s2	# set less than:	s1 < s2 -> ?�ng: t2 = 1, sai t2 = 0
	sle	$t3,$s1,$s2	# set less equal:	s1 <=s2 -> ?�ng: t3 = 1, sai t3 = 0
	sgt $t4,$s1,$s2 # set greater than: s1 > s2 -> ?�ng: t4 = 1, sai t4 = 0
	sge $t5,$s1,$s2 # set greater equal:s1 >=s2 -> ?�ng: t5 = 1, sai t5 = 0