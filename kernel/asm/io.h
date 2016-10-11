/**
 Copied from linux 0.1 src. Will be changed later.
 */

#define outb(value,port) \
__asm__ ("outb %%al,%%dx"::"a" (value),"d" (port))


#define inb(port) ({ \
unsigned char _v; \
__asm__ volatile ("inb %%dx,%%al":"=a" (_v):"d" (port)); \
_v; \
})

#define out(value,port) \
__asm__ ("out %%al,%%dx"::"a" (value),"d" (port))


#define in(port) ({ \
unsigned char _v; \
__asm__ volatile ("in %%dx,%%al":"=a" (_v):"d" (port)); \
_v; \
})