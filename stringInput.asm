; Program to input a string and print it

org 100h
.data
var1 db 100 dup("$")   ; Empty string

.code
mov ax, @data
mov dx ,ax

mov si,offset var1

l1:
mov ah,1 ; input character
int 21h
cmp al , 13 ;check if enter is presssed
je exit ; exit the 

mov [si],al ; else append to string
inc si
jmp l1 ; next character input 

exit:
mov dx, offset var1
mov ah,9 ;print a string
int 21h

mov ah,4ch
int 21h  
                                             
ret




