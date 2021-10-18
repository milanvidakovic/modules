	.file	"mouse.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.s
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
	.global	PORT_PS2_MOUSE
	.data
	.p2align	2
	.type	PORT_PS2_MOUSE, @object
	.size	PORT_PS2_MOUSE, 4
PORT_PS2_MOUSE:
	.long	-2147482848
	.global	PORT_MOUSE_STRUCT_ADDR
	.p2align	2
	.type	PORT_MOUSE_STRUCT_ADDR, @object
	.size	PORT_MOUSE_STRUCT_ADDR, 4
PORT_MOUSE_STRUCT_ADDR:
	.long	-2147482838
	.global	PS2_MOUSE_RAW_HANDLER_INSTR
	.p2align	2
	.type	PS2_MOUSE_RAW_HANDLER_INSTR, @object
	.size	PS2_MOUSE_RAW_HANDLER_INSTR, 4
PS2_MOUSE_RAW_HANDLER_INSTR:
	.long	72
	.global	PS2_MOUSE_RAW_HANDLER_ADDR
	.p2align	2
	.type	PS2_MOUSE_RAW_HANDLER_ADDR, @object
	.size	PS2_MOUSE_RAW_HANDLER_ADDR, 4
PS2_MOUSE_RAW_HANDLER_ADDR:
	.long	74
	.global	mouse_byte
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	mouse_byte, @object
	.size	mouse_byte, 12
mouse_byte:
	.zero	12
	.global	old_mouse_byte
	.p2align	2
	.type	old_mouse_byte, @object
	.size	old_mouse_byte, 12
old_mouse_byte:
	.zero	12
	.global	mouse_counter
	.p2align	2
	.type	mouse_counter, @object
	.size	mouse_counter, 4
mouse_counter:
	.zero	4
	.global	mouse_data
	.p2align	1
	.type	mouse_data, @object
	.size	mouse_data, 8
mouse_data:
	.zero	8
	.text
	.p2align	1
	.global	ps2_mouse_irq_triggered
	.type	ps2_mouse_irq_triggered, @function
ps2_mouse_irq_triggered:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:23:     asm 
# 23 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:28: 	mouse_byte[mouse_counter++] = *PORT_PS2_MOUSE;
	ld.w	r0, [PORT_PS2_MOUSE]	# PORT_PS2_MOUSE.0_1, PORT_PS2_MOUSE
	ld.s	r1, [r0]	# _2, *PORT_PS2_MOUSE.0_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:28: 	mouse_byte[mouse_counter++] = *PORT_PS2_MOUSE;
	ld.w	r0, [mouse_counter]	# mouse_counter.1_3, mouse_counter
	mov.w	r2, r0	# _5, mouse_counter.1_3
	add.w	r2, 1 #111	# _5,
	st.w	[mouse_counter], r2	# mouse_counter, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:28: 	mouse_byte[mouse_counter++] = *PORT_PS2_MOUSE;
	zex.s	r1, r1	# _6, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:28: 	mouse_byte[mouse_counter++] = *PORT_PS2_MOUSE;
	mov.w	r2, 2	# tmp77,
	shl.w	r0, r2	# tmp76, tmp77
	mov.w	r2, mouse_byte	# tmp79,
	add.w	r0, r2 #222	# tmp78, tmp79
	st.w	[r0], r1	# mouse_byte, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:29: 	if (mouse_counter == 3)
	ld.w	r1, [mouse_counter]	# mouse_counter.3_7, mouse_counter
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:29: 	if (mouse_counter == 3)
	mov.w	r0, 3	# tmp80,
	cmp.w	r1, r0	# mouse_counter.3_7, tmp80
	jnz	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:30: 		mouse_counter = 0;
	xor.w	r0, r0	# tmp81
	st.w	[mouse_counter], r0	# mouse_counter, tmp81
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:32:     if ((mouse_counter == 0) && (mouse_byte[0] != old_mouse_byte[0] ||
	ld.w	r1, [mouse_counter]	# mouse_counter.4_8, mouse_counter
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:32:     if ((mouse_counter == 0) && (mouse_byte[0] != old_mouse_byte[0] ||
	xor.w	r0, r0	# tmp82
	cmp.w	r1, r0	# mouse_counter.4_8, tmp82
	jnz	.L3		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:32:     if ((mouse_counter == 0) && (mouse_byte[0] != old_mouse_byte[0] ||
	ld.w	r1, [mouse_byte]	# _9, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:32:     if ((mouse_counter == 0) && (mouse_byte[0] != old_mouse_byte[0] ||
	ld.w	r0, [old_mouse_byte]	# _10, old_mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:32:     if ((mouse_counter == 0) && (mouse_byte[0] != old_mouse_byte[0] ||
	cmp.w	r1, r0	# _9, _10
	jnz	.L4		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:33: 			mouse_byte[1] != old_mouse_byte[1] || 
	ld.w	r1, [mouse_byte+4]	# _11, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:33: 			mouse_byte[1] != old_mouse_byte[1] || 
	ld.w	r0, [old_mouse_byte+4]	# _12, old_mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:32:     if ((mouse_counter == 0) && (mouse_byte[0] != old_mouse_byte[0] ||
	cmp.w	r1, r0	# _11, _12
	jnz	.L4		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:34: 			mouse_byte[2] != old_mouse_byte[2])) {
	ld.w	r1, [mouse_byte+8]	# _13, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:34: 			mouse_byte[2] != old_mouse_byte[2])) {
	ld.w	r0, [old_mouse_byte+8]	# _14, old_mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:33: 			mouse_byte[1] != old_mouse_byte[1] || 
	cmp.w	r1, r0	# _13, _14
	jz	.L3		#
.L4:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:36:         old_mouse_byte[0] = mouse_byte[0];
	ld.w	r0, [mouse_byte]	# _15, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:36:         old_mouse_byte[0] = mouse_byte[0];
	st.w	[old_mouse_byte], r0	# old_mouse_byte, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:37:         old_mouse_byte[1] = mouse_byte[1];
	ld.w	r0, [mouse_byte+4]	# _16, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:37:         old_mouse_byte[1] = mouse_byte[1];
	st.w	[old_mouse_byte+4], r0	# old_mouse_byte, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:38:         old_mouse_byte[2] = mouse_byte[2];
	ld.w	r0, [mouse_byte+8]	# _17, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:38:         old_mouse_byte[2] = mouse_byte[2];
	st.w	[old_mouse_byte+8], r0	# old_mouse_byte, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:40:         if (mouse_byte[1] > 128) {
	ld.w	r1, [mouse_byte+4]	# _18, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:40:         if (mouse_byte[1] > 128) {
	mov.w	r0, 128	# tmp83,
	cmp.w	r1, r0	# _18, tmp83
	jses	.L5		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:42:             mouse_data.PS2_MOUSE_X += - (256 - mouse_byte[1]);
	ld.s	r0, [mouse_data]	# _19, mouse_data.PS2_MOUSE_X
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:42:             mouse_data.PS2_MOUSE_X += - (256 - mouse_byte[1]);
	ld.w	r1, [mouse_byte+4]	# _21, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:42:             mouse_data.PS2_MOUSE_X += - (256 - mouse_byte[1]);
	add.w	r0, r1 #222	# tmp84, tmp85
	mov.w	r1, -256	# tmp87,
	add.w	r0, r1 #222	# tmp86, tmp87
	st.s	[mouse_data], r0	# mouse_data.PS2_MOUSE_X, _25
	j	.L6		#
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:44:             mouse_data.PS2_MOUSE_X += mouse_byte[1];
	ld.s	r0, [mouse_data]	# _26, mouse_data.PS2_MOUSE_X
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:44:             mouse_data.PS2_MOUSE_X += mouse_byte[1];
	ld.w	r1, [mouse_byte+4]	# _28, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:44:             mouse_data.PS2_MOUSE_X += mouse_byte[1];
	add.w	r0, r1 #222	# tmp88, tmp89
	st.s	[mouse_data], r0	# mouse_data.PS2_MOUSE_X, _31
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:46:         if (mouse_byte[2] > 128) {
	ld.w	r1, [mouse_byte+8]	# _32, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:46:         if (mouse_byte[2] > 128) {
	mov.w	r0, 128	# tmp90,
	cmp.w	r1, r0	# _32, tmp90
	jses	.L7		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:48:             mouse_data.PS2_MOUSE_Y += (256 - mouse_byte[2]);
	ld.s	r0, [mouse_data+2]	# _33, mouse_data.PS2_MOUSE_Y
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:48:             mouse_data.PS2_MOUSE_Y += (256 - mouse_byte[2]);
	ld.w	r1, [mouse_byte+8]	# _35, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:48:             mouse_data.PS2_MOUSE_Y += (256 - mouse_byte[2]);
	sub.w	r0, r1 #222	# tmp91, tmp92
	mov.w	r1, 256	# tmp94,
	add.w	r0, r1 #222	# tmp93, tmp94
	st.s	[mouse_data+2], r0	# mouse_data.PS2_MOUSE_Y, _39
	j	.L8		#
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:50:             mouse_data.PS2_MOUSE_Y += - mouse_byte[2];
	ld.s	r0, [mouse_data+2]	# _40, mouse_data.PS2_MOUSE_Y
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:50:             mouse_data.PS2_MOUSE_Y += - mouse_byte[2];
	ld.w	r1, [mouse_byte+8]	# _42, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:50:             mouse_data.PS2_MOUSE_Y += - mouse_byte[2];
	sub.w	r0, r1 #222	# tmp95, tmp96
	st.s	[mouse_data+2], r0	# mouse_data.PS2_MOUSE_Y, _45
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:53:    		if (mouse_data.PS2_MOUSE_X < 0)
	ld.s	r0, [mouse_data]	# _46, mouse_data.PS2_MOUSE_X
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:53:    		if (mouse_data.PS2_MOUSE_X < 0)
	sex.s	r1, r0	# tmp97, _46
	xor.w	r0, r0	# tmp98
	cmp.w	r1, r0	# tmp97, tmp98
	jges	.L9		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:54: 			mouse_data.PS2_MOUSE_X = 0;				
	xor.w	r0, r0	# tmp99
	st.s	[mouse_data], r0	# mouse_data.PS2_MOUSE_X, tmp99
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:55: 		if (mouse_data.PS2_MOUSE_X > 319-16)
	ld.s	r0, [mouse_data]	# _47, mouse_data.PS2_MOUSE_X
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:55: 		if (mouse_data.PS2_MOUSE_X > 319-16)
	sex.s	r1, r0	# tmp100, _47
	mov.w	r0, 303	# tmp101,
	cmp.w	r1, r0	# tmp100, tmp101
	jses	.L10		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:56: 			mouse_data.PS2_MOUSE_X = 319-16;
	mov.s	r0, 303	# tmp102,
	st.s	[mouse_data], r0	# mouse_data.PS2_MOUSE_X, tmp102
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:57: 		if (mouse_data.PS2_MOUSE_Y < 0)
	ld.s	r0, [mouse_data+2]	# _48, mouse_data.PS2_MOUSE_Y
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:57: 		if (mouse_data.PS2_MOUSE_Y < 0)
	sex.s	r1, r0	# tmp103, _48
	xor.w	r0, r0	# tmp104
	cmp.w	r1, r0	# tmp103, tmp104
	jges	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:58: 			mouse_data.PS2_MOUSE_Y = 0;
	xor.w	r0, r0	# tmp105
	st.s	[mouse_data+2], r0	# mouse_data.PS2_MOUSE_Y, tmp105
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:59: 		if (mouse_data.PS2_MOUSE_Y > 239-16)
	ld.s	r0, [mouse_data+2]	# _49, mouse_data.PS2_MOUSE_Y
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:59: 		if (mouse_data.PS2_MOUSE_Y > 239-16)
	sex.s	r1, r0	# tmp106, _49
	mov.w	r0, 223	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jses	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:60: 			mouse_data.PS2_MOUSE_Y = 239-16;
	mov.s	r0, 223	# tmp108,
	st.s	[mouse_data+2], r0	# mouse_data.PS2_MOUSE_Y, tmp108
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:62:         mouse_data.PS2_MOUSE_KEY = mouse_byte[0];
	ld.w	r0, [mouse_byte]	# _50, mouse_byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:62:         mouse_data.PS2_MOUSE_KEY = mouse_byte[0];
	st.s	[mouse_data+4], r0	# mouse_data.PS2_MOUSE_KEY, _51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:64:         mouse_data.PS2_MOUSE_STATUS = 1;
	mov.s	r0, 1	# tmp109,
	st.s	[mouse_data+6], r0	# mouse_data.PS2_MOUSE_STATUS, tmp109
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:67: 	asm 
# 67 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c" 1
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

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:71: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ps2_mouse_irq_triggered, .-ps2_mouse_irq_triggered
	.p2align	1
	.global	mouse_status
	.type	mouse_status, @function
mouse_status:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:74:     short int retVal = mouse_data.PS2_MOUSE_STATUS;
	ld.s	r0, [mouse_data+6]	# tmp31, mouse_data.PS2_MOUSE_STATUS
	st.s	[r13 + (-2)], r0	# retVal, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:75:     if (retVal == 1) {
	ld.s	r0, [r13 + (-2)]	#, retVal
	sex.s	r1, r0	# tmp32,
	mov.w	r0, 1	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jnz	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:76:         mouse_data.PS2_MOUSE_STATUS = 0;
	xor.w	r0, r0	# tmp34
	st.s	[mouse_data+6], r0	# mouse_data.PS2_MOUSE_STATUS, tmp34
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:78:     *x = mouse_data.PS2_MOUSE_X;
	ld.s	r1, [mouse_data]	# _1, mouse_data.PS2_MOUSE_X
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:78:     *x = mouse_data.PS2_MOUSE_X;
	ld.w	r0, [r13 + (8)]	# tmp35, x
	st.s	[r0], r1	# *x_8(D), _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:79:     *y = mouse_data.PS2_MOUSE_Y;
	ld.s	r1, [mouse_data+2]	# _2, mouse_data.PS2_MOUSE_Y
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:79:     *y = mouse_data.PS2_MOUSE_Y;
	ld.w	r0, [r13 + (12)]	# tmp36, y
	st.s	[r0], r1	# *y_10(D), _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:80:     *key = mouse_data.PS2_MOUSE_KEY;
	ld.s	r1, [mouse_data+4]	# _3, mouse_data.PS2_MOUSE_KEY
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:80:     *key = mouse_data.PS2_MOUSE_KEY;
	ld.w	r0, [r13 + (16)]	# tmp37, key
	st.s	[r0], r1	# *key_12(D), _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:81:     return retVal;
	ld.s	r0, [r13 + (-2)]	# _14, retVal
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:82: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	mouse_status, .-mouse_status
	.p2align	1
	.global	init_mouse
	.type	init_mouse, @function
init_mouse:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp31, x
	ld.w	r0, [r13 + (12)]	# tmp33, y
	st.s	[r13 + (-4)], r1	# x, tmp32
	st.s	[r13 + (-8)], r0	# y, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:85:     mouse_data.PS2_MOUSE_STATUS = 0;
	xor.w	r0, r0	# tmp35
	st.s	[mouse_data+6], r0	# mouse_data.PS2_MOUSE_STATUS, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:86:     mouse_data.PS2_MOUSE_X = x;
	ld.s	r0, [r13 + (-4)]	# tmp36, x
	st.s	[mouse_data], r0	# mouse_data.PS2_MOUSE_X, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:87:     mouse_data.PS2_MOUSE_Y = y;
	ld.s	r0, [r13 + (-8)]	# tmp37, y
	st.s	[mouse_data+2], r0	# mouse_data.PS2_MOUSE_Y, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:88:     mouse_data.PS2_MOUSE_KEY = 0;
	xor.w	r0, r0	# tmp38
	st.s	[mouse_data+4], r0	# mouse_data.PS2_MOUSE_KEY, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:90: 	mouse_counter = 0;
	xor.w	r0, r0	# tmp39
	st.w	[mouse_counter], r0	# mouse_counter, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:92: 	*PS2_MOUSE_RAW_HANDLER_INSTR 	= 1;
	ld.w	r0, [PS2_MOUSE_RAW_HANDLER_INSTR]	# PS2_MOUSE_RAW_HANDLER_INSTR.5_1, PS2_MOUSE_RAW_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:92: 	*PS2_MOUSE_RAW_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp40,
	st.s	[r0], r1	# *PS2_MOUSE_RAW_HANDLER_INSTR.5_1, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:93: 	*PS2_MOUSE_RAW_HANDLER_ADDR 	= (int)&ps2_mouse_irq_triggered;
	ld.w	r0, [PS2_MOUSE_RAW_HANDLER_ADDR]	# PS2_MOUSE_RAW_HANDLER_ADDR.6_2, PS2_MOUSE_RAW_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:93: 	*PS2_MOUSE_RAW_HANDLER_ADDR 	= (int)&ps2_mouse_irq_triggered;
	mov.w	r1, ps2_mouse_irq_triggered	# ps2_mouse_irq_triggered.7_3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:93: 	*PS2_MOUSE_RAW_HANDLER_ADDR 	= (int)&ps2_mouse_irq_triggered;
	st.w	[r0], r1	# *PS2_MOUSE_RAW_HANDLER_ADDR.6_2, ps2_mouse_irq_triggered.7_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:95:     *PORT_MOUSE_STRUCT_ADDR = (int)&mouse_data;
	ld.w	r0, [PORT_MOUSE_STRUCT_ADDR]	# PORT_MOUSE_STRUCT_ADDR.8_4, PORT_MOUSE_STRUCT_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:95:     *PORT_MOUSE_STRUCT_ADDR = (int)&mouse_data;
	mov.w	r1, mouse_data	# mouse_data.9_5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:95:     *PORT_MOUSE_STRUCT_ADDR = (int)&mouse_data;
	st.w	[r0], r1	# *PORT_MOUSE_STRUCT_ADDR.8_4, mouse_data.9_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:96: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_mouse, .-init_mouse
	.p2align	1
	.global	de_init_mouse
	.type	de_init_mouse, @function
de_init_mouse:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:99: 	mouse_counter = 0;
	xor.w	r0, r0	# tmp29
	st.w	[mouse_counter], r0	# mouse_counter, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:100: 	*PS2_MOUSE_RAW_HANDLER_INSTR 	= 0;
	ld.w	r0, [PS2_MOUSE_RAW_HANDLER_INSTR]	# PS2_MOUSE_RAW_HANDLER_INSTR.10_1, PS2_MOUSE_RAW_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:100: 	*PS2_MOUSE_RAW_HANDLER_INSTR 	= 0;
	xor.w	r1, r1	# tmp30
	st.s	[r0], r1	# *PS2_MOUSE_RAW_HANDLER_INSTR.10_1, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:101: 	*PS2_MOUSE_RAW_HANDLER_ADDR 	= 0;
	ld.w	r0, [PS2_MOUSE_RAW_HANDLER_ADDR]	# PS2_MOUSE_RAW_HANDLER_ADDR.11_2, PS2_MOUSE_RAW_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:101: 	*PS2_MOUSE_RAW_HANDLER_ADDR 	= 0;
	xor.w	r1, r1	# tmp31
	st.w	[r0], r1	# *PS2_MOUSE_RAW_HANDLER_ADDR.11_2, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:102:     *PORT_MOUSE_STRUCT_ADDR = 0;
	ld.w	r0, [PORT_MOUSE_STRUCT_ADDR]	# PORT_MOUSE_STRUCT_ADDR.12_3, PORT_MOUSE_STRUCT_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:102:     *PORT_MOUSE_STRUCT_ADDR = 0;
	xor.w	r1, r1	# tmp32
	st.w	[r0], r1	# *PORT_MOUSE_STRUCT_ADDR.12_3, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/mouse.c:103: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	de_init_mouse, .-de_init_mouse
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
