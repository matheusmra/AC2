.data
    n1: .word 2   
    n2: .word 5     

.text
main:
    la $t9, n1      # Carrega o endereço base de n1 
    lw $s0, 0($t9)  # n1
    lw $s1, 4($t9)  # n2
    li $t0, 0           # Inicializa contador n1
    move $t8, $s0       # Copia valor para $t8 para não destruir o original
    
loop_bits_n1:
    beq $t8, $zero, fim_bits_n1 # Se valor for 0 = fim
    srl $t8, $t8, 1     # Desloca 1 bit para a direita
    addi $t0, $t0, 1    # Incrementa contador
    j loop_bits_n1
fim_bits_n1:
    li $t1, 0           # Inicializa contador n2
    move $t8, $s1       # Copia valor para $t8
loop_bits_n2:
    beq $t8, $zero, fim_bits_n2
    srl $t8, $t8, 1     # Desloca 1 bit para a direita
    addi $t1, $t1, 1    # Incrementa contador
    j loop_bits_n2
fim_bits_n2:
    mult $s0, $s1       
    mflo $s2            # Move a parte baixa (Lo) para $s2
    mfhi $s3            # Move a parte alta (Hi) para $s3 (provisoriamente)  
    add $t2, $t0, $t1   # Soma a quantidade de bits ($t0 + $t1)
    li $t3, 32          # Carrega imediato 32 para comparação
    bge $t2, $t3, sair  # Se (soma_bits >= 32), mantemos o HI. Pula para o fim.
    li $s3, 0  
sair:         
