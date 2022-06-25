.model small
.stack 100h
.data
a db 'Input a hex digit : $'
b db 10,13,'In Decimal : $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    ; Message to User
    mov ah,9
    lea dx,a
    int 21h
    
    ; User Input
    mov ah,1
    int 21h
    mov bl,al
    sub bl,17d  ; in C -> 67-17 = 50 = 2
    
    ; Message to User
    mov ah,9
    lea dx,b
    int 21h
    
    ; Output in Decimal
    
    mov dl,49d  ; Print 1 
    mov ah,2
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    ; End of the program 
    exit:
    mov ah,4ch
    int 21h
    main endp
end main