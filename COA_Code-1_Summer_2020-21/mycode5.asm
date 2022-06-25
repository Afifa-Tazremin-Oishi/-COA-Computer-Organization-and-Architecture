.model small
.stack 100h
.data

x db 'Enter First Number  : $'
y db 'Enter Second Number : $'
z db 'Resut (Addition)    : $'   
.code

main proc
    mov ax,@data      ; Initialize data segment into code segment
    mov ds,ax
    
    mov ah,9          ; Show on screen, value of x
    lea dx,x
    int 21h
    
    mov ah,1          ; User Input
    int 21h
    mov bl,al
    
    mov ah,2          ; NewLine 
    mov dl,10
    int 21h
    mov dl,13
    int 21h     
    
    mov ah,9          ; Show on screen, value of y
    lea dx,y
    int 21h  
    
    mov ah,1          ; Input
    int 21h
    mov bh,al
    
    mov ah,2          ; NewLine
    mov dl,10
    int 21h
    mov dl,13
    int 21h
                     ; Show on screen, value of z
    mov ah,9
    lea dx,z
    int 21h   
    
    add bl,bh       ; bl = bl+bh
    sub bl,48 
     
    mov ah,2        ; Output
    mov dl,bl
    int 21h        
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main