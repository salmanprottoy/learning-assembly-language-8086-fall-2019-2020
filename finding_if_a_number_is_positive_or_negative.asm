.model small
.stack 100h
.data
    msg1 db 'Enter a Number with sign: $'
    msg2 db 0dh,0ah,'Your Entered Number is $'
    msg3 db 'POSITIVE $'
    msg4 db 'NEGATIVE $'
.code                    

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1 
    int 21h
    
    mov ah,1
    int 21h
    
    mov bh,al
    
    int 21h
    mov ch,al
    
    cmp bh,'+'
    je POSITIVE
    jmp NEGATIVE
    
    POSITIVE:
        mov ah,9
        lea dx,msg2
        int 21h
        
        lea dx,msg3
        int 21h
        
        jmp EXIT
    
    NEGATIVE:   
        mov ah,9
        lea dx,msg2
        int 21h
        
        lea dx,msg4
        int 21h
        
    EXIT:
        mov ah,4ch
        int 21h
        
        main endp
end main
     s   