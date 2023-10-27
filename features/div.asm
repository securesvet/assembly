.globl _start

_start:
    mov $20, %rax
    mov $10, %rbx
    div %rbx
    
    xor (%rax), %rax
    mov $1, %rax
    mov $1, %rdi
    mov %rbx, %rdi
    syscall

    mov $60, %rax
    mov $0, %rsi
    syscall
