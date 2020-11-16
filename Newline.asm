; Line Break in Assembly
;org 100h
;ret  
.model small
.stack 100h       

.data 
msg1 db "Hello$" ; $ -> Terminator
msg2 db "Learner$" 
      
      
.code 
main proc     
mov ax , @data ; Acces Directive 
mov ds , ax    ; move to data segment for heap memory
       
mov dx, offset msg1 ; For string    OR leas dx,msg1
mov ah , 9          ; Print String
int 21h    

mov dx,10 ; New line ASSCI
mov ah ,2 ; Print 
int 21h 

mov dx,13 ; Carriage return ASSCI
mov ah ,2 ; Print 
int 21h 
           
mov dx, offset msg2
mov ah , 9       
int 21h  

main endp
end main 