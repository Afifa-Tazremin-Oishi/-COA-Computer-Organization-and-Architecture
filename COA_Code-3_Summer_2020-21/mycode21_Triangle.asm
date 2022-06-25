.model small
.stack 100h
.code
main proc
   mov cx,4
   
   Label1:
   mov bx,cx
   
   Label2:
   mov ah,2
   mov dl,'*'
   int 21h
   loop Label2
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   mov cx,bx
   loop Label1
    
    exit:
    mov ah,4ch
    int 21h
    main endp 
end main