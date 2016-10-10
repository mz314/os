#ifndef SCREEN_H
#define	SCREEN_H

#define TEXTMODE_START  0xb8000
#define TEXTMODE_COLS  25
#define TEXTMODE_ROWS 80

void textmode_char_out(char c,  char row,  char col);
void textmode_string_out(char *string,  char row,  char col);
void textmode_clear();


#endif	

