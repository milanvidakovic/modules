#define BLACK  0x0
#define BLUE   0x9
#define GREEN  0xA
#define CYAN   0x3
#define RED    0x4
#define PURPLE 0x5
#define YELLOW 0xE
#define WHITE  0xF


void pixel(int x, int y, int color);                    // 190400
void line(int x1, int y1, int x2, int y2, int color);   // 190404
void circle(int x, int y, int r, int color);            // 190408
void draw(int x, int y, int c, char *s);                // 190412
