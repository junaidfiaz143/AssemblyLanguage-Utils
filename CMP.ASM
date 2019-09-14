.model small
.stack 100h
.data
msg db 10,13,"junaid$"

.code
mov ax,@data
mov ds,ax

mov ax,1
cmp ax,0
jg t

t:
lea dx,msg
mov ah,9
int 21h

mov ah,4ch
int 21h
end
