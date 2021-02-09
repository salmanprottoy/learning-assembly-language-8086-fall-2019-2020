.model small
.stack 100h
.data   
msg1 db 'please input a number in between 1 to 9 to find its factorial:$'


.code    




main proc  
    
    mov ax, @data
    mov ds, ax
    
    
    mov ah,9
    lea dx,msg1
    int 21h
            
            
    mov ah,1
    int 21h
    
    
    sub al,30h
    mov bl,al
    sub bl,01h
    mov ch,00h
    mov cl,bl
    
    l1:
    mul bl
    dec bl
    loop l1 
    
    ;value will be shown in ax  registor in hex
    
     main endp
     end main
    
    


