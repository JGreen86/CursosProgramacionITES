extern printf ; hacemos el import de printf a nuestro código

section .data
iteraciones equ 10 ; cantidad de iteraciones
mensaje db "La suma es: %d",10,0 ; el primer parámetro de printf("La suma es: %d", suma")
section .bss
section .text
    global main
main:
    mov rdi,0 ; rdi será i
    mov rbx,0 ; rbx será suma
for:
    cmp rdi,iteraciones
    je print
    add rbx,rdi
    inc rdi
    jmp for
print:
    push rbp ; esto se puede omitir si se llama a print con la instrucción call
    mov rdi,mensaje ; el primer parámetro debe ir en rdi
    mov rsi,rbx
    ; el segundo parámetro en rsi
    ; si hubiera más parámetros se han de especificar
    ; en los registros: rdx, rcx, r8 y r9, respectivamente.
    ; De ocupar más parámetros, utilizar la pila.
    call printf ; llamamos a la función de C printf
    pop rbp ; retiramos rbp de la pila.
salir:
    mov rax,1
    mov rbx,0
    int 80h
