# Matheus de Almeida Moreira

.data
    n: .word 151    
.text
main:
    la $t0, n      # Endereço base
    lw $s0, 0($t0)      # x = n
    ori $s1, $zero, 0   # FLAG = 0 
    # x < 50?
    ori $t1, $zero, 50
    slt $t2, $s0, $t1   
    bne $t2, $zero, or  # Se for menor que 50, entra no ou
    # x > 100?
    ori $t1, $zero, 100
    slt $t2, $t1, $s0   
    bne $t2, $zero, or  # Se for maior que 100 entra no ou
    j sucesso

or:
    # x < 150?
    ori $t1, $zero, 150
    slt $t2, $s0, $t1
    bne $t2, $zero, fim          
    # x > 200?
    ori $t1, $zero, 200
    slt $t2, $t1, $s0
    bne $t2, $zero, fim          
sucesso:
    addi $s1, $s1, 1    # FLAG = 1

fim:
    sw $s1, 4($t0)      # Salva na memória
    