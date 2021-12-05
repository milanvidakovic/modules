	.file	"spi.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.s
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
	.global	init_spi
	.type	init_spi, @function
init_spi:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:147: 	asm("ld.w r0, [190500]\njr r0\n");
# 147 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
	ld.w r0, [190500]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:148: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:152: 	asm("ld.w r0, [190504]\njr r0\n");
# 152 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
	ld.w r0, [190504]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:153: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	deinit_spi, .-deinit_spi
	.p2align	1
	.global	send_spi
	.type	send_spi, @function
send_spi:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:157: 	asm("ld.w r0, [190508]\njr r0\n");
# 157 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
	ld.w r0, [190508]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:158: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:162: 	asm("ld.w r0, [190512]\njr r0\n");
# 162 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
	ld.w r0, [190512]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:163: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:167: 	asm("ld.w r0, [190516]\njr r0\n");
# 167 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c" 1
	ld.w r0, [190516]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/spi.c:168: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	SPI_Byte, .-SPI_Byte
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
