

org 100h
.data
string db "cat"

.code
mov ax,@data
mov dx,ax 

mov si,offset string ; Fist Character Address

mov cx,3 ;loop till length of string

l1:
mov bx,[si]
push bx ; stack
inc si

loop l1 

; Pop and print in reverse order
mov cx,3
l2:
pop dx
mov ah ,2 ;print
int 21h  
loop l2

mov ah,4ch
int 21h


ret




