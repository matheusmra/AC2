.data
x: .word 5
z: .word 7
y: .word 0

.text
main:
	la $s0, x
	lw $t0, 0($s0)# x
	lw $t1, 4($s0)# y
	sll $t2, $t0, 7 # $t0 = 2^7 * t0
	sub $t2, $t2, $t0  # 
	sll $t3, $t1, 6 # 64
	add $t3, $t3, $t1 # 65
	sub $t4, $t2, $t3 # (128x - 65y)
	add $t4, $t4, 1 # Adiciona 1
	
	sw $t4, 8($s0)