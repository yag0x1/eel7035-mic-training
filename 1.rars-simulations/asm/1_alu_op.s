.text
.globl main
main:
    # --- Base Arithmetic and Logic (Register-Register) ---
    li a0, 20            # Load immediate 20 into a0
    li a1, 3             # Load immediate 3 into a1
    add a2, a0, a1       # a2 = a0 + a1 = 23 (ADD)
    sub a3, a0, a1       # a3 = a0 - a1 = 17 (SUB)
    xor a4, a0, a1       # a4 = a0 ^ a1 = 23 (XOR)
    or a5, a0, a1        # a5 = a0 | a1 = 23 (OR)
    and a6, a0, a1       # a6 = a0 & a1 = 0 (AND)
    sll a7, a1, a1       # a7 = a1 << a1 = 3 << 3 = 24 (Shift Left Logical)
    srl t0, a0, a1       # t0 = a0 >> a1 = 20 >> 3 = 2 (Shift Right Logical)
    li t1, -16           # Load immediate -16
    sra t2, t1, a1       # t2 = -16 >> 3 = -2 (Shift Right Arith - sign extension)

    # --- Immediate Operations (Register-Immediate) ---
    addi t3, a0, 5       # t3 = a0 + 5 = 25 (ADD Immediate)
    xori t4, a1, 1       # t4 = a1 ^ 1 = 3 ^ 1 = 2 (XOR Immediate)
    ori t5, zero, 0xFF   # t5 = 0 | 0xFF = 255 (OR Immediate)
    andi t6, t5, 0xF     # t6 = 255 & 15 = 15 (AND Immediate)
    slli s2, a1, 4       # s2 = a1 << 4 = 3 << 4 = 48 (Shift Left Logical Imm)
    srli s3, t5, 4       # s3 = t5 >> 4 = 255 >> 4 = 15 (Shift Right Logical Imm)
    li s4, -1            # Load immediate -1
    srai s5, s4, 1       # s5 = -1 >> 1 = -1 (Shift Right Arith Imm - sign extension)

    # Exit program
    li a7, 10       # Code 10 = Exit
    ecall           # Exits the simulator
