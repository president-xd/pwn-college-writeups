.intel_syntax noprefix
.global _start

# Load memory address of rax in RDI Register.
# mov rdi, [rax]
.section .text
_start:     
    mov rdi, [rax]         ; for memory address
    mov rax, 60
    syscall

# as -o main.o main.s
# ld -o main main.o
# /challenge/check main
