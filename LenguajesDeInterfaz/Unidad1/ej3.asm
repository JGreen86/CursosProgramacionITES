;;;;Modos de direccionamiento;;;;;
section .data
	msj1 db "1234567",10
	len1 equ $-msj1
	msj2 db "9876543",10
	len2 equ $-msj2
section .bss
	global main
section .text
main:
	; msj2 = msj1
	mov rax,[msj1 + 5]
	mov [msj2],rax
	;Imprimir msj1
	mov rax,4
	mov rbx,1
	mov rcx,msj1
	mov rdx,len1
	int 80h
	;Imprimir msj2
	mov rax,4
	mov rbx,1
	mov rcx,msj2
	mov rdx,len2
	int 80h
	; Salir del programa
	mov rax,1
	mov rbx,0
	int 80h
