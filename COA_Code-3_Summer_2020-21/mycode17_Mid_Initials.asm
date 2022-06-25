.model small
.stack 100h
.data
a db '***********',10,13,'$'
b db '****$'
.code
main proc
    mov ax,@data
    mov ds,ax
    ; Message to User
    mov dl,'?' 
    mov ah,2
    int 21h
   
    ; First Input
    mov ah,1
    int 21h
    mov bl,al 
    ; Second Input
    mov ah,1
    int 21h
    mov bh,al
    ; Third Input
    mov ah,1
    int 21h
    mov cl,al
    ; NewLine
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ; Print a five times
    lea dx,a
    mov ah,9
    int 21h  
    int 21h
    int 21h
    int 21h
    int 21h   
    ; print b
    lea dx,b
    mov ah,9
    int 21h 
    ; Output of the first user input 
    mov ah,2
    mov dl,bl
    int 21h  
    ; Output of the second user input 
    mov ah,2
    mov dl,bh
    int 21h
    ; Output of the third user input 
    mov ah,2
    mov dl,cl
    int 21h   
    ; print b
    lea dx,b
    mov ah,9
    int 21h 
    ; NewLine
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    ; Print a five times
    lea dx,a
    mov ah,9
    int 21h  
    int 21h
    int 21h
    int 21h
    int 21h    
    ; Bip Sound
    mov ah,2
    mov dl,007
    int 21h
    
    ; End of the program
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    