### Every MIPS program has 2 sections, data section and Text section
.data                                       ### Data has all the data of the program, like Variables
    myMessage: .asciiz "Hello world\n"      ### Tell the Data Type(.word, .ascii, .text, .float...) Going to place in Random Access Memory


.text                                       ### All the instructions for the program
    li $v0, 4                               ### Load Immediate, telling system to get ready to print something
    la $a0, myMessage                       ### Load Address and put the value in the Register
    syscall                                 ### Do it now
    