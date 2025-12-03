# Matheus de Almeida Moreira
.data
	a: .word -5
.text
main:
	la $s0, a           # Carrega o endereço
	lw $t0, 0($s0)      # Acessa o valor
	slt $t1, $t0, $zero # $t1 = 1 se $t0 < 0 (negativo)
	beq $t1, $zero, fim # Se não é negativo, pula para fim
	sub $t0, $zero, $t0 # 0 - (a) = módulo
	sw $t0, 0($s0)      # Salva na memoria
fim: