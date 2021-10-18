	.file	"spi.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c
# -mel -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.s
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
	.global	SPI_HANDLER_INSTR
	.data
	.p2align	2
	.type	SPI_HANDLER_INSTR, @object
	.size	SPI_HANDLER_INSTR, 4
SPI_HANDLER_INSTR:
	.long	56
	.global	SPI_HANDLER_ADDR
	.p2align	2
	.type	SPI_HANDLER_ADDR, @object
	.size	SPI_HANDLER_ADDR, 4
SPI_HANDLER_ADDR:
	.long	58
	.global	SPI1_HANDLER_INSTR
	.p2align	2
	.type	SPI1_HANDLER_INSTR, @object
	.size	SPI1_HANDLER_INSTR, 4
SPI1_HANDLER_INSTR:
	.long	64
	.global	SPI1_HANDLER_ADDR
	.p2align	2
	.type	SPI1_HANDLER_ADDR, @object
	.size	SPI1_HANDLER_ADDR, 4
SPI1_HANDLER_ADDR:
	.long	66
	.global	PORT_SPI_IN
	.p2align	2
	.type	PORT_SPI_IN, @object
	.size	PORT_SPI_IN, 4
PORT_SPI_IN:
	.long	-2147482948
	.global	PORT_SPI_OUT
	.p2align	2
	.type	PORT_SPI_OUT, @object
	.size	PORT_SPI_OUT, 4
PORT_SPI_OUT:
	.long	-2147482938
	.global	PORT_SPI_OUT_BUSY
	.p2align	2
	.type	PORT_SPI_OUT_BUSY, @object
	.size	PORT_SPI_OUT_BUSY, 4
PORT_SPI_OUT_BUSY:
	.long	-2147482928
	.global	PORT_SPI1_IN
	.p2align	2
	.type	PORT_SPI1_IN, @object
	.size	PORT_SPI1_IN, 4
PORT_SPI1_IN:
	.long	-2147482898
	.global	PORT_SPI1_OUT
	.p2align	2
	.type	PORT_SPI1_OUT, @object
	.size	PORT_SPI1_OUT, 4
PORT_SPI1_OUT:
	.long	-2147482888
	.global	PORT_SPI1_OUT_BUSY
	.p2align	2
	.type	PORT_SPI1_OUT_BUSY, @object
	.size	PORT_SPI1_OUT_BUSY, 4
PORT_SPI1_OUT_BUSY:
	.long	-2147482878
	.global	received_byte
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	received_byte, @object
	.size	received_byte, 4
received_byte:
	.zero	4
	.global	received_from_slave
	.p2align	2
	.type	received_from_slave, @object
	.size	received_from_slave, 4
received_from_slave:
	.zero	4
	.global	received_byte1
	.p2align	2
	.type	received_byte1, @object
	.size	received_byte1, 4
received_byte1:
	.zero	4
	.global	received_from_slave1
	.p2align	2
	.type	received_from_slave1, @object
	.size	received_from_slave1, 4
received_from_slave1:
	.zero	4
	.text
	.p2align	1
	.global	send_spi
	.type	send_spi, @function
send_spi:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:25: 	int counter = 0;
	xor.w	r0, r0	# tmp34
	st.w	[r13 + (-4)], r0	# counter, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:26: 	if (port == SPI0) {
	ld.w	r1, [r13 + (8)]	# tmp35, port
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jnz	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:27: 		received_from_slave = 0;
	xor.w	r0, r0	# tmp37
	st.w	[received_from_slave], r0	# received_from_slave, tmp37
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:31: 			if (counter++ == 65535)
	ld.w	r0, [r13 + (-4)]	# counter.0_1, counter
	mov.w	r1, r0	# tmp38, counter.0_1
	add.w	r1, 1 #111	# tmp38,
	st.w	[r13 + (-4)], r1	# counter, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:31: 			if (counter++ == 65535)
	mov.w	r1, 65535	# tmp39,
	cmp.w	r0, r1	# counter.0_1, tmp39
	jz	.L8		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:33: 			busy = *PORT_SPI_OUT_BUSY;
	ld.w	r0, [PORT_SPI_OUT_BUSY]	# PORT_SPI_OUT_BUSY.1_2, PORT_SPI_OUT_BUSY
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:33: 			busy = *PORT_SPI_OUT_BUSY;
	ld.s	r0, [r0]	# tmp40, *PORT_SPI_OUT_BUSY.1_2
	st.s	[r13 + (-8)], r0	# busy, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:34: 		} while (busy);
	ld.s	r1, [r13 + (-8)]	# tmp41, busy
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L5		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:36: 		*PORT_SPI_OUT = b; //send the byte to the SPI
	ld.w	r0, [PORT_SPI_OUT]	# PORT_SPI_OUT.2_3, PORT_SPI_OUT
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:36: 		*PORT_SPI_OUT = b; //send the byte to the SPI
	ld.w	r1, [r13 + (12)]	# tmp43, b
	st.s	[r0], r1	# *PORT_SPI_OUT.2_3, _4
	j	.L1		#
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:46: 	else if (port == SPI1) {
	ld.w	r1, [r13 + (8)]	# tmp44, port
	mov.w	r0, 1	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L1		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:47: 		received_from_slave1 = 0;
	xor.w	r0, r0	# tmp46
	st.w	[received_from_slave1], r0	# received_from_slave1, tmp46
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:51: 			if (counter++ == 65535)
	ld.w	r0, [r13 + (-4)]	# counter.3_5, counter
	mov.w	r1, r0	# tmp47, counter.3_5
	add.w	r1, 1 #111	# tmp47,
	st.w	[r13 + (-4)], r1	# counter, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:51: 			if (counter++ == 65535)
	mov.w	r1, 65535	# tmp48,
	cmp.w	r0, r1	# counter.3_5, tmp48
	jz	.L9		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:53: 			busy1 = *PORT_SPI1_OUT_BUSY;
	ld.w	r0, [PORT_SPI1_OUT_BUSY]	# PORT_SPI1_OUT_BUSY.4_6, PORT_SPI1_OUT_BUSY
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:53: 			busy1 = *PORT_SPI1_OUT_BUSY;
	ld.s	r0, [r0]	# tmp49, *PORT_SPI1_OUT_BUSY.4_6
	st.s	[r13 + (-6)], r0	# busy1, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:54: 		} while (busy1);
	ld.s	r1, [r13 + (-6)]	# tmp50, busy1
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L7		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:55: 		*PORT_SPI1_OUT = b; //send the byte to the SPI
	ld.w	r0, [PORT_SPI1_OUT]	# PORT_SPI1_OUT.5_7, PORT_SPI1_OUT
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:55: 		*PORT_SPI1_OUT = b; //send the byte to the SPI
	ld.w	r1, [r13 + (12)]	# tmp52, b
	st.s	[r0], r1	# *PORT_SPI1_OUT.5_7, _8
	j	.L1		#
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:32: 				return;
	nop	
	j	.L1		#
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:52: 				return;
	nop	
.L1:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:65: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	send_spi, .-send_spi
	.p2align	1
	.global	read_spi
	.type	read_spi, @function
read_spi:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:69: 	int counter = 0;
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# counter, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:70: 	if (port == SPI0) {
	ld.w	r1, [r13 + (8)]	# tmp37, port
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:71: 		while (!received_from_slave || *PORT_SPI_OUT_BUSY) 
	j	.L12		#
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:73: 			if (counter++ == 65535)
	ld.w	r0, [r13 + (-4)]	# counter.6_1, counter
	mov.w	r1, r0	# tmp39, counter.6_1
	add.w	r1, 1 #111	# tmp39,
	st.w	[r13 + (-4)], r1	# counter, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:73: 			if (counter++ == 65535)
	mov.w	r1, 65535	# tmp40,
	cmp.w	r0, r1	# counter.6_1, tmp40
	jnz	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:74: 				return 0;
	xor.w	r0, r0	# _11
	j	.L10		#
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:71: 		while (!received_from_slave || *PORT_SPI_OUT_BUSY) 
	ld.w	r1, [received_from_slave]	# received_from_slave.7_2, received_from_slave
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:71: 		while (!received_from_slave || *PORT_SPI_OUT_BUSY) 
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# received_from_slave.7_2, tmp41
	jz	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:71: 		while (!received_from_slave || *PORT_SPI_OUT_BUSY) 
	ld.w	r0, [PORT_SPI_OUT_BUSY]	# PORT_SPI_OUT_BUSY.8_3, PORT_SPI_OUT_BUSY
	ld.s	r0, [r0]	# _4, *PORT_SPI_OUT_BUSY.8_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:71: 		while (!received_from_slave || *PORT_SPI_OUT_BUSY) 
	zex.s	r1, r0	# tmp42, _4
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:76: 		return received_byte;
	ld.w	r0, [received_byte]	# _11, received_byte
	j	.L10		#
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:78: 	else if (port == SPI1) {
	ld.w	r1, [r13 + (8)]	# tmp44, port
	mov.w	r0, 1	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L15		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:79: 		while (!received_from_slave1 || *PORT_SPI1_OUT_BUSY) 
	j	.L16		#
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:81: 			if (counter++ == 65535)
	ld.w	r0, [r13 + (-4)]	# counter.9_5, counter
	mov.w	r1, r0	# tmp46, counter.9_5
	add.w	r1, 1 #111	# tmp46,
	st.w	[r13 + (-4)], r1	# counter, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:81: 			if (counter++ == 65535)
	mov.w	r1, 65535	# tmp47,
	cmp.w	r0, r1	# counter.9_5, tmp47
	jnz	.L16		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:82: 				return 0;
	xor.w	r0, r0	# _11
	j	.L10		#
.L16:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:79: 		while (!received_from_slave1 || *PORT_SPI1_OUT_BUSY) 
	ld.w	r1, [received_from_slave1]	# received_from_slave1.10_6, received_from_slave1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:79: 		while (!received_from_slave1 || *PORT_SPI1_OUT_BUSY) 
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# received_from_slave1.10_6, tmp48
	jz	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:79: 		while (!received_from_slave1 || *PORT_SPI1_OUT_BUSY) 
	ld.w	r0, [PORT_SPI1_OUT_BUSY]	# PORT_SPI1_OUT_BUSY.11_7, PORT_SPI1_OUT_BUSY
	ld.s	r0, [r0]	# _8, *PORT_SPI1_OUT_BUSY.11_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:79: 		while (!received_from_slave1 || *PORT_SPI1_OUT_BUSY) 
	zex.s	r1, r0	# tmp49, _8
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# tmp49, tmp50
	jnz	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:84: 		return received_byte1;
	ld.w	r0, [received_byte1]	# _11, received_byte1
	j	.L10		#
.L15:
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:86: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	read_spi, .-read_spi
	.p2align	1
	.global	SPI_Byte
	.type	SPI_Byte, @function
SPI_Byte:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:91: 	send_spi(port, transmit);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (12)]	# tmp29, transmit
	st.w	[r0 + (4)], r1	#, tmp29
	ld.w	r1, [r13 + (8)]	# tmp30, port
	st.w	[r0], r1	#, tmp30
	call	send_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:92: 	return read_spi(port);
	mov.w	r1, sp	# tmp31,
	ld.w	r0, [r13 + (8)]	# tmp32, port
	st.w	[r1], r0	#, tmp32
	call	read_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:93: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	SPI_Byte, .-SPI_Byte
	.p2align	1
	.global	spi_irq_triggered
	.type	spi_irq_triggered, @function
spi_irq_triggered:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:97: 	asm 
# 97 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:102: 	received_byte = *PORT_SPI_IN;
	ld.w	r0, [PORT_SPI_IN]	# PORT_SPI_IN.12_1, PORT_SPI_IN
	ld.s	r0, [r0]	# _2, *PORT_SPI_IN.12_1
	zex.s	r0, r0	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:102: 	received_byte = *PORT_SPI_IN;
	st.w	[received_byte], r0	# received_byte, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:103: 	received_from_slave = 1;
	mov.w	r0, 1	# tmp29,
	st.w	[received_from_slave], r0	# received_from_slave, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:104: 	asm 
# 104 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:108: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spi_irq_triggered, .-spi_irq_triggered
	.p2align	1
	.global	spi1_irq_triggered
	.type	spi1_irq_triggered, @function
spi1_irq_triggered:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:112: 	asm 
# 112 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:117: 	received_byte1 = *PORT_SPI1_IN;
	ld.w	r0, [PORT_SPI1_IN]	# PORT_SPI1_IN.13_1, PORT_SPI1_IN
	ld.s	r0, [r0]	# _2, *PORT_SPI1_IN.13_1
	zex.s	r0, r0	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:117: 	received_byte1 = *PORT_SPI1_IN;
	st.w	[received_byte1], r0	# received_byte1, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:118: 	received_from_slave1 = 1;
	mov.w	r0, 1	# tmp29,
	st.w	[received_from_slave1], r0	# received_from_slave1, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:119: 	asm 
# 119 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:123: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spi1_irq_triggered, .-spi1_irq_triggered
	.p2align	1
	.global	init_spi
	.type	init_spi, @function
init_spi:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:127: 	*SPI_HANDLER_INSTR 	= 1;
	ld.w	r0, [SPI_HANDLER_INSTR]	# SPI_HANDLER_INSTR.14_1, SPI_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:127: 	*SPI_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp32,
	st.s	[r0], r1	# *SPI_HANDLER_INSTR.14_1, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:128: 	*SPI_HANDLER_ADDR 	= (int)&spi_irq_triggered;
	ld.w	r0, [SPI_HANDLER_ADDR]	# SPI_HANDLER_ADDR.15_2, SPI_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:128: 	*SPI_HANDLER_ADDR 	= (int)&spi_irq_triggered;
	mov.w	r1, spi_irq_triggered	# spi_irq_triggered.16_3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:128: 	*SPI_HANDLER_ADDR 	= (int)&spi_irq_triggered;
	st.w	[r0], r1	# *SPI_HANDLER_ADDR.15_2, spi_irq_triggered.16_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:130: 	*SPI1_HANDLER_INSTR 	= 1;
	ld.w	r0, [SPI1_HANDLER_INSTR]	# SPI1_HANDLER_INSTR.17_4, SPI1_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:130: 	*SPI1_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp33,
	st.s	[r0], r1	# *SPI1_HANDLER_INSTR.17_4, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:131: 	*SPI1_HANDLER_ADDR 	= (int)&spi1_irq_triggered;
	ld.w	r0, [SPI1_HANDLER_ADDR]	# SPI1_HANDLER_ADDR.18_5, SPI1_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:131: 	*SPI1_HANDLER_ADDR 	= (int)&spi1_irq_triggered;
	mov.w	r1, spi1_irq_triggered	# spi1_irq_triggered.19_6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:131: 	*SPI1_HANDLER_ADDR 	= (int)&spi1_irq_triggered;
	st.w	[r0], r1	# *SPI1_HANDLER_ADDR.18_5, spi1_irq_triggered.19_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:133: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_spi, .-init_spi
	.p2align	1
	.global	deinit_spi
	.type	deinit_spi, @function
deinit_spi:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:137: 	*SPI_HANDLER_INSTR 	= 0;
	ld.w	r0, [SPI_HANDLER_INSTR]	# SPI_HANDLER_INSTR.20_1, SPI_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:137: 	*SPI_HANDLER_INSTR 	= 0;
	xor.w	r1, r1	# tmp30
	st.s	[r0], r1	# *SPI_HANDLER_INSTR.20_1, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:138: 	*SPI_HANDLER_ADDR 	= 0;
	ld.w	r0, [SPI_HANDLER_ADDR]	# SPI_HANDLER_ADDR.21_2, SPI_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:138: 	*SPI_HANDLER_ADDR 	= 0;
	xor.w	r1, r1	# tmp31
	st.w	[r0], r1	# *SPI_HANDLER_ADDR.21_2, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:140: 	*SPI1_HANDLER_INSTR = 0;
	ld.w	r0, [SPI1_HANDLER_INSTR]	# SPI1_HANDLER_INSTR.22_3, SPI1_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:140: 	*SPI1_HANDLER_INSTR = 0;
	xor.w	r1, r1	# tmp32
	st.s	[r0], r1	# *SPI1_HANDLER_INSTR.22_3, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:141: 	*SPI1_HANDLER_ADDR 	= 0;
	ld.w	r0, [SPI1_HANDLER_ADDR]	# SPI1_HANDLER_ADDR.23_4, SPI1_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:141: 	*SPI1_HANDLER_ADDR 	= 0;
	xor.w	r1, r1	# tmp33
	st.w	[r0], r1	# *SPI1_HANDLER_ADDR.23_4, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:143: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	deinit_spi, .-deinit_spi
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
