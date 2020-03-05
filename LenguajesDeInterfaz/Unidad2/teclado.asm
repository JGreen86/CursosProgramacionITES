section .data
    msj db "Ingresa tu nombre:",10
    lmsj equ $-msj
    msj2 db "Tu nombre es:",10
    lmsj2 equ $-msj2
section .bss
    texto resb 40

    global main
section .text
main:
    mov rax,4
    mov rbx,1
    mov rcx,msj
    mov rdx,lmsj
    int 80h
    ; leer del teclado
    mov rax,3 ; sys_read
    mov rbx,2
    mov rcx,texto
    mov rdx,40
    int 80h
    ; imprimir msj2
    mov rax,4
    mov rbx,1
    mov rcx,msj2
    mov rdx,lmsj2
    int 80h
    ; imprimir variable texto
    mov rax,4
    mov rbx,1
    mov rcx,texto
    mov rdx,40
    int 80h
salir:
    mov rax,1
    mov rbx,0
    int 80h
