#Matheus de Almeida Moreira
.text
main:
    ori $8, $zero, 0x01    
    sll $8, $8, 31         #  0x80000000 
    sra $8, $8, 31         #  0xFFFFFFFF 
# EOF