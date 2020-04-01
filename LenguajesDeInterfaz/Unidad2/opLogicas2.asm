section .data
    B db  "W"
    A db "e" ; llave

section .bss
    C resb 1
    B1 resb 1

    global main
section .text
main:
    mov ah,[B]
    xor ah,[A] ; ah = "W" xor "e"
    mov [C],ah
    ; imprimir C
    mov rax,4
    mov rbx,1
    mov rcx,C
    mov rdx,1
    int 80h
    ; recuperar B en B1
    mov ah,[C]
    xor ah,[A] ; ah = "2" xor "e"
    mov [B1],ah
    ; imprimir B1
    mov rax,4
    mov rbx,1
    mov rcx,B1
    mov rdx,1
    int 80h
salir:
    mov rax,1
    mov rbx,0
    int 80h
