.model small
.data
X1 db 0ah,'type a hexa number 0 -FFFF :$'
X2 db 0ah,'the sum in hexa is : $'
counter db 4
num dw ?
.code
main proc
mov ax,@data ;initialize ds
mov ds,ax
mov ah,9 ;prompt user
lea dx,X1
int 21h
call read
mov num,bx ;store 1st num.
mov ah,9 ;prompt user for 2nd number
lea dx,X1
int 21h
call read
mov ah,9 ;display result msg
lea dx,X2
int 21h
add bx,num
;bx=num1(num)+num2(bx)
jc showcy ;if there carry
mov ah,2 ;no carry
mov dl,'0'
int 21h
jmp next
showcy:mov ah,2
mov dl,'1'
int 21h
next: call show
mov ah,4ch ;return to dos
int 21h
main endp
read proc ;for read hexa digit
xor bx,bx
mov cl,4
mov ah,1
int 21h
while_: cmp al,0dh
je end_w
cmp al,'9' ;detect for letter hexa
jg let
and al,0fh
jmp shift
let: 

 

sub al,37h
shift: shl bx,cl
or bl,al
int 21h
jmp while_
end_w: ret
read endp

 

show proc ;to display result of addition
mov cl,4
start: mov dl,bh
shr dl,cl
cmp dl,9
jg let1
add dl,30h
jmp show1
let1:

 

add dl,37h
show1: 

 

mov ah,2
int 21h
rol bx,cl
dec counter
cmp counter,0
jne start
ret
show endp

 

end main
 