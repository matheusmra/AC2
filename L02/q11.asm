# Matheus de Almeida Moreira
# $s0 = h
# $s1 = k
# $s2 = Endereço base de A (onde o array começa)
# $s3 = i (índice)
# $s4 = j (índice)

.text
main:
addi $s4, $zero, 0        # j = 0 
addi $s3, $zero, 10       # i = 10 
Loop:                
    addi $s4, $s4, 1 # j = j + 1
    bne $s4, $s3, Loop # J != I = continuar
