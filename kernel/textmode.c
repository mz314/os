#include "textmode.h"

void textmode_char_out(char c, char col, char row) {

    char * vga = (char *) (
            TEXTMODE_START + (row * TEXTMODE_ROWS * 2 + col * 2)
            );
    *vga = c;
}

void textmode_string_out(char *string, char col, char row) {
    unsigned int i = 0;

    while (string[i] != 0) {
        textmode_char_out(string[i], col, row);
        col++;
        i++;
    }
}

void textmode_clear() {
    unsigned int i;
    char x = ' ';
    for (i = 0; i < TEXTMODE_COLS * TEXTMODE_ROWS * 2; i += 2) {
        char * vga = (char *) TEXTMODE_START + i;
        *vga = x;
    }
}