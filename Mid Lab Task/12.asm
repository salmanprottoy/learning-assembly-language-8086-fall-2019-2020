.model small
.data 
a db '***********',0ah,0dh,'$' 
b db '*** '
c db ?
d db ?
e db ?,' ***',0ah,0dh,'$'

.code 
main proc
mov ax,@data
mov ds,ax

mov ah,2
mov dl,'?'
int 21h 

mov ah,1
int 21h

mov c,al
int 21h

mov d,al
int 21h

mov e,al


mov ah,2
mov dl,0dh
int 21h

mov ah,9

lea dx,a
int 21h 
int 21h
int 21h
int 21h
int 21h

lea dx,b
int 21h

lea dx,a
int 21h
int 21h
int 21h
int 21h
int 21h

mov ah,4ch
int 21h

main endp
end main