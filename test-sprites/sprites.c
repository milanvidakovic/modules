#include <stdio.h>
#include <string.h>
#include <sprintf.h>
#include <consts.h>
#include <graphics.h>
#include <mouse.h>

#define RED 	0x4
#define GREEN 	0x2
#define BLUE 	0x1
#define WHITE 	0x7

typedef struct {
	short addr; // address of the sprite bitmap
	short x;	// x coordinate of the sprite
	short y;	// y coordinate of the sprite
	short transparent;	// transparent color
} sprite;

/* Sprite structure for the first sprite starts at the address of 128. */
sprite *sprite_def;
/* Sprite structure for the second sprite starts at the address of 128 + 8 == 136. */
sprite *sprite_def1 = (sprite *)(128 + 0*8);
sprite *sprite_def2 = (sprite *)(128 + 1*8);
sprite *sprite_def3 = (sprite *)(128 + 2*8);
sprite *sprite_def4 = (sprite *)(128 + 3*8);
sprite *sprite_def5 = (sprite *)(128 + 4*8);
/* Sprite bitmap must be below address 1024. Since we have four sprites, each one occupying 128 bytes, 
it means that we can place all four of them from address of 512 up to 1024. */
int sprite_addr1 = (384 + 0*2*4*16); //512 - 128;
int sprite_addr2 = (384 + 1*2*4*16);
int sprite_addr3 = (384 + 2*2*4*16);
int sprite_addr4 = (384 + 3*2*4*16);
int sprite_addr5 = (384 + 4*2*4*16);

/* This is the sprite definition. Each sprite is 16x16 pixels, with a transparent color. */
short plane[] = {
   0x0000, 0x0000, 0x0000, 0x0000  , //0
   0x0000, 0x0002, 0x2000, 0x0000  , //1
   0x0000, 0x0002, 0x2000, 0x0000  , //2
   0x0000, 0x0002, 0x2000, 0x0000  , //3
   0x0000, 0x0022, 0x2200, 0x0000  , //4
   0x0000, 0x0022, 0x2200, 0x0000  , //5
   0x0000, 0x0222, 0x2220, 0x0000  , //6
   0x0000, 0x2222, 0x2222, 0x0000  , //7
   0x0002, 0x2222, 0x2222, 0x2000  , //8
   0x0022, 0x2222, 0x2222, 0x2200  , //9
   0x0200, 0x0022, 0x2200, 0x0020  , //10
   0x0000, 0x0022, 0x2200, 0x0000  , //11
   0x0000, 0x0022, 0x2200, 0x0000  , //12
   0x0000, 0x0222, 0x2220, 0x0000  , //13
   0x0000, 0x2220, 0x0222, 0x0000  , //14
   0x0002, 0x2200, 0x0022, 0x2000    //15
};

/* This bitmap is not a sprite bitmap. It is rather a bitmap that is being drawn on the screen using the draw_bitmap() function. */
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


/* This function copies sprite bitmap from the code to the address below 1024, as needed by the GPU. */
void copy_sprite_def(int spr_def)
{
	short *p = (short *)spr_def;
	for (int i = 0; i < 16*4; i++)
	{
		*p = plane[i];
		p++;
	}
}

/* Draws a bitmap at a given x, y coordinate, with a given width and height. */
void draw_bitmap(int x, int y, int width, int height, short *bitmap)
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
}

void init_sprite(sprite *spr, short addr, int x, int y) 
{
	spr->addr = addr;
	spr->x = x;
	spr->y = y;
	spr->transparent = 0;
}
void de_init_sprite(sprite *spr) 
{
	int addr = spr->addr;
	memset((short *)addr, 0, 2*4*16);
	memset(spr, 0, sizeof(sprite));
}

void de_init_sprites() 
{
	de_init_sprite(sprite_def1);
	de_init_sprite(sprite_def2);
	de_init_sprite(sprite_def3);
	de_init_sprite(sprite_def4);
	de_init_sprite(sprite_def5);
}

int main()
{
	char str[500];

	init_stdio();

	video_mode(1);

	cls(0);	

	circle(100, 100, 50, BLUE);

	int start = get_millis();
	/* The blit instuction is ultra-fast memory copy instruction. It is almost hundred times faster than memcpy function.
	 * This line below copies the blue circle to a new location - the top of the screen.
	 */
	asm("push r1\npush r2\n push r3\nmov.w r1, 1024\nmov.w r2, 9024\nmov.w r3, 30000\nblit\npop r3\npop r2\npop r1\n");
	//memcpy((char *)1024, (char *)9024, 30000;

	sprintf(str, "millis: %d", get_millis() - start);
	draw(10, 10, GREEN, str);

	copy_sprite_def(sprite_addr1);copy_sprite_def(sprite_addr2); copy_sprite_def(sprite_addr3);copy_sprite_def(sprite_addr4);copy_sprite_def(sprite_addr5);
	init_sprite(sprite_def1, sprite_addr1, 50, 50);init_sprite(sprite_def2, sprite_addr2, 70, 50);init_sprite(sprite_def3, sprite_addr3, 90, 50);init_sprite(sprite_def4, sprite_addr4, 110, 50);init_sprite(sprite_def5, sprite_addr5, 130, 50);
	
	sprite_def = sprite_def1;
	init_mouse(sprite_def->x, sprite_def->y);

	for (int i = 0; i < 5; i++)
		draw_bitmap(200 + (i * 20), 150, 16, 16, plane);
	for (int i = 0; i < 5; i++)
		draw_bitmap(203 + (i * 20), 170, 16, 16, plane);

	for (int i = 0; i < 5; i++)
		draw_bitmap(0 + (i * 40), 85, 32, 16, plane2);

	int vkp = 0, vkr = 0, old = 0;
	short int mouse_key, mouse_x, mouse_y, key;
	while (1)
	{	
		short int status =  mouse_status(&mouse_x, &mouse_y, &mouse_key);
		if (status) {
			sprite_def->x = mouse_x;
			sprite_def->y = mouse_y;
			key = mouse_key;
			// We delete the previous text by copying the blank piece of screen over the text using the blit instruction.
			asm("mov.w r1, 4224\nmov.w r2, 33024\nmov.w r3, 1600\nblit\n");
			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
			draw(10, 20, RED, str);
		}
		
		vkp = is_key_pressed();
		vkr = is_key_released();
		if (vkp != VK_SPACE && vkr != VK_SPACE)
		{
			if ((vkp == 0) && (vkr == 0))
			{
				vkp = old;
			}
			if ((vkr != 0) && (vkr == old))
			{
				vkp = 0;
				old = 0;
			}
		} else 
		{
			vkp = old;
		}
		
		switch (vkp)
		{
		case VK_LEFT_ARROW:
			sprite_def->x -= 1;
			if (sprite_def->x < 0)
				sprite_def->x = 0;
			break;
		case VK_RIGHT_ARROW:
			sprite_def->x += 1;
			if (sprite_def->x > 319-16)
				sprite_def->x = 319-16;
			break;
		case VK_DOWN_ARROW:
			sprite_def->y += 1;
			if (sprite_def->y > 239-16)
				sprite_def->y = 239-16;
			break;
		case VK_UP_ARROW:
			sprite_def->y -= 1;
			if (sprite_def->y < 0)
				sprite_def->y = 0;
			break;
		case VK_ESC:
			de_init_sprites();
			cls(0);	
			de_init_mouse();
			return (0);
		case VK_F1:
			sprite_def = sprite_def1;
			break;
		case VK_F2:
			sprite_def = sprite_def2;
			break;
		case VK_F3:
			sprite_def = sprite_def3;
			break;
		case VK_F4:
			sprite_def = sprite_def4;
			break;
		case VK_F5:
			sprite_def = sprite_def5;
			break;
		}
		if (vkp != 0 && vkp != VK_SPACE)
			old = vkp;

		delay(15);
	}
	
	return 0;
}



