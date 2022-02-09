#include <stdio.h>
#include <consts.h>

int  MaxN = 2000;


// opis zmije - globalne promenljive
int *zx = (int *)520000; //[2000];
int *zy = (int *)530000; //[2000];
int N; // duzina tela zmije 
int smer; // 0 - gore, 1 - desno, 2 - dole, 3 - levo
#define GORE  0
#define DESNO 1
#define DOLE  2
#define LEVO  3

// Ostali parametri
int Poeni;
int kraj;
int Usporenje;
int c;

// Zvezda
int sx, sy;

int SlucajanBroj(int a, int b)
{
  return a + rand() % (b - a + 1);
}

void IzracunajZvezdu()
{
	int i;
	
	do 
	{	
    sx = SlucajanBroj(2, 79);
    sy = SlucajanBroj(3, 24);
    zx[N + 1] = sx;
    zy[N + 1] = sy;
    i = 0;
    while ((zx[i] != sx) || (zy[i] != sy)) i = i + 1;
  } while (i != N + 1);
}

void IscrtajOkvir()
{
	int i, j;
	
  cls(color);
  xy(1, 2);
  printf("+");
  for (i = 1; i <= 78; i++) printf("-");
  printf("+");
  for (i = 3; i <= 24; i++) 
  {
    xy(1, i);
    printf("|");
    for (j = 1; j <= 78; j++) printf(" ");
    printf("|");
  }
  xy(1, 25);
  printf("+");
  for (i = 1; i <= 78; i++) printf("-");
  printf("+");
}

void IspisiStatus()
{
  xy(1,1);
  printf("POENI: %d", Poeni);
}

void InicijalizujZmiju()
{
	int i0 = 0, i1 = 1, i2 = 2;
  N = 2;
  for (int i = 0; i <= N; i++) {
    zx[i] = 0;
    zy[i] = 0;
  }
  zx[0] = SlucajanBroj(10, 72);
  zy[0] = SlucajanBroj(10, 17);
  smer  = SlucajanBroj(0, 3);
  switch(smer)
  {
  	case GORE: 
      zx[i1] = zx[i0]; zy[i1] = zy[i0] + 1;
      zx[i2] = zx[i0]; zy[i2] = zy[i0] + 2;
      break;
  	case DESNO:
      zy[i1] = zy[i0]; zx[i1] = zx[i0] - 1;
      zy[i2] = zy[i0]; zx[i2] = zx[i0] - 2;
      break;
  	case DOLE:
      zx[i1] = zx[i0]; zy[i1] = zy[i0] - 1;
      zx[i2] = zx[i0]; zy[i2] = zy[i0] - 2;
      break;
  	case LEVO:
      zy[i1] = zy[i0]; zx[i1] = zx[i0] + 1;
      zy[i2] = zy[i0]; zx[i2] = zx[i0] + 2;
      break;
  }
}

void IscrtajZmiju()
{
	int i;
  xy(zx[0], zy[0]); printf("@");
  for (i = 1; i <= N; i++)
  {
    xy(zx[i], zy[i]); printf("O");
  }
}

void IzracunajPolozajGlave(int *x, int *y)
{
  switch(smer)
  {
  	case GORE: {*x = zx[0]; 		 *y = zy[0] - 1; 	break;}
  	case DESNO: {*x = zx[0] + 1; *y = zy[0]; 			break;}
  	case DOLE: {*x = zx[0]; 		 *y = zy[0] + 1; 	break;}
  	case LEVO: {*x = zx[0] - 1; *y = zy[0]; 			break;}
  }
}

int UKolizijiSaZidom(int x, int y)
{
  return (x == 1) || (x == 80) || (y == 2) || (y == 25);
}

int UKolizijiSaRepom(int x, int y)
{
	int i;
  zx[N + 1] = x;
  zy[N + 1] = y;
  i = 1;
  while ((x != zx[i]) || (y != zy[i])) i = i + 1;
  return i <= N;
}

void PomeriZmiju()
{
  int i;
  int x, y;

  IzracunajPolozajGlave(&x, &y);
 	//xy(20, 50); printf("N %d, sx %d, sy %d, x %d, y %d", N, sx, sy, x, y);
  if (UKolizijiSaZidom(x, y) || UKolizijiSaRepom(x, y))
  {
    kraj = 1;
    xy(x, y);
    printf("X");
  }
  else if ((x == sx) && (y == sy)) 
  {
    // pojeo zvezdu
    xy(zx[0], zy[0]); printf("O");
    xy(x, y); printf("@");
    N = N + 1;
    for (i = N; i >= 1; i--)
    {
      zx[i] =zx[i-1];
      zy[i] =zy[i-1];
      //xy(49, 26 + i); printf("N %d, zxi %d, zyi %d, x %d, y %d", N, zx[i], zy[i], x, y);
    }
    zx[0] = x;
    zy[0] = y;
    Poeni = Poeni + 10;
    IspisiStatus();
    IzracunajZvezdu();
    xy(sx, sy); printf("*");
    Usporenje -= 5;
  }
  else
  {
    xy(zx[N], zy[N]); printf(" ");
    xy(zx[0], zy[0]); printf("O");
    xy(x, y); printf("@");
    for (i = N; i >= 1; i--)
    {
      zx[i] = zx[i-1];
      zy[i] = zy[i-1];
      //xy(5, 26 + i); printf("N %d, zxi %d, zyi %d, x %d, y %d", N, zx[i], zy[i], x, y);
    }
    zx[0] = x;
    zy[0] = y;
  }
}

int KrajIgre()
{
  int ch;
  int flop;

  ch = 0;
  flop = 1;
  while (ch != VK_ENTER)
  {
    xy(40, 1);
    if (flop) 
      printf("!!! KRAJ IGRE [ENTER]/ESC !!!");
    else
      printf("                              ");
    flop = !flop;
    ch = is_key_pressed();
    if (ch == VK_ESC)
    	return 1;
    delay(200);
  }
  xy(40, 1);
  printf("                                ");
  return 0;
}

int main()
{
	init_stdio();
	//current_video_mode = 0;
	//video_mode(0);
  color = 0;
  cls(color);

	while (1) 
	{
		Usporenje = 200;
	  Poeni = 0;
	  kraj = 0;
	  IscrtajOkvir();
	  IspisiStatus();
	  InicijalizujZmiju();
	  IscrtajZmiju();
	  IzracunajZvezdu();
	  xy(sx, sy); printf("*");
	  while (!kraj)
	  {
	      c = is_key_pressed();
	      if ((c == VK_UP_ARROW) && (smer != DOLE)) smer = GORE;
	      else if ((c == VK_LEFT_ARROW) && (smer != DESNO)) smer = LEVO;
	      else if ((c == VK_DOWN_ARROW) && (smer != GORE)) smer = DOLE;
	      else if ((c == VK_RIGHT_ARROW) && (smer != LEVO)) smer = DESNO;
        else if (c == VK_ESC) 
        {
          if (KrajIgre())
            return 0;
        }
	    	PomeriZmiju();
	    	delay(Usporenje);
	  }
	  if (KrajIgre())
	  	break;
	}
  //asm("mov.w r1, 1024\nmov.w r2, 1184\nmov.w r3, 9440\nblit\n");
}


