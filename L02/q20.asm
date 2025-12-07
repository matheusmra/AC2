# Matheus de ALmeida Moreira
.data 
    array: .word 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
    array1: .word 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
    array2: .word 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
    array3: .word 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
    array4: .word 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

.text
main:
    la   $t0, array           # Carrega endereço base (1 ALU)
    li   $t1, 100             # Contador = 100 (1 ALU)
    li   $s0, 0               # Soma = 0 (1 ALU)

loop:
    lw   $t2, 0($t0)          # Carrega valor da memória (1 MEM)
    add  $s0, $s0, $t2        # Acumula soma (1 ALU)
    addi $t0, $t0, 4          # Avança ponteiro 4 bytes (1 ALU)
    addi $t1, $t1, -1         # Decrementa contador (1 ALU)
    bne  $t1, $zero, loop     # Desvio condicional (1 Branch)


    sw   $s0, 0($t0)          # Guarda a soma na memória (1 MEM)