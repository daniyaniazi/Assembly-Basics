; Compare two values

org 100h
.data 
msgequal db "number is equal$"      
msgnotequal db "number is not equal$" 

.code
mov ax , @data
mov ds ,ax    ;heap memory to access variable 

mov dl ,'3' ;ASCII code of 3 
mov ah ,1  ;input in ASCII code
int 21h
cmp al,dl
je l1

l1:
mov dx,offset msgequal
mov ah,9
int 21h

mov ah,4ch
int 21h


ret




