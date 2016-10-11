#include "textmode.h"

// make && qemu-system-x86_64  floppy.img --drive file=hd.img 

void main (void) 
{

    //textmode_clear();
   // pio_ata_reset();
    textmode_char_out('Q', 0, 0);
    textmode_string_out("OS TEST", 0, 0);
    while(1){};
    return;

}