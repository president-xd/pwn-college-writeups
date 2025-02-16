.intel_syntax noprefix
.global _start

.section .text
_start:     
    mov rdi, [rdi]
    mov rdi, [rdi]
    mov rdi, [rdi]
    mov rax, 60
    syscall
