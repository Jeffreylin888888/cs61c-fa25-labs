.data
n: .word 2
exp: .word 10

.text
main:
    la a0 n
    lw a0 0(a0)
    la a1 exp
    lw a1 0(a1)
    jal ra ex2
    mv a1 a0
    li a0 1
    ecall
    li a0 17
    li a1 0
    ecall

ex2:
    addi sp sp -8
    sw ra 4(sp)
    sw s0 0(sp)
    beq a1 x0 ex2_zero_case
    mv s0 a0
    addi a1 a1 -1
    jal ra ex2
    mul a0 a0 s0
    j ex2_end
ex2_zero_case:
    li a0 1
ex2_end:
    lw s0 0(sp)
    lw ra 4(sp)
    addi sp sp 8
    jr ra
