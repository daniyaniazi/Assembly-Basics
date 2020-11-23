
;Program to swap 2 numbers using stack

org 100h
.data  

msgbefore db "Before Swaping   ax and bx  :$"      
msgafter  db "After Swaping    ax and bx  :$" 

.code
mov ax , @data
mov ds ,ax    ;heap memory to access variable 

;;;;;;;;;;;;;;;;;;;;;;;;;;
mov dx,offset msgbefore
mov ah,9
int 21h

mov ax,'1' 
push ax; push 1 in to ax 
mov dx ,ax
mov ah,2
int 21h

mov bx,'2'
push bx
mov dx ,bx
mov ah,2
int 21h  
;;;;;;;;;;;;;;;;;;;;;;;
mov dx,10 ; New line ASSCI
mov ah ,2 ; Print 
int 21h 

mov dx,13 ; Carriage return ASSCI
mov ah ,2 ; Print 
int 21h 
;;;;;;;;;;;;;;;;;;;;;;;
mov dx,offset msgafter
mov ah,9
int 21h

pop ax ;pop 2 => ax=2
mov dx ,ax
mov ah,2
int 21h 
   
pop bx
mov dx ,bx
mov ah,2
int 21h      

;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ah,4ch
int 21h

ret




