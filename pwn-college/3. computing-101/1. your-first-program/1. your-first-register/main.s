.intel_syntax noprefix
.global _start

# Moving 60 in RAX Register
.section .text
_start:
    mov rax, 60


# as -o main.o main.s
# ld -o main main.o
# /challenge/check main
