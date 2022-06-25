.model small

.data

a db 10,13,'9999999','$'  

b db 10,13,'9     9','$' 

c db 10,13,'      9','$'  

d db 10,13,' 00000','$' 

e db 10,13,'0     0','$' 

 

 

.code

main proc

mov ax,@data

mov ds,ax 

 

 

mov ah,9

lea dx,d

int 21h    

 

 

mov ah,9

lea dx,e

int 21h 

        

 

mov ah,9

lea dx,e

int 21h  

 

 

mov ah,9

lea dx,e

int 21h  

 

 

 

mov ah,9

lea dx,d

int 21h

 

 

 

 

mov ah,9

lea dx,a

int 21h 

 

 

mov ah,9

lea dx,b

int 21h

 

 

mov ah,9

lea dx,a

int 21h  

 

 

mov ah,9

lea dx,c

int 21h  

 

mov ah,9

lea dx,a

int 21h 

 

 

 

         

         

 

mov ah,4ch

int 21h

main endp

end main