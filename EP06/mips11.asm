# Matheus de Almeida Moreira

.data
x: .word 100000
z: .word 200000
y: .word 0 # esse valor deverá ser sobrescrito após a execução do programa

.text
main:
	la $s0, x
	lw $s1, 0($s0) #Valor de x
	lw $s2, 4($s0) # Valor de z
	addi $t0, $zero, 9375
	sll $t1, $t0, 5 
	sub $t2, $s1, $s2 #y = x - z
	add $t2, $t2, $t1 # y = y + 300000
	
	sw $t2, 8($s0)