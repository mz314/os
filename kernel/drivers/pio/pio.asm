global pio_ata_reset
section .data

section .text

pio_ata_reset:
	push eax
	mov al, 4
	out dx, al			; do a "software reset" on the bus
	xor eax, eax
	out dx, al			; reset the bus to normal operation
	in al, dx			; it might take 4 tries for status bits to reset
	in al, dx			; ie. do a 400ns delay
	in al, dx
	in al, dx
        pop eax
        ret
.rdylp:
	in al, dx
	and al, 0xc0			; check BSY and RDY
	cmp al, 0x40			; want BSY clear and RDY set
	jne short .rdylp
	pop eax
	ret