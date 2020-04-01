section .data
    archivo db "prueba1.txt",0
section .bss
    texto resb 13

    global main
section .text
main:

abrir:
    mov rax,5 ; llamada al sistema sys_open para abrir archivo
    mov rbx,archivo
    mov rcx,2
    int 80h
    mov rdi,rax ; descriptor del archivo en rax lo pasamos a rdi
leer:
    mov rax,3 ; llamada al sistema sys_read para leer del archivo
    mov rbx,rdi ; descriptor del archivo
    mov rcx,texto
    mov rdx,13
    int 80h
imprimir:
    mov rax,4 ; imprimir texto
    mov rbx,1
    mov rcx,texto
    mov rdx,13
    int 80h
cerrar:
    mov rax,6 ; llamada al sistema sys_close para cerrar el archivo
    mov rbx,rdi ; descriptor del archivo
    int 80h
salir:
    mov rax,1
    mov rbx,0
    int 80h
