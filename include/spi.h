#define SPI0 0
#define SPI1 1

short int *SPI_HANDLER_INSTR 	= (short int *)56	; // address of the IRQ#3 handler address first instruction (SPI handler)
int *SPI_HANDLER_ADDR				 	= (int *)58	; // address of the IRQ#3 handler address (SPI handler)

short int *SPI1_HANDLER_INSTR 	= (short int *)64	; // address of the IRQ#4 handler address first instruction (SPI handler)
int *SPI1_HANDLER_ADDR				 	= (int *)66	; // address of the IRQ#4 handler address (SPI handler)

void init_spi();                        // 190500
void deinit_spi();                      // 190504
void send_spi(int port, int b);         // 190508
int read_spi(int port);                 // 190512
int SPI_Byte(int port, int transmit);   // 190516