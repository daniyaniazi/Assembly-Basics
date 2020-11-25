print macro str
    mov dx,offset str
    mov ah,9
    int 21h
    endm

org 100h
.model small
.stack 100h

.data
str1 db "Macro $"
str2 db "in Assembly $"

.code
main proc
    mov ax , @data
    mov ds,ax
    print str1
    print str2
    
    mov ah , 4ch
    int 21h
main endp
end main



