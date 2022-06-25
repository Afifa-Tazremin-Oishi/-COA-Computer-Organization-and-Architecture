.model small
.stack 100h
.data 
X1 db "Please enter a string:$"
X2 db "Sample output: The reversed value of the input is=$"

 

.code
main proc
    mov ax,@data  
    mov ds,ax  
       
     mov ah,9  
    lea dx,X1 
    int 21h 
    
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
    
    
    
    mov ah,2     
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,9  
    lea dx,X2 
    int 21h 
    
   
    
    mov ah,2    
    mov dl,ch 
    int 21h 
            
            
      mov ah,2    
    mov dl,cl 
    int 21h
    
    
    
     mov ah,2    
    mov dl,bh 
    int 21h
    
    
     mov ah,2    
    mov dl,bl 
    int 21h
    
   
    exit:         
    mov ah,4ch
    int 21h
    main endp
end main