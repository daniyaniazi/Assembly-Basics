
;Program to Subtract two numbers

org 100h

mov bl,5
mov cl , 3
SUB bl,cl 
ADD bl,48   

mov dl,bl
mov ah,2 
int 21h

mov ah,4ch
int 21h

ret                              


