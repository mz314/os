all:
	
	nasm loader/bootloader.asm -o boot.bin 
	nasm -f elf32 loader/loader.asm -o loader.o
	
	
	gcc -m32 -masm=intel -c kernel/kernel.c -o kernel.o
	gcc -m32 -masm=intel -c kernel/textmode.c -o textmode.o
	ld   -m elf_i386 -Ttext 0x100000 -o kernel.elf loader.o textmode.o kernel.o 
	objcopy -R .note -R .comment -S -O binary kernel.elf kernel.bin
	
	
	dd if=/dev/zero of=floppy.img bs=512 count=2880
	dd if=boot.bin of=floppy.img conv=notrunc
	dd if=kernel.bin of=floppy.img conv=notrunc bs=512 seek=1
	
clean:
	rm *.o
	rm *.bin
	rm *.img