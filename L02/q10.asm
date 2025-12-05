# Matheus de Almeida Moreira
# $s0 = h
# $s1 = k
# $s2 = Endereço base de A (onde o array começa)
# $s3 = i (índice)
# $s4 = j (índice)
.text
main:
sll $t0, $s3, 2      #  tmp = i * 4
add $t0, $t0, $s2    # $t0 = Endereço de A[i]
lw $t1, 0($t0)       # $t1 =  A[i]
lw $t2, 4($t0)       # $t2 =  A[i+1] 
move $s0, $t1        # h = A[i] 
sw $t2, 0($t0)       # A[i] = A[i+1] ($t2)
sw $s0, 4($t0)       # A[i+1] = h 