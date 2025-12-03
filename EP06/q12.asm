.data
	p3: .word p2
	p2: .word p1
	p1: .word x
	x: .word 10
	
.text
main:
	la $s0, p3
	lw $t0, 0($s0) #p3
	lw $t1, 0($t0) #p2
	lw $t2, 0($t1) # p1
	lw $t3, 0($t2) # x
	
	add $t3, $t3, $t3 # x * 2 = x + x
	
	sw $t3, 0($t2)