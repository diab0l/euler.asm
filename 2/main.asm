global main
extern printf

section .text

main:
push rsp
    xor r8, r8
    mov r9, 2
    mov r10, 1
    mov r12, 0x3D0900 ; 4million

    .fibby:
    cmp r9, r12
    jge .end
    test r9, 1
    jnz .odd
    add r8, r9
    .odd:
    mov r11, r10
    mov r10, r9
    add r9, r11
    jmp .fibby
    .end:
    
    mov rdi, fmt
    mov rsi, r8
    mov rax, 0
    call printf

    mov rax, 0
pop rsp
ret

section .data
fmt     db `%lu\n`, 0