section .data
    archivo db "prueba2.txt",0
    texto db "Adios mundo!!!"
    longitud equ $-texto
section .bss

    global main
section .text
main:

abrir:
    mov rax,5 ; llamada al sistema sys_open para abrir archivo
    mov rbx,archivo
    mov rcx,66
    mov rdx,438
    int 80h
    mov rdi,rax ; descriptor del archivo en rax lo pasamos a rdi
imprimir:
    mov rax,4 ; llamada al sistema sys_write para escribir en el archivo
    mov rbx,rdi ; descriptor del archivo
    mov rcx,texto
    mov rdx,longitud
    int 80h
cerrar:
    mov rax,6 ; llamada al sistema sys_close para cerrar el archivo
    mov rbx,rdi ; descriptor del archivo
    int 80h
salir:
    mov rax,1
    mov rbx,0
    int 80h
