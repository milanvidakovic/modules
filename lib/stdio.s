	.file	"stdio.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
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
	.global	cls
	.type	cls, @function
cls:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:658: 	asm("ld.w r0, [190000]\njr r0\n");
# 658 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190000]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:659: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	cls, .-cls
	.p2align	1
	.global	put_char
	.type	put_char, @function
put_char:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:661: 	asm("ld.w r0, [190004]\njr r0\n");
# 661 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190004]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:662: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	put_char, .-put_char
	.p2align	1
	.global	printf
	.type	printf, @function
printf:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:664: 	asm("ld.w r0, [190008]\njr r0\n");
# 664 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190008]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:665: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:668: 	asm("ld.w r0, [190012]\njr r0\n");
# 668 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190012]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:669: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:672: 	asm("ld.w r0, [190016]\njr r0\n");
# 672 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190016]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:673: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:676: 	asm("ld.w r0, [190020]\njr r0\n");
# 676 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190020]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:677: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:680: 	asm("ld.w r0, [190024]\njr r0\n");
# 680 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190024]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:681: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getc, .-getc
	.p2align	1
	.global	gets
	.type	gets, @function
gets:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:684: 	asm("ld.w r0, [190028]\njr r0\n");
# 684 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190028]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:685: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:688: 	asm("ld.w r0, [190032]\njr r0\n");
# 688 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190032]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:689: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:692: 	asm("ld.w r0, [190036]\njr r0\n");
# 692 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190036]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:693: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:696: 	asm("ld.w r0, [190040]\njr r0\n");
# 696 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190040]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:697: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:700: 	asm("ld.w r0, [190044]\njr r0\n");
# 700 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190044]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:701: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:704: 	asm("ld.w r0, [190048]\njr r0\n");
# 704 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190048]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:705: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:708: 	asm("ld.w r0, [190052]\njr r0\n");
# 708 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190052]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:709: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	is_key_released, .-is_key_released
	.p2align	1
	.global	toggle_cursor
	.type	toggle_cursor, @function
toggle_cursor:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:712: 	asm("ld.w r0, [190056]\njr r0\n");
# 712 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190056]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:713: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	toggle_cursor, .-toggle_cursor
	.p2align	1
	.global	putchar
	.type	putchar, @function
putchar:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:716: 	asm("ld.w r0, [190060]\njr r0\n");
# 716 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190060]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:717: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	putchar, .-putchar
	.p2align	1
	.global	video_mode
	.type	video_mode, @function
video_mode:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:720: 	asm("ld.w r0, [190064]\njr r0\n");
# 720 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190064]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:721: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	video_mode, .-video_mode
	.p2align	1
	.global	scroll_up
	.type	scroll_up, @function
scroll_up:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:723: 	asm("ld.w r0, [190416]\njr r0\n");
# 723 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c" 1
	ld.w r0, [190416]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/stdio.c:724: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	scroll_up, .-scroll_up
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
