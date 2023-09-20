.data
.globl greet
greet:
.string "Hello world!\n"

.text
.global main
_start:
    mov $1, %rax
    mov $1, %rdi
    mov $greet, %rsi
    mov $3, %rax	
    syscall
    mov $13, %rdx
    syscall
    mov $60, %rax
    syscall
