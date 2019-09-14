{\rtf1\ansi\ansicpg1252\cocoartf1343\cocoasubrtf160
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww27120\viewh12580\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 .model small\
.stack 100h\
\
.data\
msg db 10,13,\'94This Is 8-bit Addition$\'94\
msg1 db 10,13,\'94Enter First Number : $\'94\
msg2 db 10,13,\'94Enter Second Number : $\'94\
msg3 db 10,13,\'94The Sum  : $\'94\
a dw ?\
b dx ?\
\
.code\
main:\
\
mov ax,@data\
mov ds,ax\
\
lea dx,msg\
mov ah,9\
int 21h\
\
lea dx,msg1\
mov ah,9\
int 21h\
\
mov ah,1\
int 21\
sub al,48\
mov a,al\
\
lea dx,msg2\
mov ah,9\
int 21h\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural
\cf0 mov ah,1\
int 21\
sub al,48\
mov b,al\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural
\cf0 lea dx,msg3\
mov ah,9\
int 21h\
\
mov dl,a\
add dl,b\
add dl,48\
\
mov ah,2\
int 21h\
\
mov ah,4ch\
int 21h\
\
end main}