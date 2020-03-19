extern scanf
extern printf

section .data
    formato db "%d"
    mensaje db "Ingresaste el numero: %d",10,0
section .bss
    numero resd 1

    global main
section .text
main:
    call leer
    call imprimir
    jmp salir
leer:
    mov rdi,formato
    mov rsi,numero
    call scanf
    ret
imprimir:
    mov rdi,mensaje
    mov rsi,[numero]
    call printf
    ret
salir:
    mov rax,1
    mov rbx,0
    int 80h
