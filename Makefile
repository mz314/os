all:
	
	
	nasm bootloader.asm -o boot.bin 
	nasm -f elf64 loader.asm -o loader.o
	

	gcc -m64 -masm=intel -c kernel.c -o kernel.o
	ld  -Ttext 0x100000 -o kernel.elf loader.o kernel.o 
	objcopy -R .note -R .comment -S -O binary kernel.elf kernel.bin
	
	
	dd if=/dev/zero of=floppy.img bs=512 count=2880
	dd if=boot.bin of=floppy.img conv=notrunc
	dd if=kernel.bin of=floppy.img conv=notrunc bs=512 seek=1