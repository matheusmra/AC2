# Matheus de Almeida Moreira
.data
    array: .word 14, 13, 12, 11, 10, 9, 8, 20, 19, 18, 17, 16, 15, 7, 6, 5, 4, 3, 2, 1

.text
main:
    la $t0, array          # $t0 = Endereço base do array
    addi $s0, $zero, 20    # $s0 = 20 (Tamanho N)
    add $s1, $s0, $zero    # i = 20

forI: 
    addi $s1, $s1, -1      # i--
    beq $s1, $zero, fim    # Se i == 0, vai para o fim
    add $s2, $zero, $zero  # j = 0

forJ: 
    slt $t1, $s2, $s1      # $t1 = 1 se j < i
    beq $t1, $zero, forI   # Se j chegou no limite, volta pro loop externo
    sll $t2, $s2, 2        # Offset = j * 4
    add $t2, $t2, $t0      # $t2 = Endereço de V[j]
    lw $t3, 0($t2)         # $t3 = Valor de V[j]
    addi $t5, $t2, 4       # $t5 = Endereço de V[j+1]
    lw $t6, 0($t5)         # $t6 = Valor de V[j+1]
    # Comparação
    slt $t7, $t3, $t6      # V[j] < V[j+1]?
    bne $t7, $zero, pular  # Se sim, pula a troca
    # Troca
    sw $t6, 0($t2)
    sw $t3, 0($t5)

pular:
    addi $s2, $s2, 1       # j++
    j forJ                 # Volta para o loop interno

fim:
