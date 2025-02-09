.intel_syntax noprefix
.global _start

; Load 123400, in RDI Register.
; You must retrieve this secret number and use it as the exit 
; code for your program. To do this, you must read it into rdi, 
; whose value, if you recall, is the first parameter 
; to exit and is used as the exit code. Good luck!

.section .text
_start:     
    mov rdi, [123400]         ; for memory address
    mov rax, 60
    syscall

; as -o main.o main.s
; ld -o main main.o
; /challenge/check main
