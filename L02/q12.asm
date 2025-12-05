# Matheus de Almeida Moreira
.data
    A: .word -1     
.text
main:
    la $t0, A
    lw $s0, 0($t0)      # A = mem[A]
    sra $t1, $s0, 31    # Se A >= 0, $t1 vira 0, Se A < 0, $t1 vira -1 (tudo 1)
    beq $t1, $zero, Fim 
    sub $s0, $zero, $s0 # A = 0 - A (transforma em positivo)
    sw $s0, 0($t0)      # Atualiza o valor na memória
Fim:
