.model stack
.stack 100h
.data 
     msg1 db 0dh,0ah,'DO YOU WANT TO CONVERT DECIMAL NUMBER? (Enter Y or N) $'
     msg2 db 0dh,0ah,'HOW MANY DIGIT YOUR NUMBER HAS? $'
     msg3 db 0dh,0ah,'RESULT IN HEXADECIMAL: $'
     msg4 db 0dh,0ah,'Invalid!!! $'
     msg5 db 0dh,0ah,'ENTER THE DECIMAL NUMBER: $'
     msg6 db 0dh,0ah,'ENTER THE 1st DIGIT: $'
     msg7 db 0dh,0ah,'ENTER THE 2nd DIGIT: $'  
.code
main proc
        mov ax,@data
        mov ds,ax
         
        op:
        
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,1
        int 21h
        
        
        cmp al,'Y'
        je y
        cmp al,'y'
        je y
        jmp EXIT
        
        
        
        y:
         mov ah,9
         lea dx,msg2
         int 21h
         
         
         mov ah,1
         int 21h
         
         
         cmp al,'1'
         je one
         cmp al,'2'
         je two
         jmp invalid 
         
         one:
            mov ah,9
            lea dx,msg5
            int 21h
            
            mov ah,1
            int 21h
            
            mov bh,al
            
            mov ah,9
            lea dx,msg3
            int 21h
            
            
            mov ah,2
            mov dl,bh
            int 21h
            
            jmp op
         
         two:
            
            mov ah,9
            lea dx,msg6
            int 21h
            
            mov ah,1
            int 21h
            mov bh,al
            
            mov ah,9
            lea dx,msg7
            int 21h
            
            mov ah,1
            int 21h
            mov ch,al
            cmp bh,'1' 
            je  t1     
            
            cmp  bh,'2'
            je l3
            jmp invalid
             
          t1: 
           
           cmp ch,'0'
           jge c1
           jmp c2
           
          c1:
           
           cmp ch,'5'
           jle l1
           jmp c2
            
          l1: 
            add ch,11h
            mov ah,9
            lea dx,msg3
            int 21h
               
            mov dl,ch
            mov ah,2
            int 21h 
            jmp op
          
          c2:
           
           cmp ch,'6'
           jge c3
           jmp invalid
           
          c3:
          
           cmp ch,'9'
           jle l2
           jmp invalid
           
          l2:
          
           mov ah,9
           lea dx,msg3
           
           int 21h
           
           mov ah,2
           mov dl,'1'
           int 21h
           
           sub ch,6h
           mov dl,ch
           int 21h
           
           jmp op
          
          l3:
          
            cmp ch,'0'
            jge m1
            jmp invalid
              
            m1:
             cmp ch,'5'
             jle m2 
             jmp invalid
        
            m2:
             mov ah,9
             lea dx,msg3
             int 21h
             mov ah,2
             mov dl,'1'
             int 21h
             add ch,4h
             mov dl,ch
             int 21h
             jmp op
            
         invalid:
            mov ah,9
            lea dx,msg4
            int 21h  
            jmp op
  
         EXIT:
          mov ah,4ch
          int 21h
          
        main endp
end main