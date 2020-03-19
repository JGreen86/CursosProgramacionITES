extern printf

section .data
    x dd 255
    y dd 5
    msj db "R = %d",10,0
section .bss

section .text
    global main
main:
    mov rax,[x]
    and rax,[y]
    call imprimir
    mov rax,[x]
    or rax,[y]
    call imprimir
    mov rax,[x]
    neg rax
    call imprimir
    mov rax,[x]
    xor rax,[y]
    call imprimir
    jmp salir
imprimir:
    mov rdi,msj
    mov rsi,rax
    call printf
    ret
salir:
    mov rax,1
    mov rbx,0
    int 80h
