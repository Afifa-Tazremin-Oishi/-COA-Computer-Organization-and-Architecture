.model small
.stack 100h
.data
a db 10,13,'Start Related problem (Solid Box) $'
.code
main proc
    mov ax,@data
    mov ds,ax
    ; Message to the User
    mov ah,9
    lea dx,a
    int 21h
    
    ; NewLine
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; Loop Counter
    mov cx,10
    
    ; Loop Inside
    Label:
    mov dl,'*'
    mov ah,2
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    ; NewLine
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h   
    
    loop Label
    
    ; End of the program
    exit:
    mov ah,4ch
    int 21h
    main endp
end main