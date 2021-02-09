.model small
.stack 100h
.data 
.code

main proc
     mov bh,10 
    
    For:
        call f1   
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        cmp bh,0 
        dec bh
        jne For
         
        jmp EXIT
        loop For

        jmp EXIT
     main endp
    f1 proc
        mov cx,10
        
        For1:   
            mov ah,2
            mov dl,'*'
            int 21h
            loop For1
        ret
         
    EXIT:
        mov ah,4ch
        int 21h
             
        f1 endp

 end main