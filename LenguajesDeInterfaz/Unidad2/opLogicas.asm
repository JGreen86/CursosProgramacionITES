section .data
    X dd 53
    Y dd 106
section .bss
    resultado resd 1
    global main
section .text
main:
    mov eax,[X]
    xor eax,[Y]
    mov [resultado],eax
    ; imprimir
    mov rax,4
    mov rbx,1
    mov rcx,resultado
    mov rdx,1
    int 80h
salir:
    mov rax,1
    mov rbx,0
    int 80h
