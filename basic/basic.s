	.file	"basic.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL basic.c -mel -auxbase-strip basic.s -fsigned-char -fverbose-asm
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
	.global	eth_buffer
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	eth_buffer, @object
	.size	eth_buffer, 4500
eth_buffer:
	.zero	4500
	.global	MYMAC
	.data
	.p2align	2
	.type	MYMAC, @object
	.size	MYMAC, 6
MYMAC:
	.string	"\022"
	.string	""
	.string	""
	.string	""
	.ascii	"\""
	.global	DNSIP
	.p2align	2
	.type	DNSIP, @object
	.size	DNSIP, 4
DNSIP:
	.ascii	"\300\250\001\001"
	.global	GWIP
	.p2align	2
	.type	GWIP, @object
	.size	GWIP, 4
GWIP:
	.ascii	"\300\250\001\001"
	.global	MASK
	.p2align	2
	.type	MASK, @object
	.size	MASK, 4
MASK:
	.string	"\377\377\377"
	.global	MYIP
	.p2align	2
	.type	MYIP, @object
	.size	MYIP, 4
MYIP:
	.ascii	"\300\250\001\334"
	.global	server_ip
	.p2align	2
	.type	server_ip, @object
	.size	server_ip, 14
server_ip:
	.string	"192.168.1.240"
	.global	K_API_STDIO
	.p2align	2
	.type	K_API_STDIO, @object
	.size	K_API_STDIO, 4
K_API_STDIO:
	.long	190000
	.global	K_API_STRING
	.p2align	2
	.type	K_API_STRING, @object
	.size	K_API_STRING, 4
K_API_STRING:
	.long	190100
	.global	K_API_SPRINTF
	.p2align	2
	.type	K_API_SPRINTF, @object
	.size	K_API_SPRINTF, 4
K_API_SPRINTF:
	.long	190300
	.global	K_API_GRAPHICS
	.p2align	2
	.type	K_API_GRAPHICS, @object
	.size	K_API_GRAPHICS, 4
K_API_GRAPHICS:
	.long	190400
	.global	K_API_SPI
	.p2align	2
	.type	K_API_SPI, @object
	.size	K_API_SPI, 4
K_API_SPI:
	.long	190500
	.global	K_API_TCPIP
	.p2align	2
	.type	K_API_TCPIP, @object
	.size	K_API_TCPIP, 4
K_API_TCPIP:
	.long	190600
	.global	K_API_FAT
	.p2align	2
	.type	K_API_FAT, @object
	.size	K_API_FAT, 4
K_API_FAT:
	.long	190700
	.global	sinTable_f32
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
	.global	program
	.p2align	2
	.type	program, @object
	.size	program, 4
program:
	.long	280000
	.global	buffer
	.p2align	2
	.type	buffer, @object
	.size	buffer, 4
buffer:
	.long	197632
	.global	program_start
	.section	.bss
	.p2align	2
	.type	program_start, @object
	.size	program_start, 4
program_start:
	.zero	4
	.global	program_end
	.p2align	2
	.type	program_end, @object
	.size	program_end, 4
program_end:
	.zero	4
	.global	linenum
	.p2align	2
	.type	linenum, @object
	.size	linenum, 4
linenum:
	.zero	4
	.global	jump_buff
	.p2align	2
	.type	jump_buff, @object
	.size	jump_buff, 8
jump_buff:
	.zero	8
	.global	txtpos
	.p2align	2
	.type	txtpos, @object
	.size	txtpos, 4
txtpos:
	.zero	4
	.global	expression_error
	.type	expression_error, @object
	.size	expression_error, 1
expression_error:
	.zero	1
	.global	list_line
	.p2align	2
	.type	list_line, @object
	.size	list_line, 4
list_line:
	.zero	4
	.global	tmptxtpos
	.p2align	2
	.type	tmptxtpos, @object
	.size	tmptxtpos, 4
tmptxtpos:
	.zero	4
	.global	current_line
	.p2align	2
	.type	current_line, @object
	.size	current_line, 4
current_line:
	.zero	4
	.global	stack_limit
	.p2align	2
	.type	stack_limit, @object
	.size	stack_limit, 4
stack_limit:
	.zero	4
	.global	stack
	.p2align	2
	.type	stack, @object
	.size	stack, 4
stack:
	.zero	4
	.global	variables_begin
	.p2align	2
	.type	variables_begin, @object
	.size	variables_begin, 4
variables_begin:
	.zero	4
	.global	arrays_begin
	.p2align	2
	.type	arrays_begin, @object
	.size	arrays_begin, 4
arrays_begin:
	.zero	4
	.global	bsp
	.p2align	2
	.type	bsp, @object
	.size	bsp, 4
bsp:
	.zero	4
	.global	tempsp
	.p2align	2
	.type	tempsp, @object
	.size	tempsp, 4
tempsp:
	.zero	4
	.global	table_index
	.type	table_index, @object
	.size	table_index, 1
table_index:
	.zero	1
	.global	drive
	.type	drive, @object
	.size	drive, 1
drive:
	.zero	1
	.global	eth
	.data
	.p2align	2
	.type	eth, @object
	.size	eth, 4
eth:
	.long	1
	.global	ret_kind
	.section	.bss
	.p2align	2
	.type	ret_kind, @object
	.size	ret_kind, 4
ret_kind:
	.zero	4
	.global	token_table
	.data
	.p2align	2
	.type	token_table, @object
	.size	token_table, 300
token_table:
	.long	0
	.long	4
	.long	8
	.long	13
	.long	19
	.long	21
	.long	26
	.long	30
	.long	34
	.long	38
	.long	41
	.long	46
	.long	50
	.long	55
	.long	62
	.long	68
	.long	72
	.long	77
	.long	83
	.long	87
	.long	92
	.long	97
	.long	102
	.long	106
	.long	111
	.long	116
	.long	121
	.long	128
	.long	133
	.long	138
	.long	144
	.long	151
	.long	156
	.long	161
	.long	165
	.long	171
	.long	176
	.long	180
	.long	182
	.long	186
	.long	192
	.long	196
	.long	197
	.long	202
	.long	206
	.long	212
	.long	218
	.long	222
	.long	226
	.long	232
	.long	236
	.long	240
	.long	244
	.long	248
	.long	252
	.long	257
	.long	261
	.long	264
	.long	267
	.long	272
	.long	277
	.long	282
	.long	283
	.long	286
	.long	289
	.long	291
	.long	293
	.long	296
	.long	298
	.long	301
	.long	305
	.long	308
	.long	309
	.long	312
	.long	317
	.global	keywords
	.p2align	2
	.type	keywords, @object
	.size	keywords, 318
keywords:
	.string	"MEM"
	.string	"BYE"
	.string	"EXIT"
	.string	"PRINT"
	.string	"?"
	.string	"LIST"
	.string	"RUN"
	.string	"NEW"
	.string	"LET"
	.string	"IF"
	.string	"GOTO"
	.string	"FOR"
	.string	"NEXT"
	.string	"RETURN"
	.string	"GOSUB"
	.string	"END"
	.string	"STOP"
	.string	"INPUT"
	.string	"CLS"
	.string	"EDIT"
	.string	"LOAD"
	.string	"SAVE"
	.string	"DIR"
	.string	"MODE"
	.string	"PLOT"
	.string	"LINE"
	.string	"CIRCLE"
	.string	"DRAW"
	.string	"HELP"
	.string	"DELAY"
	.string	"CURSOR"
	.string	"POKE"
	.string	"EXEC"
	.string	"SYS"
	.string	"DRIVE"
	.string	"TIME"
	.string	"REM"
	.string	"'"
	.string	"ETH"
	.string	"COLOR"
	.string	"DIM"
	.string	"\001PEEK"
	.string	"ABS"
	.string	"AREAD"
	.string	"DREAD"
	.string	"RND"
	.string	"KEY"
	.string	"ISKEY"
	.string	"SIN"
	.string	"COS"
	.string	"TAN"
	.string	"EXP"
	.string	"LOG"
	.string	"SQRT"
	.string	"POW"
	.string	"PI"
	.string	"EX"
	.string	"ATAN"
	.string	"ASIN"
	.string	"ACOS"
	.string	"\001>="
	.string	"<>"
	.string	">"
	.string	"="
	.string	"<="
	.string	"<"
	.string	"!="
	.string	"AND"
	.string	"OR"
	.string	"\001TO"
	.string	"STEP"
	.ascii	"\001"
	.section	.rodata
	.p2align	2
.LC0:
	.string	"PROBLEM! Not enough memory for the arrays!"
	.text
	.p2align	1
	.global	init_arrays
	.type	init_arrays, @function
init_arrays:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:340: 	if (arrays_begin != NULL) 
	ld.w	r1, [arrays_begin]	# arrays_begin.0_1, arrays_begin
# basic.c:340: 	if (arrays_begin != NULL) 
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# arrays_begin.0_1, tmp35
	jz	.L2		#
# basic.c:342: 		for (int i = 0; i < 26; i++)
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# i, tmp36
# basic.c:342: 		for (int i = 0; i < 26; i++)
	j	.L3		#
.L5:
# basic.c:344: 			VAR *array = arrays_begin[i];
	ld.w	r0, [arrays_begin]	# arrays_begin.1_2, arrays_begin
	ld.w	r1, [r13 + (-4)]	# i.2_3, i
	mov.w	r2, 2	# tmp37,
	shl.w	r1, r2	# _4, tmp37
	add.w	r0, r1 #222	# _5, _4
# basic.c:344: 			VAR *array = arrays_begin[i];
	ld.w	r0, [r0]	# tmp38, *_5
	st.w	[r13 + (-8)], r0	# array, tmp38
# basic.c:345: 			if (array != NULL)
	ld.w	r1, [r13 + (-8)]	# tmp39, array
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L4		#
# basic.c:347: 				free(array);
	mov.w	r1, sp	# tmp41,
	ld.w	r0, [r13 + (-8)]	# tmp42, array
	st.w	[r1], r0	#, tmp42
	call	free		#
.L4:
# basic.c:342: 		for (int i = 0; i < 26; i++)
	ld.w	r0, [r13 + (-4)]	# tmp44, i
	add.w	r0, 1 #111	# tmp43,
	st.w	[r13 + (-4)], r0	# i, tmp43
.L3:
# basic.c:342: 		for (int i = 0; i < 26; i++)
	ld.w	r1, [r13 + (-4)]	# tmp45, i
	mov.w	r0, 25	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jses	.L5		#
# basic.c:350: 		free(arrays_begin);
	ld.w	r0, [arrays_begin]	# arrays_begin.3_6, arrays_begin
	mov.w	r1, sp	# tmp47,
	st.w	[r1], r0	#, arrays_begin.3_6
	call	free		#
.L2:
# basic.c:352: 	arrays_begin = (VAR **) malloc(sizeof(VAR*) * 26);
	mov.w	r1, sp	# tmp48,
	mov.w	r0, 104	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	malloc		#
# basic.c:352: 	arrays_begin = (VAR **) malloc(sizeof(VAR*) * 26);
	st.w	[arrays_begin], r0	# arrays_begin, _7
# basic.c:353: 	if (arrays_begin == NULL)
	ld.w	r1, [arrays_begin]	# arrays_begin.4_8, arrays_begin
# basic.c:353: 	if (arrays_begin == NULL)
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# arrays_begin.4_8, tmp51
	jnz	.L6		#
# basic.c:356: 		printf("PROBLEM! Not enough memory for the arrays!");
	mov.w	r1, sp	# tmp52,
	mov.w	r0, .LC0	# tmp53,
	st.w	[r1], r0	#, tmp53
	call	printf		#
# basic.c:362: }
	j	.L8		#
.L6:
# basic.c:359: 		memset(arrays_begin, 0, sizeof(VAR*) * 26);
	ld.w	r1, [arrays_begin]	# arrays_begin.5_9, arrays_begin
	mov.w	r0, sp	# tmp54,
	mov.w	r2, 104	# tmp55,
	st.w	[r0 + (8)], r2	#, tmp55
	xor.w	r2, r2	# tmp56
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, arrays_begin.5_9
	call	memset		#
.L8:
# basic.c:362: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_arrays, .-init_arrays
	.p2align	1
	.global	getln
	.type	getln, @function
getln:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 28 #111	#,
# basic.c:367: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.6_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:367: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:369: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.7_3, txtpos
# basic.c:369: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp39
	st.b	[r0], r1	# *txtpos.7_3, tmp39
# basic.c:371: 	put_char(prompt);
	mov.w	r1, sp	# tmp40,
	ld.w	r0, [r13 + (8)]	# tmp41, prompt
	st.w	[r1], r0	#, tmp41
	call	put_char		#
# basic.c:372: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.8_4, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.8_4
	call	gets		#
# basic.c:374: 	l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.9_5, txtpos
	mov.w	r1, sp	# tmp43,
	st.w	[r1], r0	#, txtpos.9_5
	call	strlen		#
	st.w	[r13 + (-8)], r0	# l,
# basic.c:375: 	if (l % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# l.10_6, l
	mov.w	r0, 1	# tmp44,
	and.w	r1, r0	# _7, tmp44
# basic.c:375: 	if (l % 2 == 0)
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# _7, tmp45
	jnz	.L10		#
# basic.c:376: 		strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.11_8, txtpos
	mov.w	r0, sp	# tmp46,
	st.w	[r0], r6	#, txtpos.11_8
	call	strlen		#
	mov.w	r1, r0	# _18, tmp47
	mov.w	r0, r6	# _19, txtpos.11_8
	add.w	r0, r1 #222	# _19, _18
	mov.b	r1, 32	# tmp48,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_19], tmp48
	xor.w	r1, r1	# tmp49
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_19], tmp49
.L10:
# basic.c:378: 	strcat(txtpos, "\n");
	ld.w	r6, [txtpos]	# txtpos.12_9, txtpos
	mov.w	r0, sp	# tmp50,
	st.w	[r0], r6	#, txtpos.12_9
	call	strlen		#
	mov.w	r1, r0	# _21, tmp51
	mov.w	r0, r6	# _22, txtpos.12_9
	add.w	r0, r1 #222	# _22, _21
	mov.b	r1, 10	# tmp52,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_22], tmp52
	xor.w	r1, r1	# tmp53
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_22], tmp53
# basic.c:379: }
	nop	
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getln, .-getln
	.p2align	1
	.global	toUppercaseBuffer
	.type	toUppercaseBuffer, @function
toUppercaseBuffer:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# basic.c:383: 	char *c = txtpos;
	ld.w	r0, [txtpos]	# tmp36, txtpos
	st.w	[r13 + (-4)], r0	# c, tmp36
# basic.c:384: 	char quote = 0;
	xor.w	r0, r0	# tmp37
	st.b	[r13 + (-5)], r0	# quote, tmp37
# basic.c:386: 	while (*c != NL)
	j	.L12		#
.L17:
# basic.c:389: 		if (*c == quote)
	ld.w	r0, [r13 + (-4)]	# tmp38, c
	ld.b	r0, [r0]	# _1, *c_11
# basic.c:389: 		if (*c == quote)
	ld.b	r2, [r13 + (-5)]	#, quote
	sex.b	r1, r2	# tmp39,
	sex.b	r0, r0	# tmp40, _1
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L13		#
# basic.c:390: 			quote = 0;
	xor.w	r0, r0	# tmp41
	st.b	[r13 + (-5)], r0	# quote, tmp41
	j	.L14		#
.L13:
# basic.c:391: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp42, c
	ld.b	r0, [r0]	# _2, *c_11
# basic.c:391: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp43, _2
	mov.w	r0, 34	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L15		#
# basic.c:391: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp45, c
	ld.b	r0, [r0]	# _3, *c_11
# basic.c:391: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp46, _3
	mov.w	r0, 39	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L16		#
.L15:
# basic.c:392: 			quote = *c;
	ld.w	r0, [r13 + (-4)]	# tmp48, c
	ld.b	r0, [r0]	# tmp49, *c_11
	st.b	[r13 + (-5)], r0	# quote, tmp49
	j	.L14		#
.L16:
# basic.c:393: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.b	r0, [r13 + (-5)]	#, quote
	sex.b	r1, r0	# tmp50,
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L14		#
# basic.c:393: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp52, c
	ld.b	r0, [r0]	# _4, *c_11
# basic.c:393: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp53, _4
	mov.w	r0, 96	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jses	.L14		#
# basic.c:393: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp55, c
	ld.b	r0, [r0]	# _5, *c_11
# basic.c:393: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp56, _5
	mov.w	r0, 122	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jgs	.L14		#
# basic.c:394: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp58, c
	ld.b	r0, [r0]	# _6, *c_11
# basic.c:394: 			*c = *c + 'A' - 'a';
	add.w	r0, -32 #111	# tmp59,
	mov.w	r1, r0	# _9, _8
# basic.c:394: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp60, c
	st.b	[r0], r1	# *c_11, _9
.L14:
# basic.c:395: 		c++;
	ld.w	r0, [r13 + (-4)]	# tmp62, c
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (-4)], r0	# c, tmp61
.L12:
# basic.c:386: 	while (*c != NL)
	ld.w	r0, [r13 + (-4)]	# tmp63, c
	ld.b	r0, [r0]	# _10, *c_11
# basic.c:386: 	while (*c != NL)
	sex.b	r1, r0	# tmp64, _10
	mov.w	r0, 10	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L17		#
# basic.c:397: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	toUppercaseBuffer, .-toUppercaseBuffer
	.p2align	1
	.global	ignore_blanks
	.type	ignore_blanks, @function
ignore_blanks:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:401: 	while (*txtpos == SPACE || *txtpos == TAB)
	j	.L19		#
.L20:
# basic.c:402: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.13_1, txtpos
	add.w	r0, 1 #111	# _2,
	st.w	[txtpos], r0	# txtpos, _2
.L19:
# basic.c:401: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.14_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.14_3
# basic.c:401: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp32, _4
	mov.w	r0, 32	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L20		#
# basic.c:401: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.15_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.15_5
# basic.c:401: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp34, _6
	mov.w	r0, 9	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L20		#
# basic.c:403: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ignore_blanks, .-ignore_blanks
	.p2align	1
	.global	skip_to_end
	.type	skip_to_end, @function
skip_to_end:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# basic.c:407: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.16_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:407: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:410: 	while (*txtpos != NL)
	j	.L22		#
.L23:
# basic.c:411: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.17_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
.L22:
# basic.c:410: 	while (*txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.18_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.18_5
# basic.c:410: 	while (*txtpos != NL)
	zex.b	r1, r0	# tmp40, _6
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L23		#
# basic.c:416: 		dest = variables_begin - 1;
	ld.w	r0, [variables_begin]	# variables_begin.19_7, variables_begin
# basic.c:416: 		dest = variables_begin - 1;
	add.w	r0, -1 #111	# tmp42,
	st.w	[r13 + (-4)], r0	# dest, tmp42
.L26:
# basic.c:419: 			*dest = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.20_8, txtpos
	ld.b	r1, [r0]	# _9, *txtpos.20_8
# basic.c:419: 			*dest = *txtpos;
	ld.w	r0, [r13 + (-4)]	# tmp43, dest
	st.b	[r0], r1	# *dest_15, _9
# basic.c:420: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [program_end]	# program_end.21_10, program_end
	mov.w	r1, r0	# _11, program_end.21_10
	add.w	r1, 4 #111	# _11,
# basic.c:420: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [txtpos]	# txtpos.22_12, txtpos
# basic.c:420: 			if (txtpos == program_end + sizeof(LINENUM))
	cmp.w	r1, r0	# _11, txtpos.22_12
	jz	.L28		#
# basic.c:422: 			dest--;
	ld.w	r0, [r13 + (-4)]	# tmp45, dest
	add.w	r0, -1 #111	# tmp44,
	st.w	[r13 + (-4)], r0	# dest, tmp44
# basic.c:423: 			txtpos--;
	ld.w	r0, [txtpos]	# txtpos.23_13, txtpos
	add.w	r0, -1 #111	# _14,
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:419: 			*dest = *txtpos;
	j	.L26		#
.L28:
# basic.c:421: 				break;
	nop	
# basic.c:425: 		txtpos = dest;
	ld.w	r0, [r13 + (-4)]	# tmp46, dest
	st.w	[txtpos], r0	# txtpos, tmp46
# basic.c:427: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	skip_to_end, .-skip_to_end
	.p2align	1
	.global	findline
	.type	findline, @function
findline:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# basic.c:431: 	unsigned char *line = program_start;
	ld.w	r0, [program_start]	# tmp35, program_start
	st.w	[r13 + (-4)], r0	# line, tmp35
.L33:
# basic.c:434: 		if (line == program_end)
	ld.w	r0, [program_end]	# program_end.24_1, program_end
# basic.c:434: 		if (line == program_end)
	ld.w	r1, [r13 + (-4)]	# tmp36, line
	cmp.w	r1, r0	# tmp36, program_end.24_1
	jnz	.L30		#
# basic.c:435: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L31		#
.L30:
# basic.c:437: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [r13 + (-4)]	# tmp37, line
	ld.w	r1, [r0]	# _2, MEM[(LINENUM *)line_8]
# basic.c:437: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [linenum]	# linenum.25_3, linenum
# basic.c:437: 		if (((LINENUM *)line)[0] >= linenum)
	cmp.w	r1, r0	# _2, linenum.26_4
	js	.L32		#
# basic.c:438: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L31		#
.L32:
# basic.c:441: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp38, line
	add.w	r0, 4 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
	zex.b	r1, r0	# _7, _6
# basic.c:441: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp40, line
	add.w	r0, r1 #222	# tmp39, _7
	st.w	[r13 + (-4)], r0	# line, tmp39
# basic.c:434: 		if (line == program_end)
	j	.L33		#
.L31:
# basic.c:443: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	findline, .-findline
	.p2align	1
	.global	expand
	.type	expand, @function
expand:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 52 #111	#,
# basic.c:447: 	buff[0] = 0;
	ld.w	r0, [r13 + (12)]	# tmp45, buff
	xor.w	r1, r1	# tmp46
	st.b	[r0], r1	# *buff_28(D), tmp46
# basic.c:448: 	int len = strlen(line);
	mov.w	r1, sp	# tmp47,
	ld.w	r0, [r13 + (8)]	# tmp48, line
	st.w	[r1], r0	#, tmp48
	call	strlen		#
	st.w	[r13 + (-16)], r0	# len,
# basic.c:449: 	int j = 0;
	xor.w	r0, r0	# tmp49
	st.w	[r13 + (-4)], r0	# j, tmp49
# basic.c:450: 	int found_token = 0;
	xor.w	r0, r0	# tmp50
	st.w	[r13 + (-8)], r0	# found_token, tmp50
# basic.c:451: 	for (int i = 0; i < len; i++)
	xor.w	r0, r0	# tmp51
	st.w	[r13 + (-12)], r0	# i, tmp51
# basic.c:451: 	for (int i = 0; i < len; i++)
	j	.L35		#
.L41:
# basic.c:453: 		unsigned char c = line[i];
	ld.w	r1, [r13 + (-12)]	# i.27_1, i
	ld.w	r0, [r13 + (8)]	# tmp52, line
	add.w	r0, r1 #222	# _2, i.27_1
	ld.b	r0, [r0]	# _3, *_2
# basic.c:453: 		unsigned char c = line[i];
	st.b	[r13 + (-17)], r0	# c, _3
# basic.c:454: 		if (c == NL)
	ld.b	r1, [r13 + (-17)]	# tmp53, c
	mov.w	r0, 10	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L42		#
# basic.c:456: 		if (found_token && (c == SPACE) && (line[i + 1] == SPACE)) continue;
	ld.w	r1, [r13 + (-8)]	# tmp55, found_token
	xor.w	r0, r0	# tmp56
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L38		#
# basic.c:456: 		if (found_token && (c == SPACE) && (line[i + 1] == SPACE)) continue;
	ld.b	r1, [r13 + (-17)]	# tmp57, c
	mov.w	r0, 32	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jnz	.L38		#
# basic.c:456: 		if (found_token && (c == SPACE) && (line[i + 1] == SPACE)) continue;
	ld.w	r0, [r13 + (-12)]	# i.28_4, i
	mov.w	r1, r0	# _5, i.28_4
	add.w	r1, 1 #111	# _5,
	ld.w	r0, [r13 + (8)]	# tmp59, line
	add.w	r0, r1 #222	# _6, _5
	ld.b	r0, [r0]	# _7, *_6
# basic.c:456: 		if (found_token && (c == SPACE) && (line[i + 1] == SPACE)) continue;
	sex.b	r1, r0	# tmp60, _7
	mov.w	r0, 32	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L43		#
.L38:
# basic.c:457: 		if (c < 128)
	ld.b	r0, [r13 + (-17)]	# c.29_8, c
# basic.c:457: 		if (c < 128)
	sex.b	r1, r0	# tmp62, c.29_8
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jss	.L40		#
# basic.c:459: 			found_token = 0;
	xor.w	r0, r0	# tmp64
	st.w	[r13 + (-8)], r0	# found_token, tmp64
# basic.c:460: 			buff[j++] = c;
	ld.w	r0, [r13 + (-4)]	# j.30_9, j
	mov.w	r1, r0	# tmp65, j.30_9
	add.w	r1, 1 #111	# tmp65,
	st.w	[r13 + (-4)], r1	# j, tmp65
	mov.w	r1, r0	# j.31_10, j.30_9
# basic.c:460: 			buff[j++] = c;
	ld.w	r0, [r13 + (12)]	# tmp66, buff
	add.w	r0, r1 #222	# _11, j.31_10
# basic.c:460: 			buff[j++] = c;
	ld.b	r1, [r13 + (-17)]	# c.32_12, c
	st.b	[r0], r1	# *_11, c.32_12
	j	.L39		#
.L40:
# basic.c:464: 			found_token = 1;
	mov.w	r0, 1	# tmp67,
	st.w	[r13 + (-8)], r0	# found_token, tmp67
# basic.c:465: 			c = c - 128;
	ld.b	r0, [r13 + (-17)]	# tmp68, c
	add.w	r0, -128 #111	# tmp69,
	st.b	[r13 + (-17)], r0	# c, tmp70
# basic.c:466: 			int offset = token_table[c];
	ld.b	r0, [r13 + (-17)]	# _13, c
# basic.c:466: 			int offset = token_table[c];
	mov.w	r1, 2	# tmp72,
	shl.w	r0, r1	# tmp71, tmp72
	mov.w	r1, token_table	# tmp74,
	add.w	r0, r1 #222	# tmp73, tmp74
	ld.w	r0, [r0]	# tmp75, token_table
	st.w	[r13 + (-24)], r0	# offset, tmp75
# basic.c:467: 			int token_len = strlen(&keywords[offset]);
	ld.w	r0, [r13 + (-24)]	# tmp76, offset
	mov.w	r1, keywords	# tmp77,
	add.w	r0, r1 #222	# _14, tmp77
# basic.c:467: 			int token_len = strlen(&keywords[offset]);
	mov.w	r1, sp	# tmp78,
	st.w	[r1], r0	#, _14
	call	strlen		#
	st.w	[r13 + (-28)], r0	# token_len,
# basic.c:469: 			memcpy((buff + j), &keywords[offset], token_len);
	ld.w	r0, [r13 + (-4)]	# j.33_15, j
# basic.c:469: 			memcpy((buff + j), &keywords[offset], token_len);
	ld.w	r1, [r13 + (12)]	# tmp79, buff
	add.w	r1, r0 #222	# _16, j.33_15
# basic.c:469: 			memcpy((buff + j), &keywords[offset], token_len);
	ld.w	r2, [r13 + (-24)]	# tmp80, offset
	mov.w	r0, keywords	# tmp81,
	add.w	r2, r0 #222	# _17, tmp81
# basic.c:469: 			memcpy((buff + j), &keywords[offset], token_len);
	mov.w	r0, sp	# tmp82,
	ld.w	r3, [r13 + (-28)]	# tmp83, token_len
	st.w	[r0 + (8)], r3	#, tmp83
	st.w	[r0 + (4)], r2	#, _17
	st.w	[r0], r1	#, _16
	call	memcpy		#
# basic.c:470: 			j += token_len;
	ld.w	r0, [r13 + (-4)]	# tmp85, j
	ld.w	r1, [r13 + (-28)]	# tmp86, token_len
	add.w	r0, r1 #222	# tmp84, tmp86
	st.w	[r13 + (-4)], r0	# j, tmp84
	j	.L39		#
.L43:
# basic.c:456: 		if (found_token && (c == SPACE) && (line[i + 1] == SPACE)) continue;
	nop	
.L39:
# basic.c:451: 	for (int i = 0; i < len; i++)
	ld.w	r0, [r13 + (-12)]	# tmp88, i
	add.w	r0, 1 #111	# tmp87,
	st.w	[r13 + (-12)], r0	# i, tmp87
.L35:
# basic.c:451: 	for (int i = 0; i < len; i++)
	ld.w	r1, [r13 + (-12)]	# tmp89, i
	ld.w	r0, [r13 + (-16)]	# tmp90, len
	cmp.w	r1, r0	# tmp89, tmp90
	jss	.L41		#
	j	.L37		#
.L42:
# basic.c:455: 			break;
	nop	
.L37:
# basic.c:473: 	buff[j] = 0;
	ld.w	r1, [r13 + (-4)]	# j.34_18, j
	ld.w	r0, [r13 + (12)]	# tmp91, buff
	add.w	r0, r1 #222	# _19, j.34_18
# basic.c:473: 	buff[j] = 0;
	xor.w	r1, r1	# tmp92
	st.b	[r0], r1	# *_19, tmp92
# basic.c:474: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expand, .-expand
	.section	.rodata
	.p2align	2
.LC1:
	.string	"%d %s"
	.text
	.p2align	1
	.global	printline
	.type	printline, @function
printline:
	push	r13		#
	mov.w	r13, sp	#,
	mov.w	r12, 544	#,
	sub.w	sp, r12 #222	#,
# basic.c:480: 	int i = 0;
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# i, tmp36
# basic.c:482: 	line_num = *((LINENUM*)(list_line));
	ld.w	r0, [list_line]	# list_line.35_1, list_line
# basic.c:482: 	line_num = *((LINENUM*)(list_line));
	ld.w	r0, [r0]	# tmp37, MEM[(LINENUM *)list_line.35_1]
	st.w	[r13 + (-8)], r0	# line_num, tmp37
# basic.c:483: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.36_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:485: 	expand(list_line, buff);
	ld.w	r1, [list_line]	# list_line.37_4, list_line
	mov.w	r0, sp	# tmp38,
	mov.w	r3, -520	# tmp40,
	mov.w	r2, r13	# tmp39,
	add.w	r2, r3 #222	# tmp39, tmp40
	st.w	[r0 + (4)], r2	#, tmp39
	st.w	[r0], r1	#, list_line.37_4
	call	expand		#
# basic.c:488: 	printf("%d %s", line_num, buff);
	mov.w	r0, sp	# tmp41,
	mov.w	r2, -520	# tmp43,
	mov.w	r1, r13	# tmp42,
	add.w	r1, r2 #222	# tmp42, tmp43
	st.w	[r0 + (8)], r1	#, tmp42
	ld.w	r1, [r13 + (-8)]	# tmp44, line_num
	st.w	[r0 + (4)], r1	#, tmp44
	mov.w	r1, .LC1	# tmp45,
	st.w	[r0], r1	#, tmp45
	call	printf		#
# basic.c:489: 	while (*list_line != NL)
	j	.L45		#
.L46:
# basic.c:492: 		list_line++;
	ld.w	r0, [list_line]	# list_line.38_5, list_line
	add.w	r0, 1 #111	# _6,
	st.w	[list_line], r0	# list_line, _6
.L45:
# basic.c:489: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.39_7, list_line
	ld.b	r0, [r0]	# _8, *list_line.39_7
# basic.c:489: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp46, _8
	mov.w	r0, 10	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L46		#
# basic.c:494: 	list_line++;
	ld.w	r0, [list_line]	# list_line.40_9, list_line
	add.w	r0, 1 #111	# _10,
	st.w	[list_line], r0	# list_line, _10
# basic.c:495: 	printf("\n");
	mov.w	r1, sp	# tmp48,
	mov.w	r0, 10	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	putchar		#
# basic.c:496: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	printline, .-printline
	.global	__gesf2
	.global	__mulsf3
	.global	__floatsisf
	.global	__addsf3
	.global	__subsf3
	.p2align	1
	.global	testnum
	.type	testnum, @function
testnum:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 28 #111	#,
# basic.c:500: 	VAR num = 0;
	xor.w	r0, r0	# tmp41
	st.w	[r13 + (-8)], r0	# num, tmp41
# basic.c:501: 	ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.41_1, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.41_1
	call	ignore_blanks		#
# basic.c:503: 	while (*txtpos >= '0' && *txtpos <= '9')
	j	.L48		#
.L52:
# basic.c:506: 		if (num >= 0xFFFFFFFF / 10)
	mov.w	r0, 1305267405	# tmp43,
	st.w	[sp + (4)], r0	#, tmp43
	ld.w	r0, [r13 + (-8)]	# tmp44, num
	st.w	[sp], r0	#, tmp44
	call	__gesf2		#
	mov.w	r1, r0	# tmp45,
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# tmp45, tmp46
	jss	.L55		#
# basic.c:508: 			num = 0xFFFFFFFF;
	mov.w	r0, 1333788672	# tmp47,
	st.w	[r13 + (-8)], r0	# num, tmp47
# basic.c:509: 			break;
	j	.L51		#
.L55:
# basic.c:512: 		num = num * 10 + *txtpos - '0';
	mov.w	r0, 1092616192	# tmp48,
	st.w	[sp + (4)], r0	#, tmp48
	ld.w	r0, [r13 + (-8)]	# tmp49, num
	st.w	[sp], r0	#, tmp49
	call	__mulsf3		#
	mov.w	r1, r0	# tmp50,
	mov.w	r6, r1	# _2, tmp50
# basic.c:512: 		num = num * 10 + *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.42_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.42_3
	zex.b	r0, r0	# _5, _4
# basic.c:512: 		num = num * 10 + *txtpos - '0';
	st.w	[sp], r0	#, _5
	call	__floatsisf		#
	mov.w	r1, r0	# _6,
	mov.w	r0, r6	# tmp52, _2
	st.w	[sp + (4)], r1	#, tmp51
	st.w	[sp], r0	#, tmp52
	call	__addsf3		#
	mov.w	r1, r0	# tmp53,
	mov.w	r0, r1	# _7, tmp53
# basic.c:512: 		num = num * 10 + *txtpos - '0';
	mov.w	r1, 1111490560	# tmp54,
	st.w	[sp + (4)], r1	#, tmp54
	st.w	[sp], r0	#, tmp55
	call	__subsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-8)], r0	# num, tmp57
# basic.c:513: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.43_8, txtpos
	add.w	r0, 1 #111	# _9,
	st.w	[txtpos], r0	# txtpos, _9
.L48:
# basic.c:503: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.44_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.44_10
# basic.c:503: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp58, _11
	mov.w	r0, 47	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jse	.L51		#
# basic.c:503: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.45_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.45_12
# basic.c:503: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp60, _13
	mov.w	r0, 57	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jse	.L52		#
.L51:
# basic.c:515: 	return	num;
	ld.w	r0, [r13 + (-8)]	# _23, num
	mov.w	r1, r0	# <retval>, _23
# basic.c:516: }
	mov.w	r0, r1	#, <retval>
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	testnum, .-testnum
	.p2align	1
	.global	entered_with_line_num
	.type	entered_with_line_num, @function
entered_with_line_num:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 84 #111	#,
# basic.c:528: 	linelen = 0;
	xor.w	r0, r0	# tmp98
	st.b	[r13 + (-1)], r0	# linelen, tmp98
# basic.c:529: 	while (txtpos[linelen] != NL)
	j	.L57		#
.L58:
# basic.c:530: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.46_1, linelen
	add.w	r0, 1 #111	# tmp99,
	st.b	[r13 + (-1)], r0	# linelen, tmp100
.L57:
# basic.c:529: 	while (txtpos[linelen] != NL)
	ld.w	r0, [txtpos]	# txtpos.47_2, txtpos
	ld.b	r1, [r13 + (-1)]	# _3, linelen
	add.w	r0, r1 #222	# _4, _3
	ld.b	r0, [r0]	# _5, *_4
# basic.c:529: 	while (txtpos[linelen] != NL)
	zex.b	r1, r0	# tmp101, _5
	mov.w	r0, 10	# tmp102,
	cmp.w	r1, r0	# tmp101, tmp102
	jnz	.L58		#
# basic.c:531: 	linelen++; // Include the NL in the line length
	ld.b	r0, [r13 + (-1)]	# linelen.48_6, linelen
	add.w	r0, 1 #111	# tmp103,
	st.b	[r13 + (-1)], r0	# linelen, tmp104
# basic.c:532: 	linelen += sizeof(LINENUM) + sizeof(char); // Add space for the line number and line length
	ld.b	r0, [r13 + (-1)]	# tmp105, linelen
	add.w	r0, 5 #111	# tmp106,
	st.b	[r13 + (-1)], r0	# linelen, tmp107
# basic.c:535: 	txtpos -= sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [txtpos]	# txtpos.49_7, txtpos
	add.w	r0, -5 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:538: 	l = (int)txtpos;
	ld.w	r0, [txtpos]	# txtpos.50_9, txtpos
# basic.c:538: 	l = (int)txtpos;
	st.w	[r13 + (-12)], r0	# l, txtpos.50_9
# basic.c:539: 	if (l % 2 == 1)
	ld.w	r0, [r13 + (-12)]	# tmp108, l
	mov.w	r1, -2147483647	# tmp110,
	and.w	r0, r1	# tmp109, tmp110
	xor.w	r1, r1	# tmp111
	cmp.w	r0, r1	# tmp109, tmp111
	jges	.L59		#
	add.w	r0, -1 #111	# tmp109,
	mov.w	r1, -2	# tmp112,
	or.w	r0, r1	# tmp109, tmp112
	add.w	r0, 1 #111	# tmp109,
.L59:
	mov.w	r1, r0	# _10, tmp109
# basic.c:539: 	if (l % 2 == 1)
	mov.w	r0, 1	# tmp113,
	cmp.w	r1, r0	# _10, tmp113
	jnz	.L60		#
# basic.c:541: 		txtpos--;
	ld.w	r0, [txtpos]	# txtpos.51_11, txtpos
	add.w	r0, -1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:542: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	ld.w	r0, [txtpos]	# txtpos.52_13, txtpos
	add.w	r0, 5 #111	# _14,
# basic.c:542: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	mov.b	r1, 32	# tmp114,
	st.b	[r0], r1	# *_14, tmp114
# basic.c:543: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.53_15, linelen
	add.w	r0, 1 #111	# tmp115,
	st.b	[r13 + (-1)], r0	# linelen, tmp116
.L60:
# basic.c:546: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r1, [linenum]	# linenum.54_16, linenum
# basic.c:546: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r0, [txtpos]	# txtpos.55_17, txtpos
# basic.c:546: 	*((LINENUM *)txtpos) = linenum;
	st.w	[r0], r1	# MEM[(LINENUM *)txtpos.55_17], linenum.56_18
# basic.c:547: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.w	r0, [txtpos]	# txtpos.57_19, txtpos
	add.w	r0, 4 #111	# _20,
# basic.c:547: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.b	r1, [r13 + (-1)]	# tmp117, linelen
	st.b	[r0], r1	# *_20, tmp117
# basic.c:551: 	start = findline();
	call	findline		#
	st.w	[r13 + (-8)], r0	# start,
# basic.c:554: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [program_end]	# program_end.58_21, program_end
# basic.c:554: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r1, [r13 + (-8)]	# tmp118, start
	cmp.w	r1, r0	# tmp118, program_end.58_21
	jz	.L61		#
# basic.c:554: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [r13 + (-8)]	# tmp119, start
	ld.w	r1, [r0]	# _22, MEM[(LINENUM *)start_110]
# basic.c:554: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [linenum]	# linenum.59_23, linenum
# basic.c:554: 	if (start != program_end && *((LINENUM *)start) == linenum)
	cmp.w	r1, r0	# _22, linenum.60_24
	jnz	.L61		#
# basic.c:559: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp120, start
	add.w	r0, 4 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
	zex.b	r1, r0	# _27, _26
# basic.c:559: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp122, start
	add.w	r0, r1 #222	# tmp121, _27
	st.w	[r13 + (-24)], r0	# from, tmp121
# basic.c:560: 		dest = start;
	ld.w	r0, [r13 + (-8)]	# tmp123, start
	st.w	[r13 + (-20)], r0	# dest, tmp123
# basic.c:562: 		tomove = program_end - from;
	ld.w	r0, [program_end]	# program_end.61_28, program_end
	ld.w	r1, [r13 + (-24)]	# tmp124, from
	sub.w	r0, r1 #222	# _29, tmp124
# basic.c:562: 		tomove = program_end - from;
	st.w	[r13 + (-28)], r0	# tomove, _29
# basic.c:563: 		while (tomove > 0)
	j	.L62		#
.L63:
# basic.c:565: 			*dest = *from;
	ld.w	r0, [r13 + (-24)]	# tmp125, from
	ld.b	r1, [r0]	# _30, *from_82
# basic.c:565: 			*dest = *from;
	ld.w	r0, [r13 + (-20)]	# tmp126, dest
	st.b	[r0], r1	# *dest_81, _30
# basic.c:566: 			from++;
	ld.w	r0, [r13 + (-24)]	# tmp128, from
	add.w	r0, 1 #111	# tmp127,
	st.w	[r13 + (-24)], r0	# from, tmp127
# basic.c:567: 			dest++;
	ld.w	r0, [r13 + (-20)]	# tmp130, dest
	add.w	r0, 1 #111	# tmp129,
	st.w	[r13 + (-20)], r0	# dest, tmp129
# basic.c:568: 			tomove--;
	ld.w	r0, [r13 + (-28)]	# tmp132, tomove
	add.w	r0, -1 #111	# tmp131,
	st.w	[r13 + (-28)], r0	# tomove, tmp131
.L62:
# basic.c:563: 		while (tomove > 0)
	ld.w	r1, [r13 + (-28)]	# tmp133, tomove
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jnz	.L63		#
# basic.c:570: 		program_end = dest;
	ld.w	r0, [r13 + (-20)]	# tmp135, dest
	st.w	[program_end], r0	# program_end, tmp135
.L61:
# basic.c:573: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	ld.w	r0, [txtpos]	# txtpos.62_31, txtpos
	add.w	r0, 5 #111	# _32,
	ld.b	r0, [r0]	# _33, *_32
# basic.c:573: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	zex.b	r1, r0	# tmp136, _33
	mov.w	r0, 10	# tmp137,
	cmp.w	r1, r0	# tmp136, tmp137
	jz	.L76		#
# basic.c:580: 	first_time = 1; // odd address hack
	mov.w	r0, 1	# tmp138,
	st.w	[r13 + (-16)], r0	# first_time, tmp138
# basic.c:582: 	while (linelen > 0)
	j	.L66		#
.L75:
# basic.c:588: 		space_to_make = txtpos - program_end;
	ld.w	r0, [txtpos]	# txtpos.63_34, txtpos
	ld.w	r1, [program_end]	# program_end.64_35, program_end
	sub.w	r0, r1 #222	# _36, program_end.64_35
# basic.c:588: 		space_to_make = txtpos - program_end;
	st.w	[r13 + (-44)], r0	# space_to_make, _36
# basic.c:590: 		if (space_to_make > linelen)
	ld.b	r0, [r13 + (-1)]	# _37, linelen
# basic.c:590: 		if (space_to_make > linelen)
	ld.w	r1, [r13 + (-44)]	# tmp139, space_to_make
	cmp.w	r1, r0	# tmp139, _37
	jse	.L67		#
# basic.c:591: 			space_to_make = linelen;
	ld.b	r0, [r13 + (-1)]	# tmp140, linelen
	st.w	[r13 + (-44)], r0	# space_to_make, tmp140
.L67:
# basic.c:592: 		newEnd = program_end + space_to_make;
	ld.w	r0, [program_end]	# program_end.65_38, program_end
# basic.c:592: 		newEnd = program_end + space_to_make;
	ld.w	r1, [r13 + (-44)]	# tmp142, space_to_make
	add.w	r0, r1 #222	# tmp141, tmp142
	st.w	[r13 + (-48)], r0	# newEnd, tmp141
# basic.c:593: 		tomove = program_end - start;
	ld.w	r0, [program_end]	# program_end.66_39, program_end
	ld.w	r1, [r13 + (-8)]	# tmp143, start
	sub.w	r0, r1 #222	# _40, tmp143
# basic.c:593: 		tomove = program_end - start;
	st.w	[r13 + (-32)], r0	# tomove, _40
# basic.c:597: 		from = program_end;
	ld.w	r0, [program_end]	# tmp144, program_end
	st.w	[r13 + (-36)], r0	# from, tmp144
# basic.c:598: 		dest = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp145, newEnd
	st.w	[r13 + (-40)], r0	# dest, tmp145
# basic.c:599: 		while (tomove > 0)
	j	.L68		#
.L69:
# basic.c:601: 			from--;
	ld.w	r0, [r13 + (-36)]	# tmp147, from
	add.w	r0, -1 #111	# tmp146,
	st.w	[r13 + (-36)], r0	# from, tmp146
# basic.c:602: 			dest--;
	ld.w	r0, [r13 + (-40)]	# tmp149, dest
	add.w	r0, -1 #111	# tmp148,
	st.w	[r13 + (-40)], r0	# dest, tmp148
# basic.c:603: 			*dest = *from;
	ld.w	r0, [r13 + (-36)]	# tmp150, from
	ld.b	r1, [r0]	# _41, *from_143
# basic.c:603: 			*dest = *from;
	ld.w	r0, [r13 + (-40)]	# tmp151, dest
	st.b	[r0], r1	# *dest_144, _41
# basic.c:604: 			tomove--;
	ld.w	r0, [r13 + (-32)]	# tmp153, tomove
	add.w	r0, -1 #111	# tmp152,
	st.w	[r13 + (-32)], r0	# tomove, tmp152
.L68:
# basic.c:599: 		while (tomove > 0)
	ld.w	r1, [r13 + (-32)]	# tmp154, tomove
	xor.w	r0, r0	# tmp155
	cmp.w	r1, r0	# tmp154, tmp155
	jnz	.L69		#
# basic.c:607: 		l = 0;
	xor.w	r0, r0	# tmp156
	st.w	[r13 + (-12)], r0	# l, tmp156
# basic.c:608: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r1, [r13 + (-16)]	# tmp157, first_time
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jz	.L70		#
# basic.c:608: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r0, [txtpos]	# txtpos.67_42, txtpos
	add.w	r0, 5 #111	# _43,
	ld.b	r0, [r0]	# _44, *_43
# basic.c:608: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	zex.b	r1, r0	# tmp159, _44
	mov.w	r0, 32	# tmp160,
	cmp.w	r1, r0	# tmp159, tmp160
	jnz	.L70		#
# basic.c:613: 			k = txtpos[sizeof(LINENUM)];
	ld.w	r0, [txtpos]	# txtpos.68_45, txtpos
	add.w	r0, 4 #111	# _46,
	ld.b	r0, [r0]	# _47, *_46
# basic.c:613: 			k = txtpos[sizeof(LINENUM)];
	st.b	[r13 + (-49)], r0	# k, _47
# basic.c:614: 			k -= sizeof(LINENUM) + sizeof(char); // actual length of line
	ld.b	r0, [r13 + (-49)]	# k.69_48, k
	add.w	r0, -5 #111	# tmp161,
	st.b	[r13 + (-49)], r0	# k, _49
# basic.c:615: 			for (l = 0; l < k; l++)
	xor.w	r0, r0	# tmp162
	st.w	[r13 + (-12)], r0	# l, tmp162
# basic.c:615: 			for (l = 0; l < k; l++)
	j	.L71		#
.L72:
# basic.c:617: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r1, [txtpos]	# txtpos.70_50, txtpos
	ld.w	r0, [r13 + (-12)]	# l.71_51, l
	add.w	r0, 6 #111	# _52,
	add.w	r1, r0 #222	# _53, _52
# basic.c:617: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r0, [txtpos]	# txtpos.72_54, txtpos
# basic.c:617: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r2, [r13 + (-12)]	# l.73_55, l
	add.w	r2, 5 #111	# _56,
# basic.c:617: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	add.w	r0, r2 #222	# _57, _56
# basic.c:617: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.b	r1, [r1]	# _58, *_53
# basic.c:617: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	st.b	[r0], r1	# *_57, _58
# basic.c:615: 			for (l = 0; l < k; l++)
	ld.w	r0, [r13 + (-12)]	# tmp164, l
	add.w	r0, 1 #111	# tmp163,
	st.w	[r13 + (-12)], r0	# l, tmp163
.L71:
# basic.c:615: 			for (l = 0; l < k; l++)
	ld.b	r1, [r13 + (-49)]	#, k
	sex.b	r0, r1	# _59,
# basic.c:615: 			for (l = 0; l < k; l++)
	ld.w	r1, [r13 + (-12)]	# tmp165, l
	cmp.w	r1, r0	# tmp165, _59
	jss	.L72		#
# basic.c:619: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	ld.w	r0, [txtpos]	# txtpos.74_60, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _61,
	add.w	r1, 3 #111	# _62,
	add.w	r0, r1 #222	# _63, _62
# basic.c:619: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	mov.b	r1, 32	# tmp166,
	st.b	[r0], r1	# *_63, tmp166
# basic.c:620: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	ld.w	r0, [txtpos]	# txtpos.75_64, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _65,
# basic.c:620: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r1, 4 #111	# _66,
# basic.c:620: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r0, r1 #222	# _67, _66
# basic.c:620: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	mov.b	r1, 10	# tmp167,
	st.b	[r0], r1	# *_67, tmp167
.L70:
# basic.c:625: 		for (tomove = 0; tomove < space_to_make; tomove++)
	xor.w	r0, r0	# tmp168
	st.w	[r13 + (-32)], r0	# tomove, tmp168
# basic.c:625: 		for (tomove = 0; tomove < space_to_make; tomove++)
	j	.L73		#
.L74:
# basic.c:627: 			*start = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.76_68, txtpos
	ld.b	r1, [r0]	# _69, *txtpos.76_68
# basic.c:627: 			*start = *txtpos;
	ld.w	r0, [r13 + (-8)]	# tmp169, start
	st.b	[r0], r1	# *start_77, _69
# basic.c:630: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.77_70, txtpos
	add.w	r0, 1 #111	# _71,
	st.w	[txtpos], r0	# txtpos, _71
# basic.c:631: 			start++;
	ld.w	r0, [r13 + (-8)]	# tmp171, start
	add.w	r0, 1 #111	# tmp170,
	st.w	[r13 + (-8)], r0	# start, tmp170
# basic.c:632: 			linelen--;
	ld.b	r0, [r13 + (-1)]	# linelen.78_72, linelen
	add.w	r0, -1 #111	# tmp172,
	st.b	[r13 + (-1)], r0	# linelen, tmp173
# basic.c:625: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r0, [r13 + (-32)]	# tmp175, tomove
	add.w	r0, 1 #111	# tmp174,
	st.w	[r13 + (-32)], r0	# tomove, tmp174
.L73:
# basic.c:625: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r1, [r13 + (-32)]	# tmp176, tomove
	ld.w	r0, [r13 + (-44)]	# tmp177, space_to_make
	cmp.w	r1, r0	# tmp176, tmp177
	js	.L74		#
# basic.c:634: 		program_end = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp178, newEnd
	st.w	[program_end], r0	# program_end, tmp178
# basic.c:635: 		first_time = 0;  // odd address hack
	xor.w	r0, r0	# tmp179
	st.w	[r13 + (-16)], r0	# first_time, tmp179
.L66:
# basic.c:582: 	while (linelen > 0)
	ld.b	r1, [r13 + (-1)]	# tmp180, linelen
	xor.w	r0, r0	# tmp181
	cmp.w	r1, r0	# tmp180, tmp181
	jnz	.L75		#
	j	.L56		#
.L76:
# basic.c:576: 		return;
	nop	
.L56:
# basic.c:638: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	entered_with_line_num, .-entered_with_line_num
	.section	.rodata
	.p2align	2
.LC2:
	.string	"how?"
	.text
	.p2align	1
	.global	qhow
	.type	qhow, @function
qhow:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:642: 	printf("how?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC2	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:643: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qhow, .-qhow
	.section	.rodata
	.p2align	2
.LC3:
	.string	"what?"
	.text
	.p2align	1
	.global	qwhat
	.type	qwhat, @function
qwhat:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:647: 	printf("what?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC3	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:648: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qwhat, .-qwhat
	.section	.rodata
	.p2align	2
.LC4:
	.string	"sorry!"
	.text
	.p2align	1
	.global	qsorry
	.type	qsorry, @function
qsorry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:652: 	printf("sorry!\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC4	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:653: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qsorry, .-qsorry
	.section	.rodata
	.p2align	2
.LC5:
	.string	"v0.60"
	.p2align	2
.LC6:
	.string	"TinyBasic %s\n"
	.p2align	2
.LC7:
	.string	"%d bytes free\n"
	.text
	.p2align	1
	.global	exec_mem
	.type	exec_mem, @function
exec_mem:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:657: 	printf("TinyBasic %s\n", kVersion);
	mov.w	r0, sp	# tmp29,
	mov.w	r1, .LC5	# tmp30,
	st.w	[r0 + (4)], r1	#, tmp30
	mov.w	r1, .LC6	# tmp31,
	st.w	[r0], r1	#, tmp31
	call	printf		#
# basic.c:658: 	printf("%d bytes free\n", variables_begin - program_end);
	ld.w	r1, [variables_begin]	# variables_begin.79_1, variables_begin
	ld.w	r0, [program_end]	# program_end.80_2, program_end
	sub.w	r1, r0 #222	# _3, program_end.80_2
	mov.w	r0, sp	# tmp32,
	st.w	[r0 + (4)], r1	#, _3
	mov.w	r1, .LC7	# tmp33,
	st.w	[r0], r1	#, tmp33
	call	printf		#
# basic.c:659: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_mem, .-exec_mem
	.p2align	1
	.global	scantable
	.type	scantable, @function
scantable:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:663: 	int i = 0;
	xor.w	r0, r0	# tmp67
	st.w	[r13 + (-4)], r0	# i, tmp67
# basic.c:664: 	table_index = offset;
	ld.w	r0, [r13 + (12)]	# tmp68, offset
	st.b	[table_index], r0	# table_index, _1
.L91:
# basic.c:669: 		if (*table == 0x01)
	ld.w	r0, [r13 + (8)]	# tmp69, table
	ld.b	r0, [r0]	# _2, *table_43
# basic.c:669: 		if (*table == 0x01)
	sex.b	r1, r0	# tmp70, _2
	mov.w	r0, 1	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L92		#
# basic.c:675: 		if (txtpos[i] == *table)
	ld.w	r0, [txtpos]	# txtpos.81_3, txtpos
	ld.w	r1, [r13 + (-4)]	# i.82_4, i
	add.w	r0, r1 #222	# _5, i.82_4
	ld.b	r0, [r0]	# _6, *_5
	zex.b	r1, r0	# _7, _6
# basic.c:675: 		if (txtpos[i] == *table)
	ld.w	r0, [r13 + (8)]	# tmp72, table
	ld.b	r0, [r0]	# _8, *table_43
	sex.b	r0, r0	# _9, _8
# basic.c:675: 		if (txtpos[i] == *table)
	cmp.w	r1, r0	# _7, _9
	jnz	.L84		#
# basic.c:680: 			i++;
	ld.w	r0, [r13 + (-4)]	# tmp74, i
	add.w	r0, 1 #111	# tmp73,
	st.w	[r13 + (-4)], r0	# i, tmp73
# basic.c:681: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp76, table
	add.w	r0, 1 #111	# tmp75,
	st.w	[r13 + (8)], r0	# table, tmp75
	j	.L91		#
.L84:
# basic.c:683: 		else if (txtpos[i] >= 128)
	ld.w	r0, [txtpos]	# txtpos.83_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.84_11, i
	add.w	r0, r1 #222	# _12, i.84_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:683: 		else if (txtpos[i] >= 128)
	sex.b	r1, r0	# tmp77, _14
	xor.w	r0, r0	# tmp78
	cmp.w	r1, r0	# tmp77, tmp78
	jges	.L86		#
# basic.c:685: 			int found = txtpos[i] - 128;
	ld.w	r0, [txtpos]	# txtpos.85_15, txtpos
	ld.w	r1, [r13 + (-4)]	# i.86_16, i
	add.w	r0, r1 #222	# _17, i.86_16
	ld.b	r0, [r0]	# _18, *_17
	zex.b	r0, r0	# _19, _18
# basic.c:685: 			int found = txtpos[i] - 128;
	add.w	r0, -128 #111	# tmp79,
	st.w	[r13 + (-8)], r0	# found, tmp79
# basic.c:687: 			if (found >= offset && found <= end_offset)
	ld.w	r1, [r13 + (-8)]	# tmp80, found
	ld.w	r0, [r13 + (12)]	# tmp81, offset
	cmp.w	r1, r0	# tmp80, tmp81
	jss	.L87		#
# basic.c:687: 			if (found >= offset && found <= end_offset)
	ld.w	r1, [r13 + (-8)]	# tmp82, found
	ld.w	r0, [r13 + (16)]	# tmp83, end_offset
	cmp.w	r1, r0	# tmp82, tmp83
	jgs	.L87		#
# basic.c:690: 				table_index = found;
	ld.w	r0, [r13 + (-8)]	# tmp84, found
	st.b	[table_index], r0	# table_index, _20
# basic.c:692: 				txtpos += 1;  // Advance the pointer to following the keyword
	ld.w	r0, [txtpos]	# txtpos.87_21, txtpos
	add.w	r0, 1 #111	# _22,
	st.w	[txtpos], r0	# txtpos, _22
# basic.c:693: 				ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.88_23, txtpos
	mov.w	r1, sp	# tmp85,
	st.w	[r1], r0	#, txtpos.88_23
	call	ignore_blanks		#
# basic.c:694: 				return;
	j	.L81		#
.L87:
# basic.c:698: 				i++;
	ld.w	r0, [r13 + (-4)]	# tmp87, i
	add.w	r0, 1 #111	# tmp86,
	st.w	[r13 + (-4)], r0	# i, tmp86
	j	.L91		#
.L86:
# basic.c:704: 			if (*table == 0x00)
	ld.w	r0, [r13 + (8)]	# tmp88, table
	ld.b	r0, [r0]	# _24, *table_43
# basic.c:704: 			if (*table == 0x00)
	sex.b	r1, r0	# tmp89, _24
	xor.w	r0, r0	# tmp90
	cmp.w	r1, r0	# tmp89, tmp90
	jnz	.L89		#
# basic.c:707: 				*txtpos = table_index + 128 ;
	ld.b	r0, [table_index]	# table_index.89_25, table_index
	mov.w	r1, r0	# table_index.90_26, table_index.89_25
# basic.c:707: 				*txtpos = table_index + 128 ;
	ld.w	r0, [txtpos]	# txtpos.91_27, txtpos
# basic.c:707: 				*txtpos = table_index + 128 ;
	add.w	r1, -128 #111	# tmp91,
# basic.c:707: 				*txtpos = table_index + 128 ;
	st.b	[r0], r1	# *txtpos.91_27, _28
# basic.c:710: 				memset(txtpos + 1, SPACE, i - 1);
	ld.w	r0, [txtpos]	# txtpos.92_29, txtpos
# basic.c:710: 				memset(txtpos + 1, SPACE, i - 1);
	mov.w	r1, r0	# _30, txtpos.92_29
	add.w	r1, 1 #111	# _30,
# basic.c:710: 				memset(txtpos + 1, SPACE, i - 1);
	ld.w	r0, [r13 + (-4)]	# tmp92, i
	mov.w	r2, r0	# _31, tmp92
	add.w	r2, -1 #111	# _31,
	mov.w	r0, sp	# tmp93,
	st.w	[r0 + (8)], r2	#, _31
	mov.w	r2, 32	# tmp94,
	st.w	[r0 + (4)], r2	#, tmp94
	st.w	[r0], r1	#, _30
	call	memset		#
# basic.c:712: 				txtpos += i;  // Advance the pointer to following the keyword
	ld.w	r0, [txtpos]	# txtpos.93_32, txtpos
	ld.w	r1, [r13 + (-4)]	# i.94_33, i
	add.w	r0, r1 #222	# _34, i.94_33
	st.w	[txtpos], r0	# txtpos, _34
# basic.c:713: 				ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.95_35, txtpos
	mov.w	r1, sp	# tmp95,
	st.w	[r1], r0	#, txtpos.95_35
	call	ignore_blanks		#
# basic.c:714: 				return;
	j	.L81		#
.L90:
# basic.c:720: 				table++;
	ld.w	r0, [r13 + (8)]	# tmp97, table
	add.w	r0, 1 #111	# tmp96,
	st.w	[r13 + (8)], r0	# table, tmp96
.L89:
# basic.c:718: 			while (*table != 0x00)
	ld.w	r0, [r13 + (8)]	# tmp98, table
	ld.b	r0, [r0]	# _36, *table_44
# basic.c:718: 			while (*table != 0x00)
	sex.b	r1, r0	# tmp99, _36
	xor.w	r0, r0	# tmp100
	cmp.w	r1, r0	# tmp99, tmp100
	jnz	.L90		#
# basic.c:724: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp102, table
	add.w	r0, 1 #111	# tmp101,
	st.w	[r13 + (8)], r0	# table, tmp101
# basic.c:725: 			table_index++;
	ld.b	r0, [table_index]	# table_index.96_37, table_index
	add.w	r0, 1 #111	# tmp103,
	st.b	[table_index], r0	# table_index, _41
# basic.c:726: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.99_42, txtpos
	mov.w	r1, sp	# tmp104,
	st.w	[r1], r0	#, txtpos.99_42
	call	ignore_blanks		#
# basic.c:727: 			i = 0;
	xor.w	r0, r0	# tmp105
	st.w	[r13 + (-4)], r0	# i, tmp105
# basic.c:669: 		if (*table == 0x01)
	j	.L91		#
.L92:
# basic.c:671: 			return;
	nop	
.L81:
# basic.c:730: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	scantable, .-scantable
	.p2align	1
	.global	print_quoted_string
	.type	print_quoted_string, @function
print_quoted_string:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:734: 	int i = 0;
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:735: 	char delim = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.100_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.100_1
# basic.c:735: 	char delim = *txtpos;
	st.b	[r13 + (-5)], r0	# delim, _2
# basic.c:736: 	if (delim != '"' && delim != '\'')
	ld.b	r0, [r13 + (-5)]	#, delim
	sex.b	r1, r0	# tmp54,
	mov.w	r0, 34	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L94		#
# basic.c:736: 	if (delim != '"' && delim != '\'')
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r1, r2	# tmp56,
	mov.w	r0, 39	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L94		#
# basic.c:737: 		return 0;
	xor.w	r0, r0	# _27
	j	.L95		#
.L94:
# basic.c:738: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.101_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:741: 	while (txtpos[i] != delim)
	j	.L96		#
.L98:
# basic.c:743: 		if (txtpos[i] == NL)
	ld.w	r0, [txtpos]	# txtpos.102_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.103_6, i
	add.w	r0, r1 #222	# _7, i.103_6
	ld.b	r0, [r0]	# _8, *_7
# basic.c:743: 		if (txtpos[i] == NL)
	zex.b	r1, r0	# tmp58, _8
	mov.w	r0, 10	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jnz	.L97		#
# basic.c:744: 			return 0;
	xor.w	r0, r0	# _27
	j	.L95		#
.L97:
# basic.c:745: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp61, i
	add.w	r0, 1 #111	# tmp60,
	st.w	[r13 + (-4)], r0	# i, tmp60
.L96:
# basic.c:741: 	while (txtpos[i] != delim)
	ld.w	r0, [txtpos]	# txtpos.104_9, txtpos
	ld.w	r1, [r13 + (-4)]	# i.105_10, i
	add.w	r0, r1 #222	# _11, i.105_10
	ld.b	r0, [r0]	# _12, *_11
	zex.b	r1, r0	# _13, _12
# basic.c:741: 	while (txtpos[i] != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _14,
# basic.c:741: 	while (txtpos[i] != delim)
	cmp.w	r1, r0	# _13, _14
	jnz	.L98		#
# basic.c:749: 	while (*txtpos != delim)
	j	.L99		#
.L100:
# basic.c:751: 		put_char(*txtpos);
	ld.w	r0, [txtpos]	# txtpos.106_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.106_15
# basic.c:751: 		put_char(*txtpos);
	zex.b	r0, r0	# _17, _16
	mov.w	r1, sp	# tmp62,
	st.w	[r1], r0	#, _17
	call	put_char		#
# basic.c:752: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.107_18, txtpos
	add.w	r0, 1 #111	# _19,
	st.w	[txtpos], r0	# txtpos, _19
.L99:
# basic.c:749: 	while (*txtpos != delim)
	ld.w	r0, [txtpos]	# txtpos.108_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.108_20
	zex.b	r1, r0	# _22, _21
# basic.c:749: 	while (*txtpos != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _23,
# basic.c:749: 	while (*txtpos != delim)
	cmp.w	r1, r0	# _22, _23
	jnz	.L100		#
# basic.c:754: 	txtpos++; // Skip over the last delimiter
	ld.w	r0, [txtpos]	# txtpos.109_24, txtpos
	add.w	r0, 1 #111	# _25,
	st.w	[txtpos], r0	# txtpos, _25
# basic.c:756: 	return 1;
	mov.b	r0, 1	# _27,
.L95:
# basic.c:757: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	print_quoted_string, .-print_quoted_string
	.p2align	1
	.global	check_no_arg_func
	.type	check_no_arg_func, @function
check_no_arg_func:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:761: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:762: 	if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.110_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.110_1
# basic.c:762: 	if (*txtpos != '(')
	zex.b	r1, r0	# tmp36, _2
	mov.w	r0, 40	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L102		#
# basic.c:763: 		return 1;
	mov.w	r0, 1	# _9,
	j	.L103		#
.L102:
# basic.c:764: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.111_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:765: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:766: 	if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.112_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.112_5
# basic.c:766: 	if (*txtpos != ')')
	zex.b	r1, r0	# tmp38, _6
	mov.w	r0, 41	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L104		#
# basic.c:767: 		return 1;
	mov.w	r0, 1	# _9,
	j	.L103		#
.L104:
# basic.c:768: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.113_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:769: 	return 0;
	xor.w	r0, r0	# _9
.L103:
# basic.c:770: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_no_arg_func, .-check_no_arg_func
	.global	__fixsfsi
	.global	__ltsf2
	.p2align	1
	.global	expr4
	.type	expr4, @function
expr4:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 68 #111	#,
# basic.c:774: 	unsigned char f = table_index;
	ld.b	r0, [table_index]	# table_index.114_1, table_index
	st.b	[r13 + (-25)], r0	# f, table_index.114_1
# basic.c:777: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:783: 	if (*txtpos == '-') {
	ld.w	r0, [txtpos]	# txtpos.115_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.115_2
# basic.c:783: 	if (*txtpos == '-') {
	zex.b	r1, r0	# tmp159, _3
	mov.w	r0, 45	# tmp160,
	cmp.w	r1, r0	# tmp159, tmp160
	jnz	.L106		#
# basic.c:784: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.116_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:785: 		return -expr4();
	call	expr4		#
	mov.w	r1, r0	# _6,
# basic.c:785: 		return -expr4();
	mov.w	r0, -2147483648	# tmp161,
	xor.w	r1, r0	# _140, tmp161
	j	.L107		#
.L106:
# basic.c:788: 	if (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.117_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.117_7
# basic.c:788: 	if (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp162, _8
	mov.w	r0, 47	# tmp163,
	cmp.w	r1, r0	# tmp162, tmp163
	jse	.L108		#
# basic.c:788: 	if (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.118_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.118_9
# basic.c:788: 	if (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp164, _10
	mov.w	r0, 57	# tmp165,
	cmp.w	r1, r0	# tmp164, tmp165
	jg	.L108		#
# basic.c:790: 		VAR a = 0;
	xor.w	r0, r0	# tmp166
	st.w	[r13 + (-8)], r0	# a, tmp166
# basic.c:791: 		int decimals = 0;
	xor.w	r0, r0	# tmp167
	st.w	[r13 + (-12)], r0	# decimals, tmp167
# basic.c:792: 		float dec = 0.1f;
	mov.w	r0, 1036831949	# tmp168,
	st.w	[r13 + (-16)], r0	# dec, tmp168
.L113:
# basic.c:794: 			if (*txtpos == '.') 
	ld.w	r0, [txtpos]	# txtpos.119_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.119_11
# basic.c:794: 			if (*txtpos == '.') 
	zex.b	r1, r0	# tmp169, _12
	mov.w	r0, 46	# tmp170,
	cmp.w	r1, r0	# tmp169, tmp170
	jnz	.L109		#
# basic.c:796: 				decimals = 1;
	mov.w	r0, 1	# tmp171,
	st.w	[r13 + (-12)], r0	# decimals, tmp171
	j	.L110		#
.L109:
# basic.c:800: 				if (decimals)
	ld.w	r1, [r13 + (-12)]	# tmp172, decimals
	xor.w	r0, r0	# tmp173
	cmp.w	r1, r0	# tmp172, tmp173
	jz	.L111		#
# basic.c:802: 					a = a + dec * (*txtpos - '0');
	ld.w	r0, [txtpos]	# txtpos.120_13, txtpos
	ld.b	r0, [r0]	# _14, *txtpos.120_13
	zex.b	r0, r0	# _15, _14
# basic.c:802: 					a = a + dec * (*txtpos - '0');
	add.w	r0, -48 #111	# _16,
# basic.c:802: 					a = a + dec * (*txtpos - '0');
	st.w	[sp], r0	#, _16
	call	__floatsisf		#
	mov.w	r2, r0	# _17,
	ld.w	r1, [r13 + (-16)]	# tmp174, dec
	mov.w	r0, r2	# tmp175, _17
	st.w	[sp + (4)], r1	#, tmp174
	st.w	[sp], r0	#, tmp175
	call	__mulsf3		#
	mov.w	r1, r0	# tmp176,
	mov.w	r0, r1	# _18, tmp176
# basic.c:802: 					a = a + dec * (*txtpos - '0');
	st.w	[sp + (4)], r0	#, tmp177
	ld.w	r0, [r13 + (-8)]	# tmp178, a
	st.w	[sp], r0	#, tmp178
	call	__addsf3		#
	mov.w	r1, r0	# tmp179,
	mov.w	r0, r1	# tmp180, tmp179
	st.w	[r13 + (-8)], r0	# a, tmp180
# basic.c:803: 					dec = dec * 0.1f;
	mov.w	r0, 1036831949	# tmp181,
	st.w	[sp + (4)], r0	#, tmp181
	ld.w	r0, [r13 + (-16)]	# tmp182, dec
	st.w	[sp], r0	#, tmp182
	call	__mulsf3		#
	mov.w	r1, r0	# tmp183,
	mov.w	r0, r1	# tmp184, tmp183
	st.w	[r13 + (-16)], r0	# dec, tmp184
	j	.L110		#
.L111:
# basic.c:806: 					a = a * 10 + (*txtpos - '0');
	mov.w	r0, 1092616192	# tmp185,
	st.w	[sp + (4)], r0	#, tmp185
	ld.w	r0, [r13 + (-8)]	# tmp186, a
	st.w	[sp], r0	#, tmp186
	call	__mulsf3		#
	mov.w	r1, r0	# tmp187,
	mov.w	r6, r1	# _19, tmp187
# basic.c:806: 					a = a * 10 + (*txtpos - '0');
	ld.w	r0, [txtpos]	# txtpos.121_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.121_20
	zex.b	r0, r0	# _22, _21
# basic.c:806: 					a = a * 10 + (*txtpos - '0');
	add.w	r0, -48 #111	# _23,
# basic.c:806: 					a = a * 10 + (*txtpos - '0');
	st.w	[sp], r0	#, _23
	call	__floatsisf		#
	mov.w	r1, r0	# _24,
# basic.c:806: 					a = a * 10 + (*txtpos - '0');
	mov.w	r0, r6	# tmp189, _19
	st.w	[sp + (4)], r1	#, tmp188
	st.w	[sp], r0	#, tmp189
	call	__addsf3		#
	mov.w	r1, r0	# tmp190,
	mov.w	r0, r1	# tmp191, tmp190
	st.w	[r13 + (-8)], r0	# a, tmp191
.L110:
# basic.c:808: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.122_25, txtpos
	add.w	r0, 1 #111	# _26,
	st.w	[txtpos], r0	# txtpos, _26
# basic.c:809: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.123_27, txtpos
	ld.b	r0, [r0]	# _28, *txtpos.123_27
# basic.c:809: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp192, _28
	mov.w	r0, 47	# tmp193,
	cmp.w	r1, r0	# tmp192, tmp193
	jse	.L112		#
# basic.c:809: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.124_29, txtpos
	ld.b	r0, [r0]	# _30, *txtpos.124_29
# basic.c:809: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp194, _30
	mov.w	r0, 57	# tmp195,
	cmp.w	r1, r0	# tmp194, tmp195
	jse	.L113		#
.L112:
# basic.c:809: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.125_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.125_31
# basic.c:809: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp196, _32
	mov.w	r0, 46	# tmp197,
	cmp.w	r1, r0	# tmp196, tmp197
	jz	.L113		#
# basic.c:813: 		return a;
	ld.w	r1, [r13 + (-8)]	# _140, a
	j	.L107		#
.L108:
# basic.c:820: 	if ((txtpos[0] >= 'A' && txtpos[0] <= 'Z' ) || txtpos[0] >= 128)
	ld.w	r0, [txtpos]	# txtpos.126_33, txtpos
	ld.b	r0, [r0]	# _34, *txtpos.126_33
# basic.c:820: 	if ((txtpos[0] >= 'A' && txtpos[0] <= 'Z' ) || txtpos[0] >= 128)
	zex.b	r1, r0	# tmp198, _34
	mov.w	r0, 64	# tmp199,
	cmp.w	r1, r0	# tmp198, tmp199
	jse	.L114		#
# basic.c:820: 	if ((txtpos[0] >= 'A' && txtpos[0] <= 'Z' ) || txtpos[0] >= 128)
	ld.w	r0, [txtpos]	# txtpos.127_35, txtpos
	ld.b	r0, [r0]	# _36, *txtpos.127_35
# basic.c:820: 	if ((txtpos[0] >= 'A' && txtpos[0] <= 'Z' ) || txtpos[0] >= 128)
	zex.b	r1, r0	# tmp200, _36
	mov.w	r0, 90	# tmp201,
	cmp.w	r1, r0	# tmp200, tmp201
	jse	.L115		#
.L114:
# basic.c:820: 	if ((txtpos[0] >= 'A' && txtpos[0] <= 'Z' ) || txtpos[0] >= 128)
	ld.w	r0, [txtpos]	# txtpos.128_37, txtpos
	ld.b	r0, [r0]	# _38, *txtpos.128_37
# basic.c:820: 	if ((txtpos[0] >= 'A' && txtpos[0] <= 'Z' ) || txtpos[0] >= 128)
	sex.b	r1, r0	# tmp202, _39
	xor.w	r0, r0	# tmp203
	cmp.w	r1, r0	# tmp202, tmp203
	jges	.L116		#
.L115:
# basic.c:822: 		int varName = *txtpos;	//x 
	ld.w	r0, [txtpos]	# txtpos.129_40, txtpos
	ld.b	r0, [r0]	# _41, *txtpos.129_40
# basic.c:822: 		int varName = *txtpos;	//x 
	zex.b	r0, r0	# tmp204, _41
	st.w	[r13 + (-32)], r0	# varName, tmp204
# basic.c:824: 		if ((txtpos[0] < 128) && (txtpos[1] < 'A' || txtpos[1] > 'Z')) // Is it a variable reference (single alpha)
	ld.w	r0, [txtpos]	# txtpos.130_42, txtpos
	ld.b	r0, [r0]	# _43, *txtpos.130_42
# basic.c:824: 		if ((txtpos[0] < 128) && (txtpos[1] < 'A' || txtpos[1] > 'Z')) // Is it a variable reference (single alpha)
	sex.b	r1, r0	# tmp205, _44
	xor.w	r0, r0	# tmp206
	cmp.w	r1, r0	# tmp205, tmp206
	jss	.L117		#
# basic.c:824: 		if ((txtpos[0] < 128) && (txtpos[1] < 'A' || txtpos[1] > 'Z')) // Is it a variable reference (single alpha)
	ld.w	r0, [txtpos]	# txtpos.131_45, txtpos
	add.w	r0, 1 #111	# _46,
	ld.b	r0, [r0]	# _47, *_46
# basic.c:824: 		if ((txtpos[0] < 128) && (txtpos[1] < 'A' || txtpos[1] > 'Z')) // Is it a variable reference (single alpha)
	zex.b	r1, r0	# tmp207, _47
	mov.w	r0, 64	# tmp208,
	cmp.w	r1, r0	# tmp207, tmp208
	jse	.L118		#
# basic.c:824: 		if ((txtpos[0] < 128) && (txtpos[1] < 'A' || txtpos[1] > 'Z')) // Is it a variable reference (single alpha)
	ld.w	r0, [txtpos]	# txtpos.132_48, txtpos
	add.w	r0, 1 #111	# _49,
	ld.b	r0, [r0]	# _50, *_49
# basic.c:824: 		if ((txtpos[0] < 128) && (txtpos[1] < 'A' || txtpos[1] > 'Z')) // Is it a variable reference (single alpha)
	zex.b	r1, r0	# tmp209, _50
	mov.w	r0, 90	# tmp210,
	cmp.w	r1, r0	# tmp209, tmp210
	jse	.L117		#
.L118:
# basic.c:827: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	mov.w	r0, 1	# tmp211,
	st.w	[r13 + (-20)], r0	# idx, tmp211
# basic.c:827: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	j	.L119		#
.L125:
# basic.c:829: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	ld.w	r0, [txtpos]	# txtpos.133_51, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.134_52, idx
	add.w	r0, r1 #222	# _53, idx.134_52
	ld.b	r0, [r0]	# _54, *_53
# basic.c:829: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	zex.b	r1, r0	# tmp212, _54
	mov.w	r0, 32	# tmp213,
	cmp.w	r1, r0	# tmp212, tmp213
	jz	.L120		#
# basic.c:829: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	ld.w	r0, [txtpos]	# txtpos.135_55, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.136_56, idx
	add.w	r0, r1 #222	# _57, idx.136_56
	ld.b	r0, [r0]	# _58, *_57
# basic.c:829: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	zex.b	r1, r0	# tmp214, _58
	mov.w	r0, 9	# tmp215,
	cmp.w	r1, r0	# tmp214, tmp215
	jnz	.L121		#
.L120:
# basic.c:827: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	ld.w	r0, [r13 + (-20)]	# tmp217, idx
	add.w	r0, 1 #111	# tmp216,
	st.w	[r13 + (-20)], r0	# idx, tmp216
	j	.L119		#
.L121:
# basic.c:830: 				else if (txtpos[idx] == '(') //x(10)
	ld.w	r0, [txtpos]	# txtpos.137_59, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.138_60, idx
	add.w	r0, r1 #222	# _61, idx.138_60
	ld.b	r0, [r0]	# _62, *_61
# basic.c:830: 				else if (txtpos[idx] == '(') //x(10)
	zex.b	r1, r0	# tmp218, _62
	mov.w	r0, 40	# tmp219,
	cmp.w	r1, r0	# tmp218, tmp219
	jnz	.L158		#
# basic.c:833: 					txtpos += idx + 1;		//(10)
	ld.w	r0, [txtpos]	# txtpos.139_63, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.140_64, idx
	add.w	r1, 1 #111	# _65,
	add.w	r0, r1 #222	# _66, _65
	st.w	[txtpos], r0	# txtpos, _66
# basic.c:835: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:836: 					expression_error = 0;
	xor.w	r0, r0	# tmp220
	st.b	[expression_error], r0	# expression_error, tmp220
# basic.c:837: 					VAR index = expression();
	call	expression		#
	st.w	[r13 + (-36)], r0	# index,
# basic.c:838: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:839: 					if (!expression_error && *txtpos == ')')
	ld.b	r0, [expression_error]	# expression_error.141_67, expression_error
# basic.c:839: 					if (!expression_error && *txtpos == ')')
	sex.b	r1, r0	# tmp221, expression_error.141_67
	xor.w	r0, r0	# tmp222
	cmp.w	r1, r0	# tmp221, tmp222
	jnz	.L123		#
# basic.c:839: 					if (!expression_error && *txtpos == ')')
	ld.w	r0, [txtpos]	# txtpos.142_68, txtpos
	ld.b	r0, [r0]	# _69, *txtpos.142_68
# basic.c:839: 					if (!expression_error && *txtpos == ')')
	zex.b	r1, r0	# tmp223, _69
	mov.w	r0, 41	# tmp224,
	cmp.w	r1, r0	# tmp223, tmp224
	jnz	.L123		#
# basic.c:841: 						txtpos++;
	ld.w	r0, [txtpos]	# txtpos.143_70, txtpos
	add.w	r0, 1 #111	# _71,
	st.w	[txtpos], r0	# txtpos, _71
# basic.c:842: 						VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [arrays_begin]	# arrays_begin.144_72, arrays_begin
	ld.w	r1, [r13 + (-32)]	# varName.145_73, varName
	mov.w	r2, 1073741759	# tmp225,
	add.w	r1, r2 #222	# _74, tmp225
	mov.w	r2, 2	# tmp226,
	shl.w	r1, r2	# _75, tmp226
	add.w	r0, r1 #222	# _76, _75
# basic.c:842: 						VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [r0]	# tmp227, *_76
	st.w	[r13 + (-40)], r0	# array, tmp227
# basic.c:843: 						return array[(int)index];
	ld.w	r0, [r13 + (-36)]	# tmp228, index
	st.w	[sp], r0	#, tmp228
	call	__fixsfsi		#
	mov.w	r1, r0	# _78, _77
# basic.c:843: 						return array[(int)index];
	mov.w	r0, 2	# tmp229,
	shl.w	r1, r0	# _79, tmp229
	ld.w	r0, [r13 + (-40)]	# tmp230, array
	add.w	r0, r1 #222	# _80, _79
	ld.w	r1, [r0]	# _140, *_80
	j	.L107		#
.L123:
# basic.c:847: 						expression_error = 1;
	mov.b	r0, 1	# tmp231,
	st.b	[expression_error], r0	# expression_error, tmp231
# basic.c:848: 						return 0;
	xor.w	r1, r1	# _140
	j	.L107		#
.L119:
# basic.c:827: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	ld.w	r0, [txtpos]	# txtpos.146_81, txtpos
	mov.w	r1, sp	# tmp232,
	st.w	[r1], r0	#, txtpos.146_81
	call	strlen		#
	mov.w	r1, r0	# _82,
# basic.c:827: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	ld.w	r0, [r13 + (-20)]	# tmp233, idx
	cmp.w	r0, r1	# tmp233, _82
	jss	.L125		#
	j	.L124		#
.L158:
# basic.c:850: 				} else break;
	nop	
.L124:
# basic.c:856: 			val = ((VAR *)variables_begin)[varName - 'A'];
	ld.w	r0, [variables_begin]	# variables_begin.147_83, variables_begin
# basic.c:856: 			val = ((VAR *)variables_begin)[varName - 'A'];
	ld.w	r1, [r13 + (-32)]	# varName.148_84, varName
	mov.w	r2, 1073741759	# tmp234,
	add.w	r1, r2 #222	# _85, tmp234
	mov.w	r2, 2	# tmp235,
	shl.w	r1, r2	# _86, tmp235
	add.w	r0, r1 #222	# _87, _86
# basic.c:856: 			val = ((VAR *)variables_begin)[varName - 'A'];
	ld.w	r0, [r0]	# tmp236, *_87
	st.w	[r13 + (-44)], r0	# val, tmp236
# basic.c:857: 			if (*txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.149_88, txtpos
	ld.b	r0, [r0]	# _89, *txtpos.149_88
# basic.c:857: 			if (*txtpos != NL)
	zex.b	r1, r0	# tmp237, _89
	mov.w	r0, 10	# tmp238,
	cmp.w	r1, r0	# tmp237, tmp238
	jz	.L126		#
# basic.c:858: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.150_90, txtpos
	add.w	r0, 1 #111	# _91,
	st.w	[txtpos], r0	# txtpos, _91
.L126:
# basic.c:859: 			return val;
	ld.w	r1, [r13 + (-44)]	# _140, val
	j	.L107		#
.L117:
# basic.c:863: 		scantable(keywords + FUNC_OFFSET, FUNC_ENUM_OFFSET, RELOP_ENUM_OFFSET - 1);
	mov.w	r1, keywords+197	# _92,
	mov.w	r0, sp	# tmp239,
	mov.w	r2, 61	# tmp240,
	st.w	[r0 + (8)], r2	#, tmp240
	mov.w	r2, 42	# tmp241,
	st.w	[r0 + (4)], r2	#, tmp241
	st.w	[r0], r1	#, _92
	call	scantable		#
# basic.c:869: 		if (table_index == FUNC_UNKNOWN)
	ld.b	r0, [table_index]	# table_index.151_93, table_index
# basic.c:869: 		if (table_index == FUNC_UNKNOWN)
	sex.b	r1, r0	# tmp242, table_index.151_93
	mov.w	r0, 61	# tmp243,
	cmp.w	r1, r0	# tmp242, tmp243
	jz	.L159		#
# basic.c:872: 		switch(table_index)
	ld.b	r0, [table_index]	# table_index.152_94, table_index
	sex.b	r0, r0	# _95, table_index.152_94
	mov.w	r1, 57	# tmp244,
	cmp.w	r0, r1	# _95, tmp244
	jz	.L129		#
	mov.w	r1, 57	# tmp245,
	cmp.w	r0, r1	# _95, tmp245
	jgs	.L130		#
	mov.w	r1, 56	# tmp246,
	cmp.w	r0, r1	# _95, tmp246
	jz	.L131		#
	mov.w	r1, 56	# tmp247,
	cmp.w	r0, r1	# _95, tmp247
	jgs	.L130		#
	mov.w	r1, 47	# tmp248,
	cmp.w	r0, r1	# _95, tmp248
	jz	.L132		#
	mov.w	r1, 48	# tmp249,
	cmp.w	r0, r1	# _95, tmp249
	jz	.L133		#
	j	.L130		#
.L132:
# basic.c:875: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _96,
# basic.c:875: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp250
	cmp.w	r1, r0	# _96, tmp250
	jnz	.L160		#
# basic.c:877: 			return getc();
	call	getc		#
	st.w	[sp], r0	#, _97
	call	__floatsisf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L133:
# basic.c:879: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _98,
# basic.c:879: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp251
	cmp.w	r1, r0	# _98, tmp251
	jnz	.L161		#
# basic.c:881: 			return is_key_pressed();
	call	is_key_pressed		#
	st.w	[sp], r0	#, _99
	call	__floatsisf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L131:
# basic.c:883: 			return M_PI;
	mov.w	r1, 1078530011	# _140,
	j	.L107		#
.L129:
# basic.c:885: 			return M_E;
	mov.w	r1, 1076754516	# _140,
	j	.L107		#
.L130:
# basic.c:888: 		f = table_index;
	ld.b	r0, [table_index]	# table_index.153_100, table_index
	st.b	[r13 + (-25)], r0	# f, table_index.153_100
# basic.c:890: 		if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.154_101, txtpos
	ld.b	r0, [r0]	# _102, *txtpos.154_101
# basic.c:890: 		if (*txtpos != '(')
	zex.b	r1, r0	# tmp252, _102
	mov.w	r0, 40	# tmp253,
	cmp.w	r1, r0	# tmp252, tmp253
	jnz	.L162		#
# basic.c:893: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.155_103, txtpos
	add.w	r0, 1 #111	# _104,
	st.w	[txtpos], r0	# txtpos, _104
# basic.c:894: 		expression_error = 0;
	xor.w	r0, r0	# tmp254
	st.b	[expression_error], r0	# expression_error, tmp254
# basic.c:895: 		val = expression();
	call	expression		#
	st.w	[r13 + (-44)], r0	# val,
# basic.c:896: 		if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.156_105, expression_error
# basic.c:896: 		if (expression_error)
	sex.b	r1, r0	# tmp255, expression_error.156_105
	xor.w	r0, r0	# tmp256
	cmp.w	r1, r0	# tmp255, tmp256
	jnz	.L163		#
# basic.c:899: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:904: 		VAR val2 = 0;
	xor.w	r0, r0	# tmp257
	st.w	[r13 + (-24)], r0	# val2, tmp257
# basic.c:905: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.157_106, txtpos
	ld.b	r0, [r0]	# _107, *txtpos.157_106
# basic.c:905: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp258, _107
	mov.w	r0, 41	# tmp259,
	cmp.w	r1, r0	# tmp258, tmp259
	jz	.L138		#
# basic.c:907: 			if (*txtpos == ',') 
	ld.w	r0, [txtpos]	# txtpos.158_108, txtpos
	ld.b	r0, [r0]	# _109, *txtpos.158_108
# basic.c:907: 			if (*txtpos == ',') 
	zex.b	r1, r0	# tmp260, _109
	mov.w	r0, 44	# tmp261,
	cmp.w	r1, r0	# tmp260, tmp261
	jnz	.L164		#
# basic.c:909: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.159_110, txtpos
	add.w	r0, 1 #111	# _111,
	st.w	[txtpos], r0	# txtpos, _111
# basic.c:910: 				expression_error = 0;
	xor.w	r0, r0	# tmp262
	st.b	[expression_error], r0	# expression_error, tmp262
# basic.c:911: 				val2 = expression();
	call	expression		#
	st.w	[r13 + (-24)], r0	# val2,
# basic.c:912: 				if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.160_112, expression_error
# basic.c:912: 				if (expression_error)
	sex.b	r1, r0	# tmp263, expression_error.160_112
	xor.w	r0, r0	# tmp264
	cmp.w	r1, r0	# tmp263, tmp264
	jnz	.L165		#
.L138:
# basic.c:918: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.161_113, txtpos
	add.w	r0, 1 #111	# _114,
	st.w	[txtpos], r0	# txtpos, _114
# basic.c:920: 		switch (f)
	ld.b	r0, [r13 + (-25)]	# _115, f
	mov.w	r1, 60	# tmp265,
	cmp.w	r0, r1	# _115, tmp265
	jz	.L140		#
	mov.w	r1, 60	# tmp266,
	cmp.w	r0, r1	# _115, tmp266
	jgs	.L116		#
	mov.w	r1, 59	# tmp267,
	cmp.w	r0, r1	# _115, tmp267
	jz	.L141		#
	mov.w	r1, 59	# tmp268,
	cmp.w	r0, r1	# _115, tmp268
	jgs	.L116		#
	mov.w	r1, 58	# tmp269,
	cmp.w	r0, r1	# _115, tmp269
	jz	.L142		#
	mov.w	r1, 58	# tmp270,
	cmp.w	r0, r1	# _115, tmp270
	jgs	.L116		#
	mov.w	r1, 55	# tmp271,
	cmp.w	r0, r1	# _115, tmp271
	jz	.L143		#
	mov.w	r1, 55	# tmp272,
	cmp.w	r0, r1	# _115, tmp272
	jgs	.L116		#
	mov.w	r1, 54	# tmp273,
	cmp.w	r0, r1	# _115, tmp273
	jz	.L144		#
	mov.w	r1, 54	# tmp274,
	cmp.w	r0, r1	# _115, tmp274
	jgs	.L116		#
	mov.w	r1, 53	# tmp275,
	cmp.w	r0, r1	# _115, tmp275
	jz	.L145		#
	mov.w	r1, 53	# tmp276,
	cmp.w	r0, r1	# _115, tmp276
	jgs	.L116		#
	mov.w	r1, 52	# tmp277,
	cmp.w	r0, r1	# _115, tmp277
	jz	.L146		#
	mov.w	r1, 52	# tmp278,
	cmp.w	r0, r1	# _115, tmp278
	jgs	.L116		#
	mov.w	r1, 51	# tmp279,
	cmp.w	r0, r1	# _115, tmp279
	jz	.L147		#
	mov.w	r1, 51	# tmp280,
	cmp.w	r0, r1	# _115, tmp280
	jgs	.L116		#
	mov.w	r1, 50	# tmp281,
	cmp.w	r0, r1	# _115, tmp281
	jz	.L148		#
	mov.w	r1, 50	# tmp282,
	cmp.w	r0, r1	# _115, tmp282
	jgs	.L116		#
	mov.w	r1, 49	# tmp283,
	cmp.w	r0, r1	# _115, tmp283
	jz	.L149		#
	mov.w	r1, 49	# tmp284,
	cmp.w	r0, r1	# _115, tmp284
	jgs	.L116		#
	mov.w	r1, 46	# tmp285,
	cmp.w	r0, r1	# _115, tmp285
	jz	.L150		#
	mov.w	r1, 46	# tmp286,
	cmp.w	r0, r1	# _115, tmp286
	jgs	.L116		#
	mov.w	r1, 42	# tmp287,
	cmp.w	r0, r1	# _115, tmp287
	jz	.L151		#
	mov.w	r1, 43	# tmp288,
	cmp.w	r0, r1	# _115, tmp288
	jz	.L152		#
	j	.L116		#
.L151:
# basic.c:923: 				return buffer[(int)val];
	ld.w	r6, [buffer]	# buffer.162_116, buffer
# basic.c:923: 				return buffer[(int)val];
	ld.w	r0, [r13 + (-44)]	# tmp289, val
	st.w	[sp], r0	#, tmp289
	call	__fixsfsi		#
	mov.w	r1, r0	# _118, _117
# basic.c:923: 				return buffer[(int)val];
	mov.w	r0, r6	# _119, buffer.162_116
	add.w	r0, r1 #222	# _119, _118
	ld.b	r0, [r0]	# _120, *_119
	sex.b	r0, r0	# tmp290, _120
	st.w	[sp], r0	#, tmp290
	call	__floatsisf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L152:
# basic.c:925: 				if (val < 0)
	xor.w	r0, r0	# tmp291
	st.w	[sp + (4)], r0	#, tmp291
	ld.w	r0, [r13 + (-44)]	# tmp292, val
	st.w	[sp], r0	#, tmp292
	call	__ltsf2		#
	mov.w	r1, r0	# tmp293,
	xor.w	r0, r0	# tmp294
	cmp.w	r1, r0	# tmp293, tmp294
	jges	.L157		#
# basic.c:926: 					return -val;
	ld.w	r1, [r13 + (-44)]	# tmp295, val
	mov.w	r0, -2147483648	# tmp296,
	xor.w	r1, r0	# _140, tmp296
	j	.L107		#
.L157:
# basic.c:927: 				return val;
	ld.w	r1, [r13 + (-44)]	# _140, val
	j	.L107		#
.L150:
# basic.c:929: 				return(rand() % (int)val);
	call	rand		#
	mov.w	r6, r0	# _121,
# basic.c:929: 				return(rand() % (int)val);
	ld.w	r0, [r13 + (-44)]	# tmp297, val
	st.w	[sp], r0	#, tmp297
	call	__fixsfsi		#
	mov.w	r1, r0	# _122,
# basic.c:929: 				return(rand() % (int)val);
	mov.w	r0, r6	# _123, _121
	div.w	r0, r1	# _123, _122
mov.w	r0, r14	# _123
	st.w	[sp], r0	#, _123
	call	__floatsisf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L149:
# basic.c:931: 				return(sinf(val));
	mov.w	r1, sp	# tmp298,
	ld.w	r0, [r13 + (-44)]	# tmp299, val
	st.w	[r1], r0	#, tmp299
	call	sinf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L148:
# basic.c:933: 				return(cosf(val));
	mov.w	r1, sp	# tmp300,
	ld.w	r0, [r13 + (-44)]	# tmp301, val
	st.w	[r1], r0	#, tmp301
	call	cosf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L147:
# basic.c:935: 				return(tanf(val));
	mov.w	r1, sp	# tmp302,
	ld.w	r0, [r13 + (-44)]	# tmp303, val
	st.w	[r1], r0	#, tmp303
	call	tanf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L146:
# basic.c:937: 				return(expf(val));
	mov.w	r1, sp	# tmp304,
	ld.w	r0, [r13 + (-44)]	# tmp305, val
	st.w	[r1], r0	#, tmp305
	call	expf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L145:
# basic.c:939: 				return(logf(val));
	mov.w	r1, sp	# tmp306,
	ld.w	r0, [r13 + (-44)]	# tmp307, val
	st.w	[r1], r0	#, tmp307
	call	logf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L144:
# basic.c:941: 				return(sqrtf(val));
	mov.w	r1, sp	# tmp308,
	ld.w	r0, [r13 + (-44)]	# tmp309, val
	st.w	[r1], r0	#, tmp309
	call	sqrtf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L143:
# basic.c:943: 				return(powf(val, val2));
	mov.w	r0, sp	# tmp310,
	ld.w	r1, [r13 + (-24)]	# tmp311, val2
	st.w	[r0 + (4)], r1	#, tmp311
	ld.w	r1, [r13 + (-44)]	# tmp312, val
	st.w	[r0], r1	#, tmp312
	call	powf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L142:
# basic.c:945: 				return(atanf(val));
	mov.w	r1, sp	# tmp313,
	ld.w	r0, [r13 + (-44)]	# tmp314, val
	st.w	[r1], r0	#, tmp314
	call	atanf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L141:
# basic.c:947: 				return(asinf(val));
	mov.w	r1, sp	# tmp315,
	ld.w	r0, [r13 + (-44)]	# tmp316, val
	st.w	[r1], r0	#, tmp316
	call	asinf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L140:
# basic.c:949: 				return(acosf(val));
	mov.w	r1, sp	# tmp317,
	ld.w	r0, [r13 + (-44)]	# tmp318, val
	st.w	[r1], r0	#, tmp318
	call	acosf		#
	mov.w	r1, r0	# _140,
	j	.L107		#
.L116:
# basic.c:953: 	if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.163_124, txtpos
	ld.b	r0, [r0]	# _125, *txtpos.163_124
# basic.c:953: 	if (*txtpos == '(')
	zex.b	r1, r0	# tmp319, _125
	mov.w	r0, 40	# tmp320,
	cmp.w	r1, r0	# tmp319, tmp320
	jnz	.L166		#
# basic.c:956: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.164_126, txtpos
	add.w	r0, 1 #111	# _127,
	st.w	[txtpos], r0	# txtpos, _127
# basic.c:957: 		a = expression();
	call	expression		#
	st.w	[r13 + (-48)], r0	# a,
# basic.c:958: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.165_128, txtpos
	ld.b	r0, [r0]	# _129, *txtpos.165_128
# basic.c:958: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp321, _129
	mov.w	r0, 41	# tmp322,
	cmp.w	r1, r0	# tmp321, tmp322
	jnz	.L167		#
# basic.c:961: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.166_130, txtpos
	add.w	r0, 1 #111	# _131,
	st.w	[txtpos], r0	# txtpos, _131
# basic.c:962: 		return a;
	ld.w	r1, [r13 + (-48)]	# _140, a
	j	.L107		#
.L159:
# basic.c:870: 			goto expr4_error;
	nop	
	j	.L128		#
.L160:
# basic.c:876: 				goto expr4_error;
	nop	
	j	.L128		#
.L161:
# basic.c:880: 				goto expr4_error;
	nop	
	j	.L128		#
.L162:
# basic.c:891: 			goto expr4_error;
	nop	
	j	.L128		#
.L163:
# basic.c:897: 			goto expr4_error;
	nop	
	j	.L128		#
.L164:
# basic.c:915: 				goto expr4_error;
	nop	
	j	.L128		#
.L165:
# basic.c:913: 					goto expr4_error;
	nop	
	j	.L128		#
.L166:
# basic.c:965: expr4_error:
	nop	
	j	.L128		#
.L167:
# basic.c:959: 			goto expr4_error;
	nop	
.L128:
# basic.c:966: 	expression_error = 1;
	mov.b	r0, 1	# tmp323,
	st.b	[expression_error], r0	# expression_error, tmp323
# basic.c:967: 	return 0;
	xor.w	r1, r1	# _140
.L107:
# basic.c:969: }
	mov.w	r0, r1	# <retval>, _140
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expr4, .-expr4
	.global	__nesf2
	.global	__divsf3
	.p2align	1
	.global	expr3
	.type	expr3, @function
expr3:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 36 #111	#,
# basic.c:976: 	a = expr4();
	call	expr4		#
	st.w	[r13 + (-8)], r0	# a,
# basic.c:978: 	ignore_blanks(); // fix for eg:  100 a = a + 1
	call	ignore_blanks		#
.L178:
# basic.c:982: 		if (*txtpos == '*')
	ld.w	r0, [txtpos]	# txtpos.167_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.167_1
# basic.c:982: 		if (*txtpos == '*')
	zex.b	r1, r0	# tmp42, _2
	mov.w	r0, 42	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L169		#
# basic.c:984: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.168_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:985: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:986: 			a *= b;
	ld.w	r0, [r13 + (-12)]	# tmp44, b
	st.w	[sp + (4)], r0	#, tmp44
	ld.w	r0, [r13 + (-8)]	# tmp45, a
	st.w	[sp], r0	#, tmp45
	call	__mulsf3		#
	mov.w	r1, r0	# tmp46,
	mov.w	r0, r1	# tmp47, tmp46
	st.w	[r13 + (-8)], r0	# a, tmp47
	j	.L178		#
.L169:
# basic.c:988: 		else if (*txtpos == '/')
	ld.w	r0, [txtpos]	# txtpos.169_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.169_5
# basic.c:988: 		else if (*txtpos == '/')
	zex.b	r1, r0	# tmp48, _6
	mov.w	r0, 47	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L171		#
# basic.c:990: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.170_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:991: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:992: 			if (b != 0)
	xor.w	r0, r0	# tmp50
	st.w	[sp + (4)], r0	#, tmp50
	ld.w	r0, [r13 + (-12)]	# tmp51, b
	st.w	[sp], r0	#, tmp51
	call	__nesf2		#
	mov.w	r1, r0	# tmp52,
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L181		#
# basic.c:993: 				a /= b;
	ld.w	r0, [r13 + (-12)]	# tmp54, b
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (-8)]	# tmp55, a
	st.w	[sp], r0	#, tmp55
	call	__divsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-8)], r0	# a, tmp57
	j	.L178		#
.L181:
# basic.c:995: 				expression_error = 1;
	mov.b	r0, 1	# tmp58,
	st.b	[expression_error], r0	# expression_error, tmp58
	j	.L178		#
.L171:
# basic.c:997: 		else if (*txtpos == '%')
	ld.w	r0, [txtpos]	# txtpos.171_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.171_9
# basic.c:997: 		else if (*txtpos == '%')
	zex.b	r1, r0	# tmp59, _10
	mov.w	r0, 37	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jnz	.L174		#
# basic.c:999: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.172_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:1000: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:1001: 			if (b != 0)
	xor.w	r0, r0	# tmp61
	st.w	[sp + (4)], r0	#, tmp61
	ld.w	r0, [r13 + (-12)]	# tmp62, b
	st.w	[sp], r0	#, tmp62
	call	__nesf2		#
	mov.w	r1, r0	# tmp63,
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L182		#
# basic.c:1003: 				int x = (int)a % (int)b;
	ld.w	r0, [r13 + (-8)]	# tmp65, a
	st.w	[sp], r0	#, tmp65
	call	__fixsfsi		#
	mov.w	r6, r0	# _13,
# basic.c:1003: 				int x = (int)a % (int)b;
	ld.w	r0, [r13 + (-12)]	# tmp66, b
	st.w	[sp], r0	#, tmp66
	call	__fixsfsi		#
	mov.w	r1, r0	# _14,
# basic.c:1003: 				int x = (int)a % (int)b;
	mov.w	r0, r6	# tmp67, _13
	div.w	r0, r1	# tmp67, _14
mov.w	r0, r14	# tmp67
	st.w	[r13 + (-16)], r0	# x, tmp67
# basic.c:1004: 				a = x;
	ld.w	r0, [r13 + (-16)]	# tmp68, x
	st.w	[sp], r0	#, tmp68
	call	__floatsisf		#
	mov.w	r1, r0	# tmp69,
	mov.w	r0, r1	# tmp70, tmp69
	st.w	[r13 + (-8)], r0	# a, tmp70
	j	.L178		#
.L182:
# basic.c:1006: 				expression_error = 1;
	mov.b	r0, 1	# tmp71,
	st.b	[expression_error], r0	# expression_error, tmp71
	j	.L178		#
.L174:
# basic.c:1009: 			return a;
	ld.w	r0, [r13 + (-8)]	# _23, a
	mov.w	r1, r0	# <retval>, _23
# basic.c:1011: }
	mov.w	r0, r1	#, <retval>
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expr3, .-expr3
	.p2align	1
	.global	expr2
	.type	expr2, @function
expr2:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:1018: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.173_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.173_1
# basic.c:1018: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp40, _2
	mov.w	r0, 45	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L185		#
# basic.c:1018: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.174_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.174_3
# basic.c:1018: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp42, _4
	mov.w	r0, 43	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L186		#
.L185:
# basic.c:1019: 		a = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# a, tmp44
	j	.L192		#
.L186:
# basic.c:1021: 		a = expr3();
	call	expr3		#
	st.w	[r13 + (-4)], r0	# a,
.L192:
# basic.c:1025: 		if (*txtpos == '-')
	ld.w	r0, [txtpos]	# txtpos.175_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.175_5
# basic.c:1025: 		if (*txtpos == '-')
	zex.b	r1, r0	# tmp45, _6
	mov.w	r0, 45	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L188		#
# basic.c:1027: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.176_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:1028: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1029: 			a -= b;
	ld.w	r0, [r13 + (-8)]	# tmp47, b
	st.w	[sp + (4)], r0	#, tmp47
	ld.w	r0, [r13 + (-4)]	# tmp48, a
	st.w	[sp], r0	#, tmp48
	call	__subsf3		#
	mov.w	r1, r0	# tmp49,
	mov.w	r0, r1	# tmp50, tmp49
	st.w	[r13 + (-4)], r0	# a, tmp50
	j	.L192		#
.L188:
# basic.c:1031: 		else if (*txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.177_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.177_9
# basic.c:1031: 		else if (*txtpos == '+')
	zex.b	r1, r0	# tmp51, _10
	mov.w	r0, 43	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L190		#
# basic.c:1033: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.178_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:1034: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1035: 			a += b;
	ld.w	r0, [r13 + (-8)]	# tmp53, b
	st.w	[sp + (4)], r0	#, tmp53
	ld.w	r0, [r13 + (-4)]	# tmp54, a
	st.w	[sp], r0	#, tmp54
	call	__addsf3		#
	mov.w	r1, r0	# tmp55,
	mov.w	r0, r1	# tmp56, tmp55
	st.w	[r13 + (-4)], r0	# a, tmp56
	j	.L192		#
.L190:
# basic.c:1038: 			return a;
	ld.w	r0, [r13 + (-4)]	# _21, a
	mov.w	r1, r0	# <retval>, _21
# basic.c:1040: }
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expr2, .-expr2
	.global	__gtsf2
	.global	__eqsf2
	.global	__lesf2
	.p2align	1
	.global	expression
	.type	expression, @function
expression:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:1047: 	a = expr2();
	call	expr2		#
	st.w	[r13 + (-4)], r0	# a,
# basic.c:1054: 	if (expression_error)	return a;
	ld.b	r0, [expression_error]	# expression_error.179_1, expression_error
# basic.c:1054: 	if (expression_error)	return a;
	sex.b	r1, r0	# tmp34, expression_error.179_1
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L195		#
# basic.c:1054: 	if (expression_error)	return a;
	ld.w	r0, [r13 + (-4)]	# _7, a
	j	.L196		#
.L195:
# basic.c:1056: 	scantable(keywords + RELOP_OFFSET, RELOP_ENUM_OFFSET, TO_ENUM_OFFSET - 1);
	mov.w	r1, keywords+283	# _2,
	mov.w	r0, sp	# tmp36,
	mov.w	r2, 71	# tmp37,
	st.w	[r0 + (8)], r2	#, tmp37
	mov.w	r2, 62	# tmp38,
	st.w	[r0 + (4)], r2	#, tmp38
	st.w	[r0], r1	#, _2
	call	scantable		#
# basic.c:1062: 	if (table_index >= RELOP_UNKNOWN || table_index < RELOP_GE)
	ld.b	r0, [table_index]	# table_index.180_3, table_index
# basic.c:1062: 	if (table_index >= RELOP_UNKNOWN || table_index < RELOP_GE)
	sex.b	r1, r0	# tmp39, table_index.180_3
	mov.w	r0, 70	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jgs	.L197		#
# basic.c:1062: 	if (table_index >= RELOP_UNKNOWN || table_index < RELOP_GE)
	ld.b	r0, [table_index]	# table_index.181_4, table_index
# basic.c:1062: 	if (table_index >= RELOP_UNKNOWN || table_index < RELOP_GE)
	sex.b	r1, r0	# tmp41, table_index.181_4
	mov.w	r0, 61	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jgs	.L198		#
.L197:
# basic.c:1063: 		return a;
	ld.w	r0, [r13 + (-4)]	# _7, a
	j	.L196		#
.L198:
# basic.c:1065: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.182_5, table_index
	sex.b	r0, r0	# _6, table_index.182_5
	mov.w	r1, 70	# tmp43,
	cmp.w	r0, r1	# _6, tmp43
	jz	.L199		#
	mov.w	r1, 70	# tmp44,
	cmp.w	r0, r1	# _6, tmp44
	jgs	.L200		#
	mov.w	r1, 69	# tmp45,
	cmp.w	r0, r1	# _6, tmp45
	jz	.L201		#
	mov.w	r1, 69	# tmp46,
	cmp.w	r0, r1	# _6, tmp46
	jgs	.L200		#
	mov.w	r1, 68	# tmp47,
	cmp.w	r0, r1	# _6, tmp47
	jz	.L202		#
	mov.w	r1, 68	# tmp48,
	cmp.w	r0, r1	# _6, tmp48
	jgs	.L200		#
	mov.w	r1, 67	# tmp49,
	cmp.w	r0, r1	# _6, tmp49
	jz	.L203		#
	mov.w	r1, 67	# tmp50,
	cmp.w	r0, r1	# _6, tmp50
	jgs	.L200		#
	mov.w	r1, 66	# tmp51,
	cmp.w	r0, r1	# _6, tmp51
	jz	.L204		#
	mov.w	r1, 66	# tmp52,
	cmp.w	r0, r1	# _6, tmp52
	jgs	.L200		#
	mov.w	r1, 65	# tmp53,
	cmp.w	r0, r1	# _6, tmp53
	jz	.L205		#
	mov.w	r1, 65	# tmp54,
	cmp.w	r0, r1	# _6, tmp54
	jgs	.L200		#
	mov.w	r1, 64	# tmp55,
	cmp.w	r0, r1	# _6, tmp55
	jz	.L206		#
	mov.w	r1, 64	# tmp56,
	cmp.w	r0, r1	# _6, tmp56
	jgs	.L200		#
	mov.w	r1, 62	# tmp57,
	cmp.w	r0, r1	# _6, tmp57
	jz	.L207		#
	mov.w	r1, 63	# tmp58,
	cmp.w	r0, r1	# _6, tmp58
	jz	.L202		#
	j	.L200		#
.L207:
# basic.c:1068: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1069: 		if (a >= b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp59, b
	st.w	[sp + (4)], r0	#, tmp59
	ld.w	r0, [r13 + (-4)]	# tmp60, a
	st.w	[sp], r0	#, tmp60
	call	__gesf2		#
	mov.w	r1, r0	# tmp61,
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jges	.L226		#
# basic.c:1070: 		break;
	j	.L200		#
.L226:
# basic.c:1069: 		if (a >= b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L202:
# basic.c:1073: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1074: 		if (a != b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp63, b
	st.w	[sp + (4)], r0	#, tmp63
	ld.w	r0, [r13 + (-4)]	# tmp64, a
	st.w	[sp], r0	#, tmp64
	call	__nesf2		#
	mov.w	r1, r0	# tmp65,
	xor.w	r0, r0	# tmp66
	cmp.w	r1, r0	# tmp65, tmp66
	jnz	.L227		#
# basic.c:1075: 		break;
	j	.L200		#
.L227:
# basic.c:1074: 		if (a != b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L206:
# basic.c:1077: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1078: 		if (a > b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp67, b
	st.w	[sp + (4)], r0	#, tmp67
	ld.w	r0, [r13 + (-4)]	# tmp68, a
	st.w	[sp], r0	#, tmp68
	call	__gtsf2		#
	mov.w	r1, r0	# tmp69,
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jgs	.L228		#
# basic.c:1079: 		break;
	j	.L200		#
.L228:
# basic.c:1078: 		if (a > b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L205:
# basic.c:1081: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1082: 		if (a == b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp71, b
	st.w	[sp + (4)], r0	#, tmp71
	ld.w	r0, [r13 + (-4)]	# tmp72, a
	st.w	[sp], r0	#, tmp72
	call	__eqsf2		#
	mov.w	r1, r0	# tmp73,
	xor.w	r0, r0	# tmp74
	cmp.w	r1, r0	# tmp73, tmp74
	jz	.L229		#
# basic.c:1083: 		break;
	j	.L200		#
.L229:
# basic.c:1082: 		if (a == b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L204:
# basic.c:1085: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1086: 		if (a <= b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp75, b
	st.w	[sp + (4)], r0	#, tmp75
	ld.w	r0, [r13 + (-4)]	# tmp76, a
	st.w	[sp], r0	#, tmp76
	call	__lesf2		#
	mov.w	r1, r0	# tmp77,
	xor.w	r0, r0	# tmp78
	cmp.w	r1, r0	# tmp77, tmp78
	jses	.L230		#
# basic.c:1087: 		break;
	j	.L200		#
.L230:
# basic.c:1086: 		if (a <= b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L203:
# basic.c:1089: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1090: 		if (a < b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp79, b
	st.w	[sp + (4)], r0	#, tmp79
	ld.w	r0, [r13 + (-4)]	# tmp80, a
	st.w	[sp], r0	#, tmp80
	call	__ltsf2		#
	mov.w	r1, r0	# tmp81,
	xor.w	r0, r0	# tmp82
	cmp.w	r1, r0	# tmp81, tmp82
	jss	.L231		#
# basic.c:1091: 		break;
	j	.L200		#
.L231:
# basic.c:1090: 		if (a < b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L201:
# basic.c:1093: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1094: 		if (a && b) return 1;
	xor.w	r0, r0	# tmp83
	st.w	[sp + (4)], r0	#, tmp83
	ld.w	r0, [r13 + (-4)]	# tmp84, a
	st.w	[sp], r0	#, tmp84
	call	__nesf2		#
	mov.w	r1, r0	# tmp85,
	xor.w	r0, r0	# tmp86
	cmp.w	r1, r0	# tmp85, tmp86
	jnz	.L232		#
# basic.c:1095: 		break;
	j	.L200		#
.L232:
# basic.c:1094: 		if (a && b) return 1;
	xor.w	r0, r0	# tmp87
	st.w	[sp + (4)], r0	#, tmp87
	ld.w	r0, [r13 + (-8)]	# tmp88, b
	st.w	[sp], r0	#, tmp88
	call	__nesf2		#
	mov.w	r1, r0	# tmp89,
	xor.w	r0, r0	# tmp90
	cmp.w	r1, r0	# tmp89, tmp90
	jnz	.L233		#
# basic.c:1095: 		break;
	j	.L200		#
.L233:
# basic.c:1094: 		if (a && b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L199:
# basic.c:1097: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:1098: 		if (a || b) return 1;
	xor.w	r0, r0	# tmp91
	st.w	[sp + (4)], r0	#, tmp91
	ld.w	r0, [r13 + (-4)]	# tmp92, a
	st.w	[sp], r0	#, tmp92
	call	__nesf2		#
	mov.w	r1, r0	# tmp93,
	xor.w	r0, r0	# tmp94
	cmp.w	r1, r0	# tmp93, tmp94
	jnz	.L223		#
# basic.c:1098: 		if (a || b) return 1;
	xor.w	r0, r0	# tmp95
	st.w	[sp + (4)], r0	#, tmp95
	ld.w	r0, [r13 + (-8)]	# tmp96, b
	st.w	[sp], r0	#, tmp96
	call	__nesf2		#
	mov.w	r1, r0	# tmp97,
	xor.w	r0, r0	# tmp98
	cmp.w	r1, r0	# tmp97, tmp98
	jnz	.L223		#
# basic.c:1099: 		break;
	j	.L200		#
.L223:
# basic.c:1098: 		if (a || b) return 1;
	mov.w	r0, 1065353216	# _7,
	j	.L196		#
.L200:
# basic.c:1101: 	return 0;
	xor.w	r0, r0	# _7
.L196:
# basic.c:1102: }
	mov.w	r1, r0	# <retval>, _7
	mov.w	r0, r1	#, <retval>
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	expression, .-expression
	.p2align	1
	.global	assignment
	.type	assignment, @function
assignment:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# basic.c:1109: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.183_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.183_1
# basic.c:1109: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp69, _2
	mov.w	r0, 64	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jse	.L235		#
# basic.c:1109: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.184_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.184_3
# basic.c:1109: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp71, _4
	mov.w	r0, 90	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jse	.L236		#
.L235:
# basic.c:1111: 		qhow();
	call	qhow		#
# basic.c:1112: 		return;
	j	.L234		#
.L236:
# basic.c:1117: 	int varName = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.185_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.185_5
# basic.c:1117: 	int varName = *txtpos;
	zex.b	r0, r0	# tmp73, _6
	st.w	[r13 + (-4)], r0	# varName, tmp73
# basic.c:1124: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.186_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:1126: 	ignore_blanks(); // TODO: do we really want to have: m  (3), or we insist on: m(3)
	call	ignore_blanks		#
# basic.c:1127: 	if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.187_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.187_9
# basic.c:1127: 	if (*txtpos == '(')
	zex.b	r1, r0	# tmp74, _10
	mov.w	r0, 40	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jnz	.L238		#
# basic.c:1130: 		txtpos++;	//3) = 5
	ld.w	r0, [txtpos]	# txtpos.188_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:1131: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:1132: 		expression_error = 0;
	xor.w	r0, r0	# tmp76
	st.b	[expression_error], r0	# expression_error, tmp76
# basic.c:1133: 		VAR index = expression();
	call	expression		#
	st.w	[r13 + (-16)], r0	# index,
# basic.c:1134: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:1135: 		if (!expression_error && *txtpos == ')')
	ld.b	r0, [expression_error]	# expression_error.189_13, expression_error
# basic.c:1135: 		if (!expression_error && *txtpos == ')')
	sex.b	r1, r0	# tmp77, expression_error.189_13
	xor.w	r0, r0	# tmp78
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L239		#
# basic.c:1135: 		if (!expression_error && *txtpos == ')')
	ld.w	r0, [txtpos]	# txtpos.190_14, txtpos
	ld.b	r0, [r0]	# _15, *txtpos.190_14
# basic.c:1135: 		if (!expression_error && *txtpos == ')')
	zex.b	r1, r0	# tmp79, _15
	mov.w	r0, 41	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jnz	.L239		#
# basic.c:1137: 			txtpos++;		// = 5
	ld.w	r0, [txtpos]	# txtpos.191_16, txtpos
	add.w	r0, 1 #111	# _17,
	st.w	[txtpos], r0	# txtpos, _17
# basic.c:1138: 			ignore_blanks();	//= 5
	call	ignore_blanks		#
# basic.c:1139: 			if (*txtpos == '=')
	ld.w	r0, [txtpos]	# txtpos.192_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.192_18
# basic.c:1139: 			if (*txtpos == '=')
	zex.b	r1, r0	# tmp81, _19
	mov.w	r0, 61	# tmp82,
	cmp.w	r1, r0	# tmp81, tmp82
	jnz	.L240		#
# basic.c:1141: 				txtpos++;	// 5
	ld.w	r0, [txtpos]	# txtpos.193_20, txtpos
	add.w	r0, 1 #111	# _21,
	st.w	[txtpos], r0	# txtpos, _21
# basic.c:1142: 				ignore_blanks();	//5
	call	ignore_blanks		#
# basic.c:1143: 				expression_error = 0;
	xor.w	r0, r0	# tmp83
	st.b	[expression_error], r0	# expression_error, tmp83
# basic.c:1144: 				value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1145: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:1146: 				VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [arrays_begin]	# arrays_begin.194_22, arrays_begin
	ld.w	r1, [r13 + (-4)]	# varName.195_23, varName
	mov.w	r2, 1073741759	# tmp84,
	add.w	r1, r2 #222	# _24, tmp84
	mov.w	r2, 2	# tmp85,
	shl.w	r1, r2	# _25, tmp85
	add.w	r0, r1 #222	# _26, _25
# basic.c:1146: 				VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [r0]	# tmp86, *_26
	st.w	[r13 + (-20)], r0	# array, tmp86
# basic.c:1147: 				if (array != NULL)
	ld.w	r1, [r13 + (-20)]	# tmp87, array
	xor.w	r0, r0	# tmp88
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L241		#
# basic.c:1149: 					array[(int)index] = value;
	ld.w	r0, [r13 + (-16)]	# tmp89, index
	st.w	[sp], r0	#, tmp89
	call	__fixsfsi		#
	mov.w	r1, r0	# _28, _27
# basic.c:1149: 					array[(int)index] = value;
	mov.w	r0, 2	# tmp90,
	shl.w	r1, r0	# _29, tmp90
	ld.w	r0, [r13 + (-20)]	# tmp91, array
	add.w	r0, r1 #222	# _30, _29
# basic.c:1149: 					array[(int)index] = value;
	ld.w	r1, [r13 + (-8)]	# tmp92, value
	st.w	[r0], r1	# *_30, tmp92
# basic.c:1150: 					return;
	j	.L234		#
.L241:
# basic.c:1154: 					qsorry();
	call	qsorry		#
# basic.c:1155: 					return;
	j	.L234		#
.L240:
# basic.c:1160: 				qwhat();
	call	qwhat		#
# basic.c:1139: 			if (*txtpos == '=')
	nop	
# basic.c:1165: 		return;
	j	.L234		#
.L239:
# basic.c:1163: 			qwhat();
	call	qwhat		#
# basic.c:1165: 		return;
	j	.L234		#
.L238:
# basic.c:1167: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.196_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.196_31
# basic.c:1167: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp93, _32
	mov.w	r0, 61	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L243		#
# basic.c:1169: 		qwhat();
	call	qwhat		#
# basic.c:1170: 		return;
	j	.L234		#
.L243:
# basic.c:1172: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.197_33, txtpos
	add.w	r0, 1 #111	# _34,
	st.w	[txtpos], r0	# txtpos, _34
# basic.c:1173: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1174: 	expression_error = 0;
	xor.w	r0, r0	# tmp95
	st.b	[expression_error], r0	# expression_error, tmp95
# basic.c:1175: 	value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1176: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1183: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.198_35, expression_error
# basic.c:1183: 	if (expression_error)
	sex.b	r1, r0	# tmp96, expression_error.198_35
	xor.w	r0, r0	# tmp97
	cmp.w	r1, r0	# tmp96, tmp97
	jz	.L244		#
# basic.c:1185: 		qwhat();
	call	qwhat		#
# basic.c:1186: 		return;
	j	.L234		#
.L244:
# basic.c:1189: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.199_36, txtpos
	ld.b	r0, [r0]	# _37, *txtpos.199_36
# basic.c:1189: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp98, _37
	mov.w	r0, 10	# tmp99,
	cmp.w	r1, r0	# tmp98, tmp99
	jz	.L245		#
# basic.c:1189: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.200_38, txtpos
	ld.b	r0, [r0]	# _39, *txtpos.200_38
# basic.c:1189: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp100, _39
	mov.w	r0, 58	# tmp101,
	cmp.w	r1, r0	# tmp100, tmp101
	jz	.L245		#
# basic.c:1191: 		qwhat();
	call	qwhat		#
# basic.c:1192: 		return;
	j	.L234		#
.L245:
# basic.c:1194: 	var = (VAR *)variables_begin + varName - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.201_40, variables_begin
# basic.c:1194: 	var = (VAR *)variables_begin + varName - 'A';
	ld.w	r1, [r13 + (-4)]	# varName.202_41, varName
	mov.w	r2, 1073741759	# tmp102,
	add.w	r1, r2 #222	# _42, tmp102
	mov.w	r2, 2	# tmp103,
	shl.w	r1, r2	# _43, tmp103
# basic.c:1194: 	var = (VAR *)variables_begin + varName - 'A';
	add.w	r0, r1 #222	# tmp104, _43
	st.w	[r13 + (-12)], r0	# var, tmp104
# basic.c:1195: 	*var = value;
	ld.w	r0, [r13 + (-12)]	# tmp105, var
	ld.w	r1, [r13 + (-8)]	# tmp106, value
	st.w	[r0], r1	# *var_57, tmp106
.L234:
# basic.c:1201: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	assignment, .-assignment
	.global	__extendsfdf2
	.section	.rodata
	.p2align	2
.LC8:
	.string	"%f"
	.text
	.p2align	1
	.global	exec_print
	.type	exec_print, @function
exec_print:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:1205: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.203_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.203_1
# basic.c:1205: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp61, _2
	mov.w	r0, 10	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L261		#
.L247:
# basic.c:1212: 		ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.204_3, txtpos
	mov.w	r1, sp	# tmp63,
	st.w	[r1], r0	#, txtpos.204_3
	call	ignore_blanks		#
# basic.c:1213: 		if (print_quoted_string())
	call	print_quoted_string		#
# basic.c:1213: 		if (print_quoted_string())
	sex.b	r1, r0	# tmp64, _4
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L249		#
# basic.c:1215: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.205_5, txtpos
	mov.w	r1, sp	# tmp66,
	st.w	[r1], r0	#, txtpos.205_5
	call	ignore_blanks		#
	j	.L250		#
.L249:
# basic.c:1217: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.206_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.206_6
# basic.c:1217: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp67, _7
	mov.w	r0, 34	# tmp68,
	cmp.w	r1, r0	# tmp67, tmp68
	jz	.L251		#
# basic.c:1217: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.207_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.207_8
# basic.c:1217: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp69, _9
	mov.w	r0, 39	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L252		#
.L251:
# basic.c:1219: 			qwhat();
	call	qwhat		#
# basic.c:1220: 			return;
	j	.L246		#
.L252:
# basic.c:1225: 			expression_error = 0;
	xor.w	r0, r0	# tmp71
	st.b	[expression_error], r0	# expression_error, tmp71
# basic.c:1226: 			e = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# e,
# basic.c:1227: 			if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.208_10, expression_error
# basic.c:1227: 			if (expression_error)
	sex.b	r1, r0	# tmp72, expression_error.208_10
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L253		#
# basic.c:1229: 				qwhat();
	call	qwhat		#
# basic.c:1230: 				return;
	j	.L246		#
.L253:
# basic.c:1232: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
	mov.w	r0, 1176256512	# tmp74,
	st.w	[sp + (4)], r0	#, tmp74
	ld.w	r0, [r13 + (-4)]	# tmp75, e
	st.w	[sp], r0	#, tmp75
	call	__mulsf3		#
	mov.w	r1, r0	# tmp76,
	mov.w	r0, r1	# _11, tmp76
	mov.w	r1, sp	# tmp77,
	st.w	[r1], r0	#, tmp78
	call	roundf		#
	mov.w	r2, r0	# _12,
# basic.c:1232: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
	mov.w	r1, 1176256512	# tmp79,
	mov.w	r0, r2	# tmp80, _12
	st.w	[sp + (4)], r1	#, tmp79
	st.w	[sp], r0	#, tmp80
	call	__divsf3		#
	mov.w	r1, r0	# tmp81,
	mov.w	r0, r1	# _13, tmp81
# basic.c:1232: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
	st.w	[sp], r0	#, tmp82
	call	__extendsfdf2		#
	mov.w	r2, r0	# _14,
	mov.w	r3, r1	# _14, tmp2
	mov.w	r0, sp	# tmp83,
	mov.w	r1, r2	# tmp84, _14
	st.w	[r0 + (4)], r1	#, tmp84
	mov.w	r1, r3	# tmp85, _14
	st.w	[r0 + (8)], r1	#, tmp85
	mov.w	r1, .LC8	# tmp86,
	st.w	[r0], r1	#, tmp86
	call	printf		#
.L250:
# basic.c:1236: 		if (*txtpos == ',')
	ld.w	r0, [txtpos]	# txtpos.209_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.209_15
# basic.c:1236: 		if (*txtpos == ',')
	zex.b	r1, r0	# tmp87, _16
	mov.w	r0, 44	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L254		#
# basic.c:1237: 			txtpos++;	// Skip the comma and move onto the next
	ld.w	r0, [txtpos]	# txtpos.210_17, txtpos
	add.w	r0, 1 #111	# _18,
	st.w	[txtpos], r0	# txtpos, _18
	j	.L247		#
.L254:
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.211_19, txtpos
	ld.b	r0, [r0]	# _20, *txtpos.211_19
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp89, _20
	mov.w	r0, 59	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jnz	.L256		#
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.212_21, txtpos
	add.w	r0, 1 #111	# _22,
	ld.b	r0, [r0]	# _23, *_22
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp91, _23
	mov.w	r0, 10	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L257		#
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.213_24, txtpos
	add.w	r0, 1 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp93, _26
	mov.w	r0, 58	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L257		#
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.214_27, txtpos
	add.w	r0, 1 #111	# _28,
	ld.b	r0, [r0]	# _29, *_28
# basic.c:1238: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp95, _29
	mov.w	r0, 32	# tmp96,
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L256		#
.L257:
# basic.c:1240: 			txtpos++; // This has to be the end of the print - no newline
	ld.w	r0, [txtpos]	# txtpos.215_30, txtpos
	add.w	r0, 1 #111	# _31,
	st.w	[txtpos], r0	# txtpos, _31
# basic.c:1241: 			break;
	j	.L246		#
.L256:
# basic.c:1243: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.216_32, txtpos
	ld.b	r0, [r0]	# _33, *txtpos.216_32
# basic.c:1243: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp97, _33
	mov.w	r0, 10	# tmp98,
	cmp.w	r1, r0	# tmp97, tmp98
	jz	.L258		#
# basic.c:1243: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.217_34, txtpos
	ld.b	r0, [r0]	# _35, *txtpos.217_34
# basic.c:1243: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp99, _35
	mov.w	r0, 58	# tmp100,
	cmp.w	r1, r0	# tmp99, tmp100
	jnz	.L259		#
.L258:
# basic.c:1245: 			printf("\n");	// The end of the print statement
	mov.w	r1, sp	# tmp101,
	mov.w	r0, 10	# tmp102,
	st.w	[r1], r0	#, tmp102
	call	putchar		#
# basic.c:1246: 			break;
	j	.L246		#
.L259:
# basic.c:1250: 			qwhat();
	call	qwhat		#
# basic.c:1251: 			return;
	j	.L246		#
.L261:
# basic.c:1207: 		return;
	nop	
.L246:
# basic.c:1254: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_print, .-exec_print
	.p2align	1
	.global	exec_list
	.type	exec_list, @function
exec_list:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:1260: 	linenum = testnum(); // Retuns 0 if no line found.
	call	testnum		#
	mov.w	r1, r0	# _1,
# basic.c:1260: 	linenum = testnum(); // Retuns 0 if no line found.
	mov.w	r0, r1	# tmp33, _1
	st.w	[sp], r0	#, tmp33
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1263: 	if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.218_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.218_3
# basic.c:1263: 	if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp34, _4
	mov.w	r0, 10	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L263		#
# basic.c:1265: 		qwhat();
	call	qwhat		#
# basic.c:1266: 		return;
	j	.L262		#
.L263:
# basic.c:1270: 	list_line = findline();
	call	findline		#
# basic.c:1270: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _5
# basic.c:1271: 	i = 0;
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# i, tmp36
# basic.c:1272: 	while (list_line < program_end)
	j	.L265		#
.L266:
# basic.c:1274: 		printline();
	call	printline		#
# basic.c:1275: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp38, i
	add.w	r0, 1 #111	# tmp37,
	st.w	[r13 + (-4)], r0	# i, tmp37
# basic.c:1276: 		if (i == 29)
	ld.w	r1, [r13 + (-4)]	# tmp39, i
	mov.w	r0, 29	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L265		#
# basic.c:1278: 			j = getc();
	call	getc		#
	st.w	[r13 + (-8)], r0	# j,
# basic.c:1279: 			i = 0;
	xor.w	r0, r0	# tmp41
	st.w	[r13 + (-4)], r0	# i, tmp41
# basic.c:1280: 			if (j == VK_ESC)
	ld.w	r1, [r13 + (-8)]	# tmp42, j
	mov.w	r0, 27	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L267		#
.L265:
# basic.c:1272: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.219_6, list_line
	ld.w	r0, [program_end]	# program_end.220_7, program_end
# basic.c:1272: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.219_6, program_end.220_7
	js	.L266		#
	j	.L262		#
.L267:
# basic.c:1281: 				break;
	nop	
.L262:
# basic.c:1284: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_list, .-exec_list
	.p2align	1
	.global	exec_run
	.type	exec_run, @function
exec_run:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:1290: 	while (current_line < program_end) // Out of lines to run
	j	.L269		#
.L274:
# basic.c:1292: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.221_1, current_line
	add.w	r0, 5 #111	# _2,
# basic.c:1292: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _2
.L273:
# basic.c:1295: 			res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:1296: 			if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp42, res
	mov.w	r0, 1	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L275		#
# basic.c:1298: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1299: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.222_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.222_3
# basic.c:1299: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp44, _4
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L272		#
# basic.c:1299: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.223_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.223_5
# basic.c:1299: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp46, _6
	mov.w	r0, 58	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L272		#
# basic.c:1301: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.224_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:1302: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1295: 			res = direct();
	j	.L273		#
.L272:
# basic.c:1305: 		if (res < 2)
	ld.w	r1, [r13 + (-4)]	# tmp48, res
	mov.w	r0, 1	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jgs	.L269		#
# basic.c:1306: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r0, [current_line]	# current_line.225_9, current_line
# basic.c:1306: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r1, [current_line]	# current_line.226_10, current_line
	add.w	r1, 4 #111	# _11,
	ld.b	r1, [r1]	# _12, *_11
	zex.b	r1, r1	# _13, _12
# basic.c:1306: 			current_line += current_line[sizeof(LINENUM)];
	add.w	r0, r1 #222	# _14, _13
	st.w	[current_line], r0	# current_line, _14
.L269:
# basic.c:1290: 	while (current_line < program_end) // Out of lines to run
	ld.w	r1, [current_line]	# current_line.227_15, current_line
	ld.w	r0, [program_end]	# program_end.228_16, program_end
# basic.c:1290: 	while (current_line < program_end) // Out of lines to run
	cmp.w	r1, r0	# current_line.227_15, program_end.228_16
	js	.L274		#
	j	.L268		#
.L275:
# basic.c:1297: 				return;
	nop	
.L268:
# basic.c:1312: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_run, .-exec_run
	.p2align	1
	.global	exec_if
	.type	exec_if, @function
exec_if:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:1319: 	expression_error = 0;
	xor.w	r0, r0	# tmp37
	st.b	[expression_error], r0	# expression_error, tmp37
# basic.c:1320: 	condition = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# condition,
# basic.c:1321: 	if (expression_error || *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.229_1, expression_error
# basic.c:1321: 	if (expression_error || *txtpos == NL)
	sex.b	r1, r0	# tmp38, expression_error.229_1
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L277		#
# basic.c:1321: 	if (expression_error || *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.230_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.230_2
# basic.c:1321: 	if (expression_error || *txtpos == NL)
	zex.b	r1, r0	# tmp40, _3
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L278		#
.L277:
# basic.c:1323: 		qhow();
	call	qhow		#
# basic.c:1324: 		return;
	j	.L276		#
.L278:
# basic.c:1326: 	if (condition != 0)
	xor.w	r0, r0	# tmp42
	st.w	[sp + (4)], r0	#, tmp42
	ld.w	r0, [r13 + (-4)]	# tmp43, condition
	st.w	[sp], r0	#, tmp43
	call	__nesf2		#
	mov.w	r1, r0	# tmp44,
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L285		#
# basic.c:1344: 	return;
	j	.L287		#
.L285:
# basic.c:1329: 			res = direct();
	call	direct		#
	st.w	[r13 + (-8)], r0	# res,
# basic.c:1330: 			if (res == 1)
	ld.w	r1, [r13 + (-8)]	# tmp46, res
	mov.w	r0, 1	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jz	.L286		#
# basic.c:1332: 			if (res == 2)
	ld.w	r1, [r13 + (-8)]	# tmp48, res
	mov.w	r0, 2	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L283		#
# basic.c:1334: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.231_4, current_line
	add.w	r0, 5 #111	# _5,
# basic.c:1334: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1335: 				continue;
	j	.L284		#
.L283:
# basic.c:1337: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1338: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.232_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.232_6
# basic.c:1338: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp50, _7
	mov.w	r0, 10	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L287		#
# basic.c:1338: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.233_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.233_8
# basic.c:1338: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp52, _9
	mov.w	r0, 58	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L287		#
# basic.c:1340: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.234_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1341: 			ignore_blanks();
	call	ignore_blanks		#
.L284:
# basic.c:1329: 			res = direct();
	j	.L285		#
.L286:
# basic.c:1331: 				return;
	nop	
	j	.L276		#
.L287:
# basic.c:1344: 	return;
	nop	
.L276:
# basic.c:1345: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_if, .-exec_if
	.p2align	1
	.global	exec_for
	.type	exec_for, @function
exec_for:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# basic.c:1352: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1353: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.235_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.235_1
# basic.c:1353: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp66, _2
	mov.w	r0, 64	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jse	.L289		#
# basic.c:1353: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.236_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.236_3
# basic.c:1353: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp68, _4
	mov.w	r0, 90	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jse	.L290		#
.L289:
# basic.c:1355: 		qwhat();
	call	qwhat		#
# basic.c:1356: 		return;
	j	.L288		#
.L290:
# basic.c:1358: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.237_5, txtpos
# basic.c:1358: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp70, *txtpos.237_5
	st.b	[r13 + (-5)], r0	# var, tmp70
# basic.c:1359: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.238_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1360: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1361: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.239_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.239_8
# basic.c:1361: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp71, _9
	mov.w	r0, 61	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jz	.L292		#
# basic.c:1363: 		qwhat();
	call	qwhat		#
# basic.c:1364: 		return;
	j	.L288		#
.L292:
# basic.c:1366: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.240_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1367: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1369: 	expression_error = 0;
	xor.w	r0, r0	# tmp73
	st.b	[expression_error], r0	# expression_error, tmp73
# basic.c:1370: 	initial = expression();
	call	expression		#
	st.w	[r13 + (-12)], r0	# initial,
# basic.c:1371: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.241_12, expression_error
# basic.c:1371: 	if (expression_error)
	sex.b	r1, r0	# tmp74, expression_error.241_12
	xor.w	r0, r0	# tmp75
	cmp.w	r1, r0	# tmp74, tmp75
	jz	.L293		#
# basic.c:1373: 		qwhat();
	call	qwhat		#
# basic.c:1374: 		return;
	j	.L288		#
.L293:
# basic.c:1377: 	scantable(keywords + TO_OFFSET, TO_ENUM_OFFSET, TO_ENUM_OFFSET + 2);
	mov.w	r1, keywords+309	# _13,
	mov.w	r0, sp	# tmp76,
	mov.w	r2, 74	# tmp77,
	st.w	[r0 + (8)], r2	#, tmp77
	mov.w	r2, 72	# tmp78,
	st.w	[r0 + (4)], r2	#, tmp78
	st.w	[r0], r1	#, _13
	call	scantable		#
# basic.c:1378: 	if (table_index != KW_TO)
	ld.b	r0, [table_index]	# table_index.242_14, table_index
# basic.c:1378: 	if (table_index != KW_TO)
	sex.b	r1, r0	# tmp79, table_index.242_14
	mov.w	r0, 72	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jz	.L294		#
# basic.c:1380: 		qwhat();
	call	qwhat		#
# basic.c:1381: 		return;
	j	.L288		#
.L294:
# basic.c:1384: 	terminal = expression();
	call	expression		#
	st.w	[r13 + (-16)], r0	# terminal,
# basic.c:1385: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.243_15, expression_error
# basic.c:1385: 	if (expression_error)
	sex.b	r1, r0	# tmp81, expression_error.243_15
	xor.w	r0, r0	# tmp82
	cmp.w	r1, r0	# tmp81, tmp82
	jz	.L295		#
# basic.c:1387: 		qwhat();
	call	qwhat		#
# basic.c:1388: 		return;
	j	.L288		#
.L295:
# basic.c:1391: 	scantable(keywords + TO_OFFSET, TO_ENUM_OFFSET, TO_ENUM_OFFSET + 2);
	mov.w	r1, keywords+309	# _16,
	mov.w	r0, sp	# tmp83,
	mov.w	r2, 74	# tmp84,
	st.w	[r0 + (8)], r2	#, tmp84
	mov.w	r2, 72	# tmp85,
	st.w	[r0 + (4)], r2	#, tmp85
	st.w	[r0], r1	#, _16
	call	scantable		#
# basic.c:1392: 	if (table_index == KW_STEP)
	ld.b	r0, [table_index]	# table_index.244_17, table_index
# basic.c:1392: 	if (table_index == KW_STEP)
	sex.b	r1, r0	# tmp86, table_index.244_17
	mov.w	r0, 73	# tmp87,
	cmp.w	r1, r0	# tmp86, tmp87
	jnz	.L296		#
# basic.c:1394: 		step = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# step,
# basic.c:1395: 		if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.245_18, expression_error
# basic.c:1395: 		if (expression_error)
	sex.b	r1, r0	# tmp88, expression_error.245_18
	xor.w	r0, r0	# tmp89
	cmp.w	r1, r0	# tmp88, tmp89
	jz	.L297		#
# basic.c:1397: 			qwhat();
	call	qwhat		#
# basic.c:1398: 			return;
	j	.L288		#
.L296:
# basic.c:1402: 		step = 1;
	mov.w	r0, 1065353216	# tmp90,
	st.w	[r13 + (-4)], r0	# step, tmp90
.L297:
# basic.c:1404: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1405: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.246_19, txtpos
	ld.b	r0, [r0]	# _20, *txtpos.246_19
# basic.c:1405: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp91, _20
	mov.w	r0, 10	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L298		#
# basic.c:1405: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.247_21, txtpos
	ld.b	r0, [r0]	# _22, *txtpos.247_21
# basic.c:1405: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp93, _22
	mov.w	r0, 58	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L298		#
# basic.c:1407: 		qwhat();
	call	qwhat		#
# basic.c:1408: 		return;
	j	.L288		#
.L298:
# basic.c:1411: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.b	r0, [expression_error]	# expression_error.248_23, expression_error
# basic.c:1411: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	sex.b	r1, r0	# tmp95, expression_error.248_23
	xor.w	r0, r0	# tmp96
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L299		#
# basic.c:1411: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.249_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.249_24
# basic.c:1411: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp97, _25
	mov.w	r0, 10	# tmp98,
	cmp.w	r1, r0	# tmp97, tmp98
	jz	.L300		#
# basic.c:1411: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.250_26, txtpos
	ld.b	r0, [r0]	# _27, *txtpos.250_26
# basic.c:1411: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp99, _27
	mov.w	r0, 58	# tmp100,
	cmp.w	r1, r0	# tmp99, tmp100
	jnz	.L299		#
.L300:
# basic.c:1414: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.251_28, bsp
	mov.w	r1, r0	# _29, bsp.251_28
	add.w	r1, 20 #111	# _29,
# basic.c:1414: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.252_30, stack_limit
# basic.c:1414: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	cmp.w	r1, r0	# _29, stack_limit.252_30
	jge	.L301		#
# basic.c:1416: 			qsorry();
	call	qsorry		#
# basic.c:1417: 			return;
	j	.L288		#
.L301:
# basic.c:1420: 		bsp -= sizeof(struct stack_for_frame);
	ld.w	r0, [bsp]	# bsp.253_31, bsp
	add.w	r0, -20 #111	# _32,
	st.w	[bsp], r0	# bsp, _32
# basic.c:1421: 		f = (struct stack_for_frame *)bsp;
	ld.w	r0, [bsp]	# tmp101, bsp
	st.w	[r13 + (-20)], r0	# f, tmp101
# basic.c:1422: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r0, [variables_begin]	# variables_begin.254_33, variables_begin
# basic.c:1422: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.b	r1, [r13 + (-5)]	# _34, var
	mov.w	r2, 1073741759	# tmp102,
	add.w	r1, r2 #222	# _35, tmp102
	mov.w	r2, 2	# tmp103,
	shl.w	r1, r2	# _36, tmp103
	add.w	r0, r1 #222	# _37, _36
# basic.c:1422: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r1, [r13 + (-12)]	# tmp104, initial
	st.w	[r0], r1	# *_37, tmp104
# basic.c:1423: 		f->frame_type = STACK_FOR_FLAG;
	ld.w	r0, [r13 + (-20)]	# tmp105, f
	mov.s	r1, 70	# tmp106,
	st.s	[r0], r1	# f_65->frame_type, tmp106
# basic.c:1424: 		f->for_var = var;
	ld.b	r0, [r13 + (-5)]	# tmp107, var
	mov.w	r1, r0	# _38, tmp107
	ld.w	r0, [r13 + (-20)]	# tmp108, f
	st.s	[r0 + (2)], r1	# f_65->for_var, _38
# basic.c:1425: 		f->terminal = terminal;
	ld.w	r0, [r13 + (-20)]	# tmp109, f
	ld.w	r1, [r13 + (-16)]	# tmp110, terminal
	st.w	[r0 + (4)], r1	# f_65->terminal, tmp110
# basic.c:1426: 		f->step = step;
	ld.w	r0, [r13 + (-20)]	# tmp111, f
	ld.w	r1, [r13 + (-4)]	# tmp112, step
	st.w	[r0 + (8)], r1	# f_65->step, tmp112
# basic.c:1427: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.255_39, txtpos
	ld.w	r0, [r13 + (-20)]	# tmp113, f
	st.w	[r0 + (16)], r1	# f_65->txtpos, txtpos.255_39
# basic.c:1428: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.256_40, current_line
	ld.w	r0, [r13 + (-20)]	# tmp114, f
	st.w	[r0 + (12)], r1	# f_65->current_line, current_line.256_40
# basic.c:1434: 		return;
	j	.L288		#
.L299:
# basic.c:1436: 	qhow();
	call	qhow		#
.L288:
# basic.c:1437: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_for, .-exec_for
	.section	.rodata
	.p2align	2
.LC9:
	.string	"Stack is stuffed!"
	.text
	.p2align	1
	.global	exec_return
	.type	exec_return, @function
exec_return:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# basic.c:1447: 	tempsp = bsp;
	ld.w	r0, [bsp]	# bsp.257_1, bsp
	st.w	[tempsp], r0	# tempsp, bsp.257_1
# basic.c:1448: 	while (tempsp < program + kRamSize - 1)
	j	.L303		#
.L317:
# basic.c:1454: 		switch (tempsp[1])
	ld.w	r0, [tempsp]	# tempsp.258_2, tempsp
	add.w	r0, 1 #111	# _3,
	ld.b	r0, [r0]	# _4, *_3
	sex.b	r0, r0	# _5, _4
# basic.c:1454: 		switch (tempsp[1])
	mov.w	r1, 70	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jz	.L304		#
	mov.w	r1, 71	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jnz	.L305		#
# basic.c:1457: 			if (table_index == KW_RETURN)
	ld.b	r0, [table_index]	# table_index.259_6, table_index
# basic.c:1457: 			if (table_index == KW_RETURN)
	sex.b	r1, r0	# tmp75, table_index.259_6
	mov.w	r0, 13	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jnz	.L306		#
# basic.c:1459: 				struct stack_gosub_frame *f = (struct stack_gosub_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp77, tempsp
	st.w	[r13 + (-12)], r0	# f, tmp77
# basic.c:1460: 				current_line = f->current_line;
	ld.w	r0, [r13 + (-12)]	# tmp78, f
	ld.w	r0, [r0 + (12)]	# _7, f_56->current_line
# basic.c:1460: 				current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _7
# basic.c:1461: 				txtpos = f->txtpos;
	ld.w	r0, [r13 + (-12)]	# tmp79, f
	ld.w	r0, [r0 + (16)]	# _8, f_56->txtpos
# basic.c:1461: 				txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:1462: 				bsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.260_9, bsp
	add.w	r0, 20 #111	# _10,
	st.w	[bsp], r0	# bsp, _10
# basic.c:1463: 				return 0;
	xor.w	r0, r0	# _48
	j	.L307		#
.L306:
# basic.c:1466: 			tempsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [tempsp]	# tempsp.261_11, tempsp
	add.w	r0, 20 #111	# _12,
	st.w	[tempsp], r0	# tempsp, _12
# basic.c:1467: 			break;
	j	.L303		#
.L304:
# basic.c:1470: 			if (table_index == KW_NEXT)
	ld.b	r0, [table_index]	# table_index.262_13, table_index
# basic.c:1470: 			if (table_index == KW_NEXT)
	sex.b	r1, r0	# tmp80, table_index.262_13
	mov.w	r0, 12	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L308		#
# basic.c:1472: 				struct stack_for_frame *f = (struct stack_for_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp82, tempsp
	st.w	[r13 + (-16)], r0	# f, tmp82
# basic.c:1474: 				var = txtpos[-1];
	ld.w	r0, [txtpos]	# txtpos.263_14, txtpos
	add.w	r0, -1 #111	# _15,
	ld.b	r0, [r0]	# _16, *_15
# basic.c:1474: 				var = txtpos[-1];
	st.b	[r13 + (-5)], r0	# var, _16
# basic.c:1475: 				i = -2;
	mov.w	r0, -2	# tmp83,
	st.w	[r13 + (-4)], r0	# i, tmp83
# basic.c:1476: 				while (var == ' ') 
	j	.L309		#
.L310:
# basic.c:1478: 					var = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.264_17, txtpos
	ld.w	r1, [r13 + (-4)]	# i.265_18, i
	add.w	r0, r1 #222	# _19, i.265_18
	ld.b	r0, [r0]	# _20, *_19
# basic.c:1478: 					var = txtpos[i];
	st.b	[r13 + (-5)], r0	# var, _20
# basic.c:1479: 					i--;
	ld.w	r0, [r13 + (-4)]	# tmp85, i
	add.w	r0, -1 #111	# tmp84,
	st.w	[r13 + (-4)], r0	# i, tmp84
.L309:
# basic.c:1476: 				while (var == ' ') 
	ld.b	r0, [r13 + (-5)]	#, var
	sex.b	r1, r0	# tmp86,
	mov.w	r0, 32	# tmp87,
	cmp.w	r1, r0	# tmp86, tmp87
	jz	.L310		#
# basic.c:1481: 				if (var == f->for_var)
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# _21,
# basic.c:1481: 				if (var == f->for_var)
	ld.w	r0, [r13 + (-16)]	# tmp88, f
	ld.s	r0, [r0 + (2)]	# _22, f_61->for_var
	zex.s	r0, r0	# _23, _22
# basic.c:1481: 				if (var == f->for_var)
	cmp.w	r1, r0	# _21, _23
	jnz	.L308		#
# basic.c:1483: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.266_24, variables_begin
# basic.c:1483: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# _25,
	mov.w	r2, 1073741759	# tmp89,
	add.w	r1, r2 #222	# _26, tmp89
	mov.w	r2, 2	# tmp90,
	shl.w	r1, r2	# _27, tmp90
# basic.c:1483: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	add.w	r0, r1 #222	# tmp91, _27
	st.w	[r13 + (-20)], r0	# varaddr, tmp91
# basic.c:1484: 					*varaddr = *varaddr + f->step;
	ld.w	r1, [r13 + (-20)]	# tmp92, varaddr
	ld.w	r0, [r1]	# _28, *varaddr_64
# basic.c:1484: 					*varaddr = *varaddr + f->step;
	ld.w	r2, [r13 + (-16)]	# tmp93, f
	ld.w	r1, [r2 + (8)]	# _29,
# basic.c:1484: 					*varaddr = *varaddr + f->step;
	st.w	[sp + (4)], r1	#, tmp94
	st.w	[sp], r0	#, tmp95
	call	__addsf3		#
	mov.w	r2, r0	# tmp96,
	mov.w	r1, r2	# _30, tmp96
# basic.c:1484: 					*varaddr = *varaddr + f->step;
	ld.w	r0, [r13 + (-20)]	# tmp97, varaddr
	st.w	[r0], r1	# *varaddr_64, tmp98
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-16)]	# tmp99, f
	ld.w	r0, [r1 + (8)]	# _31,
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r1, r1	# tmp100
	st.w	[sp + (4)], r1	#, tmp100
	st.w	[sp], r0	#, tmp101
	call	__gtsf2		#
	mov.w	r1, r0	# tmp102,
	xor.w	r0, r0	# tmp103
	cmp.w	r1, r0	# tmp102, tmp103
	jses	.L311		#
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-20)]	# tmp104, varaddr
	ld.w	r0, [r1]	# _32, *varaddr_64
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r2, [r13 + (-16)]	# tmp105, f
	ld.w	r1, [r2 + (4)]	# _33,
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	st.w	[sp + (4)], r1	#, tmp106
	st.w	[sp], r0	#, tmp107
	call	__lesf2		#
	mov.w	r1, r0	# tmp108,
	xor.w	r0, r0	# tmp109
	cmp.w	r1, r0	# tmp108, tmp109
	jses	.L313		#
.L311:
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-16)]	# tmp110, f
	ld.w	r0, [r1 + (8)]	# _34,
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r1, r1	# tmp111
	st.w	[sp + (4)], r1	#, tmp111
	st.w	[sp], r0	#, tmp112
	call	__ltsf2		#
	mov.w	r1, r0	# tmp113,
	xor.w	r0, r0	# tmp114
	cmp.w	r1, r0	# tmp113, tmp114
	jges	.L314		#
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-20)]	# tmp115, varaddr
	ld.w	r0, [r1]	# _35, *varaddr_64
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r2, [r13 + (-16)]	# tmp116, f
	ld.w	r1, [r2 + (4)]	# _36,
# basic.c:1486: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	st.w	[sp + (4)], r1	#, tmp117
	st.w	[sp], r0	#, tmp118
	call	__gesf2		#
	mov.w	r1, r0	# tmp119,
	xor.w	r0, r0	# tmp120
	cmp.w	r1, r0	# tmp119, tmp120
	jss	.L314		#
.L313:
# basic.c:1489: 						txtpos = f->txtpos;
	ld.w	r0, [r13 + (-16)]	# tmp121, f
	ld.w	r0, [r0 + (16)]	# _37, f_61->txtpos
# basic.c:1489: 						txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _37
# basic.c:1490: 						current_line = f->current_line;
	ld.w	r0, [r13 + (-16)]	# tmp122, f
	ld.w	r0, [r0 + (12)]	# _38, f_61->current_line
# basic.c:1490: 						current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _38
# basic.c:1491: 						return 0;
	xor.w	r0, r0	# _48
	j	.L307		#
.L314:
# basic.c:1494: 					bsp = tempsp + sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.267_39, tempsp
	add.w	r0, 20 #111	# _40,
# basic.c:1494: 					bsp = tempsp + sizeof(struct stack_for_frame);
	st.w	[bsp], r0	# bsp, _40
# basic.c:1495: 					return 0;
	xor.w	r0, r0	# _48
	j	.L307		#
.L308:
# basic.c:1499: 			tempsp += sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.268_41, tempsp
	add.w	r0, 20 #111	# _42,
	st.w	[tempsp], r0	# tempsp, _42
# basic.c:1500: 			break;
	j	.L303		#
.L305:
# basic.c:1502: 			printf("Stack is stuffed!\n");
	mov.w	r1, sp	# tmp123,
	mov.w	r0, .LC9	# tmp124,
	st.w	[r1], r0	#, tmp124
	call	puts		#
# basic.c:1503: 			return 1;
	mov.w	r0, 1	# _48,
	j	.L307		#
.L303:
# basic.c:1448: 	while (tempsp < program + kRamSize - 1)
	ld.w	r1, [program]	# program.269_43, program
	mov.w	r0, 65535	# tmp125,
	add.w	r1, r0 #222	# _44, tmp125
# basic.c:1448: 	while (tempsp < program + kRamSize - 1)
	ld.w	r0, [tempsp]	# tempsp.270_45, tempsp
# basic.c:1448: 	while (tempsp < program + kRamSize - 1)
	cmp.w	r1, r0	# _44, tempsp.270_45
	jg	.L317		#
# basic.c:1507: 	qhow();
	call	qhow		#
# basic.c:1508: 	return 1;
	mov.w	r0, 1	# _48,
.L307:
# basic.c:1509: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_return, .-exec_return
	.p2align	1
	.global	exec_next
	.type	exec_next, @function
exec_next:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1514: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1518: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.271_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.271_1
# basic.c:1518: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp36, _2
	mov.w	r0, 64	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jse	.L321		#
# basic.c:1518: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.272_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.272_3
# basic.c:1518: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp38, _4
	mov.w	r0, 90	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jse	.L322		#
.L321:
# basic.c:1523: 		qhow();
	call	qhow		#
# basic.c:1524: 		return;
	j	.L320		#
.L322:
# basic.c:1526: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.273_5, txtpos
	add.w	r0, 1 #111	# _6,
	st.w	[txtpos], r0	# txtpos, _6
# basic.c:1527: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1528: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.274_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.274_7
# basic.c:1528: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp40, _8
	mov.w	r0, 58	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L324		#
# basic.c:1528: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.275_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.275_9
# basic.c:1528: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp42, _10
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L324		#
# basic.c:1530: 		qwhat();
	call	qwhat		#
.L324:
# basic.c:1532: 	exec_return();
	call	exec_return		#
.L320:
# basic.c:1533: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_next, .-exec_next
	.p2align	1
	.global	exec_gosub
	.type	exec_gosub, @function
exec_gosub:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:1537: 	expression_error = 0;
	xor.w	r0, r0	# tmp39
	st.b	[expression_error], r0	# expression_error, tmp39
# basic.c:1538: 	linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:1538: 	linenum = expression();
	mov.w	r0, r1	# tmp40, _1
	st.w	[sp], r0	#, tmp40
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1539: 	if (!expression_error && *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.276_3, expression_error
# basic.c:1539: 	if (!expression_error && *txtpos == NL)
	sex.b	r1, r0	# tmp41, expression_error.276_3
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L326		#
# basic.c:1539: 	if (!expression_error && *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.277_4, txtpos
	ld.b	r0, [r0]	# _5, *txtpos.277_4
# basic.c:1539: 	if (!expression_error && *txtpos == NL)
	zex.b	r1, r0	# tmp43, _5
	mov.w	r0, 10	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L326		#
# basic.c:1542: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.278_6, bsp
	mov.w	r1, r0	# _7, bsp.278_6
	add.w	r1, 20 #111	# _7,
# basic.c:1542: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.279_8, stack_limit
# basic.c:1542: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	cmp.w	r1, r0	# _7, stack_limit.279_8
	jge	.L327		#
# basic.c:1544: 			qsorry();
	call	qsorry		#
# basic.c:1545: 			return;
	j	.L325		#
.L327:
# basic.c:1548: 		bsp -= sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.280_9, bsp
	add.w	r0, -20 #111	# _10,
	st.w	[bsp], r0	# bsp, _10
# basic.c:1549: 		f = (struct stack_gosub_frame *)bsp;
	ld.w	r0, [bsp]	# tmp45, bsp
	st.w	[r13 + (-4)], r0	# f, tmp45
# basic.c:1550: 		f->frame_type = STACK_GOSUB_FLAG;
	ld.w	r0, [r13 + (-4)]	# tmp46, f
	mov.s	r1, 71	# tmp47,
	st.s	[r0], r1	# f_20->frame_type, tmp47
# basic.c:1551: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.281_11, txtpos
	ld.w	r0, [r13 + (-4)]	# tmp48, f
	st.w	[r0 + (16)], r1	# f_20->txtpos, txtpos.281_11
# basic.c:1552: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.282_12, current_line
	ld.w	r0, [r13 + (-4)]	# tmp49, f
	st.w	[r0 + (12)], r1	# f_20->current_line, current_line.282_12
# basic.c:1553: 		current_line = findline();
	call	findline		#
# basic.c:1553: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _13
# basic.c:1554: 		exec_run();
	call	exec_run		#
# basic.c:1555: 		return;
	j	.L325		#
.L326:
# basic.c:1557: 	qhow();
	call	qhow		#
.L325:
# basic.c:1559: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_gosub, .-exec_gosub
	.p2align	1
	.global	exec_input
	.type	exec_input, @function
exec_input:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# basic.c:1566: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1568: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.283_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.283_1
# basic.c:1568: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp47, _2
	mov.w	r0, 64	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jse	.L330		#
# basic.c:1568: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.284_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.284_3
# basic.c:1568: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp49, _4
	mov.w	r0, 90	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jse	.L331		#
.L330:
# basic.c:1570: 		qwhat();
	call	qwhat		#
# basic.c:1571: 		return;
	j	.L329		#
.L331:
# basic.c:1574: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.285_5, txtpos
# basic.c:1574: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp51, *txtpos.285_5
	st.b	[r13 + (-1)], r0	# var, tmp51
# basic.c:1575: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.286_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1576: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1578: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.287_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.287_8
# basic.c:1578: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp52, _9
	mov.w	r0, 10	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L336		#
# basic.c:1578: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.288_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.288_10
# basic.c:1578: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp54, _11
	mov.w	r0, 58	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L336		#
# basic.c:1580: 		qwhat();
	call	qwhat		#
# basic.c:1581: 		return;
	j	.L329		#
.L336:
# basic.c:1586: 		tmptxtpos = txtpos;
	ld.w	r0, [txtpos]	# txtpos.289_12, txtpos
	st.w	[tmptxtpos], r0	# tmptxtpos, txtpos.289_12
# basic.c:1587: 		getln('?');
	mov.w	r1, sp	# tmp56,
	mov.w	r0, 63	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	getln		#
# basic.c:1588: 		toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1589: 		txtpos = program_end + sizeof(VAR);
	ld.w	r0, [program_end]	# program_end.290_13, program_end
	add.w	r0, 4 #111	# _14,
# basic.c:1589: 		txtpos = program_end + sizeof(VAR);
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:1590: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:1591: 		expression_error = 0;
	xor.w	r0, r0	# tmp58
	st.b	[expression_error], r0	# expression_error, tmp58
# basic.c:1592: 		value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1593: 		if (!expression_error)
	ld.b	r0, [expression_error]	# expression_error.291_15, expression_error
# basic.c:1593: 		if (!expression_error)
	sex.b	r1, r0	# tmp59, expression_error.291_15
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L338		#
# basic.c:1586: 		tmptxtpos = txtpos;
	j	.L336		#
.L338:
# basic.c:1594: 			break;
	nop	
# basic.c:1596: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r0, [variables_begin]	# variables_begin.292_16, variables_begin
# basic.c:1596: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.b	r1, [r13 + (-1)]	# _17, var
	mov.w	r2, 1073741759	# tmp61,
	add.w	r1, r2 #222	# _18, tmp61
	mov.w	r2, 2	# tmp62,
	shl.w	r1, r2	# _19, tmp62
	add.w	r0, r1 #222	# _20, _19
# basic.c:1596: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r1, [r13 + (-8)]	# tmp63, value
	st.w	[r0], r1	# *_20, tmp63
# basic.c:1597: 	txtpos = tmptxtpos;
	ld.w	r0, [tmptxtpos]	# tmptxtpos.293_21, tmptxtpos
	st.w	[txtpos], r0	# txtpos, tmptxtpos.293_21
.L329:
# basic.c:1598: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_input, .-exec_input
	.section	.rodata
	.p2align	2
.LC10:
	.string	"%d "
	.text
	.p2align	1
	.global	exec_edit
	.type	exec_edit, @function
exec_edit:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	mov.w	r12, 548	#,
	sub.w	sp, r12 #222	#,
# basic.c:1607: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1608: 	expression_error = 0;
	xor.w	r0, r0	# tmp64
	st.b	[expression_error], r0	# expression_error, tmp64
# basic.c:1609: 	linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:1609: 	linenum = expression();
	mov.w	r0, r1	# tmp65, _1
	st.w	[sp], r0	#, tmp65
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1610: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.294_3, expression_error
# basic.c:1610: 	if (expression_error)
	sex.b	r1, r0	# tmp66, expression_error.294_3
	xor.w	r0, r0	# tmp67
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L340		#
# basic.c:1612: 		qhow();
	call	qhow		#
# basic.c:1613: 		return 0;
	xor.w	r0, r0	# _35
	j	.L346		#
.L340:
# basic.c:1615: 	line = findline();
	call	findline		#
	st.w	[r13 + (-16)], r0	# line,
# basic.c:1616: 	if (line == program_end)
	ld.w	r0, [program_end]	# program_end.295_4, program_end
# basic.c:1616: 	if (line == program_end)
	ld.w	r1, [r13 + (-16)]	# tmp68, line
	cmp.w	r1, r0	# tmp68, program_end.295_4
	jnz	.L342		#
# basic.c:1618: 		qhow();
	call	qhow		#
# basic.c:1619: 		return 0;
	xor.w	r0, r0	# _35
	j	.L346		#
.L342:
# basic.c:1622: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.296_5, program_end
	add.w	r0, 4 #111	# _6,
# basic.c:1622: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _6
# basic.c:1623: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.297_7, txtpos
# basic.c:1623: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp69
	st.b	[r0], r1	# *txtpos.297_7, tmp69
# basic.c:1624: 	sprintf(txtpos, "%d ", linenum);
	ld.w	r1, [txtpos]	# txtpos.298_8, txtpos
	ld.w	r2, [linenum]	# linenum.299_9, linenum
	mov.w	r0, sp	# tmp70,
	st.w	[r0 + (8)], r2	#, linenum.299_9
	mov.w	r2, .LC10	# tmp71,
	st.w	[r0 + (4)], r2	#, tmp71
	st.w	[r0], r1	#, txtpos.298_8
	call	sprintf		#
# basic.c:1625: 	j = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.300_10, txtpos
	mov.w	r1, sp	# tmp72,
	st.w	[r1], r0	#, txtpos.300_10
	call	strlen		#
	st.w	[r13 + (-12)], r0	# j,
# basic.c:1626: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	mov.w	r0, 5	# tmp73,
	st.w	[r13 + (-8)], r0	# i, tmp73
# basic.c:1626: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	j	.L343		#
.L344:
# basic.c:1629: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-8)]	# i.301_11, i
	ld.w	r1, [r13 + (-16)]	# tmp74, line
	add.w	r1, r0 #222	# _12, i.301_11
# basic.c:1629: 		txtpos[j++] = line[i];
	ld.w	r3, [txtpos]	# txtpos.302_13, txtpos
# basic.c:1629: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-12)]	# j.303_14, j
	mov.w	r2, r0	# tmp75, j.303_14
	add.w	r2, 1 #111	# tmp75,
	st.w	[r13 + (-12)], r2	# j, tmp75
	mov.w	r2, r0	# j.304_15, j.303_14
# basic.c:1629: 		txtpos[j++] = line[i];
	mov.w	r0, r3	# _16, txtpos.302_13
	add.w	r0, r2 #222	# _16, j.304_15
# basic.c:1629: 		txtpos[j++] = line[i];
	ld.b	r1, [r1]	# _17, *_12
# basic.c:1629: 		txtpos[j++] = line[i];
	st.b	[r0], r1	# *_16, _17
# basic.c:1626: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-8)]	# tmp77, i
	add.w	r0, 1 #111	# tmp76,
	st.w	[r13 + (-8)], r0	# i, tmp76
.L343:
# basic.c:1626: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-16)]	# tmp78, line
	add.w	r0, 4 #111	# _18,
	ld.b	r0, [r0]	# _19, *_18
	zex.b	r0, r0	# _20, _19
# basic.c:1626: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	add.w	r0, -1 #111	# _21,
# basic.c:1626: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r1, [r13 + (-8)]	# tmp79, i
	cmp.w	r1, r0	# tmp79, _21
	jss	.L344		#
# basic.c:1631: 	txtpos[j] = 0;
	ld.w	r0, [txtpos]	# txtpos.305_22, txtpos
	ld.w	r1, [r13 + (-12)]	# j.306_23, j
	add.w	r0, r1 #222	# _24, j.306_23
# basic.c:1631: 	txtpos[j] = 0;
	xor.w	r1, r1	# tmp80
	st.b	[r0], r1	# *_24, tmp80
# basic.c:1633: 	expand(txtpos, buff);
	ld.w	r1, [txtpos]	# txtpos.307_25, txtpos
	mov.w	r0, sp	# tmp81,
	mov.w	r3, -524	# tmp83,
	mov.w	r2, -4	# tmp82,
	add.w	r2, r13 #222	# tmp82,
	add.w	r2, r3 #222	# tmp82, tmp83
	st.w	[r0 + (4)], r2	#, tmp82
	st.w	[r0], r1	#, txtpos.307_25
	call	expand		#
# basic.c:1634: 	strcpy(txtpos, buff);
	ld.w	r1, [txtpos]	# txtpos.308_26, txtpos
	mov.w	r0, sp	# tmp84,
	mov.w	r3, -524	# tmp86,
	mov.w	r2, -4	# tmp85,
	add.w	r2, r13 #222	# tmp85,
	add.w	r2, r3 #222	# tmp85, tmp86
	st.w	[r0 + (4)], r2	#, tmp85
	st.w	[r0], r1	#, txtpos.308_26
	call	strcpy		#
# basic.c:1636: 	putchar('#');
	mov.w	r1, sp	# tmp87,
	mov.w	r0, 35	# tmp88,
	st.w	[r1], r0	#, tmp88
	call	putchar		#
# basic.c:1637: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.309_27, txtpos
	mov.w	r1, sp	# tmp89,
	st.w	[r1], r0	#, txtpos.309_27
	call	gets		#
# basic.c:1639: 	i = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.310_28, txtpos
	mov.w	r1, sp	# tmp90,
	st.w	[r1], r0	#, txtpos.310_28
	call	strlen		#
	st.w	[r13 + (-8)], r0	# i,
# basic.c:1640: 	if (i % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# i.311_29, i
	mov.w	r0, 1	# tmp91,
	and.w	r1, r0	# _30, tmp91
# basic.c:1640: 	if (i % 2 == 0)
	xor.w	r0, r0	# tmp92
	cmp.w	r1, r0	# _30, tmp92
	jnz	.L345		#
# basic.c:1641: 		strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.312_31, txtpos
	mov.w	r0, sp	# tmp93,
	st.w	[r0], r6	#, txtpos.312_31
	call	strlen		#
	mov.w	r1, r0	# _57, tmp94
	mov.w	r0, r6	# _58, txtpos.312_31
	add.w	r0, r1 #222	# _58, _57
	mov.b	r1, 32	# tmp95,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_58], tmp95
	xor.w	r1, r1	# tmp96
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_58], tmp96
.L345:
# basic.c:1643: 	strcat(txtpos, "\n");
	ld.w	r6, [txtpos]	# txtpos.313_32, txtpos
	mov.w	r0, sp	# tmp97,
	st.w	[r0], r6	#, txtpos.313_32
	call	strlen		#
	mov.w	r1, r0	# _60, tmp98
	mov.w	r0, r6	# _61, txtpos.313_32
	add.w	r0, r1 #222	# _61, _60
	mov.b	r1, 10	# tmp99,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_61], tmp99
	xor.w	r1, r1	# tmp100
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_61], tmp100
# basic.c:1645: 	return 3;
	mov.w	r0, 3	# _35,
.L346:
# basic.c:1646: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_edit, .-exec_edit
	.global	to_print_len
	.section	.bss
	.p2align	2
	.type	to_print_len, @object
	.size	to_print_len, 4
to_print_len:
	.zero	4
	.global	to_print_buff
	.p2align	2
	.type	to_print_buff, @object
	.size	to_print_buff, 4500
to_print_buff:
	.zero	4500
	.text
	.p2align	1
	.global	my_callback
	.type	my_callback, @function
my_callback:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r2, [r13 + (8)]	# tmp30, status
	ld.w	r1, [r13 + (12)]	# tmp32, off
	ld.w	r0, [r13 + (16)]	# tmp34, len
	st.b	[r13 + (-4)], r2	# status, tmp31
	st.s	[r13 + (-8)], r1	# off, tmp33
	st.s	[r13 + (-12)], r0	# len, tmp35
# basic.c:1653: 	memcpy(to_print_buff, eth_buffer+off, len);
	ld.s	r1, [r13 + (-8)]	# _1, off
	mov.w	r0, eth_buffer	# tmp36,
	add.w	r1, r0 #222	# _2, tmp36
	ld.s	r2, [r13 + (-12)]	# _3, len
	mov.w	r0, sp	# tmp37,
	st.w	[r0 + (8)], r2	#, _3
	st.w	[r0 + (4)], r1	#, _2
	mov.w	r1, to_print_buff	# tmp38,
	st.w	[r0], r1	#, tmp38
	call	memcpy		#
# basic.c:1654: 	to_print_len = len;
	ld.s	r0, [r13 + (-12)]	# _4, len
	st.w	[to_print_len], r0	# to_print_len, _4
# basic.c:1656: } 
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	my_callback, .-my_callback
	.section	.rodata
	.p2align	2
.LC11:
	.string	"Loading file %s from the ethernet network drive\n"
	.p2align	2
.LC12:
	.string	"/load:"
	.p2align	2
.LC13:
	.string	"File %s does not exist\n"
	.p2align	2
.LC14:
	.string	"size: %d\n"
	.p2align	2
.LC15:
	.string	"ETHERNET TIMEOUT"
	.text
	.p2align	1
	.global	eth_read_file
	.type	eth_read_file, @function
eth_read_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# basic.c:1660: 	int len = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# len, tmp44
# basic.c:1661: 	int init_offset = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# init_offset, tmp45
# basic.c:1662: 	int size = 1000000;
	mov.w	r0, 1000000	# tmp46,
	st.w	[r13 + (-12)], r0	# size, tmp46
# basic.c:1663: 	int fail_count = 0;
	xor.w	r0, r0	# tmp47
	st.w	[r13 + (-16)], r0	# fail_count, tmp47
# basic.c:1664: 	printf("Loading file %s from the ethernet network drive\n", file_name);
	mov.w	r0, sp	# tmp48,
	ld.w	r1, [r13 + (12)]	# tmp49, file_name
	st.w	[r0 + (4)], r1	#, tmp49
	mov.w	r1, .LC11	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	printf		#
# basic.c:1665: 	to_print_len = 0;
	xor.w	r0, r0	# tmp51
	st.w	[to_print_len], r0	# to_print_len, tmp51
# basic.c:1666: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1666 "basic.c" 1
	irq 0

# basic.c:1667: 	browseUrl("/load:", file_name, server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp52,
	mov.w	r1, my_callback	# tmp53,
	st.w	[r0 + (16)], r1	#, tmp53
	xor.w	r1, r1	# tmp54
	st.w	[r0 + (12)], r1	#, tmp54
	mov.w	r1, server_ip	# tmp55,
	st.w	[r0 + (8)], r1	#, tmp55
	ld.w	r1, [r13 + (12)]	# tmp56, file_name
	st.w	[r0 + (4)], r1	#, tmp56
	mov.w	r1, .LC12	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	browseUrl		#
# basic.c:1669: 	while (len < size) {
	j	.L349		#
.L355:
# basic.c:1670: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp58,
	mov.w	r0, eth_buffer	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	mainLoop		#
# basic.c:1672: 		if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.314_1, to_print_len
# basic.c:1672: 		if (to_print_len > 0) {
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# to_print_len.314_1, tmp60
	jses	.L350		#
# basic.c:1673: 			if (size == 1000000) {
	ld.w	r1, [r13 + (-12)]	# tmp61, size
	mov.w	r0, 1000000	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jnz	.L351		#
# basic.c:1674: 				size = to_print_buff[3];
	ld.b	r0, [to_print_buff+3]	# _2, to_print_buff
# basic.c:1674: 				size = to_print_buff[3];
	zex.b	r0, r0	# tmp63, _2
	st.w	[r13 + (-12)], r0	# size, tmp63
# basic.c:1675: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp65, size
	mov.w	r1, 8	# tmp66,
	shl.w	r0, r1	# tmp64, tmp66
	st.w	[r13 + (-12)], r0	# size, tmp64
# basic.c:1676: 				size |= to_print_buff[2];
	ld.b	r0, [to_print_buff+2]	# _3, to_print_buff
	zex.b	r1, r0	# _4, _3
# basic.c:1676: 				size |= to_print_buff[2];
	ld.w	r0, [r13 + (-12)]	# tmp68, size
	or.w	r0, r1	# tmp67, _4
	st.w	[r13 + (-12)], r0	# size, tmp67
# basic.c:1677: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp70, size
	mov.w	r1, 8	# tmp71,
	shl.w	r0, r1	# tmp69, tmp71
	st.w	[r13 + (-12)], r0	# size, tmp69
# basic.c:1678: 				size |= to_print_buff[1];
	ld.b	r0, [to_print_buff+1]	# _5, to_print_buff
	zex.b	r1, r0	# _6, _5
# basic.c:1678: 				size |= to_print_buff[1];
	ld.w	r0, [r13 + (-12)]	# tmp73, size
	or.w	r0, r1	# tmp72, _6
	st.w	[r13 + (-12)], r0	# size, tmp72
# basic.c:1679: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp75, size
	mov.w	r1, 8	# tmp76,
	shl.w	r0, r1	# tmp74, tmp76
	st.w	[r13 + (-12)], r0	# size, tmp74
# basic.c:1680: 				size |= to_print_buff[0];
	ld.b	r0, [to_print_buff]	# _7, to_print_buff
	zex.b	r1, r0	# _8, _7
# basic.c:1680: 				size |= to_print_buff[0];
	ld.w	r0, [r13 + (-12)]	# tmp78, size
	or.w	r0, r1	# tmp77, _8
	st.w	[r13 + (-12)], r0	# size, tmp77
# basic.c:1681: 				init_offset = 4;
	mov.w	r0, 4	# tmp79,
	st.w	[r13 + (-8)], r0	# init_offset, tmp79
# basic.c:1682: 				if (size == 0) {
	ld.w	r1, [r13 + (-12)]	# tmp80, size
	xor.w	r0, r0	# tmp81
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L352		#
# basic.c:1683: 					printf("File %s does not exist\n", file_name);
	mov.w	r0, sp	# tmp82,
	ld.w	r1, [r13 + (12)]	# tmp83, file_name
	st.w	[r0 + (4)], r1	#, tmp83
	mov.w	r1, .LC13	# tmp84,
	st.w	[r0], r1	#, tmp84
	call	printf		#
# basic.c:1684: 					break;
	j	.L353		#
.L352:
# basic.c:1686: 				printf("size: %d\n", size);
	mov.w	r0, sp	# tmp85,
	ld.w	r1, [r13 + (-12)]	# tmp86, size
	st.w	[r0 + (4)], r1	#, tmp86
	mov.w	r1, .LC14	# tmp87,
	st.w	[r0], r1	#, tmp87
	call	printf		#
	j	.L354		#
.L351:
# basic.c:1688: 				init_offset = 0;
	xor.w	r0, r0	# tmp88
	st.w	[r13 + (-8)], r0	# init_offset, tmp88
.L354:
# basic.c:1690: 			printf("#");
	mov.w	r1, sp	# tmp89,
	mov.w	r0, 35	# tmp90,
	st.w	[r1], r0	#, tmp90
	call	putchar		#
# basic.c:1691: 			fail_count = 0;
	xor.w	r0, r0	# tmp91
	st.w	[r13 + (-16)], r0	# fail_count, tmp91
# basic.c:1692: 			to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.315_9, to_print_len
# basic.c:1692: 			to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp93,
	add.w	r0, r1 #222	# tmp92, tmp93
	xor.w	r1, r1	# tmp94
	st.b	[r0], r1	# to_print_buff, tmp94
# basic.c:1693: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r0, [r13 + (-4)]	# len.316_10, len
# basic.c:1693: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r1, [r13 + (8)]	# tmp95, buffer
	add.w	r1, r0 #222	# _11, len.316_10
# basic.c:1693: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r2, [r13 + (-8)]	# init_offset.317_12, init_offset
	mov.w	r0, to_print_buff	# tmp96,
	add.w	r2, r0 #222	# _13, tmp96
	ld.w	r3, [to_print_len]	# to_print_len.318_14, to_print_len
	mov.w	r0, sp	# tmp97,
	st.w	[r0 + (8)], r3	#, to_print_len.318_14
	st.w	[r0 + (4)], r2	#, _13
	st.w	[r0], r1	#, _11
	call	memcpy		#
# basic.c:1694: 			len += to_print_len - init_offset;
	ld.w	r1, [to_print_len]	# to_print_len.319_15, to_print_len
	ld.w	r0, [r13 + (-8)]	# tmp98, init_offset
	sub.w	r1, r0 #222	# _16, tmp98
# basic.c:1694: 			len += to_print_len - init_offset;
	ld.w	r0, [r13 + (-4)]	# tmp100, len
	add.w	r0, r1 #222	# tmp99, _16
	st.w	[r13 + (-4)], r0	# len, tmp99
# basic.c:1696: 			to_print_len = 0;
	xor.w	r0, r0	# tmp101
	st.w	[to_print_len], r0	# to_print_len, tmp101
	j	.L349		#
.L350:
# basic.c:1699: 			delay(10);
	mov.w	r1, sp	# tmp102,
	mov.w	r0, 10	# tmp103,
	st.w	[r1], r0	#, tmp103
	call	delay		#
# basic.c:1700: 			fail_count++;
	ld.w	r0, [r13 + (-16)]	# tmp105, fail_count
	add.w	r0, 1 #111	# tmp104,
	st.w	[r13 + (-16)], r0	# fail_count, tmp104
# basic.c:1701: 			if (fail_count > 256) {
	ld.w	r1, [r13 + (-16)]	# tmp106, fail_count
	mov.w	r0, 256	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jses	.L349		#
# basic.c:1702: 				printf("ETHERNET TIMEOUT\n");
	mov.w	r1, sp	# tmp108,
	mov.w	r0, .LC15	# tmp109,
	st.w	[r1], r0	#, tmp109
	call	puts		#
# basic.c:1703: 				len = 0;
	xor.w	r0, r0	# tmp110
	st.w	[r13 + (-4)], r0	# len, tmp110
# basic.c:1704: 				break;
	j	.L353		#
.L349:
# basic.c:1669: 	while (len < size) {
	ld.w	r1, [r13 + (-4)]	# tmp111, len
	ld.w	r0, [r13 + (-12)]	# tmp112, size
	cmp.w	r1, r0	# tmp111, tmp112
	jss	.L355		#
.L353:
# basic.c:1709: 	asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn on timer irq
# 1709 "basic.c" 1
	irq 1

# basic.c:1710: 	return len;
	ld.w	r0, [r13 + (-4)]	# _60, len
# basic.c:1711: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_read_file, .-eth_read_file
	.global	TIMER_HANDLER_INSTR
	.data
	.p2align	2
	.type	TIMER_HANDLER_INSTR, @object
	.size	TIMER_HANDLER_INSTR, 4
TIMER_HANDLER_INSTR:
	.long	8
	.global	TIMER_HANDLER_ADDR
	.p2align	2
	.type	TIMER_HANDLER_ADDR, @object
	.size	TIMER_HANDLER_ADDR, 4
TIMER_HANDLER_ADDR:
	.long	10
	.global	PORT_TIMER
	.p2align	2
	.type	PORT_TIMER, @object
	.size	PORT_TIMER, 4
PORT_TIMER:
	.long	-2147482358
	.text
	.p2align	1
	.global	timer_irq_triggered
	.type	timer_irq_triggered, @function
timer_irq_triggered:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1718: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1718 "basic.c" 1
	irq 0

# basic.c:1719: asm(
# 1719 "basic.c" 1
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

# basic.c:1725: 	asm("push r13\npush r13\n");
# 1725 "basic.c" 1
	push r13
push r13

# basic.c:1727: 	if (eth)
	ld.w	r1, [eth]	# eth.320_1, eth
# basic.c:1727: 	if (eth)
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# eth.320_1, tmp27
	jz	.L358		#
# basic.c:1728: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp28,
	mov.w	r0, eth_buffer	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	mainLoop		#
.L358:
# basic.c:1731: 	asm("pop r13\npop r13\n");
# 1731 "basic.c" 1
	pop r13
pop r13

# basic.c:1734: 	asm 
# 1734 "basic.c" 1
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
irq 1
iret

# basic.c:1738: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	timer_irq_triggered, .-timer_irq_triggered
	.p2align	1
	.global	de_init_timer
	.type	de_init_timer, @function
de_init_timer:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:1741: 	*TIMER_HANDLER_INSTR 	= 0;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.321_1, TIMER_HANDLER_INSTR
# basic.c:1741: 	*TIMER_HANDLER_INSTR 	= 0;
	xor.w	r1, r1	# tmp29
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.321_1, tmp29
# basic.c:1742: 	*TIMER_HANDLER_ADDR 	= 0;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.322_2, TIMER_HANDLER_ADDR
# basic.c:1742: 	*TIMER_HANDLER_ADDR 	= 0;
	xor.w	r1, r1	# tmp30
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.322_2, tmp30
# basic.c:1743: 	*PORT_TIMER = 0;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.323_3, PORT_TIMER
# basic.c:1743: 	*PORT_TIMER = 0;
	xor.w	r1, r1	# tmp31
	st.s	[r0], r1	# *PORT_TIMER.323_3, tmp31
# basic.c:1744: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	de_init_timer, .-de_init_timer
	.p2align	1
	.global	init_timer
	.type	init_timer, @function
init_timer:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:1748: 	*TIMER_HANDLER_INSTR 	= 1;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.324_1, TIMER_HANDLER_INSTR
# basic.c:1748: 	*TIMER_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp30,
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.324_1, tmp30
# basic.c:1749: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.325_2, TIMER_HANDLER_ADDR
# basic.c:1749: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	mov.w	r1, timer_irq_triggered	# timer_irq_triggered.326_3,
# basic.c:1749: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.325_2, timer_irq_triggered.326_3
# basic.c:1750: 	*PORT_TIMER = 50;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.327_4, PORT_TIMER
# basic.c:1750: 	*PORT_TIMER = 50;
	mov.s	r1, 50	# tmp31,
	st.s	[r0], r1	# *PORT_TIMER.327_4, tmp31
# basic.c:1751: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_timer, .-init_timer
	.section	.rodata
	.p2align	2
.LC16:
	.string	"Loading file: <%s>\n"
	.p2align	2
.LC17:
	.string	"Error reading file!"
	.p2align	2
.LC18:
	.string	"\nSum: %d\n"
	.p2align	2
.LC19:
	.string	"SD card file open failed"
	.p2align	2
.LC20:
	.string	"File size: %d\n"
	.p2align	2
.LC21:
	.string	".BIN"
	.p2align	2
.LC22:
	.string	"Loaded executable file. Run it using: SYS 0"
	.p2align	2
.LC23:
	.string	".BAS"
	.p2align	2
.LC24:
	.string	"Loaded successfuly at address 0 (reachable by PEEK and POKE)."
	.p2align	2
.LC25:
	.string	"OK loading file %s\n"
	.p2align	2
.LC26:
	.string	"Error loading file %s\n"
	.text
	.p2align	1
	.global	exec_load
	.type	exec_load, @function
exec_load:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 168 #111	#,
# basic.c:1758: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1759: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.328_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.328_1
# basic.c:1759: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp116, _2
	mov.w	r0, 64	# tmp117,
	cmp.w	r1, r0	# tmp116, tmp117
	jse	.L362		#
# basic.c:1759: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.329_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.329_3
# basic.c:1759: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp118, _4
	mov.w	r0, 90	# tmp119,
	cmp.w	r1, r0	# tmp118, tmp119
	jse	.L363		#
.L362:
# basic.c:1761: 		qwhat();
	call	qwhat		#
# basic.c:1762: 		return;
	j	.L361		#
.L363:
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	xor.w	r0, r0	# tmp120
	st.w	[r13 + (-8)], r0	# i, tmp120
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	j	.L365		#
.L367:
# basic.c:1769: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.330_5, txtpos
	ld.w	r1, [r13 + (-8)]	# i.331_6, i
	add.w	r0, r1 #222	# _7, i.331_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1769: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp121,
	add.w	r0, -72 #111	# tmp121,
	ld.w	r2, [r13 + (-8)]	# tmp123, i
	add.w	r0, r2 #222	# tmp122, tmp123
	st.b	[r0], r1	# s, _9
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [r13 + (-8)]	# tmp125, i
	add.w	r0, 1 #111	# tmp124,
	st.w	[r13 + (-8)], r0	# i, tmp124
.L365:
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.332_10, txtpos
	ld.w	r1, [r13 + (-8)]	# i.333_11, i
	add.w	r0, r1 #222	# _12, i.333_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp126, _13
	mov.w	r0, 10	# tmp127,
	cmp.w	r1, r0	# tmp126, tmp127
	jz	.L366		#
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.334_14, txtpos
	ld.w	r1, [r13 + (-8)]	# i.335_15, i
	add.w	r0, r1 #222	# _16, i.335_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp128, _17
	mov.w	r0, 13	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jz	.L366		#
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.336_18, txtpos
	ld.w	r1, [r13 + (-8)]	# i.337_19, i
	add.w	r0, r1 #222	# _20, i.337_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp130, _21
	mov.w	r0, 32	# tmp131,
	cmp.w	r1, r0	# tmp130, tmp131
	jz	.L366		#
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.338_22, txtpos
	ld.w	r1, [r13 + (-8)]	# i.339_23, i
	add.w	r0, r1 #222	# _24, i.339_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp132, _25
	mov.w	r0, 9	# tmp133,
	cmp.w	r1, r0	# tmp132, tmp133
	jz	.L366		#
# basic.c:1766: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r1, [r13 + (-8)]	# tmp134, i
	mov.w	r0, 31	# tmp135,
	cmp.w	r1, r0	# tmp134, tmp135
	jses	.L367		#
.L366:
# basic.c:1771: 	s[i] = 0;
	mov.w	r0, r13	# tmp136,
	add.w	r0, -72 #111	# tmp136,
	ld.w	r1, [r13 + (-8)]	# tmp138, i
	add.w	r0, r1 #222	# tmp137, tmp138
	xor.w	r1, r1	# tmp139
	st.b	[r0], r1	# s, tmp139
# basic.c:1773: 	printf("Loading file: <%s>\n", s);
	mov.w	r0, sp	# tmp140,
	mov.w	r1, r13	# tmp141,
	add.w	r1, -72 #111	# tmp141,
	st.w	[r0 + (4)], r1	#, tmp141
	mov.w	r1, .LC16	# tmp142,
	st.w	[r0], r1	#, tmp142
	call	printf		#
# basic.c:1774: 	if (drive == 2) {
	ld.b	r0, [drive]	# drive.340_26, drive
# basic.c:1774: 	if (drive == 2) {
	sex.b	r1, r0	# tmp143, drive.340_26
	mov.w	r0, 2	# tmp144,
	cmp.w	r1, r0	# tmp143, tmp144
	jnz	.L368		#
# basic.c:1776: 		asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1776 "basic.c" 1
	irq 0

# basic.c:1777: 		delay(100);
	mov.w	r1, sp	# tmp145,
	mov.w	r0, 100	# tmp146,
	st.w	[r1], r0	#, tmp146
	call	delay		#
# basic.c:1778: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.341_27, buffer
	mov.w	r0, sp	# tmp147,
	mov.w	r2, r13	# tmp148,
	add.w	r2, -72 #111	# tmp148,
	st.w	[r0 + (4)], r2	#, tmp148
	st.w	[r0], r1	#, buffer.341_27
	call	uart_read_file		#
	st.w	[r13 + (-8)], r0	# i,
# basic.c:1779: 		asm ("irq 1\n");  // IRQ 0000, xxx1 <- turn on timer irq
# 1779 "basic.c" 1
	irq 1

	j	.L369		#
.L368:
# basic.c:1780: 	} else if (drive == 0)
	ld.b	r0, [drive]	# drive.342_28, drive
# basic.c:1780: 	} else if (drive == 0)
	sex.b	r1, r0	# tmp149, drive.342_28
	xor.w	r0, r0	# tmp150
	cmp.w	r1, r0	# tmp149, tmp150
	jnz	.L370		#
# basic.c:1784: load_load_again:		
	nop	
.L371:
# basic.c:1785: 		if(file_open(s, &fd, O_READ))
	mov.w	r0, sp	# tmp151,
	xor.w	r1, r1	# tmp152
	st.w	[r0 + (8)], r1	#, tmp152
	mov.w	r1, r13	# tmp153,
	add.w	r1, -148 #111	# tmp153,
	st.w	[r0 + (4)], r1	#, tmp153
	mov.w	r1, r13	# tmp154,
	add.w	r1, -72 #111	# tmp154,
	st.w	[r0], r1	#, tmp154
	call	file_open		#
# basic.c:1785: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp155, _29
	xor.w	r0, r0	# tmp156
	cmp.w	r1, r0	# tmp155, tmp156
	jz	.L372		#
# basic.c:1787: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-116)]	# _30, fd.dir_entry.filesize
# basic.c:1787: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-32)], r0	# len, _30
# basic.c:1788: 			int total = 0;
	xor.w	r0, r0	# tmp157
	st.w	[r13 + (-20)], r0	# total, tmp157
# basic.c:1790: 			while(total < len)
	j	.L373		#
.L376:
# basic.c:1792: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.343_31, buffer
	ld.w	r0, [r13 + (-20)]	# total.344_32, total
	add.w	r1, r0 #222	# _33, total.344_32
	mov.w	r0, sp	# tmp158,
	mov.w	r2, 512	# tmp159,
	st.w	[r0 + (8)], r2	#, tmp159
	st.w	[r0 + (4)], r1	#, _33
	mov.w	r1, r13	# tmp160,
	add.w	r1, -148 #111	# tmp160,
	st.w	[r0], r1	#, tmp160
	call	file_read		#
# basic.c:1792: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp161, _34
	st.w	[r13 + (-36)], r0	# current, tmp161
# basic.c:1793: 				if (current > 0) {
	ld.w	r1, [r13 + (-36)]	# tmp162, current
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# tmp162, tmp163
	jses	.L374		#
# basic.c:1794: 					total += current;
	ld.w	r0, [r13 + (-20)]	# tmp165, total
	ld.w	r1, [r13 + (-36)]	# tmp166, current
	add.w	r0, r1 #222	# tmp164, tmp166
	st.w	[r13 + (-20)], r0	# total, tmp164
# basic.c:1795: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-20)]	# total.345_35, total
# basic.c:1795: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-116)]	# _36, fd.dir_entry.filesize
# basic.c:1795: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _37, _36
# basic.c:1795: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp167,
	mul.w	r1, r0	# _38, tmp167
# basic.c:1795: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp168,
	div.w	r1, r0	# _39, tmp168
mov.w	r1, r14	# _39
# basic.c:1795: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp169
	cmp.w	r1, r0	# _39, tmp169
	jnz	.L373		#
# basic.c:1796: 						printf("#");
	mov.w	r1, sp	# tmp170,
	mov.w	r0, 35	# tmp171,
	st.w	[r1], r0	#, tmp171
	call	putchar		#
	j	.L373		#
.L374:
# basic.c:1798: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp172,
	mov.w	r0, .LC17	# tmp173,
	st.w	[r1], r0	#, tmp173
	call	puts		#
	j	.L361		#
.L373:
# basic.c:1790: 			while(total < len)
	ld.w	r1, [r13 + (-20)]	# tmp174, total
	ld.w	r0, [r13 + (-32)]	# tmp175, len
	cmp.w	r1, r0	# tmp174, tmp175
	jss	.L376		#
# basic.c:1803: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.346_40, buffer
	ld.w	r1, [r13 + (-32)]	# len.347_41, len
	add.w	r0, r1 #222	# _42, len.347_41
# basic.c:1803: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp176
	st.b	[r0], r1	# *_42, tmp176
# basic.c:1804: 			i = len;
	ld.w	r0, [r13 + (-32)]	# tmp177, len
	st.w	[r13 + (-8)], r0	# i, tmp177
# basic.c:1808: 			strcpy(fileName, s);
	mov.w	r0, sp	# tmp178,
	mov.w	r1, r13	# tmp179,
	add.w	r1, -72 #111	# tmp179,
	st.w	[r0 + (4)], r1	#, tmp179
	mov.w	r1, r13	# tmp180,
	add.w	r1, -92 #111	# tmp180,
	st.w	[r0], r1	#, tmp180
	call	strcpy		#
# basic.c:1809: 			int sum = 0;
	xor.w	r0, r0	# tmp181
	st.w	[r13 + (-24)], r0	# sum, tmp181
# basic.c:1810: 			for (int j = 0; j < i; j++) {
	xor.w	r0, r0	# tmp182
	st.w	[r13 + (-28)], r0	# j, tmp182
# basic.c:1810: 			for (int j = 0; j < i; j++) {
	j	.L377		#
.L378:
# basic.c:1811: 				sum += buffer[j];
	ld.w	r0, [buffer]	# buffer.348_43, buffer
	ld.w	r1, [r13 + (-28)]	# j.349_44, j
	add.w	r0, r1 #222	# _45, j.349_44
	ld.b	r0, [r0]	# _46, *_45
	sex.b	r1, r0	# _47, _46
# basic.c:1811: 				sum += buffer[j];
	ld.w	r0, [r13 + (-24)]	# tmp184, sum
	add.w	r0, r1 #222	# tmp183, _47
	st.w	[r13 + (-24)], r0	# sum, tmp183
# basic.c:1810: 			for (int j = 0; j < i; j++) {
	ld.w	r0, [r13 + (-28)]	# tmp186, j
	add.w	r0, 1 #111	# tmp185,
	st.w	[r13 + (-28)], r0	# j, tmp185
.L377:
# basic.c:1810: 			for (int j = 0; j < i; j++) {
	ld.w	r1, [r13 + (-28)]	# tmp187, j
	ld.w	r0, [r13 + (-8)]	# tmp188, i
	cmp.w	r1, r0	# tmp187, tmp188
	jss	.L378		#
# basic.c:1813: 			printf("\nSum: %d\n", sum);
	mov.w	r0, sp	# tmp189,
	ld.w	r1, [r13 + (-24)]	# tmp190, sum
	st.w	[r0 + (4)], r1	#, tmp190
	mov.w	r1, .LC18	# tmp191,
	st.w	[r0], r1	#, tmp191
	call	printf		#
	j	.L369		#
.L372:
# basic.c:1816: 			printf("SD card file open failed\n");
	mov.w	r1, sp	# tmp192,
	mov.w	r0, .LC19	# tmp193,
	st.w	[r1], r0	#, tmp193
	call	puts		#
# basic.c:1817: 			return;
	j	.L361		#
.L370:
# basic.c:1822: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.350_48, buffer
	mov.w	r0, sp	# tmp194,
	mov.w	r2, r13	# tmp195,
	add.w	r2, -72 #111	# tmp195,
	st.w	[r0 + (4)], r2	#, tmp195
	st.w	[r0], r1	#, buffer.350_48
	call	eth_read_file		#
	st.w	[r13 + (-8)], r0	# i,
.L369:
# basic.c:1825: 	if (i > 0)
	ld.w	r1, [r13 + (-8)]	# tmp196, i
	xor.w	r0, r0	# tmp197
	cmp.w	r1, r0	# tmp196, tmp197
	jses	.L379		#
# basic.c:1827: 		printf("File size: %d\n", i);
	mov.w	r0, sp	# tmp198,
	ld.w	r1, [r13 + (-8)]	# tmp199, i
	st.w	[r0 + (4)], r1	#, tmp199
	mov.w	r1, .LC20	# tmp200,
	st.w	[r0], r1	#, tmp200
	call	printf		#
# basic.c:1828: 		if (strstr(s, ".BIN") != (char *)0) 
	mov.w	r0, sp	# tmp201,
	mov.w	r1, .LC21	# tmp202,
	st.w	[r0 + (4)], r1	#, tmp202
	mov.w	r1, r13	# tmp203,
	add.w	r1, -72 #111	# tmp203,
	st.w	[r0], r1	#, tmp203
	call	strstr		#
	mov.w	r1, r0	# _49,
# basic.c:1828: 		if (strstr(s, ".BIN") != (char *)0) 
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# _49, tmp204
	jz	.L380		#
# basic.c:1830: 			printf("Loaded executable file. Run it using: SYS 0\n");
	mov.w	r1, sp	# tmp205,
	mov.w	r0, .LC22	# tmp206,
	st.w	[r1], r0	#, tmp206
	call	puts		#
# basic.c:1831: 			return;
	j	.L361		#
.L380:
# basic.c:1832: 		} else if (strstr(s, ".BAS") == (char *)0) 
	mov.w	r0, sp	# tmp207,
	mov.w	r1, .LC23	# tmp208,
	st.w	[r0 + (4)], r1	#, tmp208
	mov.w	r1, r13	# tmp209,
	add.w	r1, -72 #111	# tmp209,
	st.w	[r0], r1	#, tmp209
	call	strstr		#
	mov.w	r1, r0	# _50,
# basic.c:1832: 		} else if (strstr(s, ".BAS") == (char *)0) 
	xor.w	r0, r0	# tmp210
	cmp.w	r1, r0	# _50, tmp210
	jnz	.L381		#
# basic.c:1834: 			printf("Loaded successfuly at address 0 (reachable by PEEK and POKE).\n");
	mov.w	r1, sp	# tmp211,
	mov.w	r0, .LC24	# tmp212,
	st.w	[r1], r0	#, tmp212
	call	puts		#
# basic.c:1835: 			return;
	j	.L361		#
.L381:
# basic.c:1838: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.351_51, program_start
	st.w	[program_end], r0	# program_end, program_start.351_51
# basic.c:1839: 		k = 0;
	xor.w	r0, r0	# tmp213
	st.w	[r13 + (-16)], r0	# k, tmp213
# basic.c:1840: 		for (j = 0; j <= i; j++)
	xor.w	r0, r0	# tmp214
	st.w	[r13 + (-12)], r0	# j, tmp214
# basic.c:1840: 		for (j = 0; j <= i; j++)
	j	.L382		#
.L387:
# basic.c:1842: 			if (buffer[j] == CR)
	ld.w	r0, [buffer]	# buffer.352_52, buffer
	ld.w	r1, [r13 + (-12)]	# j.353_53, j
	add.w	r0, r1 #222	# _54, j.353_53
	ld.b	r0, [r0]	# _55, *_54
# basic.c:1842: 			if (buffer[j] == CR)
	sex.b	r1, r0	# tmp215, _55
	mov.w	r0, 13	# tmp216,
	cmp.w	r1, r0	# tmp215, tmp216
	jnz	.L383		#
# basic.c:1844: 				buffer[j] = NL;
	ld.w	r0, [buffer]	# buffer.354_56, buffer
	ld.w	r1, [r13 + (-12)]	# j.355_57, j
	add.w	r0, r1 #222	# _58, j.355_57
# basic.c:1844: 				buffer[j] = NL;
	mov.b	r1, 10	# tmp217,
	st.b	[r0], r1	# *_58, tmp217
.L383:
# basic.c:1846: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.356_59, buffer
	ld.w	r1, [r13 + (-12)]	# j.357_60, j
	add.w	r0, r1 #222	# _61, j.357_60
	ld.b	r0, [r0]	# _62, *_61
# basic.c:1846: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp218, _62
	mov.w	r0, 10	# tmp219,
	cmp.w	r1, r0	# tmp218, tmp219
	jz	.L384		#
# basic.c:1846: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.358_63, buffer
	ld.w	r1, [r13 + (-12)]	# j.359_64, j
	add.w	r0, r1 #222	# _65, j.359_64
	ld.b	r0, [r0]	# _66, *_65
# basic.c:1846: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp220, _66
	xor.w	r0, r0	# tmp221
	cmp.w	r1, r0	# tmp220, tmp221
	jnz	.L385		#
.L384:
# basic.c:1848: 				txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.360_67, program_end
	add.w	r0, 4 #111	# _68,
# basic.c:1848: 				txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _68
# basic.c:1849: 				strncpy(txtpos, &buffer[k], j);
	ld.w	r1, [txtpos]	# txtpos.361_69, txtpos
	ld.w	r2, [buffer]	# buffer.362_70, buffer
	ld.w	r0, [r13 + (-16)]	# k.363_71, k
	add.w	r2, r0 #222	# _72, k.363_71
	mov.w	r0, sp	# tmp222,
	ld.w	r3, [r13 + (-12)]	# tmp223, j
	st.w	[r0 + (8)], r3	#, tmp223
	st.w	[r0 + (4)], r2	#, _72
	st.w	[r0], r1	#, txtpos.361_69
	call	strncpy		#
# basic.c:1850: 				txtpos[j - k] = NL;
	ld.w	r0, [txtpos]	# txtpos.364_73, txtpos
# basic.c:1850: 				txtpos[j - k] = NL;
	ld.w	r1, [r13 + (-12)]	# tmp224, j
	ld.w	r2, [r13 + (-16)]	# tmp225, k
	sub.w	r1, r2 #222	# _74, tmp225
# basic.c:1850: 				txtpos[j - k] = NL;
	add.w	r0, r1 #222	# _76, _75
# basic.c:1850: 				txtpos[j - k] = NL;
	mov.b	r1, 10	# tmp226,
	st.b	[r0], r1	# *_76, tmp226
# basic.c:1851: 				txtpos[j - k + 1] = 0;
	ld.w	r0, [txtpos]	# txtpos.365_77, txtpos
# basic.c:1851: 				txtpos[j - k + 1] = 0;
	ld.w	r1, [r13 + (-12)]	# tmp227, j
	ld.w	r2, [r13 + (-16)]	# tmp228, k
	sub.w	r1, r2 #222	# _78, tmp228
# basic.c:1851: 				txtpos[j - k + 1] = 0;
	add.w	r1, 1 #111	# _80,
	add.w	r0, r1 #222	# _81, _80
# basic.c:1851: 				txtpos[j - k + 1] = 0;
	xor.w	r1, r1	# tmp229
	st.b	[r0], r1	# *_81, tmp229
# basic.c:1852: 				k = j + 1;
	ld.w	r0, [r13 + (-12)]	# tmp231, j
	add.w	r0, 1 #111	# tmp230,
	st.w	[r13 + (-16)], r0	# k, tmp230
# basic.c:1853: 				l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.366_82, txtpos
	mov.w	r1, sp	# tmp232,
	st.w	[r1], r0	#, txtpos.366_82
	call	strlen		#
	st.w	[r13 + (-40)], r0	# l,
# basic.c:1854: 				if (l % 2 == 0)
	ld.w	r1, [r13 + (-40)]	# l.367_83, l
	mov.w	r0, 1	# tmp233,
	and.w	r1, r0	# _84, tmp233
# basic.c:1854: 				if (l % 2 == 0)
	xor.w	r0, r0	# tmp234
	cmp.w	r1, r0	# _84, tmp234
	jnz	.L386		#
# basic.c:1855: 					strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.368_85, txtpos
	mov.w	r0, sp	# tmp235,
	st.w	[r0], r6	#, txtpos.368_85
	call	strlen		#
	mov.w	r1, r0	# _156, tmp236
	mov.w	r0, r6	# _157, txtpos.368_85
	add.w	r0, r1 #222	# _157, _156
	mov.b	r1, 32	# tmp237,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_157], tmp237
	xor.w	r1, r1	# tmp238
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_157], tmp238
.L386:
# basic.c:1856: 				toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1857: 				skip_to_end();
	call	skip_to_end		#
# basic.c:1858: 				linenum = testnum();
	call	testnum		#
	mov.w	r1, r0	# _86,
# basic.c:1858: 				linenum = testnum();
	mov.w	r0, r1	# tmp239, _86
	st.w	[sp], r0	#, tmp239
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _87
# basic.c:1859: 				if (linenum > 0)
	ld.w	r1, [linenum]	# linenum.369_88, linenum
# basic.c:1859: 				if (linenum > 0)
	xor.w	r0, r0	# tmp240
	cmp.w	r1, r0	# linenum.369_88, tmp240
	jses	.L385		#
# basic.c:1863: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:1864: 					entered_with_line_num();
	call	entered_with_line_num		#
.L385:
# basic.c:1840: 		for (j = 0; j <= i; j++)
	ld.w	r0, [r13 + (-12)]	# tmp242, j
	add.w	r0, 1 #111	# tmp241,
	st.w	[r13 + (-12)], r0	# j, tmp241
.L382:
# basic.c:1840: 		for (j = 0; j <= i; j++)
	ld.w	r1, [r13 + (-12)]	# tmp243, j
	ld.w	r0, [r13 + (-8)]	# tmp244, i
	cmp.w	r1, r0	# tmp243, tmp244
	jses	.L387		#
# basic.c:1868: 		printf("OK loading file %s\n", s);
	mov.w	r0, sp	# tmp245,
	mov.w	r1, r13	# tmp246,
	add.w	r1, -72 #111	# tmp246,
	st.w	[r0 + (4)], r1	#, tmp246
	mov.w	r1, .LC25	# tmp247,
	st.w	[r0], r1	#, tmp247
	call	printf		#
	j	.L361		#
.L379:
# basic.c:1872: 		printf("Error loading file %s\n", s);
	mov.w	r0, sp	# tmp248,
	mov.w	r1, r13	# tmp249,
	add.w	r1, -72 #111	# tmp249,
	st.w	[r0 + (4)], r1	#, tmp249
	mov.w	r1, .LC26	# tmp250,
	st.w	[r0], r1	#, tmp250
	call	printf		#
.L361:
# basic.c:1874: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_load, .-exec_load
	.p2align	1
	.global	sprintline
	.type	sprintline, @function
sprintline:
	push	r13		#
	mov.w	r13, sp	#,
	mov.w	r12, 552	#,
	sub.w	sp, r12 #222	#,
# basic.c:1882: 	line_num = *((LINENUM*)(list_line));
	ld.w	r0, [list_line]	# list_line.370_1, list_line
# basic.c:1882: 	line_num = *((LINENUM*)(list_line));
	ld.w	r0, [r0]	# tmp49, MEM[(LINENUM *)list_line.370_1]
	st.w	[r13 + (-4)], r0	# line_num, tmp49
# basic.c:1883: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.371_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:1886: 	sprintf(s, "%d ", line_num);
	mov.w	r0, sp	# tmp50,
	ld.w	r1, [r13 + (-4)]	# tmp51, line_num
	st.w	[r0 + (8)], r1	#, tmp51
	mov.w	r1, .LC10	# tmp52,
	st.w	[r0 + (4)], r1	#, tmp52
	mov.w	r1, r13	# tmp53,
	add.w	r1, -14 #111	# tmp53,
	st.w	[r0], r1	#, tmp53
	call	sprintf		#
# basic.c:1887: 	strcpy(&buffer[i], s);
	ld.w	r1, [buffer]	# buffer.372_4, buffer
	ld.w	r0, [r13 + (8)]	# i.373_5, i
	add.w	r1, r0 #222	# _6, i.373_5
	mov.w	r0, sp	# tmp54,
	mov.w	r2, r13	# tmp55,
	add.w	r2, -14 #111	# tmp55,
	st.w	[r0 + (4)], r2	#, tmp55
	st.w	[r0], r1	#, _6
	call	strcpy		#
# basic.c:1888: 	i += strlen(s);
	mov.w	r1, sp	# tmp56,
	mov.w	r0, r13	# tmp57,
	add.w	r0, -14 #111	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	strlen		#
	mov.w	r1, r0	# _7,
# basic.c:1888: 	i += strlen(s);
	ld.w	r0, [r13 + (8)]	# tmp59, i
	add.w	r0, r1 #222	# tmp58, _7
	st.w	[r13 + (8)], r0	# i, tmp58
# basic.c:1890: 	expand(list_line, buff);
	ld.w	r1, [list_line]	# list_line.374_8, list_line
	mov.w	r0, sp	# tmp60,
	mov.w	r3, -526	# tmp62,
	mov.w	r2, r13	# tmp61,
	add.w	r2, r3 #222	# tmp61, tmp62
	st.w	[r0 + (4)], r2	#, tmp61
	st.w	[r0], r1	#, list_line.374_8
	call	expand		#
# basic.c:1891: 	strcat(buffer + i, buff);
	ld.w	r1, [buffer]	# buffer.375_9, buffer
	ld.w	r0, [r13 + (8)]	# i.376_10, i
	add.w	r1, r0 #222	# _11, i.376_10
	mov.w	r0, sp	# tmp63,
	mov.w	r3, -526	# tmp65,
	mov.w	r2, r13	# tmp64,
	add.w	r2, r3 #222	# tmp64, tmp65
	st.w	[r0 + (4)], r2	#, tmp64
	st.w	[r0], r1	#, _11
	call	strcat		#
# basic.c:1892: 	i += strlen(buff);
	mov.w	r2, sp	# tmp66,
	mov.w	r1, -526	# tmp68,
	mov.w	r0, r13	# tmp67,
	add.w	r0, r1 #222	# tmp67, tmp68
	st.w	[r2], r0	#, tmp67
	call	strlen		#
	mov.w	r1, r0	# _12,
# basic.c:1892: 	i += strlen(buff);
	ld.w	r0, [r13 + (8)]	# tmp70, i
	add.w	r0, r1 #222	# tmp69, _12
	st.w	[r13 + (8)], r0	# i, tmp69
# basic.c:1893: 	while (*list_line != NL)
	j	.L391		#
.L392:
# basic.c:1895: 		list_line++;
	ld.w	r0, [list_line]	# list_line.377_13, list_line
	add.w	r0, 1 #111	# _14,
	st.w	[list_line], r0	# list_line, _14
.L391:
# basic.c:1893: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.378_15, list_line
	ld.b	r0, [r0]	# _16, *list_line.378_15
# basic.c:1893: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp71, _16
	mov.w	r0, 10	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jnz	.L392		#
# basic.c:1897: 	list_line++;
	ld.w	r0, [list_line]	# list_line.379_17, list_line
	add.w	r0, 1 #111	# _18,
	st.w	[list_line], r0	# list_line, _18
# basic.c:1900: 	buffer[i] = NL;
	ld.w	r0, [buffer]	# buffer.380_19, buffer
	ld.w	r1, [r13 + (8)]	# i.381_20, i
	add.w	r0, r1 #222	# _21, i.381_20
# basic.c:1900: 	buffer[i] = NL;
	mov.b	r1, 10	# tmp73,
	st.b	[r0], r1	# *_21, tmp73
# basic.c:1901: 	i++;
	ld.w	r0, [r13 + (8)]	# tmp75, i
	add.w	r0, 1 #111	# tmp74,
	st.w	[r13 + (8)], r0	# i, tmp74
# basic.c:1903: 	return i;
	ld.w	r0, [r13 + (8)]	# _36, i
# basic.c:1904: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintline, .-sprintline
	.section	.rodata
	.p2align	2
.LC27:
	.string	"\nSaving to SD card..."
	.p2align	2
.LC28:
	.string	"Could not open file for save."
	.text
	.p2align	1
	.global	sd_write_file
	.type	sd_write_file, @function
sd_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 100 #111	#,
# basic.c:1909: 	printf("\nSaving to SD card...\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC27	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:1910: 	int res = file_open(file_name, &fd, O_WRITE);
	mov.w	r0, sp	# tmp38,
	mov.w	r1, 1	# tmp39,
	st.w	[r0 + (8)], r1	#, tmp39
	mov.w	r1, r13	# tmp40,
	add.w	r1, -76 #111	# tmp40,
	st.w	[r0 + (4)], r1	#, tmp40
	ld.w	r1, [r13 + (16)]	# tmp41, file_name
	st.w	[r0], r1	#, tmp41
	call	file_open		#
# basic.c:1910: 	int res = file_open(file_name, &fd, O_WRITE);
	zex.b	r0, r0	# tmp42, _1
	st.w	[r13 + (-12)], r0	# res, tmp42
# basic.c:1911: 	if (res)
	ld.w	r1, [r13 + (-12)]	# tmp43, res
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L395		#
# basic.c:1913: 		int i, curr, total = 0, count = len /512 + 1;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# total, tmp45
# basic.c:1913: 		int i, curr, total = 0, count = len /512 + 1;
	ld.w	r0, [r13 + (12)]	# tmp46, len
	xor.w	r1, r1	# tmp48
	cmp.w	r0, r1	# tmp47, tmp48
	jges	.L396		#
	mov.w	r1, 511	# tmp49,
	add.w	r0, r1 #222	# tmp47, tmp49
.L396:
	mov.w	r1, 9	# tmp51,
	shr.w	r0, r1	# tmp50, tmp51
# basic.c:1913: 		int i, curr, total = 0, count = len /512 + 1;
	add.w	r0, 1 #111	# tmp52,
	st.w	[r13 + (-16)], r0	# count, tmp52
# basic.c:1914: 		for (i = 0; i < count; i++)
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:1914: 		for (i = 0; i < count; i++)
	j	.L397		#
.L402:
# basic.c:1916: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (-8)]	# total.382_3, total
# basic.c:1916: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r1, [r13 + (8)]	# tmp54, buff
	add.w	r1, r0 #222	# _4, total.382_3
# basic.c:1916: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (12)]	# _5, len
	mov.w	r2, 512	# tmp55,
	cmp.w	r0, r2	# _5, tmp55
	jses	.L398		#
	mov.w	r0, 512	# _5,
.L398:
# basic.c:1916: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r2, r0	# _7, _6
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r2	#, _7
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, r13	# tmp57,
	add.w	r1, -76 #111	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	file_write		#
# basic.c:1916: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r0, r0	# tmp58, _8
	st.w	[r13 + (-20)], r0	# curr, tmp58
# basic.c:1917: 			if (curr > 0) {
	ld.w	r1, [r13 + (-20)]	# tmp59, curr
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jses	.L405		#
# basic.c:1918: 				len -= curr;
	ld.w	r0, [r13 + (12)]	# tmp62, len
	ld.w	r1, [r13 + (-20)]	# tmp63, curr
	sub.w	r0, r1 #222	# tmp61, tmp63
	st.w	[r13 + (12)], r0	# len, tmp61
# basic.c:1919: 				total += curr;
	ld.w	r0, [r13 + (-8)]	# tmp65, total
	ld.w	r1, [r13 + (-20)]	# tmp66, curr
	add.w	r0, r1 #222	# tmp64, tmp66
	st.w	[r13 + (-8)], r0	# total, tmp64
# basic.c:1923: 			printf("#");
	mov.w	r1, sp	# tmp67,
	mov.w	r0, 35	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	putchar		#
# basic.c:1914: 		for (i = 0; i < count; i++)
	ld.w	r0, [r13 + (-4)]	# tmp70, i
	add.w	r0, 1 #111	# tmp69,
	st.w	[r13 + (-4)], r0	# i, tmp69
.L397:
# basic.c:1914: 		for (i = 0; i < count; i++)
	ld.w	r1, [r13 + (-4)]	# tmp71, i
	ld.w	r0, [r13 + (-16)]	# tmp72, count
	cmp.w	r1, r0	# tmp71, tmp72
	jss	.L402		#
	j	.L401		#
.L405:
# basic.c:1922: 				break;
	nop	
.L401:
# basic.c:1926: 		printf("\n");
	mov.w	r1, sp	# tmp73,
	mov.w	r0, 10	# tmp74,
	st.w	[r1], r0	#, tmp74
	call	putchar		#
	j	.L403		#
.L395:
# basic.c:1930: 		printf("Could not open file for save.\n");
	mov.w	r1, sp	# tmp75,
	mov.w	r0, .LC28	# tmp76,
	st.w	[r1], r0	#, tmp76
	call	puts		#
.L403:
# basic.c:1932: 	return 1;	
	mov.w	r0, 1	# _33,
# basic.c:1933: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sd_write_file, .-sd_write_file
	.section	.rodata
	.p2align	2
.LC29:
	.string	"Saving file %s of %d bytes to the ethernet network drive\n"
	.text
	.p2align	1
	.global	eth_write_file
	.type	eth_write_file, @function
eth_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1937: 	printf("Saving file %s of %d bytes to the ethernet network drive\n", file_name, len);
	mov.w	r0, sp	# tmp27,
	ld.w	r1, [r13 + (12)]	# tmp28, len
	st.w	[r0 + (8)], r1	#, tmp28
	ld.w	r1, [r13 + (16)]	# tmp29, file_name
	st.w	[r0 + (4)], r1	#, tmp29
	mov.w	r1, .LC29	# tmp30,
	st.w	[r0], r1	#, tmp30
	call	printf		#
# basic.c:1938: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_write_file, .-eth_write_file
	.section	.rodata
	.p2align	2
.LC30:
	.string	"Filename: <%s>\n"
	.p2align	2
.LC31:
	.string	"OK saving file %s, length: %d\n"
	.text
	.p2align	1
	.global	exec_save
	.type	exec_save, @function
exec_save:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# basic.c:1945: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1946: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.383_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.383_1
# basic.c:1946: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp55, _2
	mov.w	r0, 64	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jse	.L408		#
# basic.c:1946: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.384_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.384_3
# basic.c:1946: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp57, _4
	mov.w	r0, 90	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jse	.L409		#
.L408:
# basic.c:1948: 		qwhat();
	call	qwhat		#
	j	.L407		#
.L409:
# basic.c:1952: 	int spi = 0;
	xor.w	r0, r0	# tmp59
	st.w	[r13 + (-8)], r0	# spi, tmp59
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	xor.w	r0, r0	# tmp60
	st.w	[r13 + (-4)], r0	# i, tmp60
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	j	.L411		#
.L413:
# basic.c:1955: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.385_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.386_6, i
	add.w	r0, r1 #222	# _7, i.386_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1955: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp61,
	add.w	r0, -40 #111	# tmp61,
	ld.w	r2, [r13 + (-4)]	# tmp63, i
	add.w	r0, r2 #222	# tmp62, tmp63
	st.b	[r0], r1	# s, _9
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [r13 + (-4)]	# tmp65, i
	add.w	r0, 1 #111	# tmp64,
	st.w	[r13 + (-4)], r0	# i, tmp64
.L411:
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.387_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.388_11, i
	add.w	r0, r1 #222	# _12, i.388_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp66, _13
	mov.w	r0, 10	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L412		#
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.389_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.390_15, i
	add.w	r0, r1 #222	# _16, i.390_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp68, _17
	mov.w	r0, 32	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L412		#
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.391_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.392_19, i
	add.w	r0, r1 #222	# _20, i.392_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1953: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp70, _21
	mov.w	r0, 9	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L413		#
.L412:
# basic.c:1957: 	s[i] = 0;
	mov.w	r0, r13	# tmp72,
	add.w	r0, -40 #111	# tmp72,
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	add.w	r0, r1 #222	# tmp73, tmp74
	xor.w	r1, r1	# tmp75
	st.b	[r0], r1	# s, tmp75
# basic.c:1958: 	printf("Filename: <%s>\n", s);
	mov.w	r0, sp	# tmp76,
	mov.w	r1, r13	# tmp77,
	add.w	r1, -40 #111	# tmp77,
	st.w	[r0 + (4)], r1	#, tmp77
	mov.w	r1, .LC30	# tmp78,
	st.w	[r0], r1	#, tmp78
	call	printf		#
# basic.c:1961: 	list_line = findline();
	call	findline		#
# basic.c:1961: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _22
# basic.c:1962: 	i = 0;
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:1963: 	while (list_line < program_end)
	j	.L414		#
.L415:
# basic.c:1965: 		i = sprintline(i);
	mov.w	r1, sp	# tmp80,
	ld.w	r0, [r13 + (-4)]	# tmp81, i
	st.w	[r1], r0	#, tmp81
	call	sprintline		#
	st.w	[r13 + (-4)], r0	# i,
.L414:
# basic.c:1963: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.393_23, list_line
	ld.w	r0, [program_end]	# program_end.394_24, program_end
# basic.c:1963: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.393_23, program_end.394_24
	js	.L415		#
# basic.c:1967: 	if (drive == 0) {
	ld.b	r0, [drive]	# drive.395_25, drive
# basic.c:1967: 	if (drive == 0) {
	sex.b	r1, r0	# tmp82, drive.395_25
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L416		#
# basic.c:1969: 		sd_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.396_26, buffer
	mov.w	r0, sp	# tmp84,
	mov.w	r2, r13	# tmp85,
	add.w	r2, -40 #111	# tmp85,
	st.w	[r0 + (8)], r2	#, tmp85
	ld.w	r2, [r13 + (-4)]	# tmp86, i
	st.w	[r0 + (4)], r2	#, tmp86
	st.w	[r0], r1	#, buffer.396_26
	call	sd_write_file		#
	j	.L417		#
.L416:
# basic.c:1970: 	} else if (drive == 2) {
	ld.b	r0, [drive]	# drive.397_27, drive
# basic.c:1970: 	} else if (drive == 2) {
	sex.b	r1, r0	# tmp87, drive.397_27
	mov.w	r0, 2	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L418		#
# basic.c:1972: 		asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 1972 "basic.c" 1
	irq 0

# basic.c:1973: 		uart_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.398_28, buffer
	mov.w	r0, sp	# tmp89,
	mov.w	r2, r13	# tmp90,
	add.w	r2, -40 #111	# tmp90,
	st.w	[r0 + (8)], r2	#, tmp90
	ld.w	r2, [r13 + (-4)]	# tmp91, i
	st.w	[r0 + (4)], r2	#, tmp91
	st.w	[r0], r1	#, buffer.398_28
	call	uart_write_file		#
# basic.c:1974: 		asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 1974 "basic.c" 1
	irq 1

	j	.L417		#
.L418:
# basic.c:1978: 		eth_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.399_29, buffer
	mov.w	r0, sp	# tmp92,
	mov.w	r2, r13	# tmp93,
	add.w	r2, -40 #111	# tmp93,
	st.w	[r0 + (8)], r2	#, tmp93
	ld.w	r2, [r13 + (-4)]	# tmp94, i
	st.w	[r0 + (4)], r2	#, tmp94
	st.w	[r0], r1	#, buffer.399_29
	call	eth_write_file		#
.L417:
# basic.c:1980: 	printf("OK saving file %s, length: %d\n", s, i);
	mov.w	r0, sp	# tmp95,
	ld.w	r1, [r13 + (-4)]	# tmp96, i
	st.w	[r0 + (8)], r1	#, tmp96
	mov.w	r1, r13	# tmp97,
	add.w	r1, -40 #111	# tmp97,
	st.w	[r0 + (4)], r1	#, tmp97
	mov.w	r1, .LC31	# tmp98,
	st.w	[r0], r1	#, tmp98
	call	printf		#
.L407:
# basic.c:1981: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_save, .-exec_save
	.section	.rodata
	.p2align	2
.LC32:
	.string	"%s %d bytes, cluster: %d (%d)\n"
	.p2align	2
.LC33:
	.string	""
	.p2align	2
.LC34:
	.string	"/dir"
	.p2align	2
.LC35:
	.string	"NETWORK TIMEOUT"
	.text
	.p2align	1
	.global	exec_dir
	.type	exec_dir, @function
exec_dir:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 88 #111	#,
# basic.c:1987: 	if (drive == 2)
	ld.b	r0, [drive]	# drive.400_1, drive
# basic.c:1987: 	if (drive == 2)
	sex.b	r1, r0	# tmp39, drive.400_1
	mov.w	r0, 2	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L420		#
# basic.c:1990: 		asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 1990 "basic.c" 1
	irq 0

# basic.c:1991: 		uart_ls_files(buffer);
	ld.w	r0, [buffer]	# buffer.401_2, buffer
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, buffer.401_2
	call	uart_ls_files		#
# basic.c:1992: 		asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 1992 "basic.c" 1
	irq 1

# basic.c:1993: 		printf("%s\n", buffer);
	ld.w	r0, [buffer]	# buffer.402_3, buffer
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, buffer.402_3
	call	puts		#
	j	.L419		#
.L420:
# basic.c:1995: 	else if (drive == 0)
	ld.b	r0, [drive]	# drive.403_4, drive
# basic.c:1995: 	else if (drive == 0)
	sex.b	r1, r0	# tmp43, drive.403_4
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L422		#
# basic.c:1999: 		int next = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# next, tmp45
# basic.c:2000: 		while ((next = getDirEntry(&fd, next)) != 0)
	j	.L423		#
.L424:
# basic.c:2002: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.w	r1, [r13 + (-32)]	# _5, fd.dir_entry.filesize
# basic.c:2002: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-16)]	# _6, fd.curr_cluster
# basic.c:2002: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r2, r0	# _7, _6
# basic.c:2002: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-36)]	# _8, fd.dir_entry.first_cluster
# basic.c:2002: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r3, r0	# _9, _8
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (16)], r3	#, _9
	st.w	[r0 + (12)], r2	#, _7
	st.w	[r0 + (8)], r1	#, _5
	mov.w	r1, r13	# tmp47,
	add.w	r1, -64 #111	# tmp47,
	st.w	[r0 + (4)], r1	#, tmp47
	mov.w	r1, .LC32	# tmp48,
	st.w	[r0], r1	#, tmp48
	call	printf		#
.L423:
# basic.c:2000: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# next.404_10, next
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (4)], r1	#, next.404_10
	mov.w	r1, r13	# tmp50,
	add.w	r1, -64 #111	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	getDirEntry		#
# basic.c:2000: 		while ((next = getDirEntry(&fd, next)) != 0)
	st.w	[r13 + (-8)], r0	# next, _11
# basic.c:2000: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# tmp51, next
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L424		#
	j	.L419		#
.L422:
# basic.c:2007: 		to_print_len = 0;
	xor.w	r0, r0	# tmp53
	st.w	[to_print_len], r0	# to_print_len, tmp53
# basic.c:2008: 		browseUrl("/dir", "", server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp54,
	mov.w	r1, my_callback	# tmp55,
	st.w	[r0 + (16)], r1	#, tmp55
	xor.w	r1, r1	# tmp56
	st.w	[r0 + (12)], r1	#, tmp56
	mov.w	r1, server_ip	# tmp57,
	st.w	[r0 + (8)], r1	#, tmp57
	mov.w	r1, .LC33	# tmp58,
	st.w	[r0 + (4)], r1	#, tmp58
	mov.w	r1, .LC34	# tmp59,
	st.w	[r0], r1	#, tmp59
	call	browseUrl		#
# basic.c:2009: 		delay(100);
	mov.w	r1, sp	# tmp60,
	mov.w	r0, 100	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	delay		#
# basic.c:2010: 		for (i = 0; i < 1000; i++) {
	xor.w	r0, r0	# tmp62
	st.w	[r13 + (-4)], r0	# i, tmp62
# basic.c:2010: 		for (i = 0; i < 1000; i++) {
	j	.L425		#
.L427:
# basic.c:2013: 			if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.405_12, to_print_len
# basic.c:2013: 			if (to_print_len > 0) {
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# to_print_len.405_12, tmp63
	jses	.L426		#
# basic.c:2014: 				to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.406_13, to_print_len
# basic.c:2014: 				to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp65,
	add.w	r0, r1 #222	# tmp64, tmp65
	xor.w	r1, r1	# tmp66
	st.b	[r0], r1	# to_print_buff, tmp66
# basic.c:2015: 				printf("%s\n", to_print_buff);
	mov.w	r1, sp	# tmp67,
	mov.w	r0, to_print_buff	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	puts		#
# basic.c:2016: 				to_print_len = 0;
	xor.w	r0, r0	# tmp69
	st.w	[to_print_len], r0	# to_print_len, tmp69
# basic.c:2017: 				return;
	j	.L419		#
.L426:
# basic.c:2019: 			  delay(10);
	mov.w	r1, sp	# tmp70,
	mov.w	r0, 10	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	delay		#
# basic.c:2010: 		for (i = 0; i < 1000; i++) {
	ld.w	r0, [r13 + (-4)]	# tmp73, i
	add.w	r0, 1 #111	# tmp72,
	st.w	[r13 + (-4)], r0	# i, tmp72
.L425:
# basic.c:2010: 		for (i = 0; i < 1000; i++) {
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	mov.w	r0, 999	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jses	.L427		#
# basic.c:2021: 		printf("NETWORK TIMEOUT\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC35	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
.L419:
# basic.c:2023: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_dir, .-exec_dir
	.section	.rodata
	.p2align	2
.LC36:
	.string	"Invalid video mode: %d\n"
	.text
	.p2align	1
	.global	exec_mode
	.type	exec_mode, @function
exec_mode:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:2029: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2030: 	expression_error = 0;
	xor.w	r0, r0	# tmp29
	st.b	[expression_error], r0	# expression_error, tmp29
# basic.c:2031: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# value,
# basic.c:2032: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.407_1, expression_error
# basic.c:2032: 	if (expression_error)
	sex.b	r1, r0	# tmp30, expression_error.407_1
	xor.w	r0, r0	# tmp31
	cmp.w	r1, r0	# tmp30, tmp31
	jz	.L429		#
# basic.c:2034: 		qwhat();
	call	qwhat		#
# basic.c:2035: 		return;
	j	.L428		#
.L429:
# basic.c:2038: 	switch ((int)value)
	ld.w	r0, [r13 + (-4)]	# tmp32, value
	st.w	[sp], r0	#, tmp32
	call	__fixsfsi		#
# basic.c:2038: 	switch ((int)value)
	mov.w	r1, 2	# tmp33,
	cmp.w	r0, r1	# _2, tmp33
	jz	.L431		#
	mov.w	r1, 2	# tmp34,
	cmp.w	r0, r1	# _2, tmp34
	jgs	.L432		#
	xor.w	r1, r1	# tmp35
	cmp.w	r0, r1	# _2, tmp35
	jz	.L433		#
	mov.w	r1, 1	# tmp36,
	cmp.w	r0, r1	# _2, tmp36
	jz	.L434		#
	j	.L432		#
.L433:
# basic.c:2041: 			video_mode(0);
	mov.w	r1, sp	# tmp37,
	xor.w	r0, r0	# tmp38
	st.w	[r1], r0	#, tmp38
	call	video_mode		#
# basic.c:2043: 			break;
	j	.L428		#
.L434:
# basic.c:2045: 			video_mode(1);
	mov.w	r1, sp	# tmp39,
	mov.w	r0, 1	# tmp40,
	st.w	[r1], r0	#, tmp40
	call	video_mode		#
# basic.c:2047: 			break;
	j	.L428		#
.L431:
# basic.c:2049: 			video_mode(2);
	mov.w	r1, sp	# tmp41,
	mov.w	r0, 2	# tmp42,
	st.w	[r1], r0	#, tmp42
	call	video_mode		#
# basic.c:2051: 			break;
	j	.L428		#
.L432:
# basic.c:2053: 			video_mode(0);
	mov.w	r1, sp	# tmp43,
	xor.w	r0, r0	# tmp44
	st.w	[r1], r0	#, tmp44
	call	video_mode		#
# basic.c:2055: 			printf("Invalid video mode: %d\n", value);
	ld.w	r0, [r13 + (-4)]	# tmp45, value
	st.w	[sp], r0	#, tmp45
	call	__extendsfdf2		#
	mov.w	r2, r0	# _3,
	mov.w	r3, r1	# _3, tmp2
	mov.w	r0, sp	# tmp46,
	mov.w	r1, r2	# tmp47, _3
	st.w	[r0 + (4)], r1	#, tmp47
	mov.w	r1, r3	# tmp48, _3
	st.w	[r0 + (8)], r1	#, tmp48
	mov.w	r1, .LC36	# tmp49,
	st.w	[r0], r1	#, tmp49
	call	printf		#
.L428:
# basic.c:2057: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_mode, .-exec_mode
	.p2align	1
	.global	exec_plot
	.type	exec_plot, @function
exec_plot:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	sub.w	sp, 36 #111	#,
# basic.c:2063: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2064: 	expression_error = 0;
	xor.w	r0, r0	# tmp40
	st.b	[expression_error], r0	# expression_error, tmp40
# basic.c:2065: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# x,
# basic.c:2066: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.408_1, expression_error
# basic.c:2066: 	if (expression_error)
	sex.b	r1, r0	# tmp41, expression_error.408_1
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L436		#
# basic.c:2068: 		qwhat();
	call	qwhat		#
# basic.c:2069: 		return;
	j	.L435		#
.L436:
# basic.c:2071: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2072: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.409_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.409_2
# basic.c:2072: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp43, _3
	mov.w	r0, 44	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L438		#
# basic.c:2074: 		qwhat();
	call	qwhat		#
# basic.c:2075: 		return;
	j	.L435		#
.L438:
# basic.c:2079: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.410_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2081: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2082: 	expression_error = 0;
	xor.w	r0, r0	# tmp45
	st.b	[expression_error], r0	# expression_error, tmp45
# basic.c:2083: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# y,
# basic.c:2084: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.411_6, expression_error
# basic.c:2084: 	if (expression_error)
	sex.b	r1, r0	# tmp46, expression_error.411_6
	xor.w	r0, r0	# tmp47
	cmp.w	r1, r0	# tmp46, tmp47
	jz	.L439		#
# basic.c:2086: 		qwhat();
	call	qwhat		#
# basic.c:2087: 		return;
	j	.L435		#
.L439:
# basic.c:2089: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2090: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.412_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.412_7
# basic.c:2090: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp48, _8
	mov.w	r0, 44	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L440		#
# basic.c:2092: 		qwhat();
	call	qwhat		#
# basic.c:2093: 		return;
	j	.L435		#
.L440:
# basic.c:2097: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.413_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2099: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2100: 	expression_error = 0;
	xor.w	r0, r0	# tmp50
	st.b	[expression_error], r0	# expression_error, tmp50
# basic.c:2101: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# c,
# basic.c:2102: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.414_11, expression_error
# basic.c:2102: 	if (expression_error)
	sex.b	r1, r0	# tmp51, expression_error.414_11
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jz	.L441		#
# basic.c:2104: 		qwhat();
	call	qwhat		#
# basic.c:2105: 		return;
	j	.L435		#
.L441:
# basic.c:2108: 	pixel((int)x, (int)y, (int)c);
	ld.w	r0, [r13 + (-12)]	# tmp53, x
	st.w	[sp], r0	#, tmp53
	call	__fixsfsi		#
	mov.w	r6, r0	# _12,
	ld.w	r0, [r13 + (-16)]	# tmp54, y
	st.w	[sp], r0	#, tmp54
	call	__fixsfsi		#
	mov.w	r7, r0	# _13,
	ld.w	r0, [r13 + (-20)]	# tmp55, c
	st.w	[sp], r0	#, tmp55
	call	__fixsfsi		#
	mov.w	r1, r0	# _14,
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r1	#, _14
	st.w	[r0 + (4)], r7	#, _13
	st.w	[r0], r6	#, _12
	call	pixel		#
.L435:
# basic.c:2109: }
	mov.w	r12, r13	#,
	sub.w	r12, 8 #111	#,
	mov.w	sp, r12	#,
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_plot, .-exec_plot
	.p2align	1
	.global	exec_line
	.type	exec_line, @function
exec_line:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	push	r8		#
	push	r9		#
	sub.w	sp, 44 #111	#,
# basic.c:2115: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2116: 	expression_error = 0;
	xor.w	r0, r0	# tmp52
	st.b	[expression_error], r0	# expression_error, tmp52
# basic.c:2117: 	x1 = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# x1,
# basic.c:2118: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.415_1, expression_error
# basic.c:2118: 	if (expression_error)
	sex.b	r1, r0	# tmp53, expression_error.415_1
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L443		#
# basic.c:2120: 		qwhat();
	call	qwhat		#
# basic.c:2121: 		return;
	j	.L442		#
.L443:
# basic.c:2123: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2124: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.416_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.416_2
# basic.c:2124: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp55, _3
	mov.w	r0, 44	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L445		#
# basic.c:2126: 		qwhat();
	call	qwhat		#
# basic.c:2127: 		return;
	j	.L442		#
.L445:
# basic.c:2131: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.417_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2133: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2134: 	expression_error = 0;
	xor.w	r0, r0	# tmp57
	st.b	[expression_error], r0	# expression_error, tmp57
# basic.c:2135: 	y1 = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# y1,
# basic.c:2136: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.418_6, expression_error
# basic.c:2136: 	if (expression_error)
	sex.b	r1, r0	# tmp58, expression_error.418_6
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L446		#
# basic.c:2138: 		qwhat();
	call	qwhat		#
# basic.c:2139: 		return;
	j	.L442		#
.L446:
# basic.c:2142: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2143: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.419_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.419_7
# basic.c:2143: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp60, _8
	mov.w	r0, 44	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L447		#
# basic.c:2145: 		qwhat();
	call	qwhat		#
# basic.c:2146: 		return;
	j	.L442		#
.L447:
# basic.c:2150: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.420_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2152: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2153: 	expression_error = 0;
	xor.w	r0, r0	# tmp62
	st.b	[expression_error], r0	# expression_error, tmp62
# basic.c:2154: 	x2 = expression();	
	call	expression		#
	st.w	[r13 + (-28)], r0	# x2,
# basic.c:2155: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.421_11, expression_error
# basic.c:2155: 	if (expression_error)
	sex.b	r1, r0	# tmp63, expression_error.421_11
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L448		#
# basic.c:2157: 		qwhat();
	call	qwhat		#
# basic.c:2158: 		return;
	j	.L442		#
.L448:
# basic.c:2160: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2161: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.422_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.422_12
# basic.c:2161: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp65, _13
	mov.w	r0, 44	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jz	.L449		#
# basic.c:2163: 		qwhat();
	call	qwhat		#
# basic.c:2164: 		return;
	j	.L442		#
.L449:
# basic.c:2168: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.423_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2170: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2171: 	expression_error = 0;
	xor.w	r0, r0	# tmp67
	st.b	[expression_error], r0	# expression_error, tmp67
# basic.c:2172: 	y2 = expression();	
	call	expression		#
	st.w	[r13 + (-32)], r0	# y2,
# basic.c:2173: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.424_16, expression_error
# basic.c:2173: 	if (expression_error)
	sex.b	r1, r0	# tmp68, expression_error.424_16
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L450		#
# basic.c:2175: 		qwhat();
	call	qwhat		#
# basic.c:2176: 		return;
	j	.L442		#
.L450:
# basic.c:2178: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2179: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.425_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.425_17
# basic.c:2179: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp70, _18
	mov.w	r0, 44	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L451		#
# basic.c:2181: 		qwhat();
	call	qwhat		#
# basic.c:2182: 		return;
	j	.L442		#
.L451:
# basic.c:2186: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.426_19, txtpos
	add.w	r0, 1 #111	# _20,
	st.w	[txtpos], r0	# txtpos, _20
# basic.c:2189: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2190: 	expression_error = 0;
	xor.w	r0, r0	# tmp72
	st.b	[expression_error], r0	# expression_error, tmp72
# basic.c:2191: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-36)], r0	# c,
# basic.c:2192: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.427_21, expression_error
# basic.c:2192: 	if (expression_error)
	sex.b	r1, r0	# tmp73, expression_error.427_21
	xor.w	r0, r0	# tmp74
	cmp.w	r1, r0	# tmp73, tmp74
	jz	.L452		#
# basic.c:2194: 		qwhat();
	call	qwhat		#
# basic.c:2195: 		return;
	j	.L442		#
.L452:
# basic.c:2198: 	line((int)x1, (int)y1, (int)x2, (int)y2, (int)c);
	ld.w	r0, [r13 + (-20)]	# tmp75, x1
	st.w	[sp], r0	#, tmp75
	call	__fixsfsi		#
	mov.w	r6, r0	# _22,
	ld.w	r0, [r13 + (-24)]	# tmp76, y1
	st.w	[sp], r0	#, tmp76
	call	__fixsfsi		#
	mov.w	r7, r0	# _23,
	ld.w	r0, [r13 + (-28)]	# tmp77, x2
	st.w	[sp], r0	#, tmp77
	call	__fixsfsi		#
	mov.w	r8, r0	# _24,
	ld.w	r0, [r13 + (-32)]	# tmp78, y2
	st.w	[sp], r0	#, tmp78
	call	__fixsfsi		#
	mov.w	r9, r0	# _25,
	ld.w	r0, [r13 + (-36)]	# tmp79, c
	st.w	[sp], r0	#, tmp79
	call	__fixsfsi		#
	mov.w	r1, r0	# _26,
	mov.w	r0, sp	# tmp80,
	st.w	[r0 + (16)], r1	#, _26
	st.w	[r0 + (12)], r9	#, _25
	st.w	[r0 + (8)], r8	#, _24
	st.w	[r0 + (4)], r7	#, _23
	st.w	[r0], r6	#, _22
	call	line		#
.L442:
# basic.c:2199: }
	mov.w	r12, r13	#,
	sub.w	r12, 16 #111	#,
	mov.w	sp, r12	#,
	pop	r9		#
	pop	r8		#
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_line, .-exec_line
	.p2align	1
	.global	exec_circle
	.type	exec_circle, @function
exec_circle:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	push	r8		#
	sub.w	sp, 40 #111	#,
# basic.c:2206: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2207: 	expression_error = 0;
	xor.w	r0, r0	# tmp46
	st.b	[expression_error], r0	# expression_error, tmp46
# basic.c:2208: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# x,
# basic.c:2209: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.428_1, expression_error
# basic.c:2209: 	if (expression_error)
	sex.b	r1, r0	# tmp47, expression_error.428_1
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# tmp47, tmp48
	jz	.L454		#
# basic.c:2211: 		qwhat();
	call	qwhat		#
# basic.c:2212: 		return;
	j	.L453		#
.L454:
# basic.c:2214: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2215: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.429_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.429_2
# basic.c:2215: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp49, _3
	mov.w	r0, 44	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jz	.L456		#
# basic.c:2217: 		qwhat();
	call	qwhat		#
# basic.c:2218: 		return;
	j	.L453		#
.L456:
# basic.c:2222: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.430_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2224: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2225: 	expression_error = 0;
	xor.w	r0, r0	# tmp51
	st.b	[expression_error], r0	# expression_error, tmp51
# basic.c:2226: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# y,
# basic.c:2227: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.431_6, expression_error
# basic.c:2227: 	if (expression_error)
	sex.b	r1, r0	# tmp52, expression_error.431_6
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L457		#
# basic.c:2229: 		qwhat();
	call	qwhat		#
# basic.c:2230: 		return;
	j	.L453		#
.L457:
# basic.c:2232: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2233: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.432_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.432_7
# basic.c:2233: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp54, _8
	mov.w	r0, 44	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L458		#
# basic.c:2235: 		qwhat();
	call	qwhat		#
# basic.c:2236: 		return;
	j	.L453		#
.L458:
# basic.c:2240: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.433_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2242: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2243: 	expression_error = 0;
	xor.w	r0, r0	# tmp56
	st.b	[expression_error], r0	# expression_error, tmp56
# basic.c:2244: 	r = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# r,
# basic.c:2245: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.434_11, expression_error
# basic.c:2245: 	if (expression_error)
	sex.b	r1, r0	# tmp57, expression_error.434_11
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L459		#
# basic.c:2247: 		qwhat();
	call	qwhat		#
# basic.c:2248: 		return;
	j	.L453		#
.L459:
# basic.c:2250: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2251: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.435_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.435_12
# basic.c:2251: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp59, _13
	mov.w	r0, 44	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L460		#
# basic.c:2253: 		qwhat();
	call	qwhat		#
# basic.c:2254: 		return;
	j	.L453		#
.L460:
# basic.c:2258: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.436_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2260: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2261: 	expression_error = 0;
	xor.w	r0, r0	# tmp61
	st.b	[expression_error], r0	# expression_error, tmp61
# basic.c:2262: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-28)], r0	# c,
# basic.c:2263: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.437_16, expression_error
# basic.c:2263: 	if (expression_error)
	sex.b	r1, r0	# tmp62, expression_error.437_16
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jz	.L461		#
# basic.c:2265: 		qwhat();
	call	qwhat		#
# basic.c:2266: 		return;
	j	.L453		#
.L461:
# basic.c:2269: 	circle((int)x, (int)y, (int)r, (int)c);
	ld.w	r0, [r13 + (-16)]	# tmp64, x
	st.w	[sp], r0	#, tmp64
	call	__fixsfsi		#
	mov.w	r6, r0	# _17,
	ld.w	r0, [r13 + (-20)]	# tmp65, y
	st.w	[sp], r0	#, tmp65
	call	__fixsfsi		#
	mov.w	r7, r0	# _18,
	ld.w	r0, [r13 + (-24)]	# tmp66, r
	st.w	[sp], r0	#, tmp66
	call	__fixsfsi		#
	mov.w	r8, r0	# _19,
	ld.w	r0, [r13 + (-28)]	# tmp67, c
	st.w	[sp], r0	#, tmp67
	call	__fixsfsi		#
	mov.w	r1, r0	# _20,
	mov.w	r0, sp	# tmp68,
	st.w	[r0 + (12)], r1	#, _20
	st.w	[r0 + (8)], r8	#, _19
	st.w	[r0 + (4)], r7	#, _18
	st.w	[r0], r6	#, _17
	call	circle		#
.L453:
# basic.c:2270: }
	mov.w	r12, r13	#,
	sub.w	r12, 12 #111	#,
	mov.w	sp, r12	#,
	pop	r8		#
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_circle, .-exec_circle
	.p2align	1
	.global	exec_draw
	.type	exec_draw, @function
exec_draw:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	sub.w	sp, 140 #111	#,
# basic.c:2278: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2279: 	expression_error = 0;
	xor.w	r0, r0	# tmp63
	st.b	[expression_error], r0	# expression_error, tmp63
# basic.c:2280: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# x,
# basic.c:2281: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.438_1, expression_error
# basic.c:2281: 	if (expression_error)
	sex.b	r1, r0	# tmp64, expression_error.438_1
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L463		#
# basic.c:2283: 		qwhat();
	call	qwhat		#
# basic.c:2284: 		return;
	j	.L462		#
.L463:
# basic.c:2286: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2287: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.439_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.439_2
# basic.c:2287: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp66, _3
	mov.w	r0, 44	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L465		#
# basic.c:2289: 		qwhat();
	call	qwhat		#
# basic.c:2290: 		return;
	j	.L462		#
.L465:
# basic.c:2294: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.440_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2296: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2297: 	expression_error = 0;
	xor.w	r0, r0	# tmp68
	st.b	[expression_error], r0	# expression_error, tmp68
# basic.c:2298: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# y,
# basic.c:2299: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.441_6, expression_error
# basic.c:2299: 	if (expression_error)
	sex.b	r1, r0	# tmp69, expression_error.441_6
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jz	.L466		#
# basic.c:2301: 		qwhat();
	call	qwhat		#
# basic.c:2302: 		return;
	j	.L462		#
.L466:
# basic.c:2304: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2305: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.442_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.442_7
# basic.c:2305: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp71, _8
	mov.w	r0, 44	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jz	.L467		#
# basic.c:2307: 		qwhat();
	call	qwhat		#
# basic.c:2308: 		return;
	j	.L462		#
.L467:
# basic.c:2312: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.443_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2314: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2315: 	expression_error = 0;
	xor.w	r0, r0	# tmp73
	st.b	[expression_error], r0	# expression_error, tmp73
# basic.c:2316: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# c,
# basic.c:2317: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.444_11, expression_error
# basic.c:2317: 	if (expression_error)
	sex.b	r1, r0	# tmp74, expression_error.444_11
	xor.w	r0, r0	# tmp75
	cmp.w	r1, r0	# tmp74, tmp75
	jz	.L468		#
# basic.c:2319: 		qwhat();
	call	qwhat		#
# basic.c:2320: 		return;
	j	.L462		#
.L468:
# basic.c:2322: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2323: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.445_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.445_12
# basic.c:2323: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp76, _13
	mov.w	r0, 44	# tmp77,
	cmp.w	r1, r0	# tmp76, tmp77
	jz	.L469		#
# basic.c:2325: 		qwhat();
	call	qwhat		#
# basic.c:2326: 		return;
	j	.L462		#
.L469:
# basic.c:2330: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.446_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2332: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2333: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.447_16, txtpos
	ld.b	r0, [r0]	# _17, *txtpos.447_16
# basic.c:2333: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp78, _17
	mov.w	r0, 34	# tmp79,
	cmp.w	r1, r0	# tmp78, tmp79
	jz	.L470		#
# basic.c:2333: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.448_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.448_18
# basic.c:2333: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp80, _19
	mov.w	r0, 39	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jz	.L470		#
# basic.c:2335: 		qwhat();
	call	qwhat		#
# basic.c:2336: 		return;
	j	.L462		#
.L470:
# basic.c:2338: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.449_20, txtpos
	add.w	r0, 1 #111	# _21,
	st.w	[txtpos], r0	# txtpos, _21
# basic.c:2339: 	i = 0;
	xor.w	r0, r0	# tmp82
	st.w	[r13 + (-12)], r0	# i, tmp82
# basic.c:2340: 	while (*txtpos != NL && *txtpos != 0)
	j	.L471		#
.L475:
# basic.c:2342: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.450_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.450_22
# basic.c:2342: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp83, _23
	mov.w	r0, 34	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L472		#
# basic.c:2342: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.451_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.451_24
# basic.c:2342: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp85, _25
	mov.w	r0, 39	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jnz	.L473		#
.L472:
# basic.c:2344: 			s[i] = 0;
	mov.w	r0, r13	# tmp87,
	add.w	r0, -124 #111	# tmp87,
	ld.w	r1, [r13 + (-12)]	# tmp89, i
	add.w	r0, r1 #222	# tmp88, tmp89
	xor.w	r1, r1	# tmp90
	st.b	[r0], r1	# s, tmp90
# basic.c:2345: 			break;
	j	.L474		#
.L473:
# basic.c:2347: 		s[i] = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.452_26, txtpos
	ld.b	r0, [r0]	# _27, *txtpos.452_26
	mov.w	r1, r0	# _28, _27
# basic.c:2347: 		s[i] = *txtpos;
	mov.w	r0, r13	# tmp91,
	add.w	r0, -124 #111	# tmp91,
	ld.w	r2, [r13 + (-12)]	# tmp93, i
	add.w	r0, r2 #222	# tmp92, tmp93
	st.b	[r0], r1	# s, _28
# basic.c:2348: 		i++;
	ld.w	r0, [r13 + (-12)]	# tmp95, i
	add.w	r0, 1 #111	# tmp94,
	st.w	[r13 + (-12)], r0	# i, tmp94
# basic.c:2349: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.453_29, txtpos
	add.w	r0, 1 #111	# _30,
	st.w	[txtpos], r0	# txtpos, _30
.L471:
# basic.c:2340: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.454_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.454_31
# basic.c:2340: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp96, _32
	mov.w	r0, 10	# tmp97,
	cmp.w	r1, r0	# tmp96, tmp97
	jz	.L474		#
# basic.c:2340: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.455_33, txtpos
	ld.b	r0, [r0]	# _34, *txtpos.455_33
# basic.c:2340: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp98, _34
	xor.w	r0, r0	# tmp99
	cmp.w	r1, r0	# tmp98, tmp99
	jnz	.L475		#
.L474:
# basic.c:2351: 	draw((int)x, (int)y, (int)c, s);
	ld.w	r0, [r13 + (-16)]	# tmp100, x
	st.w	[sp], r0	#, tmp100
	call	__fixsfsi		#
	mov.w	r6, r0	# _35,
	ld.w	r0, [r13 + (-20)]	# tmp101, y
	st.w	[sp], r0	#, tmp101
	call	__fixsfsi		#
	mov.w	r7, r0	# _36,
	ld.w	r0, [r13 + (-24)]	# tmp102, c
	st.w	[sp], r0	#, tmp102
	call	__fixsfsi		#
	mov.w	r2, r0	# _37,
	mov.w	r0, sp	# tmp103,
	mov.w	r1, r13	# tmp104,
	add.w	r1, -124 #111	# tmp104,
	st.w	[r0 + (12)], r1	#, tmp104
	st.w	[r0 + (8)], r2	#, _37
	st.w	[r0 + (4)], r7	#, _36
	st.w	[r0], r6	#, _35
	call	draw		#
.L462:
# basic.c:2352: }
	mov.w	r12, r13	#,
	sub.w	r12, 8 #111	#,
	mov.w	sp, r12	#,
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_draw, .-exec_draw
	.section	.rodata
	.p2align	2
.LC37:
	.string	"END"
	.p2align	2
.LC38:
	.string	"MEM"
	.p2align	2
.LC39:
	.string	"LET I = 5"
	.p2align	2
.LC40:
	.string	"I = 5"
	.p2align	2
.LC41:
	.string	"INPUT A"
	.p2align	2
.LC42:
	.string	"PRINT A"
	.p2align	2
.LC43:
	.string	"? A"
	.p2align	2
.LC44:
	.string	"FOR I = 1 TO 10 STEP 2"
	.p2align	2
.LC45:
	.string	"NEXT I"
	.p2align	2
.LC46:
	.string	"IF I = 5 GOTO 100"
	.p2align	2
.LC47:
	.string	"GOTO 100"
	.p2align	2
.LC48:
	.string	"GOSUB 100"
	.p2align	2
.LC49:
	.string	"RETURN"
	.p2align	2
.LC50:
	.string	"LOAD P1.BAS"
	.p2align	2
.LC51:
	.string	"SAVE P2.BAS"
	.p2align	2
.LC52:
	.string	"MODE 0 (MODE 1, MODE 2)"
	.p2align	2
.LC53:
	.string	"PLOT 100, 100, color"
	.p2align	2
.LC54:
	.string	"LINE 100, 100, 200, 200, color"
	.p2align	2
.LC55:
	.string	"CIRCLE 100, 100, 50, color"
	.p2align	2
.LC56:
	.string	"DRAW 100, 100, color, 'TEXT'"
	.p2align	2
.LC57:
	.string	"A = KEY()"
	.p2align	2
.LC58:
	.string	"A = ISKEY()"
	.p2align	2
.LC59:
	.string	"DELAY 1000"
	.p2align	2
.LC60:
	.string	"CURSOR 10, 10"
	.p2align	2
.LC61:
	.string	"EXEC TEST.BIN"
	.p2align	2
.LC62:
	.string	"SYS 0"
	.p2align	2
.LC63:
	.string	"DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)"
	.p2align	2
.LC64:
	.string	"TIME"
	.p2align	2
.LC65:
	.string	"ETH 1 or ETH 0"
	.text
	.p2align	1
	.global	exec_help
	.type	exec_help, @function
exec_help:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2356: 	printf("END\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC37	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:2357: 	printf("MEM\n");
	mov.w	r1, sp	# tmp28,
	mov.w	r0, .LC38	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	puts		#
# basic.c:2358: 	printf("LET I = 5\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC39	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
# basic.c:2359: 	printf("I = 5\n");
	mov.w	r1, sp	# tmp32,
	mov.w	r0, .LC40	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	puts		#
# basic.c:2360: 	printf("INPUT A\n");
	mov.w	r1, sp	# tmp34,
	mov.w	r0, .LC41	# tmp35,
	st.w	[r1], r0	#, tmp35
	call	puts		#
# basic.c:2361: 	printf("PRINT A\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC42	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:2362: 	printf("? A\n");
	mov.w	r1, sp	# tmp38,
	mov.w	r0, .LC43	# tmp39,
	st.w	[r1], r0	#, tmp39
	call	puts		#
# basic.c:2363: 	printf("FOR I = 1 TO 10 STEP 2\n");
	mov.w	r1, sp	# tmp40,
	mov.w	r0, .LC44	# tmp41,
	st.w	[r1], r0	#, tmp41
	call	puts		#
# basic.c:2364: 	printf("NEXT I\n");
	mov.w	r1, sp	# tmp42,
	mov.w	r0, .LC45	# tmp43,
	st.w	[r1], r0	#, tmp43
	call	puts		#
# basic.c:2365: 	printf("IF I = 5 GOTO 100\n");
	mov.w	r1, sp	# tmp44,
	mov.w	r0, .LC46	# tmp45,
	st.w	[r1], r0	#, tmp45
	call	puts		#
# basic.c:2366: 	printf("GOTO 100\n");
	mov.w	r1, sp	# tmp46,
	mov.w	r0, .LC47	# tmp47,
	st.w	[r1], r0	#, tmp47
	call	puts		#
# basic.c:2367: 	printf("GOSUB 100\n");
	mov.w	r1, sp	# tmp48,
	mov.w	r0, .LC48	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	puts		#
# basic.c:2368: 	printf("RETURN\n");
	mov.w	r1, sp	# tmp50,
	mov.w	r0, .LC49	# tmp51,
	st.w	[r1], r0	#, tmp51
	call	puts		#
# basic.c:2369: 	printf("LOAD P1.BAS\n");
	mov.w	r1, sp	# tmp52,
	mov.w	r0, .LC50	# tmp53,
	st.w	[r1], r0	#, tmp53
	call	puts		#
# basic.c:2370: 	printf("SAVE P2.BAS\n");
	mov.w	r1, sp	# tmp54,
	mov.w	r0, .LC51	# tmp55,
	st.w	[r1], r0	#, tmp55
	call	puts		#
# basic.c:2371: 	printf("MODE 0 (MODE 1, MODE 2)\n");
	mov.w	r1, sp	# tmp56,
	mov.w	r0, .LC52	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	puts		#
# basic.c:2372: 	printf("PLOT 100, 100, color\n");
	mov.w	r1, sp	# tmp58,
	mov.w	r0, .LC53	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	puts		#
# basic.c:2373: 	printf("LINE 100, 100, 200, 200, color\n");
	mov.w	r1, sp	# tmp60,
	mov.w	r0, .LC54	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	puts		#
# basic.c:2374: 	printf("CIRCLE 100, 100, 50, color\n");
	mov.w	r1, sp	# tmp62,
	mov.w	r0, .LC55	# tmp63,
	st.w	[r1], r0	#, tmp63
	call	puts		#
# basic.c:2375: 	printf("DRAW 100, 100, color, 'TEXT'\n");
	mov.w	r1, sp	# tmp64,
	mov.w	r0, .LC56	# tmp65,
	st.w	[r1], r0	#, tmp65
	call	puts		#
# basic.c:2376: 	printf("A = KEY()\n");
	mov.w	r1, sp	# tmp66,
	mov.w	r0, .LC57	# tmp67,
	st.w	[r1], r0	#, tmp67
	call	puts		#
# basic.c:2377: 	printf("A = ISKEY()\n");
	mov.w	r1, sp	# tmp68,
	mov.w	r0, .LC58	# tmp69,
	st.w	[r1], r0	#, tmp69
	call	puts		#
# basic.c:2378: 	printf("DELAY 1000\n");
	mov.w	r1, sp	# tmp70,
	mov.w	r0, .LC59	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	puts		#
# basic.c:2379: 	printf("CURSOR 10, 10\n");
	mov.w	r1, sp	# tmp72,
	mov.w	r0, .LC60	# tmp73,
	st.w	[r1], r0	#, tmp73
	call	puts		#
# basic.c:2380: 	printf("EXEC TEST.BIN\n");
	mov.w	r1, sp	# tmp74,
	mov.w	r0, .LC61	# tmp75,
	st.w	[r1], r0	#, tmp75
	call	puts		#
# basic.c:2381: 	printf("SYS 0\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC62	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
# basic.c:2382: 	printf("DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)\n");
	mov.w	r1, sp	# tmp78,
	mov.w	r0, .LC63	# tmp79,
	st.w	[r1], r0	#, tmp79
	call	puts		#
# basic.c:2383: 	printf("TIME\n");
	mov.w	r1, sp	# tmp80,
	mov.w	r0, .LC64	# tmp81,
	st.w	[r1], r0	#, tmp81
	call	puts		#
# basic.c:2384: 	printf("ETH 1 or ETH 0\n");
	mov.w	r1, sp	# tmp82,
	mov.w	r0, .LC65	# tmp83,
	st.w	[r1], r0	#, tmp83
	call	puts		#
# basic.c:2385: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_help, .-exec_help
	.p2align	1
	.global	exec_delay
	.type	exec_delay, @function
exec_delay:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:2391: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2392: 	expression_error = 0;
	xor.w	r0, r0	# tmp28
	st.b	[expression_error], r0	# expression_error, tmp28
# basic.c:2393: 	d = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# d,
# basic.c:2394: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.456_1, expression_error
# basic.c:2394: 	if (expression_error)
	sex.b	r1, r0	# tmp29, expression_error.456_1
	xor.w	r0, r0	# tmp30
	cmp.w	r1, r0	# tmp29, tmp30
	jz	.L479		#
# basic.c:2396: 		qwhat();
	call	qwhat		#
# basic.c:2397: 		return;
	j	.L478		#
.L479:
# basic.c:2399: 	if (d <= 0)
	xor.w	r0, r0	# tmp31
	st.w	[sp + (4)], r0	#, tmp31
	ld.w	r0, [r13 + (-4)]	# tmp32, d
	st.w	[sp], r0	#, tmp32
	call	__lesf2		#
	mov.w	r1, r0	# tmp33,
	xor.w	r0, r0	# tmp34
	cmp.w	r1, r0	# tmp33, tmp34
	jses	.L483		#
# basic.c:2401: 	delay((int)d);
	ld.w	r0, [r13 + (-4)]	# tmp35, d
	st.w	[sp], r0	#, tmp35
	call	__fixsfsi		#
	mov.w	r1, r0	# _2,
	mov.w	r0, sp	# tmp36,
	st.w	[r0], r1	#, _2
	call	delay		#
	j	.L478		#
.L483:
# basic.c:2400: 		return;
	nop	
.L478:
# basic.c:2402: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_delay, .-exec_delay
	.p2align	1
	.global	exec_cursor
	.type	exec_cursor, @function
exec_cursor:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 32 #111	#,
# basic.c:2408: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2409: 	expression_error = 0;
	xor.w	r0, r0	# tmp34
	st.b	[expression_error], r0	# expression_error, tmp34
# basic.c:2410: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# x,
# basic.c:2411: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.457_1, expression_error
# basic.c:2411: 	if (expression_error)
	sex.b	r1, r0	# tmp35, expression_error.457_1
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jz	.L485		#
# basic.c:2413: 		qwhat();
	call	qwhat		#
# basic.c:2414: 		return;
	j	.L484		#
.L485:
# basic.c:2416: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2417: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.458_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.458_2
# basic.c:2417: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp37, _3
	mov.w	r0, 44	# tmp38,
	cmp.w	r1, r0	# tmp37, tmp38
	jz	.L487		#
# basic.c:2419: 		qwhat();
	call	qwhat		#
# basic.c:2420: 		return;
	j	.L484		#
.L487:
# basic.c:2424: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.459_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2426: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2427: 	expression_error = 0;
	xor.w	r0, r0	# tmp39
	st.b	[expression_error], r0	# expression_error, tmp39
# basic.c:2428: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# y,
# basic.c:2429: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.460_6, expression_error
# basic.c:2429: 	if (expression_error)
	sex.b	r1, r0	# tmp40, expression_error.460_6
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L488		#
# basic.c:2431: 		qwhat();
	call	qwhat		#
# basic.c:2432: 		return;
	j	.L484		#
.L488:
# basic.c:2435: 	xy((int)x, (int)y);
	ld.w	r0, [r13 + (-8)]	# tmp42, x
	st.w	[sp], r0	#, tmp42
	call	__fixsfsi		#
	mov.w	r6, r0	# _7,
	ld.w	r0, [r13 + (-12)]	# tmp43, y
	st.w	[sp], r0	#, tmp43
	call	__fixsfsi		#
	mov.w	r1, r0	# _8,
	mov.w	r0, sp	# tmp44,
	st.w	[r0 + (4)], r1	#, _8
	st.w	[r0], r6	#, _7
	call	xy		#
.L484:
# basic.c:2436: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_cursor, .-exec_cursor
	.p2align	1
	.global	exec_poke
	.type	exec_poke, @function
exec_poke:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	sub.w	sp, 32 #111	#,
# basic.c:2442: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2443: 	expression_error = 0;
	xor.w	r0, r0	# tmp38
	st.b	[expression_error], r0	# expression_error, tmp38
# basic.c:2444: 	addr = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# addr,
# basic.c:2445: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.461_1, expression_error
# basic.c:2445: 	if (expression_error)
	sex.b	r1, r0	# tmp39, expression_error.461_1
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L490		#
# basic.c:2447: 		qwhat();
	call	qwhat		#
# basic.c:2448: 		return;
	j	.L489		#
.L490:
# basic.c:2450: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2451: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.462_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.462_2
# basic.c:2451: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp41, _3
	mov.w	r0, 44	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L492		#
# basic.c:2453: 		qwhat();
	call	qwhat		#
# basic.c:2454: 		return;
	j	.L489		#
.L492:
# basic.c:2458: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.463_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2460: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2461: 	expression_error = 0;
	xor.w	r0, r0	# tmp43
	st.b	[expression_error], r0	# expression_error, tmp43
# basic.c:2462: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# value,
# basic.c:2463: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.464_6, expression_error
# basic.c:2463: 	if (expression_error)
	sex.b	r1, r0	# tmp44, expression_error.464_6
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L493		#
# basic.c:2465: 		qwhat();
	call	qwhat		#
# basic.c:2466: 		return;
	j	.L489		#
.L493:
# basic.c:2469: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r0, [r13 + (-16)]	# tmp46, value
	st.w	[sp], r0	#, tmp46
	call	__fixsfsi		#
	mov.w	r7, r0	# _7,
# basic.c:2469: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r6, [buffer]	# buffer.465_8, buffer
# basic.c:2469: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r0, [r13 + (-12)]	# tmp47, addr
	st.w	[sp], r0	#, tmp47
	call	__fixsfsi		#
	mov.w	r1, r0	# _10, _9
# basic.c:2469: 	buffer[(int)addr] = (int)value & 0XFF;
	mov.w	r0, r6	# _11, buffer.465_8
	add.w	r0, r1 #222	# _11, _10
# basic.c:2469: 	buffer[(int)addr] = (int)value & 0XFF;
	mov.w	r1, r7	# _12, _7
	st.b	[r0], r1	# *_11, _12
.L489:
# basic.c:2470: }
	mov.w	r12, r13	#,
	sub.w	r12, 8 #111	#,
	mov.w	sp, r12	#,
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_poke, .-exec_poke
	.section	.rodata
	.p2align	2
.LC66:
	.string	"SD card init failed!"
	.p2align	2
.LC67:
	.string	"SD card volume failed!"
	.text
	.p2align	1
	.global	init_sd
	.type	init_sd, @function
init_sd:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2474: 	if(!sdcard_init())
	call	sdcard_init		#
# basic.c:2474: 	if(!sdcard_init())
	zex.b	r1, r0	# tmp28, _1
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jnz	.L495		#
# basic.c:2476: 		printf("SD card init failed!\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC66	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
# basic.c:2477: 		return;
	j	.L494		#
.L495:
# basic.c:2479: 	if (!volume_init(1))
	mov.w	r1, sp	# tmp32,
	mov.w	r0, 1	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	volume_init		#
# basic.c:2479: 	if (!volume_init(1))
	zex.b	r1, r0	# tmp34, _2
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jnz	.L494		#
# basic.c:2481: 		printf("SD card volume failed!\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC67	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
.L494:
# basic.c:2483: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_sd, .-init_sd
	.section	.rodata
	.p2align	2
.LC68:
	.string	"Loading program: [%s]\n"
	.p2align	2
.LC69:
	.string	"File open failed for file: [%s]\n"
	.p2align	2
.LC70:
	.string	"Error loading program %s\n"
	.text
	.p2align	1
	.global	exec_exec
	.type	exec_exec, @function
exec_exec:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 160 #111	#,
# basic.c:2490: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2491: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.466_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.466_1
# basic.c:2491: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp75, _2
	mov.w	r0, 64	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jse	.L498		#
# basic.c:2491: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.467_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.467_3
# basic.c:2491: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp77, _4
	mov.w	r0, 90	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jse	.L499		#
.L498:
# basic.c:2493: 		qwhat();
	call	qwhat		#
# basic.c:2494: 		return;
	j	.L497		#
.L499:
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	j	.L501		#
.L503:
# basic.c:2501: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.468_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.469_6, i
	add.w	r0, r1 #222	# _7, i.469_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:2501: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp80,
	add.w	r0, -60 #111	# tmp80,
	ld.w	r2, [r13 + (-4)]	# tmp82, i
	add.w	r0, r2 #222	# tmp81, tmp82
	st.b	[r0], r1	# s, _9
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [r13 + (-4)]	# tmp84, i
	add.w	r0, 1 #111	# tmp83,
	st.w	[r13 + (-4)], r0	# i, tmp83
.L501:
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.470_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.471_11, i
	add.w	r0, r1 #222	# _12, i.471_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp85, _13
	mov.w	r0, 10	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jz	.L502		#
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.472_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.473_15, i
	add.w	r0, r1 #222	# _16, i.473_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp87, _17
	mov.w	r0, 13	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L502		#
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.474_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.475_19, i
	add.w	r0, r1 #222	# _20, i.475_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp89, _21
	mov.w	r0, 32	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jz	.L502		#
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.476_22, txtpos
	ld.w	r1, [r13 + (-4)]	# i.477_23, i
	add.w	r0, r1 #222	# _24, i.477_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp91, _25
	mov.w	r0, 9	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L502		#
# basic.c:2498: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r1, [r13 + (-4)]	# tmp93, i
	mov.w	r0, 31	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jses	.L503		#
.L502:
# basic.c:2503: 	s[i] = 0;
	mov.w	r0, r13	# tmp95,
	add.w	r0, -60 #111	# tmp95,
	ld.w	r1, [r13 + (-4)]	# tmp97, i
	add.w	r0, r1 #222	# tmp96, tmp97
	xor.w	r1, r1	# tmp98
	st.b	[r0], r1	# s, tmp98
# basic.c:2505: 	i = 0;
	xor.w	r0, r0	# tmp99
	st.w	[r13 + (-4)], r0	# i, tmp99
# basic.c:2506: 	printf("Loading program: [%s]\n", s);
	mov.w	r0, sp	# tmp100,
	mov.w	r1, r13	# tmp101,
	add.w	r1, -60 #111	# tmp101,
	st.w	[r0 + (4)], r1	#, tmp101
	mov.w	r1, .LC68	# tmp102,
	st.w	[r0], r1	#, tmp102
	call	printf		#
# basic.c:2507: 	if (drive == 0)
	ld.b	r0, [drive]	# drive.478_26, drive
# basic.c:2507: 	if (drive == 0)
	sex.b	r1, r0	# tmp103, drive.478_26
	xor.w	r0, r0	# tmp104
	cmp.w	r1, r0	# tmp103, tmp104
	jnz	.L504		#
# basic.c:2511: load_again:		
	nop	
.L505:
# basic.c:2512: 		if(file_open(s, &fd, O_READ))
	mov.w	r0, sp	# tmp105,
	xor.w	r1, r1	# tmp106
	st.w	[r0 + (8)], r1	#, tmp106
	mov.w	r1, r13	# tmp107,
	add.w	r1, -136 #111	# tmp107,
	st.w	[r0 + (4)], r1	#, tmp107
	mov.w	r1, r13	# tmp108,
	add.w	r1, -60 #111	# tmp108,
	st.w	[r0], r1	#, tmp108
	call	file_open		#
# basic.c:2512: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp109, _27
	xor.w	r0, r0	# tmp110
	cmp.w	r1, r0	# tmp109, tmp110
	jz	.L506		#
# basic.c:2514: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-104)]	# _28, fd.dir_entry.filesize
# basic.c:2514: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-20)], r0	# len, _28
# basic.c:2515: 			int total = 0;
	xor.w	r0, r0	# tmp111
	st.w	[r13 + (-8)], r0	# total, tmp111
# basic.c:2517: 			while(total < len)
	j	.L507		#
.L510:
# basic.c:2519: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.479_29, buffer
	ld.w	r0, [r13 + (-8)]	# total.480_30, total
	add.w	r1, r0 #222	# _31, total.480_30
	mov.w	r0, sp	# tmp112,
	mov.w	r2, 512	# tmp113,
	st.w	[r0 + (8)], r2	#, tmp113
	st.w	[r0 + (4)], r1	#, _31
	mov.w	r1, r13	# tmp114,
	add.w	r1, -136 #111	# tmp114,
	st.w	[r0], r1	#, tmp114
	call	file_read		#
# basic.c:2519: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp115, _32
	st.w	[r13 + (-24)], r0	# current, tmp115
# basic.c:2520: 				if (current > 0) {
	ld.w	r1, [r13 + (-24)]	# tmp116, current
	xor.w	r0, r0	# tmp117
	cmp.w	r1, r0	# tmp116, tmp117
	jses	.L508		#
# basic.c:2521: 					total += current;
	ld.w	r0, [r13 + (-8)]	# tmp119, total
	ld.w	r1, [r13 + (-24)]	# tmp120, current
	add.w	r0, r1 #222	# tmp118, tmp120
	st.w	[r13 + (-8)], r0	# total, tmp118
# basic.c:2522: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-8)]	# total.481_33, total
# basic.c:2522: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-104)]	# _34, fd.dir_entry.filesize
# basic.c:2522: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _35, _34
# basic.c:2522: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp121,
	mul.w	r1, r0	# _36, tmp121
# basic.c:2522: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp122,
	div.w	r1, r0	# _37, tmp122
mov.w	r1, r14	# _37
# basic.c:2522: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp123
	cmp.w	r1, r0	# _37, tmp123
	jnz	.L507		#
# basic.c:2523: 						printf("#");
	mov.w	r1, sp	# tmp124,
	mov.w	r0, 35	# tmp125,
	st.w	[r1], r0	#, tmp125
	call	putchar		#
	j	.L507		#
.L508:
# basic.c:2526: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp126,
	mov.w	r0, .LC17	# tmp127,
	st.w	[r1], r0	#, tmp127
	call	puts		#
	j	.L497		#
.L507:
# basic.c:2517: 			while(total < len)
	ld.w	r1, [r13 + (-8)]	# tmp128, total
	ld.w	r0, [r13 + (-20)]	# tmp129, len
	cmp.w	r1, r0	# tmp128, tmp129
	jss	.L510		#
# basic.c:2531: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.482_38, buffer
	ld.w	r1, [r13 + (-20)]	# len.483_39, len
	add.w	r0, r1 #222	# _40, len.483_39
# basic.c:2531: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp130
	st.b	[r0], r1	# *_40, tmp130
# basic.c:2532: 			i = len;
	ld.w	r0, [r13 + (-20)]	# tmp131, len
	st.w	[r13 + (-4)], r0	# i, tmp131
# basic.c:2536: 			strcpy(fileName, s);
	mov.w	r0, sp	# tmp132,
	mov.w	r1, r13	# tmp133,
	add.w	r1, -60 #111	# tmp133,
	st.w	[r0 + (4)], r1	#, tmp133
	mov.w	r1, r13	# tmp134,
	add.w	r1, -80 #111	# tmp134,
	st.w	[r0], r1	#, tmp134
	call	strcpy		#
# basic.c:2537: 			int sum = 0;
	xor.w	r0, r0	# tmp135
	st.w	[r13 + (-12)], r0	# sum, tmp135
# basic.c:2538: 			for (int j = 0; j < i; j++) {
	xor.w	r0, r0	# tmp136
	st.w	[r13 + (-16)], r0	# j, tmp136
# basic.c:2538: 			for (int j = 0; j < i; j++) {
	j	.L511		#
.L512:
# basic.c:2539: 				sum += buffer[j];
	ld.w	r0, [buffer]	# buffer.484_41, buffer
	ld.w	r1, [r13 + (-16)]	# j.485_42, j
	add.w	r0, r1 #222	# _43, j.485_42
	ld.b	r0, [r0]	# _44, *_43
	sex.b	r1, r0	# _45, _44
# basic.c:2539: 				sum += buffer[j];
	ld.w	r0, [r13 + (-12)]	# tmp138, sum
	add.w	r0, r1 #222	# tmp137, _45
	st.w	[r13 + (-12)], r0	# sum, tmp137
# basic.c:2538: 			for (int j = 0; j < i; j++) {
	ld.w	r0, [r13 + (-16)]	# tmp140, j
	add.w	r0, 1 #111	# tmp139,
	st.w	[r13 + (-16)], r0	# j, tmp139
.L511:
# basic.c:2538: 			for (int j = 0; j < i; j++) {
	ld.w	r1, [r13 + (-16)]	# tmp141, j
	ld.w	r0, [r13 + (-4)]	# tmp142, i
	cmp.w	r1, r0	# tmp141, tmp142
	jss	.L512		#
# basic.c:2541: 			printf("\nSum: %d\n", sum);
	mov.w	r0, sp	# tmp143,
	ld.w	r1, [r13 + (-12)]	# tmp144, sum
	st.w	[r0 + (4)], r1	#, tmp144
	mov.w	r1, .LC18	# tmp145,
	st.w	[r0], r1	#, tmp145
	call	printf		#
	j	.L513		#
.L506:
# basic.c:2545: 			printf("File open failed for file: [%s]\n", s);
	mov.w	r0, sp	# tmp146,
	mov.w	r1, r13	# tmp147,
	add.w	r1, -60 #111	# tmp147,
	st.w	[r0 + (4)], r1	#, tmp147
	mov.w	r1, .LC69	# tmp148,
	st.w	[r0], r1	#, tmp148
	call	printf		#
# basic.c:2546: 			return;
	j	.L497		#
.L504:
# basic.c:2549: 	else if (drive == 2)
	ld.b	r0, [drive]	# drive.486_46, drive
# basic.c:2549: 	else if (drive == 2)
	sex.b	r1, r0	# tmp149, drive.486_46
	mov.w	r0, 2	# tmp150,
	cmp.w	r1, r0	# tmp149, tmp150
	jnz	.L514		#
# basic.c:2552: 		asm ("irq\t0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 2552 "basic.c" 1
	irq	0

# basic.c:2553: 		delay(100);
	mov.w	r1, sp	# tmp151,
	mov.w	r0, 100	# tmp152,
	st.w	[r1], r0	#, tmp152
	call	delay		#
# basic.c:2554: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.487_47, buffer
	mov.w	r0, sp	# tmp153,
	mov.w	r2, r13	# tmp154,
	add.w	r2, -60 #111	# tmp154,
	st.w	[r0 + (4)], r2	#, tmp154
	st.w	[r0], r1	#, buffer.487_47
	call	uart_read_file		#
	st.w	[r13 + (-4)], r0	# i,
# basic.c:2555: 		asm ("irq\t1\n"); // IRQ 0000, xxx0 <- turn on timer irq
# 2555 "basic.c" 1
	irq	1

	j	.L513		#
.L514:
# basic.c:2558: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.488_48, buffer
	mov.w	r0, sp	# tmp155,
	mov.w	r2, r13	# tmp156,
	add.w	r2, -60 #111	# tmp156,
	st.w	[r0 + (4)], r2	#, tmp156
	st.w	[r0], r1	#, buffer.488_48
	call	eth_read_file		#
	st.w	[r13 + (-4)], r0	# i,
.L513:
# basic.c:2560: 	if (i > 0) 
	ld.w	r1, [r13 + (-4)]	# tmp157, i
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jses	.L515		#
# basic.c:2563: 		int old_color = color;
	ld.w	r0, [color]	# tmp159, color
	st.w	[r13 + (-28)], r0	# old_color, tmp159
# basic.c:2564: 		asm("mov.w r0, 197632\ncallr r0\n"); //asm("call 197632\n");
# 2564 "basic.c" 1
	mov.w r0, 197632
callr r0

# basic.c:2565: 		init_stdio();
	call	init_stdio		#
# basic.c:2566: 		video_mode(0);
	mov.w	r1, sp	# tmp160,
	xor.w	r0, r0	# tmp161
	st.w	[r1], r0	#, tmp161
	call	video_mode		#
# basic.c:2567: 		color = old_color;
	ld.w	r0, [r13 + (-28)]	# tmp162, old_color
	st.w	[color], r0	# color, tmp162
# basic.c:2570: 		uart_init_files();
	call	uart_init_files		#
# basic.c:2571: 		if (eth)
	ld.w	r1, [eth]	# eth.489_49, eth
# basic.c:2571: 		if (eth)
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# eth.489_49, tmp163
	jz	.L497		#
# basic.c:2573: 			init_spi();
	call	init_spi		#
# basic.c:2574: 			init_net();
	call	init_net		#
# basic.c:2575: 			init_sd();
	call	init_sd		#
	j	.L497		#
.L515:
# basic.c:2580: 		printf("Error loading program %s\n", s);
	mov.w	r0, sp	# tmp164,
	mov.w	r1, r13	# tmp165,
	add.w	r1, -60 #111	# tmp165,
	st.w	[r0 + (4)], r1	#, tmp165
	mov.w	r1, .LC70	# tmp166,
	st.w	[r0], r1	#, tmp166
	call	printf		#
.L497:
# basic.c:2582: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_exec, .-exec_exec
	.section	.rodata
	.p2align	2
.LC71:
	.string	"call %d\n"
	.text
	.p2align	1
	.global	exec_sys
	.type	exec_sys, @function
exec_sys:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# basic.c:2589: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2590: 	expression_error = 0;
	xor.w	r0, r0	# tmp29
	st.b	[expression_error], r0	# expression_error, tmp29
# basic.c:2591: 	addr = (int)expression();	
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:2591: 	addr = (int)expression();	
	mov.w	r0, r1	# tmp30, _1
	st.w	[sp], r0	#, tmp30
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# addr, tmp31
# basic.c:2592: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.490_2, expression_error
# basic.c:2592: 	if (expression_error)
	sex.b	r1, r0	# tmp32, expression_error.490_2
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L519		#
# basic.c:2594: 		qwhat();
	call	qwhat		#
	j	.L518		#
.L519:
# basic.c:2597: 	printf("call %d\n", addr);
	mov.w	r0, sp	# tmp34,
	ld.w	r1, [r13 + (-4)]	# tmp35, addr
	st.w	[r0 + (4)], r1	#, tmp35
	mov.w	r1, .LC71	# tmp36,
	st.w	[r0], r1	#, tmp36
	call	printf		#
# basic.c:2598: 	addr += 197632;
	ld.w	r0, [r13 + (-4)]	# tmp38, addr
	mov.w	r1, 197632	# tmp39,
	add.w	r0, r1 #222	# tmp37, tmp39
	st.w	[r13 + (-4)], r0	# addr, tmp37
# basic.c:2599: 	int old_color = color;
	ld.w	r0, [color]	# tmp40, color
	st.w	[r13 + (-8)], r0	# old_color, tmp40
# basic.c:2600: 	asm("ld.w r0, [r13 + (-4)]\ncallr r0\n");
# 2600 "basic.c" 1
	ld.w r0, [r13 + (-4)]
callr r0

# basic.c:2601: 	init_stdio();
	call	init_stdio		#
# basic.c:2602: 	video_mode(0);
	mov.w	r1, sp	# tmp41,
	xor.w	r0, r0	# tmp42
	st.w	[r1], r0	#, tmp42
	call	video_mode		#
# basic.c:2603: 	color = old_color;
	ld.w	r0, [r13 + (-8)]	# tmp43, old_color
	st.w	[color], r0	# color, tmp43
# basic.c:2606: 	uart_init_files();
	call	uart_init_files		#
# basic.c:2607: 	if (eth)
	ld.w	r1, [eth]	# eth.491_3, eth
# basic.c:2607: 	if (eth)
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# eth.491_3, tmp44
	jz	.L518		#
# basic.c:2609: 		init_spi();
	call	init_spi		#
# basic.c:2610: 		init_net();
	call	init_net		#
# basic.c:2611: 		init_sd();
	call	init_sd		#
.L518:
# basic.c:2613: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_sys, .-exec_sys
	.section	.rodata
	.p2align	2
.LC72:
	.string	"DRIVE: %d\n"
	.p2align	2
.LC73:
	.string	"Invalid drive number: %d. Can be from 0 to 2.\n"
	.text
	.p2align	1
	.global	exec_drive
	.type	exec_drive, @function
exec_drive:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2617: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2618: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.492_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.492_1
# basic.c:2618: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp44, _2
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L523		#
# basic.c:2620: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.493_3, drive
	sex.b	r1, r0	# _4, drive.493_3
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, .LC72	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	printf		#
# basic.c:2621: 		return;
	j	.L522		#
.L523:
# basic.c:2623: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.494_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.494_5
# basic.c:2623: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _6
	mov.w	r0, 47	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L525		#
# basic.c:2623: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.495_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.495_7
# basic.c:2623: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp50, _8
	mov.w	r0, 57	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jse	.L526		#
.L525:
# basic.c:2625: 		qwhat();
	call	qwhat		#
# basic.c:2626: 		return;
	j	.L522		#
.L526:
# basic.c:2628: 	drive = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.496_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.496_9
# basic.c:2628: 	drive = *txtpos - '0';
	add.w	r0, -48 #111	# tmp52,
# basic.c:2628: 	drive = *txtpos - '0';
	st.b	[drive], r0	# drive, _12
# basic.c:2629: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.497_13, drive
# basic.c:2629: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp53, drive.497_13
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jss	.L527		#
# basic.c:2629: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.498_14, drive
# basic.c:2629: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp55, drive.498_14
	mov.w	r0, 2	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jgs	.L527		#
# basic.c:2630: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.499_15, drive
	sex.b	r1, r0	# _16, drive.499_15
	mov.w	r0, sp	# tmp57,
	st.w	[r0 + (4)], r1	#, _16
	mov.w	r1, .LC72	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	printf		#
	j	.L522		#
.L527:
# basic.c:2633: 		printf("Invalid drive number: %d. Can be from 0 to 2.\n", drive);
	ld.b	r0, [drive]	# drive.500_17, drive
	sex.b	r1, r0	# _18, drive.500_17
	mov.w	r0, sp	# tmp59,
	st.w	[r0 + (4)], r1	#, _18
	mov.w	r1, .LC73	# tmp60,
	st.w	[r0], r1	#, tmp60
	call	printf		#
.L522:
# basic.c:2636: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_drive, .-exec_drive
	.section	.rodata
	.p2align	2
.LC74:
	.string	"ETHERNET: %d\n"
	.p2align	2
.LC75:
	.string	"Invalid ethernet value: %d. Can be 0 or 1.\n"
	.text
	.p2align	1
	.global	exec_eth
	.type	exec_eth, @function
exec_eth:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2640: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2641: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.501_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.501_1
# basic.c:2641: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp42, _2
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L529		#
# basic.c:2643: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.502_3, eth
	mov.w	r0, sp	# tmp44,
	st.w	[r0 + (4)], r1	#, eth.502_3
	mov.w	r1, .LC74	# tmp45,
	st.w	[r0], r1	#, tmp45
	call	printf		#
# basic.c:2644: 		return;
	j	.L528		#
.L529:
# basic.c:2646: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.503_4, txtpos
	ld.b	r0, [r0]	# _5, *txtpos.503_4
# basic.c:2646: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp46, _5
	mov.w	r0, 47	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jse	.L531		#
# basic.c:2646: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.504_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.504_6
# basic.c:2646: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _7
	mov.w	r0, 57	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L532		#
.L531:
# basic.c:2648: 		qwhat();
	call	qwhat		#
# basic.c:2649: 		return;
	j	.L528		#
.L532:
# basic.c:2651: 	eth = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.505_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.505_8
	zex.b	r0, r0	# _10, _9
# basic.c:2651: 	eth = *txtpos - '0';
	add.w	r0, -48 #111	# _11,
# basic.c:2651: 	eth = *txtpos - '0';
	st.w	[eth], r0	# eth, _11
# basic.c:2652: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.506_12, eth
# basic.c:2652: 	if (eth >= 0 && eth <= 1) 
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# eth.506_12, tmp50
	jss	.L533		#
# basic.c:2652: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.507_13, eth
# basic.c:2652: 	if (eth >= 0 && eth <= 1) 
	mov.w	r0, 1	# tmp51,
	cmp.w	r1, r0	# eth.507_13, tmp51
	jgs	.L533		#
# basic.c:2654: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.508_14, eth
	mov.w	r0, sp	# tmp52,
	st.w	[r0 + (4)], r1	#, eth.508_14
	mov.w	r1, .LC74	# tmp53,
	st.w	[r0], r1	#, tmp53
	call	printf		#
# basic.c:2656: 		if (eth == 1) 
	ld.w	r1, [eth]	# eth.509_15, eth
# basic.c:2656: 		if (eth == 1) 
	mov.w	r0, 1	# tmp54,
	cmp.w	r1, r0	# eth.509_15, tmp54
	jnz	.L534		#
# basic.c:2658: 			asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 2658 "basic.c" 1
	irq 1

# basic.c:2659: 			init_net();
	call	init_net		#
# basic.c:2656: 		if (eth == 1) 
	j	.L528		#
.L534:
# basic.c:2663: 			asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 2663 "basic.c" 1
	irq 0

# basic.c:2664: 			de_init_timer();
	call	de_init_timer		#
# basic.c:2656: 		if (eth == 1) 
	j	.L528		#
.L533:
# basic.c:2671: 		printf("Invalid ethernet value: %d. Can be 0 or 1.\n", eth);
	ld.w	r1, [eth]	# eth.510_16, eth
	mov.w	r0, sp	# tmp55,
	st.w	[r0 + (4)], r1	#, eth.510_16
	mov.w	r1, .LC75	# tmp56,
	st.w	[r0], r1	#, tmp56
	call	printf		#
.L528:
# basic.c:2673: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_eth, .-exec_eth
	.section	.rodata
	.p2align	2
.LC76:
	.string	"COLOR: %d\n"
	.text
	.p2align	1
	.global	exec_color
	.type	exec_color, @function
exec_color:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 60 #111	#,
# basic.c:2679: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2680: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.511_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.511_1
# basic.c:2680: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp31, _2
	mov.w	r0, 10	# tmp32,
	cmp.w	r1, r0	# tmp31, tmp32
	jnz	.L537		#
# basic.c:2682: 		printf("COLOR: %d\n", color);
	ld.w	r1, [color]	# color.512_3, color
	mov.w	r0, sp	# tmp33,
	st.w	[r0 + (4)], r1	#, color.512_3
	mov.w	r1, .LC76	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	printf		#
# basic.c:2683: 		return;
	j	.L536		#
.L537:
# basic.c:2685: 	expression_error = 0;
	xor.w	r0, r0	# tmp35
	st.b	[expression_error], r0	# expression_error, tmp35
# basic.c:2686: 	int c = (int)expression();	
	call	expression		#
	mov.w	r1, r0	# _4,
# basic.c:2686: 	int c = (int)expression();	
	mov.w	r0, r1	# tmp36, _4
	st.w	[sp], r0	#, tmp36
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# c, tmp37
# basic.c:2687: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.513_5, expression_error
# basic.c:2687: 	if (expression_error)
	sex.b	r1, r0	# tmp38, expression_error.513_5
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L539		#
# basic.c:2689: 		qwhat();
	call	qwhat		#
# basic.c:2690: 		return;
	j	.L536		#
.L539:
# basic.c:2692: 	color = c;
	ld.w	r0, [r13 + (-4)]	# tmp40, c
	st.w	[color], r0	# color, tmp40
.L536:
# basic.c:2694: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_color, .-exec_color
	.global	__fixunssfsi
	.p2align	1
	.global	exec_dim
	.type	exec_dim, @function
exec_dim:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 32 #111	#,
# basic.c:2699: 	ignore_blanks();	
	call	ignore_blanks		#
# basic.c:2701: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.514_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.514_1
# basic.c:2701: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp75, _2
	mov.w	r0, 64	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jse	.L542		#
# basic.c:2701: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.515_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.515_3
# basic.c:2701: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp77, _4
	mov.w	r0, 90	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jg	.L542		#
# basic.c:2703: 			int varName = txtpos[0];
	ld.w	r0, [txtpos]	# txtpos.516_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.516_5
# basic.c:2703: 			int varName = txtpos[0];
	zex.b	r0, r0	# tmp79, _6
	st.w	[r13 + (-8)], r0	# varName, tmp79
# basic.c:2705: 			txtpos++; // (19)
	ld.w	r0, [txtpos]	# txtpos.517_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:2706: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:2708: 			if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.518_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.518_9
# basic.c:2708: 			if (*txtpos == '(')
	zex.b	r1, r0	# tmp80, _10
	mov.w	r0, 40	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L542		#
# basic.c:2710: 				txtpos++;  // 19)
	ld.w	r0, [txtpos]	# txtpos.519_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:2711: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:2713: 				expression_error = 0;
	xor.w	r0, r0	# tmp82
	st.b	[expression_error], r0	# expression_error, tmp82
# basic.c:2714: 				VAR dim = expression();
	call	expression		#
	st.w	[r13 + (-12)], r0	# dim,
# basic.c:2716: 				if (!expression_error && (*txtpos == ')'))
	ld.b	r0, [expression_error]	# expression_error.520_13, expression_error
# basic.c:2716: 				if (!expression_error && (*txtpos == ')'))
	sex.b	r1, r0	# tmp83, expression_error.520_13
	xor.w	r0, r0	# tmp84
	cmp.w	r1, r0	# tmp83, tmp84
	jnz	.L542		#
# basic.c:2716: 				if (!expression_error && (*txtpos == ')'))
	ld.w	r0, [txtpos]	# txtpos.521_14, txtpos
	ld.b	r0, [r0]	# _15, *txtpos.521_14
# basic.c:2716: 				if (!expression_error && (*txtpos == ')'))
	zex.b	r1, r0	# tmp85, _15
	mov.w	r0, 41	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jnz	.L542		#
# basic.c:2719: 					if (arrays_begin[varName-'A'] != NULL)
	ld.w	r0, [arrays_begin]	# arrays_begin.522_16, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.523_17, varName
	mov.w	r2, 1073741759	# tmp87,
	add.w	r1, r2 #222	# _18, tmp87
	mov.w	r2, 2	# tmp88,
	shl.w	r1, r2	# _19, tmp88
	add.w	r0, r1 #222	# _20, _19
	ld.w	r1, [r0]	# _21, *_20
# basic.c:2719: 					if (arrays_begin[varName-'A'] != NULL)
	xor.w	r0, r0	# tmp89
	cmp.w	r1, r0	# _21, tmp89
	jz	.L543		#
# basic.c:2721: 						free(arrays_begin[varName-'A']);
	ld.w	r0, [arrays_begin]	# arrays_begin.524_22, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.525_23, varName
	mov.w	r2, 1073741759	# tmp90,
	add.w	r1, r2 #222	# _24, tmp90
	mov.w	r2, 2	# tmp91,
	shl.w	r1, r2	# _25, tmp91
	add.w	r0, r1 #222	# _26, _25
# basic.c:2721: 						free(arrays_begin[varName-'A']);
	ld.w	r0, [r0]	# _27, *_26
	mov.w	r1, sp	# tmp92,
	st.w	[r1], r0	#, _27
	call	free		#
.L543:
# basic.c:2723: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	mov.w	r0, 1082130432	# tmp93,
	st.w	[sp + (4)], r0	#, tmp93
	ld.w	r0, [r13 + (-12)]	# tmp94, dim
	st.w	[sp], r0	#, tmp94
	call	__mulsf3		#
	mov.w	r1, r0	# tmp95,
	mov.w	r0, r1	# _28, tmp95
# basic.c:2723: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	st.w	[sp], r0	#, tmp96
	call	__fixunssfsi		#
	mov.w	r3, r0	# _29,
# basic.c:2723: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	ld.w	r1, [arrays_begin]	# arrays_begin.526_30, arrays_begin
	ld.w	r0, [r13 + (-8)]	# varName.527_31, varName
	mov.w	r2, 1073741759	# tmp97,
	add.w	r0, r2 #222	# _32, tmp97
	mov.w	r2, 2	# tmp98,
	shl.w	r0, r2	# _33, tmp98
	mov.w	r6, r1	# _34, arrays_begin.526_30
	add.w	r6, r0 #222	# _34, _33
# basic.c:2723: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	mov.w	r0, sp	# tmp99,
	st.w	[r0], r3	#, _29
	call	malloc		#
# basic.c:2723: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	st.w	[r6], r0	# *_34, _35
# basic.c:2724: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	ld.w	r0, [arrays_begin]	# arrays_begin.528_36, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.529_37, varName
	mov.w	r2, 1073741759	# tmp101,
	add.w	r1, r2 #222	# _38, tmp101
	mov.w	r2, 2	# tmp102,
	shl.w	r1, r2	# _39, tmp102
	add.w	r0, r1 #222	# _40, _39
# basic.c:2724: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	ld.w	r6, [r0]	# _41, *_40
# basic.c:2724: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	mov.w	r0, 1082130432	# tmp103,
	st.w	[sp + (4)], r0	#, tmp103
	ld.w	r0, [r13 + (-12)]	# tmp104, dim
	st.w	[sp], r0	#, tmp104
	call	__mulsf3		#
	mov.w	r1, r0	# tmp105,
	mov.w	r0, r1	# _42, tmp105
# basic.c:2724: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	st.w	[sp], r0	#, tmp106
	call	__fixsfsi		#
	mov.w	r1, r0	# _43,
	mov.w	r0, sp	# tmp107,
	st.w	[r0 + (8)], r1	#, _43
	xor.w	r1, r1	# tmp108
	st.w	[r0 + (4)], r1	#, tmp108
	st.w	[r0], r6	#, _41
	call	memset		#
# basic.c:2725: 					if (arrays_begin[varName-'A'] == NULL)
	ld.w	r0, [arrays_begin]	# arrays_begin.530_44, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.531_45, varName
	mov.w	r2, 1073741759	# tmp109,
	add.w	r1, r2 #222	# _46, tmp109
	mov.w	r2, 2	# tmp110,
	shl.w	r1, r2	# _47, tmp110
	add.w	r0, r1 #222	# _48, _47
	ld.w	r1, [r0]	# _49, *_48
# basic.c:2725: 					if (arrays_begin[varName-'A'] == NULL)
	xor.w	r0, r0	# tmp111
	cmp.w	r1, r0	# _49, tmp111
	jnz	.L546		#
# basic.c:2727: 						qsorry();
	call	qsorry		#
# basic.c:2728: 						return;
	j	.L541		#
.L542:
# basic.c:2735: 	qwhat();
	call	qwhat		#
	j	.L541		#
.L546:
# basic.c:2730: 					return;
	nop	
.L541:
# basic.c:2736: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_dim, .-exec_dim
	.section	.rodata
	.p2align	2
.LC77:
	.string	"No ethernet link available\n."
	.text
	.p2align	1
	.global	init_net
	.type	init_net, @function
init_net:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2740: 	if (init_tcpip()) 
	call	init_tcpip		#
	mov.w	r1, r0	# _1,
# basic.c:2740: 	if (init_tcpip()) 
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# _1, tmp29
	jz	.L548		#
# basic.c:2742: 		init_timer();
	call	init_timer		#
# basic.c:2743: 		return true;
	mov.w	r0, 1	# _2,
	j	.L549		#
.L548:
# basic.c:2745: 		printf("No ethernet link available\n.");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC77	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	printf		#
# basic.c:2746: 		eth = 0;
	xor.w	r0, r0	# tmp32
	st.w	[eth], r0	# eth, tmp32
# basic.c:2747: 		return false;
	xor.w	r0, r0	# _2
.L549:
# basic.c:2749: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_net, .-init_net
	.section	.rodata
	.p2align	2
.LC78:
	.string	"I cannot exit. I am the boss."
	.p2align	2
.LC79:
	.string	"Current millis: %d\n"
	.text
	.p2align	1
	.global	direct
	.type	direct, @function
direct:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2756: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.532_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.532_1
# basic.c:2756: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp49, _2
	mov.w	r0, 10	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jnz	.L551		#
# basic.c:2757: 		return 0;
	xor.w	r0, r0	# _20
	j	.L552		#
.L551:
# basic.c:2762: 	if (should_break())
	call	should_break		#
	mov.w	r1, r0	# _3,
# basic.c:2762: 	if (should_break())
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# _3, tmp51
	jz	.L553		#
# basic.c:2764: 		video_mode(0);
	mov.w	r1, sp	# tmp52,
	xor.w	r0, r0	# tmp53
	st.w	[r1], r0	#, tmp53
	call	video_mode		#
# basic.c:2765: 		return 0;
	xor.w	r0, r0	# _20
	j	.L552		#
.L553:
# basic.c:2768: 	scantable(keywords, 0, FUNC_ENUM_OFFSET - 1);
	mov.w	r0, sp	# tmp54,
	mov.w	r1, 41	# tmp55,
	st.w	[r0 + (8)], r1	#, tmp55
	xor.w	r1, r1	# tmp56
	st.w	[r0 + (4)], r1	#, tmp56
	mov.w	r1, keywords	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	scantable		#
# basic.c:2769: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.533_4, table_index
	sex.b	r0, r0	# _5, table_index.533_4
	mov.w	r1, 41	# tmp58,
	cmp.w	r0, r1	# _5, tmp58
	jz	.L554		#
	mov.w	r1, 41	# tmp59,
	cmp.w	r0, r1	# _5, tmp59
	jgs	.L555		#
	mov.w	r1, 40	# tmp60,
	cmp.w	r0, r1	# _5, tmp60
	jz	.L556		#
	mov.w	r1, 40	# tmp61,
	cmp.w	r0, r1	# _5, tmp61
	jgs	.L555		#
	mov.w	r1, 39	# tmp62,
	cmp.w	r0, r1	# _5, tmp62
	jz	.L557		#
	mov.w	r1, 39	# tmp63,
	cmp.w	r0, r1	# _5, tmp63
	jgs	.L555		#
	mov.w	r1, 38	# tmp64,
	cmp.w	r0, r1	# _5, tmp64
	jz	.L558		#
	mov.w	r1, 38	# tmp65,
	cmp.w	r0, r1	# _5, tmp65
	jgs	.L555		#
	mov.w	r1, 37	# tmp66,
	cmp.w	r0, r1	# _5, tmp66
	jgs	.L555		#
	mov.w	r1, 36	# tmp67,
	cmp.w	r0, r1	# _5, tmp67
	jges	.L600		#
	mov.w	r1, 35	# tmp68,
	cmp.w	r0, r1	# _5, tmp68
	jz	.L560		#
	mov.w	r1, 35	# tmp69,
	cmp.w	r0, r1	# _5, tmp69
	jgs	.L555		#
	mov.w	r1, 34	# tmp70,
	cmp.w	r0, r1	# _5, tmp70
	jz	.L561		#
	mov.w	r1, 34	# tmp71,
	cmp.w	r0, r1	# _5, tmp71
	jgs	.L555		#
	mov.w	r1, 33	# tmp72,
	cmp.w	r0, r1	# _5, tmp72
	jz	.L562		#
	mov.w	r1, 33	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jgs	.L555		#
	mov.w	r1, 32	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jz	.L563		#
	mov.w	r1, 32	# tmp75,
	cmp.w	r0, r1	# _5, tmp75
	jgs	.L555		#
	mov.w	r1, 31	# tmp76,
	cmp.w	r0, r1	# _5, tmp76
	jz	.L564		#
	mov.w	r1, 31	# tmp77,
	cmp.w	r0, r1	# _5, tmp77
	jgs	.L555		#
	mov.w	r1, 30	# tmp78,
	cmp.w	r0, r1	# _5, tmp78
	jz	.L565		#
	mov.w	r1, 30	# tmp79,
	cmp.w	r0, r1	# _5, tmp79
	jgs	.L555		#
	mov.w	r1, 29	# tmp80,
	cmp.w	r0, r1	# _5, tmp80
	jz	.L566		#
	mov.w	r1, 29	# tmp81,
	cmp.w	r0, r1	# _5, tmp81
	jgs	.L555		#
	mov.w	r1, 28	# tmp82,
	cmp.w	r0, r1	# _5, tmp82
	jz	.L567		#
	mov.w	r1, 28	# tmp83,
	cmp.w	r0, r1	# _5, tmp83
	jgs	.L555		#
	mov.w	r1, 27	# tmp84,
	cmp.w	r0, r1	# _5, tmp84
	jz	.L568		#
	mov.w	r1, 27	# tmp85,
	cmp.w	r0, r1	# _5, tmp85
	jgs	.L555		#
	mov.w	r1, 26	# tmp86,
	cmp.w	r0, r1	# _5, tmp86
	jz	.L569		#
	mov.w	r1, 26	# tmp87,
	cmp.w	r0, r1	# _5, tmp87
	jgs	.L555		#
	mov.w	r1, 25	# tmp88,
	cmp.w	r0, r1	# _5, tmp88
	jz	.L570		#
	mov.w	r1, 25	# tmp89,
	cmp.w	r0, r1	# _5, tmp89
	jgs	.L555		#
	mov.w	r1, 24	# tmp90,
	cmp.w	r0, r1	# _5, tmp90
	jz	.L571		#
	mov.w	r1, 24	# tmp91,
	cmp.w	r0, r1	# _5, tmp91
	jgs	.L555		#
	mov.w	r1, 23	# tmp92,
	cmp.w	r0, r1	# _5, tmp92
	jz	.L572		#
	mov.w	r1, 23	# tmp93,
	cmp.w	r0, r1	# _5, tmp93
	jgs	.L555		#
	mov.w	r1, 22	# tmp94,
	cmp.w	r0, r1	# _5, tmp94
	jz	.L573		#
	mov.w	r1, 22	# tmp95,
	cmp.w	r0, r1	# _5, tmp95
	jgs	.L555		#
	mov.w	r1, 21	# tmp96,
	cmp.w	r0, r1	# _5, tmp96
	jz	.L574		#
	mov.w	r1, 21	# tmp97,
	cmp.w	r0, r1	# _5, tmp97
	jgs	.L555		#
	mov.w	r1, 20	# tmp98,
	cmp.w	r0, r1	# _5, tmp98
	jz	.L575		#
	mov.w	r1, 20	# tmp99,
	cmp.w	r0, r1	# _5, tmp99
	jgs	.L555		#
	mov.w	r1, 19	# tmp100,
	cmp.w	r0, r1	# _5, tmp100
	jz	.L576		#
	mov.w	r1, 19	# tmp101,
	cmp.w	r0, r1	# _5, tmp101
	jgs	.L555		#
	mov.w	r1, 18	# tmp102,
	cmp.w	r0, r1	# _5, tmp102
	jz	.L577		#
	mov.w	r1, 18	# tmp103,
	cmp.w	r0, r1	# _5, tmp103
	jgs	.L555		#
	mov.w	r1, 17	# tmp104,
	cmp.w	r0, r1	# _5, tmp104
	jz	.L578		#
	mov.w	r1, 17	# tmp105,
	cmp.w	r0, r1	# _5, tmp105
	jgs	.L555		#
	mov.w	r1, 16	# tmp106,
	cmp.w	r0, r1	# _5, tmp106
	jgs	.L555		#
	mov.w	r1, 15	# tmp107,
	cmp.w	r0, r1	# _5, tmp107
	jges	.L579		#
	mov.w	r1, 14	# tmp108,
	cmp.w	r0, r1	# _5, tmp108
	jz	.L580		#
	mov.w	r1, 14	# tmp109,
	cmp.w	r0, r1	# _5, tmp109
	jgs	.L555		#
	mov.w	r1, 13	# tmp110,
	cmp.w	r0, r1	# _5, tmp110
	jz	.L581		#
	mov.w	r1, 13	# tmp111,
	cmp.w	r0, r1	# _5, tmp111
	jgs	.L555		#
	mov.w	r1, 12	# tmp112,
	cmp.w	r0, r1	# _5, tmp112
	jz	.L582		#
	mov.w	r1, 12	# tmp113,
	cmp.w	r0, r1	# _5, tmp113
	jgs	.L555		#
	mov.w	r1, 11	# tmp114,
	cmp.w	r0, r1	# _5, tmp114
	jz	.L583		#
	mov.w	r1, 11	# tmp115,
	cmp.w	r0, r1	# _5, tmp115
	jgs	.L555		#
	mov.w	r1, 10	# tmp116,
	cmp.w	r0, r1	# _5, tmp116
	jz	.L584		#
	mov.w	r1, 10	# tmp117,
	cmp.w	r0, r1	# _5, tmp117
	jgs	.L555		#
	mov.w	r1, 9	# tmp118,
	cmp.w	r0, r1	# _5, tmp118
	jz	.L585		#
	mov.w	r1, 9	# tmp119,
	cmp.w	r0, r1	# _5, tmp119
	jgs	.L555		#
	mov.w	r1, 8	# tmp120,
	cmp.w	r0, r1	# _5, tmp120
	jz	.L586		#
	mov.w	r1, 8	# tmp121,
	cmp.w	r0, r1	# _5, tmp121
	jgs	.L555		#
	mov.w	r1, 7	# tmp122,
	cmp.w	r0, r1	# _5, tmp122
	jz	.L587		#
	mov.w	r1, 7	# tmp123,
	cmp.w	r0, r1	# _5, tmp123
	jgs	.L555		#
	mov.w	r1, 6	# tmp124,
	cmp.w	r0, r1	# _5, tmp124
	jz	.L588		#
	mov.w	r1, 6	# tmp125,
	cmp.w	r0, r1	# _5, tmp125
	jgs	.L555		#
	mov.w	r1, 5	# tmp126,
	cmp.w	r0, r1	# _5, tmp126
	jz	.L589		#
	mov.w	r1, 5	# tmp127,
	cmp.w	r0, r1	# _5, tmp127
	jgs	.L555		#
	mov.w	r1, 4	# tmp128,
	cmp.w	r0, r1	# _5, tmp128
	jgs	.L555		#
	mov.w	r1, 3	# tmp129,
	cmp.w	r0, r1	# _5, tmp129
	jges	.L590		#
	xor.w	r1, r1	# tmp130
	cmp.w	r0, r1	# _5, tmp130
	jz	.L591		#
	xor.w	r1, r1	# tmp131
	cmp.w	r0, r1	# _5, tmp131
	jss	.L555		#
	mov.w	r1, r0	# _83, _82
	add.w	r1, -1 #111	# _83,
	mov.w	r0, 1	# tmp132,
	cmp.w	r1, r0	# _83, tmp132
	jg	.L555		#
	j	.L599		#
.L591:
# basic.c:2773: 		exec_mem();
	call	exec_mem		#
# basic.c:2774: 		return 0;
	xor.w	r0, r0	# _20
	j	.L552		#
.L599:
# basic.c:2778: 		printf("I cannot exit. I am the boss.\n");
	mov.w	r1, sp	# tmp133,
	mov.w	r0, .LC78	# tmp134,
	st.w	[r1], r0	#, tmp134
	call	puts		#
# basic.c:2779: 		break;
	j	.L593		#
.L590:
# basic.c:2782: 		exec_print();
	call	exec_print		#
# basic.c:2783: 		break;
	j	.L593		#
.L589:
# basic.c:2785: 		exec_list();
	call	exec_list		#
# basic.c:2786: 		break;
	j	.L593		#
.L588:
# basic.c:2788: 		current_line = program_start;
	ld.w	r0, [program_start]	# program_start.534_6, program_start
	st.w	[current_line], r0	# current_line, program_start.534_6
# basic.c:2789: 		exec_run();
	call	exec_run		#
# basic.c:2790: 		break;
	j	.L593		#
.L587:
# basic.c:2792: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.535_7, program_start
	st.w	[program_end], r0	# program_end, program_start.535_7
# basic.c:2793: 		break;
	j	.L593		#
.L586:
# basic.c:2795: 		assignment();
	call	assignment		#
# basic.c:2796: 		break;
	j	.L593		#
.L585:
# basic.c:2798: 		exec_if();
	call	exec_if		#
# basic.c:2799: 		break;
	j	.L593		#
.L584:
# basic.c:2801: 		expression_error = 0;
	xor.w	r0, r0	# tmp135
	st.b	[expression_error], r0	# expression_error, tmp135
# basic.c:2802: 		linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _8,
# basic.c:2802: 		linenum = expression();
	mov.w	r0, r1	# tmp136, _8
	st.w	[sp], r0	#, tmp136
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _9
# basic.c:2803: 		if (expression_error || *txtpos != NL)
	ld.b	r0, [expression_error]	# expression_error.536_10, expression_error
# basic.c:2803: 		if (expression_error || *txtpos != NL)
	sex.b	r1, r0	# tmp137, expression_error.536_10
	xor.w	r0, r0	# tmp138
	cmp.w	r1, r0	# tmp137, tmp138
	jnz	.L594		#
# basic.c:2803: 		if (expression_error || *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.537_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.537_11
# basic.c:2803: 		if (expression_error || *txtpos != NL)
	zex.b	r1, r0	# tmp139, _12
	mov.w	r0, 10	# tmp140,
	cmp.w	r1, r0	# tmp139, tmp140
	jz	.L595		#
.L594:
# basic.c:2804: 			qhow();
	call	qhow		#
.L595:
# basic.c:2805: 		current_line = findline();
	call	findline		#
# basic.c:2805: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _13
# basic.c:2806: 		return 2;
	mov.w	r0, 2	# _20,
	j	.L552		#
.L583:
# basic.c:2808: 		exec_for();
	call	exec_for		#
# basic.c:2809: 		break;
	j	.L593		#
.L582:
# basic.c:2811: 		exec_next();
	call	exec_next		#
# basic.c:2812: 		break;
	j	.L593		#
.L580:
# basic.c:2814: 		exec_gosub();
	call	exec_gosub		#
# basic.c:2815: 		break;
	j	.L593		#
.L581:
# basic.c:2817: 		if (!exec_return())
	call	exec_return		#
	mov.w	r1, r0	# _14,
# basic.c:2817: 		if (!exec_return())
	xor.w	r0, r0	# tmp141
	cmp.w	r1, r0	# _14, tmp141
	jnz	.L601		#
# basic.c:2818: 			return 1;
	mov.w	r0, 1	# _20,
	j	.L552		#
.L579:
# basic.c:2823: 		if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.538_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.538_15
# basic.c:2823: 		if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp142, _16
	mov.w	r0, 10	# tmp143,
	cmp.w	r1, r0	# tmp142, tmp143
	jz	.L597		#
# basic.c:2825: 			qwhat();
	call	qwhat		#
# basic.c:2829: 		break;
	j	.L593		#
.L597:
# basic.c:2828: 			current_line = program_end;
	ld.w	r0, [program_end]	# program_end.539_17, program_end
	st.w	[current_line], r0	# current_line, program_end.539_17
# basic.c:2829: 		break;
	j	.L593		#
.L578:
# basic.c:2831: 		exec_input();
	call	exec_input		#
# basic.c:2832: 		break;
	j	.L593		#
.L577:
# basic.c:2834: 		cls(color);
	ld.w	r0, [color]	# color.540_18, color
	mov.w	r1, sp	# tmp144,
	st.w	[r1], r0	#, color.540_18
	call	cls		#
# basic.c:2835: 		break;
	j	.L593		#
.L576:
# basic.c:2837: 		return exec_edit();
	call	exec_edit		#
	j	.L552		#
.L575:
# basic.c:2839: 		exec_load();
	call	exec_load		#
# basic.c:2840: 		break;
	j	.L593		#
.L574:
# basic.c:2842: 		exec_save();
	call	exec_save		#
# basic.c:2843: 		break;
	j	.L593		#
.L573:
# basic.c:2845: 		exec_dir();
	call	exec_dir		#
# basic.c:2846: 		break;
	j	.L593		#
.L572:
# basic.c:2848: 		exec_mode();
	call	exec_mode		#
# basic.c:2849: 		break;
	j	.L593		#
.L571:
# basic.c:2851: 		exec_plot();
	call	exec_plot		#
# basic.c:2852: 		break;
	j	.L593		#
.L570:
# basic.c:2854: 		exec_line();
	call	exec_line		#
# basic.c:2855: 		break;
	j	.L593		#
.L569:
# basic.c:2857: 		exec_circle();
	call	exec_circle		#
# basic.c:2858: 		break;
	j	.L593		#
.L568:
# basic.c:2860: 		exec_draw();
	call	exec_draw		#
# basic.c:2861: 		break;
	j	.L593		#
.L567:
# basic.c:2863: 		exec_help();
	call	exec_help		#
# basic.c:2864: 		break;
	j	.L593		#
.L566:
# basic.c:2866: 		exec_delay();
	call	exec_delay		#
# basic.c:2867: 		break;
	j	.L593		#
.L565:
# basic.c:2869: 		exec_cursor();
	call	exec_cursor		#
# basic.c:2870: 		break;
	j	.L593		#
.L564:
# basic.c:2872: 		exec_poke();
	call	exec_poke		#
# basic.c:2873: 		break;
	j	.L593		#
.L563:
# basic.c:2875: 		exec_exec();
	call	exec_exec		#
# basic.c:2876: 		break;
	j	.L593		#
.L562:
# basic.c:2878: 		exec_sys();
	call	exec_sys		#
# basic.c:2879: 		break;
	j	.L593		#
.L561:
# basic.c:2881: 		exec_drive();
	call	exec_drive		#
# basic.c:2882: 		break;
	j	.L593		#
.L560:
# basic.c:2884: 		printf("Current millis: %d\n", get_millis());
	call	get_millis		#
	mov.w	r1, r0	# _19,
	mov.w	r0, sp	# tmp145,
	st.w	[r0 + (4)], r1	#, _19
	mov.w	r1, .LC79	# tmp146,
	st.w	[r0], r1	#, tmp146
	call	printf		#
# basic.c:2885: 	break;
	j	.L593		#
.L558:
# basic.c:2890: 		exec_eth();
	call	exec_eth		#
# basic.c:2891: 		break;
	j	.L593		#
.L557:
# basic.c:2893: 		exec_color();
	call	exec_color		#
# basic.c:2894: 		break;
	j	.L593		#
.L556:
# basic.c:2896: 		exec_dim();
	call	exec_dim		#
# basic.c:2897: 		break;
	j	.L593		#
.L554:
# basic.c:2899: 		assignment();
	call	assignment		#
# basic.c:2900: 		break;
	j	.L593		#
.L555:
# basic.c:2902: 		return 0;
	xor.w	r0, r0	# _20
	j	.L552		#
.L600:
# basic.c:2888: 		break;
	nop	
	j	.L593		#
.L601:
# basic.c:2819: 		break;
	nop	
.L593:
# basic.c:2904: 	return 0;
	xor.w	r0, r0	# _20
.L552:
# basic.c:2905: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	direct, .-direct
	.p2align	1
	.global	init_K_API
	.type	init_K_API, @function
init_K_API:
	push	r13		#
	mov.w	r13, sp	#,
# basic.c:2908: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	mov.w	r1, cls	# cls.541_1,
# basic.c:2908: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.542_2, K_API_STDIO
# basic.c:2908: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	add.w	r1, 4 #111	# _3,
# basic.c:2908: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	st.w	[r0], r1	# *K_API_STDIO.542_2, _3
# basic.c:2909: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	mov.w	r1, put_char	# put_char.543_4,
# basic.c:2909: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.544_5, K_API_STDIO
	add.w	r0, 4 #111	# _6,
# basic.c:2909: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	add.w	r1, 4 #111	# _7,
# basic.c:2909: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	st.w	[r0], r1	# *_6, _7
# basic.c:2910: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	mov.w	r1, printf	# printf.545_8,
# basic.c:2910: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.546_9, K_API_STDIO
	add.w	r0, 8 #111	# _10,
# basic.c:2910: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	add.w	r1, 4 #111	# _11,
# basic.c:2910: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	st.w	[r0], r1	# *_10, _11
# basic.c:2911: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	mov.w	r1, puts	# puts.547_12,
# basic.c:2911: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.548_13, K_API_STDIO
	add.w	r0, 12 #111	# _14,
# basic.c:2911: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	add.w	r1, 4 #111	# _15,
# basic.c:2911: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	st.w	[r0], r1	# *_14, _15
# basic.c:2912: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	mov.w	r1, rand	# rand.549_16,
# basic.c:2912: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.550_17, K_API_STDIO
	add.w	r0, 16 #111	# _18,
# basic.c:2912: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	add.w	r1, 4 #111	# _19,
# basic.c:2912: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	st.w	[r0], r1	# *_18, _19
# basic.c:2913: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	mov.w	r1, should_break	# should_break.551_20,
# basic.c:2913: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.552_21, K_API_STDIO
	add.w	r0, 20 #111	# _22,
# basic.c:2913: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	add.w	r1, 4 #111	# _23,
# basic.c:2913: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	st.w	[r0], r1	# *_22, _23
# basic.c:2914: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	mov.w	r1, getc	# getc.553_24,
# basic.c:2914: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.554_25, K_API_STDIO
	add.w	r0, 24 #111	# _26,
# basic.c:2914: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	add.w	r1, 4 #111	# _27,
# basic.c:2914: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	st.w	[r0], r1	# *_26, _27
# basic.c:2915: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	mov.w	r1, gets	# gets.555_28,
# basic.c:2915: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.556_29, K_API_STDIO
	add.w	r0, 28 #111	# _30,
# basic.c:2915: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	add.w	r1, 4 #111	# _31,
# basic.c:2915: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	st.w	[r0], r1	# *_30, _31
# basic.c:2916: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	mov.w	r1, init_stdio	# init_stdio.557_32,
# basic.c:2916: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.558_33, K_API_STDIO
	add.w	r0, 32 #111	# _34,
# basic.c:2916: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	add.w	r1, 4 #111	# _35,
# basic.c:2916: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	st.w	[r0], r1	# *_34, _35
# basic.c:2917: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	mov.w	r1, delay	# delay.559_36,
# basic.c:2917: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.560_37, K_API_STDIO
	add.w	r0, 36 #111	# _38,
# basic.c:2917: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	add.w	r1, 4 #111	# _39,
# basic.c:2917: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	st.w	[r0], r1	# *_38, _39
# basic.c:2918: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	mov.w	r1, xy	# xy.561_40,
# basic.c:2918: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.562_41, K_API_STDIO
	add.w	r0, 40 #111	# _42,
# basic.c:2918: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	add.w	r1, 4 #111	# _43,
# basic.c:2918: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	st.w	[r0], r1	# *_42, _43
# basic.c:2919: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	mov.w	r1, get_millis	# get_millis.563_44,
# basic.c:2919: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.564_45, K_API_STDIO
	add.w	r0, 44 #111	# _46,
# basic.c:2919: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	add.w	r1, 4 #111	# _47,
# basic.c:2919: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	st.w	[r0], r1	# *_46, _47
# basic.c:2920: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	mov.w	r1, is_key_pressed	# is_key_pressed.565_48,
# basic.c:2920: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.566_49, K_API_STDIO
	add.w	r0, 48 #111	# _50,
# basic.c:2920: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	add.w	r1, 4 #111	# _51,
# basic.c:2920: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	st.w	[r0], r1	# *_50, _51
# basic.c:2921: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	mov.w	r1, is_key_released	# is_key_released.567_52,
# basic.c:2921: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.568_53, K_API_STDIO
	add.w	r0, 52 #111	# _54,
# basic.c:2921: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	add.w	r1, 4 #111	# _55,
# basic.c:2921: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	st.w	[r0], r1	# *_54, _55
# basic.c:2922: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	mov.w	r1, toggle_cursor	# toggle_cursor.569_56,
# basic.c:2922: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.570_57, K_API_STDIO
	add.w	r0, 56 #111	# _58,
# basic.c:2922: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	add.w	r1, 4 #111	# _59,
# basic.c:2922: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	st.w	[r0], r1	# *_58, _59
# basic.c:2923: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	mov.w	r1, putchar	# putchar.571_60,
# basic.c:2923: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.572_61, K_API_STDIO
	add.w	r0, 60 #111	# _62,
# basic.c:2923: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	add.w	r1, 4 #111	# _63,
# basic.c:2923: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	st.w	[r0], r1	# *_62, _63
# basic.c:2924: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	mov.w	r1, video_mode	# video_mode.573_64,
# basic.c:2924: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.574_65, K_API_STDIO
	add.w	r0, 64 #111	# _66,
# basic.c:2924: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	add.w	r1, 4 #111	# _67,
# basic.c:2924: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	st.w	[r0], r1	# *_66, _67
# basic.c:2925: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	mov.w	r1, scroll_up	# scroll_up.575_68,
# basic.c:2925: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.576_69, K_API_GRAPHICS
	add.w	r0, 68 #111	# _70,
# basic.c:2925: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	add.w	r1, 4 #111	# _71,
# basic.c:2925: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	st.w	[r0], r1	# *_70, _71
# basic.c:2927: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	mov.w	r1, strlen	# strlen.577_72,
# basic.c:2927: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.578_73, K_API_STRING
# basic.c:2927: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	add.w	r1, 4 #111	# _74,
# basic.c:2927: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	st.w	[r0], r1	# *K_API_STRING.578_73, _74
# basic.c:2928: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	mov.w	r1, strcmp	# strcmp.579_75,
# basic.c:2928: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.580_76, K_API_STRING
	add.w	r0, 4 #111	# _77,
# basic.c:2928: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	add.w	r1, 4 #111	# _78,
# basic.c:2928: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	st.w	[r0], r1	# *_77, _78
# basic.c:2929: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	mov.w	r1, strncmp	# strncmp.581_79,
# basic.c:2929: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.582_80, K_API_STRING
	add.w	r0, 8 #111	# _81,
# basic.c:2929: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	add.w	r1, 4 #111	# _82,
# basic.c:2929: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	st.w	[r0], r1	# *_81, _82
# basic.c:2930: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	mov.w	r1, memcpy	# memcpy.583_83,
# basic.c:2930: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.584_84, K_API_STRING
	add.w	r0, 12 #111	# _85,
# basic.c:2930: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	add.w	r1, 4 #111	# _86,
# basic.c:2930: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	st.w	[r0], r1	# *_85, _86
# basic.c:2931: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	mov.w	r1, memset	# memset.585_87,
# basic.c:2931: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.586_88, K_API_STRING
	add.w	r0, 16 #111	# _89,
# basic.c:2931: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	add.w	r1, 4 #111	# _90,
# basic.c:2931: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	st.w	[r0], r1	# *_89, _90
# basic.c:2932: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	mov.w	r1, memmove	# memmove.587_91,
# basic.c:2932: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.588_92, K_API_STRING
	add.w	r0, 20 #111	# _93,
# basic.c:2932: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	add.w	r1, 4 #111	# _94,
# basic.c:2932: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	st.w	[r0], r1	# *_93, _94
# basic.c:2933: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	mov.w	r1, strcpy	# strcpy.589_95,
# basic.c:2933: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.590_96, K_API_STRING
	add.w	r0, 24 #111	# _97,
# basic.c:2933: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	add.w	r1, 4 #111	# _98,
# basic.c:2933: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	st.w	[r0], r1	# *_97, _98
# basic.c:2934: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	mov.w	r1, strncpy	# strncpy.591_99,
# basic.c:2934: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.592_100, K_API_STRING
	add.w	r0, 28 #111	# _101,
# basic.c:2934: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	add.w	r1, 4 #111	# _102,
# basic.c:2934: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	st.w	[r0], r1	# *_101, _102
# basic.c:2935: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	mov.w	r1, strcat	# strcat.593_103,
# basic.c:2935: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.594_104, K_API_STRING
	add.w	r0, 32 #111	# _105,
# basic.c:2935: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	add.w	r1, 4 #111	# _106,
# basic.c:2935: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	st.w	[r0], r1	# *_105, _106
# basic.c:2936: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	mov.w	r1, strstr	# strstr.595_107,
# basic.c:2936: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.596_108, K_API_STRING
	add.w	r0, 36 #111	# _109,
# basic.c:2936: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	add.w	r1, 4 #111	# _110,
# basic.c:2936: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	st.w	[r0], r1	# *_109, _110
# basic.c:2937: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	mov.w	r1, tolower	# tolower.597_111,
# basic.c:2937: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.598_112, K_API_STRING
	add.w	r0, 40 #111	# _113,
# basic.c:2937: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	add.w	r1, 4 #111	# _114,
# basic.c:2937: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	st.w	[r0], r1	# *_113, _114
# basic.c:2938: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	mov.w	r1, toupper	# toupper.599_115,
# basic.c:2938: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.600_116, K_API_STRING
	add.w	r0, 44 #111	# _117,
# basic.c:2938: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	add.w	r1, 4 #111	# _118,
# basic.c:2938: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	st.w	[r0], r1	# *_117, _118
# basic.c:2939: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	mov.w	r1, str_toupper	# str_toupper.601_119,
# basic.c:2939: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.602_120, K_API_STRING
	add.w	r0, 48 #111	# _121,
# basic.c:2939: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	add.w	r1, 4 #111	# _122,
# basic.c:2939: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	st.w	[r0], r1	# *_121, _122
# basic.c:2940: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	mov.w	r1, str_n_toupper	# str_n_toupper.603_123,
# basic.c:2940: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.604_124, K_API_STRING
	add.w	r0, 52 #111	# _125,
# basic.c:2940: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	add.w	r1, 4 #111	# _126,
# basic.c:2940: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	st.w	[r0], r1	# *_125, _126
# basic.c:2941: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	mov.w	r1, isdigit	# isdigit.605_127,
# basic.c:2941: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.606_128, K_API_STRING
	add.w	r0, 56 #111	# _129,
# basic.c:2941: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	add.w	r1, 4 #111	# _130,
# basic.c:2941: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	st.w	[r0], r1	# *_129, _130
# basic.c:2942: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	mov.w	r1, islower	# islower.607_131,
# basic.c:2942: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.608_132, K_API_STRING
	add.w	r0, 60 #111	# _133,
# basic.c:2942: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	add.w	r1, 4 #111	# _134,
# basic.c:2942: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	st.w	[r0], r1	# *_133, _134
# basic.c:2943: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	mov.w	r1, isupper	# isupper.609_135,
# basic.c:2943: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.610_136, K_API_STRING
	add.w	r0, 64 #111	# _137,
# basic.c:2943: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	add.w	r1, 4 #111	# _138,
# basic.c:2943: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	st.w	[r0], r1	# *_137, _138
# basic.c:2944: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	mov.w	r1, isalpha	# isalpha.611_139,
# basic.c:2944: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.612_140, K_API_STRING
	add.w	r0, 68 #111	# _141,
# basic.c:2944: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	add.w	r1, 4 #111	# _142,
# basic.c:2944: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	st.w	[r0], r1	# *_141, _142
# basic.c:2945: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	mov.w	r1, isalnum	# isalnum.613_143,
# basic.c:2945: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.614_144, K_API_STRING
	add.w	r0, 72 #111	# _145,
# basic.c:2945: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	add.w	r1, 4 #111	# _146,
# basic.c:2945: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	st.w	[r0], r1	# *_145, _146
# basic.c:2946: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	mov.w	r1, atoi	# atoi.615_147,
# basic.c:2946: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.616_148, K_API_STRING
	add.w	r0, 76 #111	# _149,
# basic.c:2946: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	add.w	r1, 4 #111	# _150,
# basic.c:2946: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	st.w	[r0], r1	# *_149, _150
# basic.c:2947: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	mov.w	r1, isspace	# isspace.617_151,
# basic.c:2947: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.618_152, K_API_STRING
	add.w	r0, 80 #111	# _153,
# basic.c:2947: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	add.w	r1, 4 #111	# _154,
# basic.c:2947: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	st.w	[r0], r1	# *_153, _154
# basic.c:2948: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	mov.w	r1, memcmp	# memcmp.619_155,
# basic.c:2948: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.620_156, K_API_STRING
	add.w	r0, 84 #111	# _157,
# basic.c:2948: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	add.w	r1, 4 #111	# _158,
# basic.c:2948: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	st.w	[r0], r1	# *_157, _158
# basic.c:2949: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	mov.w	r1, strtok	# strtok.621_159,
# basic.c:2949: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.622_160, K_API_STRING
	add.w	r0, 88 #111	# _161,
# basic.c:2949: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	add.w	r1, 4 #111	# _162,
# basic.c:2949: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	st.w	[r0], r1	# *_161, _162
# basic.c:2950: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	mov.w	r1, strchr	# strchr.623_163,
# basic.c:2950: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.624_164, K_API_STRING
	add.w	r0, 92 #111	# _165,
# basic.c:2950: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	add.w	r1, 4 #111	# _166,
# basic.c:2950: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	st.w	[r0], r1	# *_165, _166
# basic.c:2951: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	mov.w	r1, strrchr	# strrchr.625_167,
# basic.c:2951: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.626_168, K_API_STRING
	add.w	r0, 96 #111	# _169,
# basic.c:2951: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	add.w	r1, 4 #111	# _170,
# basic.c:2951: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	st.w	[r0], r1	# *_169, _170
# basic.c:2952: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	mov.w	r1, strncasecmp	# strncasecmp.627_171,
# basic.c:2952: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.628_172, K_API_STRING
	add.w	r0, 100 #111	# _173,
# basic.c:2952: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	add.w	r1, 4 #111	# _174,
# basic.c:2952: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	st.w	[r0], r1	# *_173, _174
# basic.c:2954: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	mov.w	r1, sprintf	# sprintf.629_175,
# basic.c:2954: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.630_176, K_API_SPRINTF
# basic.c:2954: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	add.w	r1, 4 #111	# _177,
# basic.c:2954: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	st.w	[r0], r1	# *K_API_SPRINTF.630_176, _177
# basic.c:2955: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	mov.w	r1, vsprintf	# vsprintf.631_178,
# basic.c:2955: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.632_179, K_API_SPRINTF
	add.w	r0, 4 #111	# _180,
# basic.c:2955: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	add.w	r1, 4 #111	# _181,
# basic.c:2955: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	st.w	[r0], r1	# *_180, _181
# basic.c:2957: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	mov.w	r1, pixel	# pixel.633_182,
# basic.c:2957: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.634_183, K_API_GRAPHICS
# basic.c:2957: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	add.w	r1, 4 #111	# _184,
# basic.c:2957: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	st.w	[r0], r1	# *K_API_GRAPHICS.634_183, _184
# basic.c:2958: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	mov.w	r1, line	# line.635_185,
# basic.c:2958: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.636_186, K_API_GRAPHICS
	add.w	r0, 4 #111	# _187,
# basic.c:2958: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	add.w	r1, 4 #111	# _188,
# basic.c:2958: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	st.w	[r0], r1	# *_187, _188
# basic.c:2959: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	mov.w	r1, circle	# circle.637_189,
# basic.c:2959: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.638_190, K_API_GRAPHICS
	add.w	r0, 8 #111	# _191,
# basic.c:2959: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	add.w	r1, 4 #111	# _192,
# basic.c:2959: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	st.w	[r0], r1	# *_191, _192
# basic.c:2960: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	mov.w	r1, draw	# draw.639_193,
# basic.c:2960: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.640_194, K_API_GRAPHICS
	add.w	r0, 12 #111	# _195,
# basic.c:2960: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	add.w	r1, 4 #111	# _196,
# basic.c:2960: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	st.w	[r0], r1	# *_195, _196
# basic.c:2962: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	mov.w	r1, init_spi	# init_spi.641_197,
# basic.c:2962: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	ld.w	r0, [K_API_SPI]	# K_API_SPI.642_198, K_API_SPI
# basic.c:2962: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	add.w	r1, 4 #111	# _199,
# basic.c:2962: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	st.w	[r0], r1	# *K_API_SPI.642_198, _199
# basic.c:2963: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	mov.w	r1, deinit_spi	# deinit_spi.643_200,
# basic.c:2963: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	ld.w	r0, [K_API_SPI]	# K_API_SPI.644_201, K_API_SPI
	add.w	r0, 4 #111	# _202,
# basic.c:2963: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	add.w	r1, 4 #111	# _203,
# basic.c:2963: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	st.w	[r0], r1	# *_202, _203
# basic.c:2964: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	mov.w	r1, send_spi	# send_spi.645_204,
# basic.c:2964: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	ld.w	r0, [K_API_SPI]	# K_API_SPI.646_205, K_API_SPI
	add.w	r0, 8 #111	# _206,
# basic.c:2964: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	add.w	r1, 4 #111	# _207,
# basic.c:2964: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	st.w	[r0], r1	# *_206, _207
# basic.c:2965: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	mov.w	r1, read_spi	# read_spi.647_208,
# basic.c:2965: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	ld.w	r0, [K_API_SPI]	# K_API_SPI.648_209, K_API_SPI
	add.w	r0, 12 #111	# _210,
# basic.c:2965: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	add.w	r1, 4 #111	# _211,
# basic.c:2965: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	st.w	[r0], r1	# *_210, _211
# basic.c:2966: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	mov.w	r1, SPI_Byte	# SPI_Byte.649_212,
# basic.c:2966: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	ld.w	r0, [K_API_SPI]	# K_API_SPI.650_213, K_API_SPI
	add.w	r0, 16 #111	# _214,
# basic.c:2966: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	add.w	r1, 4 #111	# _215,
# basic.c:2966: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	st.w	[r0], r1	# *_214, _215
# basic.c:2968: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	mov.w	r1, init_tcpip	# init_tcpip.651_216,
# basic.c:2968: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.652_217, K_API_TCPIP
# basic.c:2968: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	add.w	r1, 4 #111	# _218,
# basic.c:2968: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	st.w	[r0], r1	# *K_API_TCPIP.652_217, _218
# basic.c:2969: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	mov.w	r1, browseUrl	# browseUrl.653_219,
# basic.c:2969: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.654_220, K_API_TCPIP
	add.w	r0, 4 #111	# _221,
# basic.c:2969: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	add.w	r1, 4 #111	# _222,
# basic.c:2969: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	st.w	[r0], r1	# *_221, _222
# basic.c:2970: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	mov.w	r1, httpPost	# httpPost.655_223,
# basic.c:2970: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.656_224, K_API_TCPIP
	add.w	r0, 8 #111	# _225,
# basic.c:2970: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	add.w	r1, 4 #111	# _226,
# basic.c:2970: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	st.w	[r0], r1	# *_225, _226
# basic.c:2971: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	mov.w	r1, mainLoop	# mainLoop.657_227,
# basic.c:2971: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.658_228, K_API_TCPIP
	add.w	r0, 12 #111	# _229,
# basic.c:2971: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	add.w	r1, 4 #111	# _230,
# basic.c:2971: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	st.w	[r0], r1	# *_229, _230
# basic.c:2974: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	mov.w	r1, sdcard_init	# sdcard_init.659_231,
# basic.c:2974: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	ld.w	r0, [K_API_FAT]	# K_API_FAT.660_232, K_API_FAT
# basic.c:2974: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	add.w	r1, 4 #111	# _233,
# basic.c:2974: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	st.w	[r0], r1	# *K_API_FAT.660_232, _233
# basic.c:2975: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	mov.w	r1, volume_init	# volume_init.661_234,
# basic.c:2975: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	ld.w	r0, [K_API_FAT]	# K_API_FAT.662_235, K_API_FAT
	add.w	r0, 4 #111	# _236,
# basic.c:2975: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	add.w	r1, 4 #111	# _237,
# basic.c:2975: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	st.w	[r0], r1	# *_236, _237
# basic.c:2976: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	mov.w	r1, file_open	# file_open.663_238,
# basic.c:2976: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	ld.w	r0, [K_API_FAT]	# K_API_FAT.664_239, K_API_FAT
	add.w	r0, 8 #111	# _240,
# basic.c:2976: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	add.w	r1, 4 #111	# _241,
# basic.c:2976: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	st.w	[r0], r1	# *_240, _241
# basic.c:2977: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	mov.w	r1, file_read	# file_read.665_242,
# basic.c:2977: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	ld.w	r0, [K_API_FAT]	# K_API_FAT.666_243, K_API_FAT
	add.w	r0, 12 #111	# _244,
# basic.c:2977: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	add.w	r1, 4 #111	# _245,
# basic.c:2977: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	st.w	[r0], r1	# *_244, _245
# basic.c:2978: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	mov.w	r1, getDirEntry	# getDirEntry.667_246,
# basic.c:2978: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	ld.w	r0, [K_API_FAT]	# K_API_FAT.668_247, K_API_FAT
	add.w	r0, 16 #111	# _248,
# basic.c:2978: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	add.w	r1, 4 #111	# _249,
# basic.c:2978: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	st.w	[r0], r1	# *_248, _249
# basic.c:2979: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	mov.w	r1, file_seek	# file_seek.669_250,
# basic.c:2979: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	ld.w	r0, [K_API_FAT]	# K_API_FAT.670_251, K_API_FAT
	add.w	r0, 20 #111	# _252,
# basic.c:2979: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	add.w	r1, 4 #111	# _253,
# basic.c:2979: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	st.w	[r0], r1	# *_252, _253
# basic.c:2980: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	mov.w	r1, file_write	# file_write.671_254,
# basic.c:2980: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	ld.w	r0, [K_API_FAT]	# K_API_FAT.672_255, K_API_FAT
	add.w	r0, 24 #111	# _256,
# basic.c:2980: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	add.w	r1, 4 #111	# _257,
# basic.c:2980: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	st.w	[r0], r1	# *_256, _257
# basic.c:2981: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	mov.w	r1, file_delete	# file_delete.673_258,
# basic.c:2981: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	ld.w	r0, [K_API_FAT]	# K_API_FAT.674_259, K_API_FAT
	add.w	r0, 28 #111	# _260,
# basic.c:2981: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	add.w	r1, 4 #111	# _261,
# basic.c:2981: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	st.w	[r0], r1	# *_260, _261
# basic.c:2983: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_K_API, .-init_K_API
	.p2align	1
	.global	main
	.type	main, @function
main:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:2989: 	program_start = program;
	ld.w	r0, [program]	# program.675_1, program
	st.w	[program_start], r0	# program_start, program.675_1
# basic.c:2990: 	program_end = program_start;
	ld.w	r0, [program_start]	# program_start.676_2, program_start
	st.w	[program_end], r0	# program_end, program_start.676_2
# basic.c:2991: 	bsp = program + kRamSize;  // Needed for printnum
	ld.w	r0, [program]	# program.677_3, program
	mov.w	r1, 65536	# tmp49,
	add.w	r0, r1 #222	# _4, tmp49
# basic.c:2991: 	bsp = program + kRamSize;  // Needed for printnum
	st.w	[bsp], r0	# bsp, _4
# basic.c:2992: 	stack_limit = program + kRamSize - STACK_SIZE;
	ld.w	r0, [program]	# program.678_5, program
	mov.w	r1, 65336	# tmp50,
	add.w	r0, r1 #222	# _6, tmp50
# basic.c:2992: 	stack_limit = program + kRamSize - STACK_SIZE;
	st.w	[stack_limit], r0	# stack_limit, _6
# basic.c:2993: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	ld.w	r0, [stack_limit]	# stack_limit.679_7, stack_limit
	add.w	r0, -112 #111	# _8,
# basic.c:2993: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	st.w	[variables_begin], r0	# variables_begin, _8
# basic.c:2995: 	umm_init();
	call	umm_init		#
# basic.c:2996: 	init_arrays();
	call	init_arrays		#
# basic.c:2998: 	current_line = 0;
	xor.w	r0, r0	# tmp51
	st.w	[current_line], r0	# current_line, tmp51
# basic.c:3000: 	init_K_API();
	call	init_K_API		#
# basic.c:3002: 	init_stdio();
	call	init_stdio		#
# basic.c:3004: 	video_mode(0);
	mov.w	r1, sp	# tmp52,
	xor.w	r0, r0	# tmp53
	st.w	[r1], r0	#, tmp53
	call	video_mode		#
# basic.c:3005: 	color = 1;
	mov.w	r0, 1	# tmp54,
	st.w	[color], r0	# color, tmp54
# basic.c:3006: 	cls(color);
	ld.w	r0, [color]	# color.680_9, color
	mov.w	r1, sp	# tmp55,
	st.w	[r1], r0	#, color.680_9
	call	cls		#
# basic.c:3007: 	uart_init_files();
	call	uart_init_files		#
# basic.c:3008: 	init_spi();
	call	init_spi		#
# basic.c:3009: 	init_sd();
	call	init_sd		#
# basic.c:3010: 	init_net();
	call	init_net		#
# basic.c:3012: 	exec_mem();
	call	exec_mem		#
# basic.c:3015: 	res = 0;
	xor.w	r0, r0	# tmp56
	st.w	[r13 + (-4)], r0	# res, tmp56
.L614:
# basic.c:3018: 		if (res != 3)
	ld.w	r1, [r13 + (-4)]	# tmp57, res
	mov.w	r0, 3	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L604		#
# basic.c:3020: 			getln('>');
	mov.w	r1, sp	# tmp59,
	mov.w	r0, 62	# tmp60,
	st.w	[r1], r0	#, tmp60
	call	getln		#
# basic.c:3021: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:3022: 			skip_to_end();
	call	skip_to_end		#
	j	.L605		#
.L604:
# basic.c:3026: 			res = 0;
	xor.w	r0, r0	# tmp61
	st.w	[r13 + (-4)], r0	# res, tmp61
# basic.c:3027: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
.L605:
# basic.c:3030: 		linenum = testnum();
	call	testnum		#
	mov.w	r1, r0	# _10,
# basic.c:3030: 		linenum = testnum();
	mov.w	r0, r1	# tmp62, _10
	st.w	[sp], r0	#, tmp62
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _11
# basic.c:3032: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:3034: 		if (linenum == 0)
	ld.w	r1, [linenum]	# linenum.681_12, linenum
# basic.c:3034: 		if (linenum == 0)
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# linenum.681_12, tmp63
	jnz	.L606		#
.L612:
# basic.c:3037: 				res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:3038: 				if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp64, res
	mov.w	r0, 1	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L607		#
# basic.c:3039: 					return 0;
	xor.w	r0, r0	# _66
	j	.L615		#
.L607:
# basic.c:3040: 				if (res == 2)
	ld.w	r1, [r13 + (-4)]	# tmp66, res
	mov.w	r0, 2	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jnz	.L609		#
# basic.c:3042: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.682_13, current_line
	add.w	r0, 5 #111	# _14,
# basic.c:3042: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:3043: 					continue;
	j	.L610		#
.L609:
# basic.c:3045: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:3046: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.683_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.683_15
# basic.c:3046: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp68, _16
	mov.w	r0, 10	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L614		#
# basic.c:3046: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.684_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.684_17
# basic.c:3046: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp70, _18
	mov.w	r0, 58	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L614		#
# basic.c:3048: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.685_19, txtpos
	add.w	r0, 1 #111	# _20,
	st.w	[txtpos], r0	# txtpos, _20
# basic.c:3049: 				ignore_blanks();
	call	ignore_blanks		#
.L610:
# basic.c:3037: 				res = direct();
	j	.L612		#
.L606:
# basic.c:3052: 		else if (linenum == 0xFFFF)
	ld.w	r1, [linenum]	# linenum.686_21, linenum
# basic.c:3052: 		else if (linenum == 0xFFFF)
	mov.w	r0, 65535	# tmp72,
	cmp.w	r1, r0	# linenum.686_21, tmp72
	jnz	.L613		#
# basic.c:3054: 			qhow();
	call	qhow		#
	j	.L614		#
.L613:
# basic.c:3058: 			entered_with_line_num();
	call	entered_with_line_num		#
# basic.c:3018: 		if (res != 3)
	j	.L614		#
.L615:
# basic.c:3061: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
