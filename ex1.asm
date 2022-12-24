global _start
_start:
    mov eax, 1  ; moving integer 1 into a general purpose register named 'eax'
    mov ebx, 42 ; move integer 42 to 'ebx' register
    

    ; [!] value 1 is system exit call, singal end of the program
    ; [!] value ebx, in this case 42 but it could be any integer

    ; [+] TO RUN PROGRAM TYPE THE COMMAND IN TERMINAL
    ; $ nasm -f elf32 ex1.asm -o ex1.o
    ; elf32 in -f flag builds a 32bit elf object file (executable and linking format);
    ; [+] Linker LD command to build an executable from the object file
    ; $ ld -m elf_i386 ex1.o -o ex1
    ; the result file will be 'ex1', executable program ;
    ; [+] To run the executable file type:
    ; $ ./ex1;
    ; [+] To check exit status type:
    ; $ echo $?
    ; program if returns 42, it means it was successful execute

    sub ebx, 12 ; subtraction operation from ebx value
    ; [!] subtraction is done in place  so it alters the value 'ebx'
    ; [!] NOW EXIT STATUS IS 30;


    ; performs an interrupt, the proccessor will transfer control to an interrupt
    ; handler,specified by the following value.
    ; we are using hex value 80 which is the interrupt handler for the system calls
    ; determined by the EAX register
    int 0x80 

                ; OPERATION ON LEFT (three or four letters), followed by OPERANDS seperated by commas 
    
    mov ebx, 123    ; ebx = 123
    mov eax, ebx    ; eax = ebx
    add ebx, ecx    ; ebx += ecx
    sub ebx, edx    ; ebx -= edx
    mul ebx         ; [!] eax *= ebx
    div edx         ; [!] eax /= edx

    ; eax is the 32-bit, "int" size register. It was added in 1985 during the transition to 32-bit processors with the 80386 CPU. 
    ; I'm in the habit of using this register size, since they also work in 32 bit mode, although I'm trying to use the longer rax registers for everything. 
    ; ax is the 16-bit, "short" size register.