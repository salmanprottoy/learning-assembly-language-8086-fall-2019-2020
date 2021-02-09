.model small
.stack 100h
.data
    msg1 db 'Enter 4 Inputs: $'
    msg2 db 0ah,0dh,'$'
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
                   
    mov ah,1
    int 21h
    
    xor cx,cx
    
while:  

    cmp al,0dh
    je p
    mov dl,al
    push dx
    inc ch
    int 21h
    jmp while
            
    p:
    jcxz output
    pop dx
    sub dx,30h
    shl bx,4
    or bx,dx
    dec ch
    jmp p
    
       
output:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,bl
    and dl,00001111b
    add dl,30h
    int 21h
    shr bx,4
    cmp bx,0
    je EXIT
    jmp output
   
   
EXIT:
    mov ah,4ch
    int 21h


    main endp
end main