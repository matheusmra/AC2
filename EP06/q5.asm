# Matheus de Almeida Moreira

.text
main:
	addi $s0, $zero, 3125 # A e B = 3125 
	sll $t0, $s0, 5 # 3125 * 2^5 = 100000
	sll $t1, $s0, 6 # 3125 * 2^6 = 200000
	add $t2, $t0, $t1 # t2 = 100000 + 200000