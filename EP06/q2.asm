# Matheus de Almeida Moreira - 848813
.text
main:
	addi $s0, $zero, 1  # X = 1
	addi $s1, $zero, 15 
    	add  $t0, $s0, $s0  # t0 = x + x      
    	add  $t0, $t0, $t0  # t0 = 2x + 2x   
    	add  $t0, $t0, $s0  # t0 = 4x + x     
    	add  $t0, $t0, $s1 # t0 = 5x = 5 + 15
#EOF