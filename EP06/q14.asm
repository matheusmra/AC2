# Matheus de Almeida Moreira
.data
	a: .word 18    

.text
main:
    la   $s0, a
    lw   $t0, 0($s0)    # acessa a
    andi $t1, $t0, 1    # Se for par $t1=0. Se ímpar $t1=1
    sw   $t1, 4($s0) # escreve na segunda pos da memoria