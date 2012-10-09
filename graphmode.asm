mov ah, 9
mov al, 'X'
mov bx, 7
mov cx, 10
int 10h
hang:
jmp hang
times 512-($-$$) db 0