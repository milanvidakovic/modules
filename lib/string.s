	.file	"string.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:341:   asm("ld.w r0, [190100]\njr r0\n");
# 341 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190100]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:342: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:346:   asm("ld.w r0, [190104]\njr r0\n");
# 346 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190104]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:347: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:351: 	asm("ld.w r0, [190108]\njr r0\n");
# 351 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190108]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:352: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:356: 	asm("ld.w r0, [190112]\njr r0\n");
# 356 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190112]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:357: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:361:   asm("ld.w r0, [190116]\njr r0\n");
# 361 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190116]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:362: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:366:   asm("ld.w r0, [190120]\njr r0\n");
# 366 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190120]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:367: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:371:   asm("ld.w r0, [190124]\njr r0\n");
# 371 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190124]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:372: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:376:   asm("ld.w r0, [190128]\njr r0\n");
# 376 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190128]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:377: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strncpy, .-strncpy
	.p2align	1
	.global	strcat
	.type	strcat, @function
strcat:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:381:   asm("ld.w r0, [190132]\njr r0\n");
# 381 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190132]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:382: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strcat, .-strcat
	.p2align	1
	.global	strstr
	.type	strstr, @function
strstr:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:386:   asm("ld.w r0, [190136]\njr r0\n");
# 386 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190136]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:387: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strstr, .-strstr
	.p2align	1
	.global	tolower
	.type	tolower, @function
tolower:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:391:   asm("ld.w r0, [190140]\njr r0\n");
# 391 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190140]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:392: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:396:   asm("ld.w r0, [190144]\njr r0\n");
# 396 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190144]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:397: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:401:   asm("ld.w r0, [190148]\njr r0\n");
# 401 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190148]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:402: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:406:   asm("ld.w r0, [190152]\njr r0\n");
# 406 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190152]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:407: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:411:   asm("ld.w r0, [190156]\njr r0\n");
# 411 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190156]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:412: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:416:   asm("ld.w r0, [190160]\njr r0\n");
# 416 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190160]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:417: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:421:   asm("ld.w r0, [190164]\njr r0\n");
# 421 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190164]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:422: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:426:   asm("ld.w r0, [190168]\njr r0\n");
# 426 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190168]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:427: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:431:   asm("ld.w r0, [190172]\njr r0\n");
# 431 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190172]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:432: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isalnum, .-isalnum
	.p2align	1
	.global	atoi
	.type	atoi, @function
atoi:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:436:   asm("ld.w r0, [190176]\njr r0\n");
# 436 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190176]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:437: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	atoi, .-atoi
	.p2align	1
	.global	isspace
	.type	isspace, @function
isspace:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:441:   asm("ld.w r0, [190180]\njr r0\n");
# 441 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190180]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:442: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	isspace, .-isspace
	.p2align	1
	.global	memcmp
	.type	memcmp, @function
memcmp:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:446:   asm("ld.w r0, [190184]\njr r0\n");
# 446 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190184]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:447: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:451:   asm("ld.w r0, [190188]\njr r0\n");
# 451 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190188]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:452: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:456:   asm("ld.w r0, [190192]\njr r0\n");
# 456 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190192]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:457: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:461:   asm("ld.w r0, [190196]\njr r0\n");
# 461 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190196]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:462: }
	nop	
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
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:466:   asm("ld.w r0, [190200]\njr r0\n");
# 466 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c" 1
	ld.w r0, [190200]
jr r0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/string.c:467: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	strncasecmp, .-strncasecmp
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
