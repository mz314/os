mov ax,13h
int 10h
mov ax,0a000h
mov es,ax
mov bx,0
mov di,bx
mov al,1
mov cx,64000
pix:
mov [es:di],al
inc di
loop pix
hang:
jmp hang
times 1024-($-$$) db 0