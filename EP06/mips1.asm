# Matheus de Almeida Moreira - 848813

.text
main:
        addi $s0, $zero, 2      #  A = 2
        addi $s1, $zero, 3      #  B = 3
        addi $s2, $zero, 4      #  C = 4
        addi $s3, $zero, 5      #  D = 5;
        add  $t0, $s0, $s1      #  t0 = A + B
        add  $t1, $s2, $s3      #  t1 = C + D
        sub  $t0, $t0, $t1      #  t0 = t0 - t1
        sub  $t2, $s0, $s1      #  t2 = A - B
        add  $t2, $t2, $t0      #  t2 = t2 + t0
        sub  $s1, $t0, $t2      #  b = t0 - t2

# EOF