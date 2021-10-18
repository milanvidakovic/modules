#include <mouse.h>

unsigned short int *PORT_PS2_MOUSE  	= (unsigned short int *)(0x80000000 + 800)	; // port for PS2 mouse
unsigned int *PORT_MOUSE_STRUCT_ADDR	= (unsigned int *)(0x80000000 + 810)	; // port of the mouse data structure

short int *PS2_MOUSE_RAW_HANDLER_INSTR 	= (short int *)72	; // address of the IRQ#5 handler address first instruction (PS2 mouse raw handler)
int *PS2_MOUSE_RAW_HANDLER_ADDR			= (int *)74	; // address of the IRQ#5 handler address (PS2 mouse raw handler)

typedef struct {
    short int PS2_MOUSE_X;      //= (short int *)96	; // address of the X coordinate of the mouse
    short int PS2_MOUSE_Y;      //= (short int *)98	; // address of the Y coordinate of the mouse
    short int PS2_MOUSE_KEY;    //= (short int *)100	; // address of the mouse key status
    short int PS2_MOUSE_STATUS; //= (short int *)102	; // 0 - no changes, 1 - something happened
} MOUSE_DATA;

int mouse_byte[3];
int old_mouse_byte[3];
int mouse_counter;
MOUSE_DATA mouse_data ;

void ps2_mouse_irq_triggered()
{
    asm 
	(
		"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
	);

	mouse_byte[mouse_counter++] = *PORT_PS2_MOUSE;
	if (mouse_counter == 3)
		mouse_counter = 0;

    if ((mouse_counter == 0) && (mouse_byte[0] != old_mouse_byte[0] ||
			mouse_byte[1] != old_mouse_byte[1] || 
			mouse_byte[2] != old_mouse_byte[2])) {

        old_mouse_byte[0] = mouse_byte[0];
        old_mouse_byte[1] = mouse_byte[1];
        old_mouse_byte[2] = mouse_byte[2];

        if (mouse_byte[1] > 128) {
            // negative x -> left
            mouse_data.PS2_MOUSE_X += - (256 - mouse_byte[1]);
        } else {
            mouse_data.PS2_MOUSE_X += mouse_byte[1];
        }
        if (mouse_byte[2] > 128) {
            // negative y -> up
            mouse_data.PS2_MOUSE_Y += (256 - mouse_byte[2]);
        } else {
            mouse_data.PS2_MOUSE_Y += - mouse_byte[2];
        }

   		if (mouse_data.PS2_MOUSE_X < 0)
			mouse_data.PS2_MOUSE_X = 0;				
		if (mouse_data.PS2_MOUSE_X > 319-16)
			mouse_data.PS2_MOUSE_X = 319-16;
		if (mouse_data.PS2_MOUSE_Y < 0)
			mouse_data.PS2_MOUSE_Y = 0;
		if (mouse_data.PS2_MOUSE_Y > 239-16)
			mouse_data.PS2_MOUSE_Y = 239-16;

        mouse_data.PS2_MOUSE_KEY = mouse_byte[0];

        mouse_data.PS2_MOUSE_STATUS = 1;
    } 

	asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\niret\n"
	);
}

short int mouse_status(short int *x, short int *y, short int *key) {
    short int retVal = mouse_data.PS2_MOUSE_STATUS;
    if (retVal == 1) {
        mouse_data.PS2_MOUSE_STATUS = 0;
    }
    *x = mouse_data.PS2_MOUSE_X;
    *y = mouse_data.PS2_MOUSE_Y;
    *key = mouse_data.PS2_MOUSE_KEY;
    return retVal;
}

void init_mouse(short int x, short int y) {
    mouse_data.PS2_MOUSE_STATUS = 0;
    mouse_data.PS2_MOUSE_X = x;
    mouse_data.PS2_MOUSE_Y = y;
    mouse_data.PS2_MOUSE_KEY = 0;

	mouse_counter = 0;

	*PS2_MOUSE_RAW_HANDLER_INSTR 	= 1;
	*PS2_MOUSE_RAW_HANDLER_ADDR 	= (int)&ps2_mouse_irq_triggered;

    *PORT_MOUSE_STRUCT_ADDR = (int)&mouse_data;
}

void de_init_mouse() {
	mouse_counter = 0;
	*PS2_MOUSE_RAW_HANDLER_INSTR 	= 0;
	*PS2_MOUSE_RAW_HANDLER_ADDR 	= 0;
    *PORT_MOUSE_STRUCT_ADDR = 0;
}
