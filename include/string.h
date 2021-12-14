int strlen(char* s);                                // 190100 
int strcmp(char* s1, char* s2);                     // 190104
int strncmp(char *s1, char *s2, int n);             // 190108
void* memcpy(void* dest, void* src, int len);       // 190112
void *memset(void *dst, int c, int n);              // 190116
void *memmove (void *dest, void *src, int len);     // 190120
char* strcpy (char* dest, char* src);               // 190124
char* strncpy (char* dest, char* src, int n);       // 190128
char* strcat(char* dest, char* src);                // 190132
char* strstr(char* string, char* substring);        // 190136
int tolower(int c);                                 // 190140
int toupper(int c);                                 // 190144
char* str_toupper(char *str);                       // 190148
char* str_n_toupper(char *str, int n);              // 190152
int isdigit(int c);                                 // 190156
int islower(int c);                                 // 190160
int isupper(int c);                                 // 190164
int isalpha(int c);                                 // 190168
int isalnum(int c);                                 // 190172
int atoi(char *string);                             // 190176
int isspace(int c);                                 // 190180
int memcmp(void *s1, void *s2, int n);              // 190184
char *strtok(char *s, char *delim);                 // 190188
char *strchr (char *s, int c);                      // 190192
char *strrchr (char *s, int c);                     // 190196
int strncasecmp (char *s1, char *s2, int n);        // 190200