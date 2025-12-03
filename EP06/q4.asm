# Matheus de Almeida Moreira

.text
main:
	addi $s0, $zero, 3 # x = 3
	addi $s1, $zero, 4 # y = 4
	# 15x
	sll $t0, $s0, 4 # t0 = 3 * 2^4(16)
	sub $t0, $t0, $s0 # t0 = 3 * 15
	# 67 y
	sll $t1, $s1, 6 # t1 = 4 * 2^6(64)
	add $t1, $t1, $s1 # t1 = 65y
	add $t1, $t1, $s1 # t1 = 66y
	add $t1, $t1, $s1 # t1 = 67y
	# z
	add $t2, $t0, $t1 # z = t0 + t1
	sll $t2, $t2, 2 # t2 = t2 * 4
#EOF