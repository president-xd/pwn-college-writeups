.intel_syntax noprefix
.global _start

# Syscall for exiting a program
# 60 for exit syscall
.section .text
_start:
    mov rax, 60
    syscall


# as -o main.o main.s
# ld -o main main.o
# /challenge/check main
