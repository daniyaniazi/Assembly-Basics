; multiplication
org 100h

mov al,5
mov bl,5

mul bl

aam ;Ascii adjust

mov ch,ah
mov cl,al

mov dl,ch
add dl,48
mov ah,2
int 21h

mov dl,cl
add dl,48
mov ah,2
int 21h
    
mov ah,4ch
int 21h
ret




