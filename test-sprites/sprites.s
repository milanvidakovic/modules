	.file	"sprites.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# sprites.c -mel -auxbase-strip sprites.s -fsigned-char -fverbose-asm
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
	.global	sprite_def
	.data
	.p2align	2
	.type	sprite_def, @object
	.size	sprite_def, 4
sprite_def:
	.long	128
	.global	sprite_def2
	.p2align	2
	.type	sprite_def2, @object
	.size	sprite_def2, 4
sprite_def2:
	.long	136
	.global	sprite_addr
	.p2align	2
	.type	sprite_addr, @object
	.size	sprite_addr, 4
sprite_addr:
	.long	512
	.global	sprite_addr2
	.p2align	2
	.type	sprite_addr2, @object
	.size	sprite_addr2, 4
sprite_addr2:
	.long	640
	.global	plane
	.p2align	1
	.type	plane, @object
	.size	plane, 128
plane:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	2
	.short	8192
	.short	0
	.short	0
	.short	2
	.short	8192
	.short	0
	.short	0
	.short	2
	.short	8192
	.short	0
	.short	0
	.short	34
	.short	8704
	.short	0
	.short	0
	.short	34
	.short	8704
	.short	0
	.short	0
	.short	546
	.short	8736
	.short	0
	.short	0
	.short	8738
	.short	8738
	.short	0
	.short	2
	.short	8738
	.short	8738
	.short	8192
	.short	34
	.short	8738
	.short	8738
	.short	8704
	.short	512
	.short	34
	.short	8704
	.short	32
	.short	0
	.short	34
	.short	8704
	.short	0
	.short	0
	.short	34
	.short	8704
	.short	0
	.short	0
	.short	546
	.short	8736
	.short	0
	.short	0
	.short	8736
	.short	546
	.short	0
	.short	2
	.short	8704
	.short	34
	.short	8192
	.global	plane2
	.p2align	1
	.type	plane2, @object
	.size	plane2, 256
plane2:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	4
	.short	16384
	.short	0
	.short	0
	.short	4
	.short	16384
	.short	0
	.short	0
	.short	4
	.short	16384
	.short	0
	.short	0
	.short	4
	.short	16384
	.short	0
	.short	0
	.short	4
	.short	16384
	.short	0
	.short	0
	.short	4
	.short	16384
	.short	0
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	1092
	.short	17472
	.short	0
	.short	0
	.short	1092
	.short	17472
	.short	0
	.short	0
	.short	17476
	.short	17476
	.short	0
	.short	0
	.short	17476
	.short	17476
	.short	0
	.short	4
	.short	17476
	.short	17476
	.short	16384
	.short	4
	.short	17476
	.short	17476
	.short	16384
	.short	68
	.short	17476
	.short	17476
	.short	17408
	.short	68
	.short	17476
	.short	17476
	.short	17408
	.short	1024
	.short	68
	.short	17408
	.short	64
	.short	1024
	.short	68
	.short	17408
	.short	64
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	68
	.short	17408
	.short	0
	.short	0
	.short	1092
	.short	17472
	.short	0
	.short	0
	.short	1092
	.short	17472
	.short	0
	.short	0
	.short	17472
	.short	1092
	.short	0
	.short	0
	.short	17472
	.short	1092
	.short	0
	.short	4
	.short	17408
	.short	68
	.short	16384
	.short	4
	.short	17408
	.short	68
	.short	16384
	.text
	.p2align	1
	.global	copy_sprite_def
	.type	copy_sprite_def, @function
copy_sprite_def:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# sprites.c:72: 	short * p = (short *)sprite_addr;
	ld.w	r0, [sprite_addr]	# sprite_addr.0_1, sprite_addr
# sprites.c:72: 	short * p = (short *)sprite_addr;
	st.w	[r13 + (-4)], r0	# p, sprite_addr.0_1
# sprites.c:73: 	for (int i = 0; i < 16*4; i++)
	xor.w	r0, r0	# tmp28
	st.w	[r13 + (-8)], r0	# i, tmp28
# sprites.c:73: 	for (int i = 0; i < 16*4; i++)
	j	.L2		#
.L3:
# sprites.c:75: 		*p = plane[i];
	ld.w	r0, [r13 + (-8)]	# tmp29, i
	add.w	r0, r0 #222	# tmp30, tmp29
	mov.w	r1, plane	# tmp32,
	add.w	r0, r1 #222	# tmp31, tmp32
	ld.s	r1, [r0]	# _2, plane
# sprites.c:75: 		*p = plane[i];
	ld.w	r0, [r13 + (-4)]	# tmp33, p
	st.s	[r0], r1	# *p_3, _2
# sprites.c:76: 		p++;
	ld.w	r0, [r13 + (-4)]	# tmp35, p
	add.w	r0, 2 #111	# tmp34,
	st.w	[r13 + (-4)], r0	# p, tmp34
# sprites.c:73: 	for (int i = 0; i < 16*4; i++)
	ld.w	r0, [r13 + (-8)]	# tmp37, i
	add.w	r0, 1 #111	# tmp36,
	st.w	[r13 + (-8)], r0	# i, tmp36
.L2:
# sprites.c:73: 	for (int i = 0; i < 16*4; i++)
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 63	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jses	.L3		#
# sprites.c:78: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	copy_sprite_def, .-copy_sprite_def
	.p2align	1
	.global	draw_bitmap
	.type	draw_bitmap, @function
draw_bitmap:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# sprites.c:83: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp99, y
	mov.w	r0, r1	# tmp100, tmp99
	mov.w	r2, 2	# tmp102,
	shl.w	r0, r2	# tmp101, tmp102
	add.w	r0, r1 #222	# tmp100, tmp99
	mov.w	r1, 5	# tmp104,
	shl.w	r0, r1	# tmp103, tmp104
	mov.w	r1, r0	# _1, tmp100
# sprites.c:83: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp105,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp105
# sprites.c:83: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp106, x
	mov.w	r3, 31	# tmp108,
	mov.w	r1, r0	# tmp107, tmp106
	shr.w	r1, r3	# tmp107, tmp108
	mov.w	r3, r1	# tmp109, tmp107
	add.w	r3, r0 #222	# tmp109, tmp106
	mov.w	r1, 1	# tmp111,
	mov.w	r0, r3	# tmp110, tmp109
	shr.w	r0, r1	# tmp110, tmp111
	mov.w	r1, r0	# _3, tmp110
# sprites.c:83: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# sprites.c:83: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-16)], r0	# p1, _4
# sprites.c:84: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp112
	st.w	[r13 + (-4)], r0	# i, tmp112
# sprites.c:84: 	for (int i = 0; i < height; i++)
	j	.L5		#
.L15:
# sprites.c:87: 		short *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-4)]	# i.1_5, i
	mov.w	r0, r1	# tmp113, i.1_5
	mov.w	r2, 2	# tmp115,
	shl.w	r0, r2	# tmp114, tmp115
	add.w	r0, r1 #222	# tmp113, i.1_5
	mov.w	r1, 5	# tmp117,
	shl.w	r0, r1	# tmp116, tmp117
	mov.w	r1, r0	# _6, tmp113
# sprites.c:87: 		short *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-16)]	# tmp119, p1
	add.w	r0, r1 #222	# tmp118, _6
	st.w	[r13 + (-8)], r0	# p2, tmp118
# sprites.c:88: 		int shorts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp121, width
	xor.w	r1, r1	# tmp123
	cmp.w	r0, r1	# tmp122, tmp123
	jges	.L6		#
	add.w	r0, 3 #111	# tmp122,
.L6:
	mov.w	r1, 2	# tmp125,
	shr.w	r0, r1	# tmp124, tmp125
	st.w	[r13 + (-20)], r0	# shorts_per_row, tmp124
# sprites.c:89: 		for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp126
	st.w	[r13 + (-12)], r0	# j, tmp126
# sprites.c:89: 		for (int j = 0; j < shorts_per_row; j++) 
	j	.L7		#
.L14:
# sprites.c:91: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp127, x
	mov.w	r1, -2147483645	# tmp129,
	and.w	r0, r1	# tmp128, tmp129
	xor.w	r1, r1	# tmp130
	cmp.w	r0, r1	# tmp128, tmp130
	jges	.L8		#
	add.w	r0, -1 #111	# tmp128,
	mov.w	r1, -4	# tmp131,
	or.w	r0, r1	# tmp128, tmp131
	add.w	r0, 1 #111	# tmp128,
.L8:
# sprites.c:91: 			switch (x % 4)
	mov.w	r1, 3	# tmp132,
	cmp.w	r0, r1	# _7, tmp132
	jz	.L9		#
	mov.w	r1, 3	# tmp133,
	cmp.w	r0, r1	# _7, tmp133
	jgs	.L10		#
	mov.w	r1, 2	# tmp134,
	cmp.w	r0, r1	# _7, tmp134
	jz	.L11		#
	mov.w	r1, 2	# tmp135,
	cmp.w	r0, r1	# _7, tmp135
	jgs	.L10		#
	xor.w	r1, r1	# tmp136
	cmp.w	r0, r1	# _7, tmp136
	jz	.L12		#
	mov.w	r1, 1	# tmp137,
	cmp.w	r0, r1	# _7, tmp137
	jz	.L13		#
	j	.L10		#
.L12:
# sprites.c:94: 					*p2 = bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-4)]	# tmp138, i
	ld.w	r1, [r13 + (-20)]	# tmp139, shorts_per_row
	mul.w	r0, r1	# _8, tmp139
# sprites.c:94: 					*p2 = bitmap[i*shorts_per_row + j];
	ld.w	r1, [r13 + (-12)]	# tmp140, j
	add.w	r0, r1 #222	# _9, tmp140
# sprites.c:94: 					*p2 = bitmap[i*shorts_per_row + j];
	add.w	r0, r0 #222	# tmp141, _10
	mov.w	r1, r0	# _11, tmp141
	ld.w	r0, [r13 + (24)]	# tmp142, bitmap
	add.w	r0, r1 #222	# _12, _11
	ld.s	r1, [r0]	# _13, *_12
# sprites.c:94: 					*p2 = bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-8)]	# tmp143, p2
	st.s	[r0], r1	# *p2_76, _13
# sprites.c:95: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp145, p2
	add.w	r0, 2 #111	# tmp144,
	st.w	[r13 + (-8)], r0	# p2, tmp144
# sprites.c:96: 					break;
	j	.L10		#
.L13:
# sprites.c:98: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-8)]	# tmp146, p2
	ld.s	r2, [r0]	# _14, *p2_76
# sprites.c:98: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-4)]	# tmp147, i
	ld.w	r1, [r13 + (-20)]	# tmp148, shorts_per_row
	mul.w	r0, r1	# _15, tmp148
# sprites.c:98: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r1, [r13 + (-12)]	# tmp149, j
	add.w	r0, r1 #222	# _16, tmp149
# sprites.c:98: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	add.w	r0, r0 #222	# tmp150, _17
	mov.w	r1, r0	# _18, tmp150
	ld.w	r0, [r13 + (24)]	# tmp151, bitmap
	add.w	r0, r1 #222	# _19, _18
	ld.s	r0, [r0]	# _20, *_19
# sprites.c:98: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	sex.s	r0, r0	# tmp152, _20
	mov.w	r1, 4	# tmp154,
	shr.w	r0, r1	# tmp153, tmp154
	mov.w	r1, r0	# _21, tmp153
	mov.w	r0, r2	# tmp155,
	or.w	r0, r1	# tmp155, _21
	st.s	[r13 + (-22)], r0	# first, tmp156
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-8)]	# tmp157, p2
	add.w	r0, 2 #111	# _22,
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.s	r2, [r0]	# _23, *_22
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-4)]	# tmp158, i
	ld.w	r1, [r13 + (-20)]	# tmp159, shorts_per_row
	mul.w	r0, r1	# _24, tmp159
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r1, [r13 + (-12)]	# tmp160, j
	add.w	r0, r1 #222	# _25, tmp160
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	add.w	r0, r0 #222	# tmp161, _26
	mov.w	r1, r0	# _27, tmp161
	ld.w	r0, [r13 + (24)]	# tmp162, bitmap
	add.w	r0, r1 #222	# _28, _27
	ld.s	r0, [r0]	# _29, *_28
	sex.s	r0, r0	# _30, _29
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, 12	# tmp163,
	shl.w	r0, r1	# _31, tmp163
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, r0	# _32, _31
# sprites.c:99: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r0, r2	# tmp164,
	or.w	r0, r1	# tmp164, _32
	st.s	[r13 + (-24)], r0	# second, tmp165
# sprites.c:100: 					*p2 = first;
	ld.w	r0, [r13 + (-8)]	# tmp166, p2
	ld.s	r1, [r13 + (-22)]	# tmp167, first
	st.s	[r0], r1	# *p2_76, tmp167
# sprites.c:101: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-8)]	# tmp168, p2
	add.w	r0, 2 #111	# _33,
# sprites.c:101: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-24)]	# tmp169, second
	st.s	[r0], r1	# *_33, tmp169
# sprites.c:102: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp171, p2
	add.w	r0, 2 #111	# tmp170,
	st.w	[r13 + (-8)], r0	# p2, tmp170
# sprites.c:103: 					break;
	j	.L10		#
.L11:
# sprites.c:105: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-8)]	# tmp172, p2
	ld.s	r2, [r0]	# _34, *p2_76
# sprites.c:105: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-4)]	# tmp173, i
	ld.w	r1, [r13 + (-20)]	# tmp174, shorts_per_row
	mul.w	r0, r1	# _35, tmp174
# sprites.c:105: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r1, [r13 + (-12)]	# tmp175, j
	add.w	r0, r1 #222	# _36, tmp175
# sprites.c:105: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	add.w	r0, r0 #222	# tmp176, _37
	mov.w	r1, r0	# _38, tmp176
	ld.w	r0, [r13 + (24)]	# tmp177, bitmap
	add.w	r0, r1 #222	# _39, _38
	ld.s	r0, [r0]	# _40, *_39
# sprites.c:105: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	sex.s	r0, r0	# tmp178, _40
	mov.w	r1, 8	# tmp180,
	shr.w	r0, r1	# tmp179, tmp180
	mov.w	r1, r0	# _41, tmp179
	mov.w	r0, r2	# tmp181,
	or.w	r0, r1	# tmp181, _41
	st.s	[r13 + (-22)], r0	# first, tmp182
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-8)]	# tmp183, p2
	add.w	r0, 2 #111	# _42,
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.s	r2, [r0]	# _43, *_42
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-4)]	# tmp184, i
	ld.w	r1, [r13 + (-20)]	# tmp185, shorts_per_row
	mul.w	r0, r1	# _44, tmp185
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r1, [r13 + (-12)]	# tmp186, j
	add.w	r0, r1 #222	# _45, tmp186
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	add.w	r0, r0 #222	# tmp187, _46
	mov.w	r1, r0	# _47, tmp187
	ld.w	r0, [r13 + (24)]	# tmp188, bitmap
	add.w	r0, r1 #222	# _48, _47
	ld.s	r0, [r0]	# _49, *_48
	sex.s	r0, r0	# _50, _49
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, 8	# tmp189,
	shl.w	r0, r1	# _51, tmp189
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, r0	# _52, _51
# sprites.c:106: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r0, r2	# tmp190,
	or.w	r0, r1	# tmp190, _52
	st.s	[r13 + (-24)], r0	# second, tmp191
# sprites.c:107: 					*p2 = first;
	ld.w	r0, [r13 + (-8)]	# tmp192, p2
	ld.s	r1, [r13 + (-22)]	# tmp193, first
	st.s	[r0], r1	# *p2_76, tmp193
# sprites.c:108: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-8)]	# tmp194, p2
	add.w	r0, 2 #111	# _53,
# sprites.c:108: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-24)]	# tmp195, second
	st.s	[r0], r1	# *_53, tmp195
# sprites.c:109: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp197, p2
	add.w	r0, 2 #111	# tmp196,
	st.w	[r13 + (-8)], r0	# p2, tmp196
# sprites.c:110: 					break;
	j	.L10		#
.L9:
# sprites.c:112: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-8)]	# tmp198, p2
	ld.s	r2, [r0]	# _54, *p2_76
# sprites.c:112: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-4)]	# tmp199, i
	ld.w	r1, [r13 + (-20)]	# tmp200, shorts_per_row
	mul.w	r0, r1	# _55, tmp200
# sprites.c:112: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r1, [r13 + (-12)]	# tmp201, j
	add.w	r0, r1 #222	# _56, tmp201
# sprites.c:112: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	add.w	r0, r0 #222	# tmp202, _57
	mov.w	r1, r0	# _58, tmp202
	ld.w	r0, [r13 + (24)]	# tmp203, bitmap
	add.w	r0, r1 #222	# _59, _58
	ld.s	r0, [r0]	# _60, *_59
# sprites.c:112: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	sex.s	r0, r0	# tmp204, _60
	mov.w	r1, 12	# tmp206,
	shr.w	r0, r1	# tmp205, tmp206
	mov.w	r1, r0	# _61, tmp205
	mov.w	r0, r2	# tmp207,
	or.w	r0, r1	# tmp207, _61
	st.s	[r13 + (-22)], r0	# first, tmp208
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-8)]	# tmp209, p2
	add.w	r0, 2 #111	# _62,
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.s	r2, [r0]	# _63, *_62
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-4)]	# tmp210, i
	ld.w	r1, [r13 + (-20)]	# tmp211, shorts_per_row
	mul.w	r0, r1	# _64, tmp211
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r1, [r13 + (-12)]	# tmp212, j
	add.w	r0, r1 #222	# _65, tmp212
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	add.w	r0, r0 #222	# tmp213, _66
	mov.w	r1, r0	# _67, tmp213
	ld.w	r0, [r13 + (24)]	# tmp214, bitmap
	add.w	r0, r1 #222	# _68, _67
	ld.s	r0, [r0]	# _69, *_68
	sex.s	r0, r0	# _70, _69
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, 4	# tmp215,
	shl.w	r0, r1	# _71, tmp215
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, r0	# _72, _71
# sprites.c:113: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r0, r2	# tmp216,
	or.w	r0, r1	# tmp216, _72
	st.s	[r13 + (-24)], r0	# second, tmp217
# sprites.c:114: 					*p2 = first;
	ld.w	r0, [r13 + (-8)]	# tmp218, p2
	ld.s	r1, [r13 + (-22)]	# tmp219, first
	st.s	[r0], r1	# *p2_76, tmp219
# sprites.c:115: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-8)]	# tmp220, p2
	add.w	r0, 2 #111	# _73,
# sprites.c:115: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-24)]	# tmp221, second
	st.s	[r0], r1	# *_73, tmp221
# sprites.c:116: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp223, p2
	add.w	r0, 2 #111	# tmp222,
	st.w	[r13 + (-8)], r0	# p2, tmp222
# sprites.c:117: 					break;
	nop	
.L10:
# sprites.c:89: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-12)]	# tmp225, j
	add.w	r0, 1 #111	# tmp224,
	st.w	[r13 + (-12)], r0	# j, tmp224
.L7:
# sprites.c:89: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-12)]	# tmp226, j
	ld.w	r0, [r13 + (-20)]	# tmp227, shorts_per_row
	cmp.w	r1, r0	# tmp226, tmp227
	jss	.L14		#
# sprites.c:84: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-4)]	# tmp229, i
	add.w	r0, 1 #111	# tmp228,
	st.w	[r13 + (-4)], r0	# i, tmp228
.L5:
# sprites.c:84: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-4)]	# tmp230, i
	ld.w	r0, [r13 + (20)]	# tmp231, height
	cmp.w	r1, r0	# tmp230, tmp231
	jss	.L15		#
# sprites.c:121: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_bitmap, .-draw_bitmap
	.section	.rodata
	.p2align	2
.LC0:
	.string	"millis: %d"
	.p2align	2
.LC1:
	.string	"mouse: %d, %d, %d"
	.text
	.p2align	1
	.global	main
	.type	main, @function
main:
	push	r13		#
	mov.w	r13, sp	#,
	mov.w	r12, 564	#,
	sub.w	sp, r12 #222	#,
# sprites.c:129: 	video_mode(1);
	mov.w	r1, sp	# tmp95,
	mov.w	r0, 1	# tmp96,
	st.w	[r1], r0	#, tmp96
	call	video_mode		#
# sprites.c:131: 	cls(0);	
	mov.w	r1, sp	# tmp97,
	xor.w	r0, r0	# tmp98
	st.w	[r1], r0	#, tmp98
	call	cls		#
# sprites.c:133: 	circle(100, 100, 50, BLUE);
	mov.w	r0, sp	# tmp99,
	mov.w	r1, 1	# tmp100,
	st.w	[r0 + (12)], r1	#, tmp100
	mov.w	r1, 50	# tmp101,
	st.w	[r0 + (8)], r1	#, tmp101
	mov.w	r1, 100	# tmp102,
	st.w	[r0 + (4)], r1	#, tmp102
	mov.w	r1, 100	# tmp103,
	st.w	[r0], r1	#, tmp103
	call	circle		#
# sprites.c:135: 	int start = get_millis();
	call	get_millis		#
	st.w	[r13 + (-24)], r0	# start,
# sprites.c:139: 	asm("push r1\npush r2\n push r3\nmov.w r1, 1024\nmov.w r2, 9024\nmov.w r3, 30000\nblit\npop r3\npop r2\npop r1\n");
# 139 "sprites.c" 1
	push r1
push r2
 push r3
mov.w r1, 1024
mov.w r2, 9024
mov.w r3, 30000
blit
pop r3
pop r2
pop r1

# sprites.c:142: 	sprintf(str, "millis: %d", get_millis() - start);
	call	get_millis		#
	mov.w	r1, r0	# _1,
# sprites.c:142: 	sprintf(str, "millis: %d", get_millis() - start);
	ld.w	r0, [r13 + (-24)]	# tmp104, start
	sub.w	r1, r0 #222	# _2, tmp104
	mov.w	r0, sp	# tmp105,
	st.w	[r0 + (8)], r1	#, _2
	mov.w	r1, .LC0	# tmp106,
	st.w	[r0 + (4)], r1	#, tmp106
	mov.w	r2, -532	# tmp108,
	mov.w	r1, r13	# tmp107,
	add.w	r1, r2 #222	# tmp107, tmp108
	st.w	[r0], r1	#, tmp107
	call	sprintf		#
# sprites.c:143: 	draw(10, 10, GREEN, str);
	mov.w	r0, sp	# tmp109,
	mov.w	r2, -532	# tmp111,
	mov.w	r1, r13	# tmp110,
	add.w	r1, r2 #222	# tmp110, tmp111
	st.w	[r0 + (12)], r1	#, tmp110
	mov.w	r1, 2	# tmp112,
	st.w	[r0 + (8)], r1	#, tmp112
	mov.w	r1, 10	# tmp113,
	st.w	[r0 + (4)], r1	#, tmp113
	mov.w	r1, 10	# tmp114,
	st.w	[r0], r1	#, tmp114
	call	draw		#
# sprites.c:145: 	copy_sprite_def();
	call	copy_sprite_def		#
# sprites.c:146: 	sprite_def->addr = (short)sprite_addr;
	ld.w	r1, [sprite_addr]	# sprite_addr.2_3, sprite_addr
# sprites.c:146: 	sprite_def->addr = (short)sprite_addr;
	ld.w	r0, [sprite_def]	# sprite_def.3_4, sprite_def
# sprites.c:146: 	sprite_def->addr = (short)sprite_addr;
	st.s	[r0], r1	# sprite_def.3_4->addr, _5
# sprites.c:147: 	sprite_def->x = 50;
	ld.w	r0, [sprite_def]	# sprite_def.4_6, sprite_def
# sprites.c:147: 	sprite_def->x = 50;
	mov.s	r1, 50	# tmp115,
	st.s	[r0 + (2)], r1	# sprite_def.4_6->x, tmp115
# sprites.c:148: 	sprite_def->y = 50;
	ld.w	r0, [sprite_def]	# sprite_def.5_7, sprite_def
# sprites.c:148: 	sprite_def->y = 50;
	mov.s	r1, 50	# tmp116,
	st.s	[r0 + (4)], r1	# sprite_def.5_7->y, tmp116
# sprites.c:149: 	sprite_def->transparent = 0;
	ld.w	r0, [sprite_def]	# sprite_def.6_8, sprite_def
# sprites.c:149: 	sprite_def->transparent = 0;
	xor.w	r1, r1	# tmp117
	st.s	[r0 + (6)], r1	# sprite_def.6_8->transparent, tmp117
# sprites.c:151: 	init_mouse(sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.7_9, sprite_def
	ld.s	r0, [r0 + (2)]	# _10, sprite_def.7_9->x
# sprites.c:151: 	init_mouse(sprite_def->x, sprite_def->y);
	sex.s	r1, r0	# _11, _10
# sprites.c:151: 	init_mouse(sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.8_12, sprite_def
	ld.s	r0, [r0 + (4)]	# _13, sprite_def.8_12->y
# sprites.c:151: 	init_mouse(sprite_def->x, sprite_def->y);
	sex.s	r2, r0	# _14, _13
	mov.w	r0, sp	# tmp118,
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _11
	call	init_mouse		#
# sprites.c:153: 	for (int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp119
	st.w	[r13 + (-4)], r0	# i, tmp119
# sprites.c:153: 	for (int i = 0; i < 5; i++)
	j	.L17		#
.L18:
# sprites.c:154: 		draw_bitmap(200 + (i * 20), 150, 16, 16, plane);
	ld.w	r1, [r13 + (-4)]	# tmp120, i
	mov.w	r0, r1	# tmp121, tmp120
	mov.w	r2, 2	# tmp123,
	shl.w	r0, r2	# tmp122, tmp123
	add.w	r0, r1 #222	# tmp121, tmp120
	mov.w	r1, 2	# tmp125,
	shl.w	r0, r1	# tmp124, tmp125
# sprites.c:154: 		draw_bitmap(200 + (i * 20), 150, 16, 16, plane);
	mov.w	r1, r0	# _16, _15
	add.w	r1, 200 #111	# _16,
	mov.w	r0, sp	# tmp126,
	mov.w	r2, plane	# tmp127,
	st.w	[r0 + (16)], r2	#, tmp127
	mov.w	r2, 16	# tmp128,
	st.w	[r0 + (12)], r2	#, tmp128
	mov.w	r2, 16	# tmp129,
	st.w	[r0 + (8)], r2	#, tmp129
	mov.w	r2, 150	# tmp130,
	st.w	[r0 + (4)], r2	#, tmp130
	st.w	[r0], r1	#, _16
	call	draw_bitmap		#
# sprites.c:153: 	for (int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-4)]	# tmp132, i
	add.w	r0, 1 #111	# tmp131,
	st.w	[r13 + (-4)], r0	# i, tmp131
.L17:
# sprites.c:153: 	for (int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-4)]	# tmp133, i
	mov.w	r0, 4	# tmp134,
	cmp.w	r1, r0	# tmp133, tmp134
	jses	.L18		#
# sprites.c:155: 	for (int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp135
	st.w	[r13 + (-8)], r0	# i, tmp135
# sprites.c:155: 	for (int i = 0; i < 5; i++)
	j	.L19		#
.L20:
# sprites.c:156: 		draw_bitmap(203 + (i * 20), 170, 16, 16, plane);
	ld.w	r1, [r13 + (-8)]	# tmp136, i
	mov.w	r0, r1	# tmp137, tmp136
	mov.w	r2, 2	# tmp139,
	shl.w	r0, r2	# tmp138, tmp139
	add.w	r0, r1 #222	# tmp137, tmp136
	mov.w	r1, 2	# tmp141,
	shl.w	r0, r1	# tmp140, tmp141
# sprites.c:156: 		draw_bitmap(203 + (i * 20), 170, 16, 16, plane);
	mov.w	r1, r0	# _18, _17
	add.w	r1, 203 #111	# _18,
	mov.w	r0, sp	# tmp142,
	mov.w	r2, plane	# tmp143,
	st.w	[r0 + (16)], r2	#, tmp143
	mov.w	r2, 16	# tmp144,
	st.w	[r0 + (12)], r2	#, tmp144
	mov.w	r2, 16	# tmp145,
	st.w	[r0 + (8)], r2	#, tmp145
	mov.w	r2, 170	# tmp146,
	st.w	[r0 + (4)], r2	#, tmp146
	st.w	[r0], r1	#, _18
	call	draw_bitmap		#
# sprites.c:155: 	for (int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-8)]	# tmp148, i
	add.w	r0, 1 #111	# tmp147,
	st.w	[r13 + (-8)], r0	# i, tmp147
.L19:
# sprites.c:155: 	for (int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-8)]	# tmp149, i
	mov.w	r0, 4	# tmp150,
	cmp.w	r1, r0	# tmp149, tmp150
	jses	.L20		#
# sprites.c:158: 	for (int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp151
	st.w	[r13 + (-12)], r0	# i, tmp151
# sprites.c:158: 	for (int i = 0; i < 5; i++)
	j	.L21		#
.L22:
# sprites.c:159: 		draw_bitmap(0 + (i * 40), 85, 32, 16, plane2);
	ld.w	r1, [r13 + (-12)]	# tmp152, i
	mov.w	r0, r1	# tmp153, tmp152
	mov.w	r2, 2	# tmp155,
	shl.w	r0, r2	# tmp154, tmp155
	add.w	r0, r1 #222	# tmp153, tmp152
	mov.w	r1, 3	# tmp157,
	shl.w	r0, r1	# tmp156, tmp157
	mov.w	r1, r0	# _19, tmp153
	mov.w	r0, sp	# tmp158,
	mov.w	r2, plane2	# tmp159,
	st.w	[r0 + (16)], r2	#, tmp159
	mov.w	r2, 16	# tmp160,
	st.w	[r0 + (12)], r2	#, tmp160
	mov.w	r2, 32	# tmp161,
	st.w	[r0 + (8)], r2	#, tmp161
	mov.w	r2, 85	# tmp162,
	st.w	[r0 + (4)], r2	#, tmp162
	st.w	[r0], r1	#, _19
	call	draw_bitmap		#
# sprites.c:158: 	for (int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-12)]	# tmp164, i
	add.w	r0, 1 #111	# tmp163,
	st.w	[r13 + (-12)], r0	# i, tmp163
.L21:
# sprites.c:158: 	for (int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-12)]	# tmp165, i
	mov.w	r0, 4	# tmp166,
	cmp.w	r1, r0	# tmp165, tmp166
	jses	.L22		#
# sprites.c:161: 	int vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp167
	st.w	[r13 + (-16)], r0	# vkp, tmp167
# sprites.c:161: 	int vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp168
	st.w	[r13 + (-28)], r0	# vkr, tmp168
# sprites.c:161: 	int vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp169
	st.w	[r13 + (-20)], r0	# old, tmp169
.L40:
# sprites.c:165: 		short int status =  mouse_status(&mouse_x, &mouse_y, &mouse_key);
	mov.w	r0, sp	# tmp170,
	mov.w	r2, -534	# tmp172,
	mov.w	r1, r13	# tmp171,
	add.w	r1, r2 #222	# tmp171, tmp172
	st.w	[r0 + (8)], r1	#, tmp171
	mov.w	r2, -538	# tmp174,
	mov.w	r1, r13	# tmp173,
	add.w	r1, r2 #222	# tmp173, tmp174
	st.w	[r0 + (4)], r1	#, tmp173
	mov.w	r2, -536	# tmp176,
	mov.w	r1, r13	# tmp175,
	add.w	r1, r2 #222	# tmp175, tmp176
	st.w	[r0], r1	#, tmp175
	call	mouse_status		#
	st.s	[r13 + (-30)], r0	# status,
# sprites.c:166: 		if (status) {
	ld.s	r0, [r13 + (-30)]	#, status
	sex.s	r1, r0	# tmp177,
	xor.w	r0, r0	# tmp178
	cmp.w	r1, r0	# tmp177, tmp178
	jz	.L23		#
# sprites.c:167: 			sprite_def->x = mouse_x;
	ld.w	r0, [sprite_def]	# sprite_def.9_20, sprite_def
# sprites.c:167: 			sprite_def->x = mouse_x;
	ld.s	r1, [r13 + (-536)]	# mouse_x.10_21, mouse_x
	st.s	[r0 + (2)], r1	# sprite_def.9_20->x, mouse_x.10_21
# sprites.c:168: 			sprite_def->y = mouse_y;
	ld.w	r0, [sprite_def]	# sprite_def.11_22, sprite_def
# sprites.c:168: 			sprite_def->y = mouse_y;
	ld.s	r1, [r13 + (-538)]	# mouse_y.12_23, mouse_y
	st.s	[r0 + (4)], r1	# sprite_def.11_22->y, mouse_y.12_23
# sprites.c:169: 			key = mouse_key;
	ld.s	r0, [r13 + (-534)]	# tmp179, mouse_key
	st.s	[r13 + (-32)], r0	# key, tmp179
# sprites.c:171: 			asm("mov.w r1, 4224\nmov.w r2, 33024\nmov.w r3, 1600\nblit\n");
# 171 "sprites.c" 1
	mov.w r1, 4224
mov.w r2, 33024
mov.w r3, 1600
blit

# sprites.c:172: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	ld.s	r0, [r13 + (-32)]	#, key
	sex.s	r1, r0	# _24,
# sprites.c:172: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.13_25, sprite_def
	ld.s	r0, [r0 + (2)]	# _26, sprite_def.13_25->x
# sprites.c:172: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	sex.s	r2, r0	# _27, _26
# sprites.c:172: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.14_28, sprite_def
	ld.s	r0, [r0 + (4)]	# _29, sprite_def.14_28->y
# sprites.c:172: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	sex.s	r3, r0	# _30, _29
	mov.w	r0, sp	# tmp180,
	st.w	[r0 + (16)], r3	#, _30
	st.w	[r0 + (12)], r2	#, _27
	st.w	[r0 + (8)], r1	#, _24
	mov.w	r1, .LC1	# tmp181,
	st.w	[r0 + (4)], r1	#, tmp181
	mov.w	r2, -532	# tmp183,
	mov.w	r1, r13	# tmp182,
	add.w	r1, r2 #222	# tmp182, tmp183
	st.w	[r0], r1	#, tmp182
	call	sprintf		#
# sprites.c:173: 			draw(10, 20, RED, str);
	mov.w	r0, sp	# tmp184,
	mov.w	r2, -532	# tmp186,
	mov.w	r1, r13	# tmp185,
	add.w	r1, r2 #222	# tmp185, tmp186
	st.w	[r0 + (12)], r1	#, tmp185
	mov.w	r1, 4	# tmp187,
	st.w	[r0 + (8)], r1	#, tmp187
	mov.w	r1, 20	# tmp188,
	st.w	[r0 + (4)], r1	#, tmp188
	mov.w	r1, 10	# tmp189,
	st.w	[r0], r1	#, tmp189
	call	draw		#
.L23:
# sprites.c:176: 		vkp = is_key_pressed();
	call	is_key_pressed		#
	st.w	[r13 + (-16)], r0	# vkp,
# sprites.c:177: 		vkr = is_key_released();
	call	is_key_released		#
	st.w	[r13 + (-28)], r0	# vkr,
# sprites.c:178: 		if (vkp != VK_SPACE && vkr != VK_SPACE)
	ld.w	r1, [r13 + (-16)]	# tmp190, vkp
	mov.w	r0, 32	# tmp191,
	cmp.w	r1, r0	# tmp190, tmp191
	jz	.L24		#
# sprites.c:178: 		if (vkp != VK_SPACE && vkr != VK_SPACE)
	ld.w	r1, [r13 + (-28)]	# tmp192, vkr
	mov.w	r0, 32	# tmp193,
	cmp.w	r1, r0	# tmp192, tmp193
	jz	.L24		#
# sprites.c:180: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [r13 + (-16)]	# tmp194, vkp
	xor.w	r0, r0	# tmp195
	cmp.w	r1, r0	# tmp194, tmp195
	jnz	.L25		#
# sprites.c:180: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [r13 + (-28)]	# tmp196, vkr
	xor.w	r0, r0	# tmp197
	cmp.w	r1, r0	# tmp196, tmp197
	jnz	.L25		#
# sprites.c:182: 				vkp = old;
	ld.w	r0, [r13 + (-20)]	# tmp198, old
	st.w	[r13 + (-16)], r0	# vkp, tmp198
.L25:
# sprites.c:184: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [r13 + (-28)]	# tmp199, vkr
	xor.w	r0, r0	# tmp200
	cmp.w	r1, r0	# tmp199, tmp200
	jz	.L42		#
# sprites.c:184: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [r13 + (-28)]	# tmp201, vkr
	ld.w	r0, [r13 + (-20)]	# tmp202, old
	cmp.w	r1, r0	# tmp201, tmp202
	jnz	.L42		#
# sprites.c:186: 				vkp = 0;
	xor.w	r0, r0	# tmp203
	st.w	[r13 + (-16)], r0	# vkp, tmp203
# sprites.c:187: 				old = 0;
	xor.w	r0, r0	# tmp204
	st.w	[r13 + (-20)], r0	# old, tmp204
# sprites.c:184: 			if ((vkr != 0) && (vkr == old))
	j	.L42		#
.L24:
# sprites.c:191: 			vkp = old;
	ld.w	r0, [r13 + (-20)]	# tmp205, old
	st.w	[r13 + (-16)], r0	# vkp, tmp205
	j	.L27		#
.L42:
# sprites.c:184: 			if ((vkr != 0) && (vkr == old))
	nop	
.L27:
# sprites.c:194: 		switch (vkp)
	ld.w	r1, [r13 + (-16)]	# tmp206, vkp
	mov.w	r0, 4003	# tmp207,
	cmp.w	r1, r0	# tmp206, tmp207
	jz	.L28		#
	ld.w	r1, [r13 + (-16)]	# tmp208, vkp
	mov.w	r0, 4003	# tmp209,
	cmp.w	r1, r0	# tmp208, tmp209
	jgs	.L29		#
	ld.w	r1, [r13 + (-16)]	# tmp210, vkp
	mov.w	r0, 4002	# tmp211,
	cmp.w	r1, r0	# tmp210, tmp211
	jz	.L30		#
	ld.w	r1, [r13 + (-16)]	# tmp212, vkp
	mov.w	r0, 4002	# tmp213,
	cmp.w	r1, r0	# tmp212, tmp213
	jgs	.L29		#
	ld.w	r1, [r13 + (-16)]	# tmp214, vkp
	mov.w	r0, 4001	# tmp215,
	cmp.w	r1, r0	# tmp214, tmp215
	jz	.L31		#
	ld.w	r1, [r13 + (-16)]	# tmp216, vkp
	mov.w	r0, 4001	# tmp217,
	cmp.w	r1, r0	# tmp216, tmp217
	jgs	.L29		#
	ld.w	r1, [r13 + (-16)]	# tmp218, vkp
	mov.w	r0, 27	# tmp219,
	cmp.w	r1, r0	# tmp218, tmp219
	jz	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp220, vkp
	mov.w	r0, 4000	# tmp221,
	cmp.w	r1, r0	# tmp220, tmp221
	jz	.L33		#
	j	.L29		#
.L31:
# sprites.c:197: 			sprite_def->x -= 1;
	ld.w	r0, [sprite_def]	# sprite_def.15_31, sprite_def
	ld.s	r0, [r0 + (2)]	# _32, sprite_def.15_31->x
	add.w	r0, -1 #111	# tmp222,
	mov.w	r1, r0	# _34, tmp222
	ld.w	r0, [sprite_def]	# sprite_def.16_35, sprite_def
	st.s	[r0 + (2)], r1	# sprite_def.16_35->x, _36
# sprites.c:198: 			if (sprite_def->x < 0)
	ld.w	r0, [sprite_def]	# sprite_def.17_37, sprite_def
	ld.s	r0, [r0 + (2)]	# _38, sprite_def.17_37->x
# sprites.c:198: 			if (sprite_def->x < 0)
	sex.s	r1, r0	# tmp223, _38
	xor.w	r0, r0	# tmp224
	cmp.w	r1, r0	# tmp223, tmp224
	jges	.L43		#
# sprites.c:199: 				sprite_def->x = 0;
	ld.w	r0, [sprite_def]	# sprite_def.18_39, sprite_def
# sprites.c:199: 				sprite_def->x = 0;
	xor.w	r1, r1	# tmp225
	st.s	[r0 + (2)], r1	# sprite_def.18_39->x, tmp225
# sprites.c:200: 			break;
	j	.L43		#
.L28:
# sprites.c:202: 			sprite_def->x += 1;
	ld.w	r0, [sprite_def]	# sprite_def.19_40, sprite_def
	ld.s	r0, [r0 + (2)]	# _41, sprite_def.19_40->x
	add.w	r0, 1 #111	# tmp226,
	mov.w	r1, r0	# _43, tmp226
	ld.w	r0, [sprite_def]	# sprite_def.20_44, sprite_def
	st.s	[r0 + (2)], r1	# sprite_def.20_44->x, _45
# sprites.c:203: 			if (sprite_def->x > 319-16)
	ld.w	r0, [sprite_def]	# sprite_def.21_46, sprite_def
	ld.s	r0, [r0 + (2)]	# _47, sprite_def.21_46->x
# sprites.c:203: 			if (sprite_def->x > 319-16)
	sex.s	r1, r0	# tmp227, _47
	mov.w	r0, 303	# tmp228,
	cmp.w	r1, r0	# tmp227, tmp228
	jses	.L44		#
# sprites.c:204: 				sprite_def->x = 319-16;
	ld.w	r0, [sprite_def]	# sprite_def.22_48, sprite_def
# sprites.c:204: 				sprite_def->x = 319-16;
	mov.s	r1, 303	# tmp229,
	st.s	[r0 + (2)], r1	# sprite_def.22_48->x, tmp229
# sprites.c:205: 			break;
	j	.L44		#
.L30:
# sprites.c:207: 			sprite_def->y += 1;
	ld.w	r0, [sprite_def]	# sprite_def.23_49, sprite_def
	ld.s	r0, [r0 + (4)]	# _50, sprite_def.23_49->y
	add.w	r0, 1 #111	# tmp230,
	mov.w	r1, r0	# _52, tmp230
	ld.w	r0, [sprite_def]	# sprite_def.24_53, sprite_def
	st.s	[r0 + (4)], r1	# sprite_def.24_53->y, _54
# sprites.c:208: 			if (sprite_def->y > 239-16)
	ld.w	r0, [sprite_def]	# sprite_def.25_55, sprite_def
	ld.s	r0, [r0 + (4)]	# _56, sprite_def.25_55->y
# sprites.c:208: 			if (sprite_def->y > 239-16)
	sex.s	r1, r0	# tmp231, _56
	mov.w	r0, 223	# tmp232,
	cmp.w	r1, r0	# tmp231, tmp232
	jses	.L45		#
# sprites.c:209: 				sprite_def->y = 239-16;
	ld.w	r0, [sprite_def]	# sprite_def.26_57, sprite_def
# sprites.c:209: 				sprite_def->y = 239-16;
	mov.s	r1, 223	# tmp233,
	st.s	[r0 + (4)], r1	# sprite_def.26_57->y, tmp233
# sprites.c:210: 			break;
	j	.L45		#
.L33:
# sprites.c:212: 			sprite_def->y -= 1;
	ld.w	r0, [sprite_def]	# sprite_def.27_58, sprite_def
	ld.s	r0, [r0 + (4)]	# _59, sprite_def.27_58->y
	add.w	r0, -1 #111	# tmp234,
	mov.w	r1, r0	# _61, tmp234
	ld.w	r0, [sprite_def]	# sprite_def.28_62, sprite_def
	st.s	[r0 + (4)], r1	# sprite_def.28_62->y, _63
# sprites.c:213: 			if (sprite_def->y < 0)
	ld.w	r0, [sprite_def]	# sprite_def.29_64, sprite_def
	ld.s	r0, [r0 + (4)]	# _65, sprite_def.29_64->y
# sprites.c:213: 			if (sprite_def->y < 0)
	sex.s	r1, r0	# tmp235, _65
	xor.w	r0, r0	# tmp236
	cmp.w	r1, r0	# tmp235, tmp236
	jges	.L46		#
# sprites.c:214: 				sprite_def->y = 0;
	ld.w	r0, [sprite_def]	# sprite_def.30_66, sprite_def
# sprites.c:214: 				sprite_def->y = 0;
	xor.w	r1, r1	# tmp237
	st.s	[r0 + (4)], r1	# sprite_def.30_66->y, tmp237
# sprites.c:215: 			break;
	j	.L46		#
.L32:
# sprites.c:217: 			sprite_def->addr = 0;
	ld.w	r0, [sprite_def]	# sprite_def.31_67, sprite_def
# sprites.c:217: 			sprite_def->addr = 0;
	xor.w	r1, r1	# tmp238
	st.s	[r0], r1	# sprite_def.31_67->addr, tmp238
# sprites.c:218: 			cls(0);	
	mov.w	r1, sp	# tmp239,
	xor.w	r0, r0	# tmp240
	st.w	[r1], r0	#, tmp240
	call	cls		#
# sprites.c:219: 			de_init_mouse();
	call	de_init_mouse		#
# sprites.c:220: 			return (0);
	xor.w	r0, r0	# _137
	j	.L41		#
.L43:
# sprites.c:200: 			break;
	nop	
	j	.L29		#
.L44:
# sprites.c:205: 			break;
	nop	
	j	.L29		#
.L45:
# sprites.c:210: 			break;
	nop	
	j	.L29		#
.L46:
# sprites.c:215: 			break;
	nop	
.L29:
# sprites.c:222: 		if (vkp != 0 && vkp != VK_SPACE)
	ld.w	r1, [r13 + (-16)]	# tmp241, vkp
	xor.w	r0, r0	# tmp242
	cmp.w	r1, r0	# tmp241, tmp242
	jz	.L39		#
# sprites.c:222: 		if (vkp != 0 && vkp != VK_SPACE)
	ld.w	r1, [r13 + (-16)]	# tmp243, vkp
	mov.w	r0, 32	# tmp244,
	cmp.w	r1, r0	# tmp243, tmp244
	jz	.L39		#
# sprites.c:223: 			old = vkp;
	ld.w	r0, [r13 + (-16)]	# tmp245, vkp
	st.w	[r13 + (-20)], r0	# old, tmp245
.L39:
# sprites.c:225: 		delay(15);
	mov.w	r1, sp	# tmp246,
	mov.w	r0, 15	# tmp247,
	st.w	[r1], r0	#, tmp247
	call	delay		#
# sprites.c:164: 	{	
	j	.L40		#
.L41:
# sprites.c:229: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
