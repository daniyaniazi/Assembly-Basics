
org 100h :          
mov cx, 10 ; initialize counter = 10
mov dl,48  ; initialize to start from 0
    
myCounter: ; Loop Label
    
mov ah,2 ; Print dx value 
int 21h                   
inc dl   ; inrement dx
    
Loop myCounter ; Loop start
    
mov ah,4ch
int 21h
ret