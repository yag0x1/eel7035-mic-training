int main() {
    int a = 5;
    int b = 10;
    int c = a + b;

    // To print c in Ripes console
    __asm__ volatile (
        "mv a0, %0 \n\t"  
        "li a7, 1 \n\t"   
        "ecall"           
        :                 
        : "r" (c)         
        : "a0", "a7"      
    );

    // To exit from program
    __asm__ volatile (
        "li a7, 10 \n\t"  // Command 10: Exit 
        "ecall"
    );

    return c;
}
