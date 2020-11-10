
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here      
mov dl ,'a'
mov ah,2
int 21h
  
mov dl ,'l'
mov ah,2
int 21h

mov dl ,'i'
mov ah,2
int 21h
           
mov ah,4ch
int 21h
ret




