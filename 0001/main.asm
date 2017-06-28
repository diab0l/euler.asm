global main
extern printf

section .text

main:
push rsp
    mov rax, 0
    mov rbx, 3
    .add3:
        add rax, rbx
        add rbx, 3
        cmp rbx, 1000
    jl .add3
    
    mov rbx, 5
    .add5:
        add rax, rbx
        add rbx, 5
        cmp rbx, 1000
    jl .add5

    mov rbx, 15
    .sub15:
        sub rax, rbx
        add rbx, 15
        cmp rbx, 1000
    jl .sub15

    mov rdi, fmt
    mov rsi, rax
    mov rax, 0
    call printf

    mov rax, 0
pop rsp
ret

section .data
fmt     db `%lu\n`, 0
