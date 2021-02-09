.model small
.stack 100h
.data
.code

main proc
    
    mov ah,2
    mov bh,0f0h 
    ;11110000
    ;00100000=20h
    test bh,20h
    ;00100000=20h
    
   jz one
   jmp two
   
   
   one:
   mov dl,'z'
   int 21h
   jmp exit
   
   two:
   mov dl,'o'
   int 21h
   
   exit:
   mov ah,4ch
   int 21h

