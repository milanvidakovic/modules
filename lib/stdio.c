#include <stdio.h>
#include <sprintf.h>
#include <consts.h>
#include <keyboard.h>
#include <string.h>
#include <fpga.h>
//#include <spi.h>
//#include <tcpip.h>
//#include <enc28j60.h>

int current_video_mode;
char *VIDEO = (char *)0x401;

int *PORT_KEYBOARD = (int *)(0x80000000 + 680); // port of the data
int *PORT_MILLIS   = (int *)(0x80000000 + 690); // current number of milliseconds counted so far

short int *PS2_HANDLER_INSTR 			= (short int *)24	; // address of the IRQ#2 handler address (raw PS/2 keyboard handler)
int *PS2_HANDLER_ADDR				 	= (int *)26	; // address of the IRQ#2 handler address (raw PS/2 keyboard handler)
short int *KEY_PRESSED_HANDLER_INSTR	= (short int *)32	; // address of the key pressed handler address (invoked from the IRQ2_ADDR handler)
int *KEY_PRESSED_HANDLER_ADDR			= (int *)34	; // address of the key pressed handler address (invoked from the IRQ2_ADDR handler)
short int *KEY_RELEASED_HANDLER_INSTR	= (short int *)40	; // address of the key released handler address (invoked from the IRQ2_ADDR handler)
int *KEY_RELEASED_HANDLER_ADDR			= (int *)42	; // address of the key released handler address (invoked from the IRQ2_ADDR handler)
short int *VIRTUAL_KEY_ADDR				= (short int*)48	; // address where the virtual key is placed

int gets_finished = 0;
int shift_pressed = 0;
int key_is_pressed = 0;
int vk_pressed, vk_released;
int key_is_released = 0;
int ctrl_c = 0;
int do_reset = 0;
int seed = 5;

int packet_counter = 0;

int r_seed = 19987;
int r_a = 11035;
int r_c = 12345;
int r_m = 32768;

int color = 0;

#define HISTORY_MAX 4
char _history[HISTORY_MAX][256];
int _history_idx = 0;
int _history_size = 0;

unsigned short int *PORT_VIDEO_MODE = (unsigned short int *)(0x80000000 + 1280)	; // port to set up video mode

#ifdef KERNEL
void video_mode(int m)
{
	*PORT_VIDEO_MODE = m;
	current_video_mode = m;
}
/*
int swap(int c) {
	switch (c) {
		case 1: return 4;
		case 2: return 2;
		case 4: return 1;
		case 3: return 6;
		case 5: return 5;
		case 6: return 3;
		case 0: return 0;
		case 7: return 7;
		default: return c;
	}
}
*/
void cls(int c) 
{
	int i;
	short *v;
	
	color = c;

	v = (short *)1024;
	if (current_video_mode == 0)
	{
		// text mode 80x60x8
		for (i = 0; i < 9600*2; i++)
		{
			v[i] = color << 8;  // swap
		}
	} else if (current_video_mode == 1) 
	{
		// 320x240x8
		for (i = 0; i < 9600*2; i++)
		{
			v[i] = color | (color<<4) | (color<<8) | (color<<12);
		}
	} else 
	{
		// current_video_mode == 2
		// 640x480x2
		for (i = 0; i < 9600*2; i++)
		{
			v[i] = (color)?0xffff:0;
		}
	}
	VIDEO = (char *)0x401;	
}
void blank_line(int v)
{
	int i, j;
	char * vid;
	
	vid = (char *)v;
	
	i = v;
	i -= 1024;
	i = i % 160;
	i = i / 2;
	i = i - 2;
	if (i < 0)
		j = 160 + i  - 2;
	else
		j = 160 - i - 2;
	for (; i < j; i++)
	{
		vid[i] = color;  // swap
	}
}

void scroll_up() 
{
	int i;
	int j;
	short *v;
	
	v = (short*)1024;
	/*
	for (i = 0; i < 59; i++)
	{
		for (j = 0; j < 40*2; j++)
		{
			v[i*40*2 + j] = v[(i+1)*40*2 + j];
		}
	}
	*/
	asm("mov.w r1, 1024\nmov.w r2, 1184\nmov.w r3, 9440\nblit\n");
	for (j = 0; j < 40*2; j++)
	{
		v[59*40*2 + j] = color << 8;  // swap
	}
}

void key_pressed() 
{
	int i;
	asm 
	(
		"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
	);

	i = *VIRTUAL_KEY_ADDR;
	vk_pressed = i;
	
	key_is_pressed = 1;
	
	if (i < 255) 
	{
		if ((ctrl_c == 1) && (i == 'C'))
		{
			ctrl_c = 2;
		}
		
		gets_finished = 1;
	} 
	else 
	{
		switch(i)
		{
			case VK_LEFT_CONTROL:
			case VK_RIGHT_CONTROL: 
				ctrl_c = 1;
				break;
			case VK_LEFT_ALT:
			case VK_RIGHT_ALT: 
				if (ctrl_c == 1)
					do_reset = 1;
				break;
			case VK_LEFT_SHIFT:
			case VK_RIGHT_SHIFT: 
				shift_pressed = 1;			
				break;
			case VK_BACKSPACE:
			case VK_LEFT_ARROW:
			case VK_RIGHT_ARROW:
			case VK_UP_ARROW:
			case VK_DOWN_ARROW:
			case VK_HOME:
			case VK_END:
			case VK_ESC:
			case VK_DELETE:
				if (i == VK_DELETE && do_reset == 1)
				{
					cls(color);
					short *p;
					for (p = (short *)8; p < (short *)128; p++) {
						*p = 0;
					}
					p = 0;
					*p = 1;
					int *inst = (int *)2;
					*inst = 39424;
					asm("j 0"); //reset();
				}
				gets_finished = 1;
				break;
		}
	}
	asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\niret"
	);
}

void key_released()
{
	int i;
	asm 
	(
		"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
	);
	
	key_is_released = 1;
	
	i = *VIRTUAL_KEY_ADDR;
	vk_released = i;
	if ((i == VK_LEFT_SHIFT) || (i == VK_RIGHT_SHIFT)) 
	{
		shift_pressed = 0;
	}
	else if ((i == VK_LEFT_CONTROL) || (i == VK_RIGHT_CONTROL)) 
	{
		ctrl_c = 0;
		do_reset = 0;
	}

	asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\niret"
	);
}

int vk_to_char(int vk)
{
	if (vk == 32)
		return vk;
	if ((vk >= 65) && (vk <= 90)) 
	{
		if (shift_pressed)
			return vk;
		else
			return vk + 32;
	} else
	{
		switch (vk)
		{
			case VK_0: if (!shift_pressed) return 48; else return 41;// 0, )!
			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
			case VK_2: if (!shift_pressed) return 50; else return 64;// 2, @
			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
			case VK_6: if (!shift_pressed) return 54; else return 94;// 6, ^
			case VK_7: if (!shift_pressed) return 55; else return 38;// 7, &
			case VK_8: if (!shift_pressed) return 56; else return 42;// 8, *
			case VK_9: if (!shift_pressed) return 57; else return 40;// 9, (
			
			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// `, ~
			case VK_MINUS:			if (!shift_pressed) return 45; else return 95;				// -, _
			case VK_EQUALS:	 		if (!shift_pressed) return  61; else return 43;				// =, +
		
			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	; //[, {
			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125;	// ], }
			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58; 		//;, :
			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 34	;				//', "
			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;	//\, |
			case VK_COMMA: 			if (!shift_pressed) return 44; else return 60;				// ,, <
			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 62;		// ., >
			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
			case VK_SLASH: 			if (!shift_pressed) return 47; else return 63;				// /, ?
			default:
				return 0;

		}
	}
}
void put_char(int c)
{
	int i, j;
	if (c == 10 || c == 13) 
	{
		i = (int)VIDEO;
		i = (i - 1024) / 160;
		i++;
		if (i == 60)
		{
			scroll_up();
			i = 59;
		}
		VIDEO = (char *)(1024 + (i * 160) - 1);
		VIDEO += 2;
		return;
	} else {
		i = (int)VIDEO;
		i = (i - 1024) / 160;
		if (i == 59) {
			j = (int)VIDEO;
			j = (j - 10463) / 2;
			if (j == 80)
			{
				scroll_up();
				VIDEO = (char*)10463;
			}
		}
	}
//	*VIDEO = c + 0xFF00;
	*VIDEO = c;
	*(VIDEO - 1) = color;  // swap
	VIDEO += 2;
}
int putchar(int c)
{
	put_char(c);
	return c;
}
void print_str(char *s)
{
	int i;
	int j = strlen(s);
	
	for (i = 0; i < j; i++) 
	{
		if (*s == 0)
			break;
		put_char(*s);
		s++;
	}
}
int printf(char* fmt, ...)
{
	char printf_dst[500];
	va_list args;
    va_start(args, fmt);
    vsprintf(printf_dst,fmt,args);
    print_str(printf_dst);
}
int puts(char *s)
{
	print_str(s);
	put_char(10);
}
int rand()
{
	int x, y;
	r_a = *PORT_MILLIS & 0x7fffffff;
	x = r_a * r_seed;
	x += r_c;
	y = x / r_m;
	r_seed = x % r_m;
	if (r_seed < 0)
		r_seed = -r_seed;
	return r_seed;
}
int should_break()
{
	if (ctrl_c == 2)
		return 1;
	return 0;
}
int getc()
{
	*VIRTUAL_KEY_ADDR = 0;
	key_is_pressed = 0;
	while (1) 
	{
		/*if ((packet_counter++) == 100) {
			packet_counter = 0;
			//ploop();
		}*/
		if (key_is_pressed == 1) 
		{
			key_is_pressed = 0;
			// return virtual key code
			return vk_pressed;
		}
	}
}
void toggle_cursor()
{
	char i;
	i = *(VIDEO - 1);
	i = i ^ 0xFF; 
	*(VIDEO - 1) = i;
}
char * gets(char *s) 
{
	int i, j, k, prev_video, start_video;
	int len;
	*VIRTUAL_KEY_ADDR = 0;
	shift_pressed = 0;
	
	start_video = (int)VIDEO;
	j = 0;
	len = strlen(s);
	if (len > 0)
	{
		prev_video = (int)VIDEO;
		print_str(s);
		j = len;
		//VIDEO = (char *)prev_video;
	}
	toggle_cursor();
	gets_finished = 0;
	while (1) 
	{
		
		if ((packet_counter++) == 100) {
			packet_counter = 0;
			//ploop();
		}

		if (gets_finished == 1) 
		{
			gets_finished = 0;
			i = vk_pressed;
			switch(i)
			{
				case VK_ESC:
					toggle_cursor();
					blank_line(start_video);
					s[0] = 0;
					len = 0;
					j = 0;
					VIDEO = (char *)start_video;
					toggle_cursor();
					break;
				case VK_ENTER:
					toggle_cursor();
					s[len] = 0;
					VIDEO += (len - j) * 2;
					put_char(13);
					
					if (strlen(s) > 0)
					{
						if (_history_size = HISTORY_MAX)
						{
							for (k = 0; k < HISTORY_MAX - 1; k++)
							{
								strcpy(_history[k], _history[k + 1]);
							}
							_history_size = HISTORY_MAX - 1;
						}
						strcpy(_history[_history_size], s);
						_history_idx = _history_size;
						_history_size++;
						
					}
					/*
					for (k = 0; k < 4; k++) 
					{
						printf("%s\n", _history[k]);
					}
					*/
					return s;
				case VK_UP_ARROW:
					if (_history_size == 0)
						break;
					toggle_cursor();
					blank_line(start_video);
					VIDEO = (char *)start_video;
					
					s[0] = 0;
					strcpy(s, _history[_history_idx]);
					len = strlen(s);
					j = strlen(s);
					print_str(s);

					_history_idx--;
					if (_history_idx < 0)
						_history_idx = 0;
					
					//VIDEO = (char *)start_video;
					toggle_cursor();
					break;
				case VK_DOWN_ARROW:
					if (_history_size == 0)
						break;
					toggle_cursor();
					blank_line(start_video);
					VIDEO = (char *)start_video;
					
					s[0] = 0;
					strcpy(s, _history[_history_idx]);
					len = strlen(s);
					j = strlen(s);
					print_str(s);

					_history_idx++;
					if (_history_idx == _history_size)
						_history_idx = _history_size - 1;
					
					//VIDEO = (char *)start_video;
					toggle_cursor();
					break;
				case VK_LEFT_ARROW:
					if (j > 0)
					{
						toggle_cursor();
						j--;
						VIDEO -= 2;
						toggle_cursor();
					}
					break;
				case VK_RIGHT_ARROW:
					if (s[j] != 0)
					{
						toggle_cursor();
						j++;
						VIDEO += 2;
						toggle_cursor();
					}
					break;
				case VK_HOME:
					toggle_cursor();
					VIDEO -= j*2;
					j = 0;
					toggle_cursor();
					break;
				case VK_END:
					// TODO: scroll if going beyond 80,60)
					toggle_cursor();
					VIDEO += (len-j)*2;
					j = len;
					toggle_cursor();
					break;
				case VK_DELETE:
					if (j < len)
					{
						toggle_cursor();
						prev_video = (int)VIDEO;
						for (k = j; k < len; k++)
						{
							s[k] = s[k+1];
							put_char(s[k]);
						}
						len--;
						VIDEO = (char *)prev_video;
						toggle_cursor();
					}
					break;
				case VK_BACKSPACE:
					if (j > 0)
					{
						if (j == len)
						{
							j--;
							len--;
							s[j] = 0;
							toggle_cursor();
							VIDEO -= 2;						
							*VIDEO = 0;
							toggle_cursor();
						} else 
						{
							// delete not from the end, but in between the beginning and the end
							toggle_cursor();
							VIDEO -= 2;
							prev_video = (int)VIDEO;
							for (k = j; k <= len; k++)
							{
								s[k-1] = s[k];
								put_char(s[k-1]);
							}
							j--;
							len--;
							VIDEO = (char *)prev_video;
							toggle_cursor();
						}
					}
					break;
				default:
					if (j == len)
					{
						s[j] = vk_to_char(i);
						s[j+1] = 0;
						toggle_cursor();
						put_char(s[j]);
						toggle_cursor();
						j++;
						len++;
					} else 
					{
						toggle_cursor();
						prev_video = (int)VIDEO;
						for (k = len; k >= j; k--)
						{
							s[k+1] = s[k];
						}						
						s[j] = vk_to_char(i);
						for (k = j; k <= len; k++)
						{
							put_char(s[k]);
						}
						j++;
						len++;
						VIDEO = (char *)(prev_video + 2);
						// TODO: scroll if going beyond 80,60)
						toggle_cursor();
					}
			}
		}
	}
	return s;
}
void init_stdio() 
{
	*PS2_HANDLER_INSTR 				= 1;
	*PS2_HANDLER_ADDR 				= (int)irq_triggered;
	*KEY_PRESSED_HANDLER_INSTR 		= 1;
	*KEY_PRESSED_HANDLER_ADDR 		= (int)&key_pressed;
	*KEY_RELEASED_HANDLER_INSTR 	= 1;
	*KEY_RELEASED_HANDLER_ADDR	 	= (int)&key_released;
	*VIRTUAL_KEY_ADDR = 0;
}
void delay(int millis)
{
	int t0 = get_millis();
	while ((get_millis() - t0) < millis ) {
		
	}
}
void xy(int x, int y)
{
		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
}
int get_millis()
{
	return *PORT_MILLIS & 0x7fffffff;
}
int is_key_pressed()
{
	//ploop();

	if (key_is_pressed) {
		key_is_pressed = 0;
		return vk_pressed;
	}
	return 0;
}
int is_key_released()
{
	//ploop();

	if (key_is_released) {
		key_is_released = 0;
		return vk_released;
	}
	return 0;
}

#else
void cls(int color) {
	asm("ld.w r0, [190000]\njr r0\n");
}
void put_char(int c) {
	asm("ld.w r0, [190004]\njr r0\n");
}
int printf(char* fmt, ...) {
	asm("ld.w r0, [190008]\njr r0\n");
}
int puts(char *s)
{
	asm("ld.w r0, [190012]\njr r0\n");
}
int rand()
{
	asm("ld.w r0, [190016]\njr r0\n");
}
int should_break()
{
	asm("ld.w r0, [190020]\njr r0\n");
}
int getc()
{
	asm("ld.w r0, [190024]\njr r0\n");
}
char * gets(char *s) 
{
	asm("ld.w r0, [190028]\njr r0\n");
}
void init_stdio() 
{
	asm("ld.w r0, [190032]\njr r0\n");
}
void delay(int millis)
{
	asm("ld.w r0, [190036]\njr r0\n");
}
void xy(int x, int y)
{
	asm("ld.w r0, [190040]\njr r0\n");
}
int get_millis()
{
	asm("ld.w r0, [190044]\njr r0\n");
}
int is_key_pressed()
{
	asm("ld.w r0, [190048]\njr r0\n");
}
int is_key_released()
{
	asm("ld.w r0, [190052]\njr r0\n");
}
void toggle_cursor()
{
	asm("ld.w r0, [190056]\njr r0\n");
}
int putchar(int c)
{
	asm("ld.w r0, [190060]\njr r0\n");
}
void video_mode(int m)
{
	asm("ld.w r0, [190064]\njr r0\n");
}
void scroll_up() {                                       // 190416
	asm("ld.w r0, [190416]\njr r0\n");
}
#endif
