# Matheus de Almeida Moreira


.text
main:
    ori $8, $zero, 0x1234   # 0x00001234
    sll $8, $8, 16          # 0x12340000
    ori $8, $8, 0x5678      # 0x12345678
    srl $9, $8, 24          # 0x12345678 >> 24 = 0x00000012
    srl $10, $8, 16         # Traz para a direita
    andi $10, $10, 0xFF     # Limpa o lixo (o 12)
    srl $11, $8, 8          # Traz para a direita
    andi $11, $11, 0xFF     # Limpa o lixo (o 1234)
    andi $12, $8, 0xFF      #  0x00000078