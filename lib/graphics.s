	.file	"graphics.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c -mel
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:90: 	asm("ld.w r0, [190400]\njr r0\n");
# 90 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [190400]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:91: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:93: 	asm("ld.w r0, [190404]\njr r0\n");
# 93 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [190404]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:94: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:96: 	asm("ld.w r0, [190408]\njr r0\n");
# 96 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [190408]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:97: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:99: 	asm("ld.w r0, [190412]\njr r0\n");
# 99 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c" 1
	ld.w r0, [190412]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/graphics.c:100: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw, .-draw
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
