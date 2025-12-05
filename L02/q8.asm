# Matheus de Almeida Moreira
# $s0 = h
# $s1 = k
# $s2 = Endereço base de A (onde o array começa)
# $s3 = i (índice)
# $s4 = j (índice)

.text
main:
sll $t0, $s3, 2      # $t0 = i * 4
add $t0, $t0, $s2    # $t0 = Endereço de A + (i*4) -> Endereço de A[i]
lw $t1, 0($t0)       # $t1 = valor de A[i]
add $s0, $s1, $t1    # h ($s0) = k ($s1) + A[i] ($t1)