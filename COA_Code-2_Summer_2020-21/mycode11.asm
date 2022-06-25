.model small
.stack 100h
.data
a db "Lower Case : $"
b db "Upper Case : $"
.code

main proc
    mov ax,@data     ; Initializing data seg into code seg
    mov ds,ax
    
    mov ah,9         ; String a output
    lea dx,a
    int 21h
    
    mov ah,1        ; Input
    int 21h
    mov bl,al
    
    mov ah,2        ; NewLine
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9         ; String b output
    lea dx,b
    int 21h
                     ; Lower case to Upper Case
    mov ah,2
    sub bl,32   ; bl = bl-32  
    mov dl,bl     
    int 21h          ; Output
    
    exit:            ; Exit
    mov ah,4ch
    int 21h
    main endp
end main