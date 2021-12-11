	.file	"fat.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c
# -mel -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.s
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
	.global	SPI_HANDLER_INSTR
	.data
	.p2align	2
	.type	SPI_HANDLER_INSTR, @object
	.size	SPI_HANDLER_INSTR, 4
SPI_HANDLER_INSTR:
	.long	56
	.global	SPI_HANDLER_ADDR
	.p2align	2
	.type	SPI_HANDLER_ADDR, @object
	.size	SPI_HANDLER_ADDR, 4
SPI_HANDLER_ADDR:
	.long	58
	.global	SPI1_HANDLER_INSTR
	.p2align	2
	.type	SPI1_HANDLER_INSTR, @object
	.size	SPI1_HANDLER_INSTR, 4
SPI1_HANDLER_INSTR:
	.long	64
	.global	SPI1_HANDLER_ADDR
	.p2align	2
	.type	SPI1_HANDLER_ADDR, @object
	.size	SPI1_HANDLER_ADDR, 4
SPI1_HANDLER_ADDR:
	.long	66
	.global	PORT_SPI_CS2
	.p2align	2
	.type	PORT_SPI_CS2, @object
	.size	PORT_SPI_CS2, 4
PORT_SPI_CS2:
	.long	-2147482908
	.global	DMA_1_HANDLER_INSTR
	.p2align	2
	.type	DMA_1_HANDLER_INSTR, @object
	.size	DMA_1_HANDLER_INSTR, 4
DMA_1_HANDLER_INSTR:
	.long	80
	.global	DMA_1_HANDLER_ADDR
	.p2align	2
	.type	DMA_1_HANDLER_ADDR, @object
	.size	DMA_1_HANDLER_ADDR, 4
DMA_1_HANDLER_ADDR:
	.long	82
	.global	block_
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	block_, @object
	.size	block_, 4
block_:
	.zero	4
	.global	chipSelectPin_
	.type	chipSelectPin_, @object
	.size	chipSelectPin_, 1
chipSelectPin_:
	.zero	1
	.global	errorCode_
	.type	errorCode_, @object
	.size	errorCode_, 1
errorCode_:
	.zero	1
	.global	inBlock_
	.type	inBlock_, @object
	.size	inBlock_, 1
inBlock_:
	.zero	1
	.global	offset_
	.p2align	1
	.type	offset_, @object
	.size	offset_, 2
offset_:
	.zero	2
	.global	partialBlockRead_
	.type	partialBlockRead_, @object
	.size	partialBlockRead_, 1
partialBlockRead_:
	.zero	1
	.global	status_
	.type	status_, @object
	.size	status_, 1
status_:
	.zero	1
	.global	type_
	.type	type_, @object
	.size	type_, 1
type_:
	.zero	1
	.global	writeCRC_
	.type	writeCRC_, @object
	.size	writeCRC_, 1
writeCRC_:
	.zero	1
	.global	crc_table
	.data
	.p2align	1
	.type	crc_table, @object
	.size	crc_table, 512
crc_table:
	.short	0
	.short	4129
	.short	8258
	.short	12387
	.short	16516
	.short	20645
	.short	24774
	.short	28903
	.short	-32504
	.short	-28375
	.short	-24246
	.short	-20117
	.short	-15988
	.short	-11859
	.short	-7730
	.short	-3601
	.short	4657
	.short	528
	.short	12915
	.short	8786
	.short	21173
	.short	17044
	.short	29431
	.short	25302
	.short	-27847
	.short	-31976
	.short	-19589
	.short	-23718
	.short	-11331
	.short	-15460
	.short	-3073
	.short	-7202
	.short	9314
	.short	13379
	.short	1056
	.short	5121
	.short	25830
	.short	29895
	.short	17572
	.short	21637
	.short	-23190
	.short	-19125
	.short	-31448
	.short	-27383
	.short	-6674
	.short	-2609
	.short	-14932
	.short	-10867
	.short	13907
	.short	9842
	.short	5649
	.short	1584
	.short	30423
	.short	26358
	.short	22165
	.short	18100
	.short	-18597
	.short	-22662
	.short	-26855
	.short	-30920
	.short	-2081
	.short	-6146
	.short	-10339
	.short	-14404
	.short	18628
	.short	22757
	.short	26758
	.short	30887
	.short	2112
	.short	6241
	.short	10242
	.short	14371
	.short	-13876
	.short	-9747
	.short	-5746
	.short	-1617
	.short	-30392
	.short	-26263
	.short	-22262
	.short	-18133
	.short	23285
	.short	19156
	.short	31415
	.short	27286
	.short	6769
	.short	2640
	.short	14899
	.short	10770
	.short	-9219
	.short	-13348
	.short	-1089
	.short	-5218
	.short	-25735
	.short	-29864
	.short	-17605
	.short	-21734
	.short	27814
	.short	31879
	.short	19684
	.short	23749
	.short	11298
	.short	15363
	.short	3168
	.short	7233
	.short	-4690
	.short	-625
	.short	-12820
	.short	-8755
	.short	-21206
	.short	-17141
	.short	-29336
	.short	-25271
	.short	32407
	.short	28342
	.short	24277
	.short	20212
	.short	15891
	.short	11826
	.short	7761
	.short	3696
	.short	-97
	.short	-4162
	.short	-8227
	.short	-12292
	.short	-16613
	.short	-20678
	.short	-24743
	.short	-28808
	.short	-28280
	.short	-32343
	.short	-20022
	.short	-24085
	.short	-12020
	.short	-16083
	.short	-3762
	.short	-7825
	.short	4224
	.short	161
	.short	12482
	.short	8419
	.short	20484
	.short	16421
	.short	28742
	.short	24679
	.short	-31815
	.short	-27752
	.short	-23557
	.short	-19494
	.short	-15555
	.short	-11492
	.short	-7297
	.short	-3234
	.short	689
	.short	4752
	.short	8947
	.short	13010
	.short	16949
	.short	21012
	.short	25207
	.short	29270
	.short	-18966
	.short	-23093
	.short	-27224
	.short	-31351
	.short	-2706
	.short	-6833
	.short	-10964
	.short	-15091
	.short	13538
	.short	9411
	.short	5280
	.short	1153
	.short	29798
	.short	25671
	.short	21540
	.short	17413
	.short	-22565
	.short	-18438
	.short	-30823
	.short	-26696
	.short	-6305
	.short	-2178
	.short	-14563
	.short	-10436
	.short	9939
	.short	14066
	.short	1681
	.short	5808
	.short	26199
	.short	30326
	.short	17941
	.short	22068
	.short	-9908
	.short	-13971
	.short	-1778
	.short	-5841
	.short	-26168
	.short	-30231
	.short	-18038
	.short	-22101
	.short	22596
	.short	18533
	.short	30726
	.short	26663
	.short	6336
	.short	2273
	.short	14466
	.short	10403
	.short	-13443
	.short	-9380
	.short	-5313
	.short	-1250
	.short	-29703
	.short	-25640
	.short	-21573
	.short	-17510
	.short	19061
	.short	23124
	.short	27191
	.short	31254
	.short	2801
	.short	6864
	.short	10931
	.short	14994
	.short	-722
	.short	-4849
	.short	-8852
	.short	-12979
	.short	-16982
	.short	-21109
	.short	-25112
	.short	-29239
	.short	31782
	.short	27655
	.short	23652
	.short	19525
	.short	15522
	.short	11395
	.short	7392
	.short	3265
	.short	-4321
	.short	-194
	.short	-12451
	.short	-8324
	.short	-20581
	.short	-16454
	.short	-28711
	.short	-24584
	.short	28183
	.short	32310
	.short	20053
	.short	24180
	.short	11923
	.short	16050
	.short	3793
	.short	7920
	.text
	.p2align	1
	.global	crc16
	.type	crc16, @function
crc16:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:67:   crc_t crc = 0x0000;
	xor.w	r0, r0	# tmp41
	st.s	[r13 + (-2)], r0	# crc, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:69:   const unsigned char *d = (const unsigned char *)ptr;
	ld.w	r0, [r13 + (8)]	# tmp42, ptr
	st.w	[r13 + (-8)], r0	# d, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:72:   while (count--) {
	j	.L2		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:73:       tbl_idx = ((crc >> 8) ^ *d) & 0xff;
	ld.s	r0, [r13 + (-2)]	# tmp43, crc
	mov.w	r1, 8	# tmp45,
	shr.w	r0, r1	# tmp44, tmp45
	zex.s	r0, r0	# _2, _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:73:       tbl_idx = ((crc >> 8) ^ *d) & 0xff;
	ld.w	r1, [r13 + (-8)]	# tmp46, d
	ld.b	r1, [r1]	# _3, *d_16
	zex.b	r1, r1	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:73:       tbl_idx = ((crc >> 8) ^ *d) & 0xff;
	xor.w	r0, r1	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:73:       tbl_idx = ((crc >> 8) ^ *d) & 0xff;
	mov.w	r1, 255	# tmp48,
	and.w	r0, r1	# tmp47, tmp48
	st.w	[r13 + (-12)], r0	# tbl_idx, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:74:       crc = (crc_table[tbl_idx] ^ (crc << 8)) & 0xffff;
	ld.w	r0, [r13 + (-12)]	# tmp49, tbl_idx
	add.w	r0, r0 #222	# tmp50, tmp49
	mov.w	r1, crc_table	# tmp52,
	add.w	r0, r1 #222	# tmp51, tmp52
	ld.s	r0, [r0]	# _7, crc_table
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:74:       crc = (crc_table[tbl_idx] ^ (crc << 8)) & 0xffff;
	ld.s	r1, [r13 + (-2)]	# _9, crc
	mov.w	r2, 8	# tmp53,
	shl.w	r1, r2	# _10, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:74:       crc = (crc_table[tbl_idx] ^ (crc << 8)) & 0xffff;
	xor.w	r0, r1	# tmp54, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:74:       crc = (crc_table[tbl_idx] ^ (crc << 8)) & 0xffff;
	st.s	[r13 + (-2)], r0	# crc, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:75:       d++;
	ld.w	r0, [r13 + (-8)]	# tmp56, d
	add.w	r0, 1 #111	# tmp55,
	st.w	[r13 + (-8)], r0	# d, tmp55
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:72:   while (count--) {
	ld.w	r0, [r13 + (12)]	# count.0_13, count
	mov.w	r1, r0	# tmp57, count.0_13
	add.w	r1, -1 #111	# tmp57,
	st.w	[r13 + (12)], r1	# count, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:72:   while (count--) {
	xor.w	r1, r1	# tmp58
	cmp.w	r0, r1	# count.0_13, tmp58
	jnz	.L3		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:77:   return crc & 0xffff;
	ld.s	r0, [r13 + (-2)]	# _22, crc
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:78: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	crc16, .-crc16
	.p2align	1
	.global	chipSelectHigh
	.type	chipSelectHigh, @function
chipSelectHigh:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:82:   *PORT_SPI_CS2 = 1;
	ld.w	r0, [PORT_SPI_CS2]	# PORT_SPI_CS2.1_1, PORT_SPI_CS2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:82:   *PORT_SPI_CS2 = 1;
	mov.s	r1, 1	# tmp27,
	st.s	[r0], r1	# *PORT_SPI_CS2.1_1, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:83: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	chipSelectHigh, .-chipSelectHigh
	.p2align	1
	.global	chipSelectLow
	.type	chipSelectLow, @function
chipSelectLow:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:85:   *PORT_SPI_CS2 = 0;
	ld.w	r0, [PORT_SPI_CS2]	# PORT_SPI_CS2.2_1, PORT_SPI_CS2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:85:   *PORT_SPI_CS2 = 0;
	xor.w	r1, r1	# tmp27
	st.s	[r0], r1	# *PORT_SPI_CS2.2_1, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:86: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	chipSelectLow, .-chipSelectLow
	.p2align	1
	.global	spiRec
	.type	spiRec, @function
spiRec:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:89:     send_spi(SPI0, 0xFF);
	mov.w	r0, sp	# tmp29,
	mov.w	r1, 255	# tmp30,
	st.w	[r0 + (4)], r1	#, tmp30
	xor.w	r1, r1	# tmp31
	st.w	[r0], r1	#, tmp31
	call	send_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:90:     return read_spi(SPI0);
	mov.w	r1, sp	# tmp32,
	xor.w	r0, r0	# tmp33
	st.w	[r1], r0	#, tmp33
	call	read_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:91: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spiRec, .-spiRec
	.p2align	1
	.global	spiSend
	.type	spiSend, @function
spiSend:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp27, b
	st.b	[r13 + (-4)], r0	# b, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:94:     send_spi(SPI0, b);
	ld.b	r1, [r13 + (-4)]	# _1, b
	mov.w	r0, sp	# tmp29,
	st.w	[r0 + (4)], r1	#, _1
	xor.w	r1, r1	# tmp30
	st.w	[r0], r1	#, tmp30
	call	send_spi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:95: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spiSend, .-spiSend
	.p2align	1
	.global	readEnd
	.type	readEnd, @function
readEnd:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:101:   uint16_t crc = 0;
	xor.w	r0, r0	# tmp35
	st.s	[r13 + (-2)], r0	# crc, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:102:   if (inBlock_) {
	ld.b	r0, [inBlock_]	# inBlock_.3_1, inBlock_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:102:   if (inBlock_) {
	zex.b	r1, r0	# tmp36, inBlock_.3_1
	xor.w	r0, r0	# tmp37
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:104:     while (offset_++ < 514) { 
	j	.L12		#
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:105:       uint8_t b = spiRec();
	call	spiRec		#
	st.b	[r13 + (-3)], r0	# b,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:106:        if (offset_ == 513) {
	ld.s	r0, [offset_]	# offset_.4_2, offset_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:106:        if (offset_ == 513) {
	zex.s	r1, r0	# tmp38, offset_.4_2
	mov.w	r0, 513	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L13		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:107:         crc = b << 8;
	ld.b	r0, [r13 + (-3)]	# tmp40, b
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:107:         crc = b << 8;
	mov.w	r1, 8	# tmp42,
	shl.w	r0, r1	# tmp41, tmp42
	st.s	[r13 + (-2)], r0	# crc, tmp43
	j	.L12		#
.L13:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:108:       } else if (offset_ == 514) 
	ld.s	r0, [offset_]	# offset_.5_4, offset_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:108:       } else if (offset_ == 514) 
	zex.s	r1, r0	# tmp44, offset_.5_4
	mov.w	r0, 514	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L12		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:110:         crc |= b;
	ld.b	r0, [r13 + (-3)]	# tmp46, b
	mov.w	r1, r0	# _5, tmp46
	ld.s	r0, [r13 + (-2)]	# tmp47, crc
	or.w	r0, r1	# tmp48, _5
	st.s	[r13 + (-2)], r0	# crc, tmp49
.L12:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:104:     while (offset_++ < 514) { 
	ld.s	r0, [offset_]	# offset_.6_6, offset_
	mov.w	r1, r0	# tmp50,
	add.w	r1, 1 #111	# tmp50,
	st.s	[offset_], r1	# offset_, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:104:     while (offset_++ < 514) { 
	zex.s	r1, r0	# tmp51, offset_.6_6
	mov.w	r0, 513	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jse	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:113:     chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:114:     inBlock_ = 0;
	xor.w	r0, r0	# tmp53
	st.b	[inBlock_], r0	# inBlock_, tmp53
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:116:   return crc;
	ld.s	r0, [r13 + (-2)]	# _22, crc
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:117: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	readEnd, .-readEnd
	.p2align	1
	.global	waitNotBusy
	.type	waitNotBusy, @function
waitNotBusy:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:121:   uint32_t t0 = get_millis();
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:121:   uint32_t t0 = get_millis();
	st.w	[r13 + (-4)], r0	# t0, _1
.L19:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:123:     if (spiRec() == 0XFF) return true;
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:123:     if (spiRec() == 0XFF) return true;
	zex.b	r1, r0	# tmp33, _2
	mov.w	r0, 255	# tmp34,
	cmp.w	r1, r0	# tmp33, tmp34
	jnz	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:123:     if (spiRec() == 0XFF) return true;
	mov.b	r0, 1	# _6,
	j	.L18		#
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:125:   while ((get_millis() - t0) < timeoutMillis);
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:125:   while ((get_millis() - t0) < timeoutMillis);
	ld.w	r1, [r13 + (-4)]	# tmp35, t0
	sub.w	r0, r1 #222	# _5, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:125:   while ((get_millis() - t0) < timeoutMillis);
	ld.w	r1, [r13 + (8)]	# tmp36, timeoutMillis
	cmp.w	r1, r0	# tmp36, _5
	jg	.L19		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:126:   return false;
	xor.w	r0, r0	# _6
.L18:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:127: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	waitNotBusy, .-waitNotBusy
	.p2align	1
	.global	cardCommand
	.type	cardCommand, @function
cardCommand:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp41, cmd
	st.b	[r13 + (-8)], r0	# cmd, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:131:   readEnd();
	call	readEnd		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:134:   chipSelectLow();
	call	chipSelectLow		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:137:   waitNotBusy(300);
	mov.w	r1, sp	# tmp43,
	mov.w	r0, 300	# tmp44,
	st.w	[r1], r0	#, tmp44
	call	waitNotBusy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:140:   spiSend(cmd | 0x40);
	ld.b	r0, [r13 + (-8)]	# tmp45, cmd
	mov.w	r1, 64	# tmp47,
	or.w	r0, r1	# tmp46, tmp47
	zex.b	r0, r0	# _2, _1
	mov.w	r1, sp	# tmp48,
	st.w	[r1], r0	#, _2
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:143:   for (int8_t s = 24; s >= 0; s -= 8) spiSend(arg >> s);
	mov.b	r0, 24	# tmp49,
	st.b	[r13 + (-1)], r0	# s, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:143:   for (int8_t s = 24; s >= 0; s -= 8) spiSend(arg >> s);
	j	.L21		#
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:143:   for (int8_t s = 24; s >= 0; s -= 8) spiSend(arg >> s);
	ld.b	r0, [r13 + (-1)]	#, s
	sex.b	r1, r0	# _3,
	ld.w	r0, [r13 + (12)]	# tmp50, arg
	shr.w	r0, r1	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:143:   for (int8_t s = 24; s >= 0; s -= 8) spiSend(arg >> s);
	zex.b	r0, r0	# _6, _5
	mov.w	r1, sp	# tmp51,
	st.w	[r1], r0	#, _6
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:143:   for (int8_t s = 24; s >= 0; s -= 8) spiSend(arg >> s);
	ld.b	r0, [r13 + (-1)]	# s.8_7, s
	add.w	r0, -8 #111	# tmp52,
	st.b	[r13 + (-1)], r0	# s, _8
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:143:   for (int8_t s = 24; s >= 0; s -= 8) spiSend(arg >> s);
	ld.b	r0, [r13 + (-1)]	#, s
	sex.b	r1, r0	# tmp53,
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jges	.L22		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:146:   uint8_t crc = 0XFF;
	mov.b	r0, -1	# tmp55,
	st.b	[r13 + (-2)], r0	# crc, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:147:   if (cmd == CMD0) crc = 0X95;  // correct crc for CMD0 with arg 0
	ld.b	r1, [r13 + (-8)]	# tmp56, cmd
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:147:   if (cmd == CMD0) crc = 0X95;  // correct crc for CMD0 with arg 0
	mov.b	r0, -107	# tmp58,
	st.b	[r13 + (-2)], r0	# crc, tmp58
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:148:   if (cmd == CMD8) crc = 0X87;  // correct crc for CMD8 with arg 0X1AA
	ld.b	r1, [r13 + (-8)]	# tmp59, cmd
	mov.w	r0, 8	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jnz	.L24		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:148:   if (cmd == CMD8) crc = 0X87;  // correct crc for CMD8 with arg 0X1AA
	mov.b	r0, -121	# tmp61,
	st.b	[r13 + (-2)], r0	# crc, tmp61
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:149:   spiSend(crc);
	ld.b	r0, [r13 + (-2)]	# _9, crc
	mov.w	r1, sp	# tmp62,
	st.w	[r1], r0	#, _9
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:152:   for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
	xor.w	r0, r0	# tmp63
	st.b	[r13 + (-3)], r0	# i, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:152:   for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
	j	.L25		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:152:   for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
	ld.b	r0, [r13 + (-3)]	# i.9_10, i
	add.w	r0, 1 #111	# tmp64,
	st.b	[r13 + (-3)], r0	# i, tmp65
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:152:   for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:152:   for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
	st.b	[status_], r0	# status_, _11
	ld.b	r0, [status_]	# status_.10_12, status_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:152:   for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
	sex.b	r1, r0	# tmp66, status_.11_13
	xor.w	r0, r0	# tmp67
	cmp.w	r1, r0	# tmp66, tmp67
	jges	.L26		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:152:   for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
	ld.b	r1, [r13 + (-3)]	# tmp68, i
	mov.w	r0, 255	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jnz	.L27		#
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:153:   return status_;
	ld.b	r0, [status_]	# _35, status_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:154: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	cardCommand, .-cardCommand
	.p2align	1
	.global	cardAcmd
	.type	cardAcmd, @function
cardAcmd:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp29, cmd
	st.b	[r13 + (-4)], r0	# cmd, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:157:   cardCommand(CMD55, 0);
	mov.w	r0, sp	# tmp31,
	xor.w	r1, r1	# tmp32
	st.w	[r0 + (4)], r1	#, tmp32
	mov.w	r1, 55	# tmp33,
	st.w	[r0], r1	#, tmp33
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:158:   return cardCommand(cmd, arg);
	ld.b	r1, [r13 + (-4)]	# _1, cmd
	mov.w	r0, sp	# tmp34,
	ld.w	r2, [r13 + (12)]	# tmp35, arg
	st.w	[r0 + (4)], r2	#, tmp35
	st.w	[r0], r1	#, _1
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:159: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	cardAcmd, .-cardAcmd
	.p2align	1
	.global	error
	.type	error, @function
error:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp26, code
	st.b	[r13 + (-4)], r0	# code, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:163:   errorCode_ = code;
	ld.b	r0, [r13 + (-4)]	# tmp28, code
	st.b	[errorCode_], r0	# errorCode_, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:164: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	error, .-error
	.p2align	1
	.global	get_type
	.type	get_type, @function
get_type:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:168:   return type_;
	ld.b	r0, [type_]	# _2, type_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:169: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	get_type, .-get_type
	.p2align	1
	.global	type
	.type	type, @function
type:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp26, value
	st.b	[r13 + (-4)], r0	# value, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:173:   type_ = value;
	ld.b	r0, [r13 + (-4)]	# tmp28, value
	st.b	[type_], r0	# type_, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:174: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	type, .-type
	.p2align	1
	.global	waitStartBlock
	.type	waitStartBlock, @function
waitStartBlock:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:178:   uint32_t t0 = get_millis();
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:178:   uint32_t t0 = get_millis();
	st.w	[r13 + (-4)], r0	# t0, _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:180:   while ((status_ = spiRec()) == 0XFF) {
	j	.L36		#
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:181:     millis = get_millis();
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:181:     millis = get_millis();
	st.w	[r13 + (-8)], r0	# millis, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:182:     if ((millis - t0) > SD_READ_TIMEOUT) {
	ld.w	r1, [r13 + (-8)]	# tmp34, millis
	ld.w	r0, [r13 + (-4)]	# tmp35, t0
	sub.w	r1, r0 #222	# _3, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:182:     if ((millis - t0) > SD_READ_TIMEOUT) {
	mov.w	r0, 100	# tmp36,
	cmp.w	r1, r0	# _3, tmp36
	jse	.L36		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:183:       error(SD_CARD_ERROR_READ_TIMEOUT);
	mov.w	r1, sp	# tmp37,
	mov.w	r0, 15	# tmp38,
	st.w	[r1], r0	#, tmp38
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:184:       goto fail;
	j	.L37		#
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:180:   while ((status_ = spiRec()) == 0XFF) {
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:180:   while ((status_ = spiRec()) == 0XFF) {
	st.b	[status_], r0	# status_, _4
	ld.b	r0, [status_]	# status_.12_5, status_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:180:   while ((status_ = spiRec()) == 0XFF) {
	zex.b	r1, r0	# tmp39, status_.12_5
	mov.w	r0, 255	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L38		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:187:   if (status_ != DATA_START_BLOCK) {
	ld.b	r0, [status_]	# status_.13_6, status_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:187:   if (status_ != DATA_START_BLOCK) {
	zex.b	r1, r0	# tmp41, status_.13_6
	mov.w	r0, 254	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:188:     error(SD_CARD_ERROR_READ);
	mov.w	r1, sp	# tmp43,
	mov.w	r0, 13	# tmp44,
	st.w	[r1], r0	#, tmp44
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:189:     goto fail;
	j	.L37		#
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:191:   return true;
	mov.b	r0, 1	# _7,
	j	.L40		#
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:194:   chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:198:   return false;
	xor.w	r0, r0	# _7
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:199: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	waitStartBlock, .-waitStartBlock
	.global	PORT_DMA_ADDR_1
	.data
	.p2align	2
	.type	PORT_DMA_ADDR_1, @object
	.size	PORT_DMA_ADDR_1, 4
PORT_DMA_ADDR_1:
	.long	-2147482248
	.global	PORT_DMA_COUNT_1
	.p2align	2
	.type	PORT_DMA_COUNT_1, @object
	.size	PORT_DMA_COUNT_1, 4
PORT_DMA_COUNT_1:
	.long	-2147482228
	.global	PORT_DMA_START_RCV_1
	.p2align	2
	.type	PORT_DMA_START_RCV_1, @object
	.size	PORT_DMA_START_RCV_1, 4
PORT_DMA_START_RCV_1:
	.long	-2147482178
	.global	finished_dma_read_1
	.section	.bss
	.p2align	2
	.type	finished_dma_read_1, @object
	.size	finished_dma_read_1, 4
finished_dma_read_1:
	.zero	4
	.global	dma_video
	.data
	.p2align	2
	.type	dma_video, @object
	.size	dma_video, 4
dma_video:
	.long	1024
	.global	dma_buffer
	.section	.bss
	.p2align	2
	.type	dma_buffer, @object
	.size	dma_buffer, 512
dma_buffer:
	.zero	512
	.global	PORT_LED
	.data
	.p2align	2
	.type	PORT_LED, @object
	.size	PORT_LED, 4
PORT_LED:
	.long	-2147482978
	.global	irq_counter
	.section	.bss
	.p2align	2
	.type	irq_counter, @object
	.size	irq_counter, 4
irq_counter:
	.zero	4
	.text
	.p2align	1
	.global	dma_1_irq_triggered
	.type	dma_1_irq_triggered, @function
dma_1_irq_triggered:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:217: 	asm 
# 217 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	push r0
push r1
push r2
push r3
push r4
push r5
push r6
push r7
push r8
push r9
push r10
push r11
push r12
push r13

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:222: 	finished_dma_read_1 = 1;
	mov.w	r0, 1	# tmp26,
	st.w	[finished_dma_read_1], r0	# finished_dma_read_1, tmp26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:225:   asm 
# 225 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop r7
pop r6
pop r5
pop r4
pop r3
pop r2
pop r1
pop r0
mov.w sp,r13
pop r13
iret
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:229: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	dma_1_irq_triggered, .-dma_1_irq_triggered
	.p2align	1
	.global	dma_receive
	.type	dma_receive, @function
dma_receive:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp37, count
	st.s	[r13 + (-8)], r0	# count, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:233:     int counter = 0;
	xor.w	r0, r0	# tmp39
	st.w	[r13 + (-4)], r0	# counter, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:234:     finished_dma_read_1 = 0;
	xor.w	r0, r0	# tmp40
	st.w	[finished_dma_read_1], r0	# finished_dma_read_1, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:235:     *PORT_DMA_ADDR_1 = (unsigned int)dst;
	ld.w	r0, [PORT_DMA_ADDR_1]	# PORT_DMA_ADDR_1.14_1, PORT_DMA_ADDR_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:235:     *PORT_DMA_ADDR_1 = (unsigned int)dst;
	ld.w	r1, [r13 + (8)]	# dst.15_2, dst
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:235:     *PORT_DMA_ADDR_1 = (unsigned int)dst;
	st.w	[r0], r1	# *PORT_DMA_ADDR_1.14_1, dst.15_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:236:     *PORT_DMA_COUNT_1 = count;
	ld.w	r0, [PORT_DMA_COUNT_1]	# PORT_DMA_COUNT_1.16_3, PORT_DMA_COUNT_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:236:     *PORT_DMA_COUNT_1 = count;
	ld.s	r1, [r13 + (-8)]	# _4, count
	st.w	[r0], r1	# *PORT_DMA_COUNT_1.16_3, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:237:     *PORT_DMA_START_RCV_1 = 1;
	ld.w	r0, [PORT_DMA_START_RCV_1]	# PORT_DMA_START_RCV_1.17_5, PORT_DMA_START_RCV_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:237:     *PORT_DMA_START_RCV_1 = 1;
	mov.s	r1, 1	# tmp41,
	st.s	[r0], r1	# *PORT_DMA_START_RCV_1.17_5, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:238:     while (!finished_dma_read_1) {
	j	.L43		#
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:239:       if (counter++ == 10000) {
	ld.w	r0, [r13 + (-4)]	# counter.18_6, counter
	mov.w	r1, r0	# tmp42, counter.18_6
	add.w	r1, 1 #111	# tmp42,
	st.w	[r13 + (-4)], r1	# counter, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:239:       if (counter++ == 10000) {
	mov.w	r1, 10000	# tmp43,
	cmp.w	r0, r1	# counter.18_6, tmp43
	jnz	.L43		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:242:         *PORT_DMA_COUNT_1 = 0;
	ld.w	r0, [PORT_DMA_COUNT_1]	# PORT_DMA_COUNT_1.19_7, PORT_DMA_COUNT_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:242:         *PORT_DMA_COUNT_1 = 0;
	xor.w	r1, r1	# tmp44
	st.w	[r0], r1	# *PORT_DMA_COUNT_1.19_7, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:243:         *PORT_DMA_START_RCV_1 = 0;
	ld.w	r0, [PORT_DMA_START_RCV_1]	# PORT_DMA_START_RCV_1.20_8, PORT_DMA_START_RCV_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:243:         *PORT_DMA_START_RCV_1 = 0;
	xor.w	r1, r1	# tmp45
	st.s	[r0], r1	# *PORT_DMA_START_RCV_1.20_8, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:244:         return false;
	xor.w	r0, r0	# _11
	j	.L44		#
.L43:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:238:     while (!finished_dma_read_1) {
	ld.w	r1, [finished_dma_read_1]	# finished_dma_read_1.21_9, finished_dma_read_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:238:     while (!finished_dma_read_1) {
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# finished_dma_read_1.21_9, tmp46
	jz	.L45		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:247:     return true;
	mov.b	r0, 1	# _11,
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:248: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	dma_receive, .-dma_receive
	.p2align	1
	.global	readData
	.type	readData, @function
readData:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 52 #111	#,
	ld.w	r1, [r13 + (12)]	# tmp56, offset
	ld.w	r0, [r13 + (16)]	# tmp58, count
	st.s	[r13 + (-24)], r1	# offset, tmp57
	st.s	[r13 + (-28)], r0	# count, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:263:   uint32_t rblock = block;
	ld.w	r0, [r13 + (8)]	# tmp60, block
	st.w	[r13 + (-16)], r0	# rblock, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:264:   uint16_t roffset = offset;
	ld.s	r0, [r13 + (-24)]	# tmp61, offset
	st.s	[r13 + (-18)], r0	# roffset, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:265:   int fail_counter = 0;
	xor.w	r0, r0	# tmp62
	st.w	[r13 + (-4)], r0	# fail_counter, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:267:   asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 267 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	irq 0

.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:270:   block = rblock;
	ld.w	r0, [r13 + (-16)]	# tmp63, rblock
	st.w	[r13 + (8)], r0	# block, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:271:   offset_ = roffset;
	ld.s	r0, [r13 + (-18)]	# tmp64, roffset
	st.s	[offset_], r0	# offset_, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:273:   if (count == 0) goto read_end;
	ld.s	r1, [r13 + (-28)]	# tmp65, count
	xor.w	r0, r0	# tmp66
	cmp.w	r1, r0	# tmp65, tmp66
	jz	.L66		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:274:   if ((count + offset) > 512) {
	ld.s	r1, [r13 + (-28)]	# _1, count
	ld.s	r0, [r13 + (-24)]	# _2, offset
	add.w	r1, r0 #222	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:274:   if ((count + offset) > 512) {
	mov.w	r0, 512	# tmp67,
	cmp.w	r1, r0	# _3, tmp67
	jgs	.L67		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:287:   if (!inBlock_ || block != block_ || offset < offset_) {
	ld.b	r0, [inBlock_]	# inBlock_.22_4, inBlock_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:287:   if (!inBlock_ || block != block_ || offset < offset_) {
	zex.b	r1, r0	# tmp68, inBlock_.22_4
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:287:   if (!inBlock_ || block != block_ || offset < offset_) {
	ld.w	r0, [block_]	# block_.23_5, block_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:287:   if (!inBlock_ || block != block_ || offset < offset_) {
	ld.w	r1, [r13 + (8)]	# tmp70, block
	cmp.w	r1, r0	# tmp70, block_.23_5
	jnz	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:287:   if (!inBlock_ || block != block_ || offset < offset_) {
	ld.s	r0, [offset_]	# offset_.24_6, offset_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:287:   if (!inBlock_ || block != block_ || offset < offset_) {
	ld.s	r1, [r13 + (-24)]	# tmp71, offset
	zex.s	r0, r0	# tmp72, offset_.24_6
	cmp.w	r1, r0	# tmp71, tmp72
	jge	.L53		#
.L52:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:291:     block_ = block;
	ld.w	r0, [r13 + (8)]	# tmp73, block
	st.w	[block_], r0	# block_, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:293:     if (get_type()!= SD_CARD_TYPE_SDHC) 
	call	get_type		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:293:     if (get_type()!= SD_CARD_TYPE_SDHC) 
	zex.b	r1, r0	# tmp74, _7
	mov.w	r0, 3	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jz	.L54		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:294:       block <<= 9;
	ld.w	r0, [r13 + (8)]	# tmp77, block
	mov.w	r1, 9	# tmp78,
	shl.w	r0, r1	# tmp76, tmp78
	st.w	[r13 + (8)], r0	# block, tmp76
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:295:     if (cardCommand(CMD17, block)) {
	mov.w	r0, sp	# tmp79,
	ld.w	r1, [r13 + (8)]	# tmp80, block
	st.w	[r0 + (4)], r1	#, tmp80
	mov.w	r1, 17	# tmp81,
	st.w	[r0], r1	#, tmp81
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:295:     if (cardCommand(CMD17, block)) {
	zex.b	r1, r0	# tmp82, _8
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jz	.L55		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:296:       error(SD_CARD_ERROR_CMD17);
	mov.w	r1, sp	# tmp84,
	mov.w	r0, 3	# tmp85,
	st.w	[r1], r0	#, tmp85
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:298:       goto fail;
	j	.L51		#
.L55:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:300:     if (!waitStartBlock()) {
	call	waitStartBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:300:     if (!waitStartBlock()) {
	zex.b	r1, r0	# tmp86, _9
	xor.w	r0, r0	# tmp87
	cmp.w	r1, r0	# tmp86, tmp87
	jz	.L68		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:304:     offset_ = 0;
	xor.w	r0, r0	# tmp88
	st.s	[offset_], r0	# offset_, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:305:     inBlock_ = 1;
	mov.b	r0, 1	# tmp89,
	st.b	[inBlock_], r0	# inBlock_, tmp89
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:308:   int counter = 1;
	mov.w	r0, 1	# tmp90,
	st.w	[r13 + (-8)], r0	# counter, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:311:   if ((offset - offset_) > 0)
	ld.s	r1, [r13 + (-24)]	# _10, offset
	ld.s	r0, [offset_]	# offset_.25_11, offset_
	zex.s	r0, r0	# _12, offset_.25_11
	sub.w	r1, r0 #222	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:311:   if ((offset - offset_) > 0)
	xor.w	r0, r0	# tmp91
	cmp.w	r1, r0	# _13, tmp91
	jses	.L57		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:317:     while(!dma_receive(dst, offset - offset_)) 
	j	.L58		#
.L59:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:319:       delay(2*counter);
	ld.w	r0, [r13 + (-8)]	# tmp92, counter
	add.w	r0, r0 #222	# tmp93, tmp92
	mov.w	r1, sp	# tmp94,
	st.w	[r1], r0	#, _14
	call	delay		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:320:       if (++counter == 3) {
	ld.w	r0, [r13 + (-8)]	# tmp96, counter
	add.w	r0, 1 #111	# tmp95,
	st.w	[r13 + (-8)], r0	# counter, tmp95
	ld.w	r1, [r13 + (-8)]	# tmp97, counter
	mov.w	r0, 3	# tmp98,
	cmp.w	r1, r0	# tmp97, tmp98
	jz	.L69		#
.L58:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:317:     while(!dma_receive(dst, offset - offset_)) 
	ld.s	r1, [offset_]	# offset_.26_15, offset_
	ld.s	r0, [r13 + (-24)]	# tmp99, offset
	sub.w	r0, r1 #222	# tmp100, tmp101
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:317:     while(!dma_receive(dst, offset - offset_)) 
	zex.s	r1, r0	# _17, _16
	mov.w	r0, sp	# tmp102,
	st.w	[r0 + (4)], r1	#, _17
	ld.w	r1, [r13 + (20)]	# tmp103, dst
	st.w	[r0], r1	#, tmp103
	call	dma_receive		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:317:     while(!dma_receive(dst, offset - offset_)) 
	zex.b	r1, r0	# tmp104, _18
	xor.w	r0, r0	# tmp105
	cmp.w	r1, r0	# tmp104, tmp105
	jz	.L59		#
.L57:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:336:   counter = 1;
	mov.w	r0, 1	# tmp106,
	st.w	[r13 + (-8)], r0	# counter, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:337:   while (!dma_receive(dst, count)) 
	j	.L60		#
.L61:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:339:     delay(2*counter);
	ld.w	r0, [r13 + (-8)]	# tmp107, counter
	add.w	r0, r0 #222	# tmp108, tmp107
	mov.w	r1, sp	# tmp109,
	st.w	[r1], r0	#, _19
	call	delay		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:340:     if (++counter == 3) {
	ld.w	r0, [r13 + (-8)]	# tmp111, counter
	add.w	r0, 1 #111	# tmp110,
	st.w	[r13 + (-8)], r0	# counter, tmp110
	ld.w	r1, [r13 + (-8)]	# tmp112, counter
	mov.w	r0, 3	# tmp113,
	cmp.w	r1, r0	# tmp112, tmp113
	jz	.L70		#
.L60:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:337:   while (!dma_receive(dst, count)) 
	ld.s	r1, [r13 + (-28)]	# _20, count
	mov.w	r0, sp	# tmp114,
	st.w	[r0 + (4)], r1	#, _20
	ld.w	r1, [r13 + (20)]	# tmp115, dst
	st.w	[r0], r1	#, tmp115
	call	dma_receive		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:337:   while (!dma_receive(dst, count)) 
	zex.b	r1, r0	# tmp116, _21
	xor.w	r0, r0	# tmp117
	cmp.w	r1, r0	# tmp116, tmp117
	jz	.L61		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:357:   offset_ += count;
	ld.s	r1, [offset_]	# offset_.27_22, offset_
	ld.s	r0, [r13 + (-28)]	# tmp118, count
	add.w	r0, r1 #222	# tmp119, tmp120
	st.s	[offset_], r0	# offset_, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:358:   uint16_t crc = 0;
	xor.w	r0, r0	# tmp121
	st.s	[r13 + (-10)], r0	# crc, tmp121
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:359:   if (!partialBlockRead_ || offset_ >= 512) {
	ld.b	r0, [partialBlockRead_]	# partialBlockRead_.28_24, partialBlockRead_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:359:   if (!partialBlockRead_ || offset_ >= 512) {
	zex.b	r1, r0	# tmp122, partialBlockRead_.28_24
	xor.w	r0, r0	# tmp123
	cmp.w	r1, r0	# tmp122, tmp123
	jz	.L62		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:359:   if (!partialBlockRead_ || offset_ >= 512) {
	ld.s	r0, [offset_]	# offset_.29_25, offset_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:359:   if (!partialBlockRead_ || offset_ >= 512) {
	zex.s	r1, r0	# tmp124, offset_.29_25
	mov.w	r0, 511	# tmp125,
	cmp.w	r1, r0	# tmp124, tmp125
	jse	.L63		#
.L62:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:361:     crc = readEnd();
	call	readEnd		#
	st.s	[r13 + (-10)], r0	# crc,
.L63:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:367:     if((crc != crc16(dst, count)) && (fail_counter == 0))
	ld.s	r1, [r13 + (-28)]	# _26, count
	mov.w	r0, sp	# tmp126,
	st.w	[r0 + (4)], r1	#, _26
	ld.w	r1, [r13 + (20)]	# tmp127, dst
	st.w	[r0], r1	#, tmp127
	call	crc16		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:367:     if((crc != crc16(dst, count)) && (fail_counter == 0))
	ld.s	r1, [r13 + (-10)]	# tmp128, crc
	zex.s	r0, r0	# tmp129, _27
	cmp.w	r1, r0	# tmp128, tmp129
	jz	.L71		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:367:     if((crc != crc16(dst, count)) && (fail_counter == 0))
	ld.w	r1, [r13 + (-4)]	# tmp130, fail_counter
	xor.w	r0, r0	# tmp131
	cmp.w	r1, r0	# tmp130, tmp131
	jz	.L72		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:375: read_end:
	j	.L71		#
.L66:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:273:   if (count == 0) goto read_end;
	nop	
	j	.L49		#
.L71:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:375: read_end:
	nop	
.L49:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:376:   asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 376 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	irq 1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:378:   return true;
	mov.b	r0, 1	# _34,
	j	.L64		#
.L67:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:276:     goto fail;
	nop	
	j	.L51		#
.L68:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:302:       goto fail;
	nop	
	j	.L51		#
.L69:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:322:         goto fail;
	nop	
	j	.L51		#
.L70:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:342:       goto fail;
	nop	
	j	.L51		#
.L72:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:370:       goto fail;
	nop	
.L51:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:382:   chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:384:   sdcard_init();
	call	sdcard_init		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:386:   if (++fail_counter < FAIL_COUNTER_MAX)
	ld.w	r0, [r13 + (-4)]	# tmp133, fail_counter
	add.w	r0, 1 #111	# tmp132,
	st.w	[r13 + (-4)], r0	# fail_counter, tmp132
	ld.w	r1, [r13 + (-4)]	# tmp134, fail_counter
	mov.w	r0, 1	# tmp135,
	cmp.w	r1, r0	# tmp134, tmp135
	jgs	.L65		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:388:     delay(fail_counter*2);
	ld.w	r0, [r13 + (-4)]	# tmp136, fail_counter
	add.w	r0, r0 #222	# tmp137, tmp136
	mov.w	r1, sp	# tmp138,
	st.w	[r1], r0	#, _28
	call	delay		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:389:     chipSelectLow();
	call	chipSelectLow		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:390:     goto spi_read_again;
	j	.L47		#
.L65:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:397:   asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 397 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	irq 1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:398:   return false;
	xor.w	r0, r0	# _34
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:399: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	readData, .-readData
	.p2align	1
	.global	readBlock
	.type	readBlock, @function
readBlock:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:411:   return readData(block, 0, 512, dst);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (12)]	# tmp29, dst
	st.w	[r0 + (12)], r1	#, tmp29
	mov.w	r1, 512	# tmp30,
	st.w	[r0 + (8)], r1	#, tmp30
	xor.w	r1, r1	# tmp31
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, block
	st.w	[r0], r1	#, tmp32
	call	readData		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:412: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	readBlock, .-readBlock
	.p2align	1
	.global	writeData
	.type	writeData, @function
writeData:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp38, token
	st.b	[r13 + (-8)], r0	# token, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:417:   spiSend(token);
	ld.b	r0, [r13 + (-8)]	# _1, token
	mov.w	r1, sp	# tmp40,
	st.w	[r1], r0	#, _1
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:418:   for (uint16_t i = 0; i < 512; i++) {
	xor.w	r0, r0	# tmp41
	st.s	[r13 + (-2)], r0	# i, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:418:   for (uint16_t i = 0; i < 512; i++) {
	j	.L76		#
.L77:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:419:     spiSend(src[i]);
	ld.s	r1, [r13 + (-2)]	# _2, i
	ld.w	r0, [r13 + (12)]	# tmp42, src
	add.w	r0, r1 #222	# _3, _2
	ld.b	r0, [r0]	# _4, *_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:419:     spiSend(src[i]);
	zex.b	r0, r0	# _5, _4
	mov.w	r1, sp	# tmp43,
	st.w	[r1], r0	#, _5
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:418:   for (uint16_t i = 0; i < 512; i++) {
	ld.s	r0, [r13 + (-2)]	# i.30_6, i
	add.w	r0, 1 #111	# tmp44,
	st.s	[r13 + (-2)], r0	# i, tmp45
.L76:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:418:   for (uint16_t i = 0; i < 512; i++) {
	ld.s	r1, [r13 + (-2)]	# tmp46, i
	mov.w	r0, 511	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jse	.L77		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:421:   spiSend(0xff);  // dummy crc
	mov.w	r1, sp	# tmp48,
	mov.w	r0, 255	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:422:   spiSend(0xff);  // dummy crc
	mov.w	r1, sp	# tmp50,
	mov.w	r0, 255	# tmp51,
	st.w	[r1], r0	#, tmp51
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:424:   status_ = spiRec();
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:424:   status_ = spiRec();
	st.b	[status_], r0	# status_, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:425:   if ((status_ & DATA_RES_MASK) != DATA_RES_ACCEPTED) {
	ld.b	r0, [status_]	# status_.31_8, status_
	zex.b	r1, r0	# _9, status_.31_8
	mov.w	r0, 31	# tmp52,
	and.w	r1, r0	# _10, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:425:   if ((status_ & DATA_RES_MASK) != DATA_RES_ACCEPTED) {
	mov.w	r0, 5	# tmp53,
	cmp.w	r1, r0	# _10, tmp53
	jz	.L78		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:426:     error(SD_CARD_ERROR_WRITE);
	mov.w	r1, sp	# tmp54,
	mov.w	r0, 17	# tmp55,
	st.w	[r1], r0	#, tmp55
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:427:     chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:428:     return false;
	xor.w	r0, r0	# _12
	j	.L79		#
.L78:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:430:   return true;
	mov.b	r0, 1	# _12,
.L79:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:431: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	writeData, .-writeData
	.p2align	1
	.global	writeBlock
	.type	writeBlock, @function
writeBlock:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp34, blocking
	st.b	[r13 + (-4)], r0	# blocking, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:444:   asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 444 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	irq 0

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:451:   if (blockNumber == 0) {
	ld.w	r1, [r13 + (8)]	# tmp36, blockNumber
	xor.w	r0, r0	# tmp37
	cmp.w	r1, r0	# tmp36, tmp37
	jnz	.L81		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:452:     error(SD_CARD_ERROR_WRITE_BLOCK_ZERO);
	mov.w	r1, sp	# tmp38,
	mov.w	r0, 18	# tmp39,
	st.w	[r1], r0	#, tmp39
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:453:     goto fail;
	j	.L82		#
.L81:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:457:   if (get_type() != SD_CARD_TYPE_SDHC) {
	call	get_type		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:457:   if (get_type() != SD_CARD_TYPE_SDHC) {
	zex.b	r1, r0	# tmp40, _1
	mov.w	r0, 3	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L83		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:458:     blockNumber <<= 9;
	ld.w	r0, [r13 + (8)]	# tmp43, blockNumber
	mov.w	r1, 9	# tmp44,
	shl.w	r0, r1	# tmp42, tmp44
	st.w	[r13 + (8)], r0	# blockNumber, tmp42
.L83:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:460:   if (cardCommand(CMD24, blockNumber)) {
	mov.w	r0, sp	# tmp45,
	ld.w	r1, [r13 + (8)]	# tmp46, blockNumber
	st.w	[r0 + (4)], r1	#, tmp46
	mov.w	r1, 24	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:460:   if (cardCommand(CMD24, blockNumber)) {
	zex.b	r1, r0	# tmp48, _2
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L84		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:461:     error(SD_CARD_ERROR_CMD24);
	mov.w	r1, sp	# tmp50,
	mov.w	r0, 4	# tmp51,
	st.w	[r1], r0	#, tmp51
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:462:     goto fail;
	j	.L82		#
.L84:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:464:   if (!writeData(DATA_START_BLOCK, src)) {
	mov.w	r0, sp	# tmp52,
	ld.w	r1, [r13 + (12)]	# tmp53, src
	st.w	[r0 + (4)], r1	#, tmp53
	mov.w	r1, 254	# tmp54,
	st.w	[r0], r1	#, tmp54
	call	writeData		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:464:   if (!writeData(DATA_START_BLOCK, src)) {
	zex.b	r1, r0	# tmp55, _3
	xor.w	r0, r0	# tmp56
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L90		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:467:   if (blocking) {
	ld.b	r1, [r13 + (-4)]	# tmp57, blocking
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L86		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:469:     if (!waitNotBusy(SD_WRITE_TIMEOUT)) {
	mov.w	r1, sp	# tmp59,
	mov.w	r0, 600	# tmp60,
	st.w	[r1], r0	#, tmp60
	call	waitNotBusy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:469:     if (!waitNotBusy(SD_WRITE_TIMEOUT)) {
	zex.b	r1, r0	# tmp61, _4
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jnz	.L87		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:470:       error(SD_CARD_ERROR_WRITE_TIMEOUT);
	mov.w	r1, sp	# tmp63,
	mov.w	r0, 21	# tmp64,
	st.w	[r1], r0	#, tmp64
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:471:       goto fail;
	j	.L82		#
.L87:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:474:     if (cardCommand(CMD13, 0) || spiRec()) {
	mov.w	r0, sp	# tmp65,
	xor.w	r1, r1	# tmp66
	st.w	[r0 + (4)], r1	#, tmp66
	mov.w	r1, 13	# tmp67,
	st.w	[r0], r1	#, tmp67
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:474:     if (cardCommand(CMD13, 0) || spiRec()) {
	zex.b	r1, r0	# tmp68, _5
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jnz	.L88		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:474:     if (cardCommand(CMD13, 0) || spiRec()) {
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:474:     if (cardCommand(CMD13, 0) || spiRec()) {
	zex.b	r1, r0	# tmp70, _6
	xor.w	r0, r0	# tmp71
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L86		#
.L88:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:475:       error(SD_CARD_ERROR_WRITE_PROGRAMMING);
	mov.w	r1, sp	# tmp72,
	mov.w	r0, 20	# tmp73,
	st.w	[r1], r0	#, tmp73
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:476:       goto fail;
	j	.L82		#
.L86:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:479:   chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:480:   asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 480 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	irq 1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:481:   return true;
	mov.b	r0, 1	# _8,
	j	.L89		#
.L90:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:465:     goto fail;
	nop	
.L82:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:484:   chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:485:   asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 485 "/mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c" 1
	irq 1

# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:486:   return false;
	xor.w	r0, r0	# _8
.L89:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:487: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	writeBlock, .-writeBlock
	.p2align	1
	.global	DIR_IS_LONG_NAME
	.type	DIR_IS_LONG_NAME, @function
DIR_IS_LONG_NAME:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:495:   return (dir->attributes & DIR_ATT_LONG_NAME_MASK) == DIR_ATT_LONG_NAME;
	ld.w	r0, [r13 + (8)]	# tmp32, dir
	ld.b	r0, [r0 + (11)]	# _1, dir_6(D)->attributes
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:495:   return (dir->attributes & DIR_ATT_LONG_NAME_MASK) == DIR_ATT_LONG_NAME;
	zex.b	r1, r0	# _2, _1
	mov.w	r0, 63	# tmp33,
	mov.w	r2, r1	# _3, _2
	and.w	r2, r0	# _3, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:495:   return (dir->attributes & DIR_ATT_LONG_NAME_MASK) == DIR_ATT_LONG_NAME;
	mov.b	r0, 1	# _4,
	mov.w	r1, 15	# tmp36,
	cmp.w	r2, r1	# _3, tmp36
	jz	.L92		#
	xor.w	r0, r0	# _4
.L92:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:496: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	DIR_IS_LONG_NAME, .-DIR_IS_LONG_NAME
	.global	DIR_ATT_FILE_TYPE_MASK
	.section	.rodata
	.type	DIR_ATT_FILE_TYPE_MASK, @object
	.size	DIR_ATT_FILE_TYPE_MASK, 1
DIR_ATT_FILE_TYPE_MASK:
	.byte	24
	.text
	.p2align	1
	.global	DIR_IS_FILE
	.type	DIR_IS_FILE, @function
DIR_IS_FILE:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:501:   return (dir->attributes & DIR_ATT_FILE_TYPE_MASK) == 0;
	ld.w	r0, [r13 + (8)]	# tmp32, dir
	ld.b	r0, [r0 + (11)]	# _1, dir_6(D)->attributes
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:501:   return (dir->attributes & DIR_ATT_FILE_TYPE_MASK) == 0;
	mov.b	r1, 24	# DIR_ATT_FILE_TYPE_MASK.32_2,
	and.w	r0, r1	# tmp33, DIR_ATT_FILE_TYPE_MASK.32_2
	zex.b	r0, r0	# tmp34, _3
	add.w	r0, -1 #111	# tmp35,
	mov.w	r1, 31	# tmp37,
	shr.w	r0, r1	# tmp36, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:502: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	DIR_IS_FILE, .-DIR_IS_FILE
	.p2align	1
	.global	DIR_IS_SUBDIR
	.type	DIR_IS_SUBDIR, @function
DIR_IS_SUBDIR:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:505:   return (dir->attributes & DIR_ATT_FILE_TYPE_MASK) == DIR_ATT_DIRECTORY;
	ld.w	r0, [r13 + (8)]	# tmp32, dir
	ld.b	r0, [r0 + (11)]	# _1, dir_6(D)->attributes
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:505:   return (dir->attributes & DIR_ATT_FILE_TYPE_MASK) == DIR_ATT_DIRECTORY;
	mov.b	r1, 24	# DIR_ATT_FILE_TYPE_MASK.33_2,
	and.w	r0, r1	# tmp33, DIR_ATT_FILE_TYPE_MASK.33_2
	mov.w	r1, 16	# tmp35,
	xor.w	r0, r1	# tmp34, tmp35
	zex.b	r0, r0	# tmp36, tmp34
	add.w	r0, -1 #111	# tmp37,
	mov.w	r1, 31	# tmp39,
	shr.w	r0, r1	# tmp38, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:506: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	DIR_IS_SUBDIR, .-DIR_IS_SUBDIR
	.p2align	1
	.global	DIR_IS_FILE_OR_SUBDIR
	.type	DIR_IS_FILE_OR_SUBDIR, @function
DIR_IS_FILE_OR_SUBDIR:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:509:   return (dir->attributes & DIR_ATT_VOLUME_ID) == 0;
	ld.w	r0, [r13 + (8)]	# tmp32, dir
	ld.b	r0, [r0 + (11)]	# _1, dir_6(D)->attributes
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:509:   return (dir->attributes & DIR_ATT_VOLUME_ID) == 0;
	zex.b	r1, r0	# _2, _1
	mov.w	r0, 8	# tmp33,
	mov.w	r2, r1	# _3, _2
	and.w	r2, r0	# _3, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:509:   return (dir->attributes & DIR_ATT_VOLUME_ID) == 0;
	mov.b	r0, 1	# _4,
	xor.w	r1, r1	# tmp34
	cmp.w	r2, r1	# _3, tmp34
	jz	.L99		#
	xor.w	r0, r0	# _4
.L99:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:510: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	DIR_IS_FILE_OR_SUBDIR, .-DIR_IS_FILE_OR_SUBDIR
	.global	cacheBuffer_
	.section	.bss
	.p2align	2
	.type	cacheBuffer_, @object
	.size	cacheBuffer_, 520
cacheBuffer_:
	.zero	520
	.global	bpb
	.p2align	2
	.type	bpb, @object
	.size	bpb, 56
bpb:
	.zero	56
	.global	allocSearchStart_
	.p2align	2
	.type	allocSearchStart_, @object
	.size	allocSearchStart_, 4
allocSearchStart_:
	.zero	4
	.global	blocksPerCluster_
	.type	blocksPerCluster_, @object
	.size	blocksPerCluster_, 1
blocksPerCluster_:
	.zero	1
	.global	blocksPerFat_
	.p2align	2
	.type	blocksPerFat_, @object
	.size	blocksPerFat_, 4
blocksPerFat_:
	.zero	4
	.global	clusterCount_
	.p2align	2
	.type	clusterCount_, @object
	.size	clusterCount_, 4
clusterCount_:
	.zero	4
	.global	clusterSizeShift_
	.type	clusterSizeShift_, @object
	.size	clusterSizeShift_, 1
clusterSizeShift_:
	.zero	1
	.global	dataStartBlock_
	.p2align	2
	.type	dataStartBlock_, @object
	.size	dataStartBlock_, 4
dataStartBlock_:
	.zero	4
	.global	fatCount_
	.type	fatCount_, @object
	.size	fatCount_, 1
fatCount_:
	.zero	1
	.global	fatStartBlock_
	.p2align	2
	.type	fatStartBlock_, @object
	.size	fatStartBlock_, 4
fatStartBlock_:
	.zero	4
	.global	fatType_
	.type	fatType_, @object
	.size	fatType_, 1
fatType_:
	.zero	1
	.global	rootDirEntryCount_
	.p2align	1
	.type	rootDirEntryCount_, @object
	.size	rootDirEntryCount_, 2
rootDirEntryCount_:
	.zero	2
	.global	rootDirStart_
	.p2align	2
	.type	rootDirStart_, @object
	.size	rootDirStart_, 4
rootDirStart_:
	.zero	4
	.global	clusterSize_
	.p2align	2
	.type	clusterSize_, @object
	.size	clusterSize_, 4
clusterSize_:
	.zero	4
	.text
	.p2align	1
	.global	reverse32
	.type	reverse32, @function
reverse32:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:531:     uint32_t aux = 0;
	xor.w	r0, r0	# tmp33
	st.w	[r13 + (-4)], r0	# aux, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:534:     for(i = 0; i < 32; i+=8)
	xor.w	r0, r0	# tmp34
	st.w	[r13 + (-8)], r0	# i, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:534:     for(i = 0; i < 32; i+=8)
	j	.L102		#
.L103:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:536:         byte = (bytes >> i) & 0xff;
	ld.w	r0, [r13 + (8)]	# tmp35, bytes
	ld.w	r1, [r13 + (-8)]	# tmp36, i
	shr.w	r0, r1	# _1, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:536:         byte = (bytes >> i) & 0xff;
	st.b	[r13 + (-9)], r0	# byte, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:537:         aux |= byte << (32 - 8 - i);
	ld.b	r0, [r13 + (-9)]	# _2, byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:537:         aux |= byte << (32 - 8 - i);
	mov.w	r1, 24	# tmp38,
	ld.w	r2, [r13 + (-8)]	# tmp39, i
	sub.w	r1, r2 #222	# _3, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:537:         aux |= byte << (32 - 8 - i);
	shl.w	r0, r1	# _4, _3
	mov.w	r1, r0	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:537:         aux |= byte << (32 - 8 - i);
	ld.w	r0, [r13 + (-4)]	# tmp41, aux
	or.w	r0, r1	# tmp40, _5
	st.w	[r13 + (-4)], r0	# aux, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:534:     for(i = 0; i < 32; i+=8)
	ld.w	r0, [r13 + (-8)]	# tmp43, i
	add.w	r0, 8 #111	# tmp42,
	st.w	[r13 + (-8)], r0	# i, tmp42
.L102:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:534:     for(i = 0; i < 32; i+=8)
	ld.w	r1, [r13 + (-8)]	# tmp44, i
	mov.w	r0, 31	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jses	.L103		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:539:     return aux;
	ld.w	r0, [r13 + (-4)]	# _10, aux
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:540: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	reverse32, .-reverse32
	.p2align	1
	.global	reverse16
	.type	reverse16, @function
reverse16:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 16 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp36, bytes
	st.s	[r13 + (-16)], r0	# bytes, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:544:     uint16_t aux = 0;
	xor.w	r0, r0	# tmp38
	st.s	[r13 + (-2)], r0	# aux, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:547:     for(i = 0; i < 16; i+=8)
	xor.w	r0, r0	# tmp39
	st.w	[r13 + (-8)], r0	# i, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:547:     for(i = 0; i < 16; i+=8)
	j	.L106		#
.L107:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:549:         byte = (bytes >> i) & 0xff;
	ld.s	r0, [r13 + (-16)]	# _1, bytes
	ld.w	r1, [r13 + (-8)]	# tmp40, i
	shr.w	r0, r1	# _2, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:549:         byte = (bytes >> i) & 0xff;
	st.b	[r13 + (-9)], r0	# byte, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:550:         aux |= byte << (16 - 8 - i);
	ld.b	r0, [r13 + (-9)]	# _3, byte
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:550:         aux |= byte << (16 - 8 - i);
	mov.w	r1, 8	# tmp42,
	ld.w	r2, [r13 + (-8)]	# tmp43, i
	sub.w	r1, r2 #222	# _4, tmp43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:550:         aux |= byte << (16 - 8 - i);
	shl.w	r0, r1	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:550:         aux |= byte << (16 - 8 - i);
	ld.s	r1, [r13 + (-2)]	# aux.34_7, aux
	or.w	r0, r1	# tmp44, aux.34_7
	st.s	[r13 + (-2)], r0	# aux, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:547:     for(i = 0; i < 16; i+=8)
	ld.w	r0, [r13 + (-8)]	# tmp46, i
	add.w	r0, 8 #111	# tmp45,
	st.w	[r13 + (-8)], r0	# i, tmp45
.L106:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:547:     for(i = 0; i < 16; i+=8)
	ld.w	r1, [r13 + (-8)]	# tmp47, i
	mov.w	r0, 15	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jses	.L107		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:552:     return aux;
	ld.s	r0, [r13 + (-2)]	# _13, aux
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:553: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	reverse16, .-reverse16
	.global	g_block_buf
	.section	.bss
	.p2align	2
	.type	g_block_buf, @object
	.size	g_block_buf, 512
g_block_buf:
	.zero	512
	.text
	.p2align	1
	.global	getFile
	.type	getFile, @function
getFile:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 60 #111	#,
	ld.w	r0, [r13 + (20)]	# tmp114, length
	st.b	[r13 + (-36)], r0	# length, tmp115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:569:   filename[11] = 0;
	ld.w	r0, [r13 + (16)]	# tmp116, filename
	add.w	r0, 11 #111	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:569:   filename[11] = 0;
	xor.w	r1, r1	# tmp117
	st.b	[r0], r1	# *_1, tmp117
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:575:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	xor.w	r0, r0	# tmp118
	st.w	[r13 + (-4)], r0	# i, tmp118
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:575:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	j	.L110		#
.L117:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:577:     b = readBlock(rootDirStart_ + i, buf);
	ld.w	r1, [rootDirStart_]	# rootDirStart_.35_2, rootDirStart_
	ld.w	r0, [r13 + (-4)]	# i.36_3, i
	add.w	r1, r0 #222	# _4, i.36_3
	mov.w	r0, sp	# tmp119,
	ld.w	r2, [r13 + (12)]	# tmp120, buf
	st.w	[r0 + (4)], r2	#, tmp120
	st.w	[r0], r1	#, _4
	call	readBlock		#
	st.b	[r13 + (-9)], r0	# b,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:578:     for(j = 0; j < 16; j++)
	xor.w	r0, r0	# tmp121
	st.w	[r13 + (-8)], r0	# j, tmp121
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:578:     for(j = 0; j < 16; j++)
	j	.L111		#
.L116:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp122, j
	mov.w	r1, 5	# tmp123,
	shl.w	r0, r1	# _5, tmp123
	mov.w	r1, r0	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (12)]	# tmp124, buf
	add.w	r0, r1 #222	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _8, *_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp125, _8
	xor.w	r0, r0	# tmp126
	cmp.w	r1, r0	# tmp125, tmp126
	jz	.L119		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp127, j
	mov.w	r1, 5	# tmp128,
	shl.w	r0, r1	# _9, tmp128
	mov.w	r1, r0	# _10, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (12)]	# tmp129, buf
	add.w	r0, r1 #222	# _11, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _12, *_11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp130, _12
	mov.w	r0, 46	# tmp131,
	cmp.w	r1, r0	# tmp130, tmp131
	jz	.L119		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp132, j
	mov.w	r1, 5	# tmp133,
	shl.w	r0, r1	# _13, tmp133
	mov.w	r1, r0	# _14, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (12)]	# tmp134, buf
	add.w	r0, r1 #222	# _15, _14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _16, *_15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp135, _16
	mov.w	r0, 229	# tmp136,
	cmp.w	r1, r0	# tmp135, tmp136
	jz	.L119		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp137, j
	mov.w	r1, 5	# tmp138,
	shl.w	r0, r1	# _17, tmp138
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	mov.w	r1, r0	# _19, _18
	add.w	r1, 11 #111	# _19,
	ld.w	r0, [r13 + (12)]	# tmp139, buf
	add.w	r0, r1 #222	# _20, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _21, *_20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:580:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp140, _21
	mov.w	r0, 15	# tmp141,
	cmp.w	r1, r0	# tmp140, tmp141
	jz	.L119		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:585:       strncpy(filename_upper, (char*)(buf+j*32), 11);
	ld.w	r0, [r13 + (-8)]	# tmp142, j
	mov.w	r1, 5	# tmp143,
	shl.w	r0, r1	# _22, tmp143
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:585:       strncpy(filename_upper, (char*)(buf+j*32), 11);
	ld.w	r1, [r13 + (12)]	# tmp144, buf
	add.w	r1, r0 #222	# _24, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:585:       strncpy(filename_upper, (char*)(buf+j*32), 11);
	mov.w	r0, sp	# tmp145,
	mov.w	r2, 11	# tmp146,
	st.w	[r0 + (8)], r2	#, tmp146
	st.w	[r0 + (4)], r1	#, _24
	mov.w	r1, r13	# tmp147,
	add.w	r1, -30 #111	# tmp147,
	st.w	[r0], r1	#, tmp147
	call	strncpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:586:       filename_upper[11] = '\0';
	xor.w	r0, r0	# tmp148
	st.b	[r13 + (-19)], r0	# filename_upper, tmp148
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:592:       if(strcmp(filename, filename_upper) == 0)
	mov.w	r0, sp	# tmp149,
	mov.w	r1, r13	# tmp150,
	add.w	r1, -30 #111	# tmp150,
	st.w	[r0 + (4)], r1	#, tmp150
	ld.w	r1, [r13 + (16)]	# tmp151, filename
	st.w	[r0], r1	#, tmp151
	call	strcmp		#
	mov.w	r1, r0	# _25,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:592:       if(strcmp(filename, filename_upper) == 0)
	xor.w	r0, r0	# tmp152
	cmp.w	r1, r0	# _25, tmp152
	jnz	.L114		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:598:         file_size = *(buf + j*32 + 0x1c);
	ld.w	r0, [r13 + (-8)]	# tmp153, j
	mov.w	r1, 5	# tmp154,
	shl.w	r0, r1	# _26, tmp154
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:598:         file_size = *(buf + j*32 + 0x1c);
	mov.w	r1, r0	# _28, _27
	add.w	r1, 28 #111	# _28,
	ld.w	r0, [r13 + (12)]	# tmp155, buf
	add.w	r0, r1 #222	# _29, _28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:598:         file_size = *(buf + j*32 + 0x1c);
	ld.b	r0, [r0]	# _30, *_29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:598:         file_size = *(buf + j*32 + 0x1c);
	zex.b	r0, r0	# tmp156, _30
	st.w	[r13 + (-16)], r0	# file_size, tmp156
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:599:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	ld.w	r0, [r13 + (-8)]	# tmp157, j
	mov.w	r1, 5	# tmp158,
	shl.w	r0, r1	# _31, tmp158
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:599:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	mov.w	r1, r0	# _33, _32
	add.w	r1, 29 #111	# _33,
	ld.w	r0, [r13 + (12)]	# tmp159, buf
	add.w	r0, r1 #222	# _34, _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:599:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	ld.b	r0, [r0]	# _35, *_34
	zex.b	r0, r0	# _36, _35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:599:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	mov.w	r1, 8	# tmp160,
	shl.w	r0, r1	# _37, tmp160
	mov.w	r1, r0	# _38, _37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:599:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	ld.w	r0, [r13 + (-16)]	# tmp162, file_size
	add.w	r0, r1 #222	# tmp161, _38
	st.w	[r13 + (-16)], r0	# file_size, tmp161
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:600:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	ld.w	r0, [r13 + (-8)]	# tmp163, j
	mov.w	r1, 5	# tmp164,
	shl.w	r0, r1	# _39, tmp164
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:600:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	mov.w	r1, r0	# _41, _40
	add.w	r1, 30 #111	# _41,
	ld.w	r0, [r13 + (12)]	# tmp165, buf
	add.w	r0, r1 #222	# _42, _41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:600:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	ld.b	r0, [r0]	# _43, *_42
	zex.b	r0, r0	# _44, _43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:600:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	mov.w	r1, 16	# tmp166,
	shl.w	r0, r1	# _45, tmp166
	mov.w	r1, r0	# _46, _45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:600:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	ld.w	r0, [r13 + (-16)]	# tmp168, file_size
	add.w	r0, r1 #222	# tmp167, _46
	st.w	[r13 + (-16)], r0	# file_size, tmp167
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:601:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	ld.w	r0, [r13 + (-8)]	# tmp169, j
	mov.w	r1, 5	# tmp170,
	shl.w	r0, r1	# _47, tmp170
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:601:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	mov.w	r1, r0	# _49, _48
	add.w	r1, 31 #111	# _49,
	ld.w	r0, [r13 + (12)]	# tmp171, buf
	add.w	r0, r1 #222	# _50, _49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:601:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	ld.b	r0, [r0]	# _51, *_50
	zex.b	r0, r0	# _52, _51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:601:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	mov.w	r1, 24	# tmp172,
	shl.w	r0, r1	# _53, tmp172
	mov.w	r1, r0	# _54, _53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:601:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	ld.w	r0, [r13 + (-16)]	# tmp174, file_size
	add.w	r0, r1 #222	# tmp173, _54
	st.w	[r13 + (-16)], r0	# file_size, tmp173
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:602:         cluster = *(buf + j*32 + 0x1a);
	ld.w	r0, [r13 + (-8)]	# tmp175, j
	mov.w	r1, 5	# tmp176,
	shl.w	r0, r1	# _55, tmp176
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:602:         cluster = *(buf + j*32 + 0x1a);
	mov.w	r1, r0	# _57, _56
	add.w	r1, 26 #111	# _57,
	ld.w	r0, [r13 + (12)]	# tmp177, buf
	add.w	r0, r1 #222	# _58, _57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:602:         cluster = *(buf + j*32 + 0x1a);
	ld.b	r0, [r0]	# _59, *_58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:602:         cluster = *(buf + j*32 + 0x1a);
	zex.b	r0, r0	# tmp178, _59
	st.s	[r13 + (-18)], r0	# cluster, tmp179
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:603:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	ld.w	r0, [r13 + (-8)]	# tmp180, j
	mov.w	r1, 5	# tmp181,
	shl.w	r0, r1	# _60, tmp181
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:603:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	mov.w	r1, r0	# _62, _61
	add.w	r1, 27 #111	# _62,
	ld.w	r0, [r13 + (12)]	# tmp182, buf
	add.w	r0, r1 #222	# _63, _62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:603:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	ld.b	r0, [r0]	# _64, *_63
	zex.b	r0, r0	# tmp183, _64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:603:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	mov.w	r1, 8	# tmp185,
	shl.w	r0, r1	# tmp184, tmp185
	mov.w	r1, r0	# _66, tmp184
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:603:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	ld.s	r0, [r13 + (-18)]	# tmp186, cluster
	add.w	r0, r1 #222	# tmp187, tmp188
	st.s	[r13 + (-18)], r0	# cluster, tmp189
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:608:         memmove(de->filename, filename, length);
	ld.w	r1, [r13 + (8)]	# _67, de
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:608:         memmove(de->filename, filename, length);
	ld.b	r2, [r13 + (-36)]	# _68, length
	mov.w	r0, sp	# tmp190,
	st.w	[r0 + (8)], r2	#, _68
	ld.w	r2, [r13 + (16)]	# tmp191, filename
	st.w	[r0 + (4)], r2	#, tmp191
	st.w	[r0], r1	#, _67
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:609:         de->attributes = *(buf + j*32 + 0x0b);
	ld.w	r0, [r13 + (-8)]	# tmp192, j
	mov.w	r1, 5	# tmp193,
	shl.w	r0, r1	# _69, tmp193
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:609:         de->attributes = *(buf + j*32 + 0x0b);
	mov.w	r1, r0	# _71, _70
	add.w	r1, 11 #111	# _71,
	ld.w	r0, [r13 + (12)]	# tmp194, buf
	add.w	r0, r1 #222	# _72, _71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:609:         de->attributes = *(buf + j*32 + 0x0b);
	ld.b	r1, [r0]	# _73, *_72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:609:         de->attributes = *(buf + j*32 + 0x0b);
	ld.w	r0, [r13 + (8)]	# tmp195, de
	st.b	[r0 + (12)], r1	# de_114(D)->attributes, _73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:610:         memmove(de->unused_attr, buf + j*32 + 0x0c, 14);
	ld.w	r0, [r13 + (8)]	# tmp196, de
	mov.w	r1, r0	# _74, tmp196
	add.w	r1, 13 #111	# _74,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:610:         memmove(de->unused_attr, buf + j*32 + 0x0c, 14);
	ld.w	r0, [r13 + (-8)]	# tmp197, j
	mov.w	r2, 5	# tmp198,
	shl.w	r0, r2	# _75, tmp198
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:610:         memmove(de->unused_attr, buf + j*32 + 0x0c, 14);
	add.w	r0, 12 #111	# _77,
	ld.w	r2, [r13 + (12)]	# tmp199, buf
	add.w	r2, r0 #222	# _78, _77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:610:         memmove(de->unused_attr, buf + j*32 + 0x0c, 14);
	mov.w	r0, sp	# tmp200,
	mov.w	r3, 14	# tmp201,
	st.w	[r0 + (8)], r3	#, tmp201
	st.w	[r0 + (4)], r2	#, _78
	st.w	[r0], r1	#, _74
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:611:         de->filesize = file_size;
	ld.w	r0, [r13 + (8)]	# tmp202, de
	ld.w	r1, [r13 + (-16)]	# tmp203, file_size
	st.w	[r0 + (32)], r1	# de_114(D)->filesize, tmp203
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:612:         de->block = rootDirStart_ + i;
	ld.w	r1, [rootDirStart_]	# rootDirStart_.37_79, rootDirStart_
	ld.w	r0, [r13 + (-4)]	# i.38_80, i
	add.w	r1, r0 #222	# _81, i.38_80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:612:         de->block = rootDirStart_ + i;
	ld.w	r0, [r13 + (8)]	# tmp204, de
	st.w	[r0 + (36)], r1	# de_114(D)->block, _81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:613:         de->slot = j;
	ld.w	r1, [r13 + (-8)]	# j.39_82, j
	ld.w	r0, [r13 + (8)]	# tmp205, de
	st.w	[r0 + (40)], r1	# de_114(D)->slot, j.39_82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:614:         de->first_cluster = cluster;
	ld.w	r0, [r13 + (8)]	# tmp206, de
	ld.s	r1, [r13 + (-18)]	# tmp207, cluster
	st.s	[r0 + (28)], r1	# de_114(D)->first_cluster, tmp207
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:619:         return 1;                        
	mov.b	r0, 1	# _89,
	j	.L118		#
.L119:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:582:         continue; // free, or deleted file/folder
	nop	
.L114:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:578:     for(j = 0; j < 16; j++)
	ld.w	r0, [r13 + (-8)]	# tmp209, j
	add.w	r0, 1 #111	# tmp208,
	st.w	[r13 + (-8)], r0	# j, tmp208
.L111:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:578:     for(j = 0; j < 16; j++)
	ld.w	r1, [r13 + (-8)]	# tmp210, j
	mov.w	r0, 15	# tmp211,
	cmp.w	r1, r0	# tmp210, tmp211
	jses	.L116		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:575:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.w	r0, [r13 + (-4)]	# tmp213, i
	add.w	r0, 1 #111	# tmp212,
	st.w	[r13 + (-4)], r0	# i, tmp212
.L110:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:575:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.w	r1, [dataStartBlock_]	# dataStartBlock_.40_83, dataStartBlock_
	ld.w	r0, [rootDirStart_]	# rootDirStart_.41_84, rootDirStart_
	sub.w	r1, r0 #222	# _85, rootDirStart_.41_84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:575:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.w	r0, [r13 + (-4)]	# i.42_86, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:575:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	cmp.w	r1, r0	# _85, i.42_86
	jg	.L117		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:624:   return 0;
	xor.w	r0, r0	# _89
.L118:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:625: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getFile, .-getFile
	.p2align	1
	.global	make83Name
	.type	make83Name, @function
make83Name:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:629:   uint8_t n = 7;  // max index for part before dot
	mov.b	r0, 7	# tmp41,
	st.b	[r13 + (-1)], r0	# n, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:630:   uint8_t i = 0;
	xor.w	r0, r0	# tmp42
	st.b	[r13 + (-2)], r0	# i, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:632:   while (i < 11) name[i++] = ' ';
	j	.L121		#
.L122:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:632:   while (i < 11) name[i++] = ' ';
	ld.b	r0, [r13 + (-2)]	# i.43_1, i
	mov.w	r1, r0	# tmp43,
	add.w	r1, 1 #111	# tmp43,
	st.b	[r13 + (-2)], r1	# i, tmp44
	zex.b	r1, r0	# _2, i.43_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:632:   while (i < 11) name[i++] = ' ';
	ld.w	r0, [r13 + (12)]	# tmp45, name
	add.w	r0, r1 #222	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:632:   while (i < 11) name[i++] = ' ';
	mov.b	r1, 32	# tmp46,
	st.b	[r0], r1	# *_3, tmp46
.L121:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:632:   while (i < 11) name[i++] = ' ';
	ld.b	r1, [r13 + (-2)]	# tmp47, i
	mov.w	r0, 10	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jse	.L122		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:633:   i = 0;
	xor.w	r0, r0	# tmp49
	st.b	[r13 + (-2)], r0	# i, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:634:   while ((c = *str++) != '\0') {
	j	.L123		#
.L134:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:635:     if (c == '.') {
	ld.b	r1, [r13 + (-9)]	# tmp50, c
	mov.w	r0, 46	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L124		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:636:       if (n == 10) return false;  // only one dot allowed
	ld.b	r1, [r13 + (-1)]	# tmp52, n
	mov.w	r0, 10	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L125		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:636:       if (n == 10) return false;  // only one dot allowed
	xor.w	r0, r0	# _18
	j	.L126		#
.L125:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:637:       n = 10;  // max index for full 8.3 name
	mov.b	r0, 10	# tmp54,
	st.b	[r13 + (-1)], r0	# n, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:638:       i = 8;   // place for extension
	mov.b	r0, 8	# tmp55,
	st.b	[r13 + (-2)], r0	# i, tmp55
	j	.L123		#
.L124:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:643:       const uint8_t valid[] = "|<>^+=?/[];,*\"\\";
	mov.s	r0, 31804	# tmp56,
	st.s	[r13 + (-26)], r0	# valid, tmp56
	mov.s	r0, 15966	# tmp57,
	st.s	[r13 + (-24)], r0	# valid, tmp57
	mov.s	r0, 11069	# tmp58,
	st.s	[r13 + (-22)], r0	# valid, tmp58
	mov.s	r0, 16175	# tmp59,
	st.s	[r13 + (-20)], r0	# valid, tmp59
	mov.s	r0, 23389	# tmp60,
	st.s	[r13 + (-18)], r0	# valid, tmp60
	mov.s	r0, 15148	# tmp61,
	st.s	[r13 + (-16)], r0	# valid, tmp61
	mov.s	r0, 10786	# tmp62,
	st.s	[r13 + (-14)], r0	# valid, tmp62
	mov.s	r0, 23552	# tmp63,
	st.s	[r13 + (-12)], r0	# valid, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:644:       const uint8_t *p = valid;
	mov.w	r0, r13	# tmp64,
	add.w	r0, -26 #111	# tmp64,
	st.w	[r13 + (-8)], r0	# p, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:645:       while ((b = *p++)) if (b == c) return false;
	j	.L127		#
.L129:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:645:       while ((b = *p++)) if (b == c) return false;
	ld.b	r1, [r13 + (-10)]	# tmp65, b
	ld.b	r0, [r13 + (-9)]	# tmp66, c
	cmp.w	r1, r0	# tmp65, tmp66
	jnz	.L127		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:645:       while ((b = *p++)) if (b == c) return false;
	xor.w	r0, r0	# _18
	j	.L126		#
.L127:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:645:       while ((b = *p++)) if (b == c) return false;
	ld.w	r0, [r13 + (-8)]	# p.44_4, p
	mov.w	r1, r0	# tmp67, p.44_4
	add.w	r1, 1 #111	# tmp67,
	st.w	[r13 + (-8)], r1	# p, tmp67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:645:       while ((b = *p++)) if (b == c) return false;
	ld.b	r0, [r0]	# tmp68, *p.44_4
	st.b	[r13 + (-10)], r0	# b, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:645:       while ((b = *p++)) if (b == c) return false;
	ld.b	r1, [r13 + (-10)]	# tmp69, b
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L129		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:648:       if (i > n || c < 0X21 || c > 0X7E)return false;
	ld.b	r1, [r13 + (-2)]	# tmp71, i
	ld.b	r0, [r13 + (-1)]	# tmp72, n
	cmp.w	r1, r0	# tmp71, tmp72
	jg	.L130		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:648:       if (i > n || c < 0X21 || c > 0X7E)return false;
	ld.b	r1, [r13 + (-9)]	# tmp73, c
	mov.w	r0, 32	# tmp74,
	cmp.w	r1, r0	# tmp73, tmp74
	jse	.L130		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:648:       if (i > n || c < 0X21 || c > 0X7E)return false;
	ld.b	r1, [r13 + (-9)]	# tmp75, c
	mov.w	r0, 126	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jse	.L131		#
.L130:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:648:       if (i > n || c < 0X21 || c > 0X7E)return false;
	xor.w	r0, r0	# _18
	j	.L126		#
.L131:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:650:       name[i++] = c < 'a' || c > 'z' ?  c : c + ('A' - 'a');
	ld.b	r1, [r13 + (-9)]	# tmp77, c
	mov.w	r0, 96	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jse	.L132		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:650:       name[i++] = c < 'a' || c > 'z' ?  c : c + ('A' - 'a');
	ld.b	r1, [r13 + (-9)]	# tmp79, c
	mov.w	r0, 122	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jg	.L132		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:650:       name[i++] = c < 'a' || c > 'z' ?  c : c + ('A' - 'a');
	ld.b	r0, [r13 + (-9)]	# tmp81, c
	add.w	r0, -32 #111	# tmp82,
	j	.L133		#
.L132:
	ld.b	r0, [r13 + (-9)]	# iftmp.45_20, c
.L133:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:650:       name[i++] = c < 'a' || c > 'z' ?  c : c + ('A' - 'a');
	ld.b	r1, [r13 + (-2)]	# i.46_5, i
	mov.w	r2, r1	# tmp83,
	add.w	r2, 1 #111	# tmp83,
	st.b	[r13 + (-2)], r2	# i, tmp84
	zex.b	r2, r1	# _6, i.46_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:650:       name[i++] = c < 'a' || c > 'z' ?  c : c + ('A' - 'a');
	ld.w	r1, [r13 + (12)]	# tmp85, name
	add.w	r1, r2 #222	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:650:       name[i++] = c < 'a' || c > 'z' ?  c : c + ('A' - 'a');
	st.b	[r1], r0	# *_7, iftmp.45_20
.L123:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:634:   while ((c = *str++) != '\0') {
	ld.w	r0, [r13 + (8)]	# str.47_8, str
	mov.w	r1, r0	# tmp86, str.47_8
	add.w	r1, 1 #111	# tmp86,
	st.w	[r13 + (8)], r1	# str, tmp86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:634:   while ((c = *str++) != '\0') {
	ld.b	r0, [r0]	# _9, *str.47_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:634:   while ((c = *str++) != '\0') {
	st.b	[r13 + (-9)], r0	# c, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:634:   while ((c = *str++) != '\0') {
	ld.b	r1, [r13 + (-9)]	# tmp87, c
	xor.w	r0, r0	# tmp88
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L134		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:653:   name[11] = 0;
	ld.w	r0, [r13 + (12)]	# tmp89, name
	add.w	r0, 11 #111	# _10,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:653:   name[11] = 0;
	xor.w	r1, r1	# tmp90
	st.b	[r0], r1	# *_10, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:655:   return name[0] != ' ';
	ld.w	r0, [r13 + (12)]	# tmp91, name
	ld.b	r0, [r0]	# _11, *name_31(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:655:   return name[0] != ' ';
	mov.w	r1, 32	# tmp93,
	xor.w	r0, r1	# tmp92, tmp93
	zex.b	r0, r0	# tmp94, tmp92
	mov.w	r0, r0	# tmp95, tmp94
neg.w	r0	# tmp95
	mov.w	r1, 31	# tmp97,
	shr.w	r0, r1	# tmp96, tmp97
.L126:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:656: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make83Name, .-make83Name
	.p2align	1
	.global	get_empty_dir_entry
	.type	get_empty_dir_entry, @function
get_empty_dir_entry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:664:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	xor.w	r0, r0	# tmp49
	st.b	[r13 + (-1)], r0	# i, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:664:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	j	.L136		#
.L142:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:666:     b = readBlock(rootDirStart_ + i, buf);
	ld.b	r1, [r13 + (-1)]	# _1, i
	ld.w	r0, [rootDirStart_]	# rootDirStart_.48_2, rootDirStart_
	add.w	r1, r0 #222	# _3, rootDirStart_.48_2
	mov.w	r0, sp	# tmp50,
	ld.w	r2, [r13 + (8)]	# tmp51, buf
	st.w	[r0 + (4)], r2	#, tmp51
	st.w	[r0], r1	#, _3
	call	readBlock		#
	st.b	[r13 + (-3)], r0	# b,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:667:     for(j = 0 ; j < 16; j++)
	xor.w	r0, r0	# tmp52
	st.b	[r13 + (-2)], r0	# j, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:667:     for(j = 0 ; j < 16; j++)
	j	.L137		#
.L141:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:669:       if(buf[j*32] == 0x00 || buf[j*32] == 0xE5)
	ld.b	r0, [r13 + (-2)]	# _4, j
	mov.w	r1, 5	# tmp53,
	shl.w	r0, r1	# _5, tmp53
	mov.w	r1, r0	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:669:       if(buf[j*32] == 0x00 || buf[j*32] == 0xE5)
	ld.w	r0, [r13 + (8)]	# tmp54, buf
	add.w	r0, r1 #222	# _7, _6
	ld.b	r0, [r0]	# _8, *_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:669:       if(buf[j*32] == 0x00 || buf[j*32] == 0xE5)
	zex.b	r1, r0	# tmp55, _8
	xor.w	r0, r0	# tmp56
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L138		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:669:       if(buf[j*32] == 0x00 || buf[j*32] == 0xE5)
	ld.b	r0, [r13 + (-2)]	# _9, j
	mov.w	r1, 5	# tmp57,
	shl.w	r0, r1	# _10, tmp57
	mov.w	r1, r0	# _11, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:669:       if(buf[j*32] == 0x00 || buf[j*32] == 0xE5)
	ld.w	r0, [r13 + (8)]	# tmp58, buf
	add.w	r0, r1 #222	# _12, _11
	ld.b	r0, [r0]	# _13, *_12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:669:       if(buf[j*32] == 0x00 || buf[j*32] == 0xE5)
	zex.b	r1, r0	# tmp59, _13
	mov.w	r0, 229	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jnz	.L139		#
.L138:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:674:         *block = i;
	ld.b	r0, [r13 + (-1)]	# tmp61, i
	mov.w	r1, r0	# _14, tmp61
	ld.w	r0, [r13 + (12)]	# tmp62, block
	st.s	[r0], r1	# *block_37(D), _14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:675:         *slot = j;
	ld.b	r0, [r13 + (-2)]	# tmp63, j
	mov.w	r1, r0	# _15, tmp63
	ld.w	r0, [r13 + (16)]	# tmp64, slot
	st.s	[r0], r1	# *slot_39(D), _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:676:         return (1);
	mov.w	r0, 1	# _24,
	j	.L140		#
.L139:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:667:     for(j = 0 ; j < 16; j++)
	ld.b	r0, [r13 + (-2)]	# j.49_16, j
	add.w	r0, 1 #111	# tmp65,
	st.b	[r13 + (-2)], r0	# j, tmp66
.L137:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:667:     for(j = 0 ; j < 16; j++)
	ld.b	r1, [r13 + (-2)]	# tmp67, j
	mov.w	r0, 15	# tmp68,
	cmp.w	r1, r0	# tmp67, tmp68
	jse	.L141		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:679:     delay(1);
	mov.w	r1, sp	# tmp69,
	mov.w	r0, 1	# tmp70,
	st.w	[r1], r0	#, tmp70
	call	delay		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:664:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.b	r0, [r13 + (-1)]	# i.50_17, i
	add.w	r0, 1 #111	# tmp71,
	st.b	[r13 + (-1)], r0	# i, tmp72
.L136:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:664:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.b	r1, [r13 + (-1)]	# _18, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:664:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.w	r0, [dataStartBlock_]	# dataStartBlock_.51_19, dataStartBlock_
	ld.w	r2, [rootDirStart_]	# rootDirStart_.52_20, rootDirStart_
	sub.w	r0, r2 #222	# _21, rootDirStart_.52_20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:664:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	cmp.w	r1, r0	# _18, _21
	js	.L142		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:685:   return 0;
	xor.w	r0, r0	# _24
.L140:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:686: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	get_empty_dir_entry, .-get_empty_dir_entry
	.p2align	1
	.global	create_dir_entry
	.type	create_dir_entry, @function
create_dir_entry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp37, fn_length
	st.b	[r13 + (-12)], r0	# fn_length, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:692:   memmove(de->filename, filename, fn_length);
	ld.w	r1, [r13 + (8)]	# _1, de
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:692:   memmove(de->filename, filename, fn_length);
	ld.b	r2, [r13 + (-12)]	# _2, fn_length
	mov.w	r0, sp	# tmp39,
	st.w	[r0 + (8)], r2	#, _2
	ld.w	r2, [r13 + (12)]	# tmp40, filename
	st.w	[r0 + (4)], r2	#, tmp40
	st.w	[r0], r1	#, _1
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:693:   de->attributes = DIR_ATT_ARCHIVE;
	ld.w	r0, [r13 + (8)]	# tmp41, de
	mov.b	r1, 32	# tmp42,
	st.b	[r0 + (12)], r1	# de_12(D)->attributes, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:694:   de->filesize = 0;
	ld.w	r0, [r13 + (8)]	# tmp43, de
	xor.w	r1, r1	# tmp44
	st.w	[r0 + (32)], r1	# de_12(D)->filesize, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:695:   memset(de->unused_attr, 0, 14);
	ld.w	r0, [r13 + (8)]	# tmp45, de
	mov.w	r1, r0	# _3, tmp45
	add.w	r1, 13 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:695:   memset(de->unused_attr, 0, 14);
	mov.w	r0, sp	# tmp46,
	mov.w	r2, 14	# tmp47,
	st.w	[r0 + (8)], r2	#, tmp47
	xor.w	r2, r2	# tmp48
	st.w	[r0 + (4)], r2	#, tmp48
	st.w	[r0], r1	#, _3
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:699:   dir_entry_addr = get_empty_dir_entry(buf, &block, &slot);
	mov.w	r0, sp	# tmp49,
	mov.w	r1, r13	# tmp50,
	add.w	r1, -8 #111	# tmp50,
	st.w	[r0 + (8)], r1	#, tmp50
	mov.w	r1, r13	# tmp51,
	add.w	r1, -6 #111	# tmp51,
	st.w	[r0 + (4)], r1	#, tmp51
	ld.w	r1, [r13 + (20)]	# tmp52, buf
	st.w	[r0], r1	#, tmp52
	call	get_empty_dir_entry		#
	st.w	[r13 + (-4)], r0	# dir_entry_addr,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:703:   if (!dir_entry_addr) 
	ld.w	r1, [r13 + (-4)]	# tmp53, dir_entry_addr
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jnz	.L144		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:708:     return 0;
	xor.w	r0, r0	# _10
	j	.L146		#
.L144:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:710:   de->block = rootDirStart_ + block;
	ld.s	r0, [r13 + (-6)]	# block.53_4, block
	zex.s	r1, r0	# _5, block.53_4
	ld.w	r0, [rootDirStart_]	# rootDirStart_.54_6, rootDirStart_
	add.w	r1, r0 #222	# _7, rootDirStart_.54_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:710:   de->block = rootDirStart_ + block;
	ld.w	r0, [r13 + (8)]	# tmp55, de
	st.w	[r0 + (36)], r1	# de_12(D)->block, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:711:   de->slot = slot;
	ld.s	r0, [r13 + (-8)]	# slot.55_8, slot
	zex.s	r1, r0	# _9, slot.55_8
	ld.w	r0, [r13 + (8)]	# tmp56, de
	st.w	[r0 + (40)], r1	# de_12(D)->slot, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:714:   de->first_cluster = 0x0000;
	ld.w	r0, [r13 + (8)]	# tmp57, de
	xor.w	r1, r1	# tmp58
	st.s	[r0 + (28)], r1	# de_12(D)->first_cluster, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:716:   return 1;
	mov.b	r0, 1	# _10,
.L146:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:717: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	create_dir_entry, .-create_dir_entry
	.p2align	1
	.global	write_dir_entry
	.type	write_dir_entry, @function
write_dir_entry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:728:   de_sec_offset = (de->slot * 32);
	ld.w	r0, [r13 + (8)]	# tmp48, de
	ld.w	r0, [r0 + (40)]	# _1, de_22(D)->slot
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:728:   de_sec_offset = (de->slot * 32);
	mov.w	r1, 5	# tmp50,
	shl.w	r0, r1	# tmp49, tmp50
	st.w	[r13 + (-4)], r0	# de_sec_offset, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:729:   de_sec_start = de->block;
	ld.w	r0, [r13 + (8)]	# tmp51, de
	ld.w	r0, [r0 + (36)]	# tmp52, de_22(D)->block
	st.w	[r13 + (-8)], r0	# de_sec_start, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:730:   b = readBlock(de_sec_start, buf);
	mov.w	r0, sp	# tmp53,
	ld.w	r1, [r13 + (12)]	# tmp54, buf
	st.w	[r0 + (4)], r1	#, tmp54
	ld.w	r1, [r13 + (-8)]	# tmp55, de_sec_start
	st.w	[r0], r1	#, tmp55
	call	readBlock		#
	st.b	[r13 + (-9)], r0	# b,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:736:   cluster_rev = reverse16(de->first_cluster);
	ld.w	r0, [r13 + (8)]	# tmp56, de
	ld.s	r0, [r0 + (28)]	# _2, de_22(D)->first_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:736:   cluster_rev = reverse16(de->first_cluster);
	zex.s	r0, r0	# _3, _2
	mov.w	r1, sp	# tmp57,
	st.w	[r1], r0	#, _3
	call	reverse16		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:736:   cluster_rev = reverse16(de->first_cluster);
	st.s	[r13 + (-12)], r0	# cluster_rev, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:737:   filesize_rev = reverse32(de->filesize);
	ld.w	r0, [r13 + (8)]	# tmp58, de
	ld.w	r0, [r0 + (32)]	# _5, de_22(D)->filesize
	mov.w	r1, sp	# tmp59,
	st.w	[r1], r0	#, _5
	call	reverse32		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:737:   filesize_rev = reverse32(de->filesize);
	st.w	[r13 + (-16)], r0	# filesize_rev, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:745:   memmove(buf+de_sec_offset+0x00, de->filename, 11);
	ld.w	r1, [r13 + (12)]	# tmp60, buf
	ld.w	r0, [r13 + (-4)]	# tmp61, de_sec_offset
	add.w	r1, r0 #222	# _7, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:745:   memmove(buf+de_sec_offset+0x00, de->filename, 11);
	ld.w	r2, [r13 + (8)]	# _8, de
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:745:   memmove(buf+de_sec_offset+0x00, de->filename, 11);
	mov.w	r0, sp	# tmp62,
	mov.w	r3, 11	# tmp63,
	st.w	[r0 + (8)], r3	#, tmp63
	st.w	[r0 + (4)], r2	#, _8
	st.w	[r0], r1	#, _7
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:746:   memmove(buf+de_sec_offset+0x0b, &(de->attributes), 1);
	ld.w	r0, [r13 + (-4)]	# tmp64, de_sec_offset
	mov.w	r1, r0	# _9, tmp64
	add.w	r1, 11 #111	# _9,
	ld.w	r0, [r13 + (12)]	# tmp65, buf
	add.w	r0, r1 #222	# _10, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:746:   memmove(buf+de_sec_offset+0x0b, &(de->attributes), 1);
	ld.w	r1, [r13 + (8)]	# tmp66, de
	add.w	r1, 12 #111	# _11,
	ld.b	r1, [r1]	# _33, MEM[(char * {ref-all})_11]
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:746:   memmove(buf+de_sec_offset+0x0b, &(de->attributes), 1);
	st.b	[r0], r1	# MEM[(char * {ref-all})_10], _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:747:   memmove(buf+de_sec_offset+0x0c, &(de->unused_attr), 14);
	ld.w	r0, [r13 + (-4)]	# tmp67, de_sec_offset
	add.w	r0, 12 #111	# _12,
	ld.w	r1, [r13 + (12)]	# tmp68, buf
	add.w	r1, r0 #222	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:747:   memmove(buf+de_sec_offset+0x0c, &(de->unused_attr), 14);
	ld.w	r0, [r13 + (8)]	# tmp69, de
	mov.w	r2, r0	# _14, tmp69
	add.w	r2, 13 #111	# _14,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:747:   memmove(buf+de_sec_offset+0x0c, &(de->unused_attr), 14);
	mov.w	r0, sp	# tmp70,
	mov.w	r3, 14	# tmp71,
	st.w	[r0 + (8)], r3	#, tmp71
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _13
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:748:   memmove(buf+de_sec_offset+0x1a, &cluster_rev, 2);
	ld.w	r0, [r13 + (-4)]	# tmp72, de_sec_offset
	add.w	r0, 26 #111	# _15,
	ld.w	r1, [r13 + (12)]	# tmp73, buf
	add.w	r1, r0 #222	# _16, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:748:   memmove(buf+de_sec_offset+0x1a, &cluster_rev, 2);
	mov.w	r0, sp	# tmp74,
	mov.w	r2, 2	# tmp75,
	st.w	[r0 + (8)], r2	#, tmp75
	mov.w	r2, r13	# tmp76,
	add.w	r2, -12 #111	# tmp76,
	st.w	[r0 + (4)], r2	#, tmp76
	st.w	[r0], r1	#, _16
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:749:   memmove(buf+de_sec_offset+0x1c, &filesize_rev, 4);
	ld.w	r0, [r13 + (-4)]	# tmp77, de_sec_offset
	add.w	r0, 28 #111	# _17,
	ld.w	r1, [r13 + (12)]	# tmp78, buf
	add.w	r1, r0 #222	# _18, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:749:   memmove(buf+de_sec_offset+0x1c, &filesize_rev, 4);
	mov.w	r0, sp	# tmp79,
	mov.w	r2, 4	# tmp80,
	st.w	[r0 + (8)], r2	#, tmp80
	mov.w	r2, r13	# tmp81,
	add.w	r2, -16 #111	# tmp81,
	st.w	[r0 + (4)], r2	#, tmp81
	st.w	[r0], r1	#, _18
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:751:   if(!writeBlock(de_sec_start, buf, true))
	mov.w	r0, sp	# tmp82,
	mov.w	r1, 1	# tmp83,
	st.w	[r0 + (8)], r1	#, tmp83
	ld.w	r1, [r13 + (12)]	# tmp84, buf
	st.w	[r0 + (4)], r1	#, tmp84
	ld.w	r1, [r13 + (-8)]	# tmp85, de_sec_start
	st.w	[r0], r1	#, tmp85
	call	writeBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:751:   if(!writeBlock(de_sec_start, buf, true))
	zex.b	r1, r0	# tmp86, _19
	xor.w	r0, r0	# tmp87
	cmp.w	r1, r0	# tmp86, tmp87
	jnz	.L148		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:756:     return 0;
	xor.w	r0, r0	# _20
	j	.L150		#
.L148:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:759:   return 1;
	mov.b	r0, 1	# _20,
.L150:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:760: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	write_dir_entry, .-write_dir_entry
	.p2align	1
	.global	create_file
	.type	create_file, @function
create_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp31, fn_length
	st.b	[r13 + (-4)], r0	# fn_length, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:765:   if(!create_dir_entry(de, filename, fn_length, buf))
	ld.b	r1, [r13 + (-4)]	# _1, fn_length
	mov.w	r0, sp	# tmp33,
	ld.w	r2, [r13 + (20)]	# tmp34, buf
	st.w	[r0 + (12)], r2	#, tmp34
	st.w	[r0 + (8)], r1	#, _1
	ld.w	r1, [r13 + (12)]	# tmp35, filename
	st.w	[r0 + (4)], r1	#, tmp35
	ld.w	r1, [r13 + (8)]	# tmp36, de
	st.w	[r0], r1	#, tmp36
	call	create_dir_entry		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:765:   if(!create_dir_entry(de, filename, fn_length, buf))
	zex.b	r1, r0	# tmp37, _2
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L152		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:770:     return 0;
	xor.w	r0, r0	# _4
	j	.L153		#
.L152:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:773:   if(!write_dir_entry(de, buf))
	mov.w	r0, sp	# tmp39,
	ld.w	r1, [r13 + (20)]	# tmp40, buf
	st.w	[r0 + (4)], r1	#, tmp40
	ld.w	r1, [r13 + (8)]	# tmp41, de
	st.w	[r0], r1	#, tmp41
	call	write_dir_entry		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:773:   if(!write_dir_entry(de, buf))
	zex.b	r1, r0	# tmp42, _3
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L154		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:778:     return 0;
	xor.w	r0, r0	# _4
	j	.L153		#
.L154:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:781:   return 1;
	mov.b	r0, 1	# _4,
.L153:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:782: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	create_file, .-create_file
	.p2align	1
	.global	clear_FAT
	.type	clear_FAT, @function
clear_FAT:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp49, cluster
	st.s	[r13 + (-12)], r0	# cluster, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:790:   sec_start = (cluster * 2) / 512;
	ld.s	r0, [r13 + (-12)]	# _1, cluster
	xor.w	r1, r1	# tmp52
	cmp.w	r0, r1	# tmp51, tmp52
	jges	.L156		#
	add.w	r0, 255 #111	# tmp51,
.L156:
	mov.w	r1, 8	# tmp54,
	shr.w	r0, r1	# tmp53, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:790:   sec_start = (cluster * 2) / 512;
	st.w	[r13 + (-4)], r0	# sec_start, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:791:   uint16_t offset = (cluster * 2) % 512;
	ld.s	r0, [r13 + (-12)]	# tmp55, cluster
	mov.w	r1, r0	# tmp57, tmp55
	add.w	r0, r1 #222	# tmp56, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:791:   uint16_t offset = (cluster * 2) % 512;
	mov.w	r1, 510	# tmp59,
	and.w	r0, r1	# tmp58, tmp59
	st.s	[r13 + (-6)], r0	# offset, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:793:   if(!readBlock(fatStartBlock_ + sec_start, buf))
	ld.w	r1, [fatStartBlock_]	# fatStartBlock_.56_4, fatStartBlock_
	ld.w	r0, [r13 + (-4)]	# tmp61, sec_start
	add.w	r1, r0 #222	# _5, tmp61
	mov.w	r0, sp	# tmp62,
	ld.w	r2, [r13 + (8)]	# tmp63, buf
	st.w	[r0 + (4)], r2	#, tmp63
	st.w	[r0], r1	#, _5
	call	readBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:793:   if(!readBlock(fatStartBlock_ + sec_start, buf))
	zex.b	r1, r0	# tmp64, _6
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L157		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:798:     return 0;
	xor.w	r0, r0	# _22
	j	.L158		#
.L157:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:801:   ori_cluster = buf[offset] + buf[offset + 1] * 256;
	ld.s	r1, [r13 + (-6)]	# _7, offset
	ld.w	r0, [r13 + (8)]	# tmp66, buf
	add.w	r0, r1 #222	# _8, _7
	ld.b	r0, [r0]	# _9, *_8
	zex.b	r0, r0	# tmp67, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:801:   ori_cluster = buf[offset] + buf[offset + 1] * 256;
	ld.s	r1, [r13 + (-6)]	# _11, offset
	mov.w	r2, r1	# _12, _11
	add.w	r2, 1 #111	# _12,
	ld.w	r1, [r13 + (8)]	# tmp68, buf
	add.w	r1, r2 #222	# _13, _12
	ld.b	r1, [r1]	# _14, *_13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:801:   ori_cluster = buf[offset] + buf[offset + 1] * 256;
	zex.b	r1, r1	# tmp69, _14
	mov.w	r2, 8	# tmp71,
	shl.w	r1, r2	# tmp70, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:801:   ori_cluster = buf[offset] + buf[offset + 1] * 256;
	add.w	r0, r1 #222	# tmp72, tmp73
	st.s	[r13 + (-8)], r0	# ori_cluster, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:803:   memmove(buf + offset, (uint16_t)0, 2);
	ld.s	r0, [r13 + (-6)]	# _17, offset
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:803:   memmove(buf + offset, (uint16_t)0, 2);
	ld.w	r1, [r13 + (8)]	# tmp75, buf
	add.w	r1, r0 #222	# _18, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:803:   memmove(buf + offset, (uint16_t)0, 2);
	mov.w	r0, sp	# tmp76,
	mov.w	r2, 2	# tmp77,
	st.w	[r0 + (8)], r2	#, tmp77
	xor.w	r2, r2	# tmp78
	st.w	[r0 + (4)], r2	#, tmp78
	st.w	[r0], r1	#, _18
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:804:   if (!writeBlock(fatStartBlock_ + sec_start, buf, 1))
	ld.w	r1, [fatStartBlock_]	# fatStartBlock_.57_19, fatStartBlock_
	ld.w	r0, [r13 + (-4)]	# tmp79, sec_start
	add.w	r1, r0 #222	# _20, tmp79
	mov.w	r0, sp	# tmp80,
	mov.w	r2, 1	# tmp81,
	st.w	[r0 + (8)], r2	#, tmp81
	ld.w	r2, [r13 + (8)]	# tmp82, buf
	st.w	[r0 + (4)], r2	#, tmp82
	st.w	[r0], r1	#, _20
	call	writeBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:804:   if (!writeBlock(fatStartBlock_ + sec_start, buf, 1))
	zex.b	r1, r0	# tmp83, _21
	xor.w	r0, r0	# tmp84
	cmp.w	r1, r0	# tmp83, tmp84
	jnz	.L159		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:809:     return 0;
	xor.w	r0, r0	# _22
	j	.L158		#
.L159:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:812:   return ori_cluster;
	ld.s	r0, [r13 + (-8)]	# _22, ori_cluster
.L158:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:813: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clear_FAT, .-clear_FAT
	.p2align	1
	.global	invalidate_dir_entry
	.type	invalidate_dir_entry, @function
invalidate_dir_entry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:817:   de->filename[0] = 0xe5;
	ld.w	r0, [r13 + (8)]	# tmp28, de
	mov.b	r1, -27	# tmp29,
	st.b	[r0], r1	# de_2(D)->filename, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:818:   return write_dir_entry(de, buf);
	mov.w	r0, sp	# tmp30,
	ld.w	r1, [r13 + (12)]	# tmp31, buf
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, de
	st.w	[r0], r1	#, tmp32
	call	write_dir_entry		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:819: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	invalidate_dir_entry, .-invalidate_dir_entry
	.p2align	1
	.global	get_sec_addr
	.type	get_sec_addr, @function
get_sec_addr:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp39, cluster
	st.s	[r13 + (-4)], r0	# cluster, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:824:     return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
	ld.s	r0, [r13 + (-4)]	# _1, cluster
	add.w	r0, -2 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:824:     return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
	ld.b	r1, [bpb+2]	# _3, bpb.sectorsPerCluster
	zex.b	r1, r1	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:824:     return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
	mul.w	r0, r1	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:824:     return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
	ld.w	r1, [dataStartBlock_]	# dataStartBlock_.58_7, dataStartBlock_
	add.w	r0, r1 #222	# _8, dataStartBlock_.58_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:824:     return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
	ld.s	r1, [bpb]	# _9, bpb.bytesPerSector
	zex.s	r2, r1	# _10, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:824:     return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
	ld.w	r1, [r13 + (12)]	# tmp41, position
	div.w	r1, r2	# _11, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:824:     return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
	add.w	r0, r1 #222	# _15, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:825: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	get_sec_addr, .-get_sec_addr
	.p2align	1
	.global	next_cluster
	.type	next_cluster, @function
next_cluster:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp43, cluster
	st.s	[r13 + (-12)], r0	# cluster, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:836:   if (cluster > (clusterCount_ + 1)) return false;
	ld.s	r1, [r13 + (-12)]	# _1, cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:836:   if (cluster > (clusterCount_ + 1)) return false;
	ld.w	r0, [clusterCount_]	# clusterCount_.59_2, clusterCount_
	add.w	r0, 1 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:836:   if (cluster > (clusterCount_ + 1)) return false;
	cmp.w	r1, r0	# _1, _3
	jse	.L165		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:836:   if (cluster > (clusterCount_ + 1)) return false;
	xor.w	r0, r0	# _16
	j	.L166		#
.L165:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:837:   uint32_t offset = cluster << 1;
	ld.s	r0, [r13 + (-12)]	# _4, cluster
	add.w	r0, r0 #222	# tmp45, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:837:   uint32_t offset = cluster << 1;
	st.w	[r13 + (-4)], r0	# offset, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:841:   if(!readBlock(fatStartBlock_, buff))
	ld.w	r1, [fatStartBlock_]	# fatStartBlock_.60_6, fatStartBlock_
	mov.w	r0, sp	# tmp46,
	ld.w	r2, [r13 + (12)]	# tmp47, buff
	st.w	[r0 + (4)], r2	#, tmp47
	st.w	[r0], r1	#, fatStartBlock_.60_6
	call	readBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:841:   if(!readBlock(fatStartBlock_, buff))
	zex.b	r1, r0	# tmp48, _7
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L167		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:846:     return 0;
	xor.w	r0, r0	# _16
	j	.L166		#
.L167:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:849:   next = buff[offset]  + buff[offset + 1] * 256;
	ld.w	r0, [r13 + (12)]	# tmp50, buff
	ld.w	r1, [r13 + (-4)]	# tmp51, offset
	add.w	r0, r1 #222	# _8, tmp51
	ld.b	r0, [r0]	# _9, *_8
	zex.b	r0, r0	# tmp52, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:849:   next = buff[offset]  + buff[offset + 1] * 256;
	ld.w	r1, [r13 + (-4)]	# tmp53, offset
	mov.w	r2, r1	# _11, tmp53
	add.w	r2, 1 #111	# _11,
	ld.w	r1, [r13 + (12)]	# tmp54, buff
	add.w	r1, r2 #222	# _12, _11
	ld.b	r1, [r1]	# _13, *_12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:849:   next = buff[offset]  + buff[offset + 1] * 256;
	zex.b	r1, r1	# tmp55, _13
	mov.w	r2, 8	# tmp57,
	shl.w	r1, r2	# tmp56, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:849:   next = buff[offset]  + buff[offset + 1] * 256;
	add.w	r0, r1 #222	# tmp58, tmp59
	st.s	[r13 + (-6)], r0	# next, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:851:   return next;
	ld.s	r0, [r13 + (-6)]	# _16, next
.L166:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:852: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	next_cluster, .-next_cluster
	.p2align	1
	.global	ld_word
	.type	ld_word, @function
ld_word:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:862: 	rv = ptr[1];
	ld.w	r0, [r13 + (8)]	# tmp36, ptr
	add.w	r0, 1 #111	# _1,
	ld.b	r0, [r0]	# _2, *_1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:862: 	rv = ptr[1];
	zex.b	r0, r0	# tmp37, _2
	st.s	[r13 + (-2)], r0	# rv, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:863: 	rv = rv << 8 | ptr[0];
	ld.s	r0, [r13 + (-2)]	# _3, rv
	mov.w	r1, 8	# tmp39,
	shl.w	r0, r1	# _4, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:863: 	rv = rv << 8 | ptr[0];
	ld.w	r1, [r13 + (8)]	# tmp40, ptr
	ld.b	r1, [r1]	# _6, *ptr_9(D)
	zex.b	r1, r1	# tmp41, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:863: 	rv = rv << 8 | ptr[0];
	or.w	r0, r1	# tmp42, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:863: 	rv = rv << 8 | ptr[0];
	st.s	[r13 + (-2)], r0	# rv, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:864: 	return rv;
	ld.s	r0, [r13 + (-2)]	# _13, rv
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:865: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ld_word, .-ld_word
	.p2align	1
	.global	get_next_from_fat
	.type	get_next_from_fat, @function
get_next_from_fat:
	push	r13		#
	mov.w	r13, sp	#,
	mov.w	r12, 544	#,
	sub.w	sp, r12 #222	#,
	ld.w	r0, [r13 + (12)]	# tmp36, clst
	st.s	[r13 + (-520)], r0	# clst, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:880: 	if (readData(fatStartBlock_ + clst / 256, (clst % 256) * 2, 2, buf)) {//,  ((UINT)clst % 256) * 2, 2)) return 1;
	ld.s	r0, [r13 + (-520)]	# tmp39, clst
	mov.w	r1, 8	# tmp40,
	shr.w	r0, r1	# tmp38, tmp40
	zex.s	r1, r0	# _2, _1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:880: 	if (readData(fatStartBlock_ + clst / 256, (clst % 256) * 2, 2, buf)) {//,  ((UINT)clst % 256) * 2, 2)) return 1;
	ld.w	r0, [fatStartBlock_]	# fatStartBlock_.61_3, fatStartBlock_
	add.w	r1, r0 #222	# _4, fatStartBlock_.61_3
	ld.s	r0, [r13 + (-520)]	# tmp41, clst
	mov.w	r2, 255	# tmp43,
	and.w	r0, r2	# tmp42, tmp43
	mov.w	r2, r0	# tmp45, _5
	add.w	r0, r2 #222	# tmp44, tmp45
	zex.s	r2, r0	# _7, _6
	mov.w	r0, sp	# tmp46,
	mov.w	r4, -514	# tmp48,
	mov.w	r3, r13	# tmp47,
	add.w	r3, r4 #222	# tmp47, tmp48
	st.w	[r0 + (12)], r3	#, tmp47
	mov.w	r3, 2	# tmp49,
	st.w	[r0 + (8)], r3	#, tmp49
	st.w	[r0 + (4)], r2	#, _7
	st.w	[r0], r1	#, _4
	call	readData		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:880: 	if (readData(fatStartBlock_ + clst / 256, (clst % 256) * 2, 2, buf)) {//,  ((UINT)clst % 256) * 2, 2)) return 1;
	zex.b	r1, r0	# tmp50, _8
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L171		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:881:     ret = ld_word(buf);
	mov.w	r2, sp	# tmp52,
	mov.w	r1, -514	# tmp54,
	mov.w	r0, r13	# tmp53,
	add.w	r0, r1 #222	# tmp53, tmp54
	st.w	[r2], r0	#, tmp53
	call	ld_word		#
	st.s	[r13 + (-2)], r0	# ret,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:883: 	  return ret;
	ld.s	r0, [r13 + (-2)]	# _9, ret
	j	.L173		#
.L171:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:886: 	return 1;	/* An error occured at the disk I/O layer */
	mov.s	r0, 1	# _9,
.L173:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:887: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	get_next_from_fat, .-get_next_from_fat
	.p2align	1
	.global	clust2sect
	.type	clust2sect, @function
clust2sect:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp33, clst
	st.s	[r13 + (-4)], r0	# clst, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:900: 	clst -= 2;
	ld.s	r0, [r13 + (-4)]	# tmp35, clst
	add.w	r0, -2 #111	# tmp36,
	st.s	[r13 + (-4)], r0	# clst, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:901: 	return (uint32_t)clst * blocksPerCluster_ + dataStartBlock_;
	ld.s	r0, [r13 + (-4)]	# _1, clst
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:901: 	return (uint32_t)clst * blocksPerCluster_ + dataStartBlock_;
	ld.b	r1, [blocksPerCluster_]	# blocksPerCluster_.62_2, blocksPerCluster_
	zex.b	r1, r1	# _3, blocksPerCluster_.62_2
	mul.w	r0, r1	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:901: 	return (uint32_t)clst * blocksPerCluster_ + dataStartBlock_;
	ld.w	r1, [dataStartBlock_]	# dataStartBlock_.63_5, dataStartBlock_
	add.w	r0, r1 #222	# _9, dataStartBlock_.63_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:902: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clust2sect, .-clust2sect
	.p2align	1
	.global	get_unused_cluster
	.type	get_unused_cluster, @function
get_unused_cluster:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:912:   for (i = 0; i < 256; i++)
	xor.w	r0, r0	# tmp51
	st.b	[r13 + (-2)], r0	# i, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:914:     b = readBlock(fatStartBlock_ + i, buf);
	ld.b	r1, [r13 + (-2)]	# _1, i
	ld.w	r0, [fatStartBlock_]	# fatStartBlock_.64_2, fatStartBlock_
	add.w	r1, r0 #222	# _3, fatStartBlock_.64_2
	mov.w	r0, sp	# tmp52,
	ld.w	r2, [r13 + (8)]	# tmp53, buf
	st.w	[r0 + (4)], r2	#, tmp53
	st.w	[r0], r1	#, _3
	call	readBlock		#
	st.b	[r13 + (-3)], r0	# b,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:915:     for(j = 0; j < 256 ; j++)
	xor.w	r0, r0	# tmp54
	st.b	[r13 + (-1)], r0	# j, tmp54
.L179:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	ld.b	r0, [r13 + (-1)]	# _4, j
	add.w	r0, r0 #222	# tmp55, _4
	mov.w	r1, r0	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	ld.w	r0, [r13 + (8)]	# tmp56, buf
	add.w	r0, r1 #222	# _7, _6
	ld.b	r0, [r0]	# _8, *_7
	zex.b	r0, r0	# tmp57, _8
	mov.w	r2, r0	# _9, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	ld.b	r0, [r13 + (-1)]	# _10, j
	add.w	r0, r0 #222	# tmp58, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	mov.w	r1, r0	# _13, _12
	add.w	r1, 1 #111	# _13,
	ld.w	r0, [r13 + (8)]	# tmp59, buf
	add.w	r0, r1 #222	# _14, _13
	ld.b	r0, [r0]	# _15, *_14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	zex.b	r0, r0	# _16, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	mov.w	r1, 8	# tmp60,
	shl.w	r0, r1	# _17, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	mov.w	r1, r0	# _18, _17
	mov.w	r0, r2	# tmp61,
	or.w	r0, r1	# tmp61, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	st.s	[r13 + (-6)], r0	# FAT_entry, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:918:       if(FAT_entry == 0x0000)
	ld.s	r1, [r13 + (-6)]	# tmp62, FAT_entry
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jnz	.L177		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:923:         return (i * 256) + j;
	ld.b	r0, [r13 + (-2)]	# tmp64, i
	mov.w	r1, 8	# tmp66,
	shl.w	r0, r1	# tmp65, tmp66
	ld.b	r1, [r13 + (-1)]	# tmp67, j
	add.w	r0, r1 #222	# tmp68, tmp69
	j	.L180		#
.L177:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:915:     for(j = 0; j < 256 ; j++)
	ld.b	r0, [r13 + (-1)]	# j.65_23, j
	add.w	r0, 1 #111	# tmp70,
	st.b	[r13 + (-1)], r0	# j, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:917:       FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
	j	.L179		#
.L180:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:932: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	get_unused_cluster, .-get_unused_cluster
	.p2align	1
	.global	update_FAT
	.type	update_FAT, @function
update_FAT:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
	ld.w	r1, [r13 + (12)]	# tmp42, cluster
	ld.w	r0, [r13 + (16)]	# tmp44, value
	st.s	[r13 + (-16)], r1	# cluster, tmp43
	st.s	[r13 + (-20)], r0	# value, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:941:   sec_start = (cluster * 2) / 512;
	ld.s	r0, [r13 + (-16)]	# _1, cluster
	xor.w	r1, r1	# tmp47
	cmp.w	r0, r1	# tmp46, tmp47
	jges	.L182		#
	add.w	r0, 255 #111	# tmp46,
.L182:
	mov.w	r1, 8	# tmp49,
	shr.w	r0, r1	# tmp48, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:941:   sec_start = (cluster * 2) / 512;
	st.w	[r13 + (-4)], r0	# sec_start, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:942:   offset = (cluster * 2) % 512;
	ld.s	r0, [r13 + (-16)]	# _3, cluster
	add.w	r0, r0 #222	# tmp50, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:942:   offset = (cluster * 2) % 512;
	mov.w	r1, 510	# tmp52,
	and.w	r0, r1	# tmp51, tmp52
	st.w	[r13 + (-8)], r0	# offset, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:948:   if(!readBlock(fatStartBlock_ + sec_start, buf))
	ld.w	r1, [fatStartBlock_]	# fatStartBlock_.67_6, fatStartBlock_
	ld.w	r0, [r13 + (-4)]	# tmp53, sec_start
	add.w	r1, r0 #222	# _7, tmp53
	mov.w	r0, sp	# tmp54,
	ld.w	r2, [r13 + (8)]	# tmp55, buf
	st.w	[r0 + (4)], r2	#, tmp55
	st.w	[r0], r1	#, _7
	call	readBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:948:   if(!readBlock(fatStartBlock_ + sec_start, buf))
	zex.b	r1, r0	# tmp56, _8
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L183		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:953:     return 0;
	xor.w	r0, r0	# _15
	j	.L186		#
.L183:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:955:   value_rev = reverse16(value);
	ld.s	r0, [r13 + (-20)]	# _9, value
	mov.w	r1, sp	# tmp58,
	st.w	[r1], r0	#, _9
	call	reverse16		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:955:   value_rev = reverse16(value);
	st.s	[r13 + (-10)], r0	# value_rev, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:956:   memmove(buf + offset, &value_rev, 2);
	ld.w	r1, [r13 + (8)]	# tmp59, buf
	ld.w	r0, [r13 + (-8)]	# tmp60, offset
	add.w	r1, r0 #222	# _11, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:956:   memmove(buf + offset, &value_rev, 2);
	mov.w	r0, sp	# tmp61,
	mov.w	r2, 2	# tmp62,
	st.w	[r0 + (8)], r2	#, tmp62
	mov.w	r2, r13	# tmp63,
	add.w	r2, -10 #111	# tmp63,
	st.w	[r0 + (4)], r2	#, tmp63
	st.w	[r0], r1	#, _11
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:957:   if (!writeBlock(fatStartBlock_+ sec_start, buf, 1))
	ld.w	r1, [fatStartBlock_]	# fatStartBlock_.68_12, fatStartBlock_
	ld.w	r0, [r13 + (-4)]	# tmp64, sec_start
	add.w	r1, r0 #222	# _13, tmp64
	mov.w	r0, sp	# tmp65,
	mov.w	r2, 1	# tmp66,
	st.w	[r0 + (8)], r2	#, tmp66
	ld.w	r2, [r13 + (8)]	# tmp67, buf
	st.w	[r0 + (4)], r2	#, tmp67
	st.w	[r0], r1	#, _13
	call	writeBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:957:   if (!writeBlock(fatStartBlock_+ sec_start, buf, 1))
	zex.b	r1, r0	# tmp68, _14
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jnz	.L185		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:962:     return 0;
	xor.w	r0, r0	# _15
	j	.L186		#
.L185:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:965:   return 1;
	mov.b	r0, 1	# _15,
.L186:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:966: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	update_FAT, .-update_FAT
	.p2align	1
	.global	sdcard_init
	.type	sdcard_init, @function
sdcard_init:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:976: 	*DMA_1_HANDLER_INSTR 	= 1;
	ld.w	r0, [DMA_1_HANDLER_INSTR]	# DMA_1_HANDLER_INSTR.69_1, DMA_1_HANDLER_INSTR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:976: 	*DMA_1_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp61,
	st.s	[r0], r1	# *DMA_1_HANDLER_INSTR.69_1, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:977: 	*DMA_1_HANDLER_ADDR 	= (int)&dma_1_irq_triggered;
	ld.w	r0, [DMA_1_HANDLER_ADDR]	# DMA_1_HANDLER_ADDR.70_2, DMA_1_HANDLER_ADDR
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:977: 	*DMA_1_HANDLER_ADDR 	= (int)&dma_1_irq_triggered;
	mov.w	r1, dma_1_irq_triggered	# dma_1_irq_triggered.71_3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:977: 	*DMA_1_HANDLER_ADDR 	= (int)&dma_1_irq_triggered;
	st.w	[r0], r1	# *DMA_1_HANDLER_ADDR.70_2, dma_1_irq_triggered.71_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:979:   writeCRC_ = errorCode_ = inBlock_ = partialBlockRead_ = type_ = 0;
	xor.w	r0, r0	# tmp62
	st.b	[type_], r0	# type_, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:979:   writeCRC_ = errorCode_ = inBlock_ = partialBlockRead_ = type_ = 0;
	ld.b	r0, [type_]	# type_.72_4, type_
	st.b	[partialBlockRead_], r0	# partialBlockRead_, type_.72_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:979:   writeCRC_ = errorCode_ = inBlock_ = partialBlockRead_ = type_ = 0;
	ld.b	r0, [partialBlockRead_]	# partialBlockRead_.73_5, partialBlockRead_
	st.b	[inBlock_], r0	# inBlock_, partialBlockRead_.73_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:979:   writeCRC_ = errorCode_ = inBlock_ = partialBlockRead_ = type_ = 0;
	ld.b	r0, [inBlock_]	# inBlock_.74_6, inBlock_
	st.b	[errorCode_], r0	# errorCode_, inBlock_.74_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:979:   writeCRC_ = errorCode_ = inBlock_ = partialBlockRead_ = type_ = 0;
	ld.b	r0, [errorCode_]	# errorCode_.75_7, errorCode_
	st.b	[writeCRC_], r0	# writeCRC_, errorCode_.75_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:981:   uint32_t t0 = (uint32_t)get_millis();
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:981:   uint32_t t0 = (uint32_t)get_millis();
	st.w	[r13 + (-8)], r0	# t0, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:984:   for (uint8_t i = 0; i < 10; i++) spiSend(0XFF);
	xor.w	r0, r0	# tmp63
	st.b	[r13 + (-1)], r0	# i, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:984:   for (uint8_t i = 0; i < 10; i++) spiSend(0XFF);
	j	.L188		#
.L189:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:984:   for (uint8_t i = 0; i < 10; i++) spiSend(0XFF);
	mov.w	r1, sp	# tmp64,
	mov.w	r0, 255	# tmp65,
	st.w	[r1], r0	#, tmp65
	call	spiSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:984:   for (uint8_t i = 0; i < 10; i++) spiSend(0XFF);
	ld.b	r0, [r13 + (-1)]	# i.76_9, i
	add.w	r0, 1 #111	# tmp66,
	st.b	[r13 + (-1)], r0	# i, tmp67
.L188:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:984:   for (uint8_t i = 0; i < 10; i++) spiSend(0XFF);
	ld.b	r1, [r13 + (-1)]	# tmp68, i
	mov.w	r0, 9	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jse	.L189		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:986:   chipSelectLow();
	call	chipSelectLow		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:989:   while ((status_ = cardCommand(CMD0, 0)) != R1_IDLE_STATE) {
	j	.L190		#
.L192:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:990:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:990:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	mov.w	r1, r0	# _11, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:990:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	ld.w	r0, [r13 + (-8)]	# tmp70, t0
	sub.w	r1, r0 #222	# _12, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:990:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	mov.w	r0, 2000	# tmp71,
	cmp.w	r1, r0	# _12, tmp71
	jse	.L190		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:991:       error(SD_CARD_ERROR_CMD0);
	mov.w	r1, sp	# tmp72,
	mov.w	r0, 1	# tmp73,
	st.w	[r1], r0	#, tmp73
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:992:       goto fail;
	j	.L191		#
.L190:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:989:   while ((status_ = cardCommand(CMD0, 0)) != R1_IDLE_STATE) {
	mov.w	r0, sp	# tmp74,
	xor.w	r1, r1	# tmp75
	st.w	[r0 + (4)], r1	#, tmp75
	xor.w	r1, r1	# tmp76
	st.w	[r0], r1	#, tmp76
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:989:   while ((status_ = cardCommand(CMD0, 0)) != R1_IDLE_STATE) {
	st.b	[status_], r0	# status_, _13
	ld.b	r0, [status_]	# status_.77_14, status_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:989:   while ((status_ = cardCommand(CMD0, 0)) != R1_IDLE_STATE) {
	zex.b	r1, r0	# tmp77, status_.77_14
	mov.w	r0, 1	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L192		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:997:   if ((cardCommand(CMD8, 0x1AA) & R1_ILLEGAL_COMMAND)) {
	mov.w	r0, sp	# tmp79,
	mov.w	r1, 426	# tmp80,
	st.w	[r0 + (4)], r1	#, tmp80
	mov.w	r1, 8	# tmp81,
	st.w	[r0], r1	#, tmp81
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:997:   if ((cardCommand(CMD8, 0x1AA) & R1_ILLEGAL_COMMAND)) {
	zex.b	r1, r0	# _16, _15
	mov.w	r0, 4	# tmp82,
	and.w	r1, r0	# _17, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:997:   if ((cardCommand(CMD8, 0x1AA) & R1_ILLEGAL_COMMAND)) {
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# _17, tmp83
	jz	.L193		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:998:     type(SD_CARD_TYPE_SD1);
	mov.w	r1, sp	# tmp84,
	mov.w	r0, 1	# tmp85,
	st.w	[r1], r0	#, tmp85
	call	type		#
	j	.L194		#
.L193:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1001:     for (uint8_t i = 0; i < 4; i++) status_ = spiRec();
	xor.w	r0, r0	# tmp86
	st.b	[r13 + (-2)], r0	# i, tmp86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1001:     for (uint8_t i = 0; i < 4; i++) status_ = spiRec();
	j	.L195		#
.L196:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1001:     for (uint8_t i = 0; i < 4; i++) status_ = spiRec();
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1001:     for (uint8_t i = 0; i < 4; i++) status_ = spiRec();
	st.b	[status_], r0	# status_, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1001:     for (uint8_t i = 0; i < 4; i++) status_ = spiRec();
	ld.b	r0, [r13 + (-2)]	# i.78_19, i
	add.w	r0, 1 #111	# tmp87,
	st.b	[r13 + (-2)], r0	# i, tmp88
.L195:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1001:     for (uint8_t i = 0; i < 4; i++) status_ = spiRec();
	ld.b	r1, [r13 + (-2)]	# tmp89, i
	mov.w	r0, 3	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jse	.L196		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1002:     if (status_ != 0XAA) {
	ld.b	r0, [status_]	# status_.79_20, status_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1002:     if (status_ != 0XAA) {
	zex.b	r1, r0	# tmp91, status_.79_20
	mov.w	r0, 170	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L197		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1003:       error(SD_CARD_ERROR_CMD8);
	mov.w	r1, sp	# tmp93,
	mov.w	r0, 2	# tmp94,
	st.w	[r1], r0	#, tmp94
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1004:       goto fail;
	j	.L191		#
.L197:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1006:     type(SD_CARD_TYPE_SD2);
	mov.w	r1, sp	# tmp95,
	mov.w	r0, 2	# tmp96,
	st.w	[r1], r0	#, tmp96
	call	type		#
.L194:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1009:   arg = get_type() == SD_CARD_TYPE_SD2 ? 0X40000000 : 0;
	call	get_type		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1009:   arg = get_type() == SD_CARD_TYPE_SD2 ? 0X40000000 : 0;
	zex.b	r1, r0	# tmp97, _21
	mov.w	r0, 2	# tmp98,
	cmp.w	r1, r0	# tmp97, tmp98
	jnz	.L198		#
	mov.w	r0, 1073741824	# iftmp.80_36,
	j	.L199		#
.L198:
	xor.w	r0, r0	# iftmp.80_36
.L199:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1009:   arg = get_type() == SD_CARD_TYPE_SD2 ? 0X40000000 : 0;
	st.w	[r13 + (-12)], r0	# arg, iftmp.80_36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1011:   while ((status_ = cardAcmd(ACMD41, arg)) != R1_READY_STATE) {
	j	.L200		#
.L201:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1013:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1013:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	mov.w	r1, r0	# _23, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1013:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	ld.w	r0, [r13 + (-8)]	# tmp99, t0
	sub.w	r1, r0 #222	# _24, tmp99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1013:     if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
	mov.w	r0, 2000	# tmp100,
	cmp.w	r1, r0	# _24, tmp100
	jse	.L200		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1014:       error(SD_CARD_ERROR_ACMD41);
	mov.w	r1, sp	# tmp101,
	mov.w	r0, 8	# tmp102,
	st.w	[r1], r0	#, tmp102
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1015:       goto fail;
	j	.L191		#
.L200:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1011:   while ((status_ = cardAcmd(ACMD41, arg)) != R1_READY_STATE) {
	mov.w	r0, sp	# tmp103,
	ld.w	r1, [r13 + (-12)]	# tmp104, arg
	st.w	[r0 + (4)], r1	#, tmp104
	mov.w	r1, 41	# tmp105,
	st.w	[r0], r1	#, tmp105
	call	cardAcmd		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1011:   while ((status_ = cardAcmd(ACMD41, arg)) != R1_READY_STATE) {
	st.b	[status_], r0	# status_, _25
	ld.b	r0, [status_]	# status_.81_26, status_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1011:   while ((status_ = cardAcmd(ACMD41, arg)) != R1_READY_STATE) {
	zex.b	r1, r0	# tmp106, status_.81_26
	xor.w	r0, r0	# tmp107
	cmp.w	r1, r0	# tmp106, tmp107
	jnz	.L201		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1019:   if (get_type() == SD_CARD_TYPE_SD2) {
	call	get_type		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1019:   if (get_type() == SD_CARD_TYPE_SD2) {
	zex.b	r1, r0	# tmp108, _27
	mov.w	r0, 2	# tmp109,
	cmp.w	r1, r0	# tmp108, tmp109
	jnz	.L202		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1020:     if (cardCommand(CMD58, 0)) {
	mov.w	r0, sp	# tmp110,
	xor.w	r1, r1	# tmp111
	st.w	[r0 + (4)], r1	#, tmp111
	mov.w	r1, 58	# tmp112,
	st.w	[r0], r1	#, tmp112
	call	cardCommand		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1020:     if (cardCommand(CMD58, 0)) {
	zex.b	r1, r0	# tmp113, _28
	xor.w	r0, r0	# tmp114
	cmp.w	r1, r0	# tmp113, tmp114
	jz	.L203		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1021:       error(SD_CARD_ERROR_CMD58);
	mov.w	r1, sp	# tmp115,
	mov.w	r0, 6	# tmp116,
	st.w	[r1], r0	#, tmp116
	call	error		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1022:       goto fail;
	j	.L191		#
.L203:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1024:     if ((spiRec() & 0XC0) == 0XC0) type(SD_CARD_TYPE_SDHC);
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1024:     if ((spiRec() & 0XC0) == 0XC0) type(SD_CARD_TYPE_SDHC);
	zex.b	r1, r0	# _30, _29
	mov.w	r0, 192	# tmp117,
	and.w	r1, r0	# _31, tmp117
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1024:     if ((spiRec() & 0XC0) == 0XC0) type(SD_CARD_TYPE_SDHC);
	mov.w	r0, 192	# tmp118,
	cmp.w	r1, r0	# _31, tmp118
	jnz	.L204		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1024:     if ((spiRec() & 0XC0) == 0XC0) type(SD_CARD_TYPE_SDHC);
	mov.w	r1, sp	# tmp119,
	mov.w	r0, 3	# tmp120,
	st.w	[r1], r0	#, tmp120
	call	type		#
.L204:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1026:     for (uint8_t i = 0; i < 3; i++) spiRec();
	xor.w	r0, r0	# tmp121
	st.b	[r13 + (-3)], r0	# i, tmp121
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1026:     for (uint8_t i = 0; i < 3; i++) spiRec();
	j	.L205		#
.L206:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1026:     for (uint8_t i = 0; i < 3; i++) spiRec();
	call	spiRec		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1026:     for (uint8_t i = 0; i < 3; i++) spiRec();
	ld.b	r0, [r13 + (-3)]	# i.82_32, i
	add.w	r0, 1 #111	# tmp122,
	st.b	[r13 + (-3)], r0	# i, tmp123
.L205:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1026:     for (uint8_t i = 0; i < 3; i++) spiRec();
	ld.b	r1, [r13 + (-3)]	# tmp124, i
	mov.w	r0, 2	# tmp125,
	cmp.w	r1, r0	# tmp124, tmp125
	jse	.L206		#
.L202:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1028:   chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1030:   return true;
	mov.b	r0, 1	# _37,
	j	.L207		#
.L191:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1033:   chipSelectHigh();
	call	chipSelectHigh		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1037:   return false;
	xor.w	r0, r0	# _37
.L207:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1038: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sdcard_init, .-sdcard_init
	.p2align	1
	.global	volume_init
	.type	volume_init, @function
volume_init:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp174, part
	st.b	[r13 + (-16)], r0	# part, tmp175
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1042:   uint32_t volumeStartBlock = 0;
	xor.w	r0, r0	# tmp176
	st.w	[r13 + (-4)], r0	# volumeStartBlock, tmp176
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1045:   if (part) {
	ld.b	r1, [r13 + (-16)]	# tmp177, part
	xor.w	r0, r0	# tmp178
	cmp.w	r1, r0	# tmp177, tmp178
	jz	.L209		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1046:     if (part > 4)return false;
	ld.b	r1, [r13 + (-16)]	# tmp179, part
	mov.w	r0, 4	# tmp180,
	cmp.w	r1, r0	# tmp179, tmp180
	jse	.L210		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1046:     if (part > 4)return false;
	xor.w	r0, r0	# _147
	j	.L211		#
.L210:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1047:     if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
	mov.w	r0, sp	# tmp181,
	mov.w	r1, cacheBuffer_	# tmp182,
	st.w	[r0 + (4)], r1	#, tmp182
	ld.w	r1, [r13 + (-4)]	# tmp183, volumeStartBlock
	st.w	[r0], r1	#, tmp183
	call	readBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1047:     if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
	zex.b	r1, r0	# tmp184, _1
	xor.w	r0, r0	# tmp185
	cmp.w	r1, r0	# tmp184, tmp185
	jnz	.L212		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1047:     if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
	xor.w	r0, r0	# _147
	j	.L211		#
.L212:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1049:     part_t* p = (part_t *)&cacheBuffer_.data[446 + ((part - 1)*sizeof(part_t))];
	ld.b	r0, [r13 + (-16)]	# _2, part
	add.w	r0, -1 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1049:     part_t* p = (part_t *)&cacheBuffer_.data[446 + ((part - 1)*sizeof(part_t))];
	mov.w	r1, 4	# tmp186,
	shl.w	r0, r1	# _5, tmp186
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1049:     part_t* p = (part_t *)&cacheBuffer_.data[446 + ((part - 1)*sizeof(part_t))];
	mov.w	r1, 446	# tmp187,
	add.w	r0, r1 #222	# _6, tmp187
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1049:     part_t* p = (part_t *)&cacheBuffer_.data[446 + ((part - 1)*sizeof(part_t))];
	mov.w	r1, cacheBuffer_	# tmp189,
	add.w	r0, r1 #222	# tmp188, tmp189
	st.w	[r13 + (-8)], r0	# p, tmp188
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1054:     p->totalSectors = reverse32(p->totalSectors);
	ld.w	r0, [r13 + (-8)]	# tmp190, p
	ld.w	r0, [r0 + (12)]	# _7, p_158->totalSectors
	mov.w	r1, sp	# tmp191,
	st.w	[r1], r0	#, _7
	call	reverse32		#
	mov.w	r1, r0	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1054:     p->totalSectors = reverse32(p->totalSectors);
	ld.w	r0, [r13 + (-8)]	# tmp192, p
	st.w	[r0 + (12)], r1	# p_158->totalSectors, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1055:     p->firstSector = reverse32(p->firstSector);
	ld.w	r0, [r13 + (-8)]	# tmp193, p
	ld.w	r0, [r0 + (8)]	# _9, p_158->firstSector
	mov.w	r1, sp	# tmp194,
	st.w	[r1], r0	#, _9
	call	reverse32		#
	mov.w	r1, r0	# _10,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1055:     p->firstSector = reverse32(p->firstSector);
	ld.w	r0, [r13 + (-8)]	# tmp195, p
	st.w	[r0 + (8)], r1	# p_158->firstSector, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1059:     if ((p->boot & 0X7F) !=0  ||
	ld.w	r0, [r13 + (-8)]	# tmp196, p
	ld.b	r0, [r0]	# _11, p_158->boot
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1059:     if ((p->boot & 0X7F) !=0  ||
	zex.b	r1, r0	# _12, _11
	mov.w	r0, 127	# tmp197,
	and.w	r1, r0	# _13, tmp197
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1059:     if ((p->boot & 0X7F) !=0  ||
	xor.w	r0, r0	# tmp198
	cmp.w	r1, r0	# _13, tmp198
	jnz	.L213		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1060:       p->totalSectors < 100 ||
	ld.w	r0, [r13 + (-8)]	# tmp199, p
	ld.w	r1, [r0 + (12)]	# _14, p_158->totalSectors
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1059:     if ((p->boot & 0X7F) !=0  ||
	mov.w	r0, 99	# tmp200,
	cmp.w	r1, r0	# _14, tmp200
	jse	.L213		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1061:       p->firstSector == 0) {
	ld.w	r0, [r13 + (-8)]	# tmp201, p
	ld.w	r1, [r0 + (8)]	# _15, p_158->firstSector
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1060:       p->totalSectors < 100 ||
	xor.w	r0, r0	# tmp202
	cmp.w	r1, r0	# _15, tmp202
	jnz	.L214		#
.L213:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1063:       return false;
	xor.w	r0, r0	# _147
	j	.L211		#
.L214:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1065:     volumeStartBlock = p->firstSector;
	ld.w	r0, [r13 + (-8)]	# tmp203, p
	ld.w	r0, [r0 + (8)]	# tmp204, p_158->firstSector
	st.w	[r13 + (-4)], r0	# volumeStartBlock, tmp204
.L209:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1072:   if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
	mov.w	r0, sp	# tmp205,
	mov.w	r1, cacheBuffer_	# tmp206,
	st.w	[r0 + (4)], r1	#, tmp206
	ld.w	r1, [r13 + (-4)]	# tmp207, volumeStartBlock
	st.w	[r0], r1	#, tmp207
	call	readBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1072:   if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
	zex.b	r1, r0	# tmp208, _16
	xor.w	r0, r0	# tmp209
	cmp.w	r1, r0	# tmp208, tmp209
	jnz	.L215		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1072:   if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
	xor.w	r0, r0	# _147
	j	.L211		#
.L215:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1074:   bpb.bytesPerSector = (cacheBuffer_.data[12]<<8) + cacheBuffer_.data[11];
	ld.b	r0, [cacheBuffer_+12]	# _17, cacheBuffer_
	zex.b	r0, r0	# tmp210, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1074:   bpb.bytesPerSector = (cacheBuffer_.data[12]<<8) + cacheBuffer_.data[11];
	mov.w	r1, 8	# tmp212,
	shl.w	r0, r1	# tmp211, tmp212
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1074:   bpb.bytesPerSector = (cacheBuffer_.data[12]<<8) + cacheBuffer_.data[11];
	ld.b	r1, [cacheBuffer_+11]	# _20, cacheBuffer_
	zex.b	r1, r1	# tmp213, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1074:   bpb.bytesPerSector = (cacheBuffer_.data[12]<<8) + cacheBuffer_.data[11];
	add.w	r0, r1 #222	# tmp214, tmp215
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1074:   bpb.bytesPerSector = (cacheBuffer_.data[12]<<8) + cacheBuffer_.data[11];
	st.s	[bpb], r0	# bpb.bytesPerSector, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1075:   bpb.sectorsPerCluster = cacheBuffer_.data[13];
	ld.b	r0, [cacheBuffer_+13]	# _23, cacheBuffer_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1075:   bpb.sectorsPerCluster = cacheBuffer_.data[13];
	st.b	[bpb+2], r0	# bpb.sectorsPerCluster, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1076:   bpb.reservedSectorCount = (cacheBuffer_.data[15]<<8) + cacheBuffer_.data[14];
	ld.b	r0, [cacheBuffer_+15]	# _24, cacheBuffer_
	zex.b	r0, r0	# tmp216, _24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1076:   bpb.reservedSectorCount = (cacheBuffer_.data[15]<<8) + cacheBuffer_.data[14];
	mov.w	r1, 8	# tmp218,
	shl.w	r0, r1	# tmp217, tmp218
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1076:   bpb.reservedSectorCount = (cacheBuffer_.data[15]<<8) + cacheBuffer_.data[14];
	ld.b	r1, [cacheBuffer_+14]	# _27, cacheBuffer_
	zex.b	r1, r1	# tmp219, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1076:   bpb.reservedSectorCount = (cacheBuffer_.data[15]<<8) + cacheBuffer_.data[14];
	add.w	r0, r1 #222	# tmp220, tmp221
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1076:   bpb.reservedSectorCount = (cacheBuffer_.data[15]<<8) + cacheBuffer_.data[14];
	st.s	[bpb+4], r0	# bpb.reservedSectorCount, _29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1077:   bpb.fatCount = cacheBuffer_.data[16];
	ld.b	r0, [cacheBuffer_+16]	# _30, cacheBuffer_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1077:   bpb.fatCount = cacheBuffer_.data[16];
	st.b	[bpb+6], r0	# bpb.fatCount, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1078:   bpb.sectorsPerFat16 = (cacheBuffer_.data[23]<<8) + cacheBuffer_.data[22];
	ld.b	r0, [cacheBuffer_+23]	# _31, cacheBuffer_
	zex.b	r0, r0	# tmp222, _31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1078:   bpb.sectorsPerFat16 = (cacheBuffer_.data[23]<<8) + cacheBuffer_.data[22];
	mov.w	r1, 8	# tmp224,
	shl.w	r0, r1	# tmp223, tmp224
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1078:   bpb.sectorsPerFat16 = (cacheBuffer_.data[23]<<8) + cacheBuffer_.data[22];
	ld.b	r1, [cacheBuffer_+22]	# _34, cacheBuffer_
	zex.b	r1, r1	# tmp225, _34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1078:   bpb.sectorsPerFat16 = (cacheBuffer_.data[23]<<8) + cacheBuffer_.data[22];
	add.w	r0, r1 #222	# tmp226, tmp227
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1078:   bpb.sectorsPerFat16 = (cacheBuffer_.data[23]<<8) + cacheBuffer_.data[22];
	st.s	[bpb+14], r0	# bpb.sectorsPerFat16, _36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	ld.b	r0, [cacheBuffer_+39]	# _37, cacheBuffer_
	zex.b	r0, r0	# _38, _37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	mov.w	r1, 24	# tmp228,
	shl.w	r0, r1	# _39, tmp228
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	ld.b	r1, [cacheBuffer_+38]	# _40, cacheBuffer_
	zex.b	r1, r1	# _41, _40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	mov.w	r2, 16	# tmp229,
	shl.w	r1, r2	# _42, tmp229
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	add.w	r0, r1 #222	# _43, _42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	ld.b	r1, [cacheBuffer_+37]	# _44, cacheBuffer_
	zex.b	r1, r1	# _45, _44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	mov.w	r2, 8	# tmp230,
	shl.w	r1, r2	# _46, tmp230
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	add.w	r0, r1 #222	# _47, _46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	ld.b	r1, [cacheBuffer_+36]	# _48, cacheBuffer_
	zex.b	r1, r1	# _49, _48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	add.w	r0, r1 #222	# _50, _49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1079:   bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
	st.w	[bpb+28], r0	# bpb.sectorsPerFat32, _51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1080:   bpb.rootDirEntryCount = (cacheBuffer_.data[18]<<8) + cacheBuffer_.data[17];
	ld.b	r0, [cacheBuffer_+18]	# _52, cacheBuffer_
	zex.b	r0, r0	# tmp231, _52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1080:   bpb.rootDirEntryCount = (cacheBuffer_.data[18]<<8) + cacheBuffer_.data[17];
	mov.w	r1, 8	# tmp233,
	shl.w	r0, r1	# tmp232, tmp233
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1080:   bpb.rootDirEntryCount = (cacheBuffer_.data[18]<<8) + cacheBuffer_.data[17];
	ld.b	r1, [cacheBuffer_+17]	# _55, cacheBuffer_
	zex.b	r1, r1	# tmp234, _55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1080:   bpb.rootDirEntryCount = (cacheBuffer_.data[18]<<8) + cacheBuffer_.data[17];
	add.w	r0, r1 #222	# tmp235, tmp236
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1080:   bpb.rootDirEntryCount = (cacheBuffer_.data[18]<<8) + cacheBuffer_.data[17];
	st.s	[bpb+8], r0	# bpb.rootDirEntryCount, _57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1081:   bpb.totalSectors16 = (cacheBuffer_.data[20]<<8) + cacheBuffer_.data[19];
	ld.b	r0, [cacheBuffer_+20]	# _58, cacheBuffer_
	zex.b	r0, r0	# tmp237, _58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1081:   bpb.totalSectors16 = (cacheBuffer_.data[20]<<8) + cacheBuffer_.data[19];
	mov.w	r1, 8	# tmp239,
	shl.w	r0, r1	# tmp238, tmp239
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1081:   bpb.totalSectors16 = (cacheBuffer_.data[20]<<8) + cacheBuffer_.data[19];
	ld.b	r1, [cacheBuffer_+19]	# _61, cacheBuffer_
	zex.b	r1, r1	# tmp240, _61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1081:   bpb.totalSectors16 = (cacheBuffer_.data[20]<<8) + cacheBuffer_.data[19];
	add.w	r0, r1 #222	# tmp241, tmp242
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1081:   bpb.totalSectors16 = (cacheBuffer_.data[20]<<8) + cacheBuffer_.data[19];
	st.s	[bpb+10], r0	# bpb.totalSectors16, _63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	ld.b	r0, [cacheBuffer_+35]	# _64, cacheBuffer_
	zex.b	r0, r0	# _65, _64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	mov.w	r1, 24	# tmp243,
	shl.w	r0, r1	# _66, tmp243
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	ld.b	r1, [cacheBuffer_+34]	# _67, cacheBuffer_
	zex.b	r1, r1	# _68, _67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	mov.w	r2, 16	# tmp244,
	shl.w	r1, r2	# _69, tmp244
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	add.w	r0, r1 #222	# _70, _69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	ld.b	r1, [cacheBuffer_+33]	# _71, cacheBuffer_
	zex.b	r1, r1	# _72, _71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	mov.w	r2, 8	# tmp245,
	shl.w	r1, r2	# _73, tmp245
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	add.w	r0, r1 #222	# _74, _73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	ld.b	r1, [cacheBuffer_+32]	# _75, cacheBuffer_
	zex.b	r1, r1	# _76, _75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	add.w	r0, r1 #222	# _77, _76
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1082:   bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
	st.w	[bpb+24], r0	# bpb.totalSectors32, _78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	ld.b	r0, [cacheBuffer_+47]	# _79, cacheBuffer_
	zex.b	r0, r0	# _80, _79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	mov.w	r1, 24	# tmp246,
	shl.w	r0, r1	# _81, tmp246
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	ld.b	r1, [cacheBuffer_+46]	# _82, cacheBuffer_
	zex.b	r1, r1	# _83, _82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	mov.w	r2, 16	# tmp247,
	shl.w	r1, r2	# _84, tmp247
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	add.w	r0, r1 #222	# _85, _84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	ld.b	r1, [cacheBuffer_+45]	# _86, cacheBuffer_
	zex.b	r1, r1	# _87, _86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	mov.w	r2, 8	# tmp248,
	shl.w	r1, r2	# _88, tmp248
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	add.w	r0, r1 #222	# _89, _88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	ld.b	r1, [cacheBuffer_+44]	# _90, cacheBuffer_
	zex.b	r1, r1	# _91, _90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	add.w	r0, r1 #222	# _92, _91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1083:   bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];
	st.w	[bpb+36], r0	# bpb.fat32RootCluster, _93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1089:   if (bpb.bytesPerSector != 512 ||
	ld.s	r0, [bpb]	# _94, bpb.bytesPerSector
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1089:   if (bpb.bytesPerSector != 512 ||
	zex.s	r1, r0	# tmp249, _94
	mov.w	r0, 512	# tmp250,
	cmp.w	r1, r0	# tmp249, tmp250
	jnz	.L216		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1090:     bpb.fatCount == 0 ||
	ld.b	r0, [bpb+6]	# _95, bpb.fatCount
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1089:   if (bpb.bytesPerSector != 512 ||
	zex.b	r1, r0	# tmp251, _95
	xor.w	r0, r0	# tmp252
	cmp.w	r1, r0	# tmp251, tmp252
	jz	.L216		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1091:     bpb.reservedSectorCount == 0 ||
	ld.s	r0, [bpb+4]	# _96, bpb.reservedSectorCount
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1090:     bpb.fatCount == 0 ||
	zex.s	r1, r0	# tmp253, _96
	xor.w	r0, r0	# tmp254
	cmp.w	r1, r0	# tmp253, tmp254
	jz	.L216		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1092:     bpb.sectorsPerCluster == 0) {
	ld.b	r0, [bpb+2]	# _97, bpb.sectorsPerCluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1091:     bpb.reservedSectorCount == 0 ||
	zex.b	r1, r0	# tmp255, _97
	xor.w	r0, r0	# tmp256
	cmp.w	r1, r0	# tmp255, tmp256
	jnz	.L217		#
.L216:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1094:       return false;
	xor.w	r0, r0	# _147
	j	.L211		#
.L217:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1096:   fatCount_ = bpb.fatCount;
	ld.b	r0, [bpb+6]	# _98, bpb.fatCount
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1096:   fatCount_ = bpb.fatCount;
	st.b	[fatCount_], r0	# fatCount_, _98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1097:   blocksPerCluster_ = bpb.sectorsPerCluster;
	ld.b	r0, [bpb+2]	# _99, bpb.sectorsPerCluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1097:   blocksPerCluster_ = bpb.sectorsPerCluster;
	st.b	[blocksPerCluster_], r0	# blocksPerCluster_, _99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1100:   clusterSizeShift_ = 0;
	xor.w	r0, r0	# tmp257
	st.b	[clusterSizeShift_], r0	# clusterSizeShift_, tmp257
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1101:   while (blocksPerCluster_ != (1 << clusterSizeShift_)) {
	j	.L218		#
.L219:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1103:     if (clusterSizeShift_++ > 7) return false;
	ld.b	r0, [clusterSizeShift_]	# clusterSizeShift_.83_100, clusterSizeShift_
	mov.w	r1, r0	# tmp258,
	add.w	r1, 1 #111	# tmp258,
	st.b	[clusterSizeShift_], r1	# clusterSizeShift_, _102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1103:     if (clusterSizeShift_++ > 7) return false;
	zex.b	r1, r0	# tmp259, clusterSizeShift_.83_100
	mov.w	r0, 7	# tmp260,
	cmp.w	r1, r0	# tmp259, tmp260
	jse	.L218		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1103:     if (clusterSizeShift_++ > 7) return false;
	xor.w	r0, r0	# _147
	j	.L211		#
.L218:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1101:   while (blocksPerCluster_ != (1 << clusterSizeShift_)) {
	ld.b	r0, [blocksPerCluster_]	# blocksPerCluster_.85_103, blocksPerCluster_
	zex.b	r1, r0	# _104, blocksPerCluster_.85_103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1101:   while (blocksPerCluster_ != (1 << clusterSizeShift_)) {
	ld.b	r0, [clusterSizeShift_]	# clusterSizeShift_.86_105, clusterSizeShift_
	zex.b	r2, r0	# _106, clusterSizeShift_.86_105
	mov.w	r0, 1	# tmp261,
	shl.w	r0, r2	# _107, _106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1101:   while (blocksPerCluster_ != (1 << clusterSizeShift_)) {
	cmp.w	r1, r0	# _104, _107
	jnz	.L219		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1105:   blocksPerFat_ = bpb.sectorsPerFat16 ?
	ld.s	r0, [bpb+14]	# _108, bpb.sectorsPerFat16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1106:                     bpb.sectorsPerFat16 : bpb.sectorsPerFat32;
	zex.s	r1, r0	# tmp262, _108
	xor.w	r0, r0	# tmp263
	cmp.w	r1, r0	# tmp262, tmp263
	jz	.L220		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1106:                     bpb.sectorsPerFat16 : bpb.sectorsPerFat32;
	ld.s	r0, [bpb+14]	# _109, bpb.sectorsPerFat16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1106:                     bpb.sectorsPerFat16 : bpb.sectorsPerFat32;
	zex.s	r0, r0	# iftmp.87_148, _109
	j	.L221		#
.L220:
	ld.w	r0, [bpb+28]	# iftmp.87_148, bpb.sectorsPerFat32
.L221:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1105:   blocksPerFat_ = bpb.sectorsPerFat16 ?
	st.w	[blocksPerFat_], r0	# blocksPerFat_, iftmp.87_148
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1108:   fatStartBlock_ = volumeStartBlock + bpb.reservedSectorCount;
	ld.s	r0, [bpb+4]	# _110, bpb.reservedSectorCount
	zex.s	r0, r0	# _111, _110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1108:   fatStartBlock_ = volumeStartBlock + bpb.reservedSectorCount;
	ld.w	r1, [r13 + (-4)]	# tmp264, volumeStartBlock
	add.w	r0, r1 #222	# _112, tmp264
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1108:   fatStartBlock_ = volumeStartBlock + bpb.reservedSectorCount;
	st.w	[fatStartBlock_], r0	# fatStartBlock_, _112
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1109:   clusterSize_ = bpb.bytesPerSector * bpb.sectorsPerCluster;
	ld.s	r0, [bpb]	# _113, bpb.bytesPerSector
	zex.s	r0, r0	# _114, _113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1109:   clusterSize_ = bpb.bytesPerSector * bpb.sectorsPerCluster;
	ld.b	r1, [bpb+2]	# _115, bpb.sectorsPerCluster
	zex.b	r1, r1	# _116, _115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1109:   clusterSize_ = bpb.bytesPerSector * bpb.sectorsPerCluster;
	mul.w	r0, r1	# _117, _116
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1109:   clusterSize_ = bpb.bytesPerSector * bpb.sectorsPerCluster;
	st.w	[clusterSize_], r0	# clusterSize_, _118
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1116:   rootDirEntryCount_ = bpb.rootDirEntryCount;
	ld.s	r0, [bpb+8]	# _119, bpb.rootDirEntryCount
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1116:   rootDirEntryCount_ = bpb.rootDirEntryCount;
	st.s	[rootDirEntryCount_], r0	# rootDirEntryCount_, _119
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1119:   rootDirStart_ = fatStartBlock_ + bpb.fatCount * blocksPerFat_;
	ld.b	r0, [bpb+6]	# _120, bpb.fatCount
	zex.b	r0, r0	# _121, _120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1119:   rootDirStart_ = fatStartBlock_ + bpb.fatCount * blocksPerFat_;
	ld.w	r1, [blocksPerFat_]	# blocksPerFat_.88_122, blocksPerFat_
	mul.w	r0, r1	# _123, blocksPerFat_.88_122
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1119:   rootDirStart_ = fatStartBlock_ + bpb.fatCount * blocksPerFat_;
	ld.w	r1, [fatStartBlock_]	# fatStartBlock_.89_124, fatStartBlock_
	add.w	r0, r1 #222	# _125, fatStartBlock_.89_124
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1119:   rootDirStart_ = fatStartBlock_ + bpb.fatCount * blocksPerFat_;
	st.w	[rootDirStart_], r0	# rootDirStart_, _125
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1122:   dataStartBlock_ = rootDirStart_ + ((32 * bpb.rootDirEntryCount + 511)/512);
	ld.s	r0, [bpb+8]	# _126, bpb.rootDirEntryCount
	zex.s	r0, r0	# _127, _126
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1122:   dataStartBlock_ = rootDirStart_ + ((32 * bpb.rootDirEntryCount + 511)/512);
	mov.w	r1, 5	# tmp265,
	shl.w	r0, r1	# _128, tmp265
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1122:   dataStartBlock_ = rootDirStart_ + ((32 * bpb.rootDirEntryCount + 511)/512);
	mov.w	r1, 511	# tmp266,
	add.w	r0, r1 #222	# _129, tmp266
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1122:   dataStartBlock_ = rootDirStart_ + ((32 * bpb.rootDirEntryCount + 511)/512);
	xor.w	r1, r1	# tmp268
	cmp.w	r0, r1	# tmp267, tmp268
	jges	.L222		#
	mov.w	r1, 511	# tmp269,
	add.w	r0, r1 #222	# tmp267, tmp269
.L222:
	mov.w	r1, 9	# tmp271,
	shr.w	r0, r1	# tmp270, tmp271
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1122:   dataStartBlock_ = rootDirStart_ + ((32 * bpb.rootDirEntryCount + 511)/512);
	ld.w	r1, [rootDirStart_]	# rootDirStart_.90_132, rootDirStart_
	add.w	r0, r1 #222	# _133, rootDirStart_.90_132
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1122:   dataStartBlock_ = rootDirStart_ + ((32 * bpb.rootDirEntryCount + 511)/512);
	st.w	[dataStartBlock_], r0	# dataStartBlock_, _133
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1129:   uint32_t totalBlocks = bpb.totalSectors16 ?
	ld.s	r0, [bpb+10]	# _134, bpb.totalSectors16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1130:                            bpb.totalSectors16 : bpb.totalSectors32;
	zex.s	r1, r0	# tmp272, _134
	xor.w	r0, r0	# tmp273
	cmp.w	r1, r0	# tmp272, tmp273
	jz	.L223		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1130:                            bpb.totalSectors16 : bpb.totalSectors32;
	ld.s	r0, [bpb+10]	# _135, bpb.totalSectors16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1130:                            bpb.totalSectors16 : bpb.totalSectors32;
	zex.s	r0, r0	# iftmp.91_149, _135
	j	.L224		#
.L223:
	ld.w	r0, [bpb+24]	# iftmp.91_149, bpb.totalSectors32
.L224:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1129:   uint32_t totalBlocks = bpb.totalSectors16 ?
	st.w	[r13 + (-12)], r0	# totalBlocks, iftmp.91_149
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1132:   clusterCount_ = totalBlocks - (dataStartBlock_ - volumeStartBlock);
	ld.w	r1, [dataStartBlock_]	# dataStartBlock_.92_136, dataStartBlock_
	ld.w	r0, [r13 + (-4)]	# tmp274, volumeStartBlock
	sub.w	r0, r1 #222	# _137, dataStartBlock_.92_136
	ld.w	r1, [r13 + (-12)]	# tmp275, totalBlocks
	add.w	r0, r1 #222	# _138, tmp275
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1132:   clusterCount_ = totalBlocks - (dataStartBlock_ - volumeStartBlock);
	st.w	[clusterCount_], r0	# clusterCount_, _138
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1135:   clusterCount_ >>= clusterSizeShift_;
	ld.w	r0, [clusterCount_]	# clusterCount_.93_139, clusterCount_
	ld.b	r1, [clusterSizeShift_]	# clusterSizeShift_.94_140, clusterSizeShift_
	zex.b	r1, r1	# _141, clusterSizeShift_.94_140
	shr.w	r0, r1	# _142, _141
	st.w	[clusterCount_], r0	# clusterCount_, _142
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1138:   if (clusterCount_ < 4085) {
	ld.w	r1, [clusterCount_]	# clusterCount_.95_143, clusterCount_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1138:   if (clusterCount_ < 4085) {
	mov.w	r0, 4084	# tmp276,
	cmp.w	r1, r0	# clusterCount_.95_143, tmp276
	jg	.L225		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1139:     fatType_ = 12;
	mov.b	r0, 12	# tmp277,
	st.b	[fatType_], r0	# fatType_, tmp277
	j	.L226		#
.L225:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1140:   } else if (clusterCount_ < 65525) {
	ld.w	r1, [clusterCount_]	# clusterCount_.96_144, clusterCount_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1140:   } else if (clusterCount_ < 65525) {
	mov.w	r0, 65524	# tmp278,
	cmp.w	r1, r0	# clusterCount_.96_144, tmp278
	jg	.L227		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1141:     fatType_ = 16;
	mov.b	r0, 16	# tmp279,
	st.b	[fatType_], r0	# fatType_, tmp279
	j	.L226		#
.L227:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1143:     rootDirStart_ = bpb.fat32RootCluster;
	ld.w	r0, [bpb+36]	# _145, bpb.fat32RootCluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1143:     rootDirStart_ = bpb.fat32RootCluster;
	st.w	[rootDirStart_], r0	# rootDirStart_, _145
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1144:     fatType_ = 32;
	mov.b	r0, 32	# tmp280,
	st.b	[fatType_], r0	# fatType_, tmp280
.L226:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1150:   return true;
	mov.b	r0, 1	# _147,
.L211:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1151: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	volume_init, .-volume_init
	.section	.rodata
	.p2align	2
.LC0:
	.string	"create_file failed."
	.text
	.p2align	1
	.global	file_open
	.type	file_open, @function
file_open:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 48 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp35, mode
	st.b	[r13 + (-24)], r0	# mode, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1164:   int fail_counter = 0;
	xor.w	r0, r0	# tmp37
	st.w	[r13 + (-8)], r0	# fail_counter, tmp37
.L229:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1168:   if (mode != O_READ && mode != O_WRITE)
	ld.b	r1, [r13 + (-24)]	# tmp38, mode
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L230		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1168:   if (mode != O_READ && mode != O_WRITE)
	ld.b	r1, [r13 + (-24)]	# tmp40, mode
	mov.w	r0, 1	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L230		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1173:     return 0;
	xor.w	r0, r0	# _10
	j	.L238		#
.L230:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1175:   if (strlen(filename) > 12)
	mov.w	r1, sp	# tmp42,
	ld.w	r0, [r13 + (8)]	# tmp43, filename
	st.w	[r1], r0	#, tmp43
	call	strlen		#
	mov.w	r1, r0	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1175:   if (strlen(filename) > 12)
	mov.w	r0, 12	# tmp44,
	cmp.w	r1, r0	# _1, tmp44
	jses	.L232		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1180:     return 0;
	xor.w	r0, r0	# _10
	j	.L238		#
.L232:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1182:   make83Name(filename, FAT16_filename);
	mov.w	r0, sp	# tmp45,
	mov.w	r1, r13	# tmp46,
	add.w	r1, -20 #111	# tmp46,
	st.w	[r0 + (4)], r1	#, tmp46
	ld.w	r1, [r13 + (8)]	# tmp47, filename
	st.w	[r0], r1	#, tmp47
	call	make83Name		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1189:   file_exists = getFile(&(fd->dir_entry), g_block_buf, FAT16_filename, 11);
	ld.w	r1, [r13 + (12)]	# _2, fd
	mov.w	r0, sp	# tmp48,
	mov.w	r2, 11	# tmp49,
	st.w	[r0 + (12)], r2	#, tmp49
	mov.w	r2, r13	# tmp50,
	add.w	r2, -20 #111	# tmp50,
	st.w	[r0 + (8)], r2	#, tmp50
	mov.w	r2, g_block_buf	# tmp51,
	st.w	[r0 + (4)], r2	#, tmp51
	st.w	[r0], r1	#, _2
	call	getFile		#
	st.b	[r13 + (-1)], r0	# file_exists,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1190:   if (mode == O_WRITE) 
	ld.b	r1, [r13 + (-24)]	# tmp52, mode
	mov.w	r0, 1	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L233		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1192:     if (file_exists)
	ld.b	r1, [r13 + (-1)]	# tmp54, file_exists
	xor.w	r0, r0	# tmp55
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L234		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1194:       if (!file_delete(fd))
	mov.w	r1, sp	# tmp56,
	ld.w	r0, [r13 + (12)]	# tmp57, fd
	st.w	[r1], r0	#, tmp57
	call	file_delete		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1194:       if (!file_delete(fd))
	zex.b	r1, r0	# tmp58, _3
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L239		#
.L234:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1203:     if (!create_file(&(fd->dir_entry), FAT16_filename, 11, g_block_buf))
	ld.w	r1, [r13 + (12)]	# _4, fd
	mov.w	r0, sp	# tmp60,
	mov.w	r2, g_block_buf	# tmp61,
	st.w	[r0 + (12)], r2	#, tmp61
	mov.w	r2, 11	# tmp62,
	st.w	[r0 + (8)], r2	#, tmp62
	mov.w	r2, r13	# tmp63,
	add.w	r2, -20 #111	# tmp63,
	st.w	[r0 + (4)], r2	#, tmp63
	st.w	[r0], r1	#, _4
	call	create_file		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1203:     if (!create_file(&(fd->dir_entry), FAT16_filename, 11, g_block_buf))
	zex.b	r1, r0	# tmp64, _5
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L236		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1205:       printf("create_file failed.\n");
	mov.w	r1, sp	# tmp66,
	mov.w	r0, .LC0	# tmp67,
	st.w	[r1], r0	#, tmp67
	call	puts		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1206:       goto fail_open;
	j	.L235		#
.L236:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1208:     file_exists = 1;
	mov.b	r0, 1	# tmp68,
	st.b	[r13 + (-1)], r0	# file_exists, tmp68
.L233:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1211:   fd->curr_cluster = fd->dir_entry.first_cluster;
	ld.w	r0, [r13 + (12)]	# tmp69, fd
	ld.s	r1, [r0 + (28)]	# _6, fd_22(D)->dir_entry.first_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1211:   fd->curr_cluster = fd->dir_entry.first_cluster;
	ld.w	r0, [r13 + (12)]	# tmp70, fd
	st.s	[r0 + (48)], r1	# fd_22(D)->curr_cluster, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1212:   fd->position = 0;
	ld.w	r0, [r13 + (12)]	# tmp71, fd
	xor.w	r1, r1	# tmp72
	st.w	[r0 + (44)], r1	# fd_22(D)->position, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1214:   return file_exists;
	ld.b	r0, [r13 + (-1)]	# _10, file_exists
	j	.L238		#
.L239:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1199:         goto fail_open;
	nop	
.L235:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1216:   if (++fail_counter < FAIL_COUNTER_MAX)
	ld.w	r0, [r13 + (-8)]	# tmp74, fail_counter
	add.w	r0, 1 #111	# tmp73,
	st.w	[r13 + (-8)], r0	# fail_counter, tmp73
	ld.w	r1, [r13 + (-8)]	# tmp75, fail_counter
	mov.w	r0, 1	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jgs	.L237		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1218:     delay(fail_counter*2);
	ld.w	r0, [r13 + (-8)]	# tmp77, fail_counter
	add.w	r0, r0 #222	# tmp78, tmp77
	mov.w	r1, sp	# tmp79,
	st.w	[r1], r0	#, _7
	call	delay		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1219:     goto open_again;
	j	.L229		#
.L237:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1221:   return 0;
	xor.w	r0, r0	# _10
.L238:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1222: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	file_open, .-file_open
	.p2align	1
	.global	file_read
	.type	file_read, @function
file_read:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 76 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp63, length
	st.s	[r13 + (-52)], r0	# length, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1245:   uint32_t fd_position = fd->position;
	ld.w	r0, [r13 + (8)]	# tmp65, fd
	ld.w	r0, [r0 + (44)]	# tmp66, fd_52(D)->position
	st.w	[r13 + (-24)], r0	# fd_position, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1246:   uint16_t fd_curr_cluster = fd->curr_cluster;
	ld.w	r0, [r13 + (8)]	# tmp67, fd
	ld.s	r0, [r0 + (48)]	# tmp68, fd_52(D)->curr_cluster
	st.s	[r13 + (-26)], r0	# fd_curr_cluster, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1247:   uint32_t fd_dsect = fd->dsect;
	ld.w	r0, [r13 + (8)]	# tmp69, fd
	ld.w	r0, [r0 + (52)]	# tmp70, fd_52(D)->dsect
	st.w	[r13 + (-32)], r0	# fd_dsect, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1248: 	int fail_counter = 0;
	xor.w	r0, r0	# tmp71
	st.w	[r13 + (-20)], r0	# fail_counter, tmp71
.L241:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1251:   rbuff = buf;
	ld.w	r0, [r13 + (12)]	# tmp72, buf
	st.w	[r13 + (-12)], r0	# rbuff, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1252:   rlen = length;
	ld.s	r0, [r13 + (-52)]	# tmp73, length
	st.s	[r13 + (-14)], r0	# rlen, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1253:   fd->position = fd_position;
	ld.w	r0, [r13 + (8)]	# tmp74, fd
	ld.w	r1, [r13 + (-24)]	# tmp75, fd_position
	st.w	[r0 + (44)], r1	# fd_52(D)->position, tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1254:   fd->curr_cluster = fd_curr_cluster;
	ld.w	r0, [r13 + (8)]	# tmp76, fd
	ld.s	r1, [r13 + (-26)]	# tmp77, fd_curr_cluster
	st.s	[r0 + (48)], r1	# fd_52(D)->curr_cluster, tmp77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1255:   fd->dsect = fd_dsect;
	ld.w	r0, [r13 + (8)]	# tmp78, fd
	ld.w	r1, [r13 + (-32)]	# tmp79, fd_dsect
	st.w	[r0 + (52)], r1	# fd_52(D)->dsect, tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1256: 	br = 0;
	xor.w	r0, r0	# tmp80
	st.s	[r13 + (-2)], r0	# br, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1261: 	remain = fd->dir_entry.filesize - fd->position;
	ld.w	r0, [r13 + (8)]	# tmp81, fd
	ld.w	r0, [r0 + (32)]	# _1, fd_52(D)->dir_entry.filesize
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1261: 	remain = fd->dir_entry.filesize - fd->position;
	ld.w	r1, [r13 + (8)]	# tmp82, fd
	ld.w	r1, [r1 + (44)]	# _2, fd_52(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1261: 	remain = fd->dir_entry.filesize - fd->position;
	sub.w	r0, r1 #222	# tmp83, _2
	st.w	[r13 + (-36)], r0	# remain, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1262: 	if (rlen > remain) rlen = (uint16_t)remain;			/* Truncate btr by remaining bytes */
	ld.s	r0, [r13 + (-14)]	# _3, rlen
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1262: 	if (rlen > remain) rlen = (uint16_t)remain;			/* Truncate btr by remaining bytes */
	ld.w	r1, [r13 + (-36)]	# tmp84, remain
	cmp.w	r1, r0	# tmp84, _3
	jge	.L243		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1262: 	if (rlen > remain) rlen = (uint16_t)remain;			/* Truncate btr by remaining bytes */
	ld.w	r0, [r13 + (-36)]	# tmp85, remain
	st.s	[r13 + (-14)], r0	# rlen, tmp86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1264: 	while (rlen)	{									/* Repeat until all data transferred */
	j	.L243		#
.L254:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1266: 		if ((fd->position % 512) == 0) {				/* On the sector boundary? */
	ld.w	r0, [r13 + (8)]	# tmp87, fd
	ld.w	r1, [r0 + (44)]	# _4, fd_52(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1266: 		if ((fd->position % 512) == 0) {				/* On the sector boundary? */
	mov.w	r0, 511	# tmp88,
	and.w	r1, r0	# _5, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1266: 		if ((fd->position % 512) == 0) {				/* On the sector boundary? */
	xor.w	r0, r0	# tmp89
	cmp.w	r1, r0	# _5, tmp89
	jnz	.L244		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1267: 			cs = (uint8_t)(fd->position / 512 & (bpb.sectorsPerCluster - 1));	/* Sector offset in the cluster */
	ld.w	r0, [r13 + (8)]	# tmp90, fd
	ld.w	r0, [r0 + (44)]	# _6, fd_52(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1267: 			cs = (uint8_t)(fd->position / 512 & (bpb.sectorsPerCluster - 1));	/* Sector offset in the cluster */
	mov.w	r1, 9	# tmp91,
	shr.w	r0, r1	# _7, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1267: 			cs = (uint8_t)(fd->position / 512 & (bpb.sectorsPerCluster - 1));	/* Sector offset in the cluster */
	ld.b	r1, [bpb+2]	# _9, bpb.sectorsPerCluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1267: 			cs = (uint8_t)(fd->position / 512 & (bpb.sectorsPerCluster - 1));	/* Sector offset in the cluster */
	add.w	r1, -1 #111	# tmp92,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1267: 			cs = (uint8_t)(fd->position / 512 & (bpb.sectorsPerCluster - 1));	/* Sector offset in the cluster */
	and.w	r0, r1	# tmp93, _10
	st.b	[r13 + (-37)], r0	# cs, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1268: 			if (!cs) {								/* On the cluster boundary? */
	ld.b	r1, [r13 + (-37)]	# tmp95, cs
	xor.w	r0, r0	# tmp96
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L245		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1269: 				if (fd->position == 0) {				/* On the top of the file? */
	ld.w	r0, [r13 + (8)]	# tmp97, fd
	ld.w	r1, [r0 + (44)]	# _11, fd_52(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1269: 				if (fd->position == 0) {				/* On the top of the file? */
	xor.w	r0, r0	# tmp98
	cmp.w	r1, r0	# _11, tmp98
	jnz	.L246		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1270: 					clst = fd->dir_entry.first_cluster;
	ld.w	r0, [r13 + (8)]	# tmp99, fd
	ld.s	r0, [r0 + (28)]	# tmp100, fd_52(D)->dir_entry.first_cluster
	st.s	[r13 + (-4)], r0	# clst, tmp100
	j	.L247		#
.L246:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1272: 					clst = get_next_from_fat(fd, fd->curr_cluster);
	ld.w	r0, [r13 + (8)]	# tmp101, fd
	ld.s	r0, [r0 + (48)]	# _12, fd_52(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1272: 					clst = get_next_from_fat(fd, fd->curr_cluster);
	zex.s	r1, r0	# _13, _12
	mov.w	r0, sp	# tmp102,
	st.w	[r0 + (4)], r1	#, _13
	ld.w	r1, [r13 + (8)]	# tmp103, fd
	st.w	[r0], r1	#, tmp103
	call	get_next_from_fat		#
	st.s	[r13 + (-4)], r0	# clst,
.L247:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1275: 				if ((clst <= 1) || (clst > 30000)) { 
	ld.s	r1, [r13 + (-4)]	# tmp104, clst
	mov.w	r0, 1	# tmp105,
	cmp.w	r1, r0	# tmp104, tmp105
	jse	.L257		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1275: 				if ((clst <= 1) || (clst > 30000)) { 
	ld.s	r1, [r13 + (-4)]	# tmp106, clst
	mov.w	r0, 30000	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jg	.L257		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1281: 				fd->curr_cluster = clst;				/* Update current cluster */
	ld.w	r0, [r13 + (8)]	# tmp108, fd
	ld.s	r1, [r13 + (-4)]	# tmp109, clst
	st.s	[r0 + (48)], r1	# fd_52(D)->curr_cluster, tmp109
.L245:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1285: 			sect = clust2sect(fd, fd->curr_cluster);		/* Get current sector */
	ld.w	r0, [r13 + (8)]	# tmp110, fd
	ld.s	r0, [r0 + (48)]	# _14, fd_52(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1285: 			sect = clust2sect(fd, fd->curr_cluster);		/* Get current sector */
	zex.s	r1, r0	# _15, _14
	mov.w	r0, sp	# tmp111,
	st.w	[r0 + (4)], r1	#, _15
	ld.w	r1, [r13 + (8)]	# tmp112, fd
	st.w	[r0], r1	#, tmp112
	call	clust2sect		#
	st.w	[r13 + (-44)], r0	# sect,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1286: 			if (!sect) {
	ld.w	r1, [r13 + (-44)]	# tmp113, sect
	xor.w	r0, r0	# tmp114
	cmp.w	r1, r0	# tmp113, tmp114
	jz	.L258		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1292: 			fd->dsect = sect + cs;
	ld.b	r1, [r13 + (-37)]	# _16, cs
	ld.w	r0, [r13 + (-44)]	# tmp115, sect
	add.w	r1, r0 #222	# _17, tmp115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1292: 			fd->dsect = sect + cs;
	ld.w	r0, [r13 + (8)]	# tmp116, fd
	st.w	[r0 + (52)], r1	# fd_52(D)->dsect, _17
.L244:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1295: 		rcnt = 512 - (uint8_t)fd->position % 512;			/* Get partial sector data from sector buffer */
	ld.w	r0, [r13 + (8)]	# tmp117, fd
	ld.w	r0, [r0 + (44)]	# _18, fd_52(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1295: 		rcnt = 512 - (uint8_t)fd->position % 512;			/* Get partial sector data from sector buffer */
	zex.b	r1, r0	# _20, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1295: 		rcnt = 512 - (uint8_t)fd->position % 512;			/* Get partial sector data from sector buffer */
	mov.w	r0, 512	# tmp118,
	sub.w	r0, r1 #222	# _21, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1295: 		rcnt = 512 - (uint8_t)fd->position % 512;			/* Get partial sector data from sector buffer */
	st.w	[r13 + (-8)], r0	# rcnt, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1296: 		if (rcnt > rlen) 
	ld.s	r0, [r13 + (-14)]	# _22, rlen
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1296: 		if (rcnt > rlen) 
	ld.w	r1, [r13 + (-8)]	# tmp119, rcnt
	cmp.w	r1, r0	# tmp119, _22
	jse	.L252		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1297:       rcnt = rlen;
	ld.s	r0, [r13 + (-14)]	# tmp120, rlen
	st.w	[r13 + (-8)], r0	# rcnt, tmp120
.L252:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1298: 		dr = readData(fd->dsect, fd->position % 512, rcnt, rbuff);//, (UINT)fs->fptr % 512, rcnt);
	ld.w	r0, [r13 + (8)]	# tmp121, fd
	ld.w	r1, [r0 + (52)]	# _23, fd_52(D)->dsect
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1298: 		dr = readData(fd->dsect, fd->position % 512, rcnt, rbuff);//, (UINT)fs->fptr % 512, rcnt);
	ld.w	r0, [r13 + (8)]	# tmp122, fd
	ld.w	r0, [r0 + (44)]	# _24, fd_52(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1298: 		dr = readData(fd->dsect, fd->position % 512, rcnt, rbuff);//, (UINT)fs->fptr % 512, rcnt);
	zex.s	r2, r0	# _26, _25
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1298: 		dr = readData(fd->dsect, fd->position % 512, rcnt, rbuff);//, (UINT)fs->fptr % 512, rcnt);
	mov.w	r0, 511	# tmp123,
	and.w	r2, r0	# _27, tmp123
	ld.w	r0, [r13 + (-8)]	# tmp124, rcnt
	zex.s	r3, r0	# _29, _28
	mov.w	r0, sp	# tmp125,
	ld.w	r4, [r13 + (-12)]	# tmp126, rbuff
	st.w	[r0 + (12)], r4	#, tmp126
	st.w	[r0 + (8)], r3	#, _29
	st.w	[r0 + (4)], r2	#, _27
	st.w	[r0], r1	#, _23
	call	readData		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1298: 		dr = readData(fd->dsect, fd->position % 512, rcnt, rbuff);//, (UINT)fs->fptr % 512, rcnt);
	zex.b	r0, r0	# tmp127, _30
	st.w	[r13 + (-48)], r0	# dr, tmp127
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1299: 		if (dr == 0) {
	ld.w	r1, [r13 + (-48)]	# tmp128, dr
	xor.w	r0, r0	# tmp129
	cmp.w	r1, r0	# tmp128, tmp129
	jz	.L259		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1305: 		fd->position += rcnt;							/* Advances file read pointer */
	ld.w	r0, [r13 + (8)]	# tmp130, fd
	ld.w	r1, [r0 + (44)]	# _31, fd_52(D)->position
	ld.w	r0, [r13 + (-8)]	# tmp131, rcnt
	add.w	r1, r0 #222	# _32, tmp131
	ld.w	r0, [r13 + (8)]	# tmp132, fd
	st.w	[r0 + (44)], r1	# fd_52(D)->position, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1306: 		rlen -= rcnt; 
	ld.w	r0, [r13 + (-8)]	# tmp133, rcnt
	mov.w	r1, r0	# _33, tmp133
	ld.s	r0, [r13 + (-14)]	# tmp134, rlen
	sub.w	r0, r1 #222	# tmp135, tmp136
	st.s	[r13 + (-14)], r0	# rlen, tmp137
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1307:     br += rcnt;					/* Update read counter */
	ld.w	r0, [r13 + (-8)]	# tmp138, rcnt
	mov.w	r1, r0	# _34, tmp138
	ld.s	r0, [r13 + (-2)]	# tmp139, br
	add.w	r0, r1 #222	# tmp140, tmp141
	st.s	[r13 + (-2)], r0	# br, tmp142
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1308: 		if (rbuff) 
	ld.w	r1, [r13 + (-12)]	# tmp143, rbuff
	xor.w	r0, r0	# tmp144
	cmp.w	r1, r0	# tmp143, tmp144
	jz	.L243		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1309:       rbuff += rcnt;					/* Advances the data pointer if destination is memory */
	ld.w	r0, [r13 + (-12)]	# tmp146, rbuff
	ld.w	r1, [r13 + (-8)]	# tmp147, rcnt
	add.w	r0, r1 #222	# tmp145, tmp147
	st.w	[r13 + (-12)], r0	# rbuff, tmp145
.L243:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1264: 	while (rlen)	{									/* Repeat until all data transferred */
	ld.s	r1, [r13 + (-14)]	# tmp148, rlen
	xor.w	r0, r0	# tmp149
	cmp.w	r1, r0	# tmp148, tmp149
	jnz	.L254		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1313: 	return br;
	ld.s	r0, [r13 + (-2)]	# _43, br
	j	.L255		#
.L257:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1279:           goto fail_read;
	nop	
	j	.L250		#
.L258:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1290:         goto fail_read;
	nop	
	j	.L250		#
.L259:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1303:       goto fail_read;
	nop	
.L250:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1316:   if (++fail_counter < FAIL_COUNTER_MAX) {
	ld.w	r0, [r13 + (-20)]	# tmp151, fail_counter
	add.w	r0, 1 #111	# tmp150,
	st.w	[r13 + (-20)], r0	# fail_counter, tmp150
	ld.w	r1, [r13 + (-20)]	# tmp152, fail_counter
	mov.w	r0, 1	# tmp153,
	cmp.w	r1, r0	# tmp152, tmp153
	jgs	.L256		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1317:     delay(fail_counter * 2);
	ld.w	r0, [r13 + (-20)]	# tmp154, fail_counter
	add.w	r0, r0 #222	# tmp155, tmp154
	mov.w	r1, sp	# tmp156,
	st.w	[r1], r0	#, _35
	call	delay		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1318:     goto read_again;
	j	.L241		#
.L256:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1320:   return 0;
	xor.w	r0, r0	# _43
.L255:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1321: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	file_read, .-file_read
	.p2align	1
	.global	getDirEntry
	.type	getDirEntry, @function
getDirEntry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1329:   uint8_t *buf = g_block_buf;
	mov.w	r0, g_block_buf	# tmp111,
	st.w	[r13 + (-16)], r0	# buf, tmp111
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1331:   uint32_t counter = 0;
	xor.w	r0, r0	# tmp112
	st.w	[r13 + (-12)], r0	# counter, tmp112
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1333:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	xor.w	r0, r0	# tmp113
	st.w	[r13 + (-4)], r0	# i, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1333:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	j	.L261		#
.L272:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1340:     b = readBlock(rootDirStart_ + i, g_block_buf);
	ld.w	r1, [rootDirStart_]	# rootDirStart_.97_1, rootDirStart_
	ld.w	r0, [r13 + (-4)]	# i.98_2, i
	add.w	r1, r0 #222	# _3, i.98_2
	mov.w	r0, sp	# tmp114,
	mov.w	r2, g_block_buf	# tmp115,
	st.w	[r0 + (4)], r2	#, tmp115
	st.w	[r0], r1	#, _3
	call	readBlock		#
	st.b	[r13 + (-17)], r0	# b,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1346:     for(j = 0; j < 16; j++)
	xor.w	r0, r0	# tmp116
	st.w	[r13 + (-8)], r0	# j, tmp116
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1346:     for(j = 0; j < 16; j++)
	j	.L262		#
.L271:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp117, j
	mov.w	r1, 5	# tmp118,
	shl.w	r0, r1	# _4, tmp118
	mov.w	r1, r0	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-16)]	# tmp119, buf
	add.w	r0, r1 #222	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _7, *_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp120, _7
	xor.w	r0, r0	# tmp121
	cmp.w	r1, r0	# tmp120, tmp121
	jz	.L274		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp122, j
	mov.w	r1, 5	# tmp123,
	shl.w	r0, r1	# _8, tmp123
	mov.w	r1, r0	# _9, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-16)]	# tmp124, buf
	add.w	r0, r1 #222	# _10, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _11, *_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp125, _11
	mov.w	r0, 46	# tmp126,
	cmp.w	r1, r0	# tmp125, tmp126
	jz	.L274		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp127, j
	mov.w	r1, 5	# tmp128,
	shl.w	r0, r1	# _12, tmp128
	mov.w	r1, r0	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-16)]	# tmp129, buf
	add.w	r0, r1 #222	# _14, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _15, *_14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp130, _15
	mov.w	r0, 229	# tmp131,
	cmp.w	r1, r0	# tmp130, tmp131
	jz	.L274		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.w	r0, [r13 + (-8)]	# tmp132, j
	mov.w	r1, 5	# tmp133,
	shl.w	r0, r1	# _16, tmp133
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	mov.w	r1, r0	# _18, _17
	add.w	r1, 11 #111	# _18,
	ld.w	r0, [r13 + (-16)]	# tmp134, buf
	add.w	r0, r1 #222	# _19, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	ld.b	r0, [r0]	# _20, *_19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1353:       if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
	zex.b	r1, r0	# tmp135, _20
	mov.w	r0, 15	# tmp136,
	cmp.w	r1, r0	# tmp135, tmp136
	jz	.L274		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1360:       if(counter == index)
	ld.w	r1, [r13 + (-12)]	# tmp137, counter
	ld.w	r0, [r13 + (12)]	# tmp138, index
	cmp.w	r1, r0	# tmp137, tmp138
	jnz	.L266		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1362:         file_size = *(buf + j*32 + 0x1c);
	ld.w	r0, [r13 + (-8)]	# tmp139, j
	mov.w	r1, 5	# tmp140,
	shl.w	r0, r1	# _21, tmp140
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1362:         file_size = *(buf + j*32 + 0x1c);
	mov.w	r1, r0	# _23, _22
	add.w	r1, 28 #111	# _23,
	ld.w	r0, [r13 + (-16)]	# tmp141, buf
	add.w	r0, r1 #222	# _24, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1362:         file_size = *(buf + j*32 + 0x1c);
	ld.b	r0, [r0]	# _25, *_24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1362:         file_size = *(buf + j*32 + 0x1c);
	zex.b	r0, r0	# tmp142, _25
	st.w	[r13 + (-24)], r0	# file_size, tmp142
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1363:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	ld.w	r0, [r13 + (-8)]	# tmp143, j
	mov.w	r1, 5	# tmp144,
	shl.w	r0, r1	# _26, tmp144
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1363:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	mov.w	r1, r0	# _28, _27
	add.w	r1, 29 #111	# _28,
	ld.w	r0, [r13 + (-16)]	# tmp145, buf
	add.w	r0, r1 #222	# _29, _28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1363:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	ld.b	r0, [r0]	# _30, *_29
	zex.b	r0, r0	# _31, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1363:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	mov.w	r1, 8	# tmp146,
	shl.w	r0, r1	# _32, tmp146
	mov.w	r1, r0	# _33, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1363:         file_size += *(buf + j*32 + 0x1c + 1)<<8;
	ld.w	r0, [r13 + (-24)]	# tmp148, file_size
	add.w	r0, r1 #222	# tmp147, _33
	st.w	[r13 + (-24)], r0	# file_size, tmp147
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1364:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	ld.w	r0, [r13 + (-8)]	# tmp149, j
	mov.w	r1, 5	# tmp150,
	shl.w	r0, r1	# _34, tmp150
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1364:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	mov.w	r1, r0	# _36, _35
	add.w	r1, 30 #111	# _36,
	ld.w	r0, [r13 + (-16)]	# tmp151, buf
	add.w	r0, r1 #222	# _37, _36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1364:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	ld.b	r0, [r0]	# _38, *_37
	zex.b	r0, r0	# _39, _38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1364:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	mov.w	r1, 16	# tmp152,
	shl.w	r0, r1	# _40, tmp152
	mov.w	r1, r0	# _41, _40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1364:         file_size += *(buf + j*32 + 0x1c + 2)<<16;
	ld.w	r0, [r13 + (-24)]	# tmp154, file_size
	add.w	r0, r1 #222	# tmp153, _41
	st.w	[r13 + (-24)], r0	# file_size, tmp153
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1365:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	ld.w	r0, [r13 + (-8)]	# tmp155, j
	mov.w	r1, 5	# tmp156,
	shl.w	r0, r1	# _42, tmp156
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1365:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	mov.w	r1, r0	# _44, _43
	add.w	r1, 31 #111	# _44,
	ld.w	r0, [r13 + (-16)]	# tmp157, buf
	add.w	r0, r1 #222	# _45, _44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1365:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	ld.b	r0, [r0]	# _46, *_45
	zex.b	r0, r0	# _47, _46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1365:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	mov.w	r1, 24	# tmp158,
	shl.w	r0, r1	# _48, tmp158
	mov.w	r1, r0	# _49, _48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1365:         file_size += *(buf + j*32 + 0x1c + 3)<<24;
	ld.w	r0, [r13 + (-24)]	# tmp160, file_size
	add.w	r0, r1 #222	# tmp159, _49
	st.w	[r13 + (-24)], r0	# file_size, tmp159
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1366:         cluster = *(buf + j*32 + 0x1a);
	ld.w	r0, [r13 + (-8)]	# tmp161, j
	mov.w	r1, 5	# tmp162,
	shl.w	r0, r1	# _50, tmp162
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1366:         cluster = *(buf + j*32 + 0x1a);
	mov.w	r1, r0	# _52, _51
	add.w	r1, 26 #111	# _52,
	ld.w	r0, [r13 + (-16)]	# tmp163, buf
	add.w	r0, r1 #222	# _53, _52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1366:         cluster = *(buf + j*32 + 0x1a);
	ld.b	r0, [r0]	# _54, *_53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1366:         cluster = *(buf + j*32 + 0x1a);
	zex.b	r0, r0	# tmp164, _54
	st.s	[r13 + (-26)], r0	# cluster, tmp165
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1367:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	ld.w	r0, [r13 + (-8)]	# tmp166, j
	mov.w	r1, 5	# tmp167,
	shl.w	r0, r1	# _55, tmp167
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1367:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	mov.w	r1, r0	# _57, _56
	add.w	r1, 27 #111	# _57,
	ld.w	r0, [r13 + (-16)]	# tmp168, buf
	add.w	r0, r1 #222	# _58, _57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1367:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	ld.b	r0, [r0]	# _59, *_58
	zex.b	r0, r0	# tmp169, _59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1367:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	mov.w	r1, 8	# tmp171,
	shl.w	r0, r1	# tmp170, tmp171
	mov.w	r1, r0	# _61, tmp170
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1367:         cluster += *(buf + j*32 + 0x1a + 1) << 8;
	ld.s	r0, [r13 + (-26)]	# tmp172, cluster
	add.w	r0, r1 #222	# tmp173, tmp174
	st.s	[r13 + (-26)], r0	# cluster, tmp175
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1371:         strncpy(filename_upper, (char*)(buf+j*32), 11);
	ld.w	r0, [r13 + (-8)]	# tmp176, j
	mov.w	r1, 5	# tmp177,
	shl.w	r0, r1	# _62, tmp177
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1371:         strncpy(filename_upper, (char*)(buf+j*32), 11);
	ld.w	r1, [r13 + (-16)]	# tmp178, buf
	add.w	r1, r0 #222	# _64, _63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1371:         strncpy(filename_upper, (char*)(buf+j*32), 11);
	mov.w	r0, sp	# tmp179,
	mov.w	r2, 11	# tmp180,
	st.w	[r0 + (8)], r2	#, tmp180
	st.w	[r0 + (4)], r1	#, _64
	mov.w	r1, r13	# tmp181,
	add.w	r1, -38 #111	# tmp181,
	st.w	[r0], r1	#, tmp181
	call	strncpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1372:         filename_upper[11] = '\0';
	xor.w	r0, r0	# tmp182
	st.b	[r13 + (-27)], r0	# filename_upper, tmp182
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1375:         memmove(fd->dir_entry.filename, filename_upper, 12);
	ld.w	r1, [r13 + (8)]	# _65, fd
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1375:         memmove(fd->dir_entry.filename, filename_upper, 12);
	mov.w	r0, sp	# tmp183,
	mov.w	r2, 12	# tmp184,
	st.w	[r0 + (8)], r2	#, tmp184
	mov.w	r2, r13	# tmp185,
	add.w	r2, -38 #111	# tmp185,
	st.w	[r0 + (4)], r2	#, tmp185
	st.w	[r0], r1	#, _65
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1376:         fd->dir_entry.attributes = *(buf + j*32 + 0x0b);
	ld.w	r0, [r13 + (-8)]	# tmp186, j
	mov.w	r1, 5	# tmp187,
	shl.w	r0, r1	# _66, tmp187
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1376:         fd->dir_entry.attributes = *(buf + j*32 + 0x0b);
	mov.w	r1, r0	# _68, _67
	add.w	r1, 11 #111	# _68,
	ld.w	r0, [r13 + (-16)]	# tmp188, buf
	add.w	r0, r1 #222	# _69, _68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1376:         fd->dir_entry.attributes = *(buf + j*32 + 0x0b);
	ld.b	r1, [r0]	# _70, *_69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1376:         fd->dir_entry.attributes = *(buf + j*32 + 0x0b);
	ld.w	r0, [r13 + (8)]	# tmp189, fd
	st.b	[r0 + (12)], r1	# fd_114(D)->dir_entry.attributes, _70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1377:         memmove(fd->dir_entry.unused_attr, buf + j*32 + 0x0c, 14);
	ld.w	r0, [r13 + (8)]	# tmp190, fd
	mov.w	r1, r0	# _71, tmp190
	add.w	r1, 13 #111	# _71,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1377:         memmove(fd->dir_entry.unused_attr, buf + j*32 + 0x0c, 14);
	ld.w	r0, [r13 + (-8)]	# tmp191, j
	mov.w	r2, 5	# tmp192,
	shl.w	r0, r2	# _72, tmp192
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1377:         memmove(fd->dir_entry.unused_attr, buf + j*32 + 0x0c, 14);
	add.w	r0, 12 #111	# _74,
	ld.w	r2, [r13 + (-16)]	# tmp193, buf
	add.w	r2, r0 #222	# _75, _74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1377:         memmove(fd->dir_entry.unused_attr, buf + j*32 + 0x0c, 14);
	mov.w	r0, sp	# tmp194,
	mov.w	r3, 14	# tmp195,
	st.w	[r0 + (8)], r3	#, tmp195
	st.w	[r0 + (4)], r2	#, _75
	st.w	[r0], r1	#, _71
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1378:         fd->dir_entry.filesize = file_size;
	ld.w	r0, [r13 + (8)]	# tmp196, fd
	ld.w	r1, [r13 + (-24)]	# tmp197, file_size
	st.w	[r0 + (32)], r1	# fd_114(D)->dir_entry.filesize, tmp197
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1379:         fd->dir_entry.block = rootDirStart_ + i;
	ld.w	r1, [rootDirStart_]	# rootDirStart_.99_76, rootDirStart_
	ld.w	r0, [r13 + (-4)]	# i.100_77, i
	add.w	r1, r0 #222	# _78, i.100_77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1379:         fd->dir_entry.block = rootDirStart_ + i;
	ld.w	r0, [r13 + (8)]	# tmp198, fd
	st.w	[r0 + (36)], r1	# fd_114(D)->dir_entry.block, _78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1380:         fd->dir_entry.slot = j;
	ld.w	r1, [r13 + (-8)]	# j.101_79, j
	ld.w	r0, [r13 + (8)]	# tmp199, fd
	st.w	[r0 + (40)], r1	# fd_114(D)->dir_entry.slot, j.101_79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1381:         fd->dir_entry.first_cluster = cluster;
	ld.w	r0, [r13 + (8)]	# tmp200, fd
	ld.s	r1, [r13 + (-26)]	# tmp201, cluster
	st.s	[r0 + (28)], r1	# fd_114(D)->dir_entry.first_cluster, tmp201
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1382:         fd->curr_cluster = cluster;
	ld.w	r0, [r13 + (8)]	# tmp202, fd
	ld.s	r1, [r13 + (-26)]	# tmp203, cluster
	st.s	[r0 + (48)], r1	# fd_114(D)->curr_cluster, tmp203
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1383:         if ((file_size > 2000000000) || (cluster > 65534))
	ld.w	r1, [r13 + (-24)]	# tmp204, file_size
	mov.w	r0, 2000000000	# tmp205,
	cmp.w	r1, r0	# tmp204, tmp205
	jg	.L267		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1383:         if ((file_size > 2000000000) || (cluster > 65534))
	ld.s	r1, [r13 + (-26)]	# tmp206, cluster
	mov.w	r0, 65535	# tmp207,
	cmp.w	r1, r0	# tmp206, tmp207
	jnz	.L268		#
.L267:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1384:           return 0;
	xor.w	r0, r0	# _89
	j	.L273		#
.L268:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1385:         return counter + 1;
	ld.w	r0, [r13 + (-12)]	# tmp208, counter
	add.w	r0, 1 #111	# _89,
	j	.L273		#
.L266:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1386:       } else if (counter > index) {
	ld.w	r1, [r13 + (-12)]	# tmp209, counter
	ld.w	r0, [r13 + (12)]	# tmp210, index
	cmp.w	r1, r0	# tmp209, tmp210
	jse	.L270		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1387:         return 0;
	xor.w	r0, r0	# _89
	j	.L273		#
.L270:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1389:       counter++;
	ld.w	r0, [r13 + (-12)]	# tmp212, counter
	add.w	r0, 1 #111	# tmp211,
	st.w	[r13 + (-12)], r0	# counter, tmp211
	j	.L265		#
.L274:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1355:         continue; // free, or deleted file/folder, or phantom entry for long names?
	nop	
.L265:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1346:     for(j = 0; j < 16; j++)
	ld.w	r0, [r13 + (-8)]	# tmp214, j
	add.w	r0, 1 #111	# tmp213,
	st.w	[r13 + (-8)], r0	# j, tmp213
.L262:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1346:     for(j = 0; j < 16; j++)
	ld.w	r1, [r13 + (-8)]	# tmp215, j
	mov.w	r0, 15	# tmp216,
	cmp.w	r1, r0	# tmp215, tmp216
	jses	.L271		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1333:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.w	r0, [r13 + (-4)]	# tmp218, i
	add.w	r0, 1 #111	# tmp217,
	st.w	[r13 + (-4)], r0	# i, tmp217
.L261:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1333:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.w	r1, [dataStartBlock_]	# dataStartBlock_.102_80, dataStartBlock_
	ld.w	r0, [rootDirStart_]	# rootDirStart_.103_81, rootDirStart_
	sub.w	r1, r0 #222	# _82, rootDirStart_.103_81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1333:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	ld.w	r0, [r13 + (-4)]	# i.104_83, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1333:   for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
	cmp.w	r1, r0	# _82, i.104_83
	jg	.L272		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1392:   return 0;
	xor.w	r0, r0	# _89
.L273:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1393: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getDirEntry, .-getDirEntry
	.p2align	1
	.global	file_seek
	.type	file_seek, @function
file_seek:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1402:   if (offset > fd->dir_entry.filesize)
	ld.w	r0, [r13 + (8)]	# tmp49, fd
	ld.w	r0, [r0 + (32)]	# _1, fd_26(D)->dir_entry.filesize
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1402:   if (offset > fd->dir_entry.filesize)
	ld.w	r1, [r13 + (12)]	# tmp50, offset
	cmp.w	r1, r0	# tmp50, _1
	jse	.L278		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1407:     return 0;
	xor.w	r0, r0	# _22
	j	.L277		#
.L281:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1412:     if (offset - fd->position < clusterSize_)
	ld.w	r0, [r13 + (8)]	# tmp51, fd
	ld.w	r0, [r0 + (44)]	# _2, fd_26(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1412:     if (offset - fd->position < clusterSize_)
	ld.w	r1, [r13 + (12)]	# tmp52, offset
	sub.w	r1, r0 #222	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1412:     if (offset - fd->position < clusterSize_)
	ld.w	r0, [clusterSize_]	# clusterSize_.105_4, clusterSize_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1412:     if (offset - fd->position < clusterSize_)
	cmp.w	r1, r0	# _3, clusterSize_.105_4
	jge	.L279		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1414:       fd->position = offset;
	ld.w	r0, [r13 + (8)]	# tmp53, fd
	ld.w	r1, [r13 + (12)]	# tmp54, offset
	st.w	[r0 + (44)], r1	# fd_26(D)->position, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1419:       if (fd->position%clusterSize_ + offset >= clusterSize_)
	ld.w	r0, [r13 + (8)]	# tmp55, fd
	ld.w	r1, [r0 + (44)]	# _5, fd_26(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1419:       if (fd->position%clusterSize_ + offset >= clusterSize_)
	ld.w	r0, [clusterSize_]	# clusterSize_.106_6, clusterSize_
	div.w	r1, r0	# _7, clusterSize_.106_6
mov.w	r1, r14	# _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1419:       if (fd->position%clusterSize_ + offset >= clusterSize_)
	ld.w	r0, [r13 + (12)]	# tmp56, offset
	add.w	r1, r0 #222	# _8, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1419:       if (fd->position%clusterSize_ + offset >= clusterSize_)
	ld.w	r0, [clusterSize_]	# clusterSize_.107_9, clusterSize_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1419:       if (fd->position%clusterSize_ + offset >= clusterSize_)
	cmp.w	r1, r0	# _8, clusterSize_.107_9
	js	.L278		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1421:         clus = next_cluster(fd->curr_cluster, g_block_buf);
	ld.w	r0, [r13 + (8)]	# tmp57, fd
	ld.s	r0, [r0 + (48)]	# _10, fd_26(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1421:         clus = next_cluster(fd->curr_cluster, g_block_buf);
	zex.s	r1, r0	# _11, _10
	mov.w	r0, sp	# tmp58,
	mov.w	r2, g_block_buf	# tmp59,
	st.w	[r0 + (4)], r2	#, tmp59
	st.w	[r0], r1	#, _11
	call	next_cluster		#
	st.s	[r13 + (-2)], r0	# clus,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1425:         if (clus != 0xFFFF) 
	ld.s	r1, [r13 + (-2)]	# tmp60, clus
	mov.w	r0, 65535	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L278		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1426:           fd->curr_cluster = clus;
	ld.w	r0, [r13 + (8)]	# tmp62, fd
	ld.s	r1, [r13 + (-2)]	# tmp63, clus
	st.s	[r0 + (48)], r1	# fd_26(D)->curr_cluster, tmp63
	j	.L278		#
.L279:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1432:       fd->position += clusterSize_ - fd->position%clusterSize_;
	ld.w	r0, [r13 + (8)]	# tmp64, fd
	ld.w	r1, [r0 + (44)]	# _12, fd_26(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1432:       fd->position += clusterSize_ - fd->position%clusterSize_;
	ld.w	r0, [clusterSize_]	# clusterSize_.108_13, clusterSize_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1432:       fd->position += clusterSize_ - fd->position%clusterSize_;
	ld.w	r2, [r13 + (8)]	# tmp65, fd
	ld.w	r2, [r2 + (44)]	# _14, fd_26(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1432:       fd->position += clusterSize_ - fd->position%clusterSize_;
	ld.w	r3, [clusterSize_]	# clusterSize_.109_15, clusterSize_
	div.w	r2, r3	# _16, clusterSize_.109_15
mov.w	r2, r14	# _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1432:       fd->position += clusterSize_ - fd->position%clusterSize_;
	sub.w	r0, r2 #222	# _17, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1432:       fd->position += clusterSize_ - fd->position%clusterSize_;
	add.w	r1, r0 #222	# _18, _17
	ld.w	r0, [r13 + (8)]	# tmp66, fd
	st.w	[r0 + (44)], r1	# fd_26(D)->position, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1433:       clus = next_cluster(fd->curr_cluster, g_block_buf);
	ld.w	r0, [r13 + (8)]	# tmp67, fd
	ld.s	r0, [r0 + (48)]	# _19, fd_26(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1433:       clus = next_cluster(fd->curr_cluster, g_block_buf);
	zex.s	r1, r0	# _20, _19
	mov.w	r0, sp	# tmp68,
	mov.w	r2, g_block_buf	# tmp69,
	st.w	[r0 + (4)], r2	#, tmp69
	st.w	[r0], r1	#, _20
	call	next_cluster		#
	st.s	[r13 + (-2)], r0	# clus,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1434:       if (!clus)
	ld.s	r1, [r13 + (-2)]	# tmp70, clus
	xor.w	r0, r0	# tmp71
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L280		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1439:         return 0;
	xor.w	r0, r0	# _22
	j	.L277		#
.L280:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1441:       fd->curr_cluster = clus;
	ld.w	r0, [r13 + (8)]	# tmp72, fd
	ld.s	r1, [r13 + (-2)]	# tmp73, clus
	st.s	[r0 + (48)], r1	# fd_26(D)->curr_cluster, tmp73
.L278:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1410:   while (fd->position != offset)
	ld.w	r0, [r13 + (8)]	# tmp74, fd
	ld.w	r0, [r0 + (44)]	# _21, fd_26(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1410:   while (fd->position != offset)
	ld.w	r1, [r13 + (12)]	# tmp75, offset
	cmp.w	r1, r0	# tmp75, _21
	jnz	.L281		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1448:   return 1;
	mov.b	r0, 1	# _22,
.L277:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1449: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	file_seek, .-file_seek
	.p2align	1
	.global	file_write
	.type	file_write, @function
file_write:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp83, length
	st.s	[r13 + (-20)], r0	# length, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1461:   uint16_t bytes_written = 0;
	xor.w	r0, r0	# tmp85
	st.s	[r13 + (-4)], r0	# bytes_written, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1465:   if (fd->dir_entry.first_cluster == 0x0000)
	ld.w	r0, [r13 + (8)]	# tmp86, fd
	ld.s	r0, [r0 + (28)]	# _1, fd_66(D)->dir_entry.first_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1465:   if (fd->dir_entry.first_cluster == 0x0000)
	zex.s	r1, r0	# tmp87, _1
	xor.w	r0, r0	# tmp88
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L283		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1467:     clus = get_unused_cluster(g_block_buf);
	mov.w	r1, sp	# tmp89,
	mov.w	r0, g_block_buf	# tmp90,
	st.w	[r1], r0	#, tmp90
	call	get_unused_cluster		#
	st.s	[r13 + (-6)], r0	# clus,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1471:     if (!clus) { return 0; }
	ld.s	r1, [r13 + (-6)]	# tmp91, clus
	xor.w	r0, r0	# tmp92
	cmp.w	r1, r0	# tmp91, tmp92
	jnz	.L284		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1471:     if (!clus) { return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L284:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1472:     fd->dir_entry.first_cluster = clus;
	ld.w	r0, [r13 + (8)]	# tmp93, fd
	ld.s	r1, [r13 + (-6)]	# tmp94, clus
	st.s	[r0 + (28)], r1	# fd_66(D)->dir_entry.first_cluster, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1473:     fd->curr_cluster = clus;    
	ld.w	r0, [r13 + (8)]	# tmp95, fd
	ld.s	r1, [r13 + (-6)]	# tmp96, clus
	st.s	[r0 + (48)], r1	# fd_66(D)->curr_cluster, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1474:     fd->position = 0;
	ld.w	r0, [r13 + (8)]	# tmp97, fd
	xor.w	r1, r1	# tmp98
	st.w	[r0 + (44)], r1	# fd_66(D)->position, tmp98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1475:     if (!update_FAT(g_block_buf, fd->curr_cluster, 0xffff)) { return 0; }
	ld.w	r0, [r13 + (8)]	# tmp99, fd
	ld.s	r0, [r0 + (48)]	# _2, fd_66(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1475:     if (!update_FAT(g_block_buf, fd->curr_cluster, 0xffff)) { return 0; }
	zex.s	r1, r0	# _3, _2
	mov.w	r0, sp	# tmp100,
	mov.w	r2, 65535	# tmp101,
	st.w	[r0 + (8)], r2	#, tmp101
	st.w	[r0 + (4)], r1	#, _3
	mov.w	r1, g_block_buf	# tmp102,
	st.w	[r0], r1	#, tmp102
	call	update_FAT		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1475:     if (!update_FAT(g_block_buf, fd->curr_cluster, 0xffff)) { return 0; }
	zex.b	r1, r0	# tmp103, _4
	xor.w	r0, r0	# tmp104
	cmp.w	r1, r0	# tmp103, tmp104
	jnz	.L283		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1475:     if (!update_FAT(g_block_buf, fd->curr_cluster, 0xffff)) { return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L283:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1478:   sec_offset = fd->position % 512;
	ld.w	r0, [r13 + (8)]	# tmp105, fd
	ld.w	r0, [r0 + (44)]	# _5, fd_66(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1478:   sec_offset = fd->position % 512;
	mov.w	r1, 511	# tmp107,
	and.w	r0, r1	# tmp106, tmp107
	st.s	[r13 + (-8)], r0	# sec_offset, tmp108
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1479:   sec_bytes_left = 512 - sec_offset;
	ld.s	r1, [r13 + (-8)]	# tmp109, sec_offset
	mov.w	r0, 512	# tmp111,
	sub.w	r0, r1 #222	# tmp110, tmp112
	st.s	[r13 + (-10)], r0	# sec_bytes_left, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1480:   sec_addr = get_sec_addr(fd->curr_cluster, fd->position % clusterSize_);
	ld.w	r0, [r13 + (8)]	# tmp114, fd
	ld.s	r0, [r0 + (48)]	# _7, fd_66(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1480:   sec_addr = get_sec_addr(fd->curr_cluster, fd->position % clusterSize_);
	zex.s	r1, r0	# _8, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1480:   sec_addr = get_sec_addr(fd->curr_cluster, fd->position % clusterSize_);
	ld.w	r0, [r13 + (8)]	# tmp115, fd
	ld.w	r2, [r0 + (44)]	# _9, fd_66(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1480:   sec_addr = get_sec_addr(fd->curr_cluster, fd->position % clusterSize_);
	ld.w	r0, [clusterSize_]	# clusterSize_.110_10, clusterSize_
	div.w	r2, r0	# _11, clusterSize_.110_10
mov.w	r2, r14	# _11
	mov.w	r0, sp	# tmp116,
	st.w	[r0 + (4)], r2	#, _11
	st.w	[r0], r1	#, _8
	call	get_sec_addr		#
	st.w	[r13 + (-16)], r0	# sec_addr,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1481:   if(!readBlock(sec_addr, g_block_buf)) { return 0; }
	mov.w	r0, sp	# tmp117,
	mov.w	r1, g_block_buf	# tmp118,
	st.w	[r0 + (4)], r1	#, tmp118
	ld.w	r1, [r13 + (-16)]	# tmp119, sec_addr
	st.w	[r0], r1	#, tmp119
	call	readBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1481:   if(!readBlock(sec_addr, g_block_buf)) { return 0; }
	zex.b	r1, r0	# tmp120, _12
	xor.w	r0, r0	# tmp121
	cmp.w	r1, r0	# tmp120, tmp121
	jnz	.L286		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1481:   if(!readBlock(sec_addr, g_block_buf)) { return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L286:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1483:   if (length <= sec_bytes_left)
	ld.s	r1, [r13 + (-20)]	# tmp122, length
	ld.s	r0, [r13 + (-10)]	# tmp123, sec_bytes_left
	cmp.w	r1, r0	# tmp122, tmp123
	jg	.L287		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1485:     write_length = length;
	ld.s	r0, [r13 + (-20)]	# tmp124, length
	st.s	[r13 + (-2)], r0	# write_length, tmp124
	j	.L288		#
.L287:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1489:     write_length = sec_bytes_left;
	ld.s	r0, [r13 + (-10)]	# tmp125, sec_bytes_left
	st.s	[r13 + (-2)], r0	# write_length, tmp125
.L288:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1491:   memmove(g_block_buf + sec_offset, write_str, write_length);
	ld.s	r1, [r13 + (-8)]	# _13, sec_offset
	mov.w	r0, g_block_buf	# tmp126,
	add.w	r1, r0 #222	# _14, tmp126
	ld.s	r2, [r13 + (-2)]	# _15, write_length
	mov.w	r0, sp	# tmp127,
	st.w	[r0 + (8)], r2	#, _15
	ld.w	r2, [r13 + (12)]	# tmp128, write_str
	st.w	[r0 + (4)], r2	#, tmp128
	st.w	[r0], r1	#, _14
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1492:   if (!writeBlock(sec_addr, g_block_buf, 1)) { return 0; }
	mov.w	r0, sp	# tmp129,
	mov.w	r1, 1	# tmp130,
	st.w	[r0 + (8)], r1	#, tmp130
	mov.w	r1, g_block_buf	# tmp131,
	st.w	[r0 + (4)], r1	#, tmp131
	ld.w	r1, [r13 + (-16)]	# tmp132, sec_addr
	st.w	[r0], r1	#, tmp132
	call	writeBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1492:   if (!writeBlock(sec_addr, g_block_buf, 1)) { return 0; }
	zex.b	r1, r0	# tmp133, _16
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jnz	.L289		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1492:   if (!writeBlock(sec_addr, g_block_buf, 1)) { return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L289:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1495:   if (fd->position % clusterSize_ + write_length >= clusterSize_)
	ld.w	r0, [r13 + (8)]	# tmp135, fd
	ld.w	r1, [r0 + (44)]	# _17, fd_66(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1495:   if (fd->position % clusterSize_ + write_length >= clusterSize_)
	ld.w	r0, [clusterSize_]	# clusterSize_.111_18, clusterSize_
	div.w	r1, r0	# _19, clusterSize_.111_18
mov.w	r1, r14	# _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1495:   if (fd->position % clusterSize_ + write_length >= clusterSize_)
	ld.s	r0, [r13 + (-2)]	# _20, write_length
	add.w	r1, r0 #222	# _21, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1495:   if (fd->position % clusterSize_ + write_length >= clusterSize_)
	ld.w	r0, [clusterSize_]	# clusterSize_.112_22, clusterSize_
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1495:   if (fd->position % clusterSize_ + write_length >= clusterSize_)
	cmp.w	r1, r0	# _21, clusterSize_.112_22
	js	.L290		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1497:     clus = get_unused_cluster(g_block_buf);
	mov.w	r1, sp	# tmp136,
	mov.w	r0, g_block_buf	# tmp137,
	st.w	[r1], r0	#, tmp137
	call	get_unused_cluster		#
	st.s	[r13 + (-6)], r0	# clus,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1498:     if (!clus) { return 0; }
	ld.s	r1, [r13 + (-6)]	# tmp138, clus
	xor.w	r0, r0	# tmp139
	cmp.w	r1, r0	# tmp138, tmp139
	jnz	.L291		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1498:     if (!clus) { return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L291:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1499:     if (!update_FAT(g_block_buf, fd->curr_cluster, clus)) { return 0; }
	ld.w	r0, [r13 + (8)]	# tmp140, fd
	ld.s	r0, [r0 + (48)]	# _23, fd_66(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1499:     if (!update_FAT(g_block_buf, fd->curr_cluster, clus)) { return 0; }
	zex.s	r1, r0	# _24, _23
	ld.s	r2, [r13 + (-6)]	# _25, clus
	mov.w	r0, sp	# tmp141,
	st.w	[r0 + (8)], r2	#, _25
	st.w	[r0 + (4)], r1	#, _24
	mov.w	r1, g_block_buf	# tmp142,
	st.w	[r0], r1	#, tmp142
	call	update_FAT		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1499:     if (!update_FAT(g_block_buf, fd->curr_cluster, clus)) { return 0; }
	zex.b	r1, r0	# tmp143, _26
	xor.w	r0, r0	# tmp144
	cmp.w	r1, r0	# tmp143, tmp144
	jnz	.L292		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1499:     if (!update_FAT(g_block_buf, fd->curr_cluster, clus)) { return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L292:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1500:     fd->curr_cluster = clus;
	ld.w	r0, [r13 + (8)]	# tmp145, fd
	ld.s	r1, [r13 + (-6)]	# tmp146, clus
	st.s	[r0 + (48)], r1	# fd_66(D)->curr_cluster, tmp146
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1502:     if (!update_FAT(g_block_buf, clus, 0xffff)) { return 0; }
	ld.s	r1, [r13 + (-6)]	# _27, clus
	mov.w	r0, sp	# tmp147,
	mov.w	r2, 65535	# tmp148,
	st.w	[r0 + (8)], r2	#, tmp148
	st.w	[r0 + (4)], r1	#, _27
	mov.w	r1, g_block_buf	# tmp149,
	st.w	[r0], r1	#, tmp149
	call	update_FAT		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1502:     if (!update_FAT(g_block_buf, clus, 0xffff)) { return 0; }
	zex.b	r1, r0	# tmp150, _28
	xor.w	r0, r0	# tmp151
	cmp.w	r1, r0	# tmp150, tmp151
	jnz	.L290		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1502:     if (!update_FAT(g_block_buf, clus, 0xffff)) { return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L290:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1504:   fd->position += write_length;
	ld.w	r0, [r13 + (8)]	# tmp152, fd
	ld.w	r1, [r0 + (44)]	# _29, fd_66(D)->position
	ld.s	r0, [r13 + (-2)]	# _30, write_length
	add.w	r1, r0 #222	# _31, _30
	ld.w	r0, [r13 + (8)]	# tmp153, fd
	st.w	[r0 + (44)], r1	# fd_66(D)->position, _31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1505:   bytes_written += write_length;
	ld.s	r0, [r13 + (-4)]	# tmp154, bytes_written
	ld.s	r1, [r13 + (-2)]	# tmp155, write_length
	add.w	r0, r1 #222	# tmp156, tmp157
	st.s	[r13 + (-4)], r0	# bytes_written, tmp158
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1508:   if (length > sec_bytes_left)
	ld.s	r1, [r13 + (-20)]	# tmp159, length
	ld.s	r0, [r13 + (-10)]	# tmp160, sec_bytes_left
	cmp.w	r1, r0	# tmp159, tmp160
	jse	.L293		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1510:     memset(g_block_buf, '\0', 512);
	mov.w	r0, sp	# tmp161,
	mov.w	r1, 512	# tmp162,
	st.w	[r0 + (8)], r1	#, tmp162
	xor.w	r1, r1	# tmp163
	st.w	[r0 + (4)], r1	#, tmp163
	mov.w	r1, g_block_buf	# tmp164,
	st.w	[r0], r1	#, tmp164
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1511:     memmove(g_block_buf, write_str + sec_bytes_left, length - sec_bytes_left);
	ld.s	r0, [r13 + (-10)]	# _32, sec_bytes_left
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1511:     memmove(g_block_buf, write_str + sec_bytes_left, length - sec_bytes_left);
	ld.w	r1, [r13 + (12)]	# tmp165, write_str
	add.w	r1, r0 #222	# _33, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1511:     memmove(g_block_buf, write_str + sec_bytes_left, length - sec_bytes_left);
	ld.s	r2, [r13 + (-20)]	# _34, length
	ld.s	r0, [r13 + (-10)]	# _35, sec_bytes_left
	sub.w	r2, r0 #222	# _36, _35
	mov.w	r0, sp	# tmp166,
	st.w	[r0 + (8)], r2	#, _36
	st.w	[r0 + (4)], r1	#, _33
	mov.w	r1, g_block_buf	# tmp167,
	st.w	[r0], r1	#, tmp167
	call	memmove		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1512:     if (!writeBlock(get_sec_addr(fd->curr_cluster, fd->position % clusterSize_), g_block_buf, 1))
	ld.w	r0, [r13 + (8)]	# tmp168, fd
	ld.s	r0, [r0 + (48)]	# _37, fd_66(D)->curr_cluster
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1512:     if (!writeBlock(get_sec_addr(fd->curr_cluster, fd->position % clusterSize_), g_block_buf, 1))
	zex.s	r1, r0	# _38, _37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1512:     if (!writeBlock(get_sec_addr(fd->curr_cluster, fd->position % clusterSize_), g_block_buf, 1))
	ld.w	r0, [r13 + (8)]	# tmp169, fd
	ld.w	r2, [r0 + (44)]	# _39, fd_66(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1512:     if (!writeBlock(get_sec_addr(fd->curr_cluster, fd->position % clusterSize_), g_block_buf, 1))
	ld.w	r0, [clusterSize_]	# clusterSize_.113_40, clusterSize_
	div.w	r2, r0	# _41, clusterSize_.113_40
mov.w	r2, r14	# _41
	mov.w	r0, sp	# tmp170,
	st.w	[r0 + (4)], r2	#, _41
	st.w	[r0], r1	#, _38
	call	get_sec_addr		#
	mov.w	r2, r0	# _42,
	mov.w	r0, sp	# tmp171,
	mov.w	r1, 1	# tmp172,
	st.w	[r0 + (8)], r1	#, tmp172
	mov.w	r1, g_block_buf	# tmp173,
	st.w	[r0 + (4)], r1	#, tmp173
	st.w	[r0], r2	#, _42
	call	writeBlock		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1512:     if (!writeBlock(get_sec_addr(fd->curr_cluster, fd->position % clusterSize_), g_block_buf, 1))
	zex.b	r1, r0	# tmp174, _43
	xor.w	r0, r0	# tmp175
	cmp.w	r1, r0	# tmp174, tmp175
	jnz	.L294		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1514:       return 0; 
	xor.w	r0, r0	# _58
	j	.L285		#
.L294:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1517:     fd->position += length - sec_bytes_left;
	ld.w	r0, [r13 + (8)]	# tmp176, fd
	ld.w	r1, [r0 + (44)]	# _44, fd_66(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1517:     fd->position += length - sec_bytes_left;
	ld.s	r0, [r13 + (-20)]	# _45, length
	ld.s	r2, [r13 + (-10)]	# _46, sec_bytes_left
	sub.w	r0, r2 #222	# _47, _46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1517:     fd->position += length - sec_bytes_left;
	add.w	r1, r0 #222	# _49, _48
	ld.w	r0, [r13 + (8)]	# tmp177, fd
	st.w	[r0 + (44)], r1	# fd_66(D)->position, _49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1518:     bytes_written += length - sec_bytes_left;
	ld.s	r0, [r13 + (-20)]	# tmp178, length
	ld.s	r1, [r13 + (-10)]	# tmp179, sec_bytes_left
	sub.w	r0, r1 #222	# tmp180, tmp181
	mov.w	r1, r0	# _50, tmp180
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1518:     bytes_written += length - sec_bytes_left;
	ld.s	r0, [r13 + (-4)]	# tmp182, bytes_written
	add.w	r0, r1 #222	# tmp183, tmp184
	st.s	[r13 + (-4)], r0	# bytes_written, tmp185
.L293:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1522:   if (fd->position > fd->dir_entry.filesize)
	ld.w	r0, [r13 + (8)]	# tmp186, fd
	ld.w	r1, [r0 + (44)]	# _51, fd_66(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1522:   if (fd->position > fd->dir_entry.filesize)
	ld.w	r0, [r13 + (8)]	# tmp187, fd
	ld.w	r0, [r0 + (32)]	# _52, fd_66(D)->dir_entry.filesize
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1522:   if (fd->position > fd->dir_entry.filesize)
	cmp.w	r1, r0	# _51, _52
	jse	.L295		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1524:     fd->dir_entry.filesize = fd->position;
	ld.w	r0, [r13 + (8)]	# tmp188, fd
	ld.w	r1, [r0 + (44)]	# _53, fd_66(D)->position
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1524:     fd->dir_entry.filesize = fd->position;
	ld.w	r0, [r13 + (8)]	# tmp189, fd
	st.w	[r0 + (32)], r1	# fd_66(D)->dir_entry.filesize, _53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1525:     if (!write_dir_entry(&(fd->dir_entry), g_block_buf)){ return 0; }
	ld.w	r1, [r13 + (8)]	# _54, fd
	mov.w	r0, sp	# tmp190,
	mov.w	r2, g_block_buf	# tmp191,
	st.w	[r0 + (4)], r2	#, tmp191
	st.w	[r0], r1	#, _54
	call	write_dir_entry		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1525:     if (!write_dir_entry(&(fd->dir_entry), g_block_buf)){ return 0; }
	zex.b	r1, r0	# tmp192, _55
	xor.w	r0, r0	# tmp193
	cmp.w	r1, r0	# tmp192, tmp193
	jnz	.L295		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1525:     if (!write_dir_entry(&(fd->dir_entry), g_block_buf)){ return 0; }
	xor.w	r0, r0	# _58
	j	.L285		#
.L295:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1528:   return bytes_written;
	ld.s	r0, [r13 + (-4)]	# _58, bytes_written
.L285:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1529: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	file_write, .-file_write
	.p2align	1
	.global	file_delete
	.type	file_delete, @function
file_delete:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1536:   uint16_t clus = fd->dir_entry.first_cluster;
	ld.w	r0, [r13 + (8)]	# tmp31, fd
	ld.s	r0, [r0 + (28)]	# tmp32, fd_9(D)->dir_entry.first_cluster
	st.s	[r13 + (-2)], r0	# clus, tmp32
.L299:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1540:     clus = clear_FAT(g_block_buf, clus);
	ld.s	r1, [r13 + (-2)]	# _1, clus
	mov.w	r0, sp	# tmp33,
	st.w	[r0 + (4)], r1	#, _1
	mov.w	r1, g_block_buf	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	clear_FAT		#
	st.s	[r13 + (-2)], r0	# clus,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1541:     if (!clus)
	ld.s	r1, [r13 + (-2)]	# tmp35, clus
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jnz	.L297		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1546:       return 0;
	xor.w	r0, r0	# _5
	j	.L298		#
.L297:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1548:   } while (clus < 0xfff8);
	ld.s	r1, [r13 + (-2)]	# tmp37, clus
	mov.w	r0, 65527	# tmp38,
	cmp.w	r1, r0	# tmp37, tmp38
	jse	.L299		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1550:   if (!invalidate_dir_entry(&(fd->dir_entry), g_block_buf))
	ld.w	r1, [r13 + (8)]	# _2, fd
	mov.w	r0, sp	# tmp39,
	mov.w	r2, g_block_buf	# tmp40,
	st.w	[r0 + (4)], r2	#, tmp40
	st.w	[r0], r1	#, _2
	call	invalidate_dir_entry		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1550:   if (!invalidate_dir_entry(&(fd->dir_entry), g_block_buf))
	zex.b	r1, r0	# tmp41, _3
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L300		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1555:     return 0;
	xor.w	r0, r0	# _5
	j	.L298		#
.L300:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1558:   return 1;
	mov.b	r0, 1	# _5,
.L298:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/fat.c:1559: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	file_delete, .-file_delete
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
