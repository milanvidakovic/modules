#include <stdarg.h>

extern int current_video_mode;
extern int color;

void cls(int c);                // 190000 -> 0
void put_char(int c);           // 190004 -> 1
int printf(char *fmt, ...);     // 190008 -> 2
int puts(char *s);              // 190012 -> 3
int rand();                     // 190016 -> 4
int should_break();             // 190020 -> 5
int getc();                     // 190024 -> 6
char * gets(char *s);           // 190028 -> 7
void init_stdio();              // 190032 -> 8
void delay(int millis);         // 190036 -> 9
void xy(int x, int y);          // 190040 -> 10
int get_millis();               // 190044 -> 11
int is_key_pressed();           // 190048 -> 12
int is_key_released();          // 190052 -> 13
void toggle_cursor();           // 190056 -> 14
int putchar(int c);             // 190060 -> 15
void video_mode(int m);         // 190064 -> 16
void scroll_up();               // 190068 -> 17
