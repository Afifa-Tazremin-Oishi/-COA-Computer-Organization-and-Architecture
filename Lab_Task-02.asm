.MODEL SMALL
.STACK 100H
.DATA
A DB "Enter Three Initials: $"
X DB ?,10,13
Y DB ?,10,13
Z DB ?,'$'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV AH,9
LEA DX,A
INT 21H
MOV AH,1
INT 21H
MOV X,AL
INT 21H
MOV Y,AL
INT 21H
MOV Z,AL
MOV AH,2
MOV DL,10
INT 21H
MOV DL,13
INT 21H
MOV AH,9
LEA DX,X
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN