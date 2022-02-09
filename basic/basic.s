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
	.global	keywords
	.section	.rodata
	.p2align	2
	.type	keywords, @object
	.size	keywords, 197
keywords:
	.string	"MEM\001BYE\001EXIT\001PRINT\001?\001LIST\001RUN\001NEW\001LET\001IF\001GOTO\001FOR\001NEXT\001RETURN\001GOSUB\001END\001STOP\001INPUT\001CLS\001EDIT\001LOAD\001SAVE\001DIR\001MODE\001PLOT\001LINE\001CIRCLE\001DRAW\001HELP\001DELAY\001CURSOR\001POKE\001EXEC\001SYS\001DRIVE\001TIME\001REM\001'\001ETH\001COLOR\001DIM\001"
	.global	func_tab
	.p2align	2
	.type	func_tab, @object
	.size	func_tab, 86
func_tab:
	.string	"PEEK\001ABS\001AREAD\001DREAD\001RND\001KEY\001ISKEY\001SIN\001COS\001TAN\001EXP\001LOG\001SQRT\001POW\001PI\001EX\001ATAN\001ASIN\001ACOS\001"
	.global	to_tab
	.p2align	2
	.type	to_tab, @object
	.size	to_tab, 4
to_tab:
	.string	"TO\001"
	.global	step_tab
	.p2align	2
	.type	step_tab, @object
	.size	step_tab, 6
step_tab:
	.string	"STEP\001"
	.global	relop_tab
	.p2align	2
	.type	relop_tab, @object
	.size	relop_tab, 26
relop_tab:
	.string	">=\001<>\001>\001=\001<=\001<\001!=\001AND\001OR\001"
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
# basic.c:263: 	if (arrays_begin != NULL) 
	ld.w	r1, [arrays_begin]	# arrays_begin.0_1, arrays_begin
# basic.c:263: 	if (arrays_begin != NULL) 
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# arrays_begin.0_1, tmp35
	jz	.L2		#
# basic.c:265: 		for (int i = 0; i < 26; i++)
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# i, tmp36
# basic.c:265: 		for (int i = 0; i < 26; i++)
	j	.L3		#
.L5:
# basic.c:267: 			VAR *array = arrays_begin[i];
	ld.w	r0, [arrays_begin]	# arrays_begin.1_2, arrays_begin
	ld.w	r1, [r13 + (-4)]	# i.2_3, i
	mov.w	r2, 2	# tmp37,
	shl.w	r1, r2	# _4, tmp37
	add.w	r0, r1 #222	# _5, _4
# basic.c:267: 			VAR *array = arrays_begin[i];
	ld.w	r0, [r0]	# tmp38, *_5
	st.w	[r13 + (-8)], r0	# array, tmp38
# basic.c:268: 			if (array != NULL)
	ld.w	r1, [r13 + (-8)]	# tmp39, array
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L4		#
# basic.c:270: 				free(array);
	mov.w	r1, sp	# tmp41,
	ld.w	r0, [r13 + (-8)]	# tmp42, array
	st.w	[r1], r0	#, tmp42
	call	free		#
.L4:
# basic.c:265: 		for (int i = 0; i < 26; i++)
	ld.w	r0, [r13 + (-4)]	# tmp44, i
	add.w	r0, 1 #111	# tmp43,
	st.w	[r13 + (-4)], r0	# i, tmp43
.L3:
# basic.c:265: 		for (int i = 0; i < 26; i++)
	ld.w	r1, [r13 + (-4)]	# tmp45, i
	mov.w	r0, 25	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jses	.L5		#
# basic.c:273: 		free(arrays_begin);
	ld.w	r0, [arrays_begin]	# arrays_begin.3_6, arrays_begin
	mov.w	r1, sp	# tmp47,
	st.w	[r1], r0	#, arrays_begin.3_6
	call	free		#
.L2:
# basic.c:275: 	arrays_begin = (VAR **) malloc(sizeof(VAR*) * 26);
	mov.w	r1, sp	# tmp48,
	mov.w	r0, 104	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	malloc		#
# basic.c:275: 	arrays_begin = (VAR **) malloc(sizeof(VAR*) * 26);
	st.w	[arrays_begin], r0	# arrays_begin, _7
# basic.c:276: 	if (arrays_begin == NULL)
	ld.w	r1, [arrays_begin]	# arrays_begin.4_8, arrays_begin
# basic.c:276: 	if (arrays_begin == NULL)
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# arrays_begin.4_8, tmp51
	jnz	.L7		#
# basic.c:278: 		memset(arrays_begin, 0, sizeof(VAR*) * 26);
	ld.w	r1, [arrays_begin]	# arrays_begin.5_9, arrays_begin
	mov.w	r0, sp	# tmp52,
	mov.w	r2, 104	# tmp53,
	st.w	[r0 + (8)], r2	#, tmp53
	xor.w	r2, r2	# tmp54
	st.w	[r0 + (4)], r2	#, tmp54
	st.w	[r0], r1	#, arrays_begin.5_9
	call	memset		#
# basic.c:279: 		printf("PROBLEM! Not enough memory for the arrays!");
	mov.w	r1, sp	# tmp55,
	mov.w	r0, .LC0	# tmp56,
	st.w	[r1], r0	#, tmp56
	call	printf		#
.L7:
# basic.c:282: }
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
# basic.c:287: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.6_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:287: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:289: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.7_3, txtpos
# basic.c:289: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp39
	st.b	[r0], r1	# *txtpos.7_3, tmp39
# basic.c:291: 	put_char(prompt);
	mov.w	r1, sp	# tmp40,
	ld.w	r0, [r13 + (8)]	# tmp41, prompt
	st.w	[r1], r0	#, tmp41
	call	put_char		#
# basic.c:292: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.8_4, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.8_4
	call	gets		#
# basic.c:294: 	l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.9_5, txtpos
	mov.w	r1, sp	# tmp43,
	st.w	[r1], r0	#, txtpos.9_5
	call	strlen		#
	st.w	[r13 + (-8)], r0	# l,
# basic.c:295: 	if (l % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# l.10_6, l
	mov.w	r0, 1	# tmp44,
	and.w	r1, r0	# _7, tmp44
# basic.c:295: 	if (l % 2 == 0)
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# _7, tmp45
	jnz	.L9		#
# basic.c:296: 		strcat(txtpos, " ");
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
.L9:
# basic.c:298: 	strcat(txtpos, "\n");
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
# basic.c:299: }
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
# basic.c:303: 	char *c = txtpos;
	ld.w	r0, [txtpos]	# tmp36, txtpos
	st.w	[r13 + (-4)], r0	# c, tmp36
# basic.c:304: 	char quote = 0;
	xor.w	r0, r0	# tmp37
	st.b	[r13 + (-5)], r0	# quote, tmp37
# basic.c:306: 	while (*c != NL)
	j	.L11		#
.L16:
# basic.c:309: 		if (*c == quote)
	ld.w	r0, [r13 + (-4)]	# tmp38, c
	ld.b	r0, [r0]	# _1, *c_11
# basic.c:309: 		if (*c == quote)
	ld.b	r2, [r13 + (-5)]	#, quote
	sex.b	r1, r2	# tmp39,
	sex.b	r0, r0	# tmp40, _1
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L12		#
# basic.c:310: 			quote = 0;
	xor.w	r0, r0	# tmp41
	st.b	[r13 + (-5)], r0	# quote, tmp41
	j	.L13		#
.L12:
# basic.c:311: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp42, c
	ld.b	r0, [r0]	# _2, *c_11
# basic.c:311: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp43, _2
	mov.w	r0, 34	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L14		#
# basic.c:311: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp45, c
	ld.b	r0, [r0]	# _3, *c_11
# basic.c:311: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp46, _3
	mov.w	r0, 39	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L15		#
.L14:
# basic.c:312: 			quote = *c;
	ld.w	r0, [r13 + (-4)]	# tmp48, c
	ld.b	r0, [r0]	# tmp49, *c_11
	st.b	[r13 + (-5)], r0	# quote, tmp49
	j	.L13		#
.L15:
# basic.c:313: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.b	r0, [r13 + (-5)]	#, quote
	sex.b	r1, r0	# tmp50,
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L13		#
# basic.c:313: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp52, c
	ld.b	r0, [r0]	# _4, *c_11
# basic.c:313: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp53, _4
	mov.w	r0, 96	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jses	.L13		#
# basic.c:313: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp55, c
	ld.b	r0, [r0]	# _5, *c_11
# basic.c:313: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp56, _5
	mov.w	r0, 122	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jgs	.L13		#
# basic.c:314: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp58, c
	ld.b	r0, [r0]	# _6, *c_11
# basic.c:314: 			*c = *c + 'A' - 'a';
	add.w	r0, -32 #111	# tmp59,
	mov.w	r1, r0	# _9, _8
# basic.c:314: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp60, c
	st.b	[r0], r1	# *c_11, _9
.L13:
# basic.c:315: 		c++;
	ld.w	r0, [r13 + (-4)]	# tmp62, c
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (-4)], r0	# c, tmp61
.L11:
# basic.c:306: 	while (*c != NL)
	ld.w	r0, [r13 + (-4)]	# tmp63, c
	ld.b	r0, [r0]	# _10, *c_11
# basic.c:306: 	while (*c != NL)
	sex.b	r1, r0	# tmp64, _10
	mov.w	r0, 10	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L16		#
# basic.c:317: }
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
# basic.c:321: 	while (*txtpos == SPACE || *txtpos == TAB)
	j	.L18		#
.L19:
# basic.c:322: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.13_1, txtpos
	add.w	r0, 1 #111	# _2,
	st.w	[txtpos], r0	# txtpos, _2
.L18:
# basic.c:321: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.14_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.14_3
# basic.c:321: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp32, _4
	mov.w	r0, 32	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L19		#
# basic.c:321: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.15_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.15_5
# basic.c:321: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp34, _6
	mov.w	r0, 9	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L19		#
# basic.c:323: }
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
# basic.c:327: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.16_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:327: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:330: 	while (*txtpos != NL)
	j	.L21		#
.L22:
# basic.c:331: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.17_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
.L21:
# basic.c:330: 	while (*txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.18_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.18_5
# basic.c:330: 	while (*txtpos != NL)
	zex.b	r1, r0	# tmp40, _6
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L22		#
# basic.c:336: 		dest = variables_begin - 1;
	ld.w	r0, [variables_begin]	# variables_begin.19_7, variables_begin
# basic.c:336: 		dest = variables_begin - 1;
	add.w	r0, -1 #111	# tmp42,
	st.w	[r13 + (-4)], r0	# dest, tmp42
.L25:
# basic.c:339: 			*dest = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.20_8, txtpos
	ld.b	r1, [r0]	# _9, *txtpos.20_8
# basic.c:339: 			*dest = *txtpos;
	ld.w	r0, [r13 + (-4)]	# tmp43, dest
	st.b	[r0], r1	# *dest_15, _9
# basic.c:340: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [program_end]	# program_end.21_10, program_end
	mov.w	r1, r0	# _11, program_end.21_10
	add.w	r1, 4 #111	# _11,
# basic.c:340: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [txtpos]	# txtpos.22_12, txtpos
# basic.c:340: 			if (txtpos == program_end + sizeof(LINENUM))
	cmp.w	r1, r0	# _11, txtpos.22_12
	jz	.L27		#
# basic.c:342: 			dest--;
	ld.w	r0, [r13 + (-4)]	# tmp45, dest
	add.w	r0, -1 #111	# tmp44,
	st.w	[r13 + (-4)], r0	# dest, tmp44
# basic.c:343: 			txtpos--;
	ld.w	r0, [txtpos]	# txtpos.23_13, txtpos
	add.w	r0, -1 #111	# _14,
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:339: 			*dest = *txtpos;
	j	.L25		#
.L27:
# basic.c:341: 				break;
	nop	
# basic.c:345: 		txtpos = dest;
	ld.w	r0, [r13 + (-4)]	# tmp46, dest
	st.w	[txtpos], r0	# txtpos, tmp46
# basic.c:347: }
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
# basic.c:351: 	unsigned char *line = program_start;
	ld.w	r0, [program_start]	# tmp35, program_start
	st.w	[r13 + (-4)], r0	# line, tmp35
.L32:
# basic.c:354: 		if (line == program_end)
	ld.w	r0, [program_end]	# program_end.24_1, program_end
# basic.c:354: 		if (line == program_end)
	ld.w	r1, [r13 + (-4)]	# tmp36, line
	cmp.w	r1, r0	# tmp36, program_end.24_1
	jnz	.L29		#
# basic.c:355: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L30		#
.L29:
# basic.c:357: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [r13 + (-4)]	# tmp37, line
	ld.w	r1, [r0]	# _2, MEM[(LINENUM *)line_8]
# basic.c:357: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [linenum]	# linenum.25_3, linenum
# basic.c:357: 		if (((LINENUM *)line)[0] >= linenum)
	cmp.w	r1, r0	# _2, linenum.26_4
	js	.L31		#
# basic.c:358: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L30		#
.L31:
# basic.c:361: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp38, line
	add.w	r0, 4 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
	zex.b	r1, r0	# _7, _6
# basic.c:361: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp40, line
	add.w	r0, r1 #222	# tmp39, _7
	st.w	[r13 + (-4)], r0	# line, tmp39
# basic.c:354: 		if (line == program_end)
	j	.L32		#
.L30:
# basic.c:363: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	findline, .-findline
	.section	.rodata
	.p2align	2
.LC1:
	.string	"%d "
	.text
	.p2align	1
	.global	printline
	.type	printline, @function
printline:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:369: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [list_line]	# list_line.27_1, list_line
# basic.c:369: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [r0]	# tmp38, MEM[(LINENUM *)list_line.27_1]
	st.w	[r13 + (-4)], r0	# line_num, tmp38
# basic.c:370: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.28_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:373: 	printf("%d ", line_num);
	mov.w	r0, sp	# tmp39,
	ld.w	r1, [r13 + (-4)]	# tmp40, line_num
	st.w	[r0 + (4)], r1	#, tmp40
	mov.w	r1, .LC1	# tmp41,
	st.w	[r0], r1	#, tmp41
	call	printf		#
# basic.c:374: 	while (*list_line != NL)
	j	.L34		#
.L35:
# basic.c:376: 		put_char(*list_line);
	ld.w	r0, [list_line]	# list_line.29_4, list_line
	ld.b	r0, [r0]	# _5, *list_line.29_4
# basic.c:376: 		put_char(*list_line);
	zex.b	r0, r0	# _6, _5
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, _6
	call	put_char		#
# basic.c:377: 		list_line++;
	ld.w	r0, [list_line]	# list_line.30_7, list_line
	add.w	r0, 1 #111	# _8,
	st.w	[list_line], r0	# list_line, _8
.L34:
# basic.c:374: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.31_9, list_line
	ld.b	r0, [r0]	# _10, *list_line.31_9
# basic.c:374: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp43, _10
	mov.w	r0, 10	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L35		#
# basic.c:379: 	list_line++;
	ld.w	r0, [list_line]	# list_line.32_11, list_line
	add.w	r0, 1 #111	# _12,
	st.w	[list_line], r0	# list_line, _12
# basic.c:380: 	printf("\n");
	mov.w	r1, sp	# tmp45,
	mov.w	r0, 10	# tmp46,
	st.w	[r1], r0	#, tmp46
	call	putchar		#
# basic.c:381: }
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
# basic.c:385: 	VAR num = 0;
	xor.w	r0, r0	# tmp41
	st.w	[r13 + (-8)], r0	# num, tmp41
# basic.c:386: 	ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.33_1, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.33_1
	call	ignore_blanks		#
# basic.c:388: 	while (*txtpos >= '0' && *txtpos <= '9')
	j	.L37		#
.L41:
# basic.c:391: 		if (num >= 0xFFFFFFFF / 10)
	mov.w	r0, 1305267405	# tmp43,
	st.w	[sp + (4)], r0	#, tmp43
	ld.w	r0, [r13 + (-8)]	# tmp44, num
	st.w	[sp], r0	#, tmp44
	call	__gesf2		#
	mov.w	r1, r0	# tmp45,
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# tmp45, tmp46
	jss	.L44		#
# basic.c:393: 			num = 0xFFFFFFFF;
	mov.w	r0, 1333788672	# tmp47,
	st.w	[r13 + (-8)], r0	# num, tmp47
# basic.c:394: 			break;
	j	.L40		#
.L44:
# basic.c:397: 		num = num * 10 + *txtpos - '0';
	mov.w	r0, 1092616192	# tmp48,
	st.w	[sp + (4)], r0	#, tmp48
	ld.w	r0, [r13 + (-8)]	# tmp49, num
	st.w	[sp], r0	#, tmp49
	call	__mulsf3		#
	mov.w	r1, r0	# tmp50,
	mov.w	r6, r1	# _2, tmp50
# basic.c:397: 		num = num * 10 + *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.34_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.34_3
	zex.b	r0, r0	# _5, _4
# basic.c:397: 		num = num * 10 + *txtpos - '0';
	st.w	[sp], r0	#, _5
	call	__floatsisf		#
	mov.w	r1, r0	# _6,
	mov.w	r0, r6	# tmp52, _2
	st.w	[sp + (4)], r1	#, tmp51
	st.w	[sp], r0	#, tmp52
	call	__addsf3		#
	mov.w	r1, r0	# tmp53,
	mov.w	r0, r1	# _7, tmp53
# basic.c:397: 		num = num * 10 + *txtpos - '0';
	mov.w	r1, 1111490560	# tmp54,
	st.w	[sp + (4)], r1	#, tmp54
	st.w	[sp], r0	#, tmp55
	call	__subsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-8)], r0	# num, tmp57
# basic.c:398: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.35_8, txtpos
	add.w	r0, 1 #111	# _9,
	st.w	[txtpos], r0	# txtpos, _9
.L37:
# basic.c:388: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.36_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.36_10
# basic.c:388: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp58, _11
	mov.w	r0, 47	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jse	.L40		#
# basic.c:388: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.37_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.37_12
# basic.c:388: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp60, _13
	mov.w	r0, 57	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jse	.L41		#
.L40:
# basic.c:400: 	return	num;
	ld.w	r0, [r13 + (-8)]	# _23, num
	mov.w	r1, r0	# <retval>, _23
# basic.c:401: }
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
# basic.c:413: 	linelen = 0;
	xor.w	r0, r0	# tmp98
	st.b	[r13 + (-1)], r0	# linelen, tmp98
# basic.c:414: 	while (txtpos[linelen] != NL)
	j	.L46		#
.L47:
# basic.c:415: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.38_1, linelen
	add.w	r0, 1 #111	# tmp99,
	st.b	[r13 + (-1)], r0	# linelen, tmp100
.L46:
# basic.c:414: 	while (txtpos[linelen] != NL)
	ld.w	r0, [txtpos]	# txtpos.39_2, txtpos
	ld.b	r1, [r13 + (-1)]	# _3, linelen
	add.w	r0, r1 #222	# _4, _3
	ld.b	r0, [r0]	# _5, *_4
# basic.c:414: 	while (txtpos[linelen] != NL)
	zex.b	r1, r0	# tmp101, _5
	mov.w	r0, 10	# tmp102,
	cmp.w	r1, r0	# tmp101, tmp102
	jnz	.L47		#
# basic.c:416: 	linelen++; // Include the NL in the line length
	ld.b	r0, [r13 + (-1)]	# linelen.40_6, linelen
	add.w	r0, 1 #111	# tmp103,
	st.b	[r13 + (-1)], r0	# linelen, tmp104
# basic.c:417: 	linelen += sizeof(LINENUM) + sizeof(char); // Add space for the line number and line length
	ld.b	r0, [r13 + (-1)]	# tmp105, linelen
	add.w	r0, 5 #111	# tmp106,
	st.b	[r13 + (-1)], r0	# linelen, tmp107
# basic.c:420: 	txtpos -= sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [txtpos]	# txtpos.41_7, txtpos
	add.w	r0, -5 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:423: 	l = (int)txtpos;
	ld.w	r0, [txtpos]	# txtpos.42_9, txtpos
# basic.c:423: 	l = (int)txtpos;
	st.w	[r13 + (-12)], r0	# l, txtpos.42_9
# basic.c:424: 	if (l % 2 == 1)
	ld.w	r0, [r13 + (-12)]	# tmp108, l
	mov.w	r1, -2147483647	# tmp110,
	and.w	r0, r1	# tmp109, tmp110
	xor.w	r1, r1	# tmp111
	cmp.w	r0, r1	# tmp109, tmp111
	jges	.L48		#
	add.w	r0, -1 #111	# tmp109,
	mov.w	r1, -2	# tmp112,
	or.w	r0, r1	# tmp109, tmp112
	add.w	r0, 1 #111	# tmp109,
.L48:
	mov.w	r1, r0	# _10, tmp109
# basic.c:424: 	if (l % 2 == 1)
	mov.w	r0, 1	# tmp113,
	cmp.w	r1, r0	# _10, tmp113
	jnz	.L49		#
# basic.c:426: 		txtpos--;
	ld.w	r0, [txtpos]	# txtpos.43_11, txtpos
	add.w	r0, -1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:427: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	ld.w	r0, [txtpos]	# txtpos.44_13, txtpos
	add.w	r0, 5 #111	# _14,
# basic.c:427: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	mov.b	r1, 32	# tmp114,
	st.b	[r0], r1	# *_14, tmp114
# basic.c:428: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.45_15, linelen
	add.w	r0, 1 #111	# tmp115,
	st.b	[r13 + (-1)], r0	# linelen, tmp116
.L49:
# basic.c:431: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r1, [linenum]	# linenum.46_16, linenum
# basic.c:431: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r0, [txtpos]	# txtpos.47_17, txtpos
# basic.c:431: 	*((LINENUM *)txtpos) = linenum;
	st.w	[r0], r1	# MEM[(LINENUM *)txtpos.47_17], linenum.48_18
# basic.c:432: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.w	r0, [txtpos]	# txtpos.49_19, txtpos
	add.w	r0, 4 #111	# _20,
# basic.c:432: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.b	r1, [r13 + (-1)]	# tmp117, linelen
	st.b	[r0], r1	# *_20, tmp117
# basic.c:436: 	start = findline();
	call	findline		#
	st.w	[r13 + (-8)], r0	# start,
# basic.c:439: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [program_end]	# program_end.50_21, program_end
# basic.c:439: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r1, [r13 + (-8)]	# tmp118, start
	cmp.w	r1, r0	# tmp118, program_end.50_21
	jz	.L50		#
# basic.c:439: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [r13 + (-8)]	# tmp119, start
	ld.w	r1, [r0]	# _22, MEM[(LINENUM *)start_110]
# basic.c:439: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [linenum]	# linenum.51_23, linenum
# basic.c:439: 	if (start != program_end && *((LINENUM *)start) == linenum)
	cmp.w	r1, r0	# _22, linenum.52_24
	jnz	.L50		#
# basic.c:444: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp120, start
	add.w	r0, 4 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
	zex.b	r1, r0	# _27, _26
# basic.c:444: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp122, start
	add.w	r0, r1 #222	# tmp121, _27
	st.w	[r13 + (-24)], r0	# from, tmp121
# basic.c:445: 		dest = start;
	ld.w	r0, [r13 + (-8)]	# tmp123, start
	st.w	[r13 + (-20)], r0	# dest, tmp123
# basic.c:447: 		tomove = program_end - from;
	ld.w	r0, [program_end]	# program_end.53_28, program_end
	ld.w	r1, [r13 + (-24)]	# tmp124, from
	sub.w	r0, r1 #222	# _29, tmp124
# basic.c:447: 		tomove = program_end - from;
	st.w	[r13 + (-28)], r0	# tomove, _29
# basic.c:448: 		while (tomove > 0)
	j	.L51		#
.L52:
# basic.c:450: 			*dest = *from;
	ld.w	r0, [r13 + (-24)]	# tmp125, from
	ld.b	r1, [r0]	# _30, *from_82
# basic.c:450: 			*dest = *from;
	ld.w	r0, [r13 + (-20)]	# tmp126, dest
	st.b	[r0], r1	# *dest_81, _30
# basic.c:451: 			from++;
	ld.w	r0, [r13 + (-24)]	# tmp128, from
	add.w	r0, 1 #111	# tmp127,
	st.w	[r13 + (-24)], r0	# from, tmp127
# basic.c:452: 			dest++;
	ld.w	r0, [r13 + (-20)]	# tmp130, dest
	add.w	r0, 1 #111	# tmp129,
	st.w	[r13 + (-20)], r0	# dest, tmp129
# basic.c:453: 			tomove--;
	ld.w	r0, [r13 + (-28)]	# tmp132, tomove
	add.w	r0, -1 #111	# tmp131,
	st.w	[r13 + (-28)], r0	# tomove, tmp131
.L51:
# basic.c:448: 		while (tomove > 0)
	ld.w	r1, [r13 + (-28)]	# tmp133, tomove
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jnz	.L52		#
# basic.c:455: 		program_end = dest;
	ld.w	r0, [r13 + (-20)]	# tmp135, dest
	st.w	[program_end], r0	# program_end, tmp135
.L50:
# basic.c:458: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	ld.w	r0, [txtpos]	# txtpos.54_31, txtpos
	add.w	r0, 5 #111	# _32,
	ld.b	r0, [r0]	# _33, *_32
# basic.c:458: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	zex.b	r1, r0	# tmp136, _33
	mov.w	r0, 10	# tmp137,
	cmp.w	r1, r0	# tmp136, tmp137
	jz	.L65		#
# basic.c:465: 	first_time = 1; // odd address hack
	mov.w	r0, 1	# tmp138,
	st.w	[r13 + (-16)], r0	# first_time, tmp138
# basic.c:467: 	while (linelen > 0)
	j	.L55		#
.L64:
# basic.c:473: 		space_to_make = txtpos - program_end;
	ld.w	r0, [txtpos]	# txtpos.55_34, txtpos
	ld.w	r1, [program_end]	# program_end.56_35, program_end
	sub.w	r0, r1 #222	# _36, program_end.56_35
# basic.c:473: 		space_to_make = txtpos - program_end;
	st.w	[r13 + (-44)], r0	# space_to_make, _36
# basic.c:475: 		if (space_to_make > linelen)
	ld.b	r0, [r13 + (-1)]	# _37, linelen
# basic.c:475: 		if (space_to_make > linelen)
	ld.w	r1, [r13 + (-44)]	# tmp139, space_to_make
	cmp.w	r1, r0	# tmp139, _37
	jse	.L56		#
# basic.c:476: 			space_to_make = linelen;
	ld.b	r0, [r13 + (-1)]	# tmp140, linelen
	st.w	[r13 + (-44)], r0	# space_to_make, tmp140
.L56:
# basic.c:477: 		newEnd = program_end + space_to_make;
	ld.w	r0, [program_end]	# program_end.57_38, program_end
# basic.c:477: 		newEnd = program_end + space_to_make;
	ld.w	r1, [r13 + (-44)]	# tmp142, space_to_make
	add.w	r0, r1 #222	# tmp141, tmp142
	st.w	[r13 + (-48)], r0	# newEnd, tmp141
# basic.c:478: 		tomove = program_end - start;
	ld.w	r0, [program_end]	# program_end.58_39, program_end
	ld.w	r1, [r13 + (-8)]	# tmp143, start
	sub.w	r0, r1 #222	# _40, tmp143
# basic.c:478: 		tomove = program_end - start;
	st.w	[r13 + (-32)], r0	# tomove, _40
# basic.c:482: 		from = program_end;
	ld.w	r0, [program_end]	# tmp144, program_end
	st.w	[r13 + (-36)], r0	# from, tmp144
# basic.c:483: 		dest = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp145, newEnd
	st.w	[r13 + (-40)], r0	# dest, tmp145
# basic.c:484: 		while (tomove > 0)
	j	.L57		#
.L58:
# basic.c:486: 			from--;
	ld.w	r0, [r13 + (-36)]	# tmp147, from
	add.w	r0, -1 #111	# tmp146,
	st.w	[r13 + (-36)], r0	# from, tmp146
# basic.c:487: 			dest--;
	ld.w	r0, [r13 + (-40)]	# tmp149, dest
	add.w	r0, -1 #111	# tmp148,
	st.w	[r13 + (-40)], r0	# dest, tmp148
# basic.c:488: 			*dest = *from;
	ld.w	r0, [r13 + (-36)]	# tmp150, from
	ld.b	r1, [r0]	# _41, *from_143
# basic.c:488: 			*dest = *from;
	ld.w	r0, [r13 + (-40)]	# tmp151, dest
	st.b	[r0], r1	# *dest_144, _41
# basic.c:489: 			tomove--;
	ld.w	r0, [r13 + (-32)]	# tmp153, tomove
	add.w	r0, -1 #111	# tmp152,
	st.w	[r13 + (-32)], r0	# tomove, tmp152
.L57:
# basic.c:484: 		while (tomove > 0)
	ld.w	r1, [r13 + (-32)]	# tmp154, tomove
	xor.w	r0, r0	# tmp155
	cmp.w	r1, r0	# tmp154, tmp155
	jnz	.L58		#
# basic.c:492: 		l = 0;
	xor.w	r0, r0	# tmp156
	st.w	[r13 + (-12)], r0	# l, tmp156
# basic.c:493: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r1, [r13 + (-16)]	# tmp157, first_time
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jz	.L59		#
# basic.c:493: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r0, [txtpos]	# txtpos.59_42, txtpos
	add.w	r0, 5 #111	# _43,
	ld.b	r0, [r0]	# _44, *_43
# basic.c:493: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	zex.b	r1, r0	# tmp159, _44
	mov.w	r0, 32	# tmp160,
	cmp.w	r1, r0	# tmp159, tmp160
	jnz	.L59		#
# basic.c:498: 			k = txtpos[sizeof(LINENUM)];
	ld.w	r0, [txtpos]	# txtpos.60_45, txtpos
	add.w	r0, 4 #111	# _46,
	ld.b	r0, [r0]	# _47, *_46
# basic.c:498: 			k = txtpos[sizeof(LINENUM)];
	st.b	[r13 + (-49)], r0	# k, _47
# basic.c:499: 			k -= sizeof(LINENUM) + sizeof(char); // actual length of line
	ld.b	r0, [r13 + (-49)]	# k.61_48, k
	add.w	r0, -5 #111	# tmp161,
	st.b	[r13 + (-49)], r0	# k, _49
# basic.c:500: 			for (l = 0; l < k; l++)
	xor.w	r0, r0	# tmp162
	st.w	[r13 + (-12)], r0	# l, tmp162
# basic.c:500: 			for (l = 0; l < k; l++)
	j	.L60		#
.L61:
# basic.c:502: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r1, [txtpos]	# txtpos.62_50, txtpos
	ld.w	r0, [r13 + (-12)]	# l.63_51, l
	add.w	r0, 6 #111	# _52,
	add.w	r1, r0 #222	# _53, _52
# basic.c:502: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r0, [txtpos]	# txtpos.64_54, txtpos
# basic.c:502: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r2, [r13 + (-12)]	# l.65_55, l
	add.w	r2, 5 #111	# _56,
# basic.c:502: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	add.w	r0, r2 #222	# _57, _56
# basic.c:502: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.b	r1, [r1]	# _58, *_53
# basic.c:502: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	st.b	[r0], r1	# *_57, _58
# basic.c:500: 			for (l = 0; l < k; l++)
	ld.w	r0, [r13 + (-12)]	# tmp164, l
	add.w	r0, 1 #111	# tmp163,
	st.w	[r13 + (-12)], r0	# l, tmp163
.L60:
# basic.c:500: 			for (l = 0; l < k; l++)
	ld.b	r1, [r13 + (-49)]	#, k
	sex.b	r0, r1	# _59,
# basic.c:500: 			for (l = 0; l < k; l++)
	ld.w	r1, [r13 + (-12)]	# tmp165, l
	cmp.w	r1, r0	# tmp165, _59
	jss	.L61		#
# basic.c:504: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	ld.w	r0, [txtpos]	# txtpos.66_60, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _61,
	add.w	r1, 3 #111	# _62,
	add.w	r0, r1 #222	# _63, _62
# basic.c:504: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	mov.b	r1, 32	# tmp166,
	st.b	[r0], r1	# *_63, tmp166
# basic.c:505: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	ld.w	r0, [txtpos]	# txtpos.67_64, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _65,
# basic.c:505: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r1, 4 #111	# _66,
# basic.c:505: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r0, r1 #222	# _67, _66
# basic.c:505: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	mov.b	r1, 10	# tmp167,
	st.b	[r0], r1	# *_67, tmp167
.L59:
# basic.c:510: 		for (tomove = 0; tomove < space_to_make; tomove++)
	xor.w	r0, r0	# tmp168
	st.w	[r13 + (-32)], r0	# tomove, tmp168
# basic.c:510: 		for (tomove = 0; tomove < space_to_make; tomove++)
	j	.L62		#
.L63:
# basic.c:512: 			*start = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.68_68, txtpos
	ld.b	r1, [r0]	# _69, *txtpos.68_68
# basic.c:512: 			*start = *txtpos;
	ld.w	r0, [r13 + (-8)]	# tmp169, start
	st.b	[r0], r1	# *start_77, _69
# basic.c:515: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.69_70, txtpos
	add.w	r0, 1 #111	# _71,
	st.w	[txtpos], r0	# txtpos, _71
# basic.c:516: 			start++;
	ld.w	r0, [r13 + (-8)]	# tmp171, start
	add.w	r0, 1 #111	# tmp170,
	st.w	[r13 + (-8)], r0	# start, tmp170
# basic.c:517: 			linelen--;
	ld.b	r0, [r13 + (-1)]	# linelen.70_72, linelen
	add.w	r0, -1 #111	# tmp172,
	st.b	[r13 + (-1)], r0	# linelen, tmp173
# basic.c:510: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r0, [r13 + (-32)]	# tmp175, tomove
	add.w	r0, 1 #111	# tmp174,
	st.w	[r13 + (-32)], r0	# tomove, tmp174
.L62:
# basic.c:510: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r1, [r13 + (-32)]	# tmp176, tomove
	ld.w	r0, [r13 + (-44)]	# tmp177, space_to_make
	cmp.w	r1, r0	# tmp176, tmp177
	js	.L63		#
# basic.c:519: 		program_end = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp178, newEnd
	st.w	[program_end], r0	# program_end, tmp178
# basic.c:520: 		first_time = 0;  // odd address hack
	xor.w	r0, r0	# tmp179
	st.w	[r13 + (-16)], r0	# first_time, tmp179
.L55:
# basic.c:467: 	while (linelen > 0)
	ld.b	r1, [r13 + (-1)]	# tmp180, linelen
	xor.w	r0, r0	# tmp181
	cmp.w	r1, r0	# tmp180, tmp181
	jnz	.L64		#
	j	.L45		#
.L65:
# basic.c:461: 		return;
	nop	
.L45:
# basic.c:523: }
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
# basic.c:527: 	printf("how?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC2	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:528: }
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
# basic.c:532: 	printf("what?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC3	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:533: }
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
# basic.c:537: 	printf("sorry!\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC4	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:538: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qsorry, .-qsorry
	.section	.rodata
	.p2align	2
.LC5:
	.string	"v0.52"
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
# basic.c:542: 	printf("TinyBasic %s\n", kVersion);
	mov.w	r0, sp	# tmp29,
	mov.w	r1, .LC5	# tmp30,
	st.w	[r0 + (4)], r1	#, tmp30
	mov.w	r1, .LC6	# tmp31,
	st.w	[r0], r1	#, tmp31
	call	printf		#
# basic.c:543: 	printf("%d bytes free\n", variables_begin - program_end);
	ld.w	r1, [variables_begin]	# variables_begin.71_1, variables_begin
	ld.w	r0, [program_end]	# program_end.72_2, program_end
	sub.w	r1, r0 #222	# _3, program_end.72_2
	mov.w	r0, sp	# tmp32,
	st.w	[r0 + (4)], r1	#, _3
	mov.w	r1, .LC7	# tmp33,
	st.w	[r0], r1	#, tmp33
	call	printf		#
# basic.c:544: }
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
	sub.w	sp, 28 #111	#,
# basic.c:548: 	int i = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-4)], r0	# i, tmp45
# basic.c:549: 	table_index = 0;
	xor.w	r0, r0	# tmp46
	st.b	[table_index], r0	# table_index, tmp46
.L78:
# basic.c:553: 		if (*table == 0)
	ld.w	r0, [r13 + (8)]	# tmp47, table
	ld.b	r0, [r0]	# _1, *table_21
# basic.c:553: 		if (*table == 0)
	sex.b	r1, r0	# tmp48, _1
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L79		#
# basic.c:559: 		if (txtpos[i] == *table)
	ld.w	r0, [txtpos]	# txtpos.73_2, txtpos
	ld.w	r1, [r13 + (-4)]	# i.74_3, i
	add.w	r0, r1 #222	# _4, i.74_3
	ld.b	r0, [r0]	# _5, *_4
	zex.b	r1, r0	# _6, _5
# basic.c:559: 		if (txtpos[i] == *table)
	ld.w	r0, [r13 + (8)]	# tmp50, table
	ld.b	r0, [r0]	# _7, *table_21
	sex.b	r0, r0	# _8, _7
# basic.c:559: 		if (txtpos[i] == *table)
	cmp.w	r1, r0	# _6, _8
	jnz	.L73		#
# basic.c:564: 			i++;
	ld.w	r0, [r13 + (-4)]	# tmp52, i
	add.w	r0, 1 #111	# tmp51,
	st.w	[r13 + (-4)], r0	# i, tmp51
# basic.c:565: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp54, table
	add.w	r0, 1 #111	# tmp53,
	st.w	[r13 + (8)], r0	# table, tmp53
	j	.L78		#
.L73:
# basic.c:570: 			if (*table == 0x01)
	ld.w	r0, [r13 + (8)]	# tmp55, table
	ld.b	r0, [r0]	# _9, *table_21
# basic.c:570: 			if (*table == 0x01)
	sex.b	r1, r0	# tmp56, _9
	mov.w	r0, 1	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L76		#
# basic.c:572: 				txtpos += i;  // Advance the pointer to following the keyword
	ld.w	r0, [txtpos]	# txtpos.75_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.76_11, i
	add.w	r0, r1 #222	# _12, i.76_11
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:573: 				ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.77_13, txtpos
	mov.w	r1, sp	# tmp58,
	st.w	[r1], r0	#, txtpos.77_13
	call	ignore_blanks		#
# basic.c:574: 				return;
	j	.L70		#
.L77:
# basic.c:580: 				table++;
	ld.w	r0, [r13 + (8)]	# tmp60, table
	add.w	r0, 1 #111	# tmp59,
	st.w	[r13 + (8)], r0	# table, tmp59
.L76:
# basic.c:578: 			while (*table != 0x01)
	ld.w	r0, [r13 + (8)]	# tmp61, table
	ld.b	r0, [r0]	# _14, *table_22
# basic.c:578: 			while (*table != 0x01)
	sex.b	r1, r0	# tmp62, _14
	mov.w	r0, 1	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jnz	.L77		#
# basic.c:584: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp65, table
	add.w	r0, 1 #111	# tmp64,
	st.w	[r13 + (8)], r0	# table, tmp64
# basic.c:585: 			table_index++;
	ld.b	r0, [table_index]	# table_index.78_15, table_index
	add.w	r0, 1 #111	# tmp66,
	st.b	[table_index], r0	# table_index, _19
# basic.c:586: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.81_20, txtpos
	mov.w	r1, sp	# tmp67,
	st.w	[r1], r0	#, txtpos.81_20
	call	ignore_blanks		#
# basic.c:587: 			i = 0;
	xor.w	r0, r0	# tmp68
	st.w	[r13 + (-4)], r0	# i, tmp68
# basic.c:553: 		if (*table == 0)
	j	.L78		#
.L79:
# basic.c:555: 			return;
	nop	
.L70:
# basic.c:590: }
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
# basic.c:595: 	int i = 0;
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:596: 	char delim = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.82_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.82_1
# basic.c:596: 	char delim = *txtpos;
	st.b	[r13 + (-5)], r0	# delim, _2
# basic.c:597: 	if (delim != '"' && delim != '\'')
	ld.b	r0, [r13 + (-5)]	#, delim
	sex.b	r1, r0	# tmp54,
	mov.w	r0, 34	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L81		#
# basic.c:597: 	if (delim != '"' && delim != '\'')
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r1, r2	# tmp56,
	mov.w	r0, 39	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L81		#
# basic.c:598: 		return 0;
	xor.w	r0, r0	# _27
	j	.L82		#
.L81:
# basic.c:599: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.83_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:602: 	while (txtpos[i] != delim)
	j	.L83		#
.L85:
# basic.c:604: 		if (txtpos[i] == NL)
	ld.w	r0, [txtpos]	# txtpos.84_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.85_6, i
	add.w	r0, r1 #222	# _7, i.85_6
	ld.b	r0, [r0]	# _8, *_7
# basic.c:604: 		if (txtpos[i] == NL)
	zex.b	r1, r0	# tmp58, _8
	mov.w	r0, 10	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jnz	.L84		#
# basic.c:605: 			return 0;
	xor.w	r0, r0	# _27
	j	.L82		#
.L84:
# basic.c:606: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp61, i
	add.w	r0, 1 #111	# tmp60,
	st.w	[r13 + (-4)], r0	# i, tmp60
.L83:
# basic.c:602: 	while (txtpos[i] != delim)
	ld.w	r0, [txtpos]	# txtpos.86_9, txtpos
	ld.w	r1, [r13 + (-4)]	# i.87_10, i
	add.w	r0, r1 #222	# _11, i.87_10
	ld.b	r0, [r0]	# _12, *_11
	zex.b	r1, r0	# _13, _12
# basic.c:602: 	while (txtpos[i] != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _14,
# basic.c:602: 	while (txtpos[i] != delim)
	cmp.w	r1, r0	# _13, _14
	jnz	.L85		#
# basic.c:610: 	while (*txtpos != delim)
	j	.L86		#
.L87:
# basic.c:612: 		put_char(*txtpos);
	ld.w	r0, [txtpos]	# txtpos.88_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.88_15
# basic.c:612: 		put_char(*txtpos);
	zex.b	r0, r0	# _17, _16
	mov.w	r1, sp	# tmp62,
	st.w	[r1], r0	#, _17
	call	put_char		#
# basic.c:613: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.89_18, txtpos
	add.w	r0, 1 #111	# _19,
	st.w	[txtpos], r0	# txtpos, _19
.L86:
# basic.c:610: 	while (*txtpos != delim)
	ld.w	r0, [txtpos]	# txtpos.90_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.90_20
	zex.b	r1, r0	# _22, _21
# basic.c:610: 	while (*txtpos != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _23,
# basic.c:610: 	while (*txtpos != delim)
	cmp.w	r1, r0	# _22, _23
	jnz	.L87		#
# basic.c:615: 	txtpos++; // Skip over the last delimiter
	ld.w	r0, [txtpos]	# txtpos.91_24, txtpos
	add.w	r0, 1 #111	# _25,
	st.w	[txtpos], r0	# txtpos, _25
# basic.c:617: 	return 1;
	mov.b	r0, 1	# _27,
.L82:
# basic.c:618: }
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
# basic.c:622: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:623: 	if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.92_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.92_1
# basic.c:623: 	if (*txtpos != '(')
	zex.b	r1, r0	# tmp36, _2
	mov.w	r0, 40	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L89		#
# basic.c:624: 		return 1;
	mov.w	r0, 1	# _9,
	j	.L90		#
.L89:
# basic.c:625: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.93_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:626: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:627: 	if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.94_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.94_5
# basic.c:627: 	if (*txtpos != ')')
	zex.b	r1, r0	# tmp38, _6
	mov.w	r0, 41	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L91		#
# basic.c:628: 		return 1;
	mov.w	r0, 1	# _9,
	j	.L90		#
.L91:
# basic.c:629: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.95_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:630: 	return 0;
	xor.w	r0, r0	# _9
.L90:
# basic.c:631: }
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
# basic.c:635: 	unsigned char f = table_index;
	ld.b	r0, [table_index]	# table_index.96_1, table_index
	st.b	[r13 + (-25)], r0	# f, table_index.96_1
# basic.c:638: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:644: 	if (*txtpos == '-') {
	ld.w	r0, [txtpos]	# txtpos.97_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.97_2
# basic.c:644: 	if (*txtpos == '-') {
	zex.b	r1, r0	# tmp152, _3
	mov.w	r0, 45	# tmp153,
	cmp.w	r1, r0	# tmp152, tmp153
	jnz	.L93		#
# basic.c:645: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.98_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:646: 		return -expr4();
	call	expr4		#
	mov.w	r1, r0	# _6,
# basic.c:646: 		return -expr4();
	mov.w	r0, -2147483648	# tmp154,
	xor.w	r1, r0	# _133, tmp154
	j	.L94		#
.L93:
# basic.c:649: 	if (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.99_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.99_7
# basic.c:649: 	if (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp155, _8
	mov.w	r0, 47	# tmp156,
	cmp.w	r1, r0	# tmp155, tmp156
	jse	.L95		#
# basic.c:649: 	if (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.100_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.100_9
# basic.c:649: 	if (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp157, _10
	mov.w	r0, 57	# tmp158,
	cmp.w	r1, r0	# tmp157, tmp158
	jg	.L95		#
# basic.c:651: 		VAR a = 0;
	xor.w	r0, r0	# tmp159
	st.w	[r13 + (-8)], r0	# a, tmp159
# basic.c:652: 		int decimals = 0;
	xor.w	r0, r0	# tmp160
	st.w	[r13 + (-12)], r0	# decimals, tmp160
# basic.c:653: 		float dec = 0.1f;
	mov.w	r0, 1036831949	# tmp161,
	st.w	[r13 + (-16)], r0	# dec, tmp161
.L100:
# basic.c:655: 			if (*txtpos == '.') 
	ld.w	r0, [txtpos]	# txtpos.101_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.101_11
# basic.c:655: 			if (*txtpos == '.') 
	zex.b	r1, r0	# tmp162, _12
	mov.w	r0, 46	# tmp163,
	cmp.w	r1, r0	# tmp162, tmp163
	jnz	.L96		#
# basic.c:657: 				decimals = 1;
	mov.w	r0, 1	# tmp164,
	st.w	[r13 + (-12)], r0	# decimals, tmp164
	j	.L97		#
.L96:
# basic.c:661: 				if (decimals)
	ld.w	r1, [r13 + (-12)]	# tmp165, decimals
	xor.w	r0, r0	# tmp166
	cmp.w	r1, r0	# tmp165, tmp166
	jz	.L98		#
# basic.c:663: 					a = a + dec * (*txtpos - '0');
	ld.w	r0, [txtpos]	# txtpos.102_13, txtpos
	ld.b	r0, [r0]	# _14, *txtpos.102_13
	zex.b	r0, r0	# _15, _14
# basic.c:663: 					a = a + dec * (*txtpos - '0');
	add.w	r0, -48 #111	# _16,
# basic.c:663: 					a = a + dec * (*txtpos - '0');
	st.w	[sp], r0	#, _16
	call	__floatsisf		#
	mov.w	r2, r0	# _17,
	ld.w	r1, [r13 + (-16)]	# tmp167, dec
	mov.w	r0, r2	# tmp168, _17
	st.w	[sp + (4)], r1	#, tmp167
	st.w	[sp], r0	#, tmp168
	call	__mulsf3		#
	mov.w	r1, r0	# tmp169,
	mov.w	r0, r1	# _18, tmp169
# basic.c:663: 					a = a + dec * (*txtpos - '0');
	st.w	[sp + (4)], r0	#, tmp170
	ld.w	r0, [r13 + (-8)]	# tmp171, a
	st.w	[sp], r0	#, tmp171
	call	__addsf3		#
	mov.w	r1, r0	# tmp172,
	mov.w	r0, r1	# tmp173, tmp172
	st.w	[r13 + (-8)], r0	# a, tmp173
# basic.c:664: 					dec = dec * 0.1f;
	mov.w	r0, 1036831949	# tmp174,
	st.w	[sp + (4)], r0	#, tmp174
	ld.w	r0, [r13 + (-16)]	# tmp175, dec
	st.w	[sp], r0	#, tmp175
	call	__mulsf3		#
	mov.w	r1, r0	# tmp176,
	mov.w	r0, r1	# tmp177, tmp176
	st.w	[r13 + (-16)], r0	# dec, tmp177
	j	.L97		#
.L98:
# basic.c:667: 					a = a * 10 + (*txtpos - '0');
	mov.w	r0, 1092616192	# tmp178,
	st.w	[sp + (4)], r0	#, tmp178
	ld.w	r0, [r13 + (-8)]	# tmp179, a
	st.w	[sp], r0	#, tmp179
	call	__mulsf3		#
	mov.w	r1, r0	# tmp180,
	mov.w	r6, r1	# _19, tmp180
# basic.c:667: 					a = a * 10 + (*txtpos - '0');
	ld.w	r0, [txtpos]	# txtpos.103_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.103_20
	zex.b	r0, r0	# _22, _21
# basic.c:667: 					a = a * 10 + (*txtpos - '0');
	add.w	r0, -48 #111	# _23,
# basic.c:667: 					a = a * 10 + (*txtpos - '0');
	st.w	[sp], r0	#, _23
	call	__floatsisf		#
	mov.w	r1, r0	# _24,
# basic.c:667: 					a = a * 10 + (*txtpos - '0');
	mov.w	r0, r6	# tmp182, _19
	st.w	[sp + (4)], r1	#, tmp181
	st.w	[sp], r0	#, tmp182
	call	__addsf3		#
	mov.w	r1, r0	# tmp183,
	mov.w	r0, r1	# tmp184, tmp183
	st.w	[r13 + (-8)], r0	# a, tmp184
.L97:
# basic.c:669: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.104_25, txtpos
	add.w	r0, 1 #111	# _26,
	st.w	[txtpos], r0	# txtpos, _26
# basic.c:670: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.105_27, txtpos
	ld.b	r0, [r0]	# _28, *txtpos.105_27
# basic.c:670: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp185, _28
	mov.w	r0, 47	# tmp186,
	cmp.w	r1, r0	# tmp185, tmp186
	jse	.L99		#
# basic.c:670: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.106_29, txtpos
	ld.b	r0, [r0]	# _30, *txtpos.106_29
# basic.c:670: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp187, _30
	mov.w	r0, 57	# tmp188,
	cmp.w	r1, r0	# tmp187, tmp188
	jse	.L100		#
.L99:
# basic.c:670: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.107_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.107_31
# basic.c:670: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp189, _32
	mov.w	r0, 46	# tmp190,
	cmp.w	r1, r0	# tmp189, tmp190
	jz	.L100		#
# basic.c:674: 		return a;
	ld.w	r1, [r13 + (-8)]	# _133, a
	j	.L94		#
.L95:
# basic.c:681: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.108_33, txtpos
	ld.b	r0, [r0]	# _34, *txtpos.108_33
# basic.c:681: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp191, _34
	mov.w	r0, 64	# tmp192,
	cmp.w	r1, r0	# tmp191, tmp192
	jse	.L101		#
# basic.c:681: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.109_35, txtpos
	ld.b	r0, [r0]	# _36, *txtpos.109_35
# basic.c:681: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp193, _36
	mov.w	r0, 90	# tmp194,
	cmp.w	r1, r0	# tmp193, tmp194
	jg	.L101		#
# basic.c:683: 		int varName = *txtpos;	//x 
	ld.w	r0, [txtpos]	# txtpos.110_37, txtpos
	ld.b	r0, [r0]	# _38, *txtpos.110_37
# basic.c:683: 		int varName = *txtpos;	//x 
	zex.b	r0, r0	# tmp195, _38
	st.w	[r13 + (-32)], r0	# varName, tmp195
# basic.c:685: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z') // Is it a variable reference (single alpha)
	ld.w	r0, [txtpos]	# txtpos.111_39, txtpos
	add.w	r0, 1 #111	# _40,
	ld.b	r0, [r0]	# _41, *_40
# basic.c:685: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z') // Is it a variable reference (single alpha)
	zex.b	r1, r0	# tmp196, _41
	mov.w	r0, 64	# tmp197,
	cmp.w	r1, r0	# tmp196, tmp197
	jse	.L102		#
# basic.c:685: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z') // Is it a variable reference (single alpha)
	ld.w	r0, [txtpos]	# txtpos.112_42, txtpos
	add.w	r0, 1 #111	# _43,
	ld.b	r0, [r0]	# _44, *_43
# basic.c:685: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z') // Is it a variable reference (single alpha)
	zex.b	r1, r0	# tmp198, _44
	mov.w	r0, 90	# tmp199,
	cmp.w	r1, r0	# tmp198, tmp199
	jse	.L103		#
.L102:
# basic.c:688: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	mov.w	r0, 1	# tmp200,
	st.w	[r13 + (-20)], r0	# idx, tmp200
# basic.c:688: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	j	.L104		#
.L110:
# basic.c:690: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	ld.w	r0, [txtpos]	# txtpos.113_45, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.114_46, idx
	add.w	r0, r1 #222	# _47, idx.114_46
	ld.b	r0, [r0]	# _48, *_47
# basic.c:690: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	zex.b	r1, r0	# tmp201, _48
	mov.w	r0, 32	# tmp202,
	cmp.w	r1, r0	# tmp201, tmp202
	jz	.L105		#
# basic.c:690: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	ld.w	r0, [txtpos]	# txtpos.115_49, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.116_50, idx
	add.w	r0, r1 #222	# _51, idx.116_50
	ld.b	r0, [r0]	# _52, *_51
# basic.c:690: 				if (txtpos[idx] == SPACE || txtpos[idx] == TAB) continue;
	zex.b	r1, r0	# tmp203, _52
	mov.w	r0, 9	# tmp204,
	cmp.w	r1, r0	# tmp203, tmp204
	jnz	.L106		#
.L105:
# basic.c:688: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	ld.w	r0, [r13 + (-20)]	# tmp206, idx
	add.w	r0, 1 #111	# tmp205,
	st.w	[r13 + (-20)], r0	# idx, tmp205
	j	.L104		#
.L106:
# basic.c:691: 				else if (txtpos[idx] == '(') //x(10)
	ld.w	r0, [txtpos]	# txtpos.117_53, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.118_54, idx
	add.w	r0, r1 #222	# _55, idx.118_54
	ld.b	r0, [r0]	# _56, *_55
# basic.c:691: 				else if (txtpos[idx] == '(') //x(10)
	zex.b	r1, r0	# tmp207, _56
	mov.w	r0, 40	# tmp208,
	cmp.w	r1, r0	# tmp207, tmp208
	jnz	.L143		#
# basic.c:694: 					txtpos += idx + 1;		//(10)
	ld.w	r0, [txtpos]	# txtpos.119_57, txtpos
	ld.w	r1, [r13 + (-20)]	# idx.120_58, idx
	add.w	r1, 1 #111	# _59,
	add.w	r0, r1 #222	# _60, _59
	st.w	[txtpos], r0	# txtpos, _60
# basic.c:696: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:697: 					expression_error = 0;
	xor.w	r0, r0	# tmp209
	st.b	[expression_error], r0	# expression_error, tmp209
# basic.c:698: 					VAR index = expression();
	call	expression		#
	st.w	[r13 + (-40)], r0	# index,
# basic.c:699: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:700: 					if (!expression_error && *txtpos == ')')
	ld.b	r0, [expression_error]	# expression_error.121_61, expression_error
# basic.c:700: 					if (!expression_error && *txtpos == ')')
	sex.b	r1, r0	# tmp210, expression_error.121_61
	xor.w	r0, r0	# tmp211
	cmp.w	r1, r0	# tmp210, tmp211
	jnz	.L108		#
# basic.c:700: 					if (!expression_error && *txtpos == ')')
	ld.w	r0, [txtpos]	# txtpos.122_62, txtpos
	ld.b	r0, [r0]	# _63, *txtpos.122_62
# basic.c:700: 					if (!expression_error && *txtpos == ')')
	zex.b	r1, r0	# tmp212, _63
	mov.w	r0, 41	# tmp213,
	cmp.w	r1, r0	# tmp212, tmp213
	jnz	.L108		#
# basic.c:702: 						txtpos++;
	ld.w	r0, [txtpos]	# txtpos.123_64, txtpos
	add.w	r0, 1 #111	# _65,
	st.w	[txtpos], r0	# txtpos, _65
# basic.c:703: 						VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [arrays_begin]	# arrays_begin.124_66, arrays_begin
	ld.w	r1, [r13 + (-32)]	# varName.125_67, varName
	mov.w	r2, 1073741759	# tmp214,
	add.w	r1, r2 #222	# _68, tmp214
	mov.w	r2, 2	# tmp215,
	shl.w	r1, r2	# _69, tmp215
	add.w	r0, r1 #222	# _70, _69
# basic.c:703: 						VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [r0]	# tmp216, *_70
	st.w	[r13 + (-44)], r0	# array, tmp216
# basic.c:704: 						return array[(int)index];
	ld.w	r0, [r13 + (-40)]	# tmp217, index
	st.w	[sp], r0	#, tmp217
	call	__fixsfsi		#
	mov.w	r1, r0	# _72, _71
# basic.c:704: 						return array[(int)index];
	mov.w	r0, 2	# tmp218,
	shl.w	r1, r0	# _73, tmp218
	ld.w	r0, [r13 + (-44)]	# tmp219, array
	add.w	r0, r1 #222	# _74, _73
	ld.w	r1, [r0]	# _133, *_74
	j	.L94		#
.L108:
# basic.c:708: 						expression_error = 1;
	mov.b	r0, 1	# tmp220,
	st.b	[expression_error], r0	# expression_error, tmp220
# basic.c:709: 						return 0;
	xor.w	r1, r1	# _133
	j	.L94		#
.L104:
# basic.c:688: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	ld.w	r0, [txtpos]	# txtpos.126_75, txtpos
	mov.w	r1, sp	# tmp221,
	st.w	[r1], r0	#, txtpos.126_75
	call	strlen		#
	mov.w	r1, r0	# _76,
# basic.c:688: 			for (int idx = 1; idx < strlen(txtpos); idx++)
	ld.w	r0, [r13 + (-20)]	# tmp222, idx
	cmp.w	r0, r1	# tmp222, _76
	jss	.L110		#
	j	.L109		#
.L143:
# basic.c:711: 				} else break;
	nop	
.L109:
# basic.c:717: 			val = ((VAR *)variables_begin)[varName - 'A'];
	ld.w	r0, [variables_begin]	# variables_begin.127_77, variables_begin
# basic.c:717: 			val = ((VAR *)variables_begin)[varName - 'A'];
	ld.w	r1, [r13 + (-32)]	# varName.128_78, varName
	mov.w	r2, 1073741759	# tmp223,
	add.w	r1, r2 #222	# _79, tmp223
	mov.w	r2, 2	# tmp224,
	shl.w	r1, r2	# _80, tmp224
	add.w	r0, r1 #222	# _81, _80
# basic.c:717: 			val = ((VAR *)variables_begin)[varName - 'A'];
	ld.w	r0, [r0]	# tmp225, *_81
	st.w	[r13 + (-36)], r0	# val, tmp225
# basic.c:718: 			if (*txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.129_82, txtpos
	ld.b	r0, [r0]	# _83, *txtpos.129_82
# basic.c:718: 			if (*txtpos != NL)
	zex.b	r1, r0	# tmp226, _83
	mov.w	r0, 10	# tmp227,
	cmp.w	r1, r0	# tmp226, tmp227
	jz	.L111		#
# basic.c:719: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.130_84, txtpos
	add.w	r0, 1 #111	# _85,
	st.w	[txtpos], r0	# txtpos, _85
.L111:
# basic.c:720: 			return val;
	ld.w	r1, [r13 + (-36)]	# _133, val
	j	.L94		#
.L103:
# basic.c:724: 		scantable(func_tab);
	mov.w	r1, sp	# tmp228,
	mov.w	r0, func_tab	# tmp229,
	st.w	[r1], r0	#, tmp229
	call	scantable		#
# basic.c:730: 		if (table_index == FUNC_UNKNOWN)
	ld.b	r0, [table_index]	# table_index.131_86, table_index
# basic.c:730: 		if (table_index == FUNC_UNKNOWN)
	sex.b	r1, r0	# tmp230, table_index.131_86
	mov.w	r0, 20	# tmp231,
	cmp.w	r1, r0	# tmp230, tmp231
	jz	.L144		#
# basic.c:733: 		switch(table_index)
	ld.b	r0, [table_index]	# table_index.132_87, table_index
	sex.b	r0, r0	# _88, table_index.132_87
	mov.w	r1, 15	# tmp232,
	cmp.w	r0, r1	# _88, tmp232
	jz	.L114		#
	mov.w	r1, 15	# tmp233,
	cmp.w	r0, r1	# _88, tmp233
	jgs	.L115		#
	mov.w	r1, 14	# tmp234,
	cmp.w	r0, r1	# _88, tmp234
	jz	.L116		#
	mov.w	r1, 14	# tmp235,
	cmp.w	r0, r1	# _88, tmp235
	jgs	.L115		#
	mov.w	r1, 5	# tmp236,
	cmp.w	r0, r1	# _88, tmp236
	jz	.L117		#
	mov.w	r1, 6	# tmp237,
	cmp.w	r0, r1	# _88, tmp237
	jz	.L118		#
	j	.L115		#
.L117:
# basic.c:736: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _89,
# basic.c:736: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp238
	cmp.w	r1, r0	# _89, tmp238
	jnz	.L145		#
# basic.c:738: 			return getc();
	call	getc		#
	st.w	[sp], r0	#, _90
	call	__floatsisf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L118:
# basic.c:740: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _91,
# basic.c:740: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp239
	cmp.w	r1, r0	# _91, tmp239
	jnz	.L146		#
# basic.c:742: 			return is_key_pressed();
	call	is_key_pressed		#
	st.w	[sp], r0	#, _92
	call	__floatsisf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L116:
# basic.c:744: 			return M_PI;
	mov.w	r1, 1078530011	# _133,
	j	.L94		#
.L114:
# basic.c:746: 			return M_E;
	mov.w	r1, 1076754516	# _133,
	j	.L94		#
.L115:
# basic.c:749: 		f = table_index;
	ld.b	r0, [table_index]	# table_index.133_93, table_index
	st.b	[r13 + (-25)], r0	# f, table_index.133_93
# basic.c:751: 		if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.134_94, txtpos
	ld.b	r0, [r0]	# _95, *txtpos.134_94
# basic.c:751: 		if (*txtpos != '(')
	zex.b	r1, r0	# tmp240, _95
	mov.w	r0, 40	# tmp241,
	cmp.w	r1, r0	# tmp240, tmp241
	jnz	.L147		#
# basic.c:754: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.135_96, txtpos
	add.w	r0, 1 #111	# _97,
	st.w	[txtpos], r0	# txtpos, _97
# basic.c:755: 		expression_error = 0;
	xor.w	r0, r0	# tmp242
	st.b	[expression_error], r0	# expression_error, tmp242
# basic.c:756: 		val = expression();
	call	expression		#
	st.w	[r13 + (-36)], r0	# val,
# basic.c:757: 		if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.136_98, expression_error
# basic.c:757: 		if (expression_error)
	sex.b	r1, r0	# tmp243, expression_error.136_98
	xor.w	r0, r0	# tmp244
	cmp.w	r1, r0	# tmp243, tmp244
	jnz	.L148		#
# basic.c:760: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:765: 		VAR val2 = 0;
	xor.w	r0, r0	# tmp245
	st.w	[r13 + (-24)], r0	# val2, tmp245
# basic.c:766: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.137_99, txtpos
	ld.b	r0, [r0]	# _100, *txtpos.137_99
# basic.c:766: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp246, _100
	mov.w	r0, 41	# tmp247,
	cmp.w	r1, r0	# tmp246, tmp247
	jz	.L123		#
# basic.c:768: 			if (*txtpos == ',') 
	ld.w	r0, [txtpos]	# txtpos.138_101, txtpos
	ld.b	r0, [r0]	# _102, *txtpos.138_101
# basic.c:768: 			if (*txtpos == ',') 
	zex.b	r1, r0	# tmp248, _102
	mov.w	r0, 44	# tmp249,
	cmp.w	r1, r0	# tmp248, tmp249
	jnz	.L149		#
# basic.c:770: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.139_103, txtpos
	add.w	r0, 1 #111	# _104,
	st.w	[txtpos], r0	# txtpos, _104
# basic.c:771: 				expression_error = 0;
	xor.w	r0, r0	# tmp250
	st.b	[expression_error], r0	# expression_error, tmp250
# basic.c:772: 				val2 = expression();
	call	expression		#
	st.w	[r13 + (-24)], r0	# val2,
# basic.c:773: 				if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.140_105, expression_error
# basic.c:773: 				if (expression_error)
	sex.b	r1, r0	# tmp251, expression_error.140_105
	xor.w	r0, r0	# tmp252
	cmp.w	r1, r0	# tmp251, tmp252
	jnz	.L150		#
.L123:
# basic.c:779: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.141_106, txtpos
	add.w	r0, 1 #111	# _107,
	st.w	[txtpos], r0	# txtpos, _107
# basic.c:781: 		switch (f)
	ld.b	r0, [r13 + (-25)]	# _108, f
	mov.w	r1, 18	# tmp253,
	cmp.w	r0, r1	# _108, tmp253
	jz	.L125		#
	mov.w	r1, 18	# tmp254,
	cmp.w	r0, r1	# _108, tmp254
	jgs	.L101		#
	mov.w	r1, 17	# tmp255,
	cmp.w	r0, r1	# _108, tmp255
	jz	.L126		#
	mov.w	r1, 17	# tmp256,
	cmp.w	r0, r1	# _108, tmp256
	jgs	.L101		#
	mov.w	r1, 16	# tmp257,
	cmp.w	r0, r1	# _108, tmp257
	jz	.L127		#
	mov.w	r1, 16	# tmp258,
	cmp.w	r0, r1	# _108, tmp258
	jgs	.L101		#
	mov.w	r1, 13	# tmp259,
	cmp.w	r0, r1	# _108, tmp259
	jz	.L128		#
	mov.w	r1, 13	# tmp260,
	cmp.w	r0, r1	# _108, tmp260
	jgs	.L101		#
	mov.w	r1, 12	# tmp261,
	cmp.w	r0, r1	# _108, tmp261
	jz	.L129		#
	mov.w	r1, 12	# tmp262,
	cmp.w	r0, r1	# _108, tmp262
	jgs	.L101		#
	mov.w	r1, 11	# tmp263,
	cmp.w	r0, r1	# _108, tmp263
	jz	.L130		#
	mov.w	r1, 11	# tmp264,
	cmp.w	r0, r1	# _108, tmp264
	jgs	.L101		#
	mov.w	r1, 10	# tmp265,
	cmp.w	r0, r1	# _108, tmp265
	jz	.L131		#
	mov.w	r1, 10	# tmp266,
	cmp.w	r0, r1	# _108, tmp266
	jgs	.L101		#
	mov.w	r1, 9	# tmp267,
	cmp.w	r0, r1	# _108, tmp267
	jz	.L132		#
	mov.w	r1, 9	# tmp268,
	cmp.w	r0, r1	# _108, tmp268
	jgs	.L101		#
	mov.w	r1, 8	# tmp269,
	cmp.w	r0, r1	# _108, tmp269
	jz	.L133		#
	mov.w	r1, 8	# tmp270,
	cmp.w	r0, r1	# _108, tmp270
	jgs	.L101		#
	mov.w	r1, 7	# tmp271,
	cmp.w	r0, r1	# _108, tmp271
	jz	.L134		#
	mov.w	r1, 7	# tmp272,
	cmp.w	r0, r1	# _108, tmp272
	jgs	.L101		#
	mov.w	r1, 4	# tmp273,
	cmp.w	r0, r1	# _108, tmp273
	jz	.L135		#
	mov.w	r1, 4	# tmp274,
	cmp.w	r0, r1	# _108, tmp274
	jgs	.L101		#
	xor.w	r1, r1	# tmp275
	cmp.w	r0, r1	# _108, tmp275
	jz	.L136		#
	mov.w	r1, 1	# tmp276,
	cmp.w	r0, r1	# _108, tmp276
	jz	.L137		#
	j	.L101		#
.L136:
# basic.c:784: 				return buffer[(int)val];
	ld.w	r6, [buffer]	# buffer.142_109, buffer
# basic.c:784: 				return buffer[(int)val];
	ld.w	r0, [r13 + (-36)]	# tmp277, val
	st.w	[sp], r0	#, tmp277
	call	__fixsfsi		#
	mov.w	r1, r0	# _111, _110
# basic.c:784: 				return buffer[(int)val];
	mov.w	r0, r6	# _112, buffer.142_109
	add.w	r0, r1 #222	# _112, _111
	ld.b	r0, [r0]	# _113, *_112
	sex.b	r0, r0	# tmp278, _113
	st.w	[sp], r0	#, tmp278
	call	__floatsisf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L137:
# basic.c:786: 				if (val < 0)
	xor.w	r0, r0	# tmp279
	st.w	[sp + (4)], r0	#, tmp279
	ld.w	r0, [r13 + (-36)]	# tmp280, val
	st.w	[sp], r0	#, tmp280
	call	__ltsf2		#
	mov.w	r1, r0	# tmp281,
	xor.w	r0, r0	# tmp282
	cmp.w	r1, r0	# tmp281, tmp282
	jges	.L142		#
# basic.c:787: 					return -val;
	ld.w	r1, [r13 + (-36)]	# tmp283, val
	mov.w	r0, -2147483648	# tmp284,
	xor.w	r1, r0	# _133, tmp284
	j	.L94		#
.L142:
# basic.c:788: 				return val;
	ld.w	r1, [r13 + (-36)]	# _133, val
	j	.L94		#
.L135:
# basic.c:790: 				return(rand() % (int)val);
	call	rand		#
	mov.w	r6, r0	# _114,
# basic.c:790: 				return(rand() % (int)val);
	ld.w	r0, [r13 + (-36)]	# tmp285, val
	st.w	[sp], r0	#, tmp285
	call	__fixsfsi		#
	mov.w	r1, r0	# _115,
# basic.c:790: 				return(rand() % (int)val);
	mov.w	r0, r6	# _116, _114
	div.w	r0, r1	# _116, _115
mov.w	r0, r14	# _116
	st.w	[sp], r0	#, _116
	call	__floatsisf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L134:
# basic.c:792: 				return(sinf(val));
	mov.w	r1, sp	# tmp286,
	ld.w	r0, [r13 + (-36)]	# tmp287, val
	st.w	[r1], r0	#, tmp287
	call	sinf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L133:
# basic.c:794: 				return(cosf(val));
	mov.w	r1, sp	# tmp288,
	ld.w	r0, [r13 + (-36)]	# tmp289, val
	st.w	[r1], r0	#, tmp289
	call	cosf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L132:
# basic.c:796: 				return(tanf(val));
	mov.w	r1, sp	# tmp290,
	ld.w	r0, [r13 + (-36)]	# tmp291, val
	st.w	[r1], r0	#, tmp291
	call	tanf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L131:
# basic.c:798: 				return(expf(val));
	mov.w	r1, sp	# tmp292,
	ld.w	r0, [r13 + (-36)]	# tmp293, val
	st.w	[r1], r0	#, tmp293
	call	expf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L130:
# basic.c:800: 				return(logf(val));
	mov.w	r1, sp	# tmp294,
	ld.w	r0, [r13 + (-36)]	# tmp295, val
	st.w	[r1], r0	#, tmp295
	call	logf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L129:
# basic.c:802: 				return(sqrtf(val));
	mov.w	r1, sp	# tmp296,
	ld.w	r0, [r13 + (-36)]	# tmp297, val
	st.w	[r1], r0	#, tmp297
	call	sqrtf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L128:
# basic.c:804: 				return(powf(val, val2));
	mov.w	r0, sp	# tmp298,
	ld.w	r1, [r13 + (-24)]	# tmp299, val2
	st.w	[r0 + (4)], r1	#, tmp299
	ld.w	r1, [r13 + (-36)]	# tmp300, val
	st.w	[r0], r1	#, tmp300
	call	powf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L127:
# basic.c:806: 				return(atanf(val));
	mov.w	r1, sp	# tmp301,
	ld.w	r0, [r13 + (-36)]	# tmp302, val
	st.w	[r1], r0	#, tmp302
	call	atanf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L126:
# basic.c:808: 				return(asinf(val));
	mov.w	r1, sp	# tmp303,
	ld.w	r0, [r13 + (-36)]	# tmp304, val
	st.w	[r1], r0	#, tmp304
	call	asinf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L125:
# basic.c:810: 				return(acosf(val));
	mov.w	r1, sp	# tmp305,
	ld.w	r0, [r13 + (-36)]	# tmp306, val
	st.w	[r1], r0	#, tmp306
	call	acosf		#
	mov.w	r1, r0	# _133,
	j	.L94		#
.L101:
# basic.c:814: 	if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.143_117, txtpos
	ld.b	r0, [r0]	# _118, *txtpos.143_117
# basic.c:814: 	if (*txtpos == '(')
	zex.b	r1, r0	# tmp307, _118
	mov.w	r0, 40	# tmp308,
	cmp.w	r1, r0	# tmp307, tmp308
	jnz	.L151		#
# basic.c:817: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.144_119, txtpos
	add.w	r0, 1 #111	# _120,
	st.w	[txtpos], r0	# txtpos, _120
# basic.c:818: 		a = expression();
	call	expression		#
	st.w	[r13 + (-48)], r0	# a,
# basic.c:819: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.145_121, txtpos
	ld.b	r0, [r0]	# _122, *txtpos.145_121
# basic.c:819: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp309, _122
	mov.w	r0, 41	# tmp310,
	cmp.w	r1, r0	# tmp309, tmp310
	jnz	.L152		#
# basic.c:822: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.146_123, txtpos
	add.w	r0, 1 #111	# _124,
	st.w	[txtpos], r0	# txtpos, _124
# basic.c:823: 		return a;
	ld.w	r1, [r13 + (-48)]	# _133, a
	j	.L94		#
.L144:
# basic.c:731: 			goto expr4_error;
	nop	
	j	.L113		#
.L145:
# basic.c:737: 				goto expr4_error;
	nop	
	j	.L113		#
.L146:
# basic.c:741: 				goto expr4_error;
	nop	
	j	.L113		#
.L147:
# basic.c:752: 			goto expr4_error;
	nop	
	j	.L113		#
.L148:
# basic.c:758: 			goto expr4_error;
	nop	
	j	.L113		#
.L149:
# basic.c:776: 				goto expr4_error;
	nop	
	j	.L113		#
.L150:
# basic.c:774: 					goto expr4_error;
	nop	
	j	.L113		#
.L151:
# basic.c:826: expr4_error:
	nop	
	j	.L113		#
.L152:
# basic.c:820: 			goto expr4_error;
	nop	
.L113:
# basic.c:827: 	expression_error = 1;
	mov.b	r0, 1	# tmp311,
	st.b	[expression_error], r0	# expression_error, tmp311
# basic.c:828: 	return 0;
	xor.w	r1, r1	# _133
.L94:
# basic.c:830: }
	mov.w	r0, r1	# <retval>, _133
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
# basic.c:837: 	a = expr4();
	call	expr4		#
	st.w	[r13 + (-8)], r0	# a,
# basic.c:839: 	ignore_blanks(); // fix for eg:  100 a = a + 1
	call	ignore_blanks		#
.L163:
# basic.c:843: 		if (*txtpos == '*')
	ld.w	r0, [txtpos]	# txtpos.147_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.147_1
# basic.c:843: 		if (*txtpos == '*')
	zex.b	r1, r0	# tmp42, _2
	mov.w	r0, 42	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L154		#
# basic.c:845: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.148_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:846: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:847: 			a *= b;
	ld.w	r0, [r13 + (-12)]	# tmp44, b
	st.w	[sp + (4)], r0	#, tmp44
	ld.w	r0, [r13 + (-8)]	# tmp45, a
	st.w	[sp], r0	#, tmp45
	call	__mulsf3		#
	mov.w	r1, r0	# tmp46,
	mov.w	r0, r1	# tmp47, tmp46
	st.w	[r13 + (-8)], r0	# a, tmp47
	j	.L163		#
.L154:
# basic.c:849: 		else if (*txtpos == '/')
	ld.w	r0, [txtpos]	# txtpos.149_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.149_5
# basic.c:849: 		else if (*txtpos == '/')
	zex.b	r1, r0	# tmp48, _6
	mov.w	r0, 47	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L156		#
# basic.c:851: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.150_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:852: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:853: 			if (b != 0)
	xor.w	r0, r0	# tmp50
	st.w	[sp + (4)], r0	#, tmp50
	ld.w	r0, [r13 + (-12)]	# tmp51, b
	st.w	[sp], r0	#, tmp51
	call	__nesf2		#
	mov.w	r1, r0	# tmp52,
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L166		#
# basic.c:854: 				a /= b;
	ld.w	r0, [r13 + (-12)]	# tmp54, b
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (-8)]	# tmp55, a
	st.w	[sp], r0	#, tmp55
	call	__divsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-8)], r0	# a, tmp57
	j	.L163		#
.L166:
# basic.c:856: 				expression_error = 1;
	mov.b	r0, 1	# tmp58,
	st.b	[expression_error], r0	# expression_error, tmp58
	j	.L163		#
.L156:
# basic.c:858: 		else if (*txtpos == '%')
	ld.w	r0, [txtpos]	# txtpos.151_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.151_9
# basic.c:858: 		else if (*txtpos == '%')
	zex.b	r1, r0	# tmp59, _10
	mov.w	r0, 37	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jnz	.L159		#
# basic.c:860: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.152_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:861: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:862: 			if (b != 0)
	xor.w	r0, r0	# tmp61
	st.w	[sp + (4)], r0	#, tmp61
	ld.w	r0, [r13 + (-12)]	# tmp62, b
	st.w	[sp], r0	#, tmp62
	call	__nesf2		#
	mov.w	r1, r0	# tmp63,
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L167		#
# basic.c:864: 				int x = (int)a % (int)b;
	ld.w	r0, [r13 + (-8)]	# tmp65, a
	st.w	[sp], r0	#, tmp65
	call	__fixsfsi		#
	mov.w	r6, r0	# _13,
# basic.c:864: 				int x = (int)a % (int)b;
	ld.w	r0, [r13 + (-12)]	# tmp66, b
	st.w	[sp], r0	#, tmp66
	call	__fixsfsi		#
	mov.w	r1, r0	# _14,
# basic.c:864: 				int x = (int)a % (int)b;
	mov.w	r0, r6	# tmp67, _13
	div.w	r0, r1	# tmp67, _14
mov.w	r0, r14	# tmp67
	st.w	[r13 + (-16)], r0	# x, tmp67
# basic.c:865: 				a = x;
	ld.w	r0, [r13 + (-16)]	# tmp68, x
	st.w	[sp], r0	#, tmp68
	call	__floatsisf		#
	mov.w	r1, r0	# tmp69,
	mov.w	r0, r1	# tmp70, tmp69
	st.w	[r13 + (-8)], r0	# a, tmp70
	j	.L163		#
.L167:
# basic.c:867: 				expression_error = 1;
	mov.b	r0, 1	# tmp71,
	st.b	[expression_error], r0	# expression_error, tmp71
	j	.L163		#
.L159:
# basic.c:870: 			return a;
	ld.w	r0, [r13 + (-8)]	# _23, a
	mov.w	r1, r0	# <retval>, _23
# basic.c:872: }
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
# basic.c:879: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.153_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.153_1
# basic.c:879: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp40, _2
	mov.w	r0, 45	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L170		#
# basic.c:879: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.154_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.154_3
# basic.c:879: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp42, _4
	mov.w	r0, 43	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L171		#
.L170:
# basic.c:880: 		a = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# a, tmp44
	j	.L177		#
.L171:
# basic.c:882: 		a = expr3();
	call	expr3		#
	st.w	[r13 + (-4)], r0	# a,
.L177:
# basic.c:886: 		if (*txtpos == '-')
	ld.w	r0, [txtpos]	# txtpos.155_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.155_5
# basic.c:886: 		if (*txtpos == '-')
	zex.b	r1, r0	# tmp45, _6
	mov.w	r0, 45	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L173		#
# basic.c:888: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.156_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:889: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:890: 			a -= b;
	ld.w	r0, [r13 + (-8)]	# tmp47, b
	st.w	[sp + (4)], r0	#, tmp47
	ld.w	r0, [r13 + (-4)]	# tmp48, a
	st.w	[sp], r0	#, tmp48
	call	__subsf3		#
	mov.w	r1, r0	# tmp49,
	mov.w	r0, r1	# tmp50, tmp49
	st.w	[r13 + (-4)], r0	# a, tmp50
	j	.L177		#
.L173:
# basic.c:892: 		else if (*txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.157_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.157_9
# basic.c:892: 		else if (*txtpos == '+')
	zex.b	r1, r0	# tmp51, _10
	mov.w	r0, 43	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L175		#
# basic.c:894: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.158_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:895: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:896: 			a += b;
	ld.w	r0, [r13 + (-8)]	# tmp53, b
	st.w	[sp + (4)], r0	#, tmp53
	ld.w	r0, [r13 + (-4)]	# tmp54, a
	st.w	[sp], r0	#, tmp54
	call	__addsf3		#
	mov.w	r1, r0	# tmp55,
	mov.w	r0, r1	# tmp56, tmp55
	st.w	[r13 + (-4)], r0	# a, tmp56
	j	.L177		#
.L175:
# basic.c:899: 			return a;
	ld.w	r0, [r13 + (-4)]	# _21, a
	mov.w	r1, r0	# <retval>, _21
# basic.c:901: }
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
# basic.c:908: 	a = expr2();
	call	expr2		#
	st.w	[r13 + (-4)], r0	# a,
# basic.c:915: 	if (expression_error)	return a;
	ld.b	r0, [expression_error]	# expression_error.159_1, expression_error
# basic.c:915: 	if (expression_error)	return a;
	sex.b	r1, r0	# tmp32, expression_error.159_1
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L180		#
# basic.c:915: 	if (expression_error)	return a;
	ld.w	r0, [r13 + (-4)]	# _5, a
	j	.L181		#
.L180:
# basic.c:917: 	scantable(relop_tab);
	mov.w	r1, sp	# tmp34,
	mov.w	r0, relop_tab	# tmp35,
	st.w	[r1], r0	#, tmp35
	call	scantable		#
# basic.c:923: 	if (table_index == RELOP_UNKNOWN)
	ld.b	r0, [table_index]	# table_index.160_2, table_index
# basic.c:923: 	if (table_index == RELOP_UNKNOWN)
	sex.b	r1, r0	# tmp36, table_index.160_2
	mov.w	r0, 9	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jnz	.L182		#
# basic.c:924: 		return a;
	ld.w	r0, [r13 + (-4)]	# _5, a
	j	.L181		#
.L182:
# basic.c:926: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.161_3, table_index
	sex.b	r0, r0	# _4, table_index.161_3
	mov.w	r1, 8	# tmp38,
	cmp.w	r0, r1	# _4, tmp38
	jz	.L183		#
	mov.w	r1, 8	# tmp39,
	cmp.w	r0, r1	# _4, tmp39
	jgs	.L184		#
	mov.w	r1, 7	# tmp40,
	cmp.w	r0, r1	# _4, tmp40
	jz	.L185		#
	mov.w	r1, 7	# tmp41,
	cmp.w	r0, r1	# _4, tmp41
	jgs	.L184		#
	mov.w	r1, 6	# tmp42,
	cmp.w	r0, r1	# _4, tmp42
	jz	.L186		#
	mov.w	r1, 6	# tmp43,
	cmp.w	r0, r1	# _4, tmp43
	jgs	.L184		#
	mov.w	r1, 5	# tmp44,
	cmp.w	r0, r1	# _4, tmp44
	jz	.L187		#
	mov.w	r1, 5	# tmp45,
	cmp.w	r0, r1	# _4, tmp45
	jgs	.L184		#
	mov.w	r1, 4	# tmp46,
	cmp.w	r0, r1	# _4, tmp46
	jz	.L188		#
	mov.w	r1, 4	# tmp47,
	cmp.w	r0, r1	# _4, tmp47
	jgs	.L184		#
	mov.w	r1, 3	# tmp48,
	cmp.w	r0, r1	# _4, tmp48
	jz	.L189		#
	mov.w	r1, 3	# tmp49,
	cmp.w	r0, r1	# _4, tmp49
	jgs	.L184		#
	mov.w	r1, 2	# tmp50,
	cmp.w	r0, r1	# _4, tmp50
	jz	.L190		#
	mov.w	r1, 2	# tmp51,
	cmp.w	r0, r1	# _4, tmp51
	jgs	.L184		#
	xor.w	r1, r1	# tmp52
	cmp.w	r0, r1	# _4, tmp52
	jz	.L191		#
	mov.w	r1, 1	# tmp53,
	cmp.w	r0, r1	# _4, tmp53
	jz	.L186		#
	j	.L184		#
.L191:
# basic.c:929: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:930: 		if (a >= b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp54, b
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (-4)]	# tmp55, a
	st.w	[sp], r0	#, tmp55
	call	__gesf2		#
	mov.w	r1, r0	# tmp56,
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jges	.L210		#
# basic.c:931: 		break;
	j	.L184		#
.L210:
# basic.c:930: 		if (a >= b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L186:
# basic.c:934: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:935: 		if (a != b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp58, b
	st.w	[sp + (4)], r0	#, tmp58
	ld.w	r0, [r13 + (-4)]	# tmp59, a
	st.w	[sp], r0	#, tmp59
	call	__nesf2		#
	mov.w	r1, r0	# tmp60,
	xor.w	r0, r0	# tmp61
	cmp.w	r1, r0	# tmp60, tmp61
	jnz	.L211		#
# basic.c:936: 		break;
	j	.L184		#
.L211:
# basic.c:935: 		if (a != b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L190:
# basic.c:938: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:939: 		if (a > b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp62, b
	st.w	[sp + (4)], r0	#, tmp62
	ld.w	r0, [r13 + (-4)]	# tmp63, a
	st.w	[sp], r0	#, tmp63
	call	__gtsf2		#
	mov.w	r1, r0	# tmp64,
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jgs	.L212		#
# basic.c:940: 		break;
	j	.L184		#
.L212:
# basic.c:939: 		if (a > b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L189:
# basic.c:942: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:943: 		if (a == b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp66, b
	st.w	[sp + (4)], r0	#, tmp66
	ld.w	r0, [r13 + (-4)]	# tmp67, a
	st.w	[sp], r0	#, tmp67
	call	__eqsf2		#
	mov.w	r1, r0	# tmp68,
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L213		#
# basic.c:944: 		break;
	j	.L184		#
.L213:
# basic.c:943: 		if (a == b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L188:
# basic.c:946: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:947: 		if (a <= b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp70, b
	st.w	[sp + (4)], r0	#, tmp70
	ld.w	r0, [r13 + (-4)]	# tmp71, a
	st.w	[sp], r0	#, tmp71
	call	__lesf2		#
	mov.w	r1, r0	# tmp72,
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jses	.L214		#
# basic.c:948: 		break;
	j	.L184		#
.L214:
# basic.c:947: 		if (a <= b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L187:
# basic.c:950: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:951: 		if (a < b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp74, b
	st.w	[sp + (4)], r0	#, tmp74
	ld.w	r0, [r13 + (-4)]	# tmp75, a
	st.w	[sp], r0	#, tmp75
	call	__ltsf2		#
	mov.w	r1, r0	# tmp76,
	xor.w	r0, r0	# tmp77
	cmp.w	r1, r0	# tmp76, tmp77
	jss	.L215		#
# basic.c:952: 		break;
	j	.L184		#
.L215:
# basic.c:951: 		if (a < b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L185:
# basic.c:954: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:955: 		if (a && b) return 1;
	xor.w	r0, r0	# tmp78
	st.w	[sp + (4)], r0	#, tmp78
	ld.w	r0, [r13 + (-4)]	# tmp79, a
	st.w	[sp], r0	#, tmp79
	call	__nesf2		#
	mov.w	r1, r0	# tmp80,
	xor.w	r0, r0	# tmp81
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L216		#
# basic.c:956: 		break;
	j	.L184		#
.L216:
# basic.c:955: 		if (a && b) return 1;
	xor.w	r0, r0	# tmp82
	st.w	[sp + (4)], r0	#, tmp82
	ld.w	r0, [r13 + (-8)]	# tmp83, b
	st.w	[sp], r0	#, tmp83
	call	__nesf2		#
	mov.w	r1, r0	# tmp84,
	xor.w	r0, r0	# tmp85
	cmp.w	r1, r0	# tmp84, tmp85
	jnz	.L217		#
# basic.c:956: 		break;
	j	.L184		#
.L217:
# basic.c:955: 		if (a && b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L183:
# basic.c:958: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:959: 		if (a || b) return 1;
	xor.w	r0, r0	# tmp86
	st.w	[sp + (4)], r0	#, tmp86
	ld.w	r0, [r13 + (-4)]	# tmp87, a
	st.w	[sp], r0	#, tmp87
	call	__nesf2		#
	mov.w	r1, r0	# tmp88,
	xor.w	r0, r0	# tmp89
	cmp.w	r1, r0	# tmp88, tmp89
	jnz	.L207		#
# basic.c:959: 		if (a || b) return 1;
	xor.w	r0, r0	# tmp90
	st.w	[sp + (4)], r0	#, tmp90
	ld.w	r0, [r13 + (-8)]	# tmp91, b
	st.w	[sp], r0	#, tmp91
	call	__nesf2		#
	mov.w	r1, r0	# tmp92,
	xor.w	r0, r0	# tmp93
	cmp.w	r1, r0	# tmp92, tmp93
	jnz	.L207		#
# basic.c:960: 		break;
	j	.L184		#
.L207:
# basic.c:959: 		if (a || b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L181		#
.L184:
# basic.c:962: 	return 0;
	xor.w	r0, r0	# _5
.L181:
# basic.c:963: }
	mov.w	r1, r0	# <retval>, _5
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
# basic.c:970: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.162_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.162_1
# basic.c:970: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp69, _2
	mov.w	r0, 64	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jse	.L219		#
# basic.c:970: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.163_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.163_3
# basic.c:970: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp71, _4
	mov.w	r0, 90	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jse	.L220		#
.L219:
# basic.c:972: 		qhow();
	call	qhow		#
# basic.c:973: 		return;
	j	.L218		#
.L220:
# basic.c:978: 	int varName = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.164_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.164_5
# basic.c:978: 	int varName = *txtpos;
	zex.b	r0, r0	# tmp73, _6
	st.w	[r13 + (-4)], r0	# varName, tmp73
# basic.c:985: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.165_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:987: 	ignore_blanks(); // TODO: do we really want to have: m  (3), or we insist on: m(3)
	call	ignore_blanks		#
# basic.c:988: 	if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.166_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.166_9
# basic.c:988: 	if (*txtpos == '(')
	zex.b	r1, r0	# tmp74, _10
	mov.w	r0, 40	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jnz	.L222		#
# basic.c:991: 		txtpos++;	//3) = 5
	ld.w	r0, [txtpos]	# txtpos.167_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:992: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:993: 		expression_error = 0;
	xor.w	r0, r0	# tmp76
	st.b	[expression_error], r0	# expression_error, tmp76
# basic.c:994: 		VAR index = expression();
	call	expression		#
	st.w	[r13 + (-16)], r0	# index,
# basic.c:995: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:996: 		if (!expression_error && *txtpos == ')')
	ld.b	r0, [expression_error]	# expression_error.168_13, expression_error
# basic.c:996: 		if (!expression_error && *txtpos == ')')
	sex.b	r1, r0	# tmp77, expression_error.168_13
	xor.w	r0, r0	# tmp78
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L223		#
# basic.c:996: 		if (!expression_error && *txtpos == ')')
	ld.w	r0, [txtpos]	# txtpos.169_14, txtpos
	ld.b	r0, [r0]	# _15, *txtpos.169_14
# basic.c:996: 		if (!expression_error && *txtpos == ')')
	zex.b	r1, r0	# tmp79, _15
	mov.w	r0, 41	# tmp80,
	cmp.w	r1, r0	# tmp79, tmp80
	jnz	.L223		#
# basic.c:998: 			txtpos++;		// = 5
	ld.w	r0, [txtpos]	# txtpos.170_16, txtpos
	add.w	r0, 1 #111	# _17,
	st.w	[txtpos], r0	# txtpos, _17
# basic.c:999: 			ignore_blanks();	//= 5
	call	ignore_blanks		#
# basic.c:1000: 			if (*txtpos == '=')
	ld.w	r0, [txtpos]	# txtpos.171_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.171_18
# basic.c:1000: 			if (*txtpos == '=')
	zex.b	r1, r0	# tmp81, _19
	mov.w	r0, 61	# tmp82,
	cmp.w	r1, r0	# tmp81, tmp82
	jnz	.L224		#
# basic.c:1002: 				txtpos++;	// 5
	ld.w	r0, [txtpos]	# txtpos.172_20, txtpos
	add.w	r0, 1 #111	# _21,
	st.w	[txtpos], r0	# txtpos, _21
# basic.c:1003: 				ignore_blanks();	//5
	call	ignore_blanks		#
# basic.c:1004: 				expression_error = 0;
	xor.w	r0, r0	# tmp83
	st.b	[expression_error], r0	# expression_error, tmp83
# basic.c:1005: 				value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1006: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:1007: 				VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [arrays_begin]	# arrays_begin.173_22, arrays_begin
	ld.w	r1, [r13 + (-4)]	# varName.174_23, varName
	mov.w	r2, 1073741759	# tmp84,
	add.w	r1, r2 #222	# _24, tmp84
	mov.w	r2, 2	# tmp85,
	shl.w	r1, r2	# _25, tmp85
	add.w	r0, r1 #222	# _26, _25
# basic.c:1007: 				VAR *array = arrays_begin[varName - 'A'];
	ld.w	r0, [r0]	# tmp86, *_26
	st.w	[r13 + (-20)], r0	# array, tmp86
# basic.c:1008: 				if (array != NULL)
	ld.w	r1, [r13 + (-20)]	# tmp87, array
	xor.w	r0, r0	# tmp88
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L225		#
# basic.c:1010: 					array[(int)index] = value;
	ld.w	r0, [r13 + (-16)]	# tmp89, index
	st.w	[sp], r0	#, tmp89
	call	__fixsfsi		#
	mov.w	r1, r0	# _28, _27
# basic.c:1010: 					array[(int)index] = value;
	mov.w	r0, 2	# tmp90,
	shl.w	r1, r0	# _29, tmp90
	ld.w	r0, [r13 + (-20)]	# tmp91, array
	add.w	r0, r1 #222	# _30, _29
# basic.c:1010: 					array[(int)index] = value;
	ld.w	r1, [r13 + (-8)]	# tmp92, value
	st.w	[r0], r1	# *_30, tmp92
# basic.c:1011: 					return;
	j	.L218		#
.L225:
# basic.c:1015: 					qsorry();
	call	qsorry		#
# basic.c:1016: 					return;
	j	.L218		#
.L224:
# basic.c:1021: 				qwhat();
	call	qwhat		#
# basic.c:1000: 			if (*txtpos == '=')
	nop	
# basic.c:1026: 		return;
	j	.L218		#
.L223:
# basic.c:1024: 			qwhat();
	call	qwhat		#
# basic.c:1026: 		return;
	j	.L218		#
.L222:
# basic.c:1028: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.175_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.175_31
# basic.c:1028: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp93, _32
	mov.w	r0, 61	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L227		#
# basic.c:1030: 		qwhat();
	call	qwhat		#
# basic.c:1031: 		return;
	j	.L218		#
.L227:
# basic.c:1033: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.176_33, txtpos
	add.w	r0, 1 #111	# _34,
	st.w	[txtpos], r0	# txtpos, _34
# basic.c:1034: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1035: 	expression_error = 0;
	xor.w	r0, r0	# tmp95
	st.b	[expression_error], r0	# expression_error, tmp95
# basic.c:1036: 	value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1037: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1044: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.177_35, expression_error
# basic.c:1044: 	if (expression_error)
	sex.b	r1, r0	# tmp96, expression_error.177_35
	xor.w	r0, r0	# tmp97
	cmp.w	r1, r0	# tmp96, tmp97
	jz	.L228		#
# basic.c:1046: 		qwhat();
	call	qwhat		#
# basic.c:1047: 		return;
	j	.L218		#
.L228:
# basic.c:1050: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.178_36, txtpos
	ld.b	r0, [r0]	# _37, *txtpos.178_36
# basic.c:1050: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp98, _37
	mov.w	r0, 10	# tmp99,
	cmp.w	r1, r0	# tmp98, tmp99
	jz	.L229		#
# basic.c:1050: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.179_38, txtpos
	ld.b	r0, [r0]	# _39, *txtpos.179_38
# basic.c:1050: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp100, _39
	mov.w	r0, 58	# tmp101,
	cmp.w	r1, r0	# tmp100, tmp101
	jz	.L229		#
# basic.c:1052: 		qwhat();
	call	qwhat		#
# basic.c:1053: 		return;
	j	.L218		#
.L229:
# basic.c:1055: 	var = (VAR *)variables_begin + varName - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.180_40, variables_begin
# basic.c:1055: 	var = (VAR *)variables_begin + varName - 'A';
	ld.w	r1, [r13 + (-4)]	# varName.181_41, varName
	mov.w	r2, 1073741759	# tmp102,
	add.w	r1, r2 #222	# _42, tmp102
	mov.w	r2, 2	# tmp103,
	shl.w	r1, r2	# _43, tmp103
# basic.c:1055: 	var = (VAR *)variables_begin + varName - 'A';
	add.w	r0, r1 #222	# tmp104, _43
	st.w	[r13 + (-12)], r0	# var, tmp104
# basic.c:1056: 	*var = value;
	ld.w	r0, [r13 + (-12)]	# tmp105, var
	ld.w	r1, [r13 + (-8)]	# tmp106, value
	st.w	[r0], r1	# *var_57, tmp106
.L218:
# basic.c:1062: }
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
# basic.c:1066: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.182_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.182_1
# basic.c:1066: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp61, _2
	mov.w	r0, 10	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L245		#
.L231:
# basic.c:1073: 		ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.183_3, txtpos
	mov.w	r1, sp	# tmp63,
	st.w	[r1], r0	#, txtpos.183_3
	call	ignore_blanks		#
# basic.c:1074: 		if (print_quoted_string())
	call	print_quoted_string		#
# basic.c:1074: 		if (print_quoted_string())
	sex.b	r1, r0	# tmp64, _4
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L233		#
# basic.c:1076: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.184_5, txtpos
	mov.w	r1, sp	# tmp66,
	st.w	[r1], r0	#, txtpos.184_5
	call	ignore_blanks		#
	j	.L234		#
.L233:
# basic.c:1078: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.185_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.185_6
# basic.c:1078: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp67, _7
	mov.w	r0, 34	# tmp68,
	cmp.w	r1, r0	# tmp67, tmp68
	jz	.L235		#
# basic.c:1078: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.186_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.186_8
# basic.c:1078: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp69, _9
	mov.w	r0, 39	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L236		#
.L235:
# basic.c:1080: 			qwhat();
	call	qwhat		#
# basic.c:1081: 			return;
	j	.L230		#
.L236:
# basic.c:1086: 			expression_error = 0;
	xor.w	r0, r0	# tmp71
	st.b	[expression_error], r0	# expression_error, tmp71
# basic.c:1087: 			e = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# e,
# basic.c:1088: 			if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.187_10, expression_error
# basic.c:1088: 			if (expression_error)
	sex.b	r1, r0	# tmp72, expression_error.187_10
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L237		#
# basic.c:1090: 				qwhat();
	call	qwhat		#
# basic.c:1091: 				return;
	j	.L230		#
.L237:
# basic.c:1093: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
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
# basic.c:1093: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
	mov.w	r1, 1176256512	# tmp79,
	mov.w	r0, r2	# tmp80, _12
	st.w	[sp + (4)], r1	#, tmp79
	st.w	[sp], r0	#, tmp80
	call	__divsf3		#
	mov.w	r1, r0	# tmp81,
	mov.w	r0, r1	# _13, tmp81
# basic.c:1093: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
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
.L234:
# basic.c:1097: 		if (*txtpos == ',')
	ld.w	r0, [txtpos]	# txtpos.188_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.188_15
# basic.c:1097: 		if (*txtpos == ',')
	zex.b	r1, r0	# tmp87, _16
	mov.w	r0, 44	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L238		#
# basic.c:1098: 			txtpos++;	// Skip the comma and move onto the next
	ld.w	r0, [txtpos]	# txtpos.189_17, txtpos
	add.w	r0, 1 #111	# _18,
	st.w	[txtpos], r0	# txtpos, _18
	j	.L231		#
.L238:
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.190_19, txtpos
	ld.b	r0, [r0]	# _20, *txtpos.190_19
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp89, _20
	mov.w	r0, 59	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jnz	.L240		#
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.191_21, txtpos
	add.w	r0, 1 #111	# _22,
	ld.b	r0, [r0]	# _23, *_22
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp91, _23
	mov.w	r0, 10	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L241		#
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.192_24, txtpos
	add.w	r0, 1 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp93, _26
	mov.w	r0, 58	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L241		#
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.193_27, txtpos
	add.w	r0, 1 #111	# _28,
	ld.b	r0, [r0]	# _29, *_28
# basic.c:1099: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp95, _29
	mov.w	r0, 32	# tmp96,
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L240		#
.L241:
# basic.c:1101: 			txtpos++; // This has to be the end of the print - no newline
	ld.w	r0, [txtpos]	# txtpos.194_30, txtpos
	add.w	r0, 1 #111	# _31,
	st.w	[txtpos], r0	# txtpos, _31
# basic.c:1102: 			break;
	j	.L230		#
.L240:
# basic.c:1104: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.195_32, txtpos
	ld.b	r0, [r0]	# _33, *txtpos.195_32
# basic.c:1104: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp97, _33
	mov.w	r0, 10	# tmp98,
	cmp.w	r1, r0	# tmp97, tmp98
	jz	.L242		#
# basic.c:1104: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.196_34, txtpos
	ld.b	r0, [r0]	# _35, *txtpos.196_34
# basic.c:1104: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp99, _35
	mov.w	r0, 58	# tmp100,
	cmp.w	r1, r0	# tmp99, tmp100
	jnz	.L243		#
.L242:
# basic.c:1106: 			printf("\n");	// The end of the print statement
	mov.w	r1, sp	# tmp101,
	mov.w	r0, 10	# tmp102,
	st.w	[r1], r0	#, tmp102
	call	putchar		#
# basic.c:1107: 			break;
	j	.L230		#
.L243:
# basic.c:1111: 			qwhat();
	call	qwhat		#
# basic.c:1112: 			return;
	j	.L230		#
.L245:
# basic.c:1068: 		return;
	nop	
.L230:
# basic.c:1115: }
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
# basic.c:1121: 	linenum = testnum(); // Retuns 0 if no line found.
	call	testnum		#
	mov.w	r1, r0	# _1,
# basic.c:1121: 	linenum = testnum(); // Retuns 0 if no line found.
	mov.w	r0, r1	# tmp33, _1
	st.w	[sp], r0	#, tmp33
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1124: 	if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.197_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.197_3
# basic.c:1124: 	if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp34, _4
	mov.w	r0, 10	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L247		#
# basic.c:1126: 		qwhat();
	call	qwhat		#
# basic.c:1127: 		return;
	j	.L246		#
.L247:
# basic.c:1131: 	list_line = findline();
	call	findline		#
# basic.c:1131: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _5
# basic.c:1132: 	i = 0;
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# i, tmp36
# basic.c:1133: 	while (list_line < program_end)
	j	.L249		#
.L250:
# basic.c:1135: 		printline();
	call	printline		#
# basic.c:1136: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp38, i
	add.w	r0, 1 #111	# tmp37,
	st.w	[r13 + (-4)], r0	# i, tmp37
# basic.c:1137: 		if (i == 29)
	ld.w	r1, [r13 + (-4)]	# tmp39, i
	mov.w	r0, 29	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L249		#
# basic.c:1139: 			j = getc();
	call	getc		#
	st.w	[r13 + (-8)], r0	# j,
# basic.c:1140: 			i = 0;
	xor.w	r0, r0	# tmp41
	st.w	[r13 + (-4)], r0	# i, tmp41
# basic.c:1141: 			if (j == VK_ESC)
	ld.w	r1, [r13 + (-8)]	# tmp42, j
	mov.w	r0, 27	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L251		#
.L249:
# basic.c:1133: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.198_6, list_line
	ld.w	r0, [program_end]	# program_end.199_7, program_end
# basic.c:1133: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.198_6, program_end.199_7
	js	.L250		#
	j	.L246		#
.L251:
# basic.c:1142: 				break;
	nop	
.L246:
# basic.c:1145: }
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
# basic.c:1151: 	while (current_line < program_end) // Out of lines to run
	j	.L253		#
.L258:
# basic.c:1153: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.200_1, current_line
	add.w	r0, 5 #111	# _2,
# basic.c:1153: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _2
.L257:
# basic.c:1156: 			res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:1157: 			if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp42, res
	mov.w	r0, 1	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L259		#
# basic.c:1159: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1160: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.201_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.201_3
# basic.c:1160: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp44, _4
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L256		#
# basic.c:1160: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.202_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.202_5
# basic.c:1160: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp46, _6
	mov.w	r0, 58	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L256		#
# basic.c:1162: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.203_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:1163: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1156: 			res = direct();
	j	.L257		#
.L256:
# basic.c:1166: 		if (res < 2)
	ld.w	r1, [r13 + (-4)]	# tmp48, res
	mov.w	r0, 1	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jgs	.L253		#
# basic.c:1167: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r0, [current_line]	# current_line.204_9, current_line
# basic.c:1167: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r1, [current_line]	# current_line.205_10, current_line
	add.w	r1, 4 #111	# _11,
	ld.b	r1, [r1]	# _12, *_11
	zex.b	r1, r1	# _13, _12
# basic.c:1167: 			current_line += current_line[sizeof(LINENUM)];
	add.w	r0, r1 #222	# _14, _13
	st.w	[current_line], r0	# current_line, _14
.L253:
# basic.c:1151: 	while (current_line < program_end) // Out of lines to run
	ld.w	r1, [current_line]	# current_line.206_15, current_line
	ld.w	r0, [program_end]	# program_end.207_16, program_end
# basic.c:1151: 	while (current_line < program_end) // Out of lines to run
	cmp.w	r1, r0	# current_line.206_15, program_end.207_16
	js	.L258		#
	j	.L252		#
.L259:
# basic.c:1158: 				return;
	nop	
.L252:
# basic.c:1173: }
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
# basic.c:1180: 	expression_error = 0;
	xor.w	r0, r0	# tmp37
	st.b	[expression_error], r0	# expression_error, tmp37
# basic.c:1181: 	condition = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# condition,
# basic.c:1182: 	if (expression_error || *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.208_1, expression_error
# basic.c:1182: 	if (expression_error || *txtpos == NL)
	sex.b	r1, r0	# tmp38, expression_error.208_1
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L261		#
# basic.c:1182: 	if (expression_error || *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.209_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.209_2
# basic.c:1182: 	if (expression_error || *txtpos == NL)
	zex.b	r1, r0	# tmp40, _3
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L262		#
.L261:
# basic.c:1184: 		qhow();
	call	qhow		#
# basic.c:1185: 		return;
	j	.L260		#
.L262:
# basic.c:1187: 	if (condition != 0)
	xor.w	r0, r0	# tmp42
	st.w	[sp + (4)], r0	#, tmp42
	ld.w	r0, [r13 + (-4)]	# tmp43, condition
	st.w	[sp], r0	#, tmp43
	call	__nesf2		#
	mov.w	r1, r0	# tmp44,
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L269		#
# basic.c:1205: 	return;
	j	.L271		#
.L269:
# basic.c:1190: 			res = direct();
	call	direct		#
	st.w	[r13 + (-8)], r0	# res,
# basic.c:1191: 			if (res == 1)
	ld.w	r1, [r13 + (-8)]	# tmp46, res
	mov.w	r0, 1	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jz	.L270		#
# basic.c:1193: 			if (res == 2)
	ld.w	r1, [r13 + (-8)]	# tmp48, res
	mov.w	r0, 2	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L267		#
# basic.c:1195: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.210_4, current_line
	add.w	r0, 5 #111	# _5,
# basic.c:1195: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1196: 				continue;
	j	.L268		#
.L267:
# basic.c:1198: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1199: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.211_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.211_6
# basic.c:1199: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp50, _7
	mov.w	r0, 10	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L271		#
# basic.c:1199: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.212_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.212_8
# basic.c:1199: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp52, _9
	mov.w	r0, 58	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L271		#
# basic.c:1201: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.213_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1202: 			ignore_blanks();
	call	ignore_blanks		#
.L268:
# basic.c:1190: 			res = direct();
	j	.L269		#
.L270:
# basic.c:1192: 				return;
	nop	
	j	.L260		#
.L271:
# basic.c:1205: 	return;
	nop	
.L260:
# basic.c:1206: }
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
# basic.c:1213: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1214: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.214_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.214_1
# basic.c:1214: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp64, _2
	mov.w	r0, 64	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jse	.L273		#
# basic.c:1214: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.215_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.215_3
# basic.c:1214: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp66, _4
	mov.w	r0, 90	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jse	.L274		#
.L273:
# basic.c:1216: 		qwhat();
	call	qwhat		#
# basic.c:1217: 		return;
	j	.L272		#
.L274:
# basic.c:1219: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.216_5, txtpos
# basic.c:1219: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp68, *txtpos.216_5
	st.b	[r13 + (-5)], r0	# var, tmp68
# basic.c:1220: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.217_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1221: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1222: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.218_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.218_8
# basic.c:1222: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp69, _9
	mov.w	r0, 61	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jz	.L276		#
# basic.c:1224: 		qwhat();
	call	qwhat		#
# basic.c:1225: 		return;
	j	.L272		#
.L276:
# basic.c:1227: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.219_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1228: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1230: 	expression_error = 0;
	xor.w	r0, r0	# tmp71
	st.b	[expression_error], r0	# expression_error, tmp71
# basic.c:1231: 	initial = expression();
	call	expression		#
	st.w	[r13 + (-12)], r0	# initial,
# basic.c:1232: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.220_12, expression_error
# basic.c:1232: 	if (expression_error)
	sex.b	r1, r0	# tmp72, expression_error.220_12
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L277		#
# basic.c:1234: 		qwhat();
	call	qwhat		#
# basic.c:1235: 		return;
	j	.L272		#
.L277:
# basic.c:1238: 	scantable(to_tab);
	mov.w	r1, sp	# tmp74,
	mov.w	r0, to_tab	# tmp75,
	st.w	[r1], r0	#, tmp75
	call	scantable		#
# basic.c:1239: 	if (table_index != 0)
	ld.b	r0, [table_index]	# table_index.221_13, table_index
# basic.c:1239: 	if (table_index != 0)
	sex.b	r1, r0	# tmp76, table_index.221_13
	xor.w	r0, r0	# tmp77
	cmp.w	r1, r0	# tmp76, tmp77
	jz	.L278		#
# basic.c:1241: 		qwhat();
	call	qwhat		#
# basic.c:1242: 		return;
	j	.L272		#
.L278:
# basic.c:1245: 	terminal = expression();
	call	expression		#
	st.w	[r13 + (-16)], r0	# terminal,
# basic.c:1246: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.222_14, expression_error
# basic.c:1246: 	if (expression_error)
	sex.b	r1, r0	# tmp78, expression_error.222_14
	xor.w	r0, r0	# tmp79
	cmp.w	r1, r0	# tmp78, tmp79
	jz	.L279		#
# basic.c:1248: 		qwhat();
	call	qwhat		#
# basic.c:1249: 		return;
	j	.L272		#
.L279:
# basic.c:1252: 	scantable(step_tab);
	mov.w	r1, sp	# tmp80,
	mov.w	r0, step_tab	# tmp81,
	st.w	[r1], r0	#, tmp81
	call	scantable		#
# basic.c:1253: 	if (table_index == 0)
	ld.b	r0, [table_index]	# table_index.223_15, table_index
# basic.c:1253: 	if (table_index == 0)
	sex.b	r1, r0	# tmp82, table_index.223_15
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L280		#
# basic.c:1255: 		step = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# step,
# basic.c:1256: 		if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.224_16, expression_error
# basic.c:1256: 		if (expression_error)
	sex.b	r1, r0	# tmp84, expression_error.224_16
	xor.w	r0, r0	# tmp85
	cmp.w	r1, r0	# tmp84, tmp85
	jz	.L281		#
# basic.c:1258: 			qwhat();
	call	qwhat		#
# basic.c:1259: 			return;
	j	.L272		#
.L280:
# basic.c:1263: 		step = 1;
	mov.w	r0, 1065353216	# tmp86,
	st.w	[r13 + (-4)], r0	# step, tmp86
.L281:
# basic.c:1265: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.225_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.225_17
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp87, _18
	mov.w	r0, 10	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L282		#
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.226_19, txtpos
	ld.b	r0, [r0]	# _20, *txtpos.226_19
# basic.c:1266: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp89, _20
	mov.w	r0, 58	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jz	.L282		#
# basic.c:1268: 		qwhat();
	call	qwhat		#
# basic.c:1269: 		return;
	j	.L272		#
.L282:
# basic.c:1272: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.b	r0, [expression_error]	# expression_error.227_21, expression_error
# basic.c:1272: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	sex.b	r1, r0	# tmp91, expression_error.227_21
	xor.w	r0, r0	# tmp92
	cmp.w	r1, r0	# tmp91, tmp92
	jnz	.L283		#
# basic.c:1272: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.228_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.228_22
# basic.c:1272: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp93, _23
	mov.w	r0, 10	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L284		#
# basic.c:1272: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.229_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.229_24
# basic.c:1272: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp95, _25
	mov.w	r0, 58	# tmp96,
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L283		#
.L284:
# basic.c:1275: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.230_26, bsp
	mov.w	r1, r0	# _27, bsp.230_26
	add.w	r1, 20 #111	# _27,
# basic.c:1275: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.231_28, stack_limit
# basic.c:1275: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	cmp.w	r1, r0	# _27, stack_limit.231_28
	jge	.L285		#
# basic.c:1277: 			qsorry();
	call	qsorry		#
# basic.c:1278: 			return;
	j	.L272		#
.L285:
# basic.c:1281: 		bsp -= sizeof(struct stack_for_frame);
	ld.w	r0, [bsp]	# bsp.232_29, bsp
	add.w	r0, -20 #111	# _30,
	st.w	[bsp], r0	# bsp, _30
# basic.c:1282: 		f = (struct stack_for_frame *)bsp;
	ld.w	r0, [bsp]	# tmp97, bsp
	st.w	[r13 + (-20)], r0	# f, tmp97
# basic.c:1283: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r0, [variables_begin]	# variables_begin.233_31, variables_begin
# basic.c:1283: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.b	r1, [r13 + (-5)]	# _32, var
	mov.w	r2, 1073741759	# tmp98,
	add.w	r1, r2 #222	# _33, tmp98
	mov.w	r2, 2	# tmp99,
	shl.w	r1, r2	# _34, tmp99
	add.w	r0, r1 #222	# _35, _34
# basic.c:1283: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r1, [r13 + (-12)]	# tmp100, initial
	st.w	[r0], r1	# *_35, tmp100
# basic.c:1284: 		f->frame_type = STACK_FOR_FLAG;
	ld.w	r0, [r13 + (-20)]	# tmp101, f
	mov.s	r1, 70	# tmp102,
	st.s	[r0], r1	# f_63->frame_type, tmp102
# basic.c:1285: 		f->for_var = var;
	ld.b	r0, [r13 + (-5)]	# tmp103, var
	mov.w	r1, r0	# _36, tmp103
	ld.w	r0, [r13 + (-20)]	# tmp104, f
	st.s	[r0 + (2)], r1	# f_63->for_var, _36
# basic.c:1286: 		f->terminal = terminal;
	ld.w	r0, [r13 + (-20)]	# tmp105, f
	ld.w	r1, [r13 + (-16)]	# tmp106, terminal
	st.w	[r0 + (4)], r1	# f_63->terminal, tmp106
# basic.c:1287: 		f->step = step;
	ld.w	r0, [r13 + (-20)]	# tmp107, f
	ld.w	r1, [r13 + (-4)]	# tmp108, step
	st.w	[r0 + (8)], r1	# f_63->step, tmp108
# basic.c:1288: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.234_37, txtpos
	ld.w	r0, [r13 + (-20)]	# tmp109, f
	st.w	[r0 + (16)], r1	# f_63->txtpos, txtpos.234_37
# basic.c:1289: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.235_38, current_line
	ld.w	r0, [r13 + (-20)]	# tmp110, f
	st.w	[r0 + (12)], r1	# f_63->current_line, current_line.235_38
# basic.c:1295: 		return;
	j	.L272		#
.L283:
# basic.c:1297: 	qhow();
	call	qhow		#
.L272:
# basic.c:1298: }
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
# basic.c:1308: 	tempsp = bsp;
	ld.w	r0, [bsp]	# bsp.236_1, bsp
	st.w	[tempsp], r0	# tempsp, bsp.236_1
# basic.c:1309: 	while (tempsp < program + kRamSize - 1)
	j	.L287		#
.L301:
# basic.c:1315: 		switch (tempsp[1])
	ld.w	r0, [tempsp]	# tempsp.237_2, tempsp
	add.w	r0, 1 #111	# _3,
	ld.b	r0, [r0]	# _4, *_3
	sex.b	r0, r0	# _5, _4
# basic.c:1315: 		switch (tempsp[1])
	mov.w	r1, 70	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jz	.L288		#
	mov.w	r1, 71	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jnz	.L289		#
# basic.c:1318: 			if (table_index == KW_RETURN)
	ld.b	r0, [table_index]	# table_index.238_6, table_index
# basic.c:1318: 			if (table_index == KW_RETURN)
	sex.b	r1, r0	# tmp75, table_index.238_6
	mov.w	r0, 13	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jnz	.L290		#
# basic.c:1320: 				struct stack_gosub_frame *f = (struct stack_gosub_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp77, tempsp
	st.w	[r13 + (-12)], r0	# f, tmp77
# basic.c:1321: 				current_line = f->current_line;
	ld.w	r0, [r13 + (-12)]	# tmp78, f
	ld.w	r0, [r0 + (12)]	# _7, f_56->current_line
# basic.c:1321: 				current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _7
# basic.c:1322: 				txtpos = f->txtpos;
	ld.w	r0, [r13 + (-12)]	# tmp79, f
	ld.w	r0, [r0 + (16)]	# _8, f_56->txtpos
# basic.c:1322: 				txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:1323: 				bsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.239_9, bsp
	add.w	r0, 20 #111	# _10,
	st.w	[bsp], r0	# bsp, _10
# basic.c:1324: 				return 0;
	xor.w	r0, r0	# _48
	j	.L291		#
.L290:
# basic.c:1327: 			tempsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [tempsp]	# tempsp.240_11, tempsp
	add.w	r0, 20 #111	# _12,
	st.w	[tempsp], r0	# tempsp, _12
# basic.c:1328: 			break;
	j	.L287		#
.L288:
# basic.c:1331: 			if (table_index == KW_NEXT)
	ld.b	r0, [table_index]	# table_index.241_13, table_index
# basic.c:1331: 			if (table_index == KW_NEXT)
	sex.b	r1, r0	# tmp80, table_index.241_13
	mov.w	r0, 12	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L292		#
# basic.c:1333: 				struct stack_for_frame *f = (struct stack_for_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp82, tempsp
	st.w	[r13 + (-16)], r0	# f, tmp82
# basic.c:1335: 				var = txtpos[-1];
	ld.w	r0, [txtpos]	# txtpos.242_14, txtpos
	add.w	r0, -1 #111	# _15,
	ld.b	r0, [r0]	# _16, *_15
# basic.c:1335: 				var = txtpos[-1];
	st.b	[r13 + (-5)], r0	# var, _16
# basic.c:1336: 				i = -2;
	mov.w	r0, -2	# tmp83,
	st.w	[r13 + (-4)], r0	# i, tmp83
# basic.c:1337: 				while (var == ' ') 
	j	.L293		#
.L294:
# basic.c:1339: 					var = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.243_17, txtpos
	ld.w	r1, [r13 + (-4)]	# i.244_18, i
	add.w	r0, r1 #222	# _19, i.244_18
	ld.b	r0, [r0]	# _20, *_19
# basic.c:1339: 					var = txtpos[i];
	st.b	[r13 + (-5)], r0	# var, _20
# basic.c:1340: 					i--;
	ld.w	r0, [r13 + (-4)]	# tmp85, i
	add.w	r0, -1 #111	# tmp84,
	st.w	[r13 + (-4)], r0	# i, tmp84
.L293:
# basic.c:1337: 				while (var == ' ') 
	ld.b	r0, [r13 + (-5)]	#, var
	sex.b	r1, r0	# tmp86,
	mov.w	r0, 32	# tmp87,
	cmp.w	r1, r0	# tmp86, tmp87
	jz	.L294		#
# basic.c:1342: 				if (var == f->for_var)
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# _21,
# basic.c:1342: 				if (var == f->for_var)
	ld.w	r0, [r13 + (-16)]	# tmp88, f
	ld.s	r0, [r0 + (2)]	# _22, f_61->for_var
	zex.s	r0, r0	# _23, _22
# basic.c:1342: 				if (var == f->for_var)
	cmp.w	r1, r0	# _21, _23
	jnz	.L292		#
# basic.c:1344: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.245_24, variables_begin
# basic.c:1344: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# _25,
	mov.w	r2, 1073741759	# tmp89,
	add.w	r1, r2 #222	# _26, tmp89
	mov.w	r2, 2	# tmp90,
	shl.w	r1, r2	# _27, tmp90
# basic.c:1344: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	add.w	r0, r1 #222	# tmp91, _27
	st.w	[r13 + (-20)], r0	# varaddr, tmp91
# basic.c:1345: 					*varaddr = *varaddr + f->step;
	ld.w	r1, [r13 + (-20)]	# tmp92, varaddr
	ld.w	r0, [r1]	# _28, *varaddr_64
# basic.c:1345: 					*varaddr = *varaddr + f->step;
	ld.w	r2, [r13 + (-16)]	# tmp93, f
	ld.w	r1, [r2 + (8)]	# _29,
# basic.c:1345: 					*varaddr = *varaddr + f->step;
	st.w	[sp + (4)], r1	#, tmp94
	st.w	[sp], r0	#, tmp95
	call	__addsf3		#
	mov.w	r2, r0	# tmp96,
	mov.w	r1, r2	# _30, tmp96
# basic.c:1345: 					*varaddr = *varaddr + f->step;
	ld.w	r0, [r13 + (-20)]	# tmp97, varaddr
	st.w	[r0], r1	# *varaddr_64, tmp98
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-16)]	# tmp99, f
	ld.w	r0, [r1 + (8)]	# _31,
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r1, r1	# tmp100
	st.w	[sp + (4)], r1	#, tmp100
	st.w	[sp], r0	#, tmp101
	call	__gtsf2		#
	mov.w	r1, r0	# tmp102,
	xor.w	r0, r0	# tmp103
	cmp.w	r1, r0	# tmp102, tmp103
	jses	.L295		#
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-20)]	# tmp104, varaddr
	ld.w	r0, [r1]	# _32, *varaddr_64
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r2, [r13 + (-16)]	# tmp105, f
	ld.w	r1, [r2 + (4)]	# _33,
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	st.w	[sp + (4)], r1	#, tmp106
	st.w	[sp], r0	#, tmp107
	call	__lesf2		#
	mov.w	r1, r0	# tmp108,
	xor.w	r0, r0	# tmp109
	cmp.w	r1, r0	# tmp108, tmp109
	jses	.L297		#
.L295:
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-16)]	# tmp110, f
	ld.w	r0, [r1 + (8)]	# _34,
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r1, r1	# tmp111
	st.w	[sp + (4)], r1	#, tmp111
	st.w	[sp], r0	#, tmp112
	call	__ltsf2		#
	mov.w	r1, r0	# tmp113,
	xor.w	r0, r0	# tmp114
	cmp.w	r1, r0	# tmp113, tmp114
	jges	.L298		#
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-20)]	# tmp115, varaddr
	ld.w	r0, [r1]	# _35, *varaddr_64
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r2, [r13 + (-16)]	# tmp116, f
	ld.w	r1, [r2 + (4)]	# _36,
# basic.c:1347: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	st.w	[sp + (4)], r1	#, tmp117
	st.w	[sp], r0	#, tmp118
	call	__gesf2		#
	mov.w	r1, r0	# tmp119,
	xor.w	r0, r0	# tmp120
	cmp.w	r1, r0	# tmp119, tmp120
	jss	.L298		#
.L297:
# basic.c:1350: 						txtpos = f->txtpos;
	ld.w	r0, [r13 + (-16)]	# tmp121, f
	ld.w	r0, [r0 + (16)]	# _37, f_61->txtpos
# basic.c:1350: 						txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _37
# basic.c:1351: 						current_line = f->current_line;
	ld.w	r0, [r13 + (-16)]	# tmp122, f
	ld.w	r0, [r0 + (12)]	# _38, f_61->current_line
# basic.c:1351: 						current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _38
# basic.c:1352: 						return 0;
	xor.w	r0, r0	# _48
	j	.L291		#
.L298:
# basic.c:1355: 					bsp = tempsp + sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.246_39, tempsp
	add.w	r0, 20 #111	# _40,
# basic.c:1355: 					bsp = tempsp + sizeof(struct stack_for_frame);
	st.w	[bsp], r0	# bsp, _40
# basic.c:1356: 					return 0;
	xor.w	r0, r0	# _48
	j	.L291		#
.L292:
# basic.c:1360: 			tempsp += sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.247_41, tempsp
	add.w	r0, 20 #111	# _42,
	st.w	[tempsp], r0	# tempsp, _42
# basic.c:1361: 			break;
	j	.L287		#
.L289:
# basic.c:1363: 			printf("Stack is stuffed!\n");
	mov.w	r1, sp	# tmp123,
	mov.w	r0, .LC9	# tmp124,
	st.w	[r1], r0	#, tmp124
	call	puts		#
# basic.c:1364: 			return 1;
	mov.w	r0, 1	# _48,
	j	.L291		#
.L287:
# basic.c:1309: 	while (tempsp < program + kRamSize - 1)
	ld.w	r1, [program]	# program.248_43, program
	mov.w	r0, 65535	# tmp125,
	add.w	r1, r0 #222	# _44, tmp125
# basic.c:1309: 	while (tempsp < program + kRamSize - 1)
	ld.w	r0, [tempsp]	# tempsp.249_45, tempsp
# basic.c:1309: 	while (tempsp < program + kRamSize - 1)
	cmp.w	r1, r0	# _44, tempsp.249_45
	jg	.L301		#
# basic.c:1368: 	qhow();
	call	qhow		#
# basic.c:1369: 	return 1;
	mov.w	r0, 1	# _48,
.L291:
# basic.c:1370: }
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
# basic.c:1375: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1379: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.250_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.250_1
# basic.c:1379: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp36, _2
	mov.w	r0, 64	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jse	.L305		#
# basic.c:1379: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.251_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.251_3
# basic.c:1379: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp38, _4
	mov.w	r0, 90	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jse	.L306		#
.L305:
# basic.c:1384: 		qhow();
	call	qhow		#
# basic.c:1385: 		return;
	j	.L304		#
.L306:
# basic.c:1387: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.252_5, txtpos
	add.w	r0, 1 #111	# _6,
	st.w	[txtpos], r0	# txtpos, _6
# basic.c:1388: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1389: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.253_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.253_7
# basic.c:1389: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp40, _8
	mov.w	r0, 58	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L308		#
# basic.c:1389: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.254_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.254_9
# basic.c:1389: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp42, _10
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L308		#
# basic.c:1391: 		qwhat();
	call	qwhat		#
.L308:
# basic.c:1393: 	exec_return();
	call	exec_return		#
.L304:
# basic.c:1394: }
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
# basic.c:1398: 	expression_error = 0;
	xor.w	r0, r0	# tmp39
	st.b	[expression_error], r0	# expression_error, tmp39
# basic.c:1399: 	linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:1399: 	linenum = expression();
	mov.w	r0, r1	# tmp40, _1
	st.w	[sp], r0	#, tmp40
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1400: 	if (!expression_error && *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.255_3, expression_error
# basic.c:1400: 	if (!expression_error && *txtpos == NL)
	sex.b	r1, r0	# tmp41, expression_error.255_3
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L310		#
# basic.c:1400: 	if (!expression_error && *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.256_4, txtpos
	ld.b	r0, [r0]	# _5, *txtpos.256_4
# basic.c:1400: 	if (!expression_error && *txtpos == NL)
	zex.b	r1, r0	# tmp43, _5
	mov.w	r0, 10	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L310		#
# basic.c:1403: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.257_6, bsp
	mov.w	r1, r0	# _7, bsp.257_6
	add.w	r1, 20 #111	# _7,
# basic.c:1403: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.258_8, stack_limit
# basic.c:1403: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	cmp.w	r1, r0	# _7, stack_limit.258_8
	jge	.L311		#
# basic.c:1405: 			qsorry();
	call	qsorry		#
# basic.c:1406: 			return;
	j	.L309		#
.L311:
# basic.c:1409: 		bsp -= sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.259_9, bsp
	add.w	r0, -20 #111	# _10,
	st.w	[bsp], r0	# bsp, _10
# basic.c:1410: 		f = (struct stack_gosub_frame *)bsp;
	ld.w	r0, [bsp]	# tmp45, bsp
	st.w	[r13 + (-4)], r0	# f, tmp45
# basic.c:1411: 		f->frame_type = STACK_GOSUB_FLAG;
	ld.w	r0, [r13 + (-4)]	# tmp46, f
	mov.s	r1, 71	# tmp47,
	st.s	[r0], r1	# f_20->frame_type, tmp47
# basic.c:1412: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.260_11, txtpos
	ld.w	r0, [r13 + (-4)]	# tmp48, f
	st.w	[r0 + (16)], r1	# f_20->txtpos, txtpos.260_11
# basic.c:1413: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.261_12, current_line
	ld.w	r0, [r13 + (-4)]	# tmp49, f
	st.w	[r0 + (12)], r1	# f_20->current_line, current_line.261_12
# basic.c:1414: 		current_line = findline();
	call	findline		#
# basic.c:1414: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _13
# basic.c:1415: 		exec_run();
	call	exec_run		#
# basic.c:1416: 		return;
	j	.L309		#
.L310:
# basic.c:1418: 	qhow();
	call	qhow		#
.L309:
# basic.c:1420: }
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
# basic.c:1427: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1429: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.262_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.262_1
# basic.c:1429: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp47, _2
	mov.w	r0, 64	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jse	.L314		#
# basic.c:1429: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.263_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.263_3
# basic.c:1429: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp49, _4
	mov.w	r0, 90	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jse	.L315		#
.L314:
# basic.c:1431: 		qwhat();
	call	qwhat		#
# basic.c:1432: 		return;
	j	.L313		#
.L315:
# basic.c:1435: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.264_5, txtpos
# basic.c:1435: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp51, *txtpos.264_5
	st.b	[r13 + (-1)], r0	# var, tmp51
# basic.c:1436: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.265_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1437: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1439: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.266_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.266_8
# basic.c:1439: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp52, _9
	mov.w	r0, 10	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L320		#
# basic.c:1439: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.267_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.267_10
# basic.c:1439: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp54, _11
	mov.w	r0, 58	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L320		#
# basic.c:1441: 		qwhat();
	call	qwhat		#
# basic.c:1442: 		return;
	j	.L313		#
.L320:
# basic.c:1447: 		tmptxtpos = txtpos;
	ld.w	r0, [txtpos]	# txtpos.268_12, txtpos
	st.w	[tmptxtpos], r0	# tmptxtpos, txtpos.268_12
# basic.c:1448: 		getln('?');
	mov.w	r1, sp	# tmp56,
	mov.w	r0, 63	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	getln		#
# basic.c:1449: 		toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1450: 		txtpos = program_end + sizeof(VAR);
	ld.w	r0, [program_end]	# program_end.269_13, program_end
	add.w	r0, 4 #111	# _14,
# basic.c:1450: 		txtpos = program_end + sizeof(VAR);
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:1451: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:1452: 		expression_error = 0;
	xor.w	r0, r0	# tmp58
	st.b	[expression_error], r0	# expression_error, tmp58
# basic.c:1453: 		value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1454: 		if (!expression_error)
	ld.b	r0, [expression_error]	# expression_error.270_15, expression_error
# basic.c:1454: 		if (!expression_error)
	sex.b	r1, r0	# tmp59, expression_error.270_15
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L322		#
# basic.c:1447: 		tmptxtpos = txtpos;
	j	.L320		#
.L322:
# basic.c:1455: 			break;
	nop	
# basic.c:1457: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r0, [variables_begin]	# variables_begin.271_16, variables_begin
# basic.c:1457: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.b	r1, [r13 + (-1)]	# _17, var
	mov.w	r2, 1073741759	# tmp61,
	add.w	r1, r2 #222	# _18, tmp61
	mov.w	r2, 2	# tmp62,
	shl.w	r1, r2	# _19, tmp62
	add.w	r0, r1 #222	# _20, _19
# basic.c:1457: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r1, [r13 + (-8)]	# tmp63, value
	st.w	[r0], r1	# *_20, tmp63
# basic.c:1458: 	txtpos = tmptxtpos;
	ld.w	r0, [tmptxtpos]	# tmptxtpos.272_21, tmptxtpos
	st.w	[txtpos], r0	# txtpos, tmptxtpos.272_21
.L313:
# basic.c:1459: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_input, .-exec_input
	.p2align	1
	.global	exec_edit
	.type	exec_edit, @function
exec_edit:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 36 #111	#,
# basic.c:1467: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1468: 	expression_error = 0;
	xor.w	r0, r0	# tmp62
	st.b	[expression_error], r0	# expression_error, tmp62
# basic.c:1469: 	linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:1469: 	linenum = expression();
	mov.w	r0, r1	# tmp63, _1
	st.w	[sp], r0	#, tmp63
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1470: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.273_3, expression_error
# basic.c:1470: 	if (expression_error)
	sex.b	r1, r0	# tmp64, expression_error.273_3
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L324		#
# basic.c:1472: 		qhow();
	call	qhow		#
# basic.c:1473: 		return 0;
	xor.w	r0, r0	# _33
	j	.L325		#
.L324:
# basic.c:1475: 	line = findline();
	call	findline		#
	st.w	[r13 + (-16)], r0	# line,
# basic.c:1476: 	if (line == program_end)
	ld.w	r0, [program_end]	# program_end.274_4, program_end
# basic.c:1476: 	if (line == program_end)
	ld.w	r1, [r13 + (-16)]	# tmp66, line
	cmp.w	r1, r0	# tmp66, program_end.274_4
	jnz	.L326		#
# basic.c:1478: 		qhow();
	call	qhow		#
# basic.c:1479: 		return 0;
	xor.w	r0, r0	# _33
	j	.L325		#
.L326:
# basic.c:1482: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.275_5, program_end
	add.w	r0, 4 #111	# _6,
# basic.c:1482: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _6
# basic.c:1483: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.276_7, txtpos
# basic.c:1483: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp67
	st.b	[r0], r1	# *txtpos.276_7, tmp67
# basic.c:1484: 	sprintf(txtpos, "%d ", linenum);
	ld.w	r1, [txtpos]	# txtpos.277_8, txtpos
	ld.w	r2, [linenum]	# linenum.278_9, linenum
	mov.w	r0, sp	# tmp68,
	st.w	[r0 + (8)], r2	#, linenum.278_9
	mov.w	r2, .LC1	# tmp69,
	st.w	[r0 + (4)], r2	#, tmp69
	st.w	[r0], r1	#, txtpos.277_8
	call	sprintf		#
# basic.c:1485: 	j = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.279_10, txtpos
	mov.w	r1, sp	# tmp70,
	st.w	[r1], r0	#, txtpos.279_10
	call	strlen		#
	st.w	[r13 + (-12)], r0	# j,
# basic.c:1486: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	mov.w	r0, 5	# tmp71,
	st.w	[r13 + (-8)], r0	# i, tmp71
# basic.c:1486: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	j	.L327		#
.L328:
# basic.c:1489: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-8)]	# i.280_11, i
	ld.w	r1, [r13 + (-16)]	# tmp72, line
	add.w	r1, r0 #222	# _12, i.280_11
# basic.c:1489: 		txtpos[j++] = line[i];
	ld.w	r3, [txtpos]	# txtpos.281_13, txtpos
# basic.c:1489: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-12)]	# j.282_14, j
	mov.w	r2, r0	# tmp73, j.282_14
	add.w	r2, 1 #111	# tmp73,
	st.w	[r13 + (-12)], r2	# j, tmp73
	mov.w	r2, r0	# j.283_15, j.282_14
# basic.c:1489: 		txtpos[j++] = line[i];
	mov.w	r0, r3	# _16, txtpos.281_13
	add.w	r0, r2 #222	# _16, j.283_15
# basic.c:1489: 		txtpos[j++] = line[i];
	ld.b	r1, [r1]	# _17, *_12
# basic.c:1489: 		txtpos[j++] = line[i];
	st.b	[r0], r1	# *_16, _17
# basic.c:1486: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-8)]	# tmp75, i
	add.w	r0, 1 #111	# tmp74,
	st.w	[r13 + (-8)], r0	# i, tmp74
.L327:
# basic.c:1486: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-16)]	# tmp76, line
	add.w	r0, 4 #111	# _18,
	ld.b	r0, [r0]	# _19, *_18
	zex.b	r0, r0	# _20, _19
# basic.c:1486: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	add.w	r0, -1 #111	# _21,
# basic.c:1486: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r1, [r13 + (-8)]	# tmp77, i
	cmp.w	r1, r0	# tmp77, _21
	jss	.L328		#
# basic.c:1491: 	txtpos[j] = 0;
	ld.w	r0, [txtpos]	# txtpos.284_22, txtpos
	ld.w	r1, [r13 + (-12)]	# j.285_23, j
	add.w	r0, r1 #222	# _24, j.285_23
# basic.c:1491: 	txtpos[j] = 0;
	xor.w	r1, r1	# tmp78
	st.b	[r0], r1	# *_24, tmp78
# basic.c:1492: 	put_char('#');
	mov.w	r1, sp	# tmp79,
	mov.w	r0, 35	# tmp80,
	st.w	[r1], r0	#, tmp80
	call	put_char		#
# basic.c:1493: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.286_25, txtpos
	mov.w	r1, sp	# tmp81,
	st.w	[r1], r0	#, txtpos.286_25
	call	gets		#
# basic.c:1495: 	i = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.287_26, txtpos
	mov.w	r1, sp	# tmp82,
	st.w	[r1], r0	#, txtpos.287_26
	call	strlen		#
	st.w	[r13 + (-8)], r0	# i,
# basic.c:1496: 	if (i % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# i.288_27, i
	mov.w	r0, 1	# tmp83,
	and.w	r1, r0	# _28, tmp83
# basic.c:1496: 	if (i % 2 == 0)
	xor.w	r0, r0	# tmp84
	cmp.w	r1, r0	# _28, tmp84
	jnz	.L329		#
# basic.c:1497: 		strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.289_29, txtpos
	mov.w	r0, sp	# tmp85,
	st.w	[r0], r6	#, txtpos.289_29
	call	strlen		#
	mov.w	r1, r0	# _53, tmp86
	mov.w	r0, r6	# _54, txtpos.289_29
	add.w	r0, r1 #222	# _54, _53
	mov.b	r1, 32	# tmp87,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_54], tmp87
	xor.w	r1, r1	# tmp88
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_54], tmp88
.L329:
# basic.c:1499: 	strcat(txtpos, "\n");
	ld.w	r6, [txtpos]	# txtpos.290_30, txtpos
	mov.w	r0, sp	# tmp89,
	st.w	[r0], r6	#, txtpos.290_30
	call	strlen		#
	mov.w	r1, r0	# _56, tmp90
	mov.w	r0, r6	# _57, txtpos.290_30
	add.w	r0, r1 #222	# _57, _56
	mov.b	r1, 10	# tmp91,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_57], tmp91
	xor.w	r1, r1	# tmp92
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_57], tmp92
# basic.c:1501: 	return 3;
	mov.w	r0, 3	# _33,
.L325:
# basic.c:1502: }
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
# basic.c:1509: 	memcpy(to_print_buff, eth_buffer+off, len);
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
# basic.c:1510: 	to_print_len = len;
	ld.s	r0, [r13 + (-12)]	# _4, len
	st.w	[to_print_len], r0	# to_print_len, _4
# basic.c:1512: } 
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	my_callback, .-my_callback
	.section	.rodata
	.p2align	2
.LC10:
	.string	"Loading file %s from the ethernet network drive\n"
	.p2align	2
.LC11:
	.string	"/load:"
	.p2align	2
.LC12:
	.string	"File %s does not exist\n"
	.p2align	2
.LC13:
	.string	"size: %d\n"
	.p2align	2
.LC14:
	.string	"ETHERNET TIMEOUT"
	.text
	.p2align	1
	.global	eth_read_file
	.type	eth_read_file, @function
eth_read_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# basic.c:1516: 	int len = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# len, tmp44
# basic.c:1517: 	int init_offset = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# init_offset, tmp45
# basic.c:1518: 	int size = 1000000;
	mov.w	r0, 1000000	# tmp46,
	st.w	[r13 + (-12)], r0	# size, tmp46
# basic.c:1519: 	int fail_count = 0;
	xor.w	r0, r0	# tmp47
	st.w	[r13 + (-16)], r0	# fail_count, tmp47
# basic.c:1520: 	printf("Loading file %s from the ethernet network drive\n", file_name);
	mov.w	r0, sp	# tmp48,
	ld.w	r1, [r13 + (12)]	# tmp49, file_name
	st.w	[r0 + (4)], r1	#, tmp49
	mov.w	r1, .LC10	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	printf		#
# basic.c:1521: 	to_print_len = 0;
	xor.w	r0, r0	# tmp51
	st.w	[to_print_len], r0	# to_print_len, tmp51
# basic.c:1522: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1522 "basic.c" 1
	irq 0

# basic.c:1523: 	browseUrl("/load:", file_name, server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp52,
	mov.w	r1, my_callback	# tmp53,
	st.w	[r0 + (16)], r1	#, tmp53
	xor.w	r1, r1	# tmp54
	st.w	[r0 + (12)], r1	#, tmp54
	mov.w	r1, server_ip	# tmp55,
	st.w	[r0 + (8)], r1	#, tmp55
	ld.w	r1, [r13 + (12)]	# tmp56, file_name
	st.w	[r0 + (4)], r1	#, tmp56
	mov.w	r1, .LC11	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	browseUrl		#
# basic.c:1525: 	while (len < size) {
	j	.L332		#
.L338:
# basic.c:1526: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp58,
	mov.w	r0, eth_buffer	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	mainLoop		#
# basic.c:1528: 		if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.291_1, to_print_len
# basic.c:1528: 		if (to_print_len > 0) {
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# to_print_len.291_1, tmp60
	jses	.L333		#
# basic.c:1529: 			if (size == 1000000) {
	ld.w	r1, [r13 + (-12)]	# tmp61, size
	mov.w	r0, 1000000	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jnz	.L334		#
# basic.c:1530: 				size = to_print_buff[3];
	ld.b	r0, [to_print_buff+3]	# _2, to_print_buff
# basic.c:1530: 				size = to_print_buff[3];
	zex.b	r0, r0	# tmp63, _2
	st.w	[r13 + (-12)], r0	# size, tmp63
# basic.c:1531: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp65, size
	mov.w	r1, 8	# tmp66,
	shl.w	r0, r1	# tmp64, tmp66
	st.w	[r13 + (-12)], r0	# size, tmp64
# basic.c:1532: 				size |= to_print_buff[2];
	ld.b	r0, [to_print_buff+2]	# _3, to_print_buff
	zex.b	r1, r0	# _4, _3
# basic.c:1532: 				size |= to_print_buff[2];
	ld.w	r0, [r13 + (-12)]	# tmp68, size
	or.w	r0, r1	# tmp67, _4
	st.w	[r13 + (-12)], r0	# size, tmp67
# basic.c:1533: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp70, size
	mov.w	r1, 8	# tmp71,
	shl.w	r0, r1	# tmp69, tmp71
	st.w	[r13 + (-12)], r0	# size, tmp69
# basic.c:1534: 				size |= to_print_buff[1];
	ld.b	r0, [to_print_buff+1]	# _5, to_print_buff
	zex.b	r1, r0	# _6, _5
# basic.c:1534: 				size |= to_print_buff[1];
	ld.w	r0, [r13 + (-12)]	# tmp73, size
	or.w	r0, r1	# tmp72, _6
	st.w	[r13 + (-12)], r0	# size, tmp72
# basic.c:1535: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp75, size
	mov.w	r1, 8	# tmp76,
	shl.w	r0, r1	# tmp74, tmp76
	st.w	[r13 + (-12)], r0	# size, tmp74
# basic.c:1536: 				size |= to_print_buff[0];
	ld.b	r0, [to_print_buff]	# _7, to_print_buff
	zex.b	r1, r0	# _8, _7
# basic.c:1536: 				size |= to_print_buff[0];
	ld.w	r0, [r13 + (-12)]	# tmp78, size
	or.w	r0, r1	# tmp77, _8
	st.w	[r13 + (-12)], r0	# size, tmp77
# basic.c:1537: 				init_offset = 4;
	mov.w	r0, 4	# tmp79,
	st.w	[r13 + (-8)], r0	# init_offset, tmp79
# basic.c:1538: 				if (size == 0) {
	ld.w	r1, [r13 + (-12)]	# tmp80, size
	xor.w	r0, r0	# tmp81
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L335		#
# basic.c:1539: 					printf("File %s does not exist\n", file_name);
	mov.w	r0, sp	# tmp82,
	ld.w	r1, [r13 + (12)]	# tmp83, file_name
	st.w	[r0 + (4)], r1	#, tmp83
	mov.w	r1, .LC12	# tmp84,
	st.w	[r0], r1	#, tmp84
	call	printf		#
# basic.c:1540: 					break;
	j	.L336		#
.L335:
# basic.c:1542: 				printf("size: %d\n", size);
	mov.w	r0, sp	# tmp85,
	ld.w	r1, [r13 + (-12)]	# tmp86, size
	st.w	[r0 + (4)], r1	#, tmp86
	mov.w	r1, .LC13	# tmp87,
	st.w	[r0], r1	#, tmp87
	call	printf		#
	j	.L337		#
.L334:
# basic.c:1544: 				init_offset = 0;
	xor.w	r0, r0	# tmp88
	st.w	[r13 + (-8)], r0	# init_offset, tmp88
.L337:
# basic.c:1546: 			printf("#");
	mov.w	r1, sp	# tmp89,
	mov.w	r0, 35	# tmp90,
	st.w	[r1], r0	#, tmp90
	call	putchar		#
# basic.c:1547: 			fail_count = 0;
	xor.w	r0, r0	# tmp91
	st.w	[r13 + (-16)], r0	# fail_count, tmp91
# basic.c:1548: 			to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.292_9, to_print_len
# basic.c:1548: 			to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp93,
	add.w	r0, r1 #222	# tmp92, tmp93
	xor.w	r1, r1	# tmp94
	st.b	[r0], r1	# to_print_buff, tmp94
# basic.c:1549: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r0, [r13 + (-4)]	# len.293_10, len
# basic.c:1549: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r1, [r13 + (8)]	# tmp95, buffer
	add.w	r1, r0 #222	# _11, len.293_10
# basic.c:1549: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r2, [r13 + (-8)]	# init_offset.294_12, init_offset
	mov.w	r0, to_print_buff	# tmp96,
	add.w	r2, r0 #222	# _13, tmp96
	ld.w	r3, [to_print_len]	# to_print_len.295_14, to_print_len
	mov.w	r0, sp	# tmp97,
	st.w	[r0 + (8)], r3	#, to_print_len.295_14
	st.w	[r0 + (4)], r2	#, _13
	st.w	[r0], r1	#, _11
	call	memcpy		#
# basic.c:1550: 			len += to_print_len - init_offset;
	ld.w	r1, [to_print_len]	# to_print_len.296_15, to_print_len
	ld.w	r0, [r13 + (-8)]	# tmp98, init_offset
	sub.w	r1, r0 #222	# _16, tmp98
# basic.c:1550: 			len += to_print_len - init_offset;
	ld.w	r0, [r13 + (-4)]	# tmp100, len
	add.w	r0, r1 #222	# tmp99, _16
	st.w	[r13 + (-4)], r0	# len, tmp99
# basic.c:1552: 			to_print_len = 0;
	xor.w	r0, r0	# tmp101
	st.w	[to_print_len], r0	# to_print_len, tmp101
	j	.L332		#
.L333:
# basic.c:1555: 			delay(10);
	mov.w	r1, sp	# tmp102,
	mov.w	r0, 10	# tmp103,
	st.w	[r1], r0	#, tmp103
	call	delay		#
# basic.c:1556: 			fail_count++;
	ld.w	r0, [r13 + (-16)]	# tmp105, fail_count
	add.w	r0, 1 #111	# tmp104,
	st.w	[r13 + (-16)], r0	# fail_count, tmp104
# basic.c:1557: 			if (fail_count > 256) {
	ld.w	r1, [r13 + (-16)]	# tmp106, fail_count
	mov.w	r0, 256	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jses	.L332		#
# basic.c:1558: 				printf("ETHERNET TIMEOUT\n");
	mov.w	r1, sp	# tmp108,
	mov.w	r0, .LC14	# tmp109,
	st.w	[r1], r0	#, tmp109
	call	puts		#
# basic.c:1559: 				len = 0;
	xor.w	r0, r0	# tmp110
	st.w	[r13 + (-4)], r0	# len, tmp110
# basic.c:1560: 				break;
	j	.L336		#
.L332:
# basic.c:1525: 	while (len < size) {
	ld.w	r1, [r13 + (-4)]	# tmp111, len
	ld.w	r0, [r13 + (-12)]	# tmp112, size
	cmp.w	r1, r0	# tmp111, tmp112
	jss	.L338		#
.L336:
# basic.c:1565: 	asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn on timer irq
# 1565 "basic.c" 1
	irq 1

# basic.c:1566: 	return len;
	ld.w	r0, [r13 + (-4)]	# _60, len
# basic.c:1567: }
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
# basic.c:1574: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1574 "basic.c" 1
	irq 0

# basic.c:1575: asm(
# 1575 "basic.c" 1
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

# basic.c:1581: 	asm("push r13\npush r13\n");
# 1581 "basic.c" 1
	push r13
push r13

# basic.c:1583: 	if (eth)
	ld.w	r1, [eth]	# eth.297_1, eth
# basic.c:1583: 	if (eth)
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# eth.297_1, tmp27
	jz	.L341		#
# basic.c:1584: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp28,
	mov.w	r0, eth_buffer	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	mainLoop		#
.L341:
# basic.c:1587: 	asm("pop r13\npop r13\n");
# 1587 "basic.c" 1
	pop r13
pop r13

# basic.c:1590: 	asm 
# 1590 "basic.c" 1
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

# basic.c:1594: }
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
# basic.c:1597: 	*TIMER_HANDLER_INSTR 	= 0;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.298_1, TIMER_HANDLER_INSTR
# basic.c:1597: 	*TIMER_HANDLER_INSTR 	= 0;
	xor.w	r1, r1	# tmp29
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.298_1, tmp29
# basic.c:1598: 	*TIMER_HANDLER_ADDR 	= 0;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.299_2, TIMER_HANDLER_ADDR
# basic.c:1598: 	*TIMER_HANDLER_ADDR 	= 0;
	xor.w	r1, r1	# tmp30
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.299_2, tmp30
# basic.c:1599: 	*PORT_TIMER = 0;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.300_3, PORT_TIMER
# basic.c:1599: 	*PORT_TIMER = 0;
	xor.w	r1, r1	# tmp31
	st.s	[r0], r1	# *PORT_TIMER.300_3, tmp31
# basic.c:1600: }
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
# basic.c:1604: 	*TIMER_HANDLER_INSTR 	= 1;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.301_1, TIMER_HANDLER_INSTR
# basic.c:1604: 	*TIMER_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp30,
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.301_1, tmp30
# basic.c:1605: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.302_2, TIMER_HANDLER_ADDR
# basic.c:1605: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	mov.w	r1, timer_irq_triggered	# timer_irq_triggered.303_3,
# basic.c:1605: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.302_2, timer_irq_triggered.303_3
# basic.c:1606: 	*PORT_TIMER = 50;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.304_4, PORT_TIMER
# basic.c:1606: 	*PORT_TIMER = 50;
	mov.s	r1, 50	# tmp31,
	st.s	[r0], r1	# *PORT_TIMER.304_4, tmp31
# basic.c:1607: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_timer, .-init_timer
	.section	.rodata
	.p2align	2
.LC15:
	.string	"Loading file: <%s>\n"
	.p2align	2
.LC16:
	.string	"Error reading file!"
	.p2align	2
.LC17:
	.string	"\nSum: %d\n"
	.p2align	2
.LC18:
	.string	"SD card file open failed"
	.p2align	2
.LC19:
	.string	"File size: %d\n"
	.p2align	2
.LC20:
	.string	".BIN"
	.p2align	2
.LC21:
	.string	"Loaded executable file. Run it using: SYS 0"
	.p2align	2
.LC22:
	.string	".BAS"
	.p2align	2
.LC23:
	.string	"Loaded successfuly at address 0 (reachable by PEEK and POKE)."
	.p2align	2
.LC24:
	.string	"OK loading file %s\n"
	.p2align	2
.LC25:
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
# basic.c:1614: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1615: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.305_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.305_1
# basic.c:1615: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp116, _2
	mov.w	r0, 64	# tmp117,
	cmp.w	r1, r0	# tmp116, tmp117
	jse	.L345		#
# basic.c:1615: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.306_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.306_3
# basic.c:1615: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp118, _4
	mov.w	r0, 90	# tmp119,
	cmp.w	r1, r0	# tmp118, tmp119
	jse	.L346		#
.L345:
# basic.c:1617: 		qwhat();
	call	qwhat		#
# basic.c:1618: 		return;
	j	.L344		#
.L346:
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	xor.w	r0, r0	# tmp120
	st.w	[r13 + (-8)], r0	# i, tmp120
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	j	.L348		#
.L350:
# basic.c:1625: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.307_5, txtpos
	ld.w	r1, [r13 + (-8)]	# i.308_6, i
	add.w	r0, r1 #222	# _7, i.308_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1625: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp121,
	add.w	r0, -72 #111	# tmp121,
	ld.w	r2, [r13 + (-8)]	# tmp123, i
	add.w	r0, r2 #222	# tmp122, tmp123
	st.b	[r0], r1	# s, _9
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [r13 + (-8)]	# tmp125, i
	add.w	r0, 1 #111	# tmp124,
	st.w	[r13 + (-8)], r0	# i, tmp124
.L348:
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.309_10, txtpos
	ld.w	r1, [r13 + (-8)]	# i.310_11, i
	add.w	r0, r1 #222	# _12, i.310_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp126, _13
	mov.w	r0, 10	# tmp127,
	cmp.w	r1, r0	# tmp126, tmp127
	jz	.L349		#
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.311_14, txtpos
	ld.w	r1, [r13 + (-8)]	# i.312_15, i
	add.w	r0, r1 #222	# _16, i.312_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp128, _17
	mov.w	r0, 13	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jz	.L349		#
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.313_18, txtpos
	ld.w	r1, [r13 + (-8)]	# i.314_19, i
	add.w	r0, r1 #222	# _20, i.314_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp130, _21
	mov.w	r0, 32	# tmp131,
	cmp.w	r1, r0	# tmp130, tmp131
	jz	.L349		#
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.315_22, txtpos
	ld.w	r1, [r13 + (-8)]	# i.316_23, i
	add.w	r0, r1 #222	# _24, i.316_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp132, _25
	mov.w	r0, 9	# tmp133,
	cmp.w	r1, r0	# tmp132, tmp133
	jz	.L349		#
# basic.c:1622: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r1, [r13 + (-8)]	# tmp134, i
	mov.w	r0, 31	# tmp135,
	cmp.w	r1, r0	# tmp134, tmp135
	jses	.L350		#
.L349:
# basic.c:1627: 	s[i] = 0;
	mov.w	r0, r13	# tmp136,
	add.w	r0, -72 #111	# tmp136,
	ld.w	r1, [r13 + (-8)]	# tmp138, i
	add.w	r0, r1 #222	# tmp137, tmp138
	xor.w	r1, r1	# tmp139
	st.b	[r0], r1	# s, tmp139
# basic.c:1629: 	printf("Loading file: <%s>\n", s);
	mov.w	r0, sp	# tmp140,
	mov.w	r1, r13	# tmp141,
	add.w	r1, -72 #111	# tmp141,
	st.w	[r0 + (4)], r1	#, tmp141
	mov.w	r1, .LC15	# tmp142,
	st.w	[r0], r1	#, tmp142
	call	printf		#
# basic.c:1630: 	if (drive == 2) {
	ld.b	r0, [drive]	# drive.317_26, drive
# basic.c:1630: 	if (drive == 2) {
	sex.b	r1, r0	# tmp143, drive.317_26
	mov.w	r0, 2	# tmp144,
	cmp.w	r1, r0	# tmp143, tmp144
	jnz	.L351		#
# basic.c:1632: 		asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1632 "basic.c" 1
	irq 0

# basic.c:1633: 		delay(100);
	mov.w	r1, sp	# tmp145,
	mov.w	r0, 100	# tmp146,
	st.w	[r1], r0	#, tmp146
	call	delay		#
# basic.c:1634: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.318_27, buffer
	mov.w	r0, sp	# tmp147,
	mov.w	r2, r13	# tmp148,
	add.w	r2, -72 #111	# tmp148,
	st.w	[r0 + (4)], r2	#, tmp148
	st.w	[r0], r1	#, buffer.318_27
	call	uart_read_file		#
	st.w	[r13 + (-8)], r0	# i,
# basic.c:1635: 		asm ("irq 1\n");  // IRQ 0000, xxx1 <- turn on timer irq
# 1635 "basic.c" 1
	irq 1

	j	.L352		#
.L351:
# basic.c:1636: 	} else if (drive == 0)
	ld.b	r0, [drive]	# drive.319_28, drive
# basic.c:1636: 	} else if (drive == 0)
	sex.b	r1, r0	# tmp149, drive.319_28
	xor.w	r0, r0	# tmp150
	cmp.w	r1, r0	# tmp149, tmp150
	jnz	.L353		#
# basic.c:1640: load_load_again:		
	nop	
.L354:
# basic.c:1641: 		if(file_open(s, &fd, O_READ))
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
# basic.c:1641: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp155, _29
	xor.w	r0, r0	# tmp156
	cmp.w	r1, r0	# tmp155, tmp156
	jz	.L355		#
# basic.c:1643: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-116)]	# _30, fd.dir_entry.filesize
# basic.c:1643: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-32)], r0	# len, _30
# basic.c:1644: 			int total = 0;
	xor.w	r0, r0	# tmp157
	st.w	[r13 + (-20)], r0	# total, tmp157
# basic.c:1646: 			while(total < len)
	j	.L356		#
.L359:
# basic.c:1648: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.320_31, buffer
	ld.w	r0, [r13 + (-20)]	# total.321_32, total
	add.w	r1, r0 #222	# _33, total.321_32
	mov.w	r0, sp	# tmp158,
	mov.w	r2, 512	# tmp159,
	st.w	[r0 + (8)], r2	#, tmp159
	st.w	[r0 + (4)], r1	#, _33
	mov.w	r1, r13	# tmp160,
	add.w	r1, -148 #111	# tmp160,
	st.w	[r0], r1	#, tmp160
	call	file_read		#
# basic.c:1648: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp161, _34
	st.w	[r13 + (-36)], r0	# current, tmp161
# basic.c:1649: 				if (current > 0) {
	ld.w	r1, [r13 + (-36)]	# tmp162, current
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# tmp162, tmp163
	jses	.L357		#
# basic.c:1650: 					total += current;
	ld.w	r0, [r13 + (-20)]	# tmp165, total
	ld.w	r1, [r13 + (-36)]	# tmp166, current
	add.w	r0, r1 #222	# tmp164, tmp166
	st.w	[r13 + (-20)], r0	# total, tmp164
# basic.c:1651: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-20)]	# total.322_35, total
# basic.c:1651: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-116)]	# _36, fd.dir_entry.filesize
# basic.c:1651: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _37, _36
# basic.c:1651: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp167,
	mul.w	r1, r0	# _38, tmp167
# basic.c:1651: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp168,
	div.w	r1, r0	# _39, tmp168
mov.w	r1, r14	# _39
# basic.c:1651: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp169
	cmp.w	r1, r0	# _39, tmp169
	jnz	.L356		#
# basic.c:1652: 						printf("#");
	mov.w	r1, sp	# tmp170,
	mov.w	r0, 35	# tmp171,
	st.w	[r1], r0	#, tmp171
	call	putchar		#
	j	.L356		#
.L357:
# basic.c:1654: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp172,
	mov.w	r0, .LC16	# tmp173,
	st.w	[r1], r0	#, tmp173
	call	puts		#
	j	.L344		#
.L356:
# basic.c:1646: 			while(total < len)
	ld.w	r1, [r13 + (-20)]	# tmp174, total
	ld.w	r0, [r13 + (-32)]	# tmp175, len
	cmp.w	r1, r0	# tmp174, tmp175
	jss	.L359		#
# basic.c:1659: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.323_40, buffer
	ld.w	r1, [r13 + (-32)]	# len.324_41, len
	add.w	r0, r1 #222	# _42, len.324_41
# basic.c:1659: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp176
	st.b	[r0], r1	# *_42, tmp176
# basic.c:1660: 			i = len;
	ld.w	r0, [r13 + (-32)]	# tmp177, len
	st.w	[r13 + (-8)], r0	# i, tmp177
# basic.c:1664: 			strcpy(fileName, s);
	mov.w	r0, sp	# tmp178,
	mov.w	r1, r13	# tmp179,
	add.w	r1, -72 #111	# tmp179,
	st.w	[r0 + (4)], r1	#, tmp179
	mov.w	r1, r13	# tmp180,
	add.w	r1, -92 #111	# tmp180,
	st.w	[r0], r1	#, tmp180
	call	strcpy		#
# basic.c:1665: 			int sum = 0;
	xor.w	r0, r0	# tmp181
	st.w	[r13 + (-24)], r0	# sum, tmp181
# basic.c:1666: 			for (int j = 0; j < i; j++) {
	xor.w	r0, r0	# tmp182
	st.w	[r13 + (-28)], r0	# j, tmp182
# basic.c:1666: 			for (int j = 0; j < i; j++) {
	j	.L360		#
.L361:
# basic.c:1667: 				sum += buffer[j];
	ld.w	r0, [buffer]	# buffer.325_43, buffer
	ld.w	r1, [r13 + (-28)]	# j.326_44, j
	add.w	r0, r1 #222	# _45, j.326_44
	ld.b	r0, [r0]	# _46, *_45
	sex.b	r1, r0	# _47, _46
# basic.c:1667: 				sum += buffer[j];
	ld.w	r0, [r13 + (-24)]	# tmp184, sum
	add.w	r0, r1 #222	# tmp183, _47
	st.w	[r13 + (-24)], r0	# sum, tmp183
# basic.c:1666: 			for (int j = 0; j < i; j++) {
	ld.w	r0, [r13 + (-28)]	# tmp186, j
	add.w	r0, 1 #111	# tmp185,
	st.w	[r13 + (-28)], r0	# j, tmp185
.L360:
# basic.c:1666: 			for (int j = 0; j < i; j++) {
	ld.w	r1, [r13 + (-28)]	# tmp187, j
	ld.w	r0, [r13 + (-8)]	# tmp188, i
	cmp.w	r1, r0	# tmp187, tmp188
	jss	.L361		#
# basic.c:1669: 			printf("\nSum: %d\n", sum);
	mov.w	r0, sp	# tmp189,
	ld.w	r1, [r13 + (-24)]	# tmp190, sum
	st.w	[r0 + (4)], r1	#, tmp190
	mov.w	r1, .LC17	# tmp191,
	st.w	[r0], r1	#, tmp191
	call	printf		#
	j	.L352		#
.L355:
# basic.c:1672: 			printf("SD card file open failed\n");
	mov.w	r1, sp	# tmp192,
	mov.w	r0, .LC18	# tmp193,
	st.w	[r1], r0	#, tmp193
	call	puts		#
# basic.c:1673: 			return;
	j	.L344		#
.L353:
# basic.c:1678: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.327_48, buffer
	mov.w	r0, sp	# tmp194,
	mov.w	r2, r13	# tmp195,
	add.w	r2, -72 #111	# tmp195,
	st.w	[r0 + (4)], r2	#, tmp195
	st.w	[r0], r1	#, buffer.327_48
	call	eth_read_file		#
	st.w	[r13 + (-8)], r0	# i,
.L352:
# basic.c:1681: 	if (i > 0)
	ld.w	r1, [r13 + (-8)]	# tmp196, i
	xor.w	r0, r0	# tmp197
	cmp.w	r1, r0	# tmp196, tmp197
	jses	.L362		#
# basic.c:1683: 		printf("File size: %d\n", i);
	mov.w	r0, sp	# tmp198,
	ld.w	r1, [r13 + (-8)]	# tmp199, i
	st.w	[r0 + (4)], r1	#, tmp199
	mov.w	r1, .LC19	# tmp200,
	st.w	[r0], r1	#, tmp200
	call	printf		#
# basic.c:1684: 		if (strstr(s, ".BIN") != (char *)0) 
	mov.w	r0, sp	# tmp201,
	mov.w	r1, .LC20	# tmp202,
	st.w	[r0 + (4)], r1	#, tmp202
	mov.w	r1, r13	# tmp203,
	add.w	r1, -72 #111	# tmp203,
	st.w	[r0], r1	#, tmp203
	call	strstr		#
	mov.w	r1, r0	# _49,
# basic.c:1684: 		if (strstr(s, ".BIN") != (char *)0) 
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# _49, tmp204
	jz	.L363		#
# basic.c:1686: 			printf("Loaded executable file. Run it using: SYS 0\n");
	mov.w	r1, sp	# tmp205,
	mov.w	r0, .LC21	# tmp206,
	st.w	[r1], r0	#, tmp206
	call	puts		#
# basic.c:1687: 			return;
	j	.L344		#
.L363:
# basic.c:1688: 		} else if (strstr(s, ".BAS") == (char *)0) 
	mov.w	r0, sp	# tmp207,
	mov.w	r1, .LC22	# tmp208,
	st.w	[r0 + (4)], r1	#, tmp208
	mov.w	r1, r13	# tmp209,
	add.w	r1, -72 #111	# tmp209,
	st.w	[r0], r1	#, tmp209
	call	strstr		#
	mov.w	r1, r0	# _50,
# basic.c:1688: 		} else if (strstr(s, ".BAS") == (char *)0) 
	xor.w	r0, r0	# tmp210
	cmp.w	r1, r0	# _50, tmp210
	jnz	.L364		#
# basic.c:1690: 			printf("Loaded successfuly at address 0 (reachable by PEEK and POKE).\n");
	mov.w	r1, sp	# tmp211,
	mov.w	r0, .LC23	# tmp212,
	st.w	[r1], r0	#, tmp212
	call	puts		#
# basic.c:1691: 			return;
	j	.L344		#
.L364:
# basic.c:1694: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.328_51, program_start
	st.w	[program_end], r0	# program_end, program_start.328_51
# basic.c:1695: 		k = 0;
	xor.w	r0, r0	# tmp213
	st.w	[r13 + (-16)], r0	# k, tmp213
# basic.c:1696: 		for (j = 0; j <= i; j++)
	xor.w	r0, r0	# tmp214
	st.w	[r13 + (-12)], r0	# j, tmp214
# basic.c:1696: 		for (j = 0; j <= i; j++)
	j	.L365		#
.L370:
# basic.c:1698: 			if (buffer[j] == CR)
	ld.w	r0, [buffer]	# buffer.329_52, buffer
	ld.w	r1, [r13 + (-12)]	# j.330_53, j
	add.w	r0, r1 #222	# _54, j.330_53
	ld.b	r0, [r0]	# _55, *_54
# basic.c:1698: 			if (buffer[j] == CR)
	sex.b	r1, r0	# tmp215, _55
	mov.w	r0, 13	# tmp216,
	cmp.w	r1, r0	# tmp215, tmp216
	jnz	.L366		#
# basic.c:1700: 				buffer[j] = NL;
	ld.w	r0, [buffer]	# buffer.331_56, buffer
	ld.w	r1, [r13 + (-12)]	# j.332_57, j
	add.w	r0, r1 #222	# _58, j.332_57
# basic.c:1700: 				buffer[j] = NL;
	mov.b	r1, 10	# tmp217,
	st.b	[r0], r1	# *_58, tmp217
.L366:
# basic.c:1702: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.333_59, buffer
	ld.w	r1, [r13 + (-12)]	# j.334_60, j
	add.w	r0, r1 #222	# _61, j.334_60
	ld.b	r0, [r0]	# _62, *_61
# basic.c:1702: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp218, _62
	mov.w	r0, 10	# tmp219,
	cmp.w	r1, r0	# tmp218, tmp219
	jz	.L367		#
# basic.c:1702: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.335_63, buffer
	ld.w	r1, [r13 + (-12)]	# j.336_64, j
	add.w	r0, r1 #222	# _65, j.336_64
	ld.b	r0, [r0]	# _66, *_65
# basic.c:1702: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp220, _66
	xor.w	r0, r0	# tmp221
	cmp.w	r1, r0	# tmp220, tmp221
	jnz	.L368		#
.L367:
# basic.c:1704: 				txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.337_67, program_end
	add.w	r0, 4 #111	# _68,
# basic.c:1704: 				txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _68
# basic.c:1705: 				strncpy(txtpos, &buffer[k], j);
	ld.w	r1, [txtpos]	# txtpos.338_69, txtpos
	ld.w	r2, [buffer]	# buffer.339_70, buffer
	ld.w	r0, [r13 + (-16)]	# k.340_71, k
	add.w	r2, r0 #222	# _72, k.340_71
	mov.w	r0, sp	# tmp222,
	ld.w	r3, [r13 + (-12)]	# tmp223, j
	st.w	[r0 + (8)], r3	#, tmp223
	st.w	[r0 + (4)], r2	#, _72
	st.w	[r0], r1	#, txtpos.338_69
	call	strncpy		#
# basic.c:1706: 				txtpos[j - k] = NL;
	ld.w	r0, [txtpos]	# txtpos.341_73, txtpos
# basic.c:1706: 				txtpos[j - k] = NL;
	ld.w	r1, [r13 + (-12)]	# tmp224, j
	ld.w	r2, [r13 + (-16)]	# tmp225, k
	sub.w	r1, r2 #222	# _74, tmp225
# basic.c:1706: 				txtpos[j - k] = NL;
	add.w	r0, r1 #222	# _76, _75
# basic.c:1706: 				txtpos[j - k] = NL;
	mov.b	r1, 10	# tmp226,
	st.b	[r0], r1	# *_76, tmp226
# basic.c:1707: 				txtpos[j - k + 1] = 0;
	ld.w	r0, [txtpos]	# txtpos.342_77, txtpos
# basic.c:1707: 				txtpos[j - k + 1] = 0;
	ld.w	r1, [r13 + (-12)]	# tmp227, j
	ld.w	r2, [r13 + (-16)]	# tmp228, k
	sub.w	r1, r2 #222	# _78, tmp228
# basic.c:1707: 				txtpos[j - k + 1] = 0;
	add.w	r1, 1 #111	# _80,
	add.w	r0, r1 #222	# _81, _80
# basic.c:1707: 				txtpos[j - k + 1] = 0;
	xor.w	r1, r1	# tmp229
	st.b	[r0], r1	# *_81, tmp229
# basic.c:1708: 				k = j + 1;
	ld.w	r0, [r13 + (-12)]	# tmp231, j
	add.w	r0, 1 #111	# tmp230,
	st.w	[r13 + (-16)], r0	# k, tmp230
# basic.c:1709: 				l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.343_82, txtpos
	mov.w	r1, sp	# tmp232,
	st.w	[r1], r0	#, txtpos.343_82
	call	strlen		#
	st.w	[r13 + (-40)], r0	# l,
# basic.c:1710: 				if (l % 2 == 0)
	ld.w	r1, [r13 + (-40)]	# l.344_83, l
	mov.w	r0, 1	# tmp233,
	and.w	r1, r0	# _84, tmp233
# basic.c:1710: 				if (l % 2 == 0)
	xor.w	r0, r0	# tmp234
	cmp.w	r1, r0	# _84, tmp234
	jnz	.L369		#
# basic.c:1711: 					strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.345_85, txtpos
	mov.w	r0, sp	# tmp235,
	st.w	[r0], r6	#, txtpos.345_85
	call	strlen		#
	mov.w	r1, r0	# _156, tmp236
	mov.w	r0, r6	# _157, txtpos.345_85
	add.w	r0, r1 #222	# _157, _156
	mov.b	r1, 32	# tmp237,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_157], tmp237
	xor.w	r1, r1	# tmp238
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_157], tmp238
.L369:
# basic.c:1712: 				toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1713: 				skip_to_end();
	call	skip_to_end		#
# basic.c:1714: 				linenum = testnum();
	call	testnum		#
	mov.w	r1, r0	# _86,
# basic.c:1714: 				linenum = testnum();
	mov.w	r0, r1	# tmp239, _86
	st.w	[sp], r0	#, tmp239
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _87
# basic.c:1715: 				if (linenum > 0)
	ld.w	r1, [linenum]	# linenum.346_88, linenum
# basic.c:1715: 				if (linenum > 0)
	xor.w	r0, r0	# tmp240
	cmp.w	r1, r0	# linenum.346_88, tmp240
	jses	.L368		#
# basic.c:1719: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:1720: 					entered_with_line_num();
	call	entered_with_line_num		#
.L368:
# basic.c:1696: 		for (j = 0; j <= i; j++)
	ld.w	r0, [r13 + (-12)]	# tmp242, j
	add.w	r0, 1 #111	# tmp241,
	st.w	[r13 + (-12)], r0	# j, tmp241
.L365:
# basic.c:1696: 		for (j = 0; j <= i; j++)
	ld.w	r1, [r13 + (-12)]	# tmp243, j
	ld.w	r0, [r13 + (-8)]	# tmp244, i
	cmp.w	r1, r0	# tmp243, tmp244
	jses	.L370		#
# basic.c:1724: 		printf("OK loading file %s\n", s);
	mov.w	r0, sp	# tmp245,
	mov.w	r1, r13	# tmp246,
	add.w	r1, -72 #111	# tmp246,
	st.w	[r0 + (4)], r1	#, tmp246
	mov.w	r1, .LC24	# tmp247,
	st.w	[r0], r1	#, tmp247
	call	printf		#
	j	.L344		#
.L362:
# basic.c:1728: 		printf("Error loading file %s\n", s);
	mov.w	r0, sp	# tmp248,
	mov.w	r1, r13	# tmp249,
	add.w	r1, -72 #111	# tmp249,
	st.w	[r0 + (4)], r1	#, tmp249
	mov.w	r1, .LC25	# tmp250,
	st.w	[r0], r1	#, tmp250
	call	printf		#
.L344:
# basic.c:1730: }
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
	sub.w	sp, 40 #111	#,
# basic.c:1737: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [list_line]	# list_line.347_1, list_line
# basic.c:1737: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [r0]	# tmp50, MEM[(LINENUM *)list_line.347_1]
	st.w	[r13 + (-4)], r0	# line_num, tmp50
# basic.c:1738: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.348_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:1741: 	sprintf(s, "%d ", line_num);
	mov.w	r0, sp	# tmp51,
	ld.w	r1, [r13 + (-4)]	# tmp52, line_num
	st.w	[r0 + (8)], r1	#, tmp52
	mov.w	r1, .LC1	# tmp53,
	st.w	[r0 + (4)], r1	#, tmp53
	mov.w	r1, r13	# tmp54,
	add.w	r1, -14 #111	# tmp54,
	st.w	[r0], r1	#, tmp54
	call	sprintf		#
# basic.c:1742: 	strcpy(&buffer[i], s);
	ld.w	r1, [buffer]	# buffer.349_4, buffer
	ld.w	r0, [r13 + (8)]	# i.350_5, i
	add.w	r1, r0 #222	# _6, i.350_5
	mov.w	r0, sp	# tmp55,
	mov.w	r2, r13	# tmp56,
	add.w	r2, -14 #111	# tmp56,
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, _6
	call	strcpy		#
# basic.c:1743: 	i += strlen(s);
	mov.w	r1, sp	# tmp57,
	mov.w	r0, r13	# tmp58,
	add.w	r0, -14 #111	# tmp58,
	st.w	[r1], r0	#, tmp58
	call	strlen		#
	mov.w	r1, r0	# _7,
# basic.c:1743: 	i += strlen(s);
	ld.w	r0, [r13 + (8)]	# tmp60, i
	add.w	r0, r1 #222	# tmp59, _7
	st.w	[r13 + (8)], r0	# i, tmp59
# basic.c:1744: 	while (*list_line != NL)
	j	.L374		#
.L375:
# basic.c:1746: 		buffer[i] = *list_line;
	ld.w	r0, [list_line]	# list_line.351_8, list_line
	ld.b	r1, [r0]	# _9, *list_line.351_8
# basic.c:1746: 		buffer[i] = *list_line;
	ld.w	r0, [buffer]	# buffer.352_10, buffer
	ld.w	r2, [r13 + (8)]	# i.353_11, i
	add.w	r0, r2 #222	# _12, i.353_11
# basic.c:1746: 		buffer[i] = *list_line;
	st.b	[r0], r1	# *_12, _13
# basic.c:1747: 		list_line++;
	ld.w	r0, [list_line]	# list_line.354_14, list_line
	add.w	r0, 1 #111	# _15,
	st.w	[list_line], r0	# list_line, _15
# basic.c:1748: 		i++;
	ld.w	r0, [r13 + (8)]	# tmp62, i
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (8)], r0	# i, tmp61
.L374:
# basic.c:1744: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.355_16, list_line
	ld.b	r0, [r0]	# _17, *list_line.355_16
# basic.c:1744: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp63, _17
	mov.w	r0, 10	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jnz	.L375		#
# basic.c:1750: 	list_line++;
	ld.w	r0, [list_line]	# list_line.356_18, list_line
	add.w	r0, 1 #111	# _19,
	st.w	[list_line], r0	# list_line, _19
# basic.c:1751: 	buffer[i] = NL;
	ld.w	r0, [buffer]	# buffer.357_20, buffer
	ld.w	r1, [r13 + (8)]	# i.358_21, i
	add.w	r0, r1 #222	# _22, i.358_21
# basic.c:1751: 	buffer[i] = NL;
	mov.b	r1, 10	# tmp65,
	st.b	[r0], r1	# *_22, tmp65
# basic.c:1752: 	i++;
	ld.w	r0, [r13 + (8)]	# tmp67, i
	add.w	r0, 1 #111	# tmp66,
	st.w	[r13 + (8)], r0	# i, tmp66
# basic.c:1754: 	return i;
	ld.w	r0, [r13 + (8)]	# _35, i
# basic.c:1755: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintline, .-sprintline
	.section	.rodata
	.p2align	2
.LC26:
	.string	"\nSaving to SD card..."
	.p2align	2
.LC27:
	.string	"Could not open file for save."
	.text
	.p2align	1
	.global	sd_write_file
	.type	sd_write_file, @function
sd_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 100 #111	#,
# basic.c:1760: 	printf("\nSaving to SD card...\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC26	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:1761: 	int res = file_open(file_name, &fd, O_WRITE);
	mov.w	r0, sp	# tmp38,
	mov.w	r1, 1	# tmp39,
	st.w	[r0 + (8)], r1	#, tmp39
	mov.w	r1, r13	# tmp40,
	add.w	r1, -76 #111	# tmp40,
	st.w	[r0 + (4)], r1	#, tmp40
	ld.w	r1, [r13 + (16)]	# tmp41, file_name
	st.w	[r0], r1	#, tmp41
	call	file_open		#
# basic.c:1761: 	int res = file_open(file_name, &fd, O_WRITE);
	zex.b	r0, r0	# tmp42, _1
	st.w	[r13 + (-12)], r0	# res, tmp42
# basic.c:1762: 	if (res)
	ld.w	r1, [r13 + (-12)]	# tmp43, res
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L378		#
# basic.c:1764: 		int i, curr, total = 0, count = len /512 + 1;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# total, tmp45
# basic.c:1764: 		int i, curr, total = 0, count = len /512 + 1;
	ld.w	r0, [r13 + (12)]	# tmp46, len
	xor.w	r1, r1	# tmp48
	cmp.w	r0, r1	# tmp47, tmp48
	jges	.L379		#
	mov.w	r1, 511	# tmp49,
	add.w	r0, r1 #222	# tmp47, tmp49
.L379:
	mov.w	r1, 9	# tmp51,
	shr.w	r0, r1	# tmp50, tmp51
# basic.c:1764: 		int i, curr, total = 0, count = len /512 + 1;
	add.w	r0, 1 #111	# tmp52,
	st.w	[r13 + (-16)], r0	# count, tmp52
# basic.c:1765: 		for (i = 0; i < count; i++)
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:1765: 		for (i = 0; i < count; i++)
	j	.L380		#
.L385:
# basic.c:1767: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (-8)]	# total.359_3, total
# basic.c:1767: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r1, [r13 + (8)]	# tmp54, buff
	add.w	r1, r0 #222	# _4, total.359_3
# basic.c:1767: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (12)]	# _5, len
	mov.w	r2, 512	# tmp55,
	cmp.w	r0, r2	# _5, tmp55
	jses	.L381		#
	mov.w	r0, 512	# _5,
.L381:
# basic.c:1767: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r2, r0	# _7, _6
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r2	#, _7
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, r13	# tmp57,
	add.w	r1, -76 #111	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	file_write		#
# basic.c:1767: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r0, r0	# tmp58, _8
	st.w	[r13 + (-20)], r0	# curr, tmp58
# basic.c:1768: 			if (curr > 0) {
	ld.w	r1, [r13 + (-20)]	# tmp59, curr
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jses	.L388		#
# basic.c:1769: 				len -= curr;
	ld.w	r0, [r13 + (12)]	# tmp62, len
	ld.w	r1, [r13 + (-20)]	# tmp63, curr
	sub.w	r0, r1 #222	# tmp61, tmp63
	st.w	[r13 + (12)], r0	# len, tmp61
# basic.c:1770: 				total += curr;
	ld.w	r0, [r13 + (-8)]	# tmp65, total
	ld.w	r1, [r13 + (-20)]	# tmp66, curr
	add.w	r0, r1 #222	# tmp64, tmp66
	st.w	[r13 + (-8)], r0	# total, tmp64
# basic.c:1774: 			printf("#");
	mov.w	r1, sp	# tmp67,
	mov.w	r0, 35	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	putchar		#
# basic.c:1765: 		for (i = 0; i < count; i++)
	ld.w	r0, [r13 + (-4)]	# tmp70, i
	add.w	r0, 1 #111	# tmp69,
	st.w	[r13 + (-4)], r0	# i, tmp69
.L380:
# basic.c:1765: 		for (i = 0; i < count; i++)
	ld.w	r1, [r13 + (-4)]	# tmp71, i
	ld.w	r0, [r13 + (-16)]	# tmp72, count
	cmp.w	r1, r0	# tmp71, tmp72
	jss	.L385		#
	j	.L384		#
.L388:
# basic.c:1773: 				break;
	nop	
.L384:
# basic.c:1777: 		printf("\n");
	mov.w	r1, sp	# tmp73,
	mov.w	r0, 10	# tmp74,
	st.w	[r1], r0	#, tmp74
	call	putchar		#
	j	.L386		#
.L378:
# basic.c:1781: 		printf("Could not open file for save.\n");
	mov.w	r1, sp	# tmp75,
	mov.w	r0, .LC27	# tmp76,
	st.w	[r1], r0	#, tmp76
	call	puts		#
.L386:
# basic.c:1783: 	return 1;	
	mov.w	r0, 1	# _33,
# basic.c:1784: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sd_write_file, .-sd_write_file
	.section	.rodata
	.p2align	2
.LC28:
	.string	"Saving file %s of %d bytes to the ethernet network drive\n"
	.text
	.p2align	1
	.global	eth_write_file
	.type	eth_write_file, @function
eth_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1788: 	printf("Saving file %s of %d bytes to the ethernet network drive\n", file_name, len);
	mov.w	r0, sp	# tmp27,
	ld.w	r1, [r13 + (12)]	# tmp28, len
	st.w	[r0 + (8)], r1	#, tmp28
	ld.w	r1, [r13 + (16)]	# tmp29, file_name
	st.w	[r0 + (4)], r1	#, tmp29
	mov.w	r1, .LC28	# tmp30,
	st.w	[r0], r1	#, tmp30
	call	printf		#
# basic.c:1789: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_write_file, .-eth_write_file
	.section	.rodata
	.p2align	2
.LC29:
	.string	"Filename: <%s>\n"
	.p2align	2
.LC30:
	.string	"OK saving file %s, length: %d\n"
	.text
	.p2align	1
	.global	exec_save
	.type	exec_save, @function
exec_save:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# basic.c:1796: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1797: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.360_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.360_1
# basic.c:1797: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp55, _2
	mov.w	r0, 64	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jse	.L391		#
# basic.c:1797: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.361_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.361_3
# basic.c:1797: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp57, _4
	mov.w	r0, 90	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jse	.L392		#
.L391:
# basic.c:1799: 		qwhat();
	call	qwhat		#
	j	.L390		#
.L392:
# basic.c:1803: 	int spi = 0;
	xor.w	r0, r0	# tmp59
	st.w	[r13 + (-8)], r0	# spi, tmp59
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	xor.w	r0, r0	# tmp60
	st.w	[r13 + (-4)], r0	# i, tmp60
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	j	.L394		#
.L396:
# basic.c:1806: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.362_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.363_6, i
	add.w	r0, r1 #222	# _7, i.363_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1806: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp61,
	add.w	r0, -40 #111	# tmp61,
	ld.w	r2, [r13 + (-4)]	# tmp63, i
	add.w	r0, r2 #222	# tmp62, tmp63
	st.b	[r0], r1	# s, _9
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [r13 + (-4)]	# tmp65, i
	add.w	r0, 1 #111	# tmp64,
	st.w	[r13 + (-4)], r0	# i, tmp64
.L394:
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.364_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.365_11, i
	add.w	r0, r1 #222	# _12, i.365_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp66, _13
	mov.w	r0, 10	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L395		#
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.366_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.367_15, i
	add.w	r0, r1 #222	# _16, i.367_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp68, _17
	mov.w	r0, 32	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L395		#
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.368_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.369_19, i
	add.w	r0, r1 #222	# _20, i.369_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1804: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp70, _21
	mov.w	r0, 9	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L396		#
.L395:
# basic.c:1808: 	s[i] = 0;
	mov.w	r0, r13	# tmp72,
	add.w	r0, -40 #111	# tmp72,
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	add.w	r0, r1 #222	# tmp73, tmp74
	xor.w	r1, r1	# tmp75
	st.b	[r0], r1	# s, tmp75
# basic.c:1809: 	printf("Filename: <%s>\n", s);
	mov.w	r0, sp	# tmp76,
	mov.w	r1, r13	# tmp77,
	add.w	r1, -40 #111	# tmp77,
	st.w	[r0 + (4)], r1	#, tmp77
	mov.w	r1, .LC29	# tmp78,
	st.w	[r0], r1	#, tmp78
	call	printf		#
# basic.c:1812: 	list_line = findline();
	call	findline		#
# basic.c:1812: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _22
# basic.c:1813: 	i = 0;
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:1814: 	while (list_line < program_end)
	j	.L397		#
.L398:
# basic.c:1816: 		i = sprintline(i);
	mov.w	r1, sp	# tmp80,
	ld.w	r0, [r13 + (-4)]	# tmp81, i
	st.w	[r1], r0	#, tmp81
	call	sprintline		#
	st.w	[r13 + (-4)], r0	# i,
.L397:
# basic.c:1814: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.370_23, list_line
	ld.w	r0, [program_end]	# program_end.371_24, program_end
# basic.c:1814: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.370_23, program_end.371_24
	js	.L398		#
# basic.c:1818: 	if (drive == 0) {
	ld.b	r0, [drive]	# drive.372_25, drive
# basic.c:1818: 	if (drive == 0) {
	sex.b	r1, r0	# tmp82, drive.372_25
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L399		#
# basic.c:1820: 		sd_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.373_26, buffer
	mov.w	r0, sp	# tmp84,
	mov.w	r2, r13	# tmp85,
	add.w	r2, -40 #111	# tmp85,
	st.w	[r0 + (8)], r2	#, tmp85
	ld.w	r2, [r13 + (-4)]	# tmp86, i
	st.w	[r0 + (4)], r2	#, tmp86
	st.w	[r0], r1	#, buffer.373_26
	call	sd_write_file		#
	j	.L400		#
.L399:
# basic.c:1821: 	} else if (drive == 2) {
	ld.b	r0, [drive]	# drive.374_27, drive
# basic.c:1821: 	} else if (drive == 2) {
	sex.b	r1, r0	# tmp87, drive.374_27
	mov.w	r0, 2	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L401		#
# basic.c:1823: 		asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 1823 "basic.c" 1
	irq 0

# basic.c:1824: 		uart_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.375_28, buffer
	mov.w	r0, sp	# tmp89,
	mov.w	r2, r13	# tmp90,
	add.w	r2, -40 #111	# tmp90,
	st.w	[r0 + (8)], r2	#, tmp90
	ld.w	r2, [r13 + (-4)]	# tmp91, i
	st.w	[r0 + (4)], r2	#, tmp91
	st.w	[r0], r1	#, buffer.375_28
	call	uart_write_file		#
# basic.c:1825: 		asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 1825 "basic.c" 1
	irq 1

	j	.L400		#
.L401:
# basic.c:1829: 		eth_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.376_29, buffer
	mov.w	r0, sp	# tmp92,
	mov.w	r2, r13	# tmp93,
	add.w	r2, -40 #111	# tmp93,
	st.w	[r0 + (8)], r2	#, tmp93
	ld.w	r2, [r13 + (-4)]	# tmp94, i
	st.w	[r0 + (4)], r2	#, tmp94
	st.w	[r0], r1	#, buffer.376_29
	call	eth_write_file		#
.L400:
# basic.c:1831: 	printf("OK saving file %s, length: %d\n", s, i);
	mov.w	r0, sp	# tmp95,
	ld.w	r1, [r13 + (-4)]	# tmp96, i
	st.w	[r0 + (8)], r1	#, tmp96
	mov.w	r1, r13	# tmp97,
	add.w	r1, -40 #111	# tmp97,
	st.w	[r0 + (4)], r1	#, tmp97
	mov.w	r1, .LC30	# tmp98,
	st.w	[r0], r1	#, tmp98
	call	printf		#
.L390:
# basic.c:1832: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_save, .-exec_save
	.section	.rodata
	.p2align	2
.LC31:
	.string	"%s %d bytes, cluster: %d (%d)\n"
	.p2align	2
.LC32:
	.string	""
	.p2align	2
.LC33:
	.string	"/dir"
	.p2align	2
.LC34:
	.string	"NETWORK TIMEOUT"
	.text
	.p2align	1
	.global	exec_dir
	.type	exec_dir, @function
exec_dir:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 88 #111	#,
# basic.c:1838: 	if (drive == 2)
	ld.b	r0, [drive]	# drive.377_1, drive
# basic.c:1838: 	if (drive == 2)
	sex.b	r1, r0	# tmp39, drive.377_1
	mov.w	r0, 2	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L403		#
# basic.c:1841: 		asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 1841 "basic.c" 1
	irq 0

# basic.c:1842: 		uart_ls_files(buffer);
	ld.w	r0, [buffer]	# buffer.378_2, buffer
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, buffer.378_2
	call	uart_ls_files		#
# basic.c:1843: 		asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 1843 "basic.c" 1
	irq 1

# basic.c:1844: 		printf("%s\n", buffer);
	ld.w	r0, [buffer]	# buffer.379_3, buffer
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, buffer.379_3
	call	puts		#
	j	.L402		#
.L403:
# basic.c:1846: 	else if (drive == 0)
	ld.b	r0, [drive]	# drive.380_4, drive
# basic.c:1846: 	else if (drive == 0)
	sex.b	r1, r0	# tmp43, drive.380_4
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L405		#
# basic.c:1850: 		int next = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# next, tmp45
# basic.c:1851: 		while ((next = getDirEntry(&fd, next)) != 0)
	j	.L406		#
.L407:
# basic.c:1853: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.w	r1, [r13 + (-32)]	# _5, fd.dir_entry.filesize
# basic.c:1853: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-16)]	# _6, fd.curr_cluster
# basic.c:1853: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r2, r0	# _7, _6
# basic.c:1853: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-36)]	# _8, fd.dir_entry.first_cluster
# basic.c:1853: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r3, r0	# _9, _8
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (16)], r3	#, _9
	st.w	[r0 + (12)], r2	#, _7
	st.w	[r0 + (8)], r1	#, _5
	mov.w	r1, r13	# tmp47,
	add.w	r1, -64 #111	# tmp47,
	st.w	[r0 + (4)], r1	#, tmp47
	mov.w	r1, .LC31	# tmp48,
	st.w	[r0], r1	#, tmp48
	call	printf		#
.L406:
# basic.c:1851: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# next.381_10, next
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (4)], r1	#, next.381_10
	mov.w	r1, r13	# tmp50,
	add.w	r1, -64 #111	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	getDirEntry		#
# basic.c:1851: 		while ((next = getDirEntry(&fd, next)) != 0)
	st.w	[r13 + (-8)], r0	# next, _11
# basic.c:1851: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# tmp51, next
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L407		#
	j	.L402		#
.L405:
# basic.c:1858: 		to_print_len = 0;
	xor.w	r0, r0	# tmp53
	st.w	[to_print_len], r0	# to_print_len, tmp53
# basic.c:1859: 		browseUrl("/dir", "", server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp54,
	mov.w	r1, my_callback	# tmp55,
	st.w	[r0 + (16)], r1	#, tmp55
	xor.w	r1, r1	# tmp56
	st.w	[r0 + (12)], r1	#, tmp56
	mov.w	r1, server_ip	# tmp57,
	st.w	[r0 + (8)], r1	#, tmp57
	mov.w	r1, .LC32	# tmp58,
	st.w	[r0 + (4)], r1	#, tmp58
	mov.w	r1, .LC33	# tmp59,
	st.w	[r0], r1	#, tmp59
	call	browseUrl		#
# basic.c:1860: 		delay(100);
	mov.w	r1, sp	# tmp60,
	mov.w	r0, 100	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	delay		#
# basic.c:1861: 		for (i = 0; i < 1000; i++) {
	xor.w	r0, r0	# tmp62
	st.w	[r13 + (-4)], r0	# i, tmp62
# basic.c:1861: 		for (i = 0; i < 1000; i++) {
	j	.L408		#
.L410:
# basic.c:1864: 			if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.382_12, to_print_len
# basic.c:1864: 			if (to_print_len > 0) {
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# to_print_len.382_12, tmp63
	jses	.L409		#
# basic.c:1865: 				to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.383_13, to_print_len
# basic.c:1865: 				to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp65,
	add.w	r0, r1 #222	# tmp64, tmp65
	xor.w	r1, r1	# tmp66
	st.b	[r0], r1	# to_print_buff, tmp66
# basic.c:1866: 				printf("%s\n", to_print_buff);
	mov.w	r1, sp	# tmp67,
	mov.w	r0, to_print_buff	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	puts		#
# basic.c:1867: 				to_print_len = 0;
	xor.w	r0, r0	# tmp69
	st.w	[to_print_len], r0	# to_print_len, tmp69
# basic.c:1868: 				return;
	j	.L402		#
.L409:
# basic.c:1870: 			  delay(10);
	mov.w	r1, sp	# tmp70,
	mov.w	r0, 10	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	delay		#
# basic.c:1861: 		for (i = 0; i < 1000; i++) {
	ld.w	r0, [r13 + (-4)]	# tmp73, i
	add.w	r0, 1 #111	# tmp72,
	st.w	[r13 + (-4)], r0	# i, tmp72
.L408:
# basic.c:1861: 		for (i = 0; i < 1000; i++) {
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	mov.w	r0, 999	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jses	.L410		#
# basic.c:1872: 		printf("NETWORK TIMEOUT\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC34	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
.L402:
# basic.c:1874: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_dir, .-exec_dir
	.section	.rodata
	.p2align	2
.LC35:
	.string	"Invalid video mode: %d\n"
	.text
	.p2align	1
	.global	exec_mode
	.type	exec_mode, @function
exec_mode:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:1880: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1881: 	expression_error = 0;
	xor.w	r0, r0	# tmp29
	st.b	[expression_error], r0	# expression_error, tmp29
# basic.c:1882: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# value,
# basic.c:1883: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.384_1, expression_error
# basic.c:1883: 	if (expression_error)
	sex.b	r1, r0	# tmp30, expression_error.384_1
	xor.w	r0, r0	# tmp31
	cmp.w	r1, r0	# tmp30, tmp31
	jz	.L412		#
# basic.c:1885: 		qwhat();
	call	qwhat		#
# basic.c:1886: 		return;
	j	.L411		#
.L412:
# basic.c:1889: 	switch ((int)value)
	ld.w	r0, [r13 + (-4)]	# tmp32, value
	st.w	[sp], r0	#, tmp32
	call	__fixsfsi		#
# basic.c:1889: 	switch ((int)value)
	mov.w	r1, 2	# tmp33,
	cmp.w	r0, r1	# _2, tmp33
	jz	.L414		#
	mov.w	r1, 2	# tmp34,
	cmp.w	r0, r1	# _2, tmp34
	jgs	.L415		#
	xor.w	r1, r1	# tmp35
	cmp.w	r0, r1	# _2, tmp35
	jz	.L416		#
	mov.w	r1, 1	# tmp36,
	cmp.w	r0, r1	# _2, tmp36
	jz	.L417		#
	j	.L415		#
.L416:
# basic.c:1892: 			video_mode(0);
	mov.w	r1, sp	# tmp37,
	xor.w	r0, r0	# tmp38
	st.w	[r1], r0	#, tmp38
	call	video_mode		#
# basic.c:1894: 			break;
	j	.L411		#
.L417:
# basic.c:1896: 			video_mode(1);
	mov.w	r1, sp	# tmp39,
	mov.w	r0, 1	# tmp40,
	st.w	[r1], r0	#, tmp40
	call	video_mode		#
# basic.c:1898: 			break;
	j	.L411		#
.L414:
# basic.c:1900: 			video_mode(2);
	mov.w	r1, sp	# tmp41,
	mov.w	r0, 2	# tmp42,
	st.w	[r1], r0	#, tmp42
	call	video_mode		#
# basic.c:1902: 			break;
	j	.L411		#
.L415:
# basic.c:1904: 			video_mode(0);
	mov.w	r1, sp	# tmp43,
	xor.w	r0, r0	# tmp44
	st.w	[r1], r0	#, tmp44
	call	video_mode		#
# basic.c:1906: 			printf("Invalid video mode: %d\n", value);
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
	mov.w	r1, .LC35	# tmp49,
	st.w	[r0], r1	#, tmp49
	call	printf		#
.L411:
# basic.c:1908: }
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
# basic.c:1914: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1915: 	expression_error = 0;
	xor.w	r0, r0	# tmp40
	st.b	[expression_error], r0	# expression_error, tmp40
# basic.c:1916: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# x,
# basic.c:1917: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.385_1, expression_error
# basic.c:1917: 	if (expression_error)
	sex.b	r1, r0	# tmp41, expression_error.385_1
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L419		#
# basic.c:1919: 		qwhat();
	call	qwhat		#
# basic.c:1920: 		return;
	j	.L418		#
.L419:
# basic.c:1922: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1923: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.386_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.386_2
# basic.c:1923: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp43, _3
	mov.w	r0, 44	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L421		#
# basic.c:1925: 		qwhat();
	call	qwhat		#
# basic.c:1926: 		return;
	j	.L418		#
.L421:
# basic.c:1930: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.387_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1932: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1933: 	expression_error = 0;
	xor.w	r0, r0	# tmp45
	st.b	[expression_error], r0	# expression_error, tmp45
# basic.c:1934: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# y,
# basic.c:1935: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.388_6, expression_error
# basic.c:1935: 	if (expression_error)
	sex.b	r1, r0	# tmp46, expression_error.388_6
	xor.w	r0, r0	# tmp47
	cmp.w	r1, r0	# tmp46, tmp47
	jz	.L422		#
# basic.c:1937: 		qwhat();
	call	qwhat		#
# basic.c:1938: 		return;
	j	.L418		#
.L422:
# basic.c:1940: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1941: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.389_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.389_7
# basic.c:1941: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp48, _8
	mov.w	r0, 44	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L423		#
# basic.c:1943: 		qwhat();
	call	qwhat		#
# basic.c:1944: 		return;
	j	.L418		#
.L423:
# basic.c:1948: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.390_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1950: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1951: 	expression_error = 0;
	xor.w	r0, r0	# tmp50
	st.b	[expression_error], r0	# expression_error, tmp50
# basic.c:1952: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# c,
# basic.c:1953: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.391_11, expression_error
# basic.c:1953: 	if (expression_error)
	sex.b	r1, r0	# tmp51, expression_error.391_11
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jz	.L424		#
# basic.c:1955: 		qwhat();
	call	qwhat		#
# basic.c:1956: 		return;
	j	.L418		#
.L424:
# basic.c:1959: 	pixel((int)x, (int)y, (int)c);
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
.L418:
# basic.c:1960: }
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
# basic.c:1966: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1967: 	expression_error = 0;
	xor.w	r0, r0	# tmp52
	st.b	[expression_error], r0	# expression_error, tmp52
# basic.c:1968: 	x1 = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# x1,
# basic.c:1969: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.392_1, expression_error
# basic.c:1969: 	if (expression_error)
	sex.b	r1, r0	# tmp53, expression_error.392_1
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L426		#
# basic.c:1971: 		qwhat();
	call	qwhat		#
# basic.c:1972: 		return;
	j	.L425		#
.L426:
# basic.c:1974: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1975: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.393_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.393_2
# basic.c:1975: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp55, _3
	mov.w	r0, 44	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L428		#
# basic.c:1977: 		qwhat();
	call	qwhat		#
# basic.c:1978: 		return;
	j	.L425		#
.L428:
# basic.c:1982: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.394_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1984: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1985: 	expression_error = 0;
	xor.w	r0, r0	# tmp57
	st.b	[expression_error], r0	# expression_error, tmp57
# basic.c:1986: 	y1 = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# y1,
# basic.c:1987: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.395_6, expression_error
# basic.c:1987: 	if (expression_error)
	sex.b	r1, r0	# tmp58, expression_error.395_6
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L429		#
# basic.c:1989: 		qwhat();
	call	qwhat		#
# basic.c:1990: 		return;
	j	.L425		#
.L429:
# basic.c:1993: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1994: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.396_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.396_7
# basic.c:1994: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp60, _8
	mov.w	r0, 44	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L430		#
# basic.c:1996: 		qwhat();
	call	qwhat		#
# basic.c:1997: 		return;
	j	.L425		#
.L430:
# basic.c:2001: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.397_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2003: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2004: 	expression_error = 0;
	xor.w	r0, r0	# tmp62
	st.b	[expression_error], r0	# expression_error, tmp62
# basic.c:2005: 	x2 = expression();	
	call	expression		#
	st.w	[r13 + (-28)], r0	# x2,
# basic.c:2006: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.398_11, expression_error
# basic.c:2006: 	if (expression_error)
	sex.b	r1, r0	# tmp63, expression_error.398_11
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L431		#
# basic.c:2008: 		qwhat();
	call	qwhat		#
# basic.c:2009: 		return;
	j	.L425		#
.L431:
# basic.c:2011: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2012: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.399_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.399_12
# basic.c:2012: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp65, _13
	mov.w	r0, 44	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jz	.L432		#
# basic.c:2014: 		qwhat();
	call	qwhat		#
# basic.c:2015: 		return;
	j	.L425		#
.L432:
# basic.c:2019: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.400_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2021: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2022: 	expression_error = 0;
	xor.w	r0, r0	# tmp67
	st.b	[expression_error], r0	# expression_error, tmp67
# basic.c:2023: 	y2 = expression();	
	call	expression		#
	st.w	[r13 + (-32)], r0	# y2,
# basic.c:2024: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.401_16, expression_error
# basic.c:2024: 	if (expression_error)
	sex.b	r1, r0	# tmp68, expression_error.401_16
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L433		#
# basic.c:2026: 		qwhat();
	call	qwhat		#
# basic.c:2027: 		return;
	j	.L425		#
.L433:
# basic.c:2029: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2030: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.402_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.402_17
# basic.c:2030: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp70, _18
	mov.w	r0, 44	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L434		#
# basic.c:2032: 		qwhat();
	call	qwhat		#
# basic.c:2033: 		return;
	j	.L425		#
.L434:
# basic.c:2037: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.403_19, txtpos
	add.w	r0, 1 #111	# _20,
	st.w	[txtpos], r0	# txtpos, _20
# basic.c:2040: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2041: 	expression_error = 0;
	xor.w	r0, r0	# tmp72
	st.b	[expression_error], r0	# expression_error, tmp72
# basic.c:2042: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-36)], r0	# c,
# basic.c:2043: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.404_21, expression_error
# basic.c:2043: 	if (expression_error)
	sex.b	r1, r0	# tmp73, expression_error.404_21
	xor.w	r0, r0	# tmp74
	cmp.w	r1, r0	# tmp73, tmp74
	jz	.L435		#
# basic.c:2045: 		qwhat();
	call	qwhat		#
# basic.c:2046: 		return;
	j	.L425		#
.L435:
# basic.c:2049: 	line((int)x1, (int)y1, (int)x2, (int)y2, (int)c);
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
.L425:
# basic.c:2050: }
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
# basic.c:2057: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2058: 	expression_error = 0;
	xor.w	r0, r0	# tmp46
	st.b	[expression_error], r0	# expression_error, tmp46
# basic.c:2059: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# x,
# basic.c:2060: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.405_1, expression_error
# basic.c:2060: 	if (expression_error)
	sex.b	r1, r0	# tmp47, expression_error.405_1
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# tmp47, tmp48
	jz	.L437		#
# basic.c:2062: 		qwhat();
	call	qwhat		#
# basic.c:2063: 		return;
	j	.L436		#
.L437:
# basic.c:2065: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2066: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.406_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.406_2
# basic.c:2066: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp49, _3
	mov.w	r0, 44	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jz	.L439		#
# basic.c:2068: 		qwhat();
	call	qwhat		#
# basic.c:2069: 		return;
	j	.L436		#
.L439:
# basic.c:2073: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.407_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2075: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2076: 	expression_error = 0;
	xor.w	r0, r0	# tmp51
	st.b	[expression_error], r0	# expression_error, tmp51
# basic.c:2077: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# y,
# basic.c:2078: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.408_6, expression_error
# basic.c:2078: 	if (expression_error)
	sex.b	r1, r0	# tmp52, expression_error.408_6
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L440		#
# basic.c:2080: 		qwhat();
	call	qwhat		#
# basic.c:2081: 		return;
	j	.L436		#
.L440:
# basic.c:2083: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2084: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.409_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.409_7
# basic.c:2084: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp54, _8
	mov.w	r0, 44	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L441		#
# basic.c:2086: 		qwhat();
	call	qwhat		#
# basic.c:2087: 		return;
	j	.L436		#
.L441:
# basic.c:2091: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.410_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2093: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2094: 	expression_error = 0;
	xor.w	r0, r0	# tmp56
	st.b	[expression_error], r0	# expression_error, tmp56
# basic.c:2095: 	r = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# r,
# basic.c:2096: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.411_11, expression_error
# basic.c:2096: 	if (expression_error)
	sex.b	r1, r0	# tmp57, expression_error.411_11
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L442		#
# basic.c:2098: 		qwhat();
	call	qwhat		#
# basic.c:2099: 		return;
	j	.L436		#
.L442:
# basic.c:2101: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2102: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.412_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.412_12
# basic.c:2102: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp59, _13
	mov.w	r0, 44	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L443		#
# basic.c:2104: 		qwhat();
	call	qwhat		#
# basic.c:2105: 		return;
	j	.L436		#
.L443:
# basic.c:2109: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.413_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2111: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2112: 	expression_error = 0;
	xor.w	r0, r0	# tmp61
	st.b	[expression_error], r0	# expression_error, tmp61
# basic.c:2113: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-28)], r0	# c,
# basic.c:2114: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.414_16, expression_error
# basic.c:2114: 	if (expression_error)
	sex.b	r1, r0	# tmp62, expression_error.414_16
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jz	.L444		#
# basic.c:2116: 		qwhat();
	call	qwhat		#
# basic.c:2117: 		return;
	j	.L436		#
.L444:
# basic.c:2120: 	circle((int)x, (int)y, (int)r, (int)c);
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
.L436:
# basic.c:2121: }
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
# basic.c:2129: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2130: 	expression_error = 0;
	xor.w	r0, r0	# tmp63
	st.b	[expression_error], r0	# expression_error, tmp63
# basic.c:2131: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# x,
# basic.c:2132: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.415_1, expression_error
# basic.c:2132: 	if (expression_error)
	sex.b	r1, r0	# tmp64, expression_error.415_1
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L446		#
# basic.c:2134: 		qwhat();
	call	qwhat		#
# basic.c:2135: 		return;
	j	.L445		#
.L446:
# basic.c:2137: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2138: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.416_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.416_2
# basic.c:2138: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp66, _3
	mov.w	r0, 44	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L448		#
# basic.c:2140: 		qwhat();
	call	qwhat		#
# basic.c:2141: 		return;
	j	.L445		#
.L448:
# basic.c:2145: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.417_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2147: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2148: 	expression_error = 0;
	xor.w	r0, r0	# tmp68
	st.b	[expression_error], r0	# expression_error, tmp68
# basic.c:2149: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# y,
# basic.c:2150: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.418_6, expression_error
# basic.c:2150: 	if (expression_error)
	sex.b	r1, r0	# tmp69, expression_error.418_6
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jz	.L449		#
# basic.c:2152: 		qwhat();
	call	qwhat		#
# basic.c:2153: 		return;
	j	.L445		#
.L449:
# basic.c:2155: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2156: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.419_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.419_7
# basic.c:2156: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp71, _8
	mov.w	r0, 44	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jz	.L450		#
# basic.c:2158: 		qwhat();
	call	qwhat		#
# basic.c:2159: 		return;
	j	.L445		#
.L450:
# basic.c:2163: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.420_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2165: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2166: 	expression_error = 0;
	xor.w	r0, r0	# tmp73
	st.b	[expression_error], r0	# expression_error, tmp73
# basic.c:2167: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# c,
# basic.c:2168: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.421_11, expression_error
# basic.c:2168: 	if (expression_error)
	sex.b	r1, r0	# tmp74, expression_error.421_11
	xor.w	r0, r0	# tmp75
	cmp.w	r1, r0	# tmp74, tmp75
	jz	.L451		#
# basic.c:2170: 		qwhat();
	call	qwhat		#
# basic.c:2171: 		return;
	j	.L445		#
.L451:
# basic.c:2173: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2174: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.422_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.422_12
# basic.c:2174: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp76, _13
	mov.w	r0, 44	# tmp77,
	cmp.w	r1, r0	# tmp76, tmp77
	jz	.L452		#
# basic.c:2176: 		qwhat();
	call	qwhat		#
# basic.c:2177: 		return;
	j	.L445		#
.L452:
# basic.c:2181: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.423_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2183: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2184: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.424_16, txtpos
	ld.b	r0, [r0]	# _17, *txtpos.424_16
# basic.c:2184: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp78, _17
	mov.w	r0, 34	# tmp79,
	cmp.w	r1, r0	# tmp78, tmp79
	jz	.L453		#
# basic.c:2184: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.425_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.425_18
# basic.c:2184: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp80, _19
	mov.w	r0, 39	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jz	.L453		#
# basic.c:2186: 		qwhat();
	call	qwhat		#
# basic.c:2187: 		return;
	j	.L445		#
.L453:
# basic.c:2189: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.426_20, txtpos
	add.w	r0, 1 #111	# _21,
	st.w	[txtpos], r0	# txtpos, _21
# basic.c:2190: 	i = 0;
	xor.w	r0, r0	# tmp82
	st.w	[r13 + (-12)], r0	# i, tmp82
# basic.c:2191: 	while (*txtpos != NL && *txtpos != 0)
	j	.L454		#
.L458:
# basic.c:2193: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.427_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.427_22
# basic.c:2193: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp83, _23
	mov.w	r0, 34	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L455		#
# basic.c:2193: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.428_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.428_24
# basic.c:2193: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp85, _25
	mov.w	r0, 39	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jnz	.L456		#
.L455:
# basic.c:2195: 			s[i] = 0;
	mov.w	r0, r13	# tmp87,
	add.w	r0, -124 #111	# tmp87,
	ld.w	r1, [r13 + (-12)]	# tmp89, i
	add.w	r0, r1 #222	# tmp88, tmp89
	xor.w	r1, r1	# tmp90
	st.b	[r0], r1	# s, tmp90
# basic.c:2196: 			break;
	j	.L457		#
.L456:
# basic.c:2198: 		s[i] = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.429_26, txtpos
	ld.b	r0, [r0]	# _27, *txtpos.429_26
	mov.w	r1, r0	# _28, _27
# basic.c:2198: 		s[i] = *txtpos;
	mov.w	r0, r13	# tmp91,
	add.w	r0, -124 #111	# tmp91,
	ld.w	r2, [r13 + (-12)]	# tmp93, i
	add.w	r0, r2 #222	# tmp92, tmp93
	st.b	[r0], r1	# s, _28
# basic.c:2199: 		i++;
	ld.w	r0, [r13 + (-12)]	# tmp95, i
	add.w	r0, 1 #111	# tmp94,
	st.w	[r13 + (-12)], r0	# i, tmp94
# basic.c:2200: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.430_29, txtpos
	add.w	r0, 1 #111	# _30,
	st.w	[txtpos], r0	# txtpos, _30
.L454:
# basic.c:2191: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.431_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.431_31
# basic.c:2191: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp96, _32
	mov.w	r0, 10	# tmp97,
	cmp.w	r1, r0	# tmp96, tmp97
	jz	.L457		#
# basic.c:2191: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.432_33, txtpos
	ld.b	r0, [r0]	# _34, *txtpos.432_33
# basic.c:2191: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp98, _34
	xor.w	r0, r0	# tmp99
	cmp.w	r1, r0	# tmp98, tmp99
	jnz	.L458		#
.L457:
# basic.c:2202: 	draw((int)x, (int)y, (int)c, s);
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
.L445:
# basic.c:2203: }
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
.LC36:
	.string	"END"
	.p2align	2
.LC37:
	.string	"MEM"
	.p2align	2
.LC38:
	.string	"LET I = 5"
	.p2align	2
.LC39:
	.string	"I = 5"
	.p2align	2
.LC40:
	.string	"INPUT A"
	.p2align	2
.LC41:
	.string	"PRINT A"
	.p2align	2
.LC42:
	.string	"? A"
	.p2align	2
.LC43:
	.string	"FOR I = 1 TO 10 STEP 2"
	.p2align	2
.LC44:
	.string	"NEXT I"
	.p2align	2
.LC45:
	.string	"IF I = 5 GOTO 100"
	.p2align	2
.LC46:
	.string	"GOTO 100"
	.p2align	2
.LC47:
	.string	"GOSUB 100"
	.p2align	2
.LC48:
	.string	"RETURN"
	.p2align	2
.LC49:
	.string	"LOAD P1.BAS"
	.p2align	2
.LC50:
	.string	"SAVE P2.BAS"
	.p2align	2
.LC51:
	.string	"MODE 0 (MODE 1, MODE 2)"
	.p2align	2
.LC52:
	.string	"PLOT 100, 100, color"
	.p2align	2
.LC53:
	.string	"LINE 100, 100, 200, 200, color"
	.p2align	2
.LC54:
	.string	"CIRCLE 100, 100, 50, color"
	.p2align	2
.LC55:
	.string	"DRAW 100, 100, color, 'TEXT'"
	.p2align	2
.LC56:
	.string	"A = KEY()"
	.p2align	2
.LC57:
	.string	"A = ISKEY()"
	.p2align	2
.LC58:
	.string	"DELAY 1000"
	.p2align	2
.LC59:
	.string	"CURSOR 10, 10"
	.p2align	2
.LC60:
	.string	"EXEC TEST.BIN"
	.p2align	2
.LC61:
	.string	"SYS 0"
	.p2align	2
.LC62:
	.string	"DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)"
	.p2align	2
.LC63:
	.string	"TIME"
	.p2align	2
.LC64:
	.string	"ETH 1 or ETH 0"
	.text
	.p2align	1
	.global	exec_help
	.type	exec_help, @function
exec_help:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2207: 	printf("END\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC36	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:2208: 	printf("MEM\n");
	mov.w	r1, sp	# tmp28,
	mov.w	r0, .LC37	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	puts		#
# basic.c:2209: 	printf("LET I = 5\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC38	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
# basic.c:2210: 	printf("I = 5\n");
	mov.w	r1, sp	# tmp32,
	mov.w	r0, .LC39	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	puts		#
# basic.c:2211: 	printf("INPUT A\n");
	mov.w	r1, sp	# tmp34,
	mov.w	r0, .LC40	# tmp35,
	st.w	[r1], r0	#, tmp35
	call	puts		#
# basic.c:2212: 	printf("PRINT A\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC41	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:2213: 	printf("? A\n");
	mov.w	r1, sp	# tmp38,
	mov.w	r0, .LC42	# tmp39,
	st.w	[r1], r0	#, tmp39
	call	puts		#
# basic.c:2214: 	printf("FOR I = 1 TO 10 STEP 2\n");
	mov.w	r1, sp	# tmp40,
	mov.w	r0, .LC43	# tmp41,
	st.w	[r1], r0	#, tmp41
	call	puts		#
# basic.c:2215: 	printf("NEXT I\n");
	mov.w	r1, sp	# tmp42,
	mov.w	r0, .LC44	# tmp43,
	st.w	[r1], r0	#, tmp43
	call	puts		#
# basic.c:2216: 	printf("IF I = 5 GOTO 100\n");
	mov.w	r1, sp	# tmp44,
	mov.w	r0, .LC45	# tmp45,
	st.w	[r1], r0	#, tmp45
	call	puts		#
# basic.c:2217: 	printf("GOTO 100\n");
	mov.w	r1, sp	# tmp46,
	mov.w	r0, .LC46	# tmp47,
	st.w	[r1], r0	#, tmp47
	call	puts		#
# basic.c:2218: 	printf("GOSUB 100\n");
	mov.w	r1, sp	# tmp48,
	mov.w	r0, .LC47	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	puts		#
# basic.c:2219: 	printf("RETURN\n");
	mov.w	r1, sp	# tmp50,
	mov.w	r0, .LC48	# tmp51,
	st.w	[r1], r0	#, tmp51
	call	puts		#
# basic.c:2220: 	printf("LOAD P1.BAS\n");
	mov.w	r1, sp	# tmp52,
	mov.w	r0, .LC49	# tmp53,
	st.w	[r1], r0	#, tmp53
	call	puts		#
# basic.c:2221: 	printf("SAVE P2.BAS\n");
	mov.w	r1, sp	# tmp54,
	mov.w	r0, .LC50	# tmp55,
	st.w	[r1], r0	#, tmp55
	call	puts		#
# basic.c:2222: 	printf("MODE 0 (MODE 1, MODE 2)\n");
	mov.w	r1, sp	# tmp56,
	mov.w	r0, .LC51	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	puts		#
# basic.c:2223: 	printf("PLOT 100, 100, color\n");
	mov.w	r1, sp	# tmp58,
	mov.w	r0, .LC52	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	puts		#
# basic.c:2224: 	printf("LINE 100, 100, 200, 200, color\n");
	mov.w	r1, sp	# tmp60,
	mov.w	r0, .LC53	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	puts		#
# basic.c:2225: 	printf("CIRCLE 100, 100, 50, color\n");
	mov.w	r1, sp	# tmp62,
	mov.w	r0, .LC54	# tmp63,
	st.w	[r1], r0	#, tmp63
	call	puts		#
# basic.c:2226: 	printf("DRAW 100, 100, color, 'TEXT'\n");
	mov.w	r1, sp	# tmp64,
	mov.w	r0, .LC55	# tmp65,
	st.w	[r1], r0	#, tmp65
	call	puts		#
# basic.c:2227: 	printf("A = KEY()\n");
	mov.w	r1, sp	# tmp66,
	mov.w	r0, .LC56	# tmp67,
	st.w	[r1], r0	#, tmp67
	call	puts		#
# basic.c:2228: 	printf("A = ISKEY()\n");
	mov.w	r1, sp	# tmp68,
	mov.w	r0, .LC57	# tmp69,
	st.w	[r1], r0	#, tmp69
	call	puts		#
# basic.c:2229: 	printf("DELAY 1000\n");
	mov.w	r1, sp	# tmp70,
	mov.w	r0, .LC58	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	puts		#
# basic.c:2230: 	printf("CURSOR 10, 10\n");
	mov.w	r1, sp	# tmp72,
	mov.w	r0, .LC59	# tmp73,
	st.w	[r1], r0	#, tmp73
	call	puts		#
# basic.c:2231: 	printf("EXEC TEST.BIN\n");
	mov.w	r1, sp	# tmp74,
	mov.w	r0, .LC60	# tmp75,
	st.w	[r1], r0	#, tmp75
	call	puts		#
# basic.c:2232: 	printf("SYS 0\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC61	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
# basic.c:2233: 	printf("DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)\n");
	mov.w	r1, sp	# tmp78,
	mov.w	r0, .LC62	# tmp79,
	st.w	[r1], r0	#, tmp79
	call	puts		#
# basic.c:2234: 	printf("TIME\n");
	mov.w	r1, sp	# tmp80,
	mov.w	r0, .LC63	# tmp81,
	st.w	[r1], r0	#, tmp81
	call	puts		#
# basic.c:2235: 	printf("ETH 1 or ETH 0\n");
	mov.w	r1, sp	# tmp82,
	mov.w	r0, .LC64	# tmp83,
	st.w	[r1], r0	#, tmp83
	call	puts		#
# basic.c:2236: }
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
# basic.c:2242: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2243: 	expression_error = 0;
	xor.w	r0, r0	# tmp28
	st.b	[expression_error], r0	# expression_error, tmp28
# basic.c:2244: 	d = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# d,
# basic.c:2245: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.433_1, expression_error
# basic.c:2245: 	if (expression_error)
	sex.b	r1, r0	# tmp29, expression_error.433_1
	xor.w	r0, r0	# tmp30
	cmp.w	r1, r0	# tmp29, tmp30
	jz	.L462		#
# basic.c:2247: 		qwhat();
	call	qwhat		#
# basic.c:2248: 		return;
	j	.L461		#
.L462:
# basic.c:2250: 	if (d <= 0)
	xor.w	r0, r0	# tmp31
	st.w	[sp + (4)], r0	#, tmp31
	ld.w	r0, [r13 + (-4)]	# tmp32, d
	st.w	[sp], r0	#, tmp32
	call	__lesf2		#
	mov.w	r1, r0	# tmp33,
	xor.w	r0, r0	# tmp34
	cmp.w	r1, r0	# tmp33, tmp34
	jses	.L466		#
# basic.c:2252: 	delay((int)d);
	ld.w	r0, [r13 + (-4)]	# tmp35, d
	st.w	[sp], r0	#, tmp35
	call	__fixsfsi		#
	mov.w	r1, r0	# _2,
	mov.w	r0, sp	# tmp36,
	st.w	[r0], r1	#, _2
	call	delay		#
	j	.L461		#
.L466:
# basic.c:2251: 		return;
	nop	
.L461:
# basic.c:2253: }
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
# basic.c:2259: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2260: 	expression_error = 0;
	xor.w	r0, r0	# tmp34
	st.b	[expression_error], r0	# expression_error, tmp34
# basic.c:2261: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# x,
# basic.c:2262: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.434_1, expression_error
# basic.c:2262: 	if (expression_error)
	sex.b	r1, r0	# tmp35, expression_error.434_1
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jz	.L468		#
# basic.c:2264: 		qwhat();
	call	qwhat		#
# basic.c:2265: 		return;
	j	.L467		#
.L468:
# basic.c:2267: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2268: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.435_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.435_2
# basic.c:2268: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp37, _3
	mov.w	r0, 44	# tmp38,
	cmp.w	r1, r0	# tmp37, tmp38
	jz	.L470		#
# basic.c:2270: 		qwhat();
	call	qwhat		#
# basic.c:2271: 		return;
	j	.L467		#
.L470:
# basic.c:2275: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.436_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2277: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2278: 	expression_error = 0;
	xor.w	r0, r0	# tmp39
	st.b	[expression_error], r0	# expression_error, tmp39
# basic.c:2279: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# y,
# basic.c:2280: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.437_6, expression_error
# basic.c:2280: 	if (expression_error)
	sex.b	r1, r0	# tmp40, expression_error.437_6
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L471		#
# basic.c:2282: 		qwhat();
	call	qwhat		#
# basic.c:2283: 		return;
	j	.L467		#
.L471:
# basic.c:2286: 	xy((int)x, (int)y);
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
.L467:
# basic.c:2287: }
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
# basic.c:2293: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2294: 	expression_error = 0;
	xor.w	r0, r0	# tmp38
	st.b	[expression_error], r0	# expression_error, tmp38
# basic.c:2295: 	addr = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# addr,
# basic.c:2296: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.438_1, expression_error
# basic.c:2296: 	if (expression_error)
	sex.b	r1, r0	# tmp39, expression_error.438_1
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L473		#
# basic.c:2298: 		qwhat();
	call	qwhat		#
# basic.c:2299: 		return;
	j	.L472		#
.L473:
# basic.c:2301: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2302: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.439_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.439_2
# basic.c:2302: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp41, _3
	mov.w	r0, 44	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L475		#
# basic.c:2304: 		qwhat();
	call	qwhat		#
# basic.c:2305: 		return;
	j	.L472		#
.L475:
# basic.c:2309: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.440_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2311: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2312: 	expression_error = 0;
	xor.w	r0, r0	# tmp43
	st.b	[expression_error], r0	# expression_error, tmp43
# basic.c:2313: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# value,
# basic.c:2314: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.441_6, expression_error
# basic.c:2314: 	if (expression_error)
	sex.b	r1, r0	# tmp44, expression_error.441_6
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L476		#
# basic.c:2316: 		qwhat();
	call	qwhat		#
# basic.c:2317: 		return;
	j	.L472		#
.L476:
# basic.c:2320: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r0, [r13 + (-16)]	# tmp46, value
	st.w	[sp], r0	#, tmp46
	call	__fixsfsi		#
	mov.w	r7, r0	# _7,
# basic.c:2320: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r6, [buffer]	# buffer.442_8, buffer
# basic.c:2320: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r0, [r13 + (-12)]	# tmp47, addr
	st.w	[sp], r0	#, tmp47
	call	__fixsfsi		#
	mov.w	r1, r0	# _10, _9
# basic.c:2320: 	buffer[(int)addr] = (int)value & 0XFF;
	mov.w	r0, r6	# _11, buffer.442_8
	add.w	r0, r1 #222	# _11, _10
# basic.c:2320: 	buffer[(int)addr] = (int)value & 0XFF;
	mov.w	r1, r7	# _12, _7
	st.b	[r0], r1	# *_11, _12
.L472:
# basic.c:2321: }
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
.LC65:
	.string	"SD card init failed!"
	.p2align	2
.LC66:
	.string	"SD card volume failed!"
	.text
	.p2align	1
	.global	init_sd
	.type	init_sd, @function
init_sd:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2325: 	if(!sdcard_init())
	call	sdcard_init		#
# basic.c:2325: 	if(!sdcard_init())
	zex.b	r1, r0	# tmp28, _1
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jnz	.L478		#
# basic.c:2327: 		printf("SD card init failed!\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC65	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
# basic.c:2328: 		return;
	j	.L477		#
.L478:
# basic.c:2330: 	if (!volume_init(1))
	mov.w	r1, sp	# tmp32,
	mov.w	r0, 1	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	volume_init		#
# basic.c:2330: 	if (!volume_init(1))
	zex.b	r1, r0	# tmp34, _2
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jnz	.L477		#
# basic.c:2332: 		printf("SD card volume failed!\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC66	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
.L477:
# basic.c:2334: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_sd, .-init_sd
	.section	.rodata
	.p2align	2
.LC67:
	.string	"Loading program: [%s]\n"
	.p2align	2
.LC68:
	.string	"File open failed for file: [%s]\n"
	.p2align	2
.LC69:
	.string	"Error loading program %s\n"
	.text
	.p2align	1
	.global	exec_exec
	.type	exec_exec, @function
exec_exec:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 160 #111	#,
# basic.c:2341: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2342: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.443_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.443_1
# basic.c:2342: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp75, _2
	mov.w	r0, 64	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jse	.L481		#
# basic.c:2342: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.444_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.444_3
# basic.c:2342: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp77, _4
	mov.w	r0, 90	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jse	.L482		#
.L481:
# basic.c:2344: 		qwhat();
	call	qwhat		#
# basic.c:2345: 		return;
	j	.L480		#
.L482:
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	j	.L484		#
.L486:
# basic.c:2352: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.445_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.446_6, i
	add.w	r0, r1 #222	# _7, i.446_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:2352: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp80,
	add.w	r0, -60 #111	# tmp80,
	ld.w	r2, [r13 + (-4)]	# tmp82, i
	add.w	r0, r2 #222	# tmp81, tmp82
	st.b	[r0], r1	# s, _9
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [r13 + (-4)]	# tmp84, i
	add.w	r0, 1 #111	# tmp83,
	st.w	[r13 + (-4)], r0	# i, tmp83
.L484:
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.447_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.448_11, i
	add.w	r0, r1 #222	# _12, i.448_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp85, _13
	mov.w	r0, 10	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jz	.L485		#
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.449_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.450_15, i
	add.w	r0, r1 #222	# _16, i.450_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp87, _17
	mov.w	r0, 13	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L485		#
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.451_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.452_19, i
	add.w	r0, r1 #222	# _20, i.452_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp89, _21
	mov.w	r0, 32	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jz	.L485		#
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.453_22, txtpos
	ld.w	r1, [r13 + (-4)]	# i.454_23, i
	add.w	r0, r1 #222	# _24, i.454_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp91, _25
	mov.w	r0, 9	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L485		#
# basic.c:2349: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r1, [r13 + (-4)]	# tmp93, i
	mov.w	r0, 31	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jses	.L486		#
.L485:
# basic.c:2354: 	s[i] = 0;
	mov.w	r0, r13	# tmp95,
	add.w	r0, -60 #111	# tmp95,
	ld.w	r1, [r13 + (-4)]	# tmp97, i
	add.w	r0, r1 #222	# tmp96, tmp97
	xor.w	r1, r1	# tmp98
	st.b	[r0], r1	# s, tmp98
# basic.c:2356: 	i = 0;
	xor.w	r0, r0	# tmp99
	st.w	[r13 + (-4)], r0	# i, tmp99
# basic.c:2357: 	printf("Loading program: [%s]\n", s);
	mov.w	r0, sp	# tmp100,
	mov.w	r1, r13	# tmp101,
	add.w	r1, -60 #111	# tmp101,
	st.w	[r0 + (4)], r1	#, tmp101
	mov.w	r1, .LC67	# tmp102,
	st.w	[r0], r1	#, tmp102
	call	printf		#
# basic.c:2358: 	if (drive == 0)
	ld.b	r0, [drive]	# drive.455_26, drive
# basic.c:2358: 	if (drive == 0)
	sex.b	r1, r0	# tmp103, drive.455_26
	xor.w	r0, r0	# tmp104
	cmp.w	r1, r0	# tmp103, tmp104
	jnz	.L487		#
# basic.c:2362: load_again:		
	nop	
.L488:
# basic.c:2363: 		if(file_open(s, &fd, O_READ))
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
# basic.c:2363: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp109, _27
	xor.w	r0, r0	# tmp110
	cmp.w	r1, r0	# tmp109, tmp110
	jz	.L489		#
# basic.c:2365: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-104)]	# _28, fd.dir_entry.filesize
# basic.c:2365: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-20)], r0	# len, _28
# basic.c:2366: 			int total = 0;
	xor.w	r0, r0	# tmp111
	st.w	[r13 + (-8)], r0	# total, tmp111
# basic.c:2368: 			while(total < len)
	j	.L490		#
.L493:
# basic.c:2370: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.456_29, buffer
	ld.w	r0, [r13 + (-8)]	# total.457_30, total
	add.w	r1, r0 #222	# _31, total.457_30
	mov.w	r0, sp	# tmp112,
	mov.w	r2, 512	# tmp113,
	st.w	[r0 + (8)], r2	#, tmp113
	st.w	[r0 + (4)], r1	#, _31
	mov.w	r1, r13	# tmp114,
	add.w	r1, -136 #111	# tmp114,
	st.w	[r0], r1	#, tmp114
	call	file_read		#
# basic.c:2370: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp115, _32
	st.w	[r13 + (-24)], r0	# current, tmp115
# basic.c:2371: 				if (current > 0) {
	ld.w	r1, [r13 + (-24)]	# tmp116, current
	xor.w	r0, r0	# tmp117
	cmp.w	r1, r0	# tmp116, tmp117
	jses	.L491		#
# basic.c:2372: 					total += current;
	ld.w	r0, [r13 + (-8)]	# tmp119, total
	ld.w	r1, [r13 + (-24)]	# tmp120, current
	add.w	r0, r1 #222	# tmp118, tmp120
	st.w	[r13 + (-8)], r0	# total, tmp118
# basic.c:2373: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-8)]	# total.458_33, total
# basic.c:2373: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-104)]	# _34, fd.dir_entry.filesize
# basic.c:2373: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _35, _34
# basic.c:2373: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp121,
	mul.w	r1, r0	# _36, tmp121
# basic.c:2373: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp122,
	div.w	r1, r0	# _37, tmp122
mov.w	r1, r14	# _37
# basic.c:2373: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp123
	cmp.w	r1, r0	# _37, tmp123
	jnz	.L490		#
# basic.c:2374: 						printf("#");
	mov.w	r1, sp	# tmp124,
	mov.w	r0, 35	# tmp125,
	st.w	[r1], r0	#, tmp125
	call	putchar		#
	j	.L490		#
.L491:
# basic.c:2377: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp126,
	mov.w	r0, .LC16	# tmp127,
	st.w	[r1], r0	#, tmp127
	call	puts		#
	j	.L480		#
.L490:
# basic.c:2368: 			while(total < len)
	ld.w	r1, [r13 + (-8)]	# tmp128, total
	ld.w	r0, [r13 + (-20)]	# tmp129, len
	cmp.w	r1, r0	# tmp128, tmp129
	jss	.L493		#
# basic.c:2382: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.459_38, buffer
	ld.w	r1, [r13 + (-20)]	# len.460_39, len
	add.w	r0, r1 #222	# _40, len.460_39
# basic.c:2382: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp130
	st.b	[r0], r1	# *_40, tmp130
# basic.c:2383: 			i = len;
	ld.w	r0, [r13 + (-20)]	# tmp131, len
	st.w	[r13 + (-4)], r0	# i, tmp131
# basic.c:2387: 			strcpy(fileName, s);
	mov.w	r0, sp	# tmp132,
	mov.w	r1, r13	# tmp133,
	add.w	r1, -60 #111	# tmp133,
	st.w	[r0 + (4)], r1	#, tmp133
	mov.w	r1, r13	# tmp134,
	add.w	r1, -80 #111	# tmp134,
	st.w	[r0], r1	#, tmp134
	call	strcpy		#
# basic.c:2388: 			int sum = 0;
	xor.w	r0, r0	# tmp135
	st.w	[r13 + (-12)], r0	# sum, tmp135
# basic.c:2389: 			for (int j = 0; j < i; j++) {
	xor.w	r0, r0	# tmp136
	st.w	[r13 + (-16)], r0	# j, tmp136
# basic.c:2389: 			for (int j = 0; j < i; j++) {
	j	.L494		#
.L495:
# basic.c:2390: 				sum += buffer[j];
	ld.w	r0, [buffer]	# buffer.461_41, buffer
	ld.w	r1, [r13 + (-16)]	# j.462_42, j
	add.w	r0, r1 #222	# _43, j.462_42
	ld.b	r0, [r0]	# _44, *_43
	sex.b	r1, r0	# _45, _44
# basic.c:2390: 				sum += buffer[j];
	ld.w	r0, [r13 + (-12)]	# tmp138, sum
	add.w	r0, r1 #222	# tmp137, _45
	st.w	[r13 + (-12)], r0	# sum, tmp137
# basic.c:2389: 			for (int j = 0; j < i; j++) {
	ld.w	r0, [r13 + (-16)]	# tmp140, j
	add.w	r0, 1 #111	# tmp139,
	st.w	[r13 + (-16)], r0	# j, tmp139
.L494:
# basic.c:2389: 			for (int j = 0; j < i; j++) {
	ld.w	r1, [r13 + (-16)]	# tmp141, j
	ld.w	r0, [r13 + (-4)]	# tmp142, i
	cmp.w	r1, r0	# tmp141, tmp142
	jss	.L495		#
# basic.c:2392: 			printf("\nSum: %d\n", sum);
	mov.w	r0, sp	# tmp143,
	ld.w	r1, [r13 + (-12)]	# tmp144, sum
	st.w	[r0 + (4)], r1	#, tmp144
	mov.w	r1, .LC17	# tmp145,
	st.w	[r0], r1	#, tmp145
	call	printf		#
	j	.L496		#
.L489:
# basic.c:2396: 			printf("File open failed for file: [%s]\n", s);
	mov.w	r0, sp	# tmp146,
	mov.w	r1, r13	# tmp147,
	add.w	r1, -60 #111	# tmp147,
	st.w	[r0 + (4)], r1	#, tmp147
	mov.w	r1, .LC68	# tmp148,
	st.w	[r0], r1	#, tmp148
	call	printf		#
# basic.c:2397: 			return;
	j	.L480		#
.L487:
# basic.c:2400: 	else if (drive == 2)
	ld.b	r0, [drive]	# drive.463_46, drive
# basic.c:2400: 	else if (drive == 2)
	sex.b	r1, r0	# tmp149, drive.463_46
	mov.w	r0, 2	# tmp150,
	cmp.w	r1, r0	# tmp149, tmp150
	jnz	.L497		#
# basic.c:2403: 		asm ("irq\t0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 2403 "basic.c" 1
	irq	0

# basic.c:2404: 		delay(100);
	mov.w	r1, sp	# tmp151,
	mov.w	r0, 100	# tmp152,
	st.w	[r1], r0	#, tmp152
	call	delay		#
# basic.c:2405: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.464_47, buffer
	mov.w	r0, sp	# tmp153,
	mov.w	r2, r13	# tmp154,
	add.w	r2, -60 #111	# tmp154,
	st.w	[r0 + (4)], r2	#, tmp154
	st.w	[r0], r1	#, buffer.464_47
	call	uart_read_file		#
	st.w	[r13 + (-4)], r0	# i,
# basic.c:2406: 		asm ("irq\t1\n"); // IRQ 0000, xxx0 <- turn on timer irq
# 2406 "basic.c" 1
	irq	1

	j	.L496		#
.L497:
# basic.c:2409: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.465_48, buffer
	mov.w	r0, sp	# tmp155,
	mov.w	r2, r13	# tmp156,
	add.w	r2, -60 #111	# tmp156,
	st.w	[r0 + (4)], r2	#, tmp156
	st.w	[r0], r1	#, buffer.465_48
	call	eth_read_file		#
	st.w	[r13 + (-4)], r0	# i,
.L496:
# basic.c:2411: 	if (i > 0) 
	ld.w	r1, [r13 + (-4)]	# tmp157, i
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jses	.L498		#
# basic.c:2414: 		int old_color = color;
	ld.w	r0, [color]	# tmp159, color
	st.w	[r13 + (-28)], r0	# old_color, tmp159
# basic.c:2415: 		asm("mov.w r0, 197632\ncallr r0\n"); //asm("call 197632\n");
# 2415 "basic.c" 1
	mov.w r0, 197632
callr r0

# basic.c:2416: 		init_stdio();
	call	init_stdio		#
# basic.c:2417: 		video_mode(0);
	mov.w	r1, sp	# tmp160,
	xor.w	r0, r0	# tmp161
	st.w	[r1], r0	#, tmp161
	call	video_mode		#
# basic.c:2418: 		color = old_color;
	ld.w	r0, [r13 + (-28)]	# tmp162, old_color
	st.w	[color], r0	# color, tmp162
# basic.c:2421: 		uart_init_files();
	call	uart_init_files		#
# basic.c:2422: 		if (eth)
	ld.w	r1, [eth]	# eth.466_49, eth
# basic.c:2422: 		if (eth)
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# eth.466_49, tmp163
	jz	.L480		#
# basic.c:2424: 			init_spi();
	call	init_spi		#
# basic.c:2425: 			init_net();
	call	init_net		#
# basic.c:2426: 			init_sd();
	call	init_sd		#
	j	.L480		#
.L498:
# basic.c:2431: 		printf("Error loading program %s\n", s);
	mov.w	r0, sp	# tmp164,
	mov.w	r1, r13	# tmp165,
	add.w	r1, -60 #111	# tmp165,
	st.w	[r0 + (4)], r1	#, tmp165
	mov.w	r1, .LC69	# tmp166,
	st.w	[r0], r1	#, tmp166
	call	printf		#
.L480:
# basic.c:2433: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_exec, .-exec_exec
	.section	.rodata
	.p2align	2
.LC70:
	.string	"call %d\n"
	.text
	.p2align	1
	.global	exec_sys
	.type	exec_sys, @function
exec_sys:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# basic.c:2440: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2441: 	expression_error = 0;
	xor.w	r0, r0	# tmp29
	st.b	[expression_error], r0	# expression_error, tmp29
# basic.c:2442: 	addr = (int)expression();	
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:2442: 	addr = (int)expression();	
	mov.w	r0, r1	# tmp30, _1
	st.w	[sp], r0	#, tmp30
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# addr, tmp31
# basic.c:2443: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.467_2, expression_error
# basic.c:2443: 	if (expression_error)
	sex.b	r1, r0	# tmp32, expression_error.467_2
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L502		#
# basic.c:2445: 		qwhat();
	call	qwhat		#
	j	.L501		#
.L502:
# basic.c:2448: 	printf("call %d\n", addr);
	mov.w	r0, sp	# tmp34,
	ld.w	r1, [r13 + (-4)]	# tmp35, addr
	st.w	[r0 + (4)], r1	#, tmp35
	mov.w	r1, .LC70	# tmp36,
	st.w	[r0], r1	#, tmp36
	call	printf		#
# basic.c:2449: 	addr += 197632;
	ld.w	r0, [r13 + (-4)]	# tmp38, addr
	mov.w	r1, 197632	# tmp39,
	add.w	r0, r1 #222	# tmp37, tmp39
	st.w	[r13 + (-4)], r0	# addr, tmp37
# basic.c:2450: 	int old_color = color;
	ld.w	r0, [color]	# tmp40, color
	st.w	[r13 + (-8)], r0	# old_color, tmp40
# basic.c:2451: 	asm("ld.w r0, [r13 + (-4)]\ncallr r0\n");
# 2451 "basic.c" 1
	ld.w r0, [r13 + (-4)]
callr r0

# basic.c:2452: 	init_stdio();
	call	init_stdio		#
# basic.c:2453: 	video_mode(0);
	mov.w	r1, sp	# tmp41,
	xor.w	r0, r0	# tmp42
	st.w	[r1], r0	#, tmp42
	call	video_mode		#
# basic.c:2454: 	color = old_color;
	ld.w	r0, [r13 + (-8)]	# tmp43, old_color
	st.w	[color], r0	# color, tmp43
# basic.c:2457: 	uart_init_files();
	call	uart_init_files		#
# basic.c:2458: 	if (eth)
	ld.w	r1, [eth]	# eth.468_3, eth
# basic.c:2458: 	if (eth)
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# eth.468_3, tmp44
	jz	.L501		#
# basic.c:2460: 		init_spi();
	call	init_spi		#
# basic.c:2461: 		init_net();
	call	init_net		#
# basic.c:2462: 		init_sd();
	call	init_sd		#
.L501:
# basic.c:2464: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_sys, .-exec_sys
	.section	.rodata
	.p2align	2
.LC71:
	.string	"DRIVE: %d\n"
	.p2align	2
.LC72:
	.string	"Invalid drive number: %d. Can be from 0 to 2.\n"
	.text
	.p2align	1
	.global	exec_drive
	.type	exec_drive, @function
exec_drive:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2468: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2469: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.469_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.469_1
# basic.c:2469: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp44, _2
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L506		#
# basic.c:2471: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.470_3, drive
	sex.b	r1, r0	# _4, drive.470_3
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, .LC71	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	printf		#
# basic.c:2472: 		return;
	j	.L505		#
.L506:
# basic.c:2474: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.471_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.471_5
# basic.c:2474: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _6
	mov.w	r0, 47	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L508		#
# basic.c:2474: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.472_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.472_7
# basic.c:2474: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp50, _8
	mov.w	r0, 57	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jse	.L509		#
.L508:
# basic.c:2476: 		qwhat();
	call	qwhat		#
# basic.c:2477: 		return;
	j	.L505		#
.L509:
# basic.c:2479: 	drive = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.473_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.473_9
# basic.c:2479: 	drive = *txtpos - '0';
	add.w	r0, -48 #111	# tmp52,
# basic.c:2479: 	drive = *txtpos - '0';
	st.b	[drive], r0	# drive, _12
# basic.c:2480: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.474_13, drive
# basic.c:2480: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp53, drive.474_13
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jss	.L510		#
# basic.c:2480: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.475_14, drive
# basic.c:2480: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp55, drive.475_14
	mov.w	r0, 2	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jgs	.L510		#
# basic.c:2481: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.476_15, drive
	sex.b	r1, r0	# _16, drive.476_15
	mov.w	r0, sp	# tmp57,
	st.w	[r0 + (4)], r1	#, _16
	mov.w	r1, .LC71	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	printf		#
	j	.L505		#
.L510:
# basic.c:2484: 		printf("Invalid drive number: %d. Can be from 0 to 2.\n", drive);
	ld.b	r0, [drive]	# drive.477_17, drive
	sex.b	r1, r0	# _18, drive.477_17
	mov.w	r0, sp	# tmp59,
	st.w	[r0 + (4)], r1	#, _18
	mov.w	r1, .LC72	# tmp60,
	st.w	[r0], r1	#, tmp60
	call	printf		#
.L505:
# basic.c:2487: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_drive, .-exec_drive
	.section	.rodata
	.p2align	2
.LC73:
	.string	"ETHERNET: %d\n"
	.p2align	2
.LC74:
	.string	"Invalid ethernet value: %d. Can be 0 or 1.\n"
	.text
	.p2align	1
	.global	exec_eth
	.type	exec_eth, @function
exec_eth:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2491: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2492: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.478_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.478_1
# basic.c:2492: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp42, _2
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L512		#
# basic.c:2494: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.479_3, eth
	mov.w	r0, sp	# tmp44,
	st.w	[r0 + (4)], r1	#, eth.479_3
	mov.w	r1, .LC73	# tmp45,
	st.w	[r0], r1	#, tmp45
	call	printf		#
# basic.c:2495: 		return;
	j	.L511		#
.L512:
# basic.c:2497: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.480_4, txtpos
	ld.b	r0, [r0]	# _5, *txtpos.480_4
# basic.c:2497: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp46, _5
	mov.w	r0, 47	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jse	.L514		#
# basic.c:2497: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.481_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.481_6
# basic.c:2497: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _7
	mov.w	r0, 57	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L515		#
.L514:
# basic.c:2499: 		qwhat();
	call	qwhat		#
# basic.c:2500: 		return;
	j	.L511		#
.L515:
# basic.c:2502: 	eth = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.482_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.482_8
	zex.b	r0, r0	# _10, _9
# basic.c:2502: 	eth = *txtpos - '0';
	add.w	r0, -48 #111	# _11,
# basic.c:2502: 	eth = *txtpos - '0';
	st.w	[eth], r0	# eth, _11
# basic.c:2503: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.483_12, eth
# basic.c:2503: 	if (eth >= 0 && eth <= 1) 
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# eth.483_12, tmp50
	jss	.L516		#
# basic.c:2503: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.484_13, eth
# basic.c:2503: 	if (eth >= 0 && eth <= 1) 
	mov.w	r0, 1	# tmp51,
	cmp.w	r1, r0	# eth.484_13, tmp51
	jgs	.L516		#
# basic.c:2505: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.485_14, eth
	mov.w	r0, sp	# tmp52,
	st.w	[r0 + (4)], r1	#, eth.485_14
	mov.w	r1, .LC73	# tmp53,
	st.w	[r0], r1	#, tmp53
	call	printf		#
# basic.c:2507: 		if (eth == 1) 
	ld.w	r1, [eth]	# eth.486_15, eth
# basic.c:2507: 		if (eth == 1) 
	mov.w	r0, 1	# tmp54,
	cmp.w	r1, r0	# eth.486_15, tmp54
	jnz	.L517		#
# basic.c:2509: 			asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 2509 "basic.c" 1
	irq 1

# basic.c:2510: 			init_net();
	call	init_net		#
# basic.c:2507: 		if (eth == 1) 
	j	.L511		#
.L517:
# basic.c:2514: 			asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 2514 "basic.c" 1
	irq 0

# basic.c:2515: 			de_init_timer();
	call	de_init_timer		#
# basic.c:2507: 		if (eth == 1) 
	j	.L511		#
.L516:
# basic.c:2522: 		printf("Invalid ethernet value: %d. Can be 0 or 1.\n", eth);
	ld.w	r1, [eth]	# eth.487_16, eth
	mov.w	r0, sp	# tmp55,
	st.w	[r0 + (4)], r1	#, eth.487_16
	mov.w	r1, .LC74	# tmp56,
	st.w	[r0], r1	#, tmp56
	call	printf		#
.L511:
# basic.c:2524: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_eth, .-exec_eth
	.section	.rodata
	.p2align	2
.LC75:
	.string	"COLOR: %d\n"
	.text
	.p2align	1
	.global	exec_color
	.type	exec_color, @function
exec_color:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 60 #111	#,
# basic.c:2530: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2531: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.488_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.488_1
# basic.c:2531: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp31, _2
	mov.w	r0, 10	# tmp32,
	cmp.w	r1, r0	# tmp31, tmp32
	jnz	.L520		#
# basic.c:2533: 		printf("COLOR: %d\n", color);
	ld.w	r1, [color]	# color.489_3, color
	mov.w	r0, sp	# tmp33,
	st.w	[r0 + (4)], r1	#, color.489_3
	mov.w	r1, .LC75	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	printf		#
# basic.c:2534: 		return;
	j	.L519		#
.L520:
# basic.c:2536: 	expression_error = 0;
	xor.w	r0, r0	# tmp35
	st.b	[expression_error], r0	# expression_error, tmp35
# basic.c:2537: 	int c = (int)expression();	
	call	expression		#
	mov.w	r1, r0	# _4,
# basic.c:2537: 	int c = (int)expression();	
	mov.w	r0, r1	# tmp36, _4
	st.w	[sp], r0	#, tmp36
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# c, tmp37
# basic.c:2538: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.490_5, expression_error
# basic.c:2538: 	if (expression_error)
	sex.b	r1, r0	# tmp38, expression_error.490_5
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L522		#
# basic.c:2540: 		qwhat();
	call	qwhat		#
# basic.c:2541: 		return;
	j	.L519		#
.L522:
# basic.c:2543: 	color = c;
	ld.w	r0, [r13 + (-4)]	# tmp40, c
	st.w	[color], r0	# color, tmp40
.L519:
# basic.c:2545: }
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
# basic.c:2550: 	ignore_blanks();	
	call	ignore_blanks		#
# basic.c:2552: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.491_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.491_1
# basic.c:2552: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp75, _2
	mov.w	r0, 64	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jse	.L525		#
# basic.c:2552: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.492_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.492_3
# basic.c:2552: 		if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp77, _4
	mov.w	r0, 90	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jg	.L525		#
# basic.c:2554: 			int varName = txtpos[0];
	ld.w	r0, [txtpos]	# txtpos.493_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.493_5
# basic.c:2554: 			int varName = txtpos[0];
	zex.b	r0, r0	# tmp79, _6
	st.w	[r13 + (-8)], r0	# varName, tmp79
# basic.c:2556: 			txtpos++; // (19)
	ld.w	r0, [txtpos]	# txtpos.494_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:2557: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:2559: 			if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.495_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.495_9
# basic.c:2559: 			if (*txtpos == '(')
	zex.b	r1, r0	# tmp80, _10
	mov.w	r0, 40	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L525		#
# basic.c:2561: 				txtpos++;  // 19)
	ld.w	r0, [txtpos]	# txtpos.496_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:2562: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:2564: 				expression_error = 0;
	xor.w	r0, r0	# tmp82
	st.b	[expression_error], r0	# expression_error, tmp82
# basic.c:2565: 				VAR dim = expression();
	call	expression		#
	st.w	[r13 + (-12)], r0	# dim,
# basic.c:2567: 				if (!expression_error && (*txtpos == ')'))
	ld.b	r0, [expression_error]	# expression_error.497_13, expression_error
# basic.c:2567: 				if (!expression_error && (*txtpos == ')'))
	sex.b	r1, r0	# tmp83, expression_error.497_13
	xor.w	r0, r0	# tmp84
	cmp.w	r1, r0	# tmp83, tmp84
	jnz	.L525		#
# basic.c:2567: 				if (!expression_error && (*txtpos == ')'))
	ld.w	r0, [txtpos]	# txtpos.498_14, txtpos
	ld.b	r0, [r0]	# _15, *txtpos.498_14
# basic.c:2567: 				if (!expression_error && (*txtpos == ')'))
	zex.b	r1, r0	# tmp85, _15
	mov.w	r0, 41	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jnz	.L525		#
# basic.c:2570: 					if (arrays_begin[varName-'A'] != NULL)
	ld.w	r0, [arrays_begin]	# arrays_begin.499_16, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.500_17, varName
	mov.w	r2, 1073741759	# tmp87,
	add.w	r1, r2 #222	# _18, tmp87
	mov.w	r2, 2	# tmp88,
	shl.w	r1, r2	# _19, tmp88
	add.w	r0, r1 #222	# _20, _19
	ld.w	r1, [r0]	# _21, *_20
# basic.c:2570: 					if (arrays_begin[varName-'A'] != NULL)
	xor.w	r0, r0	# tmp89
	cmp.w	r1, r0	# _21, tmp89
	jz	.L526		#
# basic.c:2572: 						free(arrays_begin[varName-'A']);
	ld.w	r0, [arrays_begin]	# arrays_begin.501_22, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.502_23, varName
	mov.w	r2, 1073741759	# tmp90,
	add.w	r1, r2 #222	# _24, tmp90
	mov.w	r2, 2	# tmp91,
	shl.w	r1, r2	# _25, tmp91
	add.w	r0, r1 #222	# _26, _25
# basic.c:2572: 						free(arrays_begin[varName-'A']);
	ld.w	r0, [r0]	# _27, *_26
	mov.w	r1, sp	# tmp92,
	st.w	[r1], r0	#, _27
	call	free		#
.L526:
# basic.c:2574: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	mov.w	r0, 1082130432	# tmp93,
	st.w	[sp + (4)], r0	#, tmp93
	ld.w	r0, [r13 + (-12)]	# tmp94, dim
	st.w	[sp], r0	#, tmp94
	call	__mulsf3		#
	mov.w	r1, r0	# tmp95,
	mov.w	r0, r1	# _28, tmp95
# basic.c:2574: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	st.w	[sp], r0	#, tmp96
	call	__fixunssfsi		#
	mov.w	r3, r0	# _29,
# basic.c:2574: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	ld.w	r1, [arrays_begin]	# arrays_begin.503_30, arrays_begin
	ld.w	r0, [r13 + (-8)]	# varName.504_31, varName
	mov.w	r2, 1073741759	# tmp97,
	add.w	r0, r2 #222	# _32, tmp97
	mov.w	r2, 2	# tmp98,
	shl.w	r0, r2	# _33, tmp98
	mov.w	r6, r1	# _34, arrays_begin.503_30
	add.w	r6, r0 #222	# _34, _33
# basic.c:2574: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	mov.w	r0, sp	# tmp99,
	st.w	[r0], r3	#, _29
	call	malloc		#
# basic.c:2574: 					arrays_begin[varName-'A'] = (VAR *) malloc(sizeof(VAR) * dim);
	st.w	[r6], r0	# *_34, _35
# basic.c:2575: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	ld.w	r0, [arrays_begin]	# arrays_begin.505_36, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.506_37, varName
	mov.w	r2, 1073741759	# tmp101,
	add.w	r1, r2 #222	# _38, tmp101
	mov.w	r2, 2	# tmp102,
	shl.w	r1, r2	# _39, tmp102
	add.w	r0, r1 #222	# _40, _39
# basic.c:2575: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	ld.w	r6, [r0]	# _41, *_40
# basic.c:2575: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	mov.w	r0, 1082130432	# tmp103,
	st.w	[sp + (4)], r0	#, tmp103
	ld.w	r0, [r13 + (-12)]	# tmp104, dim
	st.w	[sp], r0	#, tmp104
	call	__mulsf3		#
	mov.w	r1, r0	# tmp105,
	mov.w	r0, r1	# _42, tmp105
# basic.c:2575: 					memset(arrays_begin[varName-'A'], 0, sizeof(VAR *) * dim);
	st.w	[sp], r0	#, tmp106
	call	__fixsfsi		#
	mov.w	r1, r0	# _43,
	mov.w	r0, sp	# tmp107,
	st.w	[r0 + (8)], r1	#, _43
	xor.w	r1, r1	# tmp108
	st.w	[r0 + (4)], r1	#, tmp108
	st.w	[r0], r6	#, _41
	call	memset		#
# basic.c:2576: 					if (arrays_begin[varName-'A'] == NULL)
	ld.w	r0, [arrays_begin]	# arrays_begin.507_44, arrays_begin
	ld.w	r1, [r13 + (-8)]	# varName.508_45, varName
	mov.w	r2, 1073741759	# tmp109,
	add.w	r1, r2 #222	# _46, tmp109
	mov.w	r2, 2	# tmp110,
	shl.w	r1, r2	# _47, tmp110
	add.w	r0, r1 #222	# _48, _47
	ld.w	r1, [r0]	# _49, *_48
# basic.c:2576: 					if (arrays_begin[varName-'A'] == NULL)
	xor.w	r0, r0	# tmp111
	cmp.w	r1, r0	# _49, tmp111
	jnz	.L529		#
# basic.c:2578: 						qsorry();
	call	qsorry		#
# basic.c:2579: 						return;
	j	.L524		#
.L525:
# basic.c:2586: 	qwhat();
	call	qwhat		#
	j	.L524		#
.L529:
# basic.c:2581: 					return;
	nop	
.L524:
# basic.c:2587: }
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
.LC76:
	.string	"No ethernet link available\n."
	.text
	.p2align	1
	.global	init_net
	.type	init_net, @function
init_net:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2591: 	if (init_tcpip()) 
	call	init_tcpip		#
	mov.w	r1, r0	# _1,
# basic.c:2591: 	if (init_tcpip()) 
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# _1, tmp29
	jz	.L531		#
# basic.c:2593: 		init_timer();
	call	init_timer		#
# basic.c:2594: 		return true;
	mov.w	r0, 1	# _2,
	j	.L532		#
.L531:
# basic.c:2596: 		printf("No ethernet link available\n.");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC76	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	printf		#
# basic.c:2597: 		eth = 0;
	xor.w	r0, r0	# tmp32
	st.w	[eth], r0	# eth, tmp32
# basic.c:2598: 		return false;
	xor.w	r0, r0	# _2
.L532:
# basic.c:2600: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_net, .-init_net
	.section	.rodata
	.p2align	2
.LC77:
	.string	"I cannot exit. I am the boss."
	.p2align	2
.LC78:
	.string	"Current millis: %d\n"
	.text
	.p2align	1
	.global	direct
	.type	direct, @function
direct:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2607: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.509_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.509_1
# basic.c:2607: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp49, _2
	mov.w	r0, 10	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jnz	.L534		#
# basic.c:2608: 		return 0;
	xor.w	r0, r0	# _20
	j	.L535		#
.L534:
# basic.c:2610: 	scantable(keywords);
	mov.w	r1, sp	# tmp51,
	mov.w	r0, keywords	# tmp52,
	st.w	[r1], r0	#, tmp52
	call	scantable		#
# basic.c:2616: 	if (should_break())
	call	should_break		#
	mov.w	r1, r0	# _3,
# basic.c:2616: 	if (should_break())
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# _3, tmp53
	jz	.L536		#
# basic.c:2618: 		return 0;
	xor.w	r0, r0	# _20
	j	.L535		#
.L536:
# basic.c:2621: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.510_4, table_index
	sex.b	r0, r0	# _5, table_index.510_4
	mov.w	r1, 41	# tmp54,
	cmp.w	r0, r1	# _5, tmp54
	jz	.L537		#
	mov.w	r1, 41	# tmp55,
	cmp.w	r0, r1	# _5, tmp55
	jgs	.L538		#
	mov.w	r1, 40	# tmp56,
	cmp.w	r0, r1	# _5, tmp56
	jz	.L539		#
	mov.w	r1, 40	# tmp57,
	cmp.w	r0, r1	# _5, tmp57
	jgs	.L538		#
	mov.w	r1, 39	# tmp58,
	cmp.w	r0, r1	# _5, tmp58
	jz	.L540		#
	mov.w	r1, 39	# tmp59,
	cmp.w	r0, r1	# _5, tmp59
	jgs	.L538		#
	mov.w	r1, 38	# tmp60,
	cmp.w	r0, r1	# _5, tmp60
	jz	.L541		#
	mov.w	r1, 38	# tmp61,
	cmp.w	r0, r1	# _5, tmp61
	jgs	.L538		#
	mov.w	r1, 37	# tmp62,
	cmp.w	r0, r1	# _5, tmp62
	jgs	.L538		#
	mov.w	r1, 36	# tmp63,
	cmp.w	r0, r1	# _5, tmp63
	jges	.L583		#
	mov.w	r1, 35	# tmp64,
	cmp.w	r0, r1	# _5, tmp64
	jz	.L543		#
	mov.w	r1, 35	# tmp65,
	cmp.w	r0, r1	# _5, tmp65
	jgs	.L538		#
	mov.w	r1, 34	# tmp66,
	cmp.w	r0, r1	# _5, tmp66
	jz	.L544		#
	mov.w	r1, 34	# tmp67,
	cmp.w	r0, r1	# _5, tmp67
	jgs	.L538		#
	mov.w	r1, 33	# tmp68,
	cmp.w	r0, r1	# _5, tmp68
	jz	.L545		#
	mov.w	r1, 33	# tmp69,
	cmp.w	r0, r1	# _5, tmp69
	jgs	.L538		#
	mov.w	r1, 32	# tmp70,
	cmp.w	r0, r1	# _5, tmp70
	jz	.L546		#
	mov.w	r1, 32	# tmp71,
	cmp.w	r0, r1	# _5, tmp71
	jgs	.L538		#
	mov.w	r1, 31	# tmp72,
	cmp.w	r0, r1	# _5, tmp72
	jz	.L547		#
	mov.w	r1, 31	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jgs	.L538		#
	mov.w	r1, 30	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jz	.L548		#
	mov.w	r1, 30	# tmp75,
	cmp.w	r0, r1	# _5, tmp75
	jgs	.L538		#
	mov.w	r1, 29	# tmp76,
	cmp.w	r0, r1	# _5, tmp76
	jz	.L549		#
	mov.w	r1, 29	# tmp77,
	cmp.w	r0, r1	# _5, tmp77
	jgs	.L538		#
	mov.w	r1, 28	# tmp78,
	cmp.w	r0, r1	# _5, tmp78
	jz	.L550		#
	mov.w	r1, 28	# tmp79,
	cmp.w	r0, r1	# _5, tmp79
	jgs	.L538		#
	mov.w	r1, 27	# tmp80,
	cmp.w	r0, r1	# _5, tmp80
	jz	.L551		#
	mov.w	r1, 27	# tmp81,
	cmp.w	r0, r1	# _5, tmp81
	jgs	.L538		#
	mov.w	r1, 26	# tmp82,
	cmp.w	r0, r1	# _5, tmp82
	jz	.L552		#
	mov.w	r1, 26	# tmp83,
	cmp.w	r0, r1	# _5, tmp83
	jgs	.L538		#
	mov.w	r1, 25	# tmp84,
	cmp.w	r0, r1	# _5, tmp84
	jz	.L553		#
	mov.w	r1, 25	# tmp85,
	cmp.w	r0, r1	# _5, tmp85
	jgs	.L538		#
	mov.w	r1, 24	# tmp86,
	cmp.w	r0, r1	# _5, tmp86
	jz	.L554		#
	mov.w	r1, 24	# tmp87,
	cmp.w	r0, r1	# _5, tmp87
	jgs	.L538		#
	mov.w	r1, 23	# tmp88,
	cmp.w	r0, r1	# _5, tmp88
	jz	.L555		#
	mov.w	r1, 23	# tmp89,
	cmp.w	r0, r1	# _5, tmp89
	jgs	.L538		#
	mov.w	r1, 22	# tmp90,
	cmp.w	r0, r1	# _5, tmp90
	jz	.L556		#
	mov.w	r1, 22	# tmp91,
	cmp.w	r0, r1	# _5, tmp91
	jgs	.L538		#
	mov.w	r1, 21	# tmp92,
	cmp.w	r0, r1	# _5, tmp92
	jz	.L557		#
	mov.w	r1, 21	# tmp93,
	cmp.w	r0, r1	# _5, tmp93
	jgs	.L538		#
	mov.w	r1, 20	# tmp94,
	cmp.w	r0, r1	# _5, tmp94
	jz	.L558		#
	mov.w	r1, 20	# tmp95,
	cmp.w	r0, r1	# _5, tmp95
	jgs	.L538		#
	mov.w	r1, 19	# tmp96,
	cmp.w	r0, r1	# _5, tmp96
	jz	.L559		#
	mov.w	r1, 19	# tmp97,
	cmp.w	r0, r1	# _5, tmp97
	jgs	.L538		#
	mov.w	r1, 18	# tmp98,
	cmp.w	r0, r1	# _5, tmp98
	jz	.L560		#
	mov.w	r1, 18	# tmp99,
	cmp.w	r0, r1	# _5, tmp99
	jgs	.L538		#
	mov.w	r1, 17	# tmp100,
	cmp.w	r0, r1	# _5, tmp100
	jz	.L561		#
	mov.w	r1, 17	# tmp101,
	cmp.w	r0, r1	# _5, tmp101
	jgs	.L538		#
	mov.w	r1, 16	# tmp102,
	cmp.w	r0, r1	# _5, tmp102
	jgs	.L538		#
	mov.w	r1, 15	# tmp103,
	cmp.w	r0, r1	# _5, tmp103
	jges	.L562		#
	mov.w	r1, 14	# tmp104,
	cmp.w	r0, r1	# _5, tmp104
	jz	.L563		#
	mov.w	r1, 14	# tmp105,
	cmp.w	r0, r1	# _5, tmp105
	jgs	.L538		#
	mov.w	r1, 13	# tmp106,
	cmp.w	r0, r1	# _5, tmp106
	jz	.L564		#
	mov.w	r1, 13	# tmp107,
	cmp.w	r0, r1	# _5, tmp107
	jgs	.L538		#
	mov.w	r1, 12	# tmp108,
	cmp.w	r0, r1	# _5, tmp108
	jz	.L565		#
	mov.w	r1, 12	# tmp109,
	cmp.w	r0, r1	# _5, tmp109
	jgs	.L538		#
	mov.w	r1, 11	# tmp110,
	cmp.w	r0, r1	# _5, tmp110
	jz	.L566		#
	mov.w	r1, 11	# tmp111,
	cmp.w	r0, r1	# _5, tmp111
	jgs	.L538		#
	mov.w	r1, 10	# tmp112,
	cmp.w	r0, r1	# _5, tmp112
	jz	.L567		#
	mov.w	r1, 10	# tmp113,
	cmp.w	r0, r1	# _5, tmp113
	jgs	.L538		#
	mov.w	r1, 9	# tmp114,
	cmp.w	r0, r1	# _5, tmp114
	jz	.L568		#
	mov.w	r1, 9	# tmp115,
	cmp.w	r0, r1	# _5, tmp115
	jgs	.L538		#
	mov.w	r1, 8	# tmp116,
	cmp.w	r0, r1	# _5, tmp116
	jz	.L569		#
	mov.w	r1, 8	# tmp117,
	cmp.w	r0, r1	# _5, tmp117
	jgs	.L538		#
	mov.w	r1, 7	# tmp118,
	cmp.w	r0, r1	# _5, tmp118
	jz	.L570		#
	mov.w	r1, 7	# tmp119,
	cmp.w	r0, r1	# _5, tmp119
	jgs	.L538		#
	mov.w	r1, 6	# tmp120,
	cmp.w	r0, r1	# _5, tmp120
	jz	.L571		#
	mov.w	r1, 6	# tmp121,
	cmp.w	r0, r1	# _5, tmp121
	jgs	.L538		#
	mov.w	r1, 5	# tmp122,
	cmp.w	r0, r1	# _5, tmp122
	jz	.L572		#
	mov.w	r1, 5	# tmp123,
	cmp.w	r0, r1	# _5, tmp123
	jgs	.L538		#
	mov.w	r1, 4	# tmp124,
	cmp.w	r0, r1	# _5, tmp124
	jgs	.L538		#
	mov.w	r1, 3	# tmp125,
	cmp.w	r0, r1	# _5, tmp125
	jges	.L573		#
	xor.w	r1, r1	# tmp126
	cmp.w	r0, r1	# _5, tmp126
	jz	.L574		#
	xor.w	r1, r1	# tmp127
	cmp.w	r0, r1	# _5, tmp127
	jss	.L538		#
	mov.w	r1, r0	# _82, _81
	add.w	r1, -1 #111	# _82,
	mov.w	r0, 1	# tmp128,
	cmp.w	r1, r0	# _82, tmp128
	jg	.L538		#
	j	.L582		#
.L574:
# basic.c:2625: 		exec_mem();
	call	exec_mem		#
# basic.c:2626: 		return 0;
	xor.w	r0, r0	# _20
	j	.L535		#
.L582:
# basic.c:2630: 		printf("I cannot exit. I am the boss.\n");
	mov.w	r1, sp	# tmp129,
	mov.w	r0, .LC77	# tmp130,
	st.w	[r1], r0	#, tmp130
	call	puts		#
# basic.c:2631: 		break;
	j	.L576		#
.L573:
# basic.c:2634: 		exec_print();
	call	exec_print		#
# basic.c:2635: 		break;
	j	.L576		#
.L572:
# basic.c:2637: 		exec_list();
	call	exec_list		#
# basic.c:2638: 		break;
	j	.L576		#
.L571:
# basic.c:2640: 		current_line = program_start;
	ld.w	r0, [program_start]	# program_start.511_6, program_start
	st.w	[current_line], r0	# current_line, program_start.511_6
# basic.c:2641: 		exec_run();
	call	exec_run		#
# basic.c:2642: 		break;
	j	.L576		#
.L570:
# basic.c:2644: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.512_7, program_start
	st.w	[program_end], r0	# program_end, program_start.512_7
# basic.c:2645: 		break;
	j	.L576		#
.L569:
# basic.c:2647: 		assignment();
	call	assignment		#
# basic.c:2648: 		break;
	j	.L576		#
.L568:
# basic.c:2650: 		exec_if();
	call	exec_if		#
# basic.c:2651: 		break;
	j	.L576		#
.L567:
# basic.c:2653: 		expression_error = 0;
	xor.w	r0, r0	# tmp131
	st.b	[expression_error], r0	# expression_error, tmp131
# basic.c:2654: 		linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _8,
# basic.c:2654: 		linenum = expression();
	mov.w	r0, r1	# tmp132, _8
	st.w	[sp], r0	#, tmp132
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _9
# basic.c:2655: 		if (expression_error || *txtpos != NL)
	ld.b	r0, [expression_error]	# expression_error.513_10, expression_error
# basic.c:2655: 		if (expression_error || *txtpos != NL)
	sex.b	r1, r0	# tmp133, expression_error.513_10
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jnz	.L577		#
# basic.c:2655: 		if (expression_error || *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.514_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.514_11
# basic.c:2655: 		if (expression_error || *txtpos != NL)
	zex.b	r1, r0	# tmp135, _12
	mov.w	r0, 10	# tmp136,
	cmp.w	r1, r0	# tmp135, tmp136
	jz	.L578		#
.L577:
# basic.c:2656: 			qhow();
	call	qhow		#
.L578:
# basic.c:2657: 		current_line = findline();
	call	findline		#
# basic.c:2657: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _13
# basic.c:2658: 		return 2;
	mov.w	r0, 2	# _20,
	j	.L535		#
.L566:
# basic.c:2660: 		exec_for();
	call	exec_for		#
# basic.c:2661: 		break;
	j	.L576		#
.L565:
# basic.c:2663: 		exec_next();
	call	exec_next		#
# basic.c:2664: 		break;
	j	.L576		#
.L563:
# basic.c:2666: 		exec_gosub();
	call	exec_gosub		#
# basic.c:2667: 		break;
	j	.L576		#
.L564:
# basic.c:2669: 		if (!exec_return())
	call	exec_return		#
	mov.w	r1, r0	# _14,
# basic.c:2669: 		if (!exec_return())
	xor.w	r0, r0	# tmp137
	cmp.w	r1, r0	# _14, tmp137
	jnz	.L584		#
# basic.c:2670: 			return 1;
	mov.w	r0, 1	# _20,
	j	.L535		#
.L562:
# basic.c:2675: 		if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.515_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.515_15
# basic.c:2675: 		if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp138, _16
	mov.w	r0, 10	# tmp139,
	cmp.w	r1, r0	# tmp138, tmp139
	jz	.L580		#
# basic.c:2677: 			qwhat();
	call	qwhat		#
# basic.c:2681: 		break;
	j	.L576		#
.L580:
# basic.c:2680: 			current_line = program_end;
	ld.w	r0, [program_end]	# program_end.516_17, program_end
	st.w	[current_line], r0	# current_line, program_end.516_17
# basic.c:2681: 		break;
	j	.L576		#
.L561:
# basic.c:2683: 		exec_input();
	call	exec_input		#
# basic.c:2684: 		break;
	j	.L576		#
.L560:
# basic.c:2686: 		cls(color);
	ld.w	r0, [color]	# color.517_18, color
	mov.w	r1, sp	# tmp140,
	st.w	[r1], r0	#, color.517_18
	call	cls		#
# basic.c:2687: 		break;
	j	.L576		#
.L559:
# basic.c:2689: 		return exec_edit();
	call	exec_edit		#
	j	.L535		#
.L558:
# basic.c:2691: 		exec_load();
	call	exec_load		#
# basic.c:2692: 		break;
	j	.L576		#
.L557:
# basic.c:2694: 		exec_save();
	call	exec_save		#
# basic.c:2695: 		break;
	j	.L576		#
.L556:
# basic.c:2697: 		exec_dir();
	call	exec_dir		#
# basic.c:2698: 		break;
	j	.L576		#
.L555:
# basic.c:2700: 		exec_mode();
	call	exec_mode		#
# basic.c:2701: 		break;
	j	.L576		#
.L554:
# basic.c:2703: 		exec_plot();
	call	exec_plot		#
# basic.c:2704: 		break;
	j	.L576		#
.L553:
# basic.c:2706: 		exec_line();
	call	exec_line		#
# basic.c:2707: 		break;
	j	.L576		#
.L552:
# basic.c:2709: 		exec_circle();
	call	exec_circle		#
# basic.c:2710: 		break;
	j	.L576		#
.L551:
# basic.c:2712: 		exec_draw();
	call	exec_draw		#
# basic.c:2713: 		break;
	j	.L576		#
.L550:
# basic.c:2715: 		exec_help();
	call	exec_help		#
# basic.c:2716: 		break;
	j	.L576		#
.L549:
# basic.c:2718: 		exec_delay();
	call	exec_delay		#
# basic.c:2719: 		break;
	j	.L576		#
.L548:
# basic.c:2721: 		exec_cursor();
	call	exec_cursor		#
# basic.c:2722: 		break;
	j	.L576		#
.L547:
# basic.c:2724: 		exec_poke();
	call	exec_poke		#
# basic.c:2725: 		break;
	j	.L576		#
.L546:
# basic.c:2727: 		exec_exec();
	call	exec_exec		#
# basic.c:2728: 		break;
	j	.L576		#
.L545:
# basic.c:2730: 		exec_sys();
	call	exec_sys		#
# basic.c:2731: 		break;
	j	.L576		#
.L544:
# basic.c:2733: 		exec_drive();
	call	exec_drive		#
# basic.c:2734: 		break;
	j	.L576		#
.L543:
# basic.c:2736: 		printf("Current millis: %d\n", get_millis());
	call	get_millis		#
	mov.w	r1, r0	# _19,
	mov.w	r0, sp	# tmp141,
	st.w	[r0 + (4)], r1	#, _19
	mov.w	r1, .LC78	# tmp142,
	st.w	[r0], r1	#, tmp142
	call	printf		#
# basic.c:2737: 	break;
	j	.L576		#
.L541:
# basic.c:2742: 		exec_eth();
	call	exec_eth		#
# basic.c:2743: 		break;
	j	.L576		#
.L540:
# basic.c:2745: 		exec_color();
	call	exec_color		#
# basic.c:2746: 		break;
	j	.L576		#
.L539:
# basic.c:2748: 		exec_dim();
	call	exec_dim		#
# basic.c:2749: 		break;
	j	.L576		#
.L537:
# basic.c:2751: 		assignment();
	call	assignment		#
# basic.c:2752: 		break;
	j	.L576		#
.L538:
# basic.c:2754: 		return 0;
	xor.w	r0, r0	# _20
	j	.L535		#
.L583:
# basic.c:2740: 		break;
	nop	
	j	.L576		#
.L584:
# basic.c:2671: 		break;
	nop	
.L576:
# basic.c:2756: 	return 0;
	xor.w	r0, r0	# _20
.L535:
# basic.c:2757: }
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
# basic.c:2760: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	mov.w	r1, cls	# cls.518_1,
# basic.c:2760: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.519_2, K_API_STDIO
# basic.c:2760: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	add.w	r1, 4 #111	# _3,
# basic.c:2760: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	st.w	[r0], r1	# *K_API_STDIO.519_2, _3
# basic.c:2761: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	mov.w	r1, put_char	# put_char.520_4,
# basic.c:2761: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.521_5, K_API_STDIO
	add.w	r0, 4 #111	# _6,
# basic.c:2761: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	add.w	r1, 4 #111	# _7,
# basic.c:2761: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	st.w	[r0], r1	# *_6, _7
# basic.c:2762: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	mov.w	r1, printf	# printf.522_8,
# basic.c:2762: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.523_9, K_API_STDIO
	add.w	r0, 8 #111	# _10,
# basic.c:2762: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	add.w	r1, 4 #111	# _11,
# basic.c:2762: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	st.w	[r0], r1	# *_10, _11
# basic.c:2763: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	mov.w	r1, puts	# puts.524_12,
# basic.c:2763: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.525_13, K_API_STDIO
	add.w	r0, 12 #111	# _14,
# basic.c:2763: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	add.w	r1, 4 #111	# _15,
# basic.c:2763: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	st.w	[r0], r1	# *_14, _15
# basic.c:2764: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	mov.w	r1, rand	# rand.526_16,
# basic.c:2764: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.527_17, K_API_STDIO
	add.w	r0, 16 #111	# _18,
# basic.c:2764: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	add.w	r1, 4 #111	# _19,
# basic.c:2764: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	st.w	[r0], r1	# *_18, _19
# basic.c:2765: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	mov.w	r1, should_break	# should_break.528_20,
# basic.c:2765: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.529_21, K_API_STDIO
	add.w	r0, 20 #111	# _22,
# basic.c:2765: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	add.w	r1, 4 #111	# _23,
# basic.c:2765: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	st.w	[r0], r1	# *_22, _23
# basic.c:2766: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	mov.w	r1, getc	# getc.530_24,
# basic.c:2766: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.531_25, K_API_STDIO
	add.w	r0, 24 #111	# _26,
# basic.c:2766: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	add.w	r1, 4 #111	# _27,
# basic.c:2766: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	st.w	[r0], r1	# *_26, _27
# basic.c:2767: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	mov.w	r1, gets	# gets.532_28,
# basic.c:2767: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.533_29, K_API_STDIO
	add.w	r0, 28 #111	# _30,
# basic.c:2767: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	add.w	r1, 4 #111	# _31,
# basic.c:2767: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	st.w	[r0], r1	# *_30, _31
# basic.c:2768: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	mov.w	r1, init_stdio	# init_stdio.534_32,
# basic.c:2768: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.535_33, K_API_STDIO
	add.w	r0, 32 #111	# _34,
# basic.c:2768: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	add.w	r1, 4 #111	# _35,
# basic.c:2768: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	st.w	[r0], r1	# *_34, _35
# basic.c:2769: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	mov.w	r1, delay	# delay.536_36,
# basic.c:2769: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.537_37, K_API_STDIO
	add.w	r0, 36 #111	# _38,
# basic.c:2769: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	add.w	r1, 4 #111	# _39,
# basic.c:2769: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	st.w	[r0], r1	# *_38, _39
# basic.c:2770: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	mov.w	r1, xy	# xy.538_40,
# basic.c:2770: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.539_41, K_API_STDIO
	add.w	r0, 40 #111	# _42,
# basic.c:2770: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	add.w	r1, 4 #111	# _43,
# basic.c:2770: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	st.w	[r0], r1	# *_42, _43
# basic.c:2771: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	mov.w	r1, get_millis	# get_millis.540_44,
# basic.c:2771: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.541_45, K_API_STDIO
	add.w	r0, 44 #111	# _46,
# basic.c:2771: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	add.w	r1, 4 #111	# _47,
# basic.c:2771: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	st.w	[r0], r1	# *_46, _47
# basic.c:2772: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	mov.w	r1, is_key_pressed	# is_key_pressed.542_48,
# basic.c:2772: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.543_49, K_API_STDIO
	add.w	r0, 48 #111	# _50,
# basic.c:2772: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	add.w	r1, 4 #111	# _51,
# basic.c:2772: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	st.w	[r0], r1	# *_50, _51
# basic.c:2773: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	mov.w	r1, is_key_released	# is_key_released.544_52,
# basic.c:2773: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.545_53, K_API_STDIO
	add.w	r0, 52 #111	# _54,
# basic.c:2773: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	add.w	r1, 4 #111	# _55,
# basic.c:2773: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	st.w	[r0], r1	# *_54, _55
# basic.c:2774: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	mov.w	r1, toggle_cursor	# toggle_cursor.546_56,
# basic.c:2774: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.547_57, K_API_STDIO
	add.w	r0, 56 #111	# _58,
# basic.c:2774: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	add.w	r1, 4 #111	# _59,
# basic.c:2774: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	st.w	[r0], r1	# *_58, _59
# basic.c:2775: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	mov.w	r1, putchar	# putchar.548_60,
# basic.c:2775: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.549_61, K_API_STDIO
	add.w	r0, 60 #111	# _62,
# basic.c:2775: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	add.w	r1, 4 #111	# _63,
# basic.c:2775: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	st.w	[r0], r1	# *_62, _63
# basic.c:2776: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	mov.w	r1, video_mode	# video_mode.550_64,
# basic.c:2776: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.551_65, K_API_STDIO
	add.w	r0, 64 #111	# _66,
# basic.c:2776: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	add.w	r1, 4 #111	# _67,
# basic.c:2776: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	st.w	[r0], r1	# *_66, _67
# basic.c:2777: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	mov.w	r1, scroll_up	# scroll_up.552_68,
# basic.c:2777: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.553_69, K_API_GRAPHICS
	add.w	r0, 68 #111	# _70,
# basic.c:2777: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	add.w	r1, 4 #111	# _71,
# basic.c:2777: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	st.w	[r0], r1	# *_70, _71
# basic.c:2779: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	mov.w	r1, strlen	# strlen.554_72,
# basic.c:2779: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.555_73, K_API_STRING
# basic.c:2779: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	add.w	r1, 4 #111	# _74,
# basic.c:2779: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	st.w	[r0], r1	# *K_API_STRING.555_73, _74
# basic.c:2780: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	mov.w	r1, strcmp	# strcmp.556_75,
# basic.c:2780: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.557_76, K_API_STRING
	add.w	r0, 4 #111	# _77,
# basic.c:2780: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	add.w	r1, 4 #111	# _78,
# basic.c:2780: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	st.w	[r0], r1	# *_77, _78
# basic.c:2781: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	mov.w	r1, strncmp	# strncmp.558_79,
# basic.c:2781: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.559_80, K_API_STRING
	add.w	r0, 8 #111	# _81,
# basic.c:2781: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	add.w	r1, 4 #111	# _82,
# basic.c:2781: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	st.w	[r0], r1	# *_81, _82
# basic.c:2782: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	mov.w	r1, memcpy	# memcpy.560_83,
# basic.c:2782: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.561_84, K_API_STRING
	add.w	r0, 12 #111	# _85,
# basic.c:2782: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	add.w	r1, 4 #111	# _86,
# basic.c:2782: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	st.w	[r0], r1	# *_85, _86
# basic.c:2783: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	mov.w	r1, memset	# memset.562_87,
# basic.c:2783: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.563_88, K_API_STRING
	add.w	r0, 16 #111	# _89,
# basic.c:2783: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	add.w	r1, 4 #111	# _90,
# basic.c:2783: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	st.w	[r0], r1	# *_89, _90
# basic.c:2784: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	mov.w	r1, memmove	# memmove.564_91,
# basic.c:2784: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.565_92, K_API_STRING
	add.w	r0, 20 #111	# _93,
# basic.c:2784: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	add.w	r1, 4 #111	# _94,
# basic.c:2784: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	st.w	[r0], r1	# *_93, _94
# basic.c:2785: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	mov.w	r1, strcpy	# strcpy.566_95,
# basic.c:2785: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.567_96, K_API_STRING
	add.w	r0, 24 #111	# _97,
# basic.c:2785: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	add.w	r1, 4 #111	# _98,
# basic.c:2785: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	st.w	[r0], r1	# *_97, _98
# basic.c:2786: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	mov.w	r1, strncpy	# strncpy.568_99,
# basic.c:2786: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.569_100, K_API_STRING
	add.w	r0, 28 #111	# _101,
# basic.c:2786: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	add.w	r1, 4 #111	# _102,
# basic.c:2786: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	st.w	[r0], r1	# *_101, _102
# basic.c:2787: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	mov.w	r1, strcat	# strcat.570_103,
# basic.c:2787: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.571_104, K_API_STRING
	add.w	r0, 32 #111	# _105,
# basic.c:2787: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	add.w	r1, 4 #111	# _106,
# basic.c:2787: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	st.w	[r0], r1	# *_105, _106
# basic.c:2788: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	mov.w	r1, strstr	# strstr.572_107,
# basic.c:2788: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.573_108, K_API_STRING
	add.w	r0, 36 #111	# _109,
# basic.c:2788: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	add.w	r1, 4 #111	# _110,
# basic.c:2788: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	st.w	[r0], r1	# *_109, _110
# basic.c:2789: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	mov.w	r1, tolower	# tolower.574_111,
# basic.c:2789: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.575_112, K_API_STRING
	add.w	r0, 40 #111	# _113,
# basic.c:2789: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	add.w	r1, 4 #111	# _114,
# basic.c:2789: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	st.w	[r0], r1	# *_113, _114
# basic.c:2790: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	mov.w	r1, toupper	# toupper.576_115,
# basic.c:2790: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.577_116, K_API_STRING
	add.w	r0, 44 #111	# _117,
# basic.c:2790: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	add.w	r1, 4 #111	# _118,
# basic.c:2790: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	st.w	[r0], r1	# *_117, _118
# basic.c:2791: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	mov.w	r1, str_toupper	# str_toupper.578_119,
# basic.c:2791: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.579_120, K_API_STRING
	add.w	r0, 48 #111	# _121,
# basic.c:2791: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	add.w	r1, 4 #111	# _122,
# basic.c:2791: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	st.w	[r0], r1	# *_121, _122
# basic.c:2792: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	mov.w	r1, str_n_toupper	# str_n_toupper.580_123,
# basic.c:2792: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.581_124, K_API_STRING
	add.w	r0, 52 #111	# _125,
# basic.c:2792: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	add.w	r1, 4 #111	# _126,
# basic.c:2792: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	st.w	[r0], r1	# *_125, _126
# basic.c:2793: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	mov.w	r1, isdigit	# isdigit.582_127,
# basic.c:2793: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.583_128, K_API_STRING
	add.w	r0, 56 #111	# _129,
# basic.c:2793: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	add.w	r1, 4 #111	# _130,
# basic.c:2793: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	st.w	[r0], r1	# *_129, _130
# basic.c:2794: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	mov.w	r1, islower	# islower.584_131,
# basic.c:2794: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.585_132, K_API_STRING
	add.w	r0, 60 #111	# _133,
# basic.c:2794: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	add.w	r1, 4 #111	# _134,
# basic.c:2794: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	st.w	[r0], r1	# *_133, _134
# basic.c:2795: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	mov.w	r1, isupper	# isupper.586_135,
# basic.c:2795: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.587_136, K_API_STRING
	add.w	r0, 64 #111	# _137,
# basic.c:2795: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	add.w	r1, 4 #111	# _138,
# basic.c:2795: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	st.w	[r0], r1	# *_137, _138
# basic.c:2796: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	mov.w	r1, isalpha	# isalpha.588_139,
# basic.c:2796: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.589_140, K_API_STRING
	add.w	r0, 68 #111	# _141,
# basic.c:2796: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	add.w	r1, 4 #111	# _142,
# basic.c:2796: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	st.w	[r0], r1	# *_141, _142
# basic.c:2797: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	mov.w	r1, isalnum	# isalnum.590_143,
# basic.c:2797: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.591_144, K_API_STRING
	add.w	r0, 72 #111	# _145,
# basic.c:2797: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	add.w	r1, 4 #111	# _146,
# basic.c:2797: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	st.w	[r0], r1	# *_145, _146
# basic.c:2798: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	mov.w	r1, atoi	# atoi.592_147,
# basic.c:2798: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.593_148, K_API_STRING
	add.w	r0, 76 #111	# _149,
# basic.c:2798: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	add.w	r1, 4 #111	# _150,
# basic.c:2798: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	st.w	[r0], r1	# *_149, _150
# basic.c:2799: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	mov.w	r1, isspace	# isspace.594_151,
# basic.c:2799: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.595_152, K_API_STRING
	add.w	r0, 80 #111	# _153,
# basic.c:2799: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	add.w	r1, 4 #111	# _154,
# basic.c:2799: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	st.w	[r0], r1	# *_153, _154
# basic.c:2800: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	mov.w	r1, memcmp	# memcmp.596_155,
# basic.c:2800: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.597_156, K_API_STRING
	add.w	r0, 84 #111	# _157,
# basic.c:2800: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	add.w	r1, 4 #111	# _158,
# basic.c:2800: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	st.w	[r0], r1	# *_157, _158
# basic.c:2801: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	mov.w	r1, strtok	# strtok.598_159,
# basic.c:2801: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.599_160, K_API_STRING
	add.w	r0, 88 #111	# _161,
# basic.c:2801: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	add.w	r1, 4 #111	# _162,
# basic.c:2801: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	st.w	[r0], r1	# *_161, _162
# basic.c:2802: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	mov.w	r1, strchr	# strchr.600_163,
# basic.c:2802: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.601_164, K_API_STRING
	add.w	r0, 92 #111	# _165,
# basic.c:2802: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	add.w	r1, 4 #111	# _166,
# basic.c:2802: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	st.w	[r0], r1	# *_165, _166
# basic.c:2803: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	mov.w	r1, strrchr	# strrchr.602_167,
# basic.c:2803: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.603_168, K_API_STRING
	add.w	r0, 96 #111	# _169,
# basic.c:2803: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	add.w	r1, 4 #111	# _170,
# basic.c:2803: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	st.w	[r0], r1	# *_169, _170
# basic.c:2804: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	mov.w	r1, strncasecmp	# strncasecmp.604_171,
# basic.c:2804: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.605_172, K_API_STRING
	add.w	r0, 100 #111	# _173,
# basic.c:2804: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	add.w	r1, 4 #111	# _174,
# basic.c:2804: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	st.w	[r0], r1	# *_173, _174
# basic.c:2806: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	mov.w	r1, sprintf	# sprintf.606_175,
# basic.c:2806: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.607_176, K_API_SPRINTF
# basic.c:2806: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	add.w	r1, 4 #111	# _177,
# basic.c:2806: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	st.w	[r0], r1	# *K_API_SPRINTF.607_176, _177
# basic.c:2807: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	mov.w	r1, vsprintf	# vsprintf.608_178,
# basic.c:2807: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.609_179, K_API_SPRINTF
	add.w	r0, 4 #111	# _180,
# basic.c:2807: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	add.w	r1, 4 #111	# _181,
# basic.c:2807: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	st.w	[r0], r1	# *_180, _181
# basic.c:2809: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	mov.w	r1, pixel	# pixel.610_182,
# basic.c:2809: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.611_183, K_API_GRAPHICS
# basic.c:2809: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	add.w	r1, 4 #111	# _184,
# basic.c:2809: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	st.w	[r0], r1	# *K_API_GRAPHICS.611_183, _184
# basic.c:2810: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	mov.w	r1, line	# line.612_185,
# basic.c:2810: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.613_186, K_API_GRAPHICS
	add.w	r0, 4 #111	# _187,
# basic.c:2810: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	add.w	r1, 4 #111	# _188,
# basic.c:2810: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	st.w	[r0], r1	# *_187, _188
# basic.c:2811: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	mov.w	r1, circle	# circle.614_189,
# basic.c:2811: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.615_190, K_API_GRAPHICS
	add.w	r0, 8 #111	# _191,
# basic.c:2811: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	add.w	r1, 4 #111	# _192,
# basic.c:2811: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	st.w	[r0], r1	# *_191, _192
# basic.c:2812: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	mov.w	r1, draw	# draw.616_193,
# basic.c:2812: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.617_194, K_API_GRAPHICS
	add.w	r0, 12 #111	# _195,
# basic.c:2812: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	add.w	r1, 4 #111	# _196,
# basic.c:2812: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	st.w	[r0], r1	# *_195, _196
# basic.c:2814: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	mov.w	r1, init_spi	# init_spi.618_197,
# basic.c:2814: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	ld.w	r0, [K_API_SPI]	# K_API_SPI.619_198, K_API_SPI
# basic.c:2814: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	add.w	r1, 4 #111	# _199,
# basic.c:2814: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	st.w	[r0], r1	# *K_API_SPI.619_198, _199
# basic.c:2815: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	mov.w	r1, deinit_spi	# deinit_spi.620_200,
# basic.c:2815: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	ld.w	r0, [K_API_SPI]	# K_API_SPI.621_201, K_API_SPI
	add.w	r0, 4 #111	# _202,
# basic.c:2815: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	add.w	r1, 4 #111	# _203,
# basic.c:2815: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	st.w	[r0], r1	# *_202, _203
# basic.c:2816: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	mov.w	r1, send_spi	# send_spi.622_204,
# basic.c:2816: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	ld.w	r0, [K_API_SPI]	# K_API_SPI.623_205, K_API_SPI
	add.w	r0, 8 #111	# _206,
# basic.c:2816: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	add.w	r1, 4 #111	# _207,
# basic.c:2816: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	st.w	[r0], r1	# *_206, _207
# basic.c:2817: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	mov.w	r1, read_spi	# read_spi.624_208,
# basic.c:2817: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	ld.w	r0, [K_API_SPI]	# K_API_SPI.625_209, K_API_SPI
	add.w	r0, 12 #111	# _210,
# basic.c:2817: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	add.w	r1, 4 #111	# _211,
# basic.c:2817: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	st.w	[r0], r1	# *_210, _211
# basic.c:2818: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	mov.w	r1, SPI_Byte	# SPI_Byte.626_212,
# basic.c:2818: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	ld.w	r0, [K_API_SPI]	# K_API_SPI.627_213, K_API_SPI
	add.w	r0, 16 #111	# _214,
# basic.c:2818: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	add.w	r1, 4 #111	# _215,
# basic.c:2818: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	st.w	[r0], r1	# *_214, _215
# basic.c:2820: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	mov.w	r1, init_tcpip	# init_tcpip.628_216,
# basic.c:2820: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.629_217, K_API_TCPIP
# basic.c:2820: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	add.w	r1, 4 #111	# _218,
# basic.c:2820: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	st.w	[r0], r1	# *K_API_TCPIP.629_217, _218
# basic.c:2821: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	mov.w	r1, browseUrl	# browseUrl.630_219,
# basic.c:2821: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.631_220, K_API_TCPIP
	add.w	r0, 4 #111	# _221,
# basic.c:2821: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	add.w	r1, 4 #111	# _222,
# basic.c:2821: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	st.w	[r0], r1	# *_221, _222
# basic.c:2822: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	mov.w	r1, httpPost	# httpPost.632_223,
# basic.c:2822: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.633_224, K_API_TCPIP
	add.w	r0, 8 #111	# _225,
# basic.c:2822: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	add.w	r1, 4 #111	# _226,
# basic.c:2822: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	st.w	[r0], r1	# *_225, _226
# basic.c:2823: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	mov.w	r1, mainLoop	# mainLoop.634_227,
# basic.c:2823: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.635_228, K_API_TCPIP
	add.w	r0, 12 #111	# _229,
# basic.c:2823: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	add.w	r1, 4 #111	# _230,
# basic.c:2823: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	st.w	[r0], r1	# *_229, _230
# basic.c:2826: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	mov.w	r1, sdcard_init	# sdcard_init.636_231,
# basic.c:2826: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	ld.w	r0, [K_API_FAT]	# K_API_FAT.637_232, K_API_FAT
# basic.c:2826: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	add.w	r1, 4 #111	# _233,
# basic.c:2826: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	st.w	[r0], r1	# *K_API_FAT.637_232, _233
# basic.c:2827: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	mov.w	r1, volume_init	# volume_init.638_234,
# basic.c:2827: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	ld.w	r0, [K_API_FAT]	# K_API_FAT.639_235, K_API_FAT
	add.w	r0, 4 #111	# _236,
# basic.c:2827: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	add.w	r1, 4 #111	# _237,
# basic.c:2827: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	st.w	[r0], r1	# *_236, _237
# basic.c:2828: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	mov.w	r1, file_open	# file_open.640_238,
# basic.c:2828: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	ld.w	r0, [K_API_FAT]	# K_API_FAT.641_239, K_API_FAT
	add.w	r0, 8 #111	# _240,
# basic.c:2828: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	add.w	r1, 4 #111	# _241,
# basic.c:2828: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	st.w	[r0], r1	# *_240, _241
# basic.c:2829: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	mov.w	r1, file_read	# file_read.642_242,
# basic.c:2829: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	ld.w	r0, [K_API_FAT]	# K_API_FAT.643_243, K_API_FAT
	add.w	r0, 12 #111	# _244,
# basic.c:2829: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	add.w	r1, 4 #111	# _245,
# basic.c:2829: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	st.w	[r0], r1	# *_244, _245
# basic.c:2830: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	mov.w	r1, getDirEntry	# getDirEntry.644_246,
# basic.c:2830: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	ld.w	r0, [K_API_FAT]	# K_API_FAT.645_247, K_API_FAT
	add.w	r0, 16 #111	# _248,
# basic.c:2830: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	add.w	r1, 4 #111	# _249,
# basic.c:2830: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	st.w	[r0], r1	# *_248, _249
# basic.c:2831: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	mov.w	r1, file_seek	# file_seek.646_250,
# basic.c:2831: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	ld.w	r0, [K_API_FAT]	# K_API_FAT.647_251, K_API_FAT
	add.w	r0, 20 #111	# _252,
# basic.c:2831: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	add.w	r1, 4 #111	# _253,
# basic.c:2831: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	st.w	[r0], r1	# *_252, _253
# basic.c:2832: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	mov.w	r1, file_write	# file_write.648_254,
# basic.c:2832: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	ld.w	r0, [K_API_FAT]	# K_API_FAT.649_255, K_API_FAT
	add.w	r0, 24 #111	# _256,
# basic.c:2832: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	add.w	r1, 4 #111	# _257,
# basic.c:2832: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	st.w	[r0], r1	# *_256, _257
# basic.c:2833: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	mov.w	r1, file_delete	# file_delete.650_258,
# basic.c:2833: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	ld.w	r0, [K_API_FAT]	# K_API_FAT.651_259, K_API_FAT
	add.w	r0, 28 #111	# _260,
# basic.c:2833: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	add.w	r1, 4 #111	# _261,
# basic.c:2833: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	st.w	[r0], r1	# *_260, _261
# basic.c:2835: }
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
# basic.c:2841: 	program_start = program;
	ld.w	r0, [program]	# program.652_1, program
	st.w	[program_start], r0	# program_start, program.652_1
# basic.c:2842: 	program_end = program_start;
	ld.w	r0, [program_start]	# program_start.653_2, program_start
	st.w	[program_end], r0	# program_end, program_start.653_2
# basic.c:2843: 	bsp = program + kRamSize;  // Needed for printnum
	ld.w	r0, [program]	# program.654_3, program
	mov.w	r1, 65536	# tmp49,
	add.w	r0, r1 #222	# _4, tmp49
# basic.c:2843: 	bsp = program + kRamSize;  // Needed for printnum
	st.w	[bsp], r0	# bsp, _4
# basic.c:2844: 	stack_limit = program + kRamSize - STACK_SIZE;
	ld.w	r0, [program]	# program.655_5, program
	mov.w	r1, 65336	# tmp50,
	add.w	r0, r1 #222	# _6, tmp50
# basic.c:2844: 	stack_limit = program + kRamSize - STACK_SIZE;
	st.w	[stack_limit], r0	# stack_limit, _6
# basic.c:2845: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	ld.w	r0, [stack_limit]	# stack_limit.656_7, stack_limit
	add.w	r0, -112 #111	# _8,
# basic.c:2845: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	st.w	[variables_begin], r0	# variables_begin, _8
# basic.c:2847: 	umm_init();
	call	umm_init		#
# basic.c:2848: 	init_arrays();
	call	init_arrays		#
# basic.c:2850: 	current_line = 0;
	xor.w	r0, r0	# tmp51
	st.w	[current_line], r0	# current_line, tmp51
# basic.c:2852: 	init_K_API();
	call	init_K_API		#
# basic.c:2854: 	init_stdio();
	call	init_stdio		#
# basic.c:2856: 	video_mode(0);
	mov.w	r1, sp	# tmp52,
	xor.w	r0, r0	# tmp53
	st.w	[r1], r0	#, tmp53
	call	video_mode		#
# basic.c:2857: 	color = 1;
	mov.w	r0, 1	# tmp54,
	st.w	[color], r0	# color, tmp54
# basic.c:2858: 	cls(color);
	ld.w	r0, [color]	# color.657_9, color
	mov.w	r1, sp	# tmp55,
	st.w	[r1], r0	#, color.657_9
	call	cls		#
# basic.c:2859: 	uart_init_files();
	call	uart_init_files		#
# basic.c:2860: 	init_spi();
	call	init_spi		#
# basic.c:2861: 	init_sd();
	call	init_sd		#
# basic.c:2862: 	init_net();
	call	init_net		#
# basic.c:2864: 	exec_mem();
	call	exec_mem		#
# basic.c:2867: 	res = 0;
	xor.w	r0, r0	# tmp56
	st.w	[r13 + (-4)], r0	# res, tmp56
.L597:
# basic.c:2870: 		if (res != 3)
	ld.w	r1, [r13 + (-4)]	# tmp57, res
	mov.w	r0, 3	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L587		#
# basic.c:2872: 			getln('>');
	mov.w	r1, sp	# tmp59,
	mov.w	r0, 62	# tmp60,
	st.w	[r1], r0	#, tmp60
	call	getln		#
# basic.c:2873: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:2874: 			skip_to_end();
	call	skip_to_end		#
	j	.L588		#
.L587:
# basic.c:2878: 			res = 0;
	xor.w	r0, r0	# tmp61
	st.w	[r13 + (-4)], r0	# res, tmp61
# basic.c:2879: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
.L588:
# basic.c:2882: 		linenum = testnum();
	call	testnum		#
	mov.w	r1, r0	# _10,
# basic.c:2882: 		linenum = testnum();
	mov.w	r0, r1	# tmp62, _10
	st.w	[sp], r0	#, tmp62
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _11
# basic.c:2884: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:2886: 		if (linenum == 0)
	ld.w	r1, [linenum]	# linenum.658_12, linenum
# basic.c:2886: 		if (linenum == 0)
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# linenum.658_12, tmp63
	jnz	.L589		#
.L595:
# basic.c:2889: 				res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:2890: 				if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp64, res
	mov.w	r0, 1	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L590		#
# basic.c:2891: 					return 0;
	xor.w	r0, r0	# _66
	j	.L598		#
.L590:
# basic.c:2892: 				if (res == 2)
	ld.w	r1, [r13 + (-4)]	# tmp66, res
	mov.w	r0, 2	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jnz	.L592		#
# basic.c:2894: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.659_13, current_line
	add.w	r0, 5 #111	# _14,
# basic.c:2894: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:2895: 					continue;
	j	.L593		#
.L592:
# basic.c:2897: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:2898: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.660_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.660_15
# basic.c:2898: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp68, _16
	mov.w	r0, 10	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L597		#
# basic.c:2898: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.661_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.661_17
# basic.c:2898: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp70, _18
	mov.w	r0, 58	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L597		#
# basic.c:2900: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.662_19, txtpos
	add.w	r0, 1 #111	# _20,
	st.w	[txtpos], r0	# txtpos, _20
# basic.c:2901: 				ignore_blanks();
	call	ignore_blanks		#
.L593:
# basic.c:2889: 				res = direct();
	j	.L595		#
.L589:
# basic.c:2904: 		else if (linenum == 0xFFFF)
	ld.w	r1, [linenum]	# linenum.663_21, linenum
# basic.c:2904: 		else if (linenum == 0xFFFF)
	mov.w	r0, 65535	# tmp72,
	cmp.w	r1, r0	# linenum.663_21, tmp72
	jnz	.L596		#
# basic.c:2906: 			qhow();
	call	qhow		#
	j	.L597		#
.L596:
# basic.c:2910: 			entered_with_line_num();
	call	entered_with_line_num		#
# basic.c:2870: 		if (res != 3)
	j	.L597		#
.L598:
# basic.c:2913: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
