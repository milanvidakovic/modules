	.file	"string.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.s
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
	.global	strlen
	.type	strlen, @function
strlen:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:6: 	int res = 0;
	xor.w	r0, r0	# tmp30
	st.w	[r13 + (-4)], r0	# res, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:7: 	while(*(c++))
	j	.L2		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:9: 		res++;
	ld.w	r0, [r13 + (-4)]	# tmp32, res
	add.w	r0, 1 #111	# tmp31,
	st.w	[r13 + (-4)], r0	# res, tmp31
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:7: 	while(*(c++))
	ld.w	r0, [r13 + (8)]	# c.0_1, c
	mov.w	r1, r0	# tmp33, c.0_1
	add.w	r1, 1 #111	# tmp33,
	st.w	[r13 + (8)], r1	# c, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:7: 	while(*(c++))
	ld.b	r0, [r0]	# _2, *c.0_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:7: 	while(*(c++))
	sex.b	r1, r0	# tmp34, _2
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jnz	.L3		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:11: 	return res;
	ld.w	r0, [r13 + (-4)]	# _9, res
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:12: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strlen, .-strlen
	.p2align	1
	.global	strcmp
	.type	strcmp, @function
strcmp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:19:       c1 = *s1++;
	ld.w	r0, [r13 + (8)]	# s1.1_1, s1
	mov.w	r1, r0	# tmp34, s1.1_1
	add.w	r1, 1 #111	# tmp34,
	st.w	[r13 + (8)], r1	# s1, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:19:       c1 = *s1++;
	ld.b	r0, [r0]	# tmp35, *s1.1_1
	st.b	[r13 + (-1)], r0	# c1, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:20:       c2 = *s2++;
	ld.w	r0, [r13 + (12)]	# s2.2_2, s2
	mov.w	r1, r0	# tmp36, s2.2_2
	add.w	r1, 1 #111	# tmp36,
	st.w	[r13 + (12)], r1	# s2, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:20:       c2 = *s2++;
	ld.b	r0, [r0]	# tmp37, *s2.2_2
	st.b	[r13 + (-2)], r0	# c2, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:21:       if (c1 == '\0')
	ld.b	r0, [r13 + (-1)]	#, c1
	sex.b	r1, r0	# tmp38,
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L6		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:22:         return c1 - c2;
	ld.b	r1, [r13 + (-1)]	#, c1
	sex.b	r0, r1	# _3,
	ld.b	r2, [r13 + (-2)]	#, c2
	sex.b	r1, r2	# _4,
	sub.w	r0, r1 #222	# _9, _4
	j	.L7		#
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:23:   } while (c1 == c2);
	ld.b	r0, [r13 + (-1)]	#, c1
	sex.b	r1, r0	# tmp40,
	ld.b	r2, [r13 + (-2)]	#, c2
	sex.b	r0, r2	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L8		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:24:   return c1 - c2;
	ld.b	r1, [r13 + (-1)]	#, c1
	sex.b	r0, r1	# _5,
	ld.b	r2, [r13 + (-2)]	#, c2
	sex.b	r1, r2	# _6,
	sub.w	r0, r1 #222	# _9, _6
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:25: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strcmp, .-strcmp
	.p2align	1
	.global	strncmp
	.type	strncmp, @function
strncmp:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:30: 	if (n == 0)
	ld.w	r1, [r13 + (16)]	# tmp37, n
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L10		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:31: 		return (0);
	xor.w	r0, r0	# _13
	j	.L11		#
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:33: 		if (*s1 != *s2++)
	ld.w	r0, [r13 + (8)]	# tmp39, s1
	ld.b	r1, [r0]	# _1, *s1_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:33: 		if (*s1 != *s2++)
	ld.w	r0, [r13 + (12)]	# s2.3_2, s2
	mov.w	r2, r0	# tmp40, s2.3_2
	add.w	r2, 1 #111	# tmp40,
	st.w	[r13 + (12)], r2	# s2, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:33: 		if (*s1 != *s2++)
	ld.b	r0, [r0]	# _3, *s2.3_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:33: 		if (*s1 != *s2++)
	sex.b	r1, r1	# tmp41, _1
	sex.b	r0, r0	# tmp42, _3
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:34: 			return (*(char *)s1 - *(char *)--s2);
	ld.w	r0, [r13 + (8)]	# tmp43, s1
	ld.b	r0, [r0]	# _4, *s1_10
	sex.b	r0, r0	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:34: 			return (*(char *)s1 - *(char *)--s2);
	ld.w	r1, [r13 + (12)]	# tmp45, s2
	add.w	r1, -1 #111	# tmp44,
	st.w	[r13 + (12)], r1	# s2, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:34: 			return (*(char *)s1 - *(char *)--s2);
	ld.w	r1, [r13 + (12)]	# tmp46, s2
	ld.b	r1, [r1]	# _6, *s2_22
	sex.b	r1, r1	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:34: 			return (*(char *)s1 - *(char *)--s2);
	sub.w	r0, r1 #222	# _13, _7
	j	.L11		#
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:35: 		if (*s1++ == 0)
	ld.w	r0, [r13 + (8)]	# s1.4_8, s1
	mov.w	r1, r0	# tmp47, s1.4_8
	add.w	r1, 1 #111	# tmp47,
	st.w	[r13 + (8)], r1	# s1, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:35: 		if (*s1++ == 0)
	ld.b	r0, [r0]	# _9, *s1.4_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:35: 		if (*s1++ == 0)
	sex.b	r1, r0	# tmp48, _9
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L15		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:37: 	} while (--n != 0);
	ld.w	r0, [r13 + (16)]	# tmp51, n
	add.w	r0, -1 #111	# tmp50,
	st.w	[r13 + (16)], r0	# n, tmp50
	ld.w	r1, [r13 + (16)]	# tmp52, n
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L10		#
	j	.L14		#
.L15:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:36: 			break;
	nop	
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:38: 	return (0);
	xor.w	r0, r0	# _13
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:39: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strncmp, .-strncmp
	.p2align	1
	.global	memcpy
	.type	memcpy, @function
memcpy:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:43:   char *d = dest;
	ld.w	r0, [r13 + (8)]	# tmp32, dest
	st.w	[r13 + (-4)], r0	# d, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:44:   char *s = src;
	ld.w	r0, [r13 + (12)]	# tmp33, src
	st.w	[r13 + (-8)], r0	# s, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:45:   while (len--)
	j	.L17		#
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:46:     *d++ = *s++;
	ld.w	r1, [r13 + (-8)]	# s.5_1, s
	mov.w	r0, r1	# tmp34, s.5_1
	add.w	r0, 1 #111	# tmp34,
	st.w	[r13 + (-8)], r0	# s, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:46:     *d++ = *s++;
	ld.w	r0, [r13 + (-4)]	# d.6_2, d
	mov.w	r2, r0	# tmp35, d.6_2
	add.w	r2, 1 #111	# tmp35,
	st.w	[r13 + (-4)], r2	# d, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:46:     *d++ = *s++;
	ld.b	r1, [r1]	# _3, *s.5_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:46:     *d++ = *s++;
	st.b	[r0], r1	# *d.6_2, _3
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:45:   while (len--)
	ld.w	r0, [r13 + (16)]	# len.7_4, len
	mov.w	r1, r0	# tmp36, len.7_4
	add.w	r1, -1 #111	# tmp36,
	st.w	[r13 + (16)], r1	# len, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:45:   while (len--)
	xor.w	r1, r1	# tmp37
	cmp.w	r0, r1	# len.7_4, tmp37
	jnz	.L18		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:47:   return dest;
	ld.w	r0, [r13 + (8)]	# _16, dest
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:48: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	memcpy, .-memcpy
	.p2align	1
	.global	memset
	.type	memset, @function
memset:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:52:   if (n) {
	ld.w	r1, [r13 + (16)]	# tmp30, n
	xor.w	r0, r0	# tmp31
	cmp.w	r1, r0	# tmp30, tmp31
	jz	.L21		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:53:       char *d = dst;
	ld.w	r0, [r13 + (8)]	# tmp32, dst
	st.w	[r13 + (-4)], r0	# d, tmp32
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:56:           *d++ = c;
	ld.w	r0, [r13 + (-4)]	# d.8_1, d
	mov.w	r1, r0	# tmp33, d.8_1
	add.w	r1, 1 #111	# tmp33,
	st.w	[r13 + (-4)], r1	# d, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:56:           *d++ = c;
	ld.w	r1, [r13 + (12)]	# tmp34, c
	st.b	[r0], r1	# *d.8_1, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:57:       } while (--n);
	ld.w	r0, [r13 + (16)]	# tmp36, n
	add.w	r0, -1 #111	# tmp35,
	st.w	[r13 + (16)], r0	# n, tmp35
	ld.w	r1, [r13 + (16)]	# tmp37, n
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L22		#
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:59:   return dst;
	ld.w	r0, [r13 + (8)]	# _15, dst
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:60: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	memset, .-memset
	.p2align	1
	.global	memmove
	.type	memmove, @function
memmove:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 16 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:64:   char *d = dest;
	ld.w	r0, [r13 + (8)]	# tmp40, dest
	st.w	[r13 + (-4)], r0	# d, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:65:   char *s = src;
	ld.w	r0, [r13 + (12)]	# tmp41, src
	st.w	[r13 + (-8)], r0	# s, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:66:   if (d < s)
	ld.w	r1, [r13 + (-4)]	# tmp42, d
	ld.w	r0, [r13 + (-8)]	# tmp43, s
	cmp.w	r1, r0	# tmp42, tmp43
	jge	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:67:     while (len--)
	j	.L26		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:68:       *d++ = *s++;
	ld.w	r1, [r13 + (-8)]	# s.9_1, s
	mov.w	r0, r1	# tmp44, s.9_1
	add.w	r0, 1 #111	# tmp44,
	st.w	[r13 + (-8)], r0	# s, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:68:       *d++ = *s++;
	ld.w	r0, [r13 + (-4)]	# d.10_2, d
	mov.w	r2, r0	# tmp45, d.10_2
	add.w	r2, 1 #111	# tmp45,
	st.w	[r13 + (-4)], r2	# d, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:68:       *d++ = *s++;
	ld.b	r1, [r1]	# _3, *s.9_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:68:       *d++ = *s++;
	st.b	[r0], r1	# *d.10_2, _3
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:67:     while (len--)
	ld.w	r0, [r13 + (16)]	# len.11_4, len
	mov.w	r1, r0	# tmp46, len.11_4
	add.w	r1, -1 #111	# tmp46,
	st.w	[r13 + (16)], r1	# len, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:67:     while (len--)
	xor.w	r1, r1	# tmp47
	cmp.w	r0, r1	# len.11_4, tmp47
	jnz	.L27		#
	j	.L28		#
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:71:       char *lasts = s + (len-1);
	ld.w	r0, [r13 + (16)]	# len.12_5, len
	mov.w	r1, r0	# _6, len.12_5
	add.w	r1, -1 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:71:       char *lasts = s + (len-1);
	ld.w	r0, [r13 + (-8)]	# tmp49, s
	add.w	r0, r1 #222	# tmp48, _6
	st.w	[r13 + (-12)], r0	# lasts, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:72:       char *lastd = d + (len-1);
	ld.w	r0, [r13 + (16)]	# len.13_7, len
	mov.w	r1, r0	# _8, len.13_7
	add.w	r1, -1 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:72:       char *lastd = d + (len-1);
	ld.w	r0, [r13 + (-4)]	# tmp51, d
	add.w	r0, r1 #222	# tmp50, _8
	st.w	[r13 + (-16)], r0	# lastd, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:73:       while (len--)
	j	.L29		#
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:74:         *lastd-- = *lasts--;
	ld.w	r1, [r13 + (-12)]	# lasts.14_9, lasts
	mov.w	r0, r1	# tmp52, lasts.14_9
	add.w	r0, -1 #111	# tmp52,
	st.w	[r13 + (-12)], r0	# lasts, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:74:         *lastd-- = *lasts--;
	ld.w	r0, [r13 + (-16)]	# lastd.15_10, lastd
	mov.w	r2, r0	# tmp53, lastd.15_10
	add.w	r2, -1 #111	# tmp53,
	st.w	[r13 + (-16)], r2	# lastd, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:74:         *lastd-- = *lasts--;
	ld.b	r1, [r1]	# _11, *lasts.14_9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:74:         *lastd-- = *lasts--;
	st.b	[r0], r1	# *lastd.15_10, _11
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:73:       while (len--)
	ld.w	r0, [r13 + (16)]	# len.16_12, len
	mov.w	r1, r0	# tmp54, len.16_12
	add.w	r1, -1 #111	# tmp54,
	st.w	[r13 + (16)], r1	# len, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:73:       while (len--)
	xor.w	r1, r1	# tmp55
	cmp.w	r0, r1	# len.16_12, tmp55
	jnz	.L30		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:76:   return dest;
	ld.w	r0, [r13 + (8)]	# _38, dest
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:77: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	memmove, .-memmove
	.p2align	1
	.global	strcpy
	.type	strcpy, @function
strcpy:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:81:   return memcpy(dest, src, strlen (src) + 1);
	mov.w	r1, sp	# tmp30,
	ld.w	r0, [r13 + (12)]	# tmp31, src
	st.w	[r1], r0	#, tmp31
	call	strlen		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:81:   return memcpy(dest, src, strlen (src) + 1);
	mov.w	r1, r0	# _2, _1
	add.w	r1, 1 #111	# _2,
	mov.w	r0, sp	# tmp32,
	st.w	[r0 + (8)], r1	#, _2
	ld.w	r1, [r13 + (12)]	# tmp33, src
	st.w	[r0 + (4)], r1	#, tmp33
	ld.w	r1, [r13 + (8)]	# tmp34, dest
	st.w	[r0], r1	#, tmp34
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:82: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strcpy, .-strcpy
	.p2align	1
	.global	strncpy
	.type	strncpy, @function
strncpy:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:86:   return memcpy (s1, s2, n);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (16)]	# tmp29, n
	st.w	[r0 + (8)], r1	#, tmp29
	ld.w	r1, [r13 + (12)]	# tmp30, s2
	st.w	[r0 + (4)], r1	#, tmp30
	ld.w	r1, [r13 + (8)]	# tmp31, s1
	st.w	[r0], r1	#, tmp31
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:87: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strncpy, .-strncpy
	.p2align	1
	.global	strstr
	.type	strstr, @function
strstr:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:98:   b = substring;
	ld.w	r0, [r13 + (12)]	# tmp37, substring
	st.w	[r13 + (-8)], r0	# b, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:99:   if (*b == 0) 
	ld.w	r0, [r13 + (-8)]	# tmp38, b
	ld.b	r0, [r0]	# _1, *b_17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:99:   if (*b == 0) 
	sex.b	r1, r0	# tmp39, _1
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:101: 		return string;
	ld.w	r0, [r13 + (8)]	# _15, string
	j	.L38		#
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:105: 		if (*string != *b) {
	ld.w	r0, [r13 + (8)]	# tmp41, string
	ld.b	r1, [r0]	# _2, *string_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:105: 		if (*string != *b) {
	ld.w	r0, [r13 + (-8)]	# tmp42, b
	ld.b	r0, [r0]	# _3, *b_14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:105: 		if (*string != *b) {
	sex.b	r1, r1	# tmp43, _2
	sex.b	r0, r0	# tmp44, _3
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L48		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:108: 		a = string;
	ld.w	r0, [r13 + (8)]	# tmp45, string
	st.w	[r13 + (-4)], r0	# a, tmp45
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:111:     	if (*b == 0) 
	ld.w	r0, [r13 + (-8)]	# tmp46, b
	ld.b	r0, [r0]	# _4, *b_12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:111:     	if (*b == 0) 
	sex.b	r1, r0	# tmp47, _4
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# tmp47, tmp48
	jnz	.L42		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:113: 				return string;
	ld.w	r0, [r13 + (8)]	# _15, string
	j	.L38		#
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:115:     	if (*a++ != *b++) 
	ld.w	r0, [r13 + (-4)]	# a.17_5, a
	mov.w	r1, r0	# tmp49, a.17_5
	add.w	r1, 1 #111	# tmp49,
	st.w	[r13 + (-4)], r1	# a, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:115:     	if (*a++ != *b++) 
	ld.b	r1, [r0]	# _6, *a.17_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:115:     	if (*a++ != *b++) 
	ld.w	r0, [r13 + (-8)]	# b.18_7, b
	mov.w	r2, r0	# tmp50, b.18_7
	add.w	r2, 1 #111	# tmp50,
	st.w	[r13 + (-8)], r2	# b, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:115:     	if (*a++ != *b++) 
	ld.b	r0, [r0]	# _8, *b.18_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:115:     	if (*a++ != *b++) 
	sex.b	r1, r1	# tmp51, _6
	sex.b	r0, r0	# tmp52, _8
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L49		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:111:     	if (*b == 0) 
	j	.L45		#
.L49:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:117: 				break;
	nop	
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:120: 		b = substring;
	ld.w	r0, [r13 + (12)]	# tmp53, substring
	st.w	[r13 + (-8)], r0	# b, tmp53
	j	.L41		#
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:106:     	continue;
	nop	
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:103:   for ( ; *string != 0; string += 1) 
	ld.w	r0, [r13 + (8)]	# tmp55, string
	add.w	r0, 1 #111	# tmp54,
	st.w	[r13 + (8)], r0	# string, tmp54
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:103:   for ( ; *string != 0; string += 1) 
	ld.w	r0, [r13 + (8)]	# tmp56, string
	ld.b	r0, [r0]	# _9, *string_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:103:   for ( ; *string != 0; string += 1) 
	sex.b	r1, r0	# tmp57, _9
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jnz	.L46		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:122:   return (char *) 0;
	xor.w	r0, r0	# _15
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:123: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strstr, .-strstr
	.p2align	1
	.global	strcat
	.type	strcat, @function
strcat:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:127:   strcpy (dest + strlen (dest), src);
	mov.w	r1, sp	# tmp31,
	ld.w	r0, [r13 + (8)]	# tmp32, dest
	st.w	[r1], r0	#, tmp32
	call	strlen		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:127:   strcpy (dest + strlen (dest), src);
	ld.w	r1, [r13 + (8)]	# tmp33, dest
	add.w	r1, r0 #222	# _3, _2
	mov.w	r0, sp	# tmp34,
	ld.w	r2, [r13 + (12)]	# tmp35, src
	st.w	[r0 + (4)], r2	#, tmp35
	st.w	[r0], r1	#, _3
	call	strcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:128:   return dest;
	ld.w	r0, [r13 + (8)]	# _8, dest
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:129: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strcat, .-strcat
	.p2align	1
	.global	tolower
	.type	tolower, @function
tolower:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:133:     if (c >= 'A' && c <= 'Z')
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 64	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jses	.L53		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:133:     if (c >= 'A' && c <= 'Z')
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 90	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jgs	.L53		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:134:         return c +'a'-'A';
	ld.w	r0, [r13 + (8)]	# tmp32, c
	add.w	r0, 32 #111	# _1,
	j	.L54		#
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:136:         return c;
	ld.w	r0, [r13 + (8)]	# _1, c
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:137: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tolower, .-tolower
	.p2align	1
	.global	toupper
	.type	toupper, @function
toupper:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:141:     if (c >= 'a' && c <= 'z')
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 96	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jses	.L56		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:141:     if (c >= 'a' && c <= 'z')
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 122	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jgs	.L56		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:142:         return c -'a'-'A';
	ld.w	r0, [r13 + (8)]	# tmp32, c
	add.w	r0, -162 #111	# _1,
	j	.L57		#
.L56:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:144:         return c;
	ld.w	r0, [r13 + (8)]	# _1, c
.L57:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:145: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	toupper, .-toupper
	.p2align	1
	.global	str_toupper
	.type	str_toupper, @function
str_toupper:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:149:   int i = 0;
	xor.w	r0, r0	# tmp39
	st.w	[r13 + (-4)], r0	# i, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:151:   while (str[i])
	j	.L59		#
.L60:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:153:     str[i] = toupper(str[i]);
	ld.w	r1, [r13 + (-4)]	# i.19_1, i
	ld.w	r0, [r13 + (8)]	# tmp40, str
	add.w	r0, r1 #222	# _2, i.19_1
	ld.b	r0, [r0]	# _3, *_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:153:     str[i] = toupper(str[i]);
	sex.b	r0, r0	# _4, _3
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, _4
	call	toupper		#
	mov.w	r2, r0	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:153:     str[i] = toupper(str[i]);
	ld.w	r1, [r13 + (-4)]	# i.20_6, i
	ld.w	r0, [r13 + (8)]	# tmp42, str
	add.w	r0, r1 #222	# _7, i.20_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:153:     str[i] = toupper(str[i]);
	mov.w	r1, r2	# _8, _5
	st.b	[r0], r1	# *_7, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:154:     i++;
	ld.w	r0, [r13 + (-4)]	# tmp44, i
	add.w	r0, 1 #111	# tmp43,
	st.w	[r13 + (-4)], r0	# i, tmp43
.L59:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:151:   while (str[i])
	ld.w	r1, [r13 + (-4)]	# i.21_9, i
	ld.w	r0, [r13 + (8)]	# tmp45, str
	add.w	r0, r1 #222	# _10, i.21_9
	ld.b	r0, [r0]	# _11, *_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:151:   while (str[i])
	sex.b	r1, r0	# tmp46, _11
	xor.w	r0, r0	# tmp47
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L60		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:156:   return str;
	ld.w	r0, [r13 + (8)]	# _17, str
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:157: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	str_toupper, .-str_toupper
	.p2align	1
	.global	str_n_toupper
	.type	str_n_toupper, @function
str_n_toupper:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:161:   int i = 0;
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# i, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:163:   while (i < n)
	j	.L63		#
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:165:     str[i] = toupper(str[i]);
	ld.w	r1, [r13 + (-4)]	# i.22_1, i
	ld.w	r0, [r13 + (8)]	# tmp37, str
	add.w	r0, r1 #222	# _2, i.22_1
	ld.b	r0, [r0]	# _3, *_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:165:     str[i] = toupper(str[i]);
	sex.b	r0, r0	# _4, _3
	mov.w	r1, sp	# tmp38,
	st.w	[r1], r0	#, _4
	call	toupper		#
	mov.w	r2, r0	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:165:     str[i] = toupper(str[i]);
	ld.w	r1, [r13 + (-4)]	# i.23_6, i
	ld.w	r0, [r13 + (8)]	# tmp39, str
	add.w	r0, r1 #222	# _7, i.23_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:165:     str[i] = toupper(str[i]);
	mov.w	r1, r2	# _8, _5
	st.b	[r0], r1	# *_7, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:166:     i++;
	ld.w	r0, [r13 + (-4)]	# tmp41, i
	add.w	r0, 1 #111	# tmp40,
	st.w	[r13 + (-4)], r0	# i, tmp40
.L63:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:163:   while (i < n)
	ld.w	r1, [r13 + (-4)]	# tmp42, i
	ld.w	r0, [r13 + (12)]	# tmp43, n
	cmp.w	r1, r0	# tmp42, tmp43
	jss	.L64		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:168:   return str;
	ld.w	r0, [r13 + (8)]	# _15, str
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:169: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	str_n_toupper, .-str_n_toupper
	.p2align	1
	.global	isdigit
	.type	isdigit, @function
isdigit:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:173: 	return (c >= '0' && c <= '9' ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 47	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jses	.L67		#
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 57	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jgs	.L67		#
	mov.w	r0, 1	# iftmp.24_1,
	j	.L69		#
.L67:
	xor.w	r0, r0	# iftmp.24_1
.L69:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:174: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isdigit, .-isdigit
	.p2align	1
	.global	islower
	.type	islower, @function
islower:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:178: 	return (c >= 'a' && c <= 'z');
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 96	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jses	.L71		#
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 122	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jgs	.L71		#
	mov.w	r0, 1	# iftmp.25_1,
	j	.L73		#
.L71:
	xor.w	r0, r0	# iftmp.25_1
.L73:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:179: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	islower, .-islower
	.p2align	1
	.global	isupper
	.type	isupper, @function
isupper:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:183: 	return (c >= 'A' && c <= 'Z');
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 64	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jses	.L75		#
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 90	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jgs	.L75		#
	mov.w	r0, 1	# iftmp.26_1,
	j	.L77		#
.L75:
	xor.w	r0, r0	# iftmp.26_1
.L77:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:184: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isupper, .-isupper
	.p2align	1
	.global	isalpha
	.type	isalpha, @function
isalpha:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:188: 	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 96	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jses	.L79		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:188: 	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 122	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jses	.L80		#
.L79:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:188: 	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp32, c
	mov.w	r0, 64	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jses	.L81		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:188: 	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp34, c
	mov.w	r0, 90	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jgs	.L81		#
.L80:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:188: 	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ? 1 : 0);
	mov.w	r0, 1	# iftmp.27_1,
	j	.L83		#
.L81:
	xor.w	r0, r0	# iftmp.27_1
.L83:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:189: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isalpha, .-isalpha
	.p2align	1
	.global	isalnum
	.type	isalnum, @function
isalnum:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:193: 	return (isalpha(c) || isdigit(c));
	mov.w	r1, sp	# tmp31,
	ld.w	r0, [r13 + (8)]	# tmp32, c
	st.w	[r1], r0	#, tmp32
	call	isalpha		#
	mov.w	r1, r0	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:193: 	return (isalpha(c) || isdigit(c));
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# _1, tmp33
	jnz	.L85		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:193: 	return (isalpha(c) || isdigit(c));
	ld.w	r0, [r13 + (8)]	# c.29_2, c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:193: 	return (isalpha(c) || isdigit(c));
	mov.w	r1, r0	# _3, c.29_2
	add.w	r1, -48 #111	# _3,
	mov.w	r0, 9	# tmp34,
	cmp.w	r1, r0	# _3, tmp34
	jg	.L86		#
.L85:
	mov.w	r0, 1	# iftmp.28_4,
	j	.L88		#
.L86:
	xor.w	r0, r0	# iftmp.28_4
.L88:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:194: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isalnum, .-isalnum
	.p2align	1
	.global	isspace
	.type	isspace, @function
isspace:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:198: 	return (c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp28, c
	mov.w	r0, 9	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:198: 	return (c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp30, c
	mov.w	r0, 10	# tmp31,
	cmp.w	r1, r0	# tmp30, tmp31
	jz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:198: 	return (c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp32, c
	mov.w	r0, 11	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:198: 	return (c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp34, c
	mov.w	r0, 12	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:198: 	return (c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp36, c
	mov.w	r0, 13	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:198: 	return (c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
	ld.w	r1, [r13 + (8)]	# tmp38, c
	mov.w	r0, 32	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L91		#
.L90:
	mov.w	r0, 1	# iftmp.30_1,
	j	.L93		#
.L91:
	xor.w	r0, r0	# iftmp.30_1
.L93:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:199: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isspace, .-isspace
	.p2align	1
	.global	atoi
	.type	atoi, @function
atoi:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:203:   int result = 0;
	xor.w	r0, r0	# tmp37
	st.w	[r13 + (-4)], r0	# result, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:207:   while (isspace(*string)) {
	j	.L95		#
.L96:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:208:     string += 1;
	ld.w	r0, [r13 + (8)]	# tmp39, string
	add.w	r0, 1 #111	# tmp38,
	st.w	[r13 + (8)], r0	# string, tmp38
.L95:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:207:   while (isspace(*string)) {
	ld.w	r0, [r13 + (8)]	# tmp40, string
	ld.b	r0, [r0]	# _1, *string_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:207:   while (isspace(*string)) {
	sex.b	r0, r0	# _2, _1
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, _2
	call	isspace		#
	mov.w	r1, r0	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:207:   while (isspace(*string)) {
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# _3, tmp42
	jnz	.L96		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:211:   if (*string == '-') {
	ld.w	r0, [r13 + (8)]	# tmp43, string
	ld.b	r0, [r0]	# _4, *string_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:211:   if (*string == '-') {
	sex.b	r1, r0	# tmp44, _4
	mov.w	r0, 45	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L97		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:212:     sign = 1;
	mov.w	r0, 1	# tmp46,
	st.w	[r13 + (-8)], r0	# sign, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:213:     string += 1;
	ld.w	r0, [r13 + (8)]	# tmp48, string
	add.w	r0, 1 #111	# tmp47,
	st.w	[r13 + (8)], r0	# string, tmp47
	j	.L99		#
.L97:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:215:     sign = 0;
	xor.w	r0, r0	# tmp49
	st.w	[r13 + (-8)], r0	# sign, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:216:     if (*string == '+') {
	ld.w	r0, [r13 + (8)]	# tmp50, string
	ld.b	r0, [r0]	# _5, *string_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:216:     if (*string == '+') {
	sex.b	r1, r0	# tmp51, _5
	mov.w	r0, 43	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L99		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:217:       string += 1;
	ld.w	r0, [r13 + (8)]	# tmp54, string
	add.w	r0, 1 #111	# tmp53,
	st.w	[r13 + (8)], r0	# string, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:221:   for ( ; *string != 0; string += 1) {
	j	.L99		#
.L101:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:222:     digit = *string - '0';
	ld.w	r0, [r13 + (8)]	# tmp55, string
	ld.b	r0, [r0]	# _6, *string_12
	sex.b	r0, r0	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:222:     digit = *string - '0';
	add.w	r0, -48 #111	# tmp56,
	st.w	[r13 + (-12)], r0	# digit, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:223:     if ((digit < 0) || (digit > 9)) {
	ld.w	r1, [r13 + (-12)]	# tmp57, digit
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jss	.L100		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:223:     if ((digit < 0) || (digit > 9)) {
	ld.w	r1, [r13 + (-12)]	# tmp59, digit
	mov.w	r0, 9	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jgs	.L100		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:226:     result = (10*result) + digit;
	ld.w	r1, [r13 + (-4)]	# tmp61, result
	mov.w	r0, r1	# tmp62, tmp61
	mov.w	r2, 2	# tmp64,
	shl.w	r0, r2	# tmp63, tmp64
	add.w	r0, r1 #222	# tmp62, tmp61
	add.w	r0, r0 #222	# tmp65, tmp62
	mov.w	r1, r0	# _8, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:226:     result = (10*result) + digit;
	ld.w	r0, [r13 + (-12)]	# tmp67, digit
	add.w	r0, r1 #222	# tmp66, _8
	st.w	[r13 + (-4)], r0	# result, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:221:   for ( ; *string != 0; string += 1) {
	ld.w	r0, [r13 + (8)]	# tmp69, string
	add.w	r0, 1 #111	# tmp68,
	st.w	[r13 + (8)], r0	# string, tmp68
.L99:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:221:   for ( ; *string != 0; string += 1) {
	ld.w	r0, [r13 + (8)]	# tmp70, string
	ld.b	r0, [r0]	# _9, *string_12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:221:   for ( ; *string != 0; string += 1) {
	sex.b	r1, r0	# tmp71, _9
	xor.w	r0, r0	# tmp72
	cmp.w	r1, r0	# tmp71, tmp72
	jnz	.L101		#
.L100:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:229:   if (sign) {
	ld.w	r1, [r13 + (-8)]	# tmp73, sign
	xor.w	r0, r0	# tmp74
	cmp.w	r1, r0	# tmp73, tmp74
	jz	.L102		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:230:     return -result;
	ld.w	r0, [r13 + (-4)]	# tmp75, result
	mov.w	r0, r0	# _15, tmp75
neg.w	r0	# _15
	j	.L103		#
.L102:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:232:   return result;
	ld.w	r0, [r13 + (-4)]	# _15, result
.L103:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:233: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	atoi, .-atoi
	.p2align	1
	.global	memcmp
	.type	memcmp, @function
memcmp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:237: 	if (n != 0) {
	ld.w	r1, [r13 + (16)]	# tmp36, n
	xor.w	r0, r0	# tmp37
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L105		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:238: 		unsigned char *p1 = s1, *p2 = s2;
	ld.w	r0, [r13 + (8)]	# tmp38, s1
	st.w	[r13 + (-4)], r0	# p1, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:238: 		unsigned char *p1 = s1, *p2 = s2;
	ld.w	r0, [r13 + (12)]	# tmp39, s2
	st.w	[r13 + (-8)], r0	# p2, tmp39
.L108:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:241: 			if (*p1++ != *p2++)
	ld.w	r0, [r13 + (-4)]	# p1.31_1, p1
	mov.w	r1, r0	# tmp40, p1.31_1
	add.w	r1, 1 #111	# tmp40,
	st.w	[r13 + (-4)], r1	# p1, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:241: 			if (*p1++ != *p2++)
	ld.b	r1, [r0]	# _2, *p1.31_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:241: 			if (*p1++ != *p2++)
	ld.w	r0, [r13 + (-8)]	# p2.32_3, p2
	mov.w	r2, r0	# tmp41, p2.32_3
	add.w	r2, 1 #111	# tmp41,
	st.w	[r13 + (-8)], r2	# p2, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:241: 			if (*p1++ != *p2++)
	ld.b	r0, [r0]	# _4, *p2.32_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:241: 			if (*p1++ != *p2++)
	zex.b	r1, r1	# tmp42, _2
	zex.b	r0, r0	# tmp43, _4
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L106		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:242: 				return (*--p1 - *--p2);
	ld.w	r0, [r13 + (-4)]	# tmp45, p1
	add.w	r0, -1 #111	# tmp44,
	st.w	[r13 + (-4)], r0	# p1, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:242: 				return (*--p1 - *--p2);
	ld.w	r0, [r13 + (-4)]	# tmp46, p1
	ld.b	r0, [r0]	# _5, *p1_22
	zex.b	r0, r0	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:242: 				return (*--p1 - *--p2);
	ld.w	r1, [r13 + (-8)]	# tmp48, p2
	add.w	r1, -1 #111	# tmp47,
	st.w	[r13 + (-8)], r1	# p2, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:242: 				return (*--p1 - *--p2);
	ld.w	r1, [r13 + (-8)]	# tmp49, p2
	ld.b	r1, [r1]	# _7, *p2_23
	zex.b	r1, r1	# _8, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:242: 				return (*--p1 - *--p2);
	sub.w	r0, r1 #222	# _12, _8
	j	.L107		#
.L106:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:243: 		} while (--n != 0);
	ld.w	r0, [r13 + (16)]	# tmp51, n
	add.w	r0, -1 #111	# tmp50,
	st.w	[r13 + (16)], r0	# n, tmp50
	ld.w	r1, [r13 + (16)]	# tmp52, n
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L108		#
.L105:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:245: 	return (0);
	xor.w	r0, r0	# _12
.L107:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:246: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	memcmp, .-memcmp
	.p2align	1
	.global	strtok
	.type	strtok, @function
strtok:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 20 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:256: 	if (s == NULL && (s = last) == NULL)
	ld.w	r1, [r13 + (8)]	# tmp37, s
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L121		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:256: 	if (s == NULL && (s = last) == NULL)
	ld.w	r0, [r13 + (-8)]	# tmp39, last
	st.w	[r13 + (8)], r0	# s, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:256: 	if (s == NULL && (s = last) == NULL)
	ld.w	r1, [r13 + (8)]	# tmp40, s
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L121		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:257: 		return (NULL);
	xor.w	r0, r0	# _15
	j	.L111		#
.L121:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:262: cont:
	nop	
.L110:
.L113:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:263: 	c = *s++;
	ld.w	r0, [r13 + (8)]	# s.33_1, s
	mov.w	r1, r0	# tmp42, s.33_1
	add.w	r1, 1 #111	# tmp42,
	st.w	[r13 + (8)], r1	# s, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:263: 	c = *s++;
	ld.b	r0, [r0]	# _2, *s.33_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:263: 	c = *s++;
	sex.b	r0, r0	# tmp43, _2
	st.w	[r13 + (-12)], r0	# c, tmp43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:264: 	for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
	ld.w	r0, [r13 + (12)]	# tmp44, delim
	st.w	[r13 + (-4)], r0	# spanp, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:264: 	for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
	j	.L112		#
.L114:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:265: 		if (c == sc)
	ld.w	r1, [r13 + (-12)]	# tmp45, c
	ld.w	r0, [r13 + (-16)]	# tmp46, sc
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L112		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:266: 			goto cont;
	j	.L113		#
.L112:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:264: 	for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
	ld.w	r0, [r13 + (-4)]	# spanp.34_3, spanp
	mov.w	r1, r0	# tmp47, spanp.34_3
	add.w	r1, 1 #111	# tmp47,
	st.w	[r13 + (-4)], r1	# spanp, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:264: 	for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
	ld.b	r0, [r0]	# _4, *spanp.34_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:264: 	for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
	sex.b	r0, r0	# tmp48, _4
	st.w	[r13 + (-16)], r0	# sc, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:264: 	for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
	ld.w	r1, [r13 + (-16)]	# tmp49, sc
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# tmp49, tmp50
	jnz	.L114		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:269: 	if (c == 0) {		/* no non-delimiter characters */
	ld.w	r1, [r13 + (-12)]	# tmp51, c
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L115		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:270: 		last = NULL;
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-8)], r0	# last, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:271: 		return (NULL);
	xor.w	r0, r0	# _15
	j	.L111		#
.L115:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:273: 	tok = s - 1;
	ld.w	r0, [r13 + (8)]	# tmp55, s
	add.w	r0, -1 #111	# tmp54,
	st.w	[r13 + (-20)], r0	# tok, tmp54
.L120:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:280: 		c = *s++;
	ld.w	r0, [r13 + (8)]	# s.35_5, s
	mov.w	r1, r0	# tmp56, s.35_5
	add.w	r1, 1 #111	# tmp56,
	st.w	[r13 + (8)], r1	# s, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:280: 		c = *s++;
	ld.b	r0, [r0]	# _6, *s.35_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:280: 		c = *s++;
	sex.b	r0, r0	# tmp57, _6
	st.w	[r13 + (-12)], r0	# c, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:281: 		spanp = (char *)delim;
	ld.w	r0, [r13 + (12)]	# tmp58, delim
	st.w	[r13 + (-4)], r0	# spanp, tmp58
.L119:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:283: 			if ((sc = *spanp++) == c) {
	ld.w	r0, [r13 + (-4)]	# spanp.36_7, spanp
	mov.w	r1, r0	# tmp59, spanp.36_7
	add.w	r1, 1 #111	# tmp59,
	st.w	[r13 + (-4)], r1	# spanp, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:283: 			if ((sc = *spanp++) == c) {
	ld.b	r0, [r0]	# _8, *spanp.36_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:283: 			if ((sc = *spanp++) == c) {
	sex.b	r0, r0	# tmp60, _8
	st.w	[r13 + (-16)], r0	# sc, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:283: 			if ((sc = *spanp++) == c) {
	ld.w	r1, [r13 + (-16)]	# tmp61, sc
	ld.w	r0, [r13 + (-12)]	# tmp62, c
	cmp.w	r1, r0	# tmp61, tmp62
	jnz	.L116		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:284: 				if (c == 0)
	ld.w	r1, [r13 + (-12)]	# tmp63, c
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jnz	.L117		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:285: 					s = NULL;
	xor.w	r0, r0	# tmp65
	st.w	[r13 + (8)], r0	# s, tmp65
	j	.L118		#
.L117:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:287: 					s[-1] = 0;
	ld.w	r0, [r13 + (8)]	# tmp66, s
	add.w	r0, -1 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:287: 					s[-1] = 0;
	xor.w	r1, r1	# tmp67
	st.b	[r0], r1	# *_9, tmp67
.L118:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:288: 				last = s;
	ld.w	r0, [r13 + (8)]	# tmp68, s
	st.w	[r13 + (-8)], r0	# last, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:289: 				return (tok);
	ld.w	r0, [r13 + (-20)]	# _15, tok
	j	.L111		#
.L116:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:291: 		} while (sc != 0);
	ld.w	r1, [r13 + (-16)]	# tmp69, sc
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L119		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:280: 		c = *s++;
	j	.L120		#
.L111:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:294: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strtok, .-strtok
	.p2align	1
	.global	strchr
	.type	strchr, @function
strchr:
	push	r13		#
	mov.w	r13, sp	#,
.L125:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:299:     if (*s == c)
	ld.w	r0, [r13 + (8)]	# tmp32, s
	ld.b	r0, [r0]	# _1, *s_5
	sex.b	r0, r0	# _2, _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:299:     if (*s == c)
	ld.w	r1, [r13 + (12)]	# tmp33, c
	cmp.w	r1, r0	# tmp33, _2
	jnz	.L123		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:301:         return (char*)s;
	ld.w	r0, [r13 + (8)]	# _6, s
	j	.L124		#
.L123:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:303:   } while (*s++);
	ld.w	r0, [r13 + (8)]	# s.37_3, s
	mov.w	r1, r0	# tmp34, s.37_3
	add.w	r1, 1 #111	# tmp34,
	st.w	[r13 + (8)], r1	# s, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:303:   } while (*s++);
	ld.b	r0, [r0]	# _4, *s.37_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:303:   } while (*s++);
	sex.b	r1, r0	# tmp35, _4
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jnz	.L125		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:304:   return (0);
	xor.w	r0, r0	# _6
.L124:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:305: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strchr, .-strchr
	.p2align	1
	.global	strrchr
	.type	strrchr, @function
strrchr:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:310:   c = (unsigned char) c;
	ld.w	r0, [r13 + (12)]	# tmp30, c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:310:   c = (unsigned char) c;
	zex.b	r0, r0	# tmp31, _1
	st.w	[r13 + (12)], r0	# c, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:312:   if (c == '\0')
	ld.w	r1, [r13 + (12)]	# tmp32, c
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jnz	.L127		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:313:     return strchr (s, '\0');
	mov.w	r1, sp	# tmp34,
	ld.w	r0, [r13 + (8)]	# tmp35, s
	st.w	[r1], r0	#, tmp35
	call	strlen		#
	mov.w	r1, r0	# _14, tmp36
	ld.w	r0, [r13 + (8)]	# tmp37, s
	add.w	r0, r1 #222	# _4, _14
	j	.L128		#
.L127:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:314:   found = 0;
	xor.w	r0, r0	# tmp38
	st.w	[r13 + (-4)], r0	# found, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:315:   while ((p = strchr (s, c)) != 0)
	j	.L129		#
.L130:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:317:       found = p;
	ld.w	r0, [r13 + (-8)]	# tmp39, p
	st.w	[r13 + (-4)], r0	# found, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:318:       s = p + 1;
	ld.w	r0, [r13 + (-8)]	# tmp41, p
	add.w	r0, 1 #111	# tmp40,
	st.w	[r13 + (8)], r0	# s, tmp40
.L129:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:315:   while ((p = strchr (s, c)) != 0)
	mov.w	r0, sp	# tmp42,
	ld.w	r1, [r13 + (12)]	# tmp43, c
	st.w	[r0 + (4)], r1	#, tmp43
	ld.w	r1, [r13 + (8)]	# tmp44, s
	st.w	[r0], r1	#, tmp44
	call	strchr		#
	st.w	[r13 + (-8)], r0	# p,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:315:   while ((p = strchr (s, c)) != 0)
	ld.w	r1, [r13 + (-8)]	# tmp45, p
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L130		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:320:   return (char *) found;
	ld.w	r0, [r13 + (-4)]	# _4, found
.L128:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:321: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strrchr, .-strrchr
	.p2align	1
	.global	strncasecmp
	.type	strncasecmp, @function
strncasecmp:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:325:   if (n == 0)
	ld.w	r1, [r13 + (16)]	# tmp43, n
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L134		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:326:     return 0;
	xor.w	r0, r0	# _19
	j	.L133		#
.L136:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:330:       if (n == 0 || *s1 == '\0' || *s2 == '\0')
	ld.w	r1, [r13 + (16)]	# tmp45, n
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# tmp45, tmp46
	jz	.L135		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:330:       if (n == 0 || *s1 == '\0' || *s2 == '\0')
	ld.w	r0, [r13 + (8)]	# tmp47, s1
	ld.b	r0, [r0]	# _1, *s1_16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:330:       if (n == 0 || *s1 == '\0' || *s2 == '\0')
	sex.b	r1, r0	# tmp48, _1
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L135		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:330:       if (n == 0 || *s1 == '\0' || *s2 == '\0')
	ld.w	r0, [r13 + (12)]	# tmp50, s2
	ld.b	r0, [r0]	# _2, *s2_17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:330:       if (n == 0 || *s1 == '\0' || *s2 == '\0')
	sex.b	r1, r0	# tmp51, _2
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jz	.L135		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:332:       s1++;
	ld.w	r0, [r13 + (8)]	# tmp54, s1
	add.w	r0, 1 #111	# tmp53,
	st.w	[r13 + (8)], r0	# s1, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:333:       s2++;
	ld.w	r0, [r13 + (12)]	# tmp56, s2
	add.w	r0, 1 #111	# tmp55,
	st.w	[r13 + (12)], r0	# s2, tmp55
.L134:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:328:   while (n-- != 0 && tolower(*s1) == tolower(*s2))
	ld.w	r0, [r13 + (16)]	# n.38_3, n
	mov.w	r1, r0	# tmp57, n.38_3
	add.w	r1, -1 #111	# tmp57,
	st.w	[r13 + (16)], r1	# n, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:328:   while (n-- != 0 && tolower(*s1) == tolower(*s2))
	xor.w	r1, r1	# tmp58
	cmp.w	r0, r1	# n.38_3, tmp58
	jz	.L135		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:328:   while (n-- != 0 && tolower(*s1) == tolower(*s2))
	ld.w	r0, [r13 + (8)]	# tmp59, s1
	ld.b	r0, [r0]	# _4, *s1_16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:328:   while (n-- != 0 && tolower(*s1) == tolower(*s2))
	sex.b	r0, r0	# _5, _4
	mov.w	r1, sp	# tmp60,
	st.w	[r1], r0	#, _5
	call	tolower		#
	mov.w	r6, r0	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:328:   while (n-- != 0 && tolower(*s1) == tolower(*s2))
	ld.w	r0, [r13 + (12)]	# tmp61, s2
	ld.b	r0, [r0]	# _7, *s2_17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:328:   while (n-- != 0 && tolower(*s1) == tolower(*s2))
	sex.b	r0, r0	# _8, _7
	mov.w	r1, sp	# tmp62,
	st.w	[r1], r0	#, _8
	call	tolower		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:328:   while (n-- != 0 && tolower(*s1) == tolower(*s2))
	cmp.w	r6, r0	# _6, _9
	jz	.L136		#
.L135:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:336:   return tolower(*(unsigned char *) s1) - tolower(*(unsigned char *) s2);
	ld.w	r0, [r13 + (8)]	# tmp63, s1
	ld.b	r0, [r0]	# _10, MEM[(unsigned char *)s1_16]
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:336:   return tolower(*(unsigned char *) s1) - tolower(*(unsigned char *) s2);
	zex.b	r0, r0	# _11, _10
	mov.w	r1, sp	# tmp64,
	st.w	[r1], r0	#, _11
	call	tolower		#
	mov.w	r6, r0	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:336:   return tolower(*(unsigned char *) s1) - tolower(*(unsigned char *) s2);
	ld.w	r0, [r13 + (12)]	# tmp65, s2
	ld.b	r0, [r0]	# _13, MEM[(unsigned char *)s2_17]
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:336:   return tolower(*(unsigned char *) s1) - tolower(*(unsigned char *) s2);
	zex.b	r0, r0	# _14, _13
	mov.w	r1, sp	# tmp66,
	st.w	[r1], r0	#, _14
	call	tolower		#
	mov.w	r1, r0	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:336:   return tolower(*(unsigned char *) s1) - tolower(*(unsigned char *) s2);
	mov.w	r0, r6	# _19, _12
	sub.w	r0, r1 #222	# _19, _15
.L133:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:337: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strncasecmp, .-strncasecmp
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
