# Matheus de Almeida Moreira

.data
    x: .word 2     
.text
main:
    la $s0, x # Acessa endereço
    lw $s1, 0($s0)      # $s1 = x
    slt $t0, $zero, $s1 # Verifica se x é positivo
    bne $t0, $zero, pos
    mul $t0, $s1, $s1   # $t0 = x^2
    mul $t0, $t0, $t0   # $t0 = x^4 (x^2 * x^2)
    addi $s2, $t0, -1   # $s2 = x^4 - 1
    j sair  
pos:
    mul $t0, $s1, $s1   # $t0 = x^2
    mul $t0, $t0, $s1   # $t0 = x^3
    addi $s2, $t0, 1    # $s2 = x^3 + 1
sair:
    sw $s2, 4($s0)      # Salva y na segunda posição