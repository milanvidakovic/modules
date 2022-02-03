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
	ld.w	r0, [r13 + (8)]	# tmp99, dst
	st.w	[r13 + (-32)], r0	# orig, tmp99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:18:     if(dst==(void*)0 || fmt==(void*)0) {
	ld.w	r1, [r13 + (8)]	# tmp100, dst
	xor.w	r0, r0	# tmp101
	cmp.w	r1, r0	# tmp100, tmp101
	jz	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:18:     if(dst==(void*)0 || fmt==(void*)0) {
	ld.w	r1, [r13 + (12)]	# tmp102, fmt
	xor.w	r0, r0	# tmp103
	cmp.w	r1, r0	# tmp102, tmp103
	jnz	.L3		#
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:19:         return 0;
	xor.w	r0, r0	# _101
	j	.L59		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:23:     arg = 0;
	xor.w	r0, r0	# tmp104
	st.w	[r13 + (-4)], r0	# arg, tmp104
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	j	.L5		#
.L58:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp105, fmt
	ld.b	r0, [r0]	# _1, *fmt_69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	sex.b	r1, r0	# tmp106, _1
	mov.w	r0, 37	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jnz	.L64		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:27:             fmt++;
	ld.w	r0, [r13 + (12)]	# tmp109, fmt
	add.w	r0, 1 #111	# tmp108,
	st.w	[r13 + (12)], r0	# fmt, tmp108
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp110, fmt
	ld.b	r0, [r0]	# _2, *fmt_130
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	sex.b	r1, r0	# tmp111, _2
	mov.w	r0, 37	# tmp112,
	cmp.w	r1, r0	# tmp111, tmp112
	jz	.L65		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:32:             len=0;
	xor.w	r0, r0	# tmp113
	st.w	[r13 + (-8)], r0	# len, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	j	.L8		#
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:35:                 len *= 10;
	ld.w	r1, [r13 + (-8)]	# tmp114, len
	mov.w	r0, r1	# tmp115, tmp114
	mov.w	r2, 2	# tmp117,
	shl.w	r0, r2	# tmp116, tmp117
	add.w	r0, r1 #222	# tmp115, tmp114
	add.w	r0, r0 #222	# tmp118, tmp115
	st.w	[r13 + (-8)], r0	# len, tmp115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	ld.w	r0, [r13 + (12)]	# tmp119, fmt
	ld.b	r0, [r0]	# _3, *fmt_65
	sex.b	r0, r0	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	mov.w	r1, r0	# _5, _4
	add.w	r1, -48 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	ld.w	r0, [r13 + (-8)]	# tmp121, len
	add.w	r0, r1 #222	# tmp120, _5
	st.w	[r13 + (-8)], r0	# len, tmp120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:37:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp123, fmt
	add.w	r0, 1 #111	# tmp122,
	st.w	[r13 + (12)], r0	# fmt, tmp122
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	ld.w	r0, [r13 + (12)]	# tmp124, fmt
	ld.b	r0, [r0]	# _6, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	sex.b	r1, r0	# tmp125, _6
	mov.w	r0, 47	# tmp126,
	cmp.w	r1, r0	# tmp125, tmp126
	jses	.L9		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	ld.w	r0, [r13 + (12)]	# tmp127, fmt
	ld.b	r0, [r0]	# _7, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	sex.b	r1, r0	# tmp128, _7
	mov.w	r0, 57	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jses	.L10		#
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:40:             if(*fmt=='l') {
	ld.w	r0, [r13 + (12)]	# tmp130, fmt
	ld.b	r0, [r0]	# _8, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:40:             if(*fmt=='l') {
	sex.b	r1, r0	# tmp131, _8
	mov.w	r0, 108	# tmp132,
	cmp.w	r1, r0	# tmp131, tmp132
	jnz	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:41:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp134, fmt
	add.w	r0, 1 #111	# tmp133,
	st.w	[r13 + (12)], r0	# fmt, tmp133
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:44:             if(*fmt=='c') {
	ld.w	r0, [r13 + (12)]	# tmp135, fmt
	ld.b	r0, [r0]	# _9, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:44:             if(*fmt=='c') {
	sex.b	r1, r0	# tmp136, _9
	mov.w	r0, 99	# tmp137,
	cmp.w	r1, r0	# tmp136, tmp137
	jnz	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:45:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1659, args
	mov.w	r1, r0	# D.1660, D.1659
	add.w	r1, 4 #111	# D.1660,
	st.w	[r13 + (16)], r1	# args, D.1660
	ld.w	r0, [r0]	# tmp138, MEM[(int *)_243]
	st.w	[r13 + (-4)], r0	# arg, tmp138
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:46:                 *dst++ = arg;
	ld.w	r0, [r13 + (8)]	# dst.0_10, dst
	mov.w	r1, r0	# tmp139, dst.0_10
	add.w	r1, 1 #111	# tmp139,
	st.w	[r13 + (8)], r1	# dst, tmp139
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:46:                 *dst++ = arg;
	ld.w	r1, [r13 + (-4)]	# tmp140, arg
	st.b	[r0], r1	# *dst.0_10, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:47:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp142, fmt
	add.w	r0, 1 #111	# tmp141,
	st.w	[r13 + (12)], r0	# fmt, tmp141
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:48:                 continue;
	j	.L5		#
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:50:             if (*fmt=='f')
	ld.w	r0, [r13 + (12)]	# tmp143, fmt
	ld.b	r0, [r0]	# _12, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:50:             if (*fmt=='f')
	sex.b	r1, r0	# tmp144, _12
	mov.w	r0, 102	# tmp145,
	cmp.w	r1, r0	# tmp144, tmp145
	jnz	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:52:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1661, args
	mov.w	r1, r0	# D.1662, D.1661
	add.w	r1, 4 #111	# D.1662,
	st.w	[r13 + (16)], r1	# args, D.1662
	ld.w	r0, [r0]	# tmp146, MEM[(int *)_237]
	st.w	[r13 + (-4)], r0	# arg, tmp146
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:53:                 va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1663, args
	add.w	r0, 4 #111	# D.1664,
	st.w	[r13 + (16)], r0	# args, D.1664
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:55:                 ts.word = arg;
	ld.w	r0, [r13 + (-4)]	# arg.1_13, arg
	st.w	[r13 + (-64)], r0	# ts.word, arg.1_13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:56:                 float f = ts.value;
	ld.w	r0, [r13 + (-64)]	# tmp147, ts
	st.w	[r13 + (-24)], r0	# f, tmp147
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:58:                 arg = (ts.value);
	ld.w	r0, [r13 + (-64)]	# _14, ts
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:58:                 arg = (ts.value);
	st.w	[sp], r0	#, tmp148
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# arg, tmp149
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:60:                 if (f == INF || f == -INF)
	mov.w	r0, 1325334528	# tmp150,
	st.w	[sp + (4)], r0	#, tmp150
	ld.w	r0, [r13 + (-24)]	# tmp151, f
	st.w	[sp], r0	#, tmp151
	call	__eqsf2		#
	mov.w	r1, r0	# tmp152,
	xor.w	r0, r0	# tmp153
	cmp.w	r1, r0	# tmp152, tmp153
	jz	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:60:                 if (f == INF || f == -INF)
	mov.w	r0, -822149120	# tmp154,
	st.w	[sp + (4)], r0	#, tmp154
	ld.w	r0, [r13 + (-24)]	# tmp155, f
	st.w	[sp], r0	#, tmp155
	call	__eqsf2		#
	mov.w	r1, r0	# tmp156,
	xor.w	r0, r0	# tmp157
	cmp.w	r1, r0	# tmp156, tmp157
	jnz	.L62		#
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:62:                     if (f == INF)
	mov.w	r0, 1325334528	# tmp158,
	st.w	[sp + (4)], r0	#, tmp158
	ld.w	r0, [r13 + (-24)]	# tmp159, f
	st.w	[sp], r0	#, tmp159
	call	__eqsf2		#
	mov.w	r1, r0	# tmp160,
	xor.w	r0, r0	# tmp161
	cmp.w	r1, r0	# tmp160, tmp161
	jnz	.L63		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:63:                         p ="(inf)";
	mov.w	r0, .LC0	# tmp162,
	st.w	[r13 + (-20)], r0	# p, tmp162
	j	.L20		#
.L63:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:65:                         p = "(-inf)";
	mov.w	r0, .LC1	# tmp163,
	st.w	[r13 + (-20)], r0	# p, tmp163
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                     while(*p) {
	j	.L20		#
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:67:                         *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.2_15, p
	mov.w	r0, r1	# tmp164, p.2_15
	add.w	r0, 1 #111	# tmp164,
	st.w	[r13 + (-20)], r0	# p, tmp164
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:67:                         *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.3_16, dst
	mov.w	r2, r0	# tmp165, dst.3_16
	add.w	r2, 1 #111	# tmp165,
	st.w	[r13 + (8)], r2	# dst, tmp165
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:67:                         *dst++ = *p++;
	ld.b	r1, [r1]	# _17, *p.2_15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:67:                         *dst++ = *p++;
	st.b	[r0], r1	# *dst.3_16, _17
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                     while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp166, p
	ld.b	r0, [r0]	# _18, *p_93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                     while(*p) {
	sex.b	r1, r0	# tmp167, _18
	xor.w	r0, r0	# tmp168
	cmp.w	r1, r0	# tmp167, tmp168
	jnz	.L21		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:69:                     fmt++;
	ld.w	r0, [r13 + (12)]	# tmp170, fmt
	add.w	r0, 1 #111	# tmp169,
	st.w	[r13 + (12)], r0	# fmt, tmp169
	j	.L5		#
.L62:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:74:                 sign=0;
	xor.w	r0, r0	# tmp171
	st.w	[r13 + (-12)], r0	# sign, tmp171
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:75:                 if(f<0) {
	xor.w	r0, r0	# tmp172
	st.w	[sp + (4)], r0	#, tmp172
	ld.w	r0, [r13 + (-24)]	# tmp173, f
	st.w	[sp], r0	#, tmp173
	call	__ltsf2		#
	mov.w	r1, r0	# tmp174,
	xor.w	r0, r0	# tmp175
	cmp.w	r1, r0	# tmp174, tmp175
	jges	.L22		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:76:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp177, arg
	mov.w	r0, r0	# tmp176, tmp177
neg.w	r0	# tmp176
	st.w	[r13 + (-4)], r0	# arg, tmp176
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:77:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp179, sign
	add.w	r0, 1 #111	# tmp178,
	st.w	[r13 + (-12)], r0	# sign, tmp178
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:78:                     f = -f;
	ld.w	r0, [r13 + (-24)]	# tmp181, f
	mov.w	r1, -2147483648	# tmp182,
	xor.w	r0, r1	# tmp180, tmp182
	st.w	[r13 + (-24)], r0	# f, tmp180
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:80:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp183, arg
	mov.w	r0, 1999999999	# tmp184,
	cmp.w	r1, r0	# tmp183, tmp184
	jses	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:81:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp185,
	st.w	[r13 + (-4)], r0	# arg, tmp185
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:84:                 i=18;
	mov.w	r0, 18	# tmp186,
	st.w	[r13 + (-16)], r0	# i, tmp186
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:85:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp187,
	add.w	r0, -59 #111	# tmp187,
	ld.w	r1, [r13 + (-16)]	# tmp189, i
	add.w	r0, r1 #222	# tmp188, tmp189
	xor.w	r1, r1	# tmp190
	st.b	[r0], r1	# tmpstr, tmp190
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:87:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp191, arg
	mov.w	r1, 10	# tmp192,
	div.w	r0, r1	# _19, tmp192
mov.w	r0, r14	# _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:87:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp193,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:87:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp195, i
	add.w	r1, -1 #111	# tmp194,
	st.w	[r13 + (-16)], r1	# i, tmp194
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:87:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _22, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:87:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp196,
	add.w	r0, -59 #111	# tmp196,
	ld.w	r2, [r13 + (-16)]	# tmp198, i
	add.w	r0, r2 #222	# tmp197, tmp198
	st.b	[r0], r1	# tmpstr, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:88:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp200, arg
	mov.w	r1, 10	# tmp202,
	div.w	r0, r1	# tmp201, tmp202
	st.w	[r13 + (-4)], r0	# arg, tmp201
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:89:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp203, arg
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# tmp203, tmp204
	jz	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:89:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp205, i
	xor.w	r0, r0	# tmp206
	cmp.w	r1, r0	# tmp205, tmp206
	jgs	.L26		#
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:90:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp207, sign
	xor.w	r0, r0	# tmp208
	cmp.w	r1, r0	# tmp207, tmp208
	jz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:91:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp210, i
	add.w	r0, -1 #111	# tmp209,
	st.w	[r13 + (-16)], r0	# i, tmp209
	mov.w	r0, r13	# tmp211,
	add.w	r0, -59 #111	# tmp211,
	ld.w	r1, [r13 + (-16)]	# tmp213, i
	add.w	r0, r1 #222	# tmp212, tmp213
	mov.b	r1, 45	# tmp214,
	st.b	[r0], r1	# tmpstr, tmp214
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:94:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp215, len
	xor.w	r0, r0	# tmp216
	cmp.w	r1, r0	# tmp215, tmp216
	jses	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:94:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp217, len
	mov.w	r0, 17	# tmp218,
	cmp.w	r1, r0	# tmp217, tmp218
	jgs	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:95:                     while(i>18-len) {
	j	.L29		#
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:96:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp220, i
	add.w	r0, -1 #111	# tmp219,
	st.w	[r13 + (-16)], r0	# i, tmp219
	mov.w	r0, r13	# tmp221,
	add.w	r0, -59 #111	# tmp221,
	ld.w	r1, [r13 + (-16)]	# tmp223, i
	add.w	r0, r1 #222	# tmp222, tmp223
	mov.b	r1, 32	# tmp224,
	st.b	[r0], r1	# tmpstr, tmp224
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:95:                     while(i>18-len) {
	mov.w	r0, 18	# tmp225,
	ld.w	r1, [r13 + (-8)]	# tmp226, len
	sub.w	r0, r1 #222	# _23, tmp226
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:95:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp227, i
	cmp.w	r1, r0	# tmp227, _23
	jgs	.L30		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:99:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp228,
	add.w	r0, -59 #111	# tmp228,
	ld.w	r1, [r13 + (-16)]	# tmp230, i
	add.w	r0, r1 #222	# tmp229, tmp230
	st.w	[r13 + (-20)], r0	# p, tmp229
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                 while(*p) {
	j	.L31		#
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:101:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.4_24, p
	mov.w	r0, r1	# tmp231, p.4_24
	add.w	r0, 1 #111	# tmp231,
	st.w	[r13 + (-20)], r0	# p, tmp231
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:101:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.5_25, dst
	mov.w	r2, r0	# tmp232, dst.5_25
	add.w	r2, 1 #111	# tmp232,
	st.w	[r13 + (8)], r2	# dst, tmp232
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:101:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _26, *p.4_24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:101:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.5_25, _26
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp233, p
	ld.b	r0, [r0]	# _27, *p_94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                 while(*p) {
	sex.b	r1, r0	# tmp234, _27
	xor.w	r0, r0	# tmp235
	cmp.w	r1, r0	# tmp234, tmp235
	jnz	.L32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:104:                 *dst++ = '.';
	ld.w	r0, [r13 + (8)]	# dst.6_28, dst
	mov.w	r1, r0	# tmp236, dst.6_28
	add.w	r1, 1 #111	# tmp236,
	st.w	[r13 + (8)], r1	# dst, tmp236
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:104:                 *dst++ = '.';
	mov.b	r1, 46	# tmp237,
	st.b	[r0], r1	# *dst.6_28, tmp237
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:107:                 int int_f = f;
	ld.w	r0, [r13 + (-24)]	# tmp238, f
	st.w	[sp], r0	#, tmp238
	call	__fixsfsi		#
	st.w	[r13 + (-28)], r0	# int_f, tmp239
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:108:                 float rest = f - int_f;
	ld.w	r0, [r13 + (-28)]	# tmp240, int_f
	st.w	[sp], r0	#, tmp240
	call	__floatsisf		#
	mov.w	r1, r0	# _29,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:108:                 float rest = f - int_f;
	mov.w	r0, r1	# tmp241, _29
	st.w	[sp + (4)], r0	#, tmp241
	ld.w	r0, [r13 + (-24)]	# tmp242, f
	st.w	[sp], r0	#, tmp242
	call	__subsf3		#
	mov.w	r1, r0	# tmp243,
	mov.w	r0, r1	# tmp244, tmp243
	st.w	[r13 + (-40)], r0	# rest, tmp244
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                 rest *= 10000.0;
	mov.w	r0, 1176256512	# tmp245,
	st.w	[sp + (4)], r0	#, tmp245
	ld.w	r0, [r13 + (-40)]	# tmp246, rest
	st.w	[sp], r0	#, tmp246
	call	__mulsf3		#
	mov.w	r1, r0	# tmp247,
	mov.w	r0, r1	# tmp248, tmp247
	st.w	[r13 + (-40)], r0	# rest, tmp248
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:110:                 int_f = rest;
	ld.w	r0, [r13 + (-40)]	# tmp249, rest
	st.w	[sp], r0	#, tmp249
	call	__fixsfsi		#
	st.w	[r13 + (-28)], r0	# int_f, tmp250
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:112:                 i = 5;
	mov.w	r0, 5	# tmp251,
	st.w	[r13 + (-16)], r0	# i, tmp251
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:113:                 tmpstr[i] = 0;
	mov.w	r0, r13	# tmp252,
	add.w	r0, -59 #111	# tmp252,
	ld.w	r1, [r13 + (-16)]	# tmp254, i
	add.w	r0, r1 #222	# tmp253, tmp254
	xor.w	r1, r1	# tmp255
	st.b	[r0], r1	# tmpstr, tmp255
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                     tmpstr[--i]='0'+(int_f % 10);
	ld.w	r0, [r13 + (-28)]	# tmp256, int_f
	mov.w	r1, 10	# tmp257,
	div.w	r0, r1	# _30, tmp257
mov.w	r0, r14	# _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                     tmpstr[--i]='0'+(int_f % 10);
	add.w	r0, 48 #111	# tmp258,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                     tmpstr[--i]='0'+(int_f % 10);
	ld.w	r1, [r13 + (-16)]	# tmp260, i
	add.w	r1, -1 #111	# tmp259,
	st.w	[r13 + (-16)], r1	# i, tmp259
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                     tmpstr[--i]='0'+(int_f % 10);
	mov.w	r1, r0	# _33, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                     tmpstr[--i]='0'+(int_f % 10);
	mov.w	r0, r13	# tmp261,
	add.w	r0, -59 #111	# tmp261,
	ld.w	r2, [r13 + (-16)]	# tmp263, i
	add.w	r0, r2 #222	# tmp262, tmp263
	st.b	[r0], r1	# tmpstr, _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:116:                     int_f /= 10;
	ld.w	r0, [r13 + (-28)]	# tmp265, int_f
	mov.w	r1, 10	# tmp267,
	div.w	r0, r1	# tmp266, tmp267
	st.w	[r13 + (-28)], r0	# int_f, tmp266
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:117:                 } while(i > 0);
	ld.w	r1, [r13 + (-16)]	# tmp268, i
	xor.w	r0, r0	# tmp269
	cmp.w	r1, r0	# tmp268, tmp269
	jgs	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:118:                 p=&tmpstr[1];
	mov.w	r0, r13	# tmp270,
	add.w	r0, -59 #111	# tmp270,
	add.w	r0, 1 #111	# tmp271,
	st.w	[r13 + (-20)], r0	# p, tmp271
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                 while(*p) {
	j	.L34		#
.L35:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.7_34, p
	mov.w	r0, r1	# tmp272, p.7_34
	add.w	r0, 1 #111	# tmp272,
	st.w	[r13 + (-20)], r0	# p, tmp272
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.8_35, dst
	mov.w	r2, r0	# tmp273, dst.8_35
	add.w	r2, 1 #111	# tmp273,
	st.w	[r13 + (8)], r2	# dst, tmp273
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _36, *p.7_34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.8_35, _36
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp274, p
	ld.b	r0, [r0]	# _37, *p_95
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                 while(*p) {
	sex.b	r1, r0	# tmp275, _37
	xor.w	r0, r0	# tmp276
	cmp.w	r1, r0	# tmp275, tmp276
	jnz	.L35		#
	j	.L36		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:124:             if(*fmt=='d') {
	ld.w	r0, [r13 + (12)]	# tmp277, fmt
	ld.b	r0, [r0]	# _38, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:124:             if(*fmt=='d') {
	sex.b	r1, r0	# tmp278, _38
	mov.w	r0, 100	# tmp279,
	cmp.w	r1, r0	# tmp278, tmp279
	jnz	.L37		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:125:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1665, args
	mov.w	r1, r0	# D.1666, D.1665
	add.w	r1, 4 #111	# D.1666,
	st.w	[r13 + (16)], r1	# args, D.1666
	ld.w	r0, [r0]	# tmp280, MEM[(int *)_234]
	st.w	[r13 + (-4)], r0	# arg, tmp280
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:127:                 sign=0;
	xor.w	r0, r0	# tmp281
	st.w	[r13 + (-12)], r0	# sign, tmp281
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:128:                 if((int)arg<0) {
	ld.w	r1, [r13 + (-4)]	# tmp282, arg
	xor.w	r0, r0	# tmp283
	cmp.w	r1, r0	# tmp282, tmp283
	jges	.L38		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:129:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp285, arg
	mov.w	r0, r0	# tmp284, tmp285
neg.w	r0	# tmp284
	st.w	[r13 + (-4)], r0	# arg, tmp284
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:130:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp287, sign
	add.w	r0, 1 #111	# tmp286,
	st.w	[r13 + (-12)], r0	# sign, tmp286
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:132:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp288, arg
	mov.w	r0, 1999999999	# tmp289,
	cmp.w	r1, r0	# tmp288, tmp289
	jses	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:133:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp290,
	st.w	[r13 + (-4)], r0	# arg, tmp290
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:136:                 i=18;
	mov.w	r0, 18	# tmp291,
	st.w	[r13 + (-16)], r0	# i, tmp291
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:137:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp292,
	add.w	r0, -59 #111	# tmp292,
	ld.w	r1, [r13 + (-16)]	# tmp294, i
	add.w	r0, r1 #222	# tmp293, tmp294
	xor.w	r1, r1	# tmp295
	st.b	[r0], r1	# tmpstr, tmp295
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp296, arg
	mov.w	r1, 10	# tmp297,
	div.w	r0, r1	# _39, tmp297
mov.w	r0, r14	# _39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp298,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp300, i
	add.w	r1, -1 #111	# tmp299,
	st.w	[r13 + (-16)], r1	# i, tmp299
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _42, _41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp301,
	add.w	r0, -59 #111	# tmp301,
	ld.w	r2, [r13 + (-16)]	# tmp303, i
	add.w	r0, r2 #222	# tmp302, tmp303
	st.b	[r0], r1	# tmpstr, _42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:140:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp305, arg
	mov.w	r1, 10	# tmp307,
	div.w	r0, r1	# tmp306, tmp307
	st.w	[r13 + (-4)], r0	# arg, tmp306
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:141:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp308, arg
	xor.w	r0, r0	# tmp309
	cmp.w	r1, r0	# tmp308, tmp309
	jz	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:141:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp310, i
	xor.w	r0, r0	# tmp311
	cmp.w	r1, r0	# tmp310, tmp311
	jgs	.L41		#
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp312, sign
	xor.w	r0, r0	# tmp313
	cmp.w	r1, r0	# tmp312, tmp313
	jz	.L42		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:143:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp315, i
	add.w	r0, -1 #111	# tmp314,
	st.w	[r13 + (-16)], r0	# i, tmp314
	mov.w	r0, r13	# tmp316,
	add.w	r0, -59 #111	# tmp316,
	ld.w	r1, [r13 + (-16)]	# tmp318, i
	add.w	r0, r1 #222	# tmp317, tmp318
	mov.b	r1, 45	# tmp319,
	st.b	[r0], r1	# tmpstr, tmp319
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:146:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp320, len
	xor.w	r0, r0	# tmp321
	cmp.w	r1, r0	# tmp320, tmp321
	jses	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:146:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp322, len
	mov.w	r0, 17	# tmp323,
	cmp.w	r1, r0	# tmp322, tmp323
	jgs	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:147:                     while(i>18-len) {
	j	.L44		#
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:148:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp325, i
	add.w	r0, -1 #111	# tmp324,
	st.w	[r13 + (-16)], r0	# i, tmp324
	mov.w	r0, r13	# tmp326,
	add.w	r0, -59 #111	# tmp326,
	ld.w	r1, [r13 + (-16)]	# tmp328, i
	add.w	r0, r1 #222	# tmp327, tmp328
	mov.b	r1, 32	# tmp329,
	st.b	[r0], r1	# tmpstr, tmp329
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:147:                     while(i>18-len) {
	mov.w	r0, 18	# tmp330,
	ld.w	r1, [r13 + (-8)]	# tmp331, len
	sub.w	r0, r1 #222	# _43, tmp331
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:147:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp332, i
	cmp.w	r1, r0	# tmp332, _43
	jgs	.L45		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:151:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp333,
	add.w	r0, -59 #111	# tmp333,
	ld.w	r1, [r13 + (-16)]	# tmp335, i
	add.w	r0, r1 #222	# tmp334, tmp335
	st.w	[r13 + (-20)], r0	# p, tmp334
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:152:                 goto copystring;
	j	.L46		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:155:             if(*fmt=='x') {
	ld.w	r0, [r13 + (12)]	# tmp336, fmt
	ld.b	r0, [r0]	# _44, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:155:             if(*fmt=='x') {
	sex.b	r1, r0	# tmp337, _44
	mov.w	r0, 120	# tmp338,
	cmp.w	r1, r0	# tmp337, tmp338
	jnz	.L47		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:156:                 arg = va_arg(args, long int);
	ld.w	r0, [r13 + (16)]	# D.1667, args
	mov.w	r1, r0	# D.1668, D.1667
	add.w	r1, 4 #111	# D.1668,
	st.w	[r13 + (16)], r1	# args, D.1668
	ld.w	r0, [r0]	# tmp339, MEM[(long int *)_231]
	st.w	[r13 + (-4)], r0	# arg, tmp339
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:158:                 i=16;
	mov.w	r0, 16	# tmp340,
	st.w	[r13 + (-16)], r0	# i, tmp340
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:159:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp341,
	add.w	r0, -59 #111	# tmp341,
	ld.w	r1, [r13 + (-16)]	# tmp343, i
	add.w	r0, r1 #222	# tmp342, tmp343
	xor.w	r1, r1	# tmp344
	st.b	[r0], r1	# tmpstr, tmp344
.L51:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:161:                     char n=arg & 0xf;
	ld.w	r0, [r13 + (-4)]	# tmp345, arg
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:161:                     char n=arg & 0xf;
	mov.w	r1, 15	# tmp347,
	and.w	r0, r1	# tmp346, tmp347
	st.b	[r13 + (-33)], r0	# n, tmp348
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:163:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.b	r0, [r13 + (-33)]	#, n
	sex.b	r1, r0	# tmp349,
	mov.w	r0, 9	# tmp350,
	cmp.w	r1, r0	# tmp349, tmp350
	jses	.L48		#
	mov.b	r0, 55	# iftmp.9_102,
	j	.L49		#
.L48:
	mov.b	r0, 48	# iftmp.9_102,
.L49:
	ld.b	r1, [r13 + (-33)]	# n.10_46, n
	add.w	r0, r1 #222	# tmp351, tmp352
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:163:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.w	r1, [r13 + (-16)]	# tmp354, i
	add.w	r1, -1 #111	# tmp353,
	st.w	[r13 + (-16)], r1	# i, tmp353
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:163:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r1, r0	# _48, _47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:163:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r0, r13	# tmp355,
	add.w	r0, -59 #111	# tmp355,
	ld.w	r2, [r13 + (-16)]	# tmp357, i
	add.w	r0, r2 #222	# tmp356, tmp357
	st.b	[r0], r1	# tmpstr, _48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                     arg>>=4;
	ld.w	r0, [r13 + (-4)]	# tmp359, arg
	mov.w	r1, 4	# tmp360,
	shr.w	r0, r1	# tmp358, tmp360
	st.w	[r13 + (-4)], r0	# arg, tmp358
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:165:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp361, arg
	xor.w	r0, r0	# tmp362
	cmp.w	r1, r0	# tmp361, tmp362
	jz	.L50		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:165:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp363, i
	xor.w	r0, r0	# tmp364
	cmp.w	r1, r0	# tmp363, tmp364
	jgs	.L51		#
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:167:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp365, len
	xor.w	r0, r0	# tmp366
	cmp.w	r1, r0	# tmp365, tmp366
	jses	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:167:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp367, len
	mov.w	r0, 16	# tmp368,
	cmp.w	r1, r0	# tmp367, tmp368
	jgs	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:168:                     while(i>16-len) {
	j	.L53		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:169:                         tmpstr[--i]='0';
	ld.w	r0, [r13 + (-16)]	# tmp370, i
	add.w	r0, -1 #111	# tmp369,
	st.w	[r13 + (-16)], r0	# i, tmp369
	mov.w	r0, r13	# tmp371,
	add.w	r0, -59 #111	# tmp371,
	ld.w	r1, [r13 + (-16)]	# tmp373, i
	add.w	r0, r1 #222	# tmp372, tmp373
	mov.b	r1, 48	# tmp374,
	st.b	[r0], r1	# tmpstr, tmp374
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:168:                     while(i>16-len) {
	mov.w	r0, 16	# tmp375,
	ld.w	r1, [r13 + (-8)]	# tmp376, len
	sub.w	r0, r1 #222	# _49, tmp376
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:168:                     while(i>16-len) {
	ld.w	r1, [r13 + (-16)]	# tmp377, i
	cmp.w	r1, r0	# tmp377, _49
	jgs	.L54		#
.L52:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:172:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp378,
	add.w	r0, -59 #111	# tmp378,
	ld.w	r1, [r13 + (-16)]	# tmp380, i
	add.w	r0, r1 #222	# tmp379, tmp380
	st.w	[r13 + (-20)], r0	# p, tmp379
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:173:                 goto copystring;
	j	.L46		#
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:176:             if(*fmt=='s') {
	ld.w	r0, [r13 + (12)]	# tmp381, fmt
	ld.b	r0, [r0]	# _50, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:176:             if(*fmt=='s') {
	sex.b	r1, r0	# tmp382, _50
	mov.w	r0, 115	# tmp383,
	cmp.w	r1, r0	# tmp382, tmp383
	jnz	.L36		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:177:                 p = va_arg(args, char*);
	ld.w	r0, [r13 + (16)]	# D.1669, args
	mov.w	r1, r0	# D.1670, D.1669
	add.w	r1, 4 #111	# D.1670,
	st.w	[r13 + (16)], r1	# args, D.1670
	ld.w	r0, [r0]	# tmp384, MEM[(char * *)_228]
	st.w	[r13 + (-20)], r0	# p, tmp384
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:178: copystring:     if(p==(void*)0) {
	ld.w	r1, [r13 + (-20)]	# tmp385, p
	xor.w	r0, r0	# tmp386
	cmp.w	r1, r0	# tmp385, tmp386
	jnz	.L56		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:179:                     p="(null)";
	mov.w	r0, .LC2	# tmp387,
	st.w	[r13 + (-20)], r0	# p, tmp387
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181:                 while(*p) {
	j	.L56		#
.L57:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.11_51, p
	mov.w	r0, r1	# tmp388, p.11_51
	add.w	r0, 1 #111	# tmp388,
	st.w	[r13 + (-20)], r0	# p, tmp388
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.12_52, dst
	mov.w	r2, r0	# tmp389, dst.12_52
	add.w	r2, 1 #111	# tmp389,
	st.w	[r13 + (8)], r2	# dst, tmp389
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _53, *p.11_51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.12_52, _53
.L56:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp390, p
	ld.b	r0, [r0]	# _54, *p_98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181:                 while(*p) {
	sex.b	r1, r0	# tmp391, _54
	xor.w	r0, r0	# tmp392
	cmp.w	r1, r0	# tmp391, tmp392
	jnz	.L57		#
	j	.L36		#
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:186: put:        *dst++ = *fmt;
	nop	
	j	.L6		#
.L65:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:30:                 goto put;
	nop	
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:186: put:        *dst++ = *fmt;
	ld.w	r0, [r13 + (8)]	# dst.13_55, dst
	mov.w	r1, r0	# tmp393, dst.13_55
	add.w	r1, 1 #111	# tmp393,
	st.w	[r13 + (8)], r1	# dst, tmp393
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:186: put:        *dst++ = *fmt;
	ld.w	r1, [r13 + (12)]	# tmp394, fmt
	ld.b	r1, [r1]	# _56, *fmt_67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:186: put:        *dst++ = *fmt;
	st.b	[r0], r1	# *dst.13_55, _56
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:188:         fmt++;
	ld.w	r0, [r13 + (12)]	# tmp396, fmt
	add.w	r0, 1 #111	# tmp395,
	st.w	[r13 + (12)], r0	# fmt, tmp395
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	ld.w	r0, [r13 + (12)]	# tmp397, fmt
	ld.b	r0, [r0]	# _57, *fmt_69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	sex.b	r1, r0	# tmp398, _57
	xor.w	r0, r0	# tmp399
	cmp.w	r1, r0	# tmp398, tmp399
	jnz	.L58		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:190:     *dst=0;
	ld.w	r0, [r13 + (8)]	# tmp400, dst
	xor.w	r1, r1	# tmp401
	st.b	[r0], r1	# *dst_64, tmp401
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:192:     return dst-orig;
	ld.w	r0, [r13 + (8)]	# tmp402, dst
	ld.w	r1, [r13 + (-32)]	# tmp403, orig
	sub.w	r0, r1 #222	# _58, tmp403
.L59:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:193: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:201:     va_start(args, fmt);
	mov.w	r0, r13	# tmp29,
	add.w	r0, 16 #111	# tmp29,
	st.w	[r13 + (-4)], r0	# MEM[(void * *)&args], tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:202:     return vsprintf(dst,fmt,args);
	ld.w	r1, [r13 + (-4)]	# args.14_1, args
	mov.w	r0, sp	# tmp30,
	st.w	[r0 + (8)], r1	#, args.14_1
	ld.w	r1, [r13 + (12)]	# tmp31, fmt
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, dst
	st.w	[r0], r1	#, tmp32
	call	vsprintf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:203: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintf, .-sprintf
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
