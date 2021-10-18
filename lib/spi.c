#include <consts.h>
#include <spi.h>

#define SPI0 0
#define SPI1 1


unsigned short int *PORT_SPI_IN 			= (unsigned short int *)(0x80000000 + 700)	; // port which contains received byte via SPI
unsigned short int *PORT_SPI_OUT 			= (unsigned short int *)(0x80000000 + 710)	; // port for sending byte via SPI
unsigned short int *PORT_SPI_OUT_BUSY	= (unsigned short int *)(0x80000000 + 720)	; // port for sending byte via SPI

unsigned short int *PORT_SPI1_IN 			= (unsigned short int *)(0x80000000 + 750)	; // port which contains received byte via SPI
unsigned short int *PORT_SPI1_OUT 			= (unsigned short int *)(0x80000000 + 760)	; // port for sending byte via SPI
unsigned short int *PORT_SPI1_OUT_BUSY	= (unsigned short int *)(0x80000000 + 770)	; // port for sending byte via SPI

int received_byte;
int received_from_slave;

int received_byte1;
int received_from_slave1;

#ifdef KERNEL
void send_spi(int port, int b)
{
	int counter = 0;
	if (port == SPI0) {
		received_from_slave = 0;
		unsigned short int busy;
		do 
		{ 
			if (counter++ == 65535)
				return;
			busy = *PORT_SPI_OUT_BUSY;
		} while (busy);
		
		*PORT_SPI_OUT = b; //send the byte to the SPI
		/*		
		do 
		{ 
			if (counter++ == 65535)
				return;
			busy = *PORT_SPI_OUT_BUSY;
		} while (busy);
		*/
	}
	else if (port == SPI1) {
		received_from_slave1 = 0;
		unsigned short int busy1;
		do 
		{ 
			if (counter++ == 65535)
				return;
			busy1 = *PORT_SPI1_OUT_BUSY;
		} while (busy1);
		*PORT_SPI1_OUT = b; //send the byte to the SPI
		/*
		do 
		{ 
			if (counter++ == 65535)
				return;
			busy1 = *PORT_SPI1_OUT_BUSY;
		} while (busy1);
		*/
	}
}

int read_spi(int port)
{
	int counter = 0;
	if (port == SPI0) {
		while (!received_from_slave || *PORT_SPI_OUT_BUSY) 
		{
			if (counter++ == 65535)
				return 0;
		}
		return received_byte;
	}
	else if (port == SPI1) {
		while (!received_from_slave1 || *PORT_SPI1_OUT_BUSY) 
		{
			if (counter++ == 65535)
				return 0;
		}
		return received_byte1;
	}
}

//transmit a byte to SD and return response byte
int SPI_Byte(int port, int transmit)
{
	send_spi(port, transmit);
	return read_spi(port);
}

void spi_irq_triggered()
{
	asm 
	(
		"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
	);
	
	received_byte = *PORT_SPI_IN;
	received_from_slave = 1;
	asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\niret"
	);
}

void spi1_irq_triggered()
{
	asm 
	(
		"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
	);
	
	received_byte1 = *PORT_SPI1_IN;
	received_from_slave1 = 1;
	asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\niret"
	);
}

void init_spi()
{
	*SPI_HANDLER_INSTR 	= 1;
	*SPI_HANDLER_ADDR 	= (int)&spi_irq_triggered;

	*SPI1_HANDLER_INSTR 	= 1;
	*SPI1_HANDLER_ADDR 	= (int)&spi1_irq_triggered;

}

void deinit_spi()
{
	*SPI_HANDLER_INSTR 	= 0;
	*SPI_HANDLER_ADDR 	= 0;

	*SPI1_HANDLER_INSTR = 0;
	*SPI1_HANDLER_ADDR 	= 0;

}
#else
void init_spi()
{
	asm("ld.w r0, [190500]\njr r0\n");
}

void deinit_spi()
{
	asm("ld.w r0, [190504]\njr r0\n");
}

void send_spi(int port, int b)
{
	asm("ld.w r0, [190508]\njr r0\n");
}

int read_spi(int port)
{
	asm("ld.w r0, [190512]\njr r0\n");
}

int SPI_Byte(int port, int transmit)
{
	asm("ld.w r0, [190516]\njr r0\n");
}

#endif
