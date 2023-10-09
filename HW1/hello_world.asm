.data
    greet:
        .string "Hello, "
    name:
        .space 24
.text
    .global _start

_start:
    mov $0, %rax
    mov $0, %rdi
    lea name, %rsi
    mov $24, %rdx	
    syscall

    mov $1, %rax
    mov $1, %rdi
    lea greet, %rsi
    mov $7, %rdx
    syscall

    mov $1, %rax
    mov $1, %rdi
    lea name, %rsi
    mov $24, %rdx
    syscall
    
    mov $60, %rax
    mov $0, %rsi
    syscall
