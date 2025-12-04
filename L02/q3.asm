# Matheus de Almeida Moreira

.text
main:
	addi $s0, $zero, 3
	sll  $t0, $s0, 10 # 3 * 2^10 = 3 * 1024
	add $t0, $t0, $s0,


	# Segunda solucao
	# addi $s0, $zero, 3 # x = 3
	# addi $t0, $zero, 1025 # tmp = 1025
	# mult $s0, $t0 # lo = 3 * 1025
	# mflo $t1 # y = lo