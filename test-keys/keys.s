	.file	"keys.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include keys.c
# -mel -auxbase-strip keys.s -fsigned-char -fverbose-asm
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
	.section	.rodata
	.p2align	2
.LC0:
	.string	"\nKeys test"
	.p2align	2
.LC1:
	.string	"pressed %d\n"
	.p2align	2
.LC2:
	.string	"released %d\n"
	.text
	.p2align	1
	.global	main
	.type	main, @function
main:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# keys.c:7: 	printf("\nKeys test\n");
	mov.w	r1, sp	# tmp28,
	mov.w	r0, .LC0	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	puts		#
.L4:
# keys.c:9: 		vkp = is_key_pressed();
	call	is_key_pressed		#
	st.w	[r13 + (-4)], r0	# vkp,
# keys.c:10: 		vkr = is_key_released();
	call	is_key_released		#
	st.w	[r13 + (-8)], r0	# vkr,
# keys.c:11: 		if (vkp != 0) 
	ld.w	r1, [r13 + (-4)]	# tmp30, vkp
	xor.w	r0, r0	# tmp31
	cmp.w	r1, r0	# tmp30, tmp31
	jz	.L2		#
# keys.c:13: 			printf("pressed %d\n", vkp);
	mov.w	r0, sp	# tmp32,
	ld.w	r1, [r13 + (-4)]	# tmp33, vkp
	st.w	[r0 + (4)], r1	#, tmp33
	mov.w	r1, .LC1	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	printf		#
	j	.L3		#
.L2:
# keys.c:15: 		else if (vkr != 0)
	ld.w	r1, [r13 + (-8)]	# tmp35, vkr
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jz	.L3		#
# keys.c:17: 			printf("released %d\n", vkr);
	mov.w	r0, sp	# tmp37,
	ld.w	r1, [r13 + (-8)]	# tmp38, vkr
	st.w	[r0 + (4)], r1	#, tmp38
	mov.w	r1, .LC2	# tmp39,
	st.w	[r0], r1	#, tmp39
	call	printf		#
.L3:
# keys.c:19: 	} while (vkp != VK_ESC);
	ld.w	r1, [r13 + (-4)]	# tmp40, vkp
	mov.w	r0, 27	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L4		#
	xor.w	r0, r0	# _11
# keys.c:20: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
