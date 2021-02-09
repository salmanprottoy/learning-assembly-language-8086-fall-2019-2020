.model small 
.stack 100h
.data 
msg1 db 'Type a string: ','$'  
msg2 db ' char$' 
msg3 db ' num$'
msg4 db ' special char$'
c1 db 0
c2 db 0
c3 db 0 
                                                          
.code
main proc
    mov ax,@data
    mov ds,ax    
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1  
    int 21h 
      
  while_:
    cmp al,0dh
    je end_while  
    
  char1:
    cmp al,'A'
    jnge char2  
    
    cmp al,'Z' 
    jnle char2
    
    inc c1  
    
  char2:
    cmp al,'a' 
    jnge num
    
    cmp al,'z'
    jnle num  
    
    inc c1
    
  num:
    cmp al,0
    jnge sc
    
    cmp al,9
    jnle sc  
    
    inc c2
    
  sc:
    cmp al,'!'
    jnge end_if
    
    cmp al,'\'
    jnle end_if  
    
    inc c3
    
  end_if:
    int 21h
    jmp while_
    
  end_while: 
    
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    add c1,30h
    
    mov ah,2
    mov dl,c1
    int 21h 
    
    mov ah,9
    lea dx,msg2
    int 21h 
    
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    add c2,30h
    
    mov ah,2
    mov dl,c2
    int 21h 
    
    mov ah,9
    lea dx,msg3
    int 21h   
    
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    add c3,30h
    
    mov ah,2
    mov dl,c3
    int 21h 
    
    mov ah,9
    lea dx,msg4
    int 21h
       
    mov ah,4ch
    int 21h
    
    main endp
end main