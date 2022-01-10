#include <consts.h>
#include <uart.h>
#include <string.h>


short int *UART_HANDLER_INSTR 	= (short int *)16	; // address of the IRQ#1 handler address first instruction (UART handler)
int *UART_HANDLER_ADDR				 	= (int *)18	; // address of the IRQ#1 handler address (UART handler)

unsigned short int *PORT_UART_RX_BYTE		= (unsigned short int *)(0x80000000 + 640)	; // port which contains received byte via UART (2147484288)
unsigned short int *PORT_UART_TX_BUSY	    = (unsigned short int *)(0x80000000 + 650)	; // port for checking if UART TX is busy (2147484298)
unsigned short int *PORT_UART_TX_SEND_BYTE	= (unsigned short int *)(0x80000000 + 660)	; // port for sending byte via UART (2147484308)

unsigned short int *PORT_LED		= (unsigned short int *)(0x80000000 + 670)	; // port LED


unsigned char received_byte;
int received_from_uart;

void send_uart(unsigned char b)
{
	unsigned short int busy;
    unsigned int count = 0;
    received_from_uart = 0;
    do 
    { 
        busy = *PORT_UART_TX_BUSY;
    } while (busy != 0);
    *PORT_UART_TX_SEND_BYTE = b; //send the byte to the SPI
}

int counter;
unsigned char buff[128];

void read_uart(unsigned char *buffer, int len)
{
	counter = 0;
    while (counter < len) 
    {
        asm("nop");
    }
    memcpy(buffer, buff, len);
}

void uart_irq_triggered()
{
	asm 
	(
		"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
	);
	
	buff[counter++] = *PORT_UART_RX_BYTE;
	asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\niret"
	);
}


void init_uart()
{
	*UART_HANDLER_INSTR 	= 1;
	*UART_HANDLER_ADDR 	= (int)&uart_irq_triggered;
}

