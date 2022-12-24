global _start

section .data   ; inline data into the program and we can reference in the code by name
    msg db "Hello, world!", 0x0a    ; creating string of bytes named msg, followed by 0a byte
    ;   [!] 0a is hex code for 10 and it's the code for the newline character
    len equ $ - msg     ; determing the length of the string by subtracting the location of the start of the string from the location after the string.
    ;   [!] we could inline the length as an integer which is 14 in this case, but doing it this way allows you to change the string without counting and updating the length manually

section .text
_start:     ; CREATE THE START LABEL FOR THE PROGRAM ENTRY POINT 
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, msg    ; bytes to write, ECX holds the string pointer 
    mov edx, len    ; number of bytes to write
    int 0x80        ; perform system call

    ;   Finally perform another system call to exit the program, this time with exit status 0 (traditionally means that the program ran successfully)
    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status is 0
    int 0x80