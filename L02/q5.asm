# Matheus de Almeida Moreira
.text
main:
    # Carrega a metade de cima (1234) nos 16 bits superiores
    lui $s0, 0x1234      # $s0 fica: 0x12340000
    # Adiciona a metade de baixo (5678)
    ori $s0, $s0, 0x5678 # $s0 fica: 0x12345678 (305419896)