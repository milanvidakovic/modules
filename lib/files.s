#################################################
# Files module
#################################################
	.text

# variable that holds the address of a buffer passed from the main app
	.global	_files_buffer
	.type	_files_buffer, @object
	.size	_files_buffer, 4
_files_buffer:
	.zero 4											

	.global	_is_ls_finished
	.type	_is_ls_finished, @object
	.size	_is_ls_finished, 4
_is_ls_finished:
	.zero 4	

	.global	_sp_backup_uart
	.type	_sp_backup_uart, @object
	.size	_sp_backup_uart, 4
_sp_backup_uart:
	.zero 4	


# variable that holds the address of a file name string to be read
	.global	_file_name
	.type	_file_name, @object
	.size	_file_name, 4
_file_name:
	.zero 4											

	.global	_file_read_status
	.type	_file_read_status, @object
	.size	_file_read_status, 4
_file_read_status:
	.zero 4

	.global	_files_state
	.type	_files_state, @object
	.size	_files_state, 4
_files_state:
	.zero 4

	.global	_files_size
	.type	_files_size, @object
	.size	_files_size, 4
_files_size:
	.zero 4

	.global	_current_files_size
	.type	_current_files_size, @object
	.size	_current_files_size, 4
_current_files_size:
	.zero 4

#################################################
# init_files()
# sets IRQ handlers
#################################################
	.global	uart_init_files
	.type	uart_init_files, @function
uart_init_files:
	push r0
	push r1
	
	# set the IRQ handler for UART to our own IRQ handler
	mov.w r0, 1			# JUMP opcode
	mov.w r1, IRQ_UART_HANDLER_ADDR
	st.s [r1], r0
	mov.w r0, files_irq_triggered
	mov.s r1, IRQ_UART_HANDLER_ADDR2
	st.w [r1], r0
	
	pop r1
	pop r0
	ret
	.size	uart_init_files, .-uart_init_files 		
	
#################################################
# write_file(buffer, size, file_name)	
# write buffer to file  
# param buffer holds the content to be written to a file 		(8)
# param size holds the size of the content 									(12)
# param file_name holds the name of the file to be written 	(16)
#################################################
	.global	uart_write_file
	.type	uart_write_file, @function
	.equ _write_file_buffer, 8 		# buffer which will be written to a file
	.equ _write_file_size, 12 		# size of the buffer
	.equ _write_file_name, 16 		# txt buffer of the file name of the file to be written
uart_write_file:
	push r13
	mov.w r13, sp

	mov.w r0, 77								# "M" character
	call send_serial
	mov.w r0, 13								# \r character
	call send_serial
	mov.w r0, 10								# \n character
	call send_serial
	mov.w r0, 3
	call send_serial
	mov.w r0, 102	  						# 'f' - file operation (0x66)
	call send_serial
	mov.w r0, 119	  						# 'w' for write file (0x77)
	call send_serial

	# send file name
	ld.w r2, [r13 + (_write_file_name)]
.write_file_again1:	
	ld.b r0, [r2]  						
	call send_serial
	cmp.w r0, 0
	jz .write_file_send_size
	inc.w r2
	j .write_file_again1
	
	# send file size
.write_file_send_size:
	ld.w r0, [r13 + (_write_file_size)]
	and.w r0, 255
	call send_serial
	ld.w r0, [r13 + (_write_file_size)]
	shr.w r0, 8
	and.w r0, 255
	call send_serial
	ld.w r0, [r13 + (_write_file_size)]
	shr.w r0, 16
	and.w r0, 255
	call send_serial
	ld.w r0, [r13 + (_write_file_size)]
	shr.w r0, 24
	and.w r0, 255
	call send_serial

	# send buffer to be written to a file
	ld.w r2, [r13 + (_write_file_buffer)]
	ld.w r3, [r13 + (_write_file_size)]
	mov.w r4, 0
.write_file_again2:
	cmp.w r4, r3
	jz .write_file_end
	ld.b r0, [r2]
	call send_serial
	inc.w r2
	inc.w r4
	j .write_file_again2

.write_file_end:
	mov.w r0, 0
	mov.w sp, r13
	pop r13
	ret
	.size	uart_write_file, .-uart_write_file 

#################################################
# read_file(buffer, file_name)	
# read file content
# param buffer holds the returned content of a file
# param file_name holds the name of the file to be read
#################################################
	.global	uart_read_file
	.type	uart_read_file, @function
	.equ _read_file_buffer, 8 		# txt buffer which will receive file content
	.equ _read_file_name, 12 			# txt buffer of the file name of the file to be read
uart_read_file:
	push r13
	mov.w r13, sp

	ld.w r0, [r13 + (_read_file_buffer)]
	st.w [_files_buffer], r0						# put the address of a buffer into the files_buffer variable

	ld.w r0, [r13 + (_read_file_name)]
	st.w [_file_name], r0								# put the address of a string that contains the file name of a file to be read

	# reset the status
	mov.w r0, 0
	st.w [_file_read_status], r0
	st.w [_is_ls_finished], r0

	mov.w r0, CONST_READ_FILE					# read file
	st.w [_files_state], r0
	mov.w r0, 77								# "M" character
	call send_serial
	mov.w r0, 13								# \r character
	call send_serial
	mov.w r0, 10								# \n character
	call send_serial
	mov.w r0, 3
	call send_serial
	mov.w r0, 102  							# 'f' - file operation (0x66)
	call send_serial
	mov.w r0, 114	  						# 'r' for read file (read file content) (0x72)
	call send_serial
	
	ld.w r2, [_file_name]
.file_read_again:
	ld.b r0, [r2]
	cmp.w r0, 0
	jz .file_read_file_status
	call send_serial
	inc.w r2
	j .file_read_again
	
.file_read_file_status:
	call send_serial		# send the 0 at the end of string
.file_status_again:
	ld.w r0, [_file_read_status]
	cmp.w r0, 0
	jz .file_status_again

	cmp.w r0, 1			# is it OK?
	jnz .file_read_error_end	 # if the status is 1, then it is OK# otherwise, we return with the error code
	
	# wait for the content to arrive
.file_read_content:
	ld.w r0, [_is_ls_finished]
	cmp.w r0, 1
	jz .file_read_end
	j .file_read_content
	
.file_read_end:	
	ld.w r0, [_files_buffer]
	ld.w r2, [_files_size]
	add.w r0, r2
	mov.w r2, 0
	st.b [r0], r2

	ld.w r0, [_files_size]  # return value
	
	mov.w sp, r13
	pop r13
	ret

.file_read_error_end:
	# r0 has the error code
	mov.w r0, -1
	mov.w sp, r13
	pop r13
	ret
	.size	uart_read_file, .-uart_read_file 
	
#################################################
# ls_files(buffer)	
# lists files in the current folder
# param buffers will hold the returned list of files
#################################################
	.global	uart_ls_files
	.type	uart_ls_files, @function
	.equ _ls_files_buffer, 8  # txt buffer which will receive files list
uart_ls_files:
	push r13
	mov.w r13, sp

	ld.w r0, [r13 + (_ls_files_buffer)]
	st.w [_files_buffer], r0						# put the address of a buffer into the files_buffer variable
	
	mov.w r0, 0
	st.w [_is_ls_finished], r0

	mov.w r0, CONST_LS_FILES		# list files
	st.w [_files_state], r0
	
	mov.w r0, 77								# "M" character
	call send_serial
	mov.w r0, 13								# \r character
	call send_serial
	mov.w r0, 10								# \n character
	call send_serial
	mov.w r0, 3
	call send_serial
	mov.w r0, 102	  						# 'f' - file operation (0x66)
	call send_serial
	mov.w r0, 100	  						# 'd' for dir (list files in folder) (0x64)
	call send_serial
	
.ls_files_again:
	ld.w r0, [_is_ls_finished]
	cmp.w r0, 1
	jz .ls_files_end
	j .ls_files_again
	
.ls_files_end:	
	ld.w r0, [_files_buffer]
	ld.w r2, [_files_size]
	add.w r0, r2
	mov.w r2, 0
	st.b [r0], r2
	
	mov.w sp, r13
	pop r13
	ret
	.size	uart_ls_files, .-uart_ls_files 


#################################################
# ls_folders(buffer)	
# lists folders in the current folder
# param buffers will hold the returned list of folders
#################################################
	.global	ls_folders
	.type	ls_folders, @function
	.equ _ls_folders_buffer, 8 # txt buffer which will receive folders list
ls_folders:
	push r13
	mov.w r13, sp

	ld.w r0, [r13 + (_ls_files_buffer)]
	st.w [_files_buffer], r0						# put the address of a buffer into the files_buffer variable
	
	mov.w r0, 0
	st.w [_is_ls_finished], r0

	mov.w r0, CONST_LS_FOLDERS				# list folders
	st.w [_files_state], r0
	mov.w r0, 77								# "M" character
	call send_serial
	mov.w r0, 13								# \r character
	call send_serial
	mov.w r0, 10								# \n character
	call send_serial
	mov.w r0, 3
	call send_serial
	mov.w r0, 102	  						# 'f' - file operation (0x66)
	call send_serial
	mov.w r0, 102  							# 'f' for folders list (list folders in the current folder) (0x66)
	call send_serial
	
.ls_folders_again:
	ld.w r0, [_is_ls_finished]
	cmp.w r0, 1
	jz .ls_folders_end
	j .ls_folders_again

.ls_folders_end:	
	ld.w r0, [_files_buffer]
	ld.w r2, [_files_size]
	add.w r0, r2
	mov.w r2, 0
	st.b [r0], r2
	
	mov.w sp, r13
	pop r13
	ret
	.size	ls_folders, .-ls_folders 

#######################################################################
# send_serial(r0) - sends one byte in r0 to the UART serial port
#######################################################################
	.global	send_serial
	.type	send_serial, @function
send_serial:	
	push r5
.ss1:
	# in r5, [IO_PORT_UART_TX_BUSY]   # tx busy in r5 (2147484298)
	ld.s r5, [2147484298]
	cmp.w r5, 0     
	jz .ss2   # if not busy, send the character 
	j .ss1
	
.ss2:
	# out [IO_PORT_UART_TX_SEND_BYTE], r0  # send the character to the UART (2147484308)
	st.s [2147484308], r0
	
	mov.w r5, 100
.ss3:
	nop
	dec.w r5
	jnz .ss3	
	
	pop r5
	ret
	.size	send_serial, .-send_serial

###################################################################
# Subroutine which is called whenever some byte arrives at the UART
###################################################################
	.global	files_irq_triggered
	.type	files_irq_triggered, @function
files_irq_triggered:	
	push r0
	push r1
	push r2   
	push r3

	ld.w r0, [_files_state]
	cmp.w r0, CONST_LS_FILES
	jz .ls_files_first_byte
	cmp.w r0, CONST_LS_FILES1 
	jz .ls_files_second_byte
	cmp.w r0, CONST_LS_FILES2 
	jz .ls_files_third_byte
	cmp.w r0, CONST_LS_FILES3 
	jz .ls_files_fourth_byte
	cmp.w r0, CONST_LS_FILES4 
	jz .ls_files_incoming

	cmp.w r0, CONST_LS_FOLDERS
	jz .ls_files_first_byte
	
	cmp.w r0, CONST_READ_FILE
	jz .read_file_status_byte
	
	j .files_skip
	
.ls_files_incoming:

	# in r0, [IO_PORT_UART_RX_BYTE] 	# r1 holds now received byte from the UART (2147484288)
	ld.s r0, [2147484288]
	ld.w r3, [_files_buffer]
	ld.w r2, [_current_files_size]
	add.w r3, r2
	st.b [r3], r0
	inc.w r2
	st.w [_current_files_size], r2

	ld.w r3, [_files_size]	
	cmp.w r2, r3
	jz .files_irq_end
	
.files_skip:
	pop r3
	pop r2
	pop r1                 
	pop r0
	iret									 

.files_irq_end:
	mov.w r0, 1
	st.w [_is_ls_finished], r0
	j .files_skip

.ls_files_first_byte:
	mov.w r1, 0
	st.w [_current_files_size], r1

	# in r1, [IO_PORT_UART_RX_BYTE] 	# r1 holds now received byte from the UART
	ld.s r1, [2147484288]

	st.w [_files_size], r1
	
	mov.w r1, CONST_LS_FILES1
	st.w [_files_state], r1
	j .files_skip

.ls_files_second_byte:
	# in r1, [IO_PORT_UART_RX_BYTE] 	# r1 holds now received byte from the UART
	ld.s r1, [2147484288]

	shl.w r1, 8
	ld.w r2, [_files_size]
	add.w r1, r2
	st.w [_files_size], r1
	
	mov.w r1, CONST_LS_FILES2
	st.w [_files_state], r1
	j .files_skip

.ls_files_third_byte:
	# in r1, [IO_PORT_UART_RX_BYTE] 	# r1 holds now received byte from the UART
	ld.s r1, [2147484288]
	shl.w r1, 16
	ld.w r2, [_files_size]
	add.w r1, r2
	st.w [_files_size], r1
	
	mov.w r1, CONST_LS_FILES3
	st.w [_files_state], r1
	j .files_skip

.ls_files_fourth_byte:
	# in r1, [IO_PORT_UART_RX_BYTE] 	# r1 holds now received byte from the UART
	ld.s r1, [2147484288]
	shl.w r1, 16
	ld.w r2, [_files_size]
	add.w r1, r2
	st.w [_files_size], r1
	
	mov.w r1, CONST_LS_FILES4
	st.w [_files_state], r1
	j .files_skip

.read_file_status_byte:
	# in r1, [IO_PORT_UART_RX_BYTE] 	# r1 holds now received byte from the UART
	ld.s r1, [2147484288]
	st.w [_file_read_status], r1
	
	cmp.w r1, 1
	jnz .irq_file_error

	mov.w r0, 0
	st.w [_is_ls_finished], r0
	
	mov.w r1, CONST_LS_FILES
	st.w [_files_state], r1
	j .files_skip	

.irq_file_error:
	j .files_skip

	.size	files_irq_triggered, .-files_irq_triggered	
