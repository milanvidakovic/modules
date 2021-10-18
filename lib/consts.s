.equ _VIDEO , 1024 # beginning of the text frame buffer
.equ PROGRAM_START , 0xB000			# start address of the loaded program

.equ IRQ_TIMER_HANDLER_ADDR				, 8		# key handler address (KEY1 on DE0-NANO)
.equ IRQ_UART_HANDLER_ADDR					, 16	# uart IRQ#1 handler (uart receive byte handler)
.equ IRQ_UART_HANDLER_ADDR2					, 18	# uart IRQ#1 handler next two bytes (uart receive byte handler)

.equ IRQ_PS2_HANDLER_ADDR	 				, 24	# address of the IRQ#2 handler address (raw PS/2 keyboard handler)
.equ IRQ_KEY_PRESSED_HANDLER_ADDR	, 32	# address of the key pressed handler address (invoked from the IRQ2_ADDR handler)
.equ IRQ_KEY_RELEASED_HANDLER_ADDR	, 40	# address of the key released handler address (invoked from the IRQ2_ADDR handler)
.equ IRQ_VIRTUAL_KEY_ADDR					, 48	# address where the virtual key is placed

.equ SPRITE_DEFINITION_ADDRESS , 128  # beginning of the sprite definition structure 
# (64: sprite address; 66: x; 68:y ; 70: transparent color) each element is 2 bytes
# each sprite definition is 8 bytes long
# this means that the next sprite is at the address of 72

.equ IO_PORT_UART_RX_BYTE					, 640	# port which contains received byte via UART
.equ IO_PORT_UART_TX_BUSY					, 650	# port which has 1 when UART TX is busy
.equ IO_PORT_UART_TX_SEND_BYTE		, 660	# port for sending character via UART
.equ IO_PORT_LED									, 670	# port for setting eight LEDs (write)
.equ IO_PORT_KEYBOARD 						, 680	# raw keyboard character read port 
.equ IO_PORT_MOUSE 						, 800	# raw mouse read port 
.equ IO_PORT_MILLIS 							, 690	# current number of milliseconds counted so far

.equ IO_PORT_VIDEO_MODE						, 1280	# video mode type (0-text# 1-graphics), (write)
.equ IO_PORT_TIMER     						, 1290	# timer irq port (number of milliseconds before the irq is triggered)
.equ IO_PORT_VGA_TEXT_INVERSE					, 1300	# if 1, then the screen is inversed (black letters on white background)

.equ CONST_LS_FILES									, 10			# dir command, lists files on the current folder
.equ CONST_LS_FILES1								, 11			# dir command, lists files on the current folder
.equ CONST_LS_FILES2								, 12			# dir command, lists files on the current folder
.equ CONST_LS_FILES3								, 13			# dir command, lists files on the current folder
.equ CONST_LS_FILES4								, 14			# dir command, lists files on the current folder
.equ CONST_LS_FOLDERS								, 20			# dir command, lists folders on the current folder
.equ CONST_READ_FILE								, 30			# read file command
.equ CONST_WRITE_FILE								, 40			# write file command

.equ VK_0								, 48
.equ VK_1								, 49
.equ VK_2								, 50
.equ VK_3								, 51
.equ VK_4								, 52
.equ VK_5								, 53
.equ VK_6								, 54
.equ VK_7								, 55
.equ VK_8								, 56
.equ VK_9								, 57

.equ VK_SPACE						, 32
.equ VK_A								, 65
.equ VK_B								, 66
.equ VK_C								, 67
.equ VK_D								, 68
.equ VK_E								, 69
.equ VK_F								, 70
.equ VK_G								, 71
.equ VK_H								, 72
.equ VK_I								, 73
.equ VK_J								, 74
.equ VK_K								, 75
.equ VK_L								, 76
.equ VK_M								, 77
.equ VK_N								, 78
.equ VK_O								, 79
.equ VK_P								, 80
.equ VK_Q								, 81
.equ VK_R								, 82
.equ VK_S								, 83
.equ VK_T								, 84
.equ VK_U								, 85
.equ VK_V								, 86
.equ VK_W								, 87
.equ VK_X								, 88
.equ VK_Y								, 89
.equ VK_Z								, 90

.equ VK_BACK_QUOTE				, 96
.equ VK_SLASH						, 47
.equ VK_BACK_SLASH				, 92
.equ VK_BRACE_LEFT				, 91
.equ VK_BRACE_RIGHT			, 93
.equ VK_EQUALS						, 61
.equ VK_QUOTE						, 39
.equ VK_MINUS						, 45
.equ VK_SEMICOLON				, 59
.equ VK_FULL_STOP				, 46
.equ VK_COMMA						, 44
.equ VK_LESS_THAN				, 60

.equ VK_F1								, 301
.equ VK_F2								, 302
.equ VK_F3								, 303
.equ VK_F4								, 304
.equ VK_F5								, 305
.equ VK_F6								, 306
.equ VK_F7								, 307
.equ VK_F8								, 308
.equ VK_F9								, 309
.equ VK_F10							, 310
.equ VK_F11							, 311
.equ VK_F12							, 312

.equ VK_CAPS_LOCK				, 800
.equ VK_NUM_LOCK					, 801
.equ VK_SCROLL_LOCK			, 802

.equ VK_LEFT_SHIFT				, 501
.equ VK_RIGHT_SHIFT			, 502
.equ VK_LEFT_ALT					, 401
.equ VK_RIGHT_ALT				, 402
.equ VK_LEFT_CONTROL			, 601
.equ VK_RIGHT_CONTROL		, 602
.equ VK_LEFT_WINDOWS			, 1001
.equ VK_RIGHT_WINDOWS		, 1002
.equ VK_MENU							, 2000

.equ VK_TAB 							, 9
.equ VK_ENTER 						, 13
.equ VK_ESC							, 701
.equ VK_BACKSPACE				, 700

.equ VK_RIGHT_ARROW 			, 4003
.equ VK_LEFT_ARROW 			, 4001
.equ VK_UP_ARROW 				, 4000
.equ VK_DOWN_ARROW 			, 4002

.equ VK_PAGE_UP 					, 3002
.equ VK_PAGE_DOWN				, 3005
.equ VK_HOME 						, 3001
.equ VK_END							, 3004
.equ VK_INSERT 					, 3000
.equ VK_DELETE 					, 3003

.equ VK_NUMPAD0					, 5048
.equ VK_NUMPAD1					, 5049
.equ VK_NUMPAD2					, 5050
.equ VK_NUMPAD3					, 5051
.equ VK_NUMPAD4					, 5052
.equ VK_NUMPAD5					, 5053
.equ VK_NUMPAD6					, 5054
.equ VK_NUMPAD7					, 5055
.equ VK_NUMPAD8					, 5056
.equ VK_NUMPAD9					, 5057
.equ VK_NUMPAD_PLUS			, 5043
.equ VK_NUMPAD_SUBTRACT	, 5045
.equ VK_NUMPAD_DIVIDE 		, 5047
.equ VK_NUMPAD_MULTIPLY	, 5042
.equ VK_NUMPAD_DECIMAL		, 5046
.equ VK_NUMPAD_ENTER 		, 5013

.equ VK_PRINT_SCREEN			, 10000
