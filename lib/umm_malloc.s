	.file	"umm_malloc.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.s
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
	.global	umm_heap
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	umm_heap, @object
	.size	umm_heap, 4
umm_heap:
	.zero	4
	.global	umm_numblocks
	.p2align	2
	.type	umm_numblocks, @object
	.size	umm_numblocks, 4
umm_numblocks:
	.zero	4
	.text
	.p2align	1
	.global	umm_blocks
	.type	umm_blocks, @function
umm_blocks:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:109:   if( size <= (sizeof(((umm_block *)0)->body)) )
	ld.w	r1, [r13 + (8)]	# tmp30, size
	mov.w	r0, 4	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jg	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:110:     return( 1 );
	mov.s	r0, 1	# _3,
	j	.L3		#
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:117:   size -= ( 1 + (sizeof(((umm_block *)0)->body)) );
	ld.w	r0, [r13 + (8)]	# tmp33, size
	add.w	r0, -5 #111	# tmp32,
	st.w	[r13 + (8)], r0	# size, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:119:   return( 2 + size/(sizeof(umm_block)) );
	ld.w	r0, [r13 + (8)]	# tmp34, size
	mov.w	r1, 3	# tmp35,
	shr.w	r0, r1	# _1, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:119:   return( 2 + size/(sizeof(umm_block)) );
	add.w	r0, 2 #111	# tmp36,
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:120: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_blocks, .-umm_blocks
	.p2align	1
	.global	umm_split_block
	.type	umm_split_block, @function
umm_split_block:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
	ld.w	r2, [r13 + (8)]	# tmp66, c
	ld.w	r1, [r13 + (12)]	# tmp68, blocks
	ld.w	r0, [r13 + (16)]	# tmp70, new_freemask
	st.s	[r13 + (-4)], r2	# c, tmp67
	st.s	[r13 + (-8)], r1	# blocks, tmp69
	st.s	[r13 + (-12)], r0	# new_freemask, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	ld.w	r0, [umm_heap]	# umm_heap.0_1, umm_heap
	ld.s	r1, [r13 + (-4)]	# _2, c
	mov.w	r2, 3	# tmp72,
	shl.w	r1, r2	# _3, tmp72
	add.w	r0, r1 #222	# _4, _3
	ld.b	r1, [r0]	# tmp73, *_4
	mov.w	r2, 8	# tmp75,
	shl.w	r1, r2	# tmp74, tmp75
	ld.b	r0, [r0 + (1)]	# tmp76, *_4
	or.w	r0, r1	# tmp77, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	mov.w	r1, 32767	# tmp79,
	and.w	r0, r1	# tmp78, tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	ld.s	r1, [r13 + (-12)]	# new_freemask.1_8, new_freemask
	or.w	r0, r1	# tmp80, new_freemask.1_8
	mov.w	r1, r0	# _9, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	ld.w	r0, [umm_heap]	# umm_heap.2_10, umm_heap
	ld.s	r2, [r13 + (-4)]	# _11, c
	ld.s	r3, [r13 + (-8)]	# _12, blocks
	add.w	r2, r3 #222	# _13, _12
	mov.w	r3, 3	# tmp81,
	shl.w	r2, r3	# _15, tmp81
	add.w	r0, r2 #222	# _16, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	zex.s	r2, r1	# tmp82, _17
	mov.w	r3, 8	# tmp84,
	shr.w	r2, r3	# tmp83, tmp84
	zex.s	r3, r2	# tmp85, tmp83
	ld.b	r2, [r0]	# tmp86, _16->header.used.next
	xor.w	r4, r4	# tmp88
	and.w	r2, r4	# tmp87, tmp88
	or.w	r2, r3	# tmp91, tmp90
	st.b	[r0], r2	# _16->header.used.next, tmp92
	zex.s	r2, r1	# tmp93, _17
	mov.w	r1, 255	# tmp95,
	and.w	r2, r1	# tmp94, tmp95
	ld.b	r1, [r0 + (1)]	# tmp96, _16->header.used.next
	xor.w	r3, r3	# tmp98
	and.w	r1, r3	# tmp97, tmp98
	or.w	r1, r2	# tmp101, tmp100
	st.b	[r0 + (1)], r1	# _16->header.used.next, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:136:   UMM_PBLOCK(c+blocks) = c;
	ld.w	r0, [umm_heap]	# umm_heap.3_18, umm_heap
	ld.s	r1, [r13 + (-4)]	# _19, c
	ld.s	r2, [r13 + (-8)]	# _20, blocks
	add.w	r1, r2 #222	# _21, _20
	mov.w	r2, 3	# tmp103,
	shl.w	r1, r2	# _23, tmp103
	add.w	r0, r1 #222	# _24, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:136:   UMM_PBLOCK(c+blocks) = c;
	ld.w	r2, [r13 + (-4)]	# tmp105,
	mov.w	r1, 24	# tmp106,
	shr.w	r2, r1	# tmp104, tmp106
	ld.b	r1, [r0 + (2)]	# tmp107, _24->header.used.prev
	xor.w	r3, r3	# tmp109
	and.w	r1, r3	# tmp108, tmp109
	or.w	r1, r2	# tmp112, tmp111
	st.b	[r0 + (2)], r1	# _24->header.used.prev, tmp113
	ld.w	r2, [r13 + (-4)]	# tmp115,
	mov.w	r1, 16	# tmp116,
	shr.w	r2, r1	# tmp114, tmp116
	mov.w	r1, 255	# tmp118,
	and.w	r2, r1	# tmp117, tmp118
	ld.b	r1, [r0 + (3)]	# tmp119, _24->header.used.prev
	xor.w	r3, r3	# tmp121
	and.w	r1, r3	# tmp120, tmp121
	or.w	r1, r2	# tmp124, tmp123
	st.b	[r0 + (3)], r1	# _24->header.used.prev, tmp125
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:138:   UMM_PBLOCK(UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) = (c+blocks);
	ld.w	r2, [umm_heap]	# umm_heap.4_25, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.5_26, umm_heap
	ld.s	r1, [r13 + (-4)]	# _27, c
	mov.w	r3, 3	# tmp126,
	shl.w	r1, r3	# _28, tmp126
	add.w	r0, r1 #222	# _29, _28
	ld.b	r1, [r0]	# tmp127, *_29
	mov.w	r3, 8	# tmp129,
	shl.w	r1, r3	# tmp128, tmp129
	ld.b	r0, [r0 + (1)]	# tmp130, *_29
	or.w	r0, r1	# tmp131, tmp128
	zex.s	r1, r0	# _31, _30
	mov.w	r0, 32767	# tmp132,
	and.w	r1, r0	# _32, tmp132
	mov.w	r0, 3	# tmp133,
	shl.w	r1, r0	# _33, tmp133
	mov.w	r0, r2	# _34, umm_heap.4_25
	add.w	r0, r1 #222	# _34, _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:138:   UMM_PBLOCK(UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) = (c+blocks);
	ld.s	r1, [r13 + (-4)]	# tmp134, c
	ld.s	r2, [r13 + (-8)]	# tmp135, blocks
	add.w	r1, r2 #222	# tmp136, tmp137
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:138:   UMM_PBLOCK(UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) = (c+blocks);
	zex.s	r2, r1	# tmp138, _35
	mov.w	r3, 8	# tmp140,
	shr.w	r2, r3	# tmp139, tmp140
	zex.s	r3, r2	# tmp141, tmp139
	ld.b	r2, [r0 + (2)]	# tmp142, _34->header.used.prev
	xor.w	r4, r4	# tmp144
	and.w	r2, r4	# tmp143, tmp144
	or.w	r2, r3	# tmp147, tmp146
	st.b	[r0 + (2)], r2	# _34->header.used.prev, tmp148
	zex.s	r2, r1	# tmp149, _35
	mov.w	r1, 255	# tmp151,
	and.w	r2, r1	# tmp150, tmp151
	ld.b	r1, [r0 + (3)]	# tmp152, _34->header.used.prev
	xor.w	r3, r3	# tmp154
	and.w	r1, r3	# tmp153, tmp154
	or.w	r1, r2	# tmp157, tmp156
	st.b	[r0 + (3)], r1	# _34->header.used.prev, tmp158
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:139:   UMM_NBLOCK(c)                                = (c+blocks);
	ld.w	r0, [umm_heap]	# umm_heap.6_36, umm_heap
	ld.s	r1, [r13 + (-4)]	# _37, c
	mov.w	r2, 3	# tmp159,
	shl.w	r1, r2	# _38, tmp159
	add.w	r0, r1 #222	# _39, _38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:139:   UMM_NBLOCK(c)                                = (c+blocks);
	ld.s	r1, [r13 + (-4)]	# tmp160, c
	ld.s	r2, [r13 + (-8)]	# tmp161, blocks
	add.w	r1, r2 #222	# tmp162, tmp163
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:139:   UMM_NBLOCK(c)                                = (c+blocks);
	zex.s	r2, r1	# tmp164, _40
	mov.w	r3, 8	# tmp166,
	shr.w	r2, r3	# tmp165, tmp166
	zex.s	r3, r2	# tmp167, tmp165
	ld.b	r2, [r0]	# tmp168, _39->header.used.next
	xor.w	r4, r4	# tmp170
	and.w	r2, r4	# tmp169, tmp170
	or.w	r2, r3	# tmp173, tmp172
	st.b	[r0], r2	# _39->header.used.next, tmp174
	zex.s	r2, r1	# tmp175, _40
	mov.w	r1, 255	# tmp177,
	and.w	r2, r1	# tmp176, tmp177
	ld.b	r1, [r0 + (1)]	# tmp178, _39->header.used.next
	xor.w	r3, r3	# tmp180
	and.w	r1, r3	# tmp179, tmp180
	or.w	r1, r2	# tmp183, tmp182
	st.b	[r0 + (1)], r1	# _39->header.used.next, tmp184
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:140: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_split_block, .-umm_split_block
	.p2align	1
	.global	umm_disconnect_from_free_list
	.type	umm_disconnect_from_free_list, @function
umm_disconnect_from_free_list:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp64, c
	st.s	[r13 + (-4)], r0	# c, tmp65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:147:   UMM_NFREE(UMM_PFREE(c)) = UMM_NFREE(c);
	ld.w	r1, [umm_heap]	# umm_heap.7_1, umm_heap
	ld.s	r0, [r13 + (-4)]	# _2, c
	mov.w	r2, 3	# tmp66,
	shl.w	r0, r2	# _3, tmp66
	add.w	r1, r0 #222	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:147:   UMM_NFREE(UMM_PFREE(c)) = UMM_NFREE(c);
	ld.w	r3, [umm_heap]	# umm_heap.8_5, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.9_6, umm_heap
	ld.s	r2, [r13 + (-4)]	# _7, c
	mov.w	r4, 3	# tmp67,
	shl.w	r2, r4	# _8, tmp67
	add.w	r0, r2 #222	# _9, _8
	ld.b	r2, [r0 + (6)]	# tmp68,
	mov.w	r4, 8	# tmp70,
	shl.w	r2, r4	# tmp69, tmp70
	ld.b	r0, [r0 + (7)]	# tmp71,
	or.w	r0, r2	# tmp72, tmp69
	zex.s	r2, r0	# _11, _10
	mov.w	r0, 3	# tmp73,
	shl.w	r2, r0	# _12, tmp73
	mov.w	r0, r3	# _13, umm_heap.8_5
	add.w	r0, r2 #222	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:147:   UMM_NFREE(UMM_PFREE(c)) = UMM_NFREE(c);
	ld.b	r2, [r1 + (4)]	# tmp74,
	mov.w	r3, 8	# tmp76,
	shl.w	r2, r3	# tmp75, tmp76
	ld.b	r1, [r1 + (5)]	# tmp77,
	or.w	r1, r2	# tmp78, tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:147:   UMM_NFREE(UMM_PFREE(c)) = UMM_NFREE(c);
	zex.s	r2, r1	# tmp79, _14
	mov.w	r3, 8	# tmp81,
	shr.w	r2, r3	# tmp80, tmp81
	zex.s	r3, r2	# tmp82, tmp80
	ld.b	r2, [r0 + (4)]	# tmp83, _13->body.free.next
	xor.w	r4, r4	# tmp85
	and.w	r2, r4	# tmp84, tmp85
	or.w	r2, r3	# tmp88, tmp87
	st.b	[r0 + (4)], r2	# _13->body.free.next, tmp89
	zex.s	r2, r1	# tmp90, _14
	mov.w	r1, 255	# tmp92,
	and.w	r2, r1	# tmp91, tmp92
	ld.b	r1, [r0 + (5)]	# tmp93, _13->body.free.next
	xor.w	r3, r3	# tmp95
	and.w	r1, r3	# tmp94, tmp95
	or.w	r1, r2	# tmp98, tmp97
	st.b	[r0 + (5)], r1	# _13->body.free.next, tmp99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	ld.w	r1, [umm_heap]	# umm_heap.10_15, umm_heap
	ld.s	r0, [r13 + (-4)]	# _16, c
	mov.w	r2, 3	# tmp100,
	shl.w	r0, r2	# _17, tmp100
	add.w	r1, r0 #222	# _18, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	ld.w	r3, [umm_heap]	# umm_heap.11_19, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.12_20, umm_heap
	ld.s	r2, [r13 + (-4)]	# _21, c
	mov.w	r4, 3	# tmp101,
	shl.w	r2, r4	# _22, tmp101
	add.w	r0, r2 #222	# _23, _22
	ld.b	r2, [r0 + (4)]	# tmp102,
	mov.w	r4, 8	# tmp104,
	shl.w	r2, r4	# tmp103, tmp104
	ld.b	r0, [r0 + (5)]	# tmp105,
	or.w	r0, r2	# tmp106, tmp103
	zex.s	r2, r0	# _25, _24
	mov.w	r0, 3	# tmp107,
	shl.w	r2, r0	# _26, tmp107
	mov.w	r0, r3	# _27, umm_heap.11_19
	add.w	r0, r2 #222	# _27, _26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	ld.b	r2, [r1 + (6)]	# tmp108,
	mov.w	r3, 8	# tmp110,
	shl.w	r2, r3	# tmp109, tmp110
	ld.b	r1, [r1 + (7)]	# tmp111,
	or.w	r1, r2	# tmp112, tmp109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	zex.s	r2, r1	# tmp113, _28
	mov.w	r3, 8	# tmp115,
	shr.w	r2, r3	# tmp114, tmp115
	zex.s	r3, r2	# tmp116, tmp114
	ld.b	r2, [r0 + (6)]	# tmp117, _27->body.free.prev
	xor.w	r4, r4	# tmp119
	and.w	r2, r4	# tmp118, tmp119
	or.w	r2, r3	# tmp122, tmp121
	st.b	[r0 + (6)], r2	# _27->body.free.prev, tmp123
	zex.s	r2, r1	# tmp124, _28
	mov.w	r1, 255	# tmp126,
	and.w	r2, r1	# tmp125, tmp126
	ld.b	r1, [r0 + (7)]	# tmp127, _27->body.free.prev
	xor.w	r3, r3	# tmp129
	and.w	r1, r3	# tmp128, tmp129
	or.w	r1, r2	# tmp132, tmp131
	st.b	[r0 + (7)], r1	# _27->body.free.prev, tmp133
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:152:   UMM_NBLOCK(c) &= (~UMM_FREELIST_MASK);
	ld.w	r0, [umm_heap]	# umm_heap.13_29, umm_heap
	ld.s	r1, [r13 + (-4)]	# _30, c
	mov.w	r2, 3	# tmp134,
	shl.w	r1, r2	# _31, tmp134
	add.w	r0, r1 #222	# _32, _31
	ld.b	r1, [r0]	# tmp135, *_32
	mov.w	r2, 8	# tmp137,
	shl.w	r1, r2	# tmp136, tmp137
	ld.b	r0, [r0 + (1)]	# tmp138, *_32
	or.w	r0, r1	# tmp139, tmp136
	mov.w	r1, r0	# _33, tmp139
	ld.w	r0, [umm_heap]	# umm_heap.14_34, umm_heap
	ld.s	r2, [r13 + (-4)]	# _35, c
	mov.w	r3, 3	# tmp140,
	shl.w	r2, r3	# _36, tmp140
	add.w	r0, r2 #222	# _37, _36
	mov.w	r2, 32767	# tmp142,
	and.w	r1, r2	# tmp141, tmp142
	zex.s	r2, r1	# tmp143, _38
	mov.w	r3, 8	# tmp145,
	shr.w	r2, r3	# tmp144, tmp145
	zex.s	r3, r2	# tmp146, tmp144
	ld.b	r2, [r0]	# tmp147, _37->header.used.next
	xor.w	r4, r4	# tmp149
	and.w	r2, r4	# tmp148, tmp149
	or.w	r2, r3	# tmp152, tmp151
	st.b	[r0], r2	# _37->header.used.next, tmp153
	zex.s	r2, r1	# tmp154, _38
	mov.w	r1, 255	# tmp156,
	and.w	r2, r1	# tmp155, tmp156
	ld.b	r1, [r0 + (1)]	# tmp157, _37->header.used.next
	xor.w	r3, r3	# tmp159
	and.w	r1, r3	# tmp158, tmp159
	or.w	r1, r2	# tmp162, tmp161
	st.b	[r0 + (1)], r1	# _37->header.used.next, tmp163
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:153: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_disconnect_from_free_list, .-umm_disconnect_from_free_list
	.p2align	1
	.global	umm_assimilate_up
	.type	umm_assimilate_up, @function
umm_assimilate_up:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp73, c
	st.s	[r13 + (-4)], r0	# c, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:163:   if( UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_FREELIST_MASK ) {
	ld.w	r2, [umm_heap]	# umm_heap.15_1, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.16_2, umm_heap
	ld.s	r1, [r13 + (-4)]	# _3, c
	mov.w	r3, 3	# tmp75,
	shl.w	r1, r3	# _4, tmp75
	add.w	r0, r1 #222	# _5, _4
	ld.b	r1, [r0]	# tmp76, *_5
	mov.w	r3, 8	# tmp78,
	shl.w	r1, r3	# tmp77, tmp78
	ld.b	r0, [r0 + (1)]	# tmp79, *_5
	or.w	r0, r1	# tmp80, tmp77
	zex.s	r1, r0	# _7, _6
	mov.w	r0, 3	# tmp81,
	shl.w	r1, r0	# _8, tmp81
	mov.w	r0, r2	# _9, umm_heap.15_1
	add.w	r0, r1 #222	# _9, _8
	ld.b	r1, [r0]	# tmp82, *_9
	mov.w	r2, 8	# tmp84,
	shl.w	r1, r2	# tmp83, tmp84
	ld.b	r0, [r0 + (1)]	# tmp85, *_9
	or.w	r0, r1	# tmp86, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:163:   if( UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_FREELIST_MASK ) {
	sex.s	r1, r0	# tmp87, _11
	xor.w	r0, r0	# tmp88
	cmp.w	r1, r0	# tmp87, tmp88
	jges	.L8		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:176:     umm_disconnect_from_free_list( UMM_NBLOCK(c) );
	ld.w	r0, [umm_heap]	# umm_heap.17_12, umm_heap
	ld.s	r1, [r13 + (-4)]	# _13, c
	mov.w	r2, 3	# tmp89,
	shl.w	r1, r2	# _14, tmp89
	add.w	r0, r1 #222	# _15, _14
	ld.b	r1, [r0]	# tmp90, *_15
	mov.w	r2, 8	# tmp92,
	shl.w	r1, r2	# tmp91, tmp92
	ld.b	r0, [r0 + (1)]	# tmp93, *_15
	or.w	r0, r1	# tmp94, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:176:     umm_disconnect_from_free_list( UMM_NBLOCK(c) );
	zex.s	r0, r0	# _17, _16
	mov.w	r1, sp	# tmp95,
	st.w	[r1], r0	#, _17
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:180:     UMM_PBLOCK(UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) = c;
	ld.w	r2, [umm_heap]	# umm_heap.18_18, umm_heap
	ld.w	r3, [umm_heap]	# umm_heap.19_19, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.20_20, umm_heap
	ld.s	r1, [r13 + (-4)]	# _21, c
	mov.w	r4, 3	# tmp96,
	shl.w	r1, r4	# _22, tmp96
	add.w	r0, r1 #222	# _23, _22
	ld.b	r1, [r0]	# tmp97, *_23
	mov.w	r4, 8	# tmp99,
	shl.w	r1, r4	# tmp98, tmp99
	ld.b	r0, [r0 + (1)]	# tmp100, *_23
	or.w	r0, r1	# tmp101, tmp98
	zex.s	r1, r0	# _25, _24
	mov.w	r0, 3	# tmp102,
	shl.w	r1, r0	# _26, tmp102
	mov.w	r0, r3	# _27, umm_heap.19_19
	add.w	r0, r1 #222	# _27, _26
	ld.b	r1, [r0]	# tmp103, *_27
	mov.w	r3, 8	# tmp105,
	shl.w	r1, r3	# tmp104, tmp105
	ld.b	r0, [r0 + (1)]	# tmp106, *_27
	or.w	r0, r1	# tmp107, tmp104
	zex.s	r1, r0	# _29, _28
	mov.w	r0, 32767	# tmp108,
	and.w	r1, r0	# _30, tmp108
	mov.w	r0, 3	# tmp109,
	shl.w	r1, r0	# _31, tmp109
	mov.w	r0, r2	# _32, umm_heap.18_18
	add.w	r0, r1 #222	# _32, _31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:180:     UMM_PBLOCK(UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) = c;
	ld.w	r2, [r13 + (-4)]	# tmp111,
	mov.w	r1, 24	# tmp112,
	shr.w	r2, r1	# tmp110, tmp112
	ld.b	r1, [r0 + (2)]	# tmp113, _32->header.used.prev
	xor.w	r3, r3	# tmp115
	and.w	r1, r3	# tmp114, tmp115
	or.w	r1, r2	# tmp118, tmp117
	st.b	[r0 + (2)], r1	# _32->header.used.prev, tmp119
	ld.w	r2, [r13 + (-4)]	# tmp121,
	mov.w	r1, 16	# tmp122,
	shr.w	r2, r1	# tmp120, tmp122
	mov.w	r1, 255	# tmp124,
	and.w	r2, r1	# tmp123, tmp124
	ld.b	r1, [r0 + (3)]	# tmp125, _32->header.used.prev
	xor.w	r3, r3	# tmp127
	and.w	r1, r3	# tmp126, tmp127
	or.w	r1, r2	# tmp130, tmp129
	st.b	[r0 + (3)], r1	# _32->header.used.prev, tmp131
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	ld.w	r2, [umm_heap]	# umm_heap.21_33, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.22_34, umm_heap
	ld.s	r1, [r13 + (-4)]	# _35, c
	mov.w	r3, 3	# tmp132,
	shl.w	r1, r3	# _36, tmp132
	add.w	r0, r1 #222	# _37, _36
	ld.b	r1, [r0]	# tmp133, *_37
	mov.w	r3, 8	# tmp135,
	shl.w	r1, r3	# tmp134, tmp135
	ld.b	r0, [r0 + (1)]	# tmp136, *_37
	or.w	r0, r1	# tmp137, tmp134
	zex.s	r1, r0	# _39, _38
	mov.w	r0, 3	# tmp138,
	shl.w	r1, r0	# _40, tmp138
	mov.w	r0, r2	# _41, umm_heap.21_33
	add.w	r0, r1 #222	# _41, _40
	ld.b	r1, [r0]	# tmp139, *_41
	mov.w	r2, 8	# tmp141,
	shl.w	r1, r2	# tmp140, tmp141
	ld.b	r0, [r0 + (1)]	# tmp142, *_41
	or.w	r0, r1	# tmp143, tmp140
	mov.w	r1, r0	# _42, tmp143
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	ld.w	r0, [umm_heap]	# umm_heap.23_43, umm_heap
	ld.s	r2, [r13 + (-4)]	# _44, c
	mov.w	r3, 3	# tmp144,
	shl.w	r2, r3	# _45, tmp144
	add.w	r0, r2 #222	# _46, _45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	mov.w	r2, 32767	# tmp146,
	and.w	r1, r2	# tmp145, tmp146
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	zex.s	r2, r1	# tmp147, _47
	mov.w	r3, 8	# tmp149,
	shr.w	r2, r3	# tmp148, tmp149
	zex.s	r3, r2	# tmp150, tmp148
	ld.b	r2, [r0]	# tmp151, _46->header.used.next
	xor.w	r4, r4	# tmp153
	and.w	r2, r4	# tmp152, tmp153
	or.w	r2, r3	# tmp156, tmp155
	st.b	[r0], r2	# _46->header.used.next, tmp157
	zex.s	r2, r1	# tmp158, _47
	mov.w	r1, 255	# tmp160,
	and.w	r2, r1	# tmp159, tmp160
	ld.b	r1, [r0 + (1)]	# tmp161, _46->header.used.next
	xor.w	r3, r3	# tmp163
	and.w	r1, r3	# tmp162, tmp163
	or.w	r1, r2	# tmp166, tmp165
	st.b	[r0 + (1)], r1	# _46->header.used.next, tmp167
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:183: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_assimilate_up, .-umm_assimilate_up
	.p2align	1
	.global	umm_assimilate_down
	.type	umm_assimilate_down, @function
umm_assimilate_down:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp61, c
	ld.w	r0, [r13 + (12)]	# tmp63, freemask
	st.s	[r13 + (-4)], r1	# c, tmp62
	st.s	[r13 + (-8)], r0	# freemask, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:198:   UMM_NBLOCK(UMM_PBLOCK(c)) = UMM_NBLOCK(c) | freemask;
	ld.w	r0, [umm_heap]	# umm_heap.24_1, umm_heap
	ld.s	r1, [r13 + (-4)]	# _2, c
	mov.w	r2, 3	# tmp65,
	shl.w	r1, r2	# _3, tmp65
	add.w	r0, r1 #222	# _4, _3
	ld.b	r1, [r0]	# tmp66, *_4
	mov.w	r2, 8	# tmp68,
	shl.w	r1, r2	# tmp67, tmp68
	ld.b	r0, [r0 + (1)]	# tmp69, *_4
	or.w	r0, r1	# tmp70, tmp67
	mov.w	r2, r0	# _5, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:198:   UMM_NBLOCK(UMM_PBLOCK(c)) = UMM_NBLOCK(c) | freemask;
	ld.w	r3, [umm_heap]	# umm_heap.25_6, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.26_7, umm_heap
	ld.s	r1, [r13 + (-4)]	# _8, c
	mov.w	r4, 3	# tmp71,
	shl.w	r1, r4	# _9, tmp71
	add.w	r0, r1 #222	# _10, _9
	ld.b	r1, [r0 + (2)]	# tmp72,
	mov.w	r4, 8	# tmp74,
	shl.w	r1, r4	# tmp73, tmp74
	ld.b	r0, [r0 + (3)]	# tmp75,
	or.w	r0, r1	# tmp76, tmp73
	zex.s	r1, r0	# _12, _11
	mov.w	r0, 3	# tmp77,
	shl.w	r1, r0	# _13, tmp77
	mov.w	r0, r3	# _14, umm_heap.25_6
	add.w	r0, r1 #222	# _14, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:198:   UMM_NBLOCK(UMM_PBLOCK(c)) = UMM_NBLOCK(c) | freemask;
	ld.s	r1, [r13 + (-8)]	# tmp78, freemask
	or.w	r1, r2	# tmp79, _5
	zex.s	r2, r1	# tmp80, _15
	mov.w	r3, 8	# tmp82,
	shr.w	r2, r3	# tmp81, tmp82
	zex.s	r3, r2	# tmp83, tmp81
	ld.b	r2, [r0]	# tmp84, _14->header.used.next
	xor.w	r4, r4	# tmp86
	and.w	r2, r4	# tmp85, tmp86
	or.w	r2, r3	# tmp89, tmp88
	st.b	[r0], r2	# _14->header.used.next, tmp90
	zex.s	r2, r1	# tmp91, _15
	mov.w	r1, 255	# tmp93,
	and.w	r2, r1	# tmp92, tmp93
	ld.b	r1, [r0 + (1)]	# tmp94, _14->header.used.next
	xor.w	r3, r3	# tmp96
	and.w	r1, r3	# tmp95, tmp96
	or.w	r1, r2	# tmp99, tmp98
	st.b	[r0 + (1)], r1	# _14->header.used.next, tmp100
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	ld.w	r1, [umm_heap]	# umm_heap.27_16, umm_heap
	ld.s	r0, [r13 + (-4)]	# _17, c
	mov.w	r2, 3	# tmp101,
	shl.w	r0, r2	# _18, tmp101
	add.w	r1, r0 #222	# _19, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	ld.w	r3, [umm_heap]	# umm_heap.28_20, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.29_21, umm_heap
	ld.s	r2, [r13 + (-4)]	# _22, c
	mov.w	r4, 3	# tmp102,
	shl.w	r2, r4	# _23, tmp102
	add.w	r0, r2 #222	# _24, _23
	ld.b	r2, [r0]	# tmp103, *_24
	mov.w	r4, 8	# tmp105,
	shl.w	r2, r4	# tmp104, tmp105
	ld.b	r0, [r0 + (1)]	# tmp106, *_24
	or.w	r0, r2	# tmp107, tmp104
	zex.s	r2, r0	# _26, _25
	mov.w	r0, 3	# tmp108,
	shl.w	r2, r0	# _27, tmp108
	mov.w	r0, r3	# _28, umm_heap.28_20
	add.w	r0, r2 #222	# _28, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	ld.b	r2, [r1 + (2)]	# tmp109,
	mov.w	r3, 8	# tmp111,
	shl.w	r2, r3	# tmp110, tmp111
	ld.b	r1, [r1 + (3)]	# tmp112,
	or.w	r1, r2	# tmp113, tmp110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	zex.s	r2, r1	# tmp114, _29
	mov.w	r3, 8	# tmp116,
	shr.w	r2, r3	# tmp115, tmp116
	zex.s	r3, r2	# tmp117, tmp115
	ld.b	r2, [r0 + (2)]	# tmp118, _28->header.used.prev
	xor.w	r4, r4	# tmp120
	and.w	r2, r4	# tmp119, tmp120
	or.w	r2, r3	# tmp123, tmp122
	st.b	[r0 + (2)], r2	# _28->header.used.prev, tmp124
	zex.s	r2, r1	# tmp125, _29
	mov.w	r1, 255	# tmp127,
	and.w	r2, r1	# tmp126, tmp127
	ld.b	r1, [r0 + (3)]	# tmp128, _28->header.used.prev
	xor.w	r3, r3	# tmp130
	and.w	r1, r3	# tmp129, tmp130
	or.w	r1, r2	# tmp133, tmp132
	st.b	[r0 + (3)], r1	# _28->header.used.prev, tmp134
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:211:   return( UMM_PBLOCK(c) );
	ld.w	r0, [umm_heap]	# umm_heap.30_30, umm_heap
	ld.s	r1, [r13 + (-4)]	# _31, c
	mov.w	r2, 3	# tmp135,
	shl.w	r1, r2	# _32, tmp135
	add.w	r0, r1 #222	# _33, _32
	ld.b	r1, [r0 + (2)]	# tmp136,
	mov.w	r2, 8	# tmp138,
	shl.w	r1, r2	# tmp137, tmp138
	ld.b	r0, [r0 + (3)]	# tmp139,
	or.w	r0, r1	# tmp140, tmp137
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:212: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_assimilate_down, .-umm_assimilate_down
	.p2align	1
	.global	umm_init
	.type	umm_init, @function
umm_init:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:218:   umm_heap = (umm_block *)UMM_MALLOC_CFG_HEAP_ADDR;
	mov.w	r0, 30000000	# tmp41,
	st.w	[umm_heap], r0	# umm_heap, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:219:   umm_numblocks = (UMM_MALLOC_CFG_HEAP_SIZE / sizeof(umm_block));
	mov.w	r0, 262144	# tmp42,
	st.w	[umm_numblocks], r0	# umm_numblocks, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:220:   memset(umm_heap, 0x00, UMM_MALLOC_CFG_HEAP_SIZE);
	ld.w	r1, [umm_heap]	# umm_heap.31_1, umm_heap
	mov.w	r0, sp	# tmp43,
	mov.w	r2, 2097152	# tmp44,
	st.w	[r0 + (8)], r2	#, tmp44
	xor.w	r2, r2	# tmp45
	st.w	[r0 + (4)], r2	#, tmp45
	st.w	[r0], r1	#, umm_heap.31_1
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:226:     UMM_NBLOCK(0) = 1;
	ld.w	r0, [umm_heap]	# umm_heap.32_2, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:226:     UMM_NBLOCK(0) = 1;
	ld.b	r1, [r0]	# tmp46, umm_heap.32_2->header.used.next
	xor.w	r2, r2	# tmp48
	and.w	r1, r2	# tmp47, tmp48
	st.b	[r0], r1	# umm_heap.32_2->header.used.next, tmp49
	ld.b	r1, [r0 + (1)]	# tmp50, umm_heap.32_2->header.used.next
	xor.w	r2, r2	# tmp52
	and.w	r1, r2	# tmp51, tmp52
	mov.w	r2, 1	# tmp55,
	or.w	r1, r2	# tmp54, tmp55
	st.b	[r0 + (1)], r1	# umm_heap.32_2->header.used.next, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:227:     UMM_NFREE(0)  = 1;
	ld.w	r0, [umm_heap]	# umm_heap.33_3, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:227:     UMM_NFREE(0)  = 1;
	ld.b	r1, [r0 + (4)]	# tmp57, umm_heap.33_3->body.free.next
	xor.w	r2, r2	# tmp59
	and.w	r1, r2	# tmp58, tmp59
	st.b	[r0 + (4)], r1	# umm_heap.33_3->body.free.next, tmp60
	ld.b	r1, [r0 + (5)]	# tmp61, umm_heap.33_3->body.free.next
	xor.w	r2, r2	# tmp63
	and.w	r1, r2	# tmp62, tmp63
	mov.w	r2, 1	# tmp66,
	or.w	r1, r2	# tmp65, tmp66
	st.b	[r0 + (5)], r1	# umm_heap.33_3->body.free.next, tmp67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:228:     UMM_PFREE(0)  = 1;
	ld.w	r0, [umm_heap]	# umm_heap.34_4, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:228:     UMM_PFREE(0)  = 1;
	ld.b	r1, [r0 + (6)]	# tmp68, umm_heap.34_4->body.free.prev
	xor.w	r2, r2	# tmp70
	and.w	r1, r2	# tmp69, tmp70
	st.b	[r0 + (6)], r1	# umm_heap.34_4->body.free.prev, tmp71
	ld.b	r1, [r0 + (7)]	# tmp72, umm_heap.34_4->body.free.prev
	xor.w	r2, r2	# tmp74
	and.w	r1, r2	# tmp73, tmp74
	mov.w	r2, 1	# tmp77,
	or.w	r1, r2	# tmp76, tmp77
	st.b	[r0 + (7)], r1	# umm_heap.34_4->body.free.prev, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	ld.w	r0, [umm_numblocks]	# umm_numblocks.35_5, umm_numblocks
	add.w	r0, -1 #111	# tmp79,
	mov.w	r1, r0	# _7, tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	ld.w	r0, [umm_heap]	# umm_heap.36_8, umm_heap
	add.w	r0, 8 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	mov.w	r2, -32768	# tmp81,
	or.w	r1, r2	# tmp80, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	zex.s	r2, r1	# tmp82, _10
	mov.w	r3, 8	# tmp84,
	shr.w	r2, r3	# tmp83, tmp84
	zex.s	r3, r2	# tmp85, tmp83
	ld.b	r2, [r0]	# tmp86, _9->header.used.next
	xor.w	r4, r4	# tmp88
	and.w	r2, r4	# tmp87, tmp88
	or.w	r2, r3	# tmp91, tmp90
	st.b	[r0], r2	# _9->header.used.next, tmp92
	zex.s	r2, r1	# tmp93, _10
	mov.w	r1, 255	# tmp95,
	and.w	r2, r1	# tmp94, tmp95
	ld.b	r1, [r0 + (1)]	# tmp96, _9->header.used.next
	xor.w	r3, r3	# tmp98
	and.w	r1, r3	# tmp97, tmp98
	or.w	r1, r2	# tmp101, tmp100
	st.b	[r0 + (1)], r1	# _9->header.used.next, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:259:     UMM_PBLOCK(UMM_BLOCK_LAST) = 1;
	ld.w	r0, [umm_heap]	# umm_heap.37_11, umm_heap
	ld.w	r1, [umm_numblocks]	# umm_numblocks.38_12, umm_numblocks
	mov.w	r2, 536870911	# tmp103,
	add.w	r1, r2 #222	# _13, tmp103
	mov.w	r2, 3	# tmp104,
	shl.w	r1, r2	# _14, tmp104
	add.w	r0, r1 #222	# _15, _14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:259:     UMM_PBLOCK(UMM_BLOCK_LAST) = 1;
	ld.b	r1, [r0 + (2)]	# tmp105, _15->header.used.prev
	xor.w	r2, r2	# tmp107
	and.w	r1, r2	# tmp106, tmp107
	st.b	[r0 + (2)], r1	# _15->header.used.prev, tmp108
	ld.b	r1, [r0 + (3)]	# tmp109, _15->header.used.prev
	xor.w	r2, r2	# tmp111
	and.w	r1, r2	# tmp110, tmp111
	mov.w	r2, 1	# tmp114,
	or.w	r1, r2	# tmp113, tmp114
	st.b	[r0 + (3)], r1	# _15->header.used.prev, tmp115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:260: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_init, .-umm_init
	.p2align	1
	.global	umm_free_core
	.type	umm_free_core, @function
umm_free_core:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:282:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	ld.w	r1, [umm_heap]	# umm_heap.39_1, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:282:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	ld.w	r0, [r13 + (8)]	# tmp70, ptr
	sub.w	r0, r1 #222	# _2, umm_heap.39_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:282:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	mov.w	r1, 3	# tmp71,
	shr.w	r0, r1	# _4, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:282:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	st.s	[r13 + (-2)], r0	# c, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:288:   umm_assimilate_up( c );
	ld.s	r0, [r13 + (-2)]	# _5, c
	mov.w	r1, sp	# tmp73,
	st.w	[r1], r0	#, _5
	call	umm_assimilate_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:292:   if( UMM_NBLOCK(UMM_PBLOCK(c)) & UMM_FREELIST_MASK ) {
	ld.w	r2, [umm_heap]	# umm_heap.40_6, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.41_7, umm_heap
	ld.s	r1, [r13 + (-2)]	# _8, c
	mov.w	r3, 3	# tmp74,
	shl.w	r1, r3	# _9, tmp74
	add.w	r0, r1 #222	# _10, _9
	ld.b	r1, [r0 + (2)]	# tmp75,
	mov.w	r3, 8	# tmp77,
	shl.w	r1, r3	# tmp76, tmp77
	ld.b	r0, [r0 + (3)]	# tmp78,
	or.w	r0, r1	# tmp79, tmp76
	zex.s	r1, r0	# _12, _11
	mov.w	r0, 3	# tmp80,
	shl.w	r1, r0	# _13, tmp80
	mov.w	r0, r2	# _14, umm_heap.40_6
	add.w	r0, r1 #222	# _14, _13
	ld.b	r1, [r0]	# tmp81, *_14
	mov.w	r2, 8	# tmp83,
	shl.w	r1, r2	# tmp82, tmp83
	ld.b	r0, [r0 + (1)]	# tmp84, *_14
	or.w	r0, r1	# tmp85, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:292:   if( UMM_NBLOCK(UMM_PBLOCK(c)) & UMM_FREELIST_MASK ) {
	sex.s	r1, r0	# tmp86, _16
	xor.w	r0, r0	# tmp87
	cmp.w	r1, r0	# tmp86, tmp87
	jges	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:296:     c = umm_assimilate_down(c, UMM_FREELIST_MASK);
	ld.s	r1, [r13 + (-2)]	# _17, c
	mov.w	r0, sp	# tmp88,
	mov.w	r2, 32768	# tmp89,
	st.w	[r0 + (4)], r2	#, tmp89
	st.w	[r0], r1	#, _17
	call	umm_assimilate_down		#
	st.s	[r13 + (-2)], r0	# c,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:313: }
	j	.L15		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:306:     UMM_PFREE(UMM_NFREE(0)) = c;
	ld.w	r2, [umm_heap]	# umm_heap.42_18, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.43_19, umm_heap
	ld.b	r1, [r0 + (4)]	# tmp90,
	mov.w	r3, 8	# tmp92,
	shl.w	r1, r3	# tmp91, tmp92
	ld.b	r0, [r0 + (5)]	# tmp93,
	or.w	r0, r1	# tmp94, tmp91
	zex.s	r1, r0	# _21, _20
	mov.w	r0, 3	# tmp95,
	shl.w	r1, r0	# _22, tmp95
	mov.w	r0, r2	# _23, umm_heap.42_18
	add.w	r0, r1 #222	# _23, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:306:     UMM_PFREE(UMM_NFREE(0)) = c;
	ld.s	r1, [r13 + (-2)]	# tmp96, c
	mov.w	r2, 8	# tmp98,
	shr.w	r1, r2	# tmp97, tmp98
	zex.s	r2, r1	# tmp99, tmp97
	ld.b	r1, [r0 + (6)]	# tmp100, _23->body.free.prev
	xor.w	r3, r3	# tmp102
	and.w	r1, r3	# tmp101, tmp102
	or.w	r1, r2	# tmp105, tmp104
	st.b	[r0 + (6)], r1	# _23->body.free.prev, tmp106
	ld.s	r2, [r13 + (-2)]	# tmp107, c
	mov.w	r1, 255	# tmp109,
	and.w	r2, r1	# tmp108, tmp109
	ld.b	r1, [r0 + (7)]	# tmp110, _23->body.free.prev
	xor.w	r3, r3	# tmp112
	and.w	r1, r3	# tmp111, tmp112
	or.w	r1, r2	# tmp115, tmp114
	st.b	[r0 + (7)], r1	# _23->body.free.prev, tmp116
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	ld.w	r1, [umm_heap]	# umm_heap.44_24, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	ld.w	r0, [umm_heap]	# umm_heap.45_25, umm_heap
	ld.s	r2, [r13 + (-2)]	# _26, c
	mov.w	r3, 3	# tmp117,
	shl.w	r2, r3	# _27, tmp117
	add.w	r0, r2 #222	# _28, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	ld.b	r2, [r1 + (4)]	# tmp118,
	mov.w	r3, 8	# tmp120,
	shl.w	r2, r3	# tmp119, tmp120
	ld.b	r1, [r1 + (5)]	# tmp121,
	or.w	r1, r2	# tmp122, tmp119
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	zex.s	r2, r1	# tmp123, _29
	mov.w	r3, 8	# tmp125,
	shr.w	r2, r3	# tmp124, tmp125
	zex.s	r3, r2	# tmp126, tmp124
	ld.b	r2, [r0 + (4)]	# tmp127, _28->body.free.next
	xor.w	r4, r4	# tmp129
	and.w	r2, r4	# tmp128, tmp129
	or.w	r2, r3	# tmp132, tmp131
	st.b	[r0 + (4)], r2	# _28->body.free.next, tmp133
	zex.s	r2, r1	# tmp134, _29
	mov.w	r1, 255	# tmp136,
	and.w	r2, r1	# tmp135, tmp136
	ld.b	r1, [r0 + (5)]	# tmp137, _28->body.free.next
	xor.w	r3, r3	# tmp139
	and.w	r1, r3	# tmp138, tmp139
	or.w	r1, r2	# tmp142, tmp141
	st.b	[r0 + (5)], r1	# _28->body.free.next, tmp143
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:308:     UMM_PFREE(c)            = 0;
	ld.w	r0, [umm_heap]	# umm_heap.46_30, umm_heap
	ld.s	r1, [r13 + (-2)]	# _31, c
	mov.w	r2, 3	# tmp144,
	shl.w	r1, r2	# _32, tmp144
	add.w	r0, r1 #222	# _33, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:308:     UMM_PFREE(c)            = 0;
	ld.b	r1, [r0 + (6)]	# tmp145, _33->body.free.prev
	xor.w	r2, r2	# tmp147
	and.w	r1, r2	# tmp146, tmp147
	st.b	[r0 + (6)], r1	# _33->body.free.prev, tmp148
	ld.b	r1, [r0 + (7)]	# tmp149, _33->body.free.prev
	xor.w	r2, r2	# tmp151
	and.w	r1, r2	# tmp150, tmp151
	st.b	[r0 + (7)], r1	# _33->body.free.prev, tmp152
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:309:     UMM_NFREE(0)            = c;
	ld.w	r0, [umm_heap]	# umm_heap.47_34, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:309:     UMM_NFREE(0)            = c;
	ld.s	r1, [r13 + (-2)]	# tmp153, c
	mov.w	r2, 8	# tmp155,
	shr.w	r1, r2	# tmp154, tmp155
	zex.s	r2, r1	# tmp156, tmp154
	ld.b	r1, [r0 + (4)]	# tmp157, umm_heap.47_34->body.free.next
	xor.w	r3, r3	# tmp159
	and.w	r1, r3	# tmp158, tmp159
	or.w	r1, r2	# tmp162, tmp161
	st.b	[r0 + (4)], r1	# umm_heap.47_34->body.free.next, tmp163
	ld.s	r2, [r13 + (-2)]	# tmp164, c
	mov.w	r1, 255	# tmp166,
	and.w	r2, r1	# tmp165, tmp166
	ld.b	r1, [r0 + (5)]	# tmp167, umm_heap.47_34->body.free.next
	xor.w	r3, r3	# tmp169
	and.w	r1, r3	# tmp168, tmp169
	or.w	r1, r2	# tmp172, tmp171
	st.b	[r0 + (5)], r1	# umm_heap.47_34->body.free.next, tmp173
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:311:     UMM_NBLOCK(c)          |= UMM_FREELIST_MASK;
	ld.w	r0, [umm_heap]	# umm_heap.48_35, umm_heap
	ld.s	r1, [r13 + (-2)]	# _36, c
	mov.w	r2, 3	# tmp174,
	shl.w	r1, r2	# _37, tmp174
	add.w	r0, r1 #222	# _38, _37
	ld.b	r1, [r0]	# tmp175, *_38
	mov.w	r2, 8	# tmp177,
	shl.w	r1, r2	# tmp176, tmp177
	ld.b	r0, [r0 + (1)]	# tmp178, *_38
	or.w	r0, r1	# tmp179, tmp176
	mov.w	r1, r0	# _39, tmp179
	ld.w	r0, [umm_heap]	# umm_heap.49_40, umm_heap
	ld.s	r2, [r13 + (-2)]	# _41, c
	mov.w	r3, 3	# tmp180,
	shl.w	r2, r3	# _42, tmp180
	add.w	r0, r2 #222	# _43, _42
	mov.w	r2, -32768	# tmp182,
	or.w	r1, r2	# tmp181, tmp182
	zex.s	r2, r1	# tmp183, _44
	mov.w	r3, 8	# tmp185,
	shr.w	r2, r3	# tmp184, tmp185
	zex.s	r3, r2	# tmp186, tmp184
	ld.b	r2, [r0]	# tmp187, _43->header.used.next
	xor.w	r4, r4	# tmp189
	and.w	r2, r4	# tmp188, tmp189
	or.w	r2, r3	# tmp192, tmp191
	st.b	[r0], r2	# _43->header.used.next, tmp193
	zex.s	r2, r1	# tmp194, _44
	mov.w	r1, 255	# tmp196,
	and.w	r2, r1	# tmp195, tmp196
	ld.b	r1, [r0 + (1)]	# tmp197, _43->header.used.next
	xor.w	r3, r3	# tmp199
	and.w	r1, r3	# tmp198, tmp199
	or.w	r1, r2	# tmp202, tmp201
	st.b	[r0 + (1)], r1	# _43->header.used.next, tmp203
.L15:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:313: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_free_core, .-umm_free_core
	.p2align	1
	.global	free
	.type	free, @function
free:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:319:   if (umm_heap == NULL) {
	ld.w	r1, [umm_heap]	# umm_heap.50_1, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:319:   if (umm_heap == NULL) {
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# umm_heap.50_1, tmp27
	jnz	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:320:     umm_init();
	call	umm_init		#
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:325:   if( (void *)0 == ptr ) {
	ld.w	r1, [r13 + (8)]	# tmp28, ptr
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L20		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:335:   umm_free_core( ptr );
	mov.w	r1, sp	# tmp30,
	ld.w	r0, [r13 + (8)]	# tmp31, ptr
	st.w	[r1], r0	#, tmp31
	call	umm_free_core		#
	j	.L16		#
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:328:     return;
	nop	
.L16:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:338: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	free, .-free
	.p2align	1
	.global	umm_malloc_core
	.type	umm_malloc_core, @function
umm_malloc_core:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:347:   uint16_t blockSize = 0;
	xor.w	r0, r0	# tmp98
	st.s	[r13 + (-2)], r0	# blockSize, tmp98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:354:   blocks = umm_blocks( size );
	mov.w	r1, sp	# tmp99,
	ld.w	r0, [r13 + (8)]	# tmp100, size
	st.w	[r1], r0	#, tmp100
	call	umm_blocks		#
	st.s	[r13 + (-10)], r0	# blocks,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:364:   cf = UMM_NFREE(0);
	ld.w	r0, [umm_heap]	# umm_heap.51_1, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:364:   cf = UMM_NFREE(0);
	ld.b	r1, [r0 + (4)]	# tmp101,
	mov.w	r2, 8	# tmp103,
	shl.w	r1, r2	# tmp102, tmp103
	ld.b	r0, [r0 + (5)]	# tmp104,
	or.w	r0, r1	# tmp105, tmp102
	st.s	[r13 + (-8)], r0	# cf, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:366:   bestBlock = UMM_NFREE(0);
	ld.w	r0, [umm_heap]	# umm_heap.52_2, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:366:   bestBlock = UMM_NFREE(0);
	ld.b	r1, [r0 + (4)]	# tmp107,
	mov.w	r2, 8	# tmp109,
	shl.w	r1, r2	# tmp108, tmp109
	ld.b	r0, [r0 + (5)]	# tmp110,
	or.w	r0, r1	# tmp111, tmp108
	st.s	[r13 + (-6)], r0	# bestBlock, tmp112
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:367:   bestSize  = 0x7FFF;
	mov.s	r0, 32767	# tmp113,
	st.s	[r13 + (-4)], r0	# bestSize, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:369:   while( cf ) {
	j	.L22		#
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:370:     blockSize = (UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK) - cf;
	ld.w	r0, [umm_heap]	# umm_heap.53_3, umm_heap
	ld.s	r1, [r13 + (-8)]	# _4, cf
	mov.w	r2, 3	# tmp114,
	shl.w	r1, r2	# _5, tmp114
	add.w	r0, r1 #222	# _6, _5
	ld.b	r1, [r0]	# tmp115, *_6
	mov.w	r2, 8	# tmp117,
	shl.w	r1, r2	# tmp116, tmp117
	ld.b	r0, [r0 + (1)]	# tmp118, *_6
	or.w	r0, r1	# tmp119, tmp116
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:370:     blockSize = (UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK) - cf;
	mov.w	r1, 32767	# tmp121,
	and.w	r0, r1	# tmp120, tmp121
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:370:     blockSize = (UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK) - cf;
	ld.s	r1, [r13 + (-8)]	# tmp122, cf
	sub.w	r0, r1 #222	# tmp123, tmp124
	st.s	[r13 + (-2)], r0	# blockSize, tmp125
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:375:     if( (blockSize >= blocks) && (blockSize < bestSize) ) {
	ld.s	r1, [r13 + (-2)]	# tmp126, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp127, blocks
	cmp.w	r1, r0	# tmp126, tmp127
	js	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:375:     if( (blockSize >= blocks) && (blockSize < bestSize) ) {
	ld.s	r1, [r13 + (-2)]	# tmp128, blockSize
	ld.s	r0, [r13 + (-4)]	# tmp129, bestSize
	cmp.w	r1, r0	# tmp128, tmp129
	jge	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:376:       bestBlock = cf;
	ld.s	r0, [r13 + (-8)]	# tmp130, cf
	st.s	[r13 + (-6)], r0	# bestBlock, tmp130
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:377:       bestSize  = blockSize;
	ld.s	r0, [r13 + (-2)]	# tmp131, blockSize
	st.s	[r13 + (-4)], r0	# bestSize, tmp131
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:387:     cf = UMM_NFREE(cf);
	ld.w	r0, [umm_heap]	# umm_heap.54_9, umm_heap
	ld.s	r1, [r13 + (-8)]	# _10, cf
	mov.w	r2, 3	# tmp132,
	shl.w	r1, r2	# _11, tmp132
	add.w	r0, r1 #222	# _12, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:387:     cf = UMM_NFREE(cf);
	ld.b	r1, [r0 + (4)]	# tmp133,
	mov.w	r2, 8	# tmp135,
	shl.w	r1, r2	# tmp134, tmp135
	ld.b	r0, [r0 + (5)]	# tmp136,
	or.w	r0, r1	# tmp137, tmp134
	st.s	[r13 + (-8)], r0	# cf, tmp138
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:369:   while( cf ) {
	ld.s	r1, [r13 + (-8)]	# tmp139, cf
	xor.w	r0, r0	# tmp140
	cmp.w	r1, r0	# tmp139, tmp140
	jnz	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:390:   if( 0x7FFF != bestSize ) {
	ld.s	r1, [r13 + (-4)]	# tmp141, bestSize
	mov.w	r0, 32767	# tmp142,
	cmp.w	r1, r0	# tmp141, tmp142
	jz	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:391:     cf        = bestBlock;
	ld.s	r0, [r13 + (-6)]	# tmp143, bestBlock
	st.s	[r13 + (-8)], r0	# cf, tmp143
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:392:     blockSize = bestSize;
	ld.s	r0, [r13 + (-4)]	# tmp144, bestSize
	st.s	[r13 + (-2)], r0	# blockSize, tmp144
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	ld.w	r0, [umm_heap]	# umm_heap.55_13, umm_heap
	ld.s	r1, [r13 + (-8)]	# _14, cf
	mov.w	r2, 3	# tmp145,
	shl.w	r1, r2	# _15, tmp145
	add.w	r0, r1 #222	# _16, _15
	ld.b	r1, [r0]	# tmp146, *_16
	mov.w	r2, 8	# tmp148,
	shl.w	r1, r2	# tmp147, tmp148
	ld.b	r0, [r0 + (1)]	# tmp149, *_16
	or.w	r0, r1	# tmp150, tmp147
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	zex.s	r1, r0	# _18, _17
	mov.w	r0, 32767	# tmp151,
	and.w	r1, r0	# _19, tmp151
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	xor.w	r0, r0	# tmp152
	cmp.w	r1, r0	# _19, tmp152
	jz	.L26		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	ld.s	r1, [r13 + (-2)]	# tmp153, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp154, blocks
	cmp.w	r1, r0	# tmp153, tmp154
	js	.L26		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:406:     if( blockSize == blocks ) {
	ld.s	r1, [r13 + (-2)]	# tmp155, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp156, blocks
	cmp.w	r1, r0	# tmp155, tmp156
	jnz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:412:       umm_disconnect_from_free_list( cf );
	ld.s	r0, [r13 + (-8)]	# _20, cf
	mov.w	r1, sp	# tmp157,
	st.w	[r1], r0	#, _20
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:406:     if( blockSize == blocks ) {
	j	.L29		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:422:       umm_split_block( cf, blocks, UMM_FREELIST_MASK /*new block is free*/ );
	ld.s	r1, [r13 + (-8)]	# _21, cf
	ld.s	r2, [r13 + (-10)]	# _22, blocks
	mov.w	r0, sp	# tmp158,
	mov.w	r3, 32768	# tmp159,
	st.w	[r0 + (8)], r3	#, tmp159
	st.w	[r0 + (4)], r2	#, _22
	st.w	[r0], r1	#, _21
	call	umm_split_block		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:434:       UMM_NFREE( UMM_PFREE(cf) ) = cf + blocks;
	ld.w	r2, [umm_heap]	# umm_heap.56_23, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.57_24, umm_heap
	ld.s	r1, [r13 + (-8)]	# _25, cf
	mov.w	r3, 3	# tmp160,
	shl.w	r1, r3	# _26, tmp160
	add.w	r0, r1 #222	# _27, _26
	ld.b	r1, [r0 + (6)]	# tmp161,
	mov.w	r3, 8	# tmp163,
	shl.w	r1, r3	# tmp162, tmp163
	ld.b	r0, [r0 + (7)]	# tmp164,
	or.w	r0, r1	# tmp165, tmp162
	zex.s	r1, r0	# _29, _28
	mov.w	r0, 3	# tmp166,
	shl.w	r1, r0	# _30, tmp166
	mov.w	r0, r2	# _31, umm_heap.56_23
	add.w	r0, r1 #222	# _31, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:434:       UMM_NFREE( UMM_PFREE(cf) ) = cf + blocks;
	ld.s	r1, [r13 + (-8)]	# tmp167, cf
	ld.s	r2, [r13 + (-10)]	# tmp168, blocks
	add.w	r1, r2 #222	# tmp169, tmp170
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:434:       UMM_NFREE( UMM_PFREE(cf) ) = cf + blocks;
	zex.s	r2, r1	# tmp171, _32
	mov.w	r3, 8	# tmp173,
	shr.w	r2, r3	# tmp172, tmp173
	zex.s	r3, r2	# tmp174, tmp172
	ld.b	r2, [r0 + (4)]	# tmp175, _31->body.free.next
	xor.w	r4, r4	# tmp177
	and.w	r2, r4	# tmp176, tmp177
	or.w	r2, r3	# tmp180, tmp179
	st.b	[r0 + (4)], r2	# _31->body.free.next, tmp181
	zex.s	r2, r1	# tmp182, _32
	mov.w	r1, 255	# tmp184,
	and.w	r2, r1	# tmp183, tmp184
	ld.b	r1, [r0 + (5)]	# tmp185, _31->body.free.next
	xor.w	r3, r3	# tmp187
	and.w	r1, r3	# tmp186, tmp187
	or.w	r1, r2	# tmp190, tmp189
	st.b	[r0 + (5)], r1	# _31->body.free.next, tmp191
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	ld.w	r1, [umm_heap]	# umm_heap.58_33, umm_heap
	ld.s	r0, [r13 + (-8)]	# _34, cf
	mov.w	r2, 3	# tmp192,
	shl.w	r0, r2	# _35, tmp192
	add.w	r1, r0 #222	# _36, _35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	ld.w	r0, [umm_heap]	# umm_heap.59_37, umm_heap
	ld.s	r2, [r13 + (-8)]	# _38, cf
	ld.s	r3, [r13 + (-10)]	# _39, blocks
	add.w	r2, r3 #222	# _40, _39
	mov.w	r3, 3	# tmp193,
	shl.w	r2, r3	# _42, tmp193
	add.w	r0, r2 #222	# _43, _42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	ld.b	r2, [r1 + (6)]	# tmp194,
	mov.w	r3, 8	# tmp196,
	shl.w	r2, r3	# tmp195, tmp196
	ld.b	r1, [r1 + (7)]	# tmp197,
	or.w	r1, r2	# tmp198, tmp195
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	zex.s	r2, r1	# tmp199, _44
	mov.w	r3, 8	# tmp201,
	shr.w	r2, r3	# tmp200, tmp201
	zex.s	r3, r2	# tmp202, tmp200
	ld.b	r2, [r0 + (6)]	# tmp203, _43->body.free.prev
	xor.w	r4, r4	# tmp205
	and.w	r2, r4	# tmp204, tmp205
	or.w	r2, r3	# tmp208, tmp207
	st.b	[r0 + (6)], r2	# _43->body.free.prev, tmp209
	zex.s	r2, r1	# tmp210, _44
	mov.w	r1, 255	# tmp212,
	and.w	r2, r1	# tmp211, tmp212
	ld.b	r1, [r0 + (7)]	# tmp213, _43->body.free.prev
	xor.w	r3, r3	# tmp215
	and.w	r1, r3	# tmp214, tmp215
	or.w	r1, r2	# tmp218, tmp217
	st.b	[r0 + (7)], r1	# _43->body.free.prev, tmp219
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:438:       UMM_PFREE( UMM_NFREE(cf) ) = cf + blocks;
	ld.w	r2, [umm_heap]	# umm_heap.60_45, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.61_46, umm_heap
	ld.s	r1, [r13 + (-8)]	# _47, cf
	mov.w	r3, 3	# tmp220,
	shl.w	r1, r3	# _48, tmp220
	add.w	r0, r1 #222	# _49, _48
	ld.b	r1, [r0 + (4)]	# tmp221,
	mov.w	r3, 8	# tmp223,
	shl.w	r1, r3	# tmp222, tmp223
	ld.b	r0, [r0 + (5)]	# tmp224,
	or.w	r0, r1	# tmp225, tmp222
	zex.s	r1, r0	# _51, _50
	mov.w	r0, 3	# tmp226,
	shl.w	r1, r0	# _52, tmp226
	mov.w	r0, r2	# _53, umm_heap.60_45
	add.w	r0, r1 #222	# _53, _52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:438:       UMM_PFREE( UMM_NFREE(cf) ) = cf + blocks;
	ld.s	r1, [r13 + (-8)]	# tmp227, cf
	ld.s	r2, [r13 + (-10)]	# tmp228, blocks
	add.w	r1, r2 #222	# tmp229, tmp230
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:438:       UMM_PFREE( UMM_NFREE(cf) ) = cf + blocks;
	zex.s	r2, r1	# tmp231, _54
	mov.w	r3, 8	# tmp233,
	shr.w	r2, r3	# tmp232, tmp233
	zex.s	r3, r2	# tmp234, tmp232
	ld.b	r2, [r0 + (6)]	# tmp235, _53->body.free.prev
	xor.w	r4, r4	# tmp237
	and.w	r2, r4	# tmp236, tmp237
	or.w	r2, r3	# tmp240, tmp239
	st.b	[r0 + (6)], r2	# _53->body.free.prev, tmp241
	zex.s	r2, r1	# tmp242, _54
	mov.w	r1, 255	# tmp244,
	and.w	r2, r1	# tmp243, tmp244
	ld.b	r1, [r0 + (7)]	# tmp245, _53->body.free.prev
	xor.w	r3, r3	# tmp247
	and.w	r1, r3	# tmp246, tmp247
	or.w	r1, r2	# tmp250, tmp249
	st.b	[r0 + (7)], r1	# _53->body.free.prev, tmp251
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	ld.w	r1, [umm_heap]	# umm_heap.62_55, umm_heap
	ld.s	r0, [r13 + (-8)]	# _56, cf
	mov.w	r2, 3	# tmp252,
	shl.w	r0, r2	# _57, tmp252
	add.w	r1, r0 #222	# _58, _57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	ld.w	r0, [umm_heap]	# umm_heap.63_59, umm_heap
	ld.s	r2, [r13 + (-8)]	# _60, cf
	ld.s	r3, [r13 + (-10)]	# _61, blocks
	add.w	r2, r3 #222	# _62, _61
	mov.w	r3, 3	# tmp253,
	shl.w	r2, r3	# _64, tmp253
	add.w	r0, r2 #222	# _65, _64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	ld.b	r2, [r1 + (4)]	# tmp254,
	mov.w	r3, 8	# tmp256,
	shl.w	r2, r3	# tmp255, tmp256
	ld.b	r1, [r1 + (5)]	# tmp257,
	or.w	r1, r2	# tmp258, tmp255
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	zex.s	r2, r1	# tmp259, _66
	mov.w	r3, 8	# tmp261,
	shr.w	r2, r3	# tmp260, tmp261
	zex.s	r3, r2	# tmp262, tmp260
	ld.b	r2, [r0 + (4)]	# tmp263, _65->body.free.next
	xor.w	r4, r4	# tmp265
	and.w	r2, r4	# tmp264, tmp265
	or.w	r2, r3	# tmp268, tmp267
	st.b	[r0 + (4)], r2	# _65->body.free.next, tmp269
	zex.s	r2, r1	# tmp270, _66
	mov.w	r1, 255	# tmp272,
	and.w	r2, r1	# tmp271, tmp272
	ld.b	r1, [r0 + (5)]	# tmp273, _65->body.free.next
	xor.w	r3, r3	# tmp275
	and.w	r1, r3	# tmp274, tmp275
	or.w	r1, r2	# tmp278, tmp277
	st.b	[r0 + (5)], r1	# _65->body.free.next, tmp279
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:406:     if( blockSize == blocks ) {
	j	.L29		#
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:447:     return( (void *)NULL );
	xor.w	r0, r0	# _79
	j	.L30		#
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:450:   return( (void *)&UMM_DATA(cf) );
	ld.w	r0, [umm_heap]	# umm_heap.64_67, umm_heap
	ld.s	r1, [r13 + (-8)]	# _68, cf
	mov.w	r2, 3	# tmp280,
	shl.w	r1, r2	# _69, tmp280
	add.w	r0, r1 #222	# _70, _69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:450:   return( (void *)&UMM_DATA(cf) );
	add.w	r0, 4 #111	# _79,
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:451: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	umm_malloc_core, .-umm_malloc_core
	.p2align	1
	.global	malloc
	.type	malloc, @function
malloc:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:457:   void *ptr = NULL;
	xor.w	r0, r0	# tmp29
	st.w	[r13 + (-4)], r0	# ptr, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:459:   if (umm_heap == NULL) {
	ld.w	r1, [umm_heap]	# umm_heap.65_1, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:459:   if (umm_heap == NULL) {
	xor.w	r0, r0	# tmp30
	cmp.w	r1, r0	# umm_heap.65_1, tmp30
	jnz	.L32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:460:     umm_init();
	call	umm_init		#
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:470:   if( 0 == size ) {
	ld.w	r1, [r13 + (8)]	# tmp31, size
	xor.w	r0, r0	# tmp32
	cmp.w	r1, r0	# tmp31, tmp32
	jnz	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:473:     return( ptr );
	ld.w	r0, [r13 + (-4)]	# _2, ptr
	j	.L34		#
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:480:   ptr = umm_malloc_core( size );
	mov.w	r1, sp	# tmp33,
	ld.w	r0, [r13 + (8)]	# tmp34, size
	st.w	[r1], r0	#, tmp34
	call	umm_malloc_core		#
	st.w	[r13 + (-4)], r0	# ptr,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:484:   return( ptr );
	ld.w	r0, [r13 + (-4)]	# _2, ptr
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:485: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	malloc, .-malloc
	.p2align	1
	.global	realloc
	.type	realloc, @function
realloc:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:493:   uint16_t prevBlockSize = 0;
	xor.w	r0, r0	# tmp150
	st.s	[r13 + (-4)], r0	# prevBlockSize, tmp150
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:494:   uint16_t nextBlockSize = 0;
	xor.w	r0, r0	# tmp151
	st.s	[r13 + (-6)], r0	# nextBlockSize, tmp151
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:500:   if (umm_heap == NULL) {
	ld.w	r1, [umm_heap]	# umm_heap.66_1, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:500:   if (umm_heap == NULL) {
	xor.w	r0, r0	# tmp152
	cmp.w	r1, r0	# umm_heap.66_1, tmp152
	jnz	.L36		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:501:     umm_init();
	call	umm_init		#
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:512:   if( ((void *)NULL == ptr) ) {
	ld.w	r1, [r13 + (8)]	# tmp153, ptr
	xor.w	r0, r0	# tmp154
	cmp.w	r1, r0	# tmp153, tmp154
	jnz	.L37		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:515:     return( malloc(size) );
	mov.w	r1, sp	# tmp155,
	ld.w	r0, [r13 + (12)]	# tmp156, size
	st.w	[r1], r0	#, tmp156
	call	malloc		#
	j	.L38		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:524:   if( 0 == size ) {
	ld.w	r1, [r13 + (12)]	# tmp158, size
	xor.w	r0, r0	# tmp159
	cmp.w	r1, r0	# tmp158, tmp159
	jnz	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:527:     free( ptr );
	mov.w	r1, sp	# tmp160,
	ld.w	r0, [r13 + (8)]	# tmp161, ptr
	st.w	[r1], r0	#, tmp161
	call	free		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:529:     return( (void *)NULL );
	xor.w	r0, r0	# _128
	j	.L38		#
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:541:   blocks = umm_blocks( size );
	mov.w	r1, sp	# tmp162,
	ld.w	r0, [r13 + (12)]	# tmp163, size
	st.w	[r1], r0	#, tmp163
	call	umm_blocks		#
	st.s	[r13 + (-10)], r0	# blocks,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:545:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	ld.w	r1, [umm_heap]	# umm_heap.67_2, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:545:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	ld.w	r0, [r13 + (8)]	# tmp164, ptr
	sub.w	r0, r1 #222	# _3, umm_heap.67_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:545:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	mov.w	r1, 3	# tmp165,
	shr.w	r0, r1	# _5, tmp165
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:545:   c = (((void *)ptr)-(void *)(&(umm_heap[0])))/sizeof(umm_block);
	st.s	[r13 + (-8)], r0	# c, tmp166
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:549:   blockSize = (UMM_NBLOCK(c) - c);
	ld.w	r0, [umm_heap]	# umm_heap.68_6, umm_heap
	ld.s	r1, [r13 + (-8)]	# _7, c
	mov.w	r2, 3	# tmp167,
	shl.w	r1, r2	# _8, tmp167
	add.w	r0, r1 #222	# _9, _8
	ld.b	r1, [r0]	# tmp168, *_9
	mov.w	r2, 8	# tmp170,
	shl.w	r1, r2	# tmp169, tmp170
	ld.b	r0, [r0 + (1)]	# tmp171, *_9
	or.w	r0, r1	# tmp172, tmp169
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:549:   blockSize = (UMM_NBLOCK(c) - c);
	ld.s	r1, [r13 + (-8)]	# tmp173, c
	sub.w	r0, r1 #222	# tmp174, tmp175
	st.s	[r13 + (-2)], r0	# blockSize, tmp176
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:553:   curSize   = (blockSize*sizeof(umm_block))-(sizeof(((umm_block *)0)->header));
	ld.s	r0, [r13 + (-2)]	# _11, blockSize
	mov.w	r1, 3	# tmp177,
	shl.w	r0, r1	# _12, tmp177
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:553:   curSize   = (blockSize*sizeof(umm_block))-(sizeof(((umm_block *)0)->header));
	add.w	r0, -4 #111	# tmp178,
	st.w	[r13 + (-16)], r0	# curSize, tmp178
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:566:   if ((UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_FREELIST_MASK)) {
	ld.w	r2, [umm_heap]	# umm_heap.69_13, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.70_14, umm_heap
	ld.s	r1, [r13 + (-8)]	# _15, c
	mov.w	r3, 3	# tmp179,
	shl.w	r1, r3	# _16, tmp179
	add.w	r0, r1 #222	# _17, _16
	ld.b	r1, [r0]	# tmp180, *_17
	mov.w	r3, 8	# tmp182,
	shl.w	r1, r3	# tmp181, tmp182
	ld.b	r0, [r0 + (1)]	# tmp183, *_17
	or.w	r0, r1	# tmp184, tmp181
	zex.s	r1, r0	# _19, _18
	mov.w	r0, 3	# tmp185,
	shl.w	r1, r0	# _20, tmp185
	mov.w	r0, r2	# _21, umm_heap.69_13
	add.w	r0, r1 #222	# _21, _20
	ld.b	r1, [r0]	# tmp186, *_21
	mov.w	r2, 8	# tmp188,
	shl.w	r1, r2	# tmp187, tmp188
	ld.b	r0, [r0 + (1)]	# tmp189, *_21
	or.w	r0, r1	# tmp190, tmp187
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:566:   if ((UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_FREELIST_MASK)) {
	sex.s	r1, r0	# tmp191, _23
	xor.w	r0, r0	# tmp192
	cmp.w	r1, r0	# tmp191, tmp192
	jges	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	ld.w	r2, [umm_heap]	# umm_heap.71_24, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.72_25, umm_heap
	ld.s	r1, [r13 + (-8)]	# _26, c
	mov.w	r3, 3	# tmp193,
	shl.w	r1, r3	# _27, tmp193
	add.w	r0, r1 #222	# _28, _27
	ld.b	r1, [r0]	# tmp194, *_28
	mov.w	r3, 8	# tmp196,
	shl.w	r1, r3	# tmp195, tmp196
	ld.b	r0, [r0 + (1)]	# tmp197, *_28
	or.w	r0, r1	# tmp198, tmp195
	zex.s	r1, r0	# _30, _29
	mov.w	r0, 3	# tmp199,
	shl.w	r1, r0	# _31, tmp199
	mov.w	r0, r2	# _32, umm_heap.71_24
	add.w	r0, r1 #222	# _32, _31
	ld.b	r1, [r0]	# tmp200, *_32
	mov.w	r2, 8	# tmp202,
	shl.w	r1, r2	# tmp201, tmp202
	ld.b	r0, [r0 + (1)]	# tmp203, *_32
	or.w	r0, r1	# tmp204, tmp201
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	mov.w	r1, 32767	# tmp206,
	and.w	r0, r1	# tmp205, tmp206
	mov.w	r2, r0	# _34, tmp205
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	ld.w	r0, [umm_heap]	# umm_heap.73_35, umm_heap
	ld.s	r1, [r13 + (-8)]	# _36, c
	mov.w	r3, 3	# tmp207,
	shl.w	r1, r3	# _37, tmp207
	add.w	r0, r1 #222	# _38, _37
	ld.b	r1, [r0]	# tmp208, *_38
	mov.w	r3, 8	# tmp210,
	shl.w	r1, r3	# tmp209, tmp210
	ld.b	r0, [r0 + (1)]	# tmp211, *_38
	or.w	r0, r1	# tmp212, tmp209
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	mov.w	r1, r0	# tmp214, _39
	mov.w	r0, r2	# tmp213,
	sub.w	r0, r1 #222	# tmp213, tmp214
	st.s	[r13 + (-6)], r0	# nextBlockSize, tmp215
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:570:   if ((UMM_NBLOCK(UMM_PBLOCK(c)) & UMM_FREELIST_MASK)) {
	ld.w	r2, [umm_heap]	# umm_heap.74_40, umm_heap
	ld.w	r0, [umm_heap]	# umm_heap.75_41, umm_heap
	ld.s	r1, [r13 + (-8)]	# _42, c
	mov.w	r3, 3	# tmp216,
	shl.w	r1, r3	# _43, tmp216
	add.w	r0, r1 #222	# _44, _43
	ld.b	r1, [r0 + (2)]	# tmp217,
	mov.w	r3, 8	# tmp219,
	shl.w	r1, r3	# tmp218, tmp219
	ld.b	r0, [r0 + (3)]	# tmp220,
	or.w	r0, r1	# tmp221, tmp218
	zex.s	r1, r0	# _46, _45
	mov.w	r0, 3	# tmp222,
	shl.w	r1, r0	# _47, tmp222
	mov.w	r0, r2	# _48, umm_heap.74_40
	add.w	r0, r1 #222	# _48, _47
	ld.b	r1, [r0]	# tmp223, *_48
	mov.w	r2, 8	# tmp225,
	shl.w	r1, r2	# tmp224, tmp225
	ld.b	r0, [r0 + (1)]	# tmp226, *_48
	or.w	r0, r1	# tmp227, tmp224
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:570:   if ((UMM_NBLOCK(UMM_PBLOCK(c)) & UMM_FREELIST_MASK)) {
	sex.s	r1, r0	# tmp228, _50
	xor.w	r0, r0	# tmp229
	cmp.w	r1, r0	# tmp228, tmp229
	jges	.L41		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:571:       prevBlockSize = (c - UMM_PBLOCK(c));
	ld.w	r0, [umm_heap]	# umm_heap.76_51, umm_heap
	ld.s	r1, [r13 + (-8)]	# _52, c
	mov.w	r2, 3	# tmp230,
	shl.w	r1, r2	# _53, tmp230
	add.w	r0, r1 #222	# _54, _53
	ld.b	r1, [r0 + (2)]	# tmp231,
	mov.w	r2, 8	# tmp233,
	shl.w	r1, r2	# tmp232, tmp233
	ld.b	r0, [r0 + (3)]	# tmp234,
	or.w	r0, r1	# tmp235, tmp232
	mov.w	r1, r0	# _55, tmp235
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:571:       prevBlockSize = (c - UMM_PBLOCK(c));
	ld.s	r0, [r13 + (-8)]	# tmp236, c
	sub.w	r0, r1 #222	# tmp237, tmp238
	st.s	[r13 + (-4)], r0	# prevBlockSize, tmp239
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:612:     if (blockSize >= blocks) {
	ld.s	r1, [r13 + (-2)]	# tmp240, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp241, blocks
	cmp.w	r1, r0	# tmp240, tmp241
	jge	.L42		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:617:     } else if ((blockSize + nextBlockSize) == blocks) {
	ld.s	r1, [r13 + (-2)]	# _56, blockSize
	ld.s	r0, [r13 + (-6)]	# _57, nextBlockSize
	add.w	r1, r0 #222	# _58, _57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:617:     } else if ((blockSize + nextBlockSize) == blocks) {
	ld.s	r0, [r13 + (-10)]	# _59, blocks
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:617:     } else if ((blockSize + nextBlockSize) == blocks) {
	cmp.w	r1, r0	# _58, _59
	jnz	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:619:         umm_assimilate_up( c );
	ld.s	r0, [r13 + (-8)]	# _60, c
	mov.w	r1, sp	# tmp242,
	st.w	[r1], r0	#, _60
	call	umm_assimilate_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:620:         blockSize += nextBlockSize;
	ld.s	r0, [r13 + (-2)]	# tmp243, blockSize
	ld.s	r1, [r13 + (-6)]	# tmp244, nextBlockSize
	add.w	r0, r1 #222	# tmp245, tmp246
	st.s	[r13 + (-2)], r0	# blockSize, tmp247
	j	.L42		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:623:     } else if ((0 == prevBlockSize) && (blockSize + nextBlockSize) >= blocks) {
	ld.s	r1, [r13 + (-4)]	# tmp248, prevBlockSize
	xor.w	r0, r0	# tmp249
	cmp.w	r1, r0	# tmp248, tmp249
	jnz	.L44		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:623:     } else if ((0 == prevBlockSize) && (blockSize + nextBlockSize) >= blocks) {
	ld.s	r1, [r13 + (-2)]	# _61, blockSize
	ld.s	r0, [r13 + (-6)]	# _62, nextBlockSize
	add.w	r1, r0 #222	# _63, _62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:623:     } else if ((0 == prevBlockSize) && (blockSize + nextBlockSize) >= blocks) {
	ld.s	r0, [r13 + (-10)]	# _64, blocks
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:623:     } else if ((0 == prevBlockSize) && (blockSize + nextBlockSize) >= blocks) {
	cmp.w	r1, r0	# _63, _64
	jss	.L44		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:625:         umm_assimilate_up( c );
	ld.s	r0, [r13 + (-8)]	# _65, c
	mov.w	r1, sp	# tmp250,
	st.w	[r1], r0	#, _65
	call	umm_assimilate_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:626:         blockSize += nextBlockSize;
	ld.s	r0, [r13 + (-2)]	# tmp251, blockSize
	ld.s	r1, [r13 + (-6)]	# tmp252, nextBlockSize
	add.w	r0, r1 #222	# tmp253, tmp254
	st.s	[r13 + (-2)], r0	# blockSize, tmp255
	j	.L42		#
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:629:     } else if ((prevBlockSize + blockSize) >= blocks) {
	ld.s	r1, [r13 + (-4)]	# _66, prevBlockSize
	ld.s	r0, [r13 + (-2)]	# _67, blockSize
	add.w	r1, r0 #222	# _68, _67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:629:     } else if ((prevBlockSize + blockSize) >= blocks) {
	ld.s	r0, [r13 + (-10)]	# _69, blocks
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:629:     } else if ((prevBlockSize + blockSize) >= blocks) {
	cmp.w	r1, r0	# _68, _69
	jss	.L45		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:631:         umm_disconnect_from_free_list( UMM_PBLOCK(c) );
	ld.w	r0, [umm_heap]	# umm_heap.77_70, umm_heap
	ld.s	r1, [r13 + (-8)]	# _71, c
	mov.w	r2, 3	# tmp256,
	shl.w	r1, r2	# _72, tmp256
	add.w	r0, r1 #222	# _73, _72
	ld.b	r1, [r0 + (2)]	# tmp257,
	mov.w	r2, 8	# tmp259,
	shl.w	r1, r2	# tmp258, tmp259
	ld.b	r0, [r0 + (3)]	# tmp260,
	or.w	r0, r1	# tmp261, tmp258
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:631:         umm_disconnect_from_free_list( UMM_PBLOCK(c) );
	zex.s	r0, r0	# _75, _74
	mov.w	r1, sp	# tmp262,
	st.w	[r1], r0	#, _75
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:632:         c = umm_assimilate_down(c, 0);
	ld.s	r1, [r13 + (-8)]	# _76, c
	mov.w	r0, sp	# tmp263,
	xor.w	r2, r2	# tmp264
	st.w	[r0 + (4)], r2	#, tmp264
	st.w	[r0], r1	#, _76
	call	umm_assimilate_down		#
	st.s	[r13 + (-8)], r0	# c,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:633:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r0, [umm_heap]	# umm_heap.78_77, umm_heap
	ld.s	r1, [r13 + (-8)]	# _78, c
	mov.w	r2, 3	# tmp265,
	shl.w	r1, r2	# _79, tmp265
	add.w	r0, r1 #222	# _80, _79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:633:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	mov.w	r1, r0	# _81, _80
	add.w	r1, 4 #111	# _81,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:633:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r2, [r13 + (-16)]	# curSize.79_82, curSize
	mov.w	r0, sp	# tmp266,
	st.w	[r0 + (8)], r2	#, curSize.79_82
	ld.w	r2, [r13 + (8)]	# tmp267, ptr
	st.w	[r0 + (4)], r2	#, tmp267
	st.w	[r0], r1	#, _81
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:634:         ptr = (void *)&UMM_DATA(c);
	ld.w	r0, [umm_heap]	# umm_heap.80_83, umm_heap
	ld.s	r1, [r13 + (-8)]	# _84, c
	mov.w	r2, 3	# tmp268,
	shl.w	r1, r2	# _85, tmp268
	add.w	r0, r1 #222	# _86, _85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:634:         ptr = (void *)&UMM_DATA(c);
	add.w	r0, 4 #111	# tmp269,
	st.w	[r13 + (8)], r0	# ptr, tmp269
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:635:         blockSize += prevBlockSize;
	ld.s	r0, [r13 + (-2)]	# tmp270, blockSize
	ld.s	r1, [r13 + (-4)]	# tmp271, prevBlockSize
	add.w	r0, r1 #222	# tmp272, tmp273
	st.s	[r13 + (-2)], r0	# blockSize, tmp274
	j	.L42		#
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:638:     } else if ((prevBlockSize + blockSize + nextBlockSize) >= blocks) {
	ld.s	r1, [r13 + (-4)]	# _87, prevBlockSize
	ld.s	r0, [r13 + (-2)]	# _88, blockSize
	add.w	r1, r0 #222	# _89, _88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:638:     } else if ((prevBlockSize + blockSize + nextBlockSize) >= blocks) {
	ld.s	r0, [r13 + (-6)]	# _90, nextBlockSize
	add.w	r1, r0 #222	# _91, _90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:638:     } else if ((prevBlockSize + blockSize + nextBlockSize) >= blocks) {
	ld.s	r0, [r13 + (-10)]	# _92, blocks
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:638:     } else if ((prevBlockSize + blockSize + nextBlockSize) >= blocks) {
	cmp.w	r1, r0	# _91, _92
	jss	.L46		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:640:         umm_assimilate_up( c );
	ld.s	r0, [r13 + (-8)]	# _93, c
	mov.w	r1, sp	# tmp275,
	st.w	[r1], r0	#, _93
	call	umm_assimilate_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:641:         umm_disconnect_from_free_list( UMM_PBLOCK(c) );
	ld.w	r0, [umm_heap]	# umm_heap.81_94, umm_heap
	ld.s	r1, [r13 + (-8)]	# _95, c
	mov.w	r2, 3	# tmp276,
	shl.w	r1, r2	# _96, tmp276
	add.w	r0, r1 #222	# _97, _96
	ld.b	r1, [r0 + (2)]	# tmp277,
	mov.w	r2, 8	# tmp279,
	shl.w	r1, r2	# tmp278, tmp279
	ld.b	r0, [r0 + (3)]	# tmp280,
	or.w	r0, r1	# tmp281, tmp278
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:641:         umm_disconnect_from_free_list( UMM_PBLOCK(c) );
	zex.s	r0, r0	# _99, _98
	mov.w	r1, sp	# tmp282,
	st.w	[r1], r0	#, _99
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:642:         c = umm_assimilate_down(c, 0);
	ld.s	r1, [r13 + (-8)]	# _100, c
	mov.w	r0, sp	# tmp283,
	xor.w	r2, r2	# tmp284
	st.w	[r0 + (4)], r2	#, tmp284
	st.w	[r0], r1	#, _100
	call	umm_assimilate_down		#
	st.s	[r13 + (-8)], r0	# c,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:643:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r0, [umm_heap]	# umm_heap.82_101, umm_heap
	ld.s	r1, [r13 + (-8)]	# _102, c
	mov.w	r2, 3	# tmp285,
	shl.w	r1, r2	# _103, tmp285
	add.w	r0, r1 #222	# _104, _103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:643:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	mov.w	r1, r0	# _105, _104
	add.w	r1, 4 #111	# _105,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:643:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r2, [r13 + (-16)]	# curSize.83_106, curSize
	mov.w	r0, sp	# tmp286,
	st.w	[r0 + (8)], r2	#, curSize.83_106
	ld.w	r2, [r13 + (8)]	# tmp287, ptr
	st.w	[r0 + (4)], r2	#, tmp287
	st.w	[r0], r1	#, _105
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:644:         ptr = (void *)&UMM_DATA(c);
	ld.w	r0, [umm_heap]	# umm_heap.84_107, umm_heap
	ld.s	r1, [r13 + (-8)]	# _108, c
	mov.w	r2, 3	# tmp288,
	shl.w	r1, r2	# _109, tmp288
	add.w	r0, r1 #222	# _110, _109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:644:         ptr = (void *)&UMM_DATA(c);
	add.w	r0, 4 #111	# tmp289,
	st.w	[r13 + (8)], r0	# ptr, tmp289
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:645:         blockSize += (prevBlockSize + nextBlockSize);
	ld.s	r0, [r13 + (-4)]	# tmp290, prevBlockSize
	ld.s	r1, [r13 + (-6)]	# tmp291, nextBlockSize
	add.w	r0, r1 #222	# tmp292, tmp293
	mov.w	r1, r0	# _111, tmp292
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:645:         blockSize += (prevBlockSize + nextBlockSize);
	ld.s	r0, [r13 + (-2)]	# tmp294, blockSize
	add.w	r0, r1 #222	# tmp295, tmp296
	st.s	[r13 + (-2)], r0	# blockSize, tmp297
	j	.L42		#
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:650:         void *oldptr = ptr;
	ld.w	r0, [r13 + (8)]	# tmp298, ptr
	st.w	[r13 + (-20)], r0	# oldptr, tmp298
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:651:         if( (ptr = umm_malloc_core( size )) ) {
	mov.w	r1, sp	# tmp299,
	ld.w	r0, [r13 + (12)]	# tmp300, size
	st.w	[r1], r0	#, tmp300
	call	umm_malloc_core		#
	st.w	[r13 + (8)], r0	# ptr,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:651:         if( (ptr = umm_malloc_core( size )) ) {
	ld.w	r1, [r13 + (8)]	# tmp301, ptr
	xor.w	r0, r0	# tmp302
	cmp.w	r1, r0	# tmp301, tmp302
	jz	.L47		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:653:             memcpy( ptr, oldptr, curSize );
	ld.w	r1, [r13 + (-16)]	# curSize.85_112, curSize
	mov.w	r0, sp	# tmp303,
	st.w	[r0 + (8)], r1	#, curSize.85_112
	ld.w	r1, [r13 + (-20)]	# tmp304, oldptr
	st.w	[r0 + (4)], r1	#, tmp304
	ld.w	r1, [r13 + (8)]	# tmp305, ptr
	st.w	[r0], r1	#, tmp305
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:654:             umm_free_core( oldptr );
	mov.w	r1, sp	# tmp306,
	ld.w	r0, [r13 + (-20)]	# tmp307, oldptr
	st.w	[r1], r0	#, tmp307
	call	umm_free_core		#
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:659:         blockSize = blocks;
	ld.s	r0, [r13 + (-10)]	# tmp308, blocks
	st.s	[r13 + (-2)], r0	# blockSize, tmp308
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:666:     if (blockSize > blocks ) {
	ld.s	r1, [r13 + (-2)]	# tmp309, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp310, blocks
	cmp.w	r1, r0	# tmp309, tmp310
	jse	.L48		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:668:         umm_split_block( c, blocks, 0 );
	ld.s	r1, [r13 + (-8)]	# _113, c
	ld.s	r2, [r13 + (-10)]	# _114, blocks
	mov.w	r0, sp	# tmp311,
	xor.w	r3, r3	# tmp312
	st.w	[r0 + (8)], r3	#, tmp312
	st.w	[r0 + (4)], r2	#, _114
	st.w	[r0], r1	#, _113
	call	umm_split_block		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:669:         umm_free_core( (void *)&UMM_DATA(c+blocks) );
	ld.w	r0, [umm_heap]	# umm_heap.86_115, umm_heap
	ld.s	r1, [r13 + (-8)]	# _116, c
	ld.s	r2, [r13 + (-10)]	# _117, blocks
	add.w	r1, r2 #222	# _118, _117
	mov.w	r2, 3	# tmp313,
	shl.w	r1, r2	# _120, tmp313
	add.w	r0, r1 #222	# _121, _120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:669:         umm_free_core( (void *)&UMM_DATA(c+blocks) );
	add.w	r0, 4 #111	# _122,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:669:         umm_free_core( (void *)&UMM_DATA(c+blocks) );
	mov.w	r1, sp	# tmp314,
	st.w	[r1], r0	#, _122
	call	umm_free_core		#
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:675:     return( ptr );
	ld.w	r0, [r13 + (8)]	# _128, ptr
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:676: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	realloc, .-realloc
	.p2align	1
	.global	calloc
	.type	calloc, @function
calloc:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:683:   ret = malloc((size_t)(item_size * num));
	ld.w	r0, [r13 + (12)]	# tmp31, item_size
	ld.w	r1, [r13 + (8)]	# tmp32, num
	mul.w	r0, r1	# _1, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:683:   ret = malloc((size_t)(item_size * num));
	mov.w	r1, sp	# tmp33,
	st.w	[r1], r0	#, _1
	call	malloc		#
	st.w	[r13 + (-4)], r0	# ret, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:685:   if (ret)
	ld.w	r1, [r13 + (-4)]	# tmp35, ret
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jz	.L50		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:686:       memset(ret, 0x00, (size_t)(item_size * num));
	ld.w	r0, [r13 + (12)]	# tmp37, item_size
	ld.w	r1, [r13 + (8)]	# tmp38, num
	mul.w	r0, r1	# _2, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:686:       memset(ret, 0x00, (size_t)(item_size * num));
	mov.w	r1, r0	# _3, _2
	mov.w	r0, sp	# tmp39,
	st.w	[r0 + (8)], r1	#, _3
	xor.w	r1, r1	# tmp40
	st.w	[r0 + (4)], r1	#, tmp40
	ld.w	r1, [r13 + (-4)]	# tmp41, ret
	st.w	[r0], r1	#, tmp41
	call	memset		#
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:688:   return ret;
	ld.w	r0, [r13 + (-4)]	# _11, ret
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:689: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	calloc, .-calloc
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
