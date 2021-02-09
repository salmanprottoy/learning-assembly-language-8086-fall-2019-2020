.model small
.data 
a db 0ah,0dh,'**********','$'

.code 
main proc
mov ax,@data
mov ds,ax

mov ah,9
lea dx,a
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h

mov ah,4ch
int 21h

main endp
end main