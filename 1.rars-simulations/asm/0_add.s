.text
.globl main

main:
    # Prologue: allocating 16 bytes on the stack
    addi sp, sp, -16

    # int a = 5;
    li t0, 5
    sw t0, 12(sp)   # Saves 5 to memory

    # int b = 10;
    li t1, 10
    sw t1, 8(sp)    # Saves 10 to memory

    # int c = a + b;
    lw t2, 12(sp)   # Reads 5 from memory into t2
    lw t3, 8(sp)    # Reads 10 from memory into t3
    add t4, t2, t3  # t4 = 5 + 10
    sw t4, 4(sp)    # Saves the result (15) to memory

    # Epilogue: cleaning up the stack
    addi sp, sp, 16

    # To print the result
    add a0, x0, t4  # Moves the sum (t4) to a0 
    li a7, 1        # Code 1 = Print Integer 
    ecall         
    
    li a7, 10       # Code 10 = Exit
    ecall           # Exits the simulator
