.stack 100h
.data 
.code

main proc
    mov ah,2
    mov bh,5
    ;jcxz EXIT
    
    cmp bh,0
    je EXIT
    
    FOR:
        mov dl,'*'
        int 21h
        ;loop FOR 
         
        dec bh
        cmp bh,0
        jg FOR
        
    EXIT: 
        mov ah,4ch
        int 21h    
    
    main endp
end main