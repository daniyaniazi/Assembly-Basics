;Star Pattern
org 100h

mov cx,5 ; 5 rows
l1: ;row loop
push cx 
mov bx,cx
mov cx,bx
    l2:
    mov dx,"*"
    mov ah ,2 
    int 21h
    loop l2  
    
mov dx,10
mov ah,2
int 21h      
mov dx,13
mov ah,2
int 21h 

pop cx
loop l1  

mov ah,4ch
int 21h 

ret




