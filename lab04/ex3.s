.data
n: .word 2
exp: .word 10

.text
main:
    la a0 n
    lw a0 0(a0)
    la a1 exp
    lw a1 0(a1)
    jal ra ex3
    mv a1 a0
    li a0 1
    ecall
    li a0 17
    li a1 0
    ecall

ex3:
    addi sp sp -4
    sw ra 0(sp)
    beq a1 x0 ex3_zero_case
    mv t0 a0
    addi a1 a1 -1
    addi sp sp -4
    sw t0 0(sp)
    jal ra ex3
    lw t0 0(sp)
    addi sp sp 4
    mul a0 a0 t0
    j ex3_end

ex3_zero_case:
    li a0 1

ex3_end:
    lw ra 0(sp)
    addi sp sp 4
    jr ra
