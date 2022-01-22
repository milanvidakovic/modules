	.file	"stdio.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c -mel
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
	.global	altgr_pressed
	.p2align	2
	.type	altgr_pressed, @object
	.size	altgr_pressed, 4
altgr_pressed:
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:57: 	*PORT_VIDEO_MODE = m;
	ld.w	r0, [PORT_VIDEO_MODE]	# PORT_VIDEO_MODE.0_1, PORT_VIDEO_MODE
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:57: 	*PORT_VIDEO_MODE = m;
	ld.w	r1, [r13 + (8)]	# tmp28, m
	st.s	[r0], r1	# *PORT_VIDEO_MODE.0_1, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:58: 	current_video_mode = m;
	ld.w	r0, [r13 + (8)]	# tmp29, m
	st.w	[current_video_mode], r0	# current_video_mode, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:59: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	video_mode, .-video_mode
	.p2align	1
	.global	cls
	.type	cls, @function
cls:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:80: 	color = c;
	ld.w	r0, [r13 + (8)]	# tmp56, c
	st.w	[color], r0	# color, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:82: 	v = (short *)1024;
	mov.w	r0, 1024	# tmp57,
	st.w	[r13 + (-8)], r0	# v, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:83: 	if (current_video_mode == 0)
	ld.w	r1, [current_video_mode]	# current_video_mode.1_1, current_video_mode
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:83: 	if (current_video_mode == 0)
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# current_video_mode.1_1, tmp58
	jnz	.L3		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:86: 		for (i = 0; i < 9600*2; i++)
	xor.w	r0, r0	# tmp59
	st.w	[r13 + (-4)], r0	# i, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:86: 		for (i = 0; i < 9600*2; i++)
	j	.L4		#
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:88: 			v[i] = color << 8;  // swap
	ld.w	r1, [color]	# color.2_2, color
	mov.w	r0, 8	# tmp60,
	shl.w	r1, r0	# _3, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:88: 			v[i] = color << 8;  // swap
	ld.w	r0, [r13 + (-4)]	# i.3_4, i
	add.w	r0, r0 #222	# tmp61, i.3_4
	mov.w	r2, r0	# _5, tmp61
	ld.w	r0, [r13 + (-8)]	# tmp62, v
	add.w	r0, r2 #222	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:88: 			v[i] = color << 8;  // swap
	st.s	[r0], r1	# *_6, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:86: 		for (i = 0; i < 9600*2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp64, i
	add.w	r0, 1 #111	# tmp63,
	st.w	[r13 + (-4)], r0	# i, tmp63
.L4:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:86: 		for (i = 0; i < 9600*2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp65, i
	mov.w	r0, 19199	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jses	.L5		#
	j	.L6		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:90: 	} else if (current_video_mode == 1) 
	ld.w	r1, [current_video_mode]	# current_video_mode.4_8, current_video_mode
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:90: 	} else if (current_video_mode == 1) 
	mov.w	r0, 1	# tmp67,
	cmp.w	r1, r0	# current_video_mode.4_8, tmp67
	jnz	.L7		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	xor.w	r0, r0	# tmp68
	st.w	[r13 + (-4)], r0	# i, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	j	.L8		#
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r0, [color]	# color.5_9, color
	mov.w	r1, 4	# tmp69,
	shl.w	r0, r1	# _10, tmp69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r1, [color]	# color.6_12, color
	or.w	r0, r1	# tmp70, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r1, [color]	# color.7_15, color
	mov.w	r2, 8	# tmp71,
	shl.w	r1, r2	# _16, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	or.w	r0, r1	# tmp72, _17
	mov.w	r1, r0	# _18, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r0, [color]	# color.8_19, color
	mov.w	r2, 12	# tmp73,
	shl.w	r0, r2	# _20, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	mov.w	r2, r0	# _21, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	ld.w	r0, [r13 + (-4)]	# i.9_22, i
	add.w	r0, r0 #222	# tmp74, i.9_22
	mov.w	r3, r0	# _23, tmp74
	ld.w	r0, [r13 + (-8)]	# tmp75, v
	add.w	r0, r3 #222	# _24, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	or.w	r1, r2	# tmp76, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:95: 			v[i] = color | (color<<4) | (color<<8) | (color<<12);
	st.s	[r0], r1	# *_24, _25
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp78, i
	add.w	r0, 1 #111	# tmp77,
	st.w	[r13 + (-4)], r0	# i, tmp77
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:93: 		for (i = 0; i < 9600*2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp79, i
	mov.w	r0, 19199	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jses	.L9		#
	j	.L6		#
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:101: 		for (i = 0; i < 9600*2; i++)
	xor.w	r0, r0	# tmp81
	st.w	[r13 + (-4)], r0	# i, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:101: 		for (i = 0; i < 9600*2; i++)
	j	.L10		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:103: 			v[i] = (color)?0xffff:0;
	ld.w	r1, [color]	# color.11_26, color
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:103: 			v[i] = (color)?0xffff:0;
	xor.w	r0, r0	# tmp82
	cmp.w	r1, r0	# color.11_26, tmp82
	jz	.L11		#
	mov.s	r0, -1	# iftmp.10_33,
	j	.L12		#
.L11:
	xor.w	r0, r0	# iftmp.10_33
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:103: 			v[i] = (color)?0xffff:0;
	ld.w	r1, [r13 + (-4)]	# i.12_27, i
	add.w	r1, r1 #222	# tmp83, i.12_27
	mov.w	r2, r1	# _28, tmp83
	ld.w	r1, [r13 + (-8)]	# tmp84, v
	add.w	r1, r2 #222	# _29, _28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:103: 			v[i] = (color)?0xffff:0;
	st.s	[r1], r0	# *_29, iftmp.10_33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:101: 		for (i = 0; i < 9600*2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp86, i
	add.w	r0, 1 #111	# tmp85,
	st.w	[r13 + (-4)], r0	# i, tmp85
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:101: 		for (i = 0; i < 9600*2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp87, i
	mov.w	r0, 19199	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jses	.L13		#
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:106: 	VIDEO = (char *)0x401;	
	mov.w	r0, 1025	# tmp89,
	st.w	[VIDEO], r0	# VIDEO, tmp89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:107: }
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
	sub.w	sp, 12 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:113: 	vid = (char *)v;
	ld.w	r0, [r13 + (8)]	# tmp30, v
	st.w	[r13 + (-12)], r0	# vid, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:115: 	i = v;
	ld.w	r0, [r13 + (8)]	# tmp31, v
	st.w	[r13 + (-4)], r0	# i, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:116: 	i -= 1024;
	ld.w	r0, [r13 + (-4)]	# tmp33, i
	mov.w	r1, -1024	# tmp34,
	add.w	r0, r1 #222	# tmp32, tmp34
	st.w	[r13 + (-4)], r0	# i, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:117: 	i = i % 160;
	ld.w	r0, [r13 + (-4)]	# tmp36, i
	mov.w	r1, 160	# tmp38,
	div.w	r0, r1	# tmp37, tmp38
mov.w	r0, r14	# tmp37
	st.w	[r13 + (-4)], r0	# i, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:118: 	i = i / 2;
	ld.w	r0, [r13 + (-4)]	# tmp40, i
	mov.w	r2, 31	# tmp42,
	mov.w	r1, r0	# tmp41, tmp40
	shr.w	r1, r2	# tmp41, tmp42
	mov.w	r2, r1	# tmp43, tmp41
	add.w	r2, r0 #222	# tmp43, tmp40
	mov.w	r1, 1	# tmp45,
	mov.w	r0, r2	# tmp44, tmp43
	shr.w	r0, r1	# tmp44, tmp45
	st.w	[r13 + (-4)], r0	# i, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:119: 	i = i - 2;
	ld.w	r0, [r13 + (-4)]	# tmp47, i
	add.w	r0, -2 #111	# tmp46,
	st.w	[r13 + (-4)], r0	# i, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:120: 	if (i < 0)
	ld.w	r1, [r13 + (-4)]	# tmp48, i
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jges	.L15		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:121: 		j = 160 + i  - 2;
	ld.w	r0, [r13 + (-4)]	# tmp51, i
	add.w	r0, 158 #111	# tmp50,
	st.w	[r13 + (-8)], r0	# j, tmp50
	j	.L17		#
.L15:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:123: 		j = 160 - i - 2;
	mov.w	r0, 158	# tmp53,
	ld.w	r1, [r13 + (-4)]	# tmp54, i
	sub.w	r0, r1 #222	# tmp52, tmp54
	st.w	[r13 + (-8)], r0	# j, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:124: 	for (; i < j; i++)
	j	.L17		#
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:126: 		vid[i] = color;  // swap
	ld.w	r1, [color]	# color.13_1, color
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:126: 		vid[i] = color;  // swap
	ld.w	r2, [r13 + (-4)]	# i.14_2, i
	ld.w	r0, [r13 + (-12)]	# tmp55, vid
	add.w	r0, r2 #222	# _3, i.14_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:126: 		vid[i] = color;  // swap
	st.b	[r0], r1	# *_3, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:124: 	for (; i < j; i++)
	ld.w	r0, [r13 + (-4)]	# tmp57, i
	add.w	r0, 1 #111	# tmp56,
	st.w	[r13 + (-4)], r0	# i, tmp56
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:124: 	for (; i < j; i++)
	ld.w	r1, [r13 + (-4)]	# tmp58, i
	ld.w	r0, [r13 + (-8)]	# tmp59, j
	cmp.w	r1, r0	# tmp58, tmp59
	jss	.L18		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:128: }
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
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:136: 	v = (short*)1024;
	mov.w	r0, 1024	# tmp33,
	st.w	[r13 + (-8)], r0	# v, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:146: 	asm("mov.w r1, 1024\nmov.w r2, 1184\nmov.w r3, 9440\nblit\n");
# 146 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	mov.w r1, 1024
mov.w r2, 1184
mov.w r3, 9440
blit

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:147: 	for (j = 0; j < 40*2; j++)
	xor.w	r0, r0	# tmp34
	st.w	[r13 + (-4)], r0	# j, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:147: 	for (j = 0; j < 40*2; j++)
	j	.L20		#
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:149: 		v[59*40*2 + j] = color << 8;  // swap
	ld.w	r1, [color]	# color.15_1, color
	mov.w	r0, 8	# tmp35,
	shl.w	r1, r0	# _2, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:149: 		v[59*40*2 + j] = color << 8;  // swap
	ld.w	r0, [r13 + (-4)]	# tmp36, j
	mov.w	r2, 4720	# tmp37,
	add.w	r0, r2 #222	# _3, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:149: 		v[59*40*2 + j] = color << 8;  // swap
	add.w	r0, r0 #222	# tmp38, _4
	mov.w	r2, r0	# _5, tmp38
	ld.w	r0, [r13 + (-8)]	# tmp39, v
	add.w	r0, r2 #222	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:149: 		v[59*40*2 + j] = color << 8;  // swap
	st.s	[r0], r1	# *_6, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:147: 	for (j = 0; j < 40*2; j++)
	ld.w	r0, [r13 + (-4)]	# tmp41, j
	add.w	r0, 1 #111	# tmp40,
	st.w	[r13 + (-4)], r0	# j, tmp40
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:147: 	for (j = 0; j < 40*2; j++)
	ld.w	r1, [r13 + (-4)]	# tmp42, j
	mov.w	r0, 79	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jses	.L21		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:151: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:156: 	asm 
# 156 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:161: 	i = *VIRTUAL_KEY_ADDR;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.16_1, VIRTUAL_KEY_ADDR
	ld.s	r0, [r0]	# _2, *VIRTUAL_KEY_ADDR.16_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:161: 	i = *VIRTUAL_KEY_ADDR;
	sex.s	r0, r0	# tmp32, _2
	st.w	[r13 + (-8)], r0	# i, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:162: 	vk_pressed = i;
	ld.w	r0, [r13 + (-8)]	# tmp33, i
	st.w	[vk_pressed], r0	# vk_pressed, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:164: 	key_is_pressed = 1;
	mov.w	r0, 1	# tmp34,
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:166: 	if (i < 255) 
	ld.w	r1, [r13 + (-8)]	# tmp35, i
	mov.w	r0, 254	# tmp36,
	cmp.w	r1, r0	# tmp35, tmp36
	jgs	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:168: 		if ((ctrl_c == 1) && (i == 'C'))
	ld.w	r1, [ctrl_c]	# ctrl_c.17_3, ctrl_c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:168: 		if ((ctrl_c == 1) && (i == 'C'))
	mov.w	r0, 1	# tmp37,
	cmp.w	r1, r0	# ctrl_c.17_3, tmp37
	jnz	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:168: 		if ((ctrl_c == 1) && (i == 'C'))
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 67	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:170: 			ctrl_c = 2;
	mov.w	r0, 2	# tmp40,
	st.w	[ctrl_c], r0	# ctrl_c, tmp40
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:173: 		gets_finished = 1;
	mov.w	r0, 1	# tmp41,
	st.w	[gets_finished], r0	# gets_finished, tmp41
	j	.L25		#
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:177: 		switch(i)
	ld.w	r1, [r13 + (-8)]	# tmp42, i
	mov.w	r0, 4003	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jgs	.L25		#
	ld.w	r1, [r13 + (-8)]	# tmp44, i
	mov.w	r0, 4000	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jges	.L26		#
	ld.w	r1, [r13 + (-8)]	# tmp46, i
	mov.w	r0, 3004	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jgs	.L25		#
	ld.w	r1, [r13 + (-8)]	# tmp48, i
	mov.w	r0, 3003	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jges	.L26		#
	ld.w	r1, [r13 + (-8)]	# tmp50, i
	mov.w	r0, 3001	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L26		#
	ld.w	r1, [r13 + (-8)]	# tmp52, i
	mov.w	r0, 3001	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jgs	.L25		#
	ld.w	r1, [r13 + (-8)]	# tmp54, i
	mov.w	r0, 602	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jgs	.L25		#
	ld.w	r1, [r13 + (-8)]	# tmp56, i
	mov.w	r0, 601	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jges	.L27		#
	ld.w	r1, [r13 + (-8)]	# tmp58, i
	mov.w	r0, 502	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jgs	.L25		#
	ld.w	r1, [r13 + (-8)]	# tmp60, i
	mov.w	r0, 501	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jges	.L28		#
	ld.w	r1, [r13 + (-8)]	# tmp62, i
	mov.w	r0, 402	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jz	.L29		#
	ld.w	r1, [r13 + (-8)]	# tmp64, i
	mov.w	r0, 402	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jgs	.L25		#
	ld.w	r1, [r13 + (-8)]	# tmp66, i
	mov.w	r0, 401	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L30		#
	ld.w	r1, [r13 + (-8)]	# tmp68, i
	mov.w	r0, 401	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jgs	.L25		#
	ld.w	r1, [r13 + (-8)]	# tmp70, i
	mov.w	r0, 8	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L26		#
	ld.w	r1, [r13 + (-8)]	# tmp72, i
	mov.w	r0, 27	# tmp73,
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L26		#
	j	.L25		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:181: 				ctrl_c = 1;
	mov.w	r0, 1	# tmp74,
	st.w	[ctrl_c], r0	# ctrl_c, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:182: 				break;
	j	.L25		#
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:184: 				altgr_pressed = 1;
	mov.w	r0, 1	# tmp75,
	st.w	[altgr_pressed], r0	# altgr_pressed, tmp75
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:186: 				if (ctrl_c == 1)
	ld.w	r1, [ctrl_c]	# ctrl_c.18_4, ctrl_c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:186: 				if (ctrl_c == 1)
	mov.w	r0, 1	# tmp76,
	cmp.w	r1, r0	# ctrl_c.18_4, tmp76
	jnz	.L35		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:187: 					do_reset = 1;
	mov.w	r0, 1	# tmp77,
	st.w	[do_reset], r0	# do_reset, tmp77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:188: 				break;
	j	.L35		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:191: 				shift_pressed = 1;			
	mov.w	r0, 1	# tmp78,
	st.w	[shift_pressed], r0	# shift_pressed, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:192: 				break;
	j	.L25		#
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:202: 				if (i == VK_DELETE && do_reset == 1)
	ld.w	r1, [r13 + (-8)]	# tmp79, i
	mov.w	r0, 3003	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jnz	.L32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:202: 				if (i == VK_DELETE && do_reset == 1)
	ld.w	r1, [do_reset]	# do_reset.19_5, do_reset
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:202: 				if (i == VK_DELETE && do_reset == 1)
	mov.w	r0, 1	# tmp81,
	cmp.w	r1, r0	# do_reset.19_5, tmp81
	jnz	.L32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:204: 					cls(color);
	ld.w	r0, [color]	# color.20_6, color
	mov.w	r1, sp	# tmp82,
	st.w	[r1], r0	#, color.20_6
	call	cls		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:206: 					for (p = (short *)8; p < (short *)128; p++) {
	mov.w	r0, 8	# tmp83,
	st.w	[r13 + (-4)], r0	# p, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:206: 					for (p = (short *)8; p < (short *)128; p++) {
	j	.L33		#
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:207: 						*p = 0;
	ld.w	r0, [r13 + (-4)]	# tmp84, p
	xor.w	r1, r1	# tmp85
	st.s	[r0], r1	# *p_7, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:206: 					for (p = (short *)8; p < (short *)128; p++) {
	ld.w	r0, [r13 + (-4)]	# tmp87, p
	add.w	r0, 2 #111	# tmp86,
	st.w	[r13 + (-4)], r0	# p, tmp86
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:206: 					for (p = (short *)8; p < (short *)128; p++) {
	ld.w	r1, [r13 + (-4)]	# tmp88, p
	mov.w	r0, 127	# tmp89,
	cmp.w	r1, r0	# tmp88, tmp89
	jse	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:209: 					p = 0;
	xor.w	r0, r0	# tmp90
	st.w	[r13 + (-4)], r0	# p, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:210: 					*p = 1;
	ld.w	r0, [r13 + (-4)]	# tmp91, p
	mov.s	r1, 1	# tmp92,
	st.s	[r0], r1	# *p_25, tmp92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:211: 					int *inst = (int *)2;
	mov.w	r0, 2	# tmp93,
	st.w	[r13 + (-12)], r0	# inst, tmp93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:212: 					*inst = 39424;
	ld.w	r0, [r13 + (-12)]	# tmp94, inst
	mov.w	r1, 39424	# tmp95,
	st.w	[r0], r1	# *inst_27, tmp95
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:213: 					asm("j 0"); //reset();
# 213 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	j 0
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:215: 				gets_finished = 1;
	mov.w	r0, 1	# tmp96,
	st.w	[gets_finished], r0	# gets_finished, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:216: 				break;
	j	.L25		#
.L35:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:188: 				break;
	nop	
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:219: 	asm 
# 219 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:223: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	key_pressed, .-key_pressed
	.global	PORT_LED
	.data
	.p2align	2
	.type	PORT_LED, @object
	.size	PORT_LED, 4
PORT_LED:
	.long	-2147482978
	.text
	.p2align	1
	.global	key_released
	.type	key_released, @function
key_released:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:230: 	asm 
# 230 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:235: 	key_is_released = 1;
	mov.w	r0, 1	# tmp28,
	st.w	[key_is_released], r0	# key_is_released, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:237: 	i = *VIRTUAL_KEY_ADDR;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.21_1, VIRTUAL_KEY_ADDR
	ld.s	r0, [r0]	# _2, *VIRTUAL_KEY_ADDR.21_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:237: 	i = *VIRTUAL_KEY_ADDR;
	sex.s	r0, r0	# tmp29, _2
	st.w	[r13 + (-4)], r0	# i, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:238: 	vk_released = i;
	ld.w	r0, [r13 + (-4)]	# tmp30, i
	st.w	[vk_released], r0	# vk_released, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:239: 	if ((i == VK_LEFT_SHIFT) || (i == VK_RIGHT_SHIFT)) 
	ld.w	r1, [r13 + (-4)]	# tmp31, i
	mov.w	r0, 501	# tmp32,
	cmp.w	r1, r0	# tmp31, tmp32
	jz	.L37		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:239: 	if ((i == VK_LEFT_SHIFT) || (i == VK_RIGHT_SHIFT)) 
	ld.w	r1, [r13 + (-4)]	# tmp33, i
	mov.w	r0, 502	# tmp34,
	cmp.w	r1, r0	# tmp33, tmp34
	jnz	.L38		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:241: 		shift_pressed = 0;
	xor.w	r0, r0	# tmp35
	st.w	[shift_pressed], r0	# shift_pressed, tmp35
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:243: 	if ((i == VK_LEFT_CONTROL) || (i == VK_RIGHT_CONTROL)) 
	ld.w	r1, [r13 + (-4)]	# tmp36, i
	mov.w	r0, 601	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:243: 	if ((i == VK_LEFT_CONTROL) || (i == VK_RIGHT_CONTROL)) 
	ld.w	r1, [r13 + (-4)]	# tmp38, i
	mov.w	r0, 602	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L40		#
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:245: 		ctrl_c = 0;
	xor.w	r0, r0	# tmp40
	st.w	[ctrl_c], r0	# ctrl_c, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:246: 		do_reset = 0;
	xor.w	r0, r0	# tmp41
	st.w	[do_reset], r0	# do_reset, tmp41
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:248: 	if ((i == VK_LEFT_ALT) || (i == VK_RIGHT_ALT)) {
	ld.w	r1, [r13 + (-4)]	# tmp42, i
	mov.w	r0, 401	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L41		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:248: 	if ((i == VK_LEFT_ALT) || (i == VK_RIGHT_ALT)) {
	ld.w	r1, [r13 + (-4)]	# tmp44, i
	mov.w	r0, 402	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L42		#
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:249: 		altgr_pressed = 0;
	xor.w	r0, r0	# tmp46
	st.w	[altgr_pressed], r0	# altgr_pressed, tmp46
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:253: 	asm 
# 253 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:257: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:262: 	if (vk == 32)
	ld.w	r1, [r13 + (8)]	# tmp60, vk
	mov.w	r0, 32	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jnz	.L44		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:263: 		return vk;
	ld.w	r0, [r13 + (8)]	# _33, vk
	j	.L45		#
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:264: 	if ((vk >= 'A') && (vk <= 'Z')) 
	ld.w	r1, [r13 + (8)]	# tmp62, vk
	mov.w	r0, 64	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jses	.L46		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:264: 	if ((vk >= 'A') && (vk <= 'Z')) 
	ld.w	r1, [r13 + (8)]	# tmp64, vk
	mov.w	r0, 90	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jgs	.L46		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:267: 		switch(vk) {
	ld.w	r1, [r13 + (8)]	# tmp66, vk
	mov.w	r0, 90	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L47		#
	ld.w	r1, [r13 + (8)]	# tmp68, vk
	mov.w	r0, 90	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jgs	.L48		#
	ld.w	r1, [r13 + (8)]	# tmp70, vk
	mov.w	r0, 89	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L49		#
	ld.w	r1, [r13 + (8)]	# tmp72, vk
	mov.w	r0, 89	# tmp73,
	cmp.w	r1, r0	# tmp72, tmp73
	jgs	.L48		#
	ld.w	r1, [r13 + (8)]	# tmp74, vk
	mov.w	r0, 87	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jz	.L50		#
	ld.w	r1, [r13 + (8)]	# tmp76, vk
	mov.w	r0, 87	# tmp77,
	cmp.w	r1, r0	# tmp76, tmp77
	jgs	.L48		#
	ld.w	r1, [r13 + (8)]	# tmp78, vk
	mov.w	r0, 86	# tmp79,
	cmp.w	r1, r0	# tmp78, tmp79
	jz	.L51		#
	ld.w	r1, [r13 + (8)]	# tmp80, vk
	mov.w	r0, 86	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jgs	.L48		#
	ld.w	r1, [r13 + (8)]	# tmp82, vk
	mov.w	r0, 81	# tmp83,
	cmp.w	r1, r0	# tmp82, tmp83
	jz	.L52		#
	ld.w	r1, [r13 + (8)]	# tmp84, vk
	mov.w	r0, 81	# tmp85,
	cmp.w	r1, r0	# tmp84, tmp85
	jgs	.L48		#
	ld.w	r1, [r13 + (8)]	# tmp86, vk
	mov.w	r0, 78	# tmp87,
	cmp.w	r1, r0	# tmp86, tmp87
	jz	.L53		#
	ld.w	r1, [r13 + (8)]	# tmp88, vk
	mov.w	r0, 78	# tmp89,
	cmp.w	r1, r0	# tmp88, tmp89
	jgs	.L48		#
	ld.w	r1, [r13 + (8)]	# tmp90, vk
	mov.w	r0, 71	# tmp91,
	cmp.w	r1, r0	# tmp90, tmp91
	jz	.L54		#
	ld.w	r1, [r13 + (8)]	# tmp92, vk
	mov.w	r0, 71	# tmp93,
	cmp.w	r1, r0	# tmp92, tmp93
	jgs	.L48		#
	ld.w	r1, [r13 + (8)]	# tmp94, vk
	mov.w	r0, 66	# tmp95,
	cmp.w	r1, r0	# tmp94, tmp95
	jz	.L55		#
	ld.w	r1, [r13 + (8)]	# tmp96, vk
	mov.w	r0, 70	# tmp97,
	cmp.w	r1, r0	# tmp96, tmp97
	jz	.L56		#
	j	.L48		#
.L52:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:268: 			case VK_Q: if (altgr_pressed) return 92; else break;
	ld.w	r1, [altgr_pressed]	# altgr_pressed.22_1, altgr_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:268: 			case VK_Q: if (altgr_pressed) return 92; else break;
	xor.w	r0, r0	# tmp98
	cmp.w	r1, r0	# altgr_pressed.22_1, tmp98
	jz	.L112		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:268: 			case VK_Q: if (altgr_pressed) return 92; else break;
	mov.w	r0, 92	# _33,
	j	.L45		#
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_W: if (altgr_pressed) return 124; else break;
	ld.w	r1, [altgr_pressed]	# altgr_pressed.23_2, altgr_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_W: if (altgr_pressed) return 124; else break;
	xor.w	r0, r0	# tmp99
	cmp.w	r1, r0	# altgr_pressed.23_2, tmp99
	jz	.L113		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_W: if (altgr_pressed) return 124; else break;
	mov.w	r0, 124	# _33,
	j	.L45		#
.L56:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_F: if (altgr_pressed) return 91; else break;
	ld.w	r1, [altgr_pressed]	# altgr_pressed.24_3, altgr_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_F: if (altgr_pressed) return 91; else break;
	xor.w	r0, r0	# tmp100
	cmp.w	r1, r0	# altgr_pressed.24_3, tmp100
	jz	.L114		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_F: if (altgr_pressed) return 91; else break;
	mov.w	r0, 91	# _33,
	j	.L45		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_G: if (altgr_pressed) return 93; else break;
	ld.w	r1, [altgr_pressed]	# altgr_pressed.25_4, altgr_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_G: if (altgr_pressed) return 93; else break;
	xor.w	r0, r0	# tmp101
	cmp.w	r1, r0	# altgr_pressed.25_4, tmp101
	jz	.L115		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_G: if (altgr_pressed) return 93; else break;
	mov.w	r0, 93	# _33,
	j	.L45		#
.L55:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:272: 			case VK_B: if (altgr_pressed) return 123; else break;
	ld.w	r1, [altgr_pressed]	# altgr_pressed.26_5, altgr_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:272: 			case VK_B: if (altgr_pressed) return 123; else break;
	xor.w	r0, r0	# tmp102
	cmp.w	r1, r0	# altgr_pressed.26_5, tmp102
	jz	.L116		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:272: 			case VK_B: if (altgr_pressed) return 123; else break;
	mov.w	r0, 123	# _33,
	j	.L45		#
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_N: if (altgr_pressed) return 125; else break;
	ld.w	r1, [altgr_pressed]	# altgr_pressed.27_6, altgr_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_N: if (altgr_pressed) return 125; else break;
	xor.w	r0, r0	# tmp103
	cmp.w	r1, r0	# altgr_pressed.27_6, tmp103
	jz	.L117		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_N: if (altgr_pressed) return 125; else break;
	mov.w	r0, 125	# _33,
	j	.L45		#
.L51:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_V: if (altgr_pressed) return 64; else break;
	ld.w	r1, [altgr_pressed]	# altgr_pressed.28_7, altgr_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_V: if (altgr_pressed) return 64; else break;
	xor.w	r0, r0	# tmp104
	cmp.w	r1, r0	# altgr_pressed.28_7, tmp104
	jz	.L118		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_V: if (altgr_pressed) return 64; else break;
	mov.w	r0, 64	# _33,
	j	.L45		#
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_Z: if (!shift_pressed) return 'y'; else return 'Y';
	ld.w	r1, [shift_pressed]	# shift_pressed.29_8, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_Z: if (!shift_pressed) return 'y'; else return 'Y';
	xor.w	r0, r0	# tmp105
	cmp.w	r1, r0	# shift_pressed.29_8, tmp105
	jnz	.L64		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_Z: if (!shift_pressed) return 'y'; else return 'Y';
	mov.w	r0, 121	# _33,
	j	.L45		#
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:275: 			case VK_Z: if (!shift_pressed) return 'y'; else return 'Y';
	mov.w	r0, 89	# _33,
	j	.L45		#
.L49:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_Y: if (!shift_pressed) return 'z'; else return 'Z';
	ld.w	r1, [shift_pressed]	# shift_pressed.30_9, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_Y: if (!shift_pressed) return 'z'; else return 'Z';
	xor.w	r0, r0	# tmp106
	cmp.w	r1, r0	# shift_pressed.30_9, tmp106
	jnz	.L65		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_Y: if (!shift_pressed) return 'z'; else return 'Z';
	mov.w	r0, 122	# _33,
	j	.L45		#
.L65:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:276: 			case VK_Y: if (!shift_pressed) return 'z'; else return 'Z';
	mov.w	r0, 90	# _33,
	j	.L45		#
.L112:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:268: 			case VK_Q: if (altgr_pressed) return 92; else break;
	nop	
	j	.L48		#
.L113:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:269: 			case VK_W: if (altgr_pressed) return 124; else break;
	nop	
	j	.L48		#
.L114:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:270: 			case VK_F: if (altgr_pressed) return 91; else break;
	nop	
	j	.L48		#
.L115:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:271: 			case VK_G: if (altgr_pressed) return 93; else break;
	nop	
	j	.L48		#
.L116:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:272: 			case VK_B: if (altgr_pressed) return 123; else break;
	nop	
	j	.L48		#
.L117:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:273: 			case VK_N: if (altgr_pressed) return 125; else break;
	nop	
	j	.L48		#
.L118:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:274: 			case VK_V: if (altgr_pressed) return 64; else break;
	nop	
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:279: 		if (shift_pressed)
	ld.w	r1, [shift_pressed]	# shift_pressed.31_10, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:279: 		if (shift_pressed)
	xor.w	r0, r0	# tmp107
	cmp.w	r1, r0	# shift_pressed.31_10, tmp107
	jz	.L66		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:280: 			return vk;
	ld.w	r0, [r13 + (8)]	# _33, vk
	j	.L45		#
.L66:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:282: 			return vk + 32;
	ld.w	r0, [r13 + (8)]	# tmp108, vk
	add.w	r0, 32 #111	# _33,
	j	.L45		#
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:285: 		switch (vk)
	ld.w	r1, [r13 + (8)]	# tmp109, vk
	mov.w	r0, 96	# tmp110,
	cmp.w	r1, r0	# tmp109, tmp110
	jz	.L67		#
	ld.w	r1, [r13 + (8)]	# tmp111, vk
	mov.w	r0, 96	# tmp112,
	cmp.w	r1, r0	# tmp111, tmp112
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp113, vk
	mov.w	r0, 93	# tmp114,
	cmp.w	r1, r0	# tmp113, tmp114
	jz	.L69		#
	ld.w	r1, [r13 + (8)]	# tmp115, vk
	mov.w	r0, 93	# tmp116,
	cmp.w	r1, r0	# tmp115, tmp116
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp117, vk
	mov.w	r0, 92	# tmp118,
	cmp.w	r1, r0	# tmp117, tmp118
	jz	.L70		#
	ld.w	r1, [r13 + (8)]	# tmp119, vk
	mov.w	r0, 92	# tmp120,
	cmp.w	r1, r0	# tmp119, tmp120
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp121, vk
	mov.w	r0, 91	# tmp122,
	cmp.w	r1, r0	# tmp121, tmp122
	jz	.L71		#
	ld.w	r1, [r13 + (8)]	# tmp123, vk
	mov.w	r0, 91	# tmp124,
	cmp.w	r1, r0	# tmp123, tmp124
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp125, vk
	mov.w	r0, 61	# tmp126,
	cmp.w	r1, r0	# tmp125, tmp126
	jz	.L72		#
	ld.w	r1, [r13 + (8)]	# tmp127, vk
	mov.w	r0, 61	# tmp128,
	cmp.w	r1, r0	# tmp127, tmp128
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp129, vk
	mov.w	r0, 60	# tmp130,
	cmp.w	r1, r0	# tmp129, tmp130
	jz	.L73		#
	ld.w	r1, [r13 + (8)]	# tmp131, vk
	mov.w	r0, 60	# tmp132,
	cmp.w	r1, r0	# tmp131, tmp132
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp133, vk
	mov.w	r0, 59	# tmp134,
	cmp.w	r1, r0	# tmp133, tmp134
	jz	.L74		#
	ld.w	r1, [r13 + (8)]	# tmp135, vk
	mov.w	r0, 59	# tmp136,
	cmp.w	r1, r0	# tmp135, tmp136
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp137, vk
	mov.w	r0, 57	# tmp138,
	cmp.w	r1, r0	# tmp137, tmp138
	jz	.L75		#
	ld.w	r1, [r13 + (8)]	# tmp139, vk
	mov.w	r0, 57	# tmp140,
	cmp.w	r1, r0	# tmp139, tmp140
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp141, vk
	mov.w	r0, 56	# tmp142,
	cmp.w	r1, r0	# tmp141, tmp142
	jz	.L76		#
	ld.w	r1, [r13 + (8)]	# tmp143, vk
	mov.w	r0, 56	# tmp144,
	cmp.w	r1, r0	# tmp143, tmp144
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp145, vk
	mov.w	r0, 55	# tmp146,
	cmp.w	r1, r0	# tmp145, tmp146
	jz	.L77		#
	ld.w	r1, [r13 + (8)]	# tmp147, vk
	mov.w	r0, 55	# tmp148,
	cmp.w	r1, r0	# tmp147, tmp148
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp149, vk
	mov.w	r0, 54	# tmp150,
	cmp.w	r1, r0	# tmp149, tmp150
	jz	.L78		#
	ld.w	r1, [r13 + (8)]	# tmp151, vk
	mov.w	r0, 54	# tmp152,
	cmp.w	r1, r0	# tmp151, tmp152
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp153, vk
	mov.w	r0, 53	# tmp154,
	cmp.w	r1, r0	# tmp153, tmp154
	jz	.L79		#
	ld.w	r1, [r13 + (8)]	# tmp155, vk
	mov.w	r0, 53	# tmp156,
	cmp.w	r1, r0	# tmp155, tmp156
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp157, vk
	mov.w	r0, 52	# tmp158,
	cmp.w	r1, r0	# tmp157, tmp158
	jz	.L80		#
	ld.w	r1, [r13 + (8)]	# tmp159, vk
	mov.w	r0, 52	# tmp160,
	cmp.w	r1, r0	# tmp159, tmp160
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp161, vk
	mov.w	r0, 51	# tmp162,
	cmp.w	r1, r0	# tmp161, tmp162
	jz	.L81		#
	ld.w	r1, [r13 + (8)]	# tmp163, vk
	mov.w	r0, 51	# tmp164,
	cmp.w	r1, r0	# tmp163, tmp164
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp165, vk
	mov.w	r0, 50	# tmp166,
	cmp.w	r1, r0	# tmp165, tmp166
	jz	.L82		#
	ld.w	r1, [r13 + (8)]	# tmp167, vk
	mov.w	r0, 50	# tmp168,
	cmp.w	r1, r0	# tmp167, tmp168
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp169, vk
	mov.w	r0, 49	# tmp170,
	cmp.w	r1, r0	# tmp169, tmp170
	jz	.L83		#
	ld.w	r1, [r13 + (8)]	# tmp171, vk
	mov.w	r0, 49	# tmp172,
	cmp.w	r1, r0	# tmp171, tmp172
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp173, vk
	mov.w	r0, 48	# tmp174,
	cmp.w	r1, r0	# tmp173, tmp174
	jz	.L84		#
	ld.w	r1, [r13 + (8)]	# tmp175, vk
	mov.w	r0, 48	# tmp176,
	cmp.w	r1, r0	# tmp175, tmp176
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp177, vk
	mov.w	r0, 47	# tmp178,
	cmp.w	r1, r0	# tmp177, tmp178
	jz	.L85		#
	ld.w	r1, [r13 + (8)]	# tmp179, vk
	mov.w	r0, 47	# tmp180,
	cmp.w	r1, r0	# tmp179, tmp180
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp181, vk
	mov.w	r0, 46	# tmp182,
	cmp.w	r1, r0	# tmp181, tmp182
	jz	.L86		#
	ld.w	r1, [r13 + (8)]	# tmp183, vk
	mov.w	r0, 46	# tmp184,
	cmp.w	r1, r0	# tmp183, tmp184
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp185, vk
	mov.w	r0, 45	# tmp186,
	cmp.w	r1, r0	# tmp185, tmp186
	jz	.L87		#
	ld.w	r1, [r13 + (8)]	# tmp187, vk
	mov.w	r0, 45	# tmp188,
	cmp.w	r1, r0	# tmp187, tmp188
	jgs	.L68		#
	ld.w	r1, [r13 + (8)]	# tmp189, vk
	mov.w	r0, 39	# tmp190,
	cmp.w	r1, r0	# tmp189, tmp190
	jz	.L88		#
	ld.w	r1, [r13 + (8)]	# tmp191, vk
	mov.w	r0, 44	# tmp192,
	cmp.w	r1, r0	# tmp191, tmp192
	jz	.L89		#
	j	.L68		#
.L84:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:287: 			case VK_0: if (!shift_pressed) return 48; else return 61;// 0, =
	ld.w	r1, [shift_pressed]	# shift_pressed.32_11, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:287: 			case VK_0: if (!shift_pressed) return 48; else return 61;// 0, =
	xor.w	r0, r0	# tmp193
	cmp.w	r1, r0	# shift_pressed.32_11, tmp193
	jnz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:287: 			case VK_0: if (!shift_pressed) return 48; else return 61;// 0, =
	mov.w	r0, 48	# _33,
	j	.L45		#
.L90:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:287: 			case VK_0: if (!shift_pressed) return 48; else return 61;// 0, =
	mov.w	r0, 61	# _33,
	j	.L45		#
.L83:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:288: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	ld.w	r1, [shift_pressed]	# shift_pressed.33_12, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:288: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	xor.w	r0, r0	# tmp194
	cmp.w	r1, r0	# shift_pressed.33_12, tmp194
	jnz	.L91		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:288: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	mov.w	r0, 49	# _33,
	j	.L45		#
.L91:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:288: 			case VK_1: if (!shift_pressed) return 49; else return 33;// 1, !
	mov.w	r0, 33	# _33,
	j	.L45		#
.L82:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:289: 			case VK_2: if (!shift_pressed) return 50; else return 34;// 2, "
	ld.w	r1, [shift_pressed]	# shift_pressed.34_13, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:289: 			case VK_2: if (!shift_pressed) return 50; else return 34;// 2, "
	xor.w	r0, r0	# tmp195
	cmp.w	r1, r0	# shift_pressed.34_13, tmp195
	jnz	.L92		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:289: 			case VK_2: if (!shift_pressed) return 50; else return 34;// 2, "
	mov.w	r0, 50	# _33,
	j	.L45		#
.L92:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:289: 			case VK_2: if (!shift_pressed) return 50; else return 34;// 2, "
	mov.w	r0, 34	# _33,
	j	.L45		#
.L81:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:290: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	ld.w	r1, [shift_pressed]	# shift_pressed.35_14, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:290: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	xor.w	r0, r0	# tmp196
	cmp.w	r1, r0	# shift_pressed.35_14, tmp196
	jnz	.L93		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:290: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	mov.w	r0, 51	# _33,
	j	.L45		#
.L93:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:290: 			case VK_3: if (!shift_pressed) return 51; else return 35;// 3, #
	mov.w	r0, 35	# _33,
	j	.L45		#
.L80:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:291: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	ld.w	r1, [shift_pressed]	# shift_pressed.36_15, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:291: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	xor.w	r0, r0	# tmp197
	cmp.w	r1, r0	# shift_pressed.36_15, tmp197
	jnz	.L94		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:291: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	mov.w	r0, 52	# _33,
	j	.L45		#
.L94:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:291: 			case VK_4: if (!shift_pressed) return 52; else return 36;// 4, $
	mov.w	r0, 36	# _33,
	j	.L45		#
.L79:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:292: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	ld.w	r1, [shift_pressed]	# shift_pressed.37_16, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:292: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	xor.w	r0, r0	# tmp198
	cmp.w	r1, r0	# shift_pressed.37_16, tmp198
	jnz	.L95		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:292: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	mov.w	r0, 53	# _33,
	j	.L45		#
.L95:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:292: 			case VK_5: if (!shift_pressed) return 53; else return 37;// 5, %
	mov.w	r0, 37	# _33,
	j	.L45		#
.L78:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:293: 			case VK_6: if (!shift_pressed) return 54; else return 38;// 6, &
	ld.w	r1, [shift_pressed]	# shift_pressed.38_17, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:293: 			case VK_6: if (!shift_pressed) return 54; else return 38;// 6, &
	xor.w	r0, r0	# tmp199
	cmp.w	r1, r0	# shift_pressed.38_17, tmp199
	jnz	.L96		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:293: 			case VK_6: if (!shift_pressed) return 54; else return 38;// 6, &
	mov.w	r0, 54	# _33,
	j	.L45		#
.L96:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:293: 			case VK_6: if (!shift_pressed) return 54; else return 38;// 6, &
	mov.w	r0, 38	# _33,
	j	.L45		#
.L77:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:294: 			case VK_7: if (!shift_pressed) return 55; else return 47;// 7, /
	ld.w	r1, [shift_pressed]	# shift_pressed.39_18, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:294: 			case VK_7: if (!shift_pressed) return 55; else return 47;// 7, /
	xor.w	r0, r0	# tmp200
	cmp.w	r1, r0	# shift_pressed.39_18, tmp200
	jnz	.L97		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:294: 			case VK_7: if (!shift_pressed) return 55; else return 47;// 7, /
	mov.w	r0, 55	# _33,
	j	.L45		#
.L97:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:294: 			case VK_7: if (!shift_pressed) return 55; else return 47;// 7, /
	mov.w	r0, 47	# _33,
	j	.L45		#
.L76:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:295: 			case VK_8: if (!shift_pressed) return 56; else return 40;// 8, (
	ld.w	r1, [shift_pressed]	# shift_pressed.40_19, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:295: 			case VK_8: if (!shift_pressed) return 56; else return 40;// 8, (
	xor.w	r0, r0	# tmp201
	cmp.w	r1, r0	# shift_pressed.40_19, tmp201
	jnz	.L98		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:295: 			case VK_8: if (!shift_pressed) return 56; else return 40;// 8, (
	mov.w	r0, 56	# _33,
	j	.L45		#
.L98:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:295: 			case VK_8: if (!shift_pressed) return 56; else return 40;// 8, (
	mov.w	r0, 40	# _33,
	j	.L45		#
.L75:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:296: 			case VK_9: if (!shift_pressed) return 57; else return 41;// 9, )
	ld.w	r1, [shift_pressed]	# shift_pressed.41_20, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:296: 			case VK_9: if (!shift_pressed) return 57; else return 41;// 9, )
	xor.w	r0, r0	# tmp202
	cmp.w	r1, r0	# shift_pressed.41_20, tmp202
	jnz	.L99		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:296: 			case VK_9: if (!shift_pressed) return 57; else return 41;// 9, )
	mov.w	r0, 57	# _33,
	j	.L45		#
.L99:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:296: 			case VK_9: if (!shift_pressed) return 57; else return 41;// 9, )
	mov.w	r0, 41	# _33,
	j	.L45		#
.L67:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:298: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// ‚ ~
	ld.w	r1, [shift_pressed]	# shift_pressed.42_21, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:298: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// ‚ ~
	xor.w	r0, r0	# tmp203
	cmp.w	r1, r0	# shift_pressed.42_21, tmp203
	jnz	.L100		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:298: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// ‚ ~
	mov.w	r0, 96	# _33,
	j	.L45		#
.L100:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:298: 			case VK_BACK_QUOTE: if (!shift_pressed) return 96; else return 126;	// ‚ ~
	mov.w	r0, 126	# _33,
	j	.L45		#
.L87:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:299: 			case VK_MINUS:			if (!shift_pressed) return 39; else return 63;	// ', ?
	ld.w	r1, [shift_pressed]	# shift_pressed.43_22, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:299: 			case VK_MINUS:			if (!shift_pressed) return 39; else return 63;	// ', ?
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# shift_pressed.43_22, tmp204
	jnz	.L101		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:299: 			case VK_MINUS:			if (!shift_pressed) return 39; else return 63;	// ', ?
	mov.w	r0, 39	# _33,
	j	.L45		#
.L101:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:299: 			case VK_MINUS:			if (!shift_pressed) return 39; else return 63;	// ', ?
	mov.w	r0, 63	# _33,
	j	.L45		#
.L72:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:300: 			case VK_EQUALS:	 		if (!shift_pressed) return  43; else return 42;	// +, *
	ld.w	r1, [shift_pressed]	# shift_pressed.44_23, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:300: 			case VK_EQUALS:	 		if (!shift_pressed) return  43; else return 42;	// +, *
	xor.w	r0, r0	# tmp205
	cmp.w	r1, r0	# shift_pressed.44_23, tmp205
	jnz	.L102		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:300: 			case VK_EQUALS:	 		if (!shift_pressed) return  43; else return 42;	// +, *
	mov.w	r0, 43	# _33,
	j	.L45		#
.L102:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:300: 			case VK_EQUALS:	 		if (!shift_pressed) return  43; else return 42;	// +, *
	mov.w	r0, 42	# _33,
	j	.L45		#
.L71:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:302: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	;	// [, {
	ld.w	r1, [shift_pressed]	# shift_pressed.45_24, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:302: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	;	// [, {
	xor.w	r0, r0	# tmp206
	cmp.w	r1, r0	# shift_pressed.45_24, tmp206
	jnz	.L103		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:302: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	;	// [, {
	mov.w	r0, 91	# _33,
	j	.L45		#
.L103:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:302: 			case VK_BRACE_LEFT: if (!shift_pressed) return 91; else return 123	;	// [, {
	mov.w	r0, 123	# _33,
	j	.L45		#
.L69:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:303: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125  ;	// ], }
	ld.w	r1, [shift_pressed]	# shift_pressed.46_25, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:303: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125  ;	// ], }
	xor.w	r0, r0	# tmp207
	cmp.w	r1, r0	# shift_pressed.46_25, tmp207
	jnz	.L104		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:303: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125  ;	// ], }
	mov.w	r0, 93	# _33,
	j	.L45		#
.L104:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:303: 			case VK_BRACE_RIGHT:if (!shift_pressed) return 93; else return 125  ;	// ], }
	mov.w	r0, 125	# _33,
	j	.L45		#
.L74:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:304: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58   ;	// ;, :
	ld.w	r1, [shift_pressed]	# shift_pressed.47_26, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:304: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58   ;	// ;, :
	xor.w	r0, r0	# tmp208
	cmp.w	r1, r0	# shift_pressed.47_26, tmp208
	jnz	.L105		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:304: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58   ;	// ;, :
	mov.w	r0, 59	# _33,
	j	.L45		#
.L105:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:304: 			case VK_SEMICOLON: 	if (!shift_pressed) return 59; else return 58   ;	// ;, :
	mov.w	r0, 58	# _33,
	j	.L45		#
.L88:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:305: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 63;	// ', "
	ld.w	r1, [shift_pressed]	# shift_pressed.48_27, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:305: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 63;	// ', "
	xor.w	r0, r0	# tmp209
	cmp.w	r1, r0	# shift_pressed.48_27, tmp209
	jnz	.L106		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:305: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 63;	// ', "
	mov.w	r0, 39	# _33,
	j	.L45		#
.L106:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:305: 			case VK_QUOTE: 			if (!shift_pressed) return 39; else return 63;	// ', "
	mov.w	r0, 63	# _33,
	j	.L45		#
.L70:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:306: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;		// \, |
	ld.w	r1, [shift_pressed]	# shift_pressed.49_28, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:306: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;		// \, |
	xor.w	r0, r0	# tmp210
	cmp.w	r1, r0	# shift_pressed.49_28, tmp210
	jnz	.L107		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:306: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;		// \, |
	mov.w	r0, 92	# _33,
	j	.L45		#
.L107:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:306: 			case VK_BACK_SLASH:	if (!shift_pressed) return 92; else return 124;		// \, |
	mov.w	r0, 124	# _33,
	j	.L45		#
.L89:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:307: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 59;	// ,, ;
	ld.w	r1, [shift_pressed]	# shift_pressed.50_29, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:307: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 59;	// ,, ;
	xor.w	r0, r0	# tmp211
	cmp.w	r1, r0	# shift_pressed.50_29, tmp211
	jnz	.L108		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:307: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 59;	// ,, ;
	mov.w	r0, 44	# _33,
	j	.L45		#
.L108:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:307: 			case VK_COMMA: 			if (!shift_pressed) return 44; else return 59;	// ,, ;
	mov.w	r0, 59	# _33,
	j	.L45		#
.L86:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:308: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 58;		// ., :
	ld.w	r1, [shift_pressed]	# shift_pressed.51_30, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:308: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 58;		// ., :
	xor.w	r0, r0	# tmp212
	cmp.w	r1, r0	# shift_pressed.51_30, tmp212
	jnz	.L109		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:308: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 58;		// ., :
	mov.w	r0, 46	# _33,
	j	.L45		#
.L109:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:308: 			case VK_FULL_STOP: 	if (!shift_pressed) return 46; else return 58;		// ., :
	mov.w	r0, 58	# _33,
	j	.L45		#
.L73:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:309: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	ld.w	r1, [shift_pressed]	# shift_pressed.52_31, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:309: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	xor.w	r0, r0	# tmp213
	cmp.w	r1, r0	# shift_pressed.52_31, tmp213
	jnz	.L110		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:309: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	mov.w	r0, 60	# _33,
	j	.L45		#
.L110:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:309: 			case VK_LESS_THAN: 	if (!shift_pressed) return 60; else return 62;		// <, >
	mov.w	r0, 62	# _33,
	j	.L45		#
.L85:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:310: 			case VK_SLASH: 			if (!shift_pressed) return 45; else return 95;	// -, _
	ld.w	r1, [shift_pressed]	# shift_pressed.53_32, shift_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:310: 			case VK_SLASH: 			if (!shift_pressed) return 45; else return 95;	// -, _
	xor.w	r0, r0	# tmp214
	cmp.w	r1, r0	# shift_pressed.53_32, tmp214
	jnz	.L111		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:310: 			case VK_SLASH: 			if (!shift_pressed) return 45; else return 95;	// -, _
	mov.w	r0, 45	# _33,
	j	.L45		#
.L111:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:310: 			case VK_SLASH: 			if (!shift_pressed) return 45; else return 95;	// -, _
	mov.w	r0, 95	# _33,
	j	.L45		#
.L68:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:312: 				return 0;
	xor.w	r0, r0	# _33
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:316: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:368: 	if (c == 10 || c == 13) 
	ld.w	r1, [r13 + (8)]	# tmp45, c
	mov.w	r0, 10	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jz	.L120		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:368: 	if (c == 10 || c == 13) 
	ld.w	r1, [r13 + (8)]	# tmp47, c
	mov.w	r0, 13	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jnz	.L121		#
.L120:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:370: 		i = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.54_1, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:370: 		i = (int)VIDEO;
	st.w	[r13 + (-4)], r0	# i, VIDEO.54_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:371: 		i = (i - 1024) / 160;
	ld.w	r0, [r13 + (-4)]	# tmp49, i
	mov.w	r1, -1024	# tmp50,
	add.w	r0, r1 #222	# _2, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:371: 		i = (i - 1024) / 160;
	mov.w	r1, 160	# tmp52,
	div.w	r0, r1	# tmp51, tmp52
	st.w	[r13 + (-4)], r0	# i, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:372: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp54, i
	add.w	r0, 1 #111	# tmp53,
	st.w	[r13 + (-4)], r0	# i, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:373: 		if (i == 60)
	ld.w	r1, [r13 + (-4)]	# tmp55, i
	mov.w	r0, 60	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jnz	.L122		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:375: 			scroll_up();
	call	scroll_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:376: 			i = 59;
	mov.w	r0, 59	# tmp57,
	st.w	[r13 + (-4)], r0	# i, tmp57
.L122:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:378: 		VIDEO = (char *)(1024 + (i * 160) - 1);
	ld.w	r1, [r13 + (-4)]	# tmp58, i
	mov.w	r0, r1	# tmp59, tmp58
	mov.w	r2, 2	# tmp61,
	shl.w	r0, r2	# tmp60, tmp61
	add.w	r0, r1 #222	# tmp59, tmp58
	mov.w	r1, 5	# tmp63,
	shl.w	r0, r1	# tmp62, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:378: 		VIDEO = (char *)(1024 + (i * 160) - 1);
	mov.w	r1, 1023	# tmp64,
	add.w	r0, r1 #222	# _4, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:378: 		VIDEO = (char *)(1024 + (i * 160) - 1);
	st.w	[VIDEO], r0	# VIDEO, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:379: 		VIDEO += 2;
	ld.w	r0, [VIDEO]	# VIDEO.55_6, VIDEO
	add.w	r0, 2 #111	# _7,
	st.w	[VIDEO], r0	# VIDEO, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:380: 		return;
	j	.L119		#
.L121:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:382: 		i = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.56_8, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:382: 		i = (int)VIDEO;
	st.w	[r13 + (-4)], r0	# i, VIDEO.56_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:383: 		i = (i - 1024) / 160;
	ld.w	r0, [r13 + (-4)]	# tmp65, i
	mov.w	r1, -1024	# tmp66,
	add.w	r0, r1 #222	# _9, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:383: 		i = (i - 1024) / 160;
	mov.w	r1, 160	# tmp68,
	div.w	r0, r1	# tmp67, tmp68
	st.w	[r13 + (-4)], r0	# i, tmp67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:384: 		if (i == 59) {
	ld.w	r1, [r13 + (-4)]	# tmp69, i
	mov.w	r0, 59	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L124		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:385: 			j = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.57_10, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:385: 			j = (int)VIDEO;
	st.w	[r13 + (-8)], r0	# j, VIDEO.57_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:386: 			j = (j - 10463) / 2;
	ld.w	r0, [r13 + (-8)]	# tmp71, j
	mov.w	r1, -10463	# tmp72,
	add.w	r0, r1 #222	# _11, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:386: 			j = (j - 10463) / 2;
	mov.w	r2, 31	# tmp74,
	mov.w	r1, r0	# tmp73, _11
	shr.w	r1, r2	# tmp73, tmp74
	mov.w	r2, r1	# tmp75, tmp73
	add.w	r2, r0 #222	# tmp75, _11
	mov.w	r1, 1	# tmp77,
	mov.w	r0, r2	# tmp76, tmp75
	shr.w	r0, r1	# tmp76, tmp77
	st.w	[r13 + (-8)], r0	# j, tmp76
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:387: 			if (j == 80)
	ld.w	r1, [r13 + (-8)]	# tmp78, j
	mov.w	r0, 80	# tmp79,
	cmp.w	r1, r0	# tmp78, tmp79
	jnz	.L124		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:389: 				scroll_up();
	call	scroll_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:390: 				VIDEO = (char*)10463;
	mov.w	r0, 10463	# tmp80,
	st.w	[VIDEO], r0	# VIDEO, tmp80
.L124:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:395: 	*VIDEO = c;
	ld.w	r0, [VIDEO]	# VIDEO.58_12, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:395: 	*VIDEO = c;
	ld.w	r1, [r13 + (8)]	# tmp81, c
	st.b	[r0], r1	# *VIDEO.58_12, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:396: 	*(VIDEO - 1) = color;  // swap
	ld.w	r1, [color]	# color.59_14, color
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:396: 	*(VIDEO - 1) = color;  // swap
	ld.w	r0, [VIDEO]	# VIDEO.60_15, VIDEO
	add.w	r0, -1 #111	# _16,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:396: 	*(VIDEO - 1) = color;  // swap
	st.b	[r0], r1	# *_16, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:397: 	VIDEO += 2;
	ld.w	r0, [VIDEO]	# VIDEO.61_18, VIDEO
	add.w	r0, 2 #111	# _19,
	st.w	[VIDEO], r0	# VIDEO, _19
.L119:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:398: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:401: 	put_char(c);
	mov.w	r1, sp	# tmp28,
	ld.w	r0, [r13 + (8)]	# tmp29, c
	st.w	[r1], r0	#, tmp29
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:402: 	return c;
	ld.w	r0, [r13 + (8)]	# _4, c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:403: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:407: 	int j = strlen(s);
	mov.w	r1, sp	# tmp29,
	ld.w	r0, [r13 + (8)]	# tmp30, s
	st.w	[r1], r0	#, tmp30
	call	strlen		#
	st.w	[r13 + (-8)], r0	# j,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:409: 	for (i = 0; i < j; i++) 
	xor.w	r0, r0	# tmp31
	st.w	[r13 + (-4)], r0	# i, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:409: 	for (i = 0; i < j; i++) 
	j	.L128		#
.L131:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:411: 		if (*s == 0)
	ld.w	r0, [r13 + (8)]	# tmp32, s
	ld.b	r0, [r0]	# _1, *s_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:411: 		if (*s == 0)
	sex.b	r1, r0	# tmp33, _1
	xor.w	r0, r0	# tmp34
	cmp.w	r1, r0	# tmp33, tmp34
	jz	.L132		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:413: 		put_char(*s);
	ld.w	r0, [r13 + (8)]	# tmp35, s
	ld.b	r0, [r0]	# _2, *s_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:413: 		put_char(*s);
	sex.b	r0, r0	# _3, _2
	mov.w	r1, sp	# tmp36,
	st.w	[r1], r0	#, _3
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:414: 		s++;
	ld.w	r0, [r13 + (8)]	# tmp38, s
	add.w	r0, 1 #111	# tmp37,
	st.w	[r13 + (8)], r0	# s, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:409: 	for (i = 0; i < j; i++) 
	ld.w	r0, [r13 + (-4)]	# tmp40, i
	add.w	r0, 1 #111	# tmp39,
	st.w	[r13 + (-4)], r0	# i, tmp39
.L128:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:409: 	for (i = 0; i < j; i++) 
	ld.w	r1, [r13 + (-4)]	# tmp41, i
	ld.w	r0, [r13 + (-8)]	# tmp42, j
	cmp.w	r1, r0	# tmp41, tmp42
	jss	.L131		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:416: }
	j	.L133		#
.L132:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:412: 			break;
	nop	
.L133:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:416: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:421:     va_start(args, fmt);
	mov.w	r0, r13	# tmp28,
	add.w	r0, 12 #111	# tmp28,
	st.w	[r13 + (-504)], r0	# MEM[(void * *)&args], tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:422:     vsprintf(printf_dst,fmt,args);
	ld.w	r1, [r13 + (-504)]	# args.62_1, args
	mov.w	r0, sp	# tmp29,
	st.w	[r0 + (8)], r1	#, args.62_1
	ld.w	r1, [r13 + (8)]	# tmp30, fmt
	st.w	[r0 + (4)], r1	#, tmp30
	mov.w	r2, -500	# tmp32,
	mov.w	r1, r13	# tmp31,
	add.w	r1, r2 #222	# tmp31, tmp32
	st.w	[r0], r1	#, tmp31
	call	vsprintf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:423:     print_str(printf_dst);
	mov.w	r2, sp	# tmp33,
	mov.w	r1, -500	# tmp35,
	mov.w	r0, r13	# tmp34,
	add.w	r0, r1 #222	# tmp34, tmp35
	st.w	[r2], r0	#, tmp34
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:424: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:427: 	print_str(s);
	mov.w	r1, sp	# tmp27,
	ld.w	r0, [r13 + (8)]	# tmp28, s
	st.w	[r1], r0	#, tmp28
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:428: 	put_char(10);
	mov.w	r1, sp	# tmp29,
	mov.w	r0, 10	# tmp30,
	st.w	[r1], r0	#, tmp30
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:429: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:433: 	r_a = *PORT_MILLIS & 0x7fffffff;
	ld.w	r0, [PORT_MILLIS]	# PORT_MILLIS.63_1, PORT_MILLIS
	ld.w	r0, [r0]	# _2, *PORT_MILLIS.63_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:433: 	r_a = *PORT_MILLIS & 0x7fffffff;
	mov.w	r1, 2147483647	# tmp40,
	and.w	r0, r1	# _3, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:433: 	r_a = *PORT_MILLIS & 0x7fffffff;
	st.w	[r_a], r0	# r_a, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:434: 	x = r_a * r_seed;
	ld.w	r0, [r_a]	# r_a.64_4, r_a
	ld.w	r1, [r_seed]	# r_seed.65_5, r_seed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:434: 	x = r_a * r_seed;
	mul.w	r0, r1	# tmp41, r_seed.65_5
	st.w	[r13 + (-4)], r0	# x, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:435: 	x += r_c;
	ld.w	r1, [r_c]	# r_c.66_6, r_c
	ld.w	r0, [r13 + (-4)]	# tmp43, x
	add.w	r0, r1 #222	# tmp42, r_c.66_6
	st.w	[r13 + (-4)], r0	# x, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:436: 	y = x / r_m;
	ld.w	r1, [r_m]	# r_m.67_7, r_m
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:436: 	y = x / r_m;
	ld.w	r0, [r13 + (-4)]	# tmp45, x
	div.w	r0, r1	# tmp44, r_m.67_7
	st.w	[r13 + (-8)], r0	# y, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:437: 	r_seed = x % r_m;
	ld.w	r1, [r_m]	# r_m.68_8, r_m
	ld.w	r0, [r13 + (-4)]	# tmp46, x
	div.w	r0, r1	# _9, r_m.68_8
mov.w	r0, r14	# _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:437: 	r_seed = x % r_m;
	st.w	[r_seed], r0	# r_seed, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:438: 	if (r_seed < 0)
	ld.w	r1, [r_seed]	# r_seed.69_10, r_seed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:438: 	if (r_seed < 0)
	xor.w	r0, r0	# tmp47
	cmp.w	r1, r0	# r_seed.69_10, tmp47
	jges	.L137		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:439: 		r_seed = -r_seed;
	ld.w	r0, [r_seed]	# r_seed.70_11, r_seed
	mov.w	r0, r0	# _12, r_seed.70_11
neg.w	r0	# _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:439: 		r_seed = -r_seed;
	st.w	[r_seed], r0	# r_seed, _12
.L137:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:440: 	return r_seed;
	ld.w	r0, [r_seed]	# _21, r_seed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:441: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:444: 	if (ctrl_c == 2)
	ld.w	r1, [ctrl_c]	# ctrl_c.71_1, ctrl_c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:444: 	if (ctrl_c == 2)
	mov.w	r0, 2	# tmp29,
	cmp.w	r1, r0	# ctrl_c.71_1, tmp29
	jnz	.L140		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:445: 		return 1;
	mov.w	r0, 1	# _2,
	j	.L141		#
.L140:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:446: 	return 0;
	xor.w	r0, r0	# _2
.L141:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:447: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:450: 	*VIRTUAL_KEY_ADDR = 0;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.72_1, VIRTUAL_KEY_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:450: 	*VIRTUAL_KEY_ADDR = 0;
	xor.w	r1, r1	# tmp30
	st.s	[r0], r1	# *VIRTUAL_KEY_ADDR.72_1, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:451: 	key_is_pressed = 0;
	xor.w	r0, r0	# tmp31
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp31
.L145:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:454: 		if (key_is_pressed == 1) 
	ld.w	r1, [key_is_pressed]	# key_is_pressed.73_2, key_is_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:454: 		if (key_is_pressed == 1) 
	mov.w	r0, 1	# tmp32,
	cmp.w	r1, r0	# key_is_pressed.73_2, tmp32
	jnz	.L145		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:456: 			key_is_pressed = 0;
	xor.w	r0, r0	# tmp33
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:458: 			return vk_pressed;
	ld.w	r0, [vk_pressed]	# _7, vk_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:461: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:465: 	i = *(VIDEO - 1);
	ld.w	r0, [VIDEO]	# VIDEO.74_1, VIDEO
	ld.b	r0, [r0 + (-1)]	# tmp29, MEM[(char *)VIDEO.74_1 + 4294967295B]
	st.b	[r13 + (-1)], r0	# i, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:466: 	i = i ^ 0xFF; 
	ld.b	r0, [r13 + (-1)]	# tmp30, i
	mov.w	r0, r0	# tmp31, tmp30
inv.w	r0	# tmp31
	st.b	[r13 + (-1)], r0	# i, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:467: 	*(VIDEO - 1) = i;
	ld.w	r0, [VIDEO]	# VIDEO.75_2, VIDEO
	add.w	r0, -1 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:467: 	*(VIDEO - 1) = i;
	ld.b	r1, [r13 + (-1)]	# tmp33, i
	st.b	[r0], r1	# *_3, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:468: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:473: 	*VIRTUAL_KEY_ADDR = 0;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.76_1, VIRTUAL_KEY_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:473: 	*VIRTUAL_KEY_ADDR = 0;
	xor.w	r1, r1	# tmp143
	st.s	[r0], r1	# *VIRTUAL_KEY_ADDR.76_1, tmp143
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:474: 	shift_pressed = 0;
	xor.w	r0, r0	# tmp144
	st.w	[shift_pressed], r0	# shift_pressed, tmp144
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:475: 	altgr_pressed = 0;
	xor.w	r0, r0	# tmp145
	st.w	[altgr_pressed], r0	# altgr_pressed, tmp145
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:477: 	start_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.77_2, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:477: 	start_video = (int)VIDEO;
	st.w	[r13 + (-16)], r0	# start_video, VIDEO.77_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:478: 	j = 0;
	xor.w	r0, r0	# tmp146
	st.w	[r13 + (-4)], r0	# j, tmp146
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:479: 	len = strlen(s);
	mov.w	r1, sp	# tmp147,
	ld.w	r0, [r13 + (8)]	# tmp148, s
	st.w	[r1], r0	#, tmp148
	call	strlen		#
	st.w	[r13 + (-12)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:480: 	if (len > 0)
	ld.w	r1, [r13 + (-12)]	# tmp149, len
	xor.w	r0, r0	# tmp150
	cmp.w	r1, r0	# tmp149, tmp150
	jses	.L149		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:482: 		prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.78_3, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:482: 		prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.78_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:483: 		print_str(s);
	mov.w	r1, sp	# tmp151,
	ld.w	r0, [r13 + (8)]	# tmp152, s
	st.w	[r1], r0	#, tmp152
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:484: 		j = len;
	ld.w	r0, [r13 + (-12)]	# tmp153, len
	st.w	[r13 + (-4)], r0	# j, tmp153
.L149:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:487: 	toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:488: 	gets_finished = 0;
	xor.w	r0, r0	# tmp154
	st.w	[gets_finished], r0	# gets_finished, tmp154
.L184:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:491: 		if (gets_finished == 1) 
	ld.w	r1, [gets_finished]	# gets_finished.79_4, gets_finished
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:491: 		if (gets_finished == 1) 
	mov.w	r0, 1	# tmp155,
	cmp.w	r1, r0	# gets_finished.79_4, tmp155
	jnz	.L184		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:493: 			gets_finished = 0;
	xor.w	r0, r0	# tmp156
	st.w	[gets_finished], r0	# gets_finished, tmp156
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:494: 			i = vk_pressed;
	ld.w	r0, [vk_pressed]	# tmp157, vk_pressed
	st.w	[r13 + (-24)], r0	# i, tmp157
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:495: 			switch(i)
	ld.w	r1, [r13 + (-24)]	# tmp158, i
	mov.w	r0, 4003	# tmp159,
	cmp.w	r1, r0	# tmp158, tmp159
	jz	.L151		#
	ld.w	r1, [r13 + (-24)]	# tmp160, i
	mov.w	r0, 4003	# tmp161,
	cmp.w	r1, r0	# tmp160, tmp161
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp162, i
	mov.w	r0, 4002	# tmp163,
	cmp.w	r1, r0	# tmp162, tmp163
	jz	.L153		#
	ld.w	r1, [r13 + (-24)]	# tmp164, i
	mov.w	r0, 4002	# tmp165,
	cmp.w	r1, r0	# tmp164, tmp165
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp166, i
	mov.w	r0, 4001	# tmp167,
	cmp.w	r1, r0	# tmp166, tmp167
	jz	.L154		#
	ld.w	r1, [r13 + (-24)]	# tmp168, i
	mov.w	r0, 4001	# tmp169,
	cmp.w	r1, r0	# tmp168, tmp169
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp170, i
	mov.w	r0, 4000	# tmp171,
	cmp.w	r1, r0	# tmp170, tmp171
	jz	.L155		#
	ld.w	r1, [r13 + (-24)]	# tmp172, i
	mov.w	r0, 4000	# tmp173,
	cmp.w	r1, r0	# tmp172, tmp173
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp174, i
	mov.w	r0, 3004	# tmp175,
	cmp.w	r1, r0	# tmp174, tmp175
	jz	.L156		#
	ld.w	r1, [r13 + (-24)]	# tmp176, i
	mov.w	r0, 3004	# tmp177,
	cmp.w	r1, r0	# tmp176, tmp177
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp178, i
	mov.w	r0, 3003	# tmp179,
	cmp.w	r1, r0	# tmp178, tmp179
	jz	.L157		#
	ld.w	r1, [r13 + (-24)]	# tmp180, i
	mov.w	r0, 3003	# tmp181,
	cmp.w	r1, r0	# tmp180, tmp181
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp182, i
	mov.w	r0, 3001	# tmp183,
	cmp.w	r1, r0	# tmp182, tmp183
	jz	.L158		#
	ld.w	r1, [r13 + (-24)]	# tmp184, i
	mov.w	r0, 3001	# tmp185,
	cmp.w	r1, r0	# tmp184, tmp185
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp186, i
	mov.w	r0, 27	# tmp187,
	cmp.w	r1, r0	# tmp186, tmp187
	jz	.L159		#
	ld.w	r1, [r13 + (-24)]	# tmp188, i
	mov.w	r0, 27	# tmp189,
	cmp.w	r1, r0	# tmp188, tmp189
	jgs	.L152		#
	ld.w	r1, [r13 + (-24)]	# tmp190, i
	mov.w	r0, 8	# tmp191,
	cmp.w	r1, r0	# tmp190, tmp191
	jz	.L160		#
	ld.w	r1, [r13 + (-24)]	# tmp192, i
	mov.w	r0, 13	# tmp193,
	cmp.w	r1, r0	# tmp192, tmp193
	jz	.L161		#
	j	.L152		#
.L159:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:498: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:499: 					blank_line(start_video);
	mov.w	r1, sp	# tmp194,
	ld.w	r0, [r13 + (-16)]	# tmp195, start_video
	st.w	[r1], r0	#, tmp195
	call	blank_line		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:500: 					s[0] = 0;
	ld.w	r0, [r13 + (8)]	# tmp196, s
	xor.w	r1, r1	# tmp197
	st.b	[r0], r1	# *s_152(D), tmp197
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:501: 					len = 0;
	xor.w	r0, r0	# tmp198
	st.w	[r13 + (-12)], r0	# len, tmp198
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:502: 					j = 0;
	xor.w	r0, r0	# tmp199
	st.w	[r13 + (-4)], r0	# j, tmp199
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:503: 					VIDEO = (char *)start_video;
	ld.w	r0, [r13 + (-16)]	# start_video.80_5, start_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:503: 					VIDEO = (char *)start_video;
	st.w	[VIDEO], r0	# VIDEO, start_video.80_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:504: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:505: 					break;
	j	.L150		#
.L161:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:507: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:508: 					s[len] = 0;
	ld.w	r1, [r13 + (-12)]	# len.81_6, len
	ld.w	r0, [r13 + (8)]	# tmp200, s
	add.w	r0, r1 #222	# _7, len.81_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:508: 					s[len] = 0;
	xor.w	r1, r1	# tmp201
	st.b	[r0], r1	# *_7, tmp201
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:509: 					VIDEO += (len - j) * 2;
	ld.w	r2, [VIDEO]	# VIDEO.82_8, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:509: 					VIDEO += (len - j) * 2;
	ld.w	r0, [r13 + (-12)]	# tmp202, len
	ld.w	r1, [r13 + (-4)]	# tmp203, j
	sub.w	r0, r1 #222	# _9, tmp203
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:509: 					VIDEO += (len - j) * 2;
	add.w	r0, r0 #222	# tmp204, _9
	mov.w	r1, r0	# _11, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:509: 					VIDEO += (len - j) * 2;
	mov.w	r0, r2	# _12, VIDEO.82_8
	add.w	r0, r1 #222	# _12, _11
	st.w	[VIDEO], r0	# VIDEO, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:510: 					put_char(13);
	mov.w	r1, sp	# tmp205,
	mov.w	r0, 13	# tmp206,
	st.w	[r1], r0	#, tmp206
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:512: 					if (strlen(s) > 0)
	mov.w	r1, sp	# tmp207,
	ld.w	r0, [r13 + (8)]	# tmp208, s
	st.w	[r1], r0	#, tmp208
	call	strlen		#
	mov.w	r1, r0	# _13,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:512: 					if (strlen(s) > 0)
	xor.w	r0, r0	# tmp209
	cmp.w	r1, r0	# _13, tmp209
	jses	.L162		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:514: 						if (_history_size = HISTORY_MAX)
	mov.w	r0, 4	# tmp210,
	st.w	[_history_size], r0	# _history_size, tmp210
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:516: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	xor.w	r0, r0	# tmp211
	st.w	[r13 + (-8)], r0	# k, tmp211
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:516: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	j	.L163		#
.L164:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:518: 								strcpy(_history[k], _history[k + 1]);
	ld.w	r1, [r13 + (-8)]	# tmp213, k
	mov.w	r0, 8	# tmp214,
	shl.w	r1, r0	# tmp212, tmp214
	mov.w	r0, _history	# tmp215,
	add.w	r1, r0 #222	# _14, tmp215
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:518: 								strcpy(_history[k], _history[k + 1]);
	ld.w	r0, [r13 + (-8)]	# tmp216, k
	mov.w	r2, r0	# _15, tmp216
	add.w	r2, 1 #111	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:518: 								strcpy(_history[k], _history[k + 1]);
	mov.w	r0, 8	# tmp218,
	shl.w	r2, r0	# tmp217, tmp218
	mov.w	r0, _history	# tmp219,
	add.w	r2, r0 #222	# _16, tmp219
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:518: 								strcpy(_history[k], _history[k + 1]);
	mov.w	r0, sp	# tmp220,
	st.w	[r0 + (4)], r2	#, _16
	st.w	[r0], r1	#, _14
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:516: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	ld.w	r0, [r13 + (-8)]	# tmp222, k
	add.w	r0, 1 #111	# tmp221,
	st.w	[r13 + (-8)], r0	# k, tmp221
.L163:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:516: 							for (k = 0; k < HISTORY_MAX - 1; k++)
	ld.w	r1, [r13 + (-8)]	# tmp223, k
	mov.w	r0, 2	# tmp224,
	cmp.w	r1, r0	# tmp223, tmp224
	jses	.L164		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:520: 							_history_size = HISTORY_MAX - 1;
	mov.w	r0, 3	# tmp225,
	st.w	[_history_size], r0	# _history_size, tmp225
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:522: 						strcpy(_history[_history_size], s);
	ld.w	r1, [_history_size]	# _history_size.83_17, _history_size
	mov.w	r0, 8	# tmp227,
	shl.w	r1, r0	# tmp226, tmp227
	mov.w	r0, _history	# tmp228,
	add.w	r1, r0 #222	# _18, tmp228
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:522: 						strcpy(_history[_history_size], s);
	mov.w	r0, sp	# tmp229,
	ld.w	r2, [r13 + (8)]	# tmp230, s
	st.w	[r0 + (4)], r2	#, tmp230
	st.w	[r0], r1	#, _18
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:523: 						_history_idx = _history_size;
	ld.w	r0, [_history_size]	# _history_size.84_19, _history_size
	st.w	[_history_idx], r0	# _history_idx, _history_size.84_19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:524: 						_history_size++;
	ld.w	r0, [_history_size]	# _history_size.85_20, _history_size
	add.w	r0, 1 #111	# _21,
	st.w	[_history_size], r0	# _history_size, _21
.L162:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:533: 					return s;
	ld.w	r0, [r13 + (8)]	# _227, s
	j	.L185		#
.L155:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:535: 					if (_history_size == 0)
	ld.w	r1, [_history_size]	# _history_size.86_22, _history_size
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:535: 					if (_history_size == 0)
	xor.w	r0, r0	# tmp231
	cmp.w	r1, r0	# _history_size.86_22, tmp231
	jz	.L186		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:537: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:538: 					blank_line(start_video);
	mov.w	r1, sp	# tmp232,
	ld.w	r0, [r13 + (-16)]	# tmp233, start_video
	st.w	[r1], r0	#, tmp233
	call	blank_line		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:539: 					VIDEO = (char *)start_video;
	ld.w	r0, [r13 + (-16)]	# start_video.87_23, start_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:539: 					VIDEO = (char *)start_video;
	st.w	[VIDEO], r0	# VIDEO, start_video.87_23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:541: 					s[0] = 0;
	ld.w	r0, [r13 + (8)]	# tmp234, s
	xor.w	r1, r1	# tmp235
	st.b	[r0], r1	# *s_152(D), tmp235
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:542: 					strcpy(s, _history[_history_idx]);
	ld.w	r1, [_history_idx]	# _history_idx.88_24, _history_idx
	mov.w	r0, 8	# tmp237,
	shl.w	r1, r0	# tmp236, tmp237
	mov.w	r0, _history	# tmp238,
	add.w	r1, r0 #222	# _25, tmp238
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:542: 					strcpy(s, _history[_history_idx]);
	mov.w	r0, sp	# tmp239,
	st.w	[r0 + (4)], r1	#, _25
	ld.w	r1, [r13 + (8)]	# tmp240, s
	st.w	[r0], r1	#, tmp240
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:543: 					len = strlen(s);
	mov.w	r1, sp	# tmp241,
	ld.w	r0, [r13 + (8)]	# tmp242, s
	st.w	[r1], r0	#, tmp242
	call	strlen		#
	st.w	[r13 + (-12)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:544: 					j = strlen(s);
	mov.w	r1, sp	# tmp243,
	ld.w	r0, [r13 + (8)]	# tmp244, s
	st.w	[r1], r0	#, tmp244
	call	strlen		#
	st.w	[r13 + (-4)], r0	# j,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:545: 					print_str(s);
	mov.w	r1, sp	# tmp245,
	ld.w	r0, [r13 + (8)]	# tmp246, s
	st.w	[r1], r0	#, tmp246
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:547: 					_history_idx--;
	ld.w	r0, [_history_idx]	# _history_idx.89_26, _history_idx
	add.w	r0, -1 #111	# _27,
	st.w	[_history_idx], r0	# _history_idx, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:548: 					if (_history_idx < 0)
	ld.w	r1, [_history_idx]	# _history_idx.90_28, _history_idx
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:548: 					if (_history_idx < 0)
	xor.w	r0, r0	# tmp247
	cmp.w	r1, r0	# _history_idx.90_28, tmp247
	jges	.L167		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:549: 						_history_idx = 0;
	xor.w	r0, r0	# tmp248
	st.w	[_history_idx], r0	# _history_idx, tmp248
.L167:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:552: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:553: 					break;
	j	.L150		#
.L153:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:555: 					if (_history_size == 0)
	ld.w	r1, [_history_size]	# _history_size.91_29, _history_size
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:555: 					if (_history_size == 0)
	xor.w	r0, r0	# tmp249
	cmp.w	r1, r0	# _history_size.91_29, tmp249
	jz	.L187		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:557: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:558: 					blank_line(start_video);
	mov.w	r1, sp	# tmp250,
	ld.w	r0, [r13 + (-16)]	# tmp251, start_video
	st.w	[r1], r0	#, tmp251
	call	blank_line		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:559: 					VIDEO = (char *)start_video;
	ld.w	r0, [r13 + (-16)]	# start_video.92_30, start_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:559: 					VIDEO = (char *)start_video;
	st.w	[VIDEO], r0	# VIDEO, start_video.92_30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:561: 					s[0] = 0;
	ld.w	r0, [r13 + (8)]	# tmp252, s
	xor.w	r1, r1	# tmp253
	st.b	[r0], r1	# *s_152(D), tmp253
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:562: 					strcpy(s, _history[_history_idx]);
	ld.w	r1, [_history_idx]	# _history_idx.93_31, _history_idx
	mov.w	r0, 8	# tmp255,
	shl.w	r1, r0	# tmp254, tmp255
	mov.w	r0, _history	# tmp256,
	add.w	r1, r0 #222	# _32, tmp256
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:562: 					strcpy(s, _history[_history_idx]);
	mov.w	r0, sp	# tmp257,
	st.w	[r0 + (4)], r1	#, _32
	ld.w	r1, [r13 + (8)]	# tmp258, s
	st.w	[r0], r1	#, tmp258
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:563: 					len = strlen(s);
	mov.w	r1, sp	# tmp259,
	ld.w	r0, [r13 + (8)]	# tmp260, s
	st.w	[r1], r0	#, tmp260
	call	strlen		#
	st.w	[r13 + (-12)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:564: 					j = strlen(s);
	mov.w	r1, sp	# tmp261,
	ld.w	r0, [r13 + (8)]	# tmp262, s
	st.w	[r1], r0	#, tmp262
	call	strlen		#
	st.w	[r13 + (-4)], r0	# j,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:565: 					print_str(s);
	mov.w	r1, sp	# tmp263,
	ld.w	r0, [r13 + (8)]	# tmp264, s
	st.w	[r1], r0	#, tmp264
	call	print_str		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:567: 					_history_idx++;
	ld.w	r0, [_history_idx]	# _history_idx.94_33, _history_idx
	add.w	r0, 1 #111	# _34,
	st.w	[_history_idx], r0	# _history_idx, _34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:568: 					if (_history_idx == _history_size)
	ld.w	r1, [_history_idx]	# _history_idx.95_35, _history_idx
	ld.w	r0, [_history_size]	# _history_size.96_36, _history_size
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:568: 					if (_history_idx == _history_size)
	cmp.w	r1, r0	# _history_idx.95_35, _history_size.96_36
	jnz	.L169		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:569: 						_history_idx = _history_size - 1;
	ld.w	r0, [_history_size]	# _history_size.97_37, _history_size
	add.w	r0, -1 #111	# _38,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:569: 						_history_idx = _history_size - 1;
	st.w	[_history_idx], r0	# _history_idx, _38
.L169:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:572: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:573: 					break;
	j	.L150		#
.L154:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:575: 					if (j > 0)
	ld.w	r1, [r13 + (-4)]	# tmp265, j
	xor.w	r0, r0	# tmp266
	cmp.w	r1, r0	# tmp265, tmp266
	jses	.L188		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:577: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:578: 						j--;
	ld.w	r0, [r13 + (-4)]	# tmp268, j
	add.w	r0, -1 #111	# tmp267,
	st.w	[r13 + (-4)], r0	# j, tmp267
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:579: 						VIDEO -= 2;
	ld.w	r0, [VIDEO]	# VIDEO.98_39, VIDEO
	add.w	r0, -2 #111	# _40,
	st.w	[VIDEO], r0	# VIDEO, _40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:580: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:582: 					break;
	j	.L188		#
.L151:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:584: 					if (s[j] != 0)
	ld.w	r1, [r13 + (-4)]	# j.99_41, j
	ld.w	r0, [r13 + (8)]	# tmp269, s
	add.w	r0, r1 #222	# _42, j.99_41
	ld.b	r0, [r0]	# _43, *_42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:584: 					if (s[j] != 0)
	sex.b	r1, r0	# tmp270, _43
	xor.w	r0, r0	# tmp271
	cmp.w	r1, r0	# tmp270, tmp271
	jz	.L189		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:586: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:587: 						j++;
	ld.w	r0, [r13 + (-4)]	# tmp273, j
	add.w	r0, 1 #111	# tmp272,
	st.w	[r13 + (-4)], r0	# j, tmp272
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:588: 						VIDEO += 2;
	ld.w	r0, [VIDEO]	# VIDEO.100_44, VIDEO
	add.w	r0, 2 #111	# _45,
	st.w	[VIDEO], r0	# VIDEO, _45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:589: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:591: 					break;
	j	.L189		#
.L158:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:593: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:594: 					VIDEO -= j*2;
	ld.w	r2, [VIDEO]	# VIDEO.101_46, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:594: 					VIDEO -= j*2;
	ld.w	r0, [r13 + (-4)]	# tmp274, j
	add.w	r0, r0 #222	# tmp275, tmp274
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:594: 					VIDEO -= j*2;
	mov.w	r1, r0	# _49, _48
neg.w	r1	# _49
	mov.w	r0, r2	# _50, VIDEO.101_46
	add.w	r0, r1 #222	# _50, _49
	st.w	[VIDEO], r0	# VIDEO, _50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:595: 					j = 0;
	xor.w	r0, r0	# tmp276
	st.w	[r13 + (-4)], r0	# j, tmp276
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:596: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:597: 					break;
	j	.L150		#
.L156:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:600: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:601: 					VIDEO += (len-j)*2;
	ld.w	r2, [VIDEO]	# VIDEO.102_51, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:601: 					VIDEO += (len-j)*2;
	ld.w	r0, [r13 + (-12)]	# tmp277, len
	ld.w	r1, [r13 + (-4)]	# tmp278, j
	sub.w	r0, r1 #222	# _52, tmp278
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:601: 					VIDEO += (len-j)*2;
	add.w	r0, r0 #222	# tmp279, _52
	mov.w	r1, r0	# _54, _53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:601: 					VIDEO += (len-j)*2;
	mov.w	r0, r2	# _55, VIDEO.102_51
	add.w	r0, r1 #222	# _55, _54
	st.w	[VIDEO], r0	# VIDEO, _55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:602: 					j = len;
	ld.w	r0, [r13 + (-12)]	# tmp280, len
	st.w	[r13 + (-4)], r0	# j, tmp280
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:603: 					toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:604: 					break;
	j	.L150		#
.L157:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:606: 					if (j < len)
	ld.w	r1, [r13 + (-4)]	# tmp281, j
	ld.w	r0, [r13 + (-12)]	# tmp282, len
	cmp.w	r1, r0	# tmp281, tmp282
	jges	.L190		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:608: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:609: 						prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.103_56, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:609: 						prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.103_56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:610: 						for (k = j; k < len; k++)
	ld.w	r0, [r13 + (-4)]	# tmp283, j
	st.w	[r13 + (-8)], r0	# k, tmp283
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:610: 						for (k = j; k < len; k++)
	j	.L173		#
.L174:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:612: 							s[k] = s[k+1];
	ld.w	r0, [r13 + (-8)]	# k.104_57, k
	add.w	r0, 1 #111	# _58,
	ld.w	r1, [r13 + (8)]	# tmp284, s
	add.w	r1, r0 #222	# _59, _58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:612: 							s[k] = s[k+1];
	ld.w	r2, [r13 + (-8)]	# k.105_60, k
	ld.w	r0, [r13 + (8)]	# tmp285, s
	add.w	r0, r2 #222	# _61, k.105_60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:612: 							s[k] = s[k+1];
	ld.b	r1, [r1]	# _62, *_59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:612: 							s[k] = s[k+1];
	st.b	[r0], r1	# *_61, _62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:613: 							put_char(s[k]);
	ld.w	r1, [r13 + (-8)]	# k.106_63, k
	ld.w	r0, [r13 + (8)]	# tmp286, s
	add.w	r0, r1 #222	# _64, k.106_63
	ld.b	r0, [r0]	# _65, *_64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:613: 							put_char(s[k]);
	sex.b	r0, r0	# _66, _65
	mov.w	r1, sp	# tmp287,
	st.w	[r1], r0	#, _66
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:610: 						for (k = j; k < len; k++)
	ld.w	r0, [r13 + (-8)]	# tmp289, k
	add.w	r0, 1 #111	# tmp288,
	st.w	[r13 + (-8)], r0	# k, tmp288
.L173:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:610: 						for (k = j; k < len; k++)
	ld.w	r1, [r13 + (-8)]	# tmp290, k
	ld.w	r0, [r13 + (-12)]	# tmp291, len
	cmp.w	r1, r0	# tmp290, tmp291
	jss	.L174		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:615: 						len--;
	ld.w	r0, [r13 + (-12)]	# tmp293, len
	add.w	r0, -1 #111	# tmp292,
	st.w	[r13 + (-12)], r0	# len, tmp292
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:616: 						VIDEO = (char *)prev_video;
	ld.w	r0, [r13 + (-20)]	# prev_video.107_67, prev_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:616: 						VIDEO = (char *)prev_video;
	st.w	[VIDEO], r0	# VIDEO, prev_video.107_67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:617: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:619: 					break;
	j	.L190		#
.L160:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:621: 					if (j > 0)
	ld.w	r1, [r13 + (-4)]	# tmp294, j
	xor.w	r0, r0	# tmp295
	cmp.w	r1, r0	# tmp294, tmp295
	jses	.L191		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:623: 						if (j == len)
	ld.w	r1, [r13 + (-4)]	# tmp296, j
	ld.w	r0, [r13 + (-12)]	# tmp297, len
	cmp.w	r1, r0	# tmp296, tmp297
	jnz	.L176		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:625: 							j--;
	ld.w	r0, [r13 + (-4)]	# tmp299, j
	add.w	r0, -1 #111	# tmp298,
	st.w	[r13 + (-4)], r0	# j, tmp298
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:626: 							len--;
	ld.w	r0, [r13 + (-12)]	# tmp301, len
	add.w	r0, -1 #111	# tmp300,
	st.w	[r13 + (-12)], r0	# len, tmp300
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:627: 							s[j] = 0;
	ld.w	r1, [r13 + (-4)]	# j.108_68, j
	ld.w	r0, [r13 + (8)]	# tmp302, s
	add.w	r0, r1 #222	# _69, j.108_68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:627: 							s[j] = 0;
	xor.w	r1, r1	# tmp303
	st.b	[r0], r1	# *_69, tmp303
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:628: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:629: 							VIDEO -= 2;						
	ld.w	r0, [VIDEO]	# VIDEO.109_70, VIDEO
	add.w	r0, -2 #111	# _71,
	st.w	[VIDEO], r0	# VIDEO, _71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:630: 							*VIDEO = 0;
	ld.w	r0, [VIDEO]	# VIDEO.110_72, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:630: 							*VIDEO = 0;
	xor.w	r1, r1	# tmp304
	st.b	[r0], r1	# *VIDEO.110_72, tmp304
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:631: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:649: 					break;
	j	.L191		#
.L176:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:635: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:636: 							VIDEO -= 2;
	ld.w	r0, [VIDEO]	# VIDEO.111_73, VIDEO
	add.w	r0, -2 #111	# _74,
	st.w	[VIDEO], r0	# VIDEO, _74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:637: 							prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.112_75, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:637: 							prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.112_75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:638: 							for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-4)]	# tmp305, j
	st.w	[r13 + (-8)], r0	# k, tmp305
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:638: 							for (k = j; k <= len; k++)
	j	.L177		#
.L178:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:640: 								s[k-1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.113_76, k
	ld.w	r1, [r13 + (8)]	# tmp306, s
	add.w	r1, r0 #222	# _77, k.113_76
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:640: 								s[k-1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.114_78, k
	mov.w	r2, r0	# _79, k.114_78
	add.w	r2, -1 #111	# _79,
	ld.w	r0, [r13 + (8)]	# tmp307, s
	add.w	r0, r2 #222	# _80, _79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:640: 								s[k-1] = s[k];
	ld.b	r1, [r1]	# _81, *_77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:640: 								s[k-1] = s[k];
	st.b	[r0], r1	# *_80, _81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:641: 								put_char(s[k-1]);
	ld.w	r0, [r13 + (-8)]	# k.115_82, k
	mov.w	r1, r0	# _83, k.115_82
	add.w	r1, -1 #111	# _83,
	ld.w	r0, [r13 + (8)]	# tmp308, s
	add.w	r0, r1 #222	# _84, _83
	ld.b	r0, [r0]	# _85, *_84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:641: 								put_char(s[k-1]);
	sex.b	r0, r0	# _86, _85
	mov.w	r1, sp	# tmp309,
	st.w	[r1], r0	#, _86
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:638: 							for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-8)]	# tmp311, k
	add.w	r0, 1 #111	# tmp310,
	st.w	[r13 + (-8)], r0	# k, tmp310
.L177:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:638: 							for (k = j; k <= len; k++)
	ld.w	r1, [r13 + (-8)]	# tmp312, k
	ld.w	r0, [r13 + (-12)]	# tmp313, len
	cmp.w	r1, r0	# tmp312, tmp313
	jses	.L178		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:643: 							j--;
	ld.w	r0, [r13 + (-4)]	# tmp315, j
	add.w	r0, -1 #111	# tmp314,
	st.w	[r13 + (-4)], r0	# j, tmp314
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:644: 							len--;
	ld.w	r0, [r13 + (-12)]	# tmp317, len
	add.w	r0, -1 #111	# tmp316,
	st.w	[r13 + (-12)], r0	# len, tmp316
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:645: 							VIDEO = (char *)prev_video;
	ld.w	r0, [r13 + (-20)]	# prev_video.116_87, prev_video
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:645: 							VIDEO = (char *)prev_video;
	st.w	[VIDEO], r0	# VIDEO, prev_video.116_87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:646: 							toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:649: 					break;
	j	.L191		#
.L152:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:651: 					if (j == len)
	ld.w	r1, [r13 + (-4)]	# tmp318, j
	ld.w	r0, [r13 + (-12)]	# tmp319, len
	cmp.w	r1, r0	# tmp318, tmp319
	jnz	.L179		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:653: 						s[j] = vk_to_char(i);
	mov.w	r1, sp	# tmp320,
	ld.w	r0, [r13 + (-24)]	# tmp321, i
	st.w	[r1], r0	#, tmp321
	call	vk_to_char		#
	mov.w	r2, r0	# _88,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:653: 						s[j] = vk_to_char(i);
	ld.w	r1, [r13 + (-4)]	# j.117_89, j
	ld.w	r0, [r13 + (8)]	# tmp322, s
	add.w	r0, r1 #222	# _90, j.117_89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:653: 						s[j] = vk_to_char(i);
	mov.w	r1, r2	# _91, _88
	st.b	[r0], r1	# *_90, _91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:654: 						s[j+1] = 0;
	ld.w	r0, [r13 + (-4)]	# j.118_92, j
	mov.w	r1, r0	# _93, j.118_92
	add.w	r1, 1 #111	# _93,
	ld.w	r0, [r13 + (8)]	# tmp323, s
	add.w	r0, r1 #222	# _94, _93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:654: 						s[j+1] = 0;
	xor.w	r1, r1	# tmp324
	st.b	[r0], r1	# *_94, tmp324
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:655: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:656: 						put_char(s[j]);
	ld.w	r1, [r13 + (-4)]	# j.119_95, j
	ld.w	r0, [r13 + (8)]	# tmp325, s
	add.w	r0, r1 #222	# _96, j.119_95
	ld.b	r0, [r0]	# _97, *_96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:656: 						put_char(s[j]);
	sex.b	r0, r0	# _98, _97
	mov.w	r1, sp	# tmp326,
	st.w	[r1], r0	#, _98
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:657: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:658: 						j++;
	ld.w	r0, [r13 + (-4)]	# tmp328, j
	add.w	r0, 1 #111	# tmp327,
	st.w	[r13 + (-4)], r0	# j, tmp327
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:659: 						len++;
	ld.w	r0, [r13 + (-12)]	# tmp330, len
	add.w	r0, 1 #111	# tmp329,
	st.w	[r13 + (-12)], r0	# len, tmp329
	j	.L184		#
.L179:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:662: 						toggle_cursor();
	call	toggle_cursor		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:663: 						prev_video = (int)VIDEO;
	ld.w	r0, [VIDEO]	# VIDEO.120_99, VIDEO
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:663: 						prev_video = (int)VIDEO;
	st.w	[r13 + (-20)], r0	# prev_video, VIDEO.120_99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:664: 						for (k = len; k >= j; k--)
	ld.w	r0, [r13 + (-12)]	# tmp331, len
	st.w	[r13 + (-8)], r0	# k, tmp331
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:664: 						for (k = len; k >= j; k--)
	j	.L180		#
.L181:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:666: 							s[k+1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.121_100, k
	ld.w	r1, [r13 + (8)]	# tmp332, s
	add.w	r1, r0 #222	# _101, k.121_100
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:666: 							s[k+1] = s[k];
	ld.w	r0, [r13 + (-8)]	# k.122_102, k
	mov.w	r2, r0	# _103, k.122_102
	add.w	r2, 1 #111	# _103,
	ld.w	r0, [r13 + (8)]	# tmp333, s
	add.w	r0, r2 #222	# _104, _103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:666: 							s[k+1] = s[k];
	ld.b	r1, [r1]	# _105, *_101
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:666: 							s[k+1] = s[k];
	st.b	[r0], r1	# *_104, _105
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:664: 						for (k = len; k >= j; k--)
	ld.w	r0, [r13 + (-8)]	# tmp335, k
	add.w	r0, -1 #111	# tmp334,
	st.w	[r13 + (-8)], r0	# k, tmp334
.L180:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:664: 						for (k = len; k >= j; k--)
	ld.w	r1, [r13 + (-8)]	# tmp336, k
	ld.w	r0, [r13 + (-4)]	# tmp337, j
	cmp.w	r1, r0	# tmp336, tmp337
	jges	.L181		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:668: 						s[j] = vk_to_char(i);
	mov.w	r1, sp	# tmp338,
	ld.w	r0, [r13 + (-24)]	# tmp339, i
	st.w	[r1], r0	#, tmp339
	call	vk_to_char		#
	mov.w	r2, r0	# _106,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:668: 						s[j] = vk_to_char(i);
	ld.w	r1, [r13 + (-4)]	# j.123_107, j
	ld.w	r0, [r13 + (8)]	# tmp340, s
	add.w	r0, r1 #222	# _108, j.123_107
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:668: 						s[j] = vk_to_char(i);
	mov.w	r1, r2	# _109, _106
	st.b	[r0], r1	# *_108, _109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:669: 						for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-4)]	# tmp341, j
	st.w	[r13 + (-8)], r0	# k, tmp341
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:669: 						for (k = j; k <= len; k++)
	j	.L182		#
.L183:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:671: 							put_char(s[k]);
	ld.w	r1, [r13 + (-8)]	# k.124_110, k
	ld.w	r0, [r13 + (8)]	# tmp342, s
	add.w	r0, r1 #222	# _111, k.124_110
	ld.b	r0, [r0]	# _112, *_111
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:671: 							put_char(s[k]);
	sex.b	r0, r0	# _113, _112
	mov.w	r1, sp	# tmp343,
	st.w	[r1], r0	#, _113
	call	put_char		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:669: 						for (k = j; k <= len; k++)
	ld.w	r0, [r13 + (-8)]	# tmp345, k
	add.w	r0, 1 #111	# tmp344,
	st.w	[r13 + (-8)], r0	# k, tmp344
.L182:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:669: 						for (k = j; k <= len; k++)
	ld.w	r1, [r13 + (-8)]	# tmp346, k
	ld.w	r0, [r13 + (-12)]	# tmp347, len
	cmp.w	r1, r0	# tmp346, tmp347
	jses	.L183		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:673: 						j++;
	ld.w	r0, [r13 + (-4)]	# tmp349, j
	add.w	r0, 1 #111	# tmp348,
	st.w	[r13 + (-4)], r0	# j, tmp348
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:674: 						len++;
	ld.w	r0, [r13 + (-12)]	# tmp351, len
	add.w	r0, 1 #111	# tmp350,
	st.w	[r13 + (-12)], r0	# len, tmp350
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:675: 						VIDEO = (char *)(prev_video + 2);
	ld.w	r0, [r13 + (-20)]	# tmp352, prev_video
	add.w	r0, 2 #111	# _114,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:675: 						VIDEO = (char *)(prev_video + 2);
	st.w	[VIDEO], r0	# VIDEO, _115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:677: 						toggle_cursor();
	call	toggle_cursor		#
	j	.L184		#
.L186:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:536: 						break;
	nop	
	j	.L184		#
.L187:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:556: 						break;
	nop	
	j	.L184		#
.L188:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:582: 					break;
	nop	
	j	.L184		#
.L189:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:591: 					break;
	nop	
	j	.L184		#
.L190:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:619: 					break;
	nop	
	j	.L184		#
.L191:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:649: 					break;
	nop	
.L150:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:491: 		if (gets_finished == 1) 
	j	.L184		#
.L185:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:683: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:686: 	*PS2_HANDLER_INSTR 				= 1;
	ld.w	r0, [PS2_HANDLER_INSTR]	# PS2_HANDLER_INSTR.125_1, PS2_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:686: 	*PS2_HANDLER_INSTR 				= 1;
	mov.s	r1, 1	# tmp36,
	st.s	[r0], r1	# *PS2_HANDLER_INSTR.125_1, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:687: 	*PS2_HANDLER_ADDR 				= (int)irq_triggered;
	ld.w	r0, [PS2_HANDLER_ADDR]	# PS2_HANDLER_ADDR.126_2, PS2_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:687: 	*PS2_HANDLER_ADDR 				= (int)irq_triggered;
	mov.w	r1, irq_triggered	# irq_triggered.127_3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:687: 	*PS2_HANDLER_ADDR 				= (int)irq_triggered;
	st.w	[r0], r1	# *PS2_HANDLER_ADDR.126_2, irq_triggered.127_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:688: 	*KEY_PRESSED_HANDLER_INSTR 		= 1;
	ld.w	r0, [KEY_PRESSED_HANDLER_INSTR]	# KEY_PRESSED_HANDLER_INSTR.128_4, KEY_PRESSED_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:688: 	*KEY_PRESSED_HANDLER_INSTR 		= 1;
	mov.s	r1, 1	# tmp37,
	st.s	[r0], r1	# *KEY_PRESSED_HANDLER_INSTR.128_4, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:689: 	*KEY_PRESSED_HANDLER_ADDR 		= (int)&key_pressed;
	ld.w	r0, [KEY_PRESSED_HANDLER_ADDR]	# KEY_PRESSED_HANDLER_ADDR.129_5, KEY_PRESSED_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:689: 	*KEY_PRESSED_HANDLER_ADDR 		= (int)&key_pressed;
	mov.w	r1, key_pressed	# key_pressed.130_6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:689: 	*KEY_PRESSED_HANDLER_ADDR 		= (int)&key_pressed;
	st.w	[r0], r1	# *KEY_PRESSED_HANDLER_ADDR.129_5, key_pressed.130_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:690: 	*KEY_RELEASED_HANDLER_INSTR 	= 1;
	ld.w	r0, [KEY_RELEASED_HANDLER_INSTR]	# KEY_RELEASED_HANDLER_INSTR.131_7, KEY_RELEASED_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:690: 	*KEY_RELEASED_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp38,
	st.s	[r0], r1	# *KEY_RELEASED_HANDLER_INSTR.131_7, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:691: 	*KEY_RELEASED_HANDLER_ADDR	 	= (int)&key_released;
	ld.w	r0, [KEY_RELEASED_HANDLER_ADDR]	# KEY_RELEASED_HANDLER_ADDR.132_8, KEY_RELEASED_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:691: 	*KEY_RELEASED_HANDLER_ADDR	 	= (int)&key_released;
	mov.w	r1, key_released	# key_released.133_9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:691: 	*KEY_RELEASED_HANDLER_ADDR	 	= (int)&key_released;
	st.w	[r0], r1	# *KEY_RELEASED_HANDLER_ADDR.132_8, key_released.133_9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:692: 	*VIRTUAL_KEY_ADDR = 0;
	ld.w	r0, [VIRTUAL_KEY_ADDR]	# VIRTUAL_KEY_ADDR.134_10, VIRTUAL_KEY_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:692: 	*VIRTUAL_KEY_ADDR = 0;
	xor.w	r1, r1	# tmp39
	st.s	[r0], r1	# *VIRTUAL_KEY_ADDR.134_10, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:693: }
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
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:696: 	int t0 = get_millis();
	call	get_millis		#
	st.w	[r13 + (-4)], r0	# t0,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:697: 	while ((get_millis() - t0) < millis ) {
	nop	
.L194:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:697: 	while ((get_millis() - t0) < millis ) {
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:697: 	while ((get_millis() - t0) < millis ) {
	ld.w	r1, [r13 + (-4)]	# tmp28, t0
	sub.w	r0, r1 #222	# _2, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:697: 	while ((get_millis() - t0) < millis ) {
	ld.w	r1, [r13 + (8)]	# tmp29, millis
	cmp.w	r1, r0	# tmp29, _2
	jgs	.L194		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:700: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:703: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	ld.w	r1, [r13 + (12)]	# tmp32, y
	mov.w	r0, r1	# tmp33, tmp32
	mov.w	r2, 2	# tmp35,
	shl.w	r0, r2	# tmp34, tmp35
	add.w	r0, r1 #222	# tmp33, tmp32
	mov.w	r1, 5	# tmp37,
	shl.w	r0, r1	# tmp36, tmp37
	mov.w	r1, r0	# _1, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:703: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	mov.w	r0, 1024	# tmp38,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:703: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	ld.w	r0, [r13 + (8)]	# tmp39, x
	add.w	r0, r0 #222	# tmp40, tmp39
	mov.w	r1, r0	# _3, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:703: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:703: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	add.w	r0, -1 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:703: 		VIDEO = (char *)(1024 + (y * 160) + (x * 2) - 1);
	st.w	[VIDEO], r0	# VIDEO, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:704: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:707: 	return *PORT_MILLIS & 0x7fffffff;
	ld.w	r0, [PORT_MILLIS]	# PORT_MILLIS.135_1, PORT_MILLIS
	ld.w	r0, [r0]	# _2, *PORT_MILLIS.135_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:707: 	return *PORT_MILLIS & 0x7fffffff;
	mov.w	r1, 2147483647	# tmp30,
	and.w	r0, r1	# _4, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:708: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:713: 	if (key_is_pressed) {
	ld.w	r1, [key_is_pressed]	# key_is_pressed.136_1, key_is_pressed
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:713: 	if (key_is_pressed) {
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# key_is_pressed.136_1, tmp29
	jz	.L199		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:714: 		key_is_pressed = 0;
	xor.w	r0, r0	# tmp30
	st.w	[key_is_pressed], r0	# key_is_pressed, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:715: 		return vk_pressed;
	ld.w	r0, [vk_pressed]	# _2, vk_pressed
	j	.L200		#
.L199:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:717: 	return 0;
	xor.w	r0, r0	# _2
.L200:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:718: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:723: 	if (key_is_released) {
	ld.w	r1, [key_is_released]	# key_is_released.137_1, key_is_released
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:723: 	if (key_is_released) {
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# key_is_released.137_1, tmp29
	jz	.L202		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:724: 		key_is_released = 0;
	xor.w	r0, r0	# tmp30
	st.w	[key_is_released], r0	# key_is_released, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:725: 		return vk_released;
	ld.w	r0, [vk_released]	# _2, vk_released
	j	.L203		#
.L202:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:727: 	return 0;
	xor.w	r0, r0	# _2
.L203:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:728: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	is_key_released, .-is_key_released
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
