	.file	"graphics.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.s
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
	.global	pixel
	.type	pixel, @function
pixel:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:7: 	switch(current_video_mode)
	ld.w	r0, [current_video_mode]	# current_video_mode.0_1, current_video_mode
	mov.w	r1, 2	# tmp27,
	cmp.w	r0, r1	# current_video_mode.0_1, tmp27
	jz	.L2		#
	mov.w	r1, 2	# tmp28,
	cmp.w	r0, r1	# current_video_mode.0_1, tmp28
	jgs	.L1		#
	xor.w	r1, r1	# tmp29
	cmp.w	r0, r1	# current_video_mode.0_1, tmp29
	jz	.L6		#
	mov.w	r1, 1	# tmp30,
	cmp.w	r0, r1	# current_video_mode.0_1, tmp30
	jnz	.L1		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:12: 			asm (
# 12 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (16)]
 call pixel320
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:15: 			return;
	j	.L1		#
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:17: 			asm (
# 17 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (16)]
 call pixel640
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:20: 			return;
	j	.L1		#
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:10: 			return;
	nop	
.L1:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:22: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	pixel, .-pixel
	.p2align	1
	.global	line
	.type	line, @function
line:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:26: 	switch(current_video_mode)
	ld.w	r0, [current_video_mode]	# current_video_mode.1_1, current_video_mode
	mov.w	r1, 2	# tmp27,
	cmp.w	r0, r1	# current_video_mode.1_1, tmp27
	jz	.L8		#
	mov.w	r1, 2	# tmp28,
	cmp.w	r0, r1	# current_video_mode.1_1, tmp28
	jgs	.L7		#
	xor.w	r1, r1	# tmp29
	cmp.w	r0, r1	# current_video_mode.1_1, tmp29
	jz	.L12		#
	mov.w	r1, 1	# tmp30,
	cmp.w	r0, r1	# current_video_mode.1_1, tmp30
	jnz	.L7		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:33: 			asm(
# 33 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (24)]
 ld.w r3, [r13 + (16)]
 ld.w r4, [r13 + (20)]
call line320
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:37: 			return;
	j	.L7		#
.L8:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:39: 			asm(
# 39 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (24)]
 ld.w r3, [r13 + (16)]
 ld.w r4, [r13 + (20)]
call line640
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:42: 			return;
	j	.L7		#
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:29: 			return;
	nop	
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:44: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	line, .-line
	.p2align	1
	.global	circle
	.type	circle, @function
circle:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:48: 	switch(current_video_mode)
	ld.w	r0, [current_video_mode]	# current_video_mode.2_1, current_video_mode
	mov.w	r1, 2	# tmp27,
	cmp.w	r0, r1	# current_video_mode.2_1, tmp27
	jz	.L14		#
	mov.w	r1, 2	# tmp28,
	cmp.w	r0, r1	# current_video_mode.2_1, tmp28
	jgs	.L13		#
	xor.w	r1, r1	# tmp29
	cmp.w	r0, r1	# current_video_mode.2_1, tmp29
	jz	.L18		#
	mov.w	r1, 1	# tmp30,
	cmp.w	r0, r1	# current_video_mode.2_1, tmp30
	jnz	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:55: 			asm(
# 55 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (20)]
 ld.w r3, [r13 + (16)]
 call circle320
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:58: 			return;
	j	.L13		#
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:60: 			asm(
# 60 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (20)]
 ld.w r3, [r13 + (16)]
 call circle640
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:63: 			return;
	j	.L13		#
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:51: 			return;
	nop	
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:65: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	circle, .-circle
	.p2align	1
	.global	draw
	.type	draw, @function
draw:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:69: 	switch(current_video_mode)
	ld.w	r0, [current_video_mode]	# current_video_mode.3_1, current_video_mode
	mov.w	r1, 2	# tmp27,
	cmp.w	r0, r1	# current_video_mode.3_1, tmp27
	jz	.L20		#
	mov.w	r1, 2	# tmp28,
	cmp.w	r0, r1	# current_video_mode.3_1, tmp28
	jgs	.L19		#
	xor.w	r1, r1	# tmp29
	cmp.w	r0, r1	# current_video_mode.3_1, tmp29
	jz	.L24		#
	mov.w	r1, 1	# tmp30,
	cmp.w	r0, r1	# current_video_mode.3_1, tmp30
	jnz	.L19		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:76: 			asm(
# 76 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (20)]
 ld.w r3, [r13 + (16)]
 call draw_text320
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:80: 			return;
	j	.L19		#
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:82: 			asm(
# 82 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [r13 + (8)]
 ld.w r1, [r13 + (12)]
 ld.w r2, [r13 + (20)]
 call draw_text640
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:85: 			return;
	j	.L19		#
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:72: 			return;
	nop	
.L19:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:87: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw, .-draw
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
