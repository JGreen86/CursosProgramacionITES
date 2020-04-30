extern printf

section .data
    msj db "%d",10,0
section .bss
    global main
section .text
main:
    mov rax,5
    push rax
    mov rax,8
    push rax
    mov rax,3
    push rax

    mov rbx,[rsp]
    mov r12,[rsp+8]
    mov r13,[rsp+16]

    add rsp,24

    mov rsi,rbx
    call imprimir

    mov rsi,r12
    call imprimir

    mov rsi,r13
    call imprimir

    jmp salir

imprimir:
    mov rdi,msj
    call printf
    ret

salir:
    mov rax,1
    mov rbx,0
    int 80h
