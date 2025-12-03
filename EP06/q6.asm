# Matheus de Almeida Moreira

.text
main:
	addi $s0, $zero, -1 # 0xFFFFFFFF
	addi $s1, $zero, 9375 # = 300000/32
	srl $s0, $s0, 1 # 0x7FFFFFFF
	sll $s1, $s1, 5 # 9375 * 2^5
	sll $t0, $s1, 2 # 300000 * 2^2
	sub $s0, $s0, $t0