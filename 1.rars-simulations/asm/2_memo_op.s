# values to RAM
.data
byte_val:   .byte  0x12
half_val:   .half  0x3456
word_val:   .word  0x789ABCDE
neg_byte:   .byte  -5

.text
.globl main
main:
    # --- Memory Loads ---
    la a0, byte_val      # Load base address of byte_val                  la : load address (pseudo-instruction)
    lb t0, 0(a0)         # t0 = 0x12 (Load Byte - sign extended)
    
    la a0, neg_byte      # Load base address of neg_byte
    lb t1, 0(a0)         # t1 = -5 (0xFB) -> sign extended (LB)

    la a0, half_val      # Load base address of half_val
    lh t2, 0(a0)         # t2 = 0x3456 (Load Half - sign extended)

    la a0, word_val      # Load base address of word_val
    lw t3, 0(a0)         # t3 = 0x789ABCDE (Load Word)

    la a0, byte_val      # Load base address of byte_val
    lbu t4, 0(a0)        # t4 = 0x00000012 (Load Byte Unsigned - zero extended)
    
    la a0, neg_byte      # Load base address of neg_byte
    lbu t5, 0(a0)        # t5 = 0x000000FB (251) -> zero extended (LBU)

    la a0, half_val      # Load base address of half_val
    lhu s2, 0(a0)        # s2 = 0x00003456 (Load Half Unsigned - zero extended)

    # --- Upper Immediate Addressing ---
    lui s3, 0x12345      # s3 = 0x12345000 (Load Upper Imm)
    auipc s4, 1          # s4 = PC + (1 << 12) (Add Upper Imm to PC)

    # --- Memory Stores (Using Stack) ---
    addi sp, sp, -16     # Allocate 16 bytes on the stack
    sb t0, 0(sp)         # Save byte to stack (Store Byte)
    sh t2, 2(sp)         # Save halfword to stack (Store Half)
    sw t3, 4(sp)         # Save word to stack (Store Word)

    addi sp, sp, 16      # Deallocate stack space
    
    li a7,10
    ecall
