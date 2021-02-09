.model small
.stack 100h
.data   
    msg1 db 'Enter an Input: $'
    msg2 db 'Choose Your Option: (Press 1 for 8 bit,Press 2 for 16 bit, Default EXIT) $'
    msg3 db 'Choose Your Option: (Press 3 for In-order Output, Press 4 for Post-order Output) $'
    msg4 db 'Complementary Value: $'
    newline db 0dh,0ah,'$'
    a db ?
    b db ?
    c db ?
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
    mov a,al
    mov bh,a
    
    mov ah,9
    lea dx,newline
    int 21h
    
    lea dx,msg2
    int 21h
    
    lea dx,newline
    int 21h
    
    mov ah,1
    int 21h
    
    mov ch,al
    
    mov ah,9
    lea dx,newline
    int 21h
    
    cmp ch,'1'
    je EBit
    cmp ch,'2'
    je SBit
    jmp EXIT
    
    
    EBit:
       
        mov ah,9
        lea dx,newline
        int 21h
        
        lea dx,msg3
        int 21h
        
        
        mov ah,1
        int 21h
        
        
        mov cl,al
        cmp cl,'3'
        je  In_order
        jmp Post_order
 
    In_order:
         mov ah,9
         lea dx,newline
         int 21h
               
         mov cx,8
         jcxz FFOR1
         
     FOR1:
        
        rol bh,1
        jc ONE
        jmp ZERO
        
        ONE:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FOR1
            jmp FOFOR1
        ZERO:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FOR1
     FOFOR1:    
         mov ah,9
         lea dx,newline
         int 21h
         lea dx,msg4
         int 21h
         
         mov cx,8
         jcxz EXIT
         
     FFOR1:
        
        rol bh,1
        jc OONE
        jmp ZZERO
        
        OONE:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FFOR1
            jmp EXIT
        ZZERO:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FFOR1
            jmp EXIT
      
   
   Post_order:
         mov ah,9
         lea dx,newline
         int 21h
         
         mov cx,8
         jcxz FFOR3
         
         
      FOR3:
        ror bh,1
        jc ONE3
        jmp ZERO3
        
        ONE3:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FOR3
            jmp FOFOR3
            
        ZERO3:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FOR3
            
         FOFOR3:
         
         mov ah,9
         lea dx,newline
         int 21h
         lea dx,msg4
         int 21h
         mov cx,8
         
      FFOR3:
        ror bh,1
        jc OONE3
        jmp ZZERO3
        
        OONE3:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FFOR3
            jmp EXIT
            
        ZZERO3:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FFOR3
            jmp EXIT

            
   SBit:
         
       mov ah,9
       lea dx,newline
       int 21h
         
       lea dx,msg3
       int 21h
        
        
      mov ah,1
      int 21h
        
        
      mov cl,al
      cmp cl,'3'
      je  In_order2
      jmp Post_order2
         
      In_order2:
         
         mov ah,9
         lea dx,newline
         int 21h
               
         mov cx,16
         jcxz FFOR4
         
      FOR4:
        
        rol bh,1
        jc ONE21
        jmp ZERO21
        
        ONE21:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FOR4
            jmp FOFOR4
        ZERO21:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FOR4
       
        FOFOR4:  
          mov ah,9
          lea dx,newline
          int 21h
         
          lea dx,msg4
          int 21h
          mov cx,16
          jcxz EXIT
         
      FFOR4:
        
        rol bh,1
        jc OONE21
        jmp ZZERO21
        
        OONE21:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FFOR4
            jmp EXIT
        
        ZZERO21:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FFOR4
            jmp EXIT


       Post_order2:
        
         mov ah,9
         lea dx,newline
         int 21h
         
         mov cx,16
         jcxz FFOR5
         
      FOR5:
        ror bh,1
        jc ONE22
        jmp ZERO22
        
        ONE22:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FOR5
            jmp FOFOR5
            
        ZERO22:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FOR5
            
        FOFOR5: 
         mov ah,9
         lea dx,newline
         int 21h
         
         lea dx,msg4
         int 21h
          
         mov cx,16
         jcxz EXIT
         
      FFOR5:
        ror bh,1
        jc OONE22
        jmp ZZERO22
        
        OONE22:
            mov ah,2
            mov dl,'0'
            int 21h
            loop FFOR5
            jmp EXIT
            
        ZZERO22:
            mov ah,2
            mov dl,'1'
            int 21h
            loop FFOR5

            
    EXIT:
        
        
        mov ah,4ch
        int 21h
                
    main endp
end main
             