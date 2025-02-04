.intel_syntax noprefix
.global _start

; Anyways, on to the challenge! In this challenge, we will store a 
; secret value in the rsi register, and your program must exit with that 
; value as the return code.
.section .text
_start:
    mov rdi, rsi
    mov rax, 60
    syscall


; as -o main.o main.s
; ld -o main main.o
; /challenge/check main
