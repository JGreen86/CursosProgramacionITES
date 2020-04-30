section .data
    msj1 db "Ingenieria en Sistemas Computacionales",10
    lmsj1 equ $-msj1
    msj2 db "ITES LOS CABOS",10
    lmsj2 equ $-msj2
    msj3 db "Semestre Enero-Junio 2020",10
    lmsj3 equ $-msj3

section .bss
    global main
section .text
main:
    mov rax,4
    mov rbx,1
    mov rcx,msj1
    mov rdx,lmsj1
    int 80h

    mov rax,4
    mov rbx,1
    mov rcx,msj2
    mov rdx,lmsj2
    int 80h

    mov rax,4
    mov rbx,1
    mov rcx,msj3
    mov rdx,lmsj3
    int 80h

salir:
    mov rax,1
    mov rbx,0
    int 80h
