section .data
    msj1 db "Mayor igual",10
    lm1 equ $-msj1
    msj2 db "Menor",10
    lm2 equ $-msj2
    n1 dd 5  ; int n1 = 5
    n2 dd 7  ; int n2 = 7
section .bss
    global main
section .text
main:
    mov eax,[n1]
    cmp eax,[n2]
    jge cierto ; if(n1 >= n2)
    ; else
    mov rax,4
    mov rbx,1
    mov rcx,msj2
    mov rdx,lm2
    int 80h
    jmp salir
cierto:
    mov rax,4
    mov rbx,1
    mov rcx,msj1
    mov rdx,lm1
    int 80h

salir:
    mov rax,1
    mov rbx,0
    int 80h
