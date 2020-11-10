
;Program to add two numbers

org 100h

mov bl,1
mov cl , 2
ADD bl,cl ; reg addressing mode    ; ADD bl,2 -> Imediate
ADD bl,48 ;Ascii 51 =3   

mov dl,bl
mov ah,2 ;Print subroutine
int 21h

mov ah,4ch ;exit
int 21h

ret                              


;48=0
;3+48 =51=3

