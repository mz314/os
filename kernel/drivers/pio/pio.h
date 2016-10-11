#include "../../asm/registers.h"
#include "../../asm/io.h"


#define      ATA_PRIMARY      0x00
#define      ATA_SECONDARY    0x01

extern void pio_ata_reset();

struct IDEChannelRegisters {
   unsigned short base;  // I/O Base.
   unsigned short ctrl;  // Control Base
   unsigned short bmide; // Bus Master IDE
   unsigned char  nIEN;  // nIEN (No Interrupt);
} channels[2];
