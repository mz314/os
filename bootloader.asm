org 7c00h

start: 
mov ah, 9
mov al, 'L'
mov bx, 7
mov cx, 1
int 10h

mov ah, 2
mov al, 2
mov ch, 0
mov cl, 2
mov dh, 0
mov bx, 0800h
mov es, bx
xor bx, bx
int 13h

jmp 0800h:0000h

times 0200h - 2 - ($ - start)  db 0  
dw 0AA55h     