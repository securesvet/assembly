.globl _start
.text
_start:
	mov $0, %rax
	mov $0, %rdi
	mov $s, %rsi
	mov $ls, %rdx
	syscall

    mov $0, %rax
    mov $s, %rcx
    mov $10, %rbx
    cmpb $10, (%rcx)
    je l
    mov (%rcx), %dl
    mul %rbx
    sub $48, %dl
    add %rdx, %rax
    l:
	mov $60, %rax
	mov $0, %rdi
	syscall

.data
s:
.ascii "Hello world\n"
.zero 10
.byte 48, 10
ls=.-s

