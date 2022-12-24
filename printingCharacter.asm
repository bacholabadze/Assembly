.data
	myCharacter: .byte 'm'			### Tell the Data Type(.word, .ascii, .text, .float...) Going to place in Random Access Memory
.text
 	li $v0, 4                               ### Load Immediate, telling system to get ready to print something
	la $a0, myCharacter			### Load Address and put the value in the Register
	syscall 