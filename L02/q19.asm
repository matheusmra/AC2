# Matheus de Almeida Moreira

.data
    A: .word 23
    B: .word 98
    C: .word 17
.text
main:
    la $t0, A
    lw $t1, 0($t0)   # $t1 = Valor A
    lw $t2, 4($t0)   # $t2 = Valor B 
    lw $t3, 8($t0)   # $t3 = Valor C 
    slt $t4, $t2, $t1      # t2 < t1?
    beq $t4, $zero, p2     
    # Swap t1, t2
    add $t9, $t1, $zero
    add $t1, $t2, $zero
    add $t2, $t9, $zero

p2: 
    slt $t4, $t3, $t2      # t3 < t2?
    beq $t4, $zero, p3     
    # Swap t2, t3
    add $t9, $t2, $zero
    add $t2, $t3, $zero
    add $t3, $t9, $zero

p3: 
    slt $t4, $t2, $t1      # t2 < t1?
    beq $t4, $zero, fim    
    # Swap t1, t2
    add $t9, $t1, $zero
    add $t1, $t2, $zero
    add $t2, $t9, $zero

fim:
    sw $t2, 12($t0)
