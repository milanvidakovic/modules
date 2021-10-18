	.file	"stdio.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.s
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
	.global	current_video_mode
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	current_video_mode, @object
	.size	current_video_mode, 4
current_video_mode:
	.zero	4
	.global	VIDEO
	.data
	.p2align	2
	.type	VIDEO, @object
	.size	VIDEO, 4
VIDEO:
	.long	1025
	.global	PORT_KEYBOARD
	.p2align	2
	.type	PORT_KEYBOARD, @object
	.size	PORT_KEYBOARD, 4
PORT_KEYBOARD:
	.long	-2147482968
	.global	PORT_MILLIS
	.p2align	2
	.type	PORT_MILLIS, @object
	.size	PORT_MILLIS, 4
PORT_MILLIS:
	.long	-2147482958
	.global	PS2_HANDLER_INSTR
	.p2align	2
	.type	PS2_HANDLER_INSTR, @object
	.size	PS2_HANDLER_INSTR, 4
PS2_HANDLER_INSTR:
	.long	24
	.global	PS2_HANDLER_ADDR
	.p2align	2
	.type	PS2_HANDLER_ADDR, @object
	.size	PS2_HANDLER_ADDR, 4
PS2_HANDLER_ADDR:
	.long	26
	.global	KEY_PRESSED_HANDLER_INSTR
	.p2align	2
	.type	KEY_PRESSED_HANDLER_INSTR, @object
	.size	KEY_PRESSED_HANDLER_INSTR, 4
KEY_PRESSED_HANDLER_INSTR:
	.long	32
	.global	KEY_PRESSED_HANDLER_ADDR
	.p2align	2
	.type	KEY_PRESSED_HANDLER_ADDR, @object
	.size	KEY_PRESSED_HANDLER_ADDR, 4
KEY_PRESSED_HANDLER_ADDR:
	.long	34
	.global	KEY_RELEASED_HANDLER_INSTR
	.p2align	2
	.type	KEY_RELEASED_HANDLER_INSTR, @object
	.size	KEY_RELEASED_HANDLER_INSTR, 4
KEY_RELEASED_HANDLER_INSTR:
	.long	40
	.global	KEY_RELEASED_HANDLER_ADDR
	.p2align	2
	.type	KEY_RELEASED_HANDLER_ADDR, @object
	.size	KEY_RELEASED_HANDLER_ADDR, 4
KEY_RELEASED_HANDLER_ADDR:
	.long	42
	.global	VIRTUAL_KEY_ADDR
	.p2align	2
	.type	VIRTUAL_KEY_ADDR, @object
	.size	VIRTUAL_KEY_ADDR, 4
VIRTUAL_KEY_ADDR:
	.long	48
	.global	gets_finished
	.section	.bss
	.p2align	2
	.type	gets_finished, @object
	.size	gets_finished, 4
gets_finished:
	.zero	4
	.global	shift_pressed
	.p2align	2
	.type	shift_pressed, @object
	.size	shift_pressed, 4
shift_pressed:
	.zero	4
	.global	key_is_pressed
	.p2align	2
	.type	key_is_pressed, @object
	.size	key_is_pressed, 4
key_is_pressed:
	.zero	4
	.global	vk_pressed
	.p2align	2
	.type	vk_pressed, @object
	.size	vk_pressed, 4
vk_pressed:
	.zero	4
	.global	vk_released
	.p2align	2
	.type	vk_released, @object
	.size	vk_released, 4
vk_released:
	.zero	4
	.global	key_is_released
	.p2align	2
	.type	key_is_released, @object
	.size	key_is_released, 4
key_is_released:
	.zero	4
	.global	ctrl_c
	.p2align	2
	.type	ctrl_c, @object
	.size	ctrl_c, 4
ctrl_c:
	.zero	4
	.global	do_reset
	.p2align	2
	.type	do_reset, @object
	.size	do_reset, 4
do_reset:
	.zero	4
	.global	seed
	.data
	.p2align	2
	.type	seed, @object
	.size	seed, 4
seed:
	.long	5
	.global	packet_counter
	.section	.bss
	.p2align	2
	.type	packet_counter, @object
	.size	packet_counter, 4
packet_counter:
	.zero	4
	.global	r_seed
	.data
	.p2align	2
	.type	r_seed, @object
	.size	r_seed, 4
r_seed:
	.long	19987
	.global	r_a
	.p2align	2
	.type	r_a, @object
	.size	r_a, 4
r_a:
	.long	11035
	.global	r_c
	.p2align	2
	.type	r_c, @object
	.size	r_c, 4
r_c:
	.long	12345
	.global	r_m
	.p2align	2
	.type	r_m, @object
	.size	r_m, 4
r_m:
	.long	32768
	.global	color
	.section	.bss
	.p2align	2
	.type	color, @object
	.size	color, 4
color:
	.zero	4
	.global	_history
	.type	_history, @object
	.size	_history, 1024
_history:
	.zero	1024
	.global	_history_idx
	.p2align	2
	.type	_history_idx, @object
	.size	_history_idx, 4
_history_idx:
	.zero	4
	.global	_history_size
	.p2align	2
	.type	_history_size, @object
	.size	_history_size, 4
_history_size:
	.zero	4
	.global	PORT_VIDEO_MODE
	.data
	.p2align	2
	.type	PORT_VIDEO_MODE, @object
	.size	PORT_VIDEO_MODE, 4
PORT_VIDEO_MODE:
	.long	-2147482368
	.text
	.p2align	1
	.global	video_mode
	.type	video_mode, @function
video_mode:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:53: 	*PORT_VIDEO_MODE = m;
	ld.w	r0, [PORT_VIDEO_MODE]	# PORT_VIDEO_MODE.0_1, PORT_VIDEO_MODE
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:53: 	*PORT_VIDEO_MODE = m;
	ld.w	r1, [r13 + (8)]	# tmp28, m
	st.s	[r0], r1	# *PORT_VIDEO_MODE.0_1, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:54: 	current_video_mode = m;
	ld.w	r0, [r13 + (8)]	# tmp29, m
	st.w	[current_video_mode], r0	# current_video_mode, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:55: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	video_mode, .-video_mode
	.p2align	1
	.global	swap
	.type	swap, @function
swap:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:57: 	switch (c) {
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 7	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L3		#
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 7	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jgs	.L4		#
	ld.w	r1, [r13 + (8)]	# tmp32, c
	mov.w	r0, 6	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L5		#
	ld.w	r1, [r13 + (8)]	# tmp34, c
	mov.w	r0, 6	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jgs	.L4		#
	ld.w	r1, [r13 + (8)]	# tmp36, c
	mov.w	r0, 5	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L6		#
	ld.w	r1, [r13 + (8)]	# tmp38, c
	mov.w	r0, 5	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jgs	.L4		#
	ld.w	r1, [r13 + (8)]	# tmp40, c
	mov.w	r0, 4	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L7		#
	ld.w	r1, [r13 + (8)]	# tmp42, c
	mov.w	r0, 4	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jgs	.L4		#
	ld.w	r1, [r13 + (8)]	# tmp44, c
	mov.w	r0, 3	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L8		#
	ld.w	r1, [r13 + (8)]	# tmp46, c
	mov.w	r0, 3	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jgs	.L4		#
	ld.w	r1, [r13 + (8)]	# tmp48, c
	mov.w	r0, 2	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L9		#
	ld.w	r1, [r13 + (8)]	# tmp50, c
	mov.w	r0, 2	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jgs	.L4		#
	ld.w	r1, [r13 + (8)]	# tmp52, c
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L10		#
	ld.w	r1, [r13 + (8)]	# tmp54, c
	mov.w	r0, 1	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jnz	.L4		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:58: 		case 1: return 4;
	mov.w	r0, 4	# _1,
	j	.L11		#
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:59: 		case 2: return 2;
	mov.w	r0, 2	# _1,
	j	.L11		#
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:60: 		case 4: return 1;
	mov.w	r0, 1	# _1,
	j	.L11		#
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:61: 		case 3: return 6;
	mov.w	r0, 6	# _1,
	j	.L11		#
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:62: 		case 5: return 5;
	mov.w	r0, 5	# _1,
	j	.L11		#
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:63: 		case 6: return 3;
	mov.w	r0, 3	# _1,
	j	.L11		#
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:64: 		case 0: return 0;
	xor.w	r0, r0	# _1
	j	.L11		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:65: 		case 7: return 7;
	mov.w	r0, 7	# _1,
	j	.L11		#
.L4:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:66: 		default: return c;
	ld.w	r0, [r13 + (8)]	# _1, c
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:68: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	swap, .-swap
	.p2align	1
	.global	cls
	.type	cls, @function
cls:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:74: 	v = (short *)1024;
	mov.w	r0, 1024	# tmp51,
	st.w	[r13 + (-8)], r0	# v, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:75: 	if (current_video_mode == 0)
	ld.w	r1, [current_video_mode]	# current_video_mode.1_1, current_video_mode
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:75: 	if (current_video_mode == 0)
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# current_video_mode.1_1, tmp52
	jnz	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:78: 		for (i = 0; i < 9600*2; i++)
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:78: 		for (i = 0; i < 9600*2; i++)
	j	.L14		#
.L15:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:80: 			v[i] = swap(color)<<8;
	mov.w	r1, sp	# tmp54,
	ld.w	r0, [r13 + (8)]	# tmp55, color
	st.w	[r1], r0	#, tmp55
	call	swap		#
	mov.w	r1, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:80: 			v[i] = swap(color)<<8;
	mov.w	r0, 8	# tmp56,
	shl.w	r1, r0	# _3, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:80: 			v[i] = swap(color)<<8;
	ld.w	r0, [r13 + (-4)]	# i.2_4, i
	add.w	r0, r0 #222	# tmp57, i.2_4
	mov.w	r2, r0	# _5, tmp57
	ld.w	r0, [r13 + (-8)]	# tmp58, v
	add.w	r0, r2 #222	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:80: 			v[i] = swap(color)<<8;
	st.s	[r0], r1	# *_6, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:78: 		for (i = 0; i < 9600*2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp60, i
	add.w	r0, 1 #111	# tmp59,
	st.w	[r13 + (-4)], r0	# i, tmp59
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:78: 		for (i = 0; i < 9600*2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp61, i
	mov.w	r0, 19199	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jses	.L15		#
	j	.L16		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:82: 	} else if (current_video_mode == 1) 
	ld.w	r1, [current_video_mode]	# current_video_mode.3_8, current_video_mode
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:82: 	} else if (current_video_mode == 1) 
	mov.w	r0, 1	# tmp63,
	cmp.w	r1, r0	# current_video_mode.3_8, tmp63
	jnz	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:85: 		for (i = 0; i < 9600*2; i++)
	xor.w	r0, r0	# tmp64
	st.w	[r13 + (-4)], r0	# i, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:85: 		for (i = 0; i < 9600*2; i++)
	j	.L18		#
.L19:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r0, [r13 + (8)]	# tmp65, color
	mov.w	r1, 4	# tmp66,
	shl.w	r0, r1	# _9, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r1, [r13 + (8)]	# tmp67, color
	or.w	r0, r1	# tmp68, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r1, [r13 + (8)]	# tmp69, color
	mov.w	r2, 8	# tmp70,
	shl.w	r1, r2	# _13, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	or.w	r0, r1	# tmp71, _14
	mov.w	r1, r0	# _15, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r0, [r13 + (8)]	# tmp72, color
	mov.w	r2, 12	# tmp73,
	shl.w	r0, r2	# _16, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	mov.w	r2, r0	# _17, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r0, [r13 + (-4)]	# i.4_18, i
	add.w	r0, r0 #222	# tmp74, i.4_18
	mov.w	r3, r0	# _19, tmp74
	ld.w	r0, [r13 + (-8)]	# tmp75, v
	add.w	r0, r3 #222	# _20, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	or.w	r1, r2	# tmp76, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:87: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	st.s	[r0], r1	# *_20, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:85: 		for (i = 0; i < 9600*2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp78, i
	add.w	r0, 1 #111	# tmp77,
	st.w	[r13 + (-4)], r0	# i, tmp77
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:85: 		for (i = 0; i < 9600*2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp79, i
	mov.w	r0, 19199	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jses	.L19		#
	j	.L16		#
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	xor.w	r0, r0	# tmp81
	st.w	[r13 + (-4)], r0	# i, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	j	.L20		#
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = (color)?0xffff:0;
	ld.w	r1, [r13 + (8)]	# tmp82, color
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jz	.L21		#
	mov.s	r0, -1	# iftmp.5_28,
	j	.L22		#
.L21:
	xor.w	r0, r0	# iftmp.5_28
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = (color)?0xffff:0;
	ld.w	r1, [r13 + (-4)]	# i.6_22, i
	add.w	r1, r1 #222	# tmp84, i.6_22
	mov.w	r2, r1	# _23, tmp84
	ld.w	r1, [r13 + (-8)]	# tmp85, v
	add.w	r1, r2 #222	# _24, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = (color)?0xffff:0;
	st.s	[r1], r0	# *_24, iftmp.5_28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp87, i
	add.w	r0, 1 #111	# tmp86,
	st.w	[r13 + (-4)], r0	# i, tmp86
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp88, i
	mov.w	r0, 19199	# tmp89,
	cmp.w	r1, r0	# tmp88, tmp89
	jses	.L23		#
.L16:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:98: 	VIDEO = (char *)0x401;	
	mov.w	r0, 1025	# tmp90,
	st.w	[VIDEO], r0	# VIDEO, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:99: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	cls, .-cls
	.p2align	1
	.global	blank_line
	.type	blank_line, @function
blank_line:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:105: 	vid = (char *)v;
	ld.w	r0, [r13 + (8)]	# tmp31, v
	st.w	[r13 + (-12)], r0	# vid, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:107: 	i = v;
	ld.w	r0, [r13 + (8)]	# tmp32, v
	st.w	[r13 + (-4)], r0	# i, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:108: 	i -= 1024;
	ld.w	r0, [r13 + (-4)]	# tmp34, i
	mov.w	r1, -1024	# tmp35,
	add.w	r0, r1 #222	# tmp33, tmp35
	st.w	[r13 + (-4)], r0	# i, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:109: 	i = i % 160;
	ld.w	r0, [r13 + (-4)]	# tmp37, i
	mov.w	r1, 160	# tmp39,
	div.w	r0, r1	# tmp38, tmp39
mov.w	r0, r14	# tmp38
	st.w	[r13 + (-4)], r0	# i, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:110: 	i = i / 2;
	ld.w	r0, [r13 + (-4)]	# tmp41, i
	mov.w	r2, 31	# tmp43,
	mov.w	r1, r0	# tmp42, tmp41
	shr.w	r1, r2	# tmp42, tmp43
	mov.w	r2, r1	# tmp44, tmp42
	add.w	r2, r0 #222	# tmp44, tmp41
	mov.w	r1, 1	# tmp46,
	mov.w	r0, r2	# tmp45, tmp44
	shr.w	r0, r1	# tmp45, tmp46
	st.w	[r13 + (-4)], r0	# i, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:111: 	i = i - 2;
	ld.w	r0, [r13 + (-4)]	# tmp48, i
	add.w	r0, -2 #111	# tmp47,
	st.w	[r13 + (-4)], r0	# i, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:112: 	if (i < 0)
	ld.w	r1, [r13 + (-4)]	# tmp49, i
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# tmp49, tmp50
	jges	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:113: 		j = 160 + i  - 2;
	ld.w	r0, [r13 + (-4)]	# tmp52, i
	add.w	r0, 158 #111	# tmp51,
	st.w	[r13 + (-8)], r0	# j, tmp51
	j	.L27		#
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:115: 		j = 160 - i - 2;
	mov.w	r0, 158	# tmp54,
	ld.w	r1, [r13 + (-4)]	# tmp55, i
	sub.w	r0, r1 #222	# tmp53, tmp55
	st.w	[r13 + (-8)], r0	# j, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:116: 	for (; i < j; i++)
	j	.L27		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:118: 		vid[i] = swap(color);
	ld.w	r0, [color]	# color.7_1, color
	mov.w	r1, sp	# tmp56,
	st.w	[r1], r0	#, color.7_1
	call	swap		#
	mov.w	r2, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:118: 		vid[i] = swap(color);
	ld.w	r1, [r13 + (-4)]	# i.8_3, i
	ld.w	r0, [r13 + (-12)]	# tmp57, vid
	add.w	r0, r1 #222	# _4, i.8_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:118: 		vid[i] = swap(color);
	mov.w	r1, r2	# _5, _2
	st.b	[r0], r1	# *_4, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:116: 	for (; i < j; i++)
	ld.w	r0, [r13 + (-4)]	# tmp59, i
	add.w	r0, 1 #111	# tmp58,
	st.w	[r13 + (-4)], r0	# i, tmp58
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:116: 	for (; i < j; i++)
	ld.w	r1, [r13 + (-4)]	# tmp60, i
	ld.w	r0, [r13 + (-8)]	# tmp61, j
	cmp.w	r1, r0	# tmp60, tmp61
	jss	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:120: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	blank_line, .-blank_line
	.p2align	1
	.global	scroll_up
	.type	scroll_up, @function
scroll_up:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:128: 	v = (short*)1024;
	mov.w	r0, 1024	# tmp34,
	st.w	[r13 + (-8)], r0	# v, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:138: 	asm("mov.w r1, 1024\nmov.w r2, 1184\nmov.w r3, 9440\nblit\n");
# 138 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	mov.w r1, 1024
mov.w r2, 1184
mov.w r3, 9440
blit

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:139: 	for (j = 0; j < 40*2; j++)
	xor.w	r0, r0	# tmp35
	st.w	[r13 + (-4)], r0	# j, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:139: 	for (j = 0; j < 40*2; j++)
	j	.L30		#
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:141: 		v[59*40*2 + j] = swap(color)<<8;
	ld.w	r0, [color]	# color.9_1, color
	mov.w	r1, sp	# tmp36,
	st.w	[r1], r0	#, color.9_1
	call	swap		#
	mov.w	r1, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:141: 		v[59*40*2 + j] = swap(color)<<8;
	mov.w	r0, 8	# tmp37,
	shl.w	r1, r0	# _3, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:141: 		v[59*40*2 + j] = swap(color)<<8;
	ld.w	r0, [r13 + (-4)]	# tmp38, j
	mov.w	r2, 4720	# tmp39,
	add.w	r0, r2 #222	# _4, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:141: 		v[59*40*2 + j] = swap(color)<<8;
	add.w	r0, r0 #222	# tmp40, _5
	mov.w	r2, r0	# _6, tmp40
	ld.w	r0, [r13 + (-8)]	# tmp41, v
	add.w	r0, r2 #222	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:141: 		v[59*40*2 + j] = swap(color)<<8;
	st.s	[r0], r1	# *_7, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:139: 	for (j = 0; j < 40*2; j++)
	ld.w	r0, [r13 + (-4)]	# tmp43, j
	add.w	r0, 1 #111	# tmp42,
	st.w	[r13 + (-4)], r0	# j, tmp42
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:139: 	for (j = 0; j < 40*2; j++)
	ld.w	r1, [r13 + (-4)]	# tmp44, j
	mov.w	r0, 79	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jses	.L31		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:143: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	scroll_up, .-scroll_up
	.p2align	1
	.global	key_pressed
	.type	key_pressed, @function
key_pressed:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:148: 	asm 
# 148 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:153: 	i = *VIRTUAL_KEY_ADDR;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.10_1, VIRTUAL_KEY_ADDR
	ld.s	r0, [r0]	# _2, *VIRTUAL_KEY_ADDR.10_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:153: 	i = *VIRTUAL_KEY_ADDR;
	sex.s	r0, r0	# tmp32, _2
	st.w	[r13 + (-8)], r0	# i, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:154: 	vk_pressed = i;
	ld.w	r0, [r13 + (-8)]	# tmp33, i
	st.w	[vk_pressed], r0	# vk_pressed, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:156: 	key_is_pressed = 1;
	mov.w	r0, 1	# tmp34,
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:158: 	if (i < 255) 
	ld.w	r1, [r13 + (-8)]	# tmp35, i
	mov.w	r0, 254	# tmp36,
	cmp.w	r1, r0	# tmp35, tmp36
	jgs	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:160: 		if ((ctrl_c == 1) && (i == 'C'))
	ld.w	r1, [ctrl_c]	# ctrl_c.11_3, ctrl_c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:160: 		if ((ctrl_c == 1) && (i == 'C'))
	mov.w	r0, 1	# tmp37,
	cmp.w	r1, r0	# ctrl_c.11_3, tmp37
	jnz	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:160: 		if ((ctrl_c == 1) && (i == 'C'))
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 67	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:162: 			ctrl_c = 2;
	mov.w	r0, 2	# tmp40,
	st.w	[ctrl_c], r0	# ctrl_c, tmp40
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:165: 		gets_finished = 1;
	mov.w	r0, 1	# tmp41,
	st.w	[gets_finished], r0	# gets_finished, tmp41
	j	.L35		#
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:169: 		switch(i)
	ld.w	r1, [r13 + (-8)]	# tmp42, i
	mov.w	r0, 4003	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jgs	.L35		#
	ld.w	r1, [r13 + (-8)]	# tmp44, i
	mov.w	r0, 4000	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jges	.L36		#
	ld.w	r1, [r13 + (-8)]	# tmp46, i
	mov.w	r0, 3004	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jgs	.L35		#
	ld.w	r1, [r13 + (-8)]	# tmp48, i
	mov.w	r0, 3003	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jges	.L36		#
	ld.w	r1, [r13 + (-8)]	# tmp50, i
	mov.w	r0, 3001	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L36		#
	ld.w	r1, [r13 + (-8)]	# tmp52, i
	mov.w	r0, 3001	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jgs	.L35		#
	ld.w	r1, [r13 + (-8)]	# tmp54, i
	mov.w	r0, 602	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jgs	.L35		#
	ld.w	r1, [r13 + (-8)]	# tmp56, i
	mov.w	r0, 601	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jges	.L37		#
	ld.w	r1, [r13 + (-8)]	# tmp58, i
	mov.w	r0, 502	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jgs	.L35		#
	ld.w	r1, [r13 + (-8)]	# tmp60, i
	mov.w	r0, 501	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jges	.L38		#
	ld.w	r1, [r13 + (-8)]	# tmp62, i
	mov.w	r0, 402	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jgs	.L35		#
	ld.w	r1, [r13 + (-8)]	# tmp64, i
	mov.w	r0, 401	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jges	.L39		#
	ld.w	r1, [r13 + (-8)]	# tmp66, i
	mov.w	r0, 8	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L36		#
	ld.w	r1, [r13 + (-8)]	# tmp68, i
	mov.w	r0, 27	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L36		#
	j	.L35		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:173: 				ctrl_c = 1;
	mov.w	r0, 1	# tmp70,
	st.w	[ctrl_c], r0	# ctrl_c, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:174: 				break;
	j	.L35		#
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:177: 				if (ctrl_c == 1)
	ld.w	r1, [ctrl_c]	# ctrl_c.12_4, ctrl_c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:177: 				if (ctrl_c == 1)
	mov.w	r0, 1	# tmp71,
	cmp.w	r1, r0	# ctrl_c.12_4, tmp71
	jnz	.L44		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:178: 					do_reset = 1;
	mov.w	r0, 1	# tmp72,
	st.w	[do_reset], r0	# do_reset, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:179: 				break;
	j	.L44		#
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:182: 				shift_pressed = 1;			
	mov.w	r0, 1	# tmp73,
	st.w	[shift_pressed], r0	# shift_pressed, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:183: 				break;
	j	.L35		#
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:193: 				if (i == VK_DELETE && do_reset == 1)
	ld.w	r1, [r13 + (-8)]	# tmp74, i
	mov.w	r0, 3003	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jnz	.L41		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:193: 				if (i == VK_DELETE && do_reset == 1)
	ld.w	r1, [do_reset]	# do_reset.13_5, do_reset
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:193: 				if (i == VK_DELETE && do_reset == 1)
	mov.w	r0, 1	# tmp76,
	cmp.w	r1, r0	# do_reset.13_5, tmp76
	jnz	.L41		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:195: 					cls(color);
	ld.w	r0, [color]	# color.14_6, color
	mov.w	r1, sp	# tmp77,
	st.w	[r1], r0	#, color.14_6
	call	cls		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:197: 					for (p = (short *)8; p < (short *)128; p++) {
	mov.w	r0, 8	# tmp78,
	st.w	[r13 + (-4)], r0	# p, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:197: 					for (p = (short *)8; p < (short *)128; p++) {
	j	.L42		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:198: 						*p = 0;
	ld.w	r0, [r13 + (-4)]	# tmp79, p
	xor.w	r1, r1	# tmp80
	st.s	[r0], r1	# *p_7, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:197: 					for (p = (short *)8; p < (short *)128; p++) {
	ld.w	r0, [r13 + (-4)]	# tmp82, p
	add.w	r0, 2 #111	# tmp81,
	st.w	[r13 + (-4)], r0	# p, tmp81
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:197: 					for (p = (short *)8; p < (short *)128; p++) {
	ld.w	r1, [r13 + (-4)]	# tmp83, p
	mov.w	r0, 127	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jse	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:200: 					p = 0;
	xor.w	r0, r0	# tmp85
	st.w	[r13 + (-4)], r0	# p, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:201: 					*p = 1;
	ld.w	r0, [r13 + (-4)]	# tmp86, p
	mov.s	r1, 1	# tmp87,
	st.s	[r0], r1	# *p_23, tmp87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:202: 					int *inst = (int *)2;
	mov.w	r0, 2	# tmp88,
	st.w	[r13 + (-12)], r0	# inst, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:203: 					*inst = 39424;
	ld.w	r0, [r13 + (-12)]	# tmp89, inst
	mov.w	r1, 39424	# tmp90,
	st.w	[r0], r1	# *inst_25, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:204: 					reset();
	call	reset		#
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:206: 				gets_finished = 1;
	mov.w	r0, 1	# tmp91,
	st.w	[gets_finished], r0	# gets_finished, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:207: 				break;
	j	.L35		#
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:179: 				break;
	nop	
.L35:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:210: 	asm 
# 210 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:214: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	key_pressed, .-key_pressed
	.p2align	1
	.global	key_released
	.type	key_released, @function
key_released:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:219: 	asm 
# 219 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:224: 	key_is_released = 1;
	mov.w	r0, 1	# tmp28,
	st.w	[key_is_released], r0	# key_is_released, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:226: 	i = *VIRTUAL_KEY_ADDR;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.15_1, VIRTUAL_KEY_ADDR
	ld.s	r0, [r0]	# _2, *VIRTUAL_KEY_ADDR.15_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:226: 	i = *VIRTUAL_KEY_ADDR;
	sex.s	r0, r0	# tmp29, _2
	st.w	[r13 + (-4)], r0	# i, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:227: 	vk_released = i;
	ld.w	r0, [r13 + (-4)]	# tmp30, i
	st.w	[vk_released], r0	# vk_released, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:228: 	if ((i == VK_LEFT_SHIFT) || (i == VK_RIGHT_SHIFT)) 
	ld.w	r1, [r13 + (-4)]	# tmp31, i
	mov.w	r0, 501	# tmp32,
	cmp.w	r1, r0	# tmp31, tmp32
	jz	.L46		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:228: 	if ((i == VK_LEFT_SHIFT) || (i == VK_RIGHT_SHIFT)) 
	ld.w	r1, [r13 + (-4)]	# tmp33, i
	mov.w	r0, 502	# tmp34,
	cmp.w	r1, r0	# tmp33, tmp34
	jnz	.L47		#
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:230: 		shift_pressed = 0;
	xor.w	r0, r0	# tmp35
	st.w	[shift_pressed], r0	# shift_pressed, tmp35
	j	.L48		#
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:232: 	else if ((i == VK_LEFT_CONTROL) || (i == VK_RIGHT_CONTROL)) 
	ld.w	r1, [r13 + (-4)]	# tmp36, i
	mov.w	r0, 601	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L49		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:232: 	else if ((i == VK_LEFT_CONTROL) || (i == VK_RIGHT_CONTROL)) 
	ld.w	r1, [r13 + (-4)]	# tmp38, i
	mov.w	r0, 602	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L48		#
.L49:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:234: 		ctrl_c = 0;
	xor.w	r0, r0	# tmp40
	st.w	[ctrl_c], r0	# ctrl_c, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:235: 		do_reset = 0;
	xor.w	r0, r0	# tmp41
	st.w	[do_reset], r0	# do_reset, tmp41
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:238: 	asm 
# 238 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:242: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	key_released, .-key_released
	.p2align	1
	.global	vk_to_char
	.type	vk_to_char, @function
vk_to_char:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:246: 	if (vk == 32)
	ld.w	r1, [r13 + (8)]	# tmp51, vk
	mov.w	r0, 32	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L51		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:247: 		return vk;
	ld.w	r0, [r13 + (8)]	# _24, vk
	j	.L52		#
.L51:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:248: 	if ((vk >= 65) && (vk <= 90)) 
	ld.w	r1, [r13 + (8)]	# tmp53, vk
	mov.w	r0, 64	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jses	.L53		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:248: 	if ((vk >= 65) && (vk <= 90)) 
	ld.w	r1, [r13 + (8)]	# tmp55, vk
	mov.w	r0, 90	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jgs	.L53		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:250: 		if (shift_pressed)
	ld.w	r1, [shift_pressed]	# shift_pressed.16_1, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:250: 		if (shift_pressed)
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# shift_pressed.16_1, tmp57
	jz	.L54		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:251: 			return vk;
	ld.w	r0, [r13 + (8)]	# _24, vk
	j	.L52		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:253: 			return vk + 32;
	ld.w	r0, [r13 + (8)]	# tmp58, vk
	add.w	r0, 32 #111	# _24,
	j	.L52		#
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:256: 		switch (vk)
	ld.w	r1, [r13 + (8)]	# tmp59, vk
	mov.w	r0, 96	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L55		#
	ld.w	r1, [r13 + (8)]	# tmp61, vk
	mov.w	r0, 96	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp63, vk
	mov.w	r0, 93	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L57		#
	ld.w	r1, [r13 + (8)]	# tmp65, vk
	mov.w	r0, 93	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp67, vk
	mov.w	r0, 92	# tmp68,
	cmp.w	r1, r0	# tmp67, tmp68
	jz	.L58		#
	ld.w	r1, [r13 + (8)]	# tmp69, vk
	mov.w	r0, 92	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp71, vk
	mov.w	r0, 91	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jz	.L59		#
	ld.w	r1, [r13 + (8)]	# tmp73, vk
	mov.w	r0, 91	# tmp74,
	cmp.w	r1, r0	# tmp73, tmp74
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp75, vk
	mov.w	r0, 61	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jz	.L60		#
	ld.w	r1, [r13 + (8)]	# tmp77, vk
	mov.w	r0, 61	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp79, vk
	mov.w	r0, 60	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jz	.L61		#
	ld.w	r1, [r13 + (8)]	# tmp81, vk
	mov.w	r0, 60	# tmp82,
	cmp.w	r1, r0	# tmp81, tmp82
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp83, vk
	mov.w	r0, 59	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L62		#
	ld.w	r1, [r13 + (8)]	# tmp85, vk
	mov.w	r0, 59	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp87, vk
	mov.w	r0, 57	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L63		#
	ld.w	r1, [r13 + (8)]	# tmp89, vk
	mov.w	r0, 57	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp91, vk
	mov.w	r0, 56	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L64		#
	ld.w	r1, [r13 + (8)]	# tmp93, vk
	mov.w	r0, 56	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp95, vk
	mov.w	r0, 55	# tmp96,
	cmp.w	r1, r0	# tmp95, tmp96
	jz	.L65		#
	ld.w	r1, [r13 + (8)]	# tmp97, vk
	mov.w	r0, 55	# tmp98,
	cmp.w	r1, r0	# tmp97, tmp98
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp99, vk
	mov.w	r0, 54	# tmp100,
	cmp.w	r1, r0	# tmp99, tmp100
	jz	.L66		#
	ld.w	r1, [r13 + (8)]	# tmp101, vk
	mov.w	r0, 54	# tmp102,
	cmp.w	r1, r0	# tmp101, tmp102
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp103, vk
	mov.w	r0, 53	# tmp104,
	cmp.w	r1, r0	# tmp103, tmp104
	jz	.L67		#
	ld.w	r1, [r13 + (8)]	# tmp105, vk
	mov.w	r0, 53	# tmp106,
	cmp.w	r1, r0	# tmp105, tmp106
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp107, vk
	mov.w	r0, 52	# tmp108,
	cmp.w	r1, r0	# tmp107, tmp108
	jz	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp109, vk
	mov.w	r0, 52	# tmp110,
	cmp.w	r1, r0	# tmp109, tmp110
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp111, vk
	mov.w	r0, 51	# tmp112,
	cmp.w	r1, r0	# tmp111, tmp112
	jz	.L69		#
	ld.w	r1, [r13 + (8)]	# tmp113, vk
	mov.w	r0, 51	# tmp114,
	cmp.w	r1, r0	# tmp113, tmp114
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp115, vk
	mov.w	r0, 50	# tmp116,
	cmp.w	r1, r0	# tmp115, tmp116
	jz	.L70		#
	ld.w	r1, [r13 + (8)]	# tmp117, vk
	mov.w	r0, 50	# tmp118,
	cmp.w	r1, r0	# tmp117, tmp118
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp119, vk
	mov.w	r0, 49	# tmp120,
	cmp.w	r1, r0	# tmp119, tmp120
	jz	.L71		#
	ld.w	r1, [r13 + (8)]	# tmp121, vk
	mov.w	r0, 49	# tmp122,
	cmp.w	r1, r0	# tmp121, tmp122
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp123, vk
	mov.w	r0, 48	# tmp124,
	cmp.w	r1, r0	# tmp123, tmp124
	jz	.L72		#
	ld.w	r1, [r13 + (8)]	# tmp125, vk
	mov.w	r0, 48	# tmp126,
	cmp.w	r1, r0	# tmp125, tmp126
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp127, vk
	mov.w	r0, 47	# tmp128,
	cmp.w	r1, r0	# tmp127, tmp128
	jz	.L73		#
	ld.w	r1, [r13 + (8)]	# tmp129, vk
	mov.w	r0, 47	# tmp130,
	cmp.w	r1, r0	# tmp129, tmp130
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp131, vk
	mov.w	r0, 46	# tmp132,
	cmp.w	r1, r0	# tmp131, tmp132
	jz	.L74		#
	ld.w	r1, [r13 + (8)]	# tmp133, vk
	mov.w	r0, 46	# tmp134,
	cmp.w	r1, r0	# tmp133, tmp134
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp135, vk
	mov.w	r0, 45	# tmp136,
	cmp.w	r1, r0	# tmp135, tmp136
	jz	.L75		#
	ld.w	r1, [r13 + (8)]	# tmp137, vk
	mov.w	r0, 45	# tmp138,
	cmp.w	r1, r0	# tmp137, tmp138
	jgs	.L56		#
	ld.w	r1, [r13 + (8)]	# tmp139, vk
	mov.w	r0, 39	# tmp140,
	cmp.w	r1, r0	# tmp139, tmp140
	jz	.L76		#
	ld.w	r1, [r13 + (8)]	# tmp141, vk
	mov.w	r0, 44	# tmp142,
	cmp.w	r1, r0	# tmp141, tmp142
	jz	.L77		#
	j	.L56		#
.L72:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:258: 			case VK_0: if (!shift_pressed) return 48; else return 41;// 0, )!
	ld.w	r1, [shift_pressed]	# shift_pressed.17_2, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:258: 			case VK_0: if (!shift_pressed) return 48; else return 41;// 0, )!
	xor.w	r0, r0	# tmp143
	cmp.w	r1, r0	# shift_pressed.17_2, tmp143
	jnz	.L78		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:258: 			case VK_0: if (!shift_pressed) return 48; else return 41;// 0, )!
	mov.w	r0, 48	# _24,
	j	.L52		#
.L78:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:258: 			case VK_0: if (!shift_pressed) return 48; else return 41;// 0, )!
	mov.w	r0, 41	# _24,
	j	.L52		#
.L71:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:259: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	ld.w	r1, [shift_pressed]	# shift_pressed.18_3, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:259: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	xor.w	r0, r0	# tmp144
	cmp.w	r1, r0	# shift_pressed.18_3, tmp144
	jnz	.L79		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:259: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	mov.w	r0, 49	# _24,
	j	.L52		#
.L79:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:259: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	mov.w	r0, 33	# _24,
	j	.L52		#
.L70:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:260: 			case VK_2: if (!shift_pressed) return 50; else return 64;// 2, @
	ld.w	r1, [shift_pressed]	# shift_pressed.19_4, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:260: 			case VK_2: if (!shift_pressed) return 50; else return 64;// 2, @
	xor.w	r0, r0	# tmp145
	cmp.w	r1, r0	# shift_pressed.19_4, tmp145
	jnz	.L80		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:260: 			case VK_2: if (!shift_pressed) return 50; else return 64;// 2, @
	mov.w	r0, 50	# _24,
	j	.L52		#
.L80:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:260: 			case VK_2: if (!shift_pressed) return 50; else return 64;// 2, @
	mov.w	r0, 64	# _24,
	j	.L52		#
.L69:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:261: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	ld.w	r1, [shift_pressed]	# shift_pressed.20_5, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:261: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	xor.w	r0, r0	# tmp146
	cmp.w	r1, r0	# shift_pressed.20_5, tmp146
	jnz	.L81		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:261: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	mov.w	r0, 51	# _24,
	j	.L52		#
.L81:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:261: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	mov.w	r0, 35	# _24,
	j	.L52		#
.L68:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:262: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	ld.w	r1, [shift_pressed]	# shift_pressed.21_6, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:262: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	xor.w	r0, r0	# tmp147
	cmp.w	r1, r0	# shift_pressed.21_6, tmp147
	jnz	.L82		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:262: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	mov.w	r0, 52	# _24,
	j	.L52		#
.L82:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:262: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	mov.w	r0, 36	# _24,
	j	.L52		#
.L67:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:263: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	ld.w	r1, [shift_pressed]	# shift_pressed.22_7, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:263: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	xor.w	r0, r0	# tmp148
	cmp.w	r1, r0	# shift_pressed.22_7, tmp148
	jnz	.L83		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:263: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	mov.w	r0, 53	# _24,
	j	.L52		#
.L83:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:263: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	mov.w	r0, 37	# _24,
	j	.L52		#
.L66:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:264: 			case VK_6: if (!shift_pressed) return 54; else return 94;// 6, ^
	ld.w	r1, [shift_pressed]	# shift_pressed.23_8, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:264: 			case VK_6: if (!shift_pressed) return 54; else return 94;// 6, ^
	xor.w	r0, r0	# tmp149
	cmp.w	r1, r0	# shift_pressed.23_8, tmp149
	jnz	.L84		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:264: 			case VK_6: if (!shift_pressed) return 54; else return 94;// 6, ^
	mov.w	r0, 54	# _24,
	j	.L52		#
.L84:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:264: 			case VK_6: if (!shift_pressed) return 54; else return 94;// 6, ^
	mov.w	r0, 94	# _24,
	j	.L52		#
.L65:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:265: 			case VK_7: if (!shift_pressed) return 55; else return 38;// 7, &
	ld.w	r1, [shift_pressed]	# shift_pressed.24_9, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:265: 			case VK_7: if (!shift_pressed) return 55; else return 38;// 7, &
	xor.w	r0, r0	# tmp150
	cmp.w	r1, r0	# shift_pressed.24_9, tmp150
	jnz	.L85		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:265: 			case VK_7: if (!shift_pressed) return 55; else return 38;// 7, &
	mov.w	r0, 55	# _24,
	j	.L52		#
.L85:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:265: 			case VK_7: if (!shift_pressed) return 55; else return 38;// 7, &
	mov.w	r0, 38	# _24,
	j	.L52		#
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:266: 			case VK_8: if (!shift_pressed) return 56; else return 42;// 8, *
	ld.w	r1, [shift_pressed]	# shift_pressed.25_10, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:266: 			case VK_8: if (!shift_pressed) return 56; else return 42;// 8, *
	xor.w	r0, r0	# tmp151
	cmp.w	r1, r0	# shift_pressed.25_10, tmp151
	jnz	.L86		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:266: 			case VK_8: if (!shift_pressed) return 56; else return 42;// 8, *
	mov.w	r0, 56	# _24,
	j	.L52		#
.L86:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:266: 			case VK_8: if (!shift_pressed) return 56; else return 42;// 8, *
	mov.w	r0, 42	# _24,
	j	.L52		#
.L63:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:267: 			case VK_9: if (!shift_pressed) return 57; else return 40;// 9, (
	ld.w	r1, [shift_pressed]	# shift_pressed.26_11, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:267: 			case VK_9: if (!shift_pressed) return 57; else return 40;// 9, (
	xor.w	r0, r0	# tmp152
	cmp.w	r1, r0	# shift_pressed.26_11, tmp152
	jnz	.L87		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:267: 			case VK_9: if (!shift_pressed) return 57; else return 40;// 9, (
	mov.w	r0, 57	# _24,
	j	.L52		#
.L87:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:267: 			case VK_9: if (!shift_pressed) return 57; else return 40;// 9, (
	mov.w	r0, 40	# _24,
	j	.L52		#
.L55:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// `, ~
	ld.w	r1, [shift_pressed]	# shift_pressed.27_12, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// `, ~
	xor.w	r0, r0	# tmp153
	cmp.w	r1, r0	# shift_pressed.27_12, tmp153
	jnz	.L88		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// `, ~
	mov.w	r0, 96	# _24,
	j	.L52		#
.L88:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// `, ~
	mov.w	r0, 126	# _24,
	j	.L52		#
.L75:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_MINUS:			if (!shift_pressed) return 45; else return 95;				// -, _
	ld.w	r1, [shift_pressed]	# shift_pressed.28_13, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_MINUS:			if (!shift_pressed) return 45; else return 95;				// -, _
	xor.w	r0, r0	# tmp154
	cmp.w	r1, r0	# shift_pressed.28_13, tmp154
	jnz	.L89		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_MINUS:			if (!shift_pressed) return 45; else return 95;				// -, _
	mov.w	r0, 45	# _24,
	j	.L52		#
.L89:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_MINUS:			if (!shift_pressed) return 45; else return 95;				// -, _
	mov.w	r0, 95	# _24,
	j	.L52		#
.L60:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_EQUALS:	 		if (!shift_pressed) return  61; else return 43;				// =, +
	ld.w	r1, [shift_pressed]	# shift_pressed.29_14, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_EQUALS:	 		if (!shift_pressed) return  61; else return 43;				// =, +
	xor.w	r0, r0	# tmp155
	cmp.w	r1, r0	# shift_pressed.29_14, tmp155
	jnz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_EQUALS:	 		if (!shift_pressed) return  61; else return 43;				// =, +
	mov.w	r0, 61	# _24,
	j	.L52		#
.L90:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_EQUALS:	 		if (!shift_pressed) return  61; else return 43;				// =, +
	mov.w	r0, 43	# _24,
	j	.L52		#
.L59:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	; //[, {
	ld.w	r1, [shift_pressed]	# shift_pressed.30_15, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	; //[, {
	xor.w	r0, r0	# tmp156
	cmp.w	r1, r0	# shift_pressed.30_15, tmp156
	jnz	.L91		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	; //[, {
	mov.w	r0, 91	# _24,
	j	.L52		#
.L91:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	; //[, {
	mov.w	r0, 123	# _24,
	j	.L52		#
.L57:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125;	// ], }
	ld.w	r1, [shift_pressed]	# shift_pressed.31_16, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125;	// ], }
	xor.w	r0, r0	# tmp157
	cmp.w	r1, r0	# shift_pressed.31_16, tmp157
	jnz	.L92		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125;	// ], }
	mov.w	r0, 93	# _24,
	j	.L52		#
.L92:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125;	// ], }
	mov.w	r0, 125	# _24,
	j	.L52		#
.L62:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58; 		//;, :
	ld.w	r1, [shift_pressed]	# shift_pressed.32_17, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58; 		//;, :
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# shift_pressed.32_17, tmp158
	jnz	.L93		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58; 		//;, :
	mov.w	r0, 59	# _24,
	j	.L52		#
.L93:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58; 		//;, :
	mov.w	r0, 58	# _24,
	j	.L52		#
.L76:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 34	;				//', "
	ld.w	r1, [shift_pressed]	# shift_pressed.33_18, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 34	;				//', "
	xor.w	r0, r0	# tmp159
	cmp.w	r1, r0	# shift_pressed.33_18, tmp159
	jnz	.L94		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 34	;				//', "
	mov.w	r0, 39	# _24,
	j	.L52		#
.L94:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 34	;				//', "
	mov.w	r0, 34	# _24,
	j	.L52		#
.L58:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:277: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;	//\, |
	ld.w	r1, [shift_pressed]	# shift_pressed.34_19, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:277: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;	//\, |
	xor.w	r0, r0	# tmp160
	cmp.w	r1, r0	# shift_pressed.34_19, tmp160
	jnz	.L95		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:277: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;	//\, |
	mov.w	r0, 92	# _24,
	j	.L52		#
.L95:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:277: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;	//\, |
	mov.w	r0, 124	# _24,
	j	.L52		#
.L77:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:278: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 60;				// ,, <
	ld.w	r1, [shift_pressed]	# shift_pressed.35_20, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:278: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 60;				// ,, <
	xor.w	r0, r0	# tmp161
	cmp.w	r1, r0	# shift_pressed.35_20, tmp161
	jnz	.L96		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:278: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 60;				// ,, <
	mov.w	r0, 44	# _24,
	j	.L52		#
.L96:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:278: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 60;				// ,, <
	mov.w	r0, 60	# _24,
	j	.L52		#
.L74:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:279: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 62;		// ., >
	ld.w	r1, [shift_pressed]	# shift_pressed.36_21, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:279: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 62;		// ., >
	xor.w	r0, r0	# tmp162
	cmp.w	r1, r0	# shift_pressed.36_21, tmp162
	jnz	.L97		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:279: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 62;		// ., >
	mov.w	r0, 46	# _24,
	j	.L52		#
.L97:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:279: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 62;		// ., >
	mov.w	r0, 62	# _24,
	j	.L52		#
.L61:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:280: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	ld.w	r1, [shift_pressed]	# shift_pressed.37_22, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:280: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# shift_pressed.37_22, tmp163
	jnz	.L98		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:280: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	mov.w	r0, 60	# _24,
	j	.L52		#
.L98:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:280: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	mov.w	r0, 62	# _24,
	j	.L52		#
.L73:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:281: 			case VK_SLASH: 			if (!shift_pressed) return 47; else return 63;				// /, ?
	ld.w	r1, [shift_pressed]	# shift_pressed.38_23, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:281: 			case VK_SLASH: 			if (!shift_pressed) return 47; else return 63;				// /, ?
	xor.w	r0, r0	# tmp164
	cmp.w	r1, r0	# shift_pressed.38_23, tmp164
	jnz	.L99		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:281: 			case VK_SLASH: 			if (!shift_pressed) return 47; else return 63;				// /, ?
	mov.w	r0, 47	# _24,
	j	.L52		#
.L99:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:281: 			case VK_SLASH: 			if (!shift_pressed) return 47; else return 63;				// /, ?
	mov.w	r0, 63	# _24,
	j	.L52		#
.L56:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:283: 				return 0;
	xor.w	r0, r0	# _24
.L52:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:287: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	vk_to_char, .-vk_to_char
	.p2align	1
	.global	put_char
	.type	put_char, @function
put_char:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:291: 	if (c == 10 || c == 13) 
	ld.w	r1, [r13 + (8)]	# tmp39, c
	mov.w	r0, 10	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L101		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:291: 	if (c == 10 || c == 13) 
	ld.w	r1, [r13 + (8)]	# tmp41, c
	mov.w	r0, 13	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L102		#
.L101:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:293: 		i = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.39_1, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:293: 		i = (int)VIDEO;
	st.w	[r13 + (-4)], r0	# i, VIDEO.39_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:294: 		i = (i - 1024) / 160;
	ld.w	r0, [r13 + (-4)]	# tmp43, i
	mov.w	r1, -1024	# tmp44,
	add.w	r0, r1 #222	# _2, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:294: 		i = (i - 1024) / 160;
	mov.w	r1, 160	# tmp46,
	div.w	r0, r1	# tmp45, tmp46
	st.w	[r13 + (-4)], r0	# i, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:295: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp48, i
	add.w	r0, 1 #111	# tmp47,
	st.w	[r13 + (-4)], r0	# i, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:296: 		if (i == 60)
	ld.w	r1, [r13 + (-4)]	# tmp49, i
	mov.w	r0, 60	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jnz	.L103		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:298: 			scroll_up();
	call	scroll_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:299: 			i = 59;
	mov.w	r0, 59	# tmp51,
	st.w	[r13 + (-4)], r0	# i, tmp51
.L103:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:301: 		VIDEO = (char *)(1024 + (i * 160) - 1);
	ld.w	r1, [r13 + (-4)]	# tmp52, i
	mov.w	r0, r1	# tmp53, tmp52
	mov.w	r2, 2	# tmp55,
	shl.w	r0, r2	# tmp54, tmp55
	add.w	r0, r1 #222	# tmp53, tmp52
	mov.w	r1, 5	# tmp57,
	shl.w	r0, r1	# tmp56, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:301: 		VIDEO = (char *)(1024 + (i * 160) - 1);
	mov.w	r1, 1023	# tmp58,
	add.w	r0, r1 #222	# _4, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:301: 		VIDEO = (char *)(1024 + (i * 160) - 1);
	st.w	[VIDEO], r0	# VIDEO, _5
	j	.L104		#
.L102:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:303: 		i = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.40_6, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:303: 		i = (int)VIDEO;
	st.w	[r13 + (-4)], r0	# i, VIDEO.40_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:304: 		i = (i - 1024) / 160;
	ld.w	r0, [r13 + (-4)]	# tmp59, i
	mov.w	r1, -1024	# tmp60,
	add.w	r0, r1 #222	# _7, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:304: 		i = (i - 1024) / 160;
	mov.w	r1, 160	# tmp62,
	div.w	r0, r1	# tmp61, tmp62
	st.w	[r13 + (-4)], r0	# i, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:305: 		if (i == 59) {
	ld.w	r1, [r13 + (-4)]	# tmp63, i
	mov.w	r0, 59	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jnz	.L104		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:306: 			j = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.41_8, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:306: 			j = (int)VIDEO;
	st.w	[r13 + (-8)], r0	# j, VIDEO.41_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:307: 			j = (j - 10463) / 2;
	ld.w	r0, [r13 + (-8)]	# tmp65, j
	mov.w	r1, -10463	# tmp66,
	add.w	r0, r1 #222	# _9, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:307: 			j = (j - 10463) / 2;
	mov.w	r2, 31	# tmp68,
	mov.w	r1, r0	# tmp67, _9
	shr.w	r1, r2	# tmp67, tmp68
	mov.w	r2, r1	# tmp69, tmp67
	add.w	r2, r0 #222	# tmp69, _9
	mov.w	r1, 1	# tmp71,
	mov.w	r0, r2	# tmp70, tmp69
	shr.w	r0, r1	# tmp70, tmp71
	st.w	[r13 + (-8)], r0	# j, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:308: 			if (j == 80)
	ld.w	r1, [r13 + (-8)]	# tmp72, j
	mov.w	r0, 80	# tmp73,
	cmp.w	r1, r0	# tmp72, tmp73
	jnz	.L104		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:310: 				scroll_up();
	call	scroll_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:311: 				VIDEO = (char*)10463;
	mov.w	r0, 10463	# tmp74,
	st.w	[VIDEO], r0	# VIDEO, tmp74
.L104:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:315: 	*VIDEO = c + 0xFF00;
	ld.w	r0, [VIDEO]	# VIDEO.42_10, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:315: 	*VIDEO = c + 0xFF00;
	ld.w	r1, [r13 + (8)]	# tmp75, c
	st.b	[r0], r1	# *VIDEO.42_10, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:316: 	VIDEO += 2;
	ld.w	r0, [VIDEO]	# VIDEO.43_12, VIDEO
	add.w	r0, 2 #111	# _13,
	st.w	[VIDEO], r0	# VIDEO, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:317: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	put_char, .-put_char
	.p2align	1
	.global	putchar
	.type	putchar, @function
putchar:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:320: 	put_char(c);
	mov.w	r1, sp	# tmp28,
	ld.w	r0, [r13 + (8)]	# tmp29, c
	st.w	[r1], r0	#, tmp29
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:321: 	return c;
	ld.w	r0, [r13 + (8)]	# _4, c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:322: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	putchar, .-putchar
	.p2align	1
	.global	print_str
	.type	print_str, @function
print_str:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:326: 	int j = strlen(s);
	mov.w	r1, sp	# tmp29,
	ld.w	r0, [r13 + (8)]	# tmp30, s
	st.w	[r1], r0	#, tmp30
	call	strlen		#
	st.w	[r13 + (-8)], r0	# j,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:328: 	for (i = 0; i < j; i++) 
	xor.w	r0, r0	# tmp31
	st.w	[r13 + (-4)], r0	# i, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:328: 	for (i = 0; i < j; i++) 
	j	.L108		#
.L111:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:330: 		if (*s == 0)
	ld.w	r0, [r13 + (8)]	# tmp32, s
	ld.b	r0, [r0]	# _1, *s_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:330: 		if (*s == 0)
	sex.b	r1, r0	# tmp33, _1
	xor.w	r0, r0	# tmp34
	cmp.w	r1, r0	# tmp33, tmp34
	jz	.L112		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:332: 		put_char(*s);
	ld.w	r0, [r13 + (8)]	# tmp35, s
	ld.b	r0, [r0]	# _2, *s_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:332: 		put_char(*s);
	sex.b	r0, r0	# _3, _2
	mov.w	r1, sp	# tmp36,
	st.w	[r1], r0	#, _3
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:333: 		s++;
	ld.w	r0, [r13 + (8)]	# tmp38, s
	add.w	r0, 1 #111	# tmp37,
	st.w	[r13 + (8)], r0	# s, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:328: 	for (i = 0; i < j; i++) 
	ld.w	r0, [r13 + (-4)]	# tmp40, i
	add.w	r0, 1 #111	# tmp39,
	st.w	[r13 + (-4)], r0	# i, tmp39
.L108:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:328: 	for (i = 0; i < j; i++) 
	ld.w	r1, [r13 + (-4)]	# tmp41, i
	ld.w	r0, [r13 + (-8)]	# tmp42, j
	cmp.w	r1, r0	# tmp41, tmp42
	jss	.L111		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:335: }
	j	.L113		#
.L112:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:331: 			break;
	nop	
.L113:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:335: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	print_str, .-print_str
	.p2align	1
	.global	printf
	.type	printf, @function
printf:
	push	r13		#
	mov.w	r13, sp	#,
	mov.w	r12, 528	#,
	sub.w	sp, r12 #222	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:340:     va_start(args, fmt);
	mov.w	r0, r13	# tmp28,
	add.w	r0, 12 #111	# tmp28,
	st.w	[r13 + (-504)], r0	# MEM[(void * *)&args], tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:341:     vsprintf(printf_dst,fmt,args);
	ld.w	r1, [r13 + (-504)]	# args.44_1, args
	mov.w	r0, sp	# tmp29,
	st.w	[r0 + (8)], r1	#, args.44_1
	ld.w	r1, [r13 + (8)]	# tmp30, fmt
	st.w	[r0 + (4)], r1	#, tmp30
	mov.w	r2, -500	# tmp32,
	mov.w	r1, r13	# tmp31,
	add.w	r1, r2 #222	# tmp31, tmp32
	st.w	[r0], r1	#, tmp31
	call	vsprintf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:342:     print_str(printf_dst);
	mov.w	r2, sp	# tmp33,
	mov.w	r1, -500	# tmp35,
	mov.w	r0, r13	# tmp34,
	add.w	r0, r1 #222	# tmp34, tmp35
	st.w	[r2], r0	#, tmp34
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:343: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	printf, .-printf
	.p2align	1
	.global	puts
	.type	puts, @function
puts:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:346: 	print_str(s);
	mov.w	r1, sp	# tmp27,
	ld.w	r0, [r13 + (8)]	# tmp28, s
	st.w	[r1], r0	#, tmp28
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:347: 	put_char(10);
	mov.w	r1, sp	# tmp29,
	mov.w	r0, 10	# tmp30,
	st.w	[r1], r0	#, tmp30
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:348: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	puts, .-puts
	.p2align	1
	.global	rand
	.type	rand, @function
rand:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:352: 	r_a = *PORT_MILLIS & 0x7fffffff;
	ld.w	r0, [PORT_MILLIS]	# PORT_MILLIS.45_1, PORT_MILLIS
	ld.w	r0, [r0]	# _2, *PORT_MILLIS.45_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:352: 	r_a = *PORT_MILLIS & 0x7fffffff;
	mov.w	r1, 2147483647	# tmp40,
	and.w	r0, r1	# _3, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:352: 	r_a = *PORT_MILLIS & 0x7fffffff;
	st.w	[r_a], r0	# r_a, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:353: 	x = r_a * r_seed;
	ld.w	r0, [r_a]	# r_a.46_4, r_a
	ld.w	r1, [r_seed]	# r_seed.47_5, r_seed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:353: 	x = r_a * r_seed;
	mul.w	r0, r1	# tmp41, r_seed.47_5
	st.w	[r13 + (-4)], r0	# x, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:354: 	x += r_c;
	ld.w	r1, [r_c]	# r_c.48_6, r_c
	ld.w	r0, [r13 + (-4)]	# tmp43, x
	add.w	r0, r1 #222	# tmp42, r_c.48_6
	st.w	[r13 + (-4)], r0	# x, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:355: 	y = x / r_m;
	ld.w	r1, [r_m]	# r_m.49_7, r_m
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:355: 	y = x / r_m;
	ld.w	r0, [r13 + (-4)]	# tmp45, x
	div.w	r0, r1	# tmp44, r_m.49_7
	st.w	[r13 + (-8)], r0	# y, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:356: 	r_seed = x % r_m;
	ld.w	r1, [r_m]	# r_m.50_8, r_m
	ld.w	r0, [r13 + (-4)]	# tmp46, x
	div.w	r0, r1	# _9, r_m.50_8
mov.w	r0, r14	# _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:356: 	r_seed = x % r_m;
	st.w	[r_seed], r0	# r_seed, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:357: 	if (r_seed < 0)
	ld.w	r1, [r_seed]	# r_seed.51_10, r_seed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:357: 	if (r_seed < 0)
	xor.w	r0, r0	# tmp47
	cmp.w	r1, r0	# r_seed.51_10, tmp47
	jges	.L117		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:358: 		r_seed = -r_seed;
	ld.w	r0, [r_seed]	# r_seed.52_11, r_seed
	mov.w	r0, r0	# _12, r_seed.52_11
neg.w	r0	# _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:358: 		r_seed = -r_seed;
	st.w	[r_seed], r0	# r_seed, _12
.L117:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:359: 	return r_seed;
	ld.w	r0, [r_seed]	# _21, r_seed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:360: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	rand, .-rand
	.p2align	1
	.global	should_break
	.type	should_break, @function
should_break:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:363: 	if (ctrl_c == 2)
	ld.w	r1, [ctrl_c]	# ctrl_c.53_1, ctrl_c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:363: 	if (ctrl_c == 2)
	mov.w	r0, 2	# tmp29,
	cmp.w	r1, r0	# ctrl_c.53_1, tmp29
	jnz	.L120		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:364: 		return 1;
	mov.w	r0, 1	# _2,
	j	.L121		#
.L120:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:365: 	return 0;
	xor.w	r0, r0	# _2
.L121:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:366: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	should_break, .-should_break
	.p2align	1
	.global	getc
	.type	getc, @function
getc:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:369: 	*VIRTUAL_KEY_ADDR = 0;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.54_1, VIRTUAL_KEY_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:369: 	*VIRTUAL_KEY_ADDR = 0;
	xor.w	r1, r1	# tmp32
	st.s	[r0], r1	# *VIRTUAL_KEY_ADDR.54_1, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:370: 	key_is_pressed = 0;
	xor.w	r0, r0	# tmp33
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp33
.L126:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:373: 		if ((packet_counter++) == 100) {
	ld.w	r0, [packet_counter]	# packet_counter.55_2, packet_counter
	mov.w	r1, r0	# _4, packet_counter.55_2
	add.w	r1, 1 #111	# _4,
	st.w	[packet_counter], r1	# packet_counter, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:373: 		if ((packet_counter++) == 100) {
	mov.w	r1, 100	# tmp34,
	cmp.w	r0, r1	# packet_counter.55_2, tmp34
	jnz	.L123		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:374: 			packet_counter = 0;
	xor.w	r0, r0	# tmp35
	st.w	[packet_counter], r0	# packet_counter, tmp35
.L123:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:377: 		if (key_is_pressed == 1) 
	ld.w	r1, [key_is_pressed]	# key_is_pressed.57_5, key_is_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:377: 		if (key_is_pressed == 1) 
	mov.w	r0, 1	# tmp36,
	cmp.w	r1, r0	# key_is_pressed.57_5, tmp36
	jnz	.L126		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:379: 			key_is_pressed = 0;
	xor.w	r0, r0	# tmp37
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:381: 			return vk_pressed;
	ld.w	r0, [vk_pressed]	# _14, vk_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:384: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getc, .-getc
	.p2align	1
	.global	toggle_cursor
	.type	toggle_cursor, @function
toggle_cursor:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:388: 	i = *(VIDEO - 1);
	ld.w	r0, [VIDEO]	# VIDEO.58_1, VIDEO
	ld.b	r0, [r0 + (-1)]	# tmp29, MEM[(char *)VIDEO.58_1 + 4294967295B]
	st.b	[r13 + (-1)], r0	# i, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:389: 	i = i ^ 0x77; 
	ld.b	r0, [r13 + (-1)]	# tmp30, i
	mov.w	r1, 119	# tmp32,
	xor.w	r0, r1	# tmp31, tmp32
	st.b	[r13 + (-1)], r0	# i, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:390: 	*(VIDEO - 1) = i;
	ld.w	r0, [VIDEO]	# VIDEO.59_2, VIDEO
	add.w	r0, -1 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:390: 	*(VIDEO - 1) = i;
	ld.b	r1, [r13 + (-1)]	# tmp34, i
	st.b	[r0], r1	# *_3, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:391: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	toggle_cursor, .-toggle_cursor
	.p2align	1
	.global	gets
	.type	gets, @function
gets:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 48 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:396: 	*VIRTUAL_KEY_ADDR = 0;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.60_1, VIRTUAL_KEY_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:396: 	*VIRTUAL_KEY_ADDR = 0;
	xor.w	r1, r1	# tmp145
	st.s	[r0], r1	# *VIRTUAL_KEY_ADDR.60_1, tmp145
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:397: 	shift_pressed = 0;
	xor.w	r0, r0	# tmp146
	st.w	[shift_pressed], r0	# shift_pressed, tmp146
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:399: 	start_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.61_2, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:399: 	start_video = (int)VIDEO;
	st.w	[r13 + (-16)], r0	# start_video, VIDEO.61_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:400: 	j = 0;
	xor.w	r0, r0	# tmp147
	st.w	[r13 + (-4)], r0	# j, tmp147
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:401: 	len = strlen(s);
	mov.w	r1, sp	# tmp148,
	ld.w	r0, [r13 + (8)]	# tmp149, s
	st.w	[r1], r0	#, tmp149
	call	strlen		#
	st.w	[r13 + (-12)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:402: 	if (len > 0)
	ld.w	r1, [r13 + (-12)]	# tmp150, len
	xor.w	r0, r0	# tmp151
	cmp.w	r1, r0	# tmp150, tmp151
	jses	.L130		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:404: 		prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.62_3, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:404: 		prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.62_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:405: 		print_str(s);
	mov.w	r1, sp	# tmp152,
	ld.w	r0, [r13 + (8)]	# tmp153, s
	st.w	[r1], r0	#, tmp153
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:406: 		j = len;
	ld.w	r0, [r13 + (-12)]	# tmp154, len
	st.w	[r13 + (-4)], r0	# j, tmp154
.L130:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:409: 	toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:410: 	gets_finished = 0;
	xor.w	r0, r0	# tmp155
	st.w	[gets_finished], r0	# gets_finished, tmp155
.L166:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:414: 		if ((packet_counter++) == 100) {
	ld.w	r0, [packet_counter]	# packet_counter.63_4, packet_counter
	mov.w	r1, r0	# _6, packet_counter.63_4
	add.w	r1, 1 #111	# _6,
	st.w	[packet_counter], r1	# packet_counter, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:414: 		if ((packet_counter++) == 100) {
	mov.w	r1, 100	# tmp156,
	cmp.w	r0, r1	# packet_counter.63_4, tmp156
	jnz	.L131		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:415: 			packet_counter = 0;
	xor.w	r0, r0	# tmp157
	st.w	[packet_counter], r0	# packet_counter, tmp157
.L131:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:419: 		if (gets_finished == 1) 
	ld.w	r1, [gets_finished]	# gets_finished.65_7, gets_finished
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:419: 		if (gets_finished == 1) 
	mov.w	r0, 1	# tmp158,
	cmp.w	r1, r0	# gets_finished.65_7, tmp158
	jnz	.L166		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:421: 			gets_finished = 0;
	xor.w	r0, r0	# tmp159
	st.w	[gets_finished], r0	# gets_finished, tmp159
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:422: 			i = vk_pressed;
	ld.w	r0, [vk_pressed]	# tmp160, vk_pressed
	st.w	[r13 + (-24)], r0	# i, tmp160
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:423: 			switch(i)
	ld.w	r1, [r13 + (-24)]	# tmp161, i
	mov.w	r0, 4003	# tmp162,
	cmp.w	r1, r0	# tmp161, tmp162
	jz	.L133		#
	ld.w	r1, [r13 + (-24)]	# tmp163, i
	mov.w	r0, 4003	# tmp164,
	cmp.w	r1, r0	# tmp163, tmp164
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp165, i
	mov.w	r0, 4002	# tmp166,
	cmp.w	r1, r0	# tmp165, tmp166
	jz	.L135		#
	ld.w	r1, [r13 + (-24)]	# tmp167, i
	mov.w	r0, 4002	# tmp168,
	cmp.w	r1, r0	# tmp167, tmp168
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp169, i
	mov.w	r0, 4001	# tmp170,
	cmp.w	r1, r0	# tmp169, tmp170
	jz	.L136		#
	ld.w	r1, [r13 + (-24)]	# tmp171, i
	mov.w	r0, 4001	# tmp172,
	cmp.w	r1, r0	# tmp171, tmp172
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp173, i
	mov.w	r0, 4000	# tmp174,
	cmp.w	r1, r0	# tmp173, tmp174
	jz	.L137		#
	ld.w	r1, [r13 + (-24)]	# tmp175, i
	mov.w	r0, 4000	# tmp176,
	cmp.w	r1, r0	# tmp175, tmp176
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp177, i
	mov.w	r0, 3004	# tmp178,
	cmp.w	r1, r0	# tmp177, tmp178
	jz	.L138		#
	ld.w	r1, [r13 + (-24)]	# tmp179, i
	mov.w	r0, 3004	# tmp180,
	cmp.w	r1, r0	# tmp179, tmp180
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp181, i
	mov.w	r0, 3003	# tmp182,
	cmp.w	r1, r0	# tmp181, tmp182
	jz	.L139		#
	ld.w	r1, [r13 + (-24)]	# tmp183, i
	mov.w	r0, 3003	# tmp184,
	cmp.w	r1, r0	# tmp183, tmp184
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp185, i
	mov.w	r0, 3001	# tmp186,
	cmp.w	r1, r0	# tmp185, tmp186
	jz	.L140		#
	ld.w	r1, [r13 + (-24)]	# tmp187, i
	mov.w	r0, 3001	# tmp188,
	cmp.w	r1, r0	# tmp187, tmp188
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp189, i
	mov.w	r0, 27	# tmp190,
	cmp.w	r1, r0	# tmp189, tmp190
	jz	.L141		#
	ld.w	r1, [r13 + (-24)]	# tmp191, i
	mov.w	r0, 27	# tmp192,
	cmp.w	r1, r0	# tmp191, tmp192
	jgs	.L134		#
	ld.w	r1, [r13 + (-24)]	# tmp193, i
	mov.w	r0, 8	# tmp194,
	cmp.w	r1, r0	# tmp193, tmp194
	jz	.L142		#
	ld.w	r1, [r13 + (-24)]	# tmp195, i
	mov.w	r0, 13	# tmp196,
	cmp.w	r1, r0	# tmp195, tmp196
	jz	.L143		#
	j	.L134		#
.L141:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:426: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:427: 					blank_line(start_video);
	mov.w	r1, sp	# tmp197,
	ld.w	r0, [r13 + (-16)]	# tmp198, start_video
	st.w	[r1], r0	#, tmp198
	call	blank_line		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:428: 					s[0] = 0;
	ld.w	r0, [r13 + (8)]	# tmp199, s
	xor.w	r1, r1	# tmp200
	st.b	[r0], r1	# *s_155(D), tmp200
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:429: 					len = 0;
	xor.w	r0, r0	# tmp201
	st.w	[r13 + (-12)], r0	# len, tmp201
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:430: 					j = 0;
	xor.w	r0, r0	# tmp202
	st.w	[r13 + (-4)], r0	# j, tmp202
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:431: 					VIDEO = (char *)start_video;
	ld.w	r0, [r13 + (-16)]	# start_video.66_8, start_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:431: 					VIDEO = (char *)start_video;
	st.w	[VIDEO], r0	# VIDEO, start_video.66_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:432: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:433: 					break;
	j	.L132		#
.L143:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:435: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:436: 					s[len] = 0;
	ld.w	r1, [r13 + (-12)]	# len.67_9, len
	ld.w	r0, [r13 + (8)]	# tmp203, s
	add.w	r0, r1 #222	# _10, len.67_9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:436: 					s[len] = 0;
	xor.w	r1, r1	# tmp204
	st.b	[r0], r1	# *_10, tmp204
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:437: 					VIDEO += (len - j) * 2;
	ld.w	r2, [VIDEO]	# VIDEO.68_11, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:437: 					VIDEO += (len - j) * 2;
	ld.w	r0, [r13 + (-12)]	# tmp205, len
	ld.w	r1, [r13 + (-4)]	# tmp206, j
	sub.w	r0, r1 #222	# _12, tmp206
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:437: 					VIDEO += (len - j) * 2;
	add.w	r0, r0 #222	# tmp207, _12
	mov.w	r1, r0	# _14, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:437: 					VIDEO += (len - j) * 2;
	mov.w	r0, r2	# _15, VIDEO.68_11
	add.w	r0, r1 #222	# _15, _14
	st.w	[VIDEO], r0	# VIDEO, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:438: 					put_char(13);
	mov.w	r1, sp	# tmp208,
	mov.w	r0, 13	# tmp209,
	st.w	[r1], r0	#, tmp209
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:440: 					if (strlen(s) > 0)
	mov.w	r1, sp	# tmp210,
	ld.w	r0, [r13 + (8)]	# tmp211, s
	st.w	[r1], r0	#, tmp211
	call	strlen		#
	mov.w	r1, r0	# _16,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:440: 					if (strlen(s) > 0)
	xor.w	r0, r0	# tmp212
	cmp.w	r1, r0	# _16, tmp212
	jses	.L144		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:442: 						if (_history_size = HISTORY_MAX)
	mov.w	r0, 4	# tmp213,
	st.w	[_history_size], r0	# _history_size, tmp213
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:444: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	xor.w	r0, r0	# tmp214
	st.w	[r13 + (-8)], r0	# k, tmp214
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:444: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	j	.L145		#
.L146:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:446: 								strcpy(_history[k], _history[k + 1]);
	ld.w	r1, [r13 + (-8)]	# tmp216, k
	mov.w	r0, 8	# tmp217,
	shl.w	r1, r0	# tmp215, tmp217
	mov.w	r0, _history	# tmp218,
	add.w	r1, r0 #222	# _17, tmp218
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:446: 								strcpy(_history[k], _history[k + 1]);
	ld.w	r0, [r13 + (-8)]	# tmp219, k
	mov.w	r2, r0	# _18, tmp219
	add.w	r2, 1 #111	# _18,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:446: 								strcpy(_history[k], _history[k + 1]);
	mov.w	r0, 8	# tmp221,
	shl.w	r2, r0	# tmp220, tmp221
	mov.w	r0, _history	# tmp222,
	add.w	r2, r0 #222	# _19, tmp222
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:446: 								strcpy(_history[k], _history[k + 1]);
	mov.w	r0, sp	# tmp223,
	st.w	[r0 + (4)], r2	#, _19
	st.w	[r0], r1	#, _17
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:444: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	ld.w	r0, [r13 + (-8)]	# tmp225, k
	add.w	r0, 1 #111	# tmp224,
	st.w	[r13 + (-8)], r0	# k, tmp224
.L145:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:444: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	ld.w	r1, [r13 + (-8)]	# tmp226, k
	mov.w	r0, 2	# tmp227,
	cmp.w	r1, r0	# tmp226, tmp227
	jses	.L146		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:448: 							_history_size = HISTORY_MAX - 1;
	mov.w	r0, 3	# tmp228,
	st.w	[_history_size], r0	# _history_size, tmp228
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:450: 						strcpy(_history[_history_size], s);
	ld.w	r1, [_history_size]	# _history_size.69_20, _history_size
	mov.w	r0, 8	# tmp230,
	shl.w	r1, r0	# tmp229, tmp230
	mov.w	r0, _history	# tmp231,
	add.w	r1, r0 #222	# _21, tmp231
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:450: 						strcpy(_history[_history_size], s);
	mov.w	r0, sp	# tmp232,
	ld.w	r2, [r13 + (8)]	# tmp233, s
	st.w	[r0 + (4)], r2	#, tmp233
	st.w	[r0], r1	#, _21
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:451: 						_history_idx = _history_size;
	ld.w	r0, [_history_size]	# _history_size.70_22, _history_size
	st.w	[_history_idx], r0	# _history_idx, _history_size.70_22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:452: 						_history_size++;
	ld.w	r0, [_history_size]	# _history_size.71_23, _history_size
	add.w	r0, 1 #111	# _24,
	st.w	[_history_size], r0	# _history_size, _24
.L144:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:461: 					return s;
	ld.w	r0, [r13 + (8)]	# _232, s
	j	.L167		#
.L137:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:463: 					if (_history_size == 0)
	ld.w	r1, [_history_size]	# _history_size.72_25, _history_size
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:463: 					if (_history_size == 0)
	xor.w	r0, r0	# tmp234
	cmp.w	r1, r0	# _history_size.72_25, tmp234
	jz	.L168		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:465: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:466: 					blank_line(start_video);
	mov.w	r1, sp	# tmp235,
	ld.w	r0, [r13 + (-16)]	# tmp236, start_video
	st.w	[r1], r0	#, tmp236
	call	blank_line		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:467: 					VIDEO = (char *)start_video;
	ld.w	r0, [r13 + (-16)]	# start_video.73_26, start_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:467: 					VIDEO = (char *)start_video;
	st.w	[VIDEO], r0	# VIDEO, start_video.73_26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:469: 					s[0] = 0;
	ld.w	r0, [r13 + (8)]	# tmp237, s
	xor.w	r1, r1	# tmp238
	st.b	[r0], r1	# *s_155(D), tmp238
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:470: 					strcpy(s, _history[_history_idx]);
	ld.w	r1, [_history_idx]	# _history_idx.74_27, _history_idx
	mov.w	r0, 8	# tmp240,
	shl.w	r1, r0	# tmp239, tmp240
	mov.w	r0, _history	# tmp241,
	add.w	r1, r0 #222	# _28, tmp241
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:470: 					strcpy(s, _history[_history_idx]);
	mov.w	r0, sp	# tmp242,
	st.w	[r0 + (4)], r1	#, _28
	ld.w	r1, [r13 + (8)]	# tmp243, s
	st.w	[r0], r1	#, tmp243
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:471: 					len = strlen(s);
	mov.w	r1, sp	# tmp244,
	ld.w	r0, [r13 + (8)]	# tmp245, s
	st.w	[r1], r0	#, tmp245
	call	strlen		#
	st.w	[r13 + (-12)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:472: 					j = strlen(s);
	mov.w	r1, sp	# tmp246,
	ld.w	r0, [r13 + (8)]	# tmp247, s
	st.w	[r1], r0	#, tmp247
	call	strlen		#
	st.w	[r13 + (-4)], r0	# j,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:473: 					print_str(s);
	mov.w	r1, sp	# tmp248,
	ld.w	r0, [r13 + (8)]	# tmp249, s
	st.w	[r1], r0	#, tmp249
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:475: 					_history_idx--;
	ld.w	r0, [_history_idx]	# _history_idx.75_29, _history_idx
	add.w	r0, -1 #111	# _30,
	st.w	[_history_idx], r0	# _history_idx, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:476: 					if (_history_idx < 0)
	ld.w	r1, [_history_idx]	# _history_idx.76_31, _history_idx
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:476: 					if (_history_idx < 0)
	xor.w	r0, r0	# tmp250
	cmp.w	r1, r0	# _history_idx.76_31, tmp250
	jges	.L149		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:477: 						_history_idx = 0;
	xor.w	r0, r0	# tmp251
	st.w	[_history_idx], r0	# _history_idx, tmp251
.L149:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:480: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:481: 					break;
	j	.L132		#
.L135:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:483: 					if (_history_size == 0)
	ld.w	r1, [_history_size]	# _history_size.77_32, _history_size
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:483: 					if (_history_size == 0)
	xor.w	r0, r0	# tmp252
	cmp.w	r1, r0	# _history_size.77_32, tmp252
	jz	.L169		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:485: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:486: 					blank_line(start_video);
	mov.w	r1, sp	# tmp253,
	ld.w	r0, [r13 + (-16)]	# tmp254, start_video
	st.w	[r1], r0	#, tmp254
	call	blank_line		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:487: 					VIDEO = (char *)start_video;
	ld.w	r0, [r13 + (-16)]	# start_video.78_33, start_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:487: 					VIDEO = (char *)start_video;
	st.w	[VIDEO], r0	# VIDEO, start_video.78_33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:489: 					s[0] = 0;
	ld.w	r0, [r13 + (8)]	# tmp255, s
	xor.w	r1, r1	# tmp256
	st.b	[r0], r1	# *s_155(D), tmp256
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:490: 					strcpy(s, _history[_history_idx]);
	ld.w	r1, [_history_idx]	# _history_idx.79_34, _history_idx
	mov.w	r0, 8	# tmp258,
	shl.w	r1, r0	# tmp257, tmp258
	mov.w	r0, _history	# tmp259,
	add.w	r1, r0 #222	# _35, tmp259
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:490: 					strcpy(s, _history[_history_idx]);
	mov.w	r0, sp	# tmp260,
	st.w	[r0 + (4)], r1	#, _35
	ld.w	r1, [r13 + (8)]	# tmp261, s
	st.w	[r0], r1	#, tmp261
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:491: 					len = strlen(s);
	mov.w	r1, sp	# tmp262,
	ld.w	r0, [r13 + (8)]	# tmp263, s
	st.w	[r1], r0	#, tmp263
	call	strlen		#
	st.w	[r13 + (-12)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:492: 					j = strlen(s);
	mov.w	r1, sp	# tmp264,
	ld.w	r0, [r13 + (8)]	# tmp265, s
	st.w	[r1], r0	#, tmp265
	call	strlen		#
	st.w	[r13 + (-4)], r0	# j,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:493: 					print_str(s);
	mov.w	r1, sp	# tmp266,
	ld.w	r0, [r13 + (8)]	# tmp267, s
	st.w	[r1], r0	#, tmp267
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:495: 					_history_idx++;
	ld.w	r0, [_history_idx]	# _history_idx.80_36, _history_idx
	add.w	r0, 1 #111	# _37,
	st.w	[_history_idx], r0	# _history_idx, _37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:496: 					if (_history_idx == _history_size)
	ld.w	r1, [_history_idx]	# _history_idx.81_38, _history_idx
	ld.w	r0, [_history_size]	# _history_size.82_39, _history_size
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:496: 					if (_history_idx == _history_size)
	cmp.w	r1, r0	# _history_idx.81_38, _history_size.82_39
	jnz	.L151		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:497: 						_history_idx = _history_size - 1;
	ld.w	r0, [_history_size]	# _history_size.83_40, _history_size
	add.w	r0, -1 #111	# _41,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:497: 						_history_idx = _history_size - 1;
	st.w	[_history_idx], r0	# _history_idx, _41
.L151:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:500: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:501: 					break;
	j	.L132		#
.L136:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:503: 					if (j > 0)
	ld.w	r1, [r13 + (-4)]	# tmp268, j
	xor.w	r0, r0	# tmp269
	cmp.w	r1, r0	# tmp268, tmp269
	jses	.L170		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:505: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:506: 						j--;
	ld.w	r0, [r13 + (-4)]	# tmp271, j
	add.w	r0, -1 #111	# tmp270,
	st.w	[r13 + (-4)], r0	# j, tmp270
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:507: 						VIDEO -= 2;
	ld.w	r0, [VIDEO]	# VIDEO.84_42, VIDEO
	add.w	r0, -2 #111	# _43,
	st.w	[VIDEO], r0	# VIDEO, _43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:508: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:510: 					break;
	j	.L170		#
.L133:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:512: 					if (s[j] != 0)
	ld.w	r1, [r13 + (-4)]	# j.85_44, j
	ld.w	r0, [r13 + (8)]	# tmp272, s
	add.w	r0, r1 #222	# _45, j.85_44
	ld.b	r0, [r0]	# _46, *_45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:512: 					if (s[j] != 0)
	sex.b	r1, r0	# tmp273, _46
	xor.w	r0, r0	# tmp274
	cmp.w	r1, r0	# tmp273, tmp274
	jz	.L171		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:514: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:515: 						j++;
	ld.w	r0, [r13 + (-4)]	# tmp276, j
	add.w	r0, 1 #111	# tmp275,
	st.w	[r13 + (-4)], r0	# j, tmp275
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:516: 						VIDEO += 2;
	ld.w	r0, [VIDEO]	# VIDEO.86_47, VIDEO
	add.w	r0, 2 #111	# _48,
	st.w	[VIDEO], r0	# VIDEO, _48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:517: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:519: 					break;
	j	.L171		#
.L140:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:521: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:522: 					VIDEO -= j*2;
	ld.w	r2, [VIDEO]	# VIDEO.87_49, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:522: 					VIDEO -= j*2;
	ld.w	r0, [r13 + (-4)]	# tmp277, j
	add.w	r0, r0 #222	# tmp278, tmp277
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:522: 					VIDEO -= j*2;
	mov.w	r1, r0	# _52, _51
neg.w	r1	# _52
	mov.w	r0, r2	# _53, VIDEO.87_49
	add.w	r0, r1 #222	# _53, _52
	st.w	[VIDEO], r0	# VIDEO, _53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:523: 					j = 0;
	xor.w	r0, r0	# tmp279
	st.w	[r13 + (-4)], r0	# j, tmp279
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:524: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:525: 					break;
	j	.L132		#
.L138:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:528: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:529: 					VIDEO += (len-j)*2;
	ld.w	r2, [VIDEO]	# VIDEO.88_54, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:529: 					VIDEO += (len-j)*2;
	ld.w	r0, [r13 + (-12)]	# tmp280, len
	ld.w	r1, [r13 + (-4)]	# tmp281, j
	sub.w	r0, r1 #222	# _55, tmp281
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:529: 					VIDEO += (len-j)*2;
	add.w	r0, r0 #222	# tmp282, _55
	mov.w	r1, r0	# _57, _56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:529: 					VIDEO += (len-j)*2;
	mov.w	r0, r2	# _58, VIDEO.88_54
	add.w	r0, r1 #222	# _58, _57
	st.w	[VIDEO], r0	# VIDEO, _58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:530: 					j = len;
	ld.w	r0, [r13 + (-12)]	# tmp283, len
	st.w	[r13 + (-4)], r0	# j, tmp283
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:531: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:532: 					break;
	j	.L132		#
.L139:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:534: 					if (j < len)
	ld.w	r1, [r13 + (-4)]	# tmp284, j
	ld.w	r0, [r13 + (-12)]	# tmp285, len
	cmp.w	r1, r0	# tmp284, tmp285
	jges	.L172		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:536: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:537: 						prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.89_59, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:537: 						prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.89_59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:538: 						for (k = j; k < len; k++)
	ld.w	r0, [r13 + (-4)]	# tmp286, j
	st.w	[r13 + (-8)], r0	# k, tmp286
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:538: 						for (k = j; k < len; k++)
	j	.L155		#
.L156:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:540: 							s[k] = s[k+1];
	ld.w	r0, [r13 + (-8)]	# k.90_60, k
	add.w	r0, 1 #111	# _61,
	ld.w	r1, [r13 + (8)]	# tmp287, s
	add.w	r1, r0 #222	# _62, _61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:540: 							s[k] = s[k+1];
	ld.w	r2, [r13 + (-8)]	# k.91_63, k
	ld.w	r0, [r13 + (8)]	# tmp288, s
	add.w	r0, r2 #222	# _64, k.91_63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:540: 							s[k] = s[k+1];
	ld.b	r1, [r1]	# _65, *_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:540: 							s[k] = s[k+1];
	st.b	[r0], r1	# *_64, _65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:541: 							put_char(s[k]);
	ld.w	r1, [r13 + (-8)]	# k.92_66, k
	ld.w	r0, [r13 + (8)]	# tmp289, s
	add.w	r0, r1 #222	# _67, k.92_66
	ld.b	r0, [r0]	# _68, *_67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:541: 							put_char(s[k]);
	sex.b	r0, r0	# _69, _68
	mov.w	r1, sp	# tmp290,
	st.w	[r1], r0	#, _69
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:538: 						for (k = j; k < len; k++)
	ld.w	r0, [r13 + (-8)]	# tmp292, k
	add.w	r0, 1 #111	# tmp291,
	st.w	[r13 + (-8)], r0	# k, tmp291
.L155:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:538: 						for (k = j; k < len; k++)
	ld.w	r1, [r13 + (-8)]	# tmp293, k
	ld.w	r0, [r13 + (-12)]	# tmp294, len
	cmp.w	r1, r0	# tmp293, tmp294
	jss	.L156		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:543: 						len--;
	ld.w	r0, [r13 + (-12)]	# tmp296, len
	add.w	r0, -1 #111	# tmp295,
	st.w	[r13 + (-12)], r0	# len, tmp295
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:544: 						VIDEO = (char *)prev_video;
	ld.w	r0, [r13 + (-20)]	# prev_video.93_70, prev_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:544: 						VIDEO = (char *)prev_video;
	st.w	[VIDEO], r0	# VIDEO, prev_video.93_70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:545: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:547: 					break;
	j	.L172		#
.L142:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:549: 					if (j > 0)
	ld.w	r1, [r13 + (-4)]	# tmp297, j
	xor.w	r0, r0	# tmp298
	cmp.w	r1, r0	# tmp297, tmp298
	jses	.L173		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:551: 						if (j == len)
	ld.w	r1, [r13 + (-4)]	# tmp299, j
	ld.w	r0, [r13 + (-12)]	# tmp300, len
	cmp.w	r1, r0	# tmp299, tmp300
	jnz	.L158		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:553: 							j--;
	ld.w	r0, [r13 + (-4)]	# tmp302, j
	add.w	r0, -1 #111	# tmp301,
	st.w	[r13 + (-4)], r0	# j, tmp301
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:554: 							len--;
	ld.w	r0, [r13 + (-12)]	# tmp304, len
	add.w	r0, -1 #111	# tmp303,
	st.w	[r13 + (-12)], r0	# len, tmp303
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:555: 							s[j] = 0;
	ld.w	r1, [r13 + (-4)]	# j.94_71, j
	ld.w	r0, [r13 + (8)]	# tmp305, s
	add.w	r0, r1 #222	# _72, j.94_71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:555: 							s[j] = 0;
	xor.w	r1, r1	# tmp306
	st.b	[r0], r1	# *_72, tmp306
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:556: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:557: 							VIDEO -= 2;						
	ld.w	r0, [VIDEO]	# VIDEO.95_73, VIDEO
	add.w	r0, -2 #111	# _74,
	st.w	[VIDEO], r0	# VIDEO, _74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:558: 							*VIDEO = 0;
	ld.w	r0, [VIDEO]	# VIDEO.96_75, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:558: 							*VIDEO = 0;
	xor.w	r1, r1	# tmp307
	st.b	[r0], r1	# *VIDEO.96_75, tmp307
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:559: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:577: 					break;
	j	.L173		#
.L158:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:563: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:564: 							VIDEO -= 2;
	ld.w	r0, [VIDEO]	# VIDEO.97_76, VIDEO
	add.w	r0, -2 #111	# _77,
	st.w	[VIDEO], r0	# VIDEO, _77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:565: 							prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.98_78, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:565: 							prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.98_78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:566: 							for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-4)]	# tmp308, j
	st.w	[r13 + (-8)], r0	# k, tmp308
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:566: 							for (k = j; k <= len; k++)
	j	.L159		#
.L160:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:568: 								s[k-1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.99_79, k
	ld.w	r1, [r13 + (8)]	# tmp309, s
	add.w	r1, r0 #222	# _80, k.99_79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:568: 								s[k-1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.100_81, k
	mov.w	r2, r0	# _82, k.100_81
	add.w	r2, -1 #111	# _82,
	ld.w	r0, [r13 + (8)]	# tmp310, s
	add.w	r0, r2 #222	# _83, _82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:568: 								s[k-1] = s[k];
	ld.b	r1, [r1]	# _84, *_80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:568: 								s[k-1] = s[k];
	st.b	[r0], r1	# *_83, _84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:569: 								put_char(s[k-1]);
	ld.w	r0, [r13 + (-8)]	# k.101_85, k
	mov.w	r1, r0	# _86, k.101_85
	add.w	r1, -1 #111	# _86,
	ld.w	r0, [r13 + (8)]	# tmp311, s
	add.w	r0, r1 #222	# _87, _86
	ld.b	r0, [r0]	# _88, *_87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:569: 								put_char(s[k-1]);
	sex.b	r0, r0	# _89, _88
	mov.w	r1, sp	# tmp312,
	st.w	[r1], r0	#, _89
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:566: 							for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-8)]	# tmp314, k
	add.w	r0, 1 #111	# tmp313,
	st.w	[r13 + (-8)], r0	# k, tmp313
.L159:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:566: 							for (k = j; k <= len; k++)
	ld.w	r1, [r13 + (-8)]	# tmp315, k
	ld.w	r0, [r13 + (-12)]	# tmp316, len
	cmp.w	r1, r0	# tmp315, tmp316
	jses	.L160		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:571: 							j--;
	ld.w	r0, [r13 + (-4)]	# tmp318, j
	add.w	r0, -1 #111	# tmp317,
	st.w	[r13 + (-4)], r0	# j, tmp317
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:572: 							len--;
	ld.w	r0, [r13 + (-12)]	# tmp320, len
	add.w	r0, -1 #111	# tmp319,
	st.w	[r13 + (-12)], r0	# len, tmp319
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:573: 							VIDEO = (char *)prev_video;
	ld.w	r0, [r13 + (-20)]	# prev_video.102_90, prev_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:573: 							VIDEO = (char *)prev_video;
	st.w	[VIDEO], r0	# VIDEO, prev_video.102_90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:574: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:577: 					break;
	j	.L173		#
.L134:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:579: 					if (j == len)
	ld.w	r1, [r13 + (-4)]	# tmp321, j
	ld.w	r0, [r13 + (-12)]	# tmp322, len
	cmp.w	r1, r0	# tmp321, tmp322
	jnz	.L161		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:581: 						s[j] = vk_to_char(i);
	mov.w	r1, sp	# tmp323,
	ld.w	r0, [r13 + (-24)]	# tmp324, i
	st.w	[r1], r0	#, tmp324
	call	vk_to_char		#
	mov.w	r2, r0	# _91,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:581: 						s[j] = vk_to_char(i);
	ld.w	r1, [r13 + (-4)]	# j.103_92, j
	ld.w	r0, [r13 + (8)]	# tmp325, s
	add.w	r0, r1 #222	# _93, j.103_92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:581: 						s[j] = vk_to_char(i);
	mov.w	r1, r2	# _94, _91
	st.b	[r0], r1	# *_93, _94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:582: 						s[j+1] = 0;
	ld.w	r0, [r13 + (-4)]	# j.104_95, j
	mov.w	r1, r0	# _96, j.104_95
	add.w	r1, 1 #111	# _96,
	ld.w	r0, [r13 + (8)]	# tmp326, s
	add.w	r0, r1 #222	# _97, _96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:582: 						s[j+1] = 0;
	xor.w	r1, r1	# tmp327
	st.b	[r0], r1	# *_97, tmp327
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:583: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:584: 						put_char(s[j]);
	ld.w	r1, [r13 + (-4)]	# j.105_98, j
	ld.w	r0, [r13 + (8)]	# tmp328, s
	add.w	r0, r1 #222	# _99, j.105_98
	ld.b	r0, [r0]	# _100, *_99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:584: 						put_char(s[j]);
	sex.b	r0, r0	# _101, _100
	mov.w	r1, sp	# tmp329,
	st.w	[r1], r0	#, _101
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:585: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:586: 						j++;
	ld.w	r0, [r13 + (-4)]	# tmp331, j
	add.w	r0, 1 #111	# tmp330,
	st.w	[r13 + (-4)], r0	# j, tmp330
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:587: 						len++;
	ld.w	r0, [r13 + (-12)]	# tmp333, len
	add.w	r0, 1 #111	# tmp332,
	st.w	[r13 + (-12)], r0	# len, tmp332
	j	.L166		#
.L161:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:590: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:591: 						prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.106_102, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:591: 						prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.106_102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:592: 						for (k = len; k >= j; k--)
	ld.w	r0, [r13 + (-12)]	# tmp334, len
	st.w	[r13 + (-8)], r0	# k, tmp334
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:592: 						for (k = len; k >= j; k--)
	j	.L162		#
.L163:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:594: 							s[k+1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.107_103, k
	ld.w	r1, [r13 + (8)]	# tmp335, s
	add.w	r1, r0 #222	# _104, k.107_103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:594: 							s[k+1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.108_105, k
	mov.w	r2, r0	# _106, k.108_105
	add.w	r2, 1 #111	# _106,
	ld.w	r0, [r13 + (8)]	# tmp336, s
	add.w	r0, r2 #222	# _107, _106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:594: 							s[k+1] = s[k];
	ld.b	r1, [r1]	# _108, *_104
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:594: 							s[k+1] = s[k];
	st.b	[r0], r1	# *_107, _108
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:592: 						for (k = len; k >= j; k--)
	ld.w	r0, [r13 + (-8)]	# tmp338, k
	add.w	r0, -1 #111	# tmp337,
	st.w	[r13 + (-8)], r0	# k, tmp337
.L162:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:592: 						for (k = len; k >= j; k--)
	ld.w	r1, [r13 + (-8)]	# tmp339, k
	ld.w	r0, [r13 + (-4)]	# tmp340, j
	cmp.w	r1, r0	# tmp339, tmp340
	jges	.L163		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:596: 						s[j] = vk_to_char(i);
	mov.w	r1, sp	# tmp341,
	ld.w	r0, [r13 + (-24)]	# tmp342, i
	st.w	[r1], r0	#, tmp342
	call	vk_to_char		#
	mov.w	r2, r0	# _109,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:596: 						s[j] = vk_to_char(i);
	ld.w	r1, [r13 + (-4)]	# j.109_110, j
	ld.w	r0, [r13 + (8)]	# tmp343, s
	add.w	r0, r1 #222	# _111, j.109_110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:596: 						s[j] = vk_to_char(i);
	mov.w	r1, r2	# _112, _109
	st.b	[r0], r1	# *_111, _112
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:597: 						for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-4)]	# tmp344, j
	st.w	[r13 + (-8)], r0	# k, tmp344
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:597: 						for (k = j; k <= len; k++)
	j	.L164		#
.L165:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:599: 							put_char(s[k]);
	ld.w	r1, [r13 + (-8)]	# k.110_113, k
	ld.w	r0, [r13 + (8)]	# tmp345, s
	add.w	r0, r1 #222	# _114, k.110_113
	ld.b	r0, [r0]	# _115, *_114
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:599: 							put_char(s[k]);
	sex.b	r0, r0	# _116, _115
	mov.w	r1, sp	# tmp346,
	st.w	[r1], r0	#, _116
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:597: 						for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-8)]	# tmp348, k
	add.w	r0, 1 #111	# tmp347,
	st.w	[r13 + (-8)], r0	# k, tmp347
.L164:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:597: 						for (k = j; k <= len; k++)
	ld.w	r1, [r13 + (-8)]	# tmp349, k
	ld.w	r0, [r13 + (-12)]	# tmp350, len
	cmp.w	r1, r0	# tmp349, tmp350
	jses	.L165		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:601: 						j++;
	ld.w	r0, [r13 + (-4)]	# tmp352, j
	add.w	r0, 1 #111	# tmp351,
	st.w	[r13 + (-4)], r0	# j, tmp351
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:602: 						len++;
	ld.w	r0, [r13 + (-12)]	# tmp354, len
	add.w	r0, 1 #111	# tmp353,
	st.w	[r13 + (-12)], r0	# len, tmp353
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:603: 						VIDEO = (char *)(prev_video + 2);
	ld.w	r0, [r13 + (-20)]	# tmp355, prev_video
	add.w	r0, 2 #111	# _117,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:603: 						VIDEO = (char *)(prev_video + 2);
	st.w	[VIDEO], r0	# VIDEO, _118
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:605: 						toggle_cursor();
	call	toggle_cursor		#
	j	.L166		#
.L168:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:464: 						break;
	nop	
	j	.L166		#
.L169:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:484: 						break;
	nop	
	j	.L166		#
.L170:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:510: 					break;
	nop	
	j	.L166		#
.L171:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:519: 					break;
	nop	
	j	.L166		#
.L172:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:547: 					break;
	nop	
	j	.L166		#
.L173:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:577: 					break;
	nop	
.L132:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:414: 		if ((packet_counter++) == 100) {
	j	.L166		#
.L167:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:611: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	gets, .-gets
	.p2align	1
	.global	init_stdio
	.type	init_stdio, @function
init_stdio:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:614: 	*PS2_HANDLER_INSTR 				= 1;
	ld.w	r0, [PS2_HANDLER_INSTR]	# PS2_HANDLER_INSTR.111_1, PS2_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:614: 	*PS2_HANDLER_INSTR 				= 1;
	mov.s	r1, 1	# tmp36,
	st.s	[r0], r1	# *PS2_HANDLER_INSTR.111_1, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:615: 	*PS2_HANDLER_ADDR 				= (int)irq_triggered;
	ld.w	r0, [PS2_HANDLER_ADDR]	# PS2_HANDLER_ADDR.112_2, PS2_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:615: 	*PS2_HANDLER_ADDR 				= (int)irq_triggered;
	mov.w	r1, irq_triggered	# irq_triggered.113_3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:615: 	*PS2_HANDLER_ADDR 				= (int)irq_triggered;
	st.w	[r0], r1	# *PS2_HANDLER_ADDR.112_2, irq_triggered.113_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:616: 	*KEY_PRESSED_HANDLER_INSTR 		= 1;
	ld.w	r0, [KEY_PRESSED_HANDLER_INSTR]	# KEY_PRESSED_HANDLER_INSTR.114_4, KEY_PRESSED_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:616: 	*KEY_PRESSED_HANDLER_INSTR 		= 1;
	mov.s	r1, 1	# tmp37,
	st.s	[r0], r1	# *KEY_PRESSED_HANDLER_INSTR.114_4, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:617: 	*KEY_PRESSED_HANDLER_ADDR 		= (int)&key_pressed;
	ld.w	r0, [KEY_PRESSED_HANDLER_ADDR]	# KEY_PRESSED_HANDLER_ADDR.115_5, KEY_PRESSED_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:617: 	*KEY_PRESSED_HANDLER_ADDR 		= (int)&key_pressed;
	mov.w	r1, key_pressed	# key_pressed.116_6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:617: 	*KEY_PRESSED_HANDLER_ADDR 		= (int)&key_pressed;
	st.w	[r0], r1	# *KEY_PRESSED_HANDLER_ADDR.115_5, key_pressed.116_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:618: 	*KEY_RELEASED_HANDLER_INSTR 	= 1;
	ld.w	r0, [KEY_RELEASED_HANDLER_INSTR]	# KEY_RELEASED_HANDLER_INSTR.117_7, KEY_RELEASED_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:618: 	*KEY_RELEASED_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp38,
	st.s	[r0], r1	# *KEY_RELEASED_HANDLER_INSTR.117_7, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:619: 	*KEY_RELEASED_HANDLER_ADDR	 	= (int)&key_released;
	ld.w	r0, [KEY_RELEASED_HANDLER_ADDR]	# KEY_RELEASED_HANDLER_ADDR.118_8, KEY_RELEASED_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:619: 	*KEY_RELEASED_HANDLER_ADDR	 	= (int)&key_released;
	mov.w	r1, key_released	# key_released.119_9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:619: 	*KEY_RELEASED_HANDLER_ADDR	 	= (int)&key_released;
	st.w	[r0], r1	# *KEY_RELEASED_HANDLER_ADDR.118_8, key_released.119_9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:620: 	*VIRTUAL_KEY_ADDR = 0;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.120_10, VIRTUAL_KEY_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:620: 	*VIRTUAL_KEY_ADDR = 0;
	xor.w	r1, r1	# tmp39
	st.s	[r0], r1	# *VIRTUAL_KEY_ADDR.120_10, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:621: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_stdio, .-init_stdio
	.p2align	1
	.global	delay
	.type	delay, @function
delay:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:624: 	int e1 = 0, e2 = 0;	
	xor.w	r0, r0	# tmp30
	st.w	[r13 + (-4)], r0	# e1, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:624: 	int e1 = 0, e2 = 0;	
	xor.w	r0, r0	# tmp31
	st.w	[r13 + (-8)], r0	# e2, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:625: 	while(millis > 0)
	j	.L176		#
.L178:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:627: 		e1 = *PORT_MILLIS & 0x7fffffff;
	ld.w	r0, [PORT_MILLIS]	# PORT_MILLIS.121_1, PORT_MILLIS
	ld.w	r0, [r0]	# _2, *PORT_MILLIS.121_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:627: 		e1 = *PORT_MILLIS & 0x7fffffff;
	mov.w	r1, 2147483647	# tmp33,
	and.w	r0, r1	# tmp32, tmp33
	st.w	[r13 + (-4)], r0	# e1, tmp32
.L177:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:629: 			e2 = *PORT_MILLIS & 0x7fffffff;
	ld.w	r0, [PORT_MILLIS]	# PORT_MILLIS.122_3, PORT_MILLIS
	ld.w	r0, [r0]	# _4, *PORT_MILLIS.122_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:629: 			e2 = *PORT_MILLIS & 0x7fffffff;
	mov.w	r1, 2147483647	# tmp35,
	and.w	r0, r1	# tmp34, tmp35
	st.w	[r13 + (-8)], r0	# e2, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:630: 		} while (e1 == e2);
	ld.w	r1, [r13 + (-4)]	# tmp36, e1
	ld.w	r0, [r13 + (-8)]	# tmp37, e2
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L177		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:631: 		millis--;
	ld.w	r0, [r13 + (8)]	# tmp39, millis
	add.w	r0, -1 #111	# tmp38,
	st.w	[r13 + (8)], r0	# millis, tmp38
.L176:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:625: 	while(millis > 0)
	ld.w	r1, [r13 + (8)]	# tmp40, millis
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jgs	.L178		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:633: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	delay, .-delay
	.p2align	1
	.global	xy
	.type	xy, @function
xy:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:636: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	ld.w	r1, [r13 + (12)]	# tmp32, y
	mov.w	r0, r1	# tmp33, tmp32
	mov.w	r2, 2	# tmp35,
	shl.w	r0, r2	# tmp34, tmp35
	add.w	r0, r1 #222	# tmp33, tmp32
	mov.w	r1, 5	# tmp37,
	shl.w	r0, r1	# tmp36, tmp37
	mov.w	r1, r0	# _1, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:636: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	mov.w	r0, 1024	# tmp38,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:636: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	ld.w	r0, [r13 + (8)]	# tmp39, x
	add.w	r0, r0 #222	# tmp40, tmp39
	mov.w	r1, r0	# _3, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:636: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:636: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	add.w	r0, -1 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:636: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	st.w	[VIDEO], r0	# VIDEO, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:637: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	xy, .-xy
	.p2align	1
	.global	get_millis
	.type	get_millis, @function
get_millis:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:640: 	return *PORT_MILLIS & 0x7fffffff;
	ld.w	r0, [PORT_MILLIS]	# PORT_MILLIS.123_1, PORT_MILLIS
	ld.w	r0, [r0]	# _2, *PORT_MILLIS.123_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:640: 	return *PORT_MILLIS & 0x7fffffff;
	mov.w	r1, 2147483647	# tmp30,
	and.w	r0, r1	# _4, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:641: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	get_millis, .-get_millis
	.p2align	1
	.global	is_key_pressed
	.type	is_key_pressed, @function
is_key_pressed:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:646: 	if (key_is_pressed) {
	ld.w	r1, [key_is_pressed]	# key_is_pressed.124_1, key_is_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:646: 	if (key_is_pressed) {
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# key_is_pressed.124_1, tmp29
	jz	.L183		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:647: 		key_is_pressed = 0;
	xor.w	r0, r0	# tmp30
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:648: 		return vk_pressed;
	ld.w	r0, [vk_pressed]	# _2, vk_pressed
	j	.L184		#
.L183:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:650: 	return 0;
	xor.w	r0, r0	# _2
.L184:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:651: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	is_key_pressed, .-is_key_pressed
	.p2align	1
	.global	is_key_released
	.type	is_key_released, @function
is_key_released:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:656: 	if (key_is_released) {
	ld.w	r1, [key_is_released]	# key_is_released.125_1, key_is_released
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:656: 	if (key_is_released) {
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# key_is_released.125_1, tmp29
	jz	.L186		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:657: 		key_is_released = 0;
	xor.w	r0, r0	# tmp30
	st.w	[key_is_released], r0	# key_is_released, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:658: 		return vk_released;
	ld.w	r0, [vk_released]	# _2, vk_released
	j	.L187		#
.L186:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:660: 	return 0;
	xor.w	r0, r0	# _2
.L187:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:661: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	is_key_released, .-is_key_released
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"