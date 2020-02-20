section .data
    msj db "123"
    lenMsj equ $-msj
    guion db "-"
section .bss
    msj2 resb 4
    global main
section .text
main:
    mov ax,[msj]
    mov [msj2],ax ; msj2 = "12"
    mov ah,[guion]
    mov [msj2+2],ah ; msj2 = "12-"
    mov ah,[msj+2]
    mov [msj2+3],ah ; msj2 = "12-3"
    ; imprimir
    mov rax,4
    mov rbx,1
    mov rcx,msj2
    mov rdx,4
    int 80h
salir:
    mov rax,1
    mov rbx,0
    int 80h
