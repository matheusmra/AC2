# Matheus de Almeida Moreira

.data
	x: .word 5 
	y: .word 2    
	k: .word 0      

.text
main:
	la $s0, x # Carrega endereco
	lw $t0, 0($s0)      # $t0 = x 
	lw $t1, 4($s0)      # $t1 = y 
	add $t2, $zero, $zero # $t2 = k
	
loop:
	beq $t1, $zero, sair # Se $t1 = 0, loop acaba
	add $t2, $t2, $t0  # k = k + x
	addi $t1, $t1, -1   # y = y - 1
	j loop
sair:
	sw $t2, 8($s0) # Gravar k na memoria