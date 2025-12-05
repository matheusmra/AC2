# Matheus de Almeida Moreira
.data
    A: .word 1, 2, 3, 4, 5, 6, 7, 8, 0, 0, 0, 0, 0 # Array com 12 indices

.text

main:
    # 1. Carregar o endereço base usando o Label (muito mais seguro)
    la $t0, A     # $t0 carrega o endereço de memória de ArrayA
    li $s0, 10
    lw $t1, 32($t0)     # $t1 = A[8]
    add $t2, $t1, $s0   # $t2 = 10 + A[8]
    sw $t2, 48($t0)     # A[12] = $t2