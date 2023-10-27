.text
.globl _start
_start:
    pop %rcx
    
    mov $1, %rax
    mov $1, %rdi
    push %rcx
    syscall

    mov $60, %rax
    xor %rdi, %rdi
    syscall
    
