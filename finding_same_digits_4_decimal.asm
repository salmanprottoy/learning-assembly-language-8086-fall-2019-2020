.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'ENTER 4 INPUTS IN DEC: $'
    MSG2 DB 0DH,0AH,'OUTPUT IN DEC: $'
    MSG3 DB 0DH,0AH,'SAME DIGIT $'
    MSG4 DB ' : $'
    VAR1 DB ?
    VAR2 DB ?
.CODE    

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H 
    
    MOV AH,1
    INT 21H
    
    MOV VAR1,AL 
    
    INT 21H
    MOV BH,AL 
    
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV CH,AL
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV AH,2
    MOV DL,VAR1
    INT 21H
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
    MOV DL,CH
    INT 21H
    
   
        CMP VAR1,BH
        JE SD1
        CMP VAR1,BL
        JE SD1
        CMP VAR1,CH
        JE SD1
        
        SD:
        
        CMP BH,BL
        JE SD2
        CMP BH,CH
        JE SD2 
         
        
        SDD:
        
        CMP BL,CH
        JE SD3 
        JMP EXIT
            
        
        SD1:
            MOV AH,9
            LEA DX,MSG3
            INT 21H
            
            MOV AH,2
            MOV DL,VAR1
            INT 21H
            
            MOV AH,9
            LEA DX,MSG4
            INT 21H
            
            MOV AH,2
            MOV DL,'2'
            INT 21H
            JMP SD
            
         SD2:
            MOV AH,9
            LEA DX,MSG3
            INT 21H
            
            MOV AH,2
            MOV DL,BH
            INT 21H
            
            MOV AH,9
            LEA DX,MSG4
            INT 21H
            
            MOV AH,2
            MOV DL,'2'
            INT 21H
            JMP SDD
         SD3:
            MOV AH,9
            LEA DX,MSG3
            INT 21H
            
            MOV AH,2
            MOV DL,BL
            INT 21H
            
            MOV AH,9
            LEA DX,MSG4
            INT 21H
            
            MOV AH,2
            MOV DL,'2'
            INT 21H
                        
                  
EXIT:
      
    MOV AH,4CH
    INT 21H
    
    
    
        MAIN ENDP
 END MAIN