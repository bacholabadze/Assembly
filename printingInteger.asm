.data
	age: .word 21			### 4 bytes (32bit),basic unit
.text
	li $v0, 1			### When you specify 1 as an argmunet, we get ready to print int
	lw $a0, age			### Load Word, because integer is 'WORD'
	syscall