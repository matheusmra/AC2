# Matheus de Almeida Moreira

.data
	vetor: .space 400 # Vetor de tamanho 100 * 4 bytes
.text
main:
	la $s0, vetor 
	li $t0, 0 # i
	li $t1, 100 # tam max
	li $t2, 0 # soma
	
loop:
	beq $t0, $t1, fim_loop # Executa o loop enquanto i é diferente de 100
	sll $t3, $t0, 1 # t3 = 2 * i
	addi $t3, $t3, 1 # t3 = 2*i + 1
	sll $t4, $t0, 2 # i * 2^2
	add $t5, $s0, $t4 
	sw $t3, 0($t5) # Salva valor no vetor
	add $t2, $t2, $t3 # Atualiza a soma
	addi $t0, $t0, 1 # i++
	j loop
fim_loop:
	sw $t2, 400($s0)