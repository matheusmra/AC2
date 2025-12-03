# Matheus de Almeida Moreira
.data
	x: .word 5      # Base
	y: .word 2      # Expoente (5^2 = 25)
	k: .word 0      # Resultado
.text
main:
	la $s0, x             # Carrega endereco base
	lw $t0, 0($s0)        # $t0 = x 
	lw $t1, 4($s0)        # $t1 = y 
	addi $t2, $zero, 1    # $t2 = k (começa com 1)

loop_principal:
	beq $t1, $zero, sair # y = 0?
	add $t3, $zero, $t2   # $t3 valor atual
	add $t4, $zero, $t0   # $t4 contador da mult
	add $t2, $zero, $zero # k = 0 
	
loop_soma:
	beq $t4, $zero, fim_soma
	add $t2, $t2, $t3     # k = k + valor antigo
	addi $t4, $t4, -1     # decrementa contador da multiplicação
	j loop_soma

fim_soma:
	addi $t1, $t1, -1     # y = y - 1
	j loop_principal

sair:
	sw $t2, 8($s0)        # Gravar k na memoria
