extern printf

section .text

global main
main:
sub rsp, 8
    xor r8, r8

    mov rdi, fmt
    mov rsi, r8
    mov rax, 0
    call printf

    mov rax, 0
add rsp, 8
ret

section .data
fmt     db `%lu\n`, 0