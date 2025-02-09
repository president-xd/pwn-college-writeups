.intel_syntax noprefix
.global _start

# Load memory address of rdi in RDI Register.
# mov rdi, [rdi]
.section .text
_start:     
    mov rdi, [rdi]         # for memory address
    mov rax, 60
    syscall

# as -o main.o main.s
# ld -o main main.o
# /challenge/check main
