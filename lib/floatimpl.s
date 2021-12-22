	.file	"floatimpl.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.s
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
	.p2align	1
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:8:    int n = 32;
	mov.w	r0, 32	# tmp30,
	st.w	[r13 + (-4)], r0	# n, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:9:    y = x >>16;  if (y != 0) {n = n -16;  x = y;}
	ld.w	r0, [r13 + (8)]	# tmp32, x
	mov.w	r1, 16	# tmp33,
	shr.w	r0, r1	# tmp31, tmp33
	st.w	[r13 + (-8)], r0	# y, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:9:    y = x >>16;  if (y != 0) {n = n -16;  x = y;}
	ld.w	r1, [r13 + (-8)]	# tmp34, y
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:9:    y = x >>16;  if (y != 0) {n = n -16;  x = y;}
	ld.w	r0, [r13 + (-4)]	# tmp37, n
	add.w	r0, -16 #111	# tmp36,
	st.w	[r13 + (-4)], r0	# n, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:9:    y = x >>16;  if (y != 0) {n = n -16;  x = y;}
	ld.w	r0, [r13 + (-8)]	# tmp38, y
	st.w	[r13 + (8)], r0	# x, tmp38
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:10:    y = x >> 8;  if (y != 0) {n = n - 8;  x = y;}
	ld.w	r0, [r13 + (8)]	# tmp40, x
	mov.w	r1, 8	# tmp41,
	shr.w	r0, r1	# tmp39, tmp41
	st.w	[r13 + (-8)], r0	# y, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:10:    y = x >> 8;  if (y != 0) {n = n - 8;  x = y;}
	ld.w	r1, [r13 + (-8)]	# tmp42, y
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L3		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:10:    y = x >> 8;  if (y != 0) {n = n - 8;  x = y;}
	ld.w	r0, [r13 + (-4)]	# tmp45, n
	add.w	r0, -8 #111	# tmp44,
	st.w	[r13 + (-4)], r0	# n, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:10:    y = x >> 8;  if (y != 0) {n = n - 8;  x = y;}
	ld.w	r0, [r13 + (-8)]	# tmp46, y
	st.w	[r13 + (8)], r0	# x, tmp46
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:11:    y = x >> 4;  if (y != 0) {n = n - 4;  x = y;}
	ld.w	r0, [r13 + (8)]	# tmp48, x
	mov.w	r1, 4	# tmp49,
	shr.w	r0, r1	# tmp47, tmp49
	st.w	[r13 + (-8)], r0	# y, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:11:    y = x >> 4;  if (y != 0) {n = n - 4;  x = y;}
	ld.w	r1, [r13 + (-8)]	# tmp50, y
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L4		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:11:    y = x >> 4;  if (y != 0) {n = n - 4;  x = y;}
	ld.w	r0, [r13 + (-4)]	# tmp53, n
	add.w	r0, -4 #111	# tmp52,
	st.w	[r13 + (-4)], r0	# n, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:11:    y = x >> 4;  if (y != 0) {n = n - 4;  x = y;}
	ld.w	r0, [r13 + (-8)]	# tmp54, y
	st.w	[r13 + (8)], r0	# x, tmp54
.L4:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:12:    y = x >> 2;  if (y != 0) {n = n - 2;  x = y;}
	ld.w	r0, [r13 + (8)]	# tmp56, x
	mov.w	r1, 2	# tmp57,
	shr.w	r0, r1	# tmp55, tmp57
	st.w	[r13 + (-8)], r0	# y, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:12:    y = x >> 2;  if (y != 0) {n = n - 2;  x = y;}
	ld.w	r1, [r13 + (-8)]	# tmp58, y
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L5		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:12:    y = x >> 2;  if (y != 0) {n = n - 2;  x = y;}
	ld.w	r0, [r13 + (-4)]	# tmp61, n
	add.w	r0, -2 #111	# tmp60,
	st.w	[r13 + (-4)], r0	# n, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:12:    y = x >> 2;  if (y != 0) {n = n - 2;  x = y;}
	ld.w	r0, [r13 + (-8)]	# tmp62, y
	st.w	[r13 + (8)], r0	# x, tmp62
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:13:    y = x >> 1;  if (y != 0) return n - 2;
	ld.w	r0, [r13 + (8)]	# tmp64, x
	mov.w	r1, 1	# tmp65,
	shr.w	r0, r1	# tmp63, tmp65
	st.w	[r13 + (-8)], r0	# y, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:13:    y = x >> 1;  if (y != 0) return n - 2;
	ld.w	r1, [r13 + (-8)]	# tmp66, y
	xor.w	r0, r0	# tmp67
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L6		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:13:    y = x >> 1;  if (y != 0) return n - 2;
	ld.w	r0, [r13 + (-4)]	# tmp68, n
	add.w	r0, -2 #111	# _11,
	j	.L7		#
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:14:    return n - x;
	ld.w	r0, [r13 + (-4)]	# n.0_1, n
	ld.w	r1, [r13 + (8)]	# tmp69, x
	sub.w	r0, r1 #222	# _2, tmp69
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:15: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__clzsi2, .-__clzsi2
	.p2align	1
	.global	rep_clz
	.type	rep_clz, @function
rep_clz:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:19:     return __clzsi2(a);
	mov.w	r1, sp	# tmp28,
	ld.w	r0, [r13 + (8)]	# tmp29, a
	st.w	[r1], r0	#, tmp29
	call	__clzsi2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:20: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	rep_clz, .-rep_clz
	.p2align	1
	.global	toRep
	.type	toRep, @function
toRep:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:25:     const union { fp_t f; rep_t i; } rep = {.f = x};
	ld.w	r0, [r13 + (8)]	# tmp28, x
	st.w	[r13 + (-4)], r0	# rep.f, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:26:     return rep.i;
	ld.w	r0, [r13 + (-4)]	# _4, rep.i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:27: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	toRep, .-toRep
	.p2align	1
	.global	fromRep
	.type	fromRep, @function
fromRep:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:32:     const union { fp_t f; rep_t i; } rep = {.i = x};
	ld.w	r0, [r13 + (8)]	# tmp28, x
	st.w	[r13 + (-4)], r0	# rep.i, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:33:     return rep.f;
	ld.w	r0, [r13 + (-4)]	# _4, rep
	mov.w	r1, r0	# <retval>, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:34: }
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	fromRep, .-fromRep
	.p2align	1
	.global	normalize
	.type	normalize, @function
normalize:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:38:     const int shift = rep_clz(*significand) - rep_clz(implicitBit);
	ld.w	r0, [r13 + (8)]	# tmp33, significand
	ld.w	r0, [r0]	# _1, *significand_7(D)
	mov.w	r1, sp	# tmp34,
	st.w	[r1], r0	#, _1
	call	rep_clz		#
	mov.w	r6, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:38:     const int shift = rep_clz(*significand) - rep_clz(implicitBit);
	mov.w	r1, sp	# tmp35,
	mov.w	r0, 8388608	# tmp36,
	st.w	[r1], r0	#, tmp36
	call	rep_clz		#
	mov.w	r1, r0	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:38:     const int shift = rep_clz(*significand) - rep_clz(implicitBit);
	mov.w	r0, r6	# tmp37, _2
	sub.w	r0, r1 #222	# tmp37, _3
	st.w	[r13 + (-8)], r0	# shift, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:39:     *significand <<= shift;
	ld.w	r0, [r13 + (8)]	# tmp38, significand
	ld.w	r1, [r0]	# _4, *significand_7(D)
	ld.w	r0, [r13 + (-8)]	# tmp39, shift
	shl.w	r1, r0	# _5, tmp39
	ld.w	r0, [r13 + (8)]	# tmp40, significand
	st.w	[r0], r1	# *significand_7(D), _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:40:     return 1 - shift;
	mov.w	r0, 1	# tmp41,
	ld.w	r1, [r13 + (-8)]	# tmp42, shift
	sub.w	r0, r1 #222	# _12, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:41: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	normalize, .-normalize
	.p2align	1
	.global	wideLeftShift
	.type	wideLeftShift, @function
wideLeftShift:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:45:     *hi = *hi << count | *lo >> (typeWidth - count);
	ld.w	r0, [r13 + (8)]	# tmp35, hi
	ld.w	r1, [r0]	# _1, *hi_11(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:45:     *hi = *hi << count | *lo >> (typeWidth - count);
	ld.w	r0, [r13 + (16)]	# tmp36, count
	shl.w	r1, r0	# _2, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:45:     *hi = *hi << count | *lo >> (typeWidth - count);
	ld.w	r0, [r13 + (12)]	# tmp37, lo
	ld.w	r0, [r0]	# _3, *lo_13(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:45:     *hi = *hi << count | *lo >> (typeWidth - count);
	ld.w	r3, [r13 + (16)]	# count.1_4, count
	mov.w	r2, 32	# tmp38,
	sub.w	r2, r3 #222	# _5, count.1_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:45:     *hi = *hi << count | *lo >> (typeWidth - count);
	shr.w	r0, r2	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:45:     *hi = *hi << count | *lo >> (typeWidth - count);
	or.w	r1, r0	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:45:     *hi = *hi << count | *lo >> (typeWidth - count);
	ld.w	r0, [r13 + (8)]	# tmp39, hi
	st.w	[r0], r1	# *hi_11(D), _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:46:     *lo = *lo << count;
	ld.w	r0, [r13 + (12)]	# tmp40, lo
	ld.w	r1, [r0]	# _8, *lo_13(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:46:     *lo = *lo << count;
	ld.w	r0, [r13 + (16)]	# tmp41, count
	shl.w	r1, r0	# _9, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:46:     *lo = *lo << count;
	ld.w	r0, [r13 + (12)]	# tmp42, lo
	st.w	[r0], r1	# *lo_13(D), _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:47: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	wideLeftShift, .-wideLeftShift
	.p2align	1
	.global	wideRightShiftWithSticky
	.type	wideRightShiftWithSticky, @function
wideRightShiftWithSticky:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:51:     if (count < typeWidth) {
	ld.w	r1, [r13 + (16)]	# tmp56, count
	mov.w	r0, 31	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jg	.L18		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:52:         int sticky = (*lo << (typeWidth - count)) != 0;
	ld.w	r0, [r13 + (12)]	# tmp58, lo
	ld.w	r0, [r0]	# _1, *lo_35(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:52:         int sticky = (*lo << (typeWidth - count)) != 0;
	mov.w	r1, 32	# tmp59,
	ld.w	r2, [r13 + (16)]	# tmp60, count
	sub.w	r1, r2 #222	# _2, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:52:         int sticky = (*lo << (typeWidth - count)) != 0;
	shl.w	r0, r1	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:52:         int sticky = (*lo << (typeWidth - count)) != 0;
	mov.w	r1, r0	# tmp61, _3
neg.w	r1	# tmp61
	mov.w	r2, r1	# tmp62, tmp61
	or.w	r2, r0	# tmp62, _3
	mov.w	r1, 31	# tmp64,
	mov.w	r0, r2	# tmp63, tmp62
	shr.w	r0, r1	# tmp63, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:52:         int sticky = (*lo << (typeWidth - count)) != 0;
	zex.b	r0, r0	# tmp65, _4
	st.w	[r13 + (-12)], r0	# sticky, tmp65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	ld.w	r0, [r13 + (8)]	# tmp66, hi
	ld.w	r1, [r0]	# _5, *hi_34(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	mov.w	r0, 32	# tmp67,
	ld.w	r2, [r13 + (16)]	# tmp68, count
	sub.w	r0, r2 #222	# _6, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	shl.w	r1, r0	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	ld.w	r0, [r13 + (12)]	# tmp69, lo
	ld.w	r0, [r0]	# _8, *lo_35(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	ld.w	r2, [r13 + (16)]	# tmp70, count
	shr.w	r0, r2	# _9, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	or.w	r1, r0	# _10, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	ld.w	r0, [r13 + (-12)]	# sticky.2_11, sticky
	or.w	r1, r0	# _12, sticky.2_11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:53:         *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
	ld.w	r0, [r13 + (12)]	# tmp71, lo
	st.w	[r0], r1	# *lo_35(D), _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:54:         *hi = *hi >> count;
	ld.w	r0, [r13 + (8)]	# tmp72, hi
	ld.w	r1, [r0]	# _13, *hi_34(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:54:         *hi = *hi >> count;
	ld.w	r0, [r13 + (16)]	# tmp73, count
	shr.w	r1, r0	# _14, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:54:         *hi = *hi >> count;
	ld.w	r0, [r13 + (8)]	# tmp74, hi
	st.w	[r0], r1	# *hi_34(D), _14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:65: } 
	j	.L21		#
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:56:     else if (count < 2*typeWidth) {
	ld.w	r1, [r13 + (16)]	# tmp75, count
	mov.w	r0, 63	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jg	.L20		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:57:         int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
	ld.w	r0, [r13 + (8)]	# tmp77, hi
	ld.w	r0, [r0]	# _15, *hi_34(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:57:         int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
	mov.w	r1, 64	# tmp78,
	ld.w	r2, [r13 + (16)]	# tmp79, count
	sub.w	r1, r2 #222	# _16, tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:57:         int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
	shl.w	r0, r1	# _17, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:57:         int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
	ld.w	r1, [r13 + (12)]	# tmp80, lo
	ld.w	r1, [r1]	# _18, *lo_35(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:57:         int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
	or.w	r0, r1	# _19, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:57:         int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
	mov.w	r1, r0	# tmp81, _19
neg.w	r1	# tmp81
	mov.w	r2, r1	# tmp82, tmp81
	or.w	r2, r0	# tmp82, _19
	mov.w	r1, 31	# tmp84,
	mov.w	r0, r2	# tmp83, tmp82
	shr.w	r0, r1	# tmp83, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:57:         int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
	zex.b	r0, r0	# tmp85, _20
	st.w	[r13 + (-8)], r0	# sticky, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:58:         *lo = *hi >> (count - typeWidth) | sticky;
	ld.w	r0, [r13 + (8)]	# tmp86, hi
	ld.w	r1, [r0]	# _21, *hi_34(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:58:         *lo = *hi >> (count - typeWidth) | sticky;
	ld.w	r0, [r13 + (16)]	# tmp87, count
	add.w	r0, -32 #111	# _22,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:58:         *lo = *hi >> (count - typeWidth) | sticky;
	shr.w	r1, r0	# _23, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:58:         *lo = *hi >> (count - typeWidth) | sticky;
	ld.w	r0, [r13 + (-8)]	# sticky.3_24, sticky
	or.w	r1, r0	# _25, sticky.3_24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:58:         *lo = *hi >> (count - typeWidth) | sticky;
	ld.w	r0, [r13 + (12)]	# tmp88, lo
	st.w	[r0], r1	# *lo_35(D), _25
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:59:         *hi = 0;
	ld.w	r0, [r13 + (8)]	# tmp89, hi
	xor.w	r1, r1	# tmp90
	st.w	[r0], r1	# *hi_34(D), tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:65: } 
	j	.L21		#
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:61:         int sticky = (*hi | *lo) != 0;
	ld.w	r0, [r13 + (8)]	# tmp91, hi
	ld.w	r0, [r0]	# _26, *hi_34(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:61:         int sticky = (*hi | *lo) != 0;
	ld.w	r1, [r13 + (12)]	# tmp92, lo
	ld.w	r1, [r1]	# _27, *lo_35(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:61:         int sticky = (*hi | *lo) != 0;
	or.w	r0, r1	# _28, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:61:         int sticky = (*hi | *lo) != 0;
	mov.w	r1, r0	# tmp93, _28
neg.w	r1	# tmp93
	mov.w	r2, r1	# tmp94, tmp93
	or.w	r2, r0	# tmp94, _28
	mov.w	r1, 31	# tmp96,
	mov.w	r0, r2	# tmp95, tmp94
	shr.w	r0, r1	# tmp95, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:61:         int sticky = (*hi | *lo) != 0;
	zex.b	r0, r0	# tmp97, _29
	st.w	[r13 + (-4)], r0	# sticky, tmp97
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:62:         *lo = sticky;
	ld.w	r1, [r13 + (-4)]	# sticky.4_30, sticky
	ld.w	r0, [r13 + (12)]	# tmp98, lo
	st.w	[r0], r1	# *lo_35(D), sticky.4_30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:63:         *hi = 0;
	ld.w	r0, [r13 + (8)]	# tmp99, hi
	xor.w	r1, r1	# tmp100
	st.w	[r0], r1	# *hi_34(D), tmp100
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:65: } 
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	wideRightShiftWithSticky, .-wideRightShiftWithSticky
	.p2align	1
	.global	__addsf3
	.type	__addsf3, @function
__addsf3:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:69: 	asm(
# 69 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c" 1
	ld.w r0, [r13 + (8)]
push r1
ld.w r1, [r13 + (12)]
fadd r0, r1
pop r1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:72: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__addsf3, .-__addsf3
	.p2align	1
	.global	__subsf3
	.type	__subsf3, @function
__subsf3:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:76: 	asm(
# 76 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c" 1
	ld.w r0, [r13 + (8)]
push r1
ld.w r1, [r13 + (12)]
fsub r0, r1
pop r1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:79: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__subsf3, .-__subsf3
	.p2align	1
	.global	__mulsf3
	.type	__mulsf3, @function
__mulsf3:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:83: 	asm(
# 83 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c" 1
	ld.w r0, [r13 + (8)]
push r1
ld.w r1, [r13 + (12)]
fmul r0, r1
pop r1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:86: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__mulsf3, .-__mulsf3
	.p2align	1
	.global	__divsf3
	.type	__divsf3, @function
__divsf3:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:90: 	asm(
# 90 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c" 1
	ld.w r0, [r13 + (8)]
push r1
ld.w r1, [r13 + (12)]
fdiv r0, r1
pop r1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:93: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__divsf3, .-__divsf3
	.p2align	1
	.global	__lesf2
	.type	__lesf2, @function
__lesf2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:104:     const srep_t aInt = toRep(a);
	mov.w	r1, sp	# tmp34,
	ld.w	r0, [r13 + (8)]	# tmp35, a
	st.w	[r1], r0	#, tmp35
	call	toRep		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:104:     const srep_t aInt = toRep(a);
	st.w	[r13 + (-4)], r0	# aInt, _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:105:     const srep_t bInt = toRep(b);
	mov.w	r1, sp	# tmp36,
	ld.w	r0, [r13 + (12)]	# tmp37, b
	st.w	[r1], r0	#, tmp37
	call	toRep		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:105:     const srep_t bInt = toRep(b);
	st.w	[r13 + (-8)], r0	# bInt, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:106:     const rep_t aAbs = aInt & absMask;
	ld.w	r0, [r13 + (-4)]	# aInt.5_3, aInt
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:106:     const rep_t aAbs = aInt & absMask;
	mov.w	r1, 2147483647	# tmp39,
	and.w	r0, r1	# tmp38, tmp39
	st.w	[r13 + (-12)], r0	# aAbs, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:107:     const rep_t bAbs = bInt & absMask;
	ld.w	r0, [r13 + (-8)]	# bInt.6_4, bInt
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:107:     const rep_t bAbs = bInt & absMask;
	mov.w	r1, 2147483647	# tmp41,
	and.w	r0, r1	# tmp40, tmp41
	st.w	[r13 + (-16)], r0	# bAbs, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:110:     if (aAbs > infRep || bAbs > infRep) return LE_UNORDERED;
	ld.w	r1, [r13 + (-12)]	# tmp42, aAbs
	mov.w	r0, 2139095040	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jg	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:110:     if (aAbs > infRep || bAbs > infRep) return LE_UNORDERED;
	ld.w	r1, [r13 + (-16)]	# tmp44, bAbs
	mov.w	r0, 2139095040	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jse	.L28		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:110:     if (aAbs > infRep || bAbs > infRep) return LE_UNORDERED;
	mov.w	r0, 1	# _7,
	j	.L29		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:113:     if ((aAbs | bAbs) == 0) return LE_EQUAL;
	ld.w	r1, [r13 + (-12)]	# tmp46, aAbs
	ld.w	r0, [r13 + (-16)]	# tmp47, bAbs
	or.w	r1, r0	# _5, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:113:     if ((aAbs | bAbs) == 0) return LE_EQUAL;
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# _5, tmp48
	jnz	.L30		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:113:     if ((aAbs | bAbs) == 0) return LE_EQUAL;
	xor.w	r0, r0	# _7
	j	.L29		#
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:117:     if ((aInt & bInt) >= 0) {
	ld.w	r1, [r13 + (-4)]	# tmp49, aInt
	ld.w	r0, [r13 + (-8)]	# tmp50, bInt
	and.w	r1, r0	# _6, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:117:     if ((aInt & bInt) >= 0) {
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# _6, tmp51
	jss	.L31		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:118:         if (aInt < bInt) return LE_LESS;
	ld.w	r1, [r13 + (-4)]	# tmp52, aInt
	ld.w	r0, [r13 + (-8)]	# tmp53, bInt
	cmp.w	r1, r0	# tmp52, tmp53
	jges	.L32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:118:         if (aInt < bInt) return LE_LESS;
	mov.w	r0, -1	# _7,
	j	.L29		#
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:119:         else if (aInt == bInt) return LE_EQUAL;
	ld.w	r1, [r13 + (-4)]	# tmp54, aInt
	ld.w	r0, [r13 + (-8)]	# tmp55, bInt
	cmp.w	r1, r0	# tmp54, tmp55
	jnz	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:119:         else if (aInt == bInt) return LE_EQUAL;
	xor.w	r0, r0	# _7
	j	.L29		#
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:120:         else return LE_GREATER;
	mov.w	r0, 1	# _7,
	j	.L29		#
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:128:         if (aInt > bInt) return LE_LESS;
	ld.w	r1, [r13 + (-4)]	# tmp56, aInt
	ld.w	r0, [r13 + (-8)]	# tmp57, bInt
	cmp.w	r1, r0	# tmp56, tmp57
	jses	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:128:         if (aInt > bInt) return LE_LESS;
	mov.w	r0, -1	# _7,
	j	.L29		#
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:129:         else if (aInt == bInt) return LE_EQUAL;
	ld.w	r1, [r13 + (-4)]	# tmp58, aInt
	ld.w	r0, [r13 + (-8)]	# tmp59, bInt
	cmp.w	r1, r0	# tmp58, tmp59
	jnz	.L35		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:129:         else if (aInt == bInt) return LE_EQUAL;
	xor.w	r0, r0	# _7
	j	.L29		#
.L35:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:130:         else return LE_GREATER;
	mov.w	r0, 1	# _7,
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:132: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__lesf2, .-__lesf2
	.p2align	1
	.global	__gesf2
	.type	__gesf2, @function
__gesf2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:143:     const srep_t aInt = toRep(a);
	mov.w	r1, sp	# tmp34,
	ld.w	r0, [r13 + (8)]	# tmp35, a
	st.w	[r1], r0	#, tmp35
	call	toRep		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:143:     const srep_t aInt = toRep(a);
	st.w	[r13 + (-4)], r0	# aInt, _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:144:     const srep_t bInt = toRep(b);
	mov.w	r1, sp	# tmp36,
	ld.w	r0, [r13 + (12)]	# tmp37, b
	st.w	[r1], r0	#, tmp37
	call	toRep		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:144:     const srep_t bInt = toRep(b);
	st.w	[r13 + (-8)], r0	# bInt, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:145:     const rep_t aAbs = aInt & absMask;
	ld.w	r0, [r13 + (-4)]	# aInt.7_3, aInt
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:145:     const rep_t aAbs = aInt & absMask;
	mov.w	r1, 2147483647	# tmp39,
	and.w	r0, r1	# tmp38, tmp39
	st.w	[r13 + (-12)], r0	# aAbs, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:146:     const rep_t bAbs = bInt & absMask;
	ld.w	r0, [r13 + (-8)]	# bInt.8_4, bInt
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:146:     const rep_t bAbs = bInt & absMask;
	mov.w	r1, 2147483647	# tmp41,
	and.w	r0, r1	# tmp40, tmp41
	st.w	[r13 + (-16)], r0	# bAbs, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:148:     if (aAbs > infRep || bAbs > infRep) return GE_UNORDERED;
	ld.w	r1, [r13 + (-12)]	# tmp42, aAbs
	mov.w	r0, 2139095040	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jg	.L37		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:148:     if (aAbs > infRep || bAbs > infRep) return GE_UNORDERED;
	ld.w	r1, [r13 + (-16)]	# tmp44, bAbs
	mov.w	r0, 2139095040	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jse	.L38		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:148:     if (aAbs > infRep || bAbs > infRep) return GE_UNORDERED;
	mov.w	r0, -1	# _7,
	j	.L39		#
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:149:     if ((aAbs | bAbs) == 0) return GE_EQUAL;
	ld.w	r1, [r13 + (-12)]	# tmp46, aAbs
	ld.w	r0, [r13 + (-16)]	# tmp47, bAbs
	or.w	r1, r0	# _5, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:149:     if ((aAbs | bAbs) == 0) return GE_EQUAL;
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# _5, tmp48
	jnz	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:149:     if ((aAbs | bAbs) == 0) return GE_EQUAL;
	xor.w	r0, r0	# _7
	j	.L39		#
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:150:     if ((aInt & bInt) >= 0) {
	ld.w	r1, [r13 + (-4)]	# tmp49, aInt
	ld.w	r0, [r13 + (-8)]	# tmp50, bInt
	and.w	r1, r0	# _6, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:150:     if ((aInt & bInt) >= 0) {
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# _6, tmp51
	jss	.L41		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:151:         if (aInt < bInt) return GE_LESS;
	ld.w	r1, [r13 + (-4)]	# tmp52, aInt
	ld.w	r0, [r13 + (-8)]	# tmp53, bInt
	cmp.w	r1, r0	# tmp52, tmp53
	jges	.L42		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:151:         if (aInt < bInt) return GE_LESS;
	mov.w	r0, -1	# _7,
	j	.L39		#
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:152:         else if (aInt == bInt) return GE_EQUAL;
	ld.w	r1, [r13 + (-4)]	# tmp54, aInt
	ld.w	r0, [r13 + (-8)]	# tmp55, bInt
	cmp.w	r1, r0	# tmp54, tmp55
	jnz	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:152:         else if (aInt == bInt) return GE_EQUAL;
	xor.w	r0, r0	# _7
	j	.L39		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:153:         else return GE_GREATER;
	mov.w	r0, 1	# _7,
	j	.L39		#
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:155:         if (aInt > bInt) return GE_LESS;
	ld.w	r1, [r13 + (-4)]	# tmp56, aInt
	ld.w	r0, [r13 + (-8)]	# tmp57, bInt
	cmp.w	r1, r0	# tmp56, tmp57
	jses	.L44		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:155:         if (aInt > bInt) return GE_LESS;
	mov.w	r0, -1	# _7,
	j	.L39		#
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:156:         else if (aInt == bInt) return GE_EQUAL;
	ld.w	r1, [r13 + (-4)]	# tmp58, aInt
	ld.w	r0, [r13 + (-8)]	# tmp59, bInt
	cmp.w	r1, r0	# tmp58, tmp59
	jnz	.L45		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:156:         else if (aInt == bInt) return GE_EQUAL;
	xor.w	r0, r0	# _7
	j	.L39		#
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:157:         else return GE_GREATER;
	mov.w	r0, 1	# _7,
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:159: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__gesf2, .-__gesf2
	.p2align	1
	.global	__unordsf2
	.type	__unordsf2, @function
__unordsf2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:163:     const rep_t aAbs = toRep(a) & absMask;
	mov.w	r1, sp	# tmp30,
	ld.w	r0, [r13 + (8)]	# tmp31, a
	st.w	[r1], r0	#, tmp31
	call	toRep		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:163:     const rep_t aAbs = toRep(a) & absMask;
	mov.w	r1, 2147483647	# tmp33,
	and.w	r0, r1	# tmp32, tmp33
	st.w	[r13 + (-4)], r0	# aAbs, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:164:     const rep_t bAbs = toRep(b) & absMask;
	mov.w	r1, sp	# tmp34,
	ld.w	r0, [r13 + (12)]	# tmp35, b
	st.w	[r1], r0	#, tmp35
	call	toRep		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:164:     const rep_t bAbs = toRep(b) & absMask;
	mov.w	r1, 2147483647	# tmp37,
	and.w	r0, r1	# tmp36, tmp37
	st.w	[r13 + (-8)], r0	# bAbs, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:165:     return aAbs > infRep || bAbs > infRep;
	ld.w	r1, [r13 + (-4)]	# tmp38, aAbs
	mov.w	r0, 2139095040	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jg	.L47		#
	ld.w	r1, [r13 + (-8)]	# tmp40, bAbs
	mov.w	r0, 2139095040	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jse	.L48		#
.L47:
	mov.w	r0, 1	# iftmp.9_3,
	j	.L50		#
.L48:
	xor.w	r0, r0	# iftmp.9_3
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:166: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__unordsf2, .-__unordsf2
	.p2align	1
	.global	__eqsf2
	.type	__eqsf2, @function
__eqsf2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:173:     return __lesf2(a, b);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (12)]	# tmp29, b
	st.w	[r0 + (4)], r1	#, tmp29
	ld.w	r1, [r13 + (8)]	# tmp30, a
	st.w	[r0], r1	#, tmp30
	call	__lesf2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:174: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__eqsf2, .-__eqsf2
	.p2align	1
	.global	__ltsf2
	.type	__ltsf2, @function
__ltsf2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:179:     return __lesf2(a, b);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (12)]	# tmp29, b
	st.w	[r0 + (4)], r1	#, tmp29
	ld.w	r1, [r13 + (8)]	# tmp30, a
	st.w	[r0], r1	#, tmp30
	call	__lesf2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:180: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__ltsf2, .-__ltsf2
	.p2align	1
	.global	__nesf2
	.type	__nesf2, @function
__nesf2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:185:     return __lesf2(a, b);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (12)]	# tmp29, b
	st.w	[r0 + (4)], r1	#, tmp29
	ld.w	r1, [r13 + (8)]	# tmp30, a
	st.w	[r0], r1	#, tmp30
	call	__lesf2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:186: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__nesf2, .-__nesf2
	.p2align	1
	.global	__gtsf2
	.type	__gtsf2, @function
__gtsf2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:191:     return __gesf2(a, b);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (12)]	# tmp29, b
	st.w	[r0 + (4)], r1	#, tmp29
	ld.w	r1, [r13 + (8)]	# tmp30, a
	st.w	[r0], r1	#, tmp30
	call	__gesf2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:192: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__gtsf2, .-__gtsf2
	.p2align	1
	.global	__extendsfdf2
	.type	__extendsfdf2, @function
__extendsfdf2:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:197: 	asm(
# 197 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c" 1
	ld.w r0, [r13 + (8)]
ld.w r1, [r13 + (8)]

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:201: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__extendsfdf2, .-__extendsfdf2
	.p2align	1
	.global	__floatsisf
	.type	__floatsisf, @function
__floatsisf:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 52 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:206:     const int aWidth = sizeof a * 8;
	mov.w	r0, 32	# tmp43,
	st.w	[r13 + (-16)], r0	# aWidth, tmp43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:209:     if (a == 0)
	ld.w	r1, [r13 + (8)]	# tmp44, a
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L61		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:210:         return fromRep(0);
	mov.w	r1, sp	# tmp46,
	xor.w	r0, r0	# tmp47
	st.w	[r1], r0	#, tmp47
	call	fromRep		#
	mov.w	r1, r0	# _20,
	j	.L62		#
.L61:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:213:     rep_t sign = 0;
	xor.w	r0, r0	# tmp48
	st.w	[r13 + (-8)], r0	# sign, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:214:     if (a < 0) {
	ld.w	r1, [r13 + (8)]	# tmp49, a
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# tmp49, tmp50
	jges	.L63		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:215:         sign = signBit;
	mov.w	r0, -2147483648	# tmp51,
	st.w	[r13 + (-8)], r0	# sign, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:216:         a = -a;
	ld.w	r0, [r13 + (8)]	# tmp53, a
	mov.w	r0, r0	# tmp52, tmp53
neg.w	r0	# tmp52
	st.w	[r13 + (8)], r0	# a, tmp52
.L63:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:220:     const int exponent = (aWidth - 1) - __clzsi2(a);
	ld.w	r0, [r13 + (-16)]	# tmp54, aWidth
	mov.w	r6, r0	# _1, tmp54
	add.w	r6, -1 #111	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:220:     const int exponent = (aWidth - 1) - __clzsi2(a);
	ld.w	r0, [r13 + (8)]	# a.10_2, a
	mov.w	r1, sp	# tmp55,
	st.w	[r1], r0	#, a.10_2
	call	__clzsi2		#
	mov.w	r1, r0	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:220:     const int exponent = (aWidth - 1) - __clzsi2(a);
	mov.w	r0, r6	# tmp56, _1
	sub.w	r0, r1 #222	# tmp56, _3
	st.w	[r13 + (-20)], r0	# exponent, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:224:     if (exponent <= significandBits) {
	ld.w	r1, [r13 + (-20)]	# tmp57, exponent
	mov.w	r0, 23	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jgs	.L64		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:225:         const int shift = significandBits - exponent;
	mov.w	r0, 23	# tmp60,
	ld.w	r1, [r13 + (-20)]	# tmp61, exponent
	sub.w	r0, r1 #222	# tmp59, tmp61
	st.w	[r13 + (-32)], r0	# shift, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:226:         result = (rep_t)a << shift ^ implicitBit;
	ld.w	r0, [r13 + (8)]	# a.11_4, a
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:226:         result = (rep_t)a << shift ^ implicitBit;
	ld.w	r1, [r13 + (-32)]	# tmp62, shift
	shl.w	r0, r1	# _5, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:226:         result = (rep_t)a << shift ^ implicitBit;
	mov.w	r1, 8388608	# tmp64,
	xor.w	r0, r1	# tmp63, tmp64
	st.w	[r13 + (-12)], r0	# result, tmp63
	j	.L65		#
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:228:         const int shift = exponent - significandBits;
	ld.w	r0, [r13 + (-20)]	# tmp66, exponent
	add.w	r0, -23 #111	# tmp65,
	st.w	[r13 + (-24)], r0	# shift, tmp65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:229:         result = (rep_t)a >> shift ^ implicitBit;
	ld.w	r0, [r13 + (8)]	# a.12_6, a
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:229:         result = (rep_t)a >> shift ^ implicitBit;
	ld.w	r1, [r13 + (-24)]	# tmp67, shift
	shr.w	r0, r1	# _7, tmp67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:229:         result = (rep_t)a >> shift ^ implicitBit;
	mov.w	r1, 8388608	# tmp69,
	xor.w	r0, r1	# tmp68, tmp69
	st.w	[r13 + (-12)], r0	# result, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:230:         rep_t round = (rep_t)a << (typeWidth - shift);
	ld.w	r0, [r13 + (8)]	# a.13_8, a
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:230:         rep_t round = (rep_t)a << (typeWidth - shift);
	ld.w	r2, [r13 + (-24)]	# shift.14_9, shift
	mov.w	r1, 32	# tmp70,
	sub.w	r1, r2 #222	# _10, shift.14_9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:230:         rep_t round = (rep_t)a << (typeWidth - shift);
	shl.w	r0, r1	# tmp71, _10
	st.w	[r13 + (-28)], r0	# round, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:231:         if (round > signBit) result++;
	ld.w	r1, [r13 + (-28)]	# tmp72, round
	mov.w	r0, -2147483648	# tmp73,
	cmp.w	r1, r0	# tmp72, tmp73
	jse	.L66		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:231:         if (round > signBit) result++;
	ld.w	r0, [r13 + (-12)]	# tmp75, result
	add.w	r0, 1 #111	# tmp74,
	st.w	[r13 + (-12)], r0	# result, tmp74
.L66:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:232:         if (round == signBit) result += result & 1;
	ld.w	r1, [r13 + (-28)]	# tmp76, round
	mov.w	r0, -2147483648	# tmp77,
	cmp.w	r1, r0	# tmp76, tmp77
	jnz	.L65		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:232:         if (round == signBit) result += result & 1;
	ld.w	r0, [r13 + (-12)]	# tmp78, result
	add.w	r0, 1 #111	# _11,
	mov.w	r1, -2	# tmp80,
	and.w	r0, r1	# tmp79, tmp80
	st.w	[r13 + (-12)], r0	# result, tmp79
.L65:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:236:     result += (rep_t)(exponent + exponentBias) << significandBits;
	ld.w	r0, [r13 + (-20)]	# tmp81, exponent
	add.w	r0, 127 #111	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:236:     result += (rep_t)(exponent + exponentBias) << significandBits;
	mov.w	r1, r0	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:236:     result += (rep_t)(exponent + exponentBias) << significandBits;
	mov.w	r0, 23	# tmp82,
	shl.w	r1, r0	# _14, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:236:     result += (rep_t)(exponent + exponentBias) << significandBits;
	ld.w	r0, [r13 + (-12)]	# tmp84, result
	add.w	r0, r1 #222	# tmp83, _14
	st.w	[r13 + (-12)], r0	# result, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:238:     return fromRep(result | sign);
	ld.w	r0, [r13 + (-12)]	# tmp85, result
	ld.w	r1, [r13 + (-8)]	# tmp86, sign
	or.w	r0, r1	# _15, tmp86
	mov.w	r1, sp	# tmp87,
	st.w	[r1], r0	#, _15
	call	fromRep		#
	mov.w	r1, r0	# _20,
.L62:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:239: } 
	mov.w	r0, r1	# <retval>, _20
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__floatsisf, .-__floatsisf
	.global	one
	.data
	.p2align	2
	.type	one, @object
	.size	one, 4
one:
	.long	1065353216
	.global	__subsf3
	.global	__mulsf3
	.text
	.p2align	1
	.global	__modf
	.type	__modf, @function
__modf:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	push	r8		#
	push	r9		#
	sub.w	sp, 56 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:247:         EXTRACT_WORDS32(i0, x);
	ld.w	r0, [r13 + (8)]	# tmp50, x
	st.w	[r13 + (-32)], r0	# gh_u.value, tmp50
	ld.w	r0, [r13 + (-32)]	# _1, gh_u.word
	st.w	[r13 + (-20)], r0	# i0, _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:248:         j0 = ((i0 >> 23) & 0x0ff) - 127;        /* exponent of x */
	ld.w	r0, [r13 + (-20)]	# tmp51, i0
	mov.w	r1, 23	# tmp52,
	shr.w	r0, r1	# _2, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:248:         j0 = ((i0 >> 23) & 0x0ff) - 127;        /* exponent of x */
	mov.w	r1, 255	# tmp53,
	and.w	r0, r1	# _3, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:248:         j0 = ((i0 >> 23) & 0x0ff) - 127;        /* exponent of x */
	add.w	r0, -127 #111	# tmp54,
	st.w	[r13 + (-24)], r0	# j0, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:249:         if (j0 < 23) {                        /* integer part in x */
	ld.w	r1, [r13 + (-24)]	# tmp55, j0
	mov.w	r0, 22	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jgs	.L68		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:250:             if(j0 < 0) {                        /* |x|<1 */
	ld.w	r1, [r13 + (-24)]	# tmp57, j0
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jges	.L69		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:252:                 INSERT_WORDS32(*iptr, i0 & UINT32_C(0x80000000));
	ld.w	r0, [r13 + (-20)]	# i0.15_4, i0
	mov.w	r1, -2147483648	# tmp59,
	and.w	r0, r1	# _5, tmp59
	st.w	[r13 + (-36)], r0	# iw_u.word, _5
	ld.w	r1, [r13 + (-36)]	# _6, iw_u
	ld.w	r0, [r13 + (12)]	# tmp60, iptr
	st.w	[r0], r1	# *iptr_31(D), tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:253:                 return x;
	ld.w	r0, [r13 + (8)]	# _23, x
	j	.L70		#
.L69:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:255:                 uint32_t i = UINT32_C(0x007fffff) >> j0;
	mov.w	r0, 8388607	# tmp63,
	ld.w	r1, [r13 + (-24)]	# tmp64, j0
	shr.w	r0, r1	# tmp62, tmp64
	st.w	[r13 + (-28)], r0	# i, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:256:                 if((i0 & i) == 0) {                /* x is integral */
	ld.w	r1, [r13 + (-20)]	# i0.16_7, i0
	ld.w	r0, [r13 + (-28)]	# tmp65, i
	and.w	r1, r0	# _8, tmp65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:256:                 if((i0 & i) == 0) {                /* x is integral */
	xor.w	r0, r0	# tmp66
	cmp.w	r1, r0	# _8, tmp66
	jnz	.L71		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:257:                     *iptr = x;
	ld.w	r0, [r13 + (12)]	# tmp67, iptr
	ld.w	r1, [r13 + (8)]	# tmp68, x
	st.w	[r0], r1	# *iptr_31(D), tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:259:                     INSERT_WORDS32(x, i0 & UINT32_C(0x80000000));
	ld.w	r0, [r13 + (-20)]	# i0.17_9, i0
	mov.w	r1, -2147483648	# tmp69,
	and.w	r0, r1	# _10, tmp69
	st.w	[r13 + (-40)], r0	# iw_u.word, _10
	ld.w	r0, [r13 + (-40)]	# tmp70, iw_u
	st.w	[r13 + (8)], r0	# x, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:260:                     return x;
	ld.w	r0, [r13 + (8)]	# _23, x
	j	.L70		#
.L71:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:262:                     INSERT_WORDS32(*iptr, i0 & (~i));
	ld.w	r0, [r13 + (-28)]	# tmp71, i
	mov.w	r0, r0	# _11, tmp71
inv.w	r0	# _11
	ld.w	r1, [r13 + (-20)]	# i0.18_12, i0
	and.w	r0, r1	# _13, i0.18_12
	st.w	[r13 + (-44)], r0	# iw_u.word, _13
	ld.w	r1, [r13 + (-44)]	# _14, iw_u
	ld.w	r0, [r13 + (12)]	# tmp72, iptr
	st.w	[r0], r1	# *iptr_31(D), tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:263:                     return x - *iptr;
	ld.w	r1, [r13 + (12)]	# tmp74, iptr
	ld.w	r0, [r1]	# _15, *iptr_31(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:263:                     return x - *iptr;
	st.w	[sp + (4)], r0	#, tmp75
	ld.w	r0, [r13 + (8)]	# tmp76, x
	st.w	[sp], r0	#, tmp76
	call	__subsf3		#
	mov.w	r1, r0	# tmp77,
	mov.w	r0, r1	# _23, tmp77
	j	.L70		#
.L68:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:267:             *iptr = x*one;
	ld.w	r0, [one]	# one.19_16, one
	ld.w	r1, [r13 + (8)]	# tmp78, x
	st.w	[sp + (4)], r1	#, tmp78
	st.w	[sp], r0	#, tmp79
	call	__mulsf3		#
	mov.w	r2, r0	# tmp80,
	mov.w	r1, r2	# _17, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:267:             *iptr = x*one;
	ld.w	r0, [r13 + (12)]	# tmp81, iptr
	st.w	[r0], r1	# *iptr_31(D), tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:269:             if (j0 == 0x400 && (i0 & UINT32_C(0xfffffffffffff)))
	ld.w	r1, [r13 + (-24)]	# tmp83, j0
	mov.w	r0, 1024	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jnz	.L72		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:269:             if (j0 == 0x400 && (i0 & UINT32_C(0xfffffffffffff)))
	ld.w	r0, [r13 + (-20)]	# tmp85, i0
	mov.w	r9, r0	# _18, tmp85
	mov.w	r1, 31	# tmp87,
	shr.w	r0, r1	# tmp86, tmp87
	mov.w	r8, r0	# _18, tmp86
	mov.w	r0, 1048575	# tmp88,
	mov.w	r6, r8	#,
	and.w	r6, r0	#, tmp88
	mov.w	r0, -1	# tmp89,
	mov.w	r7, r9	#,
	and.w	r7, r0	#, tmp89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:269:             if (j0 == 0x400 && (i0 & UINT32_C(0xfffffffffffff)))
	mov.w	r0, r6	# tmp90, _19
	or.w	r0, r7	# tmp90, _19
	xor.w	r1, r1	# tmp91
	cmp.w	r0, r1	# tmp90, tmp91
	jz	.L72		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:270:               return x*one;
	ld.w	r0, [one]	# one.20_20, one
	ld.w	r1, [r13 + (8)]	# tmp92, x
	st.w	[sp + (4)], r1	#, tmp92
	st.w	[sp], r0	#, tmp93
	call	__mulsf3		#
	mov.w	r1, r0	# tmp94,
	mov.w	r0, r1	# _23, tmp94
	j	.L70		#
.L72:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:271:             INSERT_WORDS32(x, i0 & UINT32_C(0x80000000));        /* return +-0 */
	ld.w	r0, [r13 + (-20)]	# i0.21_21, i0
	mov.w	r1, -2147483648	# tmp95,
	and.w	r0, r1	# _22, tmp95
	st.w	[r13 + (-48)], r0	# iw_u.word, _22
	ld.w	r0, [r13 + (-48)]	# tmp96, iw_u
	st.w	[r13 + (8)], r0	# x, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:272:             return x;
	ld.w	r0, [r13 + (8)]	# _23, x
.L70:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:274: }
	mov.w	r1, r0	# <retval>, _23
	mov.w	r0, r1	#, <retval>
	mov.w	r12, r13	#,
	sub.w	r12, 16 #111	#,
	pop	r9		#
	pop	r8		#
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__modf, .-__modf
	.p2align	1
	.global	__fixsfsi
	.type	__fixsfsi, @function
__fixsfsi:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:280:     fb.f = a;
	ld.w	r0, [r13 + (8)]	# tmp39, a
	st.w	[r13 + (-12)], r0	# fb.f, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:282:     int e = ((fb.u & 0x7F800000) >> 23) - 127;
	ld.w	r0, [r13 + (-12)]	# _1, fb.u
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:282:     int e = ((fb.u & 0x7F800000) >> 23) - 127;
	mov.w	r1, 23	# tmp40,
	shr.w	r0, r1	# _2, tmp40
	mov.w	r1, 255	# tmp41,
	and.w	r0, r1	# _3, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:282:     int e = ((fb.u & 0x7F800000) >> 23) - 127;
	add.w	r0, -127 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:282:     int e = ((fb.u & 0x7F800000) >> 23) - 127;
	st.w	[r13 + (-8)], r0	# e, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:283:     if (e < 0)
	ld.w	r1, [r13 + (-8)]	# tmp42, e
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jges	.L75		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:284:         return 0;
	xor.w	r0, r0	# _13
	j	.L80		#
.L75:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:286:     rep_t r = (fb.u & 0x007FFFFF) | 0x00800000;
	ld.w	r0, [r13 + (-12)]	# _5, fb.u
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:286:     rep_t r = (fb.u & 0x007FFFFF) | 0x00800000;
	mov.w	r1, 8388607	# tmp44,
	and.w	r0, r1	# _6, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:286:     rep_t r = (fb.u & 0x007FFFFF) | 0x00800000;
	mov.w	r1, 8388608	# tmp46,
	or.w	r0, r1	# tmp45, tmp46
	st.w	[r13 + (-4)], r0	# r, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:287:     if (e > 23)
	ld.w	r1, [r13 + (-8)]	# tmp47, e
	mov.w	r0, 23	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jses	.L77		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:288:         r <<= (e - 23);
	ld.w	r0, [r13 + (-8)]	# tmp49, e
	mov.w	r1, r0	# _7, tmp49
	add.w	r1, -23 #111	# _7,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:288:         r <<= (e - 23);
	ld.w	r0, [r13 + (-4)]	# tmp51, r
	shl.w	r0, r1	# tmp50, _7
	st.w	[r13 + (-4)], r0	# r, tmp50
	j	.L78		#
.L77:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:290:         r >>= (23 - e);
	mov.w	r1, 23	# tmp52,
	ld.w	r0, [r13 + (-8)]	# tmp53, e
	sub.w	r1, r0 #222	# _8, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:290:         r >>= (23 - e);
	ld.w	r0, [r13 + (-4)]	# tmp55, r
	shr.w	r0, r1	# tmp54, _8
	st.w	[r13 + (-4)], r0	# r, tmp54
.L78:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:291:     if (fb.u & 0x80000000)
	ld.w	r0, [r13 + (-12)]	# _9, fb.u
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:291:     if (fb.u & 0x80000000)
	mov.w	r1, r0	# _10, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:291:     if (fb.u & 0x80000000)
	xor.w	r0, r0	# tmp56
	cmp.w	r1, r0	# _10, tmp56
	jges	.L79		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:292:         return -r;
	ld.w	r0, [r13 + (-4)]	# tmp57, r
	mov.w	r0, r0	# _11, tmp57
neg.w	r0	# _11
	j	.L80		#
.L79:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:293:     return r;
	ld.w	r0, [r13 + (-4)]	# _13, r
.L80:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/floatimpl.c:294: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	__fixsfsi, .-__fixsfsi
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
