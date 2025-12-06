# Matheus de Almeida Moreira

.data
    x: .word 2       
.text
main:
    la $t0, x        # Endereço de x
    lw $s0, 0($t0)   # Carrega x em $s0
    andi $t1, $s0, 1     # Se bit 0 for 1 -> Ímpar. Se 0 -> Par.
    mult $s0, $s0        # x * x
    mflo $t2             # $t2 = x^2
    beq $t1, $zero, ehPar # Se (x & 1) == 0, é Par

ehImpar: # x^5 - x^3 + 1
    mult $t2, $s0        # x^2 * x
    mflo $t2             # $t2 = x^3
    sub $t3, $zero, $t2  # $t3 = -x^3 
    mult $t2, $s0        # x^3 * x
    mflo $t2             # $t2 = x^4 (Temporário)
    
    mult $t2, $s0        # x^4 * x
    mflo $t2             # $t2 = x^5

    add $t3, $t3, $t2    # Acumulador = -x^3 + x^5
    addi $t3, $t3, 1     # Acumulador = -x^3 + x^5 + 1
    
    j store              # Pula o bloco par e vai salvar

ehPar: # x^4 + x^3 - 2x^2
    add $t3, $t2, $t2    # $t3 = 2 * x^2 
    sub $t3, $zero, $t3  # $t3 = -2x^2 
    mult $t2, $s0        # x^2 * x
    mflo $t2             # $t2 = x^3
    add $t3, $t3, $t2    # Acumulador += x^3
    mult $t2, $s0        # x^3 * x
    mflo $t2             # $t2 = x^4
    add $t3, $t3, $t2    # Acumulador += x^4

store:
    # Salvar Y na memória 
    sw $t3, 4($t0)       # Salva o resultado
