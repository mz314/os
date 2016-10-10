void main (void) 
{
    char * vga = (char *) 0xb8000 ;
    *vga = 'X';

    while(1){};
    return;

}