extern printf
section .data
    msj db "Resultado = %d",10,0
section .bss
    global main
section .text
main:
    mov r12,9

    sub rsp,8

    mov rax,3 ; int a = 3
    mov rbx,4 ; int b = 4
    mov rcx,5 ; int c = 5
    ;pasando parametros a 'formula'
    push rax
    push rbx
    push rcx
    call formula

    pop rsi
    call imprimir

    mov rsi,r12
    call imprimir
    jmp salir
formula:
    ; recuperar parametros de la pila
    mov rcx,[rsp+8]
    mov rdx,[rsp+16]
    push r12
    mov r12,[rsp+32]
    ; a = (a*b) + c
    imul r12,rdx ; a = a*b
    add r12,rcx  ; a = a + c
    mov rax,r12
    pop r12
    ; retorno
    mov rdi,[rsp]
    mov [rsp+24],rdi
    add rsp,24
    mov [rsp+8],rax
    ret
imprimir:
    mov rdi,msj
    call printf
    ret
salir:
    mov rax,1
    mov rbx,0
    int 80h
