;;;;Modos de direccionamiento;;;;;
section .data
	msj1 db "1234",10
	len1 equ $-msj1
	msj2 db "5678",10
	len2 equ $-msj2
section .bss
	msj3 resb 9
	global main
section .text
main:
	; mover "1234"
	mov eax,[msj1]
	mov [msj3],eax
	; mover "5678"
	mov eax,[msj2]
	mov [msj3 + 4],eax
	; agregar salto de linea
	mov ah,[msj2 + 4]
	mov [msj3 + 8],ah
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
	; Imprimir msj3
	mov rax,4
	mov rbx,1
	mov rcx,msj3
	mov rdx,9
	int 80h
	; Salir del programa
	mov rax,1
	mov rbx,0
	int 80h
