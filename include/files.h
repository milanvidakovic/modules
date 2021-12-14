void uart_init_files();

int uart_write_file(char *buffer, int size, char *file_name);

int uart_read_file(char *buffer, char *file_name);

void uart_ls_files(char *buffer);
