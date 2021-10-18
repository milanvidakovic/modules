#include <stdio.h>
#include <string.h>
#include <sprintf.h>
#include <consts.h>
#include <graphics.h>
#include <mouse.h>


#define BLACK  0x0
#define BLUE   0x1
#define GREEN  0x2
#define CYAN   0x3
#define RED    0x4
#define PURPLE 0x5
#define YELLOW 0x6
#define WHITE  0x7

#define BASE_Y 188
#define BOTTOM_LINE_Y 228

#define RED_THRESHOLD_0 27
#define PURPLE_THRESHOLD_0 35
#define YELLOW_THRESHOLD_0 60
#define CYAN_THRESHOLD_0 92
#define PURPLE_THRESHOLD_1 124
#define YELLOW_THRESHOLD_1 156
#define RED_THRESHOLD_1 188
#define CYAN_THRESHOLD_1 212
#define RED_THRESHOLD_2 220
#define CYAN_THRESHOLD_2 229

#define PLAYER_SPAWN_Y 212

#define MAIN_MENU_SCREEN 0
#define GET_READY_SCREEN 1
#define PLAY_SCREEN 2

#define TRUE 1
#define FALSE 0

#define DESTROY_BULLET_TIME 150

typedef struct {
	short addr;
	short x;
	short y;
	short transparent;
} hw_sprite;

typedef struct {
	short addr;
	short x;
	short y;
	short alive;
} sw_sprite;

hw_sprite *sprite_def = (hw_sprite *)128;
int sprite_addr = 512;
hw_sprite *player_bullet_def = (hw_sprite *)136;
int player_bullet_addr = 640; /*512 + 128*/

sw_sprite row_1_squid[11];
sw_sprite row_2_crab[11];
sw_sprite row_3_crab[11];
sw_sprite row_4_octopus[11];
sw_sprite row_5_octopus[11];
sw_sprite row_base[4];

char str[256];
char player_bullet_moving = 0;
int player_movement_skip_frame = 0;
int player_alive = 2;
int player_death_timer = 0;
int lives = 3;
int movement_step = 96;
int number_of_aliens = 55;
int current_step = 0;
char direction = 3;
int distance = 1;
int current_pl_expl_sprite = 0;

int score = 0;
int bonus_life_awarded = FALSE;
int high_score = 0;
int death_timer = 0;
int destroy_player_bullet_timer = 0;
int ufo_timer = 0;
int ufo_spawn_time = 0;
int ufo_death_timer = -1;
int ufo_alive = 0;
int ufo_skip_frame = 12;
int ufo_position_X = 0;
int ufo_direction = 3;
int ufo_score = 0;
int delay_ms = 2;

int alien_bullet_current_time = 0;
int alien_bullet_spawn_timer = 1150;

int vkp = 0, vkr = 0, old = 0;

int current_screen = MAIN_MENU_SCREEN;

int special_player_bullet = 23;
int current_player_bullet = 0;

int player_spawn_current_time = 0;
int player_spawn_timer = 1500;


//spawn_y dodajem da bi video da li je metak spawn-ovan u poslednjem row-u
//jer samo meci koji su se bas tu spawn-ovali moraju da ignorisu player-a
typedef struct {
	int x;
	int y;
	int spawn_y;
	int type;
	int sprite;
	int moving;
	int sprite_timer;
	int destroy_timer;
} sw_spr_alien_bullet;

sw_spr_alien_bullet alien_bullet[5];

short color_test[] = {
	0x1234, 0x5678 , //0
	0x1234, 0x5678 , //1
	0x1234, 0x5678 , //2
	0x1234, 0x5678 , //3
	0x1234, 0x5678 , //4
	0x1234, 0x5678 , //5
	0x1234, 0x5678 , //6
	0x1234, 0x5678   //7
};

short squid0[] = {
   0x0007, 0x7000  , //0
   0x0077, 0x7700  , //1
   0x0777, 0x7770  , //2
   0x7707, 0x7077  , //3
   0x7777, 0x7777  , //4
   0x0070, 0x0700  , //5
   0x0707, 0x7070  , //6
   0x7070, 0x0707    //7
};

short squid1[] = {
   0x0007, 0x7000  , //0
   0x0077, 0x7700  , //1
   0x0777, 0x7770  , //2
   0x7707, 0x7077  , //3
   0x7777, 0x7777  , //4
   0x0707, 0x7070  , //5
   0x7000, 0x0007  , //6
   0x0700, 0x0070    //7
};


short crab0[] = {
   0x0070, 0x0000, 0x7000  , //0
   0x7007, 0x0007, 0x0070  , //1
   0x7077, 0x7777, 0x7070  , //2
   0x7770, 0x7770, 0x7770  , //3
   0x7777, 0x7777, 0x7770  , //4
   0x0777, 0x7777, 0x7700  , //5
   0x0070, 0x0000, 0x7000  , //6
   0x0700, 0x0000, 0x0700    //7
};

short crab1[] = {
   0x0070, 0x0000, 0x7000  , //0
   0x0007, 0x0007, 0x0000  , //1
   0x0077, 0x7777, 0x7000  , //2
   0x0770, 0x7770, 0x7700  , //3
   0x7777, 0x7777, 0x7770  , //4
   0x7077, 0x7777, 0x7070  , //5
   0x7070, 0x0000, 0x7070  , //6
   0x0007, 0x7077, 0x0000    //7
};

short octopus0[] = {
   0x0000, 0x7777, 0x0000  , //0
   0x0777, 0x7777, 0x7770  , //1
   0x7777, 0x7777, 0x7777  , //2
   0x7770, 0x0770, 0x0777  , //3
   0x7777, 0x7777, 0x7777  , //4
   0x0007, 0x7007, 0x7000  , //5
   0x0077, 0x0770, 0x7700  , //6
   0x7700, 0x0000, 0x0077    //7
};

short octopus1[] = {
   0x0000, 0x7777, 0x0000  , //0
   0x0777, 0x7777, 0x7770  , //1
   0x7777, 0x7777, 0x7777  , //2
   0x7770, 0x0770, 0x0777  , //3
   0x7777, 0x7777, 0x7777  , //4
   0x0077, 0x7007, 0x7700  , //5
   0x0770, 0x0770, 0x0770  , //6
   0x0077, 0x0000, 0x7700    //7
};

short ufo[] = {
   0x0000, 0x0777, 0x7770, 0x0000  , //0
   0x0007, 0x7777, 0x7777, 0x7000  , //1
   0x0077, 0x7777, 0x7777, 0x7700  , //2
   0x0770, 0x7707, 0x7077, 0x0770  , //3
   0x7777, 0x7777, 0x7777, 0x7777  , //4
   0x0077, 0x7007, 0x7007, 0x7700  , //5
   0x0007, 0x0000, 0x0000, 0x7000  , //6
   0x0000, 0x0000, 0x0000, 0x0000    //7
};

/*
short plane2[] = {													                    
   0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, //0 
   0x0000, 0x0004, 0x4000, 0x0000, 0x0000, 0x0004, 0x4000, 0x0000, //1 
   0x0000, 0x0004, 0x4000, 0x0000, 0x0000, 0x0004, 0x4000, 0x0000, //2 
   0x0000, 0x0004, 0x4000, 0x0000, 0x0000, 0x0004, 0x4000, 0x0000, //3 
   0x0000, 0x0044, 0x4400, 0x0000, 0x0000, 0x0044, 0x4400, 0x0000, //4 
   0x0000, 0x0044, 0x4400, 0x0000, 0x0000, 0x0044, 0x4400, 0x0000, //5 
   0x0000, 0x0444, 0x4440, 0x0000, 0x0000, 0x0444, 0x4440, 0x0000, //6 
   0x0000, 0x4444, 0x4444, 0x0000, 0x0000, 0x4444, 0x4444, 0x0000, //7 
   0x0004, 0x4444, 0x4444, 0x4000, 0x0004, 0x4444, 0x4444, 0x4000, //8 
   0x0044, 0x4444, 0x4444, 0x4400, 0x0044, 0x4444, 0x4444, 0x4400, //9 
   0x0400, 0x0044, 0x4400, 0x0040, 0x0400, 0x0044, 0x4400, 0x0040, //10
   0x0000, 0x0044, 0x4400, 0x0000, 0x0000, 0x0044, 0x4400, 0x0000, //11
   0x0000, 0x0044, 0x4400, 0x0000, 0x0000, 0x0044, 0x4400, 0x0000, //12
   0x0000, 0x0444, 0x4440, 0x0000, 0x0000, 0x0444, 0x4440, 0x0000, //13
   0x0000, 0x4440, 0x0444, 0x0000, 0x0000, 0x4440, 0x0444, 0x0000, //14
   0x0004, 0x4400, 0x0044, 0x4000, 0x0004, 0x4400, 0x0044, 0x4000  //15
};
*/

short base[] = {
   0x0000, 0x7777, 0x7777, 0x7777, 0x7777, 0x0000  , //0
   0x0007, 0x7777, 0x7777, 0x7777, 0x7777, 0x7000  , //1
   0x0077, 0x7777, 0x7777, 0x7777, 0x7777, 0x7700  , //2
   0x0777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7770  , //3
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //4
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //5
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //6
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //7
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //8
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //9
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //10
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //11
   0x7777, 0x7770, 0x0000, 0x0000, 0x0777, 0x7777  , //12
   0x7777, 0x7700, 0x0000, 0x0000, 0x0077, 0x7777  , //13
   0x7777, 0x7000, 0x0000, 0x0000, 0x0007, 0x7777  , //14
   0x7777, 0x7000, 0x0000, 0x0000, 0x0007, 0x7777  , //15
};

short ship[] = {
   0x0000, 0x0070, 0x0000, 0x0000  , //0
   0x0000, 0x0777, 0x0000, 0x0000  , //1
   0x0000, 0x0777, 0x0000, 0x0000  , //2
   0x0777, 0x7777, 0x7777, 0x0000  , //3
   0x7777, 0x7777, 0x7777, 0x7000  , //4
   0x7777, 0x7777, 0x7777, 0x7000  , //5
   0x7777, 0x7777, 0x7777, 0x7000  , //6
   0x7777, 0x7777, 0x7777, 0x7000    //7
};

short ship_explosion0[] = {
	0x0007, 0x0000, 0x0000, 0x0700 , //0
	0x7000, 0x0070, 0x0007, 0x7007 , //1
	0x0007, 0x0000, 0x7700, 0x0000 , //2
	0x0000, 0x0070, 0x0000, 0x0070 , //3
	0x0700, 0x7077, 0x0077, 0x0007 , //4
	0x0070, 0x0007, 0x7700, 0x0700 , //5
	0x0007, 0x7777, 0x7777, 0x0000 , //6
	0x0077, 0x0777, 0x7777, 0x0070   //7
};

short ship_explosion1[] = {
	0x0000, 0x0070, 0x0000, 0x0000 , //0
	0x0000, 0x0000, 0x0007, 0x0000 , //1
	0x0000, 0x0070, 0x7070, 0x0000 , //2
	0x0007, 0x0070, 0x0000, 0x0000 , //3
	0x0000, 0x0007, 0x7077, 0x0000 , //4
	0x0700, 0x0707, 0x7070, 0x7000 , //5
	0x0007, 0x7777, 0x7770, 0x0700 , //6
	0x0077, 0x7777, 0x7777, 0x0707   //7
};

short player_bullet[] = {
	0x7000, 0x0000  , //0
	0x7000, 0x0000  , //1
	0x7000, 0x0000  , //2
	0x0000, 0x0000    //3
};

short bottom_line[] = {
	0x7777, 0x7777, 0x7777, 0x7777  //0
};


short alien_death[] = {
	0x0000, 0x7000, 0x7000, 0x0000  , //0
	0x0700, 0x0707, 0x0007, 0x0000  , //1
	0x0070, 0x0000, 0x0070, 0x0000  , //2
	0x0007, 0x0000, 0x0700, 0x0000  , //3
	0x7700, 0x0000, 0x0007, 0x7000  , //4
	0x0007, 0x0000, 0x0700, 0x0000  , //5
	0x0070, 0x0707, 0x0070, 0x0000  , //6`
	0x0700, 0x7000, 0x7007, 0x0000  , //7
};

short player_bullet_explosion[] = {
	0x7000, 0x7007  , //0
	0x0070, 0x0070  , //1
	0x0777, 0x7770  , //2
	0x7777, 0x7777  , //3
	0x7777, 0x7777  , //4
	0x0777, 0x7770  , //5
	0x0070, 0x0700  , //6
	0x7007, 0x0007    //7
};

short alien_bullet_explosion[] = {
	0x0070, 0x0000  , //0
	0x7000, 0x7000  , //1
	0x0077, 0x0700  , //2
	0x0777, 0x7000  , //3
	0x7077, 0x7000  , //4
	0x0777, 0x7700  , //5
	0x7077, 0x7000  , //6
	0x0707, 0x0700  , //7
};


short alien_bullet0_sprite0[] = {
	0x7000, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0070, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x7000, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0070, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet0_sprite1[] = {
	0x0700, 0x0000  , //0
	0x0070, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x7000, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0070, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet0_sprite2[] = {
	0x0070, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x7000, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0070, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x7000, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet0_sprite3[] = {
	0x0700, 0x0000  , //0
	0x7000, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0070, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x7000, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet1_sprite0[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x7700, 0x0000  , //2
	0x0770, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x7700, 0x0000  , //5
	0x0770, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet1_sprite1[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet1_sprite2[] = {
	0x0770, 0x0000  , //0
	0x7700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0770, 0x0000  , //3
	0x7700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite0[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x7770, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite1[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x7770, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite2[] = {
	0x7770, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite3[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x7770, 0x0000  , //6
	0x0000, 0x0000    //7
};

short ufo_explosion[] = {
	0x0070, 0x0707, 0x0000, 0x0070, 0x7007, 0x0000  , //0
	0x0007, 0x0000, 0x0000, 0x7700, 0x0070, 0x0000  , //1
	0x7070, 0x0077, 0x7700, 0x0770, 0x0000, 0x0000  , //2
	0x0000, 0x0777, 0x7777, 0x0077, 0x7007, 0x0000  , //3
	0x0000, 0x7770, 0x7070, 0x7007, 0x7700, 0x0000  , //4
	0x0070, 0x0077, 0x7770, 0x0077, 0x0000, 0x7000  , //5
	0x7000, 0x0007, 0x0700, 0x0770, 0x0070, 0x0000  , //6
	0x0070, 0x0070, 0x0070, 0x0007, 0x0000, 0x0000    //7
};

void copy_player_bullet_def()
{	
	short * p = (short *)player_bullet_addr;

	for (int i = 0; i < 4*2; i++)
	{
		*p = player_bullet[i];
		p+=2;
	}
}

short set_short_color(short s, short color)
{
	/*
		(s & 0x0FFF) != s
		NIJE ISTO STO I
		s & 0x0FFF != s
	*/
	short new_color = 0x0000;
	switch(color)
	{
		case BLUE:
			new_color = 0x1000;
			break;
		case GREEN:
			new_color = 0x2000;
			break;
		case CYAN:
			new_color = 0x3000;
			break;
		case RED:
			new_color = 0x4000;
			break;
		case PURPLE:
			new_color = 0x5000;
			break;
		case YELLOW:
			new_color = 0x6000;
			break;
		case WHITE:
			new_color = 0x7000;
			break;
		default:
			new_color = 0x0000;
			break;
	}
	short s_new = 0x0000;
	if((s & 0x0FFF) != s)
	{
		s_new += new_color;		
	}
	if((s & 0xF0FF) != s)
	{
		s_new += new_color >> 4;		
	}
	if((s & 0xFF0F) != s)
	{
		s_new += new_color >> 8;		
	}
	if((s & 0xFFF0) != s)
	{
		s_new += new_color >> 12;		
	}
	return s_new;
}

short change_color_depending_on_threshold(short s, int s_y)
{
	if(s_y >= CYAN_THRESHOLD_2)
		return set_short_color(s, CYAN);
	else if(s_y >= RED_THRESHOLD_2)
		return set_short_color(s, RED);
	else if(s_y >= CYAN_THRESHOLD_1)
		return set_short_color(s, CYAN);
	else if(s_y >= RED_THRESHOLD_1)
		return set_short_color(s, RED);
	else if(s_y >= YELLOW_THRESHOLD_1)
		return set_short_color(s, YELLOW);
	else if(s_y >= PURPLE_THRESHOLD_1)
		return set_short_color(s, PURPLE);
	else if(s_y >= CYAN_THRESHOLD_0)
		return set_short_color(s, CYAN);
	else if(s_y >= YELLOW_THRESHOLD_0)
		return set_short_color(s, YELLOW);
	else if(s_y >= PURPLE_THRESHOLD_0)
		return set_short_color(s, PURPLE);
	else if(s_y >= RED_THRESHOLD_0)
		return set_short_color(s, RED);
	else
		return set_short_color(s, WHITE); 
}

void change_sprite_color(int y, int width, int height, short *bitmap)
{
	int shorts_per_row = width / 4;
	for (int i = 0; i < height; i++)
		for (int j = 0; j < shorts_per_row; j++) 
			bitmap[i*shorts_per_row + j] = change_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
}

void copy_sprite_def()
{
	short * p = (short *)sprite_addr;
	
	for (int i = 0; i < 8*4; i++)
	{
		*p = ship[i];
		p++;
	}
}


short draw_bitmap_test(int x, int y, int width, int height, short *bitmap)
{
	short *p1 = (short *)(1024 + y * 160 + x/2);
	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);
		int shorts_per_row = width / 4;
		for (int j = 0; j < shorts_per_row; j++) 
		{
			bitmap[i*shorts_per_row + j] = change_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
			switch (x % 4)
			{
				case 0:
					*p2 = bitmap[i*shorts_per_row + j];
					p2++;
					break;
				case 1: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 2: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 3: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
			}
		}
	}
	return *p1;
}

short move_bitmap_test(int x, int y, int width, int height, short *bitmap, int direction, int distance)
{
	int x2;
	int y2;
	int shorts_per_row = width / 4;
	switch (direction)
	{
		case 3:
			x2 = x-distance;
			y2 = y;
			break;
		case 9:
			x2 = x+distance;
			y2 = y;
			break;
		default:
			//case 6 or case 18
			x2 = x;
			y2 = y-8;
			break;
	}
	short *p1 = (short *)(1024 + y * 160 + x/2);
	short *p1_previous = (short *)(1024 + y2 * 160 + x2/2);

	if(direction == 6 || direction == 18)
	{
		for (int i = 0; i < height; i++)
		{
			short *p2_previous = p1_previous + (i * 80);
			for (int j = 0; j < shorts_per_row; j++) 
			{
				switch (x2 % 4)
				{
					case 0:
						*p2_previous = 0;
						p2_previous++;
						break;
					default: 
						*p2_previous = 0;
						*(p2_previous+1) = 0;
						p2_previous++;
						break;
				}
			}
		}
	}

	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);

		if(direction == 3 || direction == 9)
		{
			short *p2_previous = p1_previous + (i * 80);
			for (int j = 0; j < shorts_per_row; j++) 
			{
				switch (x2 % 4)
				{
					case 0:
						*p2_previous = 0;
						p2_previous++;
						break;
					default: 
						*p2_previous = 0;
						*(p2_previous+1) = 0;
						p2_previous++;
						break;
				}
			}
		}

		for (int j = 0; j < shorts_per_row; j++) 
		{
			bitmap[i*shorts_per_row + j] = change_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
			//bitmap[i*shorts_per_row + j] = set_short_color(bitmap[i*shorts_per_row + j], RED);
			switch (x % 4)
			{
				case 0:
					*p2 = bitmap[i*shorts_per_row + j];
					p2++;
					break;
				case 1: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 2: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 3: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
			}
		}
	}
	return *p1;
}

short clear_bitmap_test(int x, int y, int width, int height)
{
	short *p1 = (short *)(1024 + y * 160 + x/2);
	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);
		int shorts_per_row = width / 4;
		for (int j = 0; j < shorts_per_row; j++) 
		{
			switch (x % 4)
			{
				case 0:
					*p2 = 0x0000;
					p2++;
					break;
				case 1: 
					*p2 = 0x0000;
					*(p2+1) = 0x0000;
					p2++;
					break;
				case 2: 
					*p2 = 0x0000;
					*(p2+1) = 0x0000;
					p2++;
					break;
				case 3: 
					*p2 = 0x0000;
					*(p2+1) = 0x0000;
					p2++;
					break;
			}
		}
	}
	return *p1;
}

short leftmost_alien_X()
{
	short leftmost = 300;
	for(int i = 0; i < 11; i++)
	{
		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
		{
			return row_1_squid[i].x;
		}
		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
		{
			return row_2_crab[i].x;
		}
		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
		{
			return row_3_crab[i].x;
		}
		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
		{
			return row_4_octopus[i].x;
		}
		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
		{
			return row_5_octopus[i].x;
		}
	}
}

short rightmost_alien_X()
{
	short rightmost = 0;
	for(int i = 10; i >= 0; i--)
	{
		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
		{
			return row_1_squid[i].x;
		}
		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
		{
			return row_2_crab[i].x;
		}
		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
		{
			return row_3_crab[i].x;
		}
		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
		{
			return row_4_octopus[i].x;
		}
		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
		{
			return row_5_octopus[i].x;
		}
	}
}

short lowest_alien_Y()
{
	short lowest = 0;
	for(int i = 10; i >= 0; i--)
	{
		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
		{
			return row_5_octopus[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
		{
			return row_4_octopus[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
		{
			return row_3_crab[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
		{
			return row_2_crab[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
		{
			return row_1_squid[i].y;
		}
	}
}

void increase_alien_speed()
{
	int movement_step_previous = movement_step;
	int current_step_multiplier = current_step/movement_step;
	int current_step_remainder = current_step%movement_step;

	if(number_of_aliens < 6)
		movement_step -= 4;
	else if(number_of_aliens < 15)
		movement_step -= 3;
	else if(number_of_aliens < 23)
		movement_step -= 2;
	else
		movement_step--;

	current_step = (current_step_multiplier * movement_step) 
				 + ((movement_step * current_step_remainder)/movement_step_previous); 
}

void decrease_alien_bullet_spawn_timer()
{
	alien_bullet_spawn_timer = 600 + (number_of_aliens*10);
}

void draw_score() {
	clear_bitmap_test(20, 20, 45, 10);
	if(score < 10)
		sprintf(str, "0000%d", score);
	else if(score < 100)
		sprintf(str, "000%d", score);
	else if(score < 1000)
		sprintf(str, "00%d", score);
	else if(score < 10000)
		sprintf(str, "0%d", score);
	else
		sprintf(str, "%d", score);
	draw(20, 20, WHITE, str);
}

void draw_high_score() {
	clear_bitmap_test(112, 20, 45, 10);
	if(high_score < 10)
		sprintf(str, "0000%d", high_score);
	else if(high_score < 100)
		sprintf(str, "000%d", high_score);
	else if(high_score < 1000)
		sprintf(str, "00%d", high_score);
	else if(high_score < 10000)
		sprintf(str, "0%d", high_score);
	else
		sprintf(str, "%d", high_score);
	draw(112, 20, GREEN, str);
}

void update_high_score_if_lower_than_score()
{
	if(high_score < score)
	{
		high_score = score;
		draw_high_score();
	}
}

void draw_lives() {
	clear_bitmap_test(20, 229, 60, 10);
	sprintf(str,"%d", lives);
	draw(20, 230, YELLOW, str);
	for(int i = 0; i < lives-1; i++)
		draw_bitmap_test(32 + 16 * i, 229, 16, 8, ship);
}

void set_ufo_score()
{
	if(current_player_bullet == special_player_bullet)
		ufo_score = 300;
	else
		ufo_score = ((rand() % 3) + 1) * 50;
}

void check_player_bullet_collision_with_alien() {
	
	if(ufo_alive == 2
	&& (player_bullet_def->x >= ufo_position_X && player_bullet_def->x <= ufo_position_X + 15)
	&& (player_bullet_def->y <= 35 + 7 && player_bullet_def->y >= 35 - 2))
	{
		clear_bitmap_test(ufo_position_X, 35, 16, 8);
		draw_bitmap_test(ufo_position_X, 35, 24, 8, ufo_explosion);
		player_bullet_def -> addr = 0;
		player_bullet_moving = 0;
		ufo_alive = 1;
		ufo_death_timer = 0;
		set_ufo_score();
		return;
	}
	for(int i = 0; i < 11; i++) {
		if(row_5_octopus[i].alive == 2 
		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
		{
			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
			draw_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
			player_bullet_def -> addr = 0;
			player_bullet_moving = 0;
			row_5_octopus[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_4_octopus[i].alive == 2
		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
		{
			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
			draw_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
			player_bullet_def -> addr = 0;
			player_bullet_moving = 0;
			row_4_octopus[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_3_crab[i].alive == 2
		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
		{
			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
			draw_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
			player_bullet_def -> addr = 0;
			player_bullet_moving = 0;
			row_3_crab[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_2_crab[i].alive == 2
		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
		{
			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
			draw_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
			player_bullet_def -> addr = 0;
			player_bullet_moving = 0;
			row_2_crab[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_1_squid[i].alive == 2
		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
		{
			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
			draw_bitmap_test(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
			player_bullet_def -> addr = 0;
			player_bullet_moving = 0;
			row_1_squid[i].alive = 1;
			death_timer += 4;
			break;
		}
	}
}


int position_is_not_clear(int x, int y)
{
	short *p1 = (short *)(1024 + y * 160 + x/2);
	switch (x % 4)
	{
		case 0:
			if((*p1 & 0x0FFF) == *p1)
			{
				return 0;
			}
			break;
		case 1:
			if((*p1 & 0xF0FF) == *p1)
			{
				return 0;
			} 
			break;
		case 2:
			if((*p1 & 0xFF0F) == *p1)
			{
				return 0;
			}  
			break;
		case 3:
			if((*p1 & 0xFFF0) == *p1)
			{
				return 0;
			}  
			break;
	}
	return 1;
}


void clear_bitmap_with_specific_shape(int x, int y, int width, int height, short *bitmap)
{
	short *p1 = (short *)(1024 + y * 160 + x/2);
	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);
		int shorts_per_row = width / 4;
		for (int j = 0; j < shorts_per_row; j++) 
		{
			bitmap[i*shorts_per_row + j] = change_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
			switch (x % 4)
			{
				case 0:
					*p2 = bitmap[i*shorts_per_row + j] ^ ((*p2) | bitmap[i*shorts_per_row + j]);
					p2++;
					break;
				case 1: 
					first = (bitmap[i*shorts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 4));
					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 2: 
					first = (bitmap[i*shorts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 8));
					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 3: 
					first = (bitmap[i*shorts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 12));
					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
			}
		}
	}
}

void draw_bitmap_with_clear_background(int x, int y, int width, int height, short *bitmap)
{
	short *p1 = (short *)(1024 + y * 160 + x/2);
	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);
		int shorts_per_row = width / 4;
		for (int j = 0; j < shorts_per_row; j++) 
		{
			bitmap[i*shorts_per_row + j] = change_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
			switch (x % 4)
			{
				case 0:
					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
					p2++;
					break;
				case 1: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 2: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 3: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
			}
		}
	}
}

void check_player_bullet_collision_with_base()
{
	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	{
		draw_bitmap_with_clear_background(player_bullet_def->x - 3, player_bullet_def->y - 3, 8, 8, player_bullet_explosion);
		player_bullet_def -> addr = 0;
		player_bullet_moving = 0;
		destroy_player_bullet_timer += 2;
	}

}

void destroy_alien_bullet(int alien_bullet_index)
{
	draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x-2, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet_explosion);
	//alien_bullet_def -> addr = 0;
	alien_bullet[alien_bullet_index].moving = -1;
	alien_bullet[alien_bullet_index].destroy_timer += 2;
}

void destroy_player()
{
	player_alive = 1;
	player_death_timer = 0;
	sprite_def->addr = 0;
	draw_bitmap_test(sprite_def->x, sprite_def->y, 16, 8, ship_explosion0);
}

void clear_current_alien_bullet_sprite(int alien_bullet_index)
{
	if(alien_bullet[alien_bullet_index].type == 0)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
			break;
		case 1:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
			break;
		case 2:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
			break;
		default:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
			break;	
		}
	}
	else if (alien_bullet[alien_bullet_index].type == 1)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
			break;
		case 1:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;
		case 2:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
			break;
		default:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;	
		}
	}
	else
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
			break;
		case 1:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
			break;
		case 2:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
			break;
		default:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
			break;	
		}
	}
}

void check_alien_bullet_collision_with_player(int alien_bullet_index)
{
	if(alien_bullet[alien_bullet_index].y > sprite_def->y-6
	&& alien_bullet[alien_bullet_index].y-6 < sprite_def->y+9
	&& alien_bullet[alien_bullet_index].x > sprite_def->x-2
	&& alien_bullet[alien_bullet_index].x < sprite_def->x+15)
	{
		clear_current_alien_bullet_sprite(alien_bullet_index);
		destroy_alien_bullet(alien_bullet_index);
		lives--;
		destroy_player();
	}
}

void check_alien_bullet_collision_with_environment(int alien_bullet_index)
{	
	if(alien_bullet[alien_bullet_index].y >= BOTTOM_LINE_Y - 6)
	{
		clear_current_alien_bullet_sprite(alien_bullet_index);
		destroy_alien_bullet(alien_bullet_index);
	}
	else if(alien_bullet[alien_bullet_index].y >= BASE_Y - 6)
	{
		for(int i = 0; i <= 2; i++)
		{
			for(int j = 0; j <= 2; j++)
			{
				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
				{
					clear_current_alien_bullet_sprite(alien_bullet_index);
					destroy_alien_bullet(alien_bullet_index);
					break;
				}
			}
		}
	
	}

}

void check_player_bullet_collision_with_alien_bullet(int alien_bullet_index)
{
	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	{
		draw_bitmap_with_clear_background(player_bullet_def->x - 3, player_bullet_def->y - 3, 8, 8, player_bullet_explosion);
		
		player_bullet_def -> addr = 0;
		player_bullet_moving = 0;
		destroy_player_bullet_timer += 2;

		clear_current_alien_bullet_sprite(alien_bullet_index);
		destroy_alien_bullet(alien_bullet_index);

	}
}

void destroy_alien()
{
	death_timer = 0;
	for(int i = 0; i <= 11; i++)
	{
		if(row_5_octopus[i].alive == 1)
		{
			row_5_octopus[i].alive = 0;
			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 4, 8);
			clear_bitmap_test(row_5_octopus[i].x+1, row_5_octopus[i].y, 12, 8);
			number_of_aliens--;
			increase_alien_speed();
			decrease_alien_bullet_spawn_timer();
			score += 10;
			draw_score();
			break;
		}
		if(row_4_octopus[i].alive == 1)
		{
			row_4_octopus[i].alive = 0;
			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 4, 8);
			clear_bitmap_test(row_4_octopus[i].x+1, row_4_octopus[i].y, 12, 8);
			number_of_aliens--;
			increase_alien_speed();
			decrease_alien_bullet_spawn_timer();
			score += 10;
			draw_score();
			break;
		}
		if(row_3_crab[i].alive == 1)
		{
			row_3_crab[i].alive = 0;
			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 4, 8);
			clear_bitmap_test(row_3_crab[i].x+1, row_3_crab[i].y, 12, 8);
			number_of_aliens--;
			increase_alien_speed();
			decrease_alien_bullet_spawn_timer();
			score += 20;
			draw_score();
			break;
		}
		if(row_2_crab[i].alive == 1)
		{
			row_2_crab[i].alive = 0;
			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 4, 8);
			clear_bitmap_test(row_2_crab[i].x+1, row_2_crab[i].y, 12, 8);
			number_of_aliens--;
			increase_alien_speed();
			score += 20;
			draw_score();
			break;
		}
		if(row_1_squid[i].alive == 1)
		{
			row_1_squid[i].alive = 0;
			clear_bitmap_test(row_1_squid[i].x-2, row_1_squid[i].y, 4, 8);
			clear_bitmap_test(row_1_squid[i].x-1, row_1_squid[i].y, 12, 8);
			number_of_aliens--;
			increase_alien_speed();
			score += 30;
			draw_score();
			break;
		}
	}
}

void spawn_ufo()
{
	ufo_alive = 2;
	ufo_direction = rand() % 2;
	if(ufo_direction == 0)
		ufo_position_X = 12;
	else
		ufo_position_X = 216;
	draw_bitmap_test(ufo_position_X, 35, 16, 8, ufo);
}

void move_ufo()
{
	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	if(ufo_direction == 0 && ufo_position_X >= 216)
	{
		clear_bitmap_test(ufo_position_X-2, 35, 16, 8);
		ufo_alive = 0;
		ufo_position_X = 0;
	}
	else if(ufo_direction == 1 && ufo_position_X <= 12)
	{
		clear_bitmap_test(ufo_position_X+2, 35, 16, 8);
		ufo_alive = 0;
		ufo_position_X = 0;
	}
	else
	{
		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
	}
	ufo_skip_frame = 18;
}

void draw_alien_bullet_sprite(int alien_bullet_index)
{
	if(alien_bullet[alien_bullet_index].sprite == 3)
		alien_bullet[alien_bullet_index].sprite = 0;
	else
		alien_bullet[alien_bullet_index].sprite++;

	alien_bullet[alien_bullet_index].sprite_timer = 0;

	if(alien_bullet[alien_bullet_index].type == 0)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
			break;
		case 2:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
			break;	
		}
	}
	else if (alien_bullet[alien_bullet_index].type == 1)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;
		case 2:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;	
		}
	}
	else
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
			break;
		case 2:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
			break;	
		}
	}
}



void spawn_alien_bullet(int alien_bullet_index)
{
	int alien_column = rand() % 11;
	int bullet_y = 0;
	int bullet_x = 0;
	int current_row = 0;
	int row_empty = 0;
	int empty_rows[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
	do
	{
		alien_column = rand() % 11;
		for(int i = 0; i < 11; i++)
		{
			if(empty_rows[i] == alien_column)
			{
				row_empty = 1;
				break;
			}
			else if(empty_rows[i] == -1)
			{
				row_empty = 0;
				break;	
			}
		}
		if(row_empty == 0)
		{
			if(row_5_octopus[alien_column].alive != 0)
			{
				bullet_x = row_5_octopus[alien_column].x + 6;
				bullet_y = row_5_octopus[alien_column].y + 16;
			}
			else if(row_4_octopus[alien_column].alive != 0)
			{
				bullet_x = row_4_octopus[alien_column].x + 6;
				bullet_y = row_4_octopus[alien_column].y + 16;
			}
			else if(row_3_crab[alien_column].alive != 0)
			{
				bullet_x = row_3_crab[alien_column].x + 5;
				bullet_y = row_3_crab[alien_column].y + 16;
			}
			else if(row_2_crab[alien_column].alive != 0)
			{
				bullet_x = row_2_crab[alien_column].x + 5;
				bullet_y = row_2_crab[alien_column].y + 16;
			}
			else if(row_1_squid[alien_column].alive != 0)
			{
				bullet_x = row_1_squid[alien_column].x + 4;
				bullet_y = row_1_squid[alien_column].y + 16;
			}
			else
			{
				row_empty = 1;
				empty_rows[current_row] = alien_column;
				current_row++;
			}
		}
	} while(row_empty == 1 && current_row != 11 /*Hvala!!*/);

	alien_bullet[alien_bullet_index].x = bullet_x;
	alien_bullet[alien_bullet_index].y = bullet_y;
	alien_bullet[alien_bullet_index].spawn_y = bullet_y;
	alien_bullet[alien_bullet_index].type = rand() % 3;
	alien_bullet[alien_bullet_index].sprite_timer = 0;
	alien_bullet[alien_bullet_index].moving++;
	switch(alien_bullet[alien_bullet_index].type)
	{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
			//copy_alien_bullet_def(alien_bullet0_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
			//copy_alien_bullet_def(alien_bullet1_sprite0);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
			//copy_alien_bullet_def(alien_bullet2_sprite0);
			break;	
	}
}

void change_player_explosion_sprite()
{
	current_pl_expl_sprite^=1;
	clear_bitmap_test(sprite_def->x, sprite_def->y, 16, 8);
	if(current_pl_expl_sprite == 1)
		draw_bitmap_test(sprite_def->x, sprite_def->y, 16, 8, ship_explosion1);
	else
		draw_bitmap_test(sprite_def->x, sprite_def->y, 16, 8, ship_explosion0);
}

void clear_player_and_redraw_lives()
{
	clear_bitmap_test(sprite_def->x, sprite_def->y, 16, 8);
	draw_lives();
}

void spawn_player()
{
	sprite_def->addr = (short)sprite_addr;
	sprite_def->x = 40;
	sprite_def->y = PLAYER_SPAWN_Y;
	sprite_def->transparent = 0;
	player_alive = 2;
}

void check_alien_bullet_timer(int alien_bullet_index)
{
	if(alien_bullet[alien_bullet_index].destroy_timer >= DESTROY_BULLET_TIME)
	{
		clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x-2, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet_explosion);
		if(alien_bullet[alien_bullet_index].x-2 <= 32 + 16 * (lives-1))
			draw_lives();
		alien_bullet[alien_bullet_index].destroy_timer = 0;
		alien_bullet[alien_bullet_index].moving = 0;
		alien_bullet[alien_bullet_index].sprite = 0;
	}
	else if(alien_bullet[alien_bullet_index].destroy_timer > 0 && alien_bullet[alien_bullet_index].destroy_timer < DESTROY_BULLET_TIME)
	{
		alien_bullet[alien_bullet_index].destroy_timer += 2;
	}
}

void display_game_over_text()
{
	int letter_delay_ms = 128;
	int game_over_text_x_pos = 95;
	int game_over_text_y_pos = YELLOW_THRESHOLD_0 - 16;
	sprintf(str, "G");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GA");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAM");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms * 3);
	sprintf(str, "GAME O");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME OV");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME OVE");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME OVER");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
}

void set_current_and_special_bullets_if_current_is_higher_than_special()
{
	if(current_player_bullet > special_player_bullet)
	{	
		current_player_bullet = 1;
		special_player_bullet = 15;
	}
}

void set_ufo_spawn_time()
{
	// * 2 zato sto se ufo_timer povecava svakog trenutka za 2
	ufo_spawn_time = 8000 + ((rand() % 5000) * 2);
}

void switch_to_main_menu_screen()
{
	vkp = 0, vkr = 0, old = 0;

	int clear_text_time = 1000;
	int ship_score_x_pos = 82;
	sprintf(str, "SCORE");
	draw(20, 5, CYAN, str);
	sprintf(str, "HI-SCORE");
	draw(100, 5, RED, str);
	draw_score();
	draw_high_score();
	sprintf(str, "*SCORE ADVANCE TABLE*");
	draw(50, CYAN_THRESHOLD_0 + 16, CYAN, str);

	draw_bitmap_test(ship_score_x_pos, PURPLE_THRESHOLD_1 + 16, 16, 8, ufo);
	sprintf(str, "= ? MYSTERY");
	draw(ship_score_x_pos + 16, PURPLE_THRESHOLD_1 + 16, PURPLE, str);

	draw_bitmap_test(ship_score_x_pos, YELLOW_THRESHOLD_1, 8, 8, squid0);
	sprintf(str, "= 30 POINTS");
	draw(ship_score_x_pos + 16, YELLOW_THRESHOLD_1, YELLOW, str);

	draw_bitmap_test(ship_score_x_pos, YELLOW_THRESHOLD_1 + 16, 12, 8, crab0);
	sprintf(str, "= 20 POINTS");
	draw(ship_score_x_pos + 16, YELLOW_THRESHOLD_1 + 16, YELLOW, str);

	draw_bitmap_test(ship_score_x_pos, RED_THRESHOLD_1, 12, 8, octopus0);
	sprintf(str, "= 20 POINTS");
	draw(ship_score_x_pos + 16, RED_THRESHOLD_1, RED, str);

	while(1)
	{
		if(clear_text_time == 2000)
		{
			clear_bitmap_test(55, YELLOW_THRESHOLD_0 + 16, 160, 8);
			clear_text_time = 0;
		}
		else if(clear_text_time == 1000)
		{
			sprintf(str, "PRESS SPACE TO START");
			draw(55, YELLOW_THRESHOLD_0 + 16, YELLOW, str);
		}
		
		clear_text_time += 2;

		vkp = is_key_pressed();
		vkr = is_key_released();

		if ((vkp == 0) && (vkr == 0))
		{
			vkp = old;
		}
		if ((vkr != 0) && (vkr == old))
		{
			vkp = 0;
			old = 0;
		}
		
		switch (vkp)
		{
		case VK_SPACE:
			current_screen = GET_READY_SCREEN;
			cls(0);
			return;
		}
		if (vkp != 0 && vkp != VK_SPACE)
			old = vkp;

		delay(delay_ms);
	}
}

void switch_to_get_ready_screen()
{
	score = 0;
	bonus_life_awarded = FALSE;
	draw_score();

	int clear_text_time = 100;
	int change_screen_timer = 0;

	sprintf(str, "SCORE");
	draw(20, 5, CYAN, str);
	sprintf(str, "HI-SCORE");
	draw(100, 5, RED, str);
	draw_high_score();
	sprintf(str, "GET READY!");
	draw(95, CYAN_THRESHOLD_0 + 16, CYAN, str);

	while(1)
	{
		if(clear_text_time == 200)
		{
			clear_bitmap_test(20, 20, 45, 10);
			clear_text_time = 0;
		}
		else if(clear_text_time == 100)
		{
			draw_score();
		}

		if(change_screen_timer == 3000)
		{
			current_screen = PLAY_SCREEN;
			cls(0);
			return;
		}

		clear_text_time += 2;
		change_screen_timer += 2;

		delay(delay_ms);
	}
}

void switch_to_play_screen()
{

	player_bullet_moving = 0;
	player_movement_skip_frame = 0;
	player_alive = 3;
	player_death_timer = 0;
	lives = 3;
	movement_step = 96;
	number_of_aliens = 55;
	current_step = 0;
	direction = 3;
	distance = 1;
	current_pl_expl_sprite = 0;

	death_timer = 0;
	destroy_player_bullet_timer = 0;
	ufo_timer = 0;
	set_ufo_spawn_time();
	ufo_death_timer = -1;
	ufo_alive = 0;
	ufo_skip_frame = 12;
	ufo_position_X = 0;
	ufo_direction = 3;
	ufo_score = 0;
	delay_ms = 2;

	alien_bullet_current_time = 0;
	alien_bullet_spawn_timer = 1150;

	special_player_bullet = 23;
	current_player_bullet = 0;

	player_spawn_current_time = 0;
	player_spawn_timer = 1500;

	int moveX = 1;
	//int moveY = 0;
	//int lef_mv_limit;
	//int right_mv_limit;

	vkp = 0, vkr = 0, old = 0;
	short int mouse_key, mouse_x, mouse_y, key;
	
	//sprite *test_sprite;
	int sprite_version = 1;

	init_mouse(sprite_def->x, sprite_def->y);
	
	change_sprite_color(PLAYER_SPAWN_Y, 16, 8, ship);
	copy_sprite_def();
	sprite_def->addr = 0;
	player_alive = 3;

	for(int i = 0; i < 5; i++)
	{
		alien_bullet[i].x = 0;
		alien_bullet[i].y = 0;
		alien_bullet[i].type = 2;
		alien_bullet[i].sprite = 0;
		alien_bullet[i].moving = 0;
		alien_bullet[i].sprite_timer = 0;
		alien_bullet[i].destroy_timer = 0;
	}

	for(int i = 0; i < 4; i++)
	{
		row_base[i].x = 40 + 48 * i;
		row_base[i].y = BASE_Y;
		row_base[i].addr = draw_bitmap_test(40 + 48 * i, BASE_Y, 24, 16, base);
		row_base[i].alive = 2;
	}

	for(int i = 0; i < 15; i++)
		draw_bitmap_test(16 * i, BOTTOM_LINE_Y, 16, 1, bottom_line);

	sprintf(str, "SCORE");
	draw(20, 5, CYAN, str);
	sprintf(str, "HI-SCORE");
	draw(100, 5, RED, str);
	draw_score();
	draw_high_score();

	draw_lives();

	for(int i = 0; i < 11; i++)
	{
		delay(16);
		row_5_octopus[i].x = 40 + 16 * i + moveX;
		row_5_octopus[i].y = 124;
		row_5_octopus[i].addr = draw_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8, octopus0);
		row_5_octopus[i].alive = 2;
	}
	for(int i = 0; i < 11; i++)
	{
		delay(16);
		row_4_octopus[i].x = 40 + 16 * i + moveX;
		row_4_octopus[i].y = 108;
		row_4_octopus[i].addr = draw_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8, octopus0);
		row_4_octopus[i].alive = 2;
	}
	for(int i = 0; i < 11; i++)
	{
		delay(16);
		row_3_crab[i].x = 40 + 16 * i + moveX;
		row_3_crab[i].y = 92;
		row_3_crab[i].addr = draw_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8, crab0);
		row_3_crab[i].alive = 2;
	}
	for(int i = 0; i < 11; i++)
	{
		delay(16);
		row_2_crab[i].x = 40 + 16 * i + moveX;
		row_2_crab[i].y = 76;
		row_2_crab[i].addr = draw_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8, crab0);
		row_2_crab[i].alive = 2;
	}
	for(int i = 0; i < 11; i++)
	{
		delay(16);
		row_1_squid[i].x = 40 + 16 * i + moveX;
		row_1_squid[i].y = 60;
		row_1_squid[i].addr = draw_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8, squid0);
		row_1_squid[i].alive = 2;
	}
	delay(16);


	while (1)
	{

		//UFO CHECKS

		if(ufo_death_timer != -1)
		{
			ufo_death_timer+=2;
			if(ufo_death_timer == 1200)
			{
				ufo_death_timer = -1;
				ufo_alive = 0;
				clear_bitmap_test(ufo_position_X, 35, 24, 8);
				ufo_position_X = 0;
				score += ufo_score;
				draw_score();
					
			} 
			else if (ufo_death_timer == 600)
			{
				clear_bitmap_test(ufo_position_X, 35, 24, 8);
				sprintf(str, "%d", ufo_score);
				draw(ufo_position_X, 35, PURPLE, str);
			}
		}

		if(ufo_alive == 2)
		{
			if(ufo_skip_frame == 0)
				move_ufo();
			else
				ufo_skip_frame--;
		}

		for(int i = 0; i < 4; i++)
			check_alien_bullet_timer(i);
		

		//PLAYER BULLET CHECKS

		if(destroy_player_bullet_timer >= DESTROY_BULLET_TIME)
		{
			clear_bitmap_with_specific_shape(player_bullet_def->x - 3, player_bullet_def->y - 3, 8, 8, player_bullet_explosion);
			destroy_player_bullet_timer = 0;
		}
		else if(destroy_player_bullet_timer > 0 && destroy_player_bullet_timer < DESTROY_BULLET_TIME)
		{
			destroy_player_bullet_timer += 2;
		}

		if(player_bullet_moving == 1)
		{
			for(int i = 0; i < 5; i++)
			{
				if(alien_bullet[i].moving > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
					check_player_bullet_collision_with_alien_bullet(i);
			}
		}
		if(player_bullet_moving == 1)
		{
			check_player_bullet_collision_with_alien();
		}
		if(player_bullet_moving == 1)
		{
			check_player_bullet_collision_with_base();
		}
		if(player_bullet_moving == 1)
		{
			if(player_bullet_def -> y <= 30)
			{
				draw_bitmap_with_clear_background(player_bullet_def->x - 3, player_bullet_def->y - 3, 8, 8, player_bullet_explosion);
				player_bullet_def -> addr = 0;
				player_bullet_moving = 0;
				destroy_player_bullet_timer += 2;
			}
			else
			{
				if(delay_ms == 2)
					player_bullet_def->y -= 1;
				else if(delay_ms == 4)
					player_bullet_def->y -= 2;
				else
					player_bullet_def->y -= 4;

				change_sprite_color(player_bullet_def->y, 8, 4, player_bullet);
				copy_player_bullet_def();
				
				/*
				for(int i = 0; i < 3; i++)
				{
					short * p = (short *)player_bullet_def->addr;
					//change_color_depending_on_threshold(player_bullet_def->addr)[i*2], int s_y);
				}
				*/
			}
		}

		//ALIEN BULLET CHECK

		for(int i = 0; i < 5; i++)
		{
			if(alien_bullet[i].moving > 0)
			{
				/*
				if(alien_bullet.y > 220)
				{
					alien_bullet.y = 120;
					alien_bullet.moving = 0;
					//alien_bullet_def -> addr = 0;
				}
				else
				*/
				if((delay_ms == 2 && alien_bullet[i].moving % 32 == 0)
				|| (delay_ms == 4 && alien_bullet[i].moving % 16 == 0)
				|| (delay_ms == 8 && alien_bullet[i].moving % 8 == 0))
				{

					//clear_bitmap_with_specific_shape(alien_bullet.x, alien_bullet.y, 8, 8, alien_bullet_explosion);
					clear_current_alien_bullet_sprite(i);
					alien_bullet[i].y += 5;
					check_alien_bullet_collision_with_environment(i);
					if(alien_bullet[i].moving > 0)
						draw_alien_bullet_sprite(i);
					//change_alien_bullet_sprite();
				}
				if(alien_bullet[i].moving > 0)
				{
					alien_bullet[i].moving %= 32;
					alien_bullet[i].moving++;
				}
			}
		}

		//PLAYER SPAWN CHECK

		if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
			spawn_player();
		else
			player_spawn_current_time+=2;

		if(player_alive == 2 || player_alive == 3)
		{
			if(number_of_aliens == 0)
			{
				delay(1000);
				cls(0);
				return;
			}
			
			if(number_of_aliens >= 8)
			{
				if(ufo_timer == ufo_spawn_time)
				{
					spawn_ufo();
					ufo_timer = 0;
					set_ufo_spawn_time();
				}
				else
				{
					ufo_timer+=2;
				}
			}


			if(death_timer >= 600)
			{
				destroy_alien();
			}
			else if(death_timer == 0)
			{
				if(current_step == movement_step)
				{
					for(int i = 0; i < 11; i++) {
						if(row_5_octopus[i].alive == 0)
						{
							continue;
						}
						else
						{
							switch(direction)
							{
								case 3:
									row_5_octopus[i].x += distance;
									break;
								case 9:
									row_5_octopus[i].x -= distance;
									break;
								default:
									row_5_octopus[i].y += 8;
							}
							//row_5_octopus[i].x = 40 + 16 * i + moveX;
							//row_5_octopus[i].y = 120 + moveY;

							if(sprite_version == 0)
							{
								row_5_octopus[i].addr = move_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8, octopus0, direction, distance);
								//move_bitmap_test(40 + 16 * i + moveX, 120 + moveY, 12, 8, octopus0, direction, distance);
							}
							else
							{
								row_5_octopus[i].addr = move_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8, octopus1, direction, distance);
								//move_bitmap_test(40 + 16 * i + moveX, 120 + moveY, 12, 8, octopus1, direction, distance);
							}	
						}
					}
				}
				else if(current_step == movement_step * 2)
				{
					for(int i = 0; i < 11; i++) {
						if(row_4_octopus[i].alive == 0)
						{
							continue;
						}
						else
						{
							switch(direction)
							{
								case 3:
									row_4_octopus[i].x += distance;
									break;
								case 9:
									row_4_octopus[i].x -= distance;
									break;
								default:
									row_4_octopus[i].y += 8;
							}
							//row_4_octopus[i].x = 40 + 16 * i + moveX;
							//row_4_octopus[i].y = 120 + moveY;
							if(sprite_version == 0)
							{
								row_4_octopus[i].addr = move_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8, octopus0, direction, distance);
								//move_bitmap_test(40 + 16 * i + moveX, 105 + moveY, 12, 8, octopus0, direction, distance);
							}
							else
							{
								row_4_octopus[i].addr = move_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8, octopus1, direction, distance);
								//move_bitmap_test(40 + 16 * i + moveX, 105 + moveY, 12, 8, octopus1, direction, distance);
							}
						}
					}
				}
				else if(current_step == movement_step * 3)
				{
					for(int i = 0; i < 11; i++) {
						if(row_3_crab[i].alive == 0)
						{
							continue;
						}
						else
						{
							switch(direction)
							{
								case 3:
									row_3_crab[i].x += distance;
									break;
								case 9:
									row_3_crab[i].x -= distance;
									break;
								default:
									row_3_crab[i].y += 8;
							}
							if(sprite_version == 0)
							{
								row_3_crab[i].addr = move_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8, crab0, direction, distance);
							}
							else
							{
								row_3_crab[i].addr = move_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8, crab1, direction, distance);
							}
						}
					}
				}
				else if(current_step == movement_step * 4)
				{
					for(int i = 0; i < 11; i++) {
						if(row_2_crab[i].alive == 0)
						{
							continue;
						}
						else
						{
							switch(direction)
							{
								case 3:
									row_2_crab[i].x += distance;
									break;
								case 9:
									row_2_crab[i].x -= distance;
									break;
								default:
									row_2_crab[i].y += 8;
							}
							if(sprite_version == 0)
							{
								row_2_crab[i].addr = move_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8, crab0, direction, distance);
							}
							else
							{
								row_2_crab[i].addr = move_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8, crab1, direction, distance);
							}
						}
					}
				}
				else if(current_step == movement_step * 5)
				{
					for(int i = 0; i < 11; i++) {
						if(row_1_squid[i].alive == 0)
						{
							continue;
						}
						else
						{
							switch(direction)
							{
								case 3:
									row_1_squid[i].x += distance;
									break;
								case 9:
									row_1_squid[i].x -= distance;
									break;
								default:
									row_1_squid[i].y += 8;
							}
							if(sprite_version == 0)
							{
								row_1_squid[i].addr = move_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8, squid0, direction, distance);
							}
							else
							{
								row_1_squid[i].addr = move_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8, squid1, direction, distance);
							}
						}
					}

					if(sprite_version == 0)
						sprite_version++;
					else
						sprite_version = 0;

					current_step=0;
					if(direction == 18) {
						direction = 3;
					} else if(leftmost_alien_X() <= 12 && direction != 18) {
						direction = 18;
					} else if(direction == 6) {
						direction = 9;
					} else if(rightmost_alien_X() >= 224 && direction != 6) {
						direction = 6;
					}

					if(number_of_aliens == 1 
					&& direction == 9
					&& distance != 1)
					{
						distance = 1;
					}
					else if(number_of_aliens == 1 
					&& direction == 3  
					&& distance != 2 
					&& leftmost_alien_X() % 2 == 0)
					{
						distance = 2;
					}
					else if(number_of_aliens < 32 
					&& distance != 2 
					&& leftmost_alien_X() % 2 == 0)
					{
						distance = 2;
					}


				}

				current_step++;

				if(lowest_alien_Y() >= PLAYER_SPAWN_Y)
				{
					lives = 0;
					destroy_player();
				}
			}
			else
			{
				death_timer+=4;
			}


			short int status =  mouse_status(&mouse_x, &mouse_y, &mouse_key);
			if (status) {
				sprite_def->x = mouse_x;
				if (sprite_def->x > 224)
					sprite_def->x = 224;
				key = mouse_key;
				
			}
			
			vkp = is_key_pressed();
			vkr = is_key_released();
			if ((vkp == 0) && (vkr == 0))
			{
				vkp = old;
			}
			if ((vkr != 0) && (vkr == old))
			{
				vkp = 0;
				old = 0;
			}
			if (vkp != 0 && vkp != VK_SPACE)
				old = vkp;

			if(player_movement_skip_frame == 0)
				player_movement_skip_frame = 3;
			else
				player_movement_skip_frame--;

			if(player_alive == 2)
			{
				switch (vkp)
				{
					case VK_LEFT_ARROW:
						if(player_movement_skip_frame == 0)
						{
							sprite_def->x -= 1;
							if (sprite_def->x < 0)
								sprite_def->x = 0;
						}
						break;
					case VK_RIGHT_ARROW:
						if(player_movement_skip_frame == 0)
						{
							sprite_def->x += 1;
							if (sprite_def->x > 224)
								sprite_def->x = 224;
						}
						break;
					case VK_SPACE:
						if(player_bullet_moving == 0 && death_timer == 0 && destroy_player_bullet_timer == 0)
						{
							player_bullet_def->addr = (short)player_bullet_addr;
							player_bullet_def->x = sprite_def->x + 6;
							player_bullet_def->y = 204;
							player_bullet_def->transparent = 0;
							player_bullet_moving = 1;
							current_player_bullet++;

							set_current_and_special_bullets_if_current_is_higher_than_special();
						}
						break;

					case VK_ESC:
						//sprite_def->addr = 0;
						//cls();	
						//de_init_mouse();
						return;
				}

				for(int i = 0; i < 5; i++)
					if(alien_bullet[i].moving > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
						check_alien_bullet_collision_with_player(i);



				if(alien_bullet_current_time >= alien_bullet_spawn_timer)
				{
					for(int i = 0; i < 5; i++)
					{
						if(alien_bullet[i].moving == 0)
						{
							spawn_alien_bullet(i);
							alien_bullet_current_time = 0;
							break;
						}
					}
				}
				else
				{
					alien_bullet_current_time += 2;
				}
				
			}
		}
		else if(player_alive == 1)
		{
			player_death_timer+=2;
			if(player_death_timer < 990 && player_death_timer % 90 == 0)
			{
				change_player_explosion_sprite();
			}
			else if(player_death_timer == 990)
			{
				clear_player_and_redraw_lives();
				if(lives <= 0)
				{
					player_alive = 0;
				}

			}
			else if(player_death_timer == 3000)
			{
				player_alive = 0;
			}
		}
		else if(player_alive == 0)
		{
			if(lives > 0)
				spawn_player();
			else
			{
				update_high_score_if_lower_than_score();
				display_game_over_text();
				delay(3000);
				cls(0);
				de_init_mouse();
				current_screen = MAIN_MENU_SCREEN;
				return;
			}
		}
		if(bonus_life_awarded == FALSE && score >= 1500)
		{
			lives++;
			bonus_life_awarded = TRUE;
			draw_lives();
		}
		delay(delay_ms);
	}
}

int main()
{

	init_stdio();
	
	video_mode(1);

	cls(0);	

	copy_player_bullet_def();

	while(1)
	{
		switch(current_screen)
		{
			case MAIN_MENU_SCREEN:
				switch_to_main_menu_screen();
				break;
			case GET_READY_SCREEN:
				switch_to_get_ready_screen();
				break;
			case PLAY_SCREEN:
				switch_to_play_screen();
				break;
				
		}
	}

	return 0;
}
