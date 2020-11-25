; Procedures
.model small
.stack 100h
.data
msg1 db "This is a simple program$"
msg2 db "To understand Prodcedures$"
msg3 db "in Assembly Language$"

.code
main proc   
    
mov ax , @data ; Acces Directive 
mov ds , ax    

mov dx,offset msg1
mov ah,9
int 21h
call newLine
mov dx,offset msg2
mov ah,9
int 21h
call newLine  
mov dx,offset msg3
mov ah,9
int 21h

mov ah,4ch
int 21h
main endp

newLine proc
mov dx,10 ; New line ASSCI
mov ah ,2
int 21h 

mov dx,13 ; Carriage return ASSCI
mov ah ,2 
int 21h
ret 
newLine endp

end main 





