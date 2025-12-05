# Matheus de Almeida Moreira
# $s0 = h
# $s1 = k
# $s2 = Endereço base de A (onde o array começa)
# $s3 = i (índice)
# $s4 = j (índice)
.text
main:
sll $t0, $s3, 2      # $t0 = i * 4
add $t0, $t0, $s2    # $t0 = Endereço de A[i]
lw $t1, 0($t0)       # $t1 = Valor de A[i]
add $t2, $s0, $t1    # $t2 = h + A[i]
sll $t3, $s4, 2      # $t3 = j * 4 
add $t3, $t3, $s2    # $t3 = Endereço de A[j] 
sw $t2, 0($t3)       # Guarda o resultado ($t2) no endereço de A[j]