.model small
.stack 100h

.code
main:

mov al,1
mov bl,1

mov cx,5

fact:

mul bl     ;al = al * bl
mov dl,al  ;dl = al
inc bl     ;bl++

loop fact

mov ah,2
int 21h

mov ah,4ch
int 21h

end main
