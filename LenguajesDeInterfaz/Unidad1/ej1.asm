section .data
	msj db "Hola mundo",10
section .bss
	global main
section .text
main:
	mov rax,4 ; sys_write (imprimir en pantalla)
	mov rbx,1
	mov rcx,msj
	mov rdx,11
	int 80h

	mov rax,1 ; sys_exit (salir del programa sin errores)
	mov rbx,0
	int 80h
