.model small

.data

m1 db 'Type a Binary Digit ,up to 16-bit: ','$'

m2 db 10,13,'in hexa it is :','$'

.code

main proc  

    

    

mov ax,@data ;initialize ds

mov ds,ax

mov ah,9 ;prompt user

lea dx,m1

int 21h

 

mov bx,0     ;prepare for read binary

mov ah,1

mov cx,16

loop1: 

 

int 21h

cmp al,0dh   ;finish enter

je result

and al,01h  ;convert to numerical 0,1

shl bx,1    ;store it in bx

or bl,al

loop loop1 

 

result: 

 

mov ah,9

lea dx,m2

int 21h

mov dh,4 ;show 4-digit hexa

loop2:

 

mov cl,4

mov dl,bh

shr dl,cl

mov ah,2

cmp dl,9 ;detect the digit

jg letter

add dl,30h

int 21h

jmp loop3 

 

letter:

add dl,37h

int 21h

loop3: 

 

 

rol bx,cl ;get second hexa digit

dec dh

cmp dh,0

jne loop2

mov ah,4ch 

int 21h

main endp

end main