# Matheus de Almeida Moreira
.data
	a: .word -1
.text
main:
	la $s0, a # Carrega o endereço
	lw $t0, 0($s0) # Acessa o valor 
	sub $t0, $zero, $t0 # 0 - (a)
	sw $t0, 0($s0) # Salva na memoria