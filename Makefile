all:
	nasm -f bin -o boot.bin bootloader.asm
	# nasm -f bin -o kern.bin graphmode.asm
	cat boot.bin > floppy.img
	cat kern.bin >> floppy.img