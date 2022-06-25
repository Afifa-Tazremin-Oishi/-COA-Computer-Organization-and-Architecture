.model small
.stack 100h
.data
result1 db ?    
result2 db ?
.code
main proc     
    mov ax,@data
    mov ds,ax
         
    ;Input 4 Numbers
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al  
    
    mov ah,1
    int 21h
    mov ch,al 
    
    ;(Processing)Addition
    
    add bl,bh   ;bl=bl+bh
    sub bl,48
    mov result1,bl 
    
    add result1,cl
    sub result1,48
    mov bl,result1    ; bl = bl+bh+cl
    
    add bl,ch
    sub bl,48
    mov result2, bl
     
    ; Output
    mov ah,2
    mov dl,result2
    int 21h
     
    ;Exit
    exit:
    mov ah,4ch
    int 21h
    main endp
end main