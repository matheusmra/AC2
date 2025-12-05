# Matheus de Almeida Moreira
.data
    TEMP: .word 50      # tmp = 50
    FLAG: .word 0       # flag = 0
.text
main:
    la $t0, TEMP        # $t0 aponta para o início da memória de dados
    lw $s0, 0($t0)      # $s0 = $t0
    addi $s1, $zero, 0   
    addi $t1, $zero, 30
    slt $t2, $s0, $t1   # $t2 = 1 se TEMP < 30
    bne $t2, $zero, fim # < 30 = flag 0
    addi $t3, $zero, 50
    slt $t4, $t3, $s0   # $t4 = 1 se 50 < TEMP
    bne $t4, $zero, fim # >50 = flag 0
    addi $s1, $s1, 1    # FLAG = 1

fim:
    sw $s1, 4($t0)      # Escreve na memória
