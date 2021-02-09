.model small
.stack 100h

.data
.code 
main proc 
    
    mov ax,@data
    mov ds,ax 
   
    mov ah,1
    int 21h
    mov bh,al 
    
    mov ah,1
    int 21h
    mov ch,al
    
    mov ah,1
    int 21h
    mov dh,al 
     
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
             
    mov ah,2
    mov dl,ch
    int 21h
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,dh
    int 21h 
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
    
    main endp
        end main 