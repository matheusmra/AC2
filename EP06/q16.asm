.data
	x: .word 0x186A00
	y: .word 0x13880
	z: .word 0x61A80
	
.text
main:
	la $s0, x
	lw $t0, 0($s0)      # x
	lw $t1, 4($s0)      # y
	lw $t2, 8($s0)      # z
	add $t3, $zero, $zero  # Inicializa quociente

loop_div:
	sub $t0, $t0, $t2   # x = x - z
	addi $t3, $t3, 1    # quociente++
	bne $t0, $zero, loop_div # x = 0 = acaba
	add $t4, $zero, $zero  # Inicializa resultado

loop_mult:
	add $t4, $t4, $t1   # Resultado += y
	addi $t3, $t3, -1   # contador--
	bne $t3, $zero, loop_mult # $t3 = 0 = fim