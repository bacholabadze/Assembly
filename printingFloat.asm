.data
	PI: .float, 3.14
.text
	li 	$v0, 	2
	lwc1	$f12, 	PI	# Load Word core processor 1
	syscall