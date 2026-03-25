.text
.globl main

# Small subroutine to double a value
sub_double:
    add a0, a0, a0       # Double the value (a0 = a0 + a0)
    # Return using JALR (ra contains the return address, imm is 0)
    jalr zero, ra, 0     # Indirect jump to the address in ra (Jump And Link Reg)

main:
    # Load arguments and prepare the stack frame
    addi sp, sp, -4      # Allocate space for return address
    sw ra, 0(sp)         # Store return address (ra) on the stack

    li a0, 25            # Pass argument 25 to the function
    # Call the subroutine using JAL (ra gets PC+4)
    jal ra, sub_double   # Direct jump to sub_double (Jump And Link)

    # a0 is now 50 after the subroutine returns

    # Indirect unconditional jump using JALR 
    # (jalr zero, rs1, 0 acts like a pure Jump Register)
    la t0, main_exit     # Load the address of the exit label
    jalr zero, t0, 0     # Indirect jump to main_exit using register t0

main_exit:
    lw ra, 0(sp)         # Restore the return address (ra) from the stack
    addi sp, sp, 4       # Deallocate stack space

    li a7, 10
    ecall                # Return to OS/Caller
