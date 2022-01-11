	.file	"sprintf.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.s
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
	.global	__fixsfsi
	.global	__eqsf2
	.section	.rodata
	.p2align	2
.LC0:
	.string	"(inf)"
	.p2align	2
.LC1:
	.string	"(-inf)"
	.global	__ltsf2
	.global	__floatsisf
	.global	__subsf3
	.global	__mulsf3
	.p2align	2
.LC2:
	.string	"(null)"
	.text
	.p2align	1
	.global	vsprintf
	.type	vsprintf, @function
vsprintf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 88 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:15:     char *p, *orig=dst, tmpstr[19];
	ld.w	r0, [r13 + (8)]	# tmp97, dst
	st.w	[r13 + (-32)], r0	# orig, tmp97
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:18:     if(dst==(void*)0 || fmt==(void*)0) {
	ld.w	r1, [r13 + (8)]	# tmp98, dst
	xor.w	r0, r0	# tmp99
	cmp.w	r1, r0	# tmp98, tmp99
	jz	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:18:     if(dst==(void*)0 || fmt==(void*)0) {
	ld.w	r1, [r13 + (12)]	# tmp100, fmt
	xor.w	r0, r0	# tmp101
	cmp.w	r1, r0	# tmp100, tmp101
	jnz	.L3		#
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:19:         return 0;
	xor.w	r0, r0	# _101
	j	.L59		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:23:     arg = 0;
	xor.w	r0, r0	# tmp102
	st.w	[r13 + (-4)], r0	# arg, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	j	.L5		#
.L58:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp103, fmt
	ld.b	r0, [r0]	# _1, *fmt_69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	sex.b	r1, r0	# tmp104, _1
	mov.w	r0, 37	# tmp105,
	cmp.w	r1, r0	# tmp104, tmp105
	jnz	.L64		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:27:             fmt++;
	ld.w	r0, [r13 + (12)]	# tmp107, fmt
	add.w	r0, 1 #111	# tmp106,
	st.w	[r13 + (12)], r0	# fmt, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp108, fmt
	ld.b	r0, [r0]	# _2, *fmt_130
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	sex.b	r1, r0	# tmp109, _2
	mov.w	r0, 37	# tmp110,
	cmp.w	r1, r0	# tmp109, tmp110
	jz	.L65		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:32:             len=0;
	xor.w	r0, r0	# tmp111
	st.w	[r13 + (-8)], r0	# len, tmp111
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	j	.L8		#
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:35:                 len *= 10;
	ld.w	r1, [r13 + (-8)]	# tmp112, len
	mov.w	r0, r1	# tmp113, tmp112
	mov.w	r2, 2	# tmp115,
	shl.w	r0, r2	# tmp114, tmp115
	add.w	r0, r1 #222	# tmp113, tmp112
	add.w	r0, r0 #222	# tmp116, tmp113
	st.w	[r13 + (-8)], r0	# len, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	ld.w	r0, [r13 + (12)]	# tmp117, fmt
	ld.b	r0, [r0]	# _3, *fmt_65
	sex.b	r0, r0	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	mov.w	r1, r0	# _5, _4
	add.w	r1, -48 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	ld.w	r0, [r13 + (-8)]	# tmp119, len
	add.w	r0, r1 #222	# tmp118, _5
	st.w	[r13 + (-8)], r0	# len, tmp118
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:37:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp121, fmt
	add.w	r0, 1 #111	# tmp120,
	st.w	[r13 + (12)], r0	# fmt, tmp120
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	ld.w	r0, [r13 + (12)]	# tmp122, fmt
	ld.b	r0, [r0]	# _6, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	sex.b	r1, r0	# tmp123, _6
	mov.w	r0, 47	# tmp124,
	cmp.w	r1, r0	# tmp123, tmp124
	jses	.L9		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	ld.w	r0, [r13 + (12)]	# tmp125, fmt
	ld.b	r0, [r0]	# _7, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	sex.b	r1, r0	# tmp126, _7
	mov.w	r0, 57	# tmp127,
	cmp.w	r1, r0	# tmp126, tmp127
	jses	.L10		#
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:40:             if(*fmt=='l') {
	ld.w	r0, [r13 + (12)]	# tmp128, fmt
	ld.b	r0, [r0]	# _8, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:40:             if(*fmt=='l') {
	sex.b	r1, r0	# tmp129, _8
	mov.w	r0, 108	# tmp130,
	cmp.w	r1, r0	# tmp129, tmp130
	jnz	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:41:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp132, fmt
	add.w	r0, 1 #111	# tmp131,
	st.w	[r13 + (12)], r0	# fmt, tmp131
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:44:             if(*fmt=='c') {
	ld.w	r0, [r13 + (12)]	# tmp133, fmt
	ld.b	r0, [r0]	# _9, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:44:             if(*fmt=='c') {
	sex.b	r1, r0	# tmp134, _9
	mov.w	r0, 99	# tmp135,
	cmp.w	r1, r0	# tmp134, tmp135
	jnz	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:45:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1659, args
	mov.w	r1, r0	# D.1660, D.1659
	add.w	r1, 4 #111	# D.1660,
	st.w	[r13 + (16)], r1	# args, D.1660
	ld.w	r0, [r0]	# tmp136, MEM[(int *)_239]
	st.w	[r13 + (-4)], r0	# arg, tmp136
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:46:                 *dst++ = arg;
	ld.w	r0, [r13 + (8)]	# dst.0_10, dst
	mov.w	r1, r0	# tmp137, dst.0_10
	add.w	r1, 1 #111	# tmp137,
	st.w	[r13 + (8)], r1	# dst, tmp137
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:46:                 *dst++ = arg;
	ld.w	r1, [r13 + (-4)]	# tmp138, arg
	st.b	[r0], r1	# *dst.0_10, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:47:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp140, fmt
	add.w	r0, 1 #111	# tmp139,
	st.w	[r13 + (12)], r0	# fmt, tmp139
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:48:                 continue;
	j	.L5		#
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:50:             if (*fmt=='f')
	ld.w	r0, [r13 + (12)]	# tmp141, fmt
	ld.b	r0, [r0]	# _12, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:50:             if (*fmt=='f')
	sex.b	r1, r0	# tmp142, _12
	mov.w	r0, 102	# tmp143,
	cmp.w	r1, r0	# tmp142, tmp143
	jnz	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:52:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1661, args
	mov.w	r1, r0	# D.1662, D.1661
	add.w	r1, 4 #111	# D.1662,
	st.w	[r13 + (16)], r1	# args, D.1662
	ld.w	r0, [r0]	# tmp144, MEM[(int *)_236]
	st.w	[r13 + (-4)], r0	# arg, tmp144
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:54:                 ts.word = arg;
	ld.w	r0, [r13 + (-4)]	# arg.1_13, arg
	st.w	[r13 + (-64)], r0	# ts.word, arg.1_13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:55:                 float f = ts.value;
	ld.w	r0, [r13 + (-64)]	# tmp145, ts
	st.w	[r13 + (-24)], r0	# f, tmp145
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:57:                 arg = (ts.value);
	ld.w	r0, [r13 + (-64)]	# _14, ts
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:57:                 arg = (ts.value);
	st.w	[sp], r0	#, tmp146
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# arg, tmp147
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:59:                 if (f == INF || f == -INF)
	mov.w	r0, 1325334528	# tmp148,
	st.w	[sp + (4)], r0	#, tmp148
	ld.w	r0, [r13 + (-24)]	# tmp149, f
	st.w	[sp], r0	#, tmp149
	call	__eqsf2		#
	mov.w	r1, r0	# tmp150,
	xor.w	r0, r0	# tmp151
	cmp.w	r1, r0	# tmp150, tmp151
	jz	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:59:                 if (f == INF || f == -INF)
	mov.w	r0, -822149120	# tmp152,
	st.w	[sp + (4)], r0	#, tmp152
	ld.w	r0, [r13 + (-24)]	# tmp153, f
	st.w	[sp], r0	#, tmp153
	call	__eqsf2		#
	mov.w	r1, r0	# tmp154,
	xor.w	r0, r0	# tmp155
	cmp.w	r1, r0	# tmp154, tmp155
	jnz	.L62		#
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:61:                     if (f == INF)
	mov.w	r0, 1325334528	# tmp156,
	st.w	[sp + (4)], r0	#, tmp156
	ld.w	r0, [r13 + (-24)]	# tmp157, f
	st.w	[sp], r0	#, tmp157
	call	__eqsf2		#
	mov.w	r1, r0	# tmp158,
	xor.w	r0, r0	# tmp159
	cmp.w	r1, r0	# tmp158, tmp159
	jnz	.L63		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:62:                         p ="(inf)";
	mov.w	r0, .LC0	# tmp160,
	st.w	[r13 + (-20)], r0	# p, tmp160
	j	.L20		#
.L63:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:64:                         p = "(-inf)";
	mov.w	r0, .LC1	# tmp161,
	st.w	[r13 + (-20)], r0	# p, tmp161
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:65:                     while(*p) {
	j	.L20		#
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                         *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.2_15, p
	mov.w	r0, r1	# tmp162, p.2_15
	add.w	r0, 1 #111	# tmp162,
	st.w	[r13 + (-20)], r0	# p, tmp162
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                         *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.3_16, dst
	mov.w	r2, r0	# tmp163, dst.3_16
	add.w	r2, 1 #111	# tmp163,
	st.w	[r13 + (8)], r2	# dst, tmp163
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                         *dst++ = *p++;
	ld.b	r1, [r1]	# _17, *p.2_15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                         *dst++ = *p++;
	st.b	[r0], r1	# *dst.3_16, _17
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:65:                     while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp164, p
	ld.b	r0, [r0]	# _18, *p_93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:65:                     while(*p) {
	sex.b	r1, r0	# tmp165, _18
	xor.w	r0, r0	# tmp166
	cmp.w	r1, r0	# tmp165, tmp166
	jnz	.L21		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:68:                     fmt++;
	ld.w	r0, [r13 + (12)]	# tmp168, fmt
	add.w	r0, 1 #111	# tmp167,
	st.w	[r13 + (12)], r0	# fmt, tmp167
	j	.L5		#
.L62:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:73:                 sign=0;
	xor.w	r0, r0	# tmp169
	st.w	[r13 + (-12)], r0	# sign, tmp169
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:74:                 if(f<0) {
	xor.w	r0, r0	# tmp170
	st.w	[sp + (4)], r0	#, tmp170
	ld.w	r0, [r13 + (-24)]	# tmp171, f
	st.w	[sp], r0	#, tmp171
	call	__ltsf2		#
	mov.w	r1, r0	# tmp172,
	xor.w	r0, r0	# tmp173
	cmp.w	r1, r0	# tmp172, tmp173
	jges	.L22		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:75:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp175, arg
	mov.w	r0, r0	# tmp174, tmp175
neg.w	r0	# tmp174
	st.w	[r13 + (-4)], r0	# arg, tmp174
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:76:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp177, sign
	add.w	r0, 1 #111	# tmp176,
	st.w	[r13 + (-12)], r0	# sign, tmp176
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:77:                     f = -f;
	ld.w	r0, [r13 + (-24)]	# tmp179, f
	mov.w	r1, -2147483648	# tmp180,
	xor.w	r0, r1	# tmp178, tmp180
	st.w	[r13 + (-24)], r0	# f, tmp178
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:79:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp181, arg
	mov.w	r0, 1999999999	# tmp182,
	cmp.w	r1, r0	# tmp181, tmp182
	jses	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:80:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp183,
	st.w	[r13 + (-4)], r0	# arg, tmp183
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:83:                 i=18;
	mov.w	r0, 18	# tmp184,
	st.w	[r13 + (-16)], r0	# i, tmp184
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:84:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp185,
	add.w	r0, -59 #111	# tmp185,
	ld.w	r1, [r13 + (-16)]	# tmp187, i
	add.w	r0, r1 #222	# tmp186, tmp187
	xor.w	r1, r1	# tmp188
	st.b	[r0], r1	# tmpstr, tmp188
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp189, arg
	mov.w	r1, 10	# tmp190,
	div.w	r0, r1	# _19, tmp190
mov.w	r0, r14	# _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp191,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp193, i
	add.w	r1, -1 #111	# tmp192,
	st.w	[r13 + (-16)], r1	# i, tmp192
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _22, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp194,
	add.w	r0, -59 #111	# tmp194,
	ld.w	r2, [r13 + (-16)]	# tmp196, i
	add.w	r0, r2 #222	# tmp195, tmp196
	st.b	[r0], r1	# tmpstr, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:87:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp198, arg
	mov.w	r1, 10	# tmp200,
	div.w	r0, r1	# tmp199, tmp200
	st.w	[r13 + (-4)], r0	# arg, tmp199
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:88:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp201, arg
	xor.w	r0, r0	# tmp202
	cmp.w	r1, r0	# tmp201, tmp202
	jz	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:88:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp203, i
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# tmp203, tmp204
	jgs	.L26		#
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:89:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp205, sign
	xor.w	r0, r0	# tmp206
	cmp.w	r1, r0	# tmp205, tmp206
	jz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:90:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp208, i
	add.w	r0, -1 #111	# tmp207,
	st.w	[r13 + (-16)], r0	# i, tmp207
	mov.w	r0, r13	# tmp209,
	add.w	r0, -59 #111	# tmp209,
	ld.w	r1, [r13 + (-16)]	# tmp211, i
	add.w	r0, r1 #222	# tmp210, tmp211
	mov.b	r1, 45	# tmp212,
	st.b	[r0], r1	# tmpstr, tmp212
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:93:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp213, len
	xor.w	r0, r0	# tmp214
	cmp.w	r1, r0	# tmp213, tmp214
	jses	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:93:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp215, len
	mov.w	r0, 17	# tmp216,
	cmp.w	r1, r0	# tmp215, tmp216
	jgs	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:94:                     while(i>18-len) {
	j	.L29		#
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:95:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp218, i
	add.w	r0, -1 #111	# tmp217,
	st.w	[r13 + (-16)], r0	# i, tmp217
	mov.w	r0, r13	# tmp219,
	add.w	r0, -59 #111	# tmp219,
	ld.w	r1, [r13 + (-16)]	# tmp221, i
	add.w	r0, r1 #222	# tmp220, tmp221
	mov.b	r1, 32	# tmp222,
	st.b	[r0], r1	# tmpstr, tmp222
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:94:                     while(i>18-len) {
	mov.w	r0, 18	# tmp223,
	ld.w	r1, [r13 + (-8)]	# tmp224, len
	sub.w	r0, r1 #222	# _23, tmp224
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:94:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp225, i
	cmp.w	r1, r0	# tmp225, _23
	jgs	.L30		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:98:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp226,
	add.w	r0, -59 #111	# tmp226,
	ld.w	r1, [r13 + (-16)]	# tmp228, i
	add.w	r0, r1 #222	# tmp227, tmp228
	st.w	[r13 + (-20)], r0	# p, tmp227
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:99:                 while(*p) {
	j	.L31		#
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.4_24, p
	mov.w	r0, r1	# tmp229, p.4_24
	add.w	r0, 1 #111	# tmp229,
	st.w	[r13 + (-20)], r0	# p, tmp229
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.5_25, dst
	mov.w	r2, r0	# tmp230, dst.5_25
	add.w	r2, 1 #111	# tmp230,
	st.w	[r13 + (8)], r2	# dst, tmp230
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _26, *p.4_24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.5_25, _26
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:99:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp231, p
	ld.b	r0, [r0]	# _27, *p_94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:99:                 while(*p) {
	sex.b	r1, r0	# tmp232, _27
	xor.w	r0, r0	# tmp233
	cmp.w	r1, r0	# tmp232, tmp233
	jnz	.L32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:103:                 *dst++ = '.';
	ld.w	r0, [r13 + (8)]	# dst.6_28, dst
	mov.w	r1, r0	# tmp234, dst.6_28
	add.w	r1, 1 #111	# tmp234,
	st.w	[r13 + (8)], r1	# dst, tmp234
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:103:                 *dst++ = '.';
	mov.b	r1, 46	# tmp235,
	st.b	[r0], r1	# *dst.6_28, tmp235
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:106:                 int int_f = f;
	ld.w	r0, [r13 + (-24)]	# tmp236, f
	st.w	[sp], r0	#, tmp236
	call	__fixsfsi		#
	st.w	[r13 + (-28)], r0	# int_f, tmp237
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:107:                 float rest = f - int_f;
	ld.w	r0, [r13 + (-28)]	# tmp238, int_f
	st.w	[sp], r0	#, tmp238
	call	__floatsisf		#
	mov.w	r1, r0	# _29,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:107:                 float rest = f - int_f;
	mov.w	r0, r1	# tmp239, _29
	st.w	[sp + (4)], r0	#, tmp239
	ld.w	r0, [r13 + (-24)]	# tmp240, f
	st.w	[sp], r0	#, tmp240
	call	__subsf3		#
	mov.w	r1, r0	# tmp241,
	mov.w	r0, r1	# tmp242, tmp241
	st.w	[r13 + (-40)], r0	# rest, tmp242
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:108:                 rest *= 10000.0;
	mov.w	r0, 1176256512	# tmp243,
	st.w	[sp + (4)], r0	#, tmp243
	ld.w	r0, [r13 + (-40)]	# tmp244, rest
	st.w	[sp], r0	#, tmp244
	call	__mulsf3		#
	mov.w	r1, r0	# tmp245,
	mov.w	r0, r1	# tmp246, tmp245
	st.w	[r13 + (-40)], r0	# rest, tmp246
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                 int_f = rest;
	ld.w	r0, [r13 + (-40)]	# tmp247, rest
	st.w	[sp], r0	#, tmp247
	call	__fixsfsi		#
	st.w	[r13 + (-28)], r0	# int_f, tmp248
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                 i = 5;
	mov.w	r0, 5	# tmp249,
	st.w	[r13 + (-16)], r0	# i, tmp249
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:112:                 tmpstr[i] = 0;
	mov.w	r0, r13	# tmp250,
	add.w	r0, -59 #111	# tmp250,
	ld.w	r1, [r13 + (-16)]	# tmp252, i
	add.w	r0, r1 #222	# tmp251, tmp252
	xor.w	r1, r1	# tmp253
	st.b	[r0], r1	# tmpstr, tmp253
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     tmpstr[--i]='0'+(int_f % 10);
	ld.w	r0, [r13 + (-28)]	# tmp254, int_f
	mov.w	r1, 10	# tmp255,
	div.w	r0, r1	# _30, tmp255
mov.w	r0, r14	# _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     tmpstr[--i]='0'+(int_f % 10);
	add.w	r0, 48 #111	# tmp256,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     tmpstr[--i]='0'+(int_f % 10);
	ld.w	r1, [r13 + (-16)]	# tmp258, i
	add.w	r1, -1 #111	# tmp257,
	st.w	[r13 + (-16)], r1	# i, tmp257
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     tmpstr[--i]='0'+(int_f % 10);
	mov.w	r1, r0	# _33, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     tmpstr[--i]='0'+(int_f % 10);
	mov.w	r0, r13	# tmp259,
	add.w	r0, -59 #111	# tmp259,
	ld.w	r2, [r13 + (-16)]	# tmp261, i
	add.w	r0, r2 #222	# tmp260, tmp261
	st.b	[r0], r1	# tmpstr, _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                     int_f /= 10;
	ld.w	r0, [r13 + (-28)]	# tmp263, int_f
	mov.w	r1, 10	# tmp265,
	div.w	r0, r1	# tmp264, tmp265
	st.w	[r13 + (-28)], r0	# int_f, tmp264
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:116:                 } while(i > 0);
	ld.w	r1, [r13 + (-16)]	# tmp266, i
	xor.w	r0, r0	# tmp267
	cmp.w	r1, r0	# tmp266, tmp267
	jgs	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:117:                 p=&tmpstr[1];
	mov.w	r0, r13	# tmp268,
	add.w	r0, -59 #111	# tmp268,
	add.w	r0, 1 #111	# tmp269,
	st.w	[r13 + (-20)], r0	# p, tmp269
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:118:                 while(*p) {
	j	.L34		#
.L35:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.7_34, p
	mov.w	r0, r1	# tmp270, p.7_34
	add.w	r0, 1 #111	# tmp270,
	st.w	[r13 + (-20)], r0	# p, tmp270
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.8_35, dst
	mov.w	r2, r0	# tmp271, dst.8_35
	add.w	r2, 1 #111	# tmp271,
	st.w	[r13 + (8)], r2	# dst, tmp271
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _36, *p.7_34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.8_35, _36
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:118:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp272, p
	ld.b	r0, [r0]	# _37, *p_95
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:118:                 while(*p) {
	sex.b	r1, r0	# tmp273, _37
	xor.w	r0, r0	# tmp274
	cmp.w	r1, r0	# tmp273, tmp274
	jnz	.L35		#
	j	.L36		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:123:             if(*fmt=='d') {
	ld.w	r0, [r13 + (12)]	# tmp275, fmt
	ld.b	r0, [r0]	# _38, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:123:             if(*fmt=='d') {
	sex.b	r1, r0	# tmp276, _38
	mov.w	r0, 100	# tmp277,
	cmp.w	r1, r0	# tmp276, tmp277
	jnz	.L37		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:124:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1663, args
	mov.w	r1, r0	# D.1664, D.1663
	add.w	r1, 4 #111	# D.1664,
	st.w	[r13 + (16)], r1	# args, D.1664
	ld.w	r0, [r0]	# tmp278, MEM[(int *)_233]
	st.w	[r13 + (-4)], r0	# arg, tmp278
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:126:                 sign=0;
	xor.w	r0, r0	# tmp279
	st.w	[r13 + (-12)], r0	# sign, tmp279
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:127:                 if((int)arg<0) {
	ld.w	r1, [r13 + (-4)]	# tmp280, arg
	xor.w	r0, r0	# tmp281
	cmp.w	r1, r0	# tmp280, tmp281
	jges	.L38		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:128:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp283, arg
	mov.w	r0, r0	# tmp282, tmp283
neg.w	r0	# tmp282
	st.w	[r13 + (-4)], r0	# arg, tmp282
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:129:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp285, sign
	add.w	r0, 1 #111	# tmp284,
	st.w	[r13 + (-12)], r0	# sign, tmp284
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:131:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp286, arg
	mov.w	r0, 1999999999	# tmp287,
	cmp.w	r1, r0	# tmp286, tmp287
	jses	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:132:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp288,
	st.w	[r13 + (-4)], r0	# arg, tmp288
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:135:                 i=18;
	mov.w	r0, 18	# tmp289,
	st.w	[r13 + (-16)], r0	# i, tmp289
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:136:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp290,
	add.w	r0, -59 #111	# tmp290,
	ld.w	r1, [r13 + (-16)]	# tmp292, i
	add.w	r0, r1 #222	# tmp291, tmp292
	xor.w	r1, r1	# tmp293
	st.b	[r0], r1	# tmpstr, tmp293
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:138:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp294, arg
	mov.w	r1, 10	# tmp295,
	div.w	r0, r1	# _39, tmp295
mov.w	r0, r14	# _39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:138:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp296,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:138:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp298, i
	add.w	r1, -1 #111	# tmp297,
	st.w	[r13 + (-16)], r1	# i, tmp297
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:138:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _42, _41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:138:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp299,
	add.w	r0, -59 #111	# tmp299,
	ld.w	r2, [r13 + (-16)]	# tmp301, i
	add.w	r0, r2 #222	# tmp300, tmp301
	st.b	[r0], r1	# tmpstr, _42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp303, arg
	mov.w	r1, 10	# tmp305,
	div.w	r0, r1	# tmp304, tmp305
	st.w	[r13 + (-4)], r0	# arg, tmp304
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:140:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp306, arg
	xor.w	r0, r0	# tmp307
	cmp.w	r1, r0	# tmp306, tmp307
	jz	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:140:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp308, i
	xor.w	r0, r0	# tmp309
	cmp.w	r1, r0	# tmp308, tmp309
	jgs	.L41		#
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:141:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp310, sign
	xor.w	r0, r0	# tmp311
	cmp.w	r1, r0	# tmp310, tmp311
	jz	.L42		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp313, i
	add.w	r0, -1 #111	# tmp312,
	st.w	[r13 + (-16)], r0	# i, tmp312
	mov.w	r0, r13	# tmp314,
	add.w	r0, -59 #111	# tmp314,
	ld.w	r1, [r13 + (-16)]	# tmp316, i
	add.w	r0, r1 #222	# tmp315, tmp316
	mov.b	r1, 45	# tmp317,
	st.b	[r0], r1	# tmpstr, tmp317
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:145:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp318, len
	xor.w	r0, r0	# tmp319
	cmp.w	r1, r0	# tmp318, tmp319
	jses	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:145:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp320, len
	mov.w	r0, 17	# tmp321,
	cmp.w	r1, r0	# tmp320, tmp321
	jgs	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:146:                     while(i>18-len) {
	j	.L44		#
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:147:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp323, i
	add.w	r0, -1 #111	# tmp322,
	st.w	[r13 + (-16)], r0	# i, tmp322
	mov.w	r0, r13	# tmp324,
	add.w	r0, -59 #111	# tmp324,
	ld.w	r1, [r13 + (-16)]	# tmp326, i
	add.w	r0, r1 #222	# tmp325, tmp326
	mov.b	r1, 32	# tmp327,
	st.b	[r0], r1	# tmpstr, tmp327
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:146:                     while(i>18-len) {
	mov.w	r0, 18	# tmp328,
	ld.w	r1, [r13 + (-8)]	# tmp329, len
	sub.w	r0, r1 #222	# _43, tmp329
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:146:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp330, i
	cmp.w	r1, r0	# tmp330, _43
	jgs	.L45		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:150:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp331,
	add.w	r0, -59 #111	# tmp331,
	ld.w	r1, [r13 + (-16)]	# tmp333, i
	add.w	r0, r1 #222	# tmp332, tmp333
	st.w	[r13 + (-20)], r0	# p, tmp332
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:151:                 goto copystring;
	j	.L46		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:154:             if(*fmt=='x') {
	ld.w	r0, [r13 + (12)]	# tmp334, fmt
	ld.b	r0, [r0]	# _44, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:154:             if(*fmt=='x') {
	sex.b	r1, r0	# tmp335, _44
	mov.w	r0, 120	# tmp336,
	cmp.w	r1, r0	# tmp335, tmp336
	jnz	.L47		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:155:                 arg = va_arg(args, long int);
	ld.w	r0, [r13 + (16)]	# D.1665, args
	mov.w	r1, r0	# D.1666, D.1665
	add.w	r1, 4 #111	# D.1666,
	st.w	[r13 + (16)], r1	# args, D.1666
	ld.w	r0, [r0]	# tmp337, MEM[(long int *)_230]
	st.w	[r13 + (-4)], r0	# arg, tmp337
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:157:                 i=16;
	mov.w	r0, 16	# tmp338,
	st.w	[r13 + (-16)], r0	# i, tmp338
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:158:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp339,
	add.w	r0, -59 #111	# tmp339,
	ld.w	r1, [r13 + (-16)]	# tmp341, i
	add.w	r0, r1 #222	# tmp340, tmp341
	xor.w	r1, r1	# tmp342
	st.b	[r0], r1	# tmpstr, tmp342
.L51:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:160:                     char n=arg & 0xf;
	ld.w	r0, [r13 + (-4)]	# tmp343, arg
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:160:                     char n=arg & 0xf;
	mov.w	r1, 15	# tmp345,
	and.w	r0, r1	# tmp344, tmp345
	st.b	[r13 + (-33)], r0	# n, tmp346
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:162:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.b	r0, [r13 + (-33)]	#, n
	sex.b	r1, r0	# tmp347,
	mov.w	r0, 9	# tmp348,
	cmp.w	r1, r0	# tmp347, tmp348
	jses	.L48		#
	mov.b	r0, 55	# iftmp.9_102,
	j	.L49		#
.L48:
	mov.b	r0, 48	# iftmp.9_102,
.L49:
	ld.b	r1, [r13 + (-33)]	# n.10_46, n
	add.w	r0, r1 #222	# tmp349, tmp350
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:162:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.w	r1, [r13 + (-16)]	# tmp352, i
	add.w	r1, -1 #111	# tmp351,
	st.w	[r13 + (-16)], r1	# i, tmp351
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:162:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r1, r0	# _48, _47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:162:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r0, r13	# tmp353,
	add.w	r0, -59 #111	# tmp353,
	ld.w	r2, [r13 + (-16)]	# tmp355, i
	add.w	r0, r2 #222	# tmp354, tmp355
	st.b	[r0], r1	# tmpstr, _48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:163:                     arg>>=4;
	ld.w	r0, [r13 + (-4)]	# tmp357, arg
	mov.w	r1, 4	# tmp358,
	shr.w	r0, r1	# tmp356, tmp358
	st.w	[r13 + (-4)], r0	# arg, tmp356
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp359, arg
	xor.w	r0, r0	# tmp360
	cmp.w	r1, r0	# tmp359, tmp360
	jz	.L50		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp361, i
	xor.w	r0, r0	# tmp362
	cmp.w	r1, r0	# tmp361, tmp362
	jgs	.L51		#
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:166:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp363, len
	xor.w	r0, r0	# tmp364
	cmp.w	r1, r0	# tmp363, tmp364
	jses	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:166:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp365, len
	mov.w	r0, 16	# tmp366,
	cmp.w	r1, r0	# tmp365, tmp366
	jgs	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:167:                     while(i>16-len) {
	j	.L53		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:168:                         tmpstr[--i]='0';
	ld.w	r0, [r13 + (-16)]	# tmp368, i
	add.w	r0, -1 #111	# tmp367,
	st.w	[r13 + (-16)], r0	# i, tmp367
	mov.w	r0, r13	# tmp369,
	add.w	r0, -59 #111	# tmp369,
	ld.w	r1, [r13 + (-16)]	# tmp371, i
	add.w	r0, r1 #222	# tmp370, tmp371
	mov.b	r1, 48	# tmp372,
	st.b	[r0], r1	# tmpstr, tmp372
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:167:                     while(i>16-len) {
	mov.w	r0, 16	# tmp373,
	ld.w	r1, [r13 + (-8)]	# tmp374, len
	sub.w	r0, r1 #222	# _49, tmp374
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:167:                     while(i>16-len) {
	ld.w	r1, [r13 + (-16)]	# tmp375, i
	cmp.w	r1, r0	# tmp375, _49
	jgs	.L54		#
.L52:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:171:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp376,
	add.w	r0, -59 #111	# tmp376,
	ld.w	r1, [r13 + (-16)]	# tmp378, i
	add.w	r0, r1 #222	# tmp377, tmp378
	st.w	[r13 + (-20)], r0	# p, tmp377
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:172:                 goto copystring;
	j	.L46		#
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:175:             if(*fmt=='s') {
	ld.w	r0, [r13 + (12)]	# tmp379, fmt
	ld.b	r0, [r0]	# _50, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:175:             if(*fmt=='s') {
	sex.b	r1, r0	# tmp380, _50
	mov.w	r0, 115	# tmp381,
	cmp.w	r1, r0	# tmp380, tmp381
	jnz	.L36		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:176:                 p = va_arg(args, char*);
	ld.w	r0, [r13 + (16)]	# D.1667, args
	mov.w	r1, r0	# D.1668, D.1667
	add.w	r1, 4 #111	# D.1668,
	st.w	[r13 + (16)], r1	# args, D.1668
	ld.w	r0, [r0]	# tmp382, MEM[(char * *)_227]
	st.w	[r13 + (-20)], r0	# p, tmp382
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:177: copystring:     if(p==(void*)0) {
	ld.w	r1, [r13 + (-20)]	# tmp383, p
	xor.w	r0, r0	# tmp384
	cmp.w	r1, r0	# tmp383, tmp384
	jnz	.L56		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:178:                     p="(null)";
	mov.w	r0, .LC2	# tmp385,
	st.w	[r13 + (-20)], r0	# p, tmp385
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:180:                 while(*p) {
	j	.L56		#
.L57:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.11_51, p
	mov.w	r0, r1	# tmp386, p.11_51
	add.w	r0, 1 #111	# tmp386,
	st.w	[r13 + (-20)], r0	# p, tmp386
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.12_52, dst
	mov.w	r2, r0	# tmp387, dst.12_52
	add.w	r2, 1 #111	# tmp387,
	st.w	[r13 + (8)], r2	# dst, tmp387
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _53, *p.11_51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.12_52, _53
.L56:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:180:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp388, p
	ld.b	r0, [r0]	# _54, *p_98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:180:                 while(*p) {
	sex.b	r1, r0	# tmp389, _54
	xor.w	r0, r0	# tmp390
	cmp.w	r1, r0	# tmp389, tmp390
	jnz	.L57		#
	j	.L36		#
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185: put:        *dst++ = *fmt;
	nop	
	j	.L6		#
.L65:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:30:                 goto put;
	nop	
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185: put:        *dst++ = *fmt;
	ld.w	r0, [r13 + (8)]	# dst.13_55, dst
	mov.w	r1, r0	# tmp391, dst.13_55
	add.w	r1, 1 #111	# tmp391,
	st.w	[r13 + (8)], r1	# dst, tmp391
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185: put:        *dst++ = *fmt;
	ld.w	r1, [r13 + (12)]	# tmp392, fmt
	ld.b	r1, [r1]	# _56, *fmt_67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185: put:        *dst++ = *fmt;
	st.b	[r0], r1	# *dst.13_55, _56
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:187:         fmt++;
	ld.w	r0, [r13 + (12)]	# tmp394, fmt
	add.w	r0, 1 #111	# tmp393,
	st.w	[r13 + (12)], r0	# fmt, tmp393
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	ld.w	r0, [r13 + (12)]	# tmp395, fmt
	ld.b	r0, [r0]	# _57, *fmt_69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	sex.b	r1, r0	# tmp396, _57
	xor.w	r0, r0	# tmp397
	cmp.w	r1, r0	# tmp396, tmp397
	jnz	.L58		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:189:     *dst=0;
	ld.w	r0, [r13 + (8)]	# tmp398, dst
	xor.w	r1, r1	# tmp399
	st.b	[r0], r1	# *dst_64, tmp399
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:191:     return dst-orig;
	ld.w	r0, [r13 + (8)]	# tmp400, dst
	ld.w	r1, [r13 + (-32)]	# tmp401, orig
	sub.w	r0, r1 #222	# _58, tmp401
.L59:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:192: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	vsprintf, .-vsprintf
	.p2align	1
	.global	sprintf
	.type	sprintf, @function
sprintf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:200:     va_start(args, fmt);
	mov.w	r0, r13	# tmp29,
	add.w	r0, 16 #111	# tmp29,
	st.w	[r13 + (-4)], r0	# MEM[(void * *)&args], tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:201:     return vsprintf(dst,fmt,args);
	ld.w	r1, [r13 + (-4)]	# args.14_1, args
	mov.w	r0, sp	# tmp30,
	st.w	[r0 + (8)], r1	#, args.14_1
	ld.w	r1, [r13 + (12)]	# tmp31, fmt
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, dst
	st.w	[r0], r1	#, tmp32
	call	vsprintf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:202: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintf, .-sprintf
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
