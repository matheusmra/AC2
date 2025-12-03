# Matheus de Almeida Moreira

.data
    x1:   .word 15    
    x2:   .word 25    
    x3:   .word 13    
    x4:   .word 17    
    soma: .word -1    

.text
main:
	la $s0 x1 # Ponteiro para o endereço base
	lw $t0 0($s0) # Realiza o carregamento
	lw $t1 4($s0)# Realiza o carregamento
	lw $t2 8($s0)# Realiza o carregamento
	lw $t3 12($s0)# Realiza o carregamento
	
	add $t4, $t0, $t1
	add $t4, $t4, $t2
	add $t4, $t4, $t3
	
	sw $t4 16($s0) # Grava o valor na memoria