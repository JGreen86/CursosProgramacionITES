section .data
    msj1 db "Mayor",10
    lm1 equ $-msj1
    msj2 db "Menor",10
    lm2 equ $-msj2
    msj3 db "Igual",10
    lm3 equ $-msj3
    n1 dd 15  ; int n1 = 15
    n2 dd 7  ; int n2 = 7
section .bss
    global main
section .text
main:
    mov eax,[n1]
    cmp eax,[n2]
    jl menor ; if(n1 < n2)
    ; else if(n1 > n2)
    cmp eax,[n2]
    jg mayor
    ; else
    jmp igual
    jmp salir
mayor:
    mov rax,4
    mov rbx,1
    mov rcx,msj1
    mov rdx,lm1
    int 80h
    jmp salir
menor:
    mov rax,4
    mov rbx,1
    mov rcx,msj2
    mov rdx,lm2
    int 80h
    jmp salir
igual:
    mov rax,4
    mov rbx,1
    mov rcx,msj3
    mov rdx,lm3
    int 80h

salir:
    mov rax,1
    mov rbx,0
    int 80h
