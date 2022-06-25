.model small
.stack 100h
.data
a db 'Loop Topic : $'
.code
main proc
    mov ax,@data           ; Initialization data segment into code segment
    mov ds,ax
    
    mov ah,9               ; Display string a on the screen using lea
    lea dx,a
    int 21h
    
    mov ah,2              ; NewLine
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,26             ; Loop Counter will count 26th times
    mov ah,2
    mov dl,'A'            ; Loop will start from 'A'
    
    level1:               ;Level for continuing the loop
    int 21h               ;To execute & Show on the screen 
    inc dl                ; Increament dl = dl+1
    loop level1           ; loop continue
    
    exit:                 ; exit from dos
    mov ah,4ch
    int 21h
    main endp
end main