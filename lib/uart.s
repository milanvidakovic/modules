	.file	"uart.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.s
# -fsigned-char -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fallocation-dce
# -fauto-inc-dec -fdelete-null-pointer-checks -fearly-inlining
# -feliminate-unused-debug-symbols -feliminate-unused-debug-types
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-unique -fident
# -finline-atomics -fipa-stack-alignment -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse -fmath-errno
# -fmerge-debug-strings -fpcc-struct-return -fpeephole -fplt
# -fprefetch-loop-arrays -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mel -mmul.x

	.text
	.global	UART_HANDLER_INSTR
	.data
	.p2align	2
	.type	UART_HANDLER_INSTR, @object
	.size	UART_HANDLER_INSTR, 4
UART_HANDLER_INSTR:
	.long	16
	.global	UART_HANDLER_ADDR
	.p2align	2
	.type	UART_HANDLER_ADDR, @object
	.size	UART_HANDLER_ADDR, 4
UART_HANDLER_ADDR:
	.long	18
	.global	PORT_UART_RX_BYTE
	.p2align	2
	.type	PORT_UART_RX_BYTE, @object
	.size	PORT_UART_RX_BYTE, 4
PORT_UART_RX_BYTE:
	.long	-2147483008
	.global	PORT_UART_TX_BUSY
	.p2align	2
	.type	PORT_UART_TX_BUSY, @object
	.size	PORT_UART_TX_BUSY, 4
PORT_UART_TX_BUSY:
	.long	-2147482998
	.global	PORT_UART_TX_SEND_BYTE
	.p2align	2
	.type	PORT_UART_TX_SEND_BYTE, @object
	.size	PORT_UART_TX_SEND_BYTE, 4
PORT_UART_TX_SEND_BYTE:
	.long	-2147482988
	.global	PORT_LED
	.p2align	2
	.type	PORT_LED, @object
	.size	PORT_LED, 4
PORT_LED:
	.long	-2147482978
	.global	received_byte
	.section	.bss,"aw",@nobits
	.type	received_byte, @object
	.size	received_byte, 1
received_byte:
	.zero	1
	.global	received_from_uart
	.p2align	2
	.type	received_from_uart, @object
	.size	received_from_uart, 4
received_from_uart:
	.zero	4
	.text
	.p2align	1
	.global	send_uart
	.type	send_uart, @function
send_uart:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp29, b
	st.b	[r13 + (-12)], r0	# b, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:22:     unsigned int count = 0;
	xor.w	r0, r0	# tmp31
	st.w	[r13 + (-4)], r0	# count, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:23:     received_from_uart = 0;
	xor.w	r0, r0	# tmp32
	st.w	[received_from_uart], r0	# received_from_uart, tmp32
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:26:         busy = *PORT_UART_TX_BUSY;
	ld.w	r0, [PORT_UART_TX_BUSY]	# PORT_UART_TX_BUSY.0_1, PORT_UART_TX_BUSY
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:26:         busy = *PORT_UART_TX_BUSY;
	ld.s	r0, [r0]	# tmp33, *PORT_UART_TX_BUSY.0_1
	st.s	[r13 + (-6)], r0	# busy, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:27:     } while (busy != 0);
	ld.s	r1, [r13 + (-6)]	# tmp34, busy
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jnz	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:28:     *PORT_UART_TX_SEND_BYTE = b; //send the byte to the SPI
	ld.w	r0, [PORT_UART_TX_SEND_BYTE]	# PORT_UART_TX_SEND_BYTE.1_2, PORT_UART_TX_SEND_BYTE
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:28:     *PORT_UART_TX_SEND_BYTE = b; //send the byte to the SPI
	ld.b	r1, [r13 + (-12)]	# tmp36, b
	st.s	[r0], r1	# *PORT_UART_TX_SEND_BYTE.1_2, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:31: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	send_uart, .-send_uart
	.global	counter
	.section	.bss
	.p2align	2
	.type	counter, @object
	.size	counter, 4
counter:
	.zero	4
	.global	buff
	.p2align	2
	.type	buff, @object
	.size	buff, 128
buff:
	.zero	128
	.text
	.p2align	1
	.global	read_uart
	.type	read_uart, @function
read_uart:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:38: 	counter = 0;
	xor.w	r0, r0	# tmp27
	st.w	[counter], r0	# counter, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:39:     while (counter < len) 
	j	.L4		#
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:41:         asm("nop");
# 41 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c" 1
	nop
.L4:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:39:     while (counter < len) 
	ld.w	r0, [counter]	# counter.2_1, counter
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:39:     while (counter < len) 
	ld.w	r1, [r13 + (12)]	# tmp28, len
	cmp.w	r1, r0	# tmp28, counter.2_1
	jgs	.L5		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:43:     memcpy(buffer, buff, len);
	mov.w	r0, sp	# tmp29,
	ld.w	r1, [r13 + (12)]	# tmp30, len
	st.w	[r0 + (8)], r1	#, tmp30
	mov.w	r1, buff	# tmp31,
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, buffer
	st.w	[r0], r1	#, tmp32
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:44: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	read_uart, .-read_uart
	.p2align	1
	.global	uart_irq_triggered
	.type	uart_irq_triggered, @function
uart_irq_triggered:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:48: 	asm 
# 48 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c" 1
	push r0
push r1
push r2
push r3
push r4
push r5
push r6
push r7
push r8
push r9
push r10
push r11
push r12
push r13

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:53: 	buff[counter++] = *PORT_UART_RX_BYTE;
	ld.w	r0, [PORT_UART_RX_BYTE]	# PORT_UART_RX_BYTE.3_1, PORT_UART_RX_BYTE
	ld.s	r1, [r0]	# _2, *PORT_UART_RX_BYTE.3_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:53: 	buff[counter++] = *PORT_UART_RX_BYTE;
	ld.w	r0, [counter]	# counter.4_3, counter
	mov.w	r2, r0	# _5, counter.4_3
	add.w	r2, 1 #111	# _5,
	st.w	[counter], r2	# counter, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:53: 	buff[counter++] = *PORT_UART_RX_BYTE;
	mov.w	r2, buff	# tmp32,
	add.w	r0, r2 #222	# tmp31, tmp32
	st.b	[r0], r1	# buff, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:54: 	asm 
# 54 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c" 1
	pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop r7
pop r6
pop r5
pop r4
pop r3
pop r2
pop r1
pop r0
mov.w sp,r13
pop r13
iret
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:58: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	uart_irq_triggered, .-uart_irq_triggered
	.p2align	1
	.global	init_uart
	.type	init_uart, @function
init_uart:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:63: 	*UART_HANDLER_INSTR 	= 1;
	ld.w	r0, [UART_HANDLER_INSTR]	# UART_HANDLER_INSTR.6_1, UART_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:63: 	*UART_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp29,
	st.s	[r0], r1	# *UART_HANDLER_INSTR.6_1, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:64: 	*UART_HANDLER_ADDR 	= (int)&uart_irq_triggered;
	ld.w	r0, [UART_HANDLER_ADDR]	# UART_HANDLER_ADDR.7_2, UART_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:64: 	*UART_HANDLER_ADDR 	= (int)&uart_irq_triggered;
	mov.w	r1, uart_irq_triggered	# uart_irq_triggered.8_3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:64: 	*UART_HANDLER_ADDR 	= (int)&uart_irq_triggered;
	st.w	[r0], r1	# *UART_HANDLER_ADDR.7_2, uart_irq_triggered.8_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/uart.c:65: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_uart, .-init_uart
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
