	.file	"basic.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL basic.c -mel -auxbase-strip basic.s
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
	.global	eth_buffer
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	eth_buffer, @object
	.size	eth_buffer, 4500
eth_buffer:
	.zero	4500
	.global	MYMAC
	.data
	.p2align	2
	.type	MYMAC, @object
	.size	MYMAC, 6
MYMAC:
	.string	"\022"
	.string	""
	.string	""
	.string	""
	.ascii	"\""
	.global	DNSIP
	.p2align	2
	.type	DNSIP, @object
	.size	DNSIP, 4
DNSIP:
	.ascii	"\300\250\001\001"
	.global	GWIP
	.p2align	2
	.type	GWIP, @object
	.size	GWIP, 4
GWIP:
	.ascii	"\300\250\001\001"
	.global	MASK
	.p2align	2
	.type	MASK, @object
	.size	MASK, 4
MASK:
	.string	"\377\377\377"
	.global	MYIP
	.p2align	2
	.type	MYIP, @object
	.size	MYIP, 4
MYIP:
	.ascii	"\300\250\001\334"
	.global	server_ip
	.p2align	2
	.type	server_ip, @object
	.size	server_ip, 14
server_ip:
	.string	"192.168.1.240"
	.global	K_API_STDIO
	.p2align	2
	.type	K_API_STDIO, @object
	.size	K_API_STDIO, 4
K_API_STDIO:
	.long	190000
	.global	K_API_STRING
	.p2align	2
	.type	K_API_STRING, @object
	.size	K_API_STRING, 4
K_API_STRING:
	.long	190100
	.global	K_API_SPRINTF
	.p2align	2
	.type	K_API_SPRINTF, @object
	.size	K_API_SPRINTF, 4
K_API_SPRINTF:
	.long	190300
	.global	K_API_GRAPHICS
	.p2align	2
	.type	K_API_GRAPHICS, @object
	.size	K_API_GRAPHICS, 4
K_API_GRAPHICS:
	.long	190400
	.global	K_API_SPI
	.p2align	2
	.type	K_API_SPI, @object
	.size	K_API_SPI, 4
K_API_SPI:
	.long	190500
	.global	K_API_TCPIP
	.p2align	2
	.type	K_API_TCPIP, @object
	.size	K_API_TCPIP, 4
K_API_TCPIP:
	.long	190600
	.global	K_API_FAT
	.p2align	2
	.type	K_API_FAT, @object
	.size	K_API_FAT, 4
K_API_FAT:
	.long	190700
	.global	program
	.p2align	2
	.type	program, @object
	.size	program, 4
program:
	.long	310000
	.global	buffer
	.p2align	2
	.type	buffer, @object
	.size	buffer, 4
buffer:
	.long	197632
	.global	program_start
	.section	.bss
	.p2align	2
	.type	program_start, @object
	.size	program_start, 4
program_start:
	.zero	4
	.global	program_end
	.p2align	2
	.type	program_end, @object
	.size	program_end, 4
program_end:
	.zero	4
	.global	linenum
	.p2align	2
	.type	linenum, @object
	.size	linenum, 4
linenum:
	.zero	4
	.global	jump_buff
	.p2align	2
	.type	jump_buff, @object
	.size	jump_buff, 8
jump_buff:
	.zero	8
	.global	txtpos
	.p2align	2
	.type	txtpos, @object
	.size	txtpos, 4
txtpos:
	.zero	4
	.global	expression_error
	.type	expression_error, @object
	.size	expression_error, 1
expression_error:
	.zero	1
	.global	list_line
	.p2align	2
	.type	list_line, @object
	.size	list_line, 4
list_line:
	.zero	4
	.global	tmptxtpos
	.p2align	2
	.type	tmptxtpos, @object
	.size	tmptxtpos, 4
tmptxtpos:
	.zero	4
	.global	current_line
	.p2align	2
	.type	current_line, @object
	.size	current_line, 4
current_line:
	.zero	4
	.global	stack_limit
	.p2align	2
	.type	stack_limit, @object
	.size	stack_limit, 4
stack_limit:
	.zero	4
	.global	stack
	.p2align	2
	.type	stack, @object
	.size	stack, 4
stack:
	.zero	4
	.global	variables_begin
	.p2align	2
	.type	variables_begin, @object
	.size	variables_begin, 4
variables_begin:
	.zero	4
	.global	bsp
	.p2align	2
	.type	bsp, @object
	.size	bsp, 4
bsp:
	.zero	4
	.global	tempsp
	.p2align	2
	.type	tempsp, @object
	.size	tempsp, 4
tempsp:
	.zero	4
	.global	table_index
	.type	table_index, @object
	.size	table_index, 1
table_index:
	.zero	1
	.global	drive
	.type	drive, @object
	.size	drive, 1
drive:
	.zero	1
	.global	eth
	.data
	.p2align	2
	.type	eth, @object
	.size	eth, 4
eth:
	.long	1
	.global	keywords
	.section	.rodata
	.p2align	2
	.type	keywords, @object
	.size	keywords, 193
keywords:
	.string	"MEM\001BYE\001EXIT\001PRINT\001?\001LIST\001RUN\001NEW\001LET\001IF\001GOTO\001FOR\001NEXT\001RETURN\001GOSUB\001END\001STOP\001INPUT\001CLS\001EDIT\001LOAD\001SAVE\001DIR\001MODE\001PLOT\001LINE\001CIRCLE\001DRAW\001HELP\001DELAY\001CURSOR\001POKE\001EXEC\001SYS\001DRIVE\001TIME\001REM\001'\001ETH\001COLOR\001"
	.global	func_tab
	.p2align	2
	.type	func_tab, @object
	.size	func_tab, 36
func_tab:
	.string	"PEEK\001ABS\001AREAD\001DREAD\001RND\001KEY\001ISKEY\001"
	.global	to_tab
	.p2align	2
	.type	to_tab, @object
	.size	to_tab, 4
to_tab:
	.string	"TO\001"
	.global	step_tab
	.p2align	2
	.type	step_tab, @object
	.size	step_tab, 6
step_tab:
	.string	"STEP\001"
	.global	relop_tab
	.p2align	2
	.type	relop_tab, @object
	.size	relop_tab, 26
relop_tab:
	.string	">=\001<>\001>\001=\001<=\001<\001!=\001AND\001OR\001"
	.text
	.p2align	1
	.global	getln
	.type	getln, @function
getln:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 28 #111	#,
# basic.c:232: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.0_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:232: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:234: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.1_3, txtpos
# basic.c:234: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp39
	st.b	[r0], r1	# *txtpos.1_3, tmp39
# basic.c:236: 	put_char(prompt);
	mov.w	r1, sp	# tmp40,
	ld.w	r0, [r13 + (8)]	# tmp41, prompt
	st.w	[r1], r0	#, tmp41
	call	put_char		#
# basic.c:237: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.2_4, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.2_4
	call	gets		#
# basic.c:239: 	l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.3_5, txtpos
	mov.w	r1, sp	# tmp43,
	st.w	[r1], r0	#, txtpos.3_5
	call	strlen		#
	st.w	[r13 + (-8)], r0	# l,
# basic.c:240: 	if (l % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# l.4_6, l
	mov.w	r0, 1	# tmp44,
	and.w	r1, r0	# _7, tmp44
# basic.c:240: 	if (l % 2 == 0)
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# _7, tmp45
	jnz	.L2		#
# basic.c:241: 		strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.5_8, txtpos
	mov.w	r0, sp	# tmp46,
	st.w	[r0], r6	#, txtpos.5_8
	call	strlen		#
	mov.w	r1, r0	# _18, tmp47
	mov.w	r0, r6	# _19, txtpos.5_8
	add.w	r0, r1 #222	# _19, _18
	mov.b	r1, 32	# tmp48,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_19], tmp48
	xor.w	r1, r1	# tmp49
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_19], tmp49
.L2:
# basic.c:243: 	strcat(txtpos, "\n");
	ld.w	r6, [txtpos]	# txtpos.6_9, txtpos
	mov.w	r0, sp	# tmp50,
	st.w	[r0], r6	#, txtpos.6_9
	call	strlen		#
	mov.w	r1, r0	# _21, tmp51
	mov.w	r0, r6	# _22, txtpos.6_9
	add.w	r0, r1 #222	# _22, _21
	mov.b	r1, 10	# tmp52,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_22], tmp52
	xor.w	r1, r1	# tmp53
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_22], tmp53
# basic.c:244: }
	nop	
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getln, .-getln
	.p2align	1
	.global	toUppercaseBuffer
	.type	toUppercaseBuffer, @function
toUppercaseBuffer:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# basic.c:248: 	char *c = txtpos;
	ld.w	r0, [txtpos]	# tmp36, txtpos
	st.w	[r13 + (-4)], r0	# c, tmp36
# basic.c:249: 	char quote = 0;
	xor.w	r0, r0	# tmp37
	st.b	[r13 + (-5)], r0	# quote, tmp37
# basic.c:251: 	while (*c != NL)
	j	.L4		#
.L9:
# basic.c:254: 		if (*c == quote)
	ld.w	r0, [r13 + (-4)]	# tmp38, c
	ld.b	r0, [r0]	# _1, *c_11
# basic.c:254: 		if (*c == quote)
	ld.b	r2, [r13 + (-5)]	#, quote
	sex.b	r1, r2	# tmp39,
	sex.b	r0, r0	# tmp40, _1
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L5		#
# basic.c:255: 			quote = 0;
	xor.w	r0, r0	# tmp41
	st.b	[r13 + (-5)], r0	# quote, tmp41
	j	.L6		#
.L5:
# basic.c:256: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp42, c
	ld.b	r0, [r0]	# _2, *c_11
# basic.c:256: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp43, _2
	mov.w	r0, 34	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L7		#
# basic.c:256: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp45, c
	ld.b	r0, [r0]	# _3, *c_11
# basic.c:256: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp46, _3
	mov.w	r0, 39	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L8		#
.L7:
# basic.c:257: 			quote = *c;
	ld.w	r0, [r13 + (-4)]	# tmp48, c
	ld.b	r0, [r0]	# tmp49, *c_11
	st.b	[r13 + (-5)], r0	# quote, tmp49
	j	.L6		#
.L8:
# basic.c:258: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.b	r0, [r13 + (-5)]	#, quote
	sex.b	r1, r0	# tmp50,
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L6		#
# basic.c:258: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp52, c
	ld.b	r0, [r0]	# _4, *c_11
# basic.c:258: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp53, _4
	mov.w	r0, 96	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jses	.L6		#
# basic.c:258: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp55, c
	ld.b	r0, [r0]	# _5, *c_11
# basic.c:258: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp56, _5
	mov.w	r0, 122	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jgs	.L6		#
# basic.c:259: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp58, c
	ld.b	r0, [r0]	# _6, *c_11
# basic.c:259: 			*c = *c + 'A' - 'a';
	add.w	r0, -32 #111	# tmp59,
	mov.w	r1, r0	# _9, _8
# basic.c:259: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp60, c
	st.b	[r0], r1	# *c_11, _9
.L6:
# basic.c:260: 		c++;
	ld.w	r0, [r13 + (-4)]	# tmp62, c
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (-4)], r0	# c, tmp61
.L4:
# basic.c:251: 	while (*c != NL)
	ld.w	r0, [r13 + (-4)]	# tmp63, c
	ld.b	r0, [r0]	# _10, *c_11
# basic.c:251: 	while (*c != NL)
	sex.b	r1, r0	# tmp64, _10
	mov.w	r0, 10	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L9		#
# basic.c:262: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	toUppercaseBuffer, .-toUppercaseBuffer
	.p2align	1
	.global	ignore_blanks
	.type	ignore_blanks, @function
ignore_blanks:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:266: 	while (*txtpos == SPACE || *txtpos == TAB)
	j	.L11		#
.L12:
# basic.c:267: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.7_1, txtpos
	add.w	r0, 1 #111	# _2,
	st.w	[txtpos], r0	# txtpos, _2
.L11:
# basic.c:266: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.8_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.8_3
# basic.c:266: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp32, _4
	mov.w	r0, 32	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L12		#
# basic.c:266: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.9_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.9_5
# basic.c:266: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp34, _6
	mov.w	r0, 9	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L12		#
# basic.c:268: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ignore_blanks, .-ignore_blanks
	.p2align	1
	.global	skip_to_end
	.type	skip_to_end, @function
skip_to_end:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# basic.c:272: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.10_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:272: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:275: 	while (*txtpos != NL)
	j	.L14		#
.L15:
# basic.c:276: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.11_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
.L14:
# basic.c:275: 	while (*txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.12_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.12_5
# basic.c:275: 	while (*txtpos != NL)
	zex.b	r1, r0	# tmp40, _6
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L15		#
# basic.c:281: 		dest = variables_begin - 1;
	ld.w	r0, [variables_begin]	# variables_begin.13_7, variables_begin
# basic.c:281: 		dest = variables_begin - 1;
	add.w	r0, -1 #111	# tmp42,
	st.w	[r13 + (-4)], r0	# dest, tmp42
.L18:
# basic.c:284: 			*dest = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.14_8, txtpos
	ld.b	r1, [r0]	# _9, *txtpos.14_8
# basic.c:284: 			*dest = *txtpos;
	ld.w	r0, [r13 + (-4)]	# tmp43, dest
	st.b	[r0], r1	# *dest_15, _9
# basic.c:285: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [program_end]	# program_end.15_10, program_end
	mov.w	r1, r0	# _11, program_end.15_10
	add.w	r1, 4 #111	# _11,
# basic.c:285: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [txtpos]	# txtpos.16_12, txtpos
# basic.c:285: 			if (txtpos == program_end + sizeof(LINENUM))
	cmp.w	r1, r0	# _11, txtpos.16_12
	jz	.L20		#
# basic.c:287: 			dest--;
	ld.w	r0, [r13 + (-4)]	# tmp45, dest
	add.w	r0, -1 #111	# tmp44,
	st.w	[r13 + (-4)], r0	# dest, tmp44
# basic.c:288: 			txtpos--;
	ld.w	r0, [txtpos]	# txtpos.17_13, txtpos
	add.w	r0, -1 #111	# _14,
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:284: 			*dest = *txtpos;
	j	.L18		#
.L20:
# basic.c:286: 				break;
	nop	
# basic.c:290: 		txtpos = dest;
	ld.w	r0, [r13 + (-4)]	# tmp46, dest
	st.w	[txtpos], r0	# txtpos, tmp46
# basic.c:292: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	skip_to_end, .-skip_to_end
	.p2align	1
	.global	findline
	.type	findline, @function
findline:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# basic.c:296: 	unsigned char *line = program_start;
	ld.w	r0, [program_start]	# tmp35, program_start
	st.w	[r13 + (-4)], r0	# line, tmp35
.L25:
# basic.c:299: 		if (line == program_end)
	ld.w	r0, [program_end]	# program_end.18_1, program_end
# basic.c:299: 		if (line == program_end)
	ld.w	r1, [r13 + (-4)]	# tmp36, line
	cmp.w	r1, r0	# tmp36, program_end.18_1
	jnz	.L22		#
# basic.c:300: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L23		#
.L22:
# basic.c:302: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [r13 + (-4)]	# tmp37, line
	ld.w	r1, [r0]	# _2, MEM[(LINENUM *)line_8]
# basic.c:302: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [linenum]	# linenum.19_3, linenum
# basic.c:302: 		if (((LINENUM *)line)[0] >= linenum)
	cmp.w	r1, r0	# _2, linenum.20_4
	js	.L24		#
# basic.c:303: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L23		#
.L24:
# basic.c:306: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp38, line
	add.w	r0, 4 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
	zex.b	r1, r0	# _7, _6
# basic.c:306: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp40, line
	add.w	r0, r1 #222	# tmp39, _7
	st.w	[r13 + (-4)], r0	# line, tmp39
# basic.c:299: 		if (line == program_end)
	j	.L25		#
.L23:
# basic.c:308: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	findline, .-findline
	.section	.rodata
	.p2align	2
.LC0:
	.string	"%d "
	.text
	.p2align	1
	.global	printline
	.type	printline, @function
printline:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:314: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [list_line]	# list_line.21_1, list_line
# basic.c:314: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [r0]	# tmp38, MEM[(LINENUM *)list_line.21_1]
	st.w	[r13 + (-4)], r0	# line_num, tmp38
# basic.c:315: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.22_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:318: 	printf("%d ", line_num);
	mov.w	r0, sp	# tmp39,
	ld.w	r1, [r13 + (-4)]	# tmp40, line_num
	st.w	[r0 + (4)], r1	#, tmp40
	mov.w	r1, .LC0	# tmp41,
	st.w	[r0], r1	#, tmp41
	call	printf		#
# basic.c:319: 	while (*list_line != NL)
	j	.L27		#
.L28:
# basic.c:321: 		put_char(*list_line);
	ld.w	r0, [list_line]	# list_line.23_4, list_line
	ld.b	r0, [r0]	# _5, *list_line.23_4
# basic.c:321: 		put_char(*list_line);
	zex.b	r0, r0	# _6, _5
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, _6
	call	put_char		#
# basic.c:322: 		list_line++;
	ld.w	r0, [list_line]	# list_line.24_7, list_line
	add.w	r0, 1 #111	# _8,
	st.w	[list_line], r0	# list_line, _8
.L27:
# basic.c:319: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.25_9, list_line
	ld.b	r0, [r0]	# _10, *list_line.25_9
# basic.c:319: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp43, _10
	mov.w	r0, 10	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L28		#
# basic.c:324: 	list_line++;
	ld.w	r0, [list_line]	# list_line.26_11, list_line
	add.w	r0, 1 #111	# _12,
	st.w	[list_line], r0	# list_line, _12
# basic.c:325: 	printf("\n");
	mov.w	r1, sp	# tmp45,
	mov.w	r0, 10	# tmp46,
	st.w	[r1], r0	#, tmp46
	call	putchar		#
# basic.c:326: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	printline, .-printline
	.p2align	1
	.global	testnum
	.type	testnum, @function
testnum:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:330: 	VAR num = 0;
	xor.w	r0, r0	# tmp41
	st.w	[r13 + (-4)], r0	# num, tmp41
# basic.c:331: 	ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.27_1, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.27_1
	call	ignore_blanks		#
# basic.c:333: 	while (*txtpos >= '0' && *txtpos <= '9')
	j	.L30		#
.L33:
# basic.c:336: 		if (num >= 0xFFFFFFFF / 10)
	ld.w	r1, [r13 + (-4)]	# num.28_2, num
# basic.c:336: 		if (num >= 0xFFFFFFFF / 10)
	mov.w	r0, 429496728	# tmp43,
	cmp.w	r1, r0	# num.28_2, tmp43
	jse	.L31		#
# basic.c:338: 			num = 0xFFFFFFFF;
	mov.w	r0, -1	# tmp44,
	st.w	[r13 + (-4)], r0	# num, tmp44
# basic.c:339: 			break;
	j	.L32		#
.L31:
# basic.c:342: 		num = num * 10 + *txtpos - '0';
	ld.w	r1, [r13 + (-4)]	# tmp45, num
	mov.w	r0, r1	# tmp46, tmp45
	mov.w	r2, 2	# tmp48,
	shl.w	r0, r2	# tmp47, tmp48
	add.w	r0, r1 #222	# tmp46, tmp45
	add.w	r0, r0 #222	# tmp49, tmp46
# basic.c:342: 		num = num * 10 + *txtpos - '0';
	ld.w	r1, [txtpos]	# txtpos.29_4, txtpos
	ld.b	r1, [r1]	# _5, *txtpos.29_4
	zex.b	r1, r1	# _6, _5
# basic.c:342: 		num = num * 10 + *txtpos - '0';
	add.w	r0, r1 #222	# _7, _6
# basic.c:342: 		num = num * 10 + *txtpos - '0';
	add.w	r0, -48 #111	# tmp50,
	st.w	[r13 + (-4)], r0	# num, tmp50
# basic.c:343: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.30_8, txtpos
	add.w	r0, 1 #111	# _9,
	st.w	[txtpos], r0	# txtpos, _9
.L30:
# basic.c:333: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.31_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.31_10
# basic.c:333: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp51, _11
	mov.w	r0, 47	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jse	.L32		#
# basic.c:333: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.32_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.32_12
# basic.c:333: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp53, _13
	mov.w	r0, 57	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jse	.L33		#
.L32:
# basic.c:345: 	return	num;
	ld.w	r0, [r13 + (-4)]	# _23, num
# basic.c:346: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	testnum, .-testnum
	.p2align	1
	.global	entered_with_line_num
	.type	entered_with_line_num, @function
entered_with_line_num:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 84 #111	#,
# basic.c:358: 	linelen = 0;
	xor.w	r0, r0	# tmp98
	st.b	[r13 + (-1)], r0	# linelen, tmp98
# basic.c:359: 	while (txtpos[linelen] != NL)
	j	.L36		#
.L37:
# basic.c:360: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.33_1, linelen
	add.w	r0, 1 #111	# tmp99,
	st.b	[r13 + (-1)], r0	# linelen, tmp100
.L36:
# basic.c:359: 	while (txtpos[linelen] != NL)
	ld.w	r0, [txtpos]	# txtpos.34_2, txtpos
	ld.b	r1, [r13 + (-1)]	# _3, linelen
	add.w	r0, r1 #222	# _4, _3
	ld.b	r0, [r0]	# _5, *_4
# basic.c:359: 	while (txtpos[linelen] != NL)
	zex.b	r1, r0	# tmp101, _5
	mov.w	r0, 10	# tmp102,
	cmp.w	r1, r0	# tmp101, tmp102
	jnz	.L37		#
# basic.c:361: 	linelen++; // Include the NL in the line length
	ld.b	r0, [r13 + (-1)]	# linelen.35_6, linelen
	add.w	r0, 1 #111	# tmp103,
	st.b	[r13 + (-1)], r0	# linelen, tmp104
# basic.c:362: 	linelen += sizeof(LINENUM) + sizeof(char); // Add space for the line number and line length
	ld.b	r0, [r13 + (-1)]	# tmp105, linelen
	add.w	r0, 5 #111	# tmp106,
	st.b	[r13 + (-1)], r0	# linelen, tmp107
# basic.c:365: 	txtpos -= sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [txtpos]	# txtpos.36_7, txtpos
	add.w	r0, -5 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:368: 	l = (int)txtpos;
	ld.w	r0, [txtpos]	# txtpos.37_9, txtpos
# basic.c:368: 	l = (int)txtpos;
	st.w	[r13 + (-12)], r0	# l, txtpos.37_9
# basic.c:369: 	if (l % 2 == 1)
	ld.w	r0, [r13 + (-12)]	# tmp108, l
	mov.w	r1, -2147483647	# tmp110,
	and.w	r0, r1	# tmp109, tmp110
	xor.w	r1, r1	# tmp111
	cmp.w	r0, r1	# tmp109, tmp111
	jges	.L38		#
	add.w	r0, -1 #111	# tmp109,
	mov.w	r1, -2	# tmp112,
	or.w	r0, r1	# tmp109, tmp112
	add.w	r0, 1 #111	# tmp109,
.L38:
	mov.w	r1, r0	# _10, tmp109
# basic.c:369: 	if (l % 2 == 1)
	mov.w	r0, 1	# tmp113,
	cmp.w	r1, r0	# _10, tmp113
	jnz	.L39		#
# basic.c:371: 		txtpos--;
	ld.w	r0, [txtpos]	# txtpos.38_11, txtpos
	add.w	r0, -1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:372: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	ld.w	r0, [txtpos]	# txtpos.39_13, txtpos
	add.w	r0, 5 #111	# _14,
# basic.c:372: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	mov.b	r1, 32	# tmp114,
	st.b	[r0], r1	# *_14, tmp114
# basic.c:373: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.40_15, linelen
	add.w	r0, 1 #111	# tmp115,
	st.b	[r13 + (-1)], r0	# linelen, tmp116
.L39:
# basic.c:376: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r1, [linenum]	# linenum.41_16, linenum
# basic.c:376: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r0, [txtpos]	# txtpos.42_17, txtpos
# basic.c:376: 	*((LINENUM *)txtpos) = linenum;
	st.w	[r0], r1	# MEM[(LINENUM *)txtpos.42_17], linenum.43_18
# basic.c:377: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.w	r0, [txtpos]	# txtpos.44_19, txtpos
	add.w	r0, 4 #111	# _20,
# basic.c:377: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.b	r1, [r13 + (-1)]	# tmp117, linelen
	st.b	[r0], r1	# *_20, tmp117
# basic.c:381: 	start = findline();
	call	findline		#
	st.w	[r13 + (-8)], r0	# start,
# basic.c:384: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [program_end]	# program_end.45_21, program_end
# basic.c:384: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r1, [r13 + (-8)]	# tmp118, start
	cmp.w	r1, r0	# tmp118, program_end.45_21
	jz	.L40		#
# basic.c:384: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [r13 + (-8)]	# tmp119, start
	ld.w	r1, [r0]	# _22, MEM[(LINENUM *)start_110]
# basic.c:384: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [linenum]	# linenum.46_23, linenum
# basic.c:384: 	if (start != program_end && *((LINENUM *)start) == linenum)
	cmp.w	r1, r0	# _22, linenum.47_24
	jnz	.L40		#
# basic.c:389: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp120, start
	add.w	r0, 4 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
	zex.b	r1, r0	# _27, _26
# basic.c:389: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp122, start
	add.w	r0, r1 #222	# tmp121, _27
	st.w	[r13 + (-24)], r0	# from, tmp121
# basic.c:390: 		dest = start;
	ld.w	r0, [r13 + (-8)]	# tmp123, start
	st.w	[r13 + (-20)], r0	# dest, tmp123
# basic.c:392: 		tomove = program_end - from;
	ld.w	r0, [program_end]	# program_end.48_28, program_end
	ld.w	r1, [r13 + (-24)]	# tmp124, from
	sub.w	r0, r1 #222	# _29, tmp124
# basic.c:392: 		tomove = program_end - from;
	st.w	[r13 + (-28)], r0	# tomove, _29
# basic.c:393: 		while (tomove > 0)
	j	.L41		#
.L42:
# basic.c:395: 			*dest = *from;
	ld.w	r0, [r13 + (-24)]	# tmp125, from
	ld.b	r1, [r0]	# _30, *from_82
# basic.c:395: 			*dest = *from;
	ld.w	r0, [r13 + (-20)]	# tmp126, dest
	st.b	[r0], r1	# *dest_81, _30
# basic.c:396: 			from++;
	ld.w	r0, [r13 + (-24)]	# tmp128, from
	add.w	r0, 1 #111	# tmp127,
	st.w	[r13 + (-24)], r0	# from, tmp127
# basic.c:397: 			dest++;
	ld.w	r0, [r13 + (-20)]	# tmp130, dest
	add.w	r0, 1 #111	# tmp129,
	st.w	[r13 + (-20)], r0	# dest, tmp129
# basic.c:398: 			tomove--;
	ld.w	r0, [r13 + (-28)]	# tmp132, tomove
	add.w	r0, -1 #111	# tmp131,
	st.w	[r13 + (-28)], r0	# tomove, tmp131
.L41:
# basic.c:393: 		while (tomove > 0)
	ld.w	r1, [r13 + (-28)]	# tmp133, tomove
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jnz	.L42		#
# basic.c:400: 		program_end = dest;
	ld.w	r0, [r13 + (-20)]	# tmp135, dest
	st.w	[program_end], r0	# program_end, tmp135
.L40:
# basic.c:403: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	ld.w	r0, [txtpos]	# txtpos.49_31, txtpos
	add.w	r0, 5 #111	# _32,
	ld.b	r0, [r0]	# _33, *_32
# basic.c:403: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	zex.b	r1, r0	# tmp136, _33
	mov.w	r0, 10	# tmp137,
	cmp.w	r1, r0	# tmp136, tmp137
	jz	.L55		#
# basic.c:410: 	first_time = 1; // odd address hack
	mov.w	r0, 1	# tmp138,
	st.w	[r13 + (-16)], r0	# first_time, tmp138
# basic.c:412: 	while (linelen > 0)
	j	.L45		#
.L54:
# basic.c:418: 		space_to_make = txtpos - program_end;
	ld.w	r0, [txtpos]	# txtpos.50_34, txtpos
	ld.w	r1, [program_end]	# program_end.51_35, program_end
	sub.w	r0, r1 #222	# _36, program_end.51_35
# basic.c:418: 		space_to_make = txtpos - program_end;
	st.w	[r13 + (-44)], r0	# space_to_make, _36
# basic.c:420: 		if (space_to_make > linelen)
	ld.b	r0, [r13 + (-1)]	# _37, linelen
# basic.c:420: 		if (space_to_make > linelen)
	ld.w	r1, [r13 + (-44)]	# tmp139, space_to_make
	cmp.w	r1, r0	# tmp139, _37
	jse	.L46		#
# basic.c:421: 			space_to_make = linelen;
	ld.b	r0, [r13 + (-1)]	# tmp140, linelen
	st.w	[r13 + (-44)], r0	# space_to_make, tmp140
.L46:
# basic.c:422: 		newEnd = program_end + space_to_make;
	ld.w	r0, [program_end]	# program_end.52_38, program_end
# basic.c:422: 		newEnd = program_end + space_to_make;
	ld.w	r1, [r13 + (-44)]	# tmp142, space_to_make
	add.w	r0, r1 #222	# tmp141, tmp142
	st.w	[r13 + (-48)], r0	# newEnd, tmp141
# basic.c:423: 		tomove = program_end - start;
	ld.w	r0, [program_end]	# program_end.53_39, program_end
	ld.w	r1, [r13 + (-8)]	# tmp143, start
	sub.w	r0, r1 #222	# _40, tmp143
# basic.c:423: 		tomove = program_end - start;
	st.w	[r13 + (-32)], r0	# tomove, _40
# basic.c:427: 		from = program_end;
	ld.w	r0, [program_end]	# tmp144, program_end
	st.w	[r13 + (-36)], r0	# from, tmp144
# basic.c:428: 		dest = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp145, newEnd
	st.w	[r13 + (-40)], r0	# dest, tmp145
# basic.c:429: 		while (tomove > 0)
	j	.L47		#
.L48:
# basic.c:431: 			from--;
	ld.w	r0, [r13 + (-36)]	# tmp147, from
	add.w	r0, -1 #111	# tmp146,
	st.w	[r13 + (-36)], r0	# from, tmp146
# basic.c:432: 			dest--;
	ld.w	r0, [r13 + (-40)]	# tmp149, dest
	add.w	r0, -1 #111	# tmp148,
	st.w	[r13 + (-40)], r0	# dest, tmp148
# basic.c:433: 			*dest = *from;
	ld.w	r0, [r13 + (-36)]	# tmp150, from
	ld.b	r1, [r0]	# _41, *from_143
# basic.c:433: 			*dest = *from;
	ld.w	r0, [r13 + (-40)]	# tmp151, dest
	st.b	[r0], r1	# *dest_144, _41
# basic.c:434: 			tomove--;
	ld.w	r0, [r13 + (-32)]	# tmp153, tomove
	add.w	r0, -1 #111	# tmp152,
	st.w	[r13 + (-32)], r0	# tomove, tmp152
.L47:
# basic.c:429: 		while (tomove > 0)
	ld.w	r1, [r13 + (-32)]	# tmp154, tomove
	xor.w	r0, r0	# tmp155
	cmp.w	r1, r0	# tmp154, tmp155
	jnz	.L48		#
# basic.c:437: 		l = 0;
	xor.w	r0, r0	# tmp156
	st.w	[r13 + (-12)], r0	# l, tmp156
# basic.c:438: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r1, [r13 + (-16)]	# tmp157, first_time
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jz	.L49		#
# basic.c:438: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r0, [txtpos]	# txtpos.54_42, txtpos
	add.w	r0, 5 #111	# _43,
	ld.b	r0, [r0]	# _44, *_43
# basic.c:438: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	zex.b	r1, r0	# tmp159, _44
	mov.w	r0, 32	# tmp160,
	cmp.w	r1, r0	# tmp159, tmp160
	jnz	.L49		#
# basic.c:443: 			k = txtpos[sizeof(LINENUM)];
	ld.w	r0, [txtpos]	# txtpos.55_45, txtpos
	add.w	r0, 4 #111	# _46,
	ld.b	r0, [r0]	# _47, *_46
# basic.c:443: 			k = txtpos[sizeof(LINENUM)];
	st.b	[r13 + (-49)], r0	# k, _47
# basic.c:444: 			k -= sizeof(LINENUM) + sizeof(char); // actual length of line
	ld.b	r0, [r13 + (-49)]	# k.56_48, k
	add.w	r0, -5 #111	# tmp161,
	st.b	[r13 + (-49)], r0	# k, _49
# basic.c:445: 			for (l = 0; l < k; l++)
	xor.w	r0, r0	# tmp162
	st.w	[r13 + (-12)], r0	# l, tmp162
# basic.c:445: 			for (l = 0; l < k; l++)
	j	.L50		#
.L51:
# basic.c:447: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r1, [txtpos]	# txtpos.57_50, txtpos
	ld.w	r0, [r13 + (-12)]	# l.58_51, l
	add.w	r0, 6 #111	# _52,
	add.w	r1, r0 #222	# _53, _52
# basic.c:447: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r0, [txtpos]	# txtpos.59_54, txtpos
# basic.c:447: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r2, [r13 + (-12)]	# l.60_55, l
	add.w	r2, 5 #111	# _56,
# basic.c:447: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	add.w	r0, r2 #222	# _57, _56
# basic.c:447: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.b	r1, [r1]	# _58, *_53
# basic.c:447: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	st.b	[r0], r1	# *_57, _58
# basic.c:445: 			for (l = 0; l < k; l++)
	ld.w	r0, [r13 + (-12)]	# tmp164, l
	add.w	r0, 1 #111	# tmp163,
	st.w	[r13 + (-12)], r0	# l, tmp163
.L50:
# basic.c:445: 			for (l = 0; l < k; l++)
	ld.b	r1, [r13 + (-49)]	#, k
	sex.b	r0, r1	# _59,
# basic.c:445: 			for (l = 0; l < k; l++)
	ld.w	r1, [r13 + (-12)]	# tmp165, l
	cmp.w	r1, r0	# tmp165, _59
	jss	.L51		#
# basic.c:449: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	ld.w	r0, [txtpos]	# txtpos.61_60, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _61,
	add.w	r1, 3 #111	# _62,
	add.w	r0, r1 #222	# _63, _62
# basic.c:449: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	mov.b	r1, 32	# tmp166,
	st.b	[r0], r1	# *_63, tmp166
# basic.c:450: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	ld.w	r0, [txtpos]	# txtpos.62_64, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _65,
# basic.c:450: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r1, 4 #111	# _66,
# basic.c:450: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r0, r1 #222	# _67, _66
# basic.c:450: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	mov.b	r1, 10	# tmp167,
	st.b	[r0], r1	# *_67, tmp167
.L49:
# basic.c:455: 		for (tomove = 0; tomove < space_to_make; tomove++)
	xor.w	r0, r0	# tmp168
	st.w	[r13 + (-32)], r0	# tomove, tmp168
# basic.c:455: 		for (tomove = 0; tomove < space_to_make; tomove++)
	j	.L52		#
.L53:
# basic.c:457: 			*start = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.63_68, txtpos
	ld.b	r1, [r0]	# _69, *txtpos.63_68
# basic.c:457: 			*start = *txtpos;
	ld.w	r0, [r13 + (-8)]	# tmp169, start
	st.b	[r0], r1	# *start_77, _69
# basic.c:460: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.64_70, txtpos
	add.w	r0, 1 #111	# _71,
	st.w	[txtpos], r0	# txtpos, _71
# basic.c:461: 			start++;
	ld.w	r0, [r13 + (-8)]	# tmp171, start
	add.w	r0, 1 #111	# tmp170,
	st.w	[r13 + (-8)], r0	# start, tmp170
# basic.c:462: 			linelen--;
	ld.b	r0, [r13 + (-1)]	# linelen.65_72, linelen
	add.w	r0, -1 #111	# tmp172,
	st.b	[r13 + (-1)], r0	# linelen, tmp173
# basic.c:455: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r0, [r13 + (-32)]	# tmp175, tomove
	add.w	r0, 1 #111	# tmp174,
	st.w	[r13 + (-32)], r0	# tomove, tmp174
.L52:
# basic.c:455: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r1, [r13 + (-32)]	# tmp176, tomove
	ld.w	r0, [r13 + (-44)]	# tmp177, space_to_make
	cmp.w	r1, r0	# tmp176, tmp177
	js	.L53		#
# basic.c:464: 		program_end = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp178, newEnd
	st.w	[program_end], r0	# program_end, tmp178
# basic.c:465: 		first_time = 0;  // odd address hack
	xor.w	r0, r0	# tmp179
	st.w	[r13 + (-16)], r0	# first_time, tmp179
.L45:
# basic.c:412: 	while (linelen > 0)
	ld.b	r1, [r13 + (-1)]	# tmp180, linelen
	xor.w	r0, r0	# tmp181
	cmp.w	r1, r0	# tmp180, tmp181
	jnz	.L54		#
	j	.L35		#
.L55:
# basic.c:406: 		return;
	nop	
.L35:
# basic.c:468: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	entered_with_line_num, .-entered_with_line_num
	.section	.rodata
	.p2align	2
.LC1:
	.string	"how?"
	.text
	.p2align	1
	.global	qhow
	.type	qhow, @function
qhow:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:472: 	printf("how?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC1	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:473: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qhow, .-qhow
	.section	.rodata
	.p2align	2
.LC2:
	.string	"what?"
	.text
	.p2align	1
	.global	qwhat
	.type	qwhat, @function
qwhat:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:477: 	printf("what?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC2	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:478: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qwhat, .-qwhat
	.section	.rodata
	.p2align	2
.LC3:
	.string	"sorry!"
	.text
	.p2align	1
	.global	qsorry
	.type	qsorry, @function
qsorry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:482: 	printf("sorry!\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC3	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:483: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qsorry, .-qsorry
	.section	.rodata
	.p2align	2
.LC4:
	.string	"v0.41"
	.p2align	2
.LC5:
	.string	"TinyBasic %s\n"
	.p2align	2
.LC6:
	.string	"%d bytes free\n"
	.text
	.p2align	1
	.global	exec_mem
	.type	exec_mem, @function
exec_mem:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:487: 	printf("TinyBasic %s\n", kVersion);
	mov.w	r0, sp	# tmp29,
	mov.w	r1, .LC4	# tmp30,
	st.w	[r0 + (4)], r1	#, tmp30
	mov.w	r1, .LC5	# tmp31,
	st.w	[r0], r1	#, tmp31
	call	printf		#
# basic.c:488: 	printf("%d bytes free\n", variables_begin - program_end);
	ld.w	r1, [variables_begin]	# variables_begin.66_1, variables_begin
	ld.w	r0, [program_end]	# program_end.67_2, program_end
	sub.w	r1, r0 #222	# _3, program_end.67_2
	mov.w	r0, sp	# tmp32,
	st.w	[r0 + (4)], r1	#, _3
	mov.w	r1, .LC6	# tmp33,
	st.w	[r0], r1	#, tmp33
	call	printf		#
# basic.c:489: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_mem, .-exec_mem
	.p2align	1
	.global	scantable
	.type	scantable, @function
scantable:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:493: 	int i = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-4)], r0	# i, tmp45
# basic.c:494: 	table_index = 0;
	xor.w	r0, r0	# tmp46
	st.b	[table_index], r0	# table_index, tmp46
.L68:
# basic.c:498: 		if (*table == 0)
	ld.w	r0, [r13 + (8)]	# tmp47, table
	ld.b	r0, [r0]	# _1, *table_21
# basic.c:498: 		if (*table == 0)
	sex.b	r1, r0	# tmp48, _1
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L69		#
# basic.c:504: 		if (txtpos[i] == *table)
	ld.w	r0, [txtpos]	# txtpos.68_2, txtpos
	ld.w	r1, [r13 + (-4)]	# i.69_3, i
	add.w	r0, r1 #222	# _4, i.69_3
	ld.b	r0, [r0]	# _5, *_4
	zex.b	r1, r0	# _6, _5
# basic.c:504: 		if (txtpos[i] == *table)
	ld.w	r0, [r13 + (8)]	# tmp50, table
	ld.b	r0, [r0]	# _7, *table_21
	sex.b	r0, r0	# _8, _7
# basic.c:504: 		if (txtpos[i] == *table)
	cmp.w	r1, r0	# _6, _8
	jnz	.L63		#
# basic.c:509: 			i++;
	ld.w	r0, [r13 + (-4)]	# tmp52, i
	add.w	r0, 1 #111	# tmp51,
	st.w	[r13 + (-4)], r0	# i, tmp51
# basic.c:510: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp54, table
	add.w	r0, 1 #111	# tmp53,
	st.w	[r13 + (8)], r0	# table, tmp53
	j	.L68		#
.L63:
# basic.c:515: 			if (*table == 0x01)
	ld.w	r0, [r13 + (8)]	# tmp55, table
	ld.b	r0, [r0]	# _9, *table_21
# basic.c:515: 			if (*table == 0x01)
	sex.b	r1, r0	# tmp56, _9
	mov.w	r0, 1	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L66		#
# basic.c:517: 				txtpos += i;  // Advance the pointer to following the keyword
	ld.w	r0, [txtpos]	# txtpos.70_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.71_11, i
	add.w	r0, r1 #222	# _12, i.71_11
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:518: 				ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.72_13, txtpos
	mov.w	r1, sp	# tmp58,
	st.w	[r1], r0	#, txtpos.72_13
	call	ignore_blanks		#
# basic.c:519: 				return;
	j	.L60		#
.L67:
# basic.c:525: 				table++;
	ld.w	r0, [r13 + (8)]	# tmp60, table
	add.w	r0, 1 #111	# tmp59,
	st.w	[r13 + (8)], r0	# table, tmp59
.L66:
# basic.c:523: 			while (*table != 0x01)
	ld.w	r0, [r13 + (8)]	# tmp61, table
	ld.b	r0, [r0]	# _14, *table_22
# basic.c:523: 			while (*table != 0x01)
	sex.b	r1, r0	# tmp62, _14
	mov.w	r0, 1	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jnz	.L67		#
# basic.c:529: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp65, table
	add.w	r0, 1 #111	# tmp64,
	st.w	[r13 + (8)], r0	# table, tmp64
# basic.c:530: 			table_index++;
	ld.b	r0, [table_index]	# table_index.73_15, table_index
	add.w	r0, 1 #111	# tmp66,
	st.b	[table_index], r0	# table_index, _19
# basic.c:531: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.76_20, txtpos
	mov.w	r1, sp	# tmp67,
	st.w	[r1], r0	#, txtpos.76_20
	call	ignore_blanks		#
# basic.c:532: 			i = 0;
	xor.w	r0, r0	# tmp68
	st.w	[r13 + (-4)], r0	# i, tmp68
# basic.c:498: 		if (*table == 0)
	j	.L68		#
.L69:
# basic.c:500: 			return;
	nop	
.L60:
# basic.c:535: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	scantable, .-scantable
	.p2align	1
	.global	print_quoted_string
	.type	print_quoted_string, @function
print_quoted_string:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:540: 	int i = 0;
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:541: 	char delim = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.77_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.77_1
# basic.c:541: 	char delim = *txtpos;
	st.b	[r13 + (-5)], r0	# delim, _2
# basic.c:542: 	if (delim != '"' && delim != '\'')
	ld.b	r0, [r13 + (-5)]	#, delim
	sex.b	r1, r0	# tmp54,
	mov.w	r0, 34	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L71		#
# basic.c:542: 	if (delim != '"' && delim != '\'')
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r1, r2	# tmp56,
	mov.w	r0, 39	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L71		#
# basic.c:543: 		return 0;
	xor.w	r0, r0	# _27
	j	.L72		#
.L71:
# basic.c:544: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.78_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:547: 	while (txtpos[i] != delim)
	j	.L73		#
.L75:
# basic.c:549: 		if (txtpos[i] == NL)
	ld.w	r0, [txtpos]	# txtpos.79_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.80_6, i
	add.w	r0, r1 #222	# _7, i.80_6
	ld.b	r0, [r0]	# _8, *_7
# basic.c:549: 		if (txtpos[i] == NL)
	zex.b	r1, r0	# tmp58, _8
	mov.w	r0, 10	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jnz	.L74		#
# basic.c:550: 			return 0;
	xor.w	r0, r0	# _27
	j	.L72		#
.L74:
# basic.c:551: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp61, i
	add.w	r0, 1 #111	# tmp60,
	st.w	[r13 + (-4)], r0	# i, tmp60
.L73:
# basic.c:547: 	while (txtpos[i] != delim)
	ld.w	r0, [txtpos]	# txtpos.81_9, txtpos
	ld.w	r1, [r13 + (-4)]	# i.82_10, i
	add.w	r0, r1 #222	# _11, i.82_10
	ld.b	r0, [r0]	# _12, *_11
	zex.b	r1, r0	# _13, _12
# basic.c:547: 	while (txtpos[i] != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _14,
# basic.c:547: 	while (txtpos[i] != delim)
	cmp.w	r1, r0	# _13, _14
	jnz	.L75		#
# basic.c:555: 	while (*txtpos != delim)
	j	.L76		#
.L77:
# basic.c:557: 		put_char(*txtpos);
	ld.w	r0, [txtpos]	# txtpos.83_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.83_15
# basic.c:557: 		put_char(*txtpos);
	zex.b	r0, r0	# _17, _16
	mov.w	r1, sp	# tmp62,
	st.w	[r1], r0	#, _17
	call	put_char		#
# basic.c:558: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.84_18, txtpos
	add.w	r0, 1 #111	# _19,
	st.w	[txtpos], r0	# txtpos, _19
.L76:
# basic.c:555: 	while (*txtpos != delim)
	ld.w	r0, [txtpos]	# txtpos.85_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.85_20
	zex.b	r1, r0	# _22, _21
# basic.c:555: 	while (*txtpos != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _23,
# basic.c:555: 	while (*txtpos != delim)
	cmp.w	r1, r0	# _22, _23
	jnz	.L77		#
# basic.c:560: 	txtpos++; // Skip over the last delimiter
	ld.w	r0, [txtpos]	# txtpos.86_24, txtpos
	add.w	r0, 1 #111	# _25,
	st.w	[txtpos], r0	# txtpos, _25
# basic.c:562: 	return 1;
	mov.b	r0, 1	# _27,
.L72:
# basic.c:563: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	print_quoted_string, .-print_quoted_string
	.p2align	1
	.global	check_no_arg_func
	.type	check_no_arg_func, @function
check_no_arg_func:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:567: 	ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.87_1, txtpos
	mov.w	r1, sp	# tmp38,
	st.w	[r1], r0	#, txtpos.87_1
	call	ignore_blanks		#
# basic.c:568: 	if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.88_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.88_2
# basic.c:568: 	if (*txtpos != '(')
	zex.b	r1, r0	# tmp39, _3
	mov.w	r0, 40	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L79		#
# basic.c:569: 		return 1;
	mov.w	r0, 1	# _11,
	j	.L80		#
.L79:
# basic.c:570: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.89_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:571: 	ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.90_6, txtpos
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, txtpos.90_6
	call	ignore_blanks		#
# basic.c:572: 	if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.91_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.91_7
# basic.c:572: 	if (*txtpos != ')')
	zex.b	r1, r0	# tmp42, _8
	mov.w	r0, 41	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L81		#
# basic.c:573: 		return 1;
	mov.w	r0, 1	# _11,
	j	.L80		#
.L81:
# basic.c:574: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.92_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:575: 	return 0;
	xor.w	r0, r0	# _11
.L80:
# basic.c:576: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_no_arg_func, .-check_no_arg_func
	.p2align	1
	.global	expr4
	.type	expr4, @function
expr4:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# basic.c:580: 	unsigned char f = table_index;
	ld.b	r0, [table_index]	# table_index.93_1, table_index
	st.b	[r13 + (-5)], r0	# f, table_index.93_1
# basic.c:583: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:589: 	if (*txtpos == '-') {
	ld.w	r0, [txtpos]	# txtpos.94_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.94_2
# basic.c:589: 	if (*txtpos == '-') {
	zex.b	r1, r0	# tmp100, _3
	mov.w	r0, 45	# tmp101,
	cmp.w	r1, r0	# tmp100, tmp101
	jnz	.L83		#
# basic.c:590: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.95_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:591: 		return -expr4();
	call	expr4		#
# basic.c:591: 		return -expr4();
	mov.w	r0, r0	# _74, _6
neg.w	r0	# _74
	j	.L84		#
.L83:
# basic.c:595: 	if (*txtpos == '0')
	ld.w	r0, [txtpos]	# txtpos.96_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.96_7
# basic.c:595: 	if (*txtpos == '0')
	zex.b	r1, r0	# tmp102, _8
	mov.w	r0, 48	# tmp103,
	cmp.w	r1, r0	# tmp102, tmp103
	jnz	.L85		#
# basic.c:597: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.97_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:598: 		return 0;
	xor.w	r0, r0	# _74
	j	.L84		#
.L85:
# basic.c:601: 	if (*txtpos >= '1' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.98_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.98_11
# basic.c:601: 	if (*txtpos >= '1' && *txtpos <= '9')
	zex.b	r1, r0	# tmp104, _12
	mov.w	r0, 48	# tmp105,
	cmp.w	r1, r0	# tmp104, tmp105
	jse	.L86		#
# basic.c:601: 	if (*txtpos >= '1' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.99_13, txtpos
	ld.b	r0, [r0]	# _14, *txtpos.99_13
# basic.c:601: 	if (*txtpos >= '1' && *txtpos <= '9')
	zex.b	r1, r0	# tmp106, _14
	mov.w	r0, 57	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jg	.L86		#
# basic.c:603: 		VAR a = 0;
	xor.w	r0, r0	# tmp108
	st.w	[r13 + (-4)], r0	# a, tmp108
.L88:
# basic.c:605: 			a = a * 10 + *txtpos - '0';
	ld.w	r1, [r13 + (-4)]	# tmp109, a
	mov.w	r0, r1	# tmp110, tmp109
	mov.w	r2, 2	# tmp112,
	shl.w	r0, r2	# tmp111, tmp112
	add.w	r0, r1 #222	# tmp110, tmp109
	add.w	r0, r0 #222	# tmp113, tmp110
# basic.c:605: 			a = a * 10 + *txtpos - '0';
	ld.w	r1, [txtpos]	# txtpos.100_16, txtpos
	ld.b	r1, [r1]	# _17, *txtpos.100_16
	zex.b	r1, r1	# _18, _17
# basic.c:605: 			a = a * 10 + *txtpos - '0';
	add.w	r0, r1 #222	# _19, _18
# basic.c:605: 			a = a * 10 + *txtpos - '0';
	add.w	r0, -48 #111	# tmp114,
	st.w	[r13 + (-4)], r0	# a, tmp114
# basic.c:606: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.101_20, txtpos
	add.w	r0, 1 #111	# _21,
	st.w	[txtpos], r0	# txtpos, _21
# basic.c:607: 		} while (*txtpos >= '0' && *txtpos <= '9');
	ld.w	r0, [txtpos]	# txtpos.102_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.102_22
# basic.c:607: 		} while (*txtpos >= '0' && *txtpos <= '9');
	zex.b	r1, r0	# tmp115, _23
	mov.w	r0, 47	# tmp116,
	cmp.w	r1, r0	# tmp115, tmp116
	jse	.L87		#
# basic.c:607: 		} while (*txtpos >= '0' && *txtpos <= '9');
	ld.w	r0, [txtpos]	# txtpos.103_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.103_24
# basic.c:607: 		} while (*txtpos >= '0' && *txtpos <= '9');
	zex.b	r1, r0	# tmp117, _25
	mov.w	r0, 57	# tmp118,
	cmp.w	r1, r0	# tmp117, tmp118
	jse	.L88		#
.L87:
# basic.c:611: 		return a;
	ld.w	r0, [r13 + (-4)]	# _74, a
	j	.L84		#
.L86:
# basic.c:618: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.104_26, txtpos
	ld.b	r0, [r0]	# _27, *txtpos.104_26
# basic.c:618: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp119, _27
	mov.w	r0, 64	# tmp120,
	cmp.w	r1, r0	# tmp119, tmp120
	jse	.L89		#
# basic.c:618: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.105_28, txtpos
	ld.b	r0, [r0]	# _29, *txtpos.105_28
# basic.c:618: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp121, _29
	mov.w	r0, 90	# tmp122,
	cmp.w	r1, r0	# tmp121, tmp122
	jg	.L89		#
# basic.c:622: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	ld.w	r0, [txtpos]	# txtpos.106_30, txtpos
	add.w	r0, 1 #111	# _31,
	ld.b	r0, [r0]	# _32, *_31
# basic.c:622: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	zex.b	r1, r0	# tmp123, _32
	mov.w	r0, 64	# tmp124,
	cmp.w	r1, r0	# tmp123, tmp124
	jse	.L90		#
# basic.c:622: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	ld.w	r0, [txtpos]	# txtpos.107_33, txtpos
	add.w	r0, 1 #111	# _34,
	ld.b	r0, [r0]	# _35, *_34
# basic.c:622: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	zex.b	r1, r0	# tmp125, _35
	mov.w	r0, 90	# tmp126,
	cmp.w	r1, r0	# tmp125, tmp126
	jse	.L91		#
.L90:
# basic.c:628: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	ld.w	r0, [variables_begin]	# variables_begin.108_36, variables_begin
# basic.c:628: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	ld.w	r1, [txtpos]	# txtpos.109_37, txtpos
	ld.b	r1, [r1]	# _38, *txtpos.109_37
# basic.c:628: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	zex.b	r1, r1	# _39, _38
	mov.w	r2, 1073741759	# tmp127,
	add.w	r1, r2 #222	# _40, tmp127
	mov.w	r2, 2	# tmp128,
	shl.w	r1, r2	# _41, tmp128
	add.w	r0, r1 #222	# _42, _41
# basic.c:628: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	ld.w	r0, [r0]	# tmp129, *_42
	st.w	[r13 + (-12)], r0	# val, tmp129
# basic.c:629: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.110_43, txtpos
	add.w	r0, 1 #111	# _44,
	st.w	[txtpos], r0	# txtpos, _44
# basic.c:630: 			return val;
	ld.w	r0, [r13 + (-12)]	# _74, val
	j	.L84		#
.L91:
# basic.c:634: 		scantable(func_tab);
	mov.w	r1, sp	# tmp130,
	mov.w	r0, func_tab	# tmp131,
	st.w	[r1], r0	#, tmp131
	call	scantable		#
# basic.c:640: 		if (table_index == FUNC_UNKNOWN)
	ld.b	r0, [table_index]	# table_index.111_45, table_index
# basic.c:640: 		if (table_index == FUNC_UNKNOWN)
	sex.b	r1, r0	# tmp132, table_index.111_45
	mov.w	r0, 10	# tmp133,
	cmp.w	r1, r0	# tmp132, tmp133
	jz	.L107		#
# basic.c:643: 		switch(table_index)
	ld.b	r0, [table_index]	# table_index.112_46, table_index
	sex.b	r0, r0	# _47, table_index.112_46
	mov.w	r1, 5	# tmp134,
	cmp.w	r0, r1	# _47, tmp134
	jz	.L94		#
	mov.w	r1, 6	# tmp135,
	cmp.w	r0, r1	# _47, tmp135
	jz	.L95		#
	j	.L106		#
.L94:
# basic.c:646: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _48,
# basic.c:646: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp136
	cmp.w	r1, r0	# _48, tmp136
	jnz	.L108		#
# basic.c:648: 			return getc();
	call	getc		#
	j	.L84		#
.L95:
# basic.c:650: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _49,
# basic.c:650: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp137
	cmp.w	r1, r0	# _49, tmp137
	jnz	.L109		#
# basic.c:652: 			return is_key_pressed();
	call	is_key_pressed		#
	j	.L84		#
.L106:
# basic.c:655: 		f = table_index;
	ld.b	r0, [table_index]	# table_index.113_50, table_index
	st.b	[r13 + (-5)], r0	# f, table_index.113_50
# basic.c:657: 		if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.114_51, txtpos
	ld.b	r0, [r0]	# _52, *txtpos.114_51
# basic.c:657: 		if (*txtpos != '(')
	zex.b	r1, r0	# tmp138, _52
	mov.w	r0, 40	# tmp139,
	cmp.w	r1, r0	# tmp138, tmp139
	jnz	.L110		#
# basic.c:660: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.115_53, txtpos
	add.w	r0, 1 #111	# _54,
	st.w	[txtpos], r0	# txtpos, _54
# basic.c:661: 		val = expression();
	call	expression		#
	st.w	[r13 + (-12)], r0	# val,
# basic.c:667: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.116_55, txtpos
	ld.b	r0, [r0]	# _56, *txtpos.116_55
# basic.c:667: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp140, _56
	mov.w	r0, 41	# tmp141,
	cmp.w	r1, r0	# tmp140, tmp141
	jnz	.L111		#
# basic.c:670: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.117_57, txtpos
	add.w	r0, 1 #111	# _58,
	st.w	[txtpos], r0	# txtpos, _58
# basic.c:672: 		switch (f)
	ld.b	r0, [r13 + (-5)]	# _59, f
	mov.w	r1, 4	# tmp142,
	cmp.w	r0, r1	# _59, tmp142
	jz	.L101		#
	mov.w	r1, 4	# tmp143,
	cmp.w	r0, r1	# _59, tmp143
	jgs	.L89		#
	xor.w	r1, r1	# tmp144
	cmp.w	r0, r1	# _59, tmp144
	jz	.L102		#
	mov.w	r1, 1	# tmp145,
	cmp.w	r0, r1	# _59, tmp145
	jz	.L103		#
	j	.L89		#
.L102:
# basic.c:675: 				return buffer[val];
	ld.w	r0, [buffer]	# buffer.118_60, buffer
	ld.w	r1, [r13 + (-12)]	# val.119_61, val
	add.w	r0, r1 #222	# _62, val.119_61
	ld.b	r0, [r0]	# _63, *_62
	sex.b	r0, r0	# _74, _63
	j	.L84		#
.L103:
# basic.c:677: 				if (val < 0)
	ld.w	r1, [r13 + (-12)]	# tmp146, val
	xor.w	r0, r0	# tmp147
	cmp.w	r1, r0	# tmp146, tmp147
	jges	.L104		#
# basic.c:678: 					return -val;
	ld.w	r0, [r13 + (-12)]	# tmp148, val
	mov.w	r0, r0	# _74, tmp148
neg.w	r0	# _74
	j	.L84		#
.L104:
# basic.c:679: 				return val;
	ld.w	r0, [r13 + (-12)]	# _74, val
	j	.L84		#
.L101:
# basic.c:681: 				return(rand() % val);
	call	rand		#
# basic.c:681: 				return(rand() % val);
	ld.w	r1, [r13 + (-12)]	# tmp149, val
	div.w	r0, r1	# _74, tmp149
mov.w	r0, r14	# _74
	j	.L84		#
.L89:
# basic.c:685: 	if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.120_65, txtpos
	ld.b	r0, [r0]	# _66, *txtpos.120_65
# basic.c:685: 	if (*txtpos == '(')
	zex.b	r1, r0	# tmp150, _66
	mov.w	r0, 40	# tmp151,
	cmp.w	r1, r0	# tmp150, tmp151
	jnz	.L112		#
# basic.c:688: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.121_67, txtpos
	add.w	r0, 1 #111	# _68,
	st.w	[txtpos], r0	# txtpos, _68
# basic.c:689: 		a = expression();
	call	expression		#
	st.w	[r13 + (-16)], r0	# a,
# basic.c:690: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.122_69, txtpos
	ld.b	r0, [r0]	# _70, *txtpos.122_69
# basic.c:690: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp152, _70
	mov.w	r0, 41	# tmp153,
	cmp.w	r1, r0	# tmp152, tmp153
	jnz	.L113		#
# basic.c:693: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.123_71, txtpos
	add.w	r0, 1 #111	# _72,
	st.w	[txtpos], r0	# txtpos, _72
# basic.c:694: 		return a;
	ld.w	r0, [r13 + (-16)]	# _74, a
	j	.L84		#
.L107:
# basic.c:641: 			goto expr4_error;
	nop	
	j	.L93		#
.L108:
# basic.c:647: 				goto expr4_error;
	nop	
	j	.L93		#
.L109:
# basic.c:651: 				goto expr4_error;
	nop	
	j	.L93		#
.L110:
# basic.c:658: 			goto expr4_error;
	nop	
	j	.L93		#
.L111:
# basic.c:668: 			goto expr4_error;
	nop	
	j	.L93		#
.L112:
# basic.c:697: expr4_error:
	nop	
	j	.L93		#
.L113:
# basic.c:691: 			goto expr4_error;
	nop	
.L93:
# basic.c:698: 	expression_error = 1;
	mov.b	r0, 1	# tmp154,
	st.b	[expression_error], r0	# expression_error, tmp154
# basic.c:699: 	return 0;
	xor.w	r0, r0	# _74
.L84:
# basic.c:701: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expr4, .-expr4
	.p2align	1
	.global	expr3
	.type	expr3, @function
expr3:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:708: 	a = expr4();
	call	expr4		#
	st.w	[r13 + (-4)], r0	# a,
# basic.c:710: 	ignore_blanks(); // fix for eg:  100 a = a + 1
	call	ignore_blanks		#
.L122:
# basic.c:714: 		if (*txtpos == '*')
	ld.w	r0, [txtpos]	# txtpos.124_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.124_1
# basic.c:714: 		if (*txtpos == '*')
	zex.b	r1, r0	# tmp40, _2
	mov.w	r0, 42	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L115		#
# basic.c:716: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.125_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:717: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:718: 			a *= b;
	ld.w	r0, [r13 + (-4)]	# tmp43, a
	ld.w	r1, [r13 + (-8)]	# tmp44, b
	mul.w	r0, r1	# tmp42, tmp44
	st.w	[r13 + (-4)], r0	# a, tmp42
	j	.L122		#
.L115:
# basic.c:720: 		else if (*txtpos == '/')
	ld.w	r0, [txtpos]	# txtpos.126_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.126_5
# basic.c:720: 		else if (*txtpos == '/')
	zex.b	r1, r0	# tmp45, _6
	mov.w	r0, 47	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L117		#
# basic.c:722: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.127_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:723: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:724: 			if (b != 0)
	ld.w	r1, [r13 + (-8)]	# tmp47, b
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# tmp47, tmp48
	jz	.L118		#
# basic.c:725: 				a /= b;
	ld.w	r0, [r13 + (-4)]	# tmp51, a
	ld.w	r1, [r13 + (-8)]	# tmp52, b
	div.w	r0, r1	# tmp50, tmp52
	st.w	[r13 + (-4)], r0	# a, tmp50
	j	.L122		#
.L118:
# basic.c:727: 				expression_error = 1;
	mov.b	r0, 1	# tmp53,
	st.b	[expression_error], r0	# expression_error, tmp53
	j	.L122		#
.L117:
# basic.c:729: 		else if (*txtpos == '%')
	ld.w	r0, [txtpos]	# txtpos.128_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.128_9
# basic.c:729: 		else if (*txtpos == '%')
	zex.b	r1, r0	# tmp54, _10
	mov.w	r0, 37	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jnz	.L119		#
# basic.c:731: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.129_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:732: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:733: 			if (b != 0)
	ld.w	r1, [r13 + (-8)]	# tmp56, b
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L120		#
# basic.c:734: 				a %= b;
	ld.w	r0, [r13 + (-4)]	# tmp59, a
	ld.w	r1, [r13 + (-8)]	# tmp61, b
	div.w	r0, r1	# tmp60, tmp61
mov.w	r0, r14	# tmp60
	st.w	[r13 + (-4)], r0	# a, tmp60
	j	.L122		#
.L120:
# basic.c:736: 				expression_error = 1;
	mov.b	r0, 1	# tmp62,
	st.b	[expression_error], r0	# expression_error, tmp62
	j	.L122		#
.L119:
# basic.c:739: 			return a;
	ld.w	r0, [r13 + (-4)]	# _21, a
# basic.c:741: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expr3, .-expr3
	.p2align	1
	.global	expr2
	.type	expr2, @function
expr2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:748: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.130_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.130_1
# basic.c:748: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp40, _2
	mov.w	r0, 45	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L125		#
# basic.c:748: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.131_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.131_3
# basic.c:748: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp42, _4
	mov.w	r0, 43	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L126		#
.L125:
# basic.c:749: 		a = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# a, tmp44
	j	.L132		#
.L126:
# basic.c:751: 		a = expr3();
	call	expr3		#
	st.w	[r13 + (-4)], r0	# a,
.L132:
# basic.c:755: 		if (*txtpos == '-')
	ld.w	r0, [txtpos]	# txtpos.132_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.132_5
# basic.c:755: 		if (*txtpos == '-')
	zex.b	r1, r0	# tmp45, _6
	mov.w	r0, 45	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L128		#
# basic.c:757: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.133_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:758: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:759: 			a -= b;
	ld.w	r0, [r13 + (-4)]	# tmp48, a
	ld.w	r1, [r13 + (-8)]	# tmp49, b
	sub.w	r0, r1 #222	# tmp47, tmp49
	st.w	[r13 + (-4)], r0	# a, tmp47
	j	.L132		#
.L128:
# basic.c:761: 		else if (*txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.134_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.134_9
# basic.c:761: 		else if (*txtpos == '+')
	zex.b	r1, r0	# tmp50, _10
	mov.w	r0, 43	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L130		#
# basic.c:763: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.135_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:764: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:765: 			a += b;
	ld.w	r0, [r13 + (-4)]	# tmp53, a
	ld.w	r1, [r13 + (-8)]	# tmp54, b
	add.w	r0, r1 #222	# tmp52, tmp54
	st.w	[r13 + (-4)], r0	# a, tmp52
	j	.L132		#
.L130:
# basic.c:768: 			return a;
	ld.w	r0, [r13 + (-4)]	# _21, a
# basic.c:770: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expr2, .-expr2
	.p2align	1
	.global	expression
	.type	expression, @function
expression:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:777: 	a = expr2();
	call	expr2		#
	st.w	[r13 + (-4)], r0	# a,
# basic.c:784: 	if (expression_error)	return a;
	ld.b	r0, [expression_error]	# expression_error.136_1, expression_error
# basic.c:784: 	if (expression_error)	return a;
	sex.b	r1, r0	# tmp32, expression_error.136_1
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L135		#
# basic.c:784: 	if (expression_error)	return a;
	ld.w	r0, [r13 + (-4)]	# _5, a
	j	.L136		#
.L135:
# basic.c:786: 	scantable(relop_tab);
	mov.w	r1, sp	# tmp34,
	mov.w	r0, relop_tab	# tmp35,
	st.w	[r1], r0	#, tmp35
	call	scantable		#
# basic.c:792: 	if (table_index == RELOP_UNKNOWN)
	ld.b	r0, [table_index]	# table_index.137_2, table_index
# basic.c:792: 	if (table_index == RELOP_UNKNOWN)
	sex.b	r1, r0	# tmp36, table_index.137_2
	mov.w	r0, 9	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jnz	.L137		#
# basic.c:793: 		return a;
	ld.w	r0, [r13 + (-4)]	# _5, a
	j	.L136		#
.L137:
# basic.c:795: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.138_3, table_index
	sex.b	r0, r0	# _4, table_index.138_3
	mov.w	r1, 8	# tmp38,
	cmp.w	r0, r1	# _4, tmp38
	jz	.L138		#
	mov.w	r1, 8	# tmp39,
	cmp.w	r0, r1	# _4, tmp39
	jgs	.L139		#
	mov.w	r1, 7	# tmp40,
	cmp.w	r0, r1	# _4, tmp40
	jz	.L140		#
	mov.w	r1, 7	# tmp41,
	cmp.w	r0, r1	# _4, tmp41
	jgs	.L139		#
	mov.w	r1, 6	# tmp42,
	cmp.w	r0, r1	# _4, tmp42
	jz	.L141		#
	mov.w	r1, 6	# tmp43,
	cmp.w	r0, r1	# _4, tmp43
	jgs	.L139		#
	mov.w	r1, 5	# tmp44,
	cmp.w	r0, r1	# _4, tmp44
	jz	.L142		#
	mov.w	r1, 5	# tmp45,
	cmp.w	r0, r1	# _4, tmp45
	jgs	.L139		#
	mov.w	r1, 4	# tmp46,
	cmp.w	r0, r1	# _4, tmp46
	jz	.L143		#
	mov.w	r1, 4	# tmp47,
	cmp.w	r0, r1	# _4, tmp47
	jgs	.L139		#
	mov.w	r1, 3	# tmp48,
	cmp.w	r0, r1	# _4, tmp48
	jz	.L144		#
	mov.w	r1, 3	# tmp49,
	cmp.w	r0, r1	# _4, tmp49
	jgs	.L139		#
	mov.w	r1, 2	# tmp50,
	cmp.w	r0, r1	# _4, tmp50
	jz	.L145		#
	mov.w	r1, 2	# tmp51,
	cmp.w	r0, r1	# _4, tmp51
	jgs	.L139		#
	xor.w	r1, r1	# tmp52
	cmp.w	r0, r1	# _4, tmp52
	jz	.L146		#
	mov.w	r1, 1	# tmp53,
	cmp.w	r0, r1	# _4, tmp53
	jz	.L141		#
	j	.L139		#
.L146:
# basic.c:798: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:799: 		if (a >= b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp54, a
	ld.w	r0, [r13 + (-8)]	# tmp55, b
	cmp.w	r1, r0	# tmp54, tmp55
	jss	.L156		#
# basic.c:799: 		if (a >= b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L141:
# basic.c:803: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:804: 		if (a != b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp56, a
	ld.w	r0, [r13 + (-8)]	# tmp57, b
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L157		#
# basic.c:804: 		if (a != b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L145:
# basic.c:807: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:808: 		if (a > b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp58, a
	ld.w	r0, [r13 + (-8)]	# tmp59, b
	cmp.w	r1, r0	# tmp58, tmp59
	jses	.L158		#
# basic.c:808: 		if (a > b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L144:
# basic.c:811: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:812: 		if (a == b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp60, a
	ld.w	r0, [r13 + (-8)]	# tmp61, b
	cmp.w	r1, r0	# tmp60, tmp61
	jnz	.L159		#
# basic.c:812: 		if (a == b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L143:
# basic.c:815: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:816: 		if (a <= b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp62, a
	ld.w	r0, [r13 + (-8)]	# tmp63, b
	cmp.w	r1, r0	# tmp62, tmp63
	jgs	.L160		#
# basic.c:816: 		if (a <= b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L142:
# basic.c:819: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:820: 		if (a < b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp64, a
	ld.w	r0, [r13 + (-8)]	# tmp65, b
	cmp.w	r1, r0	# tmp64, tmp65
	jges	.L161		#
# basic.c:820: 		if (a < b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L140:
# basic.c:823: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:824: 		if (a && b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp66, a
	xor.w	r0, r0	# tmp67
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L162		#
# basic.c:824: 		if (a && b) return 1;
	ld.w	r1, [r13 + (-8)]	# tmp68, b
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L162		#
# basic.c:824: 		if (a && b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L138:
# basic.c:827: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:828: 		if (a || b) return 1;
	ld.w	r1, [r13 + (-4)]	# tmp70, a
	xor.w	r0, r0	# tmp71
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L154		#
# basic.c:828: 		if (a || b) return 1;
	ld.w	r1, [r13 + (-8)]	# tmp72, b
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L163		#
.L154:
# basic.c:828: 		if (a || b) return 1;
	mov.w	r0, 1	# _5,
	j	.L136		#
.L156:
# basic.c:800: 		break;
	nop	
	j	.L139		#
.L157:
# basic.c:805: 		break;
	nop	
	j	.L139		#
.L158:
# basic.c:809: 		break;
	nop	
	j	.L139		#
.L159:
# basic.c:813: 		break;
	nop	
	j	.L139		#
.L160:
# basic.c:817: 		break;
	nop	
	j	.L139		#
.L161:
# basic.c:821: 		break;
	nop	
	j	.L139		#
.L162:
# basic.c:825: 		break;
	nop	
	j	.L139		#
.L163:
# basic.c:829: 		break;
	nop	
.L139:
# basic.c:831: 	return 0;
	xor.w	r0, r0	# _5
.L136:
# basic.c:832: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expression, .-expression
	.p2align	1
	.global	assignment
	.type	assignment, @function
assignment:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:839: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.139_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.139_1
# basic.c:839: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp47, _2
	mov.w	r0, 64	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jse	.L165		#
# basic.c:839: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.140_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.140_3
# basic.c:839: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp49, _4
	mov.w	r0, 90	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jse	.L166		#
.L165:
# basic.c:841: 		qhow();
	call	qhow		#
# basic.c:842: 		return;
	j	.L164		#
.L166:
# basic.c:847: 	var = (VAR *)variables_begin + *txtpos - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.141_5, variables_begin
# basic.c:847: 	var = (VAR *)variables_begin + *txtpos - 'A';
	ld.w	r1, [txtpos]	# txtpos.142_6, txtpos
	ld.b	r1, [r1]	# _7, *txtpos.142_6
# basic.c:847: 	var = (VAR *)variables_begin + *txtpos - 'A';
	zex.b	r1, r1	# _8, _7
	mov.w	r2, 1073741759	# tmp51,
	add.w	r1, r2 #222	# _9, tmp51
	mov.w	r2, 2	# tmp52,
	shl.w	r1, r2	# _10, tmp52
# basic.c:847: 	var = (VAR *)variables_begin + *txtpos - 'A';
	add.w	r0, r1 #222	# tmp53, _10
	st.w	[r13 + (-4)], r0	# var, tmp53
# basic.c:853: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.143_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:855: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:857: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.144_13, txtpos
	ld.b	r0, [r0]	# _14, *txtpos.144_13
# basic.c:857: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp54, _14
	mov.w	r0, 61	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L168		#
# basic.c:859: 		qwhat();
	call	qwhat		#
# basic.c:860: 		return;
	j	.L164		#
.L168:
# basic.c:862: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.145_15, txtpos
	add.w	r0, 1 #111	# _16,
	st.w	[txtpos], r0	# txtpos, _16
# basic.c:863: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:864: 	expression_error = 0;
	xor.w	r0, r0	# tmp56
	st.b	[expression_error], r0	# expression_error, tmp56
# basic.c:865: 	value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:866: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:873: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.146_17, expression_error
# basic.c:873: 	if (expression_error)
	sex.b	r1, r0	# tmp57, expression_error.146_17
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L169		#
# basic.c:875: 		qwhat();
	call	qwhat		#
# basic.c:876: 		return;
	j	.L164		#
.L169:
# basic.c:879: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.147_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.147_18
# basic.c:879: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp59, _19
	mov.w	r0, 10	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L170		#
# basic.c:879: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.148_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.148_20
# basic.c:879: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp61, _21
	mov.w	r0, 58	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L170		#
# basic.c:881: 		qwhat();
	call	qwhat		#
# basic.c:882: 		return;
	j	.L164		#
.L170:
# basic.c:884: 	*var = value;
	ld.w	r0, [r13 + (-4)]	# tmp63, var
	ld.w	r1, [r13 + (-8)]	# tmp64, value
	st.w	[r0], r1	# *var_24, tmp64
.L164:
# basic.c:890: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	assignment, .-assignment
	.section	.rodata
	.p2align	2
.LC7:
	.string	"%d"
	.text
	.p2align	1
	.global	exec_print
	.type	exec_print, @function
exec_print:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:894: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.149_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.149_1
# basic.c:894: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp57, _2
	mov.w	r0, 10	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L186		#
.L172:
# basic.c:901: 		ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.150_3, txtpos
	mov.w	r1, sp	# tmp59,
	st.w	[r1], r0	#, txtpos.150_3
	call	ignore_blanks		#
# basic.c:902: 		if (print_quoted_string())
	call	print_quoted_string		#
# basic.c:902: 		if (print_quoted_string())
	sex.b	r1, r0	# tmp60, _4
	xor.w	r0, r0	# tmp61
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L174		#
# basic.c:904: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.151_5, txtpos
	mov.w	r1, sp	# tmp62,
	st.w	[r1], r0	#, txtpos.151_5
	call	ignore_blanks		#
	j	.L175		#
.L174:
# basic.c:906: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.152_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.152_6
# basic.c:906: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp63, _7
	mov.w	r0, 34	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L176		#
# basic.c:906: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.153_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.153_8
# basic.c:906: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp65, _9
	mov.w	r0, 39	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jnz	.L177		#
.L176:
# basic.c:908: 			qwhat();
	call	qwhat		#
# basic.c:909: 			return;
	j	.L171		#
.L177:
# basic.c:914: 			expression_error = 0;
	xor.w	r0, r0	# tmp67
	st.b	[expression_error], r0	# expression_error, tmp67
# basic.c:915: 			e = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# e,
# basic.c:916: 			if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.154_10, expression_error
# basic.c:916: 			if (expression_error)
	sex.b	r1, r0	# tmp68, expression_error.154_10
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L178		#
# basic.c:918: 				qwhat();
	call	qwhat		#
# basic.c:919: 				return;
	j	.L171		#
.L178:
# basic.c:921: 			printf("%d",e);
	mov.w	r0, sp	# tmp70,
	ld.w	r1, [r13 + (-4)]	# tmp71, e
	st.w	[r0 + (4)], r1	#, tmp71
	mov.w	r1, .LC7	# tmp72,
	st.w	[r0], r1	#, tmp72
	call	printf		#
.L175:
# basic.c:925: 		if (*txtpos == ',')
	ld.w	r0, [txtpos]	# txtpos.155_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.155_11
# basic.c:925: 		if (*txtpos == ',')
	zex.b	r1, r0	# tmp73, _12
	mov.w	r0, 44	# tmp74,
	cmp.w	r1, r0	# tmp73, tmp74
	jnz	.L179		#
# basic.c:926: 			txtpos++;	// Skip the comma and move onto the next
	ld.w	r0, [txtpos]	# txtpos.156_13, txtpos
	add.w	r0, 1 #111	# _14,
	st.w	[txtpos], r0	# txtpos, _14
	j	.L172		#
.L179:
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.157_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.157_15
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp75, _16
	mov.w	r0, 59	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jnz	.L181		#
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.158_17, txtpos
	add.w	r0, 1 #111	# _18,
	ld.b	r0, [r0]	# _19, *_18
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp77, _19
	mov.w	r0, 10	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jz	.L182		#
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.159_20, txtpos
	add.w	r0, 1 #111	# _21,
	ld.b	r0, [r0]	# _22, *_21
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp79, _22
	mov.w	r0, 58	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jz	.L182		#
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.160_23, txtpos
	add.w	r0, 1 #111	# _24,
	ld.b	r0, [r0]	# _25, *_24
# basic.c:927: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp81, _25
	mov.w	r0, 32	# tmp82,
	cmp.w	r1, r0	# tmp81, tmp82
	jnz	.L181		#
.L182:
# basic.c:929: 			txtpos++; // This has to be the end of the print - no newline
	ld.w	r0, [txtpos]	# txtpos.161_26, txtpos
	add.w	r0, 1 #111	# _27,
	st.w	[txtpos], r0	# txtpos, _27
# basic.c:930: 			break;
	j	.L171		#
.L181:
# basic.c:932: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.162_28, txtpos
	ld.b	r0, [r0]	# _29, *txtpos.162_28
# basic.c:932: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp83, _29
	mov.w	r0, 10	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L183		#
# basic.c:932: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.163_30, txtpos
	ld.b	r0, [r0]	# _31, *txtpos.163_30
# basic.c:932: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp85, _31
	mov.w	r0, 58	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jnz	.L184		#
.L183:
# basic.c:934: 			printf("\n");	// The end of the print statement
	mov.w	r1, sp	# tmp87,
	mov.w	r0, 10	# tmp88,
	st.w	[r1], r0	#, tmp88
	call	putchar		#
# basic.c:935: 			break;
	j	.L171		#
.L184:
# basic.c:939: 			qwhat();
	call	qwhat		#
# basic.c:940: 			return;
	j	.L171		#
.L186:
# basic.c:896: 		return;
	nop	
.L171:
# basic.c:943: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_print, .-exec_print
	.p2align	1
	.global	exec_list
	.type	exec_list, @function
exec_list:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:949: 	linenum = testnum(); // Retuns 0 if no line found.
	call	testnum		#
# basic.c:949: 	linenum = testnum(); // Retuns 0 if no line found.
	st.w	[linenum], r0	# linenum, _1
# basic.c:952: 	if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.164_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.164_2
# basic.c:952: 	if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp32, _3
	mov.w	r0, 10	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L188		#
# basic.c:954: 		qwhat();
	call	qwhat		#
# basic.c:955: 		return;
	j	.L187		#
.L188:
# basic.c:959: 	list_line = findline();
	call	findline		#
# basic.c:959: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _4
# basic.c:960: 	i = 0;
	xor.w	r0, r0	# tmp34
	st.w	[r13 + (-4)], r0	# i, tmp34
# basic.c:961: 	while (list_line < program_end)
	j	.L190		#
.L191:
# basic.c:963: 		printline();
	call	printline		#
# basic.c:964: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp36, i
	add.w	r0, 1 #111	# tmp35,
	st.w	[r13 + (-4)], r0	# i, tmp35
# basic.c:965: 		if (i == 29)
	ld.w	r1, [r13 + (-4)]	# tmp37, i
	mov.w	r0, 29	# tmp38,
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L190		#
# basic.c:967: 			j = getc();
	call	getc		#
	st.w	[r13 + (-8)], r0	# j,
# basic.c:968: 			i = 0;
	xor.w	r0, r0	# tmp39
	st.w	[r13 + (-4)], r0	# i, tmp39
# basic.c:969: 			if (j == VK_ESC)
	ld.w	r1, [r13 + (-8)]	# tmp40, j
	mov.w	r0, 27	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L192		#
.L190:
# basic.c:961: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.165_5, list_line
	ld.w	r0, [program_end]	# program_end.166_6, program_end
# basic.c:961: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.165_5, program_end.166_6
	js	.L191		#
	j	.L187		#
.L192:
# basic.c:970: 				break;
	nop	
.L187:
# basic.c:973: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_list, .-exec_list
	.p2align	1
	.global	exec_run
	.type	exec_run, @function
exec_run:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:979: 	while (current_line < program_end) // Out of lines to run
	j	.L194		#
.L199:
# basic.c:981: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.167_1, current_line
	add.w	r0, 5 #111	# _2,
# basic.c:981: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _2
.L198:
# basic.c:984: 			res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:985: 			if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp42, res
	mov.w	r0, 1	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L200		#
# basic.c:987: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:988: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.168_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.168_3
# basic.c:988: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp44, _4
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L197		#
# basic.c:988: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.169_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.169_5
# basic.c:988: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp46, _6
	mov.w	r0, 58	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L197		#
# basic.c:990: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.170_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:991: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:984: 			res = direct();
	j	.L198		#
.L197:
# basic.c:994: 		if (res < 2)
	ld.w	r1, [r13 + (-4)]	# tmp48, res
	mov.w	r0, 1	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jgs	.L194		#
# basic.c:995: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r0, [current_line]	# current_line.171_9, current_line
# basic.c:995: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r1, [current_line]	# current_line.172_10, current_line
	add.w	r1, 4 #111	# _11,
	ld.b	r1, [r1]	# _12, *_11
	zex.b	r1, r1	# _13, _12
# basic.c:995: 			current_line += current_line[sizeof(LINENUM)];
	add.w	r0, r1 #222	# _14, _13
	st.w	[current_line], r0	# current_line, _14
.L194:
# basic.c:979: 	while (current_line < program_end) // Out of lines to run
	ld.w	r1, [current_line]	# current_line.173_15, current_line
	ld.w	r0, [program_end]	# program_end.174_16, program_end
# basic.c:979: 	while (current_line < program_end) // Out of lines to run
	cmp.w	r1, r0	# current_line.173_15, program_end.174_16
	js	.L199		#
	j	.L193		#
.L200:
# basic.c:986: 				return;
	nop	
.L193:
# basic.c:1001: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_run, .-exec_run
	.p2align	1
	.global	exec_if
	.type	exec_if, @function
exec_if:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:1008: 	expression_error = 0;
	xor.w	r0, r0	# tmp37
	st.b	[expression_error], r0	# expression_error, tmp37
# basic.c:1009: 	condition = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# condition,
# basic.c:1010: 	if (expression_error || *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.175_1, expression_error
# basic.c:1010: 	if (expression_error || *txtpos == NL)
	sex.b	r1, r0	# tmp38, expression_error.175_1
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L202		#
# basic.c:1010: 	if (expression_error || *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.176_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.176_2
# basic.c:1010: 	if (expression_error || *txtpos == NL)
	zex.b	r1, r0	# tmp40, _3
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L203		#
.L202:
# basic.c:1012: 		qhow();
	call	qhow		#
# basic.c:1013: 		return;
	j	.L201		#
.L203:
# basic.c:1015: 	if (condition != 0)
	ld.w	r1, [r13 + (-4)]	# tmp42, condition
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L210		#
.L209:
# basic.c:1018: 			res = direct();
	call	direct		#
	st.w	[r13 + (-8)], r0	# res,
# basic.c:1019: 			if (res == 1)
	ld.w	r1, [r13 + (-8)]	# tmp44, res
	mov.w	r0, 1	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L211		#
# basic.c:1021: 			if (res == 2)
	ld.w	r1, [r13 + (-8)]	# tmp46, res
	mov.w	r0, 2	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L207		#
# basic.c:1023: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.177_4, current_line
	add.w	r0, 5 #111	# _5,
# basic.c:1023: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1024: 				continue;
	j	.L208		#
.L207:
# basic.c:1026: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1027: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.178_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.178_6
# basic.c:1027: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp48, _7
	mov.w	r0, 10	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L210		#
# basic.c:1027: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.179_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.179_8
# basic.c:1027: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp50, _9
	mov.w	r0, 58	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L210		#
# basic.c:1029: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.180_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1030: 			ignore_blanks();
	call	ignore_blanks		#
.L208:
# basic.c:1018: 			res = direct();
	j	.L209		#
.L210:
# basic.c:1033: 	return;
	nop	
	j	.L201		#
.L211:
# basic.c:1020: 				return;
	nop	
.L201:
# basic.c:1034: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_if, .-exec_if
	.p2align	1
	.global	exec_for
	.type	exec_for, @function
exec_for:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# basic.c:1040: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1041: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.181_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.181_1
# basic.c:1041: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp64, _2
	mov.w	r0, 64	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jse	.L213		#
# basic.c:1041: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.182_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.182_3
# basic.c:1041: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp66, _4
	mov.w	r0, 90	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jse	.L214		#
.L213:
# basic.c:1043: 		qwhat();
	call	qwhat		#
# basic.c:1044: 		return;
	j	.L212		#
.L214:
# basic.c:1046: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.183_5, txtpos
# basic.c:1046: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp68, *txtpos.183_5
	st.b	[r13 + (-5)], r0	# var, tmp68
# basic.c:1047: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.184_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1048: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1049: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.185_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.185_8
# basic.c:1049: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp69, _9
	mov.w	r0, 61	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jz	.L216		#
# basic.c:1051: 		qwhat();
	call	qwhat		#
# basic.c:1052: 		return;
	j	.L212		#
.L216:
# basic.c:1054: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.186_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1055: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1057: 	expression_error = 0;
	xor.w	r0, r0	# tmp71
	st.b	[expression_error], r0	# expression_error, tmp71
# basic.c:1058: 	initial = expression();
	call	expression		#
	st.w	[r13 + (-12)], r0	# initial,
# basic.c:1059: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.187_12, expression_error
# basic.c:1059: 	if (expression_error)
	sex.b	r1, r0	# tmp72, expression_error.187_12
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L217		#
# basic.c:1061: 		qwhat();
	call	qwhat		#
# basic.c:1062: 		return;
	j	.L212		#
.L217:
# basic.c:1065: 	scantable(to_tab);
	mov.w	r1, sp	# tmp74,
	mov.w	r0, to_tab	# tmp75,
	st.w	[r1], r0	#, tmp75
	call	scantable		#
# basic.c:1066: 	if (table_index != 0)
	ld.b	r0, [table_index]	# table_index.188_13, table_index
# basic.c:1066: 	if (table_index != 0)
	sex.b	r1, r0	# tmp76, table_index.188_13
	xor.w	r0, r0	# tmp77
	cmp.w	r1, r0	# tmp76, tmp77
	jz	.L218		#
# basic.c:1068: 		qwhat();
	call	qwhat		#
# basic.c:1069: 		return;
	j	.L212		#
.L218:
# basic.c:1072: 	terminal = expression();
	call	expression		#
	st.w	[r13 + (-16)], r0	# terminal,
# basic.c:1073: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.189_14, expression_error
# basic.c:1073: 	if (expression_error)
	sex.b	r1, r0	# tmp78, expression_error.189_14
	xor.w	r0, r0	# tmp79
	cmp.w	r1, r0	# tmp78, tmp79
	jz	.L219		#
# basic.c:1075: 		qwhat();
	call	qwhat		#
# basic.c:1076: 		return;
	j	.L212		#
.L219:
# basic.c:1079: 	scantable(step_tab);
	mov.w	r1, sp	# tmp80,
	mov.w	r0, step_tab	# tmp81,
	st.w	[r1], r0	#, tmp81
	call	scantable		#
# basic.c:1080: 	if (table_index == 0)
	ld.b	r0, [table_index]	# table_index.190_15, table_index
# basic.c:1080: 	if (table_index == 0)
	sex.b	r1, r0	# tmp82, table_index.190_15
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L220		#
# basic.c:1082: 		step = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# step,
# basic.c:1083: 		if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.191_16, expression_error
# basic.c:1083: 		if (expression_error)
	sex.b	r1, r0	# tmp84, expression_error.191_16
	xor.w	r0, r0	# tmp85
	cmp.w	r1, r0	# tmp84, tmp85
	jz	.L221		#
# basic.c:1085: 			qwhat();
	call	qwhat		#
# basic.c:1086: 			return;
	j	.L212		#
.L220:
# basic.c:1090: 		step = 1;
	mov.w	r0, 1	# tmp86,
	st.w	[r13 + (-4)], r0	# step, tmp86
.L221:
# basic.c:1092: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1093: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.192_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.192_17
# basic.c:1093: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp87, _18
	mov.w	r0, 10	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L222		#
# basic.c:1093: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.193_19, txtpos
	ld.b	r0, [r0]	# _20, *txtpos.193_19
# basic.c:1093: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp89, _20
	mov.w	r0, 58	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jz	.L222		#
# basic.c:1095: 		qwhat();
	call	qwhat		#
# basic.c:1096: 		return;
	j	.L212		#
.L222:
# basic.c:1099: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.b	r0, [expression_error]	# expression_error.194_21, expression_error
# basic.c:1099: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	sex.b	r1, r0	# tmp91, expression_error.194_21
	xor.w	r0, r0	# tmp92
	cmp.w	r1, r0	# tmp91, tmp92
	jnz	.L223		#
# basic.c:1099: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.195_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.195_22
# basic.c:1099: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp93, _23
	mov.w	r0, 10	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L224		#
# basic.c:1099: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.196_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.196_24
# basic.c:1099: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp95, _25
	mov.w	r0, 58	# tmp96,
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L223		#
.L224:
# basic.c:1102: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.197_26, bsp
	mov.w	r1, r0	# _27, bsp.197_26
	add.w	r1, 20 #111	# _27,
# basic.c:1102: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.198_28, stack_limit
# basic.c:1102: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	cmp.w	r1, r0	# _27, stack_limit.198_28
	jge	.L225		#
# basic.c:1104: 			qsorry();
	call	qsorry		#
# basic.c:1105: 			return;
	j	.L212		#
.L225:
# basic.c:1108: 		bsp -= sizeof(struct stack_for_frame);
	ld.w	r0, [bsp]	# bsp.199_29, bsp
	add.w	r0, -20 #111	# _30,
	st.w	[bsp], r0	# bsp, _30
# basic.c:1109: 		f = (struct stack_for_frame *)bsp;
	ld.w	r0, [bsp]	# tmp97, bsp
	st.w	[r13 + (-20)], r0	# f, tmp97
# basic.c:1110: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r0, [variables_begin]	# variables_begin.200_31, variables_begin
# basic.c:1110: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.b	r1, [r13 + (-5)]	# _32, var
	mov.w	r2, 1073741759	# tmp98,
	add.w	r1, r2 #222	# _33, tmp98
	mov.w	r2, 2	# tmp99,
	shl.w	r1, r2	# _34, tmp99
	add.w	r0, r1 #222	# _35, _34
# basic.c:1110: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r1, [r13 + (-12)]	# tmp100, initial
	st.w	[r0], r1	# *_35, tmp100
# basic.c:1111: 		f->frame_type = STACK_FOR_FLAG;
	ld.w	r0, [r13 + (-20)]	# tmp101, f
	mov.b	r1, 70	# tmp102,
	st.b	[r0], r1	# f_63->frame_type, tmp102
# basic.c:1112: 		f->for_var = var;
	ld.b	r1, [r13 + (-5)]	# var.201_36, var
	ld.w	r0, [r13 + (-20)]	# tmp103, f
	st.b	[r0 + (1)], r1	# f_63->for_var, var.201_36
# basic.c:1113: 		f->terminal = terminal;
	ld.w	r0, [r13 + (-20)]	# tmp104, f
	ld.w	r1, [r13 + (-16)]	# tmp105, terminal
	st.w	[r0 + (4)], r1	# f_63->terminal, tmp105
# basic.c:1114: 		f->step = step;
	ld.w	r0, [r13 + (-20)]	# tmp106, f
	ld.w	r1, [r13 + (-4)]	# tmp107, step
	st.w	[r0 + (8)], r1	# f_63->step, tmp107
# basic.c:1115: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.202_37, txtpos
	ld.w	r0, [r13 + (-20)]	# tmp108, f
	st.w	[r0 + (16)], r1	# f_63->txtpos, txtpos.202_37
# basic.c:1116: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.203_38, current_line
	ld.w	r0, [r13 + (-20)]	# tmp109, f
	st.w	[r0 + (12)], r1	# f_63->current_line, current_line.203_38
# basic.c:1122: 		return;
	j	.L212		#
.L223:
# basic.c:1124: 	qhow();
	call	qhow		#
.L212:
# basic.c:1125: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_for, .-exec_for
	.section	.rodata
	.p2align	2
.LC8:
	.string	"Stack is stuffed!"
	.text
	.p2align	1
	.global	exec_return
	.type	exec_return, @function
exec_return:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# basic.c:1135: 	tempsp = bsp;
	ld.w	r0, [bsp]	# bsp.204_1, bsp
	st.w	[tempsp], r0	# tempsp, bsp.204_1
# basic.c:1136: 	while (tempsp < program + kRamSize - 1)
	j	.L227		#
.L238:
# basic.c:1142: 		switch (tempsp[0])
	ld.w	r0, [tempsp]	# tempsp.205_2, tempsp
	ld.b	r0, [r0]	# _3, *tempsp.205_2
	sex.b	r0, r0	# _4, _3
# basic.c:1142: 		switch (tempsp[0])
	mov.w	r1, 70	# tmp70,
	cmp.w	r0, r1	# _4, tmp70
	jz	.L228		#
	mov.w	r1, 71	# tmp71,
	cmp.w	r0, r1	# _4, tmp71
	jnz	.L229		#
# basic.c:1145: 			if (table_index == KW_RETURN)
	ld.b	r0, [table_index]	# table_index.206_5, table_index
# basic.c:1145: 			if (table_index == KW_RETURN)
	sex.b	r1, r0	# tmp72, table_index.206_5
	mov.w	r0, 13	# tmp73,
	cmp.w	r1, r0	# tmp72, tmp73
	jnz	.L230		#
# basic.c:1147: 				struct stack_gosub_frame *f = (struct stack_gosub_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp74, tempsp
	st.w	[r13 + (-12)], r0	# f, tmp74
# basic.c:1148: 				current_line = f->current_line;
	ld.w	r0, [r13 + (-12)]	# tmp75, f
	ld.w	r0, [r0 + (4)]	# _6, f_53->current_line
# basic.c:1148: 				current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _6
# basic.c:1149: 				txtpos = f->txtpos;
	ld.w	r0, [r13 + (-12)]	# tmp76, f
	ld.w	r0, [r0 + (8)]	# _7, f_53->txtpos
# basic.c:1149: 				txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1150: 				bsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.207_8, bsp
	add.w	r0, 12 #111	# _9,
	st.w	[bsp], r0	# bsp, _9
# basic.c:1151: 				return 0;
	xor.w	r0, r0	# _45
	j	.L231		#
.L230:
# basic.c:1154: 			tempsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [tempsp]	# tempsp.208_10, tempsp
	add.w	r0, 12 #111	# _11,
	st.w	[tempsp], r0	# tempsp, _11
# basic.c:1155: 			break;
	j	.L227		#
.L228:
# basic.c:1158: 			if (table_index == KW_NEXT)
	ld.b	r0, [table_index]	# table_index.209_12, table_index
# basic.c:1158: 			if (table_index == KW_NEXT)
	sex.b	r1, r0	# tmp77, table_index.209_12
	mov.w	r0, 12	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L232		#
# basic.c:1160: 				struct stack_for_frame *f = (struct stack_for_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp79, tempsp
	st.w	[r13 + (-16)], r0	# f, tmp79
# basic.c:1162: 				var = txtpos[-1];
	ld.w	r0, [txtpos]	# txtpos.210_13, txtpos
	add.w	r0, -1 #111	# _14,
	ld.b	r0, [r0]	# _15, *_14
# basic.c:1162: 				var = txtpos[-1];
	st.b	[r13 + (-5)], r0	# var, _15
# basic.c:1163: 				i = -2;
	mov.w	r0, -2	# tmp80,
	st.w	[r13 + (-4)], r0	# i, tmp80
# basic.c:1164: 				while (var == ' ') 
	j	.L233		#
.L234:
# basic.c:1166: 					var = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.211_16, txtpos
	ld.w	r1, [r13 + (-4)]	# i.212_17, i
	add.w	r0, r1 #222	# _18, i.212_17
	ld.b	r0, [r0]	# _19, *_18
# basic.c:1166: 					var = txtpos[i];
	st.b	[r13 + (-5)], r0	# var, _19
# basic.c:1167: 					i--;
	ld.w	r0, [r13 + (-4)]	# tmp82, i
	add.w	r0, -1 #111	# tmp81,
	st.w	[r13 + (-4)], r0	# i, tmp81
.L233:
# basic.c:1164: 				while (var == ' ') 
	ld.b	r0, [r13 + (-5)]	#, var
	sex.b	r1, r0	# tmp83,
	mov.w	r0, 32	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L234		#
# basic.c:1169: 				if (var == f->for_var)
	ld.w	r0, [r13 + (-16)]	# tmp85, f
	ld.b	r0, [r0 + (1)]	# _20, f_58->for_var
# basic.c:1169: 				if (var == f->for_var)
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# tmp86,
	sex.b	r0, r0	# tmp87, _20
	cmp.w	r1, r0	# tmp86, tmp87
	jnz	.L232		#
# basic.c:1171: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.213_21, variables_begin
# basic.c:1171: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# _22,
	mov.w	r2, 1073741759	# tmp88,
	add.w	r1, r2 #222	# _23, tmp88
	mov.w	r2, 2	# tmp89,
	shl.w	r1, r2	# _24, tmp89
# basic.c:1171: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	add.w	r0, r1 #222	# tmp90, _24
	st.w	[r13 + (-20)], r0	# varaddr, tmp90
# basic.c:1172: 					*varaddr = *varaddr + f->step;
	ld.w	r0, [r13 + (-20)]	# tmp91, varaddr
	ld.w	r1, [r0]	# _25, *varaddr_61
# basic.c:1172: 					*varaddr = *varaddr + f->step;
	ld.w	r0, [r13 + (-16)]	# tmp92, f
	ld.w	r0, [r0 + (8)]	# _26, f_58->step
# basic.c:1172: 					*varaddr = *varaddr + f->step;
	add.w	r1, r0 #222	# _27, _26
# basic.c:1172: 					*varaddr = *varaddr + f->step;
	ld.w	r0, [r13 + (-20)]	# tmp93, varaddr
	st.w	[r0], r1	# *varaddr_61, _27
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r0, [r13 + (-16)]	# tmp94, f
	ld.w	r1, [r0 + (8)]	# _28, f_58->step
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r0, r0	# tmp95
	cmp.w	r1, r0	# _28, tmp95
	jses	.L235		#
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r0, [r13 + (-20)]	# tmp96, varaddr
	ld.w	r1, [r0]	# _29, *varaddr_61
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r0, [r13 + (-16)]	# tmp97, f
	ld.w	r0, [r0 + (4)]	# _30, f_58->terminal
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	cmp.w	r1, r0	# _29, _30
	jses	.L236		#
.L235:
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r0, [r13 + (-16)]	# tmp98, f
	ld.w	r1, [r0 + (8)]	# _31, f_58->step
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r0, r0	# tmp99
	cmp.w	r1, r0	# _31, tmp99
	jges	.L237		#
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r0, [r13 + (-20)]	# tmp100, varaddr
	ld.w	r1, [r0]	# _32, *varaddr_61
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r0, [r13 + (-16)]	# tmp101, f
	ld.w	r0, [r0 + (4)]	# _33, f_58->terminal
# basic.c:1174: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	cmp.w	r1, r0	# _32, _33
	jss	.L237		#
.L236:
# basic.c:1177: 						txtpos = f->txtpos;
	ld.w	r0, [r13 + (-16)]	# tmp102, f
	ld.w	r0, [r0 + (16)]	# _34, f_58->txtpos
# basic.c:1177: 						txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _34
# basic.c:1178: 						current_line = f->current_line;
	ld.w	r0, [r13 + (-16)]	# tmp103, f
	ld.w	r0, [r0 + (12)]	# _35, f_58->current_line
# basic.c:1178: 						current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _35
# basic.c:1179: 						return 0;
	xor.w	r0, r0	# _45
	j	.L231		#
.L237:
# basic.c:1182: 					bsp = tempsp + sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.214_36, tempsp
	add.w	r0, 20 #111	# _37,
# basic.c:1182: 					bsp = tempsp + sizeof(struct stack_for_frame);
	st.w	[bsp], r0	# bsp, _37
# basic.c:1183: 					return 0;
	xor.w	r0, r0	# _45
	j	.L231		#
.L232:
# basic.c:1187: 			tempsp += sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.215_38, tempsp
	add.w	r0, 20 #111	# _39,
	st.w	[tempsp], r0	# tempsp, _39
# basic.c:1188: 			break;
	j	.L227		#
.L229:
# basic.c:1190: 			printf("Stack is stuffed!\n");
	mov.w	r1, sp	# tmp104,
	mov.w	r0, .LC8	# tmp105,
	st.w	[r1], r0	#, tmp105
	call	puts		#
# basic.c:1191: 			return 1;
	mov.w	r0, 1	# _45,
	j	.L231		#
.L227:
# basic.c:1136: 	while (tempsp < program + kRamSize - 1)
	ld.w	r1, [program]	# program.216_40, program
	mov.w	r0, 65535	# tmp106,
	add.w	r1, r0 #222	# _41, tmp106
# basic.c:1136: 	while (tempsp < program + kRamSize - 1)
	ld.w	r0, [tempsp]	# tempsp.217_42, tempsp
# basic.c:1136: 	while (tempsp < program + kRamSize - 1)
	cmp.w	r1, r0	# _41, tempsp.217_42
	jg	.L238		#
# basic.c:1195: 	qhow();
	call	qhow		#
# basic.c:1196: 	return 1;
	mov.w	r0, 1	# _45,
.L231:
# basic.c:1197: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_return, .-exec_return
	.p2align	1
	.global	exec_next
	.type	exec_next, @function
exec_next:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1202: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1206: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.218_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.218_1
# basic.c:1206: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp36, _2
	mov.w	r0, 64	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jse	.L240		#
# basic.c:1206: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.219_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.219_3
# basic.c:1206: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp38, _4
	mov.w	r0, 90	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jse	.L241		#
.L240:
# basic.c:1211: 		qhow();
	call	qhow		#
# basic.c:1212: 		return;
	j	.L239		#
.L241:
# basic.c:1214: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.220_5, txtpos
	add.w	r0, 1 #111	# _6,
	st.w	[txtpos], r0	# txtpos, _6
# basic.c:1215: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1216: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.221_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.221_7
# basic.c:1216: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp40, _8
	mov.w	r0, 58	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L243		#
# basic.c:1216: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.222_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.222_9
# basic.c:1216: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp42, _10
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L243		#
# basic.c:1218: 		qwhat();
	call	qwhat		#
.L243:
# basic.c:1220: 	exec_return();
	call	exec_return		#
.L239:
# basic.c:1221: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_next, .-exec_next
	.p2align	1
	.global	exec_gosub
	.type	exec_gosub, @function
exec_gosub:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:1225: 	expression_error = 0;
	xor.w	r0, r0	# tmp38
	st.b	[expression_error], r0	# expression_error, tmp38
# basic.c:1226: 	linenum = expression();
	call	expression		#
# basic.c:1226: 	linenum = expression();
	st.w	[linenum], r0	# linenum, _1
# basic.c:1227: 	if (!expression_error && *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.223_2, expression_error
# basic.c:1227: 	if (!expression_error && *txtpos == NL)
	sex.b	r1, r0	# tmp39, expression_error.223_2
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L245		#
# basic.c:1227: 	if (!expression_error && *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.224_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.224_3
# basic.c:1227: 	if (!expression_error && *txtpos == NL)
	zex.b	r1, r0	# tmp41, _4
	mov.w	r0, 10	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L245		#
# basic.c:1230: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.225_5, bsp
	mov.w	r1, r0	# _6, bsp.225_5
	add.w	r1, 12 #111	# _6,
# basic.c:1230: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.226_7, stack_limit
# basic.c:1230: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	cmp.w	r1, r0	# _6, stack_limit.226_7
	jge	.L246		#
# basic.c:1232: 			qsorry();
	call	qsorry		#
# basic.c:1233: 			return;
	j	.L244		#
.L246:
# basic.c:1236: 		bsp -= sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.227_8, bsp
	add.w	r0, -12 #111	# _9,
	st.w	[bsp], r0	# bsp, _9
# basic.c:1237: 		f = (struct stack_gosub_frame *)bsp;
	ld.w	r0, [bsp]	# tmp43, bsp
	st.w	[r13 + (-4)], r0	# f, tmp43
# basic.c:1238: 		f->frame_type = STACK_GOSUB_FLAG;
	ld.w	r0, [r13 + (-4)]	# tmp44, f
	mov.b	r1, 71	# tmp45,
	st.b	[r0], r1	# f_19->frame_type, tmp45
# basic.c:1239: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.228_10, txtpos
	ld.w	r0, [r13 + (-4)]	# tmp46, f
	st.w	[r0 + (8)], r1	# f_19->txtpos, txtpos.228_10
# basic.c:1240: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.229_11, current_line
	ld.w	r0, [r13 + (-4)]	# tmp47, f
	st.w	[r0 + (4)], r1	# f_19->current_line, current_line.229_11
# basic.c:1241: 		current_line = findline();
	call	findline		#
# basic.c:1241: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _12
# basic.c:1242: 		exec_run();
	call	exec_run		#
# basic.c:1243: 		return;
	j	.L244		#
.L245:
# basic.c:1245: 	qhow();
	call	qhow		#
.L244:
# basic.c:1247: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_gosub, .-exec_gosub
	.p2align	1
	.global	exec_input
	.type	exec_input, @function
exec_input:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:1254: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1256: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.230_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.230_1
# basic.c:1256: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp47, _2
	mov.w	r0, 64	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jse	.L249		#
# basic.c:1256: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.231_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.231_3
# basic.c:1256: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp49, _4
	mov.w	r0, 90	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jse	.L250		#
.L249:
# basic.c:1258: 		qwhat();
	call	qwhat		#
# basic.c:1259: 		return;
	j	.L248		#
.L250:
# basic.c:1262: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.232_5, txtpos
# basic.c:1262: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp51, *txtpos.232_5
	st.b	[r13 + (-1)], r0	# var, tmp51
# basic.c:1263: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.233_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1264: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.234_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.234_8
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp52, _9
	mov.w	r0, 10	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L255		#
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.235_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.235_10
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp54, _11
	mov.w	r0, 58	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L255		#
# basic.c:1268: 		qwhat();
	call	qwhat		#
# basic.c:1269: 		return;
	j	.L248		#
.L255:
# basic.c:1274: 		tmptxtpos = txtpos;
	ld.w	r0, [txtpos]	# txtpos.236_12, txtpos
	st.w	[tmptxtpos], r0	# tmptxtpos, txtpos.236_12
# basic.c:1275: 		getln('?');
	mov.w	r1, sp	# tmp56,
	mov.w	r0, 63	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	getln		#
# basic.c:1276: 		toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1277: 		txtpos = program_end + sizeof(VAR);
	ld.w	r0, [program_end]	# program_end.237_13, program_end
	add.w	r0, 4 #111	# _14,
# basic.c:1277: 		txtpos = program_end + sizeof(VAR);
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:1278: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:1279: 		expression_error = 0;
	xor.w	r0, r0	# tmp58
	st.b	[expression_error], r0	# expression_error, tmp58
# basic.c:1280: 		value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1281: 		if (!expression_error)
	ld.b	r0, [expression_error]	# expression_error.238_15, expression_error
# basic.c:1281: 		if (!expression_error)
	sex.b	r1, r0	# tmp59, expression_error.238_15
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L257		#
# basic.c:1274: 		tmptxtpos = txtpos;
	j	.L255		#
.L257:
# basic.c:1282: 			break;
	nop	
# basic.c:1284: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r0, [variables_begin]	# variables_begin.239_16, variables_begin
# basic.c:1284: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.b	r1, [r13 + (-1)]	# _17, var
	mov.w	r2, 1073741759	# tmp61,
	add.w	r1, r2 #222	# _18, tmp61
	mov.w	r2, 2	# tmp62,
	shl.w	r1, r2	# _19, tmp62
	add.w	r0, r1 #222	# _20, _19
# basic.c:1284: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r1, [r13 + (-8)]	# tmp63, value
	st.w	[r0], r1	# *_20, tmp63
# basic.c:1285: 	txtpos = tmptxtpos;
	ld.w	r0, [tmptxtpos]	# tmptxtpos.240_21, tmptxtpos
	st.w	[txtpos], r0	# txtpos, tmptxtpos.240_21
.L248:
# basic.c:1286: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_input, .-exec_input
	.p2align	1
	.global	exec_edit
	.type	exec_edit, @function
exec_edit:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 36 #111	#,
# basic.c:1294: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1295: 	expression_error = 0;
	xor.w	r0, r0	# tmp61
	st.b	[expression_error], r0	# expression_error, tmp61
# basic.c:1296: 	linenum = expression();
	call	expression		#
# basic.c:1296: 	linenum = expression();
	st.w	[linenum], r0	# linenum, _1
# basic.c:1297: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.241_2, expression_error
# basic.c:1297: 	if (expression_error)
	sex.b	r1, r0	# tmp62, expression_error.241_2
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jz	.L259		#
# basic.c:1299: 		qhow();
	call	qhow		#
# basic.c:1300: 		return 0;
	xor.w	r0, r0	# _32
	j	.L260		#
.L259:
# basic.c:1302: 	line = findline();
	call	findline		#
	st.w	[r13 + (-16)], r0	# line,
# basic.c:1303: 	if (line == program_end)
	ld.w	r0, [program_end]	# program_end.242_3, program_end
# basic.c:1303: 	if (line == program_end)
	ld.w	r1, [r13 + (-16)]	# tmp64, line
	cmp.w	r1, r0	# tmp64, program_end.242_3
	jnz	.L261		#
# basic.c:1305: 		qhow();
	call	qhow		#
# basic.c:1306: 		return 0;
	xor.w	r0, r0	# _32
	j	.L260		#
.L261:
# basic.c:1309: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.243_4, program_end
	add.w	r0, 4 #111	# _5,
# basic.c:1309: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1310: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.244_6, txtpos
# basic.c:1310: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp65
	st.b	[r0], r1	# *txtpos.244_6, tmp65
# basic.c:1311: 	sprintf(txtpos, "%d ", linenum);
	ld.w	r1, [txtpos]	# txtpos.245_7, txtpos
	ld.w	r2, [linenum]	# linenum.246_8, linenum
	mov.w	r0, sp	# tmp66,
	st.w	[r0 + (8)], r2	#, linenum.246_8
	mov.w	r2, .LC0	# tmp67,
	st.w	[r0 + (4)], r2	#, tmp67
	st.w	[r0], r1	#, txtpos.245_7
	call	sprintf		#
# basic.c:1312: 	j = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.247_9, txtpos
	mov.w	r1, sp	# tmp68,
	st.w	[r1], r0	#, txtpos.247_9
	call	strlen		#
	st.w	[r13 + (-12)], r0	# j,
# basic.c:1313: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	mov.w	r0, 5	# tmp69,
	st.w	[r13 + (-8)], r0	# i, tmp69
# basic.c:1313: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	j	.L262		#
.L263:
# basic.c:1316: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-8)]	# i.248_10, i
	ld.w	r1, [r13 + (-16)]	# tmp70, line
	add.w	r1, r0 #222	# _11, i.248_10
# basic.c:1316: 		txtpos[j++] = line[i];
	ld.w	r3, [txtpos]	# txtpos.249_12, txtpos
# basic.c:1316: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-12)]	# j.250_13, j
	mov.w	r2, r0	# tmp71, j.250_13
	add.w	r2, 1 #111	# tmp71,
	st.w	[r13 + (-12)], r2	# j, tmp71
	mov.w	r2, r0	# j.251_14, j.250_13
# basic.c:1316: 		txtpos[j++] = line[i];
	mov.w	r0, r3	# _15, txtpos.249_12
	add.w	r0, r2 #222	# _15, j.251_14
# basic.c:1316: 		txtpos[j++] = line[i];
	ld.b	r1, [r1]	# _16, *_11
# basic.c:1316: 		txtpos[j++] = line[i];
	st.b	[r0], r1	# *_15, _16
# basic.c:1313: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-8)]	# tmp73, i
	add.w	r0, 1 #111	# tmp72,
	st.w	[r13 + (-8)], r0	# i, tmp72
.L262:
# basic.c:1313: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-16)]	# tmp74, line
	add.w	r0, 4 #111	# _17,
	ld.b	r0, [r0]	# _18, *_17
	zex.b	r0, r0	# _19, _18
# basic.c:1313: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	add.w	r0, -1 #111	# _20,
# basic.c:1313: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r1, [r13 + (-8)]	# tmp75, i
	cmp.w	r1, r0	# tmp75, _20
	jss	.L263		#
# basic.c:1318: 	txtpos[j] = 0;
	ld.w	r0, [txtpos]	# txtpos.252_21, txtpos
	ld.w	r1, [r13 + (-12)]	# j.253_22, j
	add.w	r0, r1 #222	# _23, j.253_22
# basic.c:1318: 	txtpos[j] = 0;
	xor.w	r1, r1	# tmp76
	st.b	[r0], r1	# *_23, tmp76
# basic.c:1319: 	put_char('#');
	mov.w	r1, sp	# tmp77,
	mov.w	r0, 35	# tmp78,
	st.w	[r1], r0	#, tmp78
	call	put_char		#
# basic.c:1320: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.254_24, txtpos
	mov.w	r1, sp	# tmp79,
	st.w	[r1], r0	#, txtpos.254_24
	call	gets		#
# basic.c:1322: 	i = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.255_25, txtpos
	mov.w	r1, sp	# tmp80,
	st.w	[r1], r0	#, txtpos.255_25
	call	strlen		#
	st.w	[r13 + (-8)], r0	# i,
# basic.c:1323: 	if (i % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# i.256_26, i
	mov.w	r0, 1	# tmp81,
	and.w	r1, r0	# _27, tmp81
# basic.c:1323: 	if (i % 2 == 0)
	xor.w	r0, r0	# tmp82
	cmp.w	r1, r0	# _27, tmp82
	jnz	.L264		#
# basic.c:1324: 		strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.257_28, txtpos
	mov.w	r0, sp	# tmp83,
	st.w	[r0], r6	#, txtpos.257_28
	call	strlen		#
	mov.w	r1, r0	# _52, tmp84
	mov.w	r0, r6	# _53, txtpos.257_28
	add.w	r0, r1 #222	# _53, _52
	mov.b	r1, 32	# tmp85,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_53], tmp85
	xor.w	r1, r1	# tmp86
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_53], tmp86
.L264:
# basic.c:1326: 	strcat(txtpos, "\n");
	ld.w	r6, [txtpos]	# txtpos.258_29, txtpos
	mov.w	r0, sp	# tmp87,
	st.w	[r0], r6	#, txtpos.258_29
	call	strlen		#
	mov.w	r1, r0	# _55, tmp88
	mov.w	r0, r6	# _56, txtpos.258_29
	add.w	r0, r1 #222	# _56, _55
	mov.b	r1, 10	# tmp89,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_56], tmp89
	xor.w	r1, r1	# tmp90
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_56], tmp90
# basic.c:1328: 	return 3;
	mov.w	r0, 3	# _32,
.L260:
# basic.c:1329: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_edit, .-exec_edit
	.global	to_print_len
	.section	.bss
	.p2align	2
	.type	to_print_len, @object
	.size	to_print_len, 4
to_print_len:
	.zero	4
	.global	to_print_buff
	.p2align	2
	.type	to_print_buff, @object
	.size	to_print_buff, 4500
to_print_buff:
	.zero	4500
	.text
	.p2align	1
	.global	my_callback
	.type	my_callback, @function
my_callback:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r2, [r13 + (8)]	# tmp30, status
	ld.w	r1, [r13 + (12)]	# tmp32, off
	ld.w	r0, [r13 + (16)]	# tmp34, len
	st.b	[r13 + (-4)], r2	# status, tmp31
	st.s	[r13 + (-8)], r1	# off, tmp33
	st.s	[r13 + (-12)], r0	# len, tmp35
# basic.c:1336: 	memcpy(to_print_buff, eth_buffer+off, len);
	ld.s	r1, [r13 + (-8)]	# _1, off
	mov.w	r0, eth_buffer	# tmp36,
	add.w	r1, r0 #222	# _2, tmp36
	ld.s	r2, [r13 + (-12)]	# _3, len
	mov.w	r0, sp	# tmp37,
	st.w	[r0 + (8)], r2	#, _3
	st.w	[r0 + (4)], r1	#, _2
	mov.w	r1, to_print_buff	# tmp38,
	st.w	[r0], r1	#, tmp38
	call	memcpy		#
# basic.c:1337: 	to_print_len = len;
	ld.s	r0, [r13 + (-12)]	# _4, len
	st.w	[to_print_len], r0	# to_print_len, _4
# basic.c:1339: } 
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	my_callback, .-my_callback
	.section	.rodata
	.p2align	2
.LC9:
	.string	"Loading file %s from the ethernet network drive\n"
	.p2align	2
.LC10:
	.string	"/load:"
	.p2align	2
.LC11:
	.string	"File %s does not exist\n"
	.p2align	2
.LC12:
	.string	"size: %d\n"
	.p2align	2
.LC13:
	.string	"ETHERNET TIMEOUT"
	.text
	.p2align	1
	.global	eth_read_file
	.type	eth_read_file, @function
eth_read_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# basic.c:1343: 	int len = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# len, tmp44
# basic.c:1344: 	int init_offset = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# init_offset, tmp45
# basic.c:1345: 	int size = 1000000;
	mov.w	r0, 1000000	# tmp46,
	st.w	[r13 + (-12)], r0	# size, tmp46
# basic.c:1346: 	int fail_count = 0;
	xor.w	r0, r0	# tmp47
	st.w	[r13 + (-16)], r0	# fail_count, tmp47
# basic.c:1347: 	printf("Loading file %s from the ethernet network drive\n", file_name);
	mov.w	r0, sp	# tmp48,
	ld.w	r1, [r13 + (12)]	# tmp49, file_name
	st.w	[r0 + (4)], r1	#, tmp49
	mov.w	r1, .LC9	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	printf		#
# basic.c:1348: 	to_print_len = 0;
	xor.w	r0, r0	# tmp51
	st.w	[to_print_len], r0	# to_print_len, tmp51
# basic.c:1349: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1349 "basic.c" 1
	irq 0

# basic.c:1350: 	browseUrl("/load:", file_name, server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp52,
	mov.w	r1, my_callback	# tmp53,
	st.w	[r0 + (16)], r1	#, tmp53
	xor.w	r1, r1	# tmp54
	st.w	[r0 + (12)], r1	#, tmp54
	mov.w	r1, server_ip	# tmp55,
	st.w	[r0 + (8)], r1	#, tmp55
	ld.w	r1, [r13 + (12)]	# tmp56, file_name
	st.w	[r0 + (4)], r1	#, tmp56
	mov.w	r1, .LC10	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	browseUrl		#
# basic.c:1352: 	while (len < size) {
	j	.L267		#
.L273:
# basic.c:1353: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp58,
	mov.w	r0, eth_buffer	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	mainLoop		#
# basic.c:1355: 		if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.259_1, to_print_len
# basic.c:1355: 		if (to_print_len > 0) {
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# to_print_len.259_1, tmp60
	jses	.L268		#
# basic.c:1356: 			if (size == 1000000) {
	ld.w	r1, [r13 + (-12)]	# tmp61, size
	mov.w	r0, 1000000	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jnz	.L269		#
# basic.c:1357: 				size = to_print_buff[3];
	ld.b	r0, [to_print_buff+3]	# _2, to_print_buff
# basic.c:1357: 				size = to_print_buff[3];
	zex.b	r0, r0	# tmp63, _2
	st.w	[r13 + (-12)], r0	# size, tmp63
# basic.c:1358: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp65, size
	mov.w	r1, 8	# tmp66,
	shl.w	r0, r1	# tmp64, tmp66
	st.w	[r13 + (-12)], r0	# size, tmp64
# basic.c:1359: 				size |= to_print_buff[2];
	ld.b	r0, [to_print_buff+2]	# _3, to_print_buff
	zex.b	r1, r0	# _4, _3
# basic.c:1359: 				size |= to_print_buff[2];
	ld.w	r0, [r13 + (-12)]	# tmp68, size
	or.w	r0, r1	# tmp67, _4
	st.w	[r13 + (-12)], r0	# size, tmp67
# basic.c:1360: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp70, size
	mov.w	r1, 8	# tmp71,
	shl.w	r0, r1	# tmp69, tmp71
	st.w	[r13 + (-12)], r0	# size, tmp69
# basic.c:1361: 				size |= to_print_buff[1];
	ld.b	r0, [to_print_buff+1]	# _5, to_print_buff
	zex.b	r1, r0	# _6, _5
# basic.c:1361: 				size |= to_print_buff[1];
	ld.w	r0, [r13 + (-12)]	# tmp73, size
	or.w	r0, r1	# tmp72, _6
	st.w	[r13 + (-12)], r0	# size, tmp72
# basic.c:1362: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp75, size
	mov.w	r1, 8	# tmp76,
	shl.w	r0, r1	# tmp74, tmp76
	st.w	[r13 + (-12)], r0	# size, tmp74
# basic.c:1363: 				size |= to_print_buff[0];
	ld.b	r0, [to_print_buff]	# _7, to_print_buff
	zex.b	r1, r0	# _8, _7
# basic.c:1363: 				size |= to_print_buff[0];
	ld.w	r0, [r13 + (-12)]	# tmp78, size
	or.w	r0, r1	# tmp77, _8
	st.w	[r13 + (-12)], r0	# size, tmp77
# basic.c:1364: 				init_offset = 4;
	mov.w	r0, 4	# tmp79,
	st.w	[r13 + (-8)], r0	# init_offset, tmp79
# basic.c:1365: 				if (size == 0) {
	ld.w	r1, [r13 + (-12)]	# tmp80, size
	xor.w	r0, r0	# tmp81
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L270		#
# basic.c:1366: 					printf("File %s does not exist\n", file_name);
	mov.w	r0, sp	# tmp82,
	ld.w	r1, [r13 + (12)]	# tmp83, file_name
	st.w	[r0 + (4)], r1	#, tmp83
	mov.w	r1, .LC11	# tmp84,
	st.w	[r0], r1	#, tmp84
	call	printf		#
# basic.c:1367: 					break;
	j	.L271		#
.L270:
# basic.c:1369: 				printf("size: %d\n", size);
	mov.w	r0, sp	# tmp85,
	ld.w	r1, [r13 + (-12)]	# tmp86, size
	st.w	[r0 + (4)], r1	#, tmp86
	mov.w	r1, .LC12	# tmp87,
	st.w	[r0], r1	#, tmp87
	call	printf		#
	j	.L272		#
.L269:
# basic.c:1371: 				init_offset = 0;
	xor.w	r0, r0	# tmp88
	st.w	[r13 + (-8)], r0	# init_offset, tmp88
.L272:
# basic.c:1373: 			printf("#");
	mov.w	r1, sp	# tmp89,
	mov.w	r0, 35	# tmp90,
	st.w	[r1], r0	#, tmp90
	call	putchar		#
# basic.c:1374: 			fail_count = 0;
	xor.w	r0, r0	# tmp91
	st.w	[r13 + (-16)], r0	# fail_count, tmp91
# basic.c:1375: 			to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.260_9, to_print_len
# basic.c:1375: 			to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp93,
	add.w	r0, r1 #222	# tmp92, tmp93
	xor.w	r1, r1	# tmp94
	st.b	[r0], r1	# to_print_buff, tmp94
# basic.c:1376: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r0, [r13 + (-4)]	# len.261_10, len
# basic.c:1376: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r1, [r13 + (8)]	# tmp95, buffer
	add.w	r1, r0 #222	# _11, len.261_10
# basic.c:1376: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r2, [r13 + (-8)]	# init_offset.262_12, init_offset
	mov.w	r0, to_print_buff	# tmp96,
	add.w	r2, r0 #222	# _13, tmp96
	ld.w	r3, [to_print_len]	# to_print_len.263_14, to_print_len
	mov.w	r0, sp	# tmp97,
	st.w	[r0 + (8)], r3	#, to_print_len.263_14
	st.w	[r0 + (4)], r2	#, _13
	st.w	[r0], r1	#, _11
	call	memcpy		#
# basic.c:1377: 			len += to_print_len - init_offset;
	ld.w	r1, [to_print_len]	# to_print_len.264_15, to_print_len
	ld.w	r0, [r13 + (-8)]	# tmp98, init_offset
	sub.w	r1, r0 #222	# _16, tmp98
# basic.c:1377: 			len += to_print_len - init_offset;
	ld.w	r0, [r13 + (-4)]	# tmp100, len
	add.w	r0, r1 #222	# tmp99, _16
	st.w	[r13 + (-4)], r0	# len, tmp99
# basic.c:1379: 			to_print_len = 0;
	xor.w	r0, r0	# tmp101
	st.w	[to_print_len], r0	# to_print_len, tmp101
	j	.L267		#
.L268:
# basic.c:1382: 			delay(10);
	mov.w	r1, sp	# tmp102,
	mov.w	r0, 10	# tmp103,
	st.w	[r1], r0	#, tmp103
	call	delay		#
# basic.c:1383: 			fail_count++;
	ld.w	r0, [r13 + (-16)]	# tmp105, fail_count
	add.w	r0, 1 #111	# tmp104,
	st.w	[r13 + (-16)], r0	# fail_count, tmp104
# basic.c:1384: 			if (fail_count > 256) {
	ld.w	r1, [r13 + (-16)]	# tmp106, fail_count
	mov.w	r0, 256	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jses	.L267		#
# basic.c:1385: 				printf("ETHERNET TIMEOUT\n");
	mov.w	r1, sp	# tmp108,
	mov.w	r0, .LC13	# tmp109,
	st.w	[r1], r0	#, tmp109
	call	puts		#
# basic.c:1386: 				len = 0;
	xor.w	r0, r0	# tmp110
	st.w	[r13 + (-4)], r0	# len, tmp110
# basic.c:1387: 				break;
	j	.L271		#
.L267:
# basic.c:1352: 	while (len < size) {
	ld.w	r1, [r13 + (-4)]	# tmp111, len
	ld.w	r0, [r13 + (-12)]	# tmp112, size
	cmp.w	r1, r0	# tmp111, tmp112
	jss	.L273		#
.L271:
# basic.c:1392: 	asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn on timer irq
# 1392 "basic.c" 1
	irq 1

# basic.c:1393: 	return len;
	ld.w	r0, [r13 + (-4)]	# _60, len
# basic.c:1394: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_read_file, .-eth_read_file
	.global	TIMER_HANDLER_INSTR
	.data
	.p2align	2
	.type	TIMER_HANDLER_INSTR, @object
	.size	TIMER_HANDLER_INSTR, 4
TIMER_HANDLER_INSTR:
	.long	8
	.global	TIMER_HANDLER_ADDR
	.p2align	2
	.type	TIMER_HANDLER_ADDR, @object
	.size	TIMER_HANDLER_ADDR, 4
TIMER_HANDLER_ADDR:
	.long	10
	.global	PORT_TIMER
	.p2align	2
	.type	PORT_TIMER, @object
	.size	PORT_TIMER, 4
PORT_TIMER:
	.long	-2147482358
	.text
	.p2align	1
	.global	timer_irq_triggered
	.type	timer_irq_triggered, @function
timer_irq_triggered:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1401: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1401 "basic.c" 1
	irq 0

# basic.c:1402: asm(
# 1402 "basic.c" 1
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

# basic.c:1408: 	asm("push r13\npush r13\n");
# 1408 "basic.c" 1
	push r13
push r13

# basic.c:1410: 	if (eth)
	ld.w	r1, [eth]	# eth.265_1, eth
# basic.c:1410: 	if (eth)
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# eth.265_1, tmp27
	jz	.L276		#
# basic.c:1411: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp28,
	mov.w	r0, eth_buffer	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	mainLoop		#
.L276:
# basic.c:1414: 	asm("pop r13\npop r13\n");
# 1414 "basic.c" 1
	pop r13
pop r13

# basic.c:1417: 	asm 
# 1417 "basic.c" 1
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
irq 1
iret

# basic.c:1421: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	timer_irq_triggered, .-timer_irq_triggered
	.p2align	1
	.global	de_init_timer
	.type	de_init_timer, @function
de_init_timer:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:1424: 	*TIMER_HANDLER_INSTR 	= 0;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.266_1, TIMER_HANDLER_INSTR
# basic.c:1424: 	*TIMER_HANDLER_INSTR 	= 0;
	xor.w	r1, r1	# tmp29
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.266_1, tmp29
# basic.c:1425: 	*TIMER_HANDLER_ADDR 	= 0;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.267_2, TIMER_HANDLER_ADDR
# basic.c:1425: 	*TIMER_HANDLER_ADDR 	= 0;
	xor.w	r1, r1	# tmp30
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.267_2, tmp30
# basic.c:1426: 	*PORT_TIMER = 0;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.268_3, PORT_TIMER
# basic.c:1426: 	*PORT_TIMER = 0;
	xor.w	r1, r1	# tmp31
	st.s	[r0], r1	# *PORT_TIMER.268_3, tmp31
# basic.c:1427: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	de_init_timer, .-de_init_timer
	.p2align	1
	.global	init_timer
	.type	init_timer, @function
init_timer:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:1431: 	*TIMER_HANDLER_INSTR 	= 1;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.269_1, TIMER_HANDLER_INSTR
# basic.c:1431: 	*TIMER_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp30,
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.269_1, tmp30
# basic.c:1432: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.270_2, TIMER_HANDLER_ADDR
# basic.c:1432: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	mov.w	r1, timer_irq_triggered	# timer_irq_triggered.271_3,
# basic.c:1432: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.270_2, timer_irq_triggered.271_3
# basic.c:1433: 	*PORT_TIMER = 50;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.272_4, PORT_TIMER
# basic.c:1433: 	*PORT_TIMER = 50;
	mov.s	r1, 50	# tmp31,
	st.s	[r0], r1	# *PORT_TIMER.272_4, tmp31
# basic.c:1434: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_timer, .-init_timer
	.section	.rodata
	.p2align	2
.LC14:
	.string	"Loading file: <%s>\n"
	.p2align	2
.LC15:
	.string	"Error reading file!"
	.p2align	2
.LC16:
	.string	"SD card file open failed"
	.p2align	2
.LC17:
	.string	"File size: %d\n"
	.p2align	2
.LC18:
	.string	".BIN"
	.p2align	2
.LC19:
	.string	"Loaded executable file. Run it using: SYS 0"
	.p2align	2
.LC20:
	.string	".BAS"
	.p2align	2
.LC21:
	.string	"Loaded successfuly at address 0 (reachable by PEEK and POKE)."
	.p2align	2
.LC22:
	.string	"OK loading file %s\n"
	.p2align	2
.LC23:
	.string	"Error loading file %s\n"
	.text
	.p2align	1
	.global	exec_load
	.type	exec_load, @function
exec_load:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 140 #111	#,
# basic.c:1441: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1442: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.273_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.273_1
# basic.c:1442: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp110, _2
	mov.w	r0, 64	# tmp111,
	cmp.w	r1, r0	# tmp110, tmp111
	jse	.L280		#
# basic.c:1442: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.274_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.274_3
# basic.c:1442: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp112, _4
	mov.w	r0, 90	# tmp113,
	cmp.w	r1, r0	# tmp112, tmp113
	jse	.L281		#
.L280:
# basic.c:1444: 		qwhat();
	call	qwhat		#
# basic.c:1445: 		return;
	j	.L279		#
.L281:
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	xor.w	r0, r0	# tmp114
	st.w	[r13 + (-8)], r0	# i, tmp114
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	j	.L283		#
.L285:
# basic.c:1452: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.275_5, txtpos
	ld.w	r1, [r13 + (-8)]	# i.276_6, i
	add.w	r0, r1 #222	# _7, i.276_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1452: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp115,
	add.w	r0, -64 #111	# tmp115,
	ld.w	r2, [r13 + (-8)]	# tmp117, i
	add.w	r0, r2 #222	# tmp116, tmp117
	st.b	[r0], r1	# s, _9
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [r13 + (-8)]	# tmp119, i
	add.w	r0, 1 #111	# tmp118,
	st.w	[r13 + (-8)], r0	# i, tmp118
.L283:
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.277_10, txtpos
	ld.w	r1, [r13 + (-8)]	# i.278_11, i
	add.w	r0, r1 #222	# _12, i.278_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp120, _13
	mov.w	r0, 10	# tmp121,
	cmp.w	r1, r0	# tmp120, tmp121
	jz	.L284		#
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.279_14, txtpos
	ld.w	r1, [r13 + (-8)]	# i.280_15, i
	add.w	r0, r1 #222	# _16, i.280_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp122, _17
	mov.w	r0, 13	# tmp123,
	cmp.w	r1, r0	# tmp122, tmp123
	jz	.L284		#
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.281_18, txtpos
	ld.w	r1, [r13 + (-8)]	# i.282_19, i
	add.w	r0, r1 #222	# _20, i.282_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp124, _21
	mov.w	r0, 32	# tmp125,
	cmp.w	r1, r0	# tmp124, tmp125
	jz	.L284		#
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.283_22, txtpos
	ld.w	r1, [r13 + (-8)]	# i.284_23, i
	add.w	r0, r1 #222	# _24, i.284_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp126, _25
	mov.w	r0, 9	# tmp127,
	cmp.w	r1, r0	# tmp126, tmp127
	jz	.L284		#
# basic.c:1449: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r1, [r13 + (-8)]	# tmp128, i
	mov.w	r0, 31	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jses	.L285		#
.L284:
# basic.c:1454: 	s[i] = 0;
	mov.w	r0, r13	# tmp130,
	add.w	r0, -64 #111	# tmp130,
	ld.w	r1, [r13 + (-8)]	# tmp132, i
	add.w	r0, r1 #222	# tmp131, tmp132
	xor.w	r1, r1	# tmp133
	st.b	[r0], r1	# s, tmp133
# basic.c:1456: 	printf("Loading file: <%s>\n", s);
	mov.w	r0, sp	# tmp134,
	mov.w	r1, r13	# tmp135,
	add.w	r1, -64 #111	# tmp135,
	st.w	[r0 + (4)], r1	#, tmp135
	mov.w	r1, .LC14	# tmp136,
	st.w	[r0], r1	#, tmp136
	call	printf		#
# basic.c:1457: 	if (drive == 2) {
	ld.b	r0, [drive]	# drive.285_26, drive
# basic.c:1457: 	if (drive == 2) {
	sex.b	r1, r0	# tmp137, drive.285_26
	mov.w	r0, 2	# tmp138,
	cmp.w	r1, r0	# tmp137, tmp138
	jnz	.L286		#
# basic.c:1460: 		delay(100);
	mov.w	r1, sp	# tmp139,
	mov.w	r0, 100	# tmp140,
	st.w	[r1], r0	#, tmp140
	call	delay		#
# basic.c:1461: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.286_27, buffer
	mov.w	r0, sp	# tmp141,
	mov.w	r2, r13	# tmp142,
	add.w	r2, -64 #111	# tmp142,
	st.w	[r0 + (4)], r2	#, tmp142
	st.w	[r0], r1	#, buffer.286_27
	call	uart_read_file		#
	st.w	[r13 + (-8)], r0	# i,
	j	.L287		#
.L286:
# basic.c:1463: 	} else if (drive == 0)
	ld.b	r0, [drive]	# drive.287_28, drive
# basic.c:1463: 	} else if (drive == 0)
	sex.b	r1, r0	# tmp143, drive.287_28
	xor.w	r0, r0	# tmp144
	cmp.w	r1, r0	# tmp143, tmp144
	jnz	.L288		#
# basic.c:1467: 		if(file_open(s, &fd, O_READ))
	mov.w	r0, sp	# tmp145,
	xor.w	r1, r1	# tmp146
	st.w	[r0 + (8)], r1	#, tmp146
	mov.w	r1, r13	# tmp147,
	add.w	r1, -120 #111	# tmp147,
	st.w	[r0 + (4)], r1	#, tmp147
	mov.w	r1, r13	# tmp148,
	add.w	r1, -64 #111	# tmp148,
	st.w	[r0], r1	#, tmp148
	call	file_open		#
# basic.c:1467: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp149, _29
	xor.w	r0, r0	# tmp150
	cmp.w	r1, r0	# tmp149, tmp150
	jz	.L289		#
# basic.c:1469: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-88)]	# _30, fd.dir_entry.filesize
# basic.c:1469: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-24)], r0	# len, _30
# basic.c:1470: 			int total = 0;
	xor.w	r0, r0	# tmp151
	st.w	[r13 + (-20)], r0	# total, tmp151
# basic.c:1472: 			while(total < len)
	j	.L290		#
.L293:
# basic.c:1474: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.288_31, buffer
	ld.w	r0, [r13 + (-20)]	# total.289_32, total
	add.w	r1, r0 #222	# _33, total.289_32
	mov.w	r0, sp	# tmp152,
	mov.w	r2, 512	# tmp153,
	st.w	[r0 + (8)], r2	#, tmp153
	st.w	[r0 + (4)], r1	#, _33
	mov.w	r1, r13	# tmp154,
	add.w	r1, -120 #111	# tmp154,
	st.w	[r0], r1	#, tmp154
	call	file_read		#
# basic.c:1474: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp155, _34
	st.w	[r13 + (-28)], r0	# current, tmp155
# basic.c:1475: 				if (current > 0) {
	ld.w	r1, [r13 + (-28)]	# tmp156, current
	xor.w	r0, r0	# tmp157
	cmp.w	r1, r0	# tmp156, tmp157
	jses	.L291		#
# basic.c:1476: 					total += current;
	ld.w	r0, [r13 + (-20)]	# tmp159, total
	ld.w	r1, [r13 + (-28)]	# tmp160, current
	add.w	r0, r1 #222	# tmp158, tmp160
	st.w	[r13 + (-20)], r0	# total, tmp158
# basic.c:1477: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-20)]	# total.290_35, total
# basic.c:1477: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-88)]	# _36, fd.dir_entry.filesize
# basic.c:1477: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _37, _36
# basic.c:1477: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp161,
	mul.w	r1, r0	# _38, tmp161
# basic.c:1477: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp162,
	div.w	r1, r0	# _39, tmp162
mov.w	r1, r14	# _39
# basic.c:1477: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# _39, tmp163
	jnz	.L290		#
# basic.c:1478: 						printf("#");
	mov.w	r1, sp	# tmp164,
	mov.w	r0, 35	# tmp165,
	st.w	[r1], r0	#, tmp165
	call	putchar		#
	j	.L290		#
.L291:
# basic.c:1480: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp166,
	mov.w	r0, .LC15	# tmp167,
	st.w	[r1], r0	#, tmp167
	call	puts		#
# basic.c:1481: 					return;
	j	.L279		#
.L290:
# basic.c:1472: 			while(total < len)
	ld.w	r1, [r13 + (-20)]	# tmp168, total
	ld.w	r0, [r13 + (-24)]	# tmp169, len
	cmp.w	r1, r0	# tmp168, tmp169
	jss	.L293		#
# basic.c:1485: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.291_40, buffer
	ld.w	r1, [r13 + (-24)]	# len.292_41, len
	add.w	r0, r1 #222	# _42, len.292_41
# basic.c:1485: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp170
	st.b	[r0], r1	# *_42, tmp170
# basic.c:1486: 			i = len;
	ld.w	r0, [r13 + (-24)]	# tmp171, len
	st.w	[r13 + (-8)], r0	# i, tmp171
	j	.L287		#
.L289:
# basic.c:1489: 			printf("SD card file open failed\n");
	mov.w	r1, sp	# tmp172,
	mov.w	r0, .LC16	# tmp173,
	st.w	[r1], r0	#, tmp173
	call	puts		#
# basic.c:1490: 			return;
	j	.L279		#
.L288:
# basic.c:1495: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.293_43, buffer
	mov.w	r0, sp	# tmp174,
	mov.w	r2, r13	# tmp175,
	add.w	r2, -64 #111	# tmp175,
	st.w	[r0 + (4)], r2	#, tmp175
	st.w	[r0], r1	#, buffer.293_43
	call	eth_read_file		#
	st.w	[r13 + (-8)], r0	# i,
.L287:
# basic.c:1498: 	if (i > 0)
	ld.w	r1, [r13 + (-8)]	# tmp176, i
	xor.w	r0, r0	# tmp177
	cmp.w	r1, r0	# tmp176, tmp177
	jses	.L294		#
# basic.c:1500: 		printf("File size: %d\n", i);
	mov.w	r0, sp	# tmp178,
	ld.w	r1, [r13 + (-8)]	# tmp179, i
	st.w	[r0 + (4)], r1	#, tmp179
	mov.w	r1, .LC17	# tmp180,
	st.w	[r0], r1	#, tmp180
	call	printf		#
# basic.c:1501: 		if (strstr(s, ".BIN") != (char *)0) 
	mov.w	r0, sp	# tmp181,
	mov.w	r1, .LC18	# tmp182,
	st.w	[r0 + (4)], r1	#, tmp182
	mov.w	r1, r13	# tmp183,
	add.w	r1, -64 #111	# tmp183,
	st.w	[r0], r1	#, tmp183
	call	strstr		#
	mov.w	r1, r0	# _44,
# basic.c:1501: 		if (strstr(s, ".BIN") != (char *)0) 
	xor.w	r0, r0	# tmp184
	cmp.w	r1, r0	# _44, tmp184
	jz	.L295		#
# basic.c:1503: 			printf("Loaded executable file. Run it using: SYS 0\n");
	mov.w	r1, sp	# tmp185,
	mov.w	r0, .LC19	# tmp186,
	st.w	[r1], r0	#, tmp186
	call	puts		#
# basic.c:1504: 			return;
	j	.L279		#
.L295:
# basic.c:1505: 		} else if (strstr(s, ".BAS") == (char *)0) 
	mov.w	r0, sp	# tmp187,
	mov.w	r1, .LC20	# tmp188,
	st.w	[r0 + (4)], r1	#, tmp188
	mov.w	r1, r13	# tmp189,
	add.w	r1, -64 #111	# tmp189,
	st.w	[r0], r1	#, tmp189
	call	strstr		#
	mov.w	r1, r0	# _45,
# basic.c:1505: 		} else if (strstr(s, ".BAS") == (char *)0) 
	xor.w	r0, r0	# tmp190
	cmp.w	r1, r0	# _45, tmp190
	jnz	.L296		#
# basic.c:1507: 			printf("Loaded successfuly at address 0 (reachable by PEEK and POKE).\n");
	mov.w	r1, sp	# tmp191,
	mov.w	r0, .LC21	# tmp192,
	st.w	[r1], r0	#, tmp192
	call	puts		#
# basic.c:1508: 			return;
	j	.L279		#
.L296:
# basic.c:1510: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.294_46, program_start
	st.w	[program_end], r0	# program_end, program_start.294_46
# basic.c:1511: 		k = 0;
	xor.w	r0, r0	# tmp193
	st.w	[r13 + (-16)], r0	# k, tmp193
# basic.c:1512: 		for (j = 0; j <= i; j++)
	xor.w	r0, r0	# tmp194
	st.w	[r13 + (-12)], r0	# j, tmp194
# basic.c:1512: 		for (j = 0; j <= i; j++)
	j	.L297		#
.L302:
# basic.c:1514: 			if (buffer[j] == CR)
	ld.w	r0, [buffer]	# buffer.295_47, buffer
	ld.w	r1, [r13 + (-12)]	# j.296_48, j
	add.w	r0, r1 #222	# _49, j.296_48
	ld.b	r0, [r0]	# _50, *_49
# basic.c:1514: 			if (buffer[j] == CR)
	sex.b	r1, r0	# tmp195, _50
	mov.w	r0, 13	# tmp196,
	cmp.w	r1, r0	# tmp195, tmp196
	jnz	.L298		#
# basic.c:1516: 				buffer[j] = NL;
	ld.w	r0, [buffer]	# buffer.297_51, buffer
	ld.w	r1, [r13 + (-12)]	# j.298_52, j
	add.w	r0, r1 #222	# _53, j.298_52
# basic.c:1516: 				buffer[j] = NL;
	mov.b	r1, 10	# tmp197,
	st.b	[r0], r1	# *_53, tmp197
.L298:
# basic.c:1518: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.299_54, buffer
	ld.w	r1, [r13 + (-12)]	# j.300_55, j
	add.w	r0, r1 #222	# _56, j.300_55
	ld.b	r0, [r0]	# _57, *_56
# basic.c:1518: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp198, _57
	mov.w	r0, 10	# tmp199,
	cmp.w	r1, r0	# tmp198, tmp199
	jz	.L299		#
# basic.c:1518: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.301_58, buffer
	ld.w	r1, [r13 + (-12)]	# j.302_59, j
	add.w	r0, r1 #222	# _60, j.302_59
	ld.b	r0, [r0]	# _61, *_60
# basic.c:1518: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp200, _61
	xor.w	r0, r0	# tmp201
	cmp.w	r1, r0	# tmp200, tmp201
	jnz	.L300		#
.L299:
# basic.c:1520: 				txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.303_62, program_end
	add.w	r0, 4 #111	# _63,
# basic.c:1520: 				txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _63
# basic.c:1521: 				strncpy(txtpos, &buffer[k], j);
	ld.w	r1, [txtpos]	# txtpos.304_64, txtpos
	ld.w	r2, [buffer]	# buffer.305_65, buffer
	ld.w	r0, [r13 + (-16)]	# k.306_66, k
	add.w	r2, r0 #222	# _67, k.306_66
	mov.w	r0, sp	# tmp202,
	ld.w	r3, [r13 + (-12)]	# tmp203, j
	st.w	[r0 + (8)], r3	#, tmp203
	st.w	[r0 + (4)], r2	#, _67
	st.w	[r0], r1	#, txtpos.304_64
	call	strncpy		#
# basic.c:1522: 				txtpos[j - k] = NL;
	ld.w	r0, [txtpos]	# txtpos.307_68, txtpos
# basic.c:1522: 				txtpos[j - k] = NL;
	ld.w	r1, [r13 + (-12)]	# tmp204, j
	ld.w	r2, [r13 + (-16)]	# tmp205, k
	sub.w	r1, r2 #222	# _69, tmp205
# basic.c:1522: 				txtpos[j - k] = NL;
	add.w	r0, r1 #222	# _71, _70
# basic.c:1522: 				txtpos[j - k] = NL;
	mov.b	r1, 10	# tmp206,
	st.b	[r0], r1	# *_71, tmp206
# basic.c:1523: 				txtpos[j - k + 1] = 0;
	ld.w	r0, [txtpos]	# txtpos.308_72, txtpos
# basic.c:1523: 				txtpos[j - k + 1] = 0;
	ld.w	r1, [r13 + (-12)]	# tmp207, j
	ld.w	r2, [r13 + (-16)]	# tmp208, k
	sub.w	r1, r2 #222	# _73, tmp208
# basic.c:1523: 				txtpos[j - k + 1] = 0;
	add.w	r1, 1 #111	# _75,
	add.w	r0, r1 #222	# _76, _75
# basic.c:1523: 				txtpos[j - k + 1] = 0;
	xor.w	r1, r1	# tmp209
	st.b	[r0], r1	# *_76, tmp209
# basic.c:1524: 				k = j + 1;
	ld.w	r0, [r13 + (-12)]	# tmp211, j
	add.w	r0, 1 #111	# tmp210,
	st.w	[r13 + (-16)], r0	# k, tmp210
# basic.c:1525: 				l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.309_77, txtpos
	mov.w	r1, sp	# tmp212,
	st.w	[r1], r0	#, txtpos.309_77
	call	strlen		#
	st.w	[r13 + (-32)], r0	# l,
# basic.c:1526: 				if (l % 2 == 0)
	ld.w	r1, [r13 + (-32)]	# l.310_78, l
	mov.w	r0, 1	# tmp213,
	and.w	r1, r0	# _79, tmp213
# basic.c:1526: 				if (l % 2 == 0)
	xor.w	r0, r0	# tmp214
	cmp.w	r1, r0	# _79, tmp214
	jnz	.L301		#
# basic.c:1527: 					strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.311_80, txtpos
	mov.w	r0, sp	# tmp215,
	st.w	[r0], r6	#, txtpos.311_80
	call	strlen		#
	mov.w	r1, r0	# _138, tmp216
	mov.w	r0, r6	# _139, txtpos.311_80
	add.w	r0, r1 #222	# _139, _138
	mov.b	r1, 32	# tmp217,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_139], tmp217
	xor.w	r1, r1	# tmp218
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_139], tmp218
.L301:
# basic.c:1528: 				toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1529: 				skip_to_end();
	call	skip_to_end		#
# basic.c:1530: 				linenum = testnum();
	call	testnum		#
# basic.c:1530: 				linenum = testnum();
	st.w	[linenum], r0	# linenum, _81
# basic.c:1531: 				if (linenum > 0)
	ld.w	r1, [linenum]	# linenum.312_82, linenum
# basic.c:1531: 				if (linenum > 0)
	xor.w	r0, r0	# tmp219
	cmp.w	r1, r0	# linenum.312_82, tmp219
	jses	.L300		#
# basic.c:1535: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:1536: 					entered_with_line_num();
	call	entered_with_line_num		#
.L300:
# basic.c:1512: 		for (j = 0; j <= i; j++)
	ld.w	r0, [r13 + (-12)]	# tmp221, j
	add.w	r0, 1 #111	# tmp220,
	st.w	[r13 + (-12)], r0	# j, tmp220
.L297:
# basic.c:1512: 		for (j = 0; j <= i; j++)
	ld.w	r1, [r13 + (-12)]	# tmp222, j
	ld.w	r0, [r13 + (-8)]	# tmp223, i
	cmp.w	r1, r0	# tmp222, tmp223
	jses	.L302		#
# basic.c:1540: 		printf("OK loading file %s\n", s);
	mov.w	r0, sp	# tmp224,
	mov.w	r1, r13	# tmp225,
	add.w	r1, -64 #111	# tmp225,
	st.w	[r0 + (4)], r1	#, tmp225
	mov.w	r1, .LC22	# tmp226,
	st.w	[r0], r1	#, tmp226
	call	printf		#
	j	.L279		#
.L294:
# basic.c:1544: 		printf("Error loading file %s\n", s);
	mov.w	r0, sp	# tmp227,
	mov.w	r1, r13	# tmp228,
	add.w	r1, -64 #111	# tmp228,
	st.w	[r0 + (4)], r1	#, tmp228
	mov.w	r1, .LC23	# tmp229,
	st.w	[r0], r1	#, tmp229
	call	printf		#
.L279:
# basic.c:1546: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_load, .-exec_load
	.p2align	1
	.global	sprintline
	.type	sprintline, @function
sprintline:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# basic.c:1553: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [list_line]	# list_line.313_1, list_line
# basic.c:1553: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [r0]	# tmp50, MEM[(LINENUM *)list_line.313_1]
	st.w	[r13 + (-4)], r0	# line_num, tmp50
# basic.c:1554: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.314_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:1557: 	sprintf(s, "%d ", line_num);
	mov.w	r0, sp	# tmp51,
	ld.w	r1, [r13 + (-4)]	# tmp52, line_num
	st.w	[r0 + (8)], r1	#, tmp52
	mov.w	r1, .LC0	# tmp53,
	st.w	[r0 + (4)], r1	#, tmp53
	mov.w	r1, r13	# tmp54,
	add.w	r1, -14 #111	# tmp54,
	st.w	[r0], r1	#, tmp54
	call	sprintf		#
# basic.c:1558: 	strcpy(&buffer[i], s);
	ld.w	r1, [buffer]	# buffer.315_4, buffer
	ld.w	r0, [r13 + (8)]	# i.316_5, i
	add.w	r1, r0 #222	# _6, i.316_5
	mov.w	r0, sp	# tmp55,
	mov.w	r2, r13	# tmp56,
	add.w	r2, -14 #111	# tmp56,
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, _6
	call	strcpy		#
# basic.c:1559: 	i += strlen(s);
	mov.w	r1, sp	# tmp57,
	mov.w	r0, r13	# tmp58,
	add.w	r0, -14 #111	# tmp58,
	st.w	[r1], r0	#, tmp58
	call	strlen		#
	mov.w	r1, r0	# _7,
# basic.c:1559: 	i += strlen(s);
	ld.w	r0, [r13 + (8)]	# tmp60, i
	add.w	r0, r1 #222	# tmp59, _7
	st.w	[r13 + (8)], r0	# i, tmp59
# basic.c:1560: 	while (*list_line != NL)
	j	.L306		#
.L307:
# basic.c:1562: 		buffer[i] = *list_line;
	ld.w	r0, [list_line]	# list_line.317_8, list_line
	ld.b	r1, [r0]	# _9, *list_line.317_8
# basic.c:1562: 		buffer[i] = *list_line;
	ld.w	r0, [buffer]	# buffer.318_10, buffer
	ld.w	r2, [r13 + (8)]	# i.319_11, i
	add.w	r0, r2 #222	# _12, i.319_11
# basic.c:1562: 		buffer[i] = *list_line;
	st.b	[r0], r1	# *_12, _13
# basic.c:1563: 		list_line++;
	ld.w	r0, [list_line]	# list_line.320_14, list_line
	add.w	r0, 1 #111	# _15,
	st.w	[list_line], r0	# list_line, _15
# basic.c:1564: 		i++;
	ld.w	r0, [r13 + (8)]	# tmp62, i
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (8)], r0	# i, tmp61
.L306:
# basic.c:1560: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.321_16, list_line
	ld.b	r0, [r0]	# _17, *list_line.321_16
# basic.c:1560: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp63, _17
	mov.w	r0, 10	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jnz	.L307		#
# basic.c:1566: 	list_line++;
	ld.w	r0, [list_line]	# list_line.322_18, list_line
	add.w	r0, 1 #111	# _19,
	st.w	[list_line], r0	# list_line, _19
# basic.c:1567: 	buffer[i] = NL;
	ld.w	r0, [buffer]	# buffer.323_20, buffer
	ld.w	r1, [r13 + (8)]	# i.324_21, i
	add.w	r0, r1 #222	# _22, i.324_21
# basic.c:1567: 	buffer[i] = NL;
	mov.b	r1, 10	# tmp65,
	st.b	[r0], r1	# *_22, tmp65
# basic.c:1568: 	i++;
	ld.w	r0, [r13 + (8)]	# tmp67, i
	add.w	r0, 1 #111	# tmp66,
	st.w	[r13 + (8)], r0	# i, tmp66
# basic.c:1570: 	return i;
	ld.w	r0, [r13 + (8)]	# _35, i
# basic.c:1571: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintline, .-sprintline
	.section	.rodata
	.p2align	2
.LC24:
	.string	"\nSaving to SD card..."
	.p2align	2
.LC25:
	.string	"Could not open file for save."
	.text
	.p2align	1
	.global	sd_write_file
	.type	sd_write_file, @function
sd_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 100 #111	#,
# basic.c:1576: 	printf("\nSaving to SD card...\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC24	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:1577: 	int res = file_open(file_name, &fd, O_WRITE);
	mov.w	r0, sp	# tmp38,
	mov.w	r1, 1	# tmp39,
	st.w	[r0 + (8)], r1	#, tmp39
	mov.w	r1, r13	# tmp40,
	add.w	r1, -76 #111	# tmp40,
	st.w	[r0 + (4)], r1	#, tmp40
	ld.w	r1, [r13 + (16)]	# tmp41, file_name
	st.w	[r0], r1	#, tmp41
	call	file_open		#
# basic.c:1577: 	int res = file_open(file_name, &fd, O_WRITE);
	zex.b	r0, r0	# tmp42, _1
	st.w	[r13 + (-12)], r0	# res, tmp42
# basic.c:1578: 	if (res)
	ld.w	r1, [r13 + (-12)]	# tmp43, res
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L310		#
# basic.c:1580: 		int i, curr, total = 0, count = len /512 + 1;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# total, tmp45
# basic.c:1580: 		int i, curr, total = 0, count = len /512 + 1;
	ld.w	r0, [r13 + (12)]	# tmp46, len
	xor.w	r1, r1	# tmp48
	cmp.w	r0, r1	# tmp47, tmp48
	jges	.L311		#
	mov.w	r1, 511	# tmp49,
	add.w	r0, r1 #222	# tmp47, tmp49
.L311:
	mov.w	r1, 9	# tmp51,
	shr.w	r0, r1	# tmp50, tmp51
# basic.c:1580: 		int i, curr, total = 0, count = len /512 + 1;
	add.w	r0, 1 #111	# tmp52,
	st.w	[r13 + (-16)], r0	# count, tmp52
# basic.c:1581: 		for (i = 0; i < count; i++)
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:1581: 		for (i = 0; i < count; i++)
	j	.L312		#
.L317:
# basic.c:1583: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (-8)]	# total.325_3, total
# basic.c:1583: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r1, [r13 + (8)]	# tmp54, buff
	add.w	r1, r0 #222	# _4, total.325_3
# basic.c:1583: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (12)]	# _5, len
	mov.w	r2, 512	# tmp55,
	cmp.w	r0, r2	# _5, tmp55
	jses	.L313		#
	mov.w	r0, 512	# _5,
.L313:
# basic.c:1583: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r2, r0	# _7, _6
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r2	#, _7
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, r13	# tmp57,
	add.w	r1, -76 #111	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	file_write		#
# basic.c:1583: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r0, r0	# tmp58, _8
	st.w	[r13 + (-20)], r0	# curr, tmp58
# basic.c:1584: 			if (curr > 0) {
	ld.w	r1, [r13 + (-20)]	# tmp59, curr
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jses	.L320		#
# basic.c:1585: 				len -= curr;
	ld.w	r0, [r13 + (12)]	# tmp62, len
	ld.w	r1, [r13 + (-20)]	# tmp63, curr
	sub.w	r0, r1 #222	# tmp61, tmp63
	st.w	[r13 + (12)], r0	# len, tmp61
# basic.c:1586: 				total += curr;
	ld.w	r0, [r13 + (-8)]	# tmp65, total
	ld.w	r1, [r13 + (-20)]	# tmp66, curr
	add.w	r0, r1 #222	# tmp64, tmp66
	st.w	[r13 + (-8)], r0	# total, tmp64
# basic.c:1590: 			printf("#");
	mov.w	r1, sp	# tmp67,
	mov.w	r0, 35	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	putchar		#
# basic.c:1581: 		for (i = 0; i < count; i++)
	ld.w	r0, [r13 + (-4)]	# tmp70, i
	add.w	r0, 1 #111	# tmp69,
	st.w	[r13 + (-4)], r0	# i, tmp69
.L312:
# basic.c:1581: 		for (i = 0; i < count; i++)
	ld.w	r1, [r13 + (-4)]	# tmp71, i
	ld.w	r0, [r13 + (-16)]	# tmp72, count
	cmp.w	r1, r0	# tmp71, tmp72
	jss	.L317		#
	j	.L316		#
.L320:
# basic.c:1589: 				break;
	nop	
.L316:
# basic.c:1593: 		printf("\n");
	mov.w	r1, sp	# tmp73,
	mov.w	r0, 10	# tmp74,
	st.w	[r1], r0	#, tmp74
	call	putchar		#
	j	.L318		#
.L310:
# basic.c:1597: 		printf("Could not open file for save.\n");
	mov.w	r1, sp	# tmp75,
	mov.w	r0, .LC25	# tmp76,
	st.w	[r1], r0	#, tmp76
	call	puts		#
.L318:
# basic.c:1599: 	return 1;	
	mov.w	r0, 1	# _33,
# basic.c:1600: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sd_write_file, .-sd_write_file
	.section	.rodata
	.p2align	2
.LC26:
	.string	"Saving file %s of %d bytes to the ethernet network drive\n"
	.text
	.p2align	1
	.global	eth_write_file
	.type	eth_write_file, @function
eth_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1604: 	printf("Saving file %s of %d bytes to the ethernet network drive\n", file_name, len);
	mov.w	r0, sp	# tmp27,
	ld.w	r1, [r13 + (12)]	# tmp28, len
	st.w	[r0 + (8)], r1	#, tmp28
	ld.w	r1, [r13 + (16)]	# tmp29, file_name
	st.w	[r0 + (4)], r1	#, tmp29
	mov.w	r1, .LC26	# tmp30,
	st.w	[r0], r1	#, tmp30
	call	printf		#
# basic.c:1605: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_write_file, .-eth_write_file
	.section	.rodata
	.p2align	2
.LC27:
	.string	"Filename: <%s>\n"
	.p2align	2
.LC28:
	.string	"OK saving file %s, length: %d\n"
	.text
	.p2align	1
	.global	exec_save
	.type	exec_save, @function
exec_save:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# basic.c:1612: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1613: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.326_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.326_1
# basic.c:1613: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp55, _2
	mov.w	r0, 64	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jse	.L323		#
# basic.c:1613: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.327_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.327_3
# basic.c:1613: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp57, _4
	mov.w	r0, 90	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jse	.L324		#
.L323:
# basic.c:1615: 		qwhat();
	call	qwhat		#
	j	.L322		#
.L324:
# basic.c:1619: 	int spi = 0;
	xor.w	r0, r0	# tmp59
	st.w	[r13 + (-8)], r0	# spi, tmp59
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	xor.w	r0, r0	# tmp60
	st.w	[r13 + (-4)], r0	# i, tmp60
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	j	.L326		#
.L328:
# basic.c:1622: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.328_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.329_6, i
	add.w	r0, r1 #222	# _7, i.329_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1622: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp61,
	add.w	r0, -40 #111	# tmp61,
	ld.w	r2, [r13 + (-4)]	# tmp63, i
	add.w	r0, r2 #222	# tmp62, tmp63
	st.b	[r0], r1	# s, _9
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [r13 + (-4)]	# tmp65, i
	add.w	r0, 1 #111	# tmp64,
	st.w	[r13 + (-4)], r0	# i, tmp64
.L326:
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.330_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.331_11, i
	add.w	r0, r1 #222	# _12, i.331_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp66, _13
	mov.w	r0, 10	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L327		#
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.332_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.333_15, i
	add.w	r0, r1 #222	# _16, i.333_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp68, _17
	mov.w	r0, 32	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L327		#
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.334_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.335_19, i
	add.w	r0, r1 #222	# _20, i.335_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1620: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp70, _21
	mov.w	r0, 9	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L328		#
.L327:
# basic.c:1624: 	s[i] = 0;
	mov.w	r0, r13	# tmp72,
	add.w	r0, -40 #111	# tmp72,
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	add.w	r0, r1 #222	# tmp73, tmp74
	xor.w	r1, r1	# tmp75
	st.b	[r0], r1	# s, tmp75
# basic.c:1625: 	printf("Filename: <%s>\n", s);
	mov.w	r0, sp	# tmp76,
	mov.w	r1, r13	# tmp77,
	add.w	r1, -40 #111	# tmp77,
	st.w	[r0 + (4)], r1	#, tmp77
	mov.w	r1, .LC27	# tmp78,
	st.w	[r0], r1	#, tmp78
	call	printf		#
# basic.c:1628: 	list_line = findline();
	call	findline		#
# basic.c:1628: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _22
# basic.c:1629: 	i = 0;
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:1630: 	while (list_line < program_end)
	j	.L329		#
.L330:
# basic.c:1632: 		i = sprintline(i);
	mov.w	r1, sp	# tmp80,
	ld.w	r0, [r13 + (-4)]	# tmp81, i
	st.w	[r1], r0	#, tmp81
	call	sprintline		#
	st.w	[r13 + (-4)], r0	# i,
.L329:
# basic.c:1630: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.336_23, list_line
	ld.w	r0, [program_end]	# program_end.337_24, program_end
# basic.c:1630: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.336_23, program_end.337_24
	js	.L330		#
# basic.c:1634: 	if (drive == 0) {
	ld.b	r0, [drive]	# drive.338_25, drive
# basic.c:1634: 	if (drive == 0) {
	sex.b	r1, r0	# tmp82, drive.338_25
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L331		#
# basic.c:1636: 		sd_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.339_26, buffer
	mov.w	r0, sp	# tmp84,
	mov.w	r2, r13	# tmp85,
	add.w	r2, -40 #111	# tmp85,
	st.w	[r0 + (8)], r2	#, tmp85
	ld.w	r2, [r13 + (-4)]	# tmp86, i
	st.w	[r0 + (4)], r2	#, tmp86
	st.w	[r0], r1	#, buffer.339_26
	call	sd_write_file		#
	j	.L332		#
.L331:
# basic.c:1637: 	} else if (drive == 2) {
	ld.b	r0, [drive]	# drive.340_27, drive
# basic.c:1637: 	} else if (drive == 2) {
	sex.b	r1, r0	# tmp87, drive.340_27
	mov.w	r0, 2	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L333		#
# basic.c:1639: 		uart_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.341_28, buffer
	mov.w	r0, sp	# tmp89,
	mov.w	r2, r13	# tmp90,
	add.w	r2, -40 #111	# tmp90,
	st.w	[r0 + (8)], r2	#, tmp90
	ld.w	r2, [r13 + (-4)]	# tmp91, i
	st.w	[r0 + (4)], r2	#, tmp91
	st.w	[r0], r1	#, buffer.341_28
	call	uart_write_file		#
	j	.L332		#
.L333:
# basic.c:1643: 		eth_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.342_29, buffer
	mov.w	r0, sp	# tmp92,
	mov.w	r2, r13	# tmp93,
	add.w	r2, -40 #111	# tmp93,
	st.w	[r0 + (8)], r2	#, tmp93
	ld.w	r2, [r13 + (-4)]	# tmp94, i
	st.w	[r0 + (4)], r2	#, tmp94
	st.w	[r0], r1	#, buffer.342_29
	call	eth_write_file		#
.L332:
# basic.c:1645: 	printf("OK saving file %s, length: %d\n", s, i);
	mov.w	r0, sp	# tmp95,
	ld.w	r1, [r13 + (-4)]	# tmp96, i
	st.w	[r0 + (8)], r1	#, tmp96
	mov.w	r1, r13	# tmp97,
	add.w	r1, -40 #111	# tmp97,
	st.w	[r0 + (4)], r1	#, tmp97
	mov.w	r1, .LC28	# tmp98,
	st.w	[r0], r1	#, tmp98
	call	printf		#
.L322:
# basic.c:1646: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_save, .-exec_save
	.section	.rodata
	.p2align	2
.LC29:
	.string	"%s %d bytes, cluster: %d (%d)\n"
	.p2align	2
.LC30:
	.string	""
	.p2align	2
.LC31:
	.string	"/dir"
	.p2align	2
.LC32:
	.string	"NETWORK TIMEOUT"
	.text
	.p2align	1
	.global	exec_dir
	.type	exec_dir, @function
exec_dir:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 88 #111	#,
# basic.c:1652: 	if (drive == 2)
	ld.b	r0, [drive]	# drive.343_1, drive
# basic.c:1652: 	if (drive == 2)
	sex.b	r1, r0	# tmp39, drive.343_1
	mov.w	r0, 2	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L335		#
# basic.c:1655: 		uart_ls_files(buffer);
	ld.w	r0, [buffer]	# buffer.344_2, buffer
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, buffer.344_2
	call	uart_ls_files		#
# basic.c:1656: 		printf("%s\n", buffer);
	ld.w	r0, [buffer]	# buffer.345_3, buffer
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, buffer.345_3
	call	puts		#
	j	.L334		#
.L335:
# basic.c:1658: 	else if (drive == 0)
	ld.b	r0, [drive]	# drive.346_4, drive
# basic.c:1658: 	else if (drive == 0)
	sex.b	r1, r0	# tmp43, drive.346_4
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L337		#
# basic.c:1662: 		int next = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# next, tmp45
# basic.c:1663: 		while ((next = getDirEntry(&fd, next)) != 0)
	j	.L338		#
.L339:
# basic.c:1665: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.w	r1, [r13 + (-32)]	# _5, fd.dir_entry.filesize
# basic.c:1665: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-16)]	# _6, fd.curr_cluster
# basic.c:1665: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r2, r0	# _7, _6
# basic.c:1665: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-36)]	# _8, fd.dir_entry.first_cluster
# basic.c:1665: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r3, r0	# _9, _8
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (16)], r3	#, _9
	st.w	[r0 + (12)], r2	#, _7
	st.w	[r0 + (8)], r1	#, _5
	mov.w	r1, r13	# tmp47,
	add.w	r1, -64 #111	# tmp47,
	st.w	[r0 + (4)], r1	#, tmp47
	mov.w	r1, .LC29	# tmp48,
	st.w	[r0], r1	#, tmp48
	call	printf		#
.L338:
# basic.c:1663: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# next.347_10, next
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (4)], r1	#, next.347_10
	mov.w	r1, r13	# tmp50,
	add.w	r1, -64 #111	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	getDirEntry		#
# basic.c:1663: 		while ((next = getDirEntry(&fd, next)) != 0)
	st.w	[r13 + (-8)], r0	# next, _11
# basic.c:1663: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# tmp51, next
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L339		#
	j	.L334		#
.L337:
# basic.c:1670: 		to_print_len = 0;
	xor.w	r0, r0	# tmp53
	st.w	[to_print_len], r0	# to_print_len, tmp53
# basic.c:1671: 		browseUrl("/dir", "", server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp54,
	mov.w	r1, my_callback	# tmp55,
	st.w	[r0 + (16)], r1	#, tmp55
	xor.w	r1, r1	# tmp56
	st.w	[r0 + (12)], r1	#, tmp56
	mov.w	r1, server_ip	# tmp57,
	st.w	[r0 + (8)], r1	#, tmp57
	mov.w	r1, .LC30	# tmp58,
	st.w	[r0 + (4)], r1	#, tmp58
	mov.w	r1, .LC31	# tmp59,
	st.w	[r0], r1	#, tmp59
	call	browseUrl		#
# basic.c:1672: 		delay(100);
	mov.w	r1, sp	# tmp60,
	mov.w	r0, 100	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	delay		#
# basic.c:1673: 		for (i = 0; i < 1000; i++) {
	xor.w	r0, r0	# tmp62
	st.w	[r13 + (-4)], r0	# i, tmp62
# basic.c:1673: 		for (i = 0; i < 1000; i++) {
	j	.L340		#
.L342:
# basic.c:1676: 			if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.348_12, to_print_len
# basic.c:1676: 			if (to_print_len > 0) {
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# to_print_len.348_12, tmp63
	jses	.L341		#
# basic.c:1677: 				to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.349_13, to_print_len
# basic.c:1677: 				to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp65,
	add.w	r0, r1 #222	# tmp64, tmp65
	xor.w	r1, r1	# tmp66
	st.b	[r0], r1	# to_print_buff, tmp66
# basic.c:1678: 				printf("%s\n", to_print_buff);
	mov.w	r1, sp	# tmp67,
	mov.w	r0, to_print_buff	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	puts		#
# basic.c:1679: 				to_print_len = 0;
	xor.w	r0, r0	# tmp69
	st.w	[to_print_len], r0	# to_print_len, tmp69
# basic.c:1680: 				return;
	j	.L334		#
.L341:
# basic.c:1682: 			  delay(10);
	mov.w	r1, sp	# tmp70,
	mov.w	r0, 10	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	delay		#
# basic.c:1673: 		for (i = 0; i < 1000; i++) {
	ld.w	r0, [r13 + (-4)]	# tmp73, i
	add.w	r0, 1 #111	# tmp72,
	st.w	[r13 + (-4)], r0	# i, tmp72
.L340:
# basic.c:1673: 		for (i = 0; i < 1000; i++) {
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	mov.w	r0, 999	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jses	.L342		#
# basic.c:1684: 		printf("NETWORK TIMEOUT\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC32	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
.L334:
# basic.c:1686: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_dir, .-exec_dir
	.section	.rodata
	.p2align	2
.LC33:
	.string	"Invalid video mode: %d\n"
	.text
	.p2align	1
	.global	exec_mode
	.type	exec_mode, @function
exec_mode:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:1692: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1693: 	expression_error = 0;
	xor.w	r0, r0	# tmp27
	st.b	[expression_error], r0	# expression_error, tmp27
# basic.c:1694: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# value,
# basic.c:1695: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.350_1, expression_error
# basic.c:1695: 	if (expression_error)
	sex.b	r1, r0	# tmp28, expression_error.350_1
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L344		#
# basic.c:1697: 		qwhat();
	call	qwhat		#
# basic.c:1698: 		return;
	j	.L343		#
.L344:
# basic.c:1701: 	switch (value)
	ld.w	r1, [r13 + (-4)]	# tmp30, value
	mov.w	r0, 2	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jz	.L346		#
	ld.w	r1, [r13 + (-4)]	# tmp32, value
	mov.w	r0, 2	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jgs	.L347		#
	ld.w	r1, [r13 + (-4)]	# tmp34, value
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L348		#
	ld.w	r1, [r13 + (-4)]	# tmp36, value
	mov.w	r0, 1	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L349		#
	j	.L347		#
.L348:
# basic.c:1704: 			video_mode(0);
	mov.w	r1, sp	# tmp38,
	xor.w	r0, r0	# tmp39
	st.w	[r1], r0	#, tmp39
	call	video_mode		#
# basic.c:1706: 			break;
	j	.L343		#
.L349:
# basic.c:1708: 			video_mode(1);
	mov.w	r1, sp	# tmp40,
	mov.w	r0, 1	# tmp41,
	st.w	[r1], r0	#, tmp41
	call	video_mode		#
# basic.c:1710: 			break;
	j	.L343		#
.L346:
# basic.c:1712: 			video_mode(2);
	mov.w	r1, sp	# tmp42,
	mov.w	r0, 2	# tmp43,
	st.w	[r1], r0	#, tmp43
	call	video_mode		#
# basic.c:1714: 			break;
	j	.L343		#
.L347:
# basic.c:1716: 			video_mode(0);
	mov.w	r1, sp	# tmp44,
	xor.w	r0, r0	# tmp45
	st.w	[r1], r0	#, tmp45
	call	video_mode		#
# basic.c:1718: 			printf("Invalid video mode: %d\n", value);
	mov.w	r0, sp	# tmp46,
	ld.w	r1, [r13 + (-4)]	# tmp47, value
	st.w	[r0 + (4)], r1	#, tmp47
	mov.w	r1, .LC33	# tmp48,
	st.w	[r0], r1	#, tmp48
	call	printf		#
.L343:
# basic.c:1720: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_mode, .-exec_mode
	.p2align	1
	.global	exec_plot
	.type	exec_plot, @function
exec_plot:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# basic.c:1726: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1727: 	expression_error = 0;
	xor.w	r0, r0	# tmp37
	st.b	[expression_error], r0	# expression_error, tmp37
# basic.c:1728: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# x,
# basic.c:1729: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.351_1, expression_error
# basic.c:1729: 	if (expression_error)
	sex.b	r1, r0	# tmp38, expression_error.351_1
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L351		#
# basic.c:1731: 		qwhat();
	call	qwhat		#
# basic.c:1732: 		return;
	j	.L350		#
.L351:
# basic.c:1734: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1735: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.352_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.352_2
# basic.c:1735: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp40, _3
	mov.w	r0, 44	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L353		#
# basic.c:1737: 		qwhat();
	call	qwhat		#
# basic.c:1738: 		return;
	j	.L350		#
.L353:
# basic.c:1742: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.353_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1744: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1745: 	expression_error = 0;
	xor.w	r0, r0	# tmp42
	st.b	[expression_error], r0	# expression_error, tmp42
# basic.c:1746: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# y,
# basic.c:1747: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.354_6, expression_error
# basic.c:1747: 	if (expression_error)
	sex.b	r1, r0	# tmp43, expression_error.354_6
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L354		#
# basic.c:1749: 		qwhat();
	call	qwhat		#
# basic.c:1750: 		return;
	j	.L350		#
.L354:
# basic.c:1752: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1753: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.355_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.355_7
# basic.c:1753: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp45, _8
	mov.w	r0, 44	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jz	.L355		#
# basic.c:1755: 		qwhat();
	call	qwhat		#
# basic.c:1756: 		return;
	j	.L350		#
.L355:
# basic.c:1760: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.356_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1762: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1763: 	expression_error = 0;
	xor.w	r0, r0	# tmp47
	st.b	[expression_error], r0	# expression_error, tmp47
# basic.c:1764: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# c,
# basic.c:1765: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.357_11, expression_error
# basic.c:1765: 	if (expression_error)
	sex.b	r1, r0	# tmp48, expression_error.357_11
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L356		#
# basic.c:1767: 		qwhat();
	call	qwhat		#
# basic.c:1768: 		return;
	j	.L350		#
.L356:
# basic.c:1771: 	pixel(x, y, c);
	mov.w	r0, sp	# tmp50,
	ld.w	r1, [r13 + (-12)]	# tmp51, c
	st.w	[r0 + (8)], r1	#, tmp51
	ld.w	r1, [r13 + (-8)]	# tmp52, y
	st.w	[r0 + (4)], r1	#, tmp52
	ld.w	r1, [r13 + (-4)]	# tmp53, x
	st.w	[r0], r1	#, tmp53
	call	pixel		#
.L350:
# basic.c:1772: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_plot, .-exec_plot
	.p2align	1
	.global	exec_line
	.type	exec_line, @function
exec_line:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# basic.c:1778: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1779: 	expression_error = 0;
	xor.w	r0, r0	# tmp47
	st.b	[expression_error], r0	# expression_error, tmp47
# basic.c:1780: 	x1 = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# x1,
# basic.c:1781: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.358_1, expression_error
# basic.c:1781: 	if (expression_error)
	sex.b	r1, r0	# tmp48, expression_error.358_1
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L358		#
# basic.c:1783: 		qwhat();
	call	qwhat		#
# basic.c:1784: 		return;
	j	.L357		#
.L358:
# basic.c:1786: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1787: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.359_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.359_2
# basic.c:1787: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp50, _3
	mov.w	r0, 44	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L360		#
# basic.c:1789: 		qwhat();
	call	qwhat		#
# basic.c:1790: 		return;
	j	.L357		#
.L360:
# basic.c:1794: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.360_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1796: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1797: 	expression_error = 0;
	xor.w	r0, r0	# tmp52
	st.b	[expression_error], r0	# expression_error, tmp52
# basic.c:1798: 	y1 = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# y1,
# basic.c:1799: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.361_6, expression_error
# basic.c:1799: 	if (expression_error)
	sex.b	r1, r0	# tmp53, expression_error.361_6
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L361		#
# basic.c:1801: 		qwhat();
	call	qwhat		#
# basic.c:1802: 		return;
	j	.L357		#
.L361:
# basic.c:1805: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1806: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.362_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.362_7
# basic.c:1806: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp55, _8
	mov.w	r0, 44	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L362		#
# basic.c:1808: 		qwhat();
	call	qwhat		#
# basic.c:1809: 		return;
	j	.L357		#
.L362:
# basic.c:1813: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.363_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1815: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1816: 	expression_error = 0;
	xor.w	r0, r0	# tmp57
	st.b	[expression_error], r0	# expression_error, tmp57
# basic.c:1817: 	x2 = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# x2,
# basic.c:1818: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.364_11, expression_error
# basic.c:1818: 	if (expression_error)
	sex.b	r1, r0	# tmp58, expression_error.364_11
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L363		#
# basic.c:1820: 		qwhat();
	call	qwhat		#
# basic.c:1821: 		return;
	j	.L357		#
.L363:
# basic.c:1823: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1824: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.365_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.365_12
# basic.c:1824: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp60, _13
	mov.w	r0, 44	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L364		#
# basic.c:1826: 		qwhat();
	call	qwhat		#
# basic.c:1827: 		return;
	j	.L357		#
.L364:
# basic.c:1831: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.366_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:1833: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1834: 	expression_error = 0;
	xor.w	r0, r0	# tmp62
	st.b	[expression_error], r0	# expression_error, tmp62
# basic.c:1835: 	y2 = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# y2,
# basic.c:1836: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.367_16, expression_error
# basic.c:1836: 	if (expression_error)
	sex.b	r1, r0	# tmp63, expression_error.367_16
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L365		#
# basic.c:1838: 		qwhat();
	call	qwhat		#
# basic.c:1839: 		return;
	j	.L357		#
.L365:
# basic.c:1841: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1842: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.368_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.368_17
# basic.c:1842: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp65, _18
	mov.w	r0, 44	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jz	.L366		#
# basic.c:1844: 		qwhat();
	call	qwhat		#
# basic.c:1845: 		return;
	j	.L357		#
.L366:
# basic.c:1849: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.369_19, txtpos
	add.w	r0, 1 #111	# _20,
	st.w	[txtpos], r0	# txtpos, _20
# basic.c:1852: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1853: 	expression_error = 0;
	xor.w	r0, r0	# tmp67
	st.b	[expression_error], r0	# expression_error, tmp67
# basic.c:1854: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# c,
# basic.c:1855: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.370_21, expression_error
# basic.c:1855: 	if (expression_error)
	sex.b	r1, r0	# tmp68, expression_error.370_21
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L367		#
# basic.c:1857: 		qwhat();
	call	qwhat		#
# basic.c:1858: 		return;
	j	.L357		#
.L367:
# basic.c:1861: 	line(x1, y1, x2, y2, c);
	mov.w	r0, sp	# tmp70,
	ld.w	r1, [r13 + (-20)]	# tmp71, c
	st.w	[r0 + (16)], r1	#, tmp71
	ld.w	r1, [r13 + (-16)]	# tmp72, y2
	st.w	[r0 + (12)], r1	#, tmp72
	ld.w	r1, [r13 + (-12)]	# tmp73, x2
	st.w	[r0 + (8)], r1	#, tmp73
	ld.w	r1, [r13 + (-8)]	# tmp74, y1
	st.w	[r0 + (4)], r1	#, tmp74
	ld.w	r1, [r13 + (-4)]	# tmp75, x1
	st.w	[r0], r1	#, tmp75
	call	line		#
.L357:
# basic.c:1862: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_line, .-exec_line
	.p2align	1
	.global	exec_circle
	.type	exec_circle, @function
exec_circle:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# basic.c:1869: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1870: 	expression_error = 0;
	xor.w	r0, r0	# tmp42
	st.b	[expression_error], r0	# expression_error, tmp42
# basic.c:1871: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# x,
# basic.c:1872: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.371_1, expression_error
# basic.c:1872: 	if (expression_error)
	sex.b	r1, r0	# tmp43, expression_error.371_1
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L369		#
# basic.c:1874: 		qwhat();
	call	qwhat		#
# basic.c:1875: 		return;
	j	.L368		#
.L369:
# basic.c:1877: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1878: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.372_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.372_2
# basic.c:1878: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp45, _3
	mov.w	r0, 44	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jz	.L371		#
# basic.c:1880: 		qwhat();
	call	qwhat		#
# basic.c:1881: 		return;
	j	.L368		#
.L371:
# basic.c:1885: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.373_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1887: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1888: 	expression_error = 0;
	xor.w	r0, r0	# tmp47
	st.b	[expression_error], r0	# expression_error, tmp47
# basic.c:1889: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# y,
# basic.c:1890: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.374_6, expression_error
# basic.c:1890: 	if (expression_error)
	sex.b	r1, r0	# tmp48, expression_error.374_6
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L372		#
# basic.c:1892: 		qwhat();
	call	qwhat		#
# basic.c:1893: 		return;
	j	.L368		#
.L372:
# basic.c:1895: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1896: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.375_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.375_7
# basic.c:1896: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp50, _8
	mov.w	r0, 44	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L373		#
# basic.c:1898: 		qwhat();
	call	qwhat		#
# basic.c:1899: 		return;
	j	.L368		#
.L373:
# basic.c:1903: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.376_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1905: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1906: 	expression_error = 0;
	xor.w	r0, r0	# tmp52
	st.b	[expression_error], r0	# expression_error, tmp52
# basic.c:1907: 	r = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# r,
# basic.c:1908: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.377_11, expression_error
# basic.c:1908: 	if (expression_error)
	sex.b	r1, r0	# tmp53, expression_error.377_11
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L374		#
# basic.c:1910: 		qwhat();
	call	qwhat		#
# basic.c:1911: 		return;
	j	.L368		#
.L374:
# basic.c:1913: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1914: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.378_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.378_12
# basic.c:1914: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp55, _13
	mov.w	r0, 44	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L375		#
# basic.c:1916: 		qwhat();
	call	qwhat		#
# basic.c:1917: 		return;
	j	.L368		#
.L375:
# basic.c:1921: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.379_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:1923: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1924: 	expression_error = 0;
	xor.w	r0, r0	# tmp57
	st.b	[expression_error], r0	# expression_error, tmp57
# basic.c:1925: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# c,
# basic.c:1926: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.380_16, expression_error
# basic.c:1926: 	if (expression_error)
	sex.b	r1, r0	# tmp58, expression_error.380_16
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L376		#
# basic.c:1928: 		qwhat();
	call	qwhat		#
# basic.c:1929: 		return;
	j	.L368		#
.L376:
# basic.c:1932: 	circle(x, y, r, c);
	mov.w	r0, sp	# tmp60,
	ld.w	r1, [r13 + (-16)]	# tmp61, c
	st.w	[r0 + (12)], r1	#, tmp61
	ld.w	r1, [r13 + (-12)]	# tmp62, r
	st.w	[r0 + (8)], r1	#, tmp62
	ld.w	r1, [r13 + (-8)]	# tmp63, y
	st.w	[r0 + (4)], r1	#, tmp63
	ld.w	r1, [r13 + (-4)]	# tmp64, x
	st.w	[r0], r1	#, tmp64
	call	circle		#
.L368:
# basic.c:1933: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_circle, .-exec_circle
	.p2align	1
	.global	exec_draw
	.type	exec_draw, @function
exec_draw:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 140 #111	#,
# basic.c:1941: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1942: 	expression_error = 0;
	xor.w	r0, r0	# tmp60
	st.b	[expression_error], r0	# expression_error, tmp60
# basic.c:1943: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# x,
# basic.c:1944: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.381_1, expression_error
# basic.c:1944: 	if (expression_error)
	sex.b	r1, r0	# tmp61, expression_error.381_1
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L378		#
# basic.c:1946: 		qwhat();
	call	qwhat		#
# basic.c:1947: 		return;
	j	.L377		#
.L378:
# basic.c:1949: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1950: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.382_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.382_2
# basic.c:1950: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp63, _3
	mov.w	r0, 44	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L380		#
# basic.c:1952: 		qwhat();
	call	qwhat		#
# basic.c:1953: 		return;
	j	.L377		#
.L380:
# basic.c:1957: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.383_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1959: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1960: 	expression_error = 0;
	xor.w	r0, r0	# tmp65
	st.b	[expression_error], r0	# expression_error, tmp65
# basic.c:1961: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# y,
# basic.c:1962: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.384_6, expression_error
# basic.c:1962: 	if (expression_error)
	sex.b	r1, r0	# tmp66, expression_error.384_6
	xor.w	r0, r0	# tmp67
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L381		#
# basic.c:1964: 		qwhat();
	call	qwhat		#
# basic.c:1965: 		return;
	j	.L377		#
.L381:
# basic.c:1967: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1968: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.385_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.385_7
# basic.c:1968: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp68, _8
	mov.w	r0, 44	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L382		#
# basic.c:1970: 		qwhat();
	call	qwhat		#
# basic.c:1971: 		return;
	j	.L377		#
.L382:
# basic.c:1975: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.386_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1977: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1978: 	expression_error = 0;
	xor.w	r0, r0	# tmp70
	st.b	[expression_error], r0	# expression_error, tmp70
# basic.c:1979: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# c,
# basic.c:1980: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.387_11, expression_error
# basic.c:1980: 	if (expression_error)
	sex.b	r1, r0	# tmp71, expression_error.387_11
	xor.w	r0, r0	# tmp72
	cmp.w	r1, r0	# tmp71, tmp72
	jz	.L383		#
# basic.c:1982: 		qwhat();
	call	qwhat		#
# basic.c:1983: 		return;
	j	.L377		#
.L383:
# basic.c:1985: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1986: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.388_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.388_12
# basic.c:1986: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp73, _13
	mov.w	r0, 44	# tmp74,
	cmp.w	r1, r0	# tmp73, tmp74
	jz	.L384		#
# basic.c:1988: 		qwhat();
	call	qwhat		#
# basic.c:1989: 		return;
	j	.L377		#
.L384:
# basic.c:1993: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.389_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:1995: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1996: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.390_16, txtpos
	ld.b	r0, [r0]	# _17, *txtpos.390_16
# basic.c:1996: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp75, _17
	mov.w	r0, 34	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jz	.L385		#
# basic.c:1996: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.391_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.391_18
# basic.c:1996: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp77, _19
	mov.w	r0, 39	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jz	.L385		#
# basic.c:1998: 		qwhat();
	call	qwhat		#
# basic.c:1999: 		return;
	j	.L377		#
.L385:
# basic.c:2001: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.392_20, txtpos
	add.w	r0, 1 #111	# _21,
	st.w	[txtpos], r0	# txtpos, _21
# basic.c:2002: 	i = 0;
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:2003: 	while (*txtpos != NL && *txtpos != 0)
	j	.L386		#
.L390:
# basic.c:2005: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.393_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.393_22
# basic.c:2005: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp80, _23
	mov.w	r0, 34	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jz	.L387		#
# basic.c:2005: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.394_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.394_24
# basic.c:2005: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp82, _25
	mov.w	r0, 39	# tmp83,
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L388		#
.L387:
# basic.c:2007: 			s[i] = 0;
	mov.w	r0, r13	# tmp84,
	add.w	r0, -116 #111	# tmp84,
	ld.w	r1, [r13 + (-4)]	# tmp86, i
	add.w	r0, r1 #222	# tmp85, tmp86
	xor.w	r1, r1	# tmp87
	st.b	[r0], r1	# s, tmp87
# basic.c:2008: 			break;
	j	.L389		#
.L388:
# basic.c:2010: 		s[i] = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.395_26, txtpos
	ld.b	r0, [r0]	# _27, *txtpos.395_26
	mov.w	r1, r0	# _28, _27
# basic.c:2010: 		s[i] = *txtpos;
	mov.w	r0, r13	# tmp88,
	add.w	r0, -116 #111	# tmp88,
	ld.w	r2, [r13 + (-4)]	# tmp90, i
	add.w	r0, r2 #222	# tmp89, tmp90
	st.b	[r0], r1	# s, _28
# basic.c:2011: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp92, i
	add.w	r0, 1 #111	# tmp91,
	st.w	[r13 + (-4)], r0	# i, tmp91
# basic.c:2012: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.396_29, txtpos
	add.w	r0, 1 #111	# _30,
	st.w	[txtpos], r0	# txtpos, _30
.L386:
# basic.c:2003: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.397_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.397_31
# basic.c:2003: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp93, _32
	mov.w	r0, 10	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L389		#
# basic.c:2003: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.398_33, txtpos
	ld.b	r0, [r0]	# _34, *txtpos.398_33
# basic.c:2003: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp95, _34
	xor.w	r0, r0	# tmp96
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L390		#
.L389:
# basic.c:2014: 	draw(x, y, c, s);
	mov.w	r0, sp	# tmp97,
	mov.w	r1, r13	# tmp98,
	add.w	r1, -116 #111	# tmp98,
	st.w	[r0 + (12)], r1	#, tmp98
	ld.w	r1, [r13 + (-16)]	# tmp99, c
	st.w	[r0 + (8)], r1	#, tmp99
	ld.w	r1, [r13 + (-12)]	# tmp100, y
	st.w	[r0 + (4)], r1	#, tmp100
	ld.w	r1, [r13 + (-8)]	# tmp101, x
	st.w	[r0], r1	#, tmp101
	call	draw		#
.L377:
# basic.c:2015: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_draw, .-exec_draw
	.section	.rodata
	.p2align	2
.LC34:
	.string	"END"
	.p2align	2
.LC35:
	.string	"MEM"
	.p2align	2
.LC36:
	.string	"LET I = 5"
	.p2align	2
.LC37:
	.string	"I = 5"
	.p2align	2
.LC38:
	.string	"INPUT A"
	.p2align	2
.LC39:
	.string	"PRINT A"
	.p2align	2
.LC40:
	.string	"? A"
	.p2align	2
.LC41:
	.string	"FOR I = 1 TO 10 STEP 2"
	.p2align	2
.LC42:
	.string	"NEXT I"
	.p2align	2
.LC43:
	.string	"IF I = 5 GOTO 100"
	.p2align	2
.LC44:
	.string	"GOTO 100"
	.p2align	2
.LC45:
	.string	"GOSUB 100"
	.p2align	2
.LC46:
	.string	"RETURN"
	.p2align	2
.LC47:
	.string	"LOAD P1.BAS"
	.p2align	2
.LC48:
	.string	"SAVE P2.BAS"
	.p2align	2
.LC49:
	.string	"MODE 0 (MODE 1, MODE 2)"
	.p2align	2
.LC50:
	.string	"PLOT 100, 100, color"
	.p2align	2
.LC51:
	.string	"LINE 100, 100, 200, 200, color"
	.p2align	2
.LC52:
	.string	"CIRCLE 100, 100, 50, color"
	.p2align	2
.LC53:
	.string	"DRAW 100, 100, color, 'TEXT'"
	.p2align	2
.LC54:
	.string	"A = KEY()"
	.p2align	2
.LC55:
	.string	"A = ISKEY()"
	.p2align	2
.LC56:
	.string	"DELAY 1000"
	.p2align	2
.LC57:
	.string	"CURSOR 10, 10"
	.p2align	2
.LC58:
	.string	"EXEC TEST.BIN"
	.p2align	2
.LC59:
	.string	"SYS 0"
	.p2align	2
.LC60:
	.string	"DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)"
	.p2align	2
.LC61:
	.string	"TIME"
	.p2align	2
.LC62:
	.string	"ETH 1 or ETH 0"
	.text
	.p2align	1
	.global	exec_help
	.type	exec_help, @function
exec_help:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2019: 	printf("END\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC34	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:2020: 	printf("MEM\n");
	mov.w	r1, sp	# tmp28,
	mov.w	r0, .LC35	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	puts		#
# basic.c:2021: 	printf("LET I = 5\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC36	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
# basic.c:2022: 	printf("I = 5\n");
	mov.w	r1, sp	# tmp32,
	mov.w	r0, .LC37	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	puts		#
# basic.c:2023: 	printf("INPUT A\n");
	mov.w	r1, sp	# tmp34,
	mov.w	r0, .LC38	# tmp35,
	st.w	[r1], r0	#, tmp35
	call	puts		#
# basic.c:2024: 	printf("PRINT A\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC39	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:2025: 	printf("? A\n");
	mov.w	r1, sp	# tmp38,
	mov.w	r0, .LC40	# tmp39,
	st.w	[r1], r0	#, tmp39
	call	puts		#
# basic.c:2026: 	printf("FOR I = 1 TO 10 STEP 2\n");
	mov.w	r1, sp	# tmp40,
	mov.w	r0, .LC41	# tmp41,
	st.w	[r1], r0	#, tmp41
	call	puts		#
# basic.c:2027: 	printf("NEXT I\n");
	mov.w	r1, sp	# tmp42,
	mov.w	r0, .LC42	# tmp43,
	st.w	[r1], r0	#, tmp43
	call	puts		#
# basic.c:2028: 	printf("IF I = 5 GOTO 100\n");
	mov.w	r1, sp	# tmp44,
	mov.w	r0, .LC43	# tmp45,
	st.w	[r1], r0	#, tmp45
	call	puts		#
# basic.c:2029: 	printf("GOTO 100\n");
	mov.w	r1, sp	# tmp46,
	mov.w	r0, .LC44	# tmp47,
	st.w	[r1], r0	#, tmp47
	call	puts		#
# basic.c:2030: 	printf("GOSUB 100\n");
	mov.w	r1, sp	# tmp48,
	mov.w	r0, .LC45	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	puts		#
# basic.c:2031: 	printf("RETURN\n");
	mov.w	r1, sp	# tmp50,
	mov.w	r0, .LC46	# tmp51,
	st.w	[r1], r0	#, tmp51
	call	puts		#
# basic.c:2032: 	printf("LOAD P1.BAS\n");
	mov.w	r1, sp	# tmp52,
	mov.w	r0, .LC47	# tmp53,
	st.w	[r1], r0	#, tmp53
	call	puts		#
# basic.c:2033: 	printf("SAVE P2.BAS\n");
	mov.w	r1, sp	# tmp54,
	mov.w	r0, .LC48	# tmp55,
	st.w	[r1], r0	#, tmp55
	call	puts		#
# basic.c:2034: 	printf("MODE 0 (MODE 1, MODE 2)\n");
	mov.w	r1, sp	# tmp56,
	mov.w	r0, .LC49	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	puts		#
# basic.c:2035: 	printf("PLOT 100, 100, color\n");
	mov.w	r1, sp	# tmp58,
	mov.w	r0, .LC50	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	puts		#
# basic.c:2036: 	printf("LINE 100, 100, 200, 200, color\n");
	mov.w	r1, sp	# tmp60,
	mov.w	r0, .LC51	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	puts		#
# basic.c:2037: 	printf("CIRCLE 100, 100, 50, color\n");
	mov.w	r1, sp	# tmp62,
	mov.w	r0, .LC52	# tmp63,
	st.w	[r1], r0	#, tmp63
	call	puts		#
# basic.c:2038: 	printf("DRAW 100, 100, color, 'TEXT'\n");
	mov.w	r1, sp	# tmp64,
	mov.w	r0, .LC53	# tmp65,
	st.w	[r1], r0	#, tmp65
	call	puts		#
# basic.c:2039: 	printf("A = KEY()\n");
	mov.w	r1, sp	# tmp66,
	mov.w	r0, .LC54	# tmp67,
	st.w	[r1], r0	#, tmp67
	call	puts		#
# basic.c:2040: 	printf("A = ISKEY()\n");
	mov.w	r1, sp	# tmp68,
	mov.w	r0, .LC55	# tmp69,
	st.w	[r1], r0	#, tmp69
	call	puts		#
# basic.c:2041: 	printf("DELAY 1000\n");
	mov.w	r1, sp	# tmp70,
	mov.w	r0, .LC56	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	puts		#
# basic.c:2042: 	printf("CURSOR 10, 10\n");
	mov.w	r1, sp	# tmp72,
	mov.w	r0, .LC57	# tmp73,
	st.w	[r1], r0	#, tmp73
	call	puts		#
# basic.c:2043: 	printf("EXEC TEST.BIN\n");
	mov.w	r1, sp	# tmp74,
	mov.w	r0, .LC58	# tmp75,
	st.w	[r1], r0	#, tmp75
	call	puts		#
# basic.c:2044: 	printf("SYS 0\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC59	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
# basic.c:2045: 	printf("DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)\n");
	mov.w	r1, sp	# tmp78,
	mov.w	r0, .LC60	# tmp79,
	st.w	[r1], r0	#, tmp79
	call	puts		#
# basic.c:2046: 	printf("TIME\n");
	mov.w	r1, sp	# tmp80,
	mov.w	r0, .LC61	# tmp81,
	st.w	[r1], r0	#, tmp81
	call	puts		#
# basic.c:2047: 	printf("ETH 1 or ETH 0\n");
	mov.w	r1, sp	# tmp82,
	mov.w	r0, .LC62	# tmp83,
	st.w	[r1], r0	#, tmp83
	call	puts		#
# basic.c:2048: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_help, .-exec_help
	.p2align	1
	.global	exec_delay
	.type	exec_delay, @function
exec_delay:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:2054: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2055: 	expression_error = 0;
	xor.w	r0, r0	# tmp27
	st.b	[expression_error], r0	# expression_error, tmp27
# basic.c:2056: 	d = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# d,
# basic.c:2057: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.399_1, expression_error
# basic.c:2057: 	if (expression_error)
	sex.b	r1, r0	# tmp28, expression_error.399_1
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L394		#
# basic.c:2059: 		qwhat();
	call	qwhat		#
# basic.c:2060: 		return;
	j	.L393		#
.L394:
# basic.c:2062: 	delay(d);
	mov.w	r1, sp	# tmp30,
	ld.w	r0, [r13 + (-4)]	# tmp31, d
	st.w	[r1], r0	#, tmp31
	call	delay		#
.L393:
# basic.c:2063: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_delay, .-exec_delay
	.p2align	1
	.global	exec_cursor
	.type	exec_cursor, @function
exec_cursor:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:2069: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2070: 	expression_error = 0;
	xor.w	r0, r0	# tmp32
	st.b	[expression_error], r0	# expression_error, tmp32
# basic.c:2071: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# x,
# basic.c:2072: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.400_1, expression_error
# basic.c:2072: 	if (expression_error)
	sex.b	r1, r0	# tmp33, expression_error.400_1
	xor.w	r0, r0	# tmp34
	cmp.w	r1, r0	# tmp33, tmp34
	jz	.L397		#
# basic.c:2074: 		qwhat();
	call	qwhat		#
# basic.c:2075: 		return;
	j	.L396		#
.L397:
# basic.c:2077: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2078: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.401_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.401_2
# basic.c:2078: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp35, _3
	mov.w	r0, 44	# tmp36,
	cmp.w	r1, r0	# tmp35, tmp36
	jz	.L399		#
# basic.c:2080: 		qwhat();
	call	qwhat		#
# basic.c:2081: 		return;
	j	.L396		#
.L399:
# basic.c:2085: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.402_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2087: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2088: 	expression_error = 0;
	xor.w	r0, r0	# tmp37
	st.b	[expression_error], r0	# expression_error, tmp37
# basic.c:2089: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# y,
# basic.c:2090: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.403_6, expression_error
# basic.c:2090: 	if (expression_error)
	sex.b	r1, r0	# tmp38, expression_error.403_6
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L400		#
# basic.c:2092: 		qwhat();
	call	qwhat		#
# basic.c:2093: 		return;
	j	.L396		#
.L400:
# basic.c:2096: 	xy(x, y);
	mov.w	r0, sp	# tmp40,
	ld.w	r1, [r13 + (-8)]	# tmp41, y
	st.w	[r0 + (4)], r1	#, tmp41
	ld.w	r1, [r13 + (-4)]	# tmp42, x
	st.w	[r0], r1	#, tmp42
	call	xy		#
.L396:
# basic.c:2097: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_cursor, .-exec_cursor
	.p2align	1
	.global	exec_poke
	.type	exec_poke, @function
exec_poke:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:2103: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2104: 	expression_error = 0;
	xor.w	r0, r0	# tmp36
	st.b	[expression_error], r0	# expression_error, tmp36
# basic.c:2105: 	addr = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# addr,
# basic.c:2106: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.404_1, expression_error
# basic.c:2106: 	if (expression_error)
	sex.b	r1, r0	# tmp37, expression_error.404_1
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jz	.L402		#
# basic.c:2108: 		qwhat();
	call	qwhat		#
# basic.c:2109: 		return;
	j	.L401		#
.L402:
# basic.c:2111: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2112: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.405_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.405_2
# basic.c:2112: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp39, _3
	mov.w	r0, 44	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L404		#
# basic.c:2114: 		qwhat();
	call	qwhat		#
# basic.c:2115: 		return;
	j	.L401		#
.L404:
# basic.c:2119: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.406_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2121: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2122: 	expression_error = 0;
	xor.w	r0, r0	# tmp41
	st.b	[expression_error], r0	# expression_error, tmp41
# basic.c:2123: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:2124: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.407_6, expression_error
# basic.c:2124: 	if (expression_error)
	sex.b	r1, r0	# tmp42, expression_error.407_6
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L405		#
# basic.c:2126: 		qwhat();
	call	qwhat		#
# basic.c:2127: 		return;
	j	.L401		#
.L405:
# basic.c:2130: 	buffer[addr] = value & 0XFF;
	ld.w	r0, [buffer]	# buffer.408_7, buffer
	ld.w	r1, [r13 + (-4)]	# addr.409_8, addr
	add.w	r0, r1 #222	# _9, addr.409_8
# basic.c:2130: 	buffer[addr] = value & 0XFF;
	ld.w	r1, [r13 + (-8)]	# tmp44, value
	st.b	[r0], r1	# *_9, _10
.L401:
# basic.c:2131: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_poke, .-exec_poke
	.section	.rodata
	.p2align	2
.LC63:
	.string	"SD card init failed!"
	.p2align	2
.LC64:
	.string	"SD card volume failed!"
	.text
	.p2align	1
	.global	init_sd
	.type	init_sd, @function
init_sd:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2135: 	if(!sdcard_init())
	call	sdcard_init		#
# basic.c:2135: 	if(!sdcard_init())
	zex.b	r1, r0	# tmp28, _1
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jnz	.L407		#
# basic.c:2137: 		printf("SD card init failed!\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC63	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
.L407:
# basic.c:2139: 	if (!volume_init(1))
	mov.w	r1, sp	# tmp32,
	mov.w	r0, 1	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	volume_init		#
# basic.c:2139: 	if (!volume_init(1))
	zex.b	r1, r0	# tmp34, _2
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jnz	.L409		#
# basic.c:2141: 		printf("SD card volume failed!\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC64	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
.L409:
# basic.c:2143: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_sd, .-init_sd
	.section	.rodata
	.p2align	2
.LC65:
	.string	"Loading program: [%s]\n"
	.p2align	2
.LC66:
	.string	"File open failed for file: [%s]\n"
	.p2align	2
.LC67:
	.string	"Error loading program %s\n"
	.text
	.p2align	1
	.global	exec_exec
	.type	exec_exec, @function
exec_exec:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 128 #111	#,
# basic.c:2150: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2151: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.410_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.410_1
# basic.c:2151: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp69, _2
	mov.w	r0, 64	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jse	.L411		#
# basic.c:2151: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.411_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.411_3
# basic.c:2151: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp71, _4
	mov.w	r0, 90	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jse	.L412		#
.L411:
# basic.c:2153: 		qwhat();
	call	qwhat		#
# basic.c:2154: 		return;
	j	.L410		#
.L412:
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	xor.w	r0, r0	# tmp73
	st.w	[r13 + (-4)], r0	# i, tmp73
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	j	.L414		#
.L416:
# basic.c:2161: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.412_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.413_6, i
	add.w	r0, r1 #222	# _7, i.413_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:2161: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp74,
	add.w	r0, -48 #111	# tmp74,
	ld.w	r2, [r13 + (-4)]	# tmp76, i
	add.w	r0, r2 #222	# tmp75, tmp76
	st.b	[r0], r1	# s, _9
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [r13 + (-4)]	# tmp78, i
	add.w	r0, 1 #111	# tmp77,
	st.w	[r13 + (-4)], r0	# i, tmp77
.L414:
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.414_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.415_11, i
	add.w	r0, r1 #222	# _12, i.415_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp79, _13
	mov.w	r0, 10	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jz	.L415		#
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.416_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.417_15, i
	add.w	r0, r1 #222	# _16, i.417_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp81, _17
	mov.w	r0, 13	# tmp82,
	cmp.w	r1, r0	# tmp81, tmp82
	jz	.L415		#
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.418_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.419_19, i
	add.w	r0, r1 #222	# _20, i.419_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp83, _21
	mov.w	r0, 32	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L415		#
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.420_22, txtpos
	ld.w	r1, [r13 + (-4)]	# i.421_23, i
	add.w	r0, r1 #222	# _24, i.421_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp85, _25
	mov.w	r0, 9	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jz	.L415		#
# basic.c:2158: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r1, [r13 + (-4)]	# tmp87, i
	mov.w	r0, 31	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jses	.L416		#
.L415:
# basic.c:2163: 	s[i] = 0;
	mov.w	r0, r13	# tmp89,
	add.w	r0, -48 #111	# tmp89,
	ld.w	r1, [r13 + (-4)]	# tmp91, i
	add.w	r0, r1 #222	# tmp90, tmp91
	xor.w	r1, r1	# tmp92
	st.b	[r0], r1	# s, tmp92
# basic.c:2165: 	i = 0;
	xor.w	r0, r0	# tmp93
	st.w	[r13 + (-4)], r0	# i, tmp93
# basic.c:2166: 	printf("Loading program: [%s]\n", s);
	mov.w	r0, sp	# tmp94,
	mov.w	r1, r13	# tmp95,
	add.w	r1, -48 #111	# tmp95,
	st.w	[r0 + (4)], r1	#, tmp95
	mov.w	r1, .LC65	# tmp96,
	st.w	[r0], r1	#, tmp96
	call	printf		#
# basic.c:2167: 	if (drive == 0)
	ld.b	r0, [drive]	# drive.422_26, drive
# basic.c:2167: 	if (drive == 0)
	sex.b	r1, r0	# tmp97, drive.422_26
	xor.w	r0, r0	# tmp98
	cmp.w	r1, r0	# tmp97, tmp98
	jnz	.L417		#
# basic.c:2171: 		if(file_open(s, &fd, O_READ))
	mov.w	r0, sp	# tmp99,
	xor.w	r1, r1	# tmp100
	st.w	[r0 + (8)], r1	#, tmp100
	mov.w	r1, r13	# tmp101,
	add.w	r1, -104 #111	# tmp101,
	st.w	[r0 + (4)], r1	#, tmp101
	mov.w	r1, r13	# tmp102,
	add.w	r1, -48 #111	# tmp102,
	st.w	[r0], r1	#, tmp102
	call	file_open		#
# basic.c:2171: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp103, _27
	xor.w	r0, r0	# tmp104
	cmp.w	r1, r0	# tmp103, tmp104
	jz	.L418		#
# basic.c:2173: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-72)]	# _28, fd.dir_entry.filesize
# basic.c:2173: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-12)], r0	# len, _28
# basic.c:2174: 			int total = 0;
	xor.w	r0, r0	# tmp105
	st.w	[r13 + (-8)], r0	# total, tmp105
# basic.c:2176: 			while(total < len)
	j	.L419		#
.L422:
# basic.c:2178: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.423_29, buffer
	ld.w	r0, [r13 + (-8)]	# total.424_30, total
	add.w	r1, r0 #222	# _31, total.424_30
	mov.w	r0, sp	# tmp106,
	mov.w	r2, 512	# tmp107,
	st.w	[r0 + (8)], r2	#, tmp107
	st.w	[r0 + (4)], r1	#, _31
	mov.w	r1, r13	# tmp108,
	add.w	r1, -104 #111	# tmp108,
	st.w	[r0], r1	#, tmp108
	call	file_read		#
# basic.c:2178: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp109, _32
	st.w	[r13 + (-16)], r0	# current, tmp109
# basic.c:2179: 				if (current > 0) {
	ld.w	r1, [r13 + (-16)]	# tmp110, current
	xor.w	r0, r0	# tmp111
	cmp.w	r1, r0	# tmp110, tmp111
	jses	.L420		#
# basic.c:2180: 					total += current;
	ld.w	r0, [r13 + (-8)]	# tmp113, total
	ld.w	r1, [r13 + (-16)]	# tmp114, current
	add.w	r0, r1 #222	# tmp112, tmp114
	st.w	[r13 + (-8)], r0	# total, tmp112
# basic.c:2181: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-8)]	# total.425_33, total
# basic.c:2181: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-72)]	# _34, fd.dir_entry.filesize
# basic.c:2181: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _35, _34
# basic.c:2181: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp115,
	mul.w	r1, r0	# _36, tmp115
# basic.c:2181: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp116,
	div.w	r1, r0	# _37, tmp116
mov.w	r1, r14	# _37
# basic.c:2181: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp117
	cmp.w	r1, r0	# _37, tmp117
	jnz	.L419		#
# basic.c:2182: 						printf("#");
	mov.w	r1, sp	# tmp118,
	mov.w	r0, 35	# tmp119,
	st.w	[r1], r0	#, tmp119
	call	putchar		#
	j	.L419		#
.L420:
# basic.c:2185: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp120,
	mov.w	r0, .LC15	# tmp121,
	st.w	[r1], r0	#, tmp121
	call	puts		#
# basic.c:2186: 					return;
	j	.L410		#
.L419:
# basic.c:2176: 			while(total < len)
	ld.w	r1, [r13 + (-8)]	# tmp122, total
	ld.w	r0, [r13 + (-12)]	# tmp123, len
	cmp.w	r1, r0	# tmp122, tmp123
	jss	.L422		#
# basic.c:2190: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.426_38, buffer
	ld.w	r1, [r13 + (-12)]	# len.427_39, len
	add.w	r0, r1 #222	# _40, len.427_39
# basic.c:2190: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp124
	st.b	[r0], r1	# *_40, tmp124
# basic.c:2191: 			i = len;
	ld.w	r0, [r13 + (-12)]	# tmp125, len
	st.w	[r13 + (-4)], r0	# i, tmp125
	j	.L423		#
.L418:
# basic.c:2195: 			printf("File open failed for file: [%s]\n", s);
	mov.w	r0, sp	# tmp126,
	mov.w	r1, r13	# tmp127,
	add.w	r1, -48 #111	# tmp127,
	st.w	[r0 + (4)], r1	#, tmp127
	mov.w	r1, .LC66	# tmp128,
	st.w	[r0], r1	#, tmp128
	call	printf		#
# basic.c:2196: 			return;
	j	.L410		#
.L417:
# basic.c:2199: 	else if (drive == 2)
	ld.b	r0, [drive]	# drive.428_41, drive
# basic.c:2199: 	else if (drive == 2)
	sex.b	r1, r0	# tmp129, drive.428_41
	mov.w	r0, 2	# tmp130,
	cmp.w	r1, r0	# tmp129, tmp130
	jnz	.L424		#
# basic.c:2203: 		delay(100);
	mov.w	r1, sp	# tmp131,
	mov.w	r0, 100	# tmp132,
	st.w	[r1], r0	#, tmp132
	call	delay		#
# basic.c:2204: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.429_42, buffer
	mov.w	r0, sp	# tmp133,
	mov.w	r2, r13	# tmp134,
	add.w	r2, -48 #111	# tmp134,
	st.w	[r0 + (4)], r2	#, tmp134
	st.w	[r0], r1	#, buffer.429_42
	call	uart_read_file		#
	st.w	[r13 + (-4)], r0	# i,
	j	.L423		#
.L424:
# basic.c:2208: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.430_43, buffer
	mov.w	r0, sp	# tmp135,
	mov.w	r2, r13	# tmp136,
	add.w	r2, -48 #111	# tmp136,
	st.w	[r0 + (4)], r2	#, tmp136
	st.w	[r0], r1	#, buffer.430_43
	call	eth_read_file		#
	st.w	[r13 + (-4)], r0	# i,
.L423:
# basic.c:2210: 	if (i > 0) 
	ld.w	r1, [r13 + (-4)]	# tmp137, i
	xor.w	r0, r0	# tmp138
	cmp.w	r1, r0	# tmp137, tmp138
	jses	.L425		#
# basic.c:2212: 		asm("mov.w r0, 197632\ncallr r0\n"); //asm("call 197632\n");
# 2212 "basic.c" 1
	mov.w r0, 197632
callr r0

# basic.c:2213: 		init_stdio();
	call	init_stdio		#
# basic.c:2214: 		video_mode(0);
	mov.w	r1, sp	# tmp139,
	xor.w	r0, r0	# tmp140
	st.w	[r1], r0	#, tmp140
	call	video_mode		#
# basic.c:2216: 		uart_init_files();
	call	uart_init_files		#
# basic.c:2217: 		init_spi();
	call	init_spi		#
# basic.c:2218: 		init_tcpip();
	call	init_tcpip		#
# basic.c:2219: 		init_sd();
	call	init_sd		#
	j	.L410		#
.L425:
# basic.c:2223: 		printf("Error loading program %s\n", s);
	mov.w	r0, sp	# tmp141,
	mov.w	r1, r13	# tmp142,
	add.w	r1, -48 #111	# tmp142,
	st.w	[r0 + (4)], r1	#, tmp142
	mov.w	r1, .LC67	# tmp143,
	st.w	[r0], r1	#, tmp143
	call	printf		#
.L410:
# basic.c:2225: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_exec, .-exec_exec
	.section	.rodata
	.p2align	2
.LC68:
	.string	"call %d\n"
	.text
	.p2align	1
	.global	exec_sys
	.type	exec_sys, @function
exec_sys:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 60 #111	#,
# basic.c:2232: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2233: 	expression_error = 0;
	xor.w	r0, r0	# tmp27
	st.b	[expression_error], r0	# expression_error, tmp27
# basic.c:2234: 	addr = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# addr,
# basic.c:2235: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.431_1, expression_error
# basic.c:2235: 	if (expression_error)
	sex.b	r1, r0	# tmp28, expression_error.431_1
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L429		#
# basic.c:2237: 		qwhat();
	call	qwhat		#
	j	.L428		#
.L429:
# basic.c:2240: 	printf("call %d\n", addr);
	mov.w	r0, sp	# tmp30,
	ld.w	r1, [r13 + (-4)]	# tmp31, addr
	st.w	[r0 + (4)], r1	#, tmp31
	mov.w	r1, .LC68	# tmp32,
	st.w	[r0], r1	#, tmp32
	call	printf		#
# basic.c:2241: 	addr += 197632;
	ld.w	r0, [r13 + (-4)]	# tmp34, addr
	mov.w	r1, 197632	# tmp35,
	add.w	r0, r1 #222	# tmp33, tmp35
	st.w	[r13 + (-4)], r0	# addr, tmp33
# basic.c:2242: 	asm("ld.w r0, [r13 + (-4)]\ncallr r0\n");
# 2242 "basic.c" 1
	ld.w r0, [r13 + (-4)]
callr r0

# basic.c:2243: 	init_stdio();
	call	init_stdio		#
# basic.c:2244: 	video_mode(0);
	mov.w	r1, sp	# tmp36,
	xor.w	r0, r0	# tmp37
	st.w	[r1], r0	#, tmp37
	call	video_mode		#
# basic.c:2246: 	uart_init_files();
	call	uart_init_files		#
# basic.c:2247: 	init_spi();
	call	init_spi		#
# basic.c:2248: 	init_tcpip();
	call	init_tcpip		#
# basic.c:2249: 	init_sd();
	call	init_sd		#
.L428:
# basic.c:2250: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_sys, .-exec_sys
	.section	.rodata
	.p2align	2
.LC69:
	.string	"DRIVE: %d\n"
	.p2align	2
.LC70:
	.string	"Invalid drive number: %d. Can be from 0 to 2.\n"
	.text
	.p2align	1
	.global	exec_drive
	.type	exec_drive, @function
exec_drive:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2254: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2255: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.432_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.432_1
# basic.c:2255: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp44, _2
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L432		#
# basic.c:2257: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.433_3, drive
	sex.b	r1, r0	# _4, drive.433_3
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, .LC69	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	printf		#
# basic.c:2258: 		return;
	j	.L431		#
.L432:
# basic.c:2260: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.434_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.434_5
# basic.c:2260: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _6
	mov.w	r0, 47	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L434		#
# basic.c:2260: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.435_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.435_7
# basic.c:2260: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp50, _8
	mov.w	r0, 57	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jse	.L435		#
.L434:
# basic.c:2262: 		qwhat();
	call	qwhat		#
# basic.c:2263: 		return;
	j	.L431		#
.L435:
# basic.c:2265: 	drive = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.436_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.436_9
# basic.c:2265: 	drive = *txtpos - '0';
	add.w	r0, -48 #111	# tmp52,
# basic.c:2265: 	drive = *txtpos - '0';
	st.b	[drive], r0	# drive, _12
# basic.c:2266: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.437_13, drive
# basic.c:2266: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp53, drive.437_13
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jss	.L436		#
# basic.c:2266: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.438_14, drive
# basic.c:2266: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp55, drive.438_14
	mov.w	r0, 2	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jgs	.L436		#
# basic.c:2267: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.439_15, drive
	sex.b	r1, r0	# _16, drive.439_15
	mov.w	r0, sp	# tmp57,
	st.w	[r0 + (4)], r1	#, _16
	mov.w	r1, .LC69	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	printf		#
	j	.L431		#
.L436:
# basic.c:2270: 		printf("Invalid drive number: %d. Can be from 0 to 2.\n", drive);
	ld.b	r0, [drive]	# drive.440_17, drive
	sex.b	r1, r0	# _18, drive.440_17
	mov.w	r0, sp	# tmp59,
	st.w	[r0 + (4)], r1	#, _18
	mov.w	r1, .LC70	# tmp60,
	st.w	[r0], r1	#, tmp60
	call	printf		#
.L431:
# basic.c:2273: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_drive, .-exec_drive
	.section	.rodata
	.p2align	2
.LC71:
	.string	"ETHERNET: %d\n"
	.p2align	2
.LC72:
	.string	"Invalid ethernet value: %d. Can be 0 or 1.\n"
	.text
	.p2align	1
	.global	exec_eth
	.type	exec_eth, @function
exec_eth:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2277: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2278: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.441_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.441_1
# basic.c:2278: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp42, _2
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L438		#
# basic.c:2280: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.442_3, eth
	mov.w	r0, sp	# tmp44,
	st.w	[r0 + (4)], r1	#, eth.442_3
	mov.w	r1, .LC71	# tmp45,
	st.w	[r0], r1	#, tmp45
	call	printf		#
# basic.c:2281: 		return;
	j	.L437		#
.L438:
# basic.c:2283: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.443_4, txtpos
	ld.b	r0, [r0]	# _5, *txtpos.443_4
# basic.c:2283: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp46, _5
	mov.w	r0, 47	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jse	.L440		#
# basic.c:2283: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.444_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.444_6
# basic.c:2283: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _7
	mov.w	r0, 57	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L441		#
.L440:
# basic.c:2285: 		qwhat();
	call	qwhat		#
# basic.c:2286: 		return;
	j	.L437		#
.L441:
# basic.c:2288: 	eth = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.445_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.445_8
	zex.b	r0, r0	# _10, _9
# basic.c:2288: 	eth = *txtpos - '0';
	add.w	r0, -48 #111	# _11,
# basic.c:2288: 	eth = *txtpos - '0';
	st.w	[eth], r0	# eth, _11
# basic.c:2289: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.446_12, eth
# basic.c:2289: 	if (eth >= 0 && eth <= 1) 
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# eth.446_12, tmp50
	jss	.L442		#
# basic.c:2289: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.447_13, eth
# basic.c:2289: 	if (eth >= 0 && eth <= 1) 
	mov.w	r0, 1	# tmp51,
	cmp.w	r1, r0	# eth.447_13, tmp51
	jgs	.L442		#
# basic.c:2291: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.448_14, eth
	mov.w	r0, sp	# tmp52,
	st.w	[r0 + (4)], r1	#, eth.448_14
	mov.w	r1, .LC71	# tmp53,
	st.w	[r0], r1	#, tmp53
	call	printf		#
# basic.c:2293: 		if (eth == 1)
	ld.w	r1, [eth]	# eth.449_15, eth
# basic.c:2293: 		if (eth == 1)
	mov.w	r0, 1	# tmp54,
	cmp.w	r1, r0	# eth.449_15, tmp54
	jnz	.L443		#
# basic.c:2294: 			asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 2294 "basic.c" 1
	irq 1

# basic.c:2293: 		if (eth == 1)
	j	.L437		#
.L443:
# basic.c:2296: 			asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 2296 "basic.c" 1
	irq 0

# basic.c:2293: 		if (eth == 1)
	j	.L437		#
.L442:
# basic.c:2302: 		printf("Invalid ethernet value: %d. Can be 0 or 1.\n", eth);
	ld.w	r1, [eth]	# eth.450_16, eth
	mov.w	r0, sp	# tmp55,
	st.w	[r0 + (4)], r1	#, eth.450_16
	mov.w	r1, .LC72	# tmp56,
	st.w	[r0], r1	#, tmp56
	call	printf		#
.L437:
# basic.c:2304: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_eth, .-exec_eth
	.section	.rodata
	.p2align	2
.LC73:
	.string	"COLOR: %d\n"
	.text
	.p2align	1
	.global	exec_color
	.type	exec_color, @function
exec_color:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 56 #111	#,
# basic.c:2310: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2311: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.451_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.451_1
# basic.c:2311: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp31, _2
	mov.w	r0, 10	# tmp32,
	cmp.w	r1, r0	# tmp31, tmp32
	jnz	.L446		#
# basic.c:2313: 		printf("COLOR: %d\n", color);
	ld.w	r1, [color]	# color.452_3, color
	mov.w	r0, sp	# tmp33,
	st.w	[r0 + (4)], r1	#, color.452_3
	mov.w	r1, .LC73	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	printf		#
# basic.c:2314: 		return;
	j	.L445		#
.L446:
# basic.c:2316: 	expression_error = 0;
	xor.w	r0, r0	# tmp35
	st.b	[expression_error], r0	# expression_error, tmp35
# basic.c:2317: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.453_4, expression_error
# basic.c:2317: 	if (expression_error)
	sex.b	r1, r0	# tmp36, expression_error.453_4
	xor.w	r0, r0	# tmp37
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L448		#
# basic.c:2319: 		qwhat();
	call	qwhat		#
# basic.c:2320: 		return;
	j	.L445		#
.L448:
# basic.c:2322: 	color = expression();	
	call	expression		#
# basic.c:2322: 	color = expression();	
	st.w	[color], r0	# color, _5
.L445:
# basic.c:2324: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_color, .-exec_color
	.section	.rodata
	.p2align	2
.LC74:
	.string	"Current millis: %d\n"
	.text
	.p2align	1
	.global	direct
	.type	direct, @function
direct:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2332: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.454_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.454_1
# basic.c:2332: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp48, _2
	mov.w	r0, 10	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L451		#
# basic.c:2333: 		return 0;
	xor.w	r0, r0	# _19
	j	.L452		#
.L451:
# basic.c:2335: 	scantable(keywords);
	mov.w	r1, sp	# tmp50,
	mov.w	r0, keywords	# tmp51,
	st.w	[r1], r0	#, tmp51
	call	scantable		#
# basic.c:2341: 	if (should_break())
	call	should_break		#
	mov.w	r1, r0	# _3,
# basic.c:2341: 	if (should_break())
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# _3, tmp52
	jz	.L453		#
# basic.c:2343: 		return 0;
	xor.w	r0, r0	# _19
	j	.L452		#
.L453:
# basic.c:2346: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.455_4, table_index
	sex.b	r0, r0	# _5, table_index.455_4
	mov.w	r1, 40	# tmp53,
	cmp.w	r0, r1	# _5, tmp53
	jz	.L454		#
	mov.w	r1, 40	# tmp54,
	cmp.w	r0, r1	# _5, tmp54
	jgs	.L455		#
	mov.w	r1, 39	# tmp55,
	cmp.w	r0, r1	# _5, tmp55
	jz	.L456		#
	mov.w	r1, 39	# tmp56,
	cmp.w	r0, r1	# _5, tmp56
	jgs	.L455		#
	mov.w	r1, 38	# tmp57,
	cmp.w	r0, r1	# _5, tmp57
	jz	.L457		#
	mov.w	r1, 38	# tmp58,
	cmp.w	r0, r1	# _5, tmp58
	jgs	.L455		#
	mov.w	r1, 37	# tmp59,
	cmp.w	r0, r1	# _5, tmp59
	jgs	.L455		#
	mov.w	r1, 36	# tmp60,
	cmp.w	r0, r1	# _5, tmp60
	jges	.L499		#
	mov.w	r1, 35	# tmp61,
	cmp.w	r0, r1	# _5, tmp61
	jz	.L459		#
	mov.w	r1, 35	# tmp62,
	cmp.w	r0, r1	# _5, tmp62
	jgs	.L455		#
	mov.w	r1, 34	# tmp63,
	cmp.w	r0, r1	# _5, tmp63
	jz	.L460		#
	mov.w	r1, 34	# tmp64,
	cmp.w	r0, r1	# _5, tmp64
	jgs	.L455		#
	mov.w	r1, 33	# tmp65,
	cmp.w	r0, r1	# _5, tmp65
	jz	.L461		#
	mov.w	r1, 33	# tmp66,
	cmp.w	r0, r1	# _5, tmp66
	jgs	.L455		#
	mov.w	r1, 32	# tmp67,
	cmp.w	r0, r1	# _5, tmp67
	jz	.L462		#
	mov.w	r1, 32	# tmp68,
	cmp.w	r0, r1	# _5, tmp68
	jgs	.L455		#
	mov.w	r1, 31	# tmp69,
	cmp.w	r0, r1	# _5, tmp69
	jz	.L463		#
	mov.w	r1, 31	# tmp70,
	cmp.w	r0, r1	# _5, tmp70
	jgs	.L455		#
	mov.w	r1, 30	# tmp71,
	cmp.w	r0, r1	# _5, tmp71
	jz	.L464		#
	mov.w	r1, 30	# tmp72,
	cmp.w	r0, r1	# _5, tmp72
	jgs	.L455		#
	mov.w	r1, 29	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jz	.L465		#
	mov.w	r1, 29	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jgs	.L455		#
	mov.w	r1, 28	# tmp75,
	cmp.w	r0, r1	# _5, tmp75
	jz	.L466		#
	mov.w	r1, 28	# tmp76,
	cmp.w	r0, r1	# _5, tmp76
	jgs	.L455		#
	mov.w	r1, 27	# tmp77,
	cmp.w	r0, r1	# _5, tmp77
	jz	.L467		#
	mov.w	r1, 27	# tmp78,
	cmp.w	r0, r1	# _5, tmp78
	jgs	.L455		#
	mov.w	r1, 26	# tmp79,
	cmp.w	r0, r1	# _5, tmp79
	jz	.L468		#
	mov.w	r1, 26	# tmp80,
	cmp.w	r0, r1	# _5, tmp80
	jgs	.L455		#
	mov.w	r1, 25	# tmp81,
	cmp.w	r0, r1	# _5, tmp81
	jz	.L469		#
	mov.w	r1, 25	# tmp82,
	cmp.w	r0, r1	# _5, tmp82
	jgs	.L455		#
	mov.w	r1, 24	# tmp83,
	cmp.w	r0, r1	# _5, tmp83
	jz	.L470		#
	mov.w	r1, 24	# tmp84,
	cmp.w	r0, r1	# _5, tmp84
	jgs	.L455		#
	mov.w	r1, 23	# tmp85,
	cmp.w	r0, r1	# _5, tmp85
	jz	.L471		#
	mov.w	r1, 23	# tmp86,
	cmp.w	r0, r1	# _5, tmp86
	jgs	.L455		#
	mov.w	r1, 22	# tmp87,
	cmp.w	r0, r1	# _5, tmp87
	jz	.L472		#
	mov.w	r1, 22	# tmp88,
	cmp.w	r0, r1	# _5, tmp88
	jgs	.L455		#
	mov.w	r1, 21	# tmp89,
	cmp.w	r0, r1	# _5, tmp89
	jz	.L473		#
	mov.w	r1, 21	# tmp90,
	cmp.w	r0, r1	# _5, tmp90
	jgs	.L455		#
	mov.w	r1, 20	# tmp91,
	cmp.w	r0, r1	# _5, tmp91
	jz	.L474		#
	mov.w	r1, 20	# tmp92,
	cmp.w	r0, r1	# _5, tmp92
	jgs	.L455		#
	mov.w	r1, 19	# tmp93,
	cmp.w	r0, r1	# _5, tmp93
	jz	.L475		#
	mov.w	r1, 19	# tmp94,
	cmp.w	r0, r1	# _5, tmp94
	jgs	.L455		#
	mov.w	r1, 18	# tmp95,
	cmp.w	r0, r1	# _5, tmp95
	jz	.L476		#
	mov.w	r1, 18	# tmp96,
	cmp.w	r0, r1	# _5, tmp96
	jgs	.L455		#
	mov.w	r1, 17	# tmp97,
	cmp.w	r0, r1	# _5, tmp97
	jz	.L477		#
	mov.w	r1, 17	# tmp98,
	cmp.w	r0, r1	# _5, tmp98
	jgs	.L455		#
	mov.w	r1, 16	# tmp99,
	cmp.w	r0, r1	# _5, tmp99
	jgs	.L455		#
	mov.w	r1, 15	# tmp100,
	cmp.w	r0, r1	# _5, tmp100
	jges	.L478		#
	mov.w	r1, 14	# tmp101,
	cmp.w	r0, r1	# _5, tmp101
	jz	.L479		#
	mov.w	r1, 14	# tmp102,
	cmp.w	r0, r1	# _5, tmp102
	jgs	.L455		#
	mov.w	r1, 13	# tmp103,
	cmp.w	r0, r1	# _5, tmp103
	jz	.L480		#
	mov.w	r1, 13	# tmp104,
	cmp.w	r0, r1	# _5, tmp104
	jgs	.L455		#
	mov.w	r1, 12	# tmp105,
	cmp.w	r0, r1	# _5, tmp105
	jz	.L481		#
	mov.w	r1, 12	# tmp106,
	cmp.w	r0, r1	# _5, tmp106
	jgs	.L455		#
	mov.w	r1, 11	# tmp107,
	cmp.w	r0, r1	# _5, tmp107
	jz	.L482		#
	mov.w	r1, 11	# tmp108,
	cmp.w	r0, r1	# _5, tmp108
	jgs	.L455		#
	mov.w	r1, 10	# tmp109,
	cmp.w	r0, r1	# _5, tmp109
	jz	.L483		#
	mov.w	r1, 10	# tmp110,
	cmp.w	r0, r1	# _5, tmp110
	jgs	.L455		#
	mov.w	r1, 9	# tmp111,
	cmp.w	r0, r1	# _5, tmp111
	jz	.L484		#
	mov.w	r1, 9	# tmp112,
	cmp.w	r0, r1	# _5, tmp112
	jgs	.L455		#
	mov.w	r1, 8	# tmp113,
	cmp.w	r0, r1	# _5, tmp113
	jz	.L485		#
	mov.w	r1, 8	# tmp114,
	cmp.w	r0, r1	# _5, tmp114
	jgs	.L455		#
	mov.w	r1, 7	# tmp115,
	cmp.w	r0, r1	# _5, tmp115
	jz	.L486		#
	mov.w	r1, 7	# tmp116,
	cmp.w	r0, r1	# _5, tmp116
	jgs	.L455		#
	mov.w	r1, 6	# tmp117,
	cmp.w	r0, r1	# _5, tmp117
	jz	.L487		#
	mov.w	r1, 6	# tmp118,
	cmp.w	r0, r1	# _5, tmp118
	jgs	.L455		#
	mov.w	r1, 5	# tmp119,
	cmp.w	r0, r1	# _5, tmp119
	jz	.L488		#
	mov.w	r1, 5	# tmp120,
	cmp.w	r0, r1	# _5, tmp120
	jgs	.L455		#
	mov.w	r1, 4	# tmp121,
	cmp.w	r0, r1	# _5, tmp121
	jgs	.L455		#
	mov.w	r1, 3	# tmp122,
	cmp.w	r0, r1	# _5, tmp122
	jges	.L489		#
	xor.w	r1, r1	# tmp123
	cmp.w	r0, r1	# _5, tmp123
	jz	.L490		#
	xor.w	r1, r1	# tmp124
	cmp.w	r0, r1	# _5, tmp124
	jss	.L455		#
	mov.w	r1, r0	# _80, _79
	add.w	r1, -1 #111	# _80,
	mov.w	r0, 1	# tmp125,
	cmp.w	r1, r0	# _80, tmp125
	jg	.L455		#
	j	.L498		#
.L490:
# basic.c:2350: 		exec_mem();
	call	exec_mem		#
# basic.c:2351: 		return 0;
	xor.w	r0, r0	# _19
	j	.L452		#
.L498:
# basic.c:2355: 		return 1;
	mov.w	r0, 1	# _19,
	j	.L452		#
.L489:
# basic.c:2358: 		exec_print();
	call	exec_print		#
# basic.c:2359: 		break;
	j	.L492		#
.L488:
# basic.c:2361: 		exec_list();
	call	exec_list		#
# basic.c:2362: 		break;
	j	.L492		#
.L487:
# basic.c:2364: 		current_line = program_start;
	ld.w	r0, [program_start]	# program_start.456_6, program_start
	st.w	[current_line], r0	# current_line, program_start.456_6
# basic.c:2365: 		exec_run();
	call	exec_run		#
# basic.c:2366: 		break;
	j	.L492		#
.L486:
# basic.c:2368: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.457_7, program_start
	st.w	[program_end], r0	# program_end, program_start.457_7
# basic.c:2369: 		break;
	j	.L492		#
.L485:
# basic.c:2371: 		assignment();
	call	assignment		#
# basic.c:2372: 		break;
	j	.L492		#
.L484:
# basic.c:2374: 		exec_if();
	call	exec_if		#
# basic.c:2375: 		break;
	j	.L492		#
.L483:
# basic.c:2377: 		expression_error = 0;
	xor.w	r0, r0	# tmp126
	st.b	[expression_error], r0	# expression_error, tmp126
# basic.c:2378: 		linenum = expression();
	call	expression		#
# basic.c:2378: 		linenum = expression();
	st.w	[linenum], r0	# linenum, _8
# basic.c:2379: 		if (expression_error || *txtpos != NL)
	ld.b	r0, [expression_error]	# expression_error.458_9, expression_error
# basic.c:2379: 		if (expression_error || *txtpos != NL)
	sex.b	r1, r0	# tmp127, expression_error.458_9
	xor.w	r0, r0	# tmp128
	cmp.w	r1, r0	# tmp127, tmp128
	jnz	.L493		#
# basic.c:2379: 		if (expression_error || *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.459_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.459_10
# basic.c:2379: 		if (expression_error || *txtpos != NL)
	zex.b	r1, r0	# tmp129, _11
	mov.w	r0, 10	# tmp130,
	cmp.w	r1, r0	# tmp129, tmp130
	jz	.L494		#
.L493:
# basic.c:2380: 			qhow();
	call	qhow		#
.L494:
# basic.c:2381: 		current_line = findline();
	call	findline		#
# basic.c:2381: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _12
# basic.c:2382: 		return 2;
	mov.w	r0, 2	# _19,
	j	.L452		#
.L482:
# basic.c:2384: 		exec_for();
	call	exec_for		#
# basic.c:2385: 		break;
	j	.L492		#
.L481:
# basic.c:2387: 		exec_next();
	call	exec_next		#
# basic.c:2388: 		break;
	j	.L492		#
.L479:
# basic.c:2390: 		exec_gosub();
	call	exec_gosub		#
# basic.c:2391: 		break;
	j	.L492		#
.L480:
# basic.c:2393: 		if (!exec_return())
	call	exec_return		#
	mov.w	r1, r0	# _13,
# basic.c:2393: 		if (!exec_return())
	xor.w	r0, r0	# tmp131
	cmp.w	r1, r0	# _13, tmp131
	jnz	.L500		#
# basic.c:2394: 			return 1;
	mov.w	r0, 1	# _19,
	j	.L452		#
.L478:
# basic.c:2399: 		if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.460_14, txtpos
	ld.b	r0, [r0]	# _15, *txtpos.460_14
# basic.c:2399: 		if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp132, _15
	mov.w	r0, 10	# tmp133,
	cmp.w	r1, r0	# tmp132, tmp133
	jz	.L496		#
# basic.c:2401: 			qwhat();
	call	qwhat		#
# basic.c:2405: 		break;
	j	.L492		#
.L496:
# basic.c:2404: 			current_line = program_end;
	ld.w	r0, [program_end]	# program_end.461_16, program_end
	st.w	[current_line], r0	# current_line, program_end.461_16
# basic.c:2405: 		break;
	j	.L492		#
.L477:
# basic.c:2407: 		exec_input();
	call	exec_input		#
# basic.c:2408: 		break;
	j	.L492		#
.L476:
# basic.c:2410: 		cls(color);
	ld.w	r0, [color]	# color.462_17, color
	mov.w	r1, sp	# tmp134,
	st.w	[r1], r0	#, color.462_17
	call	cls		#
# basic.c:2411: 		break;
	j	.L492		#
.L475:
# basic.c:2413: 		return exec_edit();
	call	exec_edit		#
	j	.L452		#
.L474:
# basic.c:2415: 		exec_load();
	call	exec_load		#
# basic.c:2416: 		break;
	j	.L492		#
.L473:
# basic.c:2418: 		exec_save();
	call	exec_save		#
# basic.c:2419: 		break;
	j	.L492		#
.L472:
# basic.c:2421: 		exec_dir();
	call	exec_dir		#
# basic.c:2422: 		break;
	j	.L492		#
.L471:
# basic.c:2424: 		exec_mode();
	call	exec_mode		#
# basic.c:2425: 		break;
	j	.L492		#
.L470:
# basic.c:2427: 		exec_plot();
	call	exec_plot		#
# basic.c:2428: 		break;
	j	.L492		#
.L469:
# basic.c:2430: 		exec_line();
	call	exec_line		#
# basic.c:2431: 		break;
	j	.L492		#
.L468:
# basic.c:2433: 		exec_circle();
	call	exec_circle		#
# basic.c:2434: 		break;
	j	.L492		#
.L467:
# basic.c:2436: 		exec_draw();
	call	exec_draw		#
# basic.c:2437: 		break;
	j	.L492		#
.L466:
# basic.c:2439: 		exec_help();
	call	exec_help		#
# basic.c:2440: 		break;
	j	.L492		#
.L465:
# basic.c:2442: 		exec_delay();
	call	exec_delay		#
# basic.c:2443: 		break;
	j	.L492		#
.L464:
# basic.c:2445: 		exec_cursor();
	call	exec_cursor		#
# basic.c:2446: 		break;
	j	.L492		#
.L463:
# basic.c:2448: 		exec_poke();
	call	exec_poke		#
# basic.c:2449: 		break;
	j	.L492		#
.L462:
# basic.c:2451: 		exec_exec();
	call	exec_exec		#
# basic.c:2452: 		break;
	j	.L492		#
.L461:
# basic.c:2454: 		exec_sys();
	call	exec_sys		#
# basic.c:2455: 		break;
	j	.L492		#
.L460:
# basic.c:2457: 		exec_drive();
	call	exec_drive		#
# basic.c:2458: 		break;
	j	.L492		#
.L459:
# basic.c:2460: 		printf("Current millis: %d\n", get_millis());
	call	get_millis		#
	mov.w	r1, r0	# _18,
	mov.w	r0, sp	# tmp135,
	st.w	[r0 + (4)], r1	#, _18
	mov.w	r1, .LC74	# tmp136,
	st.w	[r0], r1	#, tmp136
	call	printf		#
# basic.c:2461: 	break;
	j	.L492		#
.L457:
# basic.c:2466: 		exec_eth();
	call	exec_eth		#
# basic.c:2467: 		break;
	j	.L492		#
.L456:
# basic.c:2469: 		exec_color();
	call	exec_color		#
# basic.c:2470: 		break;
	j	.L492		#
.L454:
# basic.c:2472: 		assignment();
	call	assignment		#
# basic.c:2473: 		break;
	j	.L492		#
.L455:
# basic.c:2475: 		return 0;
	xor.w	r0, r0	# _19
	j	.L452		#
.L499:
# basic.c:2464: 		break;
	nop	
	j	.L492		#
.L500:
# basic.c:2395: 		break;
	nop	
.L492:
# basic.c:2477: 	return 0;
	xor.w	r0, r0	# _19
.L452:
# basic.c:2478: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	direct, .-direct
	.p2align	1
	.global	init_K_API
	.type	init_K_API, @function
init_K_API:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:2481: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	mov.w	r1, cls	# cls.463_1,
# basic.c:2481: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.464_2, K_API_STDIO
# basic.c:2481: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	add.w	r1, 4 #111	# _3,
# basic.c:2481: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	st.w	[r0], r1	# *K_API_STDIO.464_2, _3
# basic.c:2482: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	mov.w	r1, put_char	# put_char.465_4,
# basic.c:2482: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.466_5, K_API_STDIO
	add.w	r0, 4 #111	# _6,
# basic.c:2482: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	add.w	r1, 4 #111	# _7,
# basic.c:2482: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	st.w	[r0], r1	# *_6, _7
# basic.c:2483: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	mov.w	r1, printf	# printf.467_8,
# basic.c:2483: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.468_9, K_API_STDIO
	add.w	r0, 8 #111	# _10,
# basic.c:2483: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	add.w	r1, 4 #111	# _11,
# basic.c:2483: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	st.w	[r0], r1	# *_10, _11
# basic.c:2484: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	mov.w	r1, puts	# puts.469_12,
# basic.c:2484: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.470_13, K_API_STDIO
	add.w	r0, 12 #111	# _14,
# basic.c:2484: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	add.w	r1, 4 #111	# _15,
# basic.c:2484: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	st.w	[r0], r1	# *_14, _15
# basic.c:2485: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	mov.w	r1, rand	# rand.471_16,
# basic.c:2485: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.472_17, K_API_STDIO
	add.w	r0, 16 #111	# _18,
# basic.c:2485: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	add.w	r1, 4 #111	# _19,
# basic.c:2485: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	st.w	[r0], r1	# *_18, _19
# basic.c:2486: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	mov.w	r1, should_break	# should_break.473_20,
# basic.c:2486: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.474_21, K_API_STDIO
	add.w	r0, 20 #111	# _22,
# basic.c:2486: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	add.w	r1, 4 #111	# _23,
# basic.c:2486: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	st.w	[r0], r1	# *_22, _23
# basic.c:2487: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	mov.w	r1, getc	# getc.475_24,
# basic.c:2487: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.476_25, K_API_STDIO
	add.w	r0, 24 #111	# _26,
# basic.c:2487: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	add.w	r1, 4 #111	# _27,
# basic.c:2487: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	st.w	[r0], r1	# *_26, _27
# basic.c:2488: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	mov.w	r1, gets	# gets.477_28,
# basic.c:2488: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.478_29, K_API_STDIO
	add.w	r0, 28 #111	# _30,
# basic.c:2488: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	add.w	r1, 4 #111	# _31,
# basic.c:2488: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	st.w	[r0], r1	# *_30, _31
# basic.c:2489: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	mov.w	r1, init_stdio	# init_stdio.479_32,
# basic.c:2489: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.480_33, K_API_STDIO
	add.w	r0, 32 #111	# _34,
# basic.c:2489: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	add.w	r1, 4 #111	# _35,
# basic.c:2489: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	st.w	[r0], r1	# *_34, _35
# basic.c:2490: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	mov.w	r1, delay	# delay.481_36,
# basic.c:2490: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.482_37, K_API_STDIO
	add.w	r0, 36 #111	# _38,
# basic.c:2490: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	add.w	r1, 4 #111	# _39,
# basic.c:2490: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	st.w	[r0], r1	# *_38, _39
# basic.c:2491: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	mov.w	r1, xy	# xy.483_40,
# basic.c:2491: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.484_41, K_API_STDIO
	add.w	r0, 40 #111	# _42,
# basic.c:2491: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	add.w	r1, 4 #111	# _43,
# basic.c:2491: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	st.w	[r0], r1	# *_42, _43
# basic.c:2492: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	mov.w	r1, get_millis	# get_millis.485_44,
# basic.c:2492: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.486_45, K_API_STDIO
	add.w	r0, 44 #111	# _46,
# basic.c:2492: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	add.w	r1, 4 #111	# _47,
# basic.c:2492: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	st.w	[r0], r1	# *_46, _47
# basic.c:2493: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	mov.w	r1, is_key_pressed	# is_key_pressed.487_48,
# basic.c:2493: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.488_49, K_API_STDIO
	add.w	r0, 48 #111	# _50,
# basic.c:2493: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	add.w	r1, 4 #111	# _51,
# basic.c:2493: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	st.w	[r0], r1	# *_50, _51
# basic.c:2494: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	mov.w	r1, is_key_released	# is_key_released.489_52,
# basic.c:2494: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.490_53, K_API_STDIO
	add.w	r0, 52 #111	# _54,
# basic.c:2494: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	add.w	r1, 4 #111	# _55,
# basic.c:2494: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	st.w	[r0], r1	# *_54, _55
# basic.c:2495: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	mov.w	r1, toggle_cursor	# toggle_cursor.491_56,
# basic.c:2495: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.492_57, K_API_STDIO
	add.w	r0, 56 #111	# _58,
# basic.c:2495: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	add.w	r1, 4 #111	# _59,
# basic.c:2495: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	st.w	[r0], r1	# *_58, _59
# basic.c:2496: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	mov.w	r1, putchar	# putchar.493_60,
# basic.c:2496: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.494_61, K_API_STDIO
	add.w	r0, 60 #111	# _62,
# basic.c:2496: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	add.w	r1, 4 #111	# _63,
# basic.c:2496: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	st.w	[r0], r1	# *_62, _63
# basic.c:2497: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	mov.w	r1, video_mode	# video_mode.495_64,
# basic.c:2497: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.496_65, K_API_STDIO
	add.w	r0, 64 #111	# _66,
# basic.c:2497: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	add.w	r1, 4 #111	# _67,
# basic.c:2497: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	st.w	[r0], r1	# *_66, _67
# basic.c:2498: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	mov.w	r1, scroll_up	# scroll_up.497_68,
# basic.c:2498: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.498_69, K_API_GRAPHICS
	add.w	r0, 68 #111	# _70,
# basic.c:2498: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	add.w	r1, 4 #111	# _71,
# basic.c:2498: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	st.w	[r0], r1	# *_70, _71
# basic.c:2500: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	mov.w	r1, strlen	# strlen.499_72,
# basic.c:2500: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.500_73, K_API_STRING
# basic.c:2500: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	add.w	r1, 4 #111	# _74,
# basic.c:2500: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	st.w	[r0], r1	# *K_API_STRING.500_73, _74
# basic.c:2501: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	mov.w	r1, strcmp	# strcmp.501_75,
# basic.c:2501: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.502_76, K_API_STRING
	add.w	r0, 4 #111	# _77,
# basic.c:2501: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	add.w	r1, 4 #111	# _78,
# basic.c:2501: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	st.w	[r0], r1	# *_77, _78
# basic.c:2502: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	mov.w	r1, strncmp	# strncmp.503_79,
# basic.c:2502: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.504_80, K_API_STRING
	add.w	r0, 8 #111	# _81,
# basic.c:2502: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	add.w	r1, 4 #111	# _82,
# basic.c:2502: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	st.w	[r0], r1	# *_81, _82
# basic.c:2503: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	mov.w	r1, memcpy	# memcpy.505_83,
# basic.c:2503: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.506_84, K_API_STRING
	add.w	r0, 12 #111	# _85,
# basic.c:2503: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	add.w	r1, 4 #111	# _86,
# basic.c:2503: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	st.w	[r0], r1	# *_85, _86
# basic.c:2504: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	mov.w	r1, memset	# memset.507_87,
# basic.c:2504: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.508_88, K_API_STRING
	add.w	r0, 16 #111	# _89,
# basic.c:2504: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	add.w	r1, 4 #111	# _90,
# basic.c:2504: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	st.w	[r0], r1	# *_89, _90
# basic.c:2505: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	mov.w	r1, memmove	# memmove.509_91,
# basic.c:2505: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.510_92, K_API_STRING
	add.w	r0, 20 #111	# _93,
# basic.c:2505: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	add.w	r1, 4 #111	# _94,
# basic.c:2505: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	st.w	[r0], r1	# *_93, _94
# basic.c:2506: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	mov.w	r1, strcpy	# strcpy.511_95,
# basic.c:2506: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.512_96, K_API_STRING
	add.w	r0, 24 #111	# _97,
# basic.c:2506: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	add.w	r1, 4 #111	# _98,
# basic.c:2506: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	st.w	[r0], r1	# *_97, _98
# basic.c:2507: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	mov.w	r1, strncpy	# strncpy.513_99,
# basic.c:2507: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.514_100, K_API_STRING
	add.w	r0, 28 #111	# _101,
# basic.c:2507: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	add.w	r1, 4 #111	# _102,
# basic.c:2507: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	st.w	[r0], r1	# *_101, _102
# basic.c:2508: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	mov.w	r1, strcat	# strcat.515_103,
# basic.c:2508: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.516_104, K_API_STRING
	add.w	r0, 32 #111	# _105,
# basic.c:2508: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	add.w	r1, 4 #111	# _106,
# basic.c:2508: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	st.w	[r0], r1	# *_105, _106
# basic.c:2509: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	mov.w	r1, strstr	# strstr.517_107,
# basic.c:2509: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.518_108, K_API_STRING
	add.w	r0, 36 #111	# _109,
# basic.c:2509: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	add.w	r1, 4 #111	# _110,
# basic.c:2509: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	st.w	[r0], r1	# *_109, _110
# basic.c:2510: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	mov.w	r1, tolower	# tolower.519_111,
# basic.c:2510: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.520_112, K_API_STRING
	add.w	r0, 40 #111	# _113,
# basic.c:2510: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	add.w	r1, 4 #111	# _114,
# basic.c:2510: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	st.w	[r0], r1	# *_113, _114
# basic.c:2511: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	mov.w	r1, toupper	# toupper.521_115,
# basic.c:2511: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.522_116, K_API_STRING
	add.w	r0, 44 #111	# _117,
# basic.c:2511: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	add.w	r1, 4 #111	# _118,
# basic.c:2511: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	st.w	[r0], r1	# *_117, _118
# basic.c:2512: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	mov.w	r1, str_toupper	# str_toupper.523_119,
# basic.c:2512: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.524_120, K_API_STRING
	add.w	r0, 48 #111	# _121,
# basic.c:2512: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	add.w	r1, 4 #111	# _122,
# basic.c:2512: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	st.w	[r0], r1	# *_121, _122
# basic.c:2513: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	mov.w	r1, str_n_toupper	# str_n_toupper.525_123,
# basic.c:2513: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.526_124, K_API_STRING
	add.w	r0, 52 #111	# _125,
# basic.c:2513: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	add.w	r1, 4 #111	# _126,
# basic.c:2513: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	st.w	[r0], r1	# *_125, _126
# basic.c:2514: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	mov.w	r1, isdigit	# isdigit.527_127,
# basic.c:2514: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.528_128, K_API_STRING
	add.w	r0, 56 #111	# _129,
# basic.c:2514: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	add.w	r1, 4 #111	# _130,
# basic.c:2514: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	st.w	[r0], r1	# *_129, _130
# basic.c:2515: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	mov.w	r1, islower	# islower.529_131,
# basic.c:2515: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.530_132, K_API_STRING
	add.w	r0, 60 #111	# _133,
# basic.c:2515: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	add.w	r1, 4 #111	# _134,
# basic.c:2515: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	st.w	[r0], r1	# *_133, _134
# basic.c:2516: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	mov.w	r1, isupper	# isupper.531_135,
# basic.c:2516: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.532_136, K_API_STRING
	add.w	r0, 64 #111	# _137,
# basic.c:2516: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	add.w	r1, 4 #111	# _138,
# basic.c:2516: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	st.w	[r0], r1	# *_137, _138
# basic.c:2517: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	mov.w	r1, isalpha	# isalpha.533_139,
# basic.c:2517: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.534_140, K_API_STRING
	add.w	r0, 68 #111	# _141,
# basic.c:2517: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	add.w	r1, 4 #111	# _142,
# basic.c:2517: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	st.w	[r0], r1	# *_141, _142
# basic.c:2518: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	mov.w	r1, isalnum	# isalnum.535_143,
# basic.c:2518: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.536_144, K_API_STRING
	add.w	r0, 72 #111	# _145,
# basic.c:2518: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	add.w	r1, 4 #111	# _146,
# basic.c:2518: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	st.w	[r0], r1	# *_145, _146
# basic.c:2519: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	mov.w	r1, atoi	# atoi.537_147,
# basic.c:2519: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.538_148, K_API_STRING
	add.w	r0, 76 #111	# _149,
# basic.c:2519: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	add.w	r1, 4 #111	# _150,
# basic.c:2519: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	st.w	[r0], r1	# *_149, _150
# basic.c:2520: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	mov.w	r1, isspace	# isspace.539_151,
# basic.c:2520: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.540_152, K_API_STRING
	add.w	r0, 80 #111	# _153,
# basic.c:2520: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	add.w	r1, 4 #111	# _154,
# basic.c:2520: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	st.w	[r0], r1	# *_153, _154
# basic.c:2521: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	mov.w	r1, memcmp	# memcmp.541_155,
# basic.c:2521: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.542_156, K_API_STRING
	add.w	r0, 84 #111	# _157,
# basic.c:2521: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	add.w	r1, 4 #111	# _158,
# basic.c:2521: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	st.w	[r0], r1	# *_157, _158
# basic.c:2522: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	mov.w	r1, strtok	# strtok.543_159,
# basic.c:2522: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.544_160, K_API_STRING
	add.w	r0, 88 #111	# _161,
# basic.c:2522: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	add.w	r1, 4 #111	# _162,
# basic.c:2522: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	st.w	[r0], r1	# *_161, _162
# basic.c:2523: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	mov.w	r1, strchr	# strchr.545_163,
# basic.c:2523: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.546_164, K_API_STRING
	add.w	r0, 92 #111	# _165,
# basic.c:2523: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	add.w	r1, 4 #111	# _166,
# basic.c:2523: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	st.w	[r0], r1	# *_165, _166
# basic.c:2524: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	mov.w	r1, strrchr	# strrchr.547_167,
# basic.c:2524: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.548_168, K_API_STRING
	add.w	r0, 96 #111	# _169,
# basic.c:2524: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	add.w	r1, 4 #111	# _170,
# basic.c:2524: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	st.w	[r0], r1	# *_169, _170
# basic.c:2525: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	mov.w	r1, strncasecmp	# strncasecmp.549_171,
# basic.c:2525: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.550_172, K_API_STRING
	add.w	r0, 100 #111	# _173,
# basic.c:2525: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	add.w	r1, 4 #111	# _174,
# basic.c:2525: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	st.w	[r0], r1	# *_173, _174
# basic.c:2527: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	mov.w	r1, sprintf	# sprintf.551_175,
# basic.c:2527: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.552_176, K_API_SPRINTF
# basic.c:2527: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	add.w	r1, 4 #111	# _177,
# basic.c:2527: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	st.w	[r0], r1	# *K_API_SPRINTF.552_176, _177
# basic.c:2528: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	mov.w	r1, vsprintf	# vsprintf.553_178,
# basic.c:2528: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.554_179, K_API_SPRINTF
	add.w	r0, 4 #111	# _180,
# basic.c:2528: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	add.w	r1, 4 #111	# _181,
# basic.c:2528: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	st.w	[r0], r1	# *_180, _181
# basic.c:2530: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	mov.w	r1, pixel	# pixel.555_182,
# basic.c:2530: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.556_183, K_API_GRAPHICS
# basic.c:2530: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	add.w	r1, 4 #111	# _184,
# basic.c:2530: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	st.w	[r0], r1	# *K_API_GRAPHICS.556_183, _184
# basic.c:2531: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	mov.w	r1, line	# line.557_185,
# basic.c:2531: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.558_186, K_API_GRAPHICS
	add.w	r0, 4 #111	# _187,
# basic.c:2531: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	add.w	r1, 4 #111	# _188,
# basic.c:2531: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	st.w	[r0], r1	# *_187, _188
# basic.c:2532: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	mov.w	r1, circle	# circle.559_189,
# basic.c:2532: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.560_190, K_API_GRAPHICS
	add.w	r0, 8 #111	# _191,
# basic.c:2532: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	add.w	r1, 4 #111	# _192,
# basic.c:2532: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	st.w	[r0], r1	# *_191, _192
# basic.c:2533: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	mov.w	r1, draw	# draw.561_193,
# basic.c:2533: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.562_194, K_API_GRAPHICS
	add.w	r0, 12 #111	# _195,
# basic.c:2533: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	add.w	r1, 4 #111	# _196,
# basic.c:2533: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	st.w	[r0], r1	# *_195, _196
# basic.c:2535: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	mov.w	r1, init_spi	# init_spi.563_197,
# basic.c:2535: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	ld.w	r0, [K_API_SPI]	# K_API_SPI.564_198, K_API_SPI
# basic.c:2535: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	add.w	r1, 4 #111	# _199,
# basic.c:2535: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	st.w	[r0], r1	# *K_API_SPI.564_198, _199
# basic.c:2536: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	mov.w	r1, deinit_spi	# deinit_spi.565_200,
# basic.c:2536: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	ld.w	r0, [K_API_SPI]	# K_API_SPI.566_201, K_API_SPI
	add.w	r0, 4 #111	# _202,
# basic.c:2536: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	add.w	r1, 4 #111	# _203,
# basic.c:2536: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	st.w	[r0], r1	# *_202, _203
# basic.c:2537: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	mov.w	r1, send_spi	# send_spi.567_204,
# basic.c:2537: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	ld.w	r0, [K_API_SPI]	# K_API_SPI.568_205, K_API_SPI
	add.w	r0, 8 #111	# _206,
# basic.c:2537: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	add.w	r1, 4 #111	# _207,
# basic.c:2537: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	st.w	[r0], r1	# *_206, _207
# basic.c:2538: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	mov.w	r1, read_spi	# read_spi.569_208,
# basic.c:2538: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	ld.w	r0, [K_API_SPI]	# K_API_SPI.570_209, K_API_SPI
	add.w	r0, 12 #111	# _210,
# basic.c:2538: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	add.w	r1, 4 #111	# _211,
# basic.c:2538: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	st.w	[r0], r1	# *_210, _211
# basic.c:2539: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	mov.w	r1, SPI_Byte	# SPI_Byte.571_212,
# basic.c:2539: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	ld.w	r0, [K_API_SPI]	# K_API_SPI.572_213, K_API_SPI
	add.w	r0, 16 #111	# _214,
# basic.c:2539: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	add.w	r1, 4 #111	# _215,
# basic.c:2539: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	st.w	[r0], r1	# *_214, _215
# basic.c:2541: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	mov.w	r1, init_tcpip	# init_tcpip.573_216,
# basic.c:2541: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.574_217, K_API_TCPIP
# basic.c:2541: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	add.w	r1, 4 #111	# _218,
# basic.c:2541: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	st.w	[r0], r1	# *K_API_TCPIP.574_217, _218
# basic.c:2542: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	mov.w	r1, browseUrl	# browseUrl.575_219,
# basic.c:2542: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.576_220, K_API_TCPIP
	add.w	r0, 4 #111	# _221,
# basic.c:2542: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	add.w	r1, 4 #111	# _222,
# basic.c:2542: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	st.w	[r0], r1	# *_221, _222
# basic.c:2543: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	mov.w	r1, httpPost	# httpPost.577_223,
# basic.c:2543: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.578_224, K_API_TCPIP
	add.w	r0, 8 #111	# _225,
# basic.c:2543: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	add.w	r1, 4 #111	# _226,
# basic.c:2543: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	st.w	[r0], r1	# *_225, _226
# basic.c:2544: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	mov.w	r1, mainLoop	# mainLoop.579_227,
# basic.c:2544: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.580_228, K_API_TCPIP
	add.w	r0, 12 #111	# _229,
# basic.c:2544: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	add.w	r1, 4 #111	# _230,
# basic.c:2544: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	st.w	[r0], r1	# *_229, _230
# basic.c:2547: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	mov.w	r1, sdcard_init	# sdcard_init.581_231,
# basic.c:2547: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	ld.w	r0, [K_API_FAT]	# K_API_FAT.582_232, K_API_FAT
# basic.c:2547: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	add.w	r1, 4 #111	# _233,
# basic.c:2547: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	st.w	[r0], r1	# *K_API_FAT.582_232, _233
# basic.c:2548: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	mov.w	r1, volume_init	# volume_init.583_234,
# basic.c:2548: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	ld.w	r0, [K_API_FAT]	# K_API_FAT.584_235, K_API_FAT
	add.w	r0, 4 #111	# _236,
# basic.c:2548: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	add.w	r1, 4 #111	# _237,
# basic.c:2548: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	st.w	[r0], r1	# *_236, _237
# basic.c:2549: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	mov.w	r1, file_open	# file_open.585_238,
# basic.c:2549: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	ld.w	r0, [K_API_FAT]	# K_API_FAT.586_239, K_API_FAT
	add.w	r0, 8 #111	# _240,
# basic.c:2549: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	add.w	r1, 4 #111	# _241,
# basic.c:2549: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	st.w	[r0], r1	# *_240, _241
# basic.c:2550: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	mov.w	r1, file_read	# file_read.587_242,
# basic.c:2550: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	ld.w	r0, [K_API_FAT]	# K_API_FAT.588_243, K_API_FAT
	add.w	r0, 12 #111	# _244,
# basic.c:2550: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	add.w	r1, 4 #111	# _245,
# basic.c:2550: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	st.w	[r0], r1	# *_244, _245
# basic.c:2551: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	mov.w	r1, getDirEntry	# getDirEntry.589_246,
# basic.c:2551: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	ld.w	r0, [K_API_FAT]	# K_API_FAT.590_247, K_API_FAT
	add.w	r0, 16 #111	# _248,
# basic.c:2551: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	add.w	r1, 4 #111	# _249,
# basic.c:2551: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	st.w	[r0], r1	# *_248, _249
# basic.c:2552: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	mov.w	r1, file_seek	# file_seek.591_250,
# basic.c:2552: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	ld.w	r0, [K_API_FAT]	# K_API_FAT.592_251, K_API_FAT
	add.w	r0, 20 #111	# _252,
# basic.c:2552: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	add.w	r1, 4 #111	# _253,
# basic.c:2552: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	st.w	[r0], r1	# *_252, _253
# basic.c:2553: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	mov.w	r1, file_write	# file_write.593_254,
# basic.c:2553: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	ld.w	r0, [K_API_FAT]	# K_API_FAT.594_255, K_API_FAT
	add.w	r0, 24 #111	# _256,
# basic.c:2553: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	add.w	r1, 4 #111	# _257,
# basic.c:2553: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	st.w	[r0], r1	# *_256, _257
# basic.c:2554: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	mov.w	r1, file_delete	# file_delete.595_258,
# basic.c:2554: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	ld.w	r0, [K_API_FAT]	# K_API_FAT.596_259, K_API_FAT
	add.w	r0, 28 #111	# _260,
# basic.c:2554: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	add.w	r1, 4 #111	# _261,
# basic.c:2554: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	st.w	[r0], r1	# *_260, _261
# basic.c:2556: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_K_API, .-init_K_API
	.p2align	1
	.global	main
	.type	main, @function
main:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:2562: 	program_start = program;
	ld.w	r0, [program]	# program.597_1, program
	st.w	[program_start], r0	# program_start, program.597_1
# basic.c:2563: 	program_end = program_start;
	ld.w	r0, [program_start]	# program_start.598_2, program_start
	st.w	[program_end], r0	# program_end, program_start.598_2
# basic.c:2564: 	bsp = program + kRamSize;  // Needed for printnum
	ld.w	r0, [program]	# program.599_3, program
	mov.w	r1, 65536	# tmp48,
	add.w	r0, r1 #222	# _4, tmp48
# basic.c:2564: 	bsp = program + kRamSize;  // Needed for printnum
	st.w	[bsp], r0	# bsp, _4
# basic.c:2565: 	stack_limit = program + kRamSize - STACK_SIZE;
	ld.w	r0, [program]	# program.600_5, program
	mov.w	r1, 65336	# tmp49,
	add.w	r0, r1 #222	# _6, tmp49
# basic.c:2565: 	stack_limit = program + kRamSize - STACK_SIZE;
	st.w	[stack_limit], r0	# stack_limit, _6
# basic.c:2566: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	ld.w	r0, [stack_limit]	# stack_limit.601_7, stack_limit
	add.w	r0, -112 #111	# _8,
# basic.c:2566: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	st.w	[variables_begin], r0	# variables_begin, _8
# basic.c:2568: 	current_line = 0;
	xor.w	r0, r0	# tmp50
	st.w	[current_line], r0	# current_line, tmp50
# basic.c:2570: 	init_K_API();
	call	init_K_API		#
# basic.c:2572: 	init_stdio();
	call	init_stdio		#
# basic.c:2574: 	video_mode(0);
	mov.w	r1, sp	# tmp51,
	xor.w	r0, r0	# tmp52
	st.w	[r1], r0	#, tmp52
	call	video_mode		#
# basic.c:2575: 	color = 1;
	mov.w	r0, 1	# tmp53,
	st.w	[color], r0	# color, tmp53
# basic.c:2576: 	cls(color);
	ld.w	r0, [color]	# color.602_9, color
	mov.w	r1, sp	# tmp54,
	st.w	[r1], r0	#, color.602_9
	call	cls		#
# basic.c:2577: 	uart_init_files();
	call	uart_init_files		#
# basic.c:2578: 	init_spi();
	call	init_spi		#
# basic.c:2579: 	init_sd();
	call	init_sd		#
# basic.c:2580: 	init_tcpip();
	call	init_tcpip		#
# basic.c:2582: 	exec_mem();
	call	exec_mem		#
# basic.c:2584: 	init_timer();
	call	init_timer		#
# basic.c:2586: 	res = 0;
	xor.w	r0, r0	# tmp55
	st.w	[r13 + (-4)], r0	# res, tmp55
.L513:
# basic.c:2589: 		if (res != 3)
	ld.w	r1, [r13 + (-4)]	# tmp56, res
	mov.w	r0, 3	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L503		#
# basic.c:2591: 			getln('>');
	mov.w	r1, sp	# tmp58,
	mov.w	r0, 62	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	getln		#
# basic.c:2592: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:2593: 			skip_to_end();
	call	skip_to_end		#
	j	.L504		#
.L503:
# basic.c:2597: 			res = 0;
	xor.w	r0, r0	# tmp60
	st.w	[r13 + (-4)], r0	# res, tmp60
# basic.c:2598: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
.L504:
# basic.c:2601: 		linenum = testnum();
	call	testnum		#
# basic.c:2601: 		linenum = testnum();
	st.w	[linenum], r0	# linenum, _10
# basic.c:2603: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:2605: 		if (linenum == 0)
	ld.w	r1, [linenum]	# linenum.603_11, linenum
# basic.c:2605: 		if (linenum == 0)
	xor.w	r0, r0	# tmp61
	cmp.w	r1, r0	# linenum.603_11, tmp61
	jnz	.L505		#
.L511:
# basic.c:2608: 				res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:2609: 				if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp62, res
	mov.w	r0, 1	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jnz	.L506		#
# basic.c:2610: 					return 0;
	xor.w	r0, r0	# _64
	j	.L514		#
.L506:
# basic.c:2611: 				if (res == 2)
	ld.w	r1, [r13 + (-4)]	# tmp64, res
	mov.w	r0, 2	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L508		#
# basic.c:2613: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.604_12, current_line
	add.w	r0, 5 #111	# _13,
# basic.c:2613: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _13
# basic.c:2614: 					continue;
	j	.L509		#
.L508:
# basic.c:2616: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:2617: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.605_14, txtpos
	ld.b	r0, [r0]	# _15, *txtpos.605_14
# basic.c:2617: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp66, _15
	mov.w	r0, 10	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L513		#
# basic.c:2617: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.606_16, txtpos
	ld.b	r0, [r0]	# _17, *txtpos.606_16
# basic.c:2617: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp68, _17
	mov.w	r0, 58	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jnz	.L513		#
# basic.c:2619: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.607_18, txtpos
	add.w	r0, 1 #111	# _19,
	st.w	[txtpos], r0	# txtpos, _19
# basic.c:2620: 				ignore_blanks();
	call	ignore_blanks		#
.L509:
# basic.c:2608: 				res = direct();
	j	.L511		#
.L505:
# basic.c:2623: 		else if (linenum == 0xFFFF)
	ld.w	r1, [linenum]	# linenum.608_20, linenum
# basic.c:2623: 		else if (linenum == 0xFFFF)
	mov.w	r0, 65535	# tmp70,
	cmp.w	r1, r0	# linenum.608_20, tmp70
	jnz	.L512		#
# basic.c:2625: 			qhow();
	call	qhow		#
	j	.L513		#
.L512:
# basic.c:2629: 			entered_with_line_num();
	call	entered_with_line_num		#
# basic.c:2589: 		if (res != 3)
	j	.L513		#
.L514:
# basic.c:2632: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
