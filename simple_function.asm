.model small
.stack 100h
.data
.code

main proc
    
    call f1
    call f2
    
    mov ah,4ch
    int 21h
    main endp
    
    f1 proc
        
        mov ah,2
        mov dl,'1'
        int 21h
        ret
        f1 endp
    
    f2 proc
        
        mov ah,2
        mov dl,'2'
        int 21h
        call f3
        ret
        f2 endp
        
    f3 proc
        
        mov ah,2
        mov dl,'3'
        int 21h
        ret
        f3 endp
    
end main
                