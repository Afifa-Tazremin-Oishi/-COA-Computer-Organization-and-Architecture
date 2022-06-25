.model small
.stack 100h
.code
main proc  
    ; Initial value for CX
    mov cx,0
    
    Label1:
    mov bx,cx
    mov cx,10  ; Loop for 10 times
    
    ; Output 
    Label2:
    mov ah,2
    mov dl,bl
    int 21h
    ; Increament for bl
    inc bl
    cmp cl,255   ; Condition for 256 value
    je exit
    loop Label2
    ; NewLine
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ; Increament for bl
    inc bl
    mov cx,bx
    loop Label1 ; Continue Loop
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main