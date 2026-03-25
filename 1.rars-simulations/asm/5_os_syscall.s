.text
.globl main
main:
    # --- Useful application code runs here ---
    li a0, 42            # Load an arbitrary return/status value

    # Transfer control to a debugger environment
    # In a real hardware debugging session, this triggers a breakpoint trap
    ebreak               # (Environment Break)

    # --- Code execution resumes here after debugger step ---

    # To terminate the program in simulators (like Ripes) or make an OS request,
    # we use ecall with a specific syscall number in a7.
    li a7, 10            # Syscall code 10 = 'exit' (varies by OS/Simulator)
    
    # Transfer control back to the Operating System or Simulation Environment
    ecall                # (Environment Call)
