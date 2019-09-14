.model small
.stack 100h
.data
msg1 db 10,13, "Enter a number : $"
msg2 db 10,13,"Your entered number  : $"
.code
main:

mov ax,@data
mov ds,ax

lea dx,msg1
mov ah,09h
int 21h

mov ah,1
int 21h
;sub al,'0'

lea dx,msg2
mov ah,9
int 21h
mov dl,al
;add dl,'0'

mov ah,2
int 21h

mov ah,4ch
int 21h

end main
