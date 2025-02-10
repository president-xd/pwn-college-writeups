.intel_syntax noprefix
.global _start

; Using Previous Code, because it will also build an executable

; Syscall for exiting a program
; 60 for exit syscall
; Program Exit Number is 43 which is in RDI
.section .text
_start:
    mov edi, 43
    mov rax, 60
    syscall


; as -o main.o main.s
; ld -o main main.o
; /challenge/check main
