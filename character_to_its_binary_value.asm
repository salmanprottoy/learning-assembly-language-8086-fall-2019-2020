.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'ENTER A CHARACTER: $'
    MSG2 DB 0DH,0AH,'OUTPUT OF THE MODIFIED VALUE IN BINARY: $'
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H  
 
    
    MOV CH,AL
    SUB CH,37H
    MOV DH,AL
    SUB DH,37H
    MOV CL,CH
    
    MOV BH,CH
    SUB CH,2H
    SHL CH,4
    OR CH,DH
    MOV BL,CH 
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    
    MOV DH,BH
    MOV CH,8
    
    FOR:
        
        SHL DH,1
        
        JC ONE
        JMP ZERO
        
        ONE:
            MOV AH,2
            MOV DL,'1'
            INT 21H
            DEC CH
            CMP CH,0 
            JNE FOR    
            JMP FOR1
        ZERO:
            MOV AH,2
            MOV DL,'0'
            INT 21H
            DEC CH
            CMP CH,0
            JNE FOR
            JMP FOR1
     FOR1:
     
        MOV DH,BL
        MOV CL,8 
        
        FOR11:
            
            SHL DH,1
            JC ONE1
            JMP ZERO1
            
            ONE1:
                MOV AH,2
                MOV DL,'1'
                INT 21H
                DEC CL
                CMP CL,0
                JNE FOR11
                JMP EXIT
                
            ZERO1:
                MOV AH,2
                MOV DL,'0'
                INT 21H 
                DEC CL 
                CMP CL,0
                JNE FOR11
                JMP EXIT 
                
        EXIT:
            MOV AH,4CH
            INT 21H
            
            MAIN ENDP
END MAIN
                      