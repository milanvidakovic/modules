	.file	"enc28j60.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.s
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
	.global	PORT_SPI_CS
	.p2align	2
	.type	PORT_SPI_CS, @object
	.size	PORT_SPI_CS, 4
PORT_SPI_CS:
	.long	-2147482918
	.global	Enc28j60Bank
	.section	.bss,"aw",@nobits
	.type	Enc28j60Bank, @object
	.size	Enc28j60Bank, 1
Enc28j60Bank:
	.zero	1
	.global	NextPacketPtr
	.p2align	1
	.type	NextPacketPtr, @object
	.size	NextPacketPtr, 2
NextPacketPtr:
	.zero	2
	.text
	.p2align	1
	.global	chipSelectHighE
	.type	chipSelectHighE, @function
chipSelectHighE:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:26:   *PORT_SPI_CS = 1;
	ld.w	r0, [PORT_SPI_CS]	# PORT_SPI_CS.0_1, PORT_SPI_CS
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:26:   *PORT_SPI_CS = 1;
	mov.s	r1, 1	# tmp27,
	st.s	[r0], r1	# *PORT_SPI_CS.0_1, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:27: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	chipSelectHighE, .-chipSelectHighE
	.p2align	1
	.global	chipSelectLowE
	.type	chipSelectLowE, @function
chipSelectLowE:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:29:   *PORT_SPI_CS = 0;
	ld.w	r0, [PORT_SPI_CS]	# PORT_SPI_CS.1_1, PORT_SPI_CS
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:29:   *PORT_SPI_CS = 0;
	xor.w	r1, r1	# tmp27
	st.s	[r0], r1	# *PORT_SPI_CS.1_1, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:30: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	chipSelectLowE, .-chipSelectLowE
	.p2align	1
	.global	spiRecE
	.type	spiRecE, @function
spiRecE:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:33:     send_spi(SPI1, 0x00);
	mov.w	r0, sp	# tmp29,
	xor.w	r1, r1	# tmp30
	st.w	[r0 + (4)], r1	#, tmp30
	mov.w	r1, 1	# tmp31,
	st.w	[r0], r1	#, tmp31
	call	send_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:34:     return read_spi(SPI1);
	mov.w	r1, sp	# tmp32,
	mov.w	r0, 1	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	read_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:35:  }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spiRecE, .-spiRecE
	.p2align	1
	.global	spiSendE
	.type	spiSendE, @function
spiSendE:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp27, b
	st.b	[r13 + (-4)], r0	# b, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:38:     send_spi(SPI1, b);
	ld.b	r1, [r13 + (-4)]	# _1, b
	mov.w	r0, sp	# tmp29,
	st.w	[r0 + (4)], r1	#, _1
	mov.w	r1, 1	# tmp30,
	st.w	[r0], r1	#, tmp30
	call	send_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:39: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spiSendE, .-spiSendE
	.p2align	1
	.global	enc28j60ReadOp
	.type	enc28j60ReadOp, @function
enc28j60ReadOp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp35, op
	ld.w	r0, [r13 + (12)]	# tmp37, address
	st.b	[r13 + (-8)], r1	# op, tmp36
	st.b	[r13 + (-12)], r0	# address, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:45:         chipSelectLowE();
	call	chipSelectLowE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:47:         spiSendE(op | (address & ADDR_MASK));
	ld.b	r0, [r13 + (-12)]	# address.2_1, address
	mov.w	r1, 31	# tmp40,
	and.w	r0, r1	# tmp39, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:47:         spiSendE(op | (address & ADDR_MASK));
	ld.b	r1, [r13 + (-8)]	# op.3_3, op
	or.w	r0, r1	# tmp41, op.3_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:47:         spiSendE(op | (address & ADDR_MASK));
	zex.b	r0, r0	# _6, _5
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, _6
	call	spiSendE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:49:         ret = spiRecE();
	call	spiRecE		#
	st.b	[r13 + (-1)], r0	# ret,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:51:         if(address & 0x80)
	ld.b	r0, [r13 + (-12)]	# address.4_7, address
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:51:         if(address & 0x80)
	sex.b	r1, r0	# tmp43, address.4_7
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jges	.L7		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:53:                 ret = spiRecE();
	call	spiRecE		#
	st.b	[r13 + (-1)], r0	# ret,
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:56:         chipSelectHighE();
	call	chipSelectHighE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:57:         return ret;
	ld.b	r0, [r13 + (-1)]	# _20, ret
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:58: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60ReadOp, .-enc28j60ReadOp
	.p2align	1
	.global	enc28j60WriteOp
	.type	enc28j60WriteOp, @function
enc28j60WriteOp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r2, [r13 + (8)]	# tmp33, op
	ld.w	r1, [r13 + (12)]	# tmp35, address
	ld.w	r0, [r13 + (16)]	# tmp37, data
	st.b	[r13 + (-4)], r2	# op, tmp34
	st.b	[r13 + (-8)], r1	# address, tmp36
	st.b	[r13 + (-12)], r0	# data, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:62:         chipSelectLowE();
	call	chipSelectLowE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:64:         spiSendE(op | (address & ADDR_MASK));
	ld.b	r0, [r13 + (-8)]	# address.5_1, address
	mov.w	r1, 31	# tmp40,
	and.w	r0, r1	# tmp39, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:64:         spiSendE(op | (address & ADDR_MASK));
	ld.b	r1, [r13 + (-4)]	# op.6_3, op
	or.w	r0, r1	# tmp41, op.6_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:64:         spiSendE(op | (address & ADDR_MASK));
	zex.b	r0, r0	# _6, _5
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, _6
	call	spiSendE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:66:         spiSendE(data);
	ld.b	r0, [r13 + (-12)]	# _7, data
	mov.w	r1, sp	# tmp43,
	st.w	[r1], r0	#, _7
	call	spiSendE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:67:         chipSelectHighE();
	call	chipSelectHighE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:68: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60WriteOp, .-enc28j60WriteOp
	.p2align	1
	.global	enc28j60ReadBuffer
	.type	enc28j60ReadBuffer, @function
enc28j60ReadBuffer:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp27, len
	st.s	[r13 + (-8)], r0	# len, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:73:         chipSelectLowE();
	call	chipSelectLowE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:75:         spiSendE(ENC28J60_READ_BUF_MEM);
	mov.w	r1, sp	# tmp29,
	mov.w	r0, 58	# tmp30,
	st.w	[r1], r0	#, tmp30
	call	spiSendE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:76:         while(len)
	j	.L11		#
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:78:                 len--;
	ld.s	r0, [r13 + (-8)]	# len.7_1, len
	add.w	r0, -1 #111	# tmp31,
	st.s	[r13 + (-8)], r0	# len, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:80:                 d = spiRecE();
	call	spiRecE		#
	st.b	[r13 + (-1)], r0	# d,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:81:                 *data = d;
	ld.w	r0, [r13 + (12)]	# tmp33, data
	ld.b	r1, [r13 + (-1)]	# tmp34, d
	st.b	[r0], r1	# *data_3, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:82:                 data++;
	ld.w	r0, [r13 + (12)]	# tmp36, data
	add.w	r0, 1 #111	# tmp35,
	st.w	[r13 + (12)], r0	# data, tmp35
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:76:         while(len)
	ld.s	r1, [r13 + (-8)]	# tmp37, len
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:84:         *data='\0';
	ld.w	r0, [r13 + (12)]	# tmp39, data
	xor.w	r1, r1	# tmp40
	st.b	[r0], r1	# *data_3, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:85:         chipSelectHighE();
	call	chipSelectHighE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:86: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60ReadBuffer, .-enc28j60ReadBuffer
	.p2align	1
	.global	enc28j60WriteBuffer
	.type	enc28j60WriteBuffer, @function
enc28j60WriteBuffer:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp29, len
	st.s	[r13 + (-4)], r0	# len, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:90:         chipSelectLowE();
	call	chipSelectLowE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:92:         spiSendE(ENC28J60_WRITE_BUF_MEM);
	mov.w	r1, sp	# tmp31,
	mov.w	r0, 122	# tmp32,
	st.w	[r1], r0	#, tmp32
	call	spiSendE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:93:         while(len)
	j	.L14		#
.L15:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:95:                 len--;
	ld.s	r0, [r13 + (-4)]	# len.8_1, len
	add.w	r0, -1 #111	# tmp33,
	st.s	[r13 + (-4)], r0	# len, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:97:                 spiSendE(*data);
	ld.w	r0, [r13 + (12)]	# tmp35, data
	ld.b	r0, [r0]	# _2, *data_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:97:                 spiSendE(*data);
	zex.b	r0, r0	# _3, _2
	mov.w	r1, sp	# tmp36,
	st.w	[r1], r0	#, _3
	call	spiSendE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:98:                 data++;
	ld.w	r0, [r13 + (12)]	# tmp38, data
	add.w	r0, 1 #111	# tmp37,
	st.w	[r13 + (12)], r0	# data, tmp37
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:93:         while(len)
	ld.s	r1, [r13 + (-4)]	# tmp39, len
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L15		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:100:         chipSelectHighE();
	call	chipSelectHighE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:101: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60WriteBuffer, .-enc28j60WriteBuffer
	.p2align	1
	.global	enc28j60SetBank
	.type	enc28j60SetBank, @function
enc28j60SetBank:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp36, address
	st.b	[r13 + (-4)], r0	# address, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:106:         if((address & BANK_MASK) != Enc28j60Bank)
	ld.b	r1, [r13 + (-4)]	# _1, address
	mov.w	r0, 96	# tmp38,
	and.w	r1, r0	# _2, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:106:         if((address & BANK_MASK) != Enc28j60Bank)
	ld.b	r0, [Enc28j60Bank]	# Enc28j60Bank.9_3, Enc28j60Bank
	zex.b	r0, r0	# _4, Enc28j60Bank.9_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:106:         if((address & BANK_MASK) != Enc28j60Bank)
	cmp.w	r1, r0	# _2, _4
	jz	.L18		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:109:                 enc28j60WriteOp(ENC28J60_BIT_FIELD_CLR, ECON1, (ECON1_BSEL1|ECON1_BSEL0));
	mov.w	r0, sp	# tmp39,
	mov.w	r1, 3	# tmp40,
	st.w	[r0 + (8)], r1	#, tmp40
	mov.w	r1, 31	# tmp41,
	st.w	[r0 + (4)], r1	#, tmp41
	mov.w	r1, 160	# tmp42,
	st.w	[r0], r1	#, tmp42
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:110:                 enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, ECON1, (address & BANK_MASK)>>5);
	ld.b	r0, [r13 + (-4)]	# _5, address
	mov.w	r1, 5	# tmp43,
	shr.w	r0, r1	# _6, tmp43
	zex.b	r1, r0	# _8, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:110:                 enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, ECON1, (address & BANK_MASK)>>5);
	mov.w	r0, 3	# tmp44,
	and.w	r1, r0	# _9, tmp44
	mov.w	r0, sp	# tmp45,
	st.w	[r0 + (8)], r1	#, _9
	mov.w	r1, 31	# tmp46,
	st.w	[r0 + (4)], r1	#, tmp46
	mov.w	r1, 128	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:111:                 Enc28j60Bank = (address & BANK_MASK);
	ld.b	r0, [r13 + (-4)]	# tmp48, address
	mov.w	r1, 96	# tmp50,
	and.w	r0, r1	# tmp49, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:111:                 Enc28j60Bank = (address & BANK_MASK);
	st.b	[Enc28j60Bank], r0	# Enc28j60Bank, _10
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:113: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60SetBank, .-enc28j60SetBank
	.p2align	1
	.global	enc28j60Read
	.type	enc28j60Read, @function
enc28j60Read:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp30, address
	st.b	[r13 + (-4)], r0	# address, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:118:         enc28j60SetBank(address);
	ld.b	r0, [r13 + (-4)]	# _1, address
	mov.w	r1, sp	# tmp32,
	st.w	[r1], r0	#, _1
	call	enc28j60SetBank		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:120:         return enc28j60ReadOp(ENC28J60_READ_CTRL_REG, address);
	ld.b	r1, [r13 + (-4)]	# _2, address
	mov.w	r0, sp	# tmp33,
	st.w	[r0 + (4)], r1	#, _2
	xor.w	r1, r1	# tmp34
	st.w	[r0], r1	#, tmp34
	call	enc28j60ReadOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:121: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60Read, .-enc28j60Read
	.p2align	1
	.global	enc28j60Write
	.type	enc28j60Write, @function
enc28j60Write:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp29, address
	ld.w	r0, [r13 + (12)]	# tmp31, data
	st.b	[r13 + (-4)], r1	# address, tmp30
	st.b	[r13 + (-8)], r0	# data, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:126:         enc28j60SetBank(address);
	ld.b	r0, [r13 + (-4)]	# _1, address
	mov.w	r1, sp	# tmp33,
	st.w	[r1], r0	#, _1
	call	enc28j60SetBank		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:128:         enc28j60WriteOp(ENC28J60_WRITE_CTRL_REG, address, data);
	ld.b	r1, [r13 + (-4)]	# _2, address
	ld.b	r2, [r13 + (-8)]	# _3, data
	mov.w	r0, sp	# tmp34,
	st.w	[r0 + (8)], r2	#, _3
	st.w	[r0 + (4)], r1	#, _2
	mov.w	r1, 64	# tmp35,
	st.w	[r0], r1	#, tmp35
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:129: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60Write, .-enc28j60Write
	.p2align	1
	.global	enc28j60PhyWrite
	.type	enc28j60PhyWrite, @function
enc28j60PhyWrite:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp35, address
	ld.w	r0, [r13 + (12)]	# tmp37, data
	st.b	[r13 + (-4)], r1	# address, tmp36
	st.s	[r13 + (-8)], r0	# data, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:134:         enc28j60Write(MIREGADR, address);
	ld.b	r1, [r13 + (-4)]	# _1, address
	mov.w	r0, sp	# tmp39,
	st.w	[r0 + (4)], r1	#, _1
	mov.w	r1, 212	# tmp40,
	st.w	[r0], r1	#, tmp40
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:136:         enc28j60Write(MIWRL, data);
	ld.s	r0, [r13 + (-8)]	# tmp41, data
	zex.b	r1, r0	# _3, _2
	mov.w	r0, sp	# tmp42,
	st.w	[r0 + (4)], r1	#, _3
	mov.w	r1, 214	# tmp43,
	st.w	[r0], r1	#, tmp43
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:137:         enc28j60Write(MIWRH, data>>8);
	ld.s	r0, [r13 + (-8)]	# tmp44, data
	mov.w	r1, 8	# tmp46,
	shr.w	r0, r1	# tmp45, tmp46
	zex.b	r1, r0	# _6, _5
	mov.w	r0, sp	# tmp47,
	st.w	[r0 + (4)], r1	#, _6
	mov.w	r1, 215	# tmp48,
	st.w	[r0], r1	#, tmp48
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:139:         while(enc28j60Read(MISTAT) & MISTAT_BUSY) {
	j	.L23		#
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:140:                 asm("nop\n");
# 140 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c" 1
	nop

.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:139:         while(enc28j60Read(MISTAT) & MISTAT_BUSY) {
	mov.w	r1, sp	# tmp49,
	mov.w	r0, 234	# tmp50,
	st.w	[r1], r0	#, tmp50
	call	enc28j60Read		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:139:         while(enc28j60Read(MISTAT) & MISTAT_BUSY) {
	zex.b	r1, r0	# _8, _7
	mov.w	r0, 1	# tmp51,
	and.w	r1, r0	# _9, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:139:         while(enc28j60Read(MISTAT) & MISTAT_BUSY) {
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# _9, tmp52
	jnz	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:142: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60PhyWrite, .-enc28j60PhyWrite
	.p2align	1
	.global	enc28j60PacketSend
	.type	enc28j60PacketSend, @function
enc28j60PacketSend:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp35, len
	st.s	[r13 + (-4)], r0	# len, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:147: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, ECON1, ECON1_TXRST);
	mov.w	r0, sp	# tmp37,
	mov.w	r1, 128	# tmp38,
	st.w	[r0 + (8)], r1	#, tmp38
	mov.w	r1, 31	# tmp39,
	st.w	[r0 + (4)], r1	#, tmp39
	mov.w	r1, 128	# tmp40,
	st.w	[r0], r1	#, tmp40
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:148: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_CLR, ECON1, ECON1_TXRST);
	mov.w	r0, sp	# tmp41,
	mov.w	r1, 128	# tmp42,
	st.w	[r0 + (8)], r1	#, tmp42
	mov.w	r1, 31	# tmp43,
	st.w	[r0 + (4)], r1	#, tmp43
	mov.w	r1, 160	# tmp44,
	st.w	[r0], r1	#, tmp44
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:149: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_CLR, EIR, EIR_TXERIF);
	mov.w	r0, sp	# tmp45,
	mov.w	r1, 2	# tmp46,
	st.w	[r0 + (8)], r1	#, tmp46
	mov.w	r1, 28	# tmp47,
	st.w	[r0 + (4)], r1	#, tmp47
	mov.w	r1, 160	# tmp48,
	st.w	[r0], r1	#, tmp48
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:155: 	enc28j60Write(EWRPTL, TXSTART_INIT&0xFF);
	mov.w	r0, sp	# tmp49,
	mov.w	r1, 255	# tmp50,
	st.w	[r0 + (4)], r1	#, tmp50
	mov.w	r1, 2	# tmp51,
	st.w	[r0], r1	#, tmp51
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:156: 	enc28j60Write(EWRPTH, TXSTART_INIT>>8);
	mov.w	r0, sp	# tmp52,
	mov.w	r1, 25	# tmp53,
	st.w	[r0 + (4)], r1	#, tmp53
	mov.w	r1, 3	# tmp54,
	st.w	[r0], r1	#, tmp54
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:158: 	enc28j60Write(ETXNDL, (TXSTART_INIT+len)&0xFF);
	ld.s	r0, [r13 + (-4)]	# tmp55, len
	add.w	r0, -1 #111	# tmp56,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:158: 	enc28j60Write(ETXNDL, (TXSTART_INIT+len)&0xFF);
	zex.b	r1, r0	# _3, _2
	mov.w	r0, sp	# tmp57,
	st.w	[r0 + (4)], r1	#, _3
	mov.w	r1, 6	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:159: 	enc28j60Write(ETXNDH, (TXSTART_INIT+len)>>8);
	ld.s	r0, [r13 + (-4)]	# _4, len
	mov.w	r1, 6655	# tmp59,
	add.w	r0, r1 #222	# _5, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:159: 	enc28j60Write(ETXNDH, (TXSTART_INIT+len)>>8);
	mov.w	r1, 8	# tmp60,
	shr.w	r0, r1	# _6, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:159: 	enc28j60Write(ETXNDH, (TXSTART_INIT+len)>>8);
	zex.b	r1, r0	# _8, _7
	mov.w	r0, sp	# tmp61,
	st.w	[r0 + (4)], r1	#, _8
	mov.w	r1, 7	# tmp62,
	st.w	[r0], r1	#, tmp62
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:161: 	enc28j60WriteOp(ENC28J60_WRITE_BUF_MEM, 0, 0x00);
	mov.w	r0, sp	# tmp63,
	xor.w	r1, r1	# tmp64
	st.w	[r0 + (8)], r1	#, tmp64
	xor.w	r1, r1	# tmp65
	st.w	[r0 + (4)], r1	#, tmp65
	mov.w	r1, 122	# tmp66,
	st.w	[r0], r1	#, tmp66
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:163: 	enc28j60WriteBuffer(len, packet);
	ld.s	r1, [r13 + (-4)]	# _9, len
	mov.w	r0, sp	# tmp67,
	ld.w	r2, [r13 + (12)]	# tmp68, packet
	st.w	[r0 + (4)], r2	#, tmp68
	st.w	[r0], r1	#, _9
	call	enc28j60WriteBuffer		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:165: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, ECON1, ECON1_TXRTS);
	mov.w	r0, sp	# tmp69,
	mov.w	r1, 8	# tmp70,
	st.w	[r0 + (8)], r1	#, tmp70
	mov.w	r1, 31	# tmp71,
	st.w	[r0 + (4)], r1	#, tmp71
	mov.w	r1, 128	# tmp72,
	st.w	[r0], r1	#, tmp72
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:171: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60PacketSend, .-enc28j60PacketSend
	.p2align	1
	.global	enc28j60PacketReceive
	.type	enc28j60PacketReceive, @function
enc28j60PacketReceive:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp70, maxlen
	st.s	[r13 + (-8)], r0	# maxlen, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:185: 	if( enc28j60Read(EPKTCNT) ==0 ){
	mov.w	r1, sp	# tmp72,
	mov.w	r0, 57	# tmp73,
	st.w	[r1], r0	#, tmp73
	call	enc28j60Read		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:185: 	if( enc28j60Read(EPKTCNT) ==0 ){
	zex.b	r1, r0	# tmp74, _1
	xor.w	r0, r0	# tmp75
	cmp.w	r1, r0	# tmp74, tmp75
	jnz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:186: 		return(0);
	xor.w	r0, r0	# _42
	j	.L28		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:190: 	enc28j60Write(ERDPTL, (NextPacketPtr));
	ld.s	r0, [NextPacketPtr]	# NextPacketPtr.10_2, NextPacketPtr
	zex.b	r1, r0	# _4, _3
	mov.w	r0, sp	# tmp76,
	st.w	[r0 + (4)], r1	#, _4
	xor.w	r1, r1	# tmp77
	st.w	[r0], r1	#, tmp77
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:191: 	enc28j60Write(ERDPTH, (NextPacketPtr)>>8);
	ld.s	r0, [NextPacketPtr]	# NextPacketPtr.11_5, NextPacketPtr
	zex.s	r0, r0	# tmp78, NextPacketPtr.11_5
	mov.w	r1, 8	# tmp80,
	shr.w	r0, r1	# tmp79, tmp80
	zex.b	r1, r0	# _8, _7
	mov.w	r0, sp	# tmp81,
	st.w	[r0 + (4)], r1	#, _8
	mov.w	r1, 1	# tmp82,
	st.w	[r0], r1	#, tmp82
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:193: 	NextPacketPtr  = enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0);
	mov.w	r0, sp	# tmp83,
	xor.w	r1, r1	# tmp84
	st.w	[r0 + (4)], r1	#, tmp84
	mov.w	r1, 58	# tmp85,
	st.w	[r0], r1	#, tmp85
	call	enc28j60ReadOp		#
	zex.b	r0, r0	# tmp86, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:193: 	NextPacketPtr  = enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0);
	st.s	[NextPacketPtr], r0	# NextPacketPtr, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:194: 	NextPacketPtr |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	mov.w	r0, sp	# tmp87,
	xor.w	r1, r1	# tmp88
	st.w	[r0 + (4)], r1	#, tmp88
	mov.w	r1, 58	# tmp89,
	st.w	[r0], r1	#, tmp89
	call	enc28j60ReadOp		#
	zex.b	r0, r0	# _12, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:194: 	NextPacketPtr |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	mov.w	r1, 8	# tmp90,
	shl.w	r0, r1	# _52, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:194: 	NextPacketPtr |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	ld.s	r1, [NextPacketPtr]	# NextPacketPtr.12_14, NextPacketPtr
	or.w	r0, r1	# tmp91, NextPacketPtr.13_15
	st.s	[NextPacketPtr], r0	# NextPacketPtr, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:200: 	len  = enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0);
	mov.w	r0, sp	# tmp92,
	xor.w	r1, r1	# tmp93
	st.w	[r0 + (4)], r1	#, tmp93
	mov.w	r1, 58	# tmp94,
	st.w	[r0], r1	#, tmp94
	call	enc28j60ReadOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:200: 	len  = enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0);
	zex.b	r0, r0	# tmp95, _18
	st.s	[r13 + (-2)], r0	# len, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:201: 	len |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	mov.w	r0, sp	# tmp97,
	xor.w	r1, r1	# tmp98
	st.w	[r0 + (4)], r1	#, tmp98
	mov.w	r1, 58	# tmp99,
	st.w	[r0], r1	#, tmp99
	call	enc28j60ReadOp		#
	zex.b	r0, r0	# _20, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:201: 	len |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	mov.w	r1, 8	# tmp100,
	shl.w	r0, r1	# _57, tmp100
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:201: 	len |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	ld.s	r1, [r13 + (-2)]	# len.14_22, len
	or.w	r0, r1	# tmp101, len.14_22
	st.s	[r13 + (-2)], r0	# len, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:202:         len-=4; //remove the CRC count
	ld.s	r0, [r13 + (-2)]	# tmp102, len
	add.w	r0, -4 #111	# tmp103,
	st.s	[r13 + (-2)], r0	# len, tmp104
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:204: 	rxstat  = enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0);
	mov.w	r0, sp	# tmp105,
	xor.w	r1, r1	# tmp106
	st.w	[r0 + (4)], r1	#, tmp106
	mov.w	r1, 58	# tmp107,
	st.w	[r0], r1	#, tmp107
	call	enc28j60ReadOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:204: 	rxstat  = enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0);
	zex.b	r0, r0	# tmp108, _24
	st.s	[r13 + (-4)], r0	# rxstat, tmp109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:205: 	rxstat |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	mov.w	r0, sp	# tmp110,
	xor.w	r1, r1	# tmp111
	st.w	[r0 + (4)], r1	#, tmp111
	mov.w	r1, 58	# tmp112,
	st.w	[r0], r1	#, tmp112
	call	enc28j60ReadOp		#
	zex.b	r0, r0	# _26, _25
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:205: 	rxstat |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	mov.w	r1, 8	# tmp113,
	shl.w	r0, r1	# _63, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:205: 	rxstat |= enc28j60ReadOp(ENC28J60_READ_BUF_MEM, 0)<<8;
	ld.s	r1, [r13 + (-4)]	# rxstat.15_28, rxstat
	or.w	r0, r1	# tmp114, rxstat.15_28
	st.s	[r13 + (-4)], r0	# rxstat, _29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:207:         if (len>maxlen-1){
	ld.s	r1, [r13 + (-8)]	# tmp115, maxlen
	ld.s	r0, [r13 + (-2)]	# tmp116, len
	cmp.w	r1, r0	# tmp115, tmp116
	jg	.L29		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:208:                 len=maxlen-1;
	ld.s	r0, [r13 + (-8)]	# tmp117, maxlen
	add.w	r0, -1 #111	# tmp118,
	st.s	[r13 + (-2)], r0	# len, tmp119
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:213:         if ((rxstat & 0x80)==0){
	ld.s	r1, [r13 + (-4)]	# _30, rxstat
	mov.w	r0, 128	# tmp120,
	and.w	r1, r0	# _31, tmp120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:213:         if ((rxstat & 0x80)==0){
	xor.w	r0, r0	# tmp121
	cmp.w	r1, r0	# _31, tmp121
	jnz	.L30		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:215:                 len=0;
	xor.w	r0, r0	# tmp122
	st.s	[r13 + (-2)], r0	# len, tmp122
	j	.L31		#
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:218:                 enc28j60ReadBuffer(len, packet);
	ld.s	r1, [r13 + (-2)]	# _32, len
	mov.w	r0, sp	# tmp123,
	ld.w	r2, [r13 + (12)]	# tmp124, packet
	st.w	[r0 + (4)], r2	#, tmp124
	st.w	[r0], r1	#, _32
	call	enc28j60ReadBuffer		#
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:222: 	enc28j60Write(ERXRDPTL, (NextPacketPtr));
	ld.s	r0, [NextPacketPtr]	# NextPacketPtr.16_33, NextPacketPtr
	zex.b	r1, r0	# _35, _34
	mov.w	r0, sp	# tmp125,
	st.w	[r0 + (4)], r1	#, _35
	mov.w	r1, 12	# tmp126,
	st.w	[r0], r1	#, tmp126
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:223: 	enc28j60Write(ERXRDPTH, (NextPacketPtr)>>8);
	ld.s	r0, [NextPacketPtr]	# NextPacketPtr.17_36, NextPacketPtr
	zex.s	r0, r0	# tmp127, NextPacketPtr.17_36
	mov.w	r1, 8	# tmp129,
	shr.w	r0, r1	# tmp128, tmp129
	zex.b	r1, r0	# _39, _38
	mov.w	r0, sp	# tmp130,
	st.w	[r0 + (4)], r1	#, _39
	mov.w	r1, 13	# tmp131,
	st.w	[r0], r1	#, tmp131
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:225: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, ECON2, ECON2_PKTDEC);
	mov.w	r0, sp	# tmp132,
	mov.w	r1, 64	# tmp133,
	st.w	[r0 + (8)], r1	#, tmp133
	mov.w	r1, 30	# tmp134,
	st.w	[r0 + (4)], r1	#, tmp134
	mov.w	r1, 128	# tmp135,
	st.w	[r0], r1	#, tmp135
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:226: 	return(len);
	ld.s	r0, [r13 + (-2)]	# _42, len
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:227: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60PacketReceive, .-enc28j60PacketReceive
	.p2align	1
	.global	enc28j60Init
	.type	enc28j60Init, @function
enc28j60Init:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:234:         chipSelectHighE();
	call	chipSelectHighE		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:237: 	enc28j60WriteOp(ENC28J60_SOFT_RESET, 0, ENC28J60_SOFT_RESET);
	mov.w	r0, sp	# tmp43,
	mov.w	r1, 255	# tmp44,
	st.w	[r0 + (8)], r1	#, tmp44
	xor.w	r1, r1	# tmp45
	st.w	[r0 + (4)], r1	#, tmp45
	mov.w	r1, 255	# tmp46,
	st.w	[r0], r1	#, tmp46
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:238: 	delay(250);
	mov.w	r1, sp	# tmp47,
	mov.w	r0, 250	# tmp48,
	st.w	[r1], r0	#, tmp48
	call	delay		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:248: 	NextPacketPtr = RXSTART_INIT;
	xor.w	r0, r0	# tmp49
	st.s	[NextPacketPtr], r0	# NextPacketPtr, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:250: 	enc28j60Write(ERXSTL, RXSTART_INIT&0xFF);
	mov.w	r0, sp	# tmp50,
	xor.w	r1, r1	# tmp51
	st.w	[r0 + (4)], r1	#, tmp51
	mov.w	r1, 8	# tmp52,
	st.w	[r0], r1	#, tmp52
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:251: 	enc28j60Write(ERXSTH, RXSTART_INIT>>8);
	mov.w	r0, sp	# tmp53,
	xor.w	r1, r1	# tmp54
	st.w	[r0 + (4)], r1	#, tmp54
	mov.w	r1, 9	# tmp55,
	st.w	[r0], r1	#, tmp55
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:253: 	enc28j60Write(ERXRDPTL, RXSTART_INIT&0xFF);
	mov.w	r0, sp	# tmp56,
	xor.w	r1, r1	# tmp57
	st.w	[r0 + (4)], r1	#, tmp57
	mov.w	r1, 12	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:254: 	enc28j60Write(ERXRDPTH, RXSTART_INIT>>8);
	mov.w	r0, sp	# tmp59,
	xor.w	r1, r1	# tmp60
	st.w	[r0 + (4)], r1	#, tmp60
	mov.w	r1, 13	# tmp61,
	st.w	[r0], r1	#, tmp61
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:256: 	enc28j60Write(ERXNDL, RXSTOP_INIT&0xFF);
	mov.w	r0, sp	# tmp62,
	mov.w	r1, 254	# tmp63,
	st.w	[r0 + (4)], r1	#, tmp63
	mov.w	r1, 10	# tmp64,
	st.w	[r0], r1	#, tmp64
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:257: 	enc28j60Write(ERXNDH, RXSTOP_INIT>>8);
	mov.w	r0, sp	# tmp65,
	mov.w	r1, 25	# tmp66,
	st.w	[r0 + (4)], r1	#, tmp66
	mov.w	r1, 11	# tmp67,
	st.w	[r0], r1	#, tmp67
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:259: 	enc28j60Write(ETXSTL, TXSTART_INIT&0xFF);
	mov.w	r0, sp	# tmp68,
	mov.w	r1, 255	# tmp69,
	st.w	[r0 + (4)], r1	#, tmp69
	mov.w	r1, 4	# tmp70,
	st.w	[r0], r1	#, tmp70
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:260: 	enc28j60Write(ETXSTH, TXSTART_INIT>>8);
	mov.w	r0, sp	# tmp71,
	mov.w	r1, 25	# tmp72,
	st.w	[r0 + (4)], r1	#, tmp72
	mov.w	r1, 5	# tmp73,
	st.w	[r0], r1	#, tmp73
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:262: 	enc28j60Write(ETXNDL, TXSTOP_INIT&0xFF);
	mov.w	r0, sp	# tmp74,
	mov.w	r1, 255	# tmp75,
	st.w	[r0 + (4)], r1	#, tmp75
	mov.w	r1, 6	# tmp76,
	st.w	[r0], r1	#, tmp76
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:263: 	enc28j60Write(ETXNDH, TXSTOP_INIT>>8);
	mov.w	r0, sp	# tmp77,
	mov.w	r1, 31	# tmp78,
	st.w	[r0 + (4)], r1	#, tmp78
	mov.w	r1, 7	# tmp79,
	st.w	[r0], r1	#, tmp79
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:277: 	enc28j60Write(ERXFCON, ERXFCON_UCEN|ERXFCON_CRCEN|ERXFCON_PMEN);
	mov.w	r0, sp	# tmp80,
	mov.w	r1, 176	# tmp81,
	st.w	[r0 + (4)], r1	#, tmp81
	mov.w	r1, 56	# tmp82,
	st.w	[r0], r1	#, tmp82
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:278: 	enc28j60Write(EPMM0, 0x3f);
	mov.w	r0, sp	# tmp83,
	mov.w	r1, 63	# tmp84,
	st.w	[r0 + (4)], r1	#, tmp84
	mov.w	r1, 40	# tmp85,
	st.w	[r0], r1	#, tmp85
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:279: 	enc28j60Write(EPMM1, 0x30);
	mov.w	r0, sp	# tmp86,
	mov.w	r1, 48	# tmp87,
	st.w	[r0 + (4)], r1	#, tmp87
	mov.w	r1, 41	# tmp88,
	st.w	[r0], r1	#, tmp88
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:280: 	enc28j60Write(EPMCSL, 0xf9);
	mov.w	r0, sp	# tmp89,
	mov.w	r1, 249	# tmp90,
	st.w	[r0 + (4)], r1	#, tmp90
	mov.w	r1, 48	# tmp91,
	st.w	[r0], r1	#, tmp91
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:281: 	enc28j60Write(EPMCSH, 0xf7);
	mov.w	r0, sp	# tmp92,
	mov.w	r1, 247	# tmp93,
	st.w	[r0 + (4)], r1	#, tmp93
	mov.w	r1, 49	# tmp94,
	st.w	[r0], r1	#, tmp94
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:288: 	enc28j60Write(MACON1, MACON1_MARXEN|MACON1_TXPAUS|MACON1_RXPAUS);
	mov.w	r0, sp	# tmp95,
	mov.w	r1, 13	# tmp96,
	st.w	[r0 + (4)], r1	#, tmp96
	mov.w	r1, 192	# tmp97,
	st.w	[r0], r1	#, tmp97
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:290: 	enc28j60Write(MACON2, 0x00);
	mov.w	r0, sp	# tmp98,
	xor.w	r1, r1	# tmp99
	st.w	[r0 + (4)], r1	#, tmp99
	mov.w	r1, 193	# tmp100,
	st.w	[r0], r1	#, tmp100
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:292: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, MACON3, MACON3_PADCFG0|MACON3_TXCRCEN|MACON3_FRMLNEN);
	mov.w	r0, sp	# tmp101,
	mov.w	r1, 50	# tmp102,
	st.w	[r0 + (8)], r1	#, tmp102
	mov.w	r1, 194	# tmp103,
	st.w	[r0 + (4)], r1	#, tmp103
	mov.w	r1, 128	# tmp104,
	st.w	[r0], r1	#, tmp104
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:294: 	enc28j60Write(MAIPGL, 0x12);
	mov.w	r0, sp	# tmp105,
	mov.w	r1, 18	# tmp106,
	st.w	[r0 + (4)], r1	#, tmp106
	mov.w	r1, 198	# tmp107,
	st.w	[r0], r1	#, tmp107
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:295: 	enc28j60Write(MAIPGH, 0x0C);
	mov.w	r0, sp	# tmp108,
	mov.w	r1, 12	# tmp109,
	st.w	[r0 + (4)], r1	#, tmp109
	mov.w	r1, 199	# tmp110,
	st.w	[r0], r1	#, tmp110
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:297: 	enc28j60Write(MABBIPG, 0x12);
	mov.w	r0, sp	# tmp111,
	mov.w	r1, 18	# tmp112,
	st.w	[r0 + (4)], r1	#, tmp112
	mov.w	r1, 196	# tmp113,
	st.w	[r0], r1	#, tmp113
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:300: 	enc28j60Write(MAMXFLL, MAX_FRAMELEN&0xFF);	
	mov.w	r0, sp	# tmp114,
	mov.w	r1, 220	# tmp115,
	st.w	[r0 + (4)], r1	#, tmp115
	mov.w	r1, 202	# tmp116,
	st.w	[r0], r1	#, tmp116
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:301: 	enc28j60Write(MAMXFLH, MAX_FRAMELEN>>8);
	mov.w	r0, sp	# tmp117,
	mov.w	r1, 5	# tmp118,
	st.w	[r0 + (4)], r1	#, tmp118
	mov.w	r1, 203	# tmp119,
	st.w	[r0], r1	#, tmp119
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:308:         enc28j60Write(MAADR5, macaddr[0]);
	ld.w	r0, [r13 + (8)]	# tmp120, macaddr
	ld.b	r0, [r0]	# _1, *macaddr_46(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:308:         enc28j60Write(MAADR5, macaddr[0]);
	zex.b	r1, r0	# _2, _1
	mov.w	r0, sp	# tmp121,
	st.w	[r0 + (4)], r1	#, _2
	mov.w	r1, 228	# tmp122,
	st.w	[r0], r1	#, tmp122
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:309:         enc28j60Write(MAADR4, macaddr[1]);
	ld.w	r0, [r13 + (8)]	# tmp123, macaddr
	add.w	r0, 1 #111	# _3,
	ld.b	r0, [r0]	# _4, *_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:309:         enc28j60Write(MAADR4, macaddr[1]);
	zex.b	r1, r0	# _5, _4
	mov.w	r0, sp	# tmp124,
	st.w	[r0 + (4)], r1	#, _5
	mov.w	r1, 229	# tmp125,
	st.w	[r0], r1	#, tmp125
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:310:         enc28j60Write(MAADR3, macaddr[2]);
	ld.w	r0, [r13 + (8)]	# tmp126, macaddr
	add.w	r0, 2 #111	# _6,
	ld.b	r0, [r0]	# _7, *_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:310:         enc28j60Write(MAADR3, macaddr[2]);
	zex.b	r1, r0	# _8, _7
	mov.w	r0, sp	# tmp127,
	st.w	[r0 + (4)], r1	#, _8
	mov.w	r1, 226	# tmp128,
	st.w	[r0], r1	#, tmp128
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:311:         enc28j60Write(MAADR2, macaddr[3]);
	ld.w	r0, [r13 + (8)]	# tmp129, macaddr
	add.w	r0, 3 #111	# _9,
	ld.b	r0, [r0]	# _10, *_9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:311:         enc28j60Write(MAADR2, macaddr[3]);
	zex.b	r1, r0	# _11, _10
	mov.w	r0, sp	# tmp130,
	st.w	[r0 + (4)], r1	#, _11
	mov.w	r1, 227	# tmp131,
	st.w	[r0], r1	#, tmp131
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:312:         enc28j60Write(MAADR1, macaddr[4]);
	ld.w	r0, [r13 + (8)]	# tmp132, macaddr
	add.w	r0, 4 #111	# _12,
	ld.b	r0, [r0]	# _13, *_12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:312:         enc28j60Write(MAADR1, macaddr[4]);
	zex.b	r1, r0	# _14, _13
	mov.w	r0, sp	# tmp133,
	st.w	[r0 + (4)], r1	#, _14
	mov.w	r1, 224	# tmp134,
	st.w	[r0], r1	#, tmp134
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:313:         enc28j60Write(MAADR0, macaddr[5]);
	ld.w	r0, [r13 + (8)]	# tmp135, macaddr
	add.w	r0, 5 #111	# _15,
	ld.b	r0, [r0]	# _16, *_15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:313:         enc28j60Write(MAADR0, macaddr[5]);
	zex.b	r1, r0	# _17, _16
	mov.w	r0, sp	# tmp136,
	st.w	[r0 + (4)], r1	#, _17
	mov.w	r1, 225	# tmp137,
	st.w	[r0], r1	#, tmp137
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:318: 	enc28j60PhyWrite(PHCON2, PHCON2_HDLDIS);
	mov.w	r0, sp	# tmp138,
	mov.w	r1, 256	# tmp139,
	st.w	[r0 + (4)], r1	#, tmp139
	mov.w	r1, 16	# tmp140,
	st.w	[r0], r1	#, tmp140
	call	enc28j60PhyWrite		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:323: 	enc28j60SetBank(ECON1);
	mov.w	r1, sp	# tmp141,
	mov.w	r0, 31	# tmp142,
	st.w	[r1], r0	#, tmp142
	call	enc28j60SetBank		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:325: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, EIE, EIE_INTIE|EIE_PKTIE);
	mov.w	r0, sp	# tmp143,
	mov.w	r1, 192	# tmp144,
	st.w	[r0 + (8)], r1	#, tmp144
	mov.w	r1, 27	# tmp145,
	st.w	[r0 + (4)], r1	#, tmp145
	mov.w	r1, 128	# tmp146,
	st.w	[r0], r1	#, tmp146
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:327: 	enc28j60WriteOp(ENC28J60_BIT_FIELD_SET, ECON1, ECON1_RXEN);
	mov.w	r0, sp	# tmp147,
	mov.w	r1, 4	# tmp148,
	st.w	[r0 + (8)], r1	#, tmp148
	mov.w	r1, 31	# tmp149,
	st.w	[r0 + (4)], r1	#, tmp149
	mov.w	r1, 128	# tmp150,
	st.w	[r0], r1	#, tmp150
	call	enc28j60WriteOp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:330: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60Init, .-enc28j60Init
	.p2align	1
	.global	enc28j60getrev
	.type	enc28j60getrev, @function
enc28j60getrev:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:335: 	return(enc28j60Read(EREVID) & 0x1F);
	mov.w	r1, sp	# tmp29,
	mov.w	r0, 114	# tmp30,
	st.w	[r1], r0	#, tmp30
	call	enc28j60Read		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:335: 	return(enc28j60Read(EREVID) & 0x1F);
	mov.w	r1, 31	# tmp32,
	and.w	r0, r1	# tmp31, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:336: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	enc28j60getrev, .-enc28j60getrev
	.p2align	1
	.global	readPhyByte
	.type	readPhyByte, @function
readPhyByte:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp33, address
	st.b	[r13 + (-4)], r0	# address, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:339:     enc28j60Write(MIREGADR, address);
	ld.b	r1, [r13 + (-4)]	# _1, address
	mov.w	r0, sp	# tmp35,
	st.w	[r0 + (4)], r1	#, _1
	mov.w	r1, 212	# tmp36,
	st.w	[r0], r1	#, tmp36
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:340:     enc28j60Write(MICMD, MICMD_MIIRD);
	mov.w	r0, sp	# tmp37,
	mov.w	r1, 1	# tmp38,
	st.w	[r0 + (4)], r1	#, tmp38
	mov.w	r1, 210	# tmp39,
	st.w	[r0], r1	#, tmp39
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:341:     while (enc28j60Read(MISTAT) & MISTAT_BUSY)
	nop	
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:341:     while (enc28j60Read(MISTAT) & MISTAT_BUSY)
	mov.w	r1, sp	# tmp40,
	mov.w	r0, 234	# tmp41,
	st.w	[r1], r0	#, tmp41
	call	enc28j60Read		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:341:     while (enc28j60Read(MISTAT) & MISTAT_BUSY)
	zex.b	r1, r0	# _3, _2
	mov.w	r0, 1	# tmp42,
	and.w	r1, r0	# _4, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:341:     while (enc28j60Read(MISTAT) & MISTAT_BUSY)
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# _4, tmp43
	jnz	.L36		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:343:     enc28j60Write(MICMD, 0x00);
	mov.w	r0, sp	# tmp44,
	xor.w	r1, r1	# tmp45
	st.w	[r0 + (4)], r1	#, tmp45
	mov.w	r1, 210	# tmp46,
	st.w	[r0], r1	#, tmp46
	call	enc28j60Write		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:344:     return enc28j60Read(MIRDH);
	mov.w	r1, sp	# tmp47,
	mov.w	r0, 217	# tmp48,
	st.w	[r1], r0	#, tmp48
	call	enc28j60Read		#
	zex.b	r0, r0	# tmp49, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:345: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	readPhyByte, .-readPhyByte
	.p2align	1
	.global	isLinkUp
	.type	isLinkUp, @function
isLinkUp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:348:     return (readPhyByte(PHSTAT2) >> 2) & 1;
	mov.w	r1, sp	# tmp31,
	mov.w	r0, 17	# tmp32,
	st.w	[r1], r0	#, tmp32
	call	readPhyByte		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:348:     return (readPhyByte(PHSTAT2) >> 2) & 1;
	zex.s	r0, r0	# tmp33, _1
	mov.w	r1, 2	# tmp35,
	shr.w	r0, r1	# tmp34, tmp35
	mov.w	r1, 1	# tmp37,
	and.w	r0, r1	# tmp36, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/enc28j60.c:349: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isLinkUp, .-isLinkUp
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
