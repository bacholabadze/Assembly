global _start

section .text
_start:
    mov ecx, 99     ; set ecx to 99
    mov ebx, 42     ; exit status is 42
    mov eax, 1      ; sys_exit system call

    cmp ecx, 100    ; [!] Compare ecx to 100, has not any actual effect, except it sets flags in the background based on this comparison
                    ; we can check on afterwards what the comparison results are (less,greater or equal)

    jmp skip        ; jump to "skip" label, the instruction pointer is moved to the location of the 'skip' label
    ;jl skip        ; jump if previous comparison had a less than result, otherwise it will move down to the next line and keep executing 
    ;jg skip        ; jump if GREATER
    ;je skip        ; jump if EQUAL
    ;jne skip       ; jump if NOT EQUAL
    ;jge skip       ; jump if GREATER OR EQUAL
    ;jle skip       ; jump if LESS OR EQUAL


    mov ebx, 13     ; exit status 13, [!] IF THE JUMP DOES WORK THEN THIS MOVE INSTRUCTION WILL BE EXECUTED AND EBX WILL REMAIN AS 42 INSTEAD OF BEING CHANGED TO 13

skip:       ; Define the skip label
    int 0x80    ; Perform the interrupts to exit the program 
