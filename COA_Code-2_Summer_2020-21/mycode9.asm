.model small
.stack 100h
.data
result db ?
.code
main proc          
    ;Input 3 Numbers
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al   
    
    ;(Processing)Addition
    
    add bl,bh   ;bl=bl+bh
    sub bl,48 
    
    mov ch,bl
    add ch,cl
    sub ch,48
     
    ; Output
    mov result,ch
    mov ah,2
    mov dl,result
    int 21h
     
    ;Exit
    exit:
    mov ah,4ch
    int 21h
    main endp
end main