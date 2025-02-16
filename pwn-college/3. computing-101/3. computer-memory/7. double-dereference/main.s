.intel_syntax noprefix
.global _start

.section .text
_start:     
    mov mov rdi, [rax]  # for memory address
    mov rdi, [rdi]         # for memory address
    mov rax, 60
    syscall

# as -o main.o main.s
# ld -o main main.o
# /challenge/check main
