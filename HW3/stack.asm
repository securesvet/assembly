.globl _start
_start:
    pop %rcx
lp:
    pop %rdi
    mov %rdi, %rsi
cl:
    inc %rdi
    cmpb $0, (%rdi)
    jne cl
    movb $10, (%rdi) 
    inc %rdi
    sub %rsi, %rdi # длина строки находится в rdi
    mov %rdi, %rdx
    mov $1, %rax   # заполняем параметры для syscall'a     
    mov $1, %rdi
    push %rcx      # сохраняем %rcx
    syscall
    pop %rcx
    loop lp     # уменьшает rcx, если не ноль, переходит 

    mov $60, %rax
    xor %rdi, %rdi
    syscall
