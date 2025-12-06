
# Matheus de Almeida Moreira (Refinado)

.data
    x: .word -2     

.text
main:
    la $t0, x
    lw $s0, 0($t0)      # x = memoria[0]
    add $t2, $zero, $s0 # t2 = x
    mult $t2, $t2       # x * x
    mflo $t2            # t2 = x^2
    mult $t2, $s0       # x^2 * x
    mflo $t2            # t2 = x^3 
    slt $t1, $zero, $s0 # t1 = 1 se (x > 0)
    bne $t1, $zero, maior 

menorOuIgual: 
    addi $t3, $zero, -1 # t3 = -1 
    mult $t2, $s0       
    mflo $t2            # t2 = x^4
    add $t3, $t3, $t2   # t3 = -1 + x^4 
    j fim

maior: 
    addi $t3, $t2, 1    # t3 = x^3 + 1
        
fim:
    add $s1, $zero, $t3 # y = t3
    sw $s1, 4($t0)      # Salva na memória
