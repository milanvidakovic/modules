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
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	sprite_def, @object
	.size	sprite_def, 4
sprite_def:
	.zero	4
	.global	sprite_def1
	.data
	.p2align	2
	.type	sprite_def1, @object
	.size	sprite_def1, 4
sprite_def1:
	.long	128
	.global	sprite_def2
	.p2align	2
	.type	sprite_def2, @object
	.size	sprite_def2, 4
sprite_def2:
	.long	136
	.global	sprite_def3
	.p2align	2
	.type	sprite_def3, @object
	.size	sprite_def3, 4
sprite_def3:
	.long	144
	.global	sprite_def4
	.p2align	2
	.type	sprite_def4, @object
	.size	sprite_def4, 4
sprite_def4:
	.long	152
	.global	sprite_def5
	.p2align	2
	.type	sprite_def5, @object
	.size	sprite_def5, 4
sprite_def5:
	.long	160
	.global	sprite_addr1
	.p2align	2
	.type	sprite_addr1, @object
	.size	sprite_addr1, 4
sprite_addr1:
	.long	384
	.global	sprite_addr2
	.p2align	2
	.type	sprite_addr2, @object
	.size	sprite_addr2, 4
sprite_addr2:
	.long	512
	.global	sprite_addr3
	.p2align	2
	.type	sprite_addr3, @object
	.size	sprite_addr3, 4
sprite_addr3:
	.long	640
	.global	sprite_addr4
	.p2align	2
	.type	sprite_addr4, @object
	.size	sprite_addr4, 4
sprite_addr4:
	.long	768
	.global	sprite_addr5
	.p2align	2
	.type	sprite_addr5, @object
	.size	sprite_addr5, 4
sprite_addr5:
	.long	896
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
# sprites.c:75: 	short *p = (short *)spr_def;
	ld.w	r0, [r13 + (8)]	# tmp27, spr_def
	st.w	[r13 + (-4)], r0	# p, tmp27
# sprites.c:76: 	for (int i = 0; i < 16*4; i++)
	xor.w	r0, r0	# tmp28
	st.w	[r13 + (-8)], r0	# i, tmp28
# sprites.c:76: 	for (int i = 0; i < 16*4; i++)
	j	.L2		#
.L3:
# sprites.c:78: 		*p = plane[i];
	ld.w	r0, [r13 + (-8)]	# tmp29, i
	add.w	r0, r0 #222	# tmp30, tmp29
	mov.w	r1, plane	# tmp32,
	add.w	r0, r1 #222	# tmp31, tmp32
	ld.s	r1, [r0]	# _1, plane
# sprites.c:78: 		*p = plane[i];
	ld.w	r0, [r13 + (-4)]	# tmp33, p
	st.s	[r0], r1	# *p_2, _1
# sprites.c:79: 		p++;
	ld.w	r0, [r13 + (-4)]	# tmp35, p
	add.w	r0, 2 #111	# tmp34,
	st.w	[r13 + (-4)], r0	# p, tmp34
# sprites.c:76: 	for (int i = 0; i < 16*4; i++)
	ld.w	r0, [r13 + (-8)]	# tmp37, i
	add.w	r0, 1 #111	# tmp36,
	st.w	[r13 + (-8)], r0	# i, tmp36
.L2:
# sprites.c:76: 	for (int i = 0; i < 16*4; i++)
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 63	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jses	.L3		#
# sprites.c:81: }
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
# sprites.c:86: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp99, y
	mov.w	r0, r1	# tmp100, tmp99
	mov.w	r2, 2	# tmp102,
	shl.w	r0, r2	# tmp101, tmp102
	add.w	r0, r1 #222	# tmp100, tmp99
	mov.w	r1, 5	# tmp104,
	shl.w	r0, r1	# tmp103, tmp104
	mov.w	r1, r0	# _1, tmp100
# sprites.c:86: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp105,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp105
# sprites.c:86: 	short *p1 = (short *)(1024 + y * 160 + x/2);
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
# sprites.c:86: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# sprites.c:86: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-16)], r0	# p1, _4
# sprites.c:87: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp112
	st.w	[r13 + (-4)], r0	# i, tmp112
# sprites.c:87: 	for (int i = 0; i < height; i++)
	j	.L5		#
.L15:
# sprites.c:90: 		short *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-4)]	# i.0_5, i
	mov.w	r0, r1	# tmp113, i.0_5
	mov.w	r2, 2	# tmp115,
	shl.w	r0, r2	# tmp114, tmp115
	add.w	r0, r1 #222	# tmp113, i.0_5
	mov.w	r1, 5	# tmp117,
	shl.w	r0, r1	# tmp116, tmp117
	mov.w	r1, r0	# _6, tmp113
# sprites.c:90: 		short *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-16)]	# tmp119, p1
	add.w	r0, r1 #222	# tmp118, _6
	st.w	[r13 + (-8)], r0	# p2, tmp118
# sprites.c:91: 		int shorts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp121, width
	xor.w	r1, r1	# tmp123
	cmp.w	r0, r1	# tmp122, tmp123
	jges	.L6		#
	add.w	r0, 3 #111	# tmp122,
.L6:
	mov.w	r1, 2	# tmp125,
	shr.w	r0, r1	# tmp124, tmp125
	st.w	[r13 + (-20)], r0	# shorts_per_row, tmp124
# sprites.c:92: 		for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp126
	st.w	[r13 + (-12)], r0	# j, tmp126
# sprites.c:92: 		for (int j = 0; j < shorts_per_row; j++) 
	j	.L7		#
.L14:
# sprites.c:94: 			switch (x % 4)
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
# sprites.c:94: 			switch (x % 4)
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
# sprites.c:97: 					*p2 = bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-4)]	# tmp138, i
	ld.w	r1, [r13 + (-20)]	# tmp139, shorts_per_row
	mul.w	r0, r1	# _8, tmp139
# sprites.c:97: 					*p2 = bitmap[i*shorts_per_row + j];
	ld.w	r1, [r13 + (-12)]	# tmp140, j
	add.w	r0, r1 #222	# _9, tmp140
# sprites.c:97: 					*p2 = bitmap[i*shorts_per_row + j];
	add.w	r0, r0 #222	# tmp141, _10
	mov.w	r1, r0	# _11, tmp141
	ld.w	r0, [r13 + (24)]	# tmp142, bitmap
	add.w	r0, r1 #222	# _12, _11
	ld.s	r1, [r0]	# _13, *_12
# sprites.c:97: 					*p2 = bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-8)]	# tmp143, p2
	st.s	[r0], r1	# *p2_76, _13
# sprites.c:98: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp145, p2
	add.w	r0, 2 #111	# tmp144,
	st.w	[r13 + (-8)], r0	# p2, tmp144
# sprites.c:99: 					break;
	j	.L10		#
.L13:
# sprites.c:101: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-8)]	# tmp146, p2
	ld.s	r2, [r0]	# _14, *p2_76
# sprites.c:101: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-4)]	# tmp147, i
	ld.w	r1, [r13 + (-20)]	# tmp148, shorts_per_row
	mul.w	r0, r1	# _15, tmp148
# sprites.c:101: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r1, [r13 + (-12)]	# tmp149, j
	add.w	r0, r1 #222	# _16, tmp149
# sprites.c:101: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	add.w	r0, r0 #222	# tmp150, _17
	mov.w	r1, r0	# _18, tmp150
	ld.w	r0, [r13 + (24)]	# tmp151, bitmap
	add.w	r0, r1 #222	# _19, _18
	ld.s	r0, [r0]	# _20, *_19
# sprites.c:101: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	sex.s	r0, r0	# tmp152, _20
	mov.w	r1, 4	# tmp154,
	shr.w	r0, r1	# tmp153, tmp154
	mov.w	r1, r0	# _21, tmp153
	mov.w	r0, r2	# tmp155,
	or.w	r0, r1	# tmp155, _21
	st.s	[r13 + (-22)], r0	# first, tmp156
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-8)]	# tmp157, p2
	add.w	r0, 2 #111	# _22,
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.s	r2, [r0]	# _23, *_22
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-4)]	# tmp158, i
	ld.w	r1, [r13 + (-20)]	# tmp159, shorts_per_row
	mul.w	r0, r1	# _24, tmp159
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r1, [r13 + (-12)]	# tmp160, j
	add.w	r0, r1 #222	# _25, tmp160
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	add.w	r0, r0 #222	# tmp161, _26
	mov.w	r1, r0	# _27, tmp161
	ld.w	r0, [r13 + (24)]	# tmp162, bitmap
	add.w	r0, r1 #222	# _28, _27
	ld.s	r0, [r0]	# _29, *_28
	sex.s	r0, r0	# _30, _29
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, 12	# tmp163,
	shl.w	r0, r1	# _31, tmp163
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, r0	# _32, _31
# sprites.c:102: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r0, r2	# tmp164,
	or.w	r0, r1	# tmp164, _32
	st.s	[r13 + (-24)], r0	# second, tmp165
# sprites.c:103: 					*p2 = first;
	ld.w	r0, [r13 + (-8)]	# tmp166, p2
	ld.s	r1, [r13 + (-22)]	# tmp167, first
	st.s	[r0], r1	# *p2_76, tmp167
# sprites.c:104: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-8)]	# tmp168, p2
	add.w	r0, 2 #111	# _33,
# sprites.c:104: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-24)]	# tmp169, second
	st.s	[r0], r1	# *_33, tmp169
# sprites.c:105: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp171, p2
	add.w	r0, 2 #111	# tmp170,
	st.w	[r13 + (-8)], r0	# p2, tmp170
# sprites.c:106: 					break;
	j	.L10		#
.L11:
# sprites.c:108: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-8)]	# tmp172, p2
	ld.s	r2, [r0]	# _34, *p2_76
# sprites.c:108: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-4)]	# tmp173, i
	ld.w	r1, [r13 + (-20)]	# tmp174, shorts_per_row
	mul.w	r0, r1	# _35, tmp174
# sprites.c:108: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r1, [r13 + (-12)]	# tmp175, j
	add.w	r0, r1 #222	# _36, tmp175
# sprites.c:108: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	add.w	r0, r0 #222	# tmp176, _37
	mov.w	r1, r0	# _38, tmp176
	ld.w	r0, [r13 + (24)]	# tmp177, bitmap
	add.w	r0, r1 #222	# _39, _38
	ld.s	r0, [r0]	# _40, *_39
# sprites.c:108: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	sex.s	r0, r0	# tmp178, _40
	mov.w	r1, 8	# tmp180,
	shr.w	r0, r1	# tmp179, tmp180
	mov.w	r1, r0	# _41, tmp179
	mov.w	r0, r2	# tmp181,
	or.w	r0, r1	# tmp181, _41
	st.s	[r13 + (-22)], r0	# first, tmp182
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-8)]	# tmp183, p2
	add.w	r0, 2 #111	# _42,
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.s	r2, [r0]	# _43, *_42
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-4)]	# tmp184, i
	ld.w	r1, [r13 + (-20)]	# tmp185, shorts_per_row
	mul.w	r0, r1	# _44, tmp185
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r1, [r13 + (-12)]	# tmp186, j
	add.w	r0, r1 #222	# _45, tmp186
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	add.w	r0, r0 #222	# tmp187, _46
	mov.w	r1, r0	# _47, tmp187
	ld.w	r0, [r13 + (24)]	# tmp188, bitmap
	add.w	r0, r1 #222	# _48, _47
	ld.s	r0, [r0]	# _49, *_48
	sex.s	r0, r0	# _50, _49
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, 8	# tmp189,
	shl.w	r0, r1	# _51, tmp189
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, r0	# _52, _51
# sprites.c:109: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r0, r2	# tmp190,
	or.w	r0, r1	# tmp190, _52
	st.s	[r13 + (-24)], r0	# second, tmp191
# sprites.c:110: 					*p2 = first;
	ld.w	r0, [r13 + (-8)]	# tmp192, p2
	ld.s	r1, [r13 + (-22)]	# tmp193, first
	st.s	[r0], r1	# *p2_76, tmp193
# sprites.c:111: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-8)]	# tmp194, p2
	add.w	r0, 2 #111	# _53,
# sprites.c:111: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-24)]	# tmp195, second
	st.s	[r0], r1	# *_53, tmp195
# sprites.c:112: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp197, p2
	add.w	r0, 2 #111	# tmp196,
	st.w	[r13 + (-8)], r0	# p2, tmp196
# sprites.c:113: 					break;
	j	.L10		#
.L9:
# sprites.c:115: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-8)]	# tmp198, p2
	ld.s	r2, [r0]	# _54, *p2_76
# sprites.c:115: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-4)]	# tmp199, i
	ld.w	r1, [r13 + (-20)]	# tmp200, shorts_per_row
	mul.w	r0, r1	# _55, tmp200
# sprites.c:115: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r1, [r13 + (-12)]	# tmp201, j
	add.w	r0, r1 #222	# _56, tmp201
# sprites.c:115: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	add.w	r0, r0 #222	# tmp202, _57
	mov.w	r1, r0	# _58, tmp202
	ld.w	r0, [r13 + (24)]	# tmp203, bitmap
	add.w	r0, r1 #222	# _59, _58
	ld.s	r0, [r0]	# _60, *_59
# sprites.c:115: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	sex.s	r0, r0	# tmp204, _60
	mov.w	r1, 12	# tmp206,
	shr.w	r0, r1	# tmp205, tmp206
	mov.w	r1, r0	# _61, tmp205
	mov.w	r0, r2	# tmp207,
	or.w	r0, r1	# tmp207, _61
	st.s	[r13 + (-22)], r0	# first, tmp208
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-8)]	# tmp209, p2
	add.w	r0, 2 #111	# _62,
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.s	r2, [r0]	# _63, *_62
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-4)]	# tmp210, i
	ld.w	r1, [r13 + (-20)]	# tmp211, shorts_per_row
	mul.w	r0, r1	# _64, tmp211
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r1, [r13 + (-12)]	# tmp212, j
	add.w	r0, r1 #222	# _65, tmp212
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	add.w	r0, r0 #222	# tmp213, _66
	mov.w	r1, r0	# _67, tmp213
	ld.w	r0, [r13 + (24)]	# tmp214, bitmap
	add.w	r0, r1 #222	# _68, _67
	ld.s	r0, [r0]	# _69, *_68
	sex.s	r0, r0	# _70, _69
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, 4	# tmp215,
	shl.w	r0, r1	# _71, tmp215
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, r0	# _72, _71
# sprites.c:116: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r0, r2	# tmp216,
	or.w	r0, r1	# tmp216, _72
	st.s	[r13 + (-24)], r0	# second, tmp217
# sprites.c:117: 					*p2 = first;
	ld.w	r0, [r13 + (-8)]	# tmp218, p2
	ld.s	r1, [r13 + (-22)]	# tmp219, first
	st.s	[r0], r1	# *p2_76, tmp219
# sprites.c:118: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-8)]	# tmp220, p2
	add.w	r0, 2 #111	# _73,
# sprites.c:118: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-24)]	# tmp221, second
	st.s	[r0], r1	# *_73, tmp221
# sprites.c:119: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp223, p2
	add.w	r0, 2 #111	# tmp222,
	st.w	[r13 + (-8)], r0	# p2, tmp222
# sprites.c:120: 					break;
	nop	
.L10:
# sprites.c:92: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-12)]	# tmp225, j
	add.w	r0, 1 #111	# tmp224,
	st.w	[r13 + (-12)], r0	# j, tmp224
.L7:
# sprites.c:92: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-12)]	# tmp226, j
	ld.w	r0, [r13 + (-20)]	# tmp227, shorts_per_row
	cmp.w	r1, r0	# tmp226, tmp227
	jss	.L14		#
# sprites.c:87: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-4)]	# tmp229, i
	add.w	r0, 1 #111	# tmp228,
	st.w	[r13 + (-4)], r0	# i, tmp228
.L5:
# sprites.c:87: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-4)]	# tmp230, i
	ld.w	r0, [r13 + (20)]	# tmp231, height
	cmp.w	r1, r0	# tmp230, tmp231
	jss	.L15		#
# sprites.c:124: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_bitmap, .-draw_bitmap
	.p2align	1
	.global	init_sprite
	.type	init_sprite, @function
init_sprite:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp28, addr
	st.s	[r13 + (-4)], r0	# addr, tmp29
# sprites.c:128: 	spr->addr = addr;
	ld.w	r0, [r13 + (8)]	# tmp30, spr
	ld.s	r1, [r13 + (-4)]	# tmp31, addr
	st.s	[r0], r1	# spr_4(D)->addr, tmp31
# sprites.c:129: 	spr->x = x;
	ld.w	r0, [r13 + (16)]	# tmp32, x
	mov.w	r1, r0	# _1, tmp32
	ld.w	r0, [r13 + (8)]	# tmp33, spr
	st.s	[r0 + (2)], r1	# spr_4(D)->x, _1
# sprites.c:130: 	spr->y = y;
	ld.w	r0, [r13 + (20)]	# tmp34, y
	mov.w	r1, r0	# _2, tmp34
	ld.w	r0, [r13 + (8)]	# tmp35, spr
	st.s	[r0 + (4)], r1	# spr_4(D)->y, _2
# sprites.c:131: 	spr->transparent = 0;
	ld.w	r0, [r13 + (8)]	# tmp36, spr
	xor.w	r1, r1	# tmp37
	st.s	[r0 + (6)], r1	# spr_4(D)->transparent, tmp37
# sprites.c:132: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_sprite, .-init_sprite
	.p2align	1
	.global	de_init_sprite
	.type	de_init_sprite, @function
de_init_sprite:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# sprites.c:135: 	int addr = spr->addr;
	ld.w	r0, [r13 + (8)]	# tmp28, spr
	ld.s	r0, [r0]	# _1, spr_4(D)->addr
# sprites.c:135: 	int addr = spr->addr;
	sex.s	r0, r0	# tmp29, _1
	st.w	[r13 + (-4)], r0	# addr, tmp29
# sprites.c:136: 	memset((short *)addr, 0, 2*4*16);
	ld.w	r1, [r13 + (-4)]	# addr.1_2, addr
	mov.w	r0, sp	# tmp30,
	mov.w	r2, 128	# tmp31,
	st.w	[r0 + (8)], r2	#, tmp31
	xor.w	r2, r2	# tmp32
	st.w	[r0 + (4)], r2	#, tmp32
	st.w	[r0], r1	#, addr.1_2
	call	memset		#
# sprites.c:137: 	memset(spr, 0, sizeof(sprite));
	mov.w	r0, sp	# tmp33,
	mov.w	r1, 8	# tmp34,
	st.w	[r0 + (8)], r1	#, tmp34
	xor.w	r1, r1	# tmp35
	st.w	[r0 + (4)], r1	#, tmp35
	ld.w	r1, [r13 + (8)]	# tmp36, spr
	st.w	[r0], r1	#, tmp36
	call	memset		#
# sprites.c:138: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	de_init_sprite, .-de_init_sprite
	.p2align	1
	.global	de_init_sprites
	.type	de_init_sprites, @function
de_init_sprites:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# sprites.c:142: 	de_init_sprite(sprite_def1);
	ld.w	r0, [sprite_def1]	# sprite_def1.2_1, sprite_def1
	mov.w	r1, sp	# tmp31,
	st.w	[r1], r0	#, sprite_def1.2_1
	call	de_init_sprite		#
# sprites.c:143: 	de_init_sprite(sprite_def2);
	ld.w	r0, [sprite_def2]	# sprite_def2.3_2, sprite_def2
	mov.w	r1, sp	# tmp32,
	st.w	[r1], r0	#, sprite_def2.3_2
	call	de_init_sprite		#
# sprites.c:144: 	de_init_sprite(sprite_def3);
	ld.w	r0, [sprite_def3]	# sprite_def3.4_3, sprite_def3
	mov.w	r1, sp	# tmp33,
	st.w	[r1], r0	#, sprite_def3.4_3
	call	de_init_sprite		#
# sprites.c:145: 	de_init_sprite(sprite_def4);
	ld.w	r0, [sprite_def4]	# sprite_def4.5_4, sprite_def4
	mov.w	r1, sp	# tmp34,
	st.w	[r1], r0	#, sprite_def4.5_4
	call	de_init_sprite		#
# sprites.c:146: 	de_init_sprite(sprite_def5);
	ld.w	r0, [sprite_def5]	# sprite_def5.6_5, sprite_def5
	mov.w	r1, sp	# tmp35,
	st.w	[r1], r0	#, sprite_def5.6_5
	call	de_init_sprite		#
# sprites.c:147: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	de_init_sprites, .-de_init_sprites
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
# sprites.c:153: 	init_stdio();
	call	init_stdio		#
# sprites.c:155: 	video_mode(1);
	mov.w	r1, sp	# tmp119,
	mov.w	r0, 1	# tmp120,
	st.w	[r1], r0	#, tmp120
	call	video_mode		#
# sprites.c:157: 	cls(0);	
	mov.w	r1, sp	# tmp121,
	xor.w	r0, r0	# tmp122
	st.w	[r1], r0	#, tmp122
	call	cls		#
# sprites.c:159: 	circle(100, 100, 50, BLUE);
	mov.w	r0, sp	# tmp123,
	mov.w	r1, 9	# tmp124,
	st.w	[r0 + (12)], r1	#, tmp124
	mov.w	r1, 50	# tmp125,
	st.w	[r0 + (8)], r1	#, tmp125
	mov.w	r1, 100	# tmp126,
	st.w	[r0 + (4)], r1	#, tmp126
	mov.w	r1, 100	# tmp127,
	st.w	[r0], r1	#, tmp127
	call	circle		#
# sprites.c:161: 	int start = get_millis();
	call	get_millis		#
	st.w	[r13 + (-24)], r0	# start,
# sprites.c:165: 	asm("push r1\npush r2\n push r3\nmov.w r1, 1024\nmov.w r2, 9024\nmov.w r3, 30000\nblit\npop r3\npop r2\npop r1\n");
# 165 "sprites.c" 1
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

# sprites.c:168: 	sprintf(str, "millis: %d", get_millis() - start);
	call	get_millis		#
	mov.w	r1, r0	# _1,
# sprites.c:168: 	sprintf(str, "millis: %d", get_millis() - start);
	ld.w	r0, [r13 + (-24)]	# tmp128, start
	sub.w	r1, r0 #222	# _2, tmp128
	mov.w	r0, sp	# tmp129,
	st.w	[r0 + (8)], r1	#, _2
	mov.w	r1, .LC0	# tmp130,
	st.w	[r0 + (4)], r1	#, tmp130
	mov.w	r2, -532	# tmp132,
	mov.w	r1, r13	# tmp131,
	add.w	r1, r2 #222	# tmp131, tmp132
	st.w	[r0], r1	#, tmp131
	call	sprintf		#
# sprites.c:169: 	draw(10, 10, GREEN, str);
	mov.w	r0, sp	# tmp133,
	mov.w	r2, -532	# tmp135,
	mov.w	r1, r13	# tmp134,
	add.w	r1, r2 #222	# tmp134, tmp135
	st.w	[r0 + (12)], r1	#, tmp134
	mov.w	r1, 10	# tmp136,
	st.w	[r0 + (8)], r1	#, tmp136
	mov.w	r1, 10	# tmp137,
	st.w	[r0 + (4)], r1	#, tmp137
	mov.w	r1, 10	# tmp138,
	st.w	[r0], r1	#, tmp138
	call	draw		#
# sprites.c:171: 	copy_sprite_def(sprite_addr1);copy_sprite_def(sprite_addr2); copy_sprite_def(sprite_addr3);copy_sprite_def(sprite_addr4);copy_sprite_def(sprite_addr5);
	ld.w	r0, [sprite_addr1]	# sprite_addr1.7_3, sprite_addr1
	mov.w	r1, sp	# tmp139,
	st.w	[r1], r0	#, sprite_addr1.7_3
	call	copy_sprite_def		#
# sprites.c:171: 	copy_sprite_def(sprite_addr1);copy_sprite_def(sprite_addr2); copy_sprite_def(sprite_addr3);copy_sprite_def(sprite_addr4);copy_sprite_def(sprite_addr5);
	ld.w	r0, [sprite_addr2]	# sprite_addr2.8_4, sprite_addr2
	mov.w	r1, sp	# tmp140,
	st.w	[r1], r0	#, sprite_addr2.8_4
	call	copy_sprite_def		#
# sprites.c:171: 	copy_sprite_def(sprite_addr1);copy_sprite_def(sprite_addr2); copy_sprite_def(sprite_addr3);copy_sprite_def(sprite_addr4);copy_sprite_def(sprite_addr5);
	ld.w	r0, [sprite_addr3]	# sprite_addr3.9_5, sprite_addr3
	mov.w	r1, sp	# tmp141,
	st.w	[r1], r0	#, sprite_addr3.9_5
	call	copy_sprite_def		#
# sprites.c:171: 	copy_sprite_def(sprite_addr1);copy_sprite_def(sprite_addr2); copy_sprite_def(sprite_addr3);copy_sprite_def(sprite_addr4);copy_sprite_def(sprite_addr5);
	ld.w	r0, [sprite_addr4]	# sprite_addr4.10_6, sprite_addr4
	mov.w	r1, sp	# tmp142,
	st.w	[r1], r0	#, sprite_addr4.10_6
	call	copy_sprite_def		#
# sprites.c:171: 	copy_sprite_def(sprite_addr1);copy_sprite_def(sprite_addr2); copy_sprite_def(sprite_addr3);copy_sprite_def(sprite_addr4);copy_sprite_def(sprite_addr5);
	ld.w	r0, [sprite_addr5]	# sprite_addr5.11_7, sprite_addr5
	mov.w	r1, sp	# tmp143,
	st.w	[r1], r0	#, sprite_addr5.11_7
	call	copy_sprite_def		#
# sprites.c:172: 	init_sprite(sprite_def1, sprite_addr1, 50, 50);init_sprite(sprite_def2, sprite_addr2, 70, 50);init_sprite(sprite_def3, sprite_addr3, 90, 50);init_sprite(sprite_def4, sprite_addr4, 110, 50);init_sprite(sprite_def5, sprite_addr5, 130, 50);
	ld.w	r1, [sprite_def1]	# sprite_def1.12_8, sprite_def1
	ld.w	r0, [sprite_addr1]	# sprite_addr1.13_9, sprite_addr1
	sex.s	r2, r0	# _11, _10
	mov.w	r0, sp	# tmp144,
	mov.w	r3, 50	# tmp145,
	st.w	[r0 + (12)], r3	#, tmp145
	mov.w	r3, 50	# tmp146,
	st.w	[r0 + (8)], r3	#, tmp146
	st.w	[r0 + (4)], r2	#, _11
	st.w	[r0], r1	#, sprite_def1.12_8
	call	init_sprite		#
# sprites.c:172: 	init_sprite(sprite_def1, sprite_addr1, 50, 50);init_sprite(sprite_def2, sprite_addr2, 70, 50);init_sprite(sprite_def3, sprite_addr3, 90, 50);init_sprite(sprite_def4, sprite_addr4, 110, 50);init_sprite(sprite_def5, sprite_addr5, 130, 50);
	ld.w	r1, [sprite_def2]	# sprite_def2.14_12, sprite_def2
	ld.w	r0, [sprite_addr2]	# sprite_addr2.15_13, sprite_addr2
	sex.s	r2, r0	# _15, _14
	mov.w	r0, sp	# tmp147,
	mov.w	r3, 50	# tmp148,
	st.w	[r0 + (12)], r3	#, tmp148
	mov.w	r3, 70	# tmp149,
	st.w	[r0 + (8)], r3	#, tmp149
	st.w	[r0 + (4)], r2	#, _15
	st.w	[r0], r1	#, sprite_def2.14_12
	call	init_sprite		#
# sprites.c:172: 	init_sprite(sprite_def1, sprite_addr1, 50, 50);init_sprite(sprite_def2, sprite_addr2, 70, 50);init_sprite(sprite_def3, sprite_addr3, 90, 50);init_sprite(sprite_def4, sprite_addr4, 110, 50);init_sprite(sprite_def5, sprite_addr5, 130, 50);
	ld.w	r1, [sprite_def3]	# sprite_def3.16_16, sprite_def3
	ld.w	r0, [sprite_addr3]	# sprite_addr3.17_17, sprite_addr3
	sex.s	r2, r0	# _19, _18
	mov.w	r0, sp	# tmp150,
	mov.w	r3, 50	# tmp151,
	st.w	[r0 + (12)], r3	#, tmp151
	mov.w	r3, 90	# tmp152,
	st.w	[r0 + (8)], r3	#, tmp152
	st.w	[r0 + (4)], r2	#, _19
	st.w	[r0], r1	#, sprite_def3.16_16
	call	init_sprite		#
# sprites.c:172: 	init_sprite(sprite_def1, sprite_addr1, 50, 50);init_sprite(sprite_def2, sprite_addr2, 70, 50);init_sprite(sprite_def3, sprite_addr3, 90, 50);init_sprite(sprite_def4, sprite_addr4, 110, 50);init_sprite(sprite_def5, sprite_addr5, 130, 50);
	ld.w	r1, [sprite_def4]	# sprite_def4.18_20, sprite_def4
	ld.w	r0, [sprite_addr4]	# sprite_addr4.19_21, sprite_addr4
	sex.s	r2, r0	# _23, _22
	mov.w	r0, sp	# tmp153,
	mov.w	r3, 50	# tmp154,
	st.w	[r0 + (12)], r3	#, tmp154
	mov.w	r3, 110	# tmp155,
	st.w	[r0 + (8)], r3	#, tmp155
	st.w	[r0 + (4)], r2	#, _23
	st.w	[r0], r1	#, sprite_def4.18_20
	call	init_sprite		#
# sprites.c:172: 	init_sprite(sprite_def1, sprite_addr1, 50, 50);init_sprite(sprite_def2, sprite_addr2, 70, 50);init_sprite(sprite_def3, sprite_addr3, 90, 50);init_sprite(sprite_def4, sprite_addr4, 110, 50);init_sprite(sprite_def5, sprite_addr5, 130, 50);
	ld.w	r1, [sprite_def5]	# sprite_def5.20_24, sprite_def5
	ld.w	r0, [sprite_addr5]	# sprite_addr5.21_25, sprite_addr5
	sex.s	r2, r0	# _27, _26
	mov.w	r0, sp	# tmp156,
	mov.w	r3, 50	# tmp157,
	st.w	[r0 + (12)], r3	#, tmp157
	mov.w	r3, 130	# tmp158,
	st.w	[r0 + (8)], r3	#, tmp158
	st.w	[r0 + (4)], r2	#, _27
	st.w	[r0], r1	#, sprite_def5.20_24
	call	init_sprite		#
# sprites.c:174: 	sprite_def = sprite_def1;
	ld.w	r0, [sprite_def1]	# sprite_def1.22_28, sprite_def1
	st.w	[sprite_def], r0	# sprite_def, sprite_def1.22_28
# sprites.c:175: 	init_mouse(sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.23_29, sprite_def
	ld.s	r0, [r0 + (2)]	# _30, sprite_def.23_29->x
# sprites.c:175: 	init_mouse(sprite_def->x, sprite_def->y);
	sex.s	r1, r0	# _31, _30
# sprites.c:175: 	init_mouse(sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.24_32, sprite_def
	ld.s	r0, [r0 + (4)]	# _33, sprite_def.24_32->y
# sprites.c:175: 	init_mouse(sprite_def->x, sprite_def->y);
	sex.s	r2, r0	# _34, _33
	mov.w	r0, sp	# tmp159,
	st.w	[r0 + (4)], r2	#, _34
	st.w	[r0], r1	#, _31
	call	init_mouse		#
# sprites.c:177: 	for (int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp160
	st.w	[r13 + (-4)], r0	# i, tmp160
# sprites.c:177: 	for (int i = 0; i < 5; i++)
	j	.L20		#
.L21:
# sprites.c:178: 		draw_bitmap(200 + (i * 20), 150, 16, 16, plane);
	ld.w	r1, [r13 + (-4)]	# tmp161, i
	mov.w	r0, r1	# tmp162, tmp161
	mov.w	r2, 2	# tmp164,
	shl.w	r0, r2	# tmp163, tmp164
	add.w	r0, r1 #222	# tmp162, tmp161
	mov.w	r1, 2	# tmp166,
	shl.w	r0, r1	# tmp165, tmp166
# sprites.c:178: 		draw_bitmap(200 + (i * 20), 150, 16, 16, plane);
	mov.w	r1, r0	# _36, _35
	add.w	r1, 200 #111	# _36,
	mov.w	r0, sp	# tmp167,
	mov.w	r2, plane	# tmp168,
	st.w	[r0 + (16)], r2	#, tmp168
	mov.w	r2, 16	# tmp169,
	st.w	[r0 + (12)], r2	#, tmp169
	mov.w	r2, 16	# tmp170,
	st.w	[r0 + (8)], r2	#, tmp170
	mov.w	r2, 150	# tmp171,
	st.w	[r0 + (4)], r2	#, tmp171
	st.w	[r0], r1	#, _36
	call	draw_bitmap		#
# sprites.c:177: 	for (int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-4)]	# tmp173, i
	add.w	r0, 1 #111	# tmp172,
	st.w	[r13 + (-4)], r0	# i, tmp172
.L20:
# sprites.c:177: 	for (int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-4)]	# tmp174, i
	mov.w	r0, 4	# tmp175,
	cmp.w	r1, r0	# tmp174, tmp175
	jses	.L21		#
# sprites.c:179: 	for (int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp176
	st.w	[r13 + (-8)], r0	# i, tmp176
# sprites.c:179: 	for (int i = 0; i < 5; i++)
	j	.L22		#
.L23:
# sprites.c:180: 		draw_bitmap(203 + (i * 20), 170, 16, 16, plane);
	ld.w	r1, [r13 + (-8)]	# tmp177, i
	mov.w	r0, r1	# tmp178, tmp177
	mov.w	r2, 2	# tmp180,
	shl.w	r0, r2	# tmp179, tmp180
	add.w	r0, r1 #222	# tmp178, tmp177
	mov.w	r1, 2	# tmp182,
	shl.w	r0, r1	# tmp181, tmp182
# sprites.c:180: 		draw_bitmap(203 + (i * 20), 170, 16, 16, plane);
	mov.w	r1, r0	# _38, _37
	add.w	r1, 203 #111	# _38,
	mov.w	r0, sp	# tmp183,
	mov.w	r2, plane	# tmp184,
	st.w	[r0 + (16)], r2	#, tmp184
	mov.w	r2, 16	# tmp185,
	st.w	[r0 + (12)], r2	#, tmp185
	mov.w	r2, 16	# tmp186,
	st.w	[r0 + (8)], r2	#, tmp186
	mov.w	r2, 170	# tmp187,
	st.w	[r0 + (4)], r2	#, tmp187
	st.w	[r0], r1	#, _38
	call	draw_bitmap		#
# sprites.c:179: 	for (int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-8)]	# tmp189, i
	add.w	r0, 1 #111	# tmp188,
	st.w	[r13 + (-8)], r0	# i, tmp188
.L22:
# sprites.c:179: 	for (int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-8)]	# tmp190, i
	mov.w	r0, 4	# tmp191,
	cmp.w	r1, r0	# tmp190, tmp191
	jses	.L23		#
# sprites.c:182: 	for (int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp192
	st.w	[r13 + (-12)], r0	# i, tmp192
# sprites.c:182: 	for (int i = 0; i < 5; i++)
	j	.L24		#
.L25:
# sprites.c:183: 		draw_bitmap(0 + (i * 40), 85, 32, 16, plane2);
	ld.w	r1, [r13 + (-12)]	# tmp193, i
	mov.w	r0, r1	# tmp194, tmp193
	mov.w	r2, 2	# tmp196,
	shl.w	r0, r2	# tmp195, tmp196
	add.w	r0, r1 #222	# tmp194, tmp193
	mov.w	r1, 3	# tmp198,
	shl.w	r0, r1	# tmp197, tmp198
	mov.w	r1, r0	# _39, tmp194
	mov.w	r0, sp	# tmp199,
	mov.w	r2, plane2	# tmp200,
	st.w	[r0 + (16)], r2	#, tmp200
	mov.w	r2, 16	# tmp201,
	st.w	[r0 + (12)], r2	#, tmp201
	mov.w	r2, 32	# tmp202,
	st.w	[r0 + (8)], r2	#, tmp202
	mov.w	r2, 85	# tmp203,
	st.w	[r0 + (4)], r2	#, tmp203
	st.w	[r0], r1	#, _39
	call	draw_bitmap		#
# sprites.c:182: 	for (int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-12)]	# tmp205, i
	add.w	r0, 1 #111	# tmp204,
	st.w	[r13 + (-12)], r0	# i, tmp204
.L24:
# sprites.c:182: 	for (int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-12)]	# tmp206, i
	mov.w	r0, 4	# tmp207,
	cmp.w	r1, r0	# tmp206, tmp207
	jses	.L25		#
# sprites.c:185: 	int vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp208
	st.w	[r13 + (-16)], r0	# vkp, tmp208
# sprites.c:185: 	int vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp209
	st.w	[r13 + (-28)], r0	# vkr, tmp209
# sprites.c:185: 	int vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp210
	st.w	[r13 + (-20)], r0	# old, tmp210
.L48:
# sprites.c:189: 		short int status =  mouse_status(&mouse_x, &mouse_y, &mouse_key);
	mov.w	r0, sp	# tmp211,
	mov.w	r2, -534	# tmp213,
	mov.w	r1, r13	# tmp212,
	add.w	r1, r2 #222	# tmp212, tmp213
	st.w	[r0 + (8)], r1	#, tmp212
	mov.w	r2, -538	# tmp215,
	mov.w	r1, r13	# tmp214,
	add.w	r1, r2 #222	# tmp214, tmp215
	st.w	[r0 + (4)], r1	#, tmp214
	mov.w	r2, -536	# tmp217,
	mov.w	r1, r13	# tmp216,
	add.w	r1, r2 #222	# tmp216, tmp217
	st.w	[r0], r1	#, tmp216
	call	mouse_status		#
	st.s	[r13 + (-30)], r0	# status,
# sprites.c:190: 		if (status) {
	ld.s	r0, [r13 + (-30)]	#, status
	sex.s	r1, r0	# tmp218,
	xor.w	r0, r0	# tmp219
	cmp.w	r1, r0	# tmp218, tmp219
	jz	.L26		#
# sprites.c:191: 			sprite_def->x = mouse_x;
	ld.w	r0, [sprite_def]	# sprite_def.25_40, sprite_def
# sprites.c:191: 			sprite_def->x = mouse_x;
	ld.s	r1, [r13 + (-536)]	# mouse_x.26_41, mouse_x
	st.s	[r0 + (2)], r1	# sprite_def.25_40->x, mouse_x.26_41
# sprites.c:192: 			sprite_def->y = mouse_y;
	ld.w	r0, [sprite_def]	# sprite_def.27_42, sprite_def
# sprites.c:192: 			sprite_def->y = mouse_y;
	ld.s	r1, [r13 + (-538)]	# mouse_y.28_43, mouse_y
	st.s	[r0 + (4)], r1	# sprite_def.27_42->y, mouse_y.28_43
# sprites.c:193: 			key = mouse_key;
	ld.s	r0, [r13 + (-534)]	# tmp220, mouse_key
	st.s	[r13 + (-32)], r0	# key, tmp220
# sprites.c:195: 			asm("mov.w r1, 4224\nmov.w r2, 33024\nmov.w r3, 1600\nblit\n");
# 195 "sprites.c" 1
	mov.w r1, 4224
mov.w r2, 33024
mov.w r3, 1600
blit

# sprites.c:196: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	ld.s	r0, [r13 + (-32)]	#, key
	sex.s	r1, r0	# _44,
# sprites.c:196: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.29_45, sprite_def
	ld.s	r0, [r0 + (2)]	# _46, sprite_def.29_45->x
# sprites.c:196: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	sex.s	r2, r0	# _47, _46
# sprites.c:196: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	ld.w	r0, [sprite_def]	# sprite_def.30_48, sprite_def
	ld.s	r0, [r0 + (4)]	# _49, sprite_def.30_48->y
# sprites.c:196: 			sprintf(str, "mouse: %d, %d, %d", key, sprite_def->x, sprite_def->y);
	sex.s	r3, r0	# _50, _49
	mov.w	r0, sp	# tmp221,
	st.w	[r0 + (16)], r3	#, _50
	st.w	[r0 + (12)], r2	#, _47
	st.w	[r0 + (8)], r1	#, _44
	mov.w	r1, .LC1	# tmp222,
	st.w	[r0 + (4)], r1	#, tmp222
	mov.w	r2, -532	# tmp224,
	mov.w	r1, r13	# tmp223,
	add.w	r1, r2 #222	# tmp223, tmp224
	st.w	[r0], r1	#, tmp223
	call	sprintf		#
# sprites.c:197: 			draw(10, 20, RED, str);
	mov.w	r0, sp	# tmp225,
	mov.w	r2, -532	# tmp227,
	mov.w	r1, r13	# tmp226,
	add.w	r1, r2 #222	# tmp226, tmp227
	st.w	[r0 + (12)], r1	#, tmp226
	mov.w	r1, 4	# tmp228,
	st.w	[r0 + (8)], r1	#, tmp228
	mov.w	r1, 20	# tmp229,
	st.w	[r0 + (4)], r1	#, tmp229
	mov.w	r1, 10	# tmp230,
	st.w	[r0], r1	#, tmp230
	call	draw		#
.L26:
# sprites.c:200: 		vkp = is_key_pressed();
	call	is_key_pressed		#
	st.w	[r13 + (-16)], r0	# vkp,
# sprites.c:201: 		vkr = is_key_released();
	call	is_key_released		#
	st.w	[r13 + (-28)], r0	# vkr,
# sprites.c:202: 		if (vkp != VK_SPACE && vkr != VK_SPACE)
	ld.w	r1, [r13 + (-16)]	# tmp231, vkp
	mov.w	r0, 32	# tmp232,
	cmp.w	r1, r0	# tmp231, tmp232
	jz	.L27		#
# sprites.c:202: 		if (vkp != VK_SPACE && vkr != VK_SPACE)
	ld.w	r1, [r13 + (-28)]	# tmp233, vkr
	mov.w	r0, 32	# tmp234,
	cmp.w	r1, r0	# tmp233, tmp234
	jz	.L27		#
# sprites.c:204: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [r13 + (-16)]	# tmp235, vkp
	xor.w	r0, r0	# tmp236
	cmp.w	r1, r0	# tmp235, tmp236
	jnz	.L28		#
# sprites.c:204: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [r13 + (-28)]	# tmp237, vkr
	xor.w	r0, r0	# tmp238
	cmp.w	r1, r0	# tmp237, tmp238
	jnz	.L28		#
# sprites.c:206: 				vkp = old;
	ld.w	r0, [r13 + (-20)]	# tmp239, old
	st.w	[r13 + (-16)], r0	# vkp, tmp239
.L28:
# sprites.c:208: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [r13 + (-28)]	# tmp240, vkr
	xor.w	r0, r0	# tmp241
	cmp.w	r1, r0	# tmp240, tmp241
	jz	.L50		#
# sprites.c:208: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [r13 + (-28)]	# tmp242, vkr
	ld.w	r0, [r13 + (-20)]	# tmp243, old
	cmp.w	r1, r0	# tmp242, tmp243
	jnz	.L50		#
# sprites.c:210: 				vkp = 0;
	xor.w	r0, r0	# tmp244
	st.w	[r13 + (-16)], r0	# vkp, tmp244
# sprites.c:211: 				old = 0;
	xor.w	r0, r0	# tmp245
	st.w	[r13 + (-20)], r0	# old, tmp245
# sprites.c:208: 			if ((vkr != 0) && (vkr == old))
	j	.L50		#
.L27:
# sprites.c:215: 			vkp = old;
	ld.w	r0, [r13 + (-20)]	# tmp246, old
	st.w	[r13 + (-16)], r0	# vkp, tmp246
	j	.L30		#
.L50:
# sprites.c:208: 			if ((vkr != 0) && (vkr == old))
	nop	
.L30:
# sprites.c:218: 		switch (vkp)
	ld.w	r1, [r13 + (-16)]	# tmp247, vkp
	mov.w	r0, 4003	# tmp248,
	cmp.w	r1, r0	# tmp247, tmp248
	jz	.L31		#
	ld.w	r1, [r13 + (-16)]	# tmp249, vkp
	mov.w	r0, 4003	# tmp250,
	cmp.w	r1, r0	# tmp249, tmp250
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp251, vkp
	mov.w	r0, 4002	# tmp252,
	cmp.w	r1, r0	# tmp251, tmp252
	jz	.L33		#
	ld.w	r1, [r13 + (-16)]	# tmp253, vkp
	mov.w	r0, 4002	# tmp254,
	cmp.w	r1, r0	# tmp253, tmp254
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp255, vkp
	mov.w	r0, 4001	# tmp256,
	cmp.w	r1, r0	# tmp255, tmp256
	jz	.L34		#
	ld.w	r1, [r13 + (-16)]	# tmp257, vkp
	mov.w	r0, 4001	# tmp258,
	cmp.w	r1, r0	# tmp257, tmp258
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp259, vkp
	mov.w	r0, 4000	# tmp260,
	cmp.w	r1, r0	# tmp259, tmp260
	jz	.L35		#
	ld.w	r1, [r13 + (-16)]	# tmp261, vkp
	mov.w	r0, 4000	# tmp262,
	cmp.w	r1, r0	# tmp261, tmp262
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp263, vkp
	mov.w	r0, 305	# tmp264,
	cmp.w	r1, r0	# tmp263, tmp264
	jz	.L36		#
	ld.w	r1, [r13 + (-16)]	# tmp265, vkp
	mov.w	r0, 305	# tmp266,
	cmp.w	r1, r0	# tmp265, tmp266
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp267, vkp
	mov.w	r0, 304	# tmp268,
	cmp.w	r1, r0	# tmp267, tmp268
	jz	.L37		#
	ld.w	r1, [r13 + (-16)]	# tmp269, vkp
	mov.w	r0, 304	# tmp270,
	cmp.w	r1, r0	# tmp269, tmp270
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp271, vkp
	mov.w	r0, 303	# tmp272,
	cmp.w	r1, r0	# tmp271, tmp272
	jz	.L38		#
	ld.w	r1, [r13 + (-16)]	# tmp273, vkp
	mov.w	r0, 303	# tmp274,
	cmp.w	r1, r0	# tmp273, tmp274
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp275, vkp
	mov.w	r0, 302	# tmp276,
	cmp.w	r1, r0	# tmp275, tmp276
	jz	.L39		#
	ld.w	r1, [r13 + (-16)]	# tmp277, vkp
	mov.w	r0, 302	# tmp278,
	cmp.w	r1, r0	# tmp277, tmp278
	jgs	.L32		#
	ld.w	r1, [r13 + (-16)]	# tmp279, vkp
	mov.w	r0, 27	# tmp280,
	cmp.w	r1, r0	# tmp279, tmp280
	jz	.L40		#
	ld.w	r1, [r13 + (-16)]	# tmp281, vkp
	mov.w	r0, 301	# tmp282,
	cmp.w	r1, r0	# tmp281, tmp282
	jz	.L41		#
	j	.L32		#
.L34:
# sprites.c:221: 			sprite_def->x -= 1;
	ld.w	r0, [sprite_def]	# sprite_def.31_51, sprite_def
	ld.s	r0, [r0 + (2)]	# _52, sprite_def.31_51->x
	add.w	r0, -1 #111	# tmp283,
	mov.w	r1, r0	# _54, tmp283
	ld.w	r0, [sprite_def]	# sprite_def.32_55, sprite_def
	st.s	[r0 + (2)], r1	# sprite_def.32_55->x, _56
# sprites.c:222: 			if (sprite_def->x < 0)
	ld.w	r0, [sprite_def]	# sprite_def.33_57, sprite_def
	ld.s	r0, [r0 + (2)]	# _58, sprite_def.33_57->x
# sprites.c:222: 			if (sprite_def->x < 0)
	sex.s	r1, r0	# tmp284, _58
	xor.w	r0, r0	# tmp285
	cmp.w	r1, r0	# tmp284, tmp285
	jges	.L51		#
# sprites.c:223: 				sprite_def->x = 0;
	ld.w	r0, [sprite_def]	# sprite_def.34_59, sprite_def
# sprites.c:223: 				sprite_def->x = 0;
	xor.w	r1, r1	# tmp286
	st.s	[r0 + (2)], r1	# sprite_def.34_59->x, tmp286
# sprites.c:224: 			break;
	j	.L51		#
.L31:
# sprites.c:226: 			sprite_def->x += 1;
	ld.w	r0, [sprite_def]	# sprite_def.35_60, sprite_def
	ld.s	r0, [r0 + (2)]	# _61, sprite_def.35_60->x
	add.w	r0, 1 #111	# tmp287,
	mov.w	r1, r0	# _63, tmp287
	ld.w	r0, [sprite_def]	# sprite_def.36_64, sprite_def
	st.s	[r0 + (2)], r1	# sprite_def.36_64->x, _65
# sprites.c:227: 			if (sprite_def->x > 319-16)
	ld.w	r0, [sprite_def]	# sprite_def.37_66, sprite_def
	ld.s	r0, [r0 + (2)]	# _67, sprite_def.37_66->x
# sprites.c:227: 			if (sprite_def->x > 319-16)
	sex.s	r1, r0	# tmp288, _67
	mov.w	r0, 303	# tmp289,
	cmp.w	r1, r0	# tmp288, tmp289
	jses	.L52		#
# sprites.c:228: 				sprite_def->x = 319-16;
	ld.w	r0, [sprite_def]	# sprite_def.38_68, sprite_def
# sprites.c:228: 				sprite_def->x = 319-16;
	mov.s	r1, 303	# tmp290,
	st.s	[r0 + (2)], r1	# sprite_def.38_68->x, tmp290
# sprites.c:229: 			break;
	j	.L52		#
.L33:
# sprites.c:231: 			sprite_def->y += 1;
	ld.w	r0, [sprite_def]	# sprite_def.39_69, sprite_def
	ld.s	r0, [r0 + (4)]	# _70, sprite_def.39_69->y
	add.w	r0, 1 #111	# tmp291,
	mov.w	r1, r0	# _72, tmp291
	ld.w	r0, [sprite_def]	# sprite_def.40_73, sprite_def
	st.s	[r0 + (4)], r1	# sprite_def.40_73->y, _74
# sprites.c:232: 			if (sprite_def->y > 239-16)
	ld.w	r0, [sprite_def]	# sprite_def.41_75, sprite_def
	ld.s	r0, [r0 + (4)]	# _76, sprite_def.41_75->y
# sprites.c:232: 			if (sprite_def->y > 239-16)
	sex.s	r1, r0	# tmp292, _76
	mov.w	r0, 223	# tmp293,
	cmp.w	r1, r0	# tmp292, tmp293
	jses	.L53		#
# sprites.c:233: 				sprite_def->y = 239-16;
	ld.w	r0, [sprite_def]	# sprite_def.42_77, sprite_def
# sprites.c:233: 				sprite_def->y = 239-16;
	mov.s	r1, 223	# tmp294,
	st.s	[r0 + (4)], r1	# sprite_def.42_77->y, tmp294
# sprites.c:234: 			break;
	j	.L53		#
.L35:
# sprites.c:236: 			sprite_def->y -= 1;
	ld.w	r0, [sprite_def]	# sprite_def.43_78, sprite_def
	ld.s	r0, [r0 + (4)]	# _79, sprite_def.43_78->y
	add.w	r0, -1 #111	# tmp295,
	mov.w	r1, r0	# _81, tmp295
	ld.w	r0, [sprite_def]	# sprite_def.44_82, sprite_def
	st.s	[r0 + (4)], r1	# sprite_def.44_82->y, _83
# sprites.c:237: 			if (sprite_def->y < 0)
	ld.w	r0, [sprite_def]	# sprite_def.45_84, sprite_def
	ld.s	r0, [r0 + (4)]	# _85, sprite_def.45_84->y
# sprites.c:237: 			if (sprite_def->y < 0)
	sex.s	r1, r0	# tmp296, _85
	xor.w	r0, r0	# tmp297
	cmp.w	r1, r0	# tmp296, tmp297
	jges	.L54		#
# sprites.c:238: 				sprite_def->y = 0;
	ld.w	r0, [sprite_def]	# sprite_def.46_86, sprite_def
# sprites.c:238: 				sprite_def->y = 0;
	xor.w	r1, r1	# tmp298
	st.s	[r0 + (4)], r1	# sprite_def.46_86->y, tmp298
# sprites.c:239: 			break;
	j	.L54		#
.L40:
# sprites.c:241: 			de_init_sprites();
	call	de_init_sprites		#
# sprites.c:242: 			cls(0);	
	mov.w	r1, sp	# tmp299,
	xor.w	r0, r0	# tmp300
	st.w	[r1], r0	#, tmp300
	call	cls		#
# sprites.c:243: 			de_init_mouse();
	call	de_init_mouse		#
# sprites.c:244: 			return (0);
	xor.w	r0, r0	# _173
	j	.L49		#
.L41:
# sprites.c:246: 			sprite_def = sprite_def1;
	ld.w	r0, [sprite_def1]	# sprite_def1.47_87, sprite_def1
	st.w	[sprite_def], r0	# sprite_def, sprite_def1.47_87
# sprites.c:247: 			break;
	j	.L32		#
.L39:
# sprites.c:249: 			sprite_def = sprite_def2;
	ld.w	r0, [sprite_def2]	# sprite_def2.48_88, sprite_def2
	st.w	[sprite_def], r0	# sprite_def, sprite_def2.48_88
# sprites.c:250: 			break;
	j	.L32		#
.L38:
# sprites.c:252: 			sprite_def = sprite_def3;
	ld.w	r0, [sprite_def3]	# sprite_def3.49_89, sprite_def3
	st.w	[sprite_def], r0	# sprite_def, sprite_def3.49_89
# sprites.c:253: 			break;
	j	.L32		#
.L37:
# sprites.c:255: 			sprite_def = sprite_def4;
	ld.w	r0, [sprite_def4]	# sprite_def4.50_90, sprite_def4
	st.w	[sprite_def], r0	# sprite_def, sprite_def4.50_90
# sprites.c:256: 			break;
	j	.L32		#
.L36:
# sprites.c:258: 			sprite_def = sprite_def5;
	ld.w	r0, [sprite_def5]	# sprite_def5.51_91, sprite_def5
	st.w	[sprite_def], r0	# sprite_def, sprite_def5.51_91
# sprites.c:259: 			break;
	j	.L32		#
.L51:
# sprites.c:224: 			break;
	nop	
	j	.L32		#
.L52:
# sprites.c:229: 			break;
	nop	
	j	.L32		#
.L53:
# sprites.c:234: 			break;
	nop	
	j	.L32		#
.L54:
# sprites.c:239: 			break;
	nop	
.L32:
# sprites.c:261: 		if (vkp != 0 && vkp != VK_SPACE)
	ld.w	r1, [r13 + (-16)]	# tmp301, vkp
	xor.w	r0, r0	# tmp302
	cmp.w	r1, r0	# tmp301, tmp302
	jz	.L47		#
# sprites.c:261: 		if (vkp != 0 && vkp != VK_SPACE)
	ld.w	r1, [r13 + (-16)]	# tmp303, vkp
	mov.w	r0, 32	# tmp304,
	cmp.w	r1, r0	# tmp303, tmp304
	jz	.L47		#
# sprites.c:262: 			old = vkp;
	ld.w	r0, [r13 + (-16)]	# tmp305, vkp
	st.w	[r13 + (-20)], r0	# old, tmp305
.L47:
# sprites.c:264: 		delay(15);
	mov.w	r1, sp	# tmp306,
	mov.w	r0, 15	# tmp307,
	st.w	[r1], r0	#, tmp307
	call	delay		#
# sprites.c:188: 	{	
	j	.L48		#
.L49:
# sprites.c:268: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
