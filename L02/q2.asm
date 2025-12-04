# Matheus de Almeida Moreira

.text
main:
        #Solucao mais rapida
	addi $s0, $zero, 3 # x = 3
	sll $t0, $s0, 2 # y = x * 4 (2^2) 
	# Segunda solucao
	#addi $s0, $zero, 3 # x = 3
	#addi $s1, $zero, 4 # z = 4
	#mult  $s0, $s1
	#mflo $t1 