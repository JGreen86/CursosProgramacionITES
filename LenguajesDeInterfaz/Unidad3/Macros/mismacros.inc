%macro imprimir 2
    mov rax,4
    mov rbx,1
    mov rcx,%1
    mov rdx,%2
    int 80h
%endmacro
