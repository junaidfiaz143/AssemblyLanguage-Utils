.model small
.stack 100h
.data
msg db 10,13,"junaid$"
.code
main:
mov ax,@data
mov ds,ax
mov cx,5

jd:

lea dx,msg
mov ah,9
int 21h
loop jd

mov ah,4ch
int 21h

end main
