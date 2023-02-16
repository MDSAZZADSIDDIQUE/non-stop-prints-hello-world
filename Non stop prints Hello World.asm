.model small
.stack 100h

.data
msg db "Hello World", "$"

.code
main proc
    mov ax, @data
    mov ds, ax
    jmp print
    
    print:
    lea dx, msg
    mov ah, 09h
    int 21h
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    jmp print
    
    exit:
    mov ah, 04ch
    int 21h
    main endp
end main
