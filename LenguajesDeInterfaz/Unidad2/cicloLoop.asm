section .data
    msj db "Hola",10
section .bss
    global main
section .text
main:
    mov rcx,5
ciclo:
    mov rdi,rcx ; guardando rcx en rdi
    mov rax,4
    mov rbx,1
    mov rcx,msj
    mov rdx,5
    int 80h
    mov rcx,rdi ; restaurando rcx
    LOOP ciclo

salir:
    mov rax,1
    mov rbx,0
    int 80h
