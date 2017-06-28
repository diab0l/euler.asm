global main
extern printf

section .text

main:
push rsp
    mov rax, 0

    %macro fn 2
    mov rbx, %2
    %%bar:
        %1 rax, rbx
        add rbx, %2
        cmp rbx, 1000
    jl %%bar
    %endmacro

    fn add, 3
    fn add, 5
    fn sub, 15

    %unmacro fn 2

    mov rdi, fmt
    mov rsi, rax
    mov rax, 0
    call printf

    mov rax, 0
pop rsp
ret

section .data
fmt     db `%lu\n`, 0