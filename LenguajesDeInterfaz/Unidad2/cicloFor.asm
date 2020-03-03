section .data
    var db "Hola"
section .bss
    aux resb 2
    global main
section .text
main:
    mov ah,10
    mov [aux+1],ah
    mov rcx,0
    mov rdi,4
for:
    cmp rcx,rdi
    jge salir
imprimir:
    push rcx
    mov ah,[var+rcx]
    mov [aux],ah
    mov rax,4
    mov rbx,1
    mov rcx,aux
    mov rdx,2
    int 80h
    pop rcx
    inc rcx
    jmp for
salir:
    mov rax,1
    mov rbx,0
    int 80h
