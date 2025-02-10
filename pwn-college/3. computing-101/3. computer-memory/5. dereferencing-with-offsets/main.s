.intel_syntax noprefix
.global _start

# Load memory address of rdi in RDI Register.
# This time, the secret value will have an offset of 8 bytes from where rdi points
# Go dereference rdi with offset 8 and get the flag!
# mov rdi, [rdi + 8]
.section .text
_start:     
    mov rdi, [rdi + 8]         # for memory address
    mov rax, 60
    syscall

# as -o main.o main.s
# ld -o main main.o
# /challenge/check main
