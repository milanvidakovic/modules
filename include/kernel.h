int *K_API_STDIO = (int *)190000;
#define K_CLS               0   // 190000
#define K_PUT_CHAR          1   // 190004
#define K_PRINTF            2   // 190008
#define K_PUTS              3   // 190012
#define K_RAND              4   // 190016
#define K_SHOULD_BREAK      5   // 190020
#define K_GETC              6   // 190024
#define K_GETS              7   // 190028
#define K_INIT_STDIO        8   // 190032
#define K_DELAY             9   // 190036
#define K_XY                10  // 190040
#define K_GET_MILLIS        11  // 190044
#define K_IS_KEY_PRESSED    12  // 190048
#define K_IS_KEY_RELEASED   13  // 190052
#define K_TOGGLE_CURSOR     14  // 190056
#define K_PUTCHAR           15  // 190060
#define K_VIDEO_MODE        16  // 190064
#define K_SCROLL_UP         17  // 190068

int *K_API_STRING = (int *)190100;
#define K_STRLEN        0 // 190100 
#define K_STRCMP        1 // 190104
#define K_STRNCMP       2 // 190108
#define K_MEMCPY        3 // 190112
#define K_MEMSET        4 // 190116
#define K_MEMMOVE       5 // 190120
#define K_STRCPY        6 // 190124
#define K_STRNCPY       7 // 190128
#define K_STRCAT        8 // 190132
#define K_STRSTR        9 // 190136
#define K_TOLOWER       10 // 190140
#define K_TOUPPER       11 // 190144
#define K_STR_TOUPPER   12 // 190148
#define K_STR_N_TOUPPER 13 // 190152
#define K_ISDIGIT       14 // 190156
#define K_ISLOWER       15 // 190160
#define K_ISUPPER       16 // 190164
#define K_ISALPHA       17 // 190168
#define K_ISALNUM       18 // 190172
#define K_ATOI          19 // 190176
#define K_ISSPACE       20 // 190180
#define K_MEMCMP        21 // 190184
#define K_STRTOK        22 // 190188
#define K_STRCHR        23 // 190192
#define K_STRRRCHR      24 // 190196
#define K_STRNCASECMP   25 // 190200

int *K_API_SPRINTF = (int *)190300;
#define K_SPRINTF        0 // 190300 
#define K_VSPRINTF       1 // 190304

int *K_API_GRAPHICS = (int *)190400;
#define K_PIXEL          0 // 190400
#define K_LINE           1 // 190404
#define K_CIRCLE         2 // 190408
#define K_DRAW           3 // 190412

int *K_API_SPI = (int *)190500;
#define K_INIT_SPI       0 // 190500
#define K_DEINIT_SPI     1 // 190504
#define K_SEND_SPI       2 // 190508
#define K_READ_SPI       3 // 190512
#define K_SPI_BYTE       4 // 190516

int *K_API_TCPIP = (int *)190600;
#define K_INIT_TCPIP     0 // 190600
#define K_BROWSE_URL     1 // 190604
#define K_HTTP_POST      2 // 190608
#define K_MAIN_LOOP      3 // 190612

int *K_API_FAT = (int *)190700;
#define K_SDCARD_INIT    0 // 190700 sdcard_init();
#define K_VOLUME_INIT    1 // 190704 volume_init(uint8_t part);
#define K_FILE_OPEN      2 // 190708 file_open(char* filename, file_descriptor_t* fd, uint8_t mode);
#define K_FILE_READ      3 // 190712 file_read(file_descriptor_t *fd, char *buf, uint16_t length);
#define K_GET_DIR_ENTRY  4 // 190716 getDirEntry(file_descriptor_t* fd, uint32_t index);
#define K_FILE_SEEK      5 // 190720 file_seek(file_descriptor_t *fd, uint32_t offset);
#define K_FILE_WRITE     6 // 190724 file_write(file_descriptor_t* fd, uint8_t* write_str, uint16_t length);
#define K_FILE_DELETE    7 // 190728 file_delete(file_descriptor_t* fd);
