.intel_syntax noprefix
.global _start

# Load memory address of rdi in RDI Register.
# I'll store a secret value at a secret address, 
# then store that secret address at the address 567800.
# Go dereference rdi with rdi and get the flag!
# mov rdi, [567800]
# mov rdi, [rdi]
.section .text
_start:     
    mov mov rdi, [567800]  # for memory address
    mov rdi, [rdi]         # for memory address
    mov rax, 60
    syscall

# as -o main.o main.s
# ld -o main main.o
# /challenge/check main
