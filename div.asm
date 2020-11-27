; Division

org 100h
.data 
quo dw ?
rem dw ?

.code
mov ax,@data 
mov ds,ax

mov ax,6 
mov dx,0

mov bx,2 
div bx

mov quo , ax
mov rem,dx

mov dx,quo
add dx,48
mov ah,2
int 21h

mov dx,rem  
add dx,48
mov ah,2
int 21h

mov ah,4ch
int 21h

ret




