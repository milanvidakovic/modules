	.file	"math.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.s
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
	.global	sinTable_f32
	.data
	.p2align	2
	.type	sinTable_f32, @object
	.size	sinTable_f32, 2052
sinTable_f32:
	.long	0
	.long	1011420818
	.long	1019808433
	.long	1024901931
	.long	1028193070
	.long	1031482229
	.long	1033283844
	.long	1034925696
	.long	1036565814
	.long	1038203951
	.long	1039839859
	.long	1040830343
	.long	1041645699
	.long	1042459573
	.long	1043271842
	.long	1044082383
	.long	1044891074
	.long	1045697793
	.long	1046502419
	.long	1047304831
	.long	1048104908
	.long	1048739264
	.long	1049136787
	.long	1049532962
	.long	1049927730
	.long	1050321030
	.long	1050712805
	.long	1051102994
	.long	1051491540
	.long	1051878383
	.long	1052263466
	.long	1052646729
	.long	1053028117
	.long	1053407571
	.long	1053785034
	.long	1054160449
	.long	1054533760
	.long	1054904911
	.long	1055273845
	.long	1055640507
	.long	1056004842
	.long	1056366795
	.long	1056726311
	.long	1057023972
	.long	1057201213
	.long	1057377154
	.long	1057551771
	.long	1057725035
	.long	1057896922
	.long	1058067405
	.long	1058236458
	.long	1058404057
	.long	1058570176
	.long	1058734790
	.long	1058897873
	.long	1059059403
	.long	1059219353
	.long	1059377701
	.long	1059534422
	.long	1059689493
	.long	1059842890
	.long	1059994590
	.long	1060144571
	.long	1060292809
	.long	1060439283
	.long	1060583971
	.long	1060726850
	.long	1060867899
	.long	1061007097
	.long	1061144423
	.long	1061279856
	.long	1061413377
	.long	1061544963
	.long	1061674597
	.long	1061802258
	.long	1061927928
	.long	1062051586
	.long	1062173216
	.long	1062292797
	.long	1062410313
	.long	1062525745
	.long	1062639077
	.long	1062750291
	.long	1062859370
	.long	1062966298
	.long	1063071059
	.long	1063173637
	.long	1063274017
	.long	1063372183
	.long	1063468122
	.long	1063561817
	.long	1063653256
	.long	1063742424
	.long	1063829308
	.long	1063913895
	.long	1063996172
	.long	1064076126
	.long	1064153747
	.long	1064229022
	.long	1064301939
	.long	1064372488
	.long	1064440658
	.long	1064506439
	.long	1064569821
	.long	1064630795
	.long	1064689350
	.long	1064745479
	.long	1064799173
	.long	1064850424
	.long	1064899224
	.long	1064945565
	.long	1064989442
	.long	1065030846
	.long	1065069773
	.long	1065106216
	.long	1065140169
	.long	1065171628
	.long	1065200588
	.long	1065227043
	.long	1065250992
	.long	1065272429
	.long	1065291352
	.long	1065307757
	.long	1065321643
	.long	1065333007
	.long	1065341847
	.long	1065348163
	.long	1065351953
	.long	1065353216
	.long	1065351953
	.long	1065348163
	.long	1065341847
	.long	1065333007
	.long	1065321643
	.long	1065307757
	.long	1065291352
	.long	1065272429
	.long	1065250992
	.long	1065227043
	.long	1065200588
	.long	1065171628
	.long	1065140169
	.long	1065106216
	.long	1065069773
	.long	1065030846
	.long	1064989442
	.long	1064945565
	.long	1064899224
	.long	1064850424
	.long	1064799173
	.long	1064745479
	.long	1064689350
	.long	1064630795
	.long	1064569821
	.long	1064506439
	.long	1064440658
	.long	1064372488
	.long	1064301939
	.long	1064229022
	.long	1064153747
	.long	1064076126
	.long	1063996172
	.long	1063913895
	.long	1063829308
	.long	1063742424
	.long	1063653256
	.long	1063561817
	.long	1063468122
	.long	1063372183
	.long	1063274017
	.long	1063173637
	.long	1063071059
	.long	1062966298
	.long	1062859370
	.long	1062750291
	.long	1062639077
	.long	1062525745
	.long	1062410313
	.long	1062292797
	.long	1062173216
	.long	1062051586
	.long	1061927928
	.long	1061802258
	.long	1061674597
	.long	1061544963
	.long	1061413377
	.long	1061279856
	.long	1061144423
	.long	1061007097
	.long	1060867899
	.long	1060726850
	.long	1060583971
	.long	1060439283
	.long	1060292809
	.long	1060144571
	.long	1059994590
	.long	1059842890
	.long	1059689493
	.long	1059534422
	.long	1059377701
	.long	1059219353
	.long	1059059403
	.long	1058897873
	.long	1058734790
	.long	1058570176
	.long	1058404057
	.long	1058236458
	.long	1058067405
	.long	1057896922
	.long	1057725035
	.long	1057551771
	.long	1057377154
	.long	1057201213
	.long	1057023972
	.long	1056726311
	.long	1056366795
	.long	1056004842
	.long	1055640507
	.long	1055273845
	.long	1054904911
	.long	1054533760
	.long	1054160449
	.long	1053785034
	.long	1053407571
	.long	1053028117
	.long	1052646729
	.long	1052263466
	.long	1051878383
	.long	1051491540
	.long	1051102994
	.long	1050712805
	.long	1050321030
	.long	1049927730
	.long	1049532962
	.long	1049136787
	.long	1048739264
	.long	1048104908
	.long	1047304831
	.long	1046502419
	.long	1045697793
	.long	1044891074
	.long	1044082383
	.long	1043271842
	.long	1042459573
	.long	1041645699
	.long	1040830343
	.long	1039839859
	.long	1038203951
	.long	1036565814
	.long	1034925696
	.long	1033283844
	.long	1031482229
	.long	1028193070
	.long	1024901931
	.long	1019808433
	.long	1011420818
	.long	0
	.long	-1136062830
	.long	-1127675215
	.long	-1122581717
	.long	-1119290578
	.long	-1116001419
	.long	-1114199804
	.long	-1112557952
	.long	-1110917834
	.long	-1109279697
	.long	-1107643789
	.long	-1106653305
	.long	-1105837949
	.long	-1105024075
	.long	-1104211806
	.long	-1103401265
	.long	-1102592574
	.long	-1101785855
	.long	-1100981229
	.long	-1100178817
	.long	-1099378740
	.long	-1098744384
	.long	-1098346861
	.long	-1097950686
	.long	-1097555918
	.long	-1097162618
	.long	-1096770843
	.long	-1096380654
	.long	-1095992108
	.long	-1095605265
	.long	-1095220182
	.long	-1094836919
	.long	-1094455531
	.long	-1094076077
	.long	-1093698614
	.long	-1093323199
	.long	-1092949888
	.long	-1092578737
	.long	-1092209803
	.long	-1091843141
	.long	-1091478806
	.long	-1091116853
	.long	-1090757337
	.long	-1090459676
	.long	-1090282435
	.long	-1090106494
	.long	-1089931877
	.long	-1089758613
	.long	-1089586726
	.long	-1089416243
	.long	-1089247190
	.long	-1089079591
	.long	-1088913472
	.long	-1088748858
	.long	-1088585775
	.long	-1088424245
	.long	-1088264295
	.long	-1088105947
	.long	-1087949226
	.long	-1087794155
	.long	-1087640758
	.long	-1087489058
	.long	-1087339077
	.long	-1087190839
	.long	-1087044365
	.long	-1086899677
	.long	-1086756798
	.long	-1086615749
	.long	-1086476551
	.long	-1086339225
	.long	-1086203792
	.long	-1086070271
	.long	-1085938685
	.long	-1085809051
	.long	-1085681390
	.long	-1085555720
	.long	-1085432062
	.long	-1085310432
	.long	-1085190851
	.long	-1085073335
	.long	-1084957903
	.long	-1084844571
	.long	-1084733357
	.long	-1084624278
	.long	-1084517350
	.long	-1084412589
	.long	-1084310011
	.long	-1084209631
	.long	-1084111465
	.long	-1084015526
	.long	-1083921831
	.long	-1083830392
	.long	-1083741224
	.long	-1083654340
	.long	-1083569753
	.long	-1083487476
	.long	-1083407522
	.long	-1083329901
	.long	-1083254626
	.long	-1083181709
	.long	-1083111160
	.long	-1083042990
	.long	-1082977209
	.long	-1082913827
	.long	-1082852853
	.long	-1082794298
	.long	-1082738169
	.long	-1082684475
	.long	-1082633224
	.long	-1082584424
	.long	-1082538083
	.long	-1082494206
	.long	-1082452802
	.long	-1082413875
	.long	-1082377432
	.long	-1082343479
	.long	-1082312020
	.long	-1082283060
	.long	-1082256605
	.long	-1082232656
	.long	-1082211219
	.long	-1082192296
	.long	-1082175891
	.long	-1082162005
	.long	-1082150641
	.long	-1082141801
	.long	-1082135485
	.long	-1082131695
	.long	-1082130432
	.long	-1082131695
	.long	-1082135485
	.long	-1082141801
	.long	-1082150641
	.long	-1082162005
	.long	-1082175891
	.long	-1082192296
	.long	-1082211219
	.long	-1082232656
	.long	-1082256605
	.long	-1082283060
	.long	-1082312020
	.long	-1082343479
	.long	-1082377432
	.long	-1082413875
	.long	-1082452802
	.long	-1082494206
	.long	-1082538083
	.long	-1082584424
	.long	-1082633224
	.long	-1082684475
	.long	-1082738169
	.long	-1082794298
	.long	-1082852853
	.long	-1082913827
	.long	-1082977209
	.long	-1083042990
	.long	-1083111160
	.long	-1083181709
	.long	-1083254626
	.long	-1083329901
	.long	-1083407522
	.long	-1083487476
	.long	-1083569753
	.long	-1083654340
	.long	-1083741224
	.long	-1083830392
	.long	-1083921831
	.long	-1084015526
	.long	-1084111465
	.long	-1084209631
	.long	-1084310011
	.long	-1084412589
	.long	-1084517350
	.long	-1084624278
	.long	-1084733357
	.long	-1084844571
	.long	-1084957903
	.long	-1085073335
	.long	-1085190851
	.long	-1085310432
	.long	-1085432062
	.long	-1085555720
	.long	-1085681390
	.long	-1085809051
	.long	-1085938685
	.long	-1086070271
	.long	-1086203792
	.long	-1086339225
	.long	-1086476551
	.long	-1086615749
	.long	-1086756798
	.long	-1086899677
	.long	-1087044365
	.long	-1087190839
	.long	-1087339077
	.long	-1087489058
	.long	-1087640758
	.long	-1087794155
	.long	-1087949226
	.long	-1088105947
	.long	-1088264295
	.long	-1088424245
	.long	-1088585775
	.long	-1088748858
	.long	-1088913472
	.long	-1089079591
	.long	-1089247190
	.long	-1089416243
	.long	-1089586726
	.long	-1089758613
	.long	-1089931877
	.long	-1090106494
	.long	-1090282435
	.long	-1090459676
	.long	-1090757337
	.long	-1091116853
	.long	-1091478806
	.long	-1091843141
	.long	-1092209803
	.long	-1092578737
	.long	-1092949888
	.long	-1093323199
	.long	-1093698614
	.long	-1094076077
	.long	-1094455531
	.long	-1094836919
	.long	-1095220182
	.long	-1095605265
	.long	-1095992108
	.long	-1096380654
	.long	-1096770843
	.long	-1097162618
	.long	-1097555918
	.long	-1097950686
	.long	-1098346861
	.long	-1098744384
	.long	-1099378740
	.long	-1100178817
	.long	-1100981229
	.long	-1101785855
	.long	-1102592574
	.long	-1103401265
	.long	-1104211806
	.long	-1105024075
	.long	-1105837949
	.long	-1106653305
	.long	-1107643789
	.long	-1109279697
	.long	-1110917834
	.long	-1112557952
	.long	-1114199804
	.long	-1116001419
	.long	-1119290578
	.long	-1122581717
	.long	-1127675215
	.long	-1136062830
	.long	-2147483648
	.global	__addsf3
	.text
	.p2align	1
	.global	roundf
	.type	roundf, @function
roundf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:12:     w = toRep(x);
	mov.w	r1, sp	# tmp36,
	ld.w	r0, [r13 + (8)]	# tmp37, x
	st.w	[r1], r0	#, tmp37
	call	toRep		#
	st.w	[r13 + (-4)], r0	# w,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:15:     exponent_less_127 = (int)((w & 0x7f800000) >> 23) - 127;
	ld.w	r0, [r13 + (-4)]	# tmp38, w
	mov.w	r1, 23	# tmp39,
	shr.w	r0, r1	# _1, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:15:     exponent_less_127 = (int)((w & 0x7f800000) >> 23) - 127;
	mov.w	r1, 255	# tmp40,
	and.w	r0, r1	# _3, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:15:     exponent_less_127 = (int)((w & 0x7f800000) >> 23) - 127;
	add.w	r0, -127 #111	# tmp41,
	st.w	[r13 + (-8)], r0	# exponent_less_127, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:17:     if (exponent_less_127 < 23)
	ld.w	r1, [r13 + (-8)]	# tmp42, exponent_less_127
	mov.w	r0, 22	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jgs	.L2		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:19:         if (exponent_less_127 < 0)
	ld.w	r1, [r13 + (-8)]	# tmp44, exponent_less_127
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jges	.L3		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:21:             w &= 0x80000000;
	ld.w	r0, [r13 + (-4)]	# tmp47, w
	mov.w	r1, -2147483648	# tmp48,
	and.w	r0, r1	# tmp46, tmp48
	st.w	[r13 + (-4)], r0	# w, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:22:             if (exponent_less_127 == -1)
	ld.w	r1, [r13 + (-8)]	# tmp49, exponent_less_127
	mov.w	r0, -1	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jnz	.L4		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:24:               w |= ((uint32_t)127 << 23);
	ld.w	r0, [r13 + (-4)]	# tmp52, w
	mov.w	r1, 1065353216	# tmp53,
	or.w	r0, r1	# tmp51, tmp53
	st.w	[r13 + (-4)], r0	# w, tmp51
	j	.L4		#
.L3:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:28:             unsigned int exponent_mask = 0x007fffff >> exponent_less_127;
	mov.w	r0, 8388607	# tmp54,
	ld.w	r1, [r13 + (-8)]	# tmp55, exponent_less_127
	shr.w	r0, r1	# _4, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:28:             unsigned int exponent_mask = 0x007fffff >> exponent_less_127;
	st.w	[r13 + (-12)], r0	# exponent_mask, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:29:             if ((w & exponent_mask) == 0)
	ld.w	r1, [r13 + (-4)]	# tmp56, w
	ld.w	r0, [r13 + (-12)]	# tmp57, exponent_mask
	and.w	r1, r0	# _5, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:29:             if ((w & exponent_mask) == 0)
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# _5, tmp58
	jnz	.L5		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:31:               return x;
	ld.w	r0, [r13 + (8)]	# _10, x
	j	.L6		#
.L5:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:33:             w += 0x00400000 >> exponent_less_127;
	mov.w	r0, 4194304	# tmp59,
	ld.w	r1, [r13 + (-8)]	# tmp60, exponent_less_127
	shr.w	r0, r1	# _6, tmp60
	mov.w	r1, r0	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:33:             w += 0x00400000 >> exponent_less_127;
	ld.w	r0, [r13 + (-4)]	# tmp62, w
	add.w	r0, r1 #222	# tmp61, _7
	st.w	[r13 + (-4)], r0	# w, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:34:             w &= ~exponent_mask;
	ld.w	r0, [r13 + (-12)]	# tmp63, exponent_mask
	mov.w	r1, r0	# _8, tmp63
inv.w	r1	# _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:34:             w &= ~exponent_mask;
	ld.w	r0, [r13 + (-4)]	# tmp65, w
	and.w	r0, r1	# tmp64, _8
	st.w	[r13 + (-4)], r0	# w, tmp64
	j	.L4		#
.L2:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:39:         if (exponent_less_127 == 128)
	ld.w	r1, [r13 + (-8)]	# tmp66, exponent_less_127
	mov.w	r0, 128	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jnz	.L7		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:41:           return x + x;
	ld.w	r0, [r13 + (8)]	# tmp68, x
	mov.w	r1, r0	# tmp69, tmp68
	st.w	[sp + (4)], r1	#, tmp69
	st.w	[sp], r0	#, tmp70
	call	__addsf3		#
	mov.w	r1, r0	# tmp71,
	mov.w	r0, r1	# _10, tmp71
	j	.L6		#
.L7:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:43:           return x;
	ld.w	r0, [r13 + (8)]	# _10, x
	j	.L6		#
.L4:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:45:     x = fromRep(w);
	mov.w	r1, sp	# tmp72,
	ld.w	r0, [r13 + (-4)]	# tmp73, w
	st.w	[r1], r0	#, tmp73
	call	fromRep		#
	st.w	[r13 + (8)], r0	# x,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:46:     return x;
	ld.w	r0, [r13 + (8)]	# _10, x
.L6:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:47: }
	mov.w	r1, r0	# <retval>, _10
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	roundf, .-roundf
	.global	__mulsf3
	.global	__fixsfsi
	.global	__ltsf2
	.global	__floatsisf
	.global	__subsf3
	.global	__gesf2
	.global	__fixunssfsi
	.global	__floatunsisf
	.p2align	1
	.global	sinf
	.type	sinf, @function
sinf:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 56 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:59:   in = x * 0.159154943092f;
	mov.w	r0, 1042479491	# tmp37,
	st.w	[sp + (4)], r0	#, tmp37
	ld.w	r0, [r13 + (8)]	# tmp38, x
	st.w	[sp], r0	#, tmp38
	call	__mulsf3		#
	mov.w	r1, r0	# tmp39,
	mov.w	r0, r1	# tmp40, tmp39
	st.w	[r13 + (-16)], r0	# in, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:62:   n = (int32_t) in;
	ld.w	r0, [r13 + (-16)]	# tmp41, in
	st.w	[sp], r0	#, tmp41
	call	__fixsfsi		#
	st.w	[r13 + (-8)], r0	# n, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:65:   if(x < 0.0f)
	xor.w	r0, r0	# tmp43
	st.w	[sp + (4)], r0	#, tmp43
	ld.w	r0, [r13 + (8)]	# tmp44, x
	st.w	[sp], r0	#, tmp44
	call	__ltsf2		#
	mov.w	r1, r0	# tmp45,
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# tmp45, tmp46
	jges	.L9		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:67:     n--;
	ld.w	r0, [r13 + (-8)]	# tmp48, n
	add.w	r0, -1 #111	# tmp47,
	st.w	[r13 + (-8)], r0	# n, tmp47
.L9:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:71:   in = in - (float) n;
	ld.w	r0, [r13 + (-8)]	# tmp49, n
	st.w	[sp], r0	#, tmp49
	call	__floatsisf		#
	mov.w	r1, r0	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:71:   in = in - (float) n;
	mov.w	r0, r1	# tmp50, _1
	st.w	[sp + (4)], r0	#, tmp50
	ld.w	r0, [r13 + (-16)]	# tmp51, in
	st.w	[sp], r0	#, tmp51
	call	__subsf3		#
	mov.w	r1, r0	# tmp52,
	mov.w	r0, r1	# tmp53, tmp52
	st.w	[r13 + (-16)], r0	# in, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:74:   findex = (float) FAST_MATH_TABLE_SIZE * in;
	mov.w	r0, 1140850688	# tmp54,
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (-16)]	# tmp55, in
	st.w	[sp], r0	#, tmp55
	call	__mulsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-12)], r0	# findex, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:75:   if (findex >= 512.0f) {
	mov.w	r0, 1140850688	# tmp58,
	st.w	[sp + (4)], r0	#, tmp58
	ld.w	r0, [r13 + (-12)]	# tmp59, findex
	st.w	[sp], r0	#, tmp59
	call	__gesf2		#
	mov.w	r1, r0	# tmp60,
	xor.w	r0, r0	# tmp61
	cmp.w	r1, r0	# tmp60, tmp61
	jss	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:76:     findex -= 512.0f;
	mov.w	r0, 1140850688	# tmp62,
	st.w	[sp + (4)], r0	#, tmp62
	ld.w	r0, [r13 + (-12)]	# tmp63, findex
	st.w	[sp], r0	#, tmp63
	call	__subsf3		#
	mov.w	r1, r0	# tmp64,
	mov.w	r0, r1	# tmp65, tmp64
	st.w	[r13 + (-12)], r0	# findex, tmp65
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:79:   index = ((uint16_t)findex) & 0x1ff;
	ld.w	r0, [r13 + (-12)]	# tmp67, findex
	st.w	[sp], r0	#, tmp67
	call	__fixunssfsi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:79:   index = ((uint16_t)findex) & 0x1ff;
	mov.w	r1, 511	# tmp69,
	and.w	r0, r1	# tmp68, tmp69
	st.s	[r13 + (-18)], r0	# index, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:82:   fract = findex - (float) index;
	ld.s	r0, [r13 + (-18)]	# tmp71, index
	st.w	[sp], r0	#, tmp71
	call	__floatunsisf		#
	mov.w	r1, r0	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:82:   fract = findex - (float) index;
	mov.w	r0, r1	# tmp72, _3
	st.w	[sp + (4)], r0	#, tmp72
	ld.w	r0, [r13 + (-12)]	# tmp73, findex
	st.w	[sp], r0	#, tmp73
	call	__subsf3		#
	mov.w	r1, r0	# tmp74,
	mov.w	r0, r1	# tmp75, tmp74
	st.w	[r13 + (-24)], r0	# fract, tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:85:   a = sinTable_f32[index];
	ld.s	r0, [r13 + (-18)]	# _4, index
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:85:   a = sinTable_f32[index];
	mov.w	r1, 2	# tmp77,
	shl.w	r0, r1	# tmp76, tmp77
	mov.w	r1, sinTable_f32	# tmp79,
	add.w	r0, r1 #222	# tmp78, tmp79
	ld.w	r0, [r0]	# tmp80,
	st.w	[r13 + (-28)], r0	# a, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:86:   b = sinTable_f32[index+1];
	ld.s	r0, [r13 + (-18)]	# _5, index
	add.w	r0, 1 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:86:   b = sinTable_f32[index+1];
	mov.w	r1, 2	# tmp82,
	shl.w	r0, r1	# tmp81, tmp82
	mov.w	r1, sinTable_f32	# tmp84,
	add.w	r0, r1 #222	# tmp83, tmp84
	ld.w	r0, [r0]	# tmp85,
	st.w	[r13 + (-32)], r0	# b, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:89:   sinVal = (1.0f-fract)*a + fract*b;
	ld.w	r1, [r13 + (-24)]	# tmp86, fract
	mov.w	r0, 1065353216	# tmp87,
	st.w	[sp + (4)], r1	#, tmp86
	st.w	[sp], r0	#, tmp87
	call	__subsf3		#
	mov.w	r1, r0	# tmp88,
	mov.w	r0, r1	# _7, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:89:   sinVal = (1.0f-fract)*a + fract*b;
	ld.w	r1, [r13 + (-28)]	# tmp89, a
	st.w	[sp + (4)], r1	#, tmp89
	st.w	[sp], r0	#, tmp90
	call	__mulsf3		#
	mov.w	r1, r0	# tmp91,
	mov.w	r6, r1	# _8, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:89:   sinVal = (1.0f-fract)*a + fract*b;
	ld.w	r0, [r13 + (-32)]	# tmp92, b
	st.w	[sp + (4)], r0	#, tmp92
	ld.w	r0, [r13 + (-24)]	# tmp93, fract
	st.w	[sp], r0	#, tmp93
	call	__mulsf3		#
	mov.w	r1, r0	# tmp94,
	mov.w	r0, r1	# _9, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:89:   sinVal = (1.0f-fract)*a + fract*b;
	mov.w	r1, r0	# tmp95, _9
	mov.w	r0, r6	# tmp96, _8
	st.w	[sp + (4)], r1	#, tmp95
	st.w	[sp], r0	#, tmp96
	call	__addsf3		#
	mov.w	r1, r0	# tmp97,
	mov.w	r0, r1	# tmp98, tmp97
	st.w	[r13 + (-36)], r0	# sinVal, tmp98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:92:   return (sinVal);
	ld.w	r0, [r13 + (-36)]	# _25, sinVal
	mov.w	r1, r0	# <retval>, _25
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:93: }
	mov.w	r0, r1	#, <retval>
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sinf, .-sinf
	.p2align	1
	.global	cosf
	.type	cosf, @function
cosf:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 56 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:105:   in = x * 0.159154943092f + 0.25f;
	mov.w	r0, 1042479491	# tmp38,
	st.w	[sp + (4)], r0	#, tmp38
	ld.w	r0, [r13 + (8)]	# tmp39, x
	st.w	[sp], r0	#, tmp39
	call	__mulsf3		#
	mov.w	r1, r0	# tmp40,
	mov.w	r0, r1	# _1, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:105:   in = x * 0.159154943092f + 0.25f;
	mov.w	r1, 1048576000	# tmp41,
	st.w	[sp + (4)], r1	#, tmp41
	st.w	[sp], r0	#, tmp42
	call	__addsf3		#
	mov.w	r1, r0	# tmp43,
	mov.w	r0, r1	# tmp44, tmp43
	st.w	[r13 + (-12)], r0	# in, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:108:   n = (int32_t) in;
	ld.w	r0, [r13 + (-12)]	# tmp45, in
	st.w	[sp], r0	#, tmp45
	call	__fixsfsi		#
	st.w	[r13 + (-8)], r0	# n, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:111:   if(in < 0.0f)
	xor.w	r0, r0	# tmp47
	st.w	[sp + (4)], r0	#, tmp47
	ld.w	r0, [r13 + (-12)]	# tmp48, in
	st.w	[sp], r0	#, tmp48
	call	__ltsf2		#
	mov.w	r1, r0	# tmp49,
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# tmp49, tmp50
	jges	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:113:     n--;
	ld.w	r0, [r13 + (-8)]	# tmp52, n
	add.w	r0, -1 #111	# tmp51,
	st.w	[r13 + (-8)], r0	# n, tmp51
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:117:   in = in - (float) n;
	ld.w	r0, [r13 + (-8)]	# tmp53, n
	st.w	[sp], r0	#, tmp53
	call	__floatsisf		#
	mov.w	r1, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:117:   in = in - (float) n;
	mov.w	r0, r1	# tmp54, _2
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (-12)]	# tmp55, in
	st.w	[sp], r0	#, tmp55
	call	__subsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-12)], r0	# in, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:120:   findex = (float) FAST_MATH_TABLE_SIZE * in;
	mov.w	r0, 1140850688	# tmp58,
	st.w	[sp + (4)], r0	#, tmp58
	ld.w	r0, [r13 + (-12)]	# tmp59, in
	st.w	[sp], r0	#, tmp59
	call	__mulsf3		#
	mov.w	r1, r0	# tmp60,
	mov.w	r0, r1	# tmp61, tmp60
	st.w	[r13 + (-16)], r0	# findex, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:121:   index = ((uint16_t)findex) & 0x1ff;
	ld.w	r0, [r13 + (-16)]	# tmp63, findex
	st.w	[sp], r0	#, tmp63
	call	__fixunssfsi		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:121:   index = ((uint16_t)findex) & 0x1ff;
	mov.w	r1, 511	# tmp65,
	and.w	r0, r1	# tmp64, tmp65
	st.s	[r13 + (-18)], r0	# index, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:124:   fract = findex - (float) index;
	ld.s	r0, [r13 + (-18)]	# tmp67, index
	st.w	[sp], r0	#, tmp67
	call	__floatunsisf		#
	mov.w	r1, r0	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:124:   fract = findex - (float) index;
	mov.w	r0, r1	# tmp68, _4
	st.w	[sp + (4)], r0	#, tmp68
	ld.w	r0, [r13 + (-16)]	# tmp69, findex
	st.w	[sp], r0	#, tmp69
	call	__subsf3		#
	mov.w	r1, r0	# tmp70,
	mov.w	r0, r1	# tmp71, tmp70
	st.w	[r13 + (-24)], r0	# fract, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:127:   a = sinTable_f32[index];
	ld.s	r0, [r13 + (-18)]	# _5, index
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:127:   a = sinTable_f32[index];
	mov.w	r1, 2	# tmp73,
	shl.w	r0, r1	# tmp72, tmp73
	mov.w	r1, sinTable_f32	# tmp75,
	add.w	r0, r1 #222	# tmp74, tmp75
	ld.w	r0, [r0]	# tmp76,
	st.w	[r13 + (-28)], r0	# a, tmp76
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:128:   b = sinTable_f32[index+1];
	ld.s	r0, [r13 + (-18)]	# _6, index
	add.w	r0, 1 #111	# _7,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:128:   b = sinTable_f32[index+1];
	mov.w	r1, 2	# tmp78,
	shl.w	r0, r1	# tmp77, tmp78
	mov.w	r1, sinTable_f32	# tmp80,
	add.w	r0, r1 #222	# tmp79, tmp80
	ld.w	r0, [r0]	# tmp81,
	st.w	[r13 + (-32)], r0	# b, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:131:   cosVal = (1.0f-fract)*a + fract*b;
	ld.w	r1, [r13 + (-24)]	# tmp82, fract
	mov.w	r0, 1065353216	# tmp83,
	st.w	[sp + (4)], r1	#, tmp82
	st.w	[sp], r0	#, tmp83
	call	__subsf3		#
	mov.w	r1, r0	# tmp84,
	mov.w	r0, r1	# _8, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:131:   cosVal = (1.0f-fract)*a + fract*b;
	ld.w	r1, [r13 + (-28)]	# tmp85, a
	st.w	[sp + (4)], r1	#, tmp85
	st.w	[sp], r0	#, tmp86
	call	__mulsf3		#
	mov.w	r1, r0	# tmp87,
	mov.w	r6, r1	# _9, tmp87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:131:   cosVal = (1.0f-fract)*a + fract*b;
	ld.w	r0, [r13 + (-32)]	# tmp88, b
	st.w	[sp + (4)], r0	#, tmp88
	ld.w	r0, [r13 + (-24)]	# tmp89, fract
	st.w	[sp], r0	#, tmp89
	call	__mulsf3		#
	mov.w	r1, r0	# tmp90,
	mov.w	r0, r1	# _10, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:131:   cosVal = (1.0f-fract)*a + fract*b;
	mov.w	r1, r0	# tmp91, _10
	mov.w	r0, r6	# tmp92, _9
	st.w	[sp + (4)], r1	#, tmp91
	st.w	[sp], r0	#, tmp92
	call	__addsf3		#
	mov.w	r1, r0	# tmp93,
	mov.w	r0, r1	# tmp94, tmp93
	st.w	[r13 + (-36)], r0	# cosVal, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:134:   return (cosVal);
	ld.w	r0, [r13 + (-36)]	# _24, cosVal
	mov.w	r1, r0	# <retval>, _24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:135: }
	mov.w	r0, r1	#, <retval>
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	cosf, .-cosf
	.global	__eqsf2
	.global	__divsf3
	.p2align	1
	.global	tanf
	.type	tanf, @function
tanf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:139:   float d = cosf(x);
	mov.w	r1, sp	# tmp28,
	ld.w	r0, [r13 + (8)]	# tmp29, x
	st.w	[r1], r0	#, tmp29
	call	cosf		#
	st.w	[r13 + (-4)], r0	# d,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:140:   float g = sinf(x);
	mov.w	r1, sp	# tmp30,
	ld.w	r0, [r13 + (8)]	# tmp31, x
	st.w	[r1], r0	#, tmp31
	call	sinf		#
	st.w	[r13 + (-8)], r0	# g,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:141:   if (d == 0.0f) {
	xor.w	r0, r0	# tmp32
	st.w	[sp + (4)], r0	#, tmp32
	ld.w	r0, [r13 + (-4)]	# tmp33, d
	st.w	[sp], r0	#, tmp33
	call	__eqsf2		#
	mov.w	r1, r0	# tmp34,
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jnz	.L29		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:142: 	if (g >= 0)
	xor.w	r0, r0	# tmp36
	st.w	[sp + (4)], r0	#, tmp36
	ld.w	r0, [r13 + (-8)]	# tmp37, g
	st.w	[sp], r0	#, tmp37
	call	__gesf2		#
	mov.w	r1, r0	# tmp38,
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jss	.L30		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:143:     	return INF;
	mov.w	r0, 1325334528	# _1,
	j	.L26		#
.L30:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:144: 	return -INF;
	mov.w	r0, -822149120	# _1,
	j	.L26		#
.L29:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:146:   return g / d;
	ld.w	r0, [r13 + (-4)]	# tmp40, d
	st.w	[sp + (4)], r0	#, tmp40
	ld.w	r0, [r13 + (-8)]	# tmp41, g
	st.w	[sp], r0	#, tmp41
	call	__divsf3		#
	mov.w	r1, r0	# tmp42,
	mov.w	r0, r1	# _1, tmp42
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:147: }
	mov.w	r1, r0	# <retval>, _1
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tanf, .-tanf
	.global	__nesf2
	.p2align	1
	.global	floorf
	.type	floorf, @function
floorf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:153: 	if (d<0.0) {
	ld.w	r0, [r13 + (8)]	# d.0_1, d
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:153: 	if (d<0.0) {
	xor.w	r1, r1	# tmp37
	st.w	[sp + (4)], r1	#, tmp37
	st.w	[sp], r0	#, tmp38
	call	__ltsf2		#
	mov.w	r1, r0	# tmp39,
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jges	.L40		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:154: 		d = -d;
	ld.w	r0, [r13 + (8)]	# d.1_2, d
	mov.w	r1, -2147483648	# tmp41,
	xor.w	r0, r1	# _3, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:154: 		d = -d;
	st.w	[r13 + (8)], r0	# d, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:155: 		fract = __modf(d, &d);
	ld.w	r1, [r13 + (8)]	# d.2_4, d
	mov.w	r0, sp	# tmp43,
	mov.w	r2, r13	# tmp58,
	add.w	r2, 8 #111	# tmp58,
	st.w	[r0 + (4)], r2	#, tmp58
	st.w	[r0], r1	#, tmp44
	call	__modf		#
	st.w	[r13 + (-4)], r0	# fract,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:156: 		if (fract != 0.0)
	xor.w	r0, r0	# tmp45
	st.w	[sp + (4)], r0	#, tmp45
	ld.w	r0, [r13 + (-4)]	# tmp46, fract
	st.w	[sp], r0	#, tmp46
	call	__nesf2		#
	mov.w	r1, r0	# tmp47,
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# tmp47, tmp48
	jz	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:157: 			d += 1;
	ld.w	r0, [r13 + (8)]	# d.3_5, d
	mov.w	r1, 1065353216	# tmp49,
	st.w	[sp + (4)], r1	#, tmp49
	st.w	[sp], r0	#, tmp50
	call	__addsf3		#
	mov.w	r1, r0	# tmp51,
	mov.w	r0, r1	# _6, tmp51
	st.w	[r13 + (8)], r0	# d, tmp52
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:158: 		d = -d;
	ld.w	r0, [r13 + (8)]	# d.4_7, d
	mov.w	r1, -2147483648	# tmp53,
	xor.w	r0, r1	# _8, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:158: 		d = -d;
	st.w	[r13 + (8)], r0	# d, tmp54
	j	.L36		#
.L40:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:160: 		__modf(d, &d);
	ld.w	r1, [r13 + (8)]	# d.5_9, d
	mov.w	r0, sp	# tmp55,
	mov.w	r2, r13	# tmp59,
	add.w	r2, 8 #111	# tmp59,
	st.w	[r0 + (4)], r2	#, tmp59
	st.w	[r0], r1	#, tmp56
	call	__modf		#
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:161: 	return(d);
	ld.w	r0, [r13 + (8)]	# _19, d
	mov.w	r1, r0	# <retval>, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:162: }
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	floorf, .-floorf
	.p2align	1
	.global	ceilf
	.type	ceilf, @function
ceilf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:166: 	return(-floorf(-d));
	ld.w	r0, [r13 + (8)]	# tmp30, d
	mov.w	r1, -2147483648	# tmp31,
	xor.w	r0, r1	# _1, tmp31
	mov.w	r1, sp	# tmp32,
	st.w	[r1], r0	#, tmp33
	call	floorf		#
	mov.w	r2, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:166: 	return(-floorf(-d));
	mov.w	r1, -2147483648	# tmp34,
	mov.w	r0, r2	#,
	xor.w	r0, r1	#, tmp34
	mov.w	r1, r0	# <retval>, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:167: }
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ceilf, .-ceilf
	.global	ep0
	.data
	.p2align	2
	.type	ep0, @object
	.size	ep0, 4
ep0:
	.long	1241379843
	.global	ep1
	.p2align	2
	.type	ep1, @object
	.size	ep1, 4
ep1:
	.long	1189912050
	.global	ep2
	.p2align	2
	.type	ep2, @object
	.size	ep2, 4
ep2:
	.long	1114797468
	.global	eq0
	.p2align	2
	.type	eq0, @object
	.size	eq0, 4
eq0:
	.long	1253519425
	.global	eq1
	.p2align	2
	.type	eq1, @object
	.size	eq1, 4
eq1:
	.long	1218446757
	.global	eq2
	.p2align	2
	.type	eq2, @object
	.size	eq2, 4
eq2:
	.long	1155180853
	.global	elog2e
	.p2align	2
	.type	elog2e, @object
	.size	elog2e, 4
elog2e:
	.long	1069066811
	.global	esqrt2
	.p2align	2
	.type	esqrt2, @object
	.size	esqrt2, 4
esqrt2:
	.long	1068827891
	.global	emaxf
	.p2align	2
	.type	emaxf, @object
	.size	emaxf, 4
emaxf:
	.long	1119748096
	.text
	.p2align	1
	.global	frexpf
	.type	frexpf, @function
frexpf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:184: 	j = 0;
	xor.w	r0, r0	# tmp28
	st.w	[r13 + (-8)], r0	# j, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:185: 	neg = 0;
	xor.w	r0, r0	# tmp29
	st.w	[r13 + (-4)], r0	# neg, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:186: 	if (x < 0) {
	xor.w	r0, r0	# tmp30
	st.w	[sp + (4)], r0	#, tmp30
	ld.w	r0, [r13 + (8)]	# tmp31, x
	st.w	[sp], r0	#, tmp31
	call	__ltsf2		#
	mov.w	r1, r0	# tmp32,
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jges	.L44		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:187: 		x = -x;
	ld.w	r0, [r13 + (8)]	# tmp35, x
	mov.w	r1, -2147483648	# tmp36,
	xor.w	r0, r1	# tmp34, tmp36
	st.w	[r13 + (8)], r0	# x, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:188: 		neg = 1;
	mov.w	r0, 1	# tmp37,
	st.w	[r13 + (-4)], r0	# neg, tmp37
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:190: 	if (x >= 1.0f)
	mov.w	r0, 1065353216	# tmp38,
	st.w	[sp + (4)], r0	#, tmp38
	ld.w	r0, [r13 + (8)]	# tmp39, x
	st.w	[sp], r0	#, tmp39
	call	__gesf2		#
	mov.w	r1, r0	# tmp40,
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jss	.L61		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:191: 		while (x >= 1.0f) {
	j	.L48		#
.L49:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:192: 			j = j+1;
	ld.w	r0, [r13 + (-8)]	# tmp43, j
	add.w	r0, 1 #111	# tmp42,
	st.w	[r13 + (-8)], r0	# j, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:193: 			x = x/2.0f;
	mov.w	r0, 1073741824	# tmp44,
	st.w	[sp + (4)], r0	#, tmp44
	ld.w	r0, [r13 + (8)]	# tmp45, x
	st.w	[sp], r0	#, tmp45
	call	__divsf3		#
	mov.w	r1, r0	# tmp46,
	mov.w	r0, r1	# tmp47, tmp46
	st.w	[r13 + (8)], r0	# x, tmp47
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:191: 		while (x >= 1.0f) {
	mov.w	r0, 1065353216	# tmp48,
	st.w	[sp + (4)], r0	#, tmp48
	ld.w	r0, [r13 + (8)]	# tmp49, x
	st.w	[sp], r0	#, tmp49
	call	__gesf2		#
	mov.w	r1, r0	# tmp50,
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jges	.L49		#
	j	.L50		#
.L61:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:195: 	else if (x < 0.5f && x != 0.0f)
	mov.w	r0, 1056964608	# tmp52,
	st.w	[sp + (4)], r0	#, tmp52
	ld.w	r0, [r13 + (8)]	# tmp53, x
	st.w	[sp], r0	#, tmp53
	call	__ltsf2		#
	mov.w	r1, r0	# tmp54,
	xor.w	r0, r0	# tmp55
	cmp.w	r1, r0	# tmp54, tmp55
	jges	.L50		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:195: 	else if (x < 0.5f && x != 0.0f)
	xor.w	r0, r0	# tmp56
	st.w	[sp + (4)], r0	#, tmp56
	ld.w	r0, [r13 + (8)]	# tmp57, x
	st.w	[sp], r0	#, tmp57
	call	__nesf2		#
	mov.w	r1, r0	# tmp58,
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L50		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:196: 		while (x < 0.5f) {
	j	.L53		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:197: 			j = j-1;
	ld.w	r0, [r13 + (-8)]	# tmp61, j
	add.w	r0, -1 #111	# tmp60,
	st.w	[r13 + (-8)], r0	# j, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:198: 			x = 2.0f*x;
	ld.w	r0, [r13 + (8)]	# tmp62, x
	mov.w	r1, r0	# tmp63, tmp62
	st.w	[sp + (4)], r1	#, tmp63
	st.w	[sp], r0	#, tmp64
	call	__addsf3		#
	mov.w	r1, r0	# tmp65,
	mov.w	r0, r1	# tmp66, tmp65
	st.w	[r13 + (8)], r0	# x, tmp66
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:196: 		while (x < 0.5f) {
	mov.w	r0, 1056964608	# tmp67,
	st.w	[sp + (4)], r0	#, tmp67
	ld.w	r0, [r13 + (8)]	# tmp68, x
	st.w	[sp], r0	#, tmp68
	call	__ltsf2		#
	mov.w	r1, r0	# tmp69,
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jss	.L54		#
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:200: 	*i = j;
	ld.w	r0, [r13 + (12)]	# tmp71, i
	ld.w	r1, [r13 + (-8)]	# tmp72, j
	st.w	[r0], r1	# *i_20(D), tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:201: 	if (neg)
	ld.w	r1, [r13 + (-4)]	# tmp73, neg
	xor.w	r0, r0	# tmp74
	cmp.w	r1, r0	# tmp73, tmp74
	jz	.L55		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:202:             x = -x;
	ld.w	r0, [r13 + (8)]	# tmp76, x
	mov.w	r1, -2147483648	# tmp77,
	xor.w	r0, r1	# tmp75, tmp77
	st.w	[r13 + (8)], r0	# x, tmp75
.L55:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:203: 	return(x);
	ld.w	r0, [r13 + (8)]	# _23, x
	mov.w	r1, r0	# <retval>, _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:204: } 
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	frexpf, .-frexpf
	.p2align	1
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:211: 	if (fr == 0)
	xor.w	r0, r0	# tmp36
	st.w	[sp + (4)], r0	#, tmp36
	ld.w	r0, [r13 + (8)]	# tmp37, fr
	st.w	[sp], r0	#, tmp37
	call	__eqsf2		#
	mov.w	r1, r0	# tmp38,
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L83		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:212: 		return 0;
	xor.w	r0, r0	# _19
	j	.L80		#
.L83:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:213: 	neg = 0;
	xor.w	r0, r0	# tmp40
	st.w	[r13 + (-4)], r0	# neg, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:214: 	if (fr < 0) {
	xor.w	r0, r0	# tmp41
	st.w	[sp + (4)], r0	#, tmp41
	ld.w	r0, [r13 + (8)]	# tmp42, fr
	st.w	[sp], r0	#, tmp42
	call	__ltsf2		#
	mov.w	r1, r0	# tmp43,
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jges	.L66		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:215: 		fr = -fr;
	ld.w	r0, [r13 + (8)]	# tmp46, fr
	mov.w	r1, -2147483648	# tmp47,
	xor.w	r0, r1	# tmp45, tmp47
	st.w	[r13 + (8)], r0	# fr, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:216: 		neg = 1;
	mov.w	r0, 1	# tmp48,
	st.w	[r13 + (-4)], r0	# neg, tmp48
.L66:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:218: 	fr = frexpf(fr, &i);
	mov.w	r0, sp	# tmp49,
	mov.w	r1, r13	# tmp50,
	add.w	r1, -8 #111	# tmp50,
	st.w	[r0 + (4)], r1	#, tmp50
	ld.w	r1, [r13 + (8)]	# tmp51, fr
	st.w	[r0], r1	#, tmp51
	call	frexpf		#
	st.w	[r13 + (8)], r0	# fr,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:219: 	while (fr < 0.5f) {
	j	.L68		#
.L69:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:220: 		fr = 2*fr;
	ld.w	r0, [r13 + (8)]	# tmp52, fr
	mov.w	r1, r0	# tmp53, tmp52
	st.w	[sp + (4)], r1	#, tmp53
	st.w	[sp], r0	#, tmp54
	call	__addsf3		#
	mov.w	r1, r0	# tmp55,
	mov.w	r0, r1	# tmp56, tmp55
	st.w	[r13 + (8)], r0	# fr, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:221: 		i = i-1;
	ld.w	r0, [r13 + (-8)]	# i.6_1, i
	add.w	r0, -1 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:221: 		i = i-1;
	st.w	[r13 + (-8)], r0	# i, _2
.L68:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:219: 	while (fr < 0.5f) {
	mov.w	r0, 1056964608	# tmp57,
	st.w	[sp + (4)], r0	#, tmp57
	ld.w	r0, [r13 + (8)]	# tmp58, fr
	st.w	[sp], r0	#, tmp58
	call	__ltsf2		#
	mov.w	r1, r0	# tmp59,
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jss	.L69		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:223: 	exp = exp+i;
	ld.w	r1, [r13 + (-8)]	# i.7_3, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:223: 	exp = exp+i;
	ld.w	r0, [r13 + (12)]	# tmp62, exp
	add.w	r0, r1 #222	# tmp61, i.7_3
	st.w	[r13 + (12)], r0	# exp, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:224: 	if (exp >= FLT_MAX_EXP) {
	ld.w	r1, [r13 + (12)]	# tmp63, exp
	mov.w	r0, 127	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jses	.L70		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:225: 		if (neg)
	ld.w	r1, [r13 + (-4)]	# tmp65, neg
	xor.w	r0, r0	# tmp66
	cmp.w	r1, r0	# tmp65, tmp66
	jz	.L71		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:226: 			return(-INF);
	mov.w	r0, -822149120	# _19,
	j	.L80		#
.L71:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:228: 			return(INF);
	mov.w	r0, 1325334528	# _19,
	j	.L80		#
.L70:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:230: 	if (exp < FLT_MIN_EXP - 2)
	ld.w	r1, [r13 + (12)]	# tmp67, exp
	mov.w	r0, -127	# tmp68,
	cmp.w	r1, r0	# tmp67, tmp68
	jges	.L73		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:231: 		return(0);
	xor.w	r0, r0	# _19
	j	.L80		#
.L74:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:233: 		fr = fr*(1L<<30);
	mov.w	r0, 1317011456	# tmp69,
	st.w	[sp + (4)], r0	#, tmp69
	ld.w	r0, [r13 + (8)]	# tmp70, fr
	st.w	[sp], r0	#, tmp70
	call	__mulsf3		#
	mov.w	r1, r0	# tmp71,
	mov.w	r0, r1	# tmp72, tmp71
	st.w	[r13 + (8)], r0	# fr, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:234: 		exp = exp-30;
	ld.w	r0, [r13 + (12)]	# tmp74, exp
	add.w	r0, -30 #111	# tmp73,
	st.w	[r13 + (12)], r0	# exp, tmp73
.L73:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:232: 	while (exp > 30) {
	ld.w	r1, [r13 + (12)]	# tmp75, exp
	mov.w	r0, 30	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jgs	.L74		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:236: 	while (exp < -30) {
	j	.L75		#
.L76:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:237: 		fr = fr/(1L<<30);
	mov.w	r0, 1317011456	# tmp77,
	st.w	[sp + (4)], r0	#, tmp77
	ld.w	r0, [r13 + (8)]	# tmp78, fr
	st.w	[sp], r0	#, tmp78
	call	__divsf3		#
	mov.w	r1, r0	# tmp79,
	mov.w	r0, r1	# tmp80, tmp79
	st.w	[r13 + (8)], r0	# fr, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:238: 		exp = exp+30;
	ld.w	r0, [r13 + (12)]	# tmp82, exp
	add.w	r0, 30 #111	# tmp81,
	st.w	[r13 + (12)], r0	# exp, tmp81
.L75:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:236: 	while (exp < -30) {
	ld.w	r1, [r13 + (12)]	# tmp83, exp
	mov.w	r0, -30	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jss	.L76		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:240: 	if (exp > 0)
	ld.w	r1, [r13 + (12)]	# tmp85, exp
	xor.w	r0, r0	# tmp86
	cmp.w	r1, r0	# tmp85, tmp86
	jses	.L77		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:241: 		fr = fr*(1L<<exp);
	mov.w	r0, 1	# tmp87,
	ld.w	r1, [r13 + (12)]	# tmp88, exp
	shl.w	r0, r1	# _4, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:241: 		fr = fr*(1L<<exp);
	st.w	[sp], r0	#, _4
	call	__floatsisf		#
	mov.w	r1, r0	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:241: 		fr = fr*(1L<<exp);
	mov.w	r0, r1	# tmp89, _5
	st.w	[sp + (4)], r0	#, tmp89
	ld.w	r0, [r13 + (8)]	# tmp90, fr
	st.w	[sp], r0	#, tmp90
	call	__mulsf3		#
	mov.w	r1, r0	# tmp91,
	mov.w	r0, r1	# tmp92, tmp91
	st.w	[r13 + (8)], r0	# fr, tmp92
.L77:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:242: 	if (exp < 0)
	ld.w	r1, [r13 + (12)]	# tmp93, exp
	xor.w	r0, r0	# tmp94
	cmp.w	r1, r0	# tmp93, tmp94
	jges	.L78		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:243: 		fr = fr/(1L<<-exp);
	ld.w	r0, [r13 + (12)]	# tmp95, exp
	mov.w	r1, r0	# _6, tmp95
neg.w	r1	# _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:243: 		fr = fr/(1L<<-exp);
	mov.w	r0, 1	# tmp96,
	shl.w	r0, r1	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:243: 		fr = fr/(1L<<-exp);
	st.w	[sp], r0	#, _7
	call	__floatsisf		#
	mov.w	r1, r0	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:243: 		fr = fr/(1L<<-exp);
	mov.w	r0, r1	# tmp97, _8
	st.w	[sp + (4)], r0	#, tmp97
	ld.w	r0, [r13 + (8)]	# tmp98, fr
	st.w	[sp], r0	#, tmp98
	call	__divsf3		#
	mov.w	r1, r0	# tmp99,
	mov.w	r0, r1	# tmp100, tmp99
	st.w	[r13 + (8)], r0	# fr, tmp100
.L78:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:244: 	if (neg)
	ld.w	r1, [r13 + (-4)]	# tmp101, neg
	xor.w	r0, r0	# tmp102
	cmp.w	r1, r0	# tmp101, tmp102
	jz	.L79		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:245:             fr = -fr;
	ld.w	r0, [r13 + (8)]	# tmp104, fr
	mov.w	r1, -2147483648	# tmp105,
	xor.w	r0, r1	# tmp103, tmp105
	st.w	[r13 + (8)], r0	# fr, tmp103
.L79:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:246: 	return(fr);
	ld.w	r0, [r13 + (8)]	# _19, fr
.L80:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:247: } 
	mov.w	r1, r0	# <retval>, _19
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ldexpf, .-ldexpf
	.global	__gtsf2
	.p2align	1
	.global	expf
	.type	expf, @function
expf:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 44 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:255: 	if(arg == 0.)
	xor.w	r0, r0	# tmp54
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (8)]	# tmp55, arg
	st.w	[sp], r0	#, tmp55
	call	__eqsf2		#
	mov.w	r1, r0	# tmp56,
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L95		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:256: 		return(1.);
	mov.w	r1, 1065353216	# _27,
	j	.L87		#
.L95:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:257: 	if(arg < -emaxf)
	ld.w	r0, [emaxf]	# emaxf.8_1, emaxf
	mov.w	r1, -2147483648	# tmp58,
	xor.w	r0, r1	# _2, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:257: 	if(arg < -emaxf)
	st.w	[sp + (4)], r0	#, tmp59
	ld.w	r0, [r13 + (8)]	# tmp60, arg
	st.w	[sp], r0	#, tmp60
	call	__ltsf2		#
	mov.w	r1, r0	# tmp61,
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jges	.L96		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:258: 		return(0.);
	xor.w	r1, r1	# _27
	j	.L87		#
.L96:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:259: 	if(arg > emaxf) {
	ld.w	r0, [emaxf]	# emaxf.9_3, emaxf
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:259: 	if(arg > emaxf) {
	st.w	[sp + (4)], r0	#, tmp63
	ld.w	r0, [r13 + (8)]	# tmp64, arg
	st.w	[sp], r0	#, tmp64
	call	__gtsf2		#
	mov.w	r1, r0	# tmp65,
	xor.w	r0, r0	# tmp66
	cmp.w	r1, r0	# tmp65, tmp66
	jses	.L97		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:260: 		return(INF);
	mov.w	r1, 1325334528	# _27,
	j	.L87		#
.L97:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:262: 	arg *= elog2e;
	ld.w	r0, [elog2e]	# elog2e.10_4, elog2e
	st.w	[sp + (4)], r0	#, tmp67
	ld.w	r0, [r13 + (8)]	# tmp68, arg
	st.w	[sp], r0	#, tmp68
	call	__mulsf3		#
	mov.w	r1, r0	# tmp69,
	mov.w	r0, r1	# tmp70, tmp69
	st.w	[r13 + (8)], r0	# arg, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:263: 	ent = floorf(arg);
	mov.w	r1, sp	# tmp71,
	ld.w	r0, [r13 + (8)]	# tmp72, arg
	st.w	[r1], r0	#, tmp72
	call	floorf		#
	mov.w	r1, r0	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:263: 	ent = floorf(arg);
	mov.w	r0, r1	# tmp73, _5
	st.w	[sp], r0	#, tmp73
	call	__fixsfsi		#
	st.w	[r13 + (-8)], r0	# ent, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:264: 	fract = (arg-ent) - 0.5f;
	ld.w	r0, [r13 + (-8)]	# tmp75, ent
	st.w	[sp], r0	#, tmp75
	call	__floatsisf		#
	mov.w	r1, r0	# _6,
	mov.w	r0, r1	# tmp76, _6
	st.w	[sp + (4)], r0	#, tmp76
	ld.w	r0, [r13 + (8)]	# tmp77, arg
	st.w	[sp], r0	#, tmp77
	call	__subsf3		#
	mov.w	r1, r0	# tmp78,
	mov.w	r0, r1	# _7, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:264: 	fract = (arg-ent) - 0.5f;
	mov.w	r1, 1056964608	# tmp79,
	st.w	[sp + (4)], r1	#, tmp79
	st.w	[sp], r0	#, tmp80
	call	__subsf3		#
	mov.w	r1, r0	# tmp81,
	mov.w	r0, r1	# tmp82, tmp81
	st.w	[r13 + (-12)], r0	# fract, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:265: 	xsq = fract*fract;
	ld.w	r0, [r13 + (-12)]	# tmp83, fract
	st.w	[sp + (4)], r0	#, tmp83
	ld.w	r0, [r13 + (-12)]	# tmp84, fract
	st.w	[sp], r0	#, tmp84
	call	__mulsf3		#
	mov.w	r1, r0	# tmp85,
	mov.w	r0, r1	# tmp86, tmp85
	st.w	[r13 + (-16)], r0	# xsq, tmp86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:266: 	temp1 = ((ep2*xsq+ep1)*xsq+ep0)*fract;
	ld.w	r0, [ep2]	# ep2.11_8, ep2
	ld.w	r1, [r13 + (-16)]	# tmp87, xsq
	st.w	[sp + (4)], r1	#, tmp87
	st.w	[sp], r0	#, tmp88
	call	__mulsf3		#
	mov.w	r1, r0	# tmp89,
	mov.w	r0, r1	# _9, tmp89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:266: 	temp1 = ((ep2*xsq+ep1)*xsq+ep0)*fract;
	ld.w	r1, [ep1]	# ep1.12_10, ep1
	st.w	[sp + (4)], r1	#, tmp90
	st.w	[sp], r0	#, tmp91
	call	__addsf3		#
	mov.w	r1, r0	# tmp92,
	mov.w	r0, r1	# _11, tmp92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:266: 	temp1 = ((ep2*xsq+ep1)*xsq+ep0)*fract;
	ld.w	r1, [r13 + (-16)]	# tmp93, xsq
	st.w	[sp + (4)], r1	#, tmp93
	st.w	[sp], r0	#, tmp94
	call	__mulsf3		#
	mov.w	r1, r0	# tmp95,
	mov.w	r0, r1	# _12, tmp95
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:266: 	temp1 = ((ep2*xsq+ep1)*xsq+ep0)*fract;
	ld.w	r1, [ep0]	# ep0.13_13, ep0
	st.w	[sp + (4)], r1	#, tmp96
	st.w	[sp], r0	#, tmp97
	call	__addsf3		#
	mov.w	r1, r0	# tmp98,
	mov.w	r0, r1	# _14, tmp98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:266: 	temp1 = ((ep2*xsq+ep1)*xsq+ep0)*fract;
	st.w	[sp + (4)], r0	#, tmp99
	ld.w	r0, [r13 + (-12)]	# tmp100, fract
	st.w	[sp], r0	#, tmp100
	call	__mulsf3		#
	mov.w	r1, r0	# tmp101,
	mov.w	r0, r1	# tmp102, tmp101
	st.w	[r13 + (-20)], r0	# temp1, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:267: 	temp2 = ((1.0f*xsq+eq2)*xsq+eq1)*xsq + eq0;
	ld.w	r0, [eq2]	# eq2.14_15, eq2
	ld.w	r1, [r13 + (-16)]	# tmp103, xsq
	st.w	[sp + (4)], r1	#, tmp103
	st.w	[sp], r0	#, tmp104
	call	__addsf3		#
	mov.w	r1, r0	# tmp105,
	mov.w	r0, r1	# _16, tmp105
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:267: 	temp2 = ((1.0f*xsq+eq2)*xsq+eq1)*xsq + eq0;
	ld.w	r1, [r13 + (-16)]	# tmp106, xsq
	st.w	[sp + (4)], r1	#, tmp106
	st.w	[sp], r0	#, tmp107
	call	__mulsf3		#
	mov.w	r1, r0	# tmp108,
	mov.w	r0, r1	# _17, tmp108
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:267: 	temp2 = ((1.0f*xsq+eq2)*xsq+eq1)*xsq + eq0;
	ld.w	r1, [eq1]	# eq1.15_18, eq1
	st.w	[sp + (4)], r1	#, tmp109
	st.w	[sp], r0	#, tmp110
	call	__addsf3		#
	mov.w	r1, r0	# tmp111,
	mov.w	r0, r1	# _19, tmp111
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:267: 	temp2 = ((1.0f*xsq+eq2)*xsq+eq1)*xsq + eq0;
	ld.w	r1, [r13 + (-16)]	# tmp112, xsq
	st.w	[sp + (4)], r1	#, tmp112
	st.w	[sp], r0	#, tmp113
	call	__mulsf3		#
	mov.w	r1, r0	# tmp114,
	mov.w	r0, r1	# _20, tmp114
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:267: 	temp2 = ((1.0f*xsq+eq2)*xsq+eq1)*xsq + eq0;
	ld.w	r1, [eq0]	# eq0.16_21, eq0
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:267: 	temp2 = ((1.0f*xsq+eq2)*xsq+eq1)*xsq + eq0;
	st.w	[sp + (4)], r1	#, tmp115
	st.w	[sp], r0	#, tmp116
	call	__addsf3		#
	mov.w	r1, r0	# tmp117,
	mov.w	r0, r1	# tmp118, tmp117
	st.w	[r13 + (-24)], r0	# temp2, tmp118
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:268: 	return(ldexpf(esqrt2*(temp2+temp1)/(temp2-temp1), ent));
	ld.w	r0, [r13 + (-20)]	# tmp119, temp1
	st.w	[sp + (4)], r0	#, tmp119
	ld.w	r0, [r13 + (-24)]	# tmp120, temp2
	st.w	[sp], r0	#, tmp120
	call	__addsf3		#
	mov.w	r1, r0	# tmp121,
	mov.w	r0, r1	# _22, tmp121
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:268: 	return(ldexpf(esqrt2*(temp2+temp1)/(temp2-temp1), ent));
	ld.w	r1, [esqrt2]	# esqrt2.17_23, esqrt2
	st.w	[sp + (4)], r1	#, tmp122
	st.w	[sp], r0	#, tmp123
	call	__mulsf3		#
	mov.w	r1, r0	# tmp124,
	mov.w	r6, r1	# _24, tmp124
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:268: 	return(ldexpf(esqrt2*(temp2+temp1)/(temp2-temp1), ent));
	ld.w	r0, [r13 + (-20)]	# tmp125, temp1
	st.w	[sp + (4)], r0	#, tmp125
	ld.w	r0, [r13 + (-24)]	# tmp126, temp2
	st.w	[sp], r0	#, tmp126
	call	__subsf3		#
	mov.w	r1, r0	# tmp127,
	mov.w	r0, r1	# _25, tmp127
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:268: 	return(ldexpf(esqrt2*(temp2+temp1)/(temp2-temp1), ent));
	mov.w	r1, r0	# tmp128, _25
	mov.w	r0, r6	# tmp129, _24
	st.w	[sp + (4)], r1	#, tmp128
	st.w	[sp], r0	#, tmp129
	call	__divsf3		#
	mov.w	r2, r0	# tmp130,
	mov.w	r1, r2	# _26, tmp130
	mov.w	r0, sp	# tmp131,
	ld.w	r2, [r13 + (-8)]	# tmp132, ent
	st.w	[r0 + (4)], r2	#, tmp132
	st.w	[r0], r1	#, tmp133
	call	ldexpf		#
	mov.w	r1, r0	# _27,
.L87:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:269: } 
	mov.w	r0, r1	# <retval>, _27
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expf, .-expf
	.global	_log2
	.data
	.p2align	2
	.type	_log2, @object
	.size	_log2, 4
_log2:
	.long	1060205080
	.global	ln10
	.p2align	2
	.type	ln10, @object
	.size	ln10, 4
ln10:
	.long	1075010958
	.global	sqrto2
	.p2align	2
	.type	sqrto2, @object
	.size	sqrto2, 4
sqrto2:
	.long	1060439283
	.global	p0
	.p2align	2
	.type	p0, @object
	.size	p0, 4
p0:
	.long	-1044374399
	.global	p1
	.p2align	2
	.type	p1, @object
	.size	p1, 4
p1:
	.long	1106749577
	.global	p2
	.p2align	2
	.type	p2, @object
	.size	p2, 4
p2:
	.long	-1055247365
	.global	p3
	.p2align	2
	.type	p3, @object
	.size	p3, 4
p3:
	.long	1054316740
	.global	q0
	.p2align	2
	.type	q0, @object
	.size	q0, 4
q0:
	.long	-1052763007
	.global	q1
	.p2align	2
	.type	q1, @object
	.size	q1, 4
q1:
	.long	1100732677
	.global	q2
	.p2align	2
	.type	q2, @object
	.size	q2, 4
q2:
	.long	-1056009241
	.global	__lesf2
	.text
	.p2align	1
	.global	logf
	.type	logf, @function
logf:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 44 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:287: 	if(arg <= 0.) {
	xor.w	r0, r0	# tmp57
	st.w	[sp + (4)], r0	#, tmp57
	ld.w	r0, [r13 + (8)]	# tmp58, arg
	st.w	[sp], r0	#, tmp58
	call	__lesf2		#
	mov.w	r1, r0	# tmp59,
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jgs	.L109		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:288: 		return(-INF);
	mov.w	r0, -822149120	# _32,
	j	.L106		#
.L109:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:290: 	x = frexpf(arg,&exp);
	mov.w	r0, sp	# tmp61,
	mov.w	r1, r13	# tmp62,
	add.w	r1, -24 #111	# tmp62,
	st.w	[r0 + (4)], r1	#, tmp62
	ld.w	r1, [r13 + (8)]	# tmp63, arg
	st.w	[r0], r1	#, tmp63
	call	frexpf		#
	st.w	[r13 + (-8)], r0	# x,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:291: 	while(x<0.5f) {
	j	.L102		#
.L103:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:292: 		x = x*2;
	ld.w	r0, [r13 + (-8)]	# tmp64, x
	mov.w	r1, r0	# tmp65, tmp64
	st.w	[sp + (4)], r1	#, tmp65
	st.w	[sp], r0	#, tmp66
	call	__addsf3		#
	mov.w	r1, r0	# tmp67,
	mov.w	r0, r1	# tmp68, tmp67
	st.w	[r13 + (-8)], r0	# x, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:293: 		exp = exp-1;
	ld.w	r0, [r13 + (-24)]	# exp.18_1, exp
	add.w	r0, -1 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:293: 		exp = exp-1;
	st.w	[r13 + (-24)], r0	# exp, _2
.L102:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:291: 	while(x<0.5f) {
	mov.w	r0, 1056964608	# tmp69,
	st.w	[sp + (4)], r0	#, tmp69
	ld.w	r0, [r13 + (-8)]	# tmp70, x
	st.w	[sp], r0	#, tmp70
	call	__ltsf2		#
	mov.w	r1, r0	# tmp71,
	xor.w	r0, r0	# tmp72
	cmp.w	r1, r0	# tmp71, tmp72
	jss	.L103		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:295: 	if(x<sqrto2) {
	ld.w	r0, [sqrto2]	# sqrto2.19_3, sqrto2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:295: 	if(x<sqrto2) {
	st.w	[sp + (4)], r0	#, tmp73
	ld.w	r0, [r13 + (-8)]	# tmp74, x
	st.w	[sp], r0	#, tmp74
	call	__ltsf2		#
	mov.w	r1, r0	# tmp75,
	xor.w	r0, r0	# tmp76
	cmp.w	r1, r0	# tmp75, tmp76
	jges	.L104		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:296: 		x = 2*x;
	ld.w	r0, [r13 + (-8)]	# tmp77, x
	mov.w	r1, r0	# tmp78, tmp77
	st.w	[sp + (4)], r1	#, tmp78
	st.w	[sp], r0	#, tmp79
	call	__addsf3		#
	mov.w	r1, r0	# tmp80,
	mov.w	r0, r1	# tmp81, tmp80
	st.w	[r13 + (-8)], r0	# x, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:297: 		exp = exp-1;
	ld.w	r0, [r13 + (-24)]	# exp.20_4, exp
	add.w	r0, -1 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:297: 		exp = exp-1;
	st.w	[r13 + (-24)], r0	# exp, _5
.L104:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:300: 	z = (x-1)/(x+1);
	mov.w	r0, 1065353216	# tmp82,
	st.w	[sp + (4)], r0	#, tmp82
	ld.w	r0, [r13 + (-8)]	# tmp83, x
	st.w	[sp], r0	#, tmp83
	call	__subsf3		#
	mov.w	r1, r0	# tmp84,
	mov.w	r6, r1	# _6, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:300: 	z = (x-1)/(x+1);
	mov.w	r0, 1065353216	# tmp85,
	st.w	[sp + (4)], r0	#, tmp85
	ld.w	r0, [r13 + (-8)]	# tmp86, x
	st.w	[sp], r0	#, tmp86
	call	__addsf3		#
	mov.w	r1, r0	# tmp87,
	mov.w	r0, r1	# _7, tmp87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:300: 	z = (x-1)/(x+1);
	mov.w	r1, r0	# tmp88, _7
	mov.w	r0, r6	# tmp89, _6
	st.w	[sp + (4)], r1	#, tmp88
	st.w	[sp], r0	#, tmp89
	call	__divsf3		#
	mov.w	r1, r0	# tmp90,
	mov.w	r0, r1	# tmp91, tmp90
	st.w	[r13 + (-12)], r0	# z, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:301: 	zsq = z*z;
	ld.w	r0, [r13 + (-12)]	# tmp92, z
	st.w	[sp + (4)], r0	#, tmp92
	ld.w	r0, [r13 + (-12)]	# tmp93, z
	st.w	[sp], r0	#, tmp93
	call	__mulsf3		#
	mov.w	r1, r0	# tmp94,
	mov.w	r0, r1	# tmp95, tmp94
	st.w	[r13 + (-16)], r0	# zsq, tmp95
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:303: 	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	ld.w	r0, [p3]	# p3.21_8, p3
	ld.w	r1, [r13 + (-16)]	# tmp96, zsq
	st.w	[sp + (4)], r1	#, tmp96
	st.w	[sp], r0	#, tmp97
	call	__mulsf3		#
	mov.w	r1, r0	# tmp98,
	mov.w	r0, r1	# _9, tmp98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:303: 	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	ld.w	r1, [p2]	# p2.22_10, p2
	st.w	[sp + (4)], r1	#, tmp99
	st.w	[sp], r0	#, tmp100
	call	__addsf3		#
	mov.w	r1, r0	# tmp101,
	mov.w	r0, r1	# _11, tmp101
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:303: 	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	ld.w	r1, [r13 + (-16)]	# tmp102, zsq
	st.w	[sp + (4)], r1	#, tmp102
	st.w	[sp], r0	#, tmp103
	call	__mulsf3		#
	mov.w	r1, r0	# tmp104,
	mov.w	r0, r1	# _12, tmp104
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:303: 	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	ld.w	r1, [p1]	# p1.23_13, p1
	st.w	[sp + (4)], r1	#, tmp105
	st.w	[sp], r0	#, tmp106
	call	__addsf3		#
	mov.w	r1, r0	# tmp107,
	mov.w	r0, r1	# _14, tmp107
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:303: 	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	ld.w	r1, [r13 + (-16)]	# tmp108, zsq
	st.w	[sp + (4)], r1	#, tmp108
	st.w	[sp], r0	#, tmp109
	call	__mulsf3		#
	mov.w	r1, r0	# tmp110,
	mov.w	r0, r1	# _15, tmp110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:303: 	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	ld.w	r1, [p0]	# p0.24_16, p0
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:303: 	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	st.w	[sp + (4)], r1	#, tmp111
	st.w	[sp], r0	#, tmp112
	call	__addsf3		#
	mov.w	r1, r0	# tmp113,
	mov.w	r0, r1	# tmp114, tmp113
	st.w	[r13 + (-20)], r0	# temp, tmp114
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:304: 	temp = temp/(((1.0f*zsq + q2)*zsq + q1)*zsq + q0);
	ld.w	r0, [q2]	# q2.25_17, q2
	ld.w	r1, [r13 + (-16)]	# tmp115, zsq
	st.w	[sp + (4)], r1	#, tmp115
	st.w	[sp], r0	#, tmp116
	call	__addsf3		#
	mov.w	r1, r0	# tmp117,
	mov.w	r0, r1	# _18, tmp117
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:304: 	temp = temp/(((1.0f*zsq + q2)*zsq + q1)*zsq + q0);
	ld.w	r1, [r13 + (-16)]	# tmp118, zsq
	st.w	[sp + (4)], r1	#, tmp118
	st.w	[sp], r0	#, tmp119
	call	__mulsf3		#
	mov.w	r1, r0	# tmp120,
	mov.w	r0, r1	# _19, tmp120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:304: 	temp = temp/(((1.0f*zsq + q2)*zsq + q1)*zsq + q0);
	ld.w	r1, [q1]	# q1.26_20, q1
	st.w	[sp + (4)], r1	#, tmp121
	st.w	[sp], r0	#, tmp122
	call	__addsf3		#
	mov.w	r1, r0	# tmp123,
	mov.w	r0, r1	# _21, tmp123
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:304: 	temp = temp/(((1.0f*zsq + q2)*zsq + q1)*zsq + q0);
	ld.w	r1, [r13 + (-16)]	# tmp124, zsq
	st.w	[sp + (4)], r1	#, tmp124
	st.w	[sp], r0	#, tmp125
	call	__mulsf3		#
	mov.w	r1, r0	# tmp126,
	mov.w	r0, r1	# _22, tmp126
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:304: 	temp = temp/(((1.0f*zsq + q2)*zsq + q1)*zsq + q0);
	ld.w	r1, [q0]	# q0.27_23, q0
	st.w	[sp + (4)], r1	#, tmp127
	st.w	[sp], r0	#, tmp128
	call	__addsf3		#
	mov.w	r1, r0	# tmp129,
	mov.w	r0, r1	# _24, tmp129
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:304: 	temp = temp/(((1.0f*zsq + q2)*zsq + q1)*zsq + q0);
	st.w	[sp + (4)], r0	#, tmp130
	ld.w	r0, [r13 + (-20)]	# tmp131, temp
	st.w	[sp], r0	#, tmp131
	call	__divsf3		#
	mov.w	r1, r0	# tmp132,
	mov.w	r0, r1	# tmp133, tmp132
	st.w	[r13 + (-20)], r0	# temp, tmp133
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:305: 	temp = temp*z + exp*_log2;
	ld.w	r0, [r13 + (-12)]	# tmp134, z
	st.w	[sp + (4)], r0	#, tmp134
	ld.w	r0, [r13 + (-20)]	# tmp135, temp
	st.w	[sp], r0	#, tmp135
	call	__mulsf3		#
	mov.w	r1, r0	# tmp136,
	mov.w	r6, r1	# _25, tmp136
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:305: 	temp = temp*z + exp*_log2;
	ld.w	r0, [r13 + (-24)]	# exp.28_26, exp
	st.w	[sp], r0	#, exp.28_26
	call	__floatsisf		#
	mov.w	r2, r0	# _27,
	ld.w	r0, [_log2]	# _log2.29_28, _log2
	mov.w	r1, r0	# tmp137, _log2.29_28
	mov.w	r0, r2	# tmp138, _27
	st.w	[sp + (4)], r1	#, tmp137
	st.w	[sp], r0	#, tmp138
	call	__mulsf3		#
	mov.w	r1, r0	# tmp139,
	mov.w	r0, r1	# _29, tmp139
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:305: 	temp = temp*z + exp*_log2;
	mov.w	r1, r0	# tmp140, _29
	mov.w	r0, r6	# tmp141, _25
	st.w	[sp + (4)], r1	#, tmp140
	st.w	[sp], r0	#, tmp141
	call	__addsf3		#
	mov.w	r1, r0	# tmp142,
	mov.w	r0, r1	# tmp143, tmp142
	st.w	[r13 + (-20)], r0	# temp, tmp143
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:306: 	return(temp);
	ld.w	r0, [r13 + (-20)]	# _32, temp
.L106:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:307: }
	mov.w	r1, r0	# <retval>, _32
	mov.w	r0, r1	#, <retval>
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	logf, .-logf
	.p2align	1
	.global	log10f
	.type	log10f, @function
log10f:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:312: 	return(logf(arg)/ln10);
	mov.w	r1, sp	# tmp30,
	ld.w	r0, [r13 + (8)]	# tmp31, arg
	st.w	[r1], r0	#, tmp31
	call	logf		#
	mov.w	r2, r0	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:312: 	return(logf(arg)/ln10);
	ld.w	r0, [ln10]	# ln10.30_2, ln10
	mov.w	r1, r0	# tmp32, ln10.30_2
	mov.w	r0, r2	# tmp33, _1
	st.w	[sp + (4)], r1	#, tmp32
	st.w	[sp], r0	#, tmp33
	call	__divsf3		#
	mov.w	r1, r0	# tmp34,
	mov.w	r0, r1	# _6, tmp34
	mov.w	r1, r0	# <retval>, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:313: } 
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	log10f, .-log10f
	.p2align	1
	.global	sqrtf
	.type	sqrtf, @function
sqrtf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:321: 	if(arg <= 0.) {
	xor.w	r0, r0	# tmp52
	st.w	[sp + (4)], r0	#, tmp52
	ld.w	r0, [r13 + (8)]	# tmp53, arg
	st.w	[sp], r0	#, tmp53
	call	__lesf2		#
	mov.w	r1, r0	# tmp54,
	xor.w	r0, r0	# tmp55
	cmp.w	r1, r0	# tmp54, tmp55
	jgs	.L129		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:322: 		return(0.);
	xor.w	r0, r0	# _32
	j	.L127		#
.L129:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:324: 	x = frexpf(arg,&exp);
	mov.w	r0, sp	# tmp56,
	mov.w	r1, r13	# tmp57,
	add.w	r1, -16 #111	# tmp57,
	st.w	[r0 + (4)], r1	#, tmp57
	ld.w	r1, [r13 + (8)]	# tmp58, arg
	st.w	[r0], r1	#, tmp58
	call	frexpf		#
	st.w	[r13 + (-4)], r0	# x,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:325: 	while(x < 0.5f) {
	j	.L116		#
.L117:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:326: 		x *= 2;
	ld.w	r0, [r13 + (-4)]	# tmp59, x
	mov.w	r1, r0	# tmp60, tmp59
	st.w	[sp + (4)], r1	#, tmp60
	st.w	[sp], r0	#, tmp61
	call	__addsf3		#
	mov.w	r1, r0	# tmp62,
	mov.w	r0, r1	# tmp63, tmp62
	st.w	[r13 + (-4)], r0	# x, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:327: 		exp--;
	ld.w	r0, [r13 + (-16)]	# exp.31_1, exp
	add.w	r0, -1 #111	# _2,
	st.w	[r13 + (-16)], r0	# exp, _2
.L116:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:325: 	while(x < 0.5f) {
	mov.w	r0, 1056964608	# tmp64,
	st.w	[sp + (4)], r0	#, tmp64
	ld.w	r0, [r13 + (-4)]	# tmp65, x
	st.w	[sp], r0	#, tmp65
	call	__ltsf2		#
	mov.w	r1, r0	# tmp66,
	xor.w	r0, r0	# tmp67
	cmp.w	r1, r0	# tmp66, tmp67
	jss	.L117		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:333: 	if(exp & 1) {
	ld.w	r1, [r13 + (-16)]	# exp.32_3, exp
	mov.w	r0, 1	# tmp68,
	and.w	r1, r0	# _4, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:333: 	if(exp & 1) {
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# _4, tmp69
	jz	.L118		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:334: 		x *= 2;
	ld.w	r0, [r13 + (-4)]	# tmp70, x
	mov.w	r1, r0	# tmp71, tmp70
	st.w	[sp + (4)], r1	#, tmp71
	st.w	[sp], r0	#, tmp72
	call	__addsf3		#
	mov.w	r1, r0	# tmp73,
	mov.w	r0, r1	# tmp74, tmp73
	st.w	[r13 + (-4)], r0	# x, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:335: 		exp--;
	ld.w	r0, [r13 + (-16)]	# exp.33_5, exp
	add.w	r0, -1 #111	# _6,
	st.w	[r13 + (-16)], r0	# exp, _6
.L118:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:337: 	temp = 0.5f*(1.0f+x);
	mov.w	r0, 1065353216	# tmp75,
	st.w	[sp + (4)], r0	#, tmp75
	ld.w	r0, [r13 + (-4)]	# tmp76, x
	st.w	[sp], r0	#, tmp76
	call	__addsf3		#
	mov.w	r1, r0	# tmp77,
	mov.w	r0, r1	# _7, tmp77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:337: 	temp = 0.5f*(1.0f+x);
	mov.w	r1, 1056964608	# tmp78,
	st.w	[sp + (4)], r1	#, tmp78
	st.w	[sp], r0	#, tmp79
	call	__mulsf3		#
	mov.w	r1, r0	# tmp80,
	mov.w	r0, r1	# tmp81, tmp80
	st.w	[r13 + (-8)], r0	# temp, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:339: 	while(exp > 60) {
	j	.L119		#
.L120:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:340: 		temp *= (1L<<30);
	mov.w	r0, 1317011456	# tmp82,
	st.w	[sp + (4)], r0	#, tmp82
	ld.w	r0, [r13 + (-8)]	# tmp83, temp
	st.w	[sp], r0	#, tmp83
	call	__mulsf3		#
	mov.w	r1, r0	# tmp84,
	mov.w	r0, r1	# tmp85, tmp84
	st.w	[r13 + (-8)], r0	# temp, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:341: 		exp -= 60;
	ld.w	r0, [r13 + (-16)]	# exp.34_8, exp
	add.w	r0, -60 #111	# _9,
	st.w	[r13 + (-16)], r0	# exp, _9
.L119:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:339: 	while(exp > 60) {
	ld.w	r1, [r13 + (-16)]	# exp.35_10, exp
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:339: 	while(exp > 60) {
	mov.w	r0, 60	# tmp86,
	cmp.w	r1, r0	# exp.35_10, tmp86
	jgs	.L120		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:343: 	while(exp < -60) {
	j	.L121		#
.L122:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:344: 		temp /= (1L<<30);
	mov.w	r0, 1317011456	# tmp87,
	st.w	[sp + (4)], r0	#, tmp87
	ld.w	r0, [r13 + (-8)]	# tmp88, temp
	st.w	[sp], r0	#, tmp88
	call	__divsf3		#
	mov.w	r1, r0	# tmp89,
	mov.w	r0, r1	# tmp90, tmp89
	st.w	[r13 + (-8)], r0	# temp, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:345: 		exp += 60;
	ld.w	r0, [r13 + (-16)]	# exp.36_11, exp
	add.w	r0, 60 #111	# _12,
	st.w	[r13 + (-16)], r0	# exp, _12
.L121:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:343: 	while(exp < -60) {
	ld.w	r1, [r13 + (-16)]	# exp.37_13, exp
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:343: 	while(exp < -60) {
	mov.w	r0, -60	# tmp91,
	cmp.w	r1, r0	# exp.37_13, tmp91
	jss	.L122		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:347: 	if(exp >= 0)
	ld.w	r1, [r13 + (-16)]	# exp.38_14, exp
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:347: 	if(exp >= 0)
	xor.w	r0, r0	# tmp92
	cmp.w	r1, r0	# exp.38_14, tmp92
	jss	.L123		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:348: 		temp *= 1L << (exp/2);
	ld.w	r0, [r13 + (-16)]	# exp.39_15, exp
	mov.w	r2, 31	# tmp94,
	mov.w	r1, r0	# tmp93, exp.39_15
	shr.w	r1, r2	# tmp93, tmp94
	mov.w	r2, r1	# tmp95, tmp93
	add.w	r2, r0 #222	# tmp95, exp.39_15
	mov.w	r1, 1	# tmp97,
	mov.w	r0, r2	# tmp96, tmp95
	shr.w	r0, r1	# tmp96, tmp97
	mov.w	r1, r0	# _16, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:348: 		temp *= 1L << (exp/2);
	mov.w	r0, 1	# tmp98,
	shl.w	r0, r1	# _17, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:348: 		temp *= 1L << (exp/2);
	st.w	[sp], r0	#, _17
	call	__floatsisf		#
	mov.w	r1, r0	# _18,
	mov.w	r0, r1	# tmp99, _18
	st.w	[sp + (4)], r0	#, tmp99
	ld.w	r0, [r13 + (-8)]	# tmp100, temp
	st.w	[sp], r0	#, tmp100
	call	__mulsf3		#
	mov.w	r1, r0	# tmp101,
	mov.w	r0, r1	# tmp102, tmp101
	st.w	[r13 + (-8)], r0	# temp, tmp102
	j	.L124		#
.L123:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:350: 		temp /= 1L << (-exp/2);
	ld.w	r0, [r13 + (-16)]	# exp.40_19, exp
	mov.w	r2, 31	# tmp104,
	mov.w	r1, r0	# tmp103, exp.40_19
	shr.w	r1, r2	# tmp103, tmp104
	mov.w	r2, r1	# tmp105, tmp103
	add.w	r2, r0 #222	# tmp105, exp.40_19
	mov.w	r1, 1	# tmp107,
	mov.w	r0, r2	# tmp106, tmp105
	shr.w	r0, r1	# tmp106, tmp107
	mov.w	r0, r0	# tmp106, tmp106
neg.w	r0	# tmp106
	mov.w	r1, r0	# _20, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:350: 		temp /= 1L << (-exp/2);
	mov.w	r0, 1	# tmp108,
	shl.w	r0, r1	# _21, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:350: 		temp /= 1L << (-exp/2);
	st.w	[sp], r0	#, _21
	call	__floatsisf		#
	mov.w	r1, r0	# _22,
	mov.w	r0, r1	# tmp109, _22
	st.w	[sp + (4)], r0	#, tmp109
	ld.w	r0, [r13 + (-8)]	# tmp110, temp
	st.w	[sp], r0	#, tmp110
	call	__divsf3		#
	mov.w	r1, r0	# tmp111,
	mov.w	r0, r1	# tmp112, tmp111
	st.w	[r13 + (-8)], r0	# temp, tmp112
.L124:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:351: 	for(i=0; i<=4; i++)
	xor.w	r0, r0	# tmp113
	st.w	[r13 + (-12)], r0	# i, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:351: 	for(i=0; i<=4; i++)
	j	.L125		#
.L126:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:352: 		temp = 0.5f*(temp + arg/temp);
	ld.w	r0, [r13 + (-8)]	# tmp114, temp
	st.w	[sp + (4)], r0	#, tmp114
	ld.w	r0, [r13 + (8)]	# tmp115, arg
	st.w	[sp], r0	#, tmp115
	call	__divsf3		#
	mov.w	r1, r0	# tmp116,
	mov.w	r0, r1	# _23, tmp116
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:352: 		temp = 0.5f*(temp + arg/temp);
	ld.w	r1, [r13 + (-8)]	# tmp117, temp
	st.w	[sp + (4)], r1	#, tmp117
	st.w	[sp], r0	#, tmp118
	call	__addsf3		#
	mov.w	r1, r0	# tmp119,
	mov.w	r0, r1	# _24, tmp119
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:352: 		temp = 0.5f*(temp + arg/temp);
	mov.w	r1, 1056964608	# tmp120,
	st.w	[sp + (4)], r1	#, tmp120
	st.w	[sp], r0	#, tmp121
	call	__mulsf3		#
	mov.w	r1, r0	# tmp122,
	mov.w	r0, r1	# tmp123, tmp122
	st.w	[r13 + (-8)], r0	# temp, tmp123
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:351: 	for(i=0; i<=4; i++)
	ld.w	r0, [r13 + (-12)]	# tmp125, i
	add.w	r0, 1 #111	# tmp124,
	st.w	[r13 + (-12)], r0	# i, tmp124
.L125:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:351: 	for(i=0; i<=4; i++)
	ld.w	r1, [r13 + (-12)]	# tmp126, i
	mov.w	r0, 4	# tmp127,
	cmp.w	r1, r0	# tmp126, tmp127
	jses	.L126		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:353: 	return(temp);
	ld.w	r0, [r13 + (-8)]	# _32, temp
.L127:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:354: } 
	mov.w	r1, r0	# <retval>, _32
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sqrtf, .-sqrtf
	.p2align	1
	.global	powf
	.type	powf, @function
powf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:361: 	if(arg1 <= 0.) {
	xor.w	r0, r0	# tmp35
	st.w	[sp + (4)], r0	#, tmp35
	ld.w	r0, [r13 + (8)]	# tmp36, arg1
	st.w	[sp], r0	#, tmp36
	call	__lesf2		#
	mov.w	r1, r0	# tmp37,
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# tmp37, tmp38
	jgs	.L144		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:362: 		if(arg1 == 0.) {
	xor.w	r0, r0	# tmp39
	st.w	[sp + (4)], r0	#, tmp39
	ld.w	r0, [r13 + (8)]	# tmp40, arg1
	st.w	[sp], r0	#, tmp40
	call	__eqsf2		#
	mov.w	r1, r0	# tmp41,
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L145		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:363: 			if(arg2 <= 0.)
	xor.w	r0, r0	# tmp43
	st.w	[sp + (4)], r0	#, tmp43
	ld.w	r0, [r13 + (12)]	# tmp44, arg2
	st.w	[sp], r0	#, tmp44
	call	__lesf2		#
	mov.w	r1, r0	# tmp45,
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# tmp45, tmp46
	jses	.L146		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:365: 			return(0.);
	xor.w	r1, r1	# _9
	j	.L138		#
.L145:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:367: 		l = arg2;
	ld.w	r0, [r13 + (12)]	# tmp47, arg2
	st.w	[sp], r0	#, tmp47
	call	__fixsfsi		#
	st.w	[r13 + (-8)], r0	# l, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:368: 		if(l != arg2)
	ld.w	r0, [r13 + (-8)]	# tmp49, l
	st.w	[sp], r0	#, tmp49
	call	__floatsisf		#
	mov.w	r1, r0	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:368: 		if(l != arg2)
	mov.w	r0, r1	# tmp50, _1
	st.w	[sp + (4)], r0	#, tmp50
	ld.w	r0, [r13 + (12)]	# tmp51, arg2
	st.w	[sp], r0	#, tmp51
	call	__nesf2		#
	mov.w	r1, r0	# tmp52,
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L147		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:370: 		temp = expf(arg2 * logf(-arg1));
	ld.w	r0, [r13 + (8)]	# tmp54, arg1
	mov.w	r1, -2147483648	# tmp55,
	xor.w	r0, r1	# _2, tmp55
	mov.w	r1, sp	# tmp56,
	st.w	[r1], r0	#, tmp57
	call	logf		#
	mov.w	r2, r0	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:370: 		temp = expf(arg2 * logf(-arg1));
	ld.w	r1, [r13 + (12)]	# tmp58, arg2
	mov.w	r0, r2	# tmp59, _3
	st.w	[sp + (4)], r1	#, tmp58
	st.w	[sp], r0	#, tmp59
	call	__mulsf3		#
	mov.w	r1, r0	# tmp60,
	mov.w	r0, r1	# _4, tmp60
	mov.w	r1, sp	# tmp61,
	st.w	[r1], r0	#, tmp62
	call	expf		#
	st.w	[r13 + (-4)], r0	# temp,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:371: 		if(l & 1)
	ld.w	r1, [r13 + (-8)]	# tmp63, l
	mov.w	r0, 1	# tmp64,
	and.w	r1, r0	# _5, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:371: 		if(l & 1)
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# _5, tmp65
	jz	.L141		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:372: 			temp = -temp;
	ld.w	r0, [r13 + (-4)]	# tmp67, temp
	mov.w	r1, -2147483648	# tmp68,
	xor.w	r0, r1	# tmp66, tmp68
	st.w	[r13 + (-4)], r0	# temp, tmp66
.L141:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:373: 		return(temp);
	ld.w	r1, [r13 + (-4)]	# _9, temp
	j	.L138		#
.L144:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:375: 	return(expf(arg2 * logf(arg1)));
	mov.w	r1, sp	# tmp69,
	ld.w	r0, [r13 + (8)]	# tmp70, arg1
	st.w	[r1], r0	#, tmp70
	call	logf		#
	mov.w	r2, r0	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:375: 	return(expf(arg2 * logf(arg1)));
	ld.w	r1, [r13 + (12)]	# tmp71, arg2
	mov.w	r0, r2	# tmp72, _6
	st.w	[sp + (4)], r1	#, tmp71
	st.w	[sp], r0	#, tmp72
	call	__mulsf3		#
	mov.w	r1, r0	# tmp73,
	mov.w	r0, r1	# _7, tmp73
	mov.w	r1, sp	# tmp74,
	st.w	[r1], r0	#, tmp75
	call	expf		#
	mov.w	r1, r0	# _9,
	j	.L138		#
.L146:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:364: 				goto domain;
	nop	
	j	.L137		#
.L147:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:369: 			goto domain;
	nop	
.L137:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:378: 	return(0.);
	xor.w	r1, r1	# _9
.L138:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:379: }
	mov.w	r0, r1	# <retval>, _9
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	powf, .-powf
	.global	aspio2
	.data
	.p2align	2
	.type	aspio2, @object
	.size	aspio2, 4
aspio2:
	.long	1070141403
	.global	atsq2p1
	.p2align	2
	.type	atsq2p1, @object
	.size	atsq2p1, 4
atsq2p1:
	.long	1075479162
	.global	atsq2m1
	.p2align	2
	.type	atsq2m1, @object
	.size	atsq2m1, 4
atsq2m1:
	.long	1054086093
	.global	atpio2
	.p2align	2
	.type	atpio2, @object
	.size	atpio2, 4
atpio2:
	.long	1070141403
	.global	atpio4
	.p2align	2
	.type	atpio4, @object
	.size	atpio4, 4
atpio4:
	.long	1061752795
	.global	atp4
	.p2align	2
	.type	atp4, @object
	.size	atp4, 4
atp4:
	.long	1098988200
	.global	atp3
	.p2align	2
	.type	atp3, @object
	.size	atp3, 4
atp3:
	.long	1132869238
	.global	atp2
	.p2align	2
	.type	atp2, @object
	.size	atp2, 4
atp2:
	.long	1150296304
	.global	atp1
	.p2align	2
	.type	atp1, @object
	.size	atp1, 4
atp1:
	.long	1155435777
	.global	atp0
	.p2align	2
	.type	atp0, @object
	.size	atp0, 4
atp0:
	.long	1147155021
	.global	atq4
	.p2align	2
	.type	atq4, @object
	.size	atq4, 4
atq4:
	.long	1114362864
	.global	atq3
	.p2align	2
	.type	atq3, @object
	.size	atq3, 4
atq3:
	.long	1141248252
	.global	atq2
	.p2align	2
	.type	atq2, @object
	.size	atq2, 4
atq2:
	.long	1154504981
	.global	atq1
	.p2align	2
	.type	atq1, @object
	.size	atq1, 4
atq1:
	.long	1157756252
	.global	atq0
	.p2align	2
	.type	atq0, @object
	.size	atq0, 4
atq0:
	.long	1147155021
	.text
	.p2align	1
	.global	xatan
	.type	xatan, @function
xatan:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:407: 	argsq = arg*arg;
	ld.w	r0, [r13 + (8)]	# tmp54, arg
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (8)]	# tmp55, arg
	st.w	[sp], r0	#, tmp55
	call	__mulsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-4)], r0	# argsq, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r0, [atp4]	# atp4.41_1, atp4
	ld.w	r1, [r13 + (-4)]	# tmp58, argsq
	st.w	[sp + (4)], r1	#, tmp58
	st.w	[sp], r0	#, tmp59
	call	__mulsf3		#
	mov.w	r1, r0	# tmp60,
	mov.w	r0, r1	# _2, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r1, [atp3]	# atp3.42_3, atp3
	st.w	[sp + (4)], r1	#, tmp61
	st.w	[sp], r0	#, tmp62
	call	__addsf3		#
	mov.w	r1, r0	# tmp63,
	mov.w	r0, r1	# _4, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r1, [r13 + (-4)]	# tmp64, argsq
	st.w	[sp + (4)], r1	#, tmp64
	st.w	[sp], r0	#, tmp65
	call	__mulsf3		#
	mov.w	r1, r0	# tmp66,
	mov.w	r0, r1	# _5, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r1, [atp2]	# atp2.43_6, atp2
	st.w	[sp + (4)], r1	#, tmp67
	st.w	[sp], r0	#, tmp68
	call	__addsf3		#
	mov.w	r1, r0	# tmp69,
	mov.w	r0, r1	# _7, tmp69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r1, [r13 + (-4)]	# tmp70, argsq
	st.w	[sp + (4)], r1	#, tmp70
	st.w	[sp], r0	#, tmp71
	call	__mulsf3		#
	mov.w	r1, r0	# tmp72,
	mov.w	r0, r1	# _8, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r1, [atp1]	# atp1.44_9, atp1
	st.w	[sp + (4)], r1	#, tmp73
	st.w	[sp], r0	#, tmp74
	call	__addsf3		#
	mov.w	r1, r0	# tmp75,
	mov.w	r0, r1	# _10, tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r1, [r13 + (-4)]	# tmp76, argsq
	st.w	[sp + (4)], r1	#, tmp76
	st.w	[sp], r0	#, tmp77
	call	__mulsf3		#
	mov.w	r1, r0	# tmp78,
	mov.w	r0, r1	# _11, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	ld.w	r1, [atp0]	# atp0.45_12, atp0
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:408: 	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	st.w	[sp + (4)], r1	#, tmp79
	st.w	[sp], r0	#, tmp80
	call	__addsf3		#
	mov.w	r1, r0	# tmp81,
	mov.w	r0, r1	# tmp82, tmp81
	st.w	[r13 + (-8)], r0	# value, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r0, [atq4]	# atq4.46_13, atq4
	ld.w	r1, [r13 + (-4)]	# tmp83, argsq
	st.w	[sp + (4)], r1	#, tmp83
	st.w	[sp], r0	#, tmp84
	call	__addsf3		#
	mov.w	r1, r0	# tmp85,
	mov.w	r0, r1	# _14, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [r13 + (-4)]	# tmp86, argsq
	st.w	[sp + (4)], r1	#, tmp86
	st.w	[sp], r0	#, tmp87
	call	__mulsf3		#
	mov.w	r1, r0	# tmp88,
	mov.w	r0, r1	# _15, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [atq3]	# atq3.47_16, atq3
	st.w	[sp + (4)], r1	#, tmp89
	st.w	[sp], r0	#, tmp90
	call	__addsf3		#
	mov.w	r1, r0	# tmp91,
	mov.w	r0, r1	# _17, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [r13 + (-4)]	# tmp92, argsq
	st.w	[sp + (4)], r1	#, tmp92
	st.w	[sp], r0	#, tmp93
	call	__mulsf3		#
	mov.w	r1, r0	# tmp94,
	mov.w	r0, r1	# _18, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [atq2]	# atq2.48_19, atq2
	st.w	[sp + (4)], r1	#, tmp95
	st.w	[sp], r0	#, tmp96
	call	__addsf3		#
	mov.w	r1, r0	# tmp97,
	mov.w	r0, r1	# _20, tmp97
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [r13 + (-4)]	# tmp98, argsq
	st.w	[sp + (4)], r1	#, tmp98
	st.w	[sp], r0	#, tmp99
	call	__mulsf3		#
	mov.w	r1, r0	# tmp100,
	mov.w	r0, r1	# _21, tmp100
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [atq1]	# atq1.49_22, atq1
	st.w	[sp + (4)], r1	#, tmp101
	st.w	[sp], r0	#, tmp102
	call	__addsf3		#
	mov.w	r1, r0	# tmp103,
	mov.w	r0, r1	# _23, tmp103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [r13 + (-4)]	# tmp104, argsq
	st.w	[sp + (4)], r1	#, tmp104
	st.w	[sp], r0	#, tmp105
	call	__mulsf3		#
	mov.w	r1, r0	# tmp106,
	mov.w	r0, r1	# _24, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	ld.w	r1, [atq0]	# atq0.50_25, atq0
	st.w	[sp + (4)], r1	#, tmp107
	st.w	[sp], r0	#, tmp108
	call	__addsf3		#
	mov.w	r1, r0	# tmp109,
	mov.w	r0, r1	# _26, tmp109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:409: 	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	st.w	[sp + (4)], r0	#, tmp110
	ld.w	r0, [r13 + (-8)]	# tmp111, value
	st.w	[sp], r0	#, tmp111
	call	__divsf3		#
	mov.w	r1, r0	# tmp112,
	mov.w	r0, r1	# tmp113, tmp112
	st.w	[r13 + (-8)], r0	# value, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:410: 	return(value*arg);
	ld.w	r0, [r13 + (8)]	# tmp114, arg
	st.w	[sp + (4)], r0	#, tmp114
	ld.w	r0, [r13 + (-8)]	# tmp115, value
	st.w	[sp], r0	#, tmp115
	call	__mulsf3		#
	mov.w	r1, r0	# tmp116,
	mov.w	r0, r1	# _32, tmp116
	mov.w	r1, r0	# <retval>, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:411: }
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	xatan, .-xatan
	.p2align	1
	.global	satan
	.type	satan, @function
satan:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:419: 	if(arg < atsq2m1)
	ld.w	r0, [atsq2m1]	# atsq2m1.51_1, atsq2m1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:419: 	if(arg < atsq2m1)
	st.w	[sp + (4)], r0	#, tmp38
	ld.w	r0, [r13 + (8)]	# tmp39, arg
	st.w	[sp], r0	#, tmp39
	call	__ltsf2		#
	mov.w	r1, r0	# tmp40,
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jges	.L158		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:420: 		return(xatan(arg));
	mov.w	r1, sp	# tmp42,
	ld.w	r0, [r13 + (8)]	# tmp43, arg
	st.w	[r1], r0	#, tmp43
	call	xatan		#
	mov.w	r1, r0	# _11,
	j	.L153		#
.L158:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:421: 	else if(arg > atsq2p1)
	ld.w	r0, [atsq2p1]	# atsq2p1.52_2, atsq2p1
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:421: 	else if(arg > atsq2p1)
	st.w	[sp + (4)], r0	#, tmp44
	ld.w	r0, [r13 + (8)]	# tmp45, arg
	st.w	[sp], r0	#, tmp45
	call	__gtsf2		#
	mov.w	r1, r0	# tmp46,
	xor.w	r0, r0	# tmp47
	cmp.w	r1, r0	# tmp46, tmp47
	jses	.L159		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:422: 		return(atpio2 - xatan(1.0f/arg));
	ld.w	r6, [atpio2]	# atpio2.53_3, atpio2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:422: 		return(atpio2 - xatan(1.0f/arg));
	ld.w	r1, [r13 + (8)]	# tmp48, arg
	mov.w	r0, 1065353216	# tmp49,
	st.w	[sp + (4)], r1	#, tmp48
	st.w	[sp], r0	#, tmp49
	call	__divsf3		#
	mov.w	r1, r0	# tmp50,
	mov.w	r0, r1	# _4, tmp50
	mov.w	r1, sp	# tmp51,
	st.w	[r1], r0	#, tmp52
	call	xatan		#
	mov.w	r1, r0	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:422: 		return(atpio2 - xatan(1.0f/arg));
	mov.w	r0, r6	# tmp54, atpio2.53_3
	st.w	[sp + (4)], r1	#, tmp53
	st.w	[sp], r0	#, tmp54
	call	__subsf3		#
	mov.w	r2, r0	# tmp55,
	mov.w	r1, r2	# _11, tmp55
	j	.L153		#
.L159:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:424: 		return(atpio4 + xatan((arg-1.0f)/(arg+1.0f)));
	mov.w	r0, 1065353216	# tmp56,
	st.w	[sp + (4)], r0	#, tmp56
	ld.w	r0, [r13 + (8)]	# tmp57, arg
	st.w	[sp], r0	#, tmp57
	call	__subsf3		#
	mov.w	r1, r0	# tmp58,
	mov.w	r6, r1	# _6, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:424: 		return(atpio4 + xatan((arg-1.0f)/(arg+1.0f)));
	mov.w	r0, 1065353216	# tmp59,
	st.w	[sp + (4)], r0	#, tmp59
	ld.w	r0, [r13 + (8)]	# tmp60, arg
	st.w	[sp], r0	#, tmp60
	call	__addsf3		#
	mov.w	r1, r0	# tmp61,
	mov.w	r0, r1	# _7, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:424: 		return(atpio4 + xatan((arg-1.0f)/(arg+1.0f)));
	mov.w	r1, r0	# tmp62, _7
	mov.w	r0, r6	# tmp63, _6
	st.w	[sp + (4)], r1	#, tmp62
	st.w	[sp], r0	#, tmp63
	call	__divsf3		#
	mov.w	r1, r0	# tmp64,
	mov.w	r0, r1	# _8, tmp64
	mov.w	r1, sp	# tmp65,
	st.w	[r1], r0	#, tmp66
	call	xatan		#
	mov.w	r2, r0	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:424: 		return(atpio4 + xatan((arg-1.0f)/(arg+1.0f)));
	ld.w	r0, [atpio4]	# atpio4.54_10, atpio4
	mov.w	r1, r0	# tmp67, atpio4.54_10
	mov.w	r0, r2	# tmp68, _9
	st.w	[sp + (4)], r1	#, tmp67
	st.w	[sp], r0	#, tmp68
	call	__addsf3		#
	mov.w	r2, r0	# tmp69,
	mov.w	r1, r2	# _11, tmp69
.L153:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:425: }
	mov.w	r0, r1	# <retval>, _11
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	satan, .-satan
	.p2align	1
	.global	atanf
	.type	atanf, @function
atanf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:433: 	if(arg>=0.0f)
	xor.w	r0, r0	# tmp30
	st.w	[sp + (4)], r0	#, tmp30
	ld.w	r0, [r13 + (8)]	# tmp31, arg
	st.w	[sp], r0	#, tmp31
	call	__gesf2		#
	mov.w	r1, r0	# tmp32,
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jss	.L165		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:434: 		return(satan(arg));
	mov.w	r1, sp	# tmp34,
	ld.w	r0, [r13 + (8)]	# tmp35, arg
	st.w	[r1], r0	#, tmp35
	call	satan		#
	mov.w	r1, r0	# _3,
	j	.L163		#
.L165:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:436: 		return(-satan(-arg));
	ld.w	r0, [r13 + (8)]	# tmp36, arg
	mov.w	r1, -2147483648	# tmp37,
	xor.w	r0, r1	# _1, tmp37
	mov.w	r1, sp	# tmp38,
	st.w	[r1], r0	#, tmp39
	call	satan		#
	mov.w	r1, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:436: 		return(-satan(-arg));
	mov.w	r0, -2147483648	# tmp40,
	xor.w	r1, r0	# _3, tmp40
.L163:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:437: } 
	mov.w	r0, r1	# <retval>, _3
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	atanf, .-atanf
	.p2align	1
	.global	asinf
	.type	asinf, @function
asinf:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:444: 	sign = 1.;
	mov.w	r0, 1065353216	# tmp33,
	st.w	[r13 + (-4)], r0	# sign, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:445: 	if(arg < 0){
	xor.w	r0, r0	# tmp34
	st.w	[sp + (4)], r0	#, tmp34
	ld.w	r0, [r13 + (8)]	# tmp35, arg
	st.w	[sp], r0	#, tmp35
	call	__ltsf2		#
	mov.w	r1, r0	# tmp36,
	xor.w	r0, r0	# tmp37
	cmp.w	r1, r0	# tmp36, tmp37
	jges	.L167		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:446: 		arg = -arg;
	ld.w	r0, [r13 + (8)]	# tmp39, arg
	mov.w	r1, -2147483648	# tmp40,
	xor.w	r0, r1	# tmp38, tmp40
	st.w	[r13 + (8)], r0	# arg, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:447: 		sign = -1.;
	mov.w	r0, -1082130432	# tmp41,
	st.w	[r13 + (-4)], r0	# sign, tmp41
.L167:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:450: 	if(arg > 1.f){
	mov.w	r0, 1065353216	# tmp42,
	st.w	[sp + (4)], r0	#, tmp42
	ld.w	r0, [r13 + (8)]	# tmp43, arg
	st.w	[sp], r0	#, tmp43
	call	__gtsf2		#
	mov.w	r1, r0	# tmp44,
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jses	.L178		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:451: 		return(0.f);
	xor.w	r0, r0	# _9
	j	.L171		#
.L178:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:454: 	temp = sqrtf(1.f - arg*arg);
	ld.w	r0, [r13 + (8)]	# tmp46, arg
	st.w	[sp + (4)], r0	#, tmp46
	ld.w	r0, [r13 + (8)]	# tmp47, arg
	st.w	[sp], r0	#, tmp47
	call	__mulsf3		#
	mov.w	r1, r0	# tmp48,
	mov.w	r0, r1	# _1, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:454: 	temp = sqrtf(1.f - arg*arg);
	mov.w	r1, r0	# tmp49, _1
	mov.w	r0, 1065353216	# tmp50,
	st.w	[sp + (4)], r1	#, tmp49
	st.w	[sp], r0	#, tmp50
	call	__subsf3		#
	mov.w	r1, r0	# tmp51,
	mov.w	r0, r1	# _2, tmp51
	mov.w	r1, sp	# tmp52,
	st.w	[r1], r0	#, tmp53
	call	sqrtf		#
	st.w	[r13 + (-8)], r0	# temp,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:455: 	if(arg > 0.7f)
	mov.w	r0, 1060320051	# tmp54,
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (8)]	# tmp55, arg
	st.w	[sp], r0	#, tmp55
	call	__gtsf2		#
	mov.w	r1, r0	# tmp56,
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jses	.L179		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:457: 		t1 = atanf(temp/arg);
	ld.w	r0, [r13 + (8)]	# tmp58, arg
	st.w	[sp + (4)], r0	#, tmp58
	ld.w	r0, [r13 + (-8)]	# tmp59, temp
	st.w	[sp], r0	#, tmp59
	call	__divsf3		#
	mov.w	r1, r0	# tmp60,
	mov.w	r0, r1	# _3, tmp60
	mov.w	r1, sp	# tmp61,
	st.w	[r1], r0	#, tmp62
	call	atanf		#
	st.w	[r13 + (-12)], r0	# t1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:458: 		temp = aspio2 - t1;
	ld.w	r0, [aspio2]	# aspio2.55_4, aspio2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:458: 		temp = aspio2 - t1;
	ld.w	r1, [r13 + (-12)]	# tmp63, t1
	st.w	[sp + (4)], r1	#, tmp63
	st.w	[sp], r0	#, tmp64
	call	__subsf3		#
	mov.w	r1, r0	# tmp65,
	mov.w	r0, r1	# tmp66, tmp65
	st.w	[r13 + (-8)], r0	# temp, tmp66
	j	.L174		#
.L179:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:461: 		temp = atanf(arg/temp);
	ld.w	r0, [r13 + (-8)]	# tmp67, temp
	st.w	[sp + (4)], r0	#, tmp67
	ld.w	r0, [r13 + (8)]	# tmp68, arg
	st.w	[sp], r0	#, tmp68
	call	__divsf3		#
	mov.w	r1, r0	# tmp69,
	mov.w	r0, r1	# _5, tmp69
	mov.w	r1, sp	# tmp70,
	st.w	[r1], r0	#, tmp71
	call	atanf		#
	st.w	[r13 + (-8)], r0	# temp,
.L174:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:463: 	return(sign*temp);
	ld.w	r0, [r13 + (-8)]	# tmp72, temp
	st.w	[sp + (4)], r0	#, tmp72
	ld.w	r0, [r13 + (-4)]	# tmp73, sign
	st.w	[sp], r0	#, tmp73
	call	__mulsf3		#
	mov.w	r1, r0	# tmp74,
	mov.w	r0, r1	# _9, tmp74
.L171:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:464: }
	mov.w	r1, r0	# <retval>, _9
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	asinf, .-asinf
	.p2align	1
	.global	acosf
	.type	acosf, @function
acosf:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:468: 	if(arg < 0)
	xor.w	r0, r0	# tmp30
	st.w	[sp + (4)], r0	#, tmp30
	ld.w	r0, [r13 + (8)]	# tmp31, arg
	st.w	[sp], r0	#, tmp31
	call	__ltsf2		#
	mov.w	r1, r0	# tmp32,
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jges	.L181		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:469: 		arg = -arg;
	ld.w	r0, [r13 + (8)]	# tmp35, arg
	mov.w	r1, -2147483648	# tmp36,
	xor.w	r0, r1	# tmp34, tmp36
	st.w	[r13 + (8)], r0	# arg, tmp34
.L181:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:471: 	if(arg > 1.f){
	mov.w	r0, 1065353216	# tmp37,
	st.w	[sp + (4)], r0	#, tmp37
	ld.w	r0, [r13 + (8)]	# tmp38, arg
	st.w	[sp], r0	#, tmp38
	call	__gtsf2		#
	mov.w	r1, r0	# tmp39,
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jses	.L188		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:472: 		return(0.);
	xor.w	r0, r0	# _4
	j	.L185		#
.L188:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:475: 	return(aspio2 - asinf(arg));
	ld.w	r6, [aspio2]	# aspio2.56_1, aspio2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:475: 	return(aspio2 - asinf(arg));
	mov.w	r1, sp	# tmp41,
	ld.w	r0, [r13 + (8)]	# tmp42, arg
	st.w	[r1], r0	#, tmp42
	call	asinf		#
	mov.w	r1, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:475: 	return(aspio2 - asinf(arg));
	mov.w	r0, r6	# tmp44, aspio2.56_1
	st.w	[sp + (4)], r1	#, tmp43
	st.w	[sp], r0	#, tmp44
	call	__subsf3		#
	mov.w	r1, r0	# tmp45,
	mov.w	r0, r1	# _4, tmp45
.L185:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/math.c:476: } 
	mov.w	r1, r0	# <retval>, _4
	mov.w	r0, r1	#, <retval>
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	acosf, .-acosf
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
