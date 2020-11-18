; Print letter from A to z

org 100h

mov cx,26 ;as there are 26 letter 
mov dx,65 ;Ascii A   

alphabets:
mov ah , 2 
int 21h

inc dx 
loop aplahbets

mov ah,4ch
int 21h
ret




