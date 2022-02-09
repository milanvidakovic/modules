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
	ld.s	r0, [r0]	# _5, _4->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	mov.w	r1, 32767	# tmp74,
	and.w	r0, r1	# tmp73, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	ld.s	r1, [r13 + (-12)]	# new_freemask.1_8, new_freemask
	or.w	r0, r1	# tmp75, new_freemask.1_8
	mov.w	r1, r0	# _9, tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	ld.w	r0, [umm_heap]	# umm_heap.2_10, umm_heap
	ld.s	r2, [r13 + (-4)]	# _11, c
	ld.s	r3, [r13 + (-8)]	# _12, blocks
	add.w	r2, r3 #222	# _13, _12
	mov.w	r3, 3	# tmp76,
	shl.w	r2, r3	# _15, tmp76
	add.w	r0, r2 #222	# _16, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:135:   UMM_NBLOCK(c+blocks) = (UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) | new_freemask;
	st.s	[r0], r1	# _16->header.used.next, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:136:   UMM_PBLOCK(c+blocks) = c;
	ld.w	r0, [umm_heap]	# umm_heap.3_18, umm_heap
	ld.s	r1, [r13 + (-4)]	# _19, c
	ld.s	r2, [r13 + (-8)]	# _20, blocks
	add.w	r1, r2 #222	# _21, _20
	mov.w	r2, 3	# tmp77,
	shl.w	r1, r2	# _23, tmp77
	add.w	r0, r1 #222	# _24, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:136:   UMM_PBLOCK(c+blocks) = c;
	ld.s	r1, [r13 + (-4)]	# tmp78, c
	st.s	[r0 + (2)], r1	# _24->header.used.prev, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:138:   UMM_PBLOCK(UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) = (c+blocks);
	ld.w	r0, [umm_heap]	# umm_heap.4_25, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.5_26, umm_heap
	ld.s	r2, [r13 + (-4)]	# _27, c
	mov.w	r3, 3	# tmp79,
	shl.w	r2, r3	# _28, tmp79
	add.w	r1, r2 #222	# _29, _28
	ld.s	r1, [r1]	# _30, _29->header.used.next
	zex.s	r1, r1	# _31, _30
	mov.w	r2, 32767	# tmp80,
	and.w	r1, r2	# _32, tmp80
	mov.w	r2, 3	# tmp81,
	shl.w	r1, r2	# _33, tmp81
	add.w	r0, r1 #222	# _34, _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:138:   UMM_PBLOCK(UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) = (c+blocks);
	ld.s	r1, [r13 + (-4)]	# tmp82, c
	ld.s	r2, [r13 + (-8)]	# tmp83, blocks
	add.w	r1, r2 #222	# tmp84, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:138:   UMM_PBLOCK(UMM_NBLOCK(c) & UMM_BLOCKNO_MASK) = (c+blocks);
	st.s	[r0 + (2)], r1	# _34->header.used.prev, _35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:139:   UMM_NBLOCK(c)                                = (c+blocks);
	ld.w	r0, [umm_heap]	# umm_heap.6_36, umm_heap
	ld.s	r1, [r13 + (-4)]	# _37, c
	mov.w	r2, 3	# tmp86,
	shl.w	r1, r2	# _38, tmp86
	add.w	r0, r1 #222	# _39, _38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:139:   UMM_NBLOCK(c)                                = (c+blocks);
	ld.s	r1, [r13 + (-4)]	# tmp87, c
	ld.s	r2, [r13 + (-8)]	# tmp88, blocks
	add.w	r1, r2 #222	# tmp89, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:139:   UMM_NBLOCK(c)                                = (c+blocks);
	st.s	[r0], r1	# _39->header.used.next, _40
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
	ld.w	r0, [umm_heap]	# umm_heap.8_5, umm_heap
	ld.w	r2, [umm_heap]	# umm_heap.9_6, umm_heap
	ld.s	r3, [r13 + (-4)]	# _7, c
	mov.w	r4, 3	# tmp67,
	shl.w	r3, r4	# _8, tmp67
	add.w	r2, r3 #222	# _9, _8
	ld.s	r2, [r2 + (6)]	# _10, _9->body.free.prev
	zex.s	r2, r2	# _11, _10
	mov.w	r3, 3	# tmp68,
	shl.w	r2, r3	# _12, tmp68
	add.w	r0, r2 #222	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:147:   UMM_NFREE(UMM_PFREE(c)) = UMM_NFREE(c);
	ld.s	r1, [r1 + (4)]	# _14, _4->body.free.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:147:   UMM_NFREE(UMM_PFREE(c)) = UMM_NFREE(c);
	st.s	[r0 + (4)], r1	# _13->body.free.next, _14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	ld.w	r1, [umm_heap]	# umm_heap.10_15, umm_heap
	ld.s	r0, [r13 + (-4)]	# _16, c
	mov.w	r2, 3	# tmp69,
	shl.w	r0, r2	# _17, tmp69
	add.w	r1, r0 #222	# _18, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	ld.w	r0, [umm_heap]	# umm_heap.11_19, umm_heap
	ld.w	r2, [umm_heap]	# umm_heap.12_20, umm_heap
	ld.s	r3, [r13 + (-4)]	# _21, c
	mov.w	r4, 3	# tmp70,
	shl.w	r3, r4	# _22, tmp70
	add.w	r2, r3 #222	# _23, _22
	ld.s	r2, [r2 + (4)]	# _24, _23->body.free.next
	zex.s	r2, r2	# _25, _24
	mov.w	r3, 3	# tmp71,
	shl.w	r2, r3	# _26, tmp71
	add.w	r0, r2 #222	# _27, _26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	ld.s	r1, [r1 + (6)]	# _28, _18->body.free.prev
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:148:   UMM_PFREE(UMM_NFREE(c)) = UMM_PFREE(c);
	st.s	[r0 + (6)], r1	# _27->body.free.prev, _28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:152:   UMM_NBLOCK(c) &= (~UMM_FREELIST_MASK);
	ld.w	r0, [umm_heap]	# umm_heap.13_29, umm_heap
	ld.s	r1, [r13 + (-4)]	# _30, c
	mov.w	r2, 3	# tmp72,
	shl.w	r1, r2	# _31, tmp72
	add.w	r0, r1 #222	# _32, _31
	ld.s	r1, [r0]	# _33, _32->header.used.next
	ld.w	r0, [umm_heap]	# umm_heap.14_34, umm_heap
	ld.s	r2, [r13 + (-4)]	# _35, c
	mov.w	r3, 3	# tmp73,
	shl.w	r2, r3	# _36, tmp73
	add.w	r0, r2 #222	# _37, _36
	mov.w	r2, 32767	# tmp75,
	and.w	r1, r2	# tmp74, tmp75
	st.s	[r0], r1	# _37->header.used.next, _38
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
	ld.w	r0, [umm_heap]	# umm_heap.15_1, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.16_2, umm_heap
	ld.s	r2, [r13 + (-4)]	# _3, c
	mov.w	r3, 3	# tmp75,
	shl.w	r2, r3	# _4, tmp75
	add.w	r1, r2 #222	# _5, _4
	ld.s	r1, [r1]	# _6, _5->header.used.next
	zex.s	r1, r1	# _7, _6
	mov.w	r2, 3	# tmp76,
	shl.w	r1, r2	# _8, tmp76
	add.w	r0, r1 #222	# _9, _8
	ld.s	r0, [r0]	# _10, _9->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:163:   if( UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_FREELIST_MASK ) {
	sex.s	r1, r0	# tmp77, _11
	xor.w	r0, r0	# tmp78
	cmp.w	r1, r0	# tmp77, tmp78
	jges	.L8		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:176:     umm_disconnect_from_free_list( UMM_NBLOCK(c) );
	ld.w	r0, [umm_heap]	# umm_heap.17_12, umm_heap
	ld.s	r1, [r13 + (-4)]	# _13, c
	mov.w	r2, 3	# tmp79,
	shl.w	r1, r2	# _14, tmp79
	add.w	r0, r1 #222	# _15, _14
	ld.s	r0, [r0]	# _16, _15->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:176:     umm_disconnect_from_free_list( UMM_NBLOCK(c) );
	zex.s	r0, r0	# _17, _16
	mov.w	r1, sp	# tmp80,
	st.w	[r1], r0	#, _17
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:180:     UMM_PBLOCK(UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) = c;
	ld.w	r0, [umm_heap]	# umm_heap.18_18, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.19_19, umm_heap
	ld.w	r2, [umm_heap]	# umm_heap.20_20, umm_heap
	ld.s	r3, [r13 + (-4)]	# _21, c
	mov.w	r4, 3	# tmp81,
	shl.w	r3, r4	# _22, tmp81
	add.w	r2, r3 #222	# _23, _22
	ld.s	r2, [r2]	# _24, _23->header.used.next
	zex.s	r2, r2	# _25, _24
	mov.w	r3, 3	# tmp82,
	shl.w	r2, r3	# _26, tmp82
	add.w	r1, r2 #222	# _27, _26
	ld.s	r1, [r1]	# _28, _27->header.used.next
	zex.s	r1, r1	# _29, _28
	mov.w	r2, 32767	# tmp83,
	and.w	r1, r2	# _30, tmp83
	mov.w	r2, 3	# tmp84,
	shl.w	r1, r2	# _31, tmp84
	add.w	r0, r1 #222	# _32, _31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:180:     UMM_PBLOCK(UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) = c;
	ld.s	r1, [r13 + (-4)]	# tmp85, c
	st.s	[r0 + (2)], r1	# _32->header.used.prev, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	ld.w	r0, [umm_heap]	# umm_heap.21_33, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.22_34, umm_heap
	ld.s	r2, [r13 + (-4)]	# _35, c
	mov.w	r3, 3	# tmp86,
	shl.w	r2, r3	# _36, tmp86
	add.w	r1, r2 #222	# _37, _36
	ld.s	r1, [r1]	# _38, _37->header.used.next
	zex.s	r1, r1	# _39, _38
	mov.w	r2, 3	# tmp87,
	shl.w	r1, r2	# _40, tmp87
	add.w	r0, r1 #222	# _41, _40
	ld.s	r1, [r0]	# _42, _41->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	ld.w	r0, [umm_heap]	# umm_heap.23_43, umm_heap
	ld.s	r2, [r13 + (-4)]	# _44, c
	mov.w	r3, 3	# tmp88,
	shl.w	r2, r3	# _45, tmp88
	add.w	r0, r2 #222	# _46, _45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	mov.w	r2, 32767	# tmp90,
	and.w	r1, r2	# tmp89, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:181:     UMM_NBLOCK(c) = UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK;
	st.s	[r0], r1	# _46->header.used.next, _47
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
	ld.s	r2, [r0]	# _5, _4->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:198:   UMM_NBLOCK(UMM_PBLOCK(c)) = UMM_NBLOCK(c) | freemask;
	ld.w	r0, [umm_heap]	# umm_heap.25_6, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.26_7, umm_heap
	ld.s	r3, [r13 + (-4)]	# _8, c
	mov.w	r4, 3	# tmp66,
	shl.w	r3, r4	# _9, tmp66
	add.w	r1, r3 #222	# _10, _9
	ld.s	r1, [r1 + (2)]	# _11, _10->header.used.prev
	zex.s	r1, r1	# _12, _11
	mov.w	r3, 3	# tmp67,
	shl.w	r1, r3	# _13, tmp67
	add.w	r0, r1 #222	# _14, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:198:   UMM_NBLOCK(UMM_PBLOCK(c)) = UMM_NBLOCK(c) | freemask;
	ld.s	r1, [r13 + (-8)]	# tmp68, freemask
	or.w	r1, r2	# tmp69, _5
	st.s	[r0], r1	# _14->header.used.next, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	ld.w	r1, [umm_heap]	# umm_heap.27_16, umm_heap
	ld.s	r0, [r13 + (-4)]	# _17, c
	mov.w	r2, 3	# tmp70,
	shl.w	r0, r2	# _18, tmp70
	add.w	r1, r0 #222	# _19, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	ld.w	r0, [umm_heap]	# umm_heap.28_20, umm_heap
	ld.w	r2, [umm_heap]	# umm_heap.29_21, umm_heap
	ld.s	r3, [r13 + (-4)]	# _22, c
	mov.w	r4, 3	# tmp71,
	shl.w	r3, r4	# _23, tmp71
	add.w	r2, r3 #222	# _24, _23
	ld.s	r2, [r2]	# _25, _24->header.used.next
	zex.s	r2, r2	# _26, _25
	mov.w	r3, 3	# tmp72,
	shl.w	r2, r3	# _27, tmp72
	add.w	r0, r2 #222	# _28, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	ld.s	r1, [r1 + (2)]	# _29, _19->header.used.prev
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:199:   UMM_PBLOCK(UMM_NBLOCK(c)) = UMM_PBLOCK(c);
	st.s	[r0 + (2)], r1	# _28->header.used.prev, _29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:211:   return( UMM_PBLOCK(c) );
	ld.w	r0, [umm_heap]	# umm_heap.30_30, umm_heap
	ld.s	r1, [r13 + (-4)]	# _31, c
	mov.w	r2, 3	# tmp73,
	shl.w	r1, r2	# _32, tmp73
	add.w	r0, r1 #222	# _33, _32
	ld.s	r0, [r0 + (2)]	# _39, _33->header.used.prev
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
	mov.w	r0, 500000	# tmp41,
	st.w	[umm_heap], r0	# umm_heap, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:219:   umm_numblocks = (UMM_MALLOC_CFG_HEAP_SIZE / sizeof(umm_block));
	mov.w	r0, 12500	# tmp42,
	st.w	[umm_numblocks], r0	# umm_numblocks, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:220:   memset(umm_heap, 0x00, UMM_MALLOC_CFG_HEAP_SIZE);
	ld.w	r1, [umm_heap]	# umm_heap.31_1, umm_heap
	mov.w	r0, sp	# tmp43,
	mov.w	r2, 100000	# tmp44,
	st.w	[r0 + (8)], r2	#, tmp44
	xor.w	r2, r2	# tmp45
	st.w	[r0 + (4)], r2	#, tmp45
	st.w	[r0], r1	#, umm_heap.31_1
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:226:     UMM_NBLOCK(0) = 1;
	ld.w	r0, [umm_heap]	# umm_heap.32_2, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:226:     UMM_NBLOCK(0) = 1;
	mov.s	r1, 1	# tmp46,
	st.s	[r0], r1	# umm_heap.32_2->header.used.next, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:227:     UMM_NFREE(0)  = 1;
	ld.w	r0, [umm_heap]	# umm_heap.33_3, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:227:     UMM_NFREE(0)  = 1;
	mov.s	r1, 1	# tmp47,
	st.s	[r0 + (4)], r1	# umm_heap.33_3->body.free.next, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:228:     UMM_PFREE(0)  = 1;
	ld.w	r0, [umm_heap]	# umm_heap.34_4, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:228:     UMM_PFREE(0)  = 1;
	mov.s	r1, 1	# tmp48,
	st.s	[r0 + (6)], r1	# umm_heap.34_4->body.free.prev, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	ld.w	r0, [umm_numblocks]	# umm_numblocks.35_5, umm_numblocks
	add.w	r0, -1 #111	# tmp49,
	mov.w	r1, r0	# _7, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	ld.w	r0, [umm_heap]	# umm_heap.36_8, umm_heap
	add.w	r0, 8 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	mov.w	r2, -32768	# tmp51,
	or.w	r1, r2	# tmp50, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:249:     UMM_NBLOCK(1) = UMM_BLOCK_LAST | UMM_FREELIST_MASK;
	st.s	[r0], r1	# _9->header.used.next, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:259:     UMM_PBLOCK(UMM_BLOCK_LAST) = 1;
	ld.w	r0, [umm_heap]	# umm_heap.37_11, umm_heap
	ld.w	r1, [umm_numblocks]	# umm_numblocks.38_12, umm_numblocks
	mov.w	r2, 536870911	# tmp52,
	add.w	r1, r2 #222	# _13, tmp52
	mov.w	r2, 3	# tmp53,
	shl.w	r1, r2	# _14, tmp53
	add.w	r0, r1 #222	# _15, _14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:259:     UMM_PBLOCK(UMM_BLOCK_LAST) = 1;
	mov.s	r1, 1	# tmp54,
	st.s	[r0 + (2)], r1	# _15->header.used.prev, tmp54
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
	ld.w	r0, [umm_heap]	# umm_heap.40_6, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.41_7, umm_heap
	ld.s	r2, [r13 + (-2)]	# _8, c
	mov.w	r3, 3	# tmp74,
	shl.w	r2, r3	# _9, tmp74
	add.w	r1, r2 #222	# _10, _9
	ld.s	r1, [r1 + (2)]	# _11, _10->header.used.prev
	zex.s	r1, r1	# _12, _11
	mov.w	r2, 3	# tmp75,
	shl.w	r1, r2	# _13, tmp75
	add.w	r0, r1 #222	# _14, _13
	ld.s	r0, [r0]	# _15, _14->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:292:   if( UMM_NBLOCK(UMM_PBLOCK(c)) & UMM_FREELIST_MASK ) {
	sex.s	r1, r0	# tmp76, _16
	xor.w	r0, r0	# tmp77
	cmp.w	r1, r0	# tmp76, tmp77
	jges	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:296:     c = umm_assimilate_down(c, UMM_FREELIST_MASK);
	ld.s	r1, [r13 + (-2)]	# _17, c
	mov.w	r0, sp	# tmp78,
	mov.w	r2, 32768	# tmp79,
	st.w	[r0 + (4)], r2	#, tmp79
	st.w	[r0], r1	#, _17
	call	umm_assimilate_down		#
	st.s	[r13 + (-2)], r0	# c,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:313: }
	j	.L15		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:306:     UMM_PFREE(UMM_NFREE(0)) = c;
	ld.w	r0, [umm_heap]	# umm_heap.42_18, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.43_19, umm_heap
	ld.s	r1, [r1 + (4)]	# _20, umm_heap.43_19->body.free.next
	zex.s	r1, r1	# _21, _20
	mov.w	r2, 3	# tmp80,
	shl.w	r1, r2	# _22, tmp80
	add.w	r0, r1 #222	# _23, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:306:     UMM_PFREE(UMM_NFREE(0)) = c;
	ld.s	r1, [r13 + (-2)]	# tmp81, c
	st.s	[r0 + (6)], r1	# _23->body.free.prev, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	ld.w	r1, [umm_heap]	# umm_heap.44_24, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	ld.w	r0, [umm_heap]	# umm_heap.45_25, umm_heap
	ld.s	r2, [r13 + (-2)]	# _26, c
	mov.w	r3, 3	# tmp82,
	shl.w	r2, r3	# _27, tmp82
	add.w	r0, r2 #222	# _28, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	ld.s	r1, [r1 + (4)]	# _29, umm_heap.44_24->body.free.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:307:     UMM_NFREE(c)            = UMM_NFREE(0);
	st.s	[r0 + (4)], r1	# _28->body.free.next, _29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:308:     UMM_PFREE(c)            = 0;
	ld.w	r0, [umm_heap]	# umm_heap.46_30, umm_heap
	ld.s	r1, [r13 + (-2)]	# _31, c
	mov.w	r2, 3	# tmp83,
	shl.w	r1, r2	# _32, tmp83
	add.w	r0, r1 #222	# _33, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:308:     UMM_PFREE(c)            = 0;
	xor.w	r1, r1	# tmp84
	st.s	[r0 + (6)], r1	# _33->body.free.prev, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:309:     UMM_NFREE(0)            = c;
	ld.w	r0, [umm_heap]	# umm_heap.47_34, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:309:     UMM_NFREE(0)            = c;
	ld.s	r1, [r13 + (-2)]	# tmp85, c
	st.s	[r0 + (4)], r1	# umm_heap.47_34->body.free.next, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:311:     UMM_NBLOCK(c)          |= UMM_FREELIST_MASK;
	ld.w	r0, [umm_heap]	# umm_heap.48_35, umm_heap
	ld.s	r1, [r13 + (-2)]	# _36, c
	mov.w	r2, 3	# tmp86,
	shl.w	r1, r2	# _37, tmp86
	add.w	r0, r1 #222	# _38, _37
	ld.s	r1, [r0]	# _39, _38->header.used.next
	ld.w	r0, [umm_heap]	# umm_heap.49_40, umm_heap
	ld.s	r2, [r13 + (-2)]	# _41, c
	mov.w	r3, 3	# tmp87,
	shl.w	r2, r3	# _42, tmp87
	add.w	r0, r2 #222	# _43, _42
	mov.w	r2, -32768	# tmp89,
	or.w	r1, r2	# tmp88, tmp89
	st.s	[r0], r1	# _43->header.used.next, _44
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
	ld.s	r0, [r0 + (4)]	# tmp101, umm_heap.51_1->body.free.next
	st.s	[r13 + (-8)], r0	# cf, tmp101
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:366:   bestBlock = UMM_NFREE(0);
	ld.w	r0, [umm_heap]	# umm_heap.52_2, umm_heap
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:366:   bestBlock = UMM_NFREE(0);
	ld.s	r0, [r0 + (4)]	# tmp102, umm_heap.52_2->body.free.next
	st.s	[r13 + (-6)], r0	# bestBlock, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:367:   bestSize  = 0x7FFF;
	mov.s	r0, 32767	# tmp103,
	st.s	[r13 + (-4)], r0	# bestSize, tmp103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:369:   while( cf ) {
	j	.L22		#
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:370:     blockSize = (UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK) - cf;
	ld.w	r0, [umm_heap]	# umm_heap.53_3, umm_heap
	ld.s	r1, [r13 + (-8)]	# _4, cf
	mov.w	r2, 3	# tmp104,
	shl.w	r1, r2	# _5, tmp104
	add.w	r0, r1 #222	# _6, _5
	ld.s	r0, [r0]	# _7, _6->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:370:     blockSize = (UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK) - cf;
	mov.w	r1, 32767	# tmp106,
	and.w	r0, r1	# tmp105, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:370:     blockSize = (UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK) - cf;
	ld.s	r1, [r13 + (-8)]	# tmp107, cf
	sub.w	r0, r1 #222	# tmp108, tmp109
	st.s	[r13 + (-2)], r0	# blockSize, tmp110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:375:     if( (blockSize >= blocks) && (blockSize < bestSize) ) {
	ld.s	r1, [r13 + (-2)]	# tmp111, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp112, blocks
	cmp.w	r1, r0	# tmp111, tmp112
	js	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:375:     if( (blockSize >= blocks) && (blockSize < bestSize) ) {
	ld.s	r1, [r13 + (-2)]	# tmp113, blockSize
	ld.s	r0, [r13 + (-4)]	# tmp114, bestSize
	cmp.w	r1, r0	# tmp113, tmp114
	jge	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:376:       bestBlock = cf;
	ld.s	r0, [r13 + (-8)]	# tmp115, cf
	st.s	[r13 + (-6)], r0	# bestBlock, tmp115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:377:       bestSize  = blockSize;
	ld.s	r0, [r13 + (-2)]	# tmp116, blockSize
	st.s	[r13 + (-4)], r0	# bestSize, tmp116
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:387:     cf = UMM_NFREE(cf);
	ld.w	r0, [umm_heap]	# umm_heap.54_9, umm_heap
	ld.s	r1, [r13 + (-8)]	# _10, cf
	mov.w	r2, 3	# tmp117,
	shl.w	r1, r2	# _11, tmp117
	add.w	r0, r1 #222	# _12, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:387:     cf = UMM_NFREE(cf);
	ld.s	r0, [r0 + (4)]	# tmp118, _12->body.free.next
	st.s	[r13 + (-8)], r0	# cf, tmp118
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:369:   while( cf ) {
	ld.s	r1, [r13 + (-8)]	# tmp119, cf
	xor.w	r0, r0	# tmp120
	cmp.w	r1, r0	# tmp119, tmp120
	jnz	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:390:   if( 0x7FFF != bestSize ) {
	ld.s	r1, [r13 + (-4)]	# tmp121, bestSize
	mov.w	r0, 32767	# tmp122,
	cmp.w	r1, r0	# tmp121, tmp122
	jz	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:391:     cf        = bestBlock;
	ld.s	r0, [r13 + (-6)]	# tmp123, bestBlock
	st.s	[r13 + (-8)], r0	# cf, tmp123
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:392:     blockSize = bestSize;
	ld.s	r0, [r13 + (-4)]	# tmp124, bestSize
	st.s	[r13 + (-2)], r0	# blockSize, tmp124
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	ld.w	r0, [umm_heap]	# umm_heap.55_13, umm_heap
	ld.s	r1, [r13 + (-8)]	# _14, cf
	mov.w	r2, 3	# tmp125,
	shl.w	r1, r2	# _15, tmp125
	add.w	r0, r1 #222	# _16, _15
	ld.s	r0, [r0]	# _17, _16->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	zex.s	r1, r0	# _18, _17
	mov.w	r0, 32767	# tmp126,
	and.w	r1, r0	# _19, tmp126
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	xor.w	r0, r0	# tmp127
	cmp.w	r1, r0	# _19, tmp127
	jz	.L26		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:395:   if( UMM_NBLOCK(cf) & UMM_BLOCKNO_MASK && blockSize >= blocks ) {
	ld.s	r1, [r13 + (-2)]	# tmp128, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp129, blocks
	cmp.w	r1, r0	# tmp128, tmp129
	js	.L26		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:406:     if( blockSize == blocks ) {
	ld.s	r1, [r13 + (-2)]	# tmp130, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp131, blocks
	cmp.w	r1, r0	# tmp130, tmp131
	jnz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:412:       umm_disconnect_from_free_list( cf );
	ld.s	r0, [r13 + (-8)]	# _20, cf
	mov.w	r1, sp	# tmp132,
	st.w	[r1], r0	#, _20
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:406:     if( blockSize == blocks ) {
	j	.L29		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:422:       umm_split_block( cf, blocks, UMM_FREELIST_MASK /*new block is free*/ );
	ld.s	r1, [r13 + (-8)]	# _21, cf
	ld.s	r2, [r13 + (-10)]	# _22, blocks
	mov.w	r0, sp	# tmp133,
	mov.w	r3, 32768	# tmp134,
	st.w	[r0 + (8)], r3	#, tmp134
	st.w	[r0 + (4)], r2	#, _22
	st.w	[r0], r1	#, _21
	call	umm_split_block		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:434:       UMM_NFREE( UMM_PFREE(cf) ) = cf + blocks;
	ld.w	r0, [umm_heap]	# umm_heap.56_23, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.57_24, umm_heap
	ld.s	r2, [r13 + (-8)]	# _25, cf
	mov.w	r3, 3	# tmp135,
	shl.w	r2, r3	# _26, tmp135
	add.w	r1, r2 #222	# _27, _26
	ld.s	r1, [r1 + (6)]	# _28, _27->body.free.prev
	zex.s	r1, r1	# _29, _28
	mov.w	r2, 3	# tmp136,
	shl.w	r1, r2	# _30, tmp136
	add.w	r0, r1 #222	# _31, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:434:       UMM_NFREE( UMM_PFREE(cf) ) = cf + blocks;
	ld.s	r1, [r13 + (-8)]	# tmp137, cf
	ld.s	r2, [r13 + (-10)]	# tmp138, blocks
	add.w	r1, r2 #222	# tmp139, tmp140
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:434:       UMM_NFREE( UMM_PFREE(cf) ) = cf + blocks;
	st.s	[r0 + (4)], r1	# _31->body.free.next, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	ld.w	r1, [umm_heap]	# umm_heap.58_33, umm_heap
	ld.s	r0, [r13 + (-8)]	# _34, cf
	mov.w	r2, 3	# tmp141,
	shl.w	r0, r2	# _35, tmp141
	add.w	r1, r0 #222	# _36, _35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	ld.w	r0, [umm_heap]	# umm_heap.59_37, umm_heap
	ld.s	r2, [r13 + (-8)]	# _38, cf
	ld.s	r3, [r13 + (-10)]	# _39, blocks
	add.w	r2, r3 #222	# _40, _39
	mov.w	r3, 3	# tmp142,
	shl.w	r2, r3	# _42, tmp142
	add.w	r0, r2 #222	# _43, _42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	ld.s	r1, [r1 + (6)]	# _44, _36->body.free.prev
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:435:       UMM_PFREE( cf + blocks ) = UMM_PFREE(cf);
	st.s	[r0 + (6)], r1	# _43->body.free.prev, _44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:438:       UMM_PFREE( UMM_NFREE(cf) ) = cf + blocks;
	ld.w	r0, [umm_heap]	# umm_heap.60_45, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.61_46, umm_heap
	ld.s	r2, [r13 + (-8)]	# _47, cf
	mov.w	r3, 3	# tmp143,
	shl.w	r2, r3	# _48, tmp143
	add.w	r1, r2 #222	# _49, _48
	ld.s	r1, [r1 + (4)]	# _50, _49->body.free.next
	zex.s	r1, r1	# _51, _50
	mov.w	r2, 3	# tmp144,
	shl.w	r1, r2	# _52, tmp144
	add.w	r0, r1 #222	# _53, _52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:438:       UMM_PFREE( UMM_NFREE(cf) ) = cf + blocks;
	ld.s	r1, [r13 + (-8)]	# tmp145, cf
	ld.s	r2, [r13 + (-10)]	# tmp146, blocks
	add.w	r1, r2 #222	# tmp147, tmp148
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:438:       UMM_PFREE( UMM_NFREE(cf) ) = cf + blocks;
	st.s	[r0 + (6)], r1	# _53->body.free.prev, _54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	ld.w	r1, [umm_heap]	# umm_heap.62_55, umm_heap
	ld.s	r0, [r13 + (-8)]	# _56, cf
	mov.w	r2, 3	# tmp149,
	shl.w	r0, r2	# _57, tmp149
	add.w	r1, r0 #222	# _58, _57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	ld.w	r0, [umm_heap]	# umm_heap.63_59, umm_heap
	ld.s	r2, [r13 + (-8)]	# _60, cf
	ld.s	r3, [r13 + (-10)]	# _61, blocks
	add.w	r2, r3 #222	# _62, _61
	mov.w	r3, 3	# tmp150,
	shl.w	r2, r3	# _64, tmp150
	add.w	r0, r2 #222	# _65, _64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	ld.s	r1, [r1 + (4)]	# _66, _58->body.free.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:439:       UMM_NFREE( cf + blocks ) = UMM_NFREE(cf);
	st.s	[r0 + (4)], r1	# _65->body.free.next, _66
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
	mov.w	r2, 3	# tmp151,
	shl.w	r1, r2	# _69, tmp151
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
	ld.s	r0, [r0]	# _10, _9->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:549:   blockSize = (UMM_NBLOCK(c) - c);
	ld.s	r1, [r13 + (-8)]	# tmp168, c
	sub.w	r0, r1 #222	# tmp169, tmp170
	st.s	[r13 + (-2)], r0	# blockSize, tmp171
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:553:   curSize   = (blockSize*sizeof(umm_block))-(sizeof(((umm_block *)0)->header));
	ld.s	r0, [r13 + (-2)]	# _11, blockSize
	mov.w	r1, 3	# tmp172,
	shl.w	r0, r1	# _12, tmp172
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:553:   curSize   = (blockSize*sizeof(umm_block))-(sizeof(((umm_block *)0)->header));
	add.w	r0, -4 #111	# tmp173,
	st.w	[r13 + (-16)], r0	# curSize, tmp173
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:566:   if ((UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_FREELIST_MASK)) {
	ld.w	r0, [umm_heap]	# umm_heap.69_13, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.70_14, umm_heap
	ld.s	r2, [r13 + (-8)]	# _15, c
	mov.w	r3, 3	# tmp174,
	shl.w	r2, r3	# _16, tmp174
	add.w	r1, r2 #222	# _17, _16
	ld.s	r1, [r1]	# _18, _17->header.used.next
	zex.s	r1, r1	# _19, _18
	mov.w	r2, 3	# tmp175,
	shl.w	r1, r2	# _20, tmp175
	add.w	r0, r1 #222	# _21, _20
	ld.s	r0, [r0]	# _22, _21->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:566:   if ((UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_FREELIST_MASK)) {
	sex.s	r1, r0	# tmp176, _23
	xor.w	r0, r0	# tmp177
	cmp.w	r1, r0	# tmp176, tmp177
	jges	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	ld.w	r0, [umm_heap]	# umm_heap.71_24, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.72_25, umm_heap
	ld.s	r2, [r13 + (-8)]	# _26, c
	mov.w	r3, 3	# tmp178,
	shl.w	r2, r3	# _27, tmp178
	add.w	r1, r2 #222	# _28, _27
	ld.s	r1, [r1]	# _29, _28->header.used.next
	zex.s	r1, r1	# _30, _29
	mov.w	r2, 3	# tmp179,
	shl.w	r1, r2	# _31, tmp179
	add.w	r0, r1 #222	# _32, _31
	ld.s	r0, [r0]	# _33, _32->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	mov.w	r1, 32767	# tmp181,
	and.w	r0, r1	# tmp180, tmp181
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	ld.w	r1, [umm_heap]	# umm_heap.73_35, umm_heap
	ld.s	r2, [r13 + (-8)]	# _36, c
	mov.w	r3, 3	# tmp182,
	shl.w	r2, r3	# _37, tmp182
	add.w	r1, r2 #222	# _38, _37
	ld.s	r1, [r1]	# _39, _38->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:567:       nextBlockSize = (UMM_NBLOCK(UMM_NBLOCK(c)) & UMM_BLOCKNO_MASK) - UMM_NBLOCK(c);
	sub.w	r0, r1 #222	# tmp183, tmp184
	st.s	[r13 + (-6)], r0	# nextBlockSize, tmp185
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:570:   if ((UMM_NBLOCK(UMM_PBLOCK(c)) & UMM_FREELIST_MASK)) {
	ld.w	r0, [umm_heap]	# umm_heap.74_40, umm_heap
	ld.w	r1, [umm_heap]	# umm_heap.75_41, umm_heap
	ld.s	r2, [r13 + (-8)]	# _42, c
	mov.w	r3, 3	# tmp186,
	shl.w	r2, r3	# _43, tmp186
	add.w	r1, r2 #222	# _44, _43
	ld.s	r1, [r1 + (2)]	# _45, _44->header.used.prev
	zex.s	r1, r1	# _46, _45
	mov.w	r2, 3	# tmp187,
	shl.w	r1, r2	# _47, tmp187
	add.w	r0, r1 #222	# _48, _47
	ld.s	r0, [r0]	# _49, _48->header.used.next
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:570:   if ((UMM_NBLOCK(UMM_PBLOCK(c)) & UMM_FREELIST_MASK)) {
	sex.s	r1, r0	# tmp188, _50
	xor.w	r0, r0	# tmp189
	cmp.w	r1, r0	# tmp188, tmp189
	jges	.L41		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:571:       prevBlockSize = (c - UMM_PBLOCK(c));
	ld.w	r0, [umm_heap]	# umm_heap.76_51, umm_heap
	ld.s	r1, [r13 + (-8)]	# _52, c
	mov.w	r2, 3	# tmp190,
	shl.w	r1, r2	# _53, tmp190
	add.w	r0, r1 #222	# _54, _53
	ld.s	r1, [r0 + (2)]	# _55, _54->header.used.prev
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:571:       prevBlockSize = (c - UMM_PBLOCK(c));
	ld.s	r0, [r13 + (-8)]	# tmp191, c
	sub.w	r0, r1 #222	# tmp192, tmp193
	st.s	[r13 + (-4)], r0	# prevBlockSize, tmp194
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:612:     if (blockSize >= blocks) {
	ld.s	r1, [r13 + (-2)]	# tmp195, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp196, blocks
	cmp.w	r1, r0	# tmp195, tmp196
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
	mov.w	r1, sp	# tmp197,
	st.w	[r1], r0	#, _60
	call	umm_assimilate_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:620:         blockSize += nextBlockSize;
	ld.s	r0, [r13 + (-2)]	# tmp198, blockSize
	ld.s	r1, [r13 + (-6)]	# tmp199, nextBlockSize
	add.w	r0, r1 #222	# tmp200, tmp201
	st.s	[r13 + (-2)], r0	# blockSize, tmp202
	j	.L42		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:623:     } else if ((0 == prevBlockSize) && (blockSize + nextBlockSize) >= blocks) {
	ld.s	r1, [r13 + (-4)]	# tmp203, prevBlockSize
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# tmp203, tmp204
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
	mov.w	r1, sp	# tmp205,
	st.w	[r1], r0	#, _65
	call	umm_assimilate_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:626:         blockSize += nextBlockSize;
	ld.s	r0, [r13 + (-2)]	# tmp206, blockSize
	ld.s	r1, [r13 + (-6)]	# tmp207, nextBlockSize
	add.w	r0, r1 #222	# tmp208, tmp209
	st.s	[r13 + (-2)], r0	# blockSize, tmp210
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
	mov.w	r2, 3	# tmp211,
	shl.w	r1, r2	# _72, tmp211
	add.w	r0, r1 #222	# _73, _72
	ld.s	r0, [r0 + (2)]	# _74, _73->header.used.prev
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:631:         umm_disconnect_from_free_list( UMM_PBLOCK(c) );
	zex.s	r0, r0	# _75, _74
	mov.w	r1, sp	# tmp212,
	st.w	[r1], r0	#, _75
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:632:         c = umm_assimilate_down(c, 0);
	ld.s	r1, [r13 + (-8)]	# _76, c
	mov.w	r0, sp	# tmp213,
	xor.w	r2, r2	# tmp214
	st.w	[r0 + (4)], r2	#, tmp214
	st.w	[r0], r1	#, _76
	call	umm_assimilate_down		#
	st.s	[r13 + (-8)], r0	# c,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:633:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r0, [umm_heap]	# umm_heap.78_77, umm_heap
	ld.s	r1, [r13 + (-8)]	# _78, c
	mov.w	r2, 3	# tmp215,
	shl.w	r1, r2	# _79, tmp215
	add.w	r0, r1 #222	# _80, _79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:633:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	mov.w	r1, r0	# _81, _80
	add.w	r1, 4 #111	# _81,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:633:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r2, [r13 + (-16)]	# curSize.79_82, curSize
	mov.w	r0, sp	# tmp216,
	st.w	[r0 + (8)], r2	#, curSize.79_82
	ld.w	r2, [r13 + (8)]	# tmp217, ptr
	st.w	[r0 + (4)], r2	#, tmp217
	st.w	[r0], r1	#, _81
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:634:         ptr = (void *)&UMM_DATA(c);
	ld.w	r0, [umm_heap]	# umm_heap.80_83, umm_heap
	ld.s	r1, [r13 + (-8)]	# _84, c
	mov.w	r2, 3	# tmp218,
	shl.w	r1, r2	# _85, tmp218
	add.w	r0, r1 #222	# _86, _85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:634:         ptr = (void *)&UMM_DATA(c);
	add.w	r0, 4 #111	# tmp219,
	st.w	[r13 + (8)], r0	# ptr, tmp219
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:635:         blockSize += prevBlockSize;
	ld.s	r0, [r13 + (-2)]	# tmp220, blockSize
	ld.s	r1, [r13 + (-4)]	# tmp221, prevBlockSize
	add.w	r0, r1 #222	# tmp222, tmp223
	st.s	[r13 + (-2)], r0	# blockSize, tmp224
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
	mov.w	r1, sp	# tmp225,
	st.w	[r1], r0	#, _93
	call	umm_assimilate_up		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:641:         umm_disconnect_from_free_list( UMM_PBLOCK(c) );
	ld.w	r0, [umm_heap]	# umm_heap.81_94, umm_heap
	ld.s	r1, [r13 + (-8)]	# _95, c
	mov.w	r2, 3	# tmp226,
	shl.w	r1, r2	# _96, tmp226
	add.w	r0, r1 #222	# _97, _96
	ld.s	r0, [r0 + (2)]	# _98, _97->header.used.prev
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:641:         umm_disconnect_from_free_list( UMM_PBLOCK(c) );
	zex.s	r0, r0	# _99, _98
	mov.w	r1, sp	# tmp227,
	st.w	[r1], r0	#, _99
	call	umm_disconnect_from_free_list		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:642:         c = umm_assimilate_down(c, 0);
	ld.s	r1, [r13 + (-8)]	# _100, c
	mov.w	r0, sp	# tmp228,
	xor.w	r2, r2	# tmp229
	st.w	[r0 + (4)], r2	#, tmp229
	st.w	[r0], r1	#, _100
	call	umm_assimilate_down		#
	st.s	[r13 + (-8)], r0	# c,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:643:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r0, [umm_heap]	# umm_heap.82_101, umm_heap
	ld.s	r1, [r13 + (-8)]	# _102, c
	mov.w	r2, 3	# tmp230,
	shl.w	r1, r2	# _103, tmp230
	add.w	r0, r1 #222	# _104, _103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:643:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	mov.w	r1, r0	# _105, _104
	add.w	r1, 4 #111	# _105,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:643:         memmove( (void *)&UMM_DATA(c), ptr, curSize );
	ld.w	r2, [r13 + (-16)]	# curSize.83_106, curSize
	mov.w	r0, sp	# tmp231,
	st.w	[r0 + (8)], r2	#, curSize.83_106
	ld.w	r2, [r13 + (8)]	# tmp232, ptr
	st.w	[r0 + (4)], r2	#, tmp232
	st.w	[r0], r1	#, _105
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:644:         ptr = (void *)&UMM_DATA(c);
	ld.w	r0, [umm_heap]	# umm_heap.84_107, umm_heap
	ld.s	r1, [r13 + (-8)]	# _108, c
	mov.w	r2, 3	# tmp233,
	shl.w	r1, r2	# _109, tmp233
	add.w	r0, r1 #222	# _110, _109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:644:         ptr = (void *)&UMM_DATA(c);
	add.w	r0, 4 #111	# tmp234,
	st.w	[r13 + (8)], r0	# ptr, tmp234
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:645:         blockSize += (prevBlockSize + nextBlockSize);
	ld.s	r0, [r13 + (-4)]	# tmp235, prevBlockSize
	ld.s	r1, [r13 + (-6)]	# tmp236, nextBlockSize
	add.w	r0, r1 #222	# tmp237, tmp238
	mov.w	r1, r0	# _111, tmp237
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:645:         blockSize += (prevBlockSize + nextBlockSize);
	ld.s	r0, [r13 + (-2)]	# tmp239, blockSize
	add.w	r0, r1 #222	# tmp240, tmp241
	st.s	[r13 + (-2)], r0	# blockSize, tmp242
	j	.L42		#
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:650:         void *oldptr = ptr;
	ld.w	r0, [r13 + (8)]	# tmp243, ptr
	st.w	[r13 + (-20)], r0	# oldptr, tmp243
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:651:         if( (ptr = umm_malloc_core( size )) ) {
	mov.w	r1, sp	# tmp244,
	ld.w	r0, [r13 + (12)]	# tmp245, size
	st.w	[r1], r0	#, tmp245
	call	umm_malloc_core		#
	st.w	[r13 + (8)], r0	# ptr,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:651:         if( (ptr = umm_malloc_core( size )) ) {
	ld.w	r1, [r13 + (8)]	# tmp246, ptr
	xor.w	r0, r0	# tmp247
	cmp.w	r1, r0	# tmp246, tmp247
	jz	.L47		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:653:             memcpy( ptr, oldptr, curSize );
	ld.w	r1, [r13 + (-16)]	# curSize.85_112, curSize
	mov.w	r0, sp	# tmp248,
	st.w	[r0 + (8)], r1	#, curSize.85_112
	ld.w	r1, [r13 + (-20)]	# tmp249, oldptr
	st.w	[r0 + (4)], r1	#, tmp249
	ld.w	r1, [r13 + (8)]	# tmp250, ptr
	st.w	[r0], r1	#, tmp250
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:654:             umm_free_core( oldptr );
	mov.w	r1, sp	# tmp251,
	ld.w	r0, [r13 + (-20)]	# tmp252, oldptr
	st.w	[r1], r0	#, tmp252
	call	umm_free_core		#
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:659:         blockSize = blocks;
	ld.s	r0, [r13 + (-10)]	# tmp253, blocks
	st.s	[r13 + (-2)], r0	# blockSize, tmp253
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:666:     if (blockSize > blocks ) {
	ld.s	r1, [r13 + (-2)]	# tmp254, blockSize
	ld.s	r0, [r13 + (-10)]	# tmp255, blocks
	cmp.w	r1, r0	# tmp254, tmp255
	jse	.L48		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:668:         umm_split_block( c, blocks, 0 );
	ld.s	r1, [r13 + (-8)]	# _113, c
	ld.s	r2, [r13 + (-10)]	# _114, blocks
	mov.w	r0, sp	# tmp256,
	xor.w	r3, r3	# tmp257
	st.w	[r0 + (8)], r3	#, tmp257
	st.w	[r0 + (4)], r2	#, _114
	st.w	[r0], r1	#, _113
	call	umm_split_block		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:669:         umm_free_core( (void *)&UMM_DATA(c+blocks) );
	ld.w	r0, [umm_heap]	# umm_heap.86_115, umm_heap
	ld.s	r1, [r13 + (-8)]	# _116, c
	ld.s	r2, [r13 + (-10)]	# _117, blocks
	add.w	r1, r2 #222	# _118, _117
	mov.w	r2, 3	# tmp258,
	shl.w	r1, r2	# _120, tmp258
	add.w	r0, r1 #222	# _121, _120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:669:         umm_free_core( (void *)&UMM_DATA(c+blocks) );
	add.w	r0, 4 #111	# _122,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/umm_malloc.c:669:         umm_free_core( (void *)&UMM_DATA(c+blocks) );
	mov.w	r1, sp	# tmp259,
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
