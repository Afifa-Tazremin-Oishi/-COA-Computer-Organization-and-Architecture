.MODEL SMALL
.STACK 100H 
.DATA
A DB 'Enter a HEX digit: $'
B DB 10,13,'The Decimal value of A is: 1'
C DB ?,'$'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV AH,9
LEA DX,A
INT 21H
MOV AH,1
INT 21H
SUB AL,11H
MOV C,AL
MOV AH,9
LEA DX,B
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN