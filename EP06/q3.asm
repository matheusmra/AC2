#Matheus de Almeida Moreira

.text
main:
	addi $s0, $zero, 3 # X = 3
	addi $s1, $zero, 4 # Y = 4
	# 15x
	add $t0, $s0, $s0 # t0 = 2x
	add $t0, $t0, $t0 # t0 = 4x
	add $t0, $t0, $t0 # t0 = 8x (t0 + t0)
	add $t0, $t0, $t0 # t0 = 16x (t0 + t0)
	sub $t0, $t0, $s0 # t0 = 16x - 1x = 15x
	# 67y
	add $t1, $s1, $s1 # t1 = 2y
	add $t1, $t1, $t1 # t1 = 4y
	add $t1, $t1, $t1 # t1 = 8y
	add $t1, $t1, $t1 # t1 = 16y
	add $t1, $t1, $t1 # t1 = 32y
	add $t1, $t1, $t1 # t1 = 64y
	add $t1, $t1, $s1  # t1 = 65y
	add $t1, $t1, $s1  # t1 = 66y
	add $t1, $t1, $s1  # t1 = 67y
	# Z = (t0 + t1) * 4
	add $t2, $t0, $t1 # z = t0 + t1
	add $t2, $t2, $t2 # z = 2(t0+t1)
	add $t2, $t2, $t2 # z = 4(to+t1)