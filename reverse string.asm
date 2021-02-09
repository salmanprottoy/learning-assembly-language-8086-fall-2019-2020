.model small
.stack 100h
.data 
.code

main proc
    mov ah,1 
    mov bh,00h    
    
    l1:
    int 21h 
    cmp al, 0dh
    je print
    mov bl,al
    push bx 
    jne l1 
    
    print:
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah
     int 21h
     
     l2:
      pop bx
      cmp sp,0100h
      jg exit
     
     mov dl,bl
     int 21h 
     jmp l2
     
exit:
mov ah,4ch
int 21h
    
    
    
    
    