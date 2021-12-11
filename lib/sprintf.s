	.file	"sprintf.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c -mel
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
	.global	__floatsisf
	.global	__subsf3
	.global	__mulsf3
	.section	.rodata
	.p2align	2
.LC0:
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
	ld.w	r0, [r13 + (8)]	# tmp94, dst
	st.w	[r13 + (-24)], r0	# orig, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:18:     if(dst==(void*)0 || fmt==(void*)0) {
	ld.w	r1, [r13 + (8)]	# tmp95, dst
	xor.w	r0, r0	# tmp96
	cmp.w	r1, r0	# tmp95, tmp96
	jz	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:18:     if(dst==(void*)0 || fmt==(void*)0) {
	ld.w	r1, [r13 + (12)]	# tmp97, fmt
	xor.w	r0, r0	# tmp98
	cmp.w	r1, r0	# tmp97, tmp98
	jnz	.L3		#
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:19:         return 0;
	xor.w	r0, r0	# _98
	j	.L56		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:23:     arg = 0;
	xor.w	r0, r0	# tmp99
	st.w	[r13 + (-4)], r0	# arg, tmp99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	j	.L5		#
.L55:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp100, fmt
	ld.b	r0, [r0]	# _1, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:26:         if(*fmt=='%') {
	sex.b	r1, r0	# tmp101, _1
	mov.w	r0, 37	# tmp102,
	cmp.w	r1, r0	# tmp101, tmp102
	jnz	.L57		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:27:             fmt++;
	ld.w	r0, [r13 + (12)]	# tmp104, fmt
	add.w	r0, 1 #111	# tmp103,
	st.w	[r13 + (12)], r0	# fmt, tmp103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	ld.w	r0, [r13 + (12)]	# tmp105, fmt
	ld.b	r0, [r0]	# _2, *fmt_128
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:29:             if(*fmt=='%') {
	sex.b	r1, r0	# tmp106, _2
	mov.w	r0, 37	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jz	.L58		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:32:             len=0;
	xor.w	r0, r0	# tmp108
	st.w	[r13 + (-8)], r0	# len, tmp108
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	j	.L8		#
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:35:                 len *= 10;
	ld.w	r1, [r13 + (-8)]	# tmp109, len
	mov.w	r0, r1	# tmp110, tmp109
	mov.w	r2, 2	# tmp112,
	shl.w	r0, r2	# tmp111, tmp112
	add.w	r0, r1 #222	# tmp110, tmp109
	add.w	r0, r0 #222	# tmp113, tmp110
	st.w	[r13 + (-8)], r0	# len, tmp110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	ld.w	r0, [r13 + (12)]	# tmp114, fmt
	ld.b	r0, [r0]	# _3, *fmt_61
	sex.b	r0, r0	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	mov.w	r1, r0	# _5, _4
	add.w	r1, -48 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:36:                 len += *fmt-'0';
	ld.w	r0, [r13 + (-8)]	# tmp116, len
	add.w	r0, r1 #222	# tmp115, _5
	st.w	[r13 + (-8)], r0	# len, tmp115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:37:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp118, fmt
	add.w	r0, 1 #111	# tmp117,
	st.w	[r13 + (12)], r0	# fmt, tmp117
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	ld.w	r0, [r13 + (12)]	# tmp119, fmt
	ld.b	r0, [r0]	# _6, *fmt_61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	sex.b	r1, r0	# tmp120, _6
	mov.w	r0, 47	# tmp121,
	cmp.w	r1, r0	# tmp120, tmp121
	jses	.L9		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	ld.w	r0, [r13 + (12)]	# tmp122, fmt
	ld.b	r0, [r0]	# _7, *fmt_61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:34:             while(*fmt>='0' && *fmt<='9') {
	sex.b	r1, r0	# tmp123, _7
	mov.w	r0, 57	# tmp124,
	cmp.w	r1, r0	# tmp123, tmp124
	jses	.L10		#
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:40:             if(*fmt=='l') {
	ld.w	r0, [r13 + (12)]	# tmp125, fmt
	ld.b	r0, [r0]	# _8, *fmt_61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:40:             if(*fmt=='l') {
	sex.b	r1, r0	# tmp126, _8
	mov.w	r0, 108	# tmp127,
	cmp.w	r1, r0	# tmp126, tmp127
	jnz	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:41:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp129, fmt
	add.w	r0, 1 #111	# tmp128,
	st.w	[r13 + (12)], r0	# fmt, tmp128
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:44:             if(*fmt=='c') {
	ld.w	r0, [r13 + (12)]	# tmp130, fmt
	ld.b	r0, [r0]	# _9, *fmt_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:44:             if(*fmt=='c') {
	sex.b	r1, r0	# tmp131, _9
	mov.w	r0, 99	# tmp132,
	cmp.w	r1, r0	# tmp131, tmp132
	jnz	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:45:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1652, args
	mov.w	r1, r0	# D.1653, D.1652
	add.w	r1, 4 #111	# D.1653,
	st.w	[r13 + (16)], r1	# args, D.1653
	ld.w	r0, [r0]	# tmp133, MEM[(int *)_234]
	st.w	[r13 + (-4)], r0	# arg, tmp133
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:46:                 *dst++ = arg;
	ld.w	r0, [r13 + (8)]	# dst.0_10, dst
	mov.w	r1, r0	# tmp134, dst.0_10
	add.w	r1, 1 #111	# tmp134,
	st.w	[r13 + (8)], r1	# dst, tmp134
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:46:                 *dst++ = arg;
	ld.w	r1, [r13 + (-4)]	# tmp135, arg
	st.b	[r0], r1	# *dst.0_10, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:47:                 fmt++;
	ld.w	r0, [r13 + (12)]	# tmp137, fmt
	add.w	r0, 1 #111	# tmp136,
	st.w	[r13 + (12)], r0	# fmt, tmp136
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:48:                 continue;
	j	.L5		#
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:50:             if (*fmt=='f')
	ld.w	r0, [r13 + (12)]	# tmp138, fmt
	ld.b	r0, [r0]	# _12, *fmt_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:50:             if (*fmt=='f')
	sex.b	r1, r0	# tmp139, _12
	mov.w	r0, 102	# tmp140,
	cmp.w	r1, r0	# tmp139, tmp140
	jnz	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:52:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1654, args
	mov.w	r1, r0	# D.1655, D.1654
	add.w	r1, 4 #111	# D.1655,
	st.w	[r13 + (16)], r1	# args, D.1655
	ld.w	r0, [r0]	# tmp141, MEM[(int *)_231]
	st.w	[r13 + (-4)], r0	# arg, tmp141
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:54:                 ts.word = arg;
	ld.w	r0, [r13 + (-4)]	# arg.1_13, arg
	st.w	[r13 + (-64)], r0	# ts.word, arg.1_13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:55:                 float f = ts.value;
	ld.w	r0, [r13 + (-64)]	# tmp142, ts
	st.w	[r13 + (-32)], r0	# f, tmp142
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:57:                 arg = (ts.value);
	ld.w	r0, [r13 + (-64)]	# _14, ts
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:57:                 arg = (ts.value);
	st.w	[sp], r0	#, tmp143
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# arg, tmp144
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:60:                 sign=0;
	xor.w	r0, r0	# tmp145
	st.w	[r13 + (-12)], r0	# sign, tmp145
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:61:                 if((int)arg<0) {
	ld.w	r1, [r13 + (-4)]	# tmp146, arg
	xor.w	r0, r0	# tmp147
	cmp.w	r1, r0	# tmp146, tmp147
	jges	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:62:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp149, arg
	mov.w	r0, r0	# tmp148, tmp149
neg.w	r0	# tmp148
	st.w	[r13 + (-4)], r0	# arg, tmp148
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:63:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp151, sign
	add.w	r0, 1 #111	# tmp150,
	st.w	[r13 + (-12)], r0	# sign, tmp150
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:65:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp152, arg
	mov.w	r0, 1999999999	# tmp153,
	cmp.w	r1, r0	# tmp152, tmp153
	jses	.L15		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:66:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp154,
	st.w	[r13 + (-4)], r0	# arg, tmp154
.L15:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:69:                 i=18;
	mov.w	r0, 18	# tmp155,
	st.w	[r13 + (-16)], r0	# i, tmp155
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:70:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp156,
	add.w	r0, -59 #111	# tmp156,
	ld.w	r1, [r13 + (-16)]	# tmp158, i
	add.w	r0, r1 #222	# tmp157, tmp158
	xor.w	r1, r1	# tmp159
	st.b	[r0], r1	# tmpstr, tmp159
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:72:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp160, arg
	mov.w	r1, 10	# tmp161,
	div.w	r0, r1	# _15, tmp161
mov.w	r0, r14	# _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:72:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp162,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:72:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp164, i
	add.w	r1, -1 #111	# tmp163,
	st.w	[r13 + (-16)], r1	# i, tmp163
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:72:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _18, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:72:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp165,
	add.w	r0, -59 #111	# tmp165,
	ld.w	r2, [r13 + (-16)]	# tmp167, i
	add.w	r0, r2 #222	# tmp166, tmp167
	st.b	[r0], r1	# tmpstr, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:73:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp169, arg
	mov.w	r1, 10	# tmp171,
	div.w	r0, r1	# tmp170, tmp171
	st.w	[r13 + (-4)], r0	# arg, tmp170
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:74:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp172, arg
	xor.w	r0, r0	# tmp173
	cmp.w	r1, r0	# tmp172, tmp173
	jz	.L16		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:74:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp174, i
	xor.w	r0, r0	# tmp175
	cmp.w	r1, r0	# tmp174, tmp175
	jgs	.L17		#
.L16:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:75:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp176, sign
	xor.w	r0, r0	# tmp177
	cmp.w	r1, r0	# tmp176, tmp177
	jz	.L18		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:76:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp179, i
	add.w	r0, -1 #111	# tmp178,
	st.w	[r13 + (-16)], r0	# i, tmp178
	mov.w	r0, r13	# tmp180,
	add.w	r0, -59 #111	# tmp180,
	ld.w	r1, [r13 + (-16)]	# tmp182, i
	add.w	r0, r1 #222	# tmp181, tmp182
	mov.b	r1, 45	# tmp183,
	st.b	[r0], r1	# tmpstr, tmp183
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:79:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp184, len
	xor.w	r0, r0	# tmp185
	cmp.w	r1, r0	# tmp184, tmp185
	jses	.L19		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:79:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp186, len
	mov.w	r0, 17	# tmp187,
	cmp.w	r1, r0	# tmp186, tmp187
	jgs	.L19		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:80:                     while(i>18-len) {
	j	.L20		#
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:81:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp189, i
	add.w	r0, -1 #111	# tmp188,
	st.w	[r13 + (-16)], r0	# i, tmp188
	mov.w	r0, r13	# tmp190,
	add.w	r0, -59 #111	# tmp190,
	ld.w	r1, [r13 + (-16)]	# tmp192, i
	add.w	r0, r1 #222	# tmp191, tmp192
	mov.b	r1, 32	# tmp193,
	st.b	[r0], r1	# tmpstr, tmp193
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:80:                     while(i>18-len) {
	mov.w	r0, 18	# tmp194,
	ld.w	r1, [r13 + (-8)]	# tmp195, len
	sub.w	r0, r1 #222	# _19, tmp195
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:80:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp196, i
	cmp.w	r1, r0	# tmp196, _19
	jgs	.L21		#
.L19:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:84:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp197,
	add.w	r0, -59 #111	# tmp197,
	ld.w	r1, [r13 + (-16)]	# tmp199, i
	add.w	r0, r1 #222	# tmp198, tmp199
	st.w	[r13 + (-20)], r0	# p, tmp198
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:85:                 while(*p) {
	j	.L22		#
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.2_20, p
	mov.w	r0, r1	# tmp200, p.2_20
	add.w	r0, 1 #111	# tmp200,
	st.w	[r13 + (-20)], r0	# p, tmp200
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.3_21, dst
	mov.w	r2, r0	# tmp201, dst.3_21
	add.w	r2, 1 #111	# tmp201,
	st.w	[r13 + (8)], r2	# dst, tmp201
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _22, *p.2_20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:86:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.3_21, _22
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:85:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp202, p
	ld.b	r0, [r0]	# _23, *p_93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:85:                 while(*p) {
	sex.b	r1, r0	# tmp203, _23
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# tmp203, tmp204
	jnz	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:89:                 *dst++ = '.';
	ld.w	r0, [r13 + (8)]	# dst.4_24, dst
	mov.w	r1, r0	# tmp205, dst.4_24
	add.w	r1, 1 #111	# tmp205,
	st.w	[r13 + (8)], r1	# dst, tmp205
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:89:                 *dst++ = '.';
	mov.b	r1, 46	# tmp206,
	st.b	[r0], r1	# *dst.4_24, tmp206
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:92:                 int int_f = f;
	ld.w	r0, [r13 + (-32)]	# tmp207, f
	st.w	[sp], r0	#, tmp207
	call	__fixsfsi		#
	st.w	[r13 + (-36)], r0	# int_f, tmp208
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:93:                 float rest = f - int_f;
	ld.w	r0, [r13 + (-36)]	# tmp209, int_f
	st.w	[sp], r0	#, tmp209
	call	__floatsisf		#
	mov.w	r1, r0	# _25,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:93:                 float rest = f - int_f;
	mov.w	r0, r1	# tmp210, _25
	st.w	[sp + (4)], r0	#, tmp210
	ld.w	r0, [r13 + (-32)]	# tmp211, f
	st.w	[sp], r0	#, tmp211
	call	__subsf3		#
	mov.w	r1, r0	# tmp212,
	mov.w	r0, r1	# tmp213, tmp212
	st.w	[r13 + (-40)], r0	# rest, tmp213
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:94:                 rest *= 1000.0;
	mov.w	r0, 1148846080	# tmp214,
	st.w	[sp + (4)], r0	#, tmp214
	ld.w	r0, [r13 + (-40)]	# tmp215, rest
	st.w	[sp], r0	#, tmp215
	call	__mulsf3		#
	mov.w	r1, r0	# tmp216,
	mov.w	r0, r1	# tmp217, tmp216
	st.w	[r13 + (-40)], r0	# rest, tmp217
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:95:                 arg = (rest);
	ld.w	r0, [r13 + (-40)]	# tmp218, rest
	st.w	[sp], r0	#, tmp218
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# arg, tmp219
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:98:                 sign=0;
	xor.w	r0, r0	# tmp220
	st.w	[r13 + (-12)], r0	# sign, tmp220
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:99:                 if((int)arg<0) {
	ld.w	r1, [r13 + (-4)]	# tmp221, arg
	xor.w	r0, r0	# tmp222
	cmp.w	r1, r0	# tmp221, tmp222
	jges	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:100:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp224, arg
	mov.w	r0, r0	# tmp223, tmp224
neg.w	r0	# tmp223
	st.w	[r13 + (-4)], r0	# arg, tmp223
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:102:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp225, arg
	mov.w	r0, 1999999999	# tmp226,
	cmp.w	r1, r0	# tmp225, tmp226
	jses	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:103:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp227,
	st.w	[r13 + (-4)], r0	# arg, tmp227
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:106:                 i=18;
	mov.w	r0, 18	# tmp228,
	st.w	[r13 + (-16)], r0	# i, tmp228
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:107:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp229,
	add.w	r0, -59 #111	# tmp229,
	ld.w	r1, [r13 + (-16)]	# tmp231, i
	add.w	r0, r1 #222	# tmp230, tmp231
	xor.w	r1, r1	# tmp232
	st.b	[r0], r1	# tmpstr, tmp232
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp233, arg
	mov.w	r1, 10	# tmp234,
	div.w	r0, r1	# _26, tmp234
mov.w	r0, r14	# _26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp235,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp237, i
	add.w	r1, -1 #111	# tmp236,
	st.w	[r13 + (-16)], r1	# i, tmp236
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _29, _28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:109:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp238,
	add.w	r0, -59 #111	# tmp238,
	ld.w	r2, [r13 + (-16)]	# tmp240, i
	add.w	r0, r2 #222	# tmp239, tmp240
	st.b	[r0], r1	# tmpstr, _29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:110:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp242, arg
	mov.w	r1, 10	# tmp244,
	div.w	r0, r1	# tmp243, tmp244
	st.w	[r13 + (-4)], r0	# arg, tmp243
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp245, arg
	xor.w	r0, r0	# tmp246
	cmp.w	r1, r0	# tmp245, tmp246
	jz	.L26		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:111:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp247, i
	xor.w	r0, r0	# tmp248
	cmp.w	r1, r0	# tmp247, tmp248
	jgs	.L27		#
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:113:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp249, len
	xor.w	r0, r0	# tmp250
	cmp.w	r1, r0	# tmp249, tmp250
	jses	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:113:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp251, len
	mov.w	r0, 17	# tmp252,
	cmp.w	r1, r0	# tmp251, tmp252
	jgs	.L28		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     while(i>18-len) {
	j	.L29		#
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:115:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp254, i
	add.w	r0, -1 #111	# tmp253,
	st.w	[r13 + (-16)], r0	# i, tmp253
	mov.w	r0, r13	# tmp255,
	add.w	r0, -59 #111	# tmp255,
	ld.w	r1, [r13 + (-16)]	# tmp257, i
	add.w	r0, r1 #222	# tmp256, tmp257
	mov.b	r1, 32	# tmp258,
	st.b	[r0], r1	# tmpstr, tmp258
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     while(i>18-len) {
	mov.w	r0, 18	# tmp259,
	ld.w	r1, [r13 + (-8)]	# tmp260, len
	sub.w	r0, r1 #222	# _30, tmp260
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:114:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp261, i
	cmp.w	r1, r0	# tmp261, _30
	jgs	.L30		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:118:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp262,
	add.w	r0, -59 #111	# tmp262,
	ld.w	r1, [r13 + (-16)]	# tmp264, i
	add.w	r0, r1 #222	# tmp263, tmp264
	st.w	[r13 + (-20)], r0	# p, tmp263
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                 while(*p) {
	j	.L31		#
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.5_31, p
	mov.w	r0, r1	# tmp265, p.5_31
	add.w	r0, 1 #111	# tmp265,
	st.w	[r13 + (-20)], r0	# p, tmp265
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.6_32, dst
	mov.w	r2, r0	# tmp266, dst.6_32
	add.w	r2, 1 #111	# tmp266,
	st.w	[r13 + (8)], r2	# dst, tmp266
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _33, *p.5_31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:120:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.6_32, _33
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp267, p
	ld.b	r0, [r0]	# _34, *p_94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:119:                 while(*p) {
	sex.b	r1, r0	# tmp268, _34
	xor.w	r0, r0	# tmp269
	cmp.w	r1, r0	# tmp268, tmp269
	jnz	.L32		#
	j	.L33		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:127:             if(*fmt=='d') {
	ld.w	r0, [r13 + (12)]	# tmp270, fmt
	ld.b	r0, [r0]	# _35, *fmt_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:127:             if(*fmt=='d') {
	sex.b	r1, r0	# tmp271, _35
	mov.w	r0, 100	# tmp272,
	cmp.w	r1, r0	# tmp271, tmp272
	jnz	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:128:                 arg = va_arg(args, int);
	ld.w	r0, [r13 + (16)]	# D.1656, args
	mov.w	r1, r0	# D.1657, D.1656
	add.w	r1, 4 #111	# D.1657,
	st.w	[r13 + (16)], r1	# args, D.1657
	ld.w	r0, [r0]	# tmp273, MEM[(int *)_228]
	st.w	[r13 + (-4)], r0	# arg, tmp273
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:130:                 sign=0;
	xor.w	r0, r0	# tmp274
	st.w	[r13 + (-12)], r0	# sign, tmp274
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:131:                 if((int)arg<0) {
	ld.w	r1, [r13 + (-4)]	# tmp275, arg
	xor.w	r0, r0	# tmp276
	cmp.w	r1, r0	# tmp275, tmp276
	jges	.L35		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:132:                     arg*=-1;
	ld.w	r0, [r13 + (-4)]	# tmp278, arg
	mov.w	r0, r0	# tmp277, tmp278
neg.w	r0	# tmp277
	st.w	[r13 + (-4)], r0	# arg, tmp277
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:133:                     sign++;
	ld.w	r0, [r13 + (-12)]	# tmp280, sign
	add.w	r0, 1 #111	# tmp279,
	st.w	[r13 + (-12)], r0	# sign, tmp279
.L35:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:135:                 if(arg>1999999999L) {
	ld.w	r1, [r13 + (-4)]	# tmp281, arg
	mov.w	r0, 1999999999	# tmp282,
	cmp.w	r1, r0	# tmp281, tmp282
	jses	.L36		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:136:                     arg=1999999999L;
	mov.w	r0, 1999999999	# tmp283,
	st.w	[r13 + (-4)], r0	# arg, tmp283
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:139:                 i=18;
	mov.w	r0, 18	# tmp284,
	st.w	[r13 + (-16)], r0	# i, tmp284
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:140:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp285,
	add.w	r0, -59 #111	# tmp285,
	ld.w	r1, [r13 + (-16)]	# tmp287, i
	add.w	r0, r1 #222	# tmp286, tmp287
	xor.w	r1, r1	# tmp288
	st.b	[r0], r1	# tmpstr, tmp288
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r0, [r13 + (-4)]	# tmp289, arg
	mov.w	r1, 10	# tmp290,
	div.w	r0, r1	# _36, tmp290
mov.w	r0, r14	# _36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                     tmpstr[--i]='0'+(arg%10);
	add.w	r0, 48 #111	# tmp291,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                     tmpstr[--i]='0'+(arg%10);
	ld.w	r1, [r13 + (-16)]	# tmp293, i
	add.w	r1, -1 #111	# tmp292,
	st.w	[r13 + (-16)], r1	# i, tmp292
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r1, r0	# _39, _38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:142:                     tmpstr[--i]='0'+(arg%10);
	mov.w	r0, r13	# tmp294,
	add.w	r0, -59 #111	# tmp294,
	ld.w	r2, [r13 + (-16)]	# tmp296, i
	add.w	r0, r2 #222	# tmp295, tmp296
	st.b	[r0], r1	# tmpstr, _39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:143:                     arg/=10;
	ld.w	r0, [r13 + (-4)]	# tmp298, arg
	mov.w	r1, 10	# tmp300,
	div.w	r0, r1	# tmp299, tmp300
	st.w	[r13 + (-4)], r0	# arg, tmp299
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:144:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp301, arg
	xor.w	r0, r0	# tmp302
	cmp.w	r1, r0	# tmp301, tmp302
	jz	.L37		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:144:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp303, i
	xor.w	r0, r0	# tmp304
	cmp.w	r1, r0	# tmp303, tmp304
	jgs	.L38		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:145:                 if(sign) {
	ld.w	r1, [r13 + (-12)]	# tmp305, sign
	xor.w	r0, r0	# tmp306
	cmp.w	r1, r0	# tmp305, tmp306
	jz	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:146:                     tmpstr[--i]='-';
	ld.w	r0, [r13 + (-16)]	# tmp308, i
	add.w	r0, -1 #111	# tmp307,
	st.w	[r13 + (-16)], r0	# i, tmp307
	mov.w	r0, r13	# tmp309,
	add.w	r0, -59 #111	# tmp309,
	ld.w	r1, [r13 + (-16)]	# tmp311, i
	add.w	r0, r1 #222	# tmp310, tmp311
	mov.b	r1, 45	# tmp312,
	st.b	[r0], r1	# tmpstr, tmp312
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:149:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp313, len
	xor.w	r0, r0	# tmp314
	cmp.w	r1, r0	# tmp313, tmp314
	jses	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:149:                 if(len>0 && len<18) {
	ld.w	r1, [r13 + (-8)]	# tmp315, len
	mov.w	r0, 17	# tmp316,
	cmp.w	r1, r0	# tmp315, tmp316
	jgs	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:150:                     while(i>18-len) {
	j	.L41		#
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:151:                         tmpstr[--i]=' ';
	ld.w	r0, [r13 + (-16)]	# tmp318, i
	add.w	r0, -1 #111	# tmp317,
	st.w	[r13 + (-16)], r0	# i, tmp317
	mov.w	r0, r13	# tmp319,
	add.w	r0, -59 #111	# tmp319,
	ld.w	r1, [r13 + (-16)]	# tmp321, i
	add.w	r0, r1 #222	# tmp320, tmp321
	mov.b	r1, 32	# tmp322,
	st.b	[r0], r1	# tmpstr, tmp322
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:150:                     while(i>18-len) {
	mov.w	r0, 18	# tmp323,
	ld.w	r1, [r13 + (-8)]	# tmp324, len
	sub.w	r0, r1 #222	# _40, tmp324
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:150:                     while(i>18-len) {
	ld.w	r1, [r13 + (-16)]	# tmp325, i
	cmp.w	r1, r0	# tmp325, _40
	jgs	.L42		#
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:154:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp326,
	add.w	r0, -59 #111	# tmp326,
	ld.w	r1, [r13 + (-16)]	# tmp328, i
	add.w	r0, r1 #222	# tmp327, tmp328
	st.w	[r13 + (-20)], r0	# p, tmp327
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:155:                 goto copystring;
	j	.L43		#
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:158:             if(*fmt=='x') {
	ld.w	r0, [r13 + (12)]	# tmp329, fmt
	ld.b	r0, [r0]	# _41, *fmt_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:158:             if(*fmt=='x') {
	sex.b	r1, r0	# tmp330, _41
	mov.w	r0, 120	# tmp331,
	cmp.w	r1, r0	# tmp330, tmp331
	jnz	.L44		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:159:                 arg = va_arg(args, long int);
	ld.w	r0, [r13 + (16)]	# D.1658, args
	mov.w	r1, r0	# D.1659, D.1658
	add.w	r1, 4 #111	# D.1659,
	st.w	[r13 + (16)], r1	# args, D.1659
	ld.w	r0, [r0]	# tmp332, MEM[(long int *)_225]
	st.w	[r13 + (-4)], r0	# arg, tmp332
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:161:                 i=16;
	mov.w	r0, 16	# tmp333,
	st.w	[r13 + (-16)], r0	# i, tmp333
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:162:                 tmpstr[i]=0;
	mov.w	r0, r13	# tmp334,
	add.w	r0, -59 #111	# tmp334,
	ld.w	r1, [r13 + (-16)]	# tmp336, i
	add.w	r0, r1 #222	# tmp335, tmp336
	xor.w	r1, r1	# tmp337
	st.b	[r0], r1	# tmpstr, tmp337
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                     char n=arg & 0xf;
	ld.w	r0, [r13 + (-4)]	# tmp338, arg
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:164:                     char n=arg & 0xf;
	mov.w	r1, 15	# tmp340,
	and.w	r0, r1	# tmp339, tmp340
	st.b	[r13 + (-25)], r0	# n, tmp341
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:166:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.b	r0, [r13 + (-25)]	#, n
	sex.b	r1, r0	# tmp342,
	mov.w	r0, 9	# tmp343,
	cmp.w	r1, r0	# tmp342, tmp343
	jses	.L45		#
	mov.b	r0, 55	# iftmp.7_99,
	j	.L46		#
.L45:
	mov.b	r0, 48	# iftmp.7_99,
.L46:
	ld.b	r1, [r13 + (-25)]	# n.8_43, n
	add.w	r0, r1 #222	# tmp344, tmp345
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:166:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	ld.w	r1, [r13 + (-16)]	# tmp347, i
	add.w	r1, -1 #111	# tmp346,
	st.w	[r13 + (-16)], r1	# i, tmp346
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:166:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r1, r0	# _45, _44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:166:                     tmpstr[--i]=n+(n>9?0x37:0x30);
	mov.w	r0, r13	# tmp348,
	add.w	r0, -59 #111	# tmp348,
	ld.w	r2, [r13 + (-16)]	# tmp350, i
	add.w	r0, r2 #222	# tmp349, tmp350
	st.b	[r0], r1	# tmpstr, _45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:167:                     arg>>=4;
	ld.w	r0, [r13 + (-4)]	# tmp352, arg
	mov.w	r1, 4	# tmp353,
	shr.w	r0, r1	# tmp351, tmp353
	st.w	[r13 + (-4)], r0	# arg, tmp351
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:168:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-4)]	# tmp354, arg
	xor.w	r0, r0	# tmp355
	cmp.w	r1, r0	# tmp354, tmp355
	jz	.L47		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:168:                 } while(arg!=0 && i>0);
	ld.w	r1, [r13 + (-16)]	# tmp356, i
	xor.w	r0, r0	# tmp357
	cmp.w	r1, r0	# tmp356, tmp357
	jgs	.L48		#
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:170:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp358, len
	xor.w	r0, r0	# tmp359
	cmp.w	r1, r0	# tmp358, tmp359
	jses	.L49		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:170:                 if(len>0 && len<=16) {
	ld.w	r1, [r13 + (-8)]	# tmp360, len
	mov.w	r0, 16	# tmp361,
	cmp.w	r1, r0	# tmp360, tmp361
	jgs	.L49		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:171:                     while(i>16-len) {
	j	.L50		#
.L51:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:172:                         tmpstr[--i]='0';
	ld.w	r0, [r13 + (-16)]	# tmp363, i
	add.w	r0, -1 #111	# tmp362,
	st.w	[r13 + (-16)], r0	# i, tmp362
	mov.w	r0, r13	# tmp364,
	add.w	r0, -59 #111	# tmp364,
	ld.w	r1, [r13 + (-16)]	# tmp366, i
	add.w	r0, r1 #222	# tmp365, tmp366
	mov.b	r1, 48	# tmp367,
	st.b	[r0], r1	# tmpstr, tmp367
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:171:                     while(i>16-len) {
	mov.w	r0, 16	# tmp368,
	ld.w	r1, [r13 + (-8)]	# tmp369, len
	sub.w	r0, r1 #222	# _46, tmp369
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:171:                     while(i>16-len) {
	ld.w	r1, [r13 + (-16)]	# tmp370, i
	cmp.w	r1, r0	# tmp370, _46
	jgs	.L51		#
.L49:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:175:                 p=&tmpstr[i];
	mov.w	r0, r13	# tmp371,
	add.w	r0, -59 #111	# tmp371,
	ld.w	r1, [r13 + (-16)]	# tmp373, i
	add.w	r0, r1 #222	# tmp372, tmp373
	st.w	[r13 + (-20)], r0	# p, tmp372
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:176:                 goto copystring;
	j	.L43		#
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:179:             if(*fmt=='s') {
	ld.w	r0, [r13 + (12)]	# tmp374, fmt
	ld.b	r0, [r0]	# _47, *fmt_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:179:             if(*fmt=='s') {
	sex.b	r1, r0	# tmp375, _47
	mov.w	r0, 115	# tmp376,
	cmp.w	r1, r0	# tmp375, tmp376
	jnz	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:180:                 p = va_arg(args, char*);
	ld.w	r0, [r13 + (16)]	# D.1660, args
	mov.w	r1, r0	# D.1661, D.1660
	add.w	r1, 4 #111	# D.1661,
	st.w	[r13 + (16)], r1	# args, D.1661
	ld.w	r0, [r0]	# tmp377, MEM[(char * *)_222]
	st.w	[r13 + (-20)], r0	# p, tmp377
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:181: copystring:     if(p==(void*)0) {
	ld.w	r1, [r13 + (-20)]	# tmp378, p
	xor.w	r0, r0	# tmp379
	cmp.w	r1, r0	# tmp378, tmp379
	jnz	.L53		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:182:                     p="(null)";
	mov.w	r0, .LC0	# tmp380,
	st.w	[r13 + (-20)], r0	# p, tmp380
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:184:                 while(*p) {
	j	.L53		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185:                     *dst++ = *p++;
	ld.w	r1, [r13 + (-20)]	# p.9_48, p
	mov.w	r0, r1	# tmp381, p.9_48
	add.w	r0, 1 #111	# tmp381,
	st.w	[r13 + (-20)], r0	# p, tmp381
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185:                     *dst++ = *p++;
	ld.w	r0, [r13 + (8)]	# dst.10_49, dst
	mov.w	r2, r0	# tmp382, dst.10_49
	add.w	r2, 1 #111	# tmp382,
	st.w	[r13 + (8)], r2	# dst, tmp382
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185:                     *dst++ = *p++;
	ld.b	r1, [r1]	# _50, *p.9_48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:185:                     *dst++ = *p++;
	st.b	[r0], r1	# *dst.10_49, _50
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:184:                 while(*p) {
	ld.w	r0, [r13 + (-20)]	# tmp383, p
	ld.b	r0, [r0]	# _51, *p_97
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:184:                 while(*p) {
	sex.b	r1, r0	# tmp384, _51
	xor.w	r0, r0	# tmp385
	cmp.w	r1, r0	# tmp384, tmp385
	jnz	.L54		#
	j	.L33		#
.L57:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:189: put:        *dst++ = *fmt;
	nop	
	j	.L6		#
.L58:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:30:                 goto put;
	nop	
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:189: put:        *dst++ = *fmt;
	ld.w	r0, [r13 + (8)]	# dst.11_52, dst
	mov.w	r1, r0	# tmp386, dst.11_52
	add.w	r1, 1 #111	# tmp386,
	st.w	[r13 + (8)], r1	# dst, tmp386
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:189: put:        *dst++ = *fmt;
	ld.w	r1, [r13 + (12)]	# tmp387, fmt
	ld.b	r1, [r1]	# _53, *fmt_63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:189: put:        *dst++ = *fmt;
	st.b	[r0], r1	# *dst.11_52, _53
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:191:         fmt++;
	ld.w	r0, [r13 + (12)]	# tmp389, fmt
	add.w	r0, 1 #111	# tmp388,
	st.w	[r13 + (12)], r0	# fmt, tmp388
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	ld.w	r0, [r13 + (12)]	# tmp390, fmt
	ld.b	r0, [r0]	# _54, *fmt_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:24:     while(*fmt) {
	sex.b	r1, r0	# tmp391, _54
	xor.w	r0, r0	# tmp392
	cmp.w	r1, r0	# tmp391, tmp392
	jnz	.L55		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:193:     *dst=0;
	ld.w	r0, [r13 + (8)]	# tmp393, dst
	xor.w	r1, r1	# tmp394
	st.b	[r0], r1	# *dst_60, tmp394
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:195:     return dst-orig;
	ld.w	r0, [r13 + (8)]	# tmp395, dst
	ld.w	r1, [r13 + (-24)]	# tmp396, orig
	sub.w	r0, r1 #222	# _55, tmp396
.L56:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:196: }
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:204:     va_start(args, fmt);
	mov.w	r0, r13	# tmp29,
	add.w	r0, 16 #111	# tmp29,
	st.w	[r13 + (-4)], r0	# MEM[(void * *)&args], tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:205:     return vsprintf(dst,fmt,args);
	ld.w	r1, [r13 + (-4)]	# args.12_1, args
	mov.w	r0, sp	# tmp30,
	st.w	[r0 + (8)], r1	#, args.12_1
	ld.w	r1, [r13 + (12)]	# tmp31, fmt
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, dst
	st.w	[r0], r1	#, tmp32
	call	vsprintf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:206: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintf, .-sprintf
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
