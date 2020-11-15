;Program to input 2 numbers abd then add them
org 100h

mov ah,1 ; Input interrupt
int 21h;

mov bl,al

mov ah,1 ; Input interrupt
int 21h;

add bl,al ; Asci Code
sub bl,48 ; Actual Value

mov dl,bl ;hold output
mov ah, 2 ;print
int 21h

mov ah,4ch ; Exit
int 21h

ret




