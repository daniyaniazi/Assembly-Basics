;Caps To small

org 100h

mov ah , 1
int 21h

mov dl, al ;dl = 66 = B
add dl,32  ;dl = 66 + 32 = 98=> b

mov ah,2
int 21h       

mov ah,4ch
int 21h


ret

;b=98
;B=66
;98-66=32



