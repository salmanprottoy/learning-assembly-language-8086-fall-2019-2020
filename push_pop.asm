.stack 100h
.code

main proc
        
    mov bx,41h      ;must be a 16 bit register
    mov cx,42h      
    mov dx,43h    
    push bx         ; SP=0100 indicates empty
    push cx         ; SP=00FE decremented by 2, mov value
    push dx         ; SP=00FC, afterwards before termination SP=00FA 
    
    pop dx
    mov ah,2
    int 21h
    
    pop dx
    int 21h
    
    pop dx
    int 21h
    
        
    main endp
end main