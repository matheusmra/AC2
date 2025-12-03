.data
x: .word 5
z: .word 7
y: .word 0

.text
main:
	la $s0, x
	lw $t0, 0($s0)      # x
	lw $t1, 4($s0)      # z
	sll $t2, $t0, 7     # $t2 = 128 * x
	sub $t2, $t2, $t0   # $t2 = 127x
	sll $t3, $t1, 6     # $t3 = 64z
	add $t3, $t3, $t1   # $t3 = 65z
	sub $t4, $t2, $t3   # $t4 = 127x - 65z
	addi $t4, $t4, 1    # $t4 = 127x - 65z + 1
	
	sw $t4, 8($s0)