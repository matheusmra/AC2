# Matheus de Almeida Moreira

.data
    x: .word 5      
.text
main:
    la $s0, x          # Carrega o endereço 
    lw $s1, 0($s0)     # $s1 = x
    li $t9, 2          # Carrega o divisor 2
    div $s1, $t9       # Divide x por 2
    mfhi $t0           # Move o resto da divisão (HI) para $t0
    beq $t0, $zero, par 
impar:
    mul $t2, $s1, $s1  # $t2 = x^2
    mul $t3, $t2, $s1  # $t3 = x^3
    mul $t4, $t2, $t2  # $t4 = x^4
    mul $t5, $t4, $s1  # $t5 = x^5
    sub $s2, $t5, $t3  # $s2 = x^5 - x^3
    addi $s2, $s2, 1   # $s2 = (x^5 - x^3) + 1
    j sair 
par:
    sra $t2, $s1, 2    # Divisão por 4 usando shift aritmético
    mul $t3, $s1, $s1  # $t3 = x^2
    mul $t4, $t3, $s1  # $t4 = x^3
    sll $t5, $t3, 1    # Multiplica x^2 por 2 (shift left 1)
    add $s2, $t2, $t4  
    sub $s2, $s2, $t5  
sair:
    sw $s2, 4($s0)    
