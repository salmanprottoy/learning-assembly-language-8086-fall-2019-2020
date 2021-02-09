.model small
.stack 100h
.data
    msg1 db 'Enter First Input: $' 
    msg2 db 'Enter Second Input: $' 
    msg3 db 'Result: $'
    msg4 db 0dh,0ah,'$'
.code


main proc
     
     mov ax,@data
     mov ds,ax
     
     mov ah,9
     lea dx,msg1
     int 21h
     
     mov ah,1
     int 21h
     
     mov bl,al
     
     mov ah,9
     lea dx,msg4
     int 21h  
     
     lea dx,msg2
     int 21h
     
     mov ah,1
     int 21h  
     
     mov cl,al
     
     mov ah,9
     lea dx,msg4
     int 21h

     mov ah,9
     lea dx,msg3
     int 21h
     
     lea dx,msg4
     int 21h
     
     mov ah,2
     mov dl,bl
     int 21h
     
     mov dl,2bh
     int 21h
     
     mov dl,cl
     int 21h
     
     mov dl,3dh
     int 21h
     
     add bl,cl
    
     
     mov dl,bl
     int 21h   
    
    
    main endp
end main