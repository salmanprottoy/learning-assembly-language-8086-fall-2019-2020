.model small
.data 
a1 db "TYPE A CHARACTER:","$"
a2 db 0ah,0dh,"THE ASCII CODE OF "  
b1 db ? , " IN BINARY IS:","$ "
a3 db 0ah,0dh,"THE NUMBER OF 1 BIT IS "
b2 db ?,"$"  

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    mov b1,al
    
    mov ah,9
    lea dx,a2
    int 21h
    
    mov bh,0
    mov cx,8
    mov ah,2
    
loop1:
    shl bl,1
    jc loop2
    mov dl,'0'
    int 21h
    jmp loop4 
    
loop2:
    mov dl,'1'
    int 21h
    inc bh 
    
loop4:
    loop loop1 
    
    add bh,30H
    mov b2,bh
    mov ah,9 
    lea dx,a3
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
