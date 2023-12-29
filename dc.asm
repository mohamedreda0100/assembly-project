.MODEL SMALL
.STACK 100H
.DATA
    DATE DB 10 DUP('$')
    MSG DB 'Today is: $'
.CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 2AH
    INT 21H
    MOV BL, DL
    MOV BH, DH
    MOV CL, CH
    MOV CH, 0
    MOV DH, 0
    MOV DL, 0
    MOV AH, 2
    INT 21H
    MOV DL, '/'
    INT 21H
    MOV AH, 2
    INT 21H
    MOV AL, BL
    MOV AH, 0
    ADD AL, 30H
    INT 21H
    MOV AL, BH
    MOV AH, 0
    ADD AL, 30H
    INT 21H
    MOV DL, '/'
    INT 21H
    MOV AH, 2
    INT 21H
    MOV AL, CL
    MOV AH, 0
    ADD AL, 30H
    INT 21H
    MOV AL, CH
    MOV AH, 0
    ADD AL, 30H
    INT 21H
    MOV AH, 4CH
    INT 21H
END
