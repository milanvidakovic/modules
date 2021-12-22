	.file	"sprintf.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
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
	.p2align	1
	.global	sprintf
	.type	sprintf, @function
sprintf:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:211:    	asm("ld.w r0, [190300]\njr r0\n");
# 211 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c" 1
	ld.w r0, [190300]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:212: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintf, .-sprintf
	.p2align	1
	.global	vsprintf
	.type	vsprintf, @function
vsprintf:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:216:    	asm("ld.w r0, [190304]\njr r0\n");
# 216 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c" 1
	ld.w r0, [190304]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/sprintf.c:217: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	vsprintf, .-vsprintf
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
