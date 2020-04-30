%macro llamada 4
    mov rax,%1
    mov rbx,%2
    mov rcx,%3
    mov rdx,%4
    int 80h
%endmacro

section .data
    msj1 db "ITES LOS CABOS",10
    lmsj1 equ $-msj1
    msj2 db "Ingenieria en Sistemas Computacionales",10
    lmsj2 equ $-msj2
    msj3 db "Semestre Enero-Junio 2020",10
    lmsj3 equ $-msj3
section .bss
    global main
section .text
main:
    llamada 4,1,msj1,lmsj1
    llamada 4,1,msj2,lmsj2
    llamada 4,1,msj3,lmsj3
salir:
    mov rax,1
    mov rbx,0
    int 80h
