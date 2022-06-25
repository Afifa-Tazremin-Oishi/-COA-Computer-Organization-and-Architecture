.model small

.stack 100h

.data 

x1 db "The Sum of $"

x2 db "and$"

x3 db "is$" 

x4 db "(usingADD).On the other hand,if we subtract$" 

x5 db ",the result will be$" 

x6 db "(using SUB)$" 

 

 

.code

main proc

 mov ax,@data 

 mov ds,ax 

 

 mov ah,9 

 lea dx,x1 

 int 21h 

 

 mov ah,1 

 int 21h

 mov bl,al 

 

 mov ah,9 

 lea dx,x2 

 int 21h

 

 mov ah,1 

 int 21h

 mov bh,al

 

 mov ah,9 

 lea dx,x3 

 int 21h

 

 

 add bl,bh

 sub bl,48

 

 mov ah,2 

 mov dl,bl

 int 21h 

 

 mov ah,9 

 lea dx,x4 

 int 21h

 

 

 mov ah,1 

 int 21h

 mov cl,al 

 

 mov ah,9 

 lea dx,x2 

 int 21h

 

 mov ah,1 

 int 21h

 mov ch,al

 

 mov ah,9 

 lea dx,x5 

 int 21h

 

 

 sub cl,bh

 add cl,48

 

 mov ah,2 

 mov dl,cl

 int 21h 

 

 

 mov ah,9 

 lea dx,x6 

 int 21h

 

 exit: 

 mov ah,4ch

 int 21h

 main endp

end main