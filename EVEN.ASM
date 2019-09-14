.model small
.stack 100h

.data
msg1 db 10,13,"Enter the number : $"
msg2 db 10,13,"Even Number$"
msg3 db 10,13,"Remainder : $"
msg4 db 10,13,"Odd Number$"
a dw ?

.code
main:

mov ax,@data
mov ds,ax

lea dx,msg1
mov ah,9
int 21h

mov ah,1h
int 21h
sub al,'0'
mov a,ax


mov ax,2
mov bx,ax

lea dx,msg3
mov ah,9
int 21h

mov ax,a
mov dx,0
div bx      ;remainder stores in 'dx'
add dx,'0'  ;when we use 16 bit variable

mov ah,2
int 21h

cmp dx,48
je even 

lea dx,msg4
mov ah,9
int 21h

mov ah,4ch
int 21h

even:
lea dx,msg2
mov ah,9
int 21h

mov ah,4ch
int 21h

end main