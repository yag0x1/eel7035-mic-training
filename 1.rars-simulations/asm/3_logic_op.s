.text
.globl main
main:
    li a0, 10            # Load 10 into a0                      li : load immediate 
    li a1, 10            # Load 10 into a1
    li a2, 20            # Load 20 into a2
    li a3, -10           # Load -10 into a3

    # --- Signed Comparisons and Branches ---
    beq a0, a1, equal_label        # Branch to equal_label if 10 == 10
    nop                            # Not executed                         nop : no operation

equal_label:
    bne a0, a2, not_equal_label    # Branch to not_equal_label if 10 != 20
    nop

not_equal_label:
    blt a0, a2, less_than_label    # Branch to less_than_label if 10 < 20
    nop

less_than_label:
    bge a2, a0, greater_equal_label # Branch to greater_equal_label if 20 >= 10
    nop

greater_equal_label:
    li a4, 0xFFFFFFFF              # -1 in two's complement, but max value (2^32-1) as unsigned
    
    # --- Unsigned Comparisons and Branches ---
    bltu a0, a4, unsigned_less_label # Branch if 10 < 2^32-1 (Unsigned)
    nop

unsigned_less_label:
    bgeu a4, a0, unsign_ge_label   # Branch if 2^32-1 >= 10 (Unsigned)
    nop

unsign_ge_label:
    # --- Set Less Than Instructions ---
    slt t0, a0, a2        # t0 = (10 < 20) ? 1 : 0. t0 becomes 1
    slti t1, a3, 0        # t1 = (-10 < 0) ? 1 : 0. t1 becomes 1
    sltu t2, a0, a4       # t2 = (10 < 2^32-1) ? 1 : 0. t2 becomes 1 (Unsigned)
    sltiu t3, a0, 5       # t3 = (10 < 5) ? 1 : 0. t3 becomes 0 (Unsigned)

    li a7, 10
    ecall
