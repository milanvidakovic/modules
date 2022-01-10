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
	.global	__ltsf2
	.global	__floatsisf
	.global	__subsf3
	.global	__mulsf3
	.p2align	2
.LC1:
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
	xor.w	r0, r0	# _100
	j	.L55		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:23:     arg = 0;
	xor.w	r0, r0	# tmp102
	st.w	[r13 + (-4)], r0	# arg, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	j	.L5		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp103, fmt
	ld.b	r0, [r0]	# _1, *fmt_69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	sex.b	r1, r0	# tmp104, _1
	mov.w	r0, 37	# tmp105,
	cmp.w	r1, r0	# tmp104, tmp105
	jnz	.L59		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:27:             fmt++;
	ld.w	r0, [r13 + (12)]	# tmp107, fmt
	add.w	r0, 1 #111	# tmp106,
	st.w	[r13 + (12)], r0	# fmt, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp108, fmt
	ld.b	r0, [r0]	# _2, *fmt_129
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	sex.b	r1, r0	# tmp109, _2
	mov.w	r0, 37	# tmp110,
	cmp.w	r1, r0	# tmp109, tmp110
	jz	.L60		#
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
	ld.w	r0, [r13 + (16)]	# D.1655, args
	mov.w	r1, r0	# D.1656, D.1655
	add.w	r1, 4 #111	# D.1656,
	st.w	[r13 + (16)], r1	# args, D.1656
	ld.w	r0, [r0]	# tmp136, MEM[(int *)_237]
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
	ld.w	r0, [r13 + (16)]	# D.1657, args
	mov.w	r1, r0	# D.1658, D.1657
	add.w	r1, 4 #111	# D.1658,
	st.w	[r13 + (16)], r1	# args, D.1658
	ld.w	r0, [r0]	# tmp144, MEM[(int *)_234]
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:59:                 if (f == INF)
	mov.w	r0, 1325334528	# tmp148,
	st.w	[sp + (4)], r0	#, tmp148
	ld.w	r0, [r13 + (-24)]	# tmp149, f
	st.w	[sp], r0	#, tmp149
	call	__eqsf2		#
	mov.w	r1, r0	# tmp150,
	xor.w	r0, r0	# tmp151
	cmp.w	r1, r0	# tmp150, tmp151
	jnz	.L58		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:61:                     p="(inf)";
	mov.w	r0, .LC0	# tmp152,
	st.w	[r13 + (-20)], r0	# p, tmp152
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:62:                     while(*p) {
	j	.L16		#
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:63:                         *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.2_15, p
	mov.w	r0, r1	# tmp153, p.2_15
	add.w	r0, 1 #111	# tmp153,
	st.w	[r13 + (-20)], r0	# p, tmp153
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:63:                         *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.3_16, dst
	mov.w	r2, r0	# tmp154, dst.3_16
	add.w	r2, 1 #111	# tmp154,
	st.w	[r13 + (8)], r2	# dst, tmp154
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:63:                         *dst++ = *p++;
	ld.b	r1, [r1]	# _17, *p.2_15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:63:                         *dst++ = *p++;
	st.b	[r0], r1	# *dst.3_16, _17
.L16:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:62:                     while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp155, p
	ld.b	r0, [r0]	# _18, *p_92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:62:                     while(*p) {
	sex.b	r1, r0	# tmp156, _18
	xor.w	r0, r0	# tmp157
	cmp.w	r1, r0	# tmp156, tmp157
	jnz	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:65:                     fmt++;
	ld.w	r0, [r13 + (12)]	# tmp159, fmt
	add.w	r0, 1 #111	# tmp158,
	st.w	[r13 + (12)], r0	# fmt, tmp158
	j	.L5		#
.L58:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:70:                 sign=0;
	xor.w	r0, r0	# tmp160
	st.w	[r13 + (-12)], r0	# sign, tmp160
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:71:                 if(f<0) {
	xor.w	r0, r0	# tmp161
	st.w	[sp + (4)], r0	#, tmp161
	ld.w	r0, [r13 + (-24)]	# tmp162, f
	st.w	[sp], r0	#, tmp162
	call	__ltsf2		#
	mov.w	r1, r0	# tmp163,
	xor.w	r0, r0	# tmp164
	cmp.w	r1, r0	# tmp163, tmp164
	jges	.L18		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:72:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp166, arg
	mov.w	r0, r0	# tmp165, tmp166
neg.w	r0	# tmp165
	st.w	[r13 + (-4)], r0	# arg, tmp165
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:73:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp168, sign
	add.w	r0, 1 #111	# tmp167,
	st.w	[r13 + (-12)], r0	# sign, tmp167
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:74:                     f = -f;
	ld.w	r0, [r13 + (-24)]	# tmp170, f
	mov.w	r1, -2147483648	# tmp171,
	xor.w	r0, r1	# tmp169, tmp171
	st.w	[r13 + (-24)], r0	# f, tmp169
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:76:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp172, arg
	mov.w	r0, 1999999999	# tmp173,
	cmp.w	r1, r0	# tmp172, tmp173
	jses	.L20		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:77:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp174,
	st.w	[r13 + (-4)], r0	# arg, tmp174
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:80:                 i=18;
	mov.w	r0, 18	# tmp175,
	st.w	[r13 + (-16)], r0	# i, tmp175
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:81:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp176,
	add.w	r0, -59 #111	# tmp176,
	ld.w	r1, [r13 + (-16)]	# tmp178, i
	add.w	r0, r1 #222	# tmp177, tmp178
	xor.w	r1, r1	# tmp179
	st.b	[r0], r1	# tmpstr, tmp179
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:83:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp180, arg
	mov.w	r1, 10	# tmp181,
	div.w	r0, r1	# _19, tmp181
mov.w	r0, r14	# _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:83:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp182,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:83:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp184, i
	add.w	r1, -1 #111	# tmp183,
	st.w	[r13 + (-16)], r1	# i, tmp183
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:83:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _22, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:83:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp185,
	add.w	r0, -59 #111	# tmp185,
	ld.w	r2, [r13 + (-16)]	# tmp187, i
	add.w	r0, r2 #222	# tmp186, tmp187
	st.b	[r0], r1	# tmpstr, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:84:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp189, arg
	mov.w	r1, 10	# tmp191,
	div.w	r0, r1	# tmp190, tmp191
	st.w	[r13 + (-4)], r0	# arg, tmp190
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:85:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp192, arg
	xor.w	r0, r0	# tmp193
	cmp.w	r1, r0	# tmp192, tmp193
	jz	.L21		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:85:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp194, i
	xor.w	r0, r0	# tmp195
	cmp.w	r1, r0	# tmp194, tmp195
	jgs	.L22		#
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp196, sign
	xor.w	r0, r0	# tmp197
	cmp.w	r1, r0	# tmp196, tmp197
	jz	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:87:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp199, i
	add.w	r0, -1 #111	# tmp198,
	st.w	[r13 + (-16)], r0	# i, tmp198
	mov.w	r0, r13	# tmp200,
	add.w	r0, -59 #111	# tmp200,
	ld.w	r1, [r13 + (-16)]	# tmp202, i
	add.w	r0, r1 #222	# tmp201, tmp202
	mov.b	r1, 45	# tmp203,
	st.b	[r0], r1	# tmpstr, tmp203
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:90:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp204, len
	xor.w	r0, r0	# tmp205
	cmp.w	r1, r0	# tmp204, tmp205
	jses	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:90:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp206, len
	mov.w	r0, 17	# tmp207,
	cmp.w	r1, r0	# tmp206, tmp207
	jgs	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:91:                     while(i>18-len) {
	j	.L25		#
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:92:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp209, i
	add.w	r0, -1 #111	# tmp208,
	st.w	[r13 + (-16)], r0	# i, tmp208
	mov.w	r0, r13	# tmp210,
	add.w	r0, -59 #111	# tmp210,
	ld.w	r1, [r13 + (-16)]	# tmp212, i
	add.w	r0, r1 #222	# tmp211, tmp212
	mov.b	r1, 32	# tmp213,
	st.b	[r0], r1	# tmpstr, tmp213
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:91:                     while(i>18-len) {
	mov.w	r0, 18	# tmp214,
	ld.w	r1, [r13 + (-8)]	# tmp215, len
	sub.w	r0, r1 #222	# _23, tmp215
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:91:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp216, i
	cmp.w	r1, r0	# tmp216, _23
	jgs	.L26		#
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:95:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp217,
	add.w	r0, -59 #111	# tmp217,
	ld.w	r1, [r13 + (-16)]	# tmp219, i
	add.w	r0, r1 #222	# tmp218, tmp219
	st.w	[r13 + (-20)], r0	# p, tmp218
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:96:                 while(*p) {
	j	.L27		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:97:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.4_24, p
	mov.w	r0, r1	# tmp220, p.4_24
	add.w	r0, 1 #111	# tmp220,
	st.w	[r13 + (-20)], r0	# p, tmp220
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:97:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.5_25, dst
	mov.w	r2, r0	# tmp221, dst.5_25
	add.w	r2, 1 #111	# tmp221,
	st.w	[r13 + (8)], r2	# dst, tmp221
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:97:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _26, *p.4_24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:97:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.5_25, _26
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:96:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp222, p
	ld.b	r0, [r0]	# _27, *p_93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:96:                 while(*p) {
	sex.b	r1, r0	# tmp223, _27
	xor.w	r0, r0	# tmp224
	cmp.w	r1, r0	# tmp223, tmp224
	jnz	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                 *dst++ = '.';
	ld.w	r0, [r13 + (8)]	# dst.6_28, dst
	mov.w	r1, r0	# tmp225, dst.6_28
	add.w	r1, 1 #111	# tmp225,
	st.w	[r13 + (8)], r1	# dst, tmp225
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                 *dst++ = '.';
	mov.b	r1, 46	# tmp226,
	st.b	[r0], r1	# *dst.6_28, tmp226
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:103:                 int int_f = f;
	ld.w	r0, [r13 + (-24)]	# tmp227, f
	st.w	[sp], r0	#, tmp227
	call	__fixsfsi		#
	st.w	[r13 + (-28)], r0	# int_f, tmp228
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:104:                 float rest = f - int_f;
	ld.w	r0, [r13 + (-28)]	# tmp229, int_f
	st.w	[sp], r0	#, tmp229
	call	__floatsisf		#
	mov.w	r1, r0	# _29,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:104:                 float rest = f - int_f;
	mov.w	r0, r1	# tmp230, _29
	st.w	[sp + (4)], r0	#, tmp230
	ld.w	r0, [r13 + (-24)]	# tmp231, f
	st.w	[sp], r0	#, tmp231
	call	__subsf3		#
	mov.w	r1, r0	# tmp232,
	mov.w	r0, r1	# tmp233, tmp232
	st.w	[r13 + (-40)], r0	# rest, tmp233
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:105:                 rest *= 10000.0;
	mov.w	r0, 1176256512	# tmp234,
	st.w	[sp + (4)], r0	#, tmp234
	ld.w	r0, [r13 + (-40)]	# tmp235, rest
	st.w	[sp], r0	#, tmp235
	call	__mulsf3		#
	mov.w	r1, r0	# tmp236,
	mov.w	r0, r1	# tmp237, tmp236
	st.w	[r13 + (-40)], r0	# rest, tmp237
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:106:                 int_f = rest;
	ld.w	r0, [r13 + (-40)]	# tmp238, rest
	st.w	[sp], r0	#, tmp238
	call	__fixsfsi		#
	st.w	[r13 + (-28)], r0	# int_f, tmp239
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:108:                 i = 5;
	mov.w	r0, 5	# tmp240,
	st.w	[r13 + (-16)], r0	# i, tmp240
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                 tmpstr[i] = 0;
	mov.w	r0, r13	# tmp241,
	add.w	r0, -59 #111	# tmp241,
	ld.w	r1, [r13 + (-16)]	# tmp243, i
	add.w	r0, r1 #222	# tmp242, tmp243
	xor.w	r1, r1	# tmp244
	st.b	[r0], r1	# tmpstr, tmp244
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                     tmpstr[--i]='0'+(int_f % 10);
	ld.w	r0, [r13 + (-28)]	# tmp245, int_f
	mov.w	r1, 10	# tmp246,
	div.w	r0, r1	# _30, tmp246
mov.w	r0, r14	# _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                     tmpstr[--i]='0'+(int_f % 10);
	add.w	r0, 48 #111	# tmp247,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                     tmpstr[--i]='0'+(int_f % 10);
	ld.w	r1, [r13 + (-16)]	# tmp249, i
	add.w	r1, -1 #111	# tmp248,
	st.w	[r13 + (-16)], r1	# i, tmp248
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                     tmpstr[--i]='0'+(int_f % 10);
	mov.w	r1, r0	# _33, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                     tmpstr[--i]='0'+(int_f % 10);
	mov.w	r0, r13	# tmp250,
	add.w	r0, -59 #111	# tmp250,
	ld.w	r2, [r13 + (-16)]	# tmp252, i
	add.w	r0, r2 #222	# tmp251, tmp252
	st.b	[r0], r1	# tmpstr, _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:112:                     int_f /= 10;
	ld.w	r0, [r13 + (-28)]	# tmp254, int_f
	mov.w	r1, 10	# tmp256,
	div.w	r0, r1	# tmp255, tmp256
	st.w	[r13 + (-28)], r0	# int_f, tmp255
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:113:                 } while(i > 0);
	ld.w	r1, [r13 + (-16)]	# tmp257, i
	xor.w	r0, r0	# tmp258
	cmp.w	r1, r0	# tmp257, tmp258
	jgs	.L29		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                 p=&tmpstr[1];
	mov.w	r0, r13	# tmp259,
	add.w	r0, -59 #111	# tmp259,
	add.w	r0, 1 #111	# tmp260,
	st.w	[r13 + (-20)], r0	# p, tmp260
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                 while(*p) {
	j	.L30		#
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:116:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.7_34, p
	mov.w	r0, r1	# tmp261, p.7_34
	add.w	r0, 1 #111	# tmp261,
	st.w	[r13 + (-20)], r0	# p, tmp261
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:116:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.8_35, dst
	mov.w	r2, r0	# tmp262, dst.8_35
	add.w	r2, 1 #111	# tmp262,
	st.w	[r13 + (8)], r2	# dst, tmp262
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:116:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _36, *p.7_34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:116:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.8_35, _36
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp263, p
	ld.b	r0, [r0]	# _37, *p_94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                 while(*p) {
	sex.b	r1, r0	# tmp264, _37
	xor.w	r0, r0	# tmp265
	cmp.w	r1, r0	# tmp264, tmp265
	jnz	.L31		#
	j	.L32		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:             if(*fmt=='d') {
	ld.w	r0, [r13 + (12)]	# tmp266, fmt
	ld.b	r0, [r0]	# _38, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:             if(*fmt=='d') {
	sex.b	r1, r0	# tmp267, _38
	mov.w	r0, 100	# tmp268,
	cmp.w	r1, r0	# tmp267, tmp268
	jnz	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:121:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1659, args
	mov.w	r1, r0	# D.1660, D.1659
	add.w	r1, 4 #111	# D.1660,
	st.w	[r13 + (16)], r1	# args, D.1660
	ld.w	r0, [r0]	# tmp269, MEM[(int *)_231]
	st.w	[r13 + (-4)], r0	# arg, tmp269
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:123:                 sign=0;
	xor.w	r0, r0	# tmp270
	st.w	[r13 + (-12)], r0	# sign, tmp270
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:124:                 if((int)arg<0) {
	ld.w	r1, [r13 + (-4)]	# tmp271, arg
	xor.w	r0, r0	# tmp272
	cmp.w	r1, r0	# tmp271, tmp272
	jges	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:125:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp274, arg
	mov.w	r0, r0	# tmp273, tmp274
neg.w	r0	# tmp273
	st.w	[r13 + (-4)], r0	# arg, tmp273
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:126:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp276, sign
	add.w	r0, 1 #111	# tmp275,
	st.w	[r13 + (-12)], r0	# sign, tmp275
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:128:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp277, arg
	mov.w	r0, 1999999999	# tmp278,
	cmp.w	r1, r0	# tmp277, tmp278
	jses	.L35		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:129:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp279,
	st.w	[r13 + (-4)], r0	# arg, tmp279
.L35:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:132:                 i=18;
	mov.w	r0, 18	# tmp280,
	st.w	[r13 + (-16)], r0	# i, tmp280
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:133:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp281,
	add.w	r0, -59 #111	# tmp281,
	ld.w	r1, [r13 + (-16)]	# tmp283, i
	add.w	r0, r1 #222	# tmp282, tmp283
	xor.w	r1, r1	# tmp284
	st.b	[r0], r1	# tmpstr, tmp284
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:135:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp285, arg
	mov.w	r1, 10	# tmp286,
	div.w	r0, r1	# _39, tmp286
mov.w	r0, r14	# _39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:135:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp287,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:135:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp289, i
	add.w	r1, -1 #111	# tmp288,
	st.w	[r13 + (-16)], r1	# i, tmp288
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:135:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _42, _41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:135:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp290,
	add.w	r0, -59 #111	# tmp290,
	ld.w	r2, [r13 + (-16)]	# tmp292, i
	add.w	r0, r2 #222	# tmp291, tmp292
	st.b	[r0], r1	# tmpstr, _42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:136:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp294, arg
	mov.w	r1, 10	# tmp296,
	div.w	r0, r1	# tmp295, tmp296
	st.w	[r13 + (-4)], r0	# arg, tmp295
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:137:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp297, arg
	xor.w	r0, r0	# tmp298
	cmp.w	r1, r0	# tmp297, tmp298
	jz	.L36		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:137:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp299, i
	xor.w	r0, r0	# tmp300
	cmp.w	r1, r0	# tmp299, tmp300
	jgs	.L37		#
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:138:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp301, sign
	xor.w	r0, r0	# tmp302
	cmp.w	r1, r0	# tmp301, tmp302
	jz	.L38		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp304, i
	add.w	r0, -1 #111	# tmp303,
	st.w	[r13 + (-16)], r0	# i, tmp303
	mov.w	r0, r13	# tmp305,
	add.w	r0, -59 #111	# tmp305,
	ld.w	r1, [r13 + (-16)]	# tmp307, i
	add.w	r0, r1 #222	# tmp306, tmp307
	mov.b	r1, 45	# tmp308,
	st.b	[r0], r1	# tmpstr, tmp308
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp309, len
	xor.w	r0, r0	# tmp310
	cmp.w	r1, r0	# tmp309, tmp310
	jses	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp311, len
	mov.w	r0, 17	# tmp312,
	cmp.w	r1, r0	# tmp311, tmp312
	jgs	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:143:                     while(i>18-len) {
	j	.L40		#
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:144:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp314, i
	add.w	r0, -1 #111	# tmp313,
	st.w	[r13 + (-16)], r0	# i, tmp313
	mov.w	r0, r13	# tmp315,
	add.w	r0, -59 #111	# tmp315,
	ld.w	r1, [r13 + (-16)]	# tmp317, i
	add.w	r0, r1 #222	# tmp316, tmp317
	mov.b	r1, 32	# tmp318,
	st.b	[r0], r1	# tmpstr, tmp318
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:143:                     while(i>18-len) {
	mov.w	r0, 18	# tmp319,
	ld.w	r1, [r13 + (-8)]	# tmp320, len
	sub.w	r0, r1 #222	# _43, tmp320
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:143:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp321, i
	cmp.w	r1, r0	# tmp321, _43
	jgs	.L41		#
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:147:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp322,
	add.w	r0, -59 #111	# tmp322,
	ld.w	r1, [r13 + (-16)]	# tmp324, i
	add.w	r0, r1 #222	# tmp323, tmp324
	st.w	[r13 + (-20)], r0	# p, tmp323
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:148:                 goto copystring;
	j	.L42		#
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:151:             if(*fmt=='x') {
	ld.w	r0, [r13 + (12)]	# tmp325, fmt
	ld.b	r0, [r0]	# _44, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:151:             if(*fmt=='x') {
	sex.b	r1, r0	# tmp326, _44
	mov.w	r0, 120	# tmp327,
	cmp.w	r1, r0	# tmp326, tmp327
	jnz	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:152:                 arg = va_arg(args, long int);
	ld.w	r0, [r13 + (16)]	# D.1661, args
	mov.w	r1, r0	# D.1662, D.1661
	add.w	r1, 4 #111	# D.1662,
	st.w	[r13 + (16)], r1	# args, D.1662
	ld.w	r0, [r0]	# tmp328, MEM[(long int *)_228]
	st.w	[r13 + (-4)], r0	# arg, tmp328
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:154:                 i=16;
	mov.w	r0, 16	# tmp329,
	st.w	[r13 + (-16)], r0	# i, tmp329
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:155:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp330,
	add.w	r0, -59 #111	# tmp330,
	ld.w	r1, [r13 + (-16)]	# tmp332, i
	add.w	r0, r1 #222	# tmp331, tmp332
	xor.w	r1, r1	# tmp333
	st.b	[r0], r1	# tmpstr, tmp333
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:157:                     char n=arg & 0xf;
	ld.w	r0, [r13 + (-4)]	# tmp334, arg
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:157:                     char n=arg & 0xf;
	mov.w	r1, 15	# tmp336,
	and.w	r0, r1	# tmp335, tmp336
	st.b	[r13 + (-33)], r0	# n, tmp337
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:159:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.b	r0, [r13 + (-33)]	#, n
	sex.b	r1, r0	# tmp338,
	mov.w	r0, 9	# tmp339,
	cmp.w	r1, r0	# tmp338, tmp339
	jses	.L44		#
	mov.b	r0, 55	# iftmp.9_101,
	j	.L45		#
.L44:
	mov.b	r0, 48	# iftmp.9_101,
.L45:
	ld.b	r1, [r13 + (-33)]	# n.10_46, n
	add.w	r0, r1 #222	# tmp340, tmp341
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:159:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.w	r1, [r13 + (-16)]	# tmp343, i
	add.w	r1, -1 #111	# tmp342,
	st.w	[r13 + (-16)], r1	# i, tmp342
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:159:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r1, r0	# _48, _47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:159:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r0, r13	# tmp344,
	add.w	r0, -59 #111	# tmp344,
	ld.w	r2, [r13 + (-16)]	# tmp346, i
	add.w	r0, r2 #222	# tmp345, tmp346
	st.b	[r0], r1	# tmpstr, _48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:160:                     arg>>=4;
	ld.w	r0, [r13 + (-4)]	# tmp348, arg
	mov.w	r1, 4	# tmp349,
	shr.w	r0, r1	# tmp347, tmp349
	st.w	[r13 + (-4)], r0	# arg, tmp347
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:161:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp350, arg
	xor.w	r0, r0	# tmp351
	cmp.w	r1, r0	# tmp350, tmp351
	jz	.L46		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:161:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp352, i
	xor.w	r0, r0	# tmp353
	cmp.w	r1, r0	# tmp352, tmp353
	jgs	.L47		#
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:163:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp354, len
	xor.w	r0, r0	# tmp355
	cmp.w	r1, r0	# tmp354, tmp355
	jses	.L48		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:163:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp356, len
	mov.w	r0, 16	# tmp357,
	cmp.w	r1, r0	# tmp356, tmp357
	jgs	.L48		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                     while(i>16-len) {
	j	.L49		#
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:165:                         tmpstr[--i]='0';
	ld.w	r0, [r13 + (-16)]	# tmp359, i
	add.w	r0, -1 #111	# tmp358,
	st.w	[r13 + (-16)], r0	# i, tmp358
	mov.w	r0, r13	# tmp360,
	add.w	r0, -59 #111	# tmp360,
	ld.w	r1, [r13 + (-16)]	# tmp362, i
	add.w	r0, r1 #222	# tmp361, tmp362
	mov.b	r1, 48	# tmp363,
	st.b	[r0], r1	# tmpstr, tmp363
.L49:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                     while(i>16-len) {
	mov.w	r0, 16	# tmp364,
	ld.w	r1, [r13 + (-8)]	# tmp365, len
	sub.w	r0, r1 #222	# _49, tmp365
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                     while(i>16-len) {
	ld.w	r1, [r13 + (-16)]	# tmp366, i
	cmp.w	r1, r0	# tmp366, _49
	jgs	.L50		#
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:168:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp367,
	add.w	r0, -59 #111	# tmp367,
	ld.w	r1, [r13 + (-16)]	# tmp369, i
	add.w	r0, r1 #222	# tmp368, tmp369
	st.w	[r13 + (-20)], r0	# p, tmp368
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:169:                 goto copystring;
	j	.L42		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:172:             if(*fmt=='s') {
	ld.w	r0, [r13 + (12)]	# tmp370, fmt
	ld.b	r0, [r0]	# _50, *fmt_66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:172:             if(*fmt=='s') {
	sex.b	r1, r0	# tmp371, _50
	mov.w	r0, 115	# tmp372,
	cmp.w	r1, r0	# tmp371, tmp372
	jnz	.L32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:173:                 p = va_arg(args, char*);
	ld.w	r0, [r13 + (16)]	# D.1663, args
	mov.w	r1, r0	# D.1664, D.1663
	add.w	r1, 4 #111	# D.1664,
	st.w	[r13 + (16)], r1	# args, D.1664
	ld.w	r0, [r0]	# tmp373, MEM[(char * *)_225]
	st.w	[r13 + (-20)], r0	# p, tmp373
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:174: copystring:     if(p==(void*)0) {
	ld.w	r1, [r13 + (-20)]	# tmp374, p
	xor.w	r0, r0	# tmp375
	cmp.w	r1, r0	# tmp374, tmp375
	jnz	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:175:                     p="(null)";
	mov.w	r0, .LC1	# tmp376,
	st.w	[r13 + (-20)], r0	# p, tmp376
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:177:                 while(*p) {
	j	.L52		#
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:178:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.11_51, p
	mov.w	r0, r1	# tmp377, p.11_51
	add.w	r0, 1 #111	# tmp377,
	st.w	[r13 + (-20)], r0	# p, tmp377
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:178:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.12_52, dst
	mov.w	r2, r0	# tmp378, dst.12_52
	add.w	r2, 1 #111	# tmp378,
	st.w	[r13 + (8)], r2	# dst, tmp378
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:178:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _53, *p.11_51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:178:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.12_52, _53
.L52:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:177:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp379, p
	ld.b	r0, [r0]	# _54, *p_97
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:177:                 while(*p) {
	sex.b	r1, r0	# tmp380, _54
	xor.w	r0, r0	# tmp381
	cmp.w	r1, r0	# tmp380, tmp381
	jnz	.L53		#
	j	.L32		#
.L59:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182: put:        *dst++ = *fmt;
	nop	
	j	.L6		#
.L60:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:30:                 goto put;
	nop	
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182: put:        *dst++ = *fmt;
	ld.w	r0, [r13 + (8)]	# dst.13_55, dst
	mov.w	r1, r0	# tmp382, dst.13_55
	add.w	r1, 1 #111	# tmp382,
	st.w	[r13 + (8)], r1	# dst, tmp382
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182: put:        *dst++ = *fmt;
	ld.w	r1, [r13 + (12)]	# tmp383, fmt
	ld.b	r1, [r1]	# _56, *fmt_67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182: put:        *dst++ = *fmt;
	st.b	[r0], r1	# *dst.13_55, _56
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:184:         fmt++;
	ld.w	r0, [r13 + (12)]	# tmp385, fmt
	add.w	r0, 1 #111	# tmp384,
	st.w	[r13 + (12)], r0	# fmt, tmp384
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	ld.w	r0, [r13 + (12)]	# tmp386, fmt
	ld.b	r0, [r0]	# _57, *fmt_69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	sex.b	r1, r0	# tmp387, _57
	xor.w	r0, r0	# tmp388
	cmp.w	r1, r0	# tmp387, tmp388
	jnz	.L54		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:186:     *dst=0;
	ld.w	r0, [r13 + (8)]	# tmp389, dst
	xor.w	r1, r1	# tmp390
	st.b	[r0], r1	# *dst_64, tmp390
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:188:     return dst-orig;
	ld.w	r0, [r13 + (8)]	# tmp391, dst
	ld.w	r1, [r13 + (-32)]	# tmp392, orig
	sub.w	r0, r1 #222	# _58, tmp392
.L55:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:189: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:197:     va_start(args, fmt);
	mov.w	r0, r13	# tmp29,
	add.w	r0, 16 #111	# tmp29,
	st.w	[r13 + (-4)], r0	# MEM[(void * *)&args], tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:198:     return vsprintf(dst,fmt,args);
	ld.w	r1, [r13 + (-4)]	# args.14_1, args
	mov.w	r0, sp	# tmp30,
	st.w	[r0 + (8)], r1	#, args.14_1
	ld.w	r1, [r13 + (12)]	# tmp31, fmt
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, dst
	st.w	[r0], r1	#, tmp32
	call	vsprintf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:199: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintf, .-sprintf
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
