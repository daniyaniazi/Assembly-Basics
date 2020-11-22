; Program to print an array

org 100h
.data
array db 'a','b','c'  ; Array declaration

.code
mov ax ,@data
mov ds,ax

mov si ,offset array ; si hold the starting address of array
mov cx, 3 ; loop to access array elements

l1:
mov dx,[si]
mov ah,2  ; print element
int 21h
inc si
loop l1

mov ah , 4ch
int 21h

ret




