section .data
    B db  "W"

section .bss
    C resb 1
    B1 resb 1

    global main
section .text
main:
    mov ah,[B]
    rol ah,5 ; rotar "W" una posición a la izquierda
    mov [C],ah
    ; imprimir C
    mov rax,4
    mov rbx,1
    mov rcx,C
    mov rdx,1
    int 80h
    ; recuperar "W" apliacando rotacion a la derecha
    mov ah,[C]
    ror ah,5 ; rotar ah a la derecha una posicion
    ; ponemos el resultado en B1
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
