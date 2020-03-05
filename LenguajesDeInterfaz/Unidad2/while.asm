section .data
    var db "12345678"
    n db "2"
    msj db "Encontrado.",10
    lmsj equ $-msj
section .bss

    global main
section .text
main:
    mov rcx,0 ; contador i = 0
    mov rdi,8 ; longitud de var = 8
while:
    cmp rcx,rdi
    jge salir ; if(rcx >= rdi) => salir
    mov ah,[var+rcx] ; movemos el char en la posicion rcx de var
    cmp ah,[n] ; if(ah == n) => imprime 'encontrado'
    je imprimir
    inc rcx
    jmp while
imprimir:
    mov rax,4
    mov rbx,1
    mov rcx,msj
    mov rdx,lmsj
    int 80h
salir:
    mov rax,1
    mov rbx,0
    int 80h
