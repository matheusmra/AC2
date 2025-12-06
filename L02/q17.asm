# Matheus de Almeida Moreira
.data
    a: .space 400   

.text
main:
    la $t0, a    # Carrega endereço do array
    ori $s0, $zero, 46   # N = 46 (MAXIMO)
    ori $s1, $zero, 0    # $s1 = i
    ori $t1, $zero, 1    # anterior 
    ori $t2, $zero, 1    # proxima
    ori $t3, $zero, 0    # auxiliar

fibonacci:
    beq $s0, $zero, fim  
    sll $t4, $s1, 2      #  i * 4
    add $t5, $t4, $t0    # Endereço
    sw  $t1, 0($t5)      # Salva o termo 
    add $t3, $t1, $zero  # aux = anterior
    add $t1, $t2, $zero  # anterior = proxima 
    add $t2, $t2, $t3    # proxima = proxima + aux (Novo próximo)
    addi $s0, $s0, -1    # n--
    addi $s1, $s1, 1     # i++
    j fibonacci

fim: