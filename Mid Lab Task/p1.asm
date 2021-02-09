.model small
.stack 100h

.data
a db 'Sum is: $'

.code 
main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,'?'
    int 21h 
   
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,2
    mov dl,32
    int 21h
     
    mov ah,1
    int 21h
    mov cl,al
     
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
    
    lea dx,a
    mov ah,9
    int 21h
    
    sub bl,30h
    sub cl,30h
    
    add cl,bl
    add cl,30h 
    
    mov dl,cl
     
    mov ah,2
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
        end main 