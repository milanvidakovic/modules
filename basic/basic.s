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
	.long	350000
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
	.global	keywords
	.section	.rodata
	.p2align	2
	.type	keywords, @object
	.size	keywords, 193
keywords:
	.string	"MEM\001BYE\001EXIT\001PRINT\001?\001LIST\001RUN\001NEW\001LET\001IF\001GOTO\001FOR\001NEXT\001RETURN\001GOSUB\001END\001STOP\001INPUT\001CLS\001EDIT\001LOAD\001SAVE\001DIR\001MODE\001PLOT\001LINE\001CIRCLE\001DRAW\001HELP\001DELAY\001CURSOR\001POKE\001EXEC\001SYS\001DRIVE\001TIME\001REM\001'\001ETH\001COLOR\001"
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
	.text
	.p2align	1
	.global	getln
	.type	getln, @function
getln:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 28 #111	#,
# basic.c:254: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.0_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:254: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:256: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.1_3, txtpos
# basic.c:256: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp39
	st.b	[r0], r1	# *txtpos.1_3, tmp39
# basic.c:258: 	put_char(prompt);
	mov.w	r1, sp	# tmp40,
	ld.w	r0, [r13 + (8)]	# tmp41, prompt
	st.w	[r1], r0	#, tmp41
	call	put_char		#
# basic.c:259: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.2_4, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.2_4
	call	gets		#
# basic.c:261: 	l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.3_5, txtpos
	mov.w	r1, sp	# tmp43,
	st.w	[r1], r0	#, txtpos.3_5
	call	strlen		#
	st.w	[r13 + (-8)], r0	# l,
# basic.c:262: 	if (l % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# l.4_6, l
	mov.w	r0, 1	# tmp44,
	and.w	r1, r0	# _7, tmp44
# basic.c:262: 	if (l % 2 == 0)
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# _7, tmp45
	jnz	.L2		#
# basic.c:263: 		strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.5_8, txtpos
	mov.w	r0, sp	# tmp46,
	st.w	[r0], r6	#, txtpos.5_8
	call	strlen		#
	mov.w	r1, r0	# _18, tmp47
	mov.w	r0, r6	# _19, txtpos.5_8
	add.w	r0, r1 #222	# _19, _18
	mov.b	r1, 32	# tmp48,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_19], tmp48
	xor.w	r1, r1	# tmp49
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_19], tmp49
.L2:
# basic.c:265: 	strcat(txtpos, "\n");
	ld.w	r6, [txtpos]	# txtpos.6_9, txtpos
	mov.w	r0, sp	# tmp50,
	st.w	[r0], r6	#, txtpos.6_9
	call	strlen		#
	mov.w	r1, r0	# _21, tmp51
	mov.w	r0, r6	# _22, txtpos.6_9
	add.w	r0, r1 #222	# _22, _21
	mov.b	r1, 10	# tmp52,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_22], tmp52
	xor.w	r1, r1	# tmp53
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_22], tmp53
# basic.c:266: }
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
# basic.c:270: 	char *c = txtpos;
	ld.w	r0, [txtpos]	# tmp36, txtpos
	st.w	[r13 + (-4)], r0	# c, tmp36
# basic.c:271: 	char quote = 0;
	xor.w	r0, r0	# tmp37
	st.b	[r13 + (-5)], r0	# quote, tmp37
# basic.c:273: 	while (*c != NL)
	j	.L4		#
.L9:
# basic.c:276: 		if (*c == quote)
	ld.w	r0, [r13 + (-4)]	# tmp38, c
	ld.b	r0, [r0]	# _1, *c_11
# basic.c:276: 		if (*c == quote)
	ld.b	r2, [r13 + (-5)]	#, quote
	sex.b	r1, r2	# tmp39,
	sex.b	r0, r0	# tmp40, _1
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L5		#
# basic.c:277: 			quote = 0;
	xor.w	r0, r0	# tmp41
	st.b	[r13 + (-5)], r0	# quote, tmp41
	j	.L6		#
.L5:
# basic.c:278: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp42, c
	ld.b	r0, [r0]	# _2, *c_11
# basic.c:278: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp43, _2
	mov.w	r0, 34	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L7		#
# basic.c:278: 		else if (*c == '"' || *c == '\'')
	ld.w	r0, [r13 + (-4)]	# tmp45, c
	ld.b	r0, [r0]	# _3, *c_11
# basic.c:278: 		else if (*c == '"' || *c == '\'')
	sex.b	r1, r0	# tmp46, _3
	mov.w	r0, 39	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L8		#
.L7:
# basic.c:279: 			quote = *c;
	ld.w	r0, [r13 + (-4)]	# tmp48, c
	ld.b	r0, [r0]	# tmp49, *c_11
	st.b	[r13 + (-5)], r0	# quote, tmp49
	j	.L6		#
.L8:
# basic.c:280: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.b	r0, [r13 + (-5)]	#, quote
	sex.b	r1, r0	# tmp50,
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jnz	.L6		#
# basic.c:280: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp52, c
	ld.b	r0, [r0]	# _4, *c_11
# basic.c:280: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp53, _4
	mov.w	r0, 96	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jses	.L6		#
# basic.c:280: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	ld.w	r0, [r13 + (-4)]	# tmp55, c
	ld.b	r0, [r0]	# _5, *c_11
# basic.c:280: 		else if (quote == 0 && *c >= 'a' && *c <= 'z')
	sex.b	r1, r0	# tmp56, _5
	mov.w	r0, 122	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jgs	.L6		#
# basic.c:281: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp58, c
	ld.b	r0, [r0]	# _6, *c_11
# basic.c:281: 			*c = *c + 'A' - 'a';
	add.w	r0, -32 #111	# tmp59,
	mov.w	r1, r0	# _9, _8
# basic.c:281: 			*c = *c + 'A' - 'a';
	ld.w	r0, [r13 + (-4)]	# tmp60, c
	st.b	[r0], r1	# *c_11, _9
.L6:
# basic.c:282: 		c++;
	ld.w	r0, [r13 + (-4)]	# tmp62, c
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (-4)], r0	# c, tmp61
.L4:
# basic.c:273: 	while (*c != NL)
	ld.w	r0, [r13 + (-4)]	# tmp63, c
	ld.b	r0, [r0]	# _10, *c_11
# basic.c:273: 	while (*c != NL)
	sex.b	r1, r0	# tmp64, _10
	mov.w	r0, 10	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L9		#
# basic.c:284: }
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
# basic.c:288: 	while (*txtpos == SPACE || *txtpos == TAB)
	j	.L11		#
.L12:
# basic.c:289: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.7_1, txtpos
	add.w	r0, 1 #111	# _2,
	st.w	[txtpos], r0	# txtpos, _2
.L11:
# basic.c:288: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.8_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.8_3
# basic.c:288: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp32, _4
	mov.w	r0, 32	# tmp33,
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L12		#
# basic.c:288: 	while (*txtpos == SPACE || *txtpos == TAB)
	ld.w	r0, [txtpos]	# txtpos.9_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.9_5
# basic.c:288: 	while (*txtpos == SPACE || *txtpos == TAB)
	zex.b	r1, r0	# tmp34, _6
	mov.w	r0, 9	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L12		#
# basic.c:290: }
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
# basic.c:294: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.10_1, program_end
	add.w	r0, 4 #111	# _2,
# basic.c:294: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _2
# basic.c:297: 	while (*txtpos != NL)
	j	.L14		#
.L15:
# basic.c:298: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.11_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
.L14:
# basic.c:297: 	while (*txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.12_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.12_5
# basic.c:297: 	while (*txtpos != NL)
	zex.b	r1, r0	# tmp40, _6
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L15		#
# basic.c:303: 		dest = variables_begin - 1;
	ld.w	r0, [variables_begin]	# variables_begin.13_7, variables_begin
# basic.c:303: 		dest = variables_begin - 1;
	add.w	r0, -1 #111	# tmp42,
	st.w	[r13 + (-4)], r0	# dest, tmp42
.L18:
# basic.c:306: 			*dest = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.14_8, txtpos
	ld.b	r1, [r0]	# _9, *txtpos.14_8
# basic.c:306: 			*dest = *txtpos;
	ld.w	r0, [r13 + (-4)]	# tmp43, dest
	st.b	[r0], r1	# *dest_15, _9
# basic.c:307: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [program_end]	# program_end.15_10, program_end
	mov.w	r1, r0	# _11, program_end.15_10
	add.w	r1, 4 #111	# _11,
# basic.c:307: 			if (txtpos == program_end + sizeof(LINENUM))
	ld.w	r0, [txtpos]	# txtpos.16_12, txtpos
# basic.c:307: 			if (txtpos == program_end + sizeof(LINENUM))
	cmp.w	r1, r0	# _11, txtpos.16_12
	jz	.L20		#
# basic.c:309: 			dest--;
	ld.w	r0, [r13 + (-4)]	# tmp45, dest
	add.w	r0, -1 #111	# tmp44,
	st.w	[r13 + (-4)], r0	# dest, tmp44
# basic.c:310: 			txtpos--;
	ld.w	r0, [txtpos]	# txtpos.17_13, txtpos
	add.w	r0, -1 #111	# _14,
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:306: 			*dest = *txtpos;
	j	.L18		#
.L20:
# basic.c:308: 				break;
	nop	
# basic.c:312: 		txtpos = dest;
	ld.w	r0, [r13 + (-4)]	# tmp46, dest
	st.w	[txtpos], r0	# txtpos, tmp46
# basic.c:314: }
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
# basic.c:318: 	unsigned char *line = program_start;
	ld.w	r0, [program_start]	# tmp35, program_start
	st.w	[r13 + (-4)], r0	# line, tmp35
.L25:
# basic.c:321: 		if (line == program_end)
	ld.w	r0, [program_end]	# program_end.18_1, program_end
# basic.c:321: 		if (line == program_end)
	ld.w	r1, [r13 + (-4)]	# tmp36, line
	cmp.w	r1, r0	# tmp36, program_end.18_1
	jnz	.L22		#
# basic.c:322: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L23		#
.L22:
# basic.c:324: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [r13 + (-4)]	# tmp37, line
	ld.w	r1, [r0]	# _2, MEM[(LINENUM *)line_8]
# basic.c:324: 		if (((LINENUM *)line)[0] >= linenum)
	ld.w	r0, [linenum]	# linenum.19_3, linenum
# basic.c:324: 		if (((LINENUM *)line)[0] >= linenum)
	cmp.w	r1, r0	# _2, linenum.20_4
	js	.L24		#
# basic.c:325: 			return line;
	ld.w	r0, [r13 + (-4)]	# _9, line
	j	.L23		#
.L24:
# basic.c:328: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp38, line
	add.w	r0, 4 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
	zex.b	r1, r0	# _7, _6
# basic.c:328: 		line += line[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-4)]	# tmp40, line
	add.w	r0, r1 #222	# tmp39, _7
	st.w	[r13 + (-4)], r0	# line, tmp39
# basic.c:321: 		if (line == program_end)
	j	.L25		#
.L23:
# basic.c:330: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	findline, .-findline
	.section	.rodata
	.p2align	2
.LC0:
	.string	"%d "
	.text
	.p2align	1
	.global	printline
	.type	printline, @function
printline:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:336: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [list_line]	# list_line.21_1, list_line
# basic.c:336: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [r0]	# tmp38, MEM[(LINENUM *)list_line.21_1]
	st.w	[r13 + (-4)], r0	# line_num, tmp38
# basic.c:337: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.22_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:340: 	printf("%d ", line_num);
	mov.w	r0, sp	# tmp39,
	ld.w	r1, [r13 + (-4)]	# tmp40, line_num
	st.w	[r0 + (4)], r1	#, tmp40
	mov.w	r1, .LC0	# tmp41,
	st.w	[r0], r1	#, tmp41
	call	printf		#
# basic.c:341: 	while (*list_line != NL)
	j	.L27		#
.L28:
# basic.c:343: 		put_char(*list_line);
	ld.w	r0, [list_line]	# list_line.23_4, list_line
	ld.b	r0, [r0]	# _5, *list_line.23_4
# basic.c:343: 		put_char(*list_line);
	zex.b	r0, r0	# _6, _5
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, _6
	call	put_char		#
# basic.c:344: 		list_line++;
	ld.w	r0, [list_line]	# list_line.24_7, list_line
	add.w	r0, 1 #111	# _8,
	st.w	[list_line], r0	# list_line, _8
.L27:
# basic.c:341: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.25_9, list_line
	ld.b	r0, [r0]	# _10, *list_line.25_9
# basic.c:341: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp43, _10
	mov.w	r0, 10	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L28		#
# basic.c:346: 	list_line++;
	ld.w	r0, [list_line]	# list_line.26_11, list_line
	add.w	r0, 1 #111	# _12,
	st.w	[list_line], r0	# list_line, _12
# basic.c:347: 	printf("\n");
	mov.w	r1, sp	# tmp45,
	mov.w	r0, 10	# tmp46,
	st.w	[r1], r0	#, tmp46
	call	putchar		#
# basic.c:348: }
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
# basic.c:352: 	VAR num = 0;
	xor.w	r0, r0	# tmp41
	st.w	[r13 + (-8)], r0	# num, tmp41
# basic.c:353: 	ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.27_1, txtpos
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, txtpos.27_1
	call	ignore_blanks		#
# basic.c:355: 	while (*txtpos >= '0' && *txtpos <= '9')
	j	.L30		#
.L34:
# basic.c:358: 		if (num >= 0xFFFFFFFF / 10)
	mov.w	r0, 1305267405	# tmp43,
	st.w	[sp + (4)], r0	#, tmp43
	ld.w	r0, [r13 + (-8)]	# tmp44, num
	st.w	[sp], r0	#, tmp44
	call	__gesf2		#
	mov.w	r1, r0	# tmp45,
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# tmp45, tmp46
	jss	.L37		#
# basic.c:360: 			num = 0xFFFFFFFF;
	mov.w	r0, 1333788672	# tmp47,
	st.w	[r13 + (-8)], r0	# num, tmp47
# basic.c:361: 			break;
	j	.L33		#
.L37:
# basic.c:364: 		num = num * 10 + *txtpos - '0';
	mov.w	r0, 1092616192	# tmp48,
	st.w	[sp + (4)], r0	#, tmp48
	ld.w	r0, [r13 + (-8)]	# tmp49, num
	st.w	[sp], r0	#, tmp49
	call	__mulsf3		#
	mov.w	r1, r0	# tmp50,
	mov.w	r6, r1	# _2, tmp50
# basic.c:364: 		num = num * 10 + *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.28_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.28_3
	zex.b	r0, r0	# _5, _4
# basic.c:364: 		num = num * 10 + *txtpos - '0';
	st.w	[sp], r0	#, _5
	call	__floatsisf		#
	mov.w	r1, r0	# _6,
	mov.w	r0, r6	# tmp52, _2
	st.w	[sp + (4)], r1	#, tmp51
	st.w	[sp], r0	#, tmp52
	call	__addsf3		#
	mov.w	r1, r0	# tmp53,
	mov.w	r0, r1	# _7, tmp53
# basic.c:364: 		num = num * 10 + *txtpos - '0';
	mov.w	r1, 1111490560	# tmp54,
	st.w	[sp + (4)], r1	#, tmp54
	st.w	[sp], r0	#, tmp55
	call	__subsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-8)], r0	# num, tmp57
# basic.c:365: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.29_8, txtpos
	add.w	r0, 1 #111	# _9,
	st.w	[txtpos], r0	# txtpos, _9
.L30:
# basic.c:355: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.30_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.30_10
# basic.c:355: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp58, _11
	mov.w	r0, 47	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jse	.L33		#
# basic.c:355: 	while (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.31_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.31_12
# basic.c:355: 	while (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp60, _13
	mov.w	r0, 57	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jse	.L34		#
.L33:
# basic.c:367: 	return	num;
	ld.w	r0, [r13 + (-8)]	# _23, num
	mov.w	r1, r0	# <retval>, _23
# basic.c:368: }
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
# basic.c:380: 	linelen = 0;
	xor.w	r0, r0	# tmp98
	st.b	[r13 + (-1)], r0	# linelen, tmp98
# basic.c:381: 	while (txtpos[linelen] != NL)
	j	.L39		#
.L40:
# basic.c:382: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.32_1, linelen
	add.w	r0, 1 #111	# tmp99,
	st.b	[r13 + (-1)], r0	# linelen, tmp100
.L39:
# basic.c:381: 	while (txtpos[linelen] != NL)
	ld.w	r0, [txtpos]	# txtpos.33_2, txtpos
	ld.b	r1, [r13 + (-1)]	# _3, linelen
	add.w	r0, r1 #222	# _4, _3
	ld.b	r0, [r0]	# _5, *_4
# basic.c:381: 	while (txtpos[linelen] != NL)
	zex.b	r1, r0	# tmp101, _5
	mov.w	r0, 10	# tmp102,
	cmp.w	r1, r0	# tmp101, tmp102
	jnz	.L40		#
# basic.c:383: 	linelen++; // Include the NL in the line length
	ld.b	r0, [r13 + (-1)]	# linelen.34_6, linelen
	add.w	r0, 1 #111	# tmp103,
	st.b	[r13 + (-1)], r0	# linelen, tmp104
# basic.c:384: 	linelen += sizeof(LINENUM) + sizeof(char); // Add space for the line number and line length
	ld.b	r0, [r13 + (-1)]	# tmp105, linelen
	add.w	r0, 5 #111	# tmp106,
	st.b	[r13 + (-1)], r0	# linelen, tmp107
# basic.c:387: 	txtpos -= sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [txtpos]	# txtpos.35_7, txtpos
	add.w	r0, -5 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:390: 	l = (int)txtpos;
	ld.w	r0, [txtpos]	# txtpos.36_9, txtpos
# basic.c:390: 	l = (int)txtpos;
	st.w	[r13 + (-12)], r0	# l, txtpos.36_9
# basic.c:391: 	if (l % 2 == 1)
	ld.w	r0, [r13 + (-12)]	# tmp108, l
	mov.w	r1, -2147483647	# tmp110,
	and.w	r0, r1	# tmp109, tmp110
	xor.w	r1, r1	# tmp111
	cmp.w	r0, r1	# tmp109, tmp111
	jges	.L41		#
	add.w	r0, -1 #111	# tmp109,
	mov.w	r1, -2	# tmp112,
	or.w	r0, r1	# tmp109, tmp112
	add.w	r0, 1 #111	# tmp109,
.L41:
	mov.w	r1, r0	# _10, tmp109
# basic.c:391: 	if (l % 2 == 1)
	mov.w	r0, 1	# tmp113,
	cmp.w	r1, r0	# _10, tmp113
	jnz	.L42		#
# basic.c:393: 		txtpos--;
	ld.w	r0, [txtpos]	# txtpos.37_11, txtpos
	add.w	r0, -1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:394: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	ld.w	r0, [txtpos]	# txtpos.38_13, txtpos
	add.w	r0, 5 #111	# _14,
# basic.c:394: 		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
	mov.b	r1, 32	# tmp114,
	st.b	[r0], r1	# *_14, tmp114
# basic.c:395: 		linelen++;
	ld.b	r0, [r13 + (-1)]	# linelen.39_15, linelen
	add.w	r0, 1 #111	# tmp115,
	st.b	[r13 + (-1)], r0	# linelen, tmp116
.L42:
# basic.c:398: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r1, [linenum]	# linenum.40_16, linenum
# basic.c:398: 	*((LINENUM *)txtpos) = linenum;
	ld.w	r0, [txtpos]	# txtpos.41_17, txtpos
# basic.c:398: 	*((LINENUM *)txtpos) = linenum;
	st.w	[r0], r1	# MEM[(LINENUM *)txtpos.41_17], linenum.42_18
# basic.c:399: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.w	r0, [txtpos]	# txtpos.43_19, txtpos
	add.w	r0, 4 #111	# _20,
# basic.c:399: 	txtpos[sizeof(LINENUM)] = linelen;
	ld.b	r1, [r13 + (-1)]	# tmp117, linelen
	st.b	[r0], r1	# *_20, tmp117
# basic.c:403: 	start = findline();
	call	findline		#
	st.w	[r13 + (-8)], r0	# start,
# basic.c:406: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [program_end]	# program_end.44_21, program_end
# basic.c:406: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r1, [r13 + (-8)]	# tmp118, start
	cmp.w	r1, r0	# tmp118, program_end.44_21
	jz	.L43		#
# basic.c:406: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [r13 + (-8)]	# tmp119, start
	ld.w	r1, [r0]	# _22, MEM[(LINENUM *)start_110]
# basic.c:406: 	if (start != program_end && *((LINENUM *)start) == linenum)
	ld.w	r0, [linenum]	# linenum.45_23, linenum
# basic.c:406: 	if (start != program_end && *((LINENUM *)start) == linenum)
	cmp.w	r1, r0	# _22, linenum.46_24
	jnz	.L43		#
# basic.c:411: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp120, start
	add.w	r0, 4 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
	zex.b	r1, r0	# _27, _26
# basic.c:411: 		from = start + start[sizeof(LINENUM)];
	ld.w	r0, [r13 + (-8)]	# tmp122, start
	add.w	r0, r1 #222	# tmp121, _27
	st.w	[r13 + (-24)], r0	# from, tmp121
# basic.c:412: 		dest = start;
	ld.w	r0, [r13 + (-8)]	# tmp123, start
	st.w	[r13 + (-20)], r0	# dest, tmp123
# basic.c:414: 		tomove = program_end - from;
	ld.w	r0, [program_end]	# program_end.47_28, program_end
	ld.w	r1, [r13 + (-24)]	# tmp124, from
	sub.w	r0, r1 #222	# _29, tmp124
# basic.c:414: 		tomove = program_end - from;
	st.w	[r13 + (-28)], r0	# tomove, _29
# basic.c:415: 		while (tomove > 0)
	j	.L44		#
.L45:
# basic.c:417: 			*dest = *from;
	ld.w	r0, [r13 + (-24)]	# tmp125, from
	ld.b	r1, [r0]	# _30, *from_82
# basic.c:417: 			*dest = *from;
	ld.w	r0, [r13 + (-20)]	# tmp126, dest
	st.b	[r0], r1	# *dest_81, _30
# basic.c:418: 			from++;
	ld.w	r0, [r13 + (-24)]	# tmp128, from
	add.w	r0, 1 #111	# tmp127,
	st.w	[r13 + (-24)], r0	# from, tmp127
# basic.c:419: 			dest++;
	ld.w	r0, [r13 + (-20)]	# tmp130, dest
	add.w	r0, 1 #111	# tmp129,
	st.w	[r13 + (-20)], r0	# dest, tmp129
# basic.c:420: 			tomove--;
	ld.w	r0, [r13 + (-28)]	# tmp132, tomove
	add.w	r0, -1 #111	# tmp131,
	st.w	[r13 + (-28)], r0	# tomove, tmp131
.L44:
# basic.c:415: 		while (tomove > 0)
	ld.w	r1, [r13 + (-28)]	# tmp133, tomove
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jnz	.L45		#
# basic.c:422: 		program_end = dest;
	ld.w	r0, [r13 + (-20)]	# tmp135, dest
	st.w	[program_end], r0	# program_end, tmp135
.L43:
# basic.c:425: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	ld.w	r0, [txtpos]	# txtpos.48_31, txtpos
	add.w	r0, 5 #111	# _32,
	ld.b	r0, [r0]	# _33, *_32
# basic.c:425: 	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	zex.b	r1, r0	# tmp136, _33
	mov.w	r0, 10	# tmp137,
	cmp.w	r1, r0	# tmp136, tmp137
	jz	.L58		#
# basic.c:432: 	first_time = 1; // odd address hack
	mov.w	r0, 1	# tmp138,
	st.w	[r13 + (-16)], r0	# first_time, tmp138
# basic.c:434: 	while (linelen > 0)
	j	.L48		#
.L57:
# basic.c:440: 		space_to_make = txtpos - program_end;
	ld.w	r0, [txtpos]	# txtpos.49_34, txtpos
	ld.w	r1, [program_end]	# program_end.50_35, program_end
	sub.w	r0, r1 #222	# _36, program_end.50_35
# basic.c:440: 		space_to_make = txtpos - program_end;
	st.w	[r13 + (-44)], r0	# space_to_make, _36
# basic.c:442: 		if (space_to_make > linelen)
	ld.b	r0, [r13 + (-1)]	# _37, linelen
# basic.c:442: 		if (space_to_make > linelen)
	ld.w	r1, [r13 + (-44)]	# tmp139, space_to_make
	cmp.w	r1, r0	# tmp139, _37
	jse	.L49		#
# basic.c:443: 			space_to_make = linelen;
	ld.b	r0, [r13 + (-1)]	# tmp140, linelen
	st.w	[r13 + (-44)], r0	# space_to_make, tmp140
.L49:
# basic.c:444: 		newEnd = program_end + space_to_make;
	ld.w	r0, [program_end]	# program_end.51_38, program_end
# basic.c:444: 		newEnd = program_end + space_to_make;
	ld.w	r1, [r13 + (-44)]	# tmp142, space_to_make
	add.w	r0, r1 #222	# tmp141, tmp142
	st.w	[r13 + (-48)], r0	# newEnd, tmp141
# basic.c:445: 		tomove = program_end - start;
	ld.w	r0, [program_end]	# program_end.52_39, program_end
	ld.w	r1, [r13 + (-8)]	# tmp143, start
	sub.w	r0, r1 #222	# _40, tmp143
# basic.c:445: 		tomove = program_end - start;
	st.w	[r13 + (-32)], r0	# tomove, _40
# basic.c:449: 		from = program_end;
	ld.w	r0, [program_end]	# tmp144, program_end
	st.w	[r13 + (-36)], r0	# from, tmp144
# basic.c:450: 		dest = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp145, newEnd
	st.w	[r13 + (-40)], r0	# dest, tmp145
# basic.c:451: 		while (tomove > 0)
	j	.L50		#
.L51:
# basic.c:453: 			from--;
	ld.w	r0, [r13 + (-36)]	# tmp147, from
	add.w	r0, -1 #111	# tmp146,
	st.w	[r13 + (-36)], r0	# from, tmp146
# basic.c:454: 			dest--;
	ld.w	r0, [r13 + (-40)]	# tmp149, dest
	add.w	r0, -1 #111	# tmp148,
	st.w	[r13 + (-40)], r0	# dest, tmp148
# basic.c:455: 			*dest = *from;
	ld.w	r0, [r13 + (-36)]	# tmp150, from
	ld.b	r1, [r0]	# _41, *from_143
# basic.c:455: 			*dest = *from;
	ld.w	r0, [r13 + (-40)]	# tmp151, dest
	st.b	[r0], r1	# *dest_144, _41
# basic.c:456: 			tomove--;
	ld.w	r0, [r13 + (-32)]	# tmp153, tomove
	add.w	r0, -1 #111	# tmp152,
	st.w	[r13 + (-32)], r0	# tomove, tmp152
.L50:
# basic.c:451: 		while (tomove > 0)
	ld.w	r1, [r13 + (-32)]	# tmp154, tomove
	xor.w	r0, r0	# tmp155
	cmp.w	r1, r0	# tmp154, tmp155
	jnz	.L51		#
# basic.c:459: 		l = 0;
	xor.w	r0, r0	# tmp156
	st.w	[r13 + (-12)], r0	# l, tmp156
# basic.c:460: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r1, [r13 + (-16)]	# tmp157, first_time
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jz	.L52		#
# basic.c:460: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	ld.w	r0, [txtpos]	# txtpos.53_42, txtpos
	add.w	r0, 5 #111	# _43,
	ld.b	r0, [r0]	# _44, *_43
# basic.c:460: 		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
	zex.b	r1, r0	# tmp159, _44
	mov.w	r0, 32	# tmp160,
	cmp.w	r1, r0	# tmp159, tmp160
	jnz	.L52		#
# basic.c:465: 			k = txtpos[sizeof(LINENUM)];
	ld.w	r0, [txtpos]	# txtpos.54_45, txtpos
	add.w	r0, 4 #111	# _46,
	ld.b	r0, [r0]	# _47, *_46
# basic.c:465: 			k = txtpos[sizeof(LINENUM)];
	st.b	[r13 + (-49)], r0	# k, _47
# basic.c:466: 			k -= sizeof(LINENUM) + sizeof(char); // actual length of line
	ld.b	r0, [r13 + (-49)]	# k.55_48, k
	add.w	r0, -5 #111	# tmp161,
	st.b	[r13 + (-49)], r0	# k, _49
# basic.c:467: 			for (l = 0; l < k; l++)
	xor.w	r0, r0	# tmp162
	st.w	[r13 + (-12)], r0	# l, tmp162
# basic.c:467: 			for (l = 0; l < k; l++)
	j	.L53		#
.L54:
# basic.c:469: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r1, [txtpos]	# txtpos.56_50, txtpos
	ld.w	r0, [r13 + (-12)]	# l.57_51, l
	add.w	r0, 6 #111	# _52,
	add.w	r1, r0 #222	# _53, _52
# basic.c:469: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r0, [txtpos]	# txtpos.58_54, txtpos
# basic.c:469: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.w	r2, [r13 + (-12)]	# l.59_55, l
	add.w	r2, 5 #111	# _56,
# basic.c:469: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	add.w	r0, r2 #222	# _57, _56
# basic.c:469: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	ld.b	r1, [r1]	# _58, *_53
# basic.c:469: 				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
	st.b	[r0], r1	# *_57, _58
# basic.c:467: 			for (l = 0; l < k; l++)
	ld.w	r0, [r13 + (-12)]	# tmp164, l
	add.w	r0, 1 #111	# tmp163,
	st.w	[r13 + (-12)], r0	# l, tmp163
.L53:
# basic.c:467: 			for (l = 0; l < k; l++)
	ld.b	r1, [r13 + (-49)]	#, k
	sex.b	r0, r1	# _59,
# basic.c:467: 			for (l = 0; l < k; l++)
	ld.w	r1, [r13 + (-12)]	# tmp165, l
	cmp.w	r1, r0	# tmp165, _59
	jss	.L54		#
# basic.c:471: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	ld.w	r0, [txtpos]	# txtpos.60_60, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _61,
	add.w	r1, 3 #111	# _62,
	add.w	r0, r1 #222	# _63, _62
# basic.c:471: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
	mov.b	r1, 32	# tmp166,
	st.b	[r0], r1	# *_63, tmp166
# basic.c:472: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	ld.w	r0, [txtpos]	# txtpos.61_64, txtpos
	ld.b	r2, [r13 + (-49)]	#, k
	sex.b	r1, r2	# _65,
# basic.c:472: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r1, 4 #111	# _66,
# basic.c:472: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	add.w	r0, r1 #222	# _67, _66
# basic.c:472: 			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
	mov.b	r1, 10	# tmp167,
	st.b	[r0], r1	# *_67, tmp167
.L52:
# basic.c:477: 		for (tomove = 0; tomove < space_to_make; tomove++)
	xor.w	r0, r0	# tmp168
	st.w	[r13 + (-32)], r0	# tomove, tmp168
# basic.c:477: 		for (tomove = 0; tomove < space_to_make; tomove++)
	j	.L55		#
.L56:
# basic.c:479: 			*start = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.62_68, txtpos
	ld.b	r1, [r0]	# _69, *txtpos.62_68
# basic.c:479: 			*start = *txtpos;
	ld.w	r0, [r13 + (-8)]	# tmp169, start
	st.b	[r0], r1	# *start_77, _69
# basic.c:482: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.63_70, txtpos
	add.w	r0, 1 #111	# _71,
	st.w	[txtpos], r0	# txtpos, _71
# basic.c:483: 			start++;
	ld.w	r0, [r13 + (-8)]	# tmp171, start
	add.w	r0, 1 #111	# tmp170,
	st.w	[r13 + (-8)], r0	# start, tmp170
# basic.c:484: 			linelen--;
	ld.b	r0, [r13 + (-1)]	# linelen.64_72, linelen
	add.w	r0, -1 #111	# tmp172,
	st.b	[r13 + (-1)], r0	# linelen, tmp173
# basic.c:477: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r0, [r13 + (-32)]	# tmp175, tomove
	add.w	r0, 1 #111	# tmp174,
	st.w	[r13 + (-32)], r0	# tomove, tmp174
.L55:
# basic.c:477: 		for (tomove = 0; tomove < space_to_make; tomove++)
	ld.w	r1, [r13 + (-32)]	# tmp176, tomove
	ld.w	r0, [r13 + (-44)]	# tmp177, space_to_make
	cmp.w	r1, r0	# tmp176, tmp177
	js	.L56		#
# basic.c:486: 		program_end = newEnd;
	ld.w	r0, [r13 + (-48)]	# tmp178, newEnd
	st.w	[program_end], r0	# program_end, tmp178
# basic.c:487: 		first_time = 0;  // odd address hack
	xor.w	r0, r0	# tmp179
	st.w	[r13 + (-16)], r0	# first_time, tmp179
.L48:
# basic.c:434: 	while (linelen > 0)
	ld.b	r1, [r13 + (-1)]	# tmp180, linelen
	xor.w	r0, r0	# tmp181
	cmp.w	r1, r0	# tmp180, tmp181
	jnz	.L57		#
	j	.L38		#
.L58:
# basic.c:428: 		return;
	nop	
.L38:
# basic.c:490: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	entered_with_line_num, .-entered_with_line_num
	.section	.rodata
	.p2align	2
.LC1:
	.string	"how?"
	.text
	.p2align	1
	.global	qhow
	.type	qhow, @function
qhow:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:494: 	printf("how?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC1	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:495: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qhow, .-qhow
	.section	.rodata
	.p2align	2
.LC2:
	.string	"what?"
	.text
	.p2align	1
	.global	qwhat
	.type	qwhat, @function
qwhat:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:499: 	printf("what?\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC2	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:500: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qwhat, .-qwhat
	.section	.rodata
	.p2align	2
.LC3:
	.string	"sorry!"
	.text
	.p2align	1
	.global	qsorry
	.type	qsorry, @function
qsorry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:504: 	printf("sorry!\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC3	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:505: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	qsorry, .-qsorry
	.section	.rodata
	.p2align	2
.LC4:
	.string	"v0.52"
	.p2align	2
.LC5:
	.string	"TinyBasic %s\n"
	.p2align	2
.LC6:
	.string	"%d bytes free\n"
	.text
	.p2align	1
	.global	exec_mem
	.type	exec_mem, @function
exec_mem:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:509: 	printf("TinyBasic %s\n", kVersion);
	mov.w	r0, sp	# tmp29,
	mov.w	r1, .LC4	# tmp30,
	st.w	[r0 + (4)], r1	#, tmp30
	mov.w	r1, .LC5	# tmp31,
	st.w	[r0], r1	#, tmp31
	call	printf		#
# basic.c:510: 	printf("%d bytes free\n", variables_begin - program_end);
	ld.w	r1, [variables_begin]	# variables_begin.65_1, variables_begin
	ld.w	r0, [program_end]	# program_end.66_2, program_end
	sub.w	r1, r0 #222	# _3, program_end.66_2
	mov.w	r0, sp	# tmp32,
	st.w	[r0 + (4)], r1	#, _3
	mov.w	r1, .LC6	# tmp33,
	st.w	[r0], r1	#, tmp33
	call	printf		#
# basic.c:511: }
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
# basic.c:515: 	int i = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-4)], r0	# i, tmp45
# basic.c:516: 	table_index = 0;
	xor.w	r0, r0	# tmp46
	st.b	[table_index], r0	# table_index, tmp46
.L71:
# basic.c:520: 		if (*table == 0)
	ld.w	r0, [r13 + (8)]	# tmp47, table
	ld.b	r0, [r0]	# _1, *table_21
# basic.c:520: 		if (*table == 0)
	sex.b	r1, r0	# tmp48, _1
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L72		#
# basic.c:526: 		if (txtpos[i] == *table)
	ld.w	r0, [txtpos]	# txtpos.67_2, txtpos
	ld.w	r1, [r13 + (-4)]	# i.68_3, i
	add.w	r0, r1 #222	# _4, i.68_3
	ld.b	r0, [r0]	# _5, *_4
	zex.b	r1, r0	# _6, _5
# basic.c:526: 		if (txtpos[i] == *table)
	ld.w	r0, [r13 + (8)]	# tmp50, table
	ld.b	r0, [r0]	# _7, *table_21
	sex.b	r0, r0	# _8, _7
# basic.c:526: 		if (txtpos[i] == *table)
	cmp.w	r1, r0	# _6, _8
	jnz	.L66		#
# basic.c:531: 			i++;
	ld.w	r0, [r13 + (-4)]	# tmp52, i
	add.w	r0, 1 #111	# tmp51,
	st.w	[r13 + (-4)], r0	# i, tmp51
# basic.c:532: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp54, table
	add.w	r0, 1 #111	# tmp53,
	st.w	[r13 + (8)], r0	# table, tmp53
	j	.L71		#
.L66:
# basic.c:537: 			if (*table == 0x01)
	ld.w	r0, [r13 + (8)]	# tmp55, table
	ld.b	r0, [r0]	# _9, *table_21
# basic.c:537: 			if (*table == 0x01)
	sex.b	r1, r0	# tmp56, _9
	mov.w	r0, 1	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L69		#
# basic.c:539: 				txtpos += i;  // Advance the pointer to following the keyword
	ld.w	r0, [txtpos]	# txtpos.69_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.70_11, i
	add.w	r0, r1 #222	# _12, i.70_11
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:540: 				ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.71_13, txtpos
	mov.w	r1, sp	# tmp58,
	st.w	[r1], r0	#, txtpos.71_13
	call	ignore_blanks		#
# basic.c:541: 				return;
	j	.L63		#
.L70:
# basic.c:547: 				table++;
	ld.w	r0, [r13 + (8)]	# tmp60, table
	add.w	r0, 1 #111	# tmp59,
	st.w	[r13 + (8)], r0	# table, tmp59
.L69:
# basic.c:545: 			while (*table != 0x01)
	ld.w	r0, [r13 + (8)]	# tmp61, table
	ld.b	r0, [r0]	# _14, *table_22
# basic.c:545: 			while (*table != 0x01)
	sex.b	r1, r0	# tmp62, _14
	mov.w	r0, 1	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jnz	.L70		#
# basic.c:551: 			table++;
	ld.w	r0, [r13 + (8)]	# tmp65, table
	add.w	r0, 1 #111	# tmp64,
	st.w	[r13 + (8)], r0	# table, tmp64
# basic.c:552: 			table_index++;
	ld.b	r0, [table_index]	# table_index.72_15, table_index
	add.w	r0, 1 #111	# tmp66,
	st.b	[table_index], r0	# table_index, _19
# basic.c:553: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.75_20, txtpos
	mov.w	r1, sp	# tmp67,
	st.w	[r1], r0	#, txtpos.75_20
	call	ignore_blanks		#
# basic.c:554: 			i = 0;
	xor.w	r0, r0	# tmp68
	st.w	[r13 + (-4)], r0	# i, tmp68
# basic.c:520: 		if (*table == 0)
	j	.L71		#
.L72:
# basic.c:522: 			return;
	nop	
.L63:
# basic.c:557: }
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
# basic.c:562: 	int i = 0;
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:563: 	char delim = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.76_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.76_1
# basic.c:563: 	char delim = *txtpos;
	st.b	[r13 + (-5)], r0	# delim, _2
# basic.c:564: 	if (delim != '"' && delim != '\'')
	ld.b	r0, [r13 + (-5)]	#, delim
	sex.b	r1, r0	# tmp54,
	mov.w	r0, 34	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L74		#
# basic.c:564: 	if (delim != '"' && delim != '\'')
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r1, r2	# tmp56,
	mov.w	r0, 39	# tmp57,
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L74		#
# basic.c:565: 		return 0;
	xor.w	r0, r0	# _27
	j	.L75		#
.L74:
# basic.c:566: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.77_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:569: 	while (txtpos[i] != delim)
	j	.L76		#
.L78:
# basic.c:571: 		if (txtpos[i] == NL)
	ld.w	r0, [txtpos]	# txtpos.78_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.79_6, i
	add.w	r0, r1 #222	# _7, i.79_6
	ld.b	r0, [r0]	# _8, *_7
# basic.c:571: 		if (txtpos[i] == NL)
	zex.b	r1, r0	# tmp58, _8
	mov.w	r0, 10	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jnz	.L77		#
# basic.c:572: 			return 0;
	xor.w	r0, r0	# _27
	j	.L75		#
.L77:
# basic.c:573: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp61, i
	add.w	r0, 1 #111	# tmp60,
	st.w	[r13 + (-4)], r0	# i, tmp60
.L76:
# basic.c:569: 	while (txtpos[i] != delim)
	ld.w	r0, [txtpos]	# txtpos.80_9, txtpos
	ld.w	r1, [r13 + (-4)]	# i.81_10, i
	add.w	r0, r1 #222	# _11, i.81_10
	ld.b	r0, [r0]	# _12, *_11
	zex.b	r1, r0	# _13, _12
# basic.c:569: 	while (txtpos[i] != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _14,
# basic.c:569: 	while (txtpos[i] != delim)
	cmp.w	r1, r0	# _13, _14
	jnz	.L78		#
# basic.c:577: 	while (*txtpos != delim)
	j	.L79		#
.L80:
# basic.c:579: 		put_char(*txtpos);
	ld.w	r0, [txtpos]	# txtpos.82_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.82_15
# basic.c:579: 		put_char(*txtpos);
	zex.b	r0, r0	# _17, _16
	mov.w	r1, sp	# tmp62,
	st.w	[r1], r0	#, _17
	call	put_char		#
# basic.c:580: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.83_18, txtpos
	add.w	r0, 1 #111	# _19,
	st.w	[txtpos], r0	# txtpos, _19
.L79:
# basic.c:577: 	while (*txtpos != delim)
	ld.w	r0, [txtpos]	# txtpos.84_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.84_20
	zex.b	r1, r0	# _22, _21
# basic.c:577: 	while (*txtpos != delim)
	ld.b	r2, [r13 + (-5)]	#, delim
	sex.b	r0, r2	# _23,
# basic.c:577: 	while (*txtpos != delim)
	cmp.w	r1, r0	# _22, _23
	jnz	.L80		#
# basic.c:582: 	txtpos++; // Skip over the last delimiter
	ld.w	r0, [txtpos]	# txtpos.85_24, txtpos
	add.w	r0, 1 #111	# _25,
	st.w	[txtpos], r0	# txtpos, _25
# basic.c:584: 	return 1;
	mov.b	r0, 1	# _27,
.L75:
# basic.c:585: }
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
# basic.c:589: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:590: 	if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.86_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.86_1
# basic.c:590: 	if (*txtpos != '(')
	zex.b	r1, r0	# tmp36, _2
	mov.w	r0, 40	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jz	.L82		#
# basic.c:591: 		return 1;
	mov.w	r0, 1	# _9,
	j	.L83		#
.L82:
# basic.c:592: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.87_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:593: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:594: 	if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.88_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.88_5
# basic.c:594: 	if (*txtpos != ')')
	zex.b	r1, r0	# tmp38, _6
	mov.w	r0, 41	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L84		#
# basic.c:595: 		return 1;
	mov.w	r0, 1	# _9,
	j	.L83		#
.L84:
# basic.c:596: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.89_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:597: 	return 0;
	xor.w	r0, r0	# _9
.L83:
# basic.c:598: }
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
	sub.w	sp, 52 #111	#,
# basic.c:602: 	unsigned char f = table_index;
	ld.b	r0, [table_index]	# table_index.90_1, table_index
	st.b	[r13 + (-21)], r0	# f, table_index.90_1
# basic.c:605: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:611: 	if (*txtpos == '-') {
	ld.w	r0, [txtpos]	# txtpos.91_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.91_2
# basic.c:611: 	if (*txtpos == '-') {
	zex.b	r1, r0	# tmp118, _3
	mov.w	r0, 45	# tmp119,
	cmp.w	r1, r0	# tmp118, tmp119
	jnz	.L86		#
# basic.c:612: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.92_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:613: 		return -expr4();
	call	expr4		#
	mov.w	r1, r0	# _6,
# basic.c:613: 		return -expr4();
	mov.w	r0, -2147483648	# tmp120,
	xor.w	r1, r0	# _98, tmp120
	j	.L87		#
.L86:
# basic.c:624: 	if (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.93_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.93_7
# basic.c:624: 	if (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp121, _8
	mov.w	r0, 47	# tmp122,
	cmp.w	r1, r0	# tmp121, tmp122
	jse	.L88		#
# basic.c:624: 	if (*txtpos >= '0' && *txtpos <= '9')
	ld.w	r0, [txtpos]	# txtpos.94_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.94_9
# basic.c:624: 	if (*txtpos >= '0' && *txtpos <= '9')
	zex.b	r1, r0	# tmp123, _10
	mov.w	r0, 57	# tmp124,
	cmp.w	r1, r0	# tmp123, tmp124
	jg	.L88		#
# basic.c:626: 		VAR a = 0;
	xor.w	r0, r0	# tmp125
	st.w	[r13 + (-8)], r0	# a, tmp125
# basic.c:627: 		int decimals = 0;
	xor.w	r0, r0	# tmp126
	st.w	[r13 + (-12)], r0	# decimals, tmp126
# basic.c:628: 		float dec = 0.1f;
	mov.w	r0, 1036831949	# tmp127,
	st.w	[r13 + (-16)], r0	# dec, tmp127
.L93:
# basic.c:630: 			if (*txtpos == '.') 
	ld.w	r0, [txtpos]	# txtpos.95_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.95_11
# basic.c:630: 			if (*txtpos == '.') 
	zex.b	r1, r0	# tmp128, _12
	mov.w	r0, 46	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jnz	.L89		#
# basic.c:632: 				decimals = 1;
	mov.w	r0, 1	# tmp130,
	st.w	[r13 + (-12)], r0	# decimals, tmp130
	j	.L90		#
.L89:
# basic.c:636: 				if (decimals)
	ld.w	r1, [r13 + (-12)]	# tmp131, decimals
	xor.w	r0, r0	# tmp132
	cmp.w	r1, r0	# tmp131, tmp132
	jz	.L91		#
# basic.c:638: 					a = a + dec * (*txtpos - '0');
	ld.w	r0, [txtpos]	# txtpos.96_13, txtpos
	ld.b	r0, [r0]	# _14, *txtpos.96_13
	zex.b	r0, r0	# _15, _14
# basic.c:638: 					a = a + dec * (*txtpos - '0');
	add.w	r0, -48 #111	# _16,
# basic.c:638: 					a = a + dec * (*txtpos - '0');
	st.w	[sp], r0	#, _16
	call	__floatsisf		#
	mov.w	r2, r0	# _17,
	ld.w	r1, [r13 + (-16)]	# tmp133, dec
	mov.w	r0, r2	# tmp134, _17
	st.w	[sp + (4)], r1	#, tmp133
	st.w	[sp], r0	#, tmp134
	call	__mulsf3		#
	mov.w	r1, r0	# tmp135,
	mov.w	r0, r1	# _18, tmp135
# basic.c:638: 					a = a + dec * (*txtpos - '0');
	st.w	[sp + (4)], r0	#, tmp136
	ld.w	r0, [r13 + (-8)]	# tmp137, a
	st.w	[sp], r0	#, tmp137
	call	__addsf3		#
	mov.w	r1, r0	# tmp138,
	mov.w	r0, r1	# tmp139, tmp138
	st.w	[r13 + (-8)], r0	# a, tmp139
# basic.c:639: 					dec = dec * 0.1f;
	mov.w	r0, 1036831949	# tmp140,
	st.w	[sp + (4)], r0	#, tmp140
	ld.w	r0, [r13 + (-16)]	# tmp141, dec
	st.w	[sp], r0	#, tmp141
	call	__mulsf3		#
	mov.w	r1, r0	# tmp142,
	mov.w	r0, r1	# tmp143, tmp142
	st.w	[r13 + (-16)], r0	# dec, tmp143
	j	.L90		#
.L91:
# basic.c:642: 					a = a * 10 + (*txtpos - '0');
	mov.w	r0, 1092616192	# tmp144,
	st.w	[sp + (4)], r0	#, tmp144
	ld.w	r0, [r13 + (-8)]	# tmp145, a
	st.w	[sp], r0	#, tmp145
	call	__mulsf3		#
	mov.w	r1, r0	# tmp146,
	mov.w	r6, r1	# _19, tmp146
# basic.c:642: 					a = a * 10 + (*txtpos - '0');
	ld.w	r0, [txtpos]	# txtpos.97_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.97_20
	zex.b	r0, r0	# _22, _21
# basic.c:642: 					a = a * 10 + (*txtpos - '0');
	add.w	r0, -48 #111	# _23,
# basic.c:642: 					a = a * 10 + (*txtpos - '0');
	st.w	[sp], r0	#, _23
	call	__floatsisf		#
	mov.w	r1, r0	# _24,
# basic.c:642: 					a = a * 10 + (*txtpos - '0');
	mov.w	r0, r6	# tmp148, _19
	st.w	[sp + (4)], r1	#, tmp147
	st.w	[sp], r0	#, tmp148
	call	__addsf3		#
	mov.w	r1, r0	# tmp149,
	mov.w	r0, r1	# tmp150, tmp149
	st.w	[r13 + (-8)], r0	# a, tmp150
.L90:
# basic.c:644: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.98_25, txtpos
	add.w	r0, 1 #111	# _26,
	st.w	[txtpos], r0	# txtpos, _26
# basic.c:645: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.99_27, txtpos
	ld.b	r0, [r0]	# _28, *txtpos.99_27
# basic.c:645: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp151, _28
	mov.w	r0, 47	# tmp152,
	cmp.w	r1, r0	# tmp151, tmp152
	jse	.L92		#
# basic.c:645: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.100_29, txtpos
	ld.b	r0, [r0]	# _30, *txtpos.100_29
# basic.c:645: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp153, _30
	mov.w	r0, 57	# tmp154,
	cmp.w	r1, r0	# tmp153, tmp154
	jse	.L93		#
.L92:
# basic.c:645: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	ld.w	r0, [txtpos]	# txtpos.101_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.101_31
# basic.c:645: 		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
	zex.b	r1, r0	# tmp155, _32
	mov.w	r0, 46	# tmp156,
	cmp.w	r1, r0	# tmp155, tmp156
	jz	.L93		#
# basic.c:649: 		return a;
	ld.w	r1, [r13 + (-8)]	# _98, a
	j	.L87		#
.L88:
# basic.c:656: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.102_33, txtpos
	ld.b	r0, [r0]	# _34, *txtpos.102_33
# basic.c:656: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp157, _34
	mov.w	r0, 64	# tmp158,
	cmp.w	r1, r0	# tmp157, tmp158
	jse	.L94		#
# basic.c:656: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	ld.w	r0, [txtpos]	# txtpos.103_35, txtpos
	ld.b	r0, [r0]	# _36, *txtpos.103_35
# basic.c:656: 	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	zex.b	r1, r0	# tmp159, _36
	mov.w	r0, 90	# tmp160,
	cmp.w	r1, r0	# tmp159, tmp160
	jg	.L94		#
# basic.c:660: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	ld.w	r0, [txtpos]	# txtpos.104_37, txtpos
	add.w	r0, 1 #111	# _38,
	ld.b	r0, [r0]	# _39, *_38
# basic.c:660: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	zex.b	r1, r0	# tmp161, _39
	mov.w	r0, 64	# tmp162,
	cmp.w	r1, r0	# tmp161, tmp162
	jse	.L95		#
# basic.c:660: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	ld.w	r0, [txtpos]	# txtpos.105_40, txtpos
	add.w	r0, 1 #111	# _41,
	ld.b	r0, [r0]	# _42, *_41
# basic.c:660: 		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
	zex.b	r1, r0	# tmp163, _42
	mov.w	r0, 90	# tmp164,
	cmp.w	r1, r0	# tmp163, tmp164
	jse	.L96		#
.L95:
# basic.c:666: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	ld.w	r0, [variables_begin]	# variables_begin.106_43, variables_begin
# basic.c:666: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	ld.w	r1, [txtpos]	# txtpos.107_44, txtpos
	ld.b	r1, [r1]	# _45, *txtpos.107_44
# basic.c:666: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	zex.b	r1, r1	# _46, _45
	mov.w	r2, 1073741759	# tmp165,
	add.w	r1, r2 #222	# _47, tmp165
	mov.w	r2, 2	# tmp166,
	shl.w	r1, r2	# _48, tmp166
	add.w	r0, r1 #222	# _49, _48
# basic.c:666: 			val = ((VAR *)variables_begin)[*txtpos - 'A'];
	ld.w	r0, [r0]	# tmp167, *_49
	st.w	[r13 + (-28)], r0	# val, tmp167
# basic.c:667: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.108_50, txtpos
	add.w	r0, 1 #111	# _51,
	st.w	[txtpos], r0	# txtpos, _51
# basic.c:668: 			return val;
	ld.w	r1, [r13 + (-28)]	# _98, val
	j	.L87		#
.L96:
# basic.c:672: 		scantable(func_tab);
	mov.w	r1, sp	# tmp168,
	mov.w	r0, func_tab	# tmp169,
	st.w	[r1], r0	#, tmp169
	call	scantable		#
# basic.c:678: 		if (table_index == FUNC_UNKNOWN)
	ld.b	r0, [table_index]	# table_index.109_52, table_index
# basic.c:678: 		if (table_index == FUNC_UNKNOWN)
	sex.b	r1, r0	# tmp170, table_index.109_52
	mov.w	r0, 20	# tmp171,
	cmp.w	r1, r0	# tmp170, tmp171
	jz	.L128		#
# basic.c:681: 		switch(table_index)
	ld.b	r0, [table_index]	# table_index.110_53, table_index
	sex.b	r0, r0	# _54, table_index.110_53
	mov.w	r1, 15	# tmp172,
	cmp.w	r0, r1	# _54, tmp172
	jz	.L99		#
	mov.w	r1, 15	# tmp173,
	cmp.w	r0, r1	# _54, tmp173
	jgs	.L100		#
	mov.w	r1, 14	# tmp174,
	cmp.w	r0, r1	# _54, tmp174
	jz	.L101		#
	mov.w	r1, 14	# tmp175,
	cmp.w	r0, r1	# _54, tmp175
	jgs	.L100		#
	mov.w	r1, 5	# tmp176,
	cmp.w	r0, r1	# _54, tmp176
	jz	.L102		#
	mov.w	r1, 6	# tmp177,
	cmp.w	r0, r1	# _54, tmp177
	jz	.L103		#
	j	.L100		#
.L102:
# basic.c:684: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _55,
# basic.c:684: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp178
	cmp.w	r1, r0	# _55, tmp178
	jnz	.L129		#
# basic.c:686: 			return getc();
	call	getc		#
	st.w	[sp], r0	#, _56
	call	__floatsisf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L103:
# basic.c:688: 			if (check_no_arg_func())
	call	check_no_arg_func		#
	mov.w	r1, r0	# _57,
# basic.c:688: 			if (check_no_arg_func())
	xor.w	r0, r0	# tmp179
	cmp.w	r1, r0	# _57, tmp179
	jnz	.L130		#
# basic.c:690: 			return is_key_pressed();
	call	is_key_pressed		#
	st.w	[sp], r0	#, _58
	call	__floatsisf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L101:
# basic.c:692: 			return M_PI;
	mov.w	r1, 1078530011	# _98,
	j	.L87		#
.L99:
# basic.c:694: 			return M_E;
	mov.w	r1, 1076754516	# _98,
	j	.L87		#
.L100:
# basic.c:697: 		f = table_index;
	ld.b	r0, [table_index]	# table_index.111_59, table_index
	st.b	[r13 + (-21)], r0	# f, table_index.111_59
# basic.c:699: 		if (*txtpos != '(')
	ld.w	r0, [txtpos]	# txtpos.112_60, txtpos
	ld.b	r0, [r0]	# _61, *txtpos.112_60
# basic.c:699: 		if (*txtpos != '(')
	zex.b	r1, r0	# tmp180, _61
	mov.w	r0, 40	# tmp181,
	cmp.w	r1, r0	# tmp180, tmp181
	jnz	.L131		#
# basic.c:702: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.113_62, txtpos
	add.w	r0, 1 #111	# _63,
	st.w	[txtpos], r0	# txtpos, _63
# basic.c:703: 		expression_error = 0;
	xor.w	r0, r0	# tmp182
	st.b	[expression_error], r0	# expression_error, tmp182
# basic.c:704: 		val = expression();
	call	expression		#
	st.w	[r13 + (-28)], r0	# val,
# basic.c:705: 		if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.114_64, expression_error
# basic.c:705: 		if (expression_error)
	sex.b	r1, r0	# tmp183, expression_error.114_64
	xor.w	r0, r0	# tmp184
	cmp.w	r1, r0	# tmp183, tmp184
	jnz	.L132		#
# basic.c:708: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:713: 		VAR val2 = 0;
	xor.w	r0, r0	# tmp185
	st.w	[r13 + (-20)], r0	# val2, tmp185
# basic.c:714: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.115_65, txtpos
	ld.b	r0, [r0]	# _66, *txtpos.115_65
# basic.c:714: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp186, _66
	mov.w	r0, 41	# tmp187,
	cmp.w	r1, r0	# tmp186, tmp187
	jz	.L108		#
# basic.c:716: 			if (*txtpos == ',') 
	ld.w	r0, [txtpos]	# txtpos.116_67, txtpos
	ld.b	r0, [r0]	# _68, *txtpos.116_67
# basic.c:716: 			if (*txtpos == ',') 
	zex.b	r1, r0	# tmp188, _68
	mov.w	r0, 44	# tmp189,
	cmp.w	r1, r0	# tmp188, tmp189
	jnz	.L133		#
# basic.c:718: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.117_69, txtpos
	add.w	r0, 1 #111	# _70,
	st.w	[txtpos], r0	# txtpos, _70
# basic.c:719: 				expression_error = 0;
	xor.w	r0, r0	# tmp190
	st.b	[expression_error], r0	# expression_error, tmp190
# basic.c:720: 				val2 = expression();
	call	expression		#
	st.w	[r13 + (-20)], r0	# val2,
# basic.c:721: 				if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.118_71, expression_error
# basic.c:721: 				if (expression_error)
	sex.b	r1, r0	# tmp191, expression_error.118_71
	xor.w	r0, r0	# tmp192
	cmp.w	r1, r0	# tmp191, tmp192
	jnz	.L134		#
.L108:
# basic.c:727: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.119_72, txtpos
	add.w	r0, 1 #111	# _73,
	st.w	[txtpos], r0	# txtpos, _73
# basic.c:729: 		switch (f)
	ld.b	r0, [r13 + (-21)]	# _74, f
	mov.w	r1, 18	# tmp193,
	cmp.w	r0, r1	# _74, tmp193
	jz	.L110		#
	mov.w	r1, 18	# tmp194,
	cmp.w	r0, r1	# _74, tmp194
	jgs	.L94		#
	mov.w	r1, 17	# tmp195,
	cmp.w	r0, r1	# _74, tmp195
	jz	.L111		#
	mov.w	r1, 17	# tmp196,
	cmp.w	r0, r1	# _74, tmp196
	jgs	.L94		#
	mov.w	r1, 16	# tmp197,
	cmp.w	r0, r1	# _74, tmp197
	jz	.L112		#
	mov.w	r1, 16	# tmp198,
	cmp.w	r0, r1	# _74, tmp198
	jgs	.L94		#
	mov.w	r1, 13	# tmp199,
	cmp.w	r0, r1	# _74, tmp199
	jz	.L113		#
	mov.w	r1, 13	# tmp200,
	cmp.w	r0, r1	# _74, tmp200
	jgs	.L94		#
	mov.w	r1, 12	# tmp201,
	cmp.w	r0, r1	# _74, tmp201
	jz	.L114		#
	mov.w	r1, 12	# tmp202,
	cmp.w	r0, r1	# _74, tmp202
	jgs	.L94		#
	mov.w	r1, 11	# tmp203,
	cmp.w	r0, r1	# _74, tmp203
	jz	.L115		#
	mov.w	r1, 11	# tmp204,
	cmp.w	r0, r1	# _74, tmp204
	jgs	.L94		#
	mov.w	r1, 10	# tmp205,
	cmp.w	r0, r1	# _74, tmp205
	jz	.L116		#
	mov.w	r1, 10	# tmp206,
	cmp.w	r0, r1	# _74, tmp206
	jgs	.L94		#
	mov.w	r1, 9	# tmp207,
	cmp.w	r0, r1	# _74, tmp207
	jz	.L117		#
	mov.w	r1, 9	# tmp208,
	cmp.w	r0, r1	# _74, tmp208
	jgs	.L94		#
	mov.w	r1, 8	# tmp209,
	cmp.w	r0, r1	# _74, tmp209
	jz	.L118		#
	mov.w	r1, 8	# tmp210,
	cmp.w	r0, r1	# _74, tmp210
	jgs	.L94		#
	mov.w	r1, 7	# tmp211,
	cmp.w	r0, r1	# _74, tmp211
	jz	.L119		#
	mov.w	r1, 7	# tmp212,
	cmp.w	r0, r1	# _74, tmp212
	jgs	.L94		#
	mov.w	r1, 4	# tmp213,
	cmp.w	r0, r1	# _74, tmp213
	jz	.L120		#
	mov.w	r1, 4	# tmp214,
	cmp.w	r0, r1	# _74, tmp214
	jgs	.L94		#
	xor.w	r1, r1	# tmp215
	cmp.w	r0, r1	# _74, tmp215
	jz	.L121		#
	mov.w	r1, 1	# tmp216,
	cmp.w	r0, r1	# _74, tmp216
	jz	.L122		#
	j	.L94		#
.L121:
# basic.c:732: 				return buffer[(int)val];
	ld.w	r6, [buffer]	# buffer.120_75, buffer
# basic.c:732: 				return buffer[(int)val];
	ld.w	r0, [r13 + (-28)]	# tmp217, val
	st.w	[sp], r0	#, tmp217
	call	__fixsfsi		#
	mov.w	r1, r0	# _77, _76
# basic.c:732: 				return buffer[(int)val];
	mov.w	r0, r6	# _78, buffer.120_75
	add.w	r0, r1 #222	# _78, _77
	ld.b	r0, [r0]	# _79, *_78
	sex.b	r0, r0	# tmp218, _79
	st.w	[sp], r0	#, tmp218
	call	__floatsisf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L122:
# basic.c:734: 				if (val < 0)
	xor.w	r0, r0	# tmp219
	st.w	[sp + (4)], r0	#, tmp219
	ld.w	r0, [r13 + (-28)]	# tmp220, val
	st.w	[sp], r0	#, tmp220
	call	__ltsf2		#
	mov.w	r1, r0	# tmp221,
	xor.w	r0, r0	# tmp222
	cmp.w	r1, r0	# tmp221, tmp222
	jges	.L127		#
# basic.c:735: 					return -val;
	ld.w	r1, [r13 + (-28)]	# tmp223, val
	mov.w	r0, -2147483648	# tmp224,
	xor.w	r1, r0	# _98, tmp224
	j	.L87		#
.L127:
# basic.c:736: 				return val;
	ld.w	r1, [r13 + (-28)]	# _98, val
	j	.L87		#
.L120:
# basic.c:738: 				return(rand() % (int)val);
	call	rand		#
	mov.w	r6, r0	# _80,
# basic.c:738: 				return(rand() % (int)val);
	ld.w	r0, [r13 + (-28)]	# tmp225, val
	st.w	[sp], r0	#, tmp225
	call	__fixsfsi		#
	mov.w	r1, r0	# _81,
# basic.c:738: 				return(rand() % (int)val);
	mov.w	r0, r6	# _82, _80
	div.w	r0, r1	# _82, _81
mov.w	r0, r14	# _82
	st.w	[sp], r0	#, _82
	call	__floatsisf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L119:
# basic.c:740: 				return(sinf(val));
	mov.w	r1, sp	# tmp226,
	ld.w	r0, [r13 + (-28)]	# tmp227, val
	st.w	[r1], r0	#, tmp227
	call	sinf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L118:
# basic.c:742: 				return(cosf(val));
	mov.w	r1, sp	# tmp228,
	ld.w	r0, [r13 + (-28)]	# tmp229, val
	st.w	[r1], r0	#, tmp229
	call	cosf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L117:
# basic.c:744: 				return(tanf(val));
	mov.w	r1, sp	# tmp230,
	ld.w	r0, [r13 + (-28)]	# tmp231, val
	st.w	[r1], r0	#, tmp231
	call	tanf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L116:
# basic.c:746: 				return(expf(val));
	mov.w	r1, sp	# tmp232,
	ld.w	r0, [r13 + (-28)]	# tmp233, val
	st.w	[r1], r0	#, tmp233
	call	expf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L115:
# basic.c:748: 				return(logf(val));
	mov.w	r1, sp	# tmp234,
	ld.w	r0, [r13 + (-28)]	# tmp235, val
	st.w	[r1], r0	#, tmp235
	call	logf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L114:
# basic.c:750: 				return(sqrtf(val));
	mov.w	r1, sp	# tmp236,
	ld.w	r0, [r13 + (-28)]	# tmp237, val
	st.w	[r1], r0	#, tmp237
	call	sqrtf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L113:
# basic.c:752: 				return(powf(val, val2));
	mov.w	r0, sp	# tmp238,
	ld.w	r1, [r13 + (-20)]	# tmp239, val2
	st.w	[r0 + (4)], r1	#, tmp239
	ld.w	r1, [r13 + (-28)]	# tmp240, val
	st.w	[r0], r1	#, tmp240
	call	powf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L112:
# basic.c:754: 				return(atanf(val));
	mov.w	r1, sp	# tmp241,
	ld.w	r0, [r13 + (-28)]	# tmp242, val
	st.w	[r1], r0	#, tmp242
	call	atanf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L111:
# basic.c:756: 				return(asinf(val));
	mov.w	r1, sp	# tmp243,
	ld.w	r0, [r13 + (-28)]	# tmp244, val
	st.w	[r1], r0	#, tmp244
	call	asinf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L110:
# basic.c:758: 				return(acosf(val));
	mov.w	r1, sp	# tmp245,
	ld.w	r0, [r13 + (-28)]	# tmp246, val
	st.w	[r1], r0	#, tmp246
	call	acosf		#
	mov.w	r1, r0	# _98,
	j	.L87		#
.L94:
# basic.c:762: 	if (*txtpos == '(')
	ld.w	r0, [txtpos]	# txtpos.121_83, txtpos
	ld.b	r0, [r0]	# _84, *txtpos.121_83
# basic.c:762: 	if (*txtpos == '(')
	zex.b	r1, r0	# tmp247, _84
	mov.w	r0, 40	# tmp248,
	cmp.w	r1, r0	# tmp247, tmp248
	jnz	.L135		#
# basic.c:765: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.122_85, txtpos
	add.w	r0, 1 #111	# _86,
	st.w	[txtpos], r0	# txtpos, _86
# basic.c:766: 		a = expression();
	call	expression		#
	st.w	[r13 + (-32)], r0	# a,
# basic.c:767: 		if (*txtpos != ')')
	ld.w	r0, [txtpos]	# txtpos.123_87, txtpos
	ld.b	r0, [r0]	# _88, *txtpos.123_87
# basic.c:767: 		if (*txtpos != ')')
	zex.b	r1, r0	# tmp249, _88
	mov.w	r0, 41	# tmp250,
	cmp.w	r1, r0	# tmp249, tmp250
	jnz	.L136		#
# basic.c:770: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.124_89, txtpos
	add.w	r0, 1 #111	# _90,
	st.w	[txtpos], r0	# txtpos, _90
# basic.c:771: 		return a;
	ld.w	r1, [r13 + (-32)]	# _98, a
	j	.L87		#
.L128:
# basic.c:679: 			goto expr4_error;
	nop	
	j	.L98		#
.L129:
# basic.c:685: 				goto expr4_error;
	nop	
	j	.L98		#
.L130:
# basic.c:689: 				goto expr4_error;
	nop	
	j	.L98		#
.L131:
# basic.c:700: 			goto expr4_error;
	nop	
	j	.L98		#
.L132:
# basic.c:706: 			goto expr4_error;
	nop	
	j	.L98		#
.L133:
# basic.c:724: 				goto expr4_error;
	nop	
	j	.L98		#
.L134:
# basic.c:722: 					goto expr4_error;
	nop	
	j	.L98		#
.L135:
# basic.c:774: expr4_error:
	nop	
	j	.L98		#
.L136:
# basic.c:768: 			goto expr4_error;
	nop	
.L98:
# basic.c:775: 	expression_error = 1;
	mov.b	r0, 1	# tmp251,
	st.b	[expression_error], r0	# expression_error, tmp251
# basic.c:776: 	return 0;
	xor.w	r1, r1	# _98
.L87:
# basic.c:778: }
	mov.w	r0, r1	# <retval>, _98
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
# basic.c:785: 	a = expr4();
	call	expr4		#
	st.w	[r13 + (-8)], r0	# a,
# basic.c:787: 	ignore_blanks(); // fix for eg:  100 a = a + 1
	call	ignore_blanks		#
.L147:
# basic.c:791: 		if (*txtpos == '*')
	ld.w	r0, [txtpos]	# txtpos.125_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.125_1
# basic.c:791: 		if (*txtpos == '*')
	zex.b	r1, r0	# tmp42, _2
	mov.w	r0, 42	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L138		#
# basic.c:793: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.126_3, txtpos
	add.w	r0, 1 #111	# _4,
	st.w	[txtpos], r0	# txtpos, _4
# basic.c:794: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:795: 			a *= b;
	ld.w	r0, [r13 + (-12)]	# tmp44, b
	st.w	[sp + (4)], r0	#, tmp44
	ld.w	r0, [r13 + (-8)]	# tmp45, a
	st.w	[sp], r0	#, tmp45
	call	__mulsf3		#
	mov.w	r1, r0	# tmp46,
	mov.w	r0, r1	# tmp47, tmp46
	st.w	[r13 + (-8)], r0	# a, tmp47
	j	.L147		#
.L138:
# basic.c:797: 		else if (*txtpos == '/')
	ld.w	r0, [txtpos]	# txtpos.127_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.127_5
# basic.c:797: 		else if (*txtpos == '/')
	zex.b	r1, r0	# tmp48, _6
	mov.w	r0, 47	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L140		#
# basic.c:799: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.128_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:800: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:801: 			if (b != 0)
	xor.w	r0, r0	# tmp50
	st.w	[sp + (4)], r0	#, tmp50
	ld.w	r0, [r13 + (-12)]	# tmp51, b
	st.w	[sp], r0	#, tmp51
	call	__nesf2		#
	mov.w	r1, r0	# tmp52,
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L150		#
# basic.c:802: 				a /= b;
	ld.w	r0, [r13 + (-12)]	# tmp54, b
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (-8)]	# tmp55, a
	st.w	[sp], r0	#, tmp55
	call	__divsf3		#
	mov.w	r1, r0	# tmp56,
	mov.w	r0, r1	# tmp57, tmp56
	st.w	[r13 + (-8)], r0	# a, tmp57
	j	.L147		#
.L150:
# basic.c:804: 				expression_error = 1;
	mov.b	r0, 1	# tmp58,
	st.b	[expression_error], r0	# expression_error, tmp58
	j	.L147		#
.L140:
# basic.c:806: 		else if (*txtpos == '%')
	ld.w	r0, [txtpos]	# txtpos.129_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.129_9
# basic.c:806: 		else if (*txtpos == '%')
	zex.b	r1, r0	# tmp59, _10
	mov.w	r0, 37	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jnz	.L143		#
# basic.c:808: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.130_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:809: 			b = expr4();
	call	expr4		#
	st.w	[r13 + (-12)], r0	# b,
# basic.c:810: 			if (b != 0)
	xor.w	r0, r0	# tmp61
	st.w	[sp + (4)], r0	#, tmp61
	ld.w	r0, [r13 + (-12)]	# tmp62, b
	st.w	[sp], r0	#, tmp62
	call	__nesf2		#
	mov.w	r1, r0	# tmp63,
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L151		#
# basic.c:812: 				int x = (int)a % (int)b;
	ld.w	r0, [r13 + (-8)]	# tmp65, a
	st.w	[sp], r0	#, tmp65
	call	__fixsfsi		#
	mov.w	r6, r0	# _13,
# basic.c:812: 				int x = (int)a % (int)b;
	ld.w	r0, [r13 + (-12)]	# tmp66, b
	st.w	[sp], r0	#, tmp66
	call	__fixsfsi		#
	mov.w	r1, r0	# _14,
# basic.c:812: 				int x = (int)a % (int)b;
	mov.w	r0, r6	# tmp67, _13
	div.w	r0, r1	# tmp67, _14
mov.w	r0, r14	# tmp67
	st.w	[r13 + (-16)], r0	# x, tmp67
# basic.c:813: 				a = x;
	ld.w	r0, [r13 + (-16)]	# tmp68, x
	st.w	[sp], r0	#, tmp68
	call	__floatsisf		#
	mov.w	r1, r0	# tmp69,
	mov.w	r0, r1	# tmp70, tmp69
	st.w	[r13 + (-8)], r0	# a, tmp70
	j	.L147		#
.L151:
# basic.c:815: 				expression_error = 1;
	mov.b	r0, 1	# tmp71,
	st.b	[expression_error], r0	# expression_error, tmp71
	j	.L147		#
.L143:
# basic.c:818: 			return a;
	ld.w	r0, [r13 + (-8)]	# _23, a
	mov.w	r1, r0	# <retval>, _23
# basic.c:820: }
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
# basic.c:827: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.131_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.131_1
# basic.c:827: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp40, _2
	mov.w	r0, 45	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L154		#
# basic.c:827: 	if (*txtpos == '-' || *txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.132_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.132_3
# basic.c:827: 	if (*txtpos == '-' || *txtpos == '+')
	zex.b	r1, r0	# tmp42, _4
	mov.w	r0, 43	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L155		#
.L154:
# basic.c:828: 		a = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# a, tmp44
	j	.L161		#
.L155:
# basic.c:830: 		a = expr3();
	call	expr3		#
	st.w	[r13 + (-4)], r0	# a,
.L161:
# basic.c:834: 		if (*txtpos == '-')
	ld.w	r0, [txtpos]	# txtpos.133_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.133_5
# basic.c:834: 		if (*txtpos == '-')
	zex.b	r1, r0	# tmp45, _6
	mov.w	r0, 45	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L157		#
# basic.c:836: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.134_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:837: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:838: 			a -= b;
	ld.w	r0, [r13 + (-8)]	# tmp47, b
	st.w	[sp + (4)], r0	#, tmp47
	ld.w	r0, [r13 + (-4)]	# tmp48, a
	st.w	[sp], r0	#, tmp48
	call	__subsf3		#
	mov.w	r1, r0	# tmp49,
	mov.w	r0, r1	# tmp50, tmp49
	st.w	[r13 + (-4)], r0	# a, tmp50
	j	.L161		#
.L157:
# basic.c:840: 		else if (*txtpos == '+')
	ld.w	r0, [txtpos]	# txtpos.135_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.135_9
# basic.c:840: 		else if (*txtpos == '+')
	zex.b	r1, r0	# tmp51, _10
	mov.w	r0, 43	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L159		#
# basic.c:842: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.136_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:843: 			b = expr3();
	call	expr3		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:844: 			a += b;
	ld.w	r0, [r13 + (-8)]	# tmp53, b
	st.w	[sp + (4)], r0	#, tmp53
	ld.w	r0, [r13 + (-4)]	# tmp54, a
	st.w	[sp], r0	#, tmp54
	call	__addsf3		#
	mov.w	r1, r0	# tmp55,
	mov.w	r0, r1	# tmp56, tmp55
	st.w	[r13 + (-4)], r0	# a, tmp56
	j	.L161		#
.L159:
# basic.c:847: 			return a;
	ld.w	r0, [r13 + (-4)]	# _21, a
	mov.w	r1, r0	# <retval>, _21
# basic.c:849: }
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
# basic.c:856: 	a = expr2();
	call	expr2		#
	st.w	[r13 + (-4)], r0	# a,
# basic.c:863: 	if (expression_error)	return a;
	ld.b	r0, [expression_error]	# expression_error.137_1, expression_error
# basic.c:863: 	if (expression_error)	return a;
	sex.b	r1, r0	# tmp32, expression_error.137_1
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L164		#
# basic.c:863: 	if (expression_error)	return a;
	ld.w	r0, [r13 + (-4)]	# _5, a
	j	.L165		#
.L164:
# basic.c:865: 	scantable(relop_tab);
	mov.w	r1, sp	# tmp34,
	mov.w	r0, relop_tab	# tmp35,
	st.w	[r1], r0	#, tmp35
	call	scantable		#
# basic.c:871: 	if (table_index == RELOP_UNKNOWN)
	ld.b	r0, [table_index]	# table_index.138_2, table_index
# basic.c:871: 	if (table_index == RELOP_UNKNOWN)
	sex.b	r1, r0	# tmp36, table_index.138_2
	mov.w	r0, 9	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jnz	.L166		#
# basic.c:872: 		return a;
	ld.w	r0, [r13 + (-4)]	# _5, a
	j	.L165		#
.L166:
# basic.c:874: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.139_3, table_index
	sex.b	r0, r0	# _4, table_index.139_3
	mov.w	r1, 8	# tmp38,
	cmp.w	r0, r1	# _4, tmp38
	jz	.L167		#
	mov.w	r1, 8	# tmp39,
	cmp.w	r0, r1	# _4, tmp39
	jgs	.L168		#
	mov.w	r1, 7	# tmp40,
	cmp.w	r0, r1	# _4, tmp40
	jz	.L169		#
	mov.w	r1, 7	# tmp41,
	cmp.w	r0, r1	# _4, tmp41
	jgs	.L168		#
	mov.w	r1, 6	# tmp42,
	cmp.w	r0, r1	# _4, tmp42
	jz	.L170		#
	mov.w	r1, 6	# tmp43,
	cmp.w	r0, r1	# _4, tmp43
	jgs	.L168		#
	mov.w	r1, 5	# tmp44,
	cmp.w	r0, r1	# _4, tmp44
	jz	.L171		#
	mov.w	r1, 5	# tmp45,
	cmp.w	r0, r1	# _4, tmp45
	jgs	.L168		#
	mov.w	r1, 4	# tmp46,
	cmp.w	r0, r1	# _4, tmp46
	jz	.L172		#
	mov.w	r1, 4	# tmp47,
	cmp.w	r0, r1	# _4, tmp47
	jgs	.L168		#
	mov.w	r1, 3	# tmp48,
	cmp.w	r0, r1	# _4, tmp48
	jz	.L173		#
	mov.w	r1, 3	# tmp49,
	cmp.w	r0, r1	# _4, tmp49
	jgs	.L168		#
	mov.w	r1, 2	# tmp50,
	cmp.w	r0, r1	# _4, tmp50
	jz	.L174		#
	mov.w	r1, 2	# tmp51,
	cmp.w	r0, r1	# _4, tmp51
	jgs	.L168		#
	xor.w	r1, r1	# tmp52
	cmp.w	r0, r1	# _4, tmp52
	jz	.L175		#
	mov.w	r1, 1	# tmp53,
	cmp.w	r0, r1	# _4, tmp53
	jz	.L170		#
	j	.L168		#
.L175:
# basic.c:877: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:878: 		if (a >= b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp54, b
	st.w	[sp + (4)], r0	#, tmp54
	ld.w	r0, [r13 + (-4)]	# tmp55, a
	st.w	[sp], r0	#, tmp55
	call	__gesf2		#
	mov.w	r1, r0	# tmp56,
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jges	.L194		#
# basic.c:879: 		break;
	j	.L168		#
.L194:
# basic.c:878: 		if (a >= b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L170:
# basic.c:882: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:883: 		if (a != b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp58, b
	st.w	[sp + (4)], r0	#, tmp58
	ld.w	r0, [r13 + (-4)]	# tmp59, a
	st.w	[sp], r0	#, tmp59
	call	__nesf2		#
	mov.w	r1, r0	# tmp60,
	xor.w	r0, r0	# tmp61
	cmp.w	r1, r0	# tmp60, tmp61
	jnz	.L195		#
# basic.c:884: 		break;
	j	.L168		#
.L195:
# basic.c:883: 		if (a != b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L174:
# basic.c:886: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:887: 		if (a > b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp62, b
	st.w	[sp + (4)], r0	#, tmp62
	ld.w	r0, [r13 + (-4)]	# tmp63, a
	st.w	[sp], r0	#, tmp63
	call	__gtsf2		#
	mov.w	r1, r0	# tmp64,
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jgs	.L196		#
# basic.c:888: 		break;
	j	.L168		#
.L196:
# basic.c:887: 		if (a > b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L173:
# basic.c:890: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:891: 		if (a == b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp66, b
	st.w	[sp + (4)], r0	#, tmp66
	ld.w	r0, [r13 + (-4)]	# tmp67, a
	st.w	[sp], r0	#, tmp67
	call	__eqsf2		#
	mov.w	r1, r0	# tmp68,
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L197		#
# basic.c:892: 		break;
	j	.L168		#
.L197:
# basic.c:891: 		if (a == b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L172:
# basic.c:894: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:895: 		if (a <= b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp70, b
	st.w	[sp + (4)], r0	#, tmp70
	ld.w	r0, [r13 + (-4)]	# tmp71, a
	st.w	[sp], r0	#, tmp71
	call	__lesf2		#
	mov.w	r1, r0	# tmp72,
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jses	.L198		#
# basic.c:896: 		break;
	j	.L168		#
.L198:
# basic.c:895: 		if (a <= b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L171:
# basic.c:898: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:899: 		if (a < b) return 1;
	ld.w	r0, [r13 + (-8)]	# tmp74, b
	st.w	[sp + (4)], r0	#, tmp74
	ld.w	r0, [r13 + (-4)]	# tmp75, a
	st.w	[sp], r0	#, tmp75
	call	__ltsf2		#
	mov.w	r1, r0	# tmp76,
	xor.w	r0, r0	# tmp77
	cmp.w	r1, r0	# tmp76, tmp77
	jss	.L199		#
# basic.c:900: 		break;
	j	.L168		#
.L199:
# basic.c:899: 		if (a < b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L169:
# basic.c:902: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:903: 		if (a && b) return 1;
	xor.w	r0, r0	# tmp78
	st.w	[sp + (4)], r0	#, tmp78
	ld.w	r0, [r13 + (-4)]	# tmp79, a
	st.w	[sp], r0	#, tmp79
	call	__nesf2		#
	mov.w	r1, r0	# tmp80,
	xor.w	r0, r0	# tmp81
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L200		#
# basic.c:904: 		break;
	j	.L168		#
.L200:
# basic.c:903: 		if (a && b) return 1;
	xor.w	r0, r0	# tmp82
	st.w	[sp + (4)], r0	#, tmp82
	ld.w	r0, [r13 + (-8)]	# tmp83, b
	st.w	[sp], r0	#, tmp83
	call	__nesf2		#
	mov.w	r1, r0	# tmp84,
	xor.w	r0, r0	# tmp85
	cmp.w	r1, r0	# tmp84, tmp85
	jnz	.L201		#
# basic.c:904: 		break;
	j	.L168		#
.L201:
# basic.c:903: 		if (a && b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L167:
# basic.c:906: 		b = expr2();
	call	expr2		#
	st.w	[r13 + (-8)], r0	# b,
# basic.c:907: 		if (a || b) return 1;
	xor.w	r0, r0	# tmp86
	st.w	[sp + (4)], r0	#, tmp86
	ld.w	r0, [r13 + (-4)]	# tmp87, a
	st.w	[sp], r0	#, tmp87
	call	__nesf2		#
	mov.w	r1, r0	# tmp88,
	xor.w	r0, r0	# tmp89
	cmp.w	r1, r0	# tmp88, tmp89
	jnz	.L191		#
# basic.c:907: 		if (a || b) return 1;
	xor.w	r0, r0	# tmp90
	st.w	[sp + (4)], r0	#, tmp90
	ld.w	r0, [r13 + (-8)]	# tmp91, b
	st.w	[sp], r0	#, tmp91
	call	__nesf2		#
	mov.w	r1, r0	# tmp92,
	xor.w	r0, r0	# tmp93
	cmp.w	r1, r0	# tmp92, tmp93
	jnz	.L191		#
# basic.c:908: 		break;
	j	.L168		#
.L191:
# basic.c:907: 		if (a || b) return 1;
	mov.w	r0, 1065353216	# _5,
	j	.L165		#
.L168:
# basic.c:910: 	return 0;
	xor.w	r0, r0	# _5
.L165:
# basic.c:911: }
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
	sub.w	sp, 32 #111	#,
# basic.c:918: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.140_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.140_1
# basic.c:918: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp47, _2
	mov.w	r0, 64	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jse	.L203		#
# basic.c:918: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.141_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.141_3
# basic.c:918: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp49, _4
	mov.w	r0, 90	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jse	.L204		#
.L203:
# basic.c:920: 		qhow();
	call	qhow		#
# basic.c:921: 		return;
	j	.L202		#
.L204:
# basic.c:926: 	var = (VAR *)variables_begin + *txtpos - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.142_5, variables_begin
# basic.c:926: 	var = (VAR *)variables_begin + *txtpos - 'A';
	ld.w	r1, [txtpos]	# txtpos.143_6, txtpos
	ld.b	r1, [r1]	# _7, *txtpos.143_6
# basic.c:926: 	var = (VAR *)variables_begin + *txtpos - 'A';
	zex.b	r1, r1	# _8, _7
	mov.w	r2, 1073741759	# tmp51,
	add.w	r1, r2 #222	# _9, tmp51
	mov.w	r2, 2	# tmp52,
	shl.w	r1, r2	# _10, tmp52
# basic.c:926: 	var = (VAR *)variables_begin + *txtpos - 'A';
	add.w	r0, r1 #222	# tmp53, _10
	st.w	[r13 + (-4)], r0	# var, tmp53
# basic.c:932: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.144_11, txtpos
	add.w	r0, 1 #111	# _12,
	st.w	[txtpos], r0	# txtpos, _12
# basic.c:934: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:936: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.145_13, txtpos
	ld.b	r0, [r0]	# _14, *txtpos.145_13
# basic.c:936: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp54, _14
	mov.w	r0, 61	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L206		#
# basic.c:938: 		qwhat();
	call	qwhat		#
# basic.c:939: 		return;
	j	.L202		#
.L206:
# basic.c:941: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.146_15, txtpos
	add.w	r0, 1 #111	# _16,
	st.w	[txtpos], r0	# txtpos, _16
# basic.c:942: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:943: 	expression_error = 0;
	xor.w	r0, r0	# tmp56
	st.b	[expression_error], r0	# expression_error, tmp56
# basic.c:944: 	value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:945: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:952: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.147_17, expression_error
# basic.c:952: 	if (expression_error)
	sex.b	r1, r0	# tmp57, expression_error.147_17
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L207		#
# basic.c:954: 		qwhat();
	call	qwhat		#
# basic.c:955: 		return;
	j	.L202		#
.L207:
# basic.c:958: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.148_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.148_18
# basic.c:958: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp59, _19
	mov.w	r0, 10	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L208		#
# basic.c:958: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.149_20, txtpos
	ld.b	r0, [r0]	# _21, *txtpos.149_20
# basic.c:958: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp61, _21
	mov.w	r0, 58	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L208		#
# basic.c:960: 		qwhat();
	call	qwhat		#
# basic.c:961: 		return;
	j	.L202		#
.L208:
# basic.c:963: 	*var = value;
	ld.w	r0, [r13 + (-4)]	# tmp63, var
	ld.w	r1, [r13 + (-8)]	# tmp64, value
	st.w	[r0], r1	# *var_24, tmp64
.L202:
# basic.c:969: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	assignment, .-assignment
	.global	__extendsfdf2
	.section	.rodata
	.p2align	2
.LC7:
	.string	"%f"
	.text
	.p2align	1
	.global	exec_print
	.type	exec_print, @function
exec_print:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:973: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.150_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.150_1
# basic.c:973: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp61, _2
	mov.w	r0, 10	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L224		#
.L210:
# basic.c:980: 		ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.151_3, txtpos
	mov.w	r1, sp	# tmp63,
	st.w	[r1], r0	#, txtpos.151_3
	call	ignore_blanks		#
# basic.c:981: 		if (print_quoted_string())
	call	print_quoted_string		#
# basic.c:981: 		if (print_quoted_string())
	sex.b	r1, r0	# tmp64, _4
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L212		#
# basic.c:983: 			ignore_blanks(txtpos);
	ld.w	r0, [txtpos]	# txtpos.152_5, txtpos
	mov.w	r1, sp	# tmp66,
	st.w	[r1], r0	#, txtpos.152_5
	call	ignore_blanks		#
	j	.L213		#
.L212:
# basic.c:985: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.153_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.153_6
# basic.c:985: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp67, _7
	mov.w	r0, 34	# tmp68,
	cmp.w	r1, r0	# tmp67, tmp68
	jz	.L214		#
# basic.c:985: 		else if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.154_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.154_8
# basic.c:985: 		else if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp69, _9
	mov.w	r0, 39	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L215		#
.L214:
# basic.c:987: 			qwhat();
	call	qwhat		#
# basic.c:988: 			return;
	j	.L209		#
.L215:
# basic.c:993: 			expression_error = 0;
	xor.w	r0, r0	# tmp71
	st.b	[expression_error], r0	# expression_error, tmp71
# basic.c:994: 			e = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# e,
# basic.c:995: 			if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.155_10, expression_error
# basic.c:995: 			if (expression_error)
	sex.b	r1, r0	# tmp72, expression_error.155_10
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L216		#
# basic.c:997: 				qwhat();
	call	qwhat		#
# basic.c:998: 				return;
	j	.L209		#
.L216:
# basic.c:1000: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
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
# basic.c:1000: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
	mov.w	r1, 1176256512	# tmp79,
	mov.w	r0, r2	# tmp80, _12
	st.w	[sp + (4)], r1	#, tmp79
	st.w	[sp], r0	#, tmp80
	call	__divsf3		#
	mov.w	r1, r0	# tmp81,
	mov.w	r0, r1	# _13, tmp81
# basic.c:1000: 			printf("%f", roundf(e*10000.0f) / 10000.0f);
	st.w	[sp], r0	#, tmp82
	call	__extendsfdf2		#
	mov.w	r2, r0	# _14,
	mov.w	r3, r1	# _14, tmp2
	mov.w	r0, sp	# tmp83,
	mov.w	r1, r2	# tmp84, _14
	st.w	[r0 + (4)], r1	#, tmp84
	mov.w	r1, r3	# tmp85, _14
	st.w	[r0 + (8)], r1	#, tmp85
	mov.w	r1, .LC7	# tmp86,
	st.w	[r0], r1	#, tmp86
	call	printf		#
.L213:
# basic.c:1004: 		if (*txtpos == ',')
	ld.w	r0, [txtpos]	# txtpos.156_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.156_15
# basic.c:1004: 		if (*txtpos == ',')
	zex.b	r1, r0	# tmp87, _16
	mov.w	r0, 44	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L217		#
# basic.c:1005: 			txtpos++;	// Skip the comma and move onto the next
	ld.w	r0, [txtpos]	# txtpos.157_17, txtpos
	add.w	r0, 1 #111	# _18,
	st.w	[txtpos], r0	# txtpos, _18
	j	.L210		#
.L217:
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.158_19, txtpos
	ld.b	r0, [r0]	# _20, *txtpos.158_19
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp89, _20
	mov.w	r0, 59	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jnz	.L219		#
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.159_21, txtpos
	add.w	r0, 1 #111	# _22,
	ld.b	r0, [r0]	# _23, *_22
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp91, _23
	mov.w	r0, 10	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L220		#
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.160_24, txtpos
	add.w	r0, 1 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp93, _26
	mov.w	r0, 58	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L220		#
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	ld.w	r0, [txtpos]	# txtpos.161_27, txtpos
	add.w	r0, 1 #111	# _28,
	ld.b	r0, [r0]	# _29, *_28
# basic.c:1006: 		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
	zex.b	r1, r0	# tmp95, _29
	mov.w	r0, 32	# tmp96,
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L219		#
.L220:
# basic.c:1008: 			txtpos++; // This has to be the end of the print - no newline
	ld.w	r0, [txtpos]	# txtpos.162_30, txtpos
	add.w	r0, 1 #111	# _31,
	st.w	[txtpos], r0	# txtpos, _31
# basic.c:1009: 			break;
	j	.L209		#
.L219:
# basic.c:1011: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.163_32, txtpos
	ld.b	r0, [r0]	# _33, *txtpos.163_32
# basic.c:1011: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp97, _33
	mov.w	r0, 10	# tmp98,
	cmp.w	r1, r0	# tmp97, tmp98
	jz	.L221		#
# basic.c:1011: 		else if (*txtpos == NL || *txtpos == ':')
	ld.w	r0, [txtpos]	# txtpos.164_34, txtpos
	ld.b	r0, [r0]	# _35, *txtpos.164_34
# basic.c:1011: 		else if (*txtpos == NL || *txtpos == ':')
	zex.b	r1, r0	# tmp99, _35
	mov.w	r0, 58	# tmp100,
	cmp.w	r1, r0	# tmp99, tmp100
	jnz	.L222		#
.L221:
# basic.c:1013: 			printf("\n");	// The end of the print statement
	mov.w	r1, sp	# tmp101,
	mov.w	r0, 10	# tmp102,
	st.w	[r1], r0	#, tmp102
	call	putchar		#
# basic.c:1014: 			break;
	j	.L209		#
.L222:
# basic.c:1018: 			qwhat();
	call	qwhat		#
# basic.c:1019: 			return;
	j	.L209		#
.L224:
# basic.c:975: 		return;
	nop	
.L209:
# basic.c:1022: }
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
# basic.c:1028: 	linenum = testnum(); // Retuns 0 if no line found.
	call	testnum		#
	mov.w	r1, r0	# _1,
# basic.c:1028: 	linenum = testnum(); // Retuns 0 if no line found.
	mov.w	r0, r1	# tmp33, _1
	st.w	[sp], r0	#, tmp33
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1031: 	if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.165_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.165_3
# basic.c:1031: 	if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp34, _4
	mov.w	r0, 10	# tmp35,
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L226		#
# basic.c:1033: 		qwhat();
	call	qwhat		#
# basic.c:1034: 		return;
	j	.L225		#
.L226:
# basic.c:1038: 	list_line = findline();
	call	findline		#
# basic.c:1038: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _5
# basic.c:1039: 	i = 0;
	xor.w	r0, r0	# tmp36
	st.w	[r13 + (-4)], r0	# i, tmp36
# basic.c:1040: 	while (list_line < program_end)
	j	.L228		#
.L229:
# basic.c:1042: 		printline();
	call	printline		#
# basic.c:1043: 		i++;
	ld.w	r0, [r13 + (-4)]	# tmp38, i
	add.w	r0, 1 #111	# tmp37,
	st.w	[r13 + (-4)], r0	# i, tmp37
# basic.c:1044: 		if (i == 29)
	ld.w	r1, [r13 + (-4)]	# tmp39, i
	mov.w	r0, 29	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L228		#
# basic.c:1046: 			j = getc();
	call	getc		#
	st.w	[r13 + (-8)], r0	# j,
# basic.c:1047: 			i = 0;
	xor.w	r0, r0	# tmp41
	st.w	[r13 + (-4)], r0	# i, tmp41
# basic.c:1048: 			if (j == VK_ESC)
	ld.w	r1, [r13 + (-8)]	# tmp42, j
	mov.w	r0, 27	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L230		#
.L228:
# basic.c:1040: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.166_6, list_line
	ld.w	r0, [program_end]	# program_end.167_7, program_end
# basic.c:1040: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.166_6, program_end.167_7
	js	.L229		#
	j	.L225		#
.L230:
# basic.c:1049: 				break;
	nop	
.L225:
# basic.c:1052: }
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
# basic.c:1058: 	while (current_line < program_end) // Out of lines to run
	j	.L232		#
.L237:
# basic.c:1060: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.168_1, current_line
	add.w	r0, 5 #111	# _2,
# basic.c:1060: 		txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _2
.L236:
# basic.c:1063: 			res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:1064: 			if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp42, res
	mov.w	r0, 1	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L238		#
# basic.c:1066: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1067: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.169_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.169_3
# basic.c:1067: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp44, _4
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L235		#
# basic.c:1067: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.170_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.170_5
# basic.c:1067: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp46, _6
	mov.w	r0, 58	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jnz	.L235		#
# basic.c:1069: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.171_7, txtpos
	add.w	r0, 1 #111	# _8,
	st.w	[txtpos], r0	# txtpos, _8
# basic.c:1070: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1063: 			res = direct();
	j	.L236		#
.L235:
# basic.c:1073: 		if (res < 2)
	ld.w	r1, [r13 + (-4)]	# tmp48, res
	mov.w	r0, 1	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jgs	.L232		#
# basic.c:1074: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r0, [current_line]	# current_line.172_9, current_line
# basic.c:1074: 			current_line += current_line[sizeof(LINENUM)];
	ld.w	r1, [current_line]	# current_line.173_10, current_line
	add.w	r1, 4 #111	# _11,
	ld.b	r1, [r1]	# _12, *_11
	zex.b	r1, r1	# _13, _12
# basic.c:1074: 			current_line += current_line[sizeof(LINENUM)];
	add.w	r0, r1 #222	# _14, _13
	st.w	[current_line], r0	# current_line, _14
.L232:
# basic.c:1058: 	while (current_line < program_end) // Out of lines to run
	ld.w	r1, [current_line]	# current_line.174_15, current_line
	ld.w	r0, [program_end]	# program_end.175_16, program_end
# basic.c:1058: 	while (current_line < program_end) // Out of lines to run
	cmp.w	r1, r0	# current_line.174_15, program_end.175_16
	js	.L237		#
	j	.L231		#
.L238:
# basic.c:1065: 				return;
	nop	
.L231:
# basic.c:1080: }
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
# basic.c:1087: 	expression_error = 0;
	xor.w	r0, r0	# tmp37
	st.b	[expression_error], r0	# expression_error, tmp37
# basic.c:1088: 	condition = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# condition,
# basic.c:1089: 	if (expression_error || *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.176_1, expression_error
# basic.c:1089: 	if (expression_error || *txtpos == NL)
	sex.b	r1, r0	# tmp38, expression_error.176_1
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jnz	.L240		#
# basic.c:1089: 	if (expression_error || *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.177_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.177_2
# basic.c:1089: 	if (expression_error || *txtpos == NL)
	zex.b	r1, r0	# tmp40, _3
	mov.w	r0, 10	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L241		#
.L240:
# basic.c:1091: 		qhow();
	call	qhow		#
# basic.c:1092: 		return;
	j	.L239		#
.L241:
# basic.c:1094: 	if (condition != 0)
	xor.w	r0, r0	# tmp42
	st.w	[sp + (4)], r0	#, tmp42
	ld.w	r0, [r13 + (-4)]	# tmp43, condition
	st.w	[sp], r0	#, tmp43
	call	__nesf2		#
	mov.w	r1, r0	# tmp44,
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L248		#
# basic.c:1112: 	return;
	j	.L250		#
.L248:
# basic.c:1097: 			res = direct();
	call	direct		#
	st.w	[r13 + (-8)], r0	# res,
# basic.c:1098: 			if (res == 1)
	ld.w	r1, [r13 + (-8)]	# tmp46, res
	mov.w	r0, 1	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jz	.L249		#
# basic.c:1100: 			if (res == 2)
	ld.w	r1, [r13 + (-8)]	# tmp48, res
	mov.w	r0, 2	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L246		#
# basic.c:1102: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.178_4, current_line
	add.w	r0, 5 #111	# _5,
# basic.c:1102: 				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1103: 				continue;
	j	.L247		#
.L246:
# basic.c:1105: 			ignore_blanks();
	call	ignore_blanks		#
# basic.c:1106: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.179_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.179_6
# basic.c:1106: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp50, _7
	mov.w	r0, 10	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L250		#
# basic.c:1106: 			if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.180_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.180_8
# basic.c:1106: 			if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp52, _9
	mov.w	r0, 58	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L250		#
# basic.c:1108: 			txtpos++;
	ld.w	r0, [txtpos]	# txtpos.181_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1109: 			ignore_blanks();
	call	ignore_blanks		#
.L247:
# basic.c:1097: 			res = direct();
	j	.L248		#
.L249:
# basic.c:1099: 				return;
	nop	
	j	.L239		#
.L250:
# basic.c:1112: 	return;
	nop	
.L239:
# basic.c:1113: }
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
# basic.c:1120: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1121: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.182_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.182_1
# basic.c:1121: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp64, _2
	mov.w	r0, 64	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jse	.L252		#
# basic.c:1121: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.183_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.183_3
# basic.c:1121: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp66, _4
	mov.w	r0, 90	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jse	.L253		#
.L252:
# basic.c:1123: 		qwhat();
	call	qwhat		#
# basic.c:1124: 		return;
	j	.L251		#
.L253:
# basic.c:1126: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.184_5, txtpos
# basic.c:1126: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp68, *txtpos.184_5
	st.b	[r13 + (-5)], r0	# var, tmp68
# basic.c:1127: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.185_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1128: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1129: 	if (*txtpos != '=')
	ld.w	r0, [txtpos]	# txtpos.186_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.186_8
# basic.c:1129: 	if (*txtpos != '=')
	zex.b	r1, r0	# tmp69, _9
	mov.w	r0, 61	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jz	.L255		#
# basic.c:1131: 		qwhat();
	call	qwhat		#
# basic.c:1132: 		return;
	j	.L251		#
.L255:
# basic.c:1134: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.187_10, txtpos
	add.w	r0, 1 #111	# _11,
	st.w	[txtpos], r0	# txtpos, _11
# basic.c:1135: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1137: 	expression_error = 0;
	xor.w	r0, r0	# tmp71
	st.b	[expression_error], r0	# expression_error, tmp71
# basic.c:1138: 	initial = expression();
	call	expression		#
	st.w	[r13 + (-12)], r0	# initial,
# basic.c:1139: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.188_12, expression_error
# basic.c:1139: 	if (expression_error)
	sex.b	r1, r0	# tmp72, expression_error.188_12
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L256		#
# basic.c:1141: 		qwhat();
	call	qwhat		#
# basic.c:1142: 		return;
	j	.L251		#
.L256:
# basic.c:1145: 	scantable(to_tab);
	mov.w	r1, sp	# tmp74,
	mov.w	r0, to_tab	# tmp75,
	st.w	[r1], r0	#, tmp75
	call	scantable		#
# basic.c:1146: 	if (table_index != 0)
	ld.b	r0, [table_index]	# table_index.189_13, table_index
# basic.c:1146: 	if (table_index != 0)
	sex.b	r1, r0	# tmp76, table_index.189_13
	xor.w	r0, r0	# tmp77
	cmp.w	r1, r0	# tmp76, tmp77
	jz	.L257		#
# basic.c:1148: 		qwhat();
	call	qwhat		#
# basic.c:1149: 		return;
	j	.L251		#
.L257:
# basic.c:1152: 	terminal = expression();
	call	expression		#
	st.w	[r13 + (-16)], r0	# terminal,
# basic.c:1153: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.190_14, expression_error
# basic.c:1153: 	if (expression_error)
	sex.b	r1, r0	# tmp78, expression_error.190_14
	xor.w	r0, r0	# tmp79
	cmp.w	r1, r0	# tmp78, tmp79
	jz	.L258		#
# basic.c:1155: 		qwhat();
	call	qwhat		#
# basic.c:1156: 		return;
	j	.L251		#
.L258:
# basic.c:1159: 	scantable(step_tab);
	mov.w	r1, sp	# tmp80,
	mov.w	r0, step_tab	# tmp81,
	st.w	[r1], r0	#, tmp81
	call	scantable		#
# basic.c:1160: 	if (table_index == 0)
	ld.b	r0, [table_index]	# table_index.191_15, table_index
# basic.c:1160: 	if (table_index == 0)
	sex.b	r1, r0	# tmp82, table_index.191_15
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L259		#
# basic.c:1162: 		step = expression();
	call	expression		#
	st.w	[r13 + (-4)], r0	# step,
# basic.c:1163: 		if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.192_16, expression_error
# basic.c:1163: 		if (expression_error)
	sex.b	r1, r0	# tmp84, expression_error.192_16
	xor.w	r0, r0	# tmp85
	cmp.w	r1, r0	# tmp84, tmp85
	jz	.L260		#
# basic.c:1165: 			qwhat();
	call	qwhat		#
# basic.c:1166: 			return;
	j	.L251		#
.L259:
# basic.c:1170: 		step = 1;
	mov.w	r0, 1065353216	# tmp86,
	st.w	[r13 + (-4)], r0	# step, tmp86
.L260:
# basic.c:1172: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1173: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.193_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.193_17
# basic.c:1173: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp87, _18
	mov.w	r0, 10	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L261		#
# basic.c:1173: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.194_19, txtpos
	ld.b	r0, [r0]	# _20, *txtpos.194_19
# basic.c:1173: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp89, _20
	mov.w	r0, 58	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jz	.L261		#
# basic.c:1175: 		qwhat();
	call	qwhat		#
# basic.c:1176: 		return;
	j	.L251		#
.L261:
# basic.c:1179: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.b	r0, [expression_error]	# expression_error.195_21, expression_error
# basic.c:1179: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	sex.b	r1, r0	# tmp91, expression_error.195_21
	xor.w	r0, r0	# tmp92
	cmp.w	r1, r0	# tmp91, tmp92
	jnz	.L262		#
# basic.c:1179: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.196_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.196_22
# basic.c:1179: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp93, _23
	mov.w	r0, 10	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L263		#
# basic.c:1179: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	ld.w	r0, [txtpos]	# txtpos.197_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.197_24
# basic.c:1179: 	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	zex.b	r1, r0	# tmp95, _25
	mov.w	r0, 58	# tmp96,
	cmp.w	r1, r0	# tmp95, tmp96
	jnz	.L262		#
.L263:
# basic.c:1182: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.198_26, bsp
	mov.w	r1, r0	# _27, bsp.198_26
	add.w	r1, 20 #111	# _27,
# basic.c:1182: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.199_28, stack_limit
# basic.c:1182: 		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
	cmp.w	r1, r0	# _27, stack_limit.199_28
	jge	.L264		#
# basic.c:1184: 			qsorry();
	call	qsorry		#
# basic.c:1185: 			return;
	j	.L251		#
.L264:
# basic.c:1188: 		bsp -= sizeof(struct stack_for_frame);
	ld.w	r0, [bsp]	# bsp.200_29, bsp
	add.w	r0, -20 #111	# _30,
	st.w	[bsp], r0	# bsp, _30
# basic.c:1189: 		f = (struct stack_for_frame *)bsp;
	ld.w	r0, [bsp]	# tmp97, bsp
	st.w	[r13 + (-20)], r0	# f, tmp97
# basic.c:1190: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r0, [variables_begin]	# variables_begin.201_31, variables_begin
# basic.c:1190: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.b	r1, [r13 + (-5)]	# _32, var
	mov.w	r2, 1073741759	# tmp98,
	add.w	r1, r2 #222	# _33, tmp98
	mov.w	r2, 2	# tmp99,
	shl.w	r1, r2	# _34, tmp99
	add.w	r0, r1 #222	# _35, _34
# basic.c:1190: 		((VAR *)variables_begin)[var - 'A'] = initial;
	ld.w	r1, [r13 + (-12)]	# tmp100, initial
	st.w	[r0], r1	# *_35, tmp100
# basic.c:1191: 		f->frame_type = STACK_FOR_FLAG;
	ld.w	r0, [r13 + (-20)]	# tmp101, f
	mov.b	r1, 70	# tmp102,
	st.b	[r0], r1	# f_63->frame_type, tmp102
# basic.c:1192: 		f->for_var = var;
	ld.b	r1, [r13 + (-5)]	# var.202_36, var
	ld.w	r0, [r13 + (-20)]	# tmp103, f
	st.b	[r0 + (1)], r1	# f_63->for_var, var.202_36
# basic.c:1193: 		f->terminal = terminal;
	ld.w	r0, [r13 + (-20)]	# tmp104, f
	ld.w	r1, [r13 + (-16)]	# tmp105, terminal
	st.w	[r0 + (4)], r1	# f_63->terminal, tmp105
# basic.c:1194: 		f->step = step;
	ld.w	r0, [r13 + (-20)]	# tmp106, f
	ld.w	r1, [r13 + (-4)]	# tmp107, step
	st.w	[r0 + (8)], r1	# f_63->step, tmp107
# basic.c:1195: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.203_37, txtpos
	ld.w	r0, [r13 + (-20)]	# tmp108, f
	st.w	[r0 + (16)], r1	# f_63->txtpos, txtpos.203_37
# basic.c:1196: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.204_38, current_line
	ld.w	r0, [r13 + (-20)]	# tmp109, f
	st.w	[r0 + (12)], r1	# f_63->current_line, current_line.204_38
# basic.c:1202: 		return;
	j	.L251		#
.L262:
# basic.c:1204: 	qhow();
	call	qhow		#
.L251:
# basic.c:1205: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_for, .-exec_for
	.section	.rodata
	.p2align	2
.LC8:
	.string	"Stack is stuffed!"
	.text
	.p2align	1
	.global	exec_return
	.type	exec_return, @function
exec_return:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
# basic.c:1215: 	tempsp = bsp;
	ld.w	r0, [bsp]	# bsp.205_1, bsp
	st.w	[tempsp], r0	# tempsp, bsp.205_1
# basic.c:1216: 	while (tempsp < program + kRamSize - 1)
	j	.L266		#
.L280:
# basic.c:1222: 		switch (tempsp[0])
	ld.w	r0, [tempsp]	# tempsp.206_2, tempsp
	ld.b	r0, [r0]	# _3, *tempsp.206_2
	sex.b	r0, r0	# _4, _3
# basic.c:1222: 		switch (tempsp[0])
	mov.w	r1, 70	# tmp70,
	cmp.w	r0, r1	# _4, tmp70
	jz	.L267		#
	mov.w	r1, 71	# tmp71,
	cmp.w	r0, r1	# _4, tmp71
	jnz	.L268		#
# basic.c:1225: 			if (table_index == KW_RETURN)
	ld.b	r0, [table_index]	# table_index.207_5, table_index
# basic.c:1225: 			if (table_index == KW_RETURN)
	sex.b	r1, r0	# tmp72, table_index.207_5
	mov.w	r0, 13	# tmp73,
	cmp.w	r1, r0	# tmp72, tmp73
	jnz	.L269		#
# basic.c:1227: 				struct stack_gosub_frame *f = (struct stack_gosub_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp74, tempsp
	st.w	[r13 + (-12)], r0	# f, tmp74
# basic.c:1228: 				current_line = f->current_line;
	ld.w	r0, [r13 + (-12)]	# tmp75, f
	ld.w	r0, [r0 + (4)]	# _6, f_53->current_line
# basic.c:1228: 				current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _6
# basic.c:1229: 				txtpos = f->txtpos;
	ld.w	r0, [r13 + (-12)]	# tmp76, f
	ld.w	r0, [r0 + (8)]	# _7, f_53->txtpos
# basic.c:1229: 				txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1230: 				bsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.208_8, bsp
	add.w	r0, 12 #111	# _9,
	st.w	[bsp], r0	# bsp, _9
# basic.c:1231: 				return 0;
	xor.w	r0, r0	# _45
	j	.L270		#
.L269:
# basic.c:1234: 			tempsp += sizeof(struct stack_gosub_frame);
	ld.w	r0, [tempsp]	# tempsp.209_10, tempsp
	add.w	r0, 12 #111	# _11,
	st.w	[tempsp], r0	# tempsp, _11
# basic.c:1235: 			break;
	j	.L266		#
.L267:
# basic.c:1238: 			if (table_index == KW_NEXT)
	ld.b	r0, [table_index]	# table_index.210_12, table_index
# basic.c:1238: 			if (table_index == KW_NEXT)
	sex.b	r1, r0	# tmp77, table_index.210_12
	mov.w	r0, 12	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L271		#
# basic.c:1240: 				struct stack_for_frame *f = (struct stack_for_frame *)tempsp;
	ld.w	r0, [tempsp]	# tmp79, tempsp
	st.w	[r13 + (-16)], r0	# f, tmp79
# basic.c:1242: 				var = txtpos[-1];
	ld.w	r0, [txtpos]	# txtpos.211_13, txtpos
	add.w	r0, -1 #111	# _14,
	ld.b	r0, [r0]	# _15, *_14
# basic.c:1242: 				var = txtpos[-1];
	st.b	[r13 + (-5)], r0	# var, _15
# basic.c:1243: 				i = -2;
	mov.w	r0, -2	# tmp80,
	st.w	[r13 + (-4)], r0	# i, tmp80
# basic.c:1244: 				while (var == ' ') 
	j	.L272		#
.L273:
# basic.c:1246: 					var = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.212_16, txtpos
	ld.w	r1, [r13 + (-4)]	# i.213_17, i
	add.w	r0, r1 #222	# _18, i.213_17
	ld.b	r0, [r0]	# _19, *_18
# basic.c:1246: 					var = txtpos[i];
	st.b	[r13 + (-5)], r0	# var, _19
# basic.c:1247: 					i--;
	ld.w	r0, [r13 + (-4)]	# tmp82, i
	add.w	r0, -1 #111	# tmp81,
	st.w	[r13 + (-4)], r0	# i, tmp81
.L272:
# basic.c:1244: 				while (var == ' ') 
	ld.b	r0, [r13 + (-5)]	#, var
	sex.b	r1, r0	# tmp83,
	mov.w	r0, 32	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L273		#
# basic.c:1249: 				if (var == f->for_var)
	ld.w	r0, [r13 + (-16)]	# tmp85, f
	ld.b	r0, [r0 + (1)]	# _20, f_58->for_var
# basic.c:1249: 				if (var == f->for_var)
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# tmp86,
	sex.b	r0, r0	# tmp87, _20
	cmp.w	r1, r0	# tmp86, tmp87
	jnz	.L271		#
# basic.c:1251: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.w	r0, [variables_begin]	# variables_begin.214_21, variables_begin
# basic.c:1251: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	ld.b	r2, [r13 + (-5)]	#, var
	sex.b	r1, r2	# _22,
	mov.w	r2, 1073741759	# tmp88,
	add.w	r1, r2 #222	# _23, tmp88
	mov.w	r2, 2	# tmp89,
	shl.w	r1, r2	# _24, tmp89
# basic.c:1251: 					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
	add.w	r0, r1 #222	# tmp90, _24
	st.w	[r13 + (-20)], r0	# varaddr, tmp90
# basic.c:1252: 					*varaddr = *varaddr + f->step;
	ld.w	r1, [r13 + (-20)]	# tmp91, varaddr
	ld.w	r0, [r1]	# _25, *varaddr_61
# basic.c:1252: 					*varaddr = *varaddr + f->step;
	ld.w	r2, [r13 + (-16)]	# tmp92, f
	ld.w	r1, [r2 + (8)]	# _26,
# basic.c:1252: 					*varaddr = *varaddr + f->step;
	st.w	[sp + (4)], r1	#, tmp93
	st.w	[sp], r0	#, tmp94
	call	__addsf3		#
	mov.w	r2, r0	# tmp95,
	mov.w	r1, r2	# _27, tmp95
# basic.c:1252: 					*varaddr = *varaddr + f->step;
	ld.w	r0, [r13 + (-20)]	# tmp96, varaddr
	st.w	[r0], r1	# *varaddr_61, tmp97
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-16)]	# tmp98, f
	ld.w	r0, [r1 + (8)]	# _28,
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r1, r1	# tmp99
	st.w	[sp + (4)], r1	#, tmp99
	st.w	[sp], r0	#, tmp100
	call	__gtsf2		#
	mov.w	r1, r0	# tmp101,
	xor.w	r0, r0	# tmp102
	cmp.w	r1, r0	# tmp101, tmp102
	jses	.L274		#
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-20)]	# tmp103, varaddr
	ld.w	r0, [r1]	# _29, *varaddr_61
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r2, [r13 + (-16)]	# tmp104, f
	ld.w	r1, [r2 + (4)]	# _30,
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	st.w	[sp + (4)], r1	#, tmp105
	st.w	[sp], r0	#, tmp106
	call	__lesf2		#
	mov.w	r1, r0	# tmp107,
	xor.w	r0, r0	# tmp108
	cmp.w	r1, r0	# tmp107, tmp108
	jses	.L276		#
.L274:
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-16)]	# tmp109, f
	ld.w	r0, [r1 + (8)]	# _31,
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	xor.w	r1, r1	# tmp110
	st.w	[sp + (4)], r1	#, tmp110
	st.w	[sp], r0	#, tmp111
	call	__ltsf2		#
	mov.w	r1, r0	# tmp112,
	xor.w	r0, r0	# tmp113
	cmp.w	r1, r0	# tmp112, tmp113
	jges	.L277		#
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r1, [r13 + (-20)]	# tmp114, varaddr
	ld.w	r0, [r1]	# _32, *varaddr_61
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	ld.w	r2, [r13 + (-16)]	# tmp115, f
	ld.w	r1, [r2 + (4)]	# _33,
# basic.c:1254: 					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
	st.w	[sp + (4)], r1	#, tmp116
	st.w	[sp], r0	#, tmp117
	call	__gesf2		#
	mov.w	r1, r0	# tmp118,
	xor.w	r0, r0	# tmp119
	cmp.w	r1, r0	# tmp118, tmp119
	jss	.L277		#
.L276:
# basic.c:1257: 						txtpos = f->txtpos;
	ld.w	r0, [r13 + (-16)]	# tmp120, f
	ld.w	r0, [r0 + (16)]	# _34, f_58->txtpos
# basic.c:1257: 						txtpos = f->txtpos;
	st.w	[txtpos], r0	# txtpos, _34
# basic.c:1258: 						current_line = f->current_line;
	ld.w	r0, [r13 + (-16)]	# tmp121, f
	ld.w	r0, [r0 + (12)]	# _35, f_58->current_line
# basic.c:1258: 						current_line = f->current_line;
	st.w	[current_line], r0	# current_line, _35
# basic.c:1259: 						return 0;
	xor.w	r0, r0	# _45
	j	.L270		#
.L277:
# basic.c:1262: 					bsp = tempsp + sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.215_36, tempsp
	add.w	r0, 20 #111	# _37,
# basic.c:1262: 					bsp = tempsp + sizeof(struct stack_for_frame);
	st.w	[bsp], r0	# bsp, _37
# basic.c:1263: 					return 0;
	xor.w	r0, r0	# _45
	j	.L270		#
.L271:
# basic.c:1267: 			tempsp += sizeof(struct stack_for_frame);
	ld.w	r0, [tempsp]	# tempsp.216_38, tempsp
	add.w	r0, 20 #111	# _39,
	st.w	[tempsp], r0	# tempsp, _39
# basic.c:1268: 			break;
	j	.L266		#
.L268:
# basic.c:1270: 			printf("Stack is stuffed!\n");
	mov.w	r1, sp	# tmp122,
	mov.w	r0, .LC8	# tmp123,
	st.w	[r1], r0	#, tmp123
	call	puts		#
# basic.c:1271: 			return 1;
	mov.w	r0, 1	# _45,
	j	.L270		#
.L266:
# basic.c:1216: 	while (tempsp < program + kRamSize - 1)
	ld.w	r1, [program]	# program.217_40, program
	mov.w	r0, 65535	# tmp124,
	add.w	r1, r0 #222	# _41, tmp124
# basic.c:1216: 	while (tempsp < program + kRamSize - 1)
	ld.w	r0, [tempsp]	# tempsp.218_42, tempsp
# basic.c:1216: 	while (tempsp < program + kRamSize - 1)
	cmp.w	r1, r0	# _41, tempsp.218_42
	jg	.L280		#
# basic.c:1275: 	qhow();
	call	qhow		#
# basic.c:1276: 	return 1;
	mov.w	r0, 1	# _45,
.L270:
# basic.c:1277: }
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
# basic.c:1282: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1286: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.219_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.219_1
# basic.c:1286: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp36, _2
	mov.w	r0, 64	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jse	.L284		#
# basic.c:1286: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.220_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.220_3
# basic.c:1286: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp38, _4
	mov.w	r0, 90	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jse	.L285		#
.L284:
# basic.c:1291: 		qhow();
	call	qhow		#
# basic.c:1292: 		return;
	j	.L283		#
.L285:
# basic.c:1294: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.221_5, txtpos
	add.w	r0, 1 #111	# _6,
	st.w	[txtpos], r0	# txtpos, _6
# basic.c:1295: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1296: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.222_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.222_7
# basic.c:1296: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp40, _8
	mov.w	r0, 58	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L287		#
# basic.c:1296: 	if (*txtpos != ':' && *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.223_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.223_9
# basic.c:1296: 	if (*txtpos != ':' && *txtpos != NL)
	zex.b	r1, r0	# tmp42, _10
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jz	.L287		#
# basic.c:1298: 		qwhat();
	call	qwhat		#
.L287:
# basic.c:1300: 	exec_return();
	call	exec_return		#
.L283:
# basic.c:1301: }
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
# basic.c:1305: 	expression_error = 0;
	xor.w	r0, r0	# tmp39
	st.b	[expression_error], r0	# expression_error, tmp39
# basic.c:1306: 	linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:1306: 	linenum = expression();
	mov.w	r0, r1	# tmp40, _1
	st.w	[sp], r0	#, tmp40
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1307: 	if (!expression_error && *txtpos == NL)
	ld.b	r0, [expression_error]	# expression_error.224_3, expression_error
# basic.c:1307: 	if (!expression_error && *txtpos == NL)
	sex.b	r1, r0	# tmp41, expression_error.224_3
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L289		#
# basic.c:1307: 	if (!expression_error && *txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.225_4, txtpos
	ld.b	r0, [r0]	# _5, *txtpos.225_4
# basic.c:1307: 	if (!expression_error && *txtpos == NL)
	zex.b	r1, r0	# tmp43, _5
	mov.w	r0, 10	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L289		#
# basic.c:1310: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [bsp]	# bsp.226_6, bsp
	mov.w	r1, r0	# _7, bsp.226_6
	add.w	r1, 12 #111	# _7,
# basic.c:1310: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	ld.w	r0, [stack_limit]	# stack_limit.227_8, stack_limit
# basic.c:1310: 		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
	cmp.w	r1, r0	# _7, stack_limit.227_8
	jge	.L290		#
# basic.c:1312: 			qsorry();
	call	qsorry		#
# basic.c:1313: 			return;
	j	.L288		#
.L290:
# basic.c:1316: 		bsp -= sizeof(struct stack_gosub_frame);
	ld.w	r0, [bsp]	# bsp.228_9, bsp
	add.w	r0, -12 #111	# _10,
	st.w	[bsp], r0	# bsp, _10
# basic.c:1317: 		f = (struct stack_gosub_frame *)bsp;
	ld.w	r0, [bsp]	# tmp45, bsp
	st.w	[r13 + (-4)], r0	# f, tmp45
# basic.c:1318: 		f->frame_type = STACK_GOSUB_FLAG;
	ld.w	r0, [r13 + (-4)]	# tmp46, f
	mov.b	r1, 71	# tmp47,
	st.b	[r0], r1	# f_20->frame_type, tmp47
# basic.c:1319: 		f->txtpos = txtpos;
	ld.w	r1, [txtpos]	# txtpos.229_11, txtpos
	ld.w	r0, [r13 + (-4)]	# tmp48, f
	st.w	[r0 + (8)], r1	# f_20->txtpos, txtpos.229_11
# basic.c:1320: 		f->current_line = current_line;
	ld.w	r1, [current_line]	# current_line.230_12, current_line
	ld.w	r0, [r13 + (-4)]	# tmp49, f
	st.w	[r0 + (4)], r1	# f_20->current_line, current_line.230_12
# basic.c:1321: 		current_line = findline();
	call	findline		#
# basic.c:1321: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _13
# basic.c:1322: 		exec_run();
	call	exec_run		#
# basic.c:1323: 		return;
	j	.L288		#
.L289:
# basic.c:1325: 	qhow();
	call	qhow		#
.L288:
# basic.c:1327: }
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
# basic.c:1334: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1336: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.231_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.231_1
# basic.c:1336: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp47, _2
	mov.w	r0, 64	# tmp48,
	cmp.w	r1, r0	# tmp47, tmp48
	jse	.L293		#
# basic.c:1336: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.232_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.232_3
# basic.c:1336: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp49, _4
	mov.w	r0, 90	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jse	.L294		#
.L293:
# basic.c:1338: 		qwhat();
	call	qwhat		#
# basic.c:1339: 		return;
	j	.L292		#
.L294:
# basic.c:1342: 	var = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.233_5, txtpos
# basic.c:1342: 	var = *txtpos;
	ld.b	r0, [r0]	# tmp51, *txtpos.233_5
	st.b	[r13 + (-1)], r0	# var, tmp51
# basic.c:1343: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.234_6, txtpos
	add.w	r0, 1 #111	# _7,
	st.w	[txtpos], r0	# txtpos, _7
# basic.c:1344: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1346: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.235_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.235_8
# basic.c:1346: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp52, _9
	mov.w	r0, 10	# tmp53,
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L299		#
# basic.c:1346: 	if (*txtpos != NL && *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.236_10, txtpos
	ld.b	r0, [r0]	# _11, *txtpos.236_10
# basic.c:1346: 	if (*txtpos != NL && *txtpos != ':')
	zex.b	r1, r0	# tmp54, _11
	mov.w	r0, 58	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L299		#
# basic.c:1348: 		qwhat();
	call	qwhat		#
# basic.c:1349: 		return;
	j	.L292		#
.L299:
# basic.c:1354: 		tmptxtpos = txtpos;
	ld.w	r0, [txtpos]	# txtpos.237_12, txtpos
	st.w	[tmptxtpos], r0	# tmptxtpos, txtpos.237_12
# basic.c:1355: 		getln('?');
	mov.w	r1, sp	# tmp56,
	mov.w	r0, 63	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	getln		#
# basic.c:1356: 		toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1357: 		txtpos = program_end + sizeof(VAR);
	ld.w	r0, [program_end]	# program_end.238_13, program_end
	add.w	r0, 4 #111	# _14,
# basic.c:1357: 		txtpos = program_end + sizeof(VAR);
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:1358: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:1359: 		expression_error = 0;
	xor.w	r0, r0	# tmp58
	st.b	[expression_error], r0	# expression_error, tmp58
# basic.c:1360: 		value = expression();
	call	expression		#
	st.w	[r13 + (-8)], r0	# value,
# basic.c:1361: 		if (!expression_error)
	ld.b	r0, [expression_error]	# expression_error.239_15, expression_error
# basic.c:1361: 		if (!expression_error)
	sex.b	r1, r0	# tmp59, expression_error.239_15
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L301		#
# basic.c:1354: 		tmptxtpos = txtpos;
	j	.L299		#
.L301:
# basic.c:1362: 			break;
	nop	
# basic.c:1364: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r0, [variables_begin]	# variables_begin.240_16, variables_begin
# basic.c:1364: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.b	r1, [r13 + (-1)]	# _17, var
	mov.w	r2, 1073741759	# tmp61,
	add.w	r1, r2 #222	# _18, tmp61
	mov.w	r2, 2	# tmp62,
	shl.w	r1, r2	# _19, tmp62
	add.w	r0, r1 #222	# _20, _19
# basic.c:1364: 	((VAR *)variables_begin)[var - 'A'] = value;
	ld.w	r1, [r13 + (-8)]	# tmp63, value
	st.w	[r0], r1	# *_20, tmp63
# basic.c:1365: 	txtpos = tmptxtpos;
	ld.w	r0, [tmptxtpos]	# tmptxtpos.241_21, tmptxtpos
	st.w	[txtpos], r0	# txtpos, tmptxtpos.241_21
.L292:
# basic.c:1366: }
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
# basic.c:1374: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1375: 	expression_error = 0;
	xor.w	r0, r0	# tmp62
	st.b	[expression_error], r0	# expression_error, tmp62
# basic.c:1376: 	linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:1376: 	linenum = expression();
	mov.w	r0, r1	# tmp63, _1
	st.w	[sp], r0	#, tmp63
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _2
# basic.c:1377: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.242_3, expression_error
# basic.c:1377: 	if (expression_error)
	sex.b	r1, r0	# tmp64, expression_error.242_3
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L303		#
# basic.c:1379: 		qhow();
	call	qhow		#
# basic.c:1380: 		return 0;
	xor.w	r0, r0	# _33
	j	.L304		#
.L303:
# basic.c:1382: 	line = findline();
	call	findline		#
	st.w	[r13 + (-16)], r0	# line,
# basic.c:1383: 	if (line == program_end)
	ld.w	r0, [program_end]	# program_end.243_4, program_end
# basic.c:1383: 	if (line == program_end)
	ld.w	r1, [r13 + (-16)]	# tmp66, line
	cmp.w	r1, r0	# tmp66, program_end.243_4
	jnz	.L305		#
# basic.c:1385: 		qhow();
	call	qhow		#
# basic.c:1386: 		return 0;
	xor.w	r0, r0	# _33
	j	.L304		#
.L305:
# basic.c:1389: 	txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.244_5, program_end
	add.w	r0, 4 #111	# _6,
# basic.c:1389: 	txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _6
# basic.c:1390: 	txtpos[0] = 0;
	ld.w	r0, [txtpos]	# txtpos.245_7, txtpos
# basic.c:1390: 	txtpos[0] = 0;
	xor.w	r1, r1	# tmp67
	st.b	[r0], r1	# *txtpos.245_7, tmp67
# basic.c:1391: 	sprintf(txtpos, "%d ", linenum);
	ld.w	r1, [txtpos]	# txtpos.246_8, txtpos
	ld.w	r2, [linenum]	# linenum.247_9, linenum
	mov.w	r0, sp	# tmp68,
	st.w	[r0 + (8)], r2	#, linenum.247_9
	mov.w	r2, .LC0	# tmp69,
	st.w	[r0 + (4)], r2	#, tmp69
	st.w	[r0], r1	#, txtpos.246_8
	call	sprintf		#
# basic.c:1392: 	j = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.248_10, txtpos
	mov.w	r1, sp	# tmp70,
	st.w	[r1], r0	#, txtpos.248_10
	call	strlen		#
	st.w	[r13 + (-12)], r0	# j,
# basic.c:1393: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	mov.w	r0, 5	# tmp71,
	st.w	[r13 + (-8)], r0	# i, tmp71
# basic.c:1393: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	j	.L306		#
.L307:
# basic.c:1396: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-8)]	# i.249_11, i
	ld.w	r1, [r13 + (-16)]	# tmp72, line
	add.w	r1, r0 #222	# _12, i.249_11
# basic.c:1396: 		txtpos[j++] = line[i];
	ld.w	r3, [txtpos]	# txtpos.250_13, txtpos
# basic.c:1396: 		txtpos[j++] = line[i];
	ld.w	r0, [r13 + (-12)]	# j.251_14, j
	mov.w	r2, r0	# tmp73, j.251_14
	add.w	r2, 1 #111	# tmp73,
	st.w	[r13 + (-12)], r2	# j, tmp73
	mov.w	r2, r0	# j.252_15, j.251_14
# basic.c:1396: 		txtpos[j++] = line[i];
	mov.w	r0, r3	# _16, txtpos.250_13
	add.w	r0, r2 #222	# _16, j.252_15
# basic.c:1396: 		txtpos[j++] = line[i];
	ld.b	r1, [r1]	# _17, *_12
# basic.c:1396: 		txtpos[j++] = line[i];
	st.b	[r0], r1	# *_16, _17
# basic.c:1393: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-8)]	# tmp75, i
	add.w	r0, 1 #111	# tmp74,
	st.w	[r13 + (-8)], r0	# i, tmp74
.L306:
# basic.c:1393: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r0, [r13 + (-16)]	# tmp76, line
	add.w	r0, 4 #111	# _18,
	ld.b	r0, [r0]	# _19, *_18
	zex.b	r0, r0	# _20, _19
# basic.c:1393: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	add.w	r0, -1 #111	# _21,
# basic.c:1393: 	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	ld.w	r1, [r13 + (-8)]	# tmp77, i
	cmp.w	r1, r0	# tmp77, _21
	jss	.L307		#
# basic.c:1398: 	txtpos[j] = 0;
	ld.w	r0, [txtpos]	# txtpos.253_22, txtpos
	ld.w	r1, [r13 + (-12)]	# j.254_23, j
	add.w	r0, r1 #222	# _24, j.254_23
# basic.c:1398: 	txtpos[j] = 0;
	xor.w	r1, r1	# tmp78
	st.b	[r0], r1	# *_24, tmp78
# basic.c:1399: 	put_char('#');
	mov.w	r1, sp	# tmp79,
	mov.w	r0, 35	# tmp80,
	st.w	[r1], r0	#, tmp80
	call	put_char		#
# basic.c:1400: 	gets(txtpos);
	ld.w	r0, [txtpos]	# txtpos.255_25, txtpos
	mov.w	r1, sp	# tmp81,
	st.w	[r1], r0	#, txtpos.255_25
	call	gets		#
# basic.c:1402: 	i = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.256_26, txtpos
	mov.w	r1, sp	# tmp82,
	st.w	[r1], r0	#, txtpos.256_26
	call	strlen		#
	st.w	[r13 + (-8)], r0	# i,
# basic.c:1403: 	if (i % 2 == 0)
	ld.w	r1, [r13 + (-8)]	# i.257_27, i
	mov.w	r0, 1	# tmp83,
	and.w	r1, r0	# _28, tmp83
# basic.c:1403: 	if (i % 2 == 0)
	xor.w	r0, r0	# tmp84
	cmp.w	r1, r0	# _28, tmp84
	jnz	.L308		#
# basic.c:1404: 		strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.258_29, txtpos
	mov.w	r0, sp	# tmp85,
	st.w	[r0], r6	#, txtpos.258_29
	call	strlen		#
	mov.w	r1, r0	# _53, tmp86
	mov.w	r0, r6	# _54, txtpos.258_29
	add.w	r0, r1 #222	# _54, _53
	mov.b	r1, 32	# tmp87,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_54], tmp87
	xor.w	r1, r1	# tmp88
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_54], tmp88
.L308:
# basic.c:1406: 	strcat(txtpos, "\n");
	ld.w	r6, [txtpos]	# txtpos.259_30, txtpos
	mov.w	r0, sp	# tmp89,
	st.w	[r0], r6	#, txtpos.259_30
	call	strlen		#
	mov.w	r1, r0	# _56, tmp90
	mov.w	r0, r6	# _57, txtpos.259_30
	add.w	r0, r1 #222	# _57, _56
	mov.b	r1, 10	# tmp91,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_57], tmp91
	xor.w	r1, r1	# tmp92
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_57], tmp92
# basic.c:1408: 	return 3;
	mov.w	r0, 3	# _33,
.L304:
# basic.c:1409: }
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
# basic.c:1416: 	memcpy(to_print_buff, eth_buffer+off, len);
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
# basic.c:1417: 	to_print_len = len;
	ld.s	r0, [r13 + (-12)]	# _4, len
	st.w	[to_print_len], r0	# to_print_len, _4
# basic.c:1419: } 
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	my_callback, .-my_callback
	.section	.rodata
	.p2align	2
.LC9:
	.string	"Loading file %s from the ethernet network drive\n"
	.p2align	2
.LC10:
	.string	"/load:"
	.p2align	2
.LC11:
	.string	"File %s does not exist\n"
	.p2align	2
.LC12:
	.string	"size: %d\n"
	.p2align	2
.LC13:
	.string	"ETHERNET TIMEOUT"
	.text
	.p2align	1
	.global	eth_read_file
	.type	eth_read_file, @function
eth_read_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 40 #111	#,
# basic.c:1423: 	int len = 0;
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# len, tmp44
# basic.c:1424: 	int init_offset = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# init_offset, tmp45
# basic.c:1425: 	int size = 1000000;
	mov.w	r0, 1000000	# tmp46,
	st.w	[r13 + (-12)], r0	# size, tmp46
# basic.c:1426: 	int fail_count = 0;
	xor.w	r0, r0	# tmp47
	st.w	[r13 + (-16)], r0	# fail_count, tmp47
# basic.c:1427: 	printf("Loading file %s from the ethernet network drive\n", file_name);
	mov.w	r0, sp	# tmp48,
	ld.w	r1, [r13 + (12)]	# tmp49, file_name
	st.w	[r0 + (4)], r1	#, tmp49
	mov.w	r1, .LC9	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	printf		#
# basic.c:1428: 	to_print_len = 0;
	xor.w	r0, r0	# tmp51
	st.w	[to_print_len], r0	# to_print_len, tmp51
# basic.c:1429: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1429 "basic.c" 1
	irq 0

# basic.c:1430: 	browseUrl("/load:", file_name, server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp52,
	mov.w	r1, my_callback	# tmp53,
	st.w	[r0 + (16)], r1	#, tmp53
	xor.w	r1, r1	# tmp54
	st.w	[r0 + (12)], r1	#, tmp54
	mov.w	r1, server_ip	# tmp55,
	st.w	[r0 + (8)], r1	#, tmp55
	ld.w	r1, [r13 + (12)]	# tmp56, file_name
	st.w	[r0 + (4)], r1	#, tmp56
	mov.w	r1, .LC10	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	browseUrl		#
# basic.c:1432: 	while (len < size) {
	j	.L311		#
.L317:
# basic.c:1433: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp58,
	mov.w	r0, eth_buffer	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	mainLoop		#
# basic.c:1435: 		if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.260_1, to_print_len
# basic.c:1435: 		if (to_print_len > 0) {
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# to_print_len.260_1, tmp60
	jses	.L312		#
# basic.c:1436: 			if (size == 1000000) {
	ld.w	r1, [r13 + (-12)]	# tmp61, size
	mov.w	r0, 1000000	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jnz	.L313		#
# basic.c:1437: 				size = to_print_buff[3];
	ld.b	r0, [to_print_buff+3]	# _2, to_print_buff
# basic.c:1437: 				size = to_print_buff[3];
	zex.b	r0, r0	# tmp63, _2
	st.w	[r13 + (-12)], r0	# size, tmp63
# basic.c:1438: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp65, size
	mov.w	r1, 8	# tmp66,
	shl.w	r0, r1	# tmp64, tmp66
	st.w	[r13 + (-12)], r0	# size, tmp64
# basic.c:1439: 				size |= to_print_buff[2];
	ld.b	r0, [to_print_buff+2]	# _3, to_print_buff
	zex.b	r1, r0	# _4, _3
# basic.c:1439: 				size |= to_print_buff[2];
	ld.w	r0, [r13 + (-12)]	# tmp68, size
	or.w	r0, r1	# tmp67, _4
	st.w	[r13 + (-12)], r0	# size, tmp67
# basic.c:1440: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp70, size
	mov.w	r1, 8	# tmp71,
	shl.w	r0, r1	# tmp69, tmp71
	st.w	[r13 + (-12)], r0	# size, tmp69
# basic.c:1441: 				size |= to_print_buff[1];
	ld.b	r0, [to_print_buff+1]	# _5, to_print_buff
	zex.b	r1, r0	# _6, _5
# basic.c:1441: 				size |= to_print_buff[1];
	ld.w	r0, [r13 + (-12)]	# tmp73, size
	or.w	r0, r1	# tmp72, _6
	st.w	[r13 + (-12)], r0	# size, tmp72
# basic.c:1442: 				size <<= 8;
	ld.w	r0, [r13 + (-12)]	# tmp75, size
	mov.w	r1, 8	# tmp76,
	shl.w	r0, r1	# tmp74, tmp76
	st.w	[r13 + (-12)], r0	# size, tmp74
# basic.c:1443: 				size |= to_print_buff[0];
	ld.b	r0, [to_print_buff]	# _7, to_print_buff
	zex.b	r1, r0	# _8, _7
# basic.c:1443: 				size |= to_print_buff[0];
	ld.w	r0, [r13 + (-12)]	# tmp78, size
	or.w	r0, r1	# tmp77, _8
	st.w	[r13 + (-12)], r0	# size, tmp77
# basic.c:1444: 				init_offset = 4;
	mov.w	r0, 4	# tmp79,
	st.w	[r13 + (-8)], r0	# init_offset, tmp79
# basic.c:1445: 				if (size == 0) {
	ld.w	r1, [r13 + (-12)]	# tmp80, size
	xor.w	r0, r0	# tmp81
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L314		#
# basic.c:1446: 					printf("File %s does not exist\n", file_name);
	mov.w	r0, sp	# tmp82,
	ld.w	r1, [r13 + (12)]	# tmp83, file_name
	st.w	[r0 + (4)], r1	#, tmp83
	mov.w	r1, .LC11	# tmp84,
	st.w	[r0], r1	#, tmp84
	call	printf		#
# basic.c:1447: 					break;
	j	.L315		#
.L314:
# basic.c:1449: 				printf("size: %d\n", size);
	mov.w	r0, sp	# tmp85,
	ld.w	r1, [r13 + (-12)]	# tmp86, size
	st.w	[r0 + (4)], r1	#, tmp86
	mov.w	r1, .LC12	# tmp87,
	st.w	[r0], r1	#, tmp87
	call	printf		#
	j	.L316		#
.L313:
# basic.c:1451: 				init_offset = 0;
	xor.w	r0, r0	# tmp88
	st.w	[r13 + (-8)], r0	# init_offset, tmp88
.L316:
# basic.c:1453: 			printf("#");
	mov.w	r1, sp	# tmp89,
	mov.w	r0, 35	# tmp90,
	st.w	[r1], r0	#, tmp90
	call	putchar		#
# basic.c:1454: 			fail_count = 0;
	xor.w	r0, r0	# tmp91
	st.w	[r13 + (-16)], r0	# fail_count, tmp91
# basic.c:1455: 			to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.261_9, to_print_len
# basic.c:1455: 			to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp93,
	add.w	r0, r1 #222	# tmp92, tmp93
	xor.w	r1, r1	# tmp94
	st.b	[r0], r1	# to_print_buff, tmp94
# basic.c:1456: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r0, [r13 + (-4)]	# len.262_10, len
# basic.c:1456: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r1, [r13 + (8)]	# tmp95, buffer
	add.w	r1, r0 #222	# _11, len.262_10
# basic.c:1456: 			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
	ld.w	r2, [r13 + (-8)]	# init_offset.263_12, init_offset
	mov.w	r0, to_print_buff	# tmp96,
	add.w	r2, r0 #222	# _13, tmp96
	ld.w	r3, [to_print_len]	# to_print_len.264_14, to_print_len
	mov.w	r0, sp	# tmp97,
	st.w	[r0 + (8)], r3	#, to_print_len.264_14
	st.w	[r0 + (4)], r2	#, _13
	st.w	[r0], r1	#, _11
	call	memcpy		#
# basic.c:1457: 			len += to_print_len - init_offset;
	ld.w	r1, [to_print_len]	# to_print_len.265_15, to_print_len
	ld.w	r0, [r13 + (-8)]	# tmp98, init_offset
	sub.w	r1, r0 #222	# _16, tmp98
# basic.c:1457: 			len += to_print_len - init_offset;
	ld.w	r0, [r13 + (-4)]	# tmp100, len
	add.w	r0, r1 #222	# tmp99, _16
	st.w	[r13 + (-4)], r0	# len, tmp99
# basic.c:1459: 			to_print_len = 0;
	xor.w	r0, r0	# tmp101
	st.w	[to_print_len], r0	# to_print_len, tmp101
	j	.L311		#
.L312:
# basic.c:1462: 			delay(10);
	mov.w	r1, sp	# tmp102,
	mov.w	r0, 10	# tmp103,
	st.w	[r1], r0	#, tmp103
	call	delay		#
# basic.c:1463: 			fail_count++;
	ld.w	r0, [r13 + (-16)]	# tmp105, fail_count
	add.w	r0, 1 #111	# tmp104,
	st.w	[r13 + (-16)], r0	# fail_count, tmp104
# basic.c:1464: 			if (fail_count > 256) {
	ld.w	r1, [r13 + (-16)]	# tmp106, fail_count
	mov.w	r0, 256	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jses	.L311		#
# basic.c:1465: 				printf("ETHERNET TIMEOUT\n");
	mov.w	r1, sp	# tmp108,
	mov.w	r0, .LC13	# tmp109,
	st.w	[r1], r0	#, tmp109
	call	puts		#
# basic.c:1466: 				len = 0;
	xor.w	r0, r0	# tmp110
	st.w	[r13 + (-4)], r0	# len, tmp110
# basic.c:1467: 				break;
	j	.L315		#
.L311:
# basic.c:1432: 	while (len < size) {
	ld.w	r1, [r13 + (-4)]	# tmp111, len
	ld.w	r0, [r13 + (-12)]	# tmp112, size
	cmp.w	r1, r0	# tmp111, tmp112
	jss	.L317		#
.L315:
# basic.c:1472: 	asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn on timer irq
# 1472 "basic.c" 1
	irq 1

# basic.c:1473: 	return len;
	ld.w	r0, [r13 + (-4)]	# _60, len
# basic.c:1474: }
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
# basic.c:1481: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 1481 "basic.c" 1
	irq 0

# basic.c:1482: asm(
# 1482 "basic.c" 1
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

# basic.c:1488: 	asm("push r13\npush r13\n");
# 1488 "basic.c" 1
	push r13
push r13

# basic.c:1490: 	if (eth)
	ld.w	r1, [eth]	# eth.266_1, eth
# basic.c:1490: 	if (eth)
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# eth.266_1, tmp27
	jz	.L320		#
# basic.c:1491: 		mainLoop(eth_buffer);
	mov.w	r1, sp	# tmp28,
	mov.w	r0, eth_buffer	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	mainLoop		#
.L320:
# basic.c:1494: 	asm("pop r13\npop r13\n");
# 1494 "basic.c" 1
	pop r13
pop r13

# basic.c:1497: 	asm 
# 1497 "basic.c" 1
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

# basic.c:1501: }
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
# basic.c:1504: 	*TIMER_HANDLER_INSTR 	= 0;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.267_1, TIMER_HANDLER_INSTR
# basic.c:1504: 	*TIMER_HANDLER_INSTR 	= 0;
	xor.w	r1, r1	# tmp29
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.267_1, tmp29
# basic.c:1505: 	*TIMER_HANDLER_ADDR 	= 0;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.268_2, TIMER_HANDLER_ADDR
# basic.c:1505: 	*TIMER_HANDLER_ADDR 	= 0;
	xor.w	r1, r1	# tmp30
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.268_2, tmp30
# basic.c:1506: 	*PORT_TIMER = 0;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.269_3, PORT_TIMER
# basic.c:1506: 	*PORT_TIMER = 0;
	xor.w	r1, r1	# tmp31
	st.s	[r0], r1	# *PORT_TIMER.269_3, tmp31
# basic.c:1507: }
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
# basic.c:1511: 	*TIMER_HANDLER_INSTR 	= 1;
	ld.w	r0, [TIMER_HANDLER_INSTR]	# TIMER_HANDLER_INSTR.270_1, TIMER_HANDLER_INSTR
# basic.c:1511: 	*TIMER_HANDLER_INSTR 	= 1;
	mov.s	r1, 1	# tmp30,
	st.s	[r0], r1	# *TIMER_HANDLER_INSTR.270_1, tmp30
# basic.c:1512: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	ld.w	r0, [TIMER_HANDLER_ADDR]	# TIMER_HANDLER_ADDR.271_2, TIMER_HANDLER_ADDR
# basic.c:1512: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	mov.w	r1, timer_irq_triggered	# timer_irq_triggered.272_3,
# basic.c:1512: 	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	st.w	[r0], r1	# *TIMER_HANDLER_ADDR.271_2, timer_irq_triggered.272_3
# basic.c:1513: 	*PORT_TIMER = 50;
	ld.w	r0, [PORT_TIMER]	# PORT_TIMER.273_4, PORT_TIMER
# basic.c:1513: 	*PORT_TIMER = 50;
	mov.s	r1, 50	# tmp31,
	st.s	[r0], r1	# *PORT_TIMER.273_4, tmp31
# basic.c:1514: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_timer, .-init_timer
	.section	.rodata
	.p2align	2
.LC14:
	.string	"Loading file: <%s>\n"
	.p2align	2
.LC15:
	.string	"Error reading file!"
	.p2align	2
.LC16:
	.string	"\nSum: %d\n"
	.p2align	2
.LC17:
	.string	"SD card file open failed"
	.p2align	2
.LC18:
	.string	"File size: %d\n"
	.p2align	2
.LC19:
	.string	".BIN"
	.p2align	2
.LC20:
	.string	"Loaded executable file. Run it using: SYS 0"
	.p2align	2
.LC21:
	.string	".BAS"
	.p2align	2
.LC22:
	.string	"Loaded successfuly at address 0 (reachable by PEEK and POKE)."
	.p2align	2
.LC23:
	.string	"OK loading file %s\n"
	.p2align	2
.LC24:
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
# basic.c:1521: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1522: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.274_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.274_1
# basic.c:1522: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp116, _2
	mov.w	r0, 64	# tmp117,
	cmp.w	r1, r0	# tmp116, tmp117
	jse	.L324		#
# basic.c:1522: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.275_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.275_3
# basic.c:1522: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp118, _4
	mov.w	r0, 90	# tmp119,
	cmp.w	r1, r0	# tmp118, tmp119
	jse	.L325		#
.L324:
# basic.c:1524: 		qwhat();
	call	qwhat		#
# basic.c:1525: 		return;
	j	.L323		#
.L325:
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	xor.w	r0, r0	# tmp120
	st.w	[r13 + (-8)], r0	# i, tmp120
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	j	.L327		#
.L329:
# basic.c:1532: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.276_5, txtpos
	ld.w	r1, [r13 + (-8)]	# i.277_6, i
	add.w	r0, r1 #222	# _7, i.277_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1532: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp121,
	add.w	r0, -72 #111	# tmp121,
	ld.w	r2, [r13 + (-8)]	# tmp123, i
	add.w	r0, r2 #222	# tmp122, tmp123
	st.b	[r0], r1	# s, _9
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [r13 + (-8)]	# tmp125, i
	add.w	r0, 1 #111	# tmp124,
	st.w	[r13 + (-8)], r0	# i, tmp124
.L327:
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.278_10, txtpos
	ld.w	r1, [r13 + (-8)]	# i.279_11, i
	add.w	r0, r1 #222	# _12, i.279_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp126, _13
	mov.w	r0, 10	# tmp127,
	cmp.w	r1, r0	# tmp126, tmp127
	jz	.L328		#
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.280_14, txtpos
	ld.w	r1, [r13 + (-8)]	# i.281_15, i
	add.w	r0, r1 #222	# _16, i.281_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp128, _17
	mov.w	r0, 13	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jz	.L328		#
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.282_18, txtpos
	ld.w	r1, [r13 + (-8)]	# i.283_19, i
	add.w	r0, r1 #222	# _20, i.283_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp130, _21
	mov.w	r0, 32	# tmp131,
	cmp.w	r1, r0	# tmp130, tmp131
	jz	.L328		#
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.284_22, txtpos
	ld.w	r1, [r13 + (-8)]	# i.285_23, i
	add.w	r0, r1 #222	# _24, i.285_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	zex.b	r1, r0	# tmp132, _25
	mov.w	r0, 9	# tmp133,
	cmp.w	r1, r0	# tmp132, tmp133
	jz	.L328		#
# basic.c:1529: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	ld.w	r1, [r13 + (-8)]	# tmp134, i
	mov.w	r0, 31	# tmp135,
	cmp.w	r1, r0	# tmp134, tmp135
	jses	.L329		#
.L328:
# basic.c:1534: 	s[i] = 0;
	mov.w	r0, r13	# tmp136,
	add.w	r0, -72 #111	# tmp136,
	ld.w	r1, [r13 + (-8)]	# tmp138, i
	add.w	r0, r1 #222	# tmp137, tmp138
	xor.w	r1, r1	# tmp139
	st.b	[r0], r1	# s, tmp139
# basic.c:1536: 	printf("Loading file: <%s>\n", s);
	mov.w	r0, sp	# tmp140,
	mov.w	r1, r13	# tmp141,
	add.w	r1, -72 #111	# tmp141,
	st.w	[r0 + (4)], r1	#, tmp141
	mov.w	r1, .LC14	# tmp142,
	st.w	[r0], r1	#, tmp142
	call	printf		#
# basic.c:1537: 	if (drive == 2) {
	ld.b	r0, [drive]	# drive.286_26, drive
# basic.c:1537: 	if (drive == 2) {
	sex.b	r1, r0	# tmp143, drive.286_26
	mov.w	r0, 2	# tmp144,
	cmp.w	r1, r0	# tmp143, tmp144
	jnz	.L330		#
# basic.c:1540: 		delay(100);
	mov.w	r1, sp	# tmp145,
	mov.w	r0, 100	# tmp146,
	st.w	[r1], r0	#, tmp146
	call	delay		#
# basic.c:1541: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.287_27, buffer
	mov.w	r0, sp	# tmp147,
	mov.w	r2, r13	# tmp148,
	add.w	r2, -72 #111	# tmp148,
	st.w	[r0 + (4)], r2	#, tmp148
	st.w	[r0], r1	#, buffer.287_27
	call	uart_read_file		#
	st.w	[r13 + (-8)], r0	# i,
	j	.L331		#
.L330:
# basic.c:1543: 	} else if (drive == 0)
	ld.b	r0, [drive]	# drive.288_28, drive
# basic.c:1543: 	} else if (drive == 0)
	sex.b	r1, r0	# tmp149, drive.288_28
	xor.w	r0, r0	# tmp150
	cmp.w	r1, r0	# tmp149, tmp150
	jnz	.L332		#
# basic.c:1547: load_load_again:		
	nop	
.L333:
# basic.c:1548: 		if(file_open(s, &fd, O_READ))
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
# basic.c:1548: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp155, _29
	xor.w	r0, r0	# tmp156
	cmp.w	r1, r0	# tmp155, tmp156
	jz	.L334		#
# basic.c:1550: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-116)]	# _30, fd.dir_entry.filesize
# basic.c:1550: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-32)], r0	# len, _30
# basic.c:1551: 			int total = 0;
	xor.w	r0, r0	# tmp157
	st.w	[r13 + (-20)], r0	# total, tmp157
# basic.c:1553: 			while(total < len)
	j	.L335		#
.L338:
# basic.c:1555: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.289_31, buffer
	ld.w	r0, [r13 + (-20)]	# total.290_32, total
	add.w	r1, r0 #222	# _33, total.290_32
	mov.w	r0, sp	# tmp158,
	mov.w	r2, 512	# tmp159,
	st.w	[r0 + (8)], r2	#, tmp159
	st.w	[r0 + (4)], r1	#, _33
	mov.w	r1, r13	# tmp160,
	add.w	r1, -148 #111	# tmp160,
	st.w	[r0], r1	#, tmp160
	call	file_read		#
# basic.c:1555: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp161, _34
	st.w	[r13 + (-36)], r0	# current, tmp161
# basic.c:1556: 				if (current > 0) {
	ld.w	r1, [r13 + (-36)]	# tmp162, current
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# tmp162, tmp163
	jses	.L336		#
# basic.c:1557: 					total += current;
	ld.w	r0, [r13 + (-20)]	# tmp165, total
	ld.w	r1, [r13 + (-36)]	# tmp166, current
	add.w	r0, r1 #222	# tmp164, tmp166
	st.w	[r13 + (-20)], r0	# total, tmp164
# basic.c:1558: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-20)]	# total.291_35, total
# basic.c:1558: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-116)]	# _36, fd.dir_entry.filesize
# basic.c:1558: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _37, _36
# basic.c:1558: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp167,
	mul.w	r1, r0	# _38, tmp167
# basic.c:1558: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp168,
	div.w	r1, r0	# _39, tmp168
mov.w	r1, r14	# _39
# basic.c:1558: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp169
	cmp.w	r1, r0	# _39, tmp169
	jnz	.L335		#
# basic.c:1559: 						printf("#");
	mov.w	r1, sp	# tmp170,
	mov.w	r0, 35	# tmp171,
	st.w	[r1], r0	#, tmp171
	call	putchar		#
	j	.L335		#
.L336:
# basic.c:1561: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp172,
	mov.w	r0, .LC15	# tmp173,
	st.w	[r1], r0	#, tmp173
	call	puts		#
	j	.L323		#
.L335:
# basic.c:1553: 			while(total < len)
	ld.w	r1, [r13 + (-20)]	# tmp174, total
	ld.w	r0, [r13 + (-32)]	# tmp175, len
	cmp.w	r1, r0	# tmp174, tmp175
	jss	.L338		#
# basic.c:1566: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.292_40, buffer
	ld.w	r1, [r13 + (-32)]	# len.293_41, len
	add.w	r0, r1 #222	# _42, len.293_41
# basic.c:1566: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp176
	st.b	[r0], r1	# *_42, tmp176
# basic.c:1567: 			i = len;
	ld.w	r0, [r13 + (-32)]	# tmp177, len
	st.w	[r13 + (-8)], r0	# i, tmp177
# basic.c:1571: 			strcpy(fileName, s);
	mov.w	r0, sp	# tmp178,
	mov.w	r1, r13	# tmp179,
	add.w	r1, -72 #111	# tmp179,
	st.w	[r0 + (4)], r1	#, tmp179
	mov.w	r1, r13	# tmp180,
	add.w	r1, -92 #111	# tmp180,
	st.w	[r0], r1	#, tmp180
	call	strcpy		#
# basic.c:1572: 			int sum = 0;
	xor.w	r0, r0	# tmp181
	st.w	[r13 + (-24)], r0	# sum, tmp181
# basic.c:1573: 			for (int j = 0; j < i; j++) {
	xor.w	r0, r0	# tmp182
	st.w	[r13 + (-28)], r0	# j, tmp182
# basic.c:1573: 			for (int j = 0; j < i; j++) {
	j	.L339		#
.L340:
# basic.c:1574: 				sum += buffer[j];
	ld.w	r0, [buffer]	# buffer.294_43, buffer
	ld.w	r1, [r13 + (-28)]	# j.295_44, j
	add.w	r0, r1 #222	# _45, j.295_44
	ld.b	r0, [r0]	# _46, *_45
	sex.b	r1, r0	# _47, _46
# basic.c:1574: 				sum += buffer[j];
	ld.w	r0, [r13 + (-24)]	# tmp184, sum
	add.w	r0, r1 #222	# tmp183, _47
	st.w	[r13 + (-24)], r0	# sum, tmp183
# basic.c:1573: 			for (int j = 0; j < i; j++) {
	ld.w	r0, [r13 + (-28)]	# tmp186, j
	add.w	r0, 1 #111	# tmp185,
	st.w	[r13 + (-28)], r0	# j, tmp185
.L339:
# basic.c:1573: 			for (int j = 0; j < i; j++) {
	ld.w	r1, [r13 + (-28)]	# tmp187, j
	ld.w	r0, [r13 + (-8)]	# tmp188, i
	cmp.w	r1, r0	# tmp187, tmp188
	jss	.L340		#
# basic.c:1576: 			printf("\nSum: %d\n", sum);
	mov.w	r0, sp	# tmp189,
	ld.w	r1, [r13 + (-24)]	# tmp190, sum
	st.w	[r0 + (4)], r1	#, tmp190
	mov.w	r1, .LC16	# tmp191,
	st.w	[r0], r1	#, tmp191
	call	printf		#
	j	.L331		#
.L334:
# basic.c:1579: 			printf("SD card file open failed\n");
	mov.w	r1, sp	# tmp192,
	mov.w	r0, .LC17	# tmp193,
	st.w	[r1], r0	#, tmp193
	call	puts		#
# basic.c:1580: 			return;
	j	.L323		#
.L332:
# basic.c:1585: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.296_48, buffer
	mov.w	r0, sp	# tmp194,
	mov.w	r2, r13	# tmp195,
	add.w	r2, -72 #111	# tmp195,
	st.w	[r0 + (4)], r2	#, tmp195
	st.w	[r0], r1	#, buffer.296_48
	call	eth_read_file		#
	st.w	[r13 + (-8)], r0	# i,
.L331:
# basic.c:1588: 	if (i > 0)
	ld.w	r1, [r13 + (-8)]	# tmp196, i
	xor.w	r0, r0	# tmp197
	cmp.w	r1, r0	# tmp196, tmp197
	jses	.L341		#
# basic.c:1590: 		printf("File size: %d\n", i);
	mov.w	r0, sp	# tmp198,
	ld.w	r1, [r13 + (-8)]	# tmp199, i
	st.w	[r0 + (4)], r1	#, tmp199
	mov.w	r1, .LC18	# tmp200,
	st.w	[r0], r1	#, tmp200
	call	printf		#
# basic.c:1591: 		if (strstr(s, ".BIN") != (char *)0) 
	mov.w	r0, sp	# tmp201,
	mov.w	r1, .LC19	# tmp202,
	st.w	[r0 + (4)], r1	#, tmp202
	mov.w	r1, r13	# tmp203,
	add.w	r1, -72 #111	# tmp203,
	st.w	[r0], r1	#, tmp203
	call	strstr		#
	mov.w	r1, r0	# _49,
# basic.c:1591: 		if (strstr(s, ".BIN") != (char *)0) 
	xor.w	r0, r0	# tmp204
	cmp.w	r1, r0	# _49, tmp204
	jz	.L342		#
# basic.c:1593: 			printf("Loaded executable file. Run it using: SYS 0\n");
	mov.w	r1, sp	# tmp205,
	mov.w	r0, .LC20	# tmp206,
	st.w	[r1], r0	#, tmp206
	call	puts		#
# basic.c:1594: 			return;
	j	.L323		#
.L342:
# basic.c:1595: 		} else if (strstr(s, ".BAS") == (char *)0) 
	mov.w	r0, sp	# tmp207,
	mov.w	r1, .LC21	# tmp208,
	st.w	[r0 + (4)], r1	#, tmp208
	mov.w	r1, r13	# tmp209,
	add.w	r1, -72 #111	# tmp209,
	st.w	[r0], r1	#, tmp209
	call	strstr		#
	mov.w	r1, r0	# _50,
# basic.c:1595: 		} else if (strstr(s, ".BAS") == (char *)0) 
	xor.w	r0, r0	# tmp210
	cmp.w	r1, r0	# _50, tmp210
	jnz	.L343		#
# basic.c:1597: 			printf("Loaded successfuly at address 0 (reachable by PEEK and POKE).\n");
	mov.w	r1, sp	# tmp211,
	mov.w	r0, .LC22	# tmp212,
	st.w	[r1], r0	#, tmp212
	call	puts		#
# basic.c:1598: 			return;
	j	.L323		#
.L343:
# basic.c:1600: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.297_51, program_start
	st.w	[program_end], r0	# program_end, program_start.297_51
# basic.c:1601: 		k = 0;
	xor.w	r0, r0	# tmp213
	st.w	[r13 + (-16)], r0	# k, tmp213
# basic.c:1602: 		for (j = 0; j <= i; j++)
	xor.w	r0, r0	# tmp214
	st.w	[r13 + (-12)], r0	# j, tmp214
# basic.c:1602: 		for (j = 0; j <= i; j++)
	j	.L344		#
.L349:
# basic.c:1604: 			if (buffer[j] == CR)
	ld.w	r0, [buffer]	# buffer.298_52, buffer
	ld.w	r1, [r13 + (-12)]	# j.299_53, j
	add.w	r0, r1 #222	# _54, j.299_53
	ld.b	r0, [r0]	# _55, *_54
# basic.c:1604: 			if (buffer[j] == CR)
	sex.b	r1, r0	# tmp215, _55
	mov.w	r0, 13	# tmp216,
	cmp.w	r1, r0	# tmp215, tmp216
	jnz	.L345		#
# basic.c:1606: 				buffer[j] = NL;
	ld.w	r0, [buffer]	# buffer.300_56, buffer
	ld.w	r1, [r13 + (-12)]	# j.301_57, j
	add.w	r0, r1 #222	# _58, j.301_57
# basic.c:1606: 				buffer[j] = NL;
	mov.b	r1, 10	# tmp217,
	st.b	[r0], r1	# *_58, tmp217
.L345:
# basic.c:1608: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.302_59, buffer
	ld.w	r1, [r13 + (-12)]	# j.303_60, j
	add.w	r0, r1 #222	# _61, j.303_60
	ld.b	r0, [r0]	# _62, *_61
# basic.c:1608: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp218, _62
	mov.w	r0, 10	# tmp219,
	cmp.w	r1, r0	# tmp218, tmp219
	jz	.L346		#
# basic.c:1608: 			if (buffer[j] == NL || buffer[j] == 0)
	ld.w	r0, [buffer]	# buffer.304_63, buffer
	ld.w	r1, [r13 + (-12)]	# j.305_64, j
	add.w	r0, r1 #222	# _65, j.305_64
	ld.b	r0, [r0]	# _66, *_65
# basic.c:1608: 			if (buffer[j] == NL || buffer[j] == 0)
	sex.b	r1, r0	# tmp220, _66
	xor.w	r0, r0	# tmp221
	cmp.w	r1, r0	# tmp220, tmp221
	jnz	.L347		#
.L346:
# basic.c:1610: 				txtpos = program_end + sizeof(LINENUM);
	ld.w	r0, [program_end]	# program_end.306_67, program_end
	add.w	r0, 4 #111	# _68,
# basic.c:1610: 				txtpos = program_end + sizeof(LINENUM);
	st.w	[txtpos], r0	# txtpos, _68
# basic.c:1611: 				strncpy(txtpos, &buffer[k], j);
	ld.w	r1, [txtpos]	# txtpos.307_69, txtpos
	ld.w	r2, [buffer]	# buffer.308_70, buffer
	ld.w	r0, [r13 + (-16)]	# k.309_71, k
	add.w	r2, r0 #222	# _72, k.309_71
	mov.w	r0, sp	# tmp222,
	ld.w	r3, [r13 + (-12)]	# tmp223, j
	st.w	[r0 + (8)], r3	#, tmp223
	st.w	[r0 + (4)], r2	#, _72
	st.w	[r0], r1	#, txtpos.307_69
	call	strncpy		#
# basic.c:1612: 				txtpos[j - k] = NL;
	ld.w	r0, [txtpos]	# txtpos.310_73, txtpos
# basic.c:1612: 				txtpos[j - k] = NL;
	ld.w	r1, [r13 + (-12)]	# tmp224, j
	ld.w	r2, [r13 + (-16)]	# tmp225, k
	sub.w	r1, r2 #222	# _74, tmp225
# basic.c:1612: 				txtpos[j - k] = NL;
	add.w	r0, r1 #222	# _76, _75
# basic.c:1612: 				txtpos[j - k] = NL;
	mov.b	r1, 10	# tmp226,
	st.b	[r0], r1	# *_76, tmp226
# basic.c:1613: 				txtpos[j - k + 1] = 0;
	ld.w	r0, [txtpos]	# txtpos.311_77, txtpos
# basic.c:1613: 				txtpos[j - k + 1] = 0;
	ld.w	r1, [r13 + (-12)]	# tmp227, j
	ld.w	r2, [r13 + (-16)]	# tmp228, k
	sub.w	r1, r2 #222	# _78, tmp228
# basic.c:1613: 				txtpos[j - k + 1] = 0;
	add.w	r1, 1 #111	# _80,
	add.w	r0, r1 #222	# _81, _80
# basic.c:1613: 				txtpos[j - k + 1] = 0;
	xor.w	r1, r1	# tmp229
	st.b	[r0], r1	# *_81, tmp229
# basic.c:1614: 				k = j + 1;
	ld.w	r0, [r13 + (-12)]	# tmp231, j
	add.w	r0, 1 #111	# tmp230,
	st.w	[r13 + (-16)], r0	# k, tmp230
# basic.c:1615: 				l = strlen(txtpos);
	ld.w	r0, [txtpos]	# txtpos.312_82, txtpos
	mov.w	r1, sp	# tmp232,
	st.w	[r1], r0	#, txtpos.312_82
	call	strlen		#
	st.w	[r13 + (-40)], r0	# l,
# basic.c:1616: 				if (l % 2 == 0)
	ld.w	r1, [r13 + (-40)]	# l.313_83, l
	mov.w	r0, 1	# tmp233,
	and.w	r1, r0	# _84, tmp233
# basic.c:1616: 				if (l % 2 == 0)
	xor.w	r0, r0	# tmp234
	cmp.w	r1, r0	# _84, tmp234
	jnz	.L348		#
# basic.c:1617: 					strcat(txtpos, " ");
	ld.w	r6, [txtpos]	# txtpos.314_85, txtpos
	mov.w	r0, sp	# tmp235,
	st.w	[r0], r6	#, txtpos.314_85
	call	strlen		#
	mov.w	r1, r0	# _154, tmp236
	mov.w	r0, r6	# _155, txtpos.314_85
	add.w	r0, r1 #222	# _155, _154
	mov.b	r1, 32	# tmp237,
	st.b	[r0], r1	# MEM <char[1:2]> [(void *)_155], tmp237
	xor.w	r1, r1	# tmp238
	st.b	[r0 + (1)], r1	# MEM <char[1:2]> [(void *)_155], tmp238
.L348:
# basic.c:1618: 				toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:1619: 				skip_to_end();
	call	skip_to_end		#
# basic.c:1620: 				linenum = testnum();
	call	testnum		#
	mov.w	r1, r0	# _86,
# basic.c:1620: 				linenum = testnum();
	mov.w	r0, r1	# tmp239, _86
	st.w	[sp], r0	#, tmp239
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _87
# basic.c:1621: 				if (linenum > 0)
	ld.w	r1, [linenum]	# linenum.315_88, linenum
# basic.c:1621: 				if (linenum > 0)
	xor.w	r0, r0	# tmp240
	cmp.w	r1, r0	# linenum.315_88, tmp240
	jses	.L347		#
# basic.c:1625: 					ignore_blanks();
	call	ignore_blanks		#
# basic.c:1626: 					entered_with_line_num();
	call	entered_with_line_num		#
.L347:
# basic.c:1602: 		for (j = 0; j <= i; j++)
	ld.w	r0, [r13 + (-12)]	# tmp242, j
	add.w	r0, 1 #111	# tmp241,
	st.w	[r13 + (-12)], r0	# j, tmp241
.L344:
# basic.c:1602: 		for (j = 0; j <= i; j++)
	ld.w	r1, [r13 + (-12)]	# tmp243, j
	ld.w	r0, [r13 + (-8)]	# tmp244, i
	cmp.w	r1, r0	# tmp243, tmp244
	jses	.L349		#
# basic.c:1630: 		printf("OK loading file %s\n", s);
	mov.w	r0, sp	# tmp245,
	mov.w	r1, r13	# tmp246,
	add.w	r1, -72 #111	# tmp246,
	st.w	[r0 + (4)], r1	#, tmp246
	mov.w	r1, .LC23	# tmp247,
	st.w	[r0], r1	#, tmp247
	call	printf		#
	j	.L323		#
.L341:
# basic.c:1634: 		printf("Error loading file %s\n", s);
	mov.w	r0, sp	# tmp248,
	mov.w	r1, r13	# tmp249,
	add.w	r1, -72 #111	# tmp249,
	st.w	[r0 + (4)], r1	#, tmp249
	mov.w	r1, .LC24	# tmp250,
	st.w	[r0], r1	#, tmp250
	call	printf		#
.L323:
# basic.c:1636: }
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
# basic.c:1643: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [list_line]	# list_line.316_1, list_line
# basic.c:1643: 	line_num = *((LINENUM *)(list_line));
	ld.w	r0, [r0]	# tmp50, MEM[(LINENUM *)list_line.316_1]
	st.w	[r13 + (-4)], r0	# line_num, tmp50
# basic.c:1644: 	list_line += sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [list_line]	# list_line.317_2, list_line
	add.w	r0, 5 #111	# _3,
	st.w	[list_line], r0	# list_line, _3
# basic.c:1647: 	sprintf(s, "%d ", line_num);
	mov.w	r0, sp	# tmp51,
	ld.w	r1, [r13 + (-4)]	# tmp52, line_num
	st.w	[r0 + (8)], r1	#, tmp52
	mov.w	r1, .LC0	# tmp53,
	st.w	[r0 + (4)], r1	#, tmp53
	mov.w	r1, r13	# tmp54,
	add.w	r1, -14 #111	# tmp54,
	st.w	[r0], r1	#, tmp54
	call	sprintf		#
# basic.c:1648: 	strcpy(&buffer[i], s);
	ld.w	r1, [buffer]	# buffer.318_4, buffer
	ld.w	r0, [r13 + (8)]	# i.319_5, i
	add.w	r1, r0 #222	# _6, i.319_5
	mov.w	r0, sp	# tmp55,
	mov.w	r2, r13	# tmp56,
	add.w	r2, -14 #111	# tmp56,
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, _6
	call	strcpy		#
# basic.c:1649: 	i += strlen(s);
	mov.w	r1, sp	# tmp57,
	mov.w	r0, r13	# tmp58,
	add.w	r0, -14 #111	# tmp58,
	st.w	[r1], r0	#, tmp58
	call	strlen		#
	mov.w	r1, r0	# _7,
# basic.c:1649: 	i += strlen(s);
	ld.w	r0, [r13 + (8)]	# tmp60, i
	add.w	r0, r1 #222	# tmp59, _7
	st.w	[r13 + (8)], r0	# i, tmp59
# basic.c:1650: 	while (*list_line != NL)
	j	.L353		#
.L354:
# basic.c:1652: 		buffer[i] = *list_line;
	ld.w	r0, [list_line]	# list_line.320_8, list_line
	ld.b	r1, [r0]	# _9, *list_line.320_8
# basic.c:1652: 		buffer[i] = *list_line;
	ld.w	r0, [buffer]	# buffer.321_10, buffer
	ld.w	r2, [r13 + (8)]	# i.322_11, i
	add.w	r0, r2 #222	# _12, i.322_11
# basic.c:1652: 		buffer[i] = *list_line;
	st.b	[r0], r1	# *_12, _13
# basic.c:1653: 		list_line++;
	ld.w	r0, [list_line]	# list_line.323_14, list_line
	add.w	r0, 1 #111	# _15,
	st.w	[list_line], r0	# list_line, _15
# basic.c:1654: 		i++;
	ld.w	r0, [r13 + (8)]	# tmp62, i
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (8)], r0	# i, tmp61
.L353:
# basic.c:1650: 	while (*list_line != NL)
	ld.w	r0, [list_line]	# list_line.324_16, list_line
	ld.b	r0, [r0]	# _17, *list_line.324_16
# basic.c:1650: 	while (*list_line != NL)
	zex.b	r1, r0	# tmp63, _17
	mov.w	r0, 10	# tmp64,
	cmp.w	r1, r0	# tmp63, tmp64
	jnz	.L354		#
# basic.c:1656: 	list_line++;
	ld.w	r0, [list_line]	# list_line.325_18, list_line
	add.w	r0, 1 #111	# _19,
	st.w	[list_line], r0	# list_line, _19
# basic.c:1657: 	buffer[i] = NL;
	ld.w	r0, [buffer]	# buffer.326_20, buffer
	ld.w	r1, [r13 + (8)]	# i.327_21, i
	add.w	r0, r1 #222	# _22, i.327_21
# basic.c:1657: 	buffer[i] = NL;
	mov.b	r1, 10	# tmp65,
	st.b	[r0], r1	# *_22, tmp65
# basic.c:1658: 	i++;
	ld.w	r0, [r13 + (8)]	# tmp67, i
	add.w	r0, 1 #111	# tmp66,
	st.w	[r13 + (8)], r0	# i, tmp66
# basic.c:1660: 	return i;
	ld.w	r0, [r13 + (8)]	# _35, i
# basic.c:1661: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sprintline, .-sprintline
	.section	.rodata
	.p2align	2
.LC25:
	.string	"\nSaving to SD card..."
	.p2align	2
.LC26:
	.string	"Could not open file for save."
	.text
	.p2align	1
	.global	sd_write_file
	.type	sd_write_file, @function
sd_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 100 #111	#,
# basic.c:1666: 	printf("\nSaving to SD card...\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC25	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:1667: 	int res = file_open(file_name, &fd, O_WRITE);
	mov.w	r0, sp	# tmp38,
	mov.w	r1, 1	# tmp39,
	st.w	[r0 + (8)], r1	#, tmp39
	mov.w	r1, r13	# tmp40,
	add.w	r1, -76 #111	# tmp40,
	st.w	[r0 + (4)], r1	#, tmp40
	ld.w	r1, [r13 + (16)]	# tmp41, file_name
	st.w	[r0], r1	#, tmp41
	call	file_open		#
# basic.c:1667: 	int res = file_open(file_name, &fd, O_WRITE);
	zex.b	r0, r0	# tmp42, _1
	st.w	[r13 + (-12)], r0	# res, tmp42
# basic.c:1668: 	if (res)
	ld.w	r1, [r13 + (-12)]	# tmp43, res
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L357		#
# basic.c:1670: 		int i, curr, total = 0, count = len /512 + 1;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# total, tmp45
# basic.c:1670: 		int i, curr, total = 0, count = len /512 + 1;
	ld.w	r0, [r13 + (12)]	# tmp46, len
	xor.w	r1, r1	# tmp48
	cmp.w	r0, r1	# tmp47, tmp48
	jges	.L358		#
	mov.w	r1, 511	# tmp49,
	add.w	r0, r1 #222	# tmp47, tmp49
.L358:
	mov.w	r1, 9	# tmp51,
	shr.w	r0, r1	# tmp50, tmp51
# basic.c:1670: 		int i, curr, total = 0, count = len /512 + 1;
	add.w	r0, 1 #111	# tmp52,
	st.w	[r13 + (-16)], r0	# count, tmp52
# basic.c:1671: 		for (i = 0; i < count; i++)
	xor.w	r0, r0	# tmp53
	st.w	[r13 + (-4)], r0	# i, tmp53
# basic.c:1671: 		for (i = 0; i < count; i++)
	j	.L359		#
.L364:
# basic.c:1673: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (-8)]	# total.328_3, total
# basic.c:1673: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r1, [r13 + (8)]	# tmp54, buff
	add.w	r1, r0 #222	# _4, total.328_3
# basic.c:1673: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	ld.w	r0, [r13 + (12)]	# _5, len
	mov.w	r2, 512	# tmp55,
	cmp.w	r0, r2	# _5, tmp55
	jses	.L360		#
	mov.w	r0, 512	# _5,
.L360:
# basic.c:1673: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r2, r0	# _7, _6
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r2	#, _7
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, r13	# tmp57,
	add.w	r1, -76 #111	# tmp57,
	st.w	[r0], r1	#, tmp57
	call	file_write		#
# basic.c:1673: 			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
	zex.s	r0, r0	# tmp58, _8
	st.w	[r13 + (-20)], r0	# curr, tmp58
# basic.c:1674: 			if (curr > 0) {
	ld.w	r1, [r13 + (-20)]	# tmp59, curr
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jses	.L367		#
# basic.c:1675: 				len -= curr;
	ld.w	r0, [r13 + (12)]	# tmp62, len
	ld.w	r1, [r13 + (-20)]	# tmp63, curr
	sub.w	r0, r1 #222	# tmp61, tmp63
	st.w	[r13 + (12)], r0	# len, tmp61
# basic.c:1676: 				total += curr;
	ld.w	r0, [r13 + (-8)]	# tmp65, total
	ld.w	r1, [r13 + (-20)]	# tmp66, curr
	add.w	r0, r1 #222	# tmp64, tmp66
	st.w	[r13 + (-8)], r0	# total, tmp64
# basic.c:1680: 			printf("#");
	mov.w	r1, sp	# tmp67,
	mov.w	r0, 35	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	putchar		#
# basic.c:1671: 		for (i = 0; i < count; i++)
	ld.w	r0, [r13 + (-4)]	# tmp70, i
	add.w	r0, 1 #111	# tmp69,
	st.w	[r13 + (-4)], r0	# i, tmp69
.L359:
# basic.c:1671: 		for (i = 0; i < count; i++)
	ld.w	r1, [r13 + (-4)]	# tmp71, i
	ld.w	r0, [r13 + (-16)]	# tmp72, count
	cmp.w	r1, r0	# tmp71, tmp72
	jss	.L364		#
	j	.L363		#
.L367:
# basic.c:1679: 				break;
	nop	
.L363:
# basic.c:1683: 		printf("\n");
	mov.w	r1, sp	# tmp73,
	mov.w	r0, 10	# tmp74,
	st.w	[r1], r0	#, tmp74
	call	putchar		#
	j	.L365		#
.L357:
# basic.c:1687: 		printf("Could not open file for save.\n");
	mov.w	r1, sp	# tmp75,
	mov.w	r0, .LC26	# tmp76,
	st.w	[r1], r0	#, tmp76
	call	puts		#
.L365:
# basic.c:1689: 	return 1;	
	mov.w	r0, 1	# _33,
# basic.c:1690: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sd_write_file, .-sd_write_file
	.section	.rodata
	.p2align	2
.LC27:
	.string	"Saving file %s of %d bytes to the ethernet network drive\n"
	.text
	.p2align	1
	.global	eth_write_file
	.type	eth_write_file, @function
eth_write_file:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:1694: 	printf("Saving file %s of %d bytes to the ethernet network drive\n", file_name, len);
	mov.w	r0, sp	# tmp27,
	ld.w	r1, [r13 + (12)]	# tmp28, len
	st.w	[r0 + (8)], r1	#, tmp28
	ld.w	r1, [r13 + (16)]	# tmp29, file_name
	st.w	[r0 + (4)], r1	#, tmp29
	mov.w	r1, .LC27	# tmp30,
	st.w	[r0], r1	#, tmp30
	call	printf		#
# basic.c:1695: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_write_file, .-eth_write_file
	.section	.rodata
	.p2align	2
.LC28:
	.string	"Filename: <%s>\n"
	.p2align	2
.LC29:
	.string	"OK saving file %s, length: %d\n"
	.text
	.p2align	1
	.global	exec_save
	.type	exec_save, @function
exec_save:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# basic.c:1702: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1703: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.329_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.329_1
# basic.c:1703: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp55, _2
	mov.w	r0, 64	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jse	.L370		#
# basic.c:1703: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.330_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.330_3
# basic.c:1703: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp57, _4
	mov.w	r0, 90	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jse	.L371		#
.L370:
# basic.c:1705: 		qwhat();
	call	qwhat		#
	j	.L369		#
.L371:
# basic.c:1709: 	int spi = 0;
	xor.w	r0, r0	# tmp59
	st.w	[r13 + (-8)], r0	# spi, tmp59
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	xor.w	r0, r0	# tmp60
	st.w	[r13 + (-4)], r0	# i, tmp60
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	j	.L373		#
.L375:
# basic.c:1712: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.331_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.332_6, i
	add.w	r0, r1 #222	# _7, i.332_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:1712: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp61,
	add.w	r0, -40 #111	# tmp61,
	ld.w	r2, [r13 + (-4)]	# tmp63, i
	add.w	r0, r2 #222	# tmp62, tmp63
	st.b	[r0], r1	# s, _9
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [r13 + (-4)]	# tmp65, i
	add.w	r0, 1 #111	# tmp64,
	st.w	[r13 + (-4)], r0	# i, tmp64
.L373:
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.333_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.334_11, i
	add.w	r0, r1 #222	# _12, i.334_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp66, _13
	mov.w	r0, 10	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L374		#
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.335_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.336_15, i
	add.w	r0, r1 #222	# _16, i.336_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp68, _17
	mov.w	r0, 32	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L374		#
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	ld.w	r0, [txtpos]	# txtpos.337_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.338_19, i
	add.w	r0, r1 #222	# _20, i.338_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:1710: 	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	zex.b	r1, r0	# tmp70, _21
	mov.w	r0, 9	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L375		#
.L374:
# basic.c:1714: 	s[i] = 0;
	mov.w	r0, r13	# tmp72,
	add.w	r0, -40 #111	# tmp72,
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	add.w	r0, r1 #222	# tmp73, tmp74
	xor.w	r1, r1	# tmp75
	st.b	[r0], r1	# s, tmp75
# basic.c:1715: 	printf("Filename: <%s>\n", s);
	mov.w	r0, sp	# tmp76,
	mov.w	r1, r13	# tmp77,
	add.w	r1, -40 #111	# tmp77,
	st.w	[r0 + (4)], r1	#, tmp77
	mov.w	r1, .LC28	# tmp78,
	st.w	[r0], r1	#, tmp78
	call	printf		#
# basic.c:1718: 	list_line = findline();
	call	findline		#
# basic.c:1718: 	list_line = findline();
	st.w	[list_line], r0	# list_line, _22
# basic.c:1719: 	i = 0;
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:1720: 	while (list_line < program_end)
	j	.L376		#
.L377:
# basic.c:1722: 		i = sprintline(i);
	mov.w	r1, sp	# tmp80,
	ld.w	r0, [r13 + (-4)]	# tmp81, i
	st.w	[r1], r0	#, tmp81
	call	sprintline		#
	st.w	[r13 + (-4)], r0	# i,
.L376:
# basic.c:1720: 	while (list_line < program_end)
	ld.w	r1, [list_line]	# list_line.339_23, list_line
	ld.w	r0, [program_end]	# program_end.340_24, program_end
# basic.c:1720: 	while (list_line < program_end)
	cmp.w	r1, r0	# list_line.339_23, program_end.340_24
	js	.L377		#
# basic.c:1724: 	if (drive == 0) {
	ld.b	r0, [drive]	# drive.341_25, drive
# basic.c:1724: 	if (drive == 0) {
	sex.b	r1, r0	# tmp82, drive.341_25
	xor.w	r0, r0	# tmp83
	cmp.w	r1, r0	# tmp82, tmp83
	jnz	.L378		#
# basic.c:1726: 		sd_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.342_26, buffer
	mov.w	r0, sp	# tmp84,
	mov.w	r2, r13	# tmp85,
	add.w	r2, -40 #111	# tmp85,
	st.w	[r0 + (8)], r2	#, tmp85
	ld.w	r2, [r13 + (-4)]	# tmp86, i
	st.w	[r0 + (4)], r2	#, tmp86
	st.w	[r0], r1	#, buffer.342_26
	call	sd_write_file		#
	j	.L379		#
.L378:
# basic.c:1727: 	} else if (drive == 2) {
	ld.b	r0, [drive]	# drive.343_27, drive
# basic.c:1727: 	} else if (drive == 2) {
	sex.b	r1, r0	# tmp87, drive.343_27
	mov.w	r0, 2	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jnz	.L380		#
# basic.c:1729: 		uart_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.344_28, buffer
	mov.w	r0, sp	# tmp89,
	mov.w	r2, r13	# tmp90,
	add.w	r2, -40 #111	# tmp90,
	st.w	[r0 + (8)], r2	#, tmp90
	ld.w	r2, [r13 + (-4)]	# tmp91, i
	st.w	[r0 + (4)], r2	#, tmp91
	st.w	[r0], r1	#, buffer.344_28
	call	uart_write_file		#
	j	.L379		#
.L380:
# basic.c:1733: 		eth_write_file(buffer, i, s);
	ld.w	r1, [buffer]	# buffer.345_29, buffer
	mov.w	r0, sp	# tmp92,
	mov.w	r2, r13	# tmp93,
	add.w	r2, -40 #111	# tmp93,
	st.w	[r0 + (8)], r2	#, tmp93
	ld.w	r2, [r13 + (-4)]	# tmp94, i
	st.w	[r0 + (4)], r2	#, tmp94
	st.w	[r0], r1	#, buffer.345_29
	call	eth_write_file		#
.L379:
# basic.c:1735: 	printf("OK saving file %s, length: %d\n", s, i);
	mov.w	r0, sp	# tmp95,
	ld.w	r1, [r13 + (-4)]	# tmp96, i
	st.w	[r0 + (8)], r1	#, tmp96
	mov.w	r1, r13	# tmp97,
	add.w	r1, -40 #111	# tmp97,
	st.w	[r0 + (4)], r1	#, tmp97
	mov.w	r1, .LC29	# tmp98,
	st.w	[r0], r1	#, tmp98
	call	printf		#
.L369:
# basic.c:1736: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_save, .-exec_save
	.section	.rodata
	.p2align	2
.LC30:
	.string	"%s %d bytes, cluster: %d (%d)\n"
	.p2align	2
.LC31:
	.string	""
	.p2align	2
.LC32:
	.string	"/dir"
	.p2align	2
.LC33:
	.string	"NETWORK TIMEOUT"
	.text
	.p2align	1
	.global	exec_dir
	.type	exec_dir, @function
exec_dir:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 88 #111	#,
# basic.c:1742: 	if (drive == 2)
	ld.b	r0, [drive]	# drive.346_1, drive
# basic.c:1742: 	if (drive == 2)
	sex.b	r1, r0	# tmp39, drive.346_1
	mov.w	r0, 2	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L382		#
# basic.c:1745: 		uart_ls_files(buffer);
	ld.w	r0, [buffer]	# buffer.347_2, buffer
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, buffer.347_2
	call	uart_ls_files		#
# basic.c:1746: 		printf("%s\n", buffer);
	ld.w	r0, [buffer]	# buffer.348_3, buffer
	mov.w	r1, sp	# tmp42,
	st.w	[r1], r0	#, buffer.348_3
	call	puts		#
	j	.L381		#
.L382:
# basic.c:1748: 	else if (drive == 0)
	ld.b	r0, [drive]	# drive.349_4, drive
# basic.c:1748: 	else if (drive == 0)
	sex.b	r1, r0	# tmp43, drive.349_4
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L384		#
# basic.c:1752: 		int next = 0;
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-8)], r0	# next, tmp45
# basic.c:1753: 		while ((next = getDirEntry(&fd, next)) != 0)
	j	.L385		#
.L386:
# basic.c:1755: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.w	r1, [r13 + (-32)]	# _5, fd.dir_entry.filesize
# basic.c:1755: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-16)]	# _6, fd.curr_cluster
# basic.c:1755: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r2, r0	# _7, _6
# basic.c:1755: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	ld.s	r0, [r13 + (-36)]	# _8, fd.dir_entry.first_cluster
# basic.c:1755: 			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
	zex.s	r3, r0	# _9, _8
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (16)], r3	#, _9
	st.w	[r0 + (12)], r2	#, _7
	st.w	[r0 + (8)], r1	#, _5
	mov.w	r1, r13	# tmp47,
	add.w	r1, -64 #111	# tmp47,
	st.w	[r0 + (4)], r1	#, tmp47
	mov.w	r1, .LC30	# tmp48,
	st.w	[r0], r1	#, tmp48
	call	printf		#
.L385:
# basic.c:1753: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# next.350_10, next
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (4)], r1	#, next.350_10
	mov.w	r1, r13	# tmp50,
	add.w	r1, -64 #111	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	getDirEntry		#
# basic.c:1753: 		while ((next = getDirEntry(&fd, next)) != 0)
	st.w	[r13 + (-8)], r0	# next, _11
# basic.c:1753: 		while ((next = getDirEntry(&fd, next)) != 0)
	ld.w	r1, [r13 + (-8)]	# tmp51, next
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L386		#
	j	.L381		#
.L384:
# basic.c:1760: 		to_print_len = 0;
	xor.w	r0, r0	# tmp53
	st.w	[to_print_len], r0	# to_print_len, tmp53
# basic.c:1761: 		browseUrl("/dir", "", server_ip, 0, my_callback);
	mov.w	r0, sp	# tmp54,
	mov.w	r1, my_callback	# tmp55,
	st.w	[r0 + (16)], r1	#, tmp55
	xor.w	r1, r1	# tmp56
	st.w	[r0 + (12)], r1	#, tmp56
	mov.w	r1, server_ip	# tmp57,
	st.w	[r0 + (8)], r1	#, tmp57
	mov.w	r1, .LC31	# tmp58,
	st.w	[r0 + (4)], r1	#, tmp58
	mov.w	r1, .LC32	# tmp59,
	st.w	[r0], r1	#, tmp59
	call	browseUrl		#
# basic.c:1762: 		delay(100);
	mov.w	r1, sp	# tmp60,
	mov.w	r0, 100	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	delay		#
# basic.c:1763: 		for (i = 0; i < 1000; i++) {
	xor.w	r0, r0	# tmp62
	st.w	[r13 + (-4)], r0	# i, tmp62
# basic.c:1763: 		for (i = 0; i < 1000; i++) {
	j	.L387		#
.L389:
# basic.c:1766: 			if (to_print_len > 0) {
	ld.w	r1, [to_print_len]	# to_print_len.351_12, to_print_len
# basic.c:1766: 			if (to_print_len > 0) {
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# to_print_len.351_12, tmp63
	jses	.L388		#
# basic.c:1767: 				to_print_buff[to_print_len] = 0;
	ld.w	r0, [to_print_len]	# to_print_len.352_13, to_print_len
# basic.c:1767: 				to_print_buff[to_print_len] = 0;
	mov.w	r1, to_print_buff	# tmp65,
	add.w	r0, r1 #222	# tmp64, tmp65
	xor.w	r1, r1	# tmp66
	st.b	[r0], r1	# to_print_buff, tmp66
# basic.c:1768: 				printf("%s\n", to_print_buff);
	mov.w	r1, sp	# tmp67,
	mov.w	r0, to_print_buff	# tmp68,
	st.w	[r1], r0	#, tmp68
	call	puts		#
# basic.c:1769: 				to_print_len = 0;
	xor.w	r0, r0	# tmp69
	st.w	[to_print_len], r0	# to_print_len, tmp69
# basic.c:1770: 				return;
	j	.L381		#
.L388:
# basic.c:1772: 			  delay(10);
	mov.w	r1, sp	# tmp70,
	mov.w	r0, 10	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	delay		#
# basic.c:1763: 		for (i = 0; i < 1000; i++) {
	ld.w	r0, [r13 + (-4)]	# tmp73, i
	add.w	r0, 1 #111	# tmp72,
	st.w	[r13 + (-4)], r0	# i, tmp72
.L387:
# basic.c:1763: 		for (i = 0; i < 1000; i++) {
	ld.w	r1, [r13 + (-4)]	# tmp74, i
	mov.w	r0, 999	# tmp75,
	cmp.w	r1, r0	# tmp74, tmp75
	jses	.L389		#
# basic.c:1774: 		printf("NETWORK TIMEOUT\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC33	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
.L381:
# basic.c:1776: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_dir, .-exec_dir
	.section	.rodata
	.p2align	2
.LC34:
	.string	"Invalid video mode: %d\n"
	.text
	.p2align	1
	.global	exec_mode
	.type	exec_mode, @function
exec_mode:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# basic.c:1782: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1783: 	expression_error = 0;
	xor.w	r0, r0	# tmp29
	st.b	[expression_error], r0	# expression_error, tmp29
# basic.c:1784: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# value,
# basic.c:1785: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.353_1, expression_error
# basic.c:1785: 	if (expression_error)
	sex.b	r1, r0	# tmp30, expression_error.353_1
	xor.w	r0, r0	# tmp31
	cmp.w	r1, r0	# tmp30, tmp31
	jz	.L391		#
# basic.c:1787: 		qwhat();
	call	qwhat		#
# basic.c:1788: 		return;
	j	.L390		#
.L391:
# basic.c:1791: 	switch ((int)value)
	ld.w	r0, [r13 + (-4)]	# tmp32, value
	st.w	[sp], r0	#, tmp32
	call	__fixsfsi		#
# basic.c:1791: 	switch ((int)value)
	mov.w	r1, 2	# tmp33,
	cmp.w	r0, r1	# _2, tmp33
	jz	.L393		#
	mov.w	r1, 2	# tmp34,
	cmp.w	r0, r1	# _2, tmp34
	jgs	.L394		#
	xor.w	r1, r1	# tmp35
	cmp.w	r0, r1	# _2, tmp35
	jz	.L395		#
	mov.w	r1, 1	# tmp36,
	cmp.w	r0, r1	# _2, tmp36
	jz	.L396		#
	j	.L394		#
.L395:
# basic.c:1794: 			video_mode(0);
	mov.w	r1, sp	# tmp37,
	xor.w	r0, r0	# tmp38
	st.w	[r1], r0	#, tmp38
	call	video_mode		#
# basic.c:1796: 			break;
	j	.L390		#
.L396:
# basic.c:1798: 			video_mode(1);
	mov.w	r1, sp	# tmp39,
	mov.w	r0, 1	# tmp40,
	st.w	[r1], r0	#, tmp40
	call	video_mode		#
# basic.c:1800: 			break;
	j	.L390		#
.L393:
# basic.c:1802: 			video_mode(2);
	mov.w	r1, sp	# tmp41,
	mov.w	r0, 2	# tmp42,
	st.w	[r1], r0	#, tmp42
	call	video_mode		#
# basic.c:1804: 			break;
	j	.L390		#
.L394:
# basic.c:1806: 			video_mode(0);
	mov.w	r1, sp	# tmp43,
	xor.w	r0, r0	# tmp44
	st.w	[r1], r0	#, tmp44
	call	video_mode		#
# basic.c:1808: 			printf("Invalid video mode: %d\n", value);
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
	mov.w	r1, .LC34	# tmp49,
	st.w	[r0], r1	#, tmp49
	call	printf		#
.L390:
# basic.c:1810: }
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
# basic.c:1816: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1817: 	expression_error = 0;
	xor.w	r0, r0	# tmp40
	st.b	[expression_error], r0	# expression_error, tmp40
# basic.c:1818: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# x,
# basic.c:1819: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.354_1, expression_error
# basic.c:1819: 	if (expression_error)
	sex.b	r1, r0	# tmp41, expression_error.354_1
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L398		#
# basic.c:1821: 		qwhat();
	call	qwhat		#
# basic.c:1822: 		return;
	j	.L397		#
.L398:
# basic.c:1824: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1825: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.355_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.355_2
# basic.c:1825: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp43, _3
	mov.w	r0, 44	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L400		#
# basic.c:1827: 		qwhat();
	call	qwhat		#
# basic.c:1828: 		return;
	j	.L397		#
.L400:
# basic.c:1832: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.356_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1834: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1835: 	expression_error = 0;
	xor.w	r0, r0	# tmp45
	st.b	[expression_error], r0	# expression_error, tmp45
# basic.c:1836: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# y,
# basic.c:1837: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.357_6, expression_error
# basic.c:1837: 	if (expression_error)
	sex.b	r1, r0	# tmp46, expression_error.357_6
	xor.w	r0, r0	# tmp47
	cmp.w	r1, r0	# tmp46, tmp47
	jz	.L401		#
# basic.c:1839: 		qwhat();
	call	qwhat		#
# basic.c:1840: 		return;
	j	.L397		#
.L401:
# basic.c:1842: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1843: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.358_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.358_7
# basic.c:1843: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp48, _8
	mov.w	r0, 44	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jz	.L402		#
# basic.c:1845: 		qwhat();
	call	qwhat		#
# basic.c:1846: 		return;
	j	.L397		#
.L402:
# basic.c:1850: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.359_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1852: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1853: 	expression_error = 0;
	xor.w	r0, r0	# tmp50
	st.b	[expression_error], r0	# expression_error, tmp50
# basic.c:1854: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# c,
# basic.c:1855: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.360_11, expression_error
# basic.c:1855: 	if (expression_error)
	sex.b	r1, r0	# tmp51, expression_error.360_11
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# tmp51, tmp52
	jz	.L403		#
# basic.c:1857: 		qwhat();
	call	qwhat		#
# basic.c:1858: 		return;
	j	.L397		#
.L403:
# basic.c:1861: 	pixel((int)x, (int)y, (int)c);
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
.L397:
# basic.c:1862: }
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
# basic.c:1868: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1869: 	expression_error = 0;
	xor.w	r0, r0	# tmp52
	st.b	[expression_error], r0	# expression_error, tmp52
# basic.c:1870: 	x1 = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# x1,
# basic.c:1871: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.361_1, expression_error
# basic.c:1871: 	if (expression_error)
	sex.b	r1, r0	# tmp53, expression_error.361_1
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L405		#
# basic.c:1873: 		qwhat();
	call	qwhat		#
# basic.c:1874: 		return;
	j	.L404		#
.L405:
# basic.c:1876: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1877: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.362_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.362_2
# basic.c:1877: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp55, _3
	mov.w	r0, 44	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jz	.L407		#
# basic.c:1879: 		qwhat();
	call	qwhat		#
# basic.c:1880: 		return;
	j	.L404		#
.L407:
# basic.c:1884: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.363_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1886: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1887: 	expression_error = 0;
	xor.w	r0, r0	# tmp57
	st.b	[expression_error], r0	# expression_error, tmp57
# basic.c:1888: 	y1 = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# y1,
# basic.c:1889: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.364_6, expression_error
# basic.c:1889: 	if (expression_error)
	sex.b	r1, r0	# tmp58, expression_error.364_6
	xor.w	r0, r0	# tmp59
	cmp.w	r1, r0	# tmp58, tmp59
	jz	.L408		#
# basic.c:1891: 		qwhat();
	call	qwhat		#
# basic.c:1892: 		return;
	j	.L404		#
.L408:
# basic.c:1895: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1896: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.365_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.365_7
# basic.c:1896: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp60, _8
	mov.w	r0, 44	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L409		#
# basic.c:1898: 		qwhat();
	call	qwhat		#
# basic.c:1899: 		return;
	j	.L404		#
.L409:
# basic.c:1903: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.366_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1905: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1906: 	expression_error = 0;
	xor.w	r0, r0	# tmp62
	st.b	[expression_error], r0	# expression_error, tmp62
# basic.c:1907: 	x2 = expression();	
	call	expression		#
	st.w	[r13 + (-28)], r0	# x2,
# basic.c:1908: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.367_11, expression_error
# basic.c:1908: 	if (expression_error)
	sex.b	r1, r0	# tmp63, expression_error.367_11
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L410		#
# basic.c:1910: 		qwhat();
	call	qwhat		#
# basic.c:1911: 		return;
	j	.L404		#
.L410:
# basic.c:1913: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1914: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.368_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.368_12
# basic.c:1914: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp65, _13
	mov.w	r0, 44	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jz	.L411		#
# basic.c:1916: 		qwhat();
	call	qwhat		#
# basic.c:1917: 		return;
	j	.L404		#
.L411:
# basic.c:1921: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.369_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:1923: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1924: 	expression_error = 0;
	xor.w	r0, r0	# tmp67
	st.b	[expression_error], r0	# expression_error, tmp67
# basic.c:1925: 	y2 = expression();	
	call	expression		#
	st.w	[r13 + (-32)], r0	# y2,
# basic.c:1926: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.370_16, expression_error
# basic.c:1926: 	if (expression_error)
	sex.b	r1, r0	# tmp68, expression_error.370_16
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L412		#
# basic.c:1928: 		qwhat();
	call	qwhat		#
# basic.c:1929: 		return;
	j	.L404		#
.L412:
# basic.c:1931: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1932: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.371_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.371_17
# basic.c:1932: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp70, _18
	mov.w	r0, 44	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L413		#
# basic.c:1934: 		qwhat();
	call	qwhat		#
# basic.c:1935: 		return;
	j	.L404		#
.L413:
# basic.c:1939: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.372_19, txtpos
	add.w	r0, 1 #111	# _20,
	st.w	[txtpos], r0	# txtpos, _20
# basic.c:1942: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1943: 	expression_error = 0;
	xor.w	r0, r0	# tmp72
	st.b	[expression_error], r0	# expression_error, tmp72
# basic.c:1944: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-36)], r0	# c,
# basic.c:1945: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.373_21, expression_error
# basic.c:1945: 	if (expression_error)
	sex.b	r1, r0	# tmp73, expression_error.373_21
	xor.w	r0, r0	# tmp74
	cmp.w	r1, r0	# tmp73, tmp74
	jz	.L414		#
# basic.c:1947: 		qwhat();
	call	qwhat		#
# basic.c:1948: 		return;
	j	.L404		#
.L414:
# basic.c:1951: 	line((int)x1, (int)y1, (int)x2, (int)y2, (int)c);
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
.L404:
# basic.c:1952: }
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
# basic.c:1959: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1960: 	expression_error = 0;
	xor.w	r0, r0	# tmp46
	st.b	[expression_error], r0	# expression_error, tmp46
# basic.c:1961: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# x,
# basic.c:1962: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.374_1, expression_error
# basic.c:1962: 	if (expression_error)
	sex.b	r1, r0	# tmp47, expression_error.374_1
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# tmp47, tmp48
	jz	.L416		#
# basic.c:1964: 		qwhat();
	call	qwhat		#
# basic.c:1965: 		return;
	j	.L415		#
.L416:
# basic.c:1967: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1968: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.375_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.375_2
# basic.c:1968: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp49, _3
	mov.w	r0, 44	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jz	.L418		#
# basic.c:1970: 		qwhat();
	call	qwhat		#
# basic.c:1971: 		return;
	j	.L415		#
.L418:
# basic.c:1975: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.376_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:1977: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1978: 	expression_error = 0;
	xor.w	r0, r0	# tmp51
	st.b	[expression_error], r0	# expression_error, tmp51
# basic.c:1979: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# y,
# basic.c:1980: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.377_6, expression_error
# basic.c:1980: 	if (expression_error)
	sex.b	r1, r0	# tmp52, expression_error.377_6
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jz	.L419		#
# basic.c:1982: 		qwhat();
	call	qwhat		#
# basic.c:1983: 		return;
	j	.L415		#
.L419:
# basic.c:1985: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1986: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.378_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.378_7
# basic.c:1986: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp54, _8
	mov.w	r0, 44	# tmp55,
	cmp.w	r1, r0	# tmp54, tmp55
	jz	.L420		#
# basic.c:1988: 		qwhat();
	call	qwhat		#
# basic.c:1989: 		return;
	j	.L415		#
.L420:
# basic.c:1993: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.379_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:1995: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:1996: 	expression_error = 0;
	xor.w	r0, r0	# tmp56
	st.b	[expression_error], r0	# expression_error, tmp56
# basic.c:1997: 	r = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# r,
# basic.c:1998: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.380_11, expression_error
# basic.c:1998: 	if (expression_error)
	sex.b	r1, r0	# tmp57, expression_error.380_11
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L421		#
# basic.c:2000: 		qwhat();
	call	qwhat		#
# basic.c:2001: 		return;
	j	.L415		#
.L421:
# basic.c:2003: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2004: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.381_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.381_12
# basic.c:2004: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp59, _13
	mov.w	r0, 44	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L422		#
# basic.c:2006: 		qwhat();
	call	qwhat		#
# basic.c:2007: 		return;
	j	.L415		#
.L422:
# basic.c:2011: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.382_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2013: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2014: 	expression_error = 0;
	xor.w	r0, r0	# tmp61
	st.b	[expression_error], r0	# expression_error, tmp61
# basic.c:2015: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-28)], r0	# c,
# basic.c:2016: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.383_16, expression_error
# basic.c:2016: 	if (expression_error)
	sex.b	r1, r0	# tmp62, expression_error.383_16
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jz	.L423		#
# basic.c:2018: 		qwhat();
	call	qwhat		#
# basic.c:2019: 		return;
	j	.L415		#
.L423:
# basic.c:2022: 	circle((int)x, (int)y, (int)r, (int)c);
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
.L415:
# basic.c:2023: }
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
# basic.c:2031: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2032: 	expression_error = 0;
	xor.w	r0, r0	# tmp63
	st.b	[expression_error], r0	# expression_error, tmp63
# basic.c:2033: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# x,
# basic.c:2034: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.384_1, expression_error
# basic.c:2034: 	if (expression_error)
	sex.b	r1, r0	# tmp64, expression_error.384_1
	xor.w	r0, r0	# tmp65
	cmp.w	r1, r0	# tmp64, tmp65
	jz	.L425		#
# basic.c:2036: 		qwhat();
	call	qwhat		#
# basic.c:2037: 		return;
	j	.L424		#
.L425:
# basic.c:2039: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2040: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.385_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.385_2
# basic.c:2040: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp66, _3
	mov.w	r0, 44	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jz	.L427		#
# basic.c:2042: 		qwhat();
	call	qwhat		#
# basic.c:2043: 		return;
	j	.L424		#
.L427:
# basic.c:2047: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.386_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2049: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2050: 	expression_error = 0;
	xor.w	r0, r0	# tmp68
	st.b	[expression_error], r0	# expression_error, tmp68
# basic.c:2051: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-20)], r0	# y,
# basic.c:2052: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.387_6, expression_error
# basic.c:2052: 	if (expression_error)
	sex.b	r1, r0	# tmp69, expression_error.387_6
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jz	.L428		#
# basic.c:2054: 		qwhat();
	call	qwhat		#
# basic.c:2055: 		return;
	j	.L424		#
.L428:
# basic.c:2057: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2058: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.388_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.388_7
# basic.c:2058: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp71, _8
	mov.w	r0, 44	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jz	.L429		#
# basic.c:2060: 		qwhat();
	call	qwhat		#
# basic.c:2061: 		return;
	j	.L424		#
.L429:
# basic.c:2065: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.389_9, txtpos
	add.w	r0, 1 #111	# _10,
	st.w	[txtpos], r0	# txtpos, _10
# basic.c:2067: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2068: 	expression_error = 0;
	xor.w	r0, r0	# tmp73
	st.b	[expression_error], r0	# expression_error, tmp73
# basic.c:2069: 	c = expression();	
	call	expression		#
	st.w	[r13 + (-24)], r0	# c,
# basic.c:2070: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.390_11, expression_error
# basic.c:2070: 	if (expression_error)
	sex.b	r1, r0	# tmp74, expression_error.390_11
	xor.w	r0, r0	# tmp75
	cmp.w	r1, r0	# tmp74, tmp75
	jz	.L430		#
# basic.c:2072: 		qwhat();
	call	qwhat		#
# basic.c:2073: 		return;
	j	.L424		#
.L430:
# basic.c:2075: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2076: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.391_12, txtpos
	ld.b	r0, [r0]	# _13, *txtpos.391_12
# basic.c:2076: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp76, _13
	mov.w	r0, 44	# tmp77,
	cmp.w	r1, r0	# tmp76, tmp77
	jz	.L431		#
# basic.c:2078: 		qwhat();
	call	qwhat		#
# basic.c:2079: 		return;
	j	.L424		#
.L431:
# basic.c:2083: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.392_14, txtpos
	add.w	r0, 1 #111	# _15,
	st.w	[txtpos], r0	# txtpos, _15
# basic.c:2085: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2086: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.393_16, txtpos
	ld.b	r0, [r0]	# _17, *txtpos.393_16
# basic.c:2086: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp78, _17
	mov.w	r0, 34	# tmp79,
	cmp.w	r1, r0	# tmp78, tmp79
	jz	.L432		#
# basic.c:2086: 	if (*txtpos != '"' && *txtpos != '\'')
	ld.w	r0, [txtpos]	# txtpos.394_18, txtpos
	ld.b	r0, [r0]	# _19, *txtpos.394_18
# basic.c:2086: 	if (*txtpos != '"' && *txtpos != '\'')
	zex.b	r1, r0	# tmp80, _19
	mov.w	r0, 39	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jz	.L432		#
# basic.c:2088: 		qwhat();
	call	qwhat		#
# basic.c:2089: 		return;
	j	.L424		#
.L432:
# basic.c:2091: 	txtpos++;
	ld.w	r0, [txtpos]	# txtpos.395_20, txtpos
	add.w	r0, 1 #111	# _21,
	st.w	[txtpos], r0	# txtpos, _21
# basic.c:2092: 	i = 0;
	xor.w	r0, r0	# tmp82
	st.w	[r13 + (-12)], r0	# i, tmp82
# basic.c:2093: 	while (*txtpos != NL && *txtpos != 0)
	j	.L433		#
.L437:
# basic.c:2095: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.396_22, txtpos
	ld.b	r0, [r0]	# _23, *txtpos.396_22
# basic.c:2095: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp83, _23
	mov.w	r0, 34	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jz	.L434		#
# basic.c:2095: 		if (*txtpos == '"' || *txtpos == '\'')
	ld.w	r0, [txtpos]	# txtpos.397_24, txtpos
	ld.b	r0, [r0]	# _25, *txtpos.397_24
# basic.c:2095: 		if (*txtpos == '"' || *txtpos == '\'')
	zex.b	r1, r0	# tmp85, _25
	mov.w	r0, 39	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jnz	.L435		#
.L434:
# basic.c:2097: 			s[i] = 0;
	mov.w	r0, r13	# tmp87,
	add.w	r0, -124 #111	# tmp87,
	ld.w	r1, [r13 + (-12)]	# tmp89, i
	add.w	r0, r1 #222	# tmp88, tmp89
	xor.w	r1, r1	# tmp90
	st.b	[r0], r1	# s, tmp90
# basic.c:2098: 			break;
	j	.L436		#
.L435:
# basic.c:2100: 		s[i] = *txtpos;
	ld.w	r0, [txtpos]	# txtpos.398_26, txtpos
	ld.b	r0, [r0]	# _27, *txtpos.398_26
	mov.w	r1, r0	# _28, _27
# basic.c:2100: 		s[i] = *txtpos;
	mov.w	r0, r13	# tmp91,
	add.w	r0, -124 #111	# tmp91,
	ld.w	r2, [r13 + (-12)]	# tmp93, i
	add.w	r0, r2 #222	# tmp92, tmp93
	st.b	[r0], r1	# s, _28
# basic.c:2101: 		i++;
	ld.w	r0, [r13 + (-12)]	# tmp95, i
	add.w	r0, 1 #111	# tmp94,
	st.w	[r13 + (-12)], r0	# i, tmp94
# basic.c:2102: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.399_29, txtpos
	add.w	r0, 1 #111	# _30,
	st.w	[txtpos], r0	# txtpos, _30
.L433:
# basic.c:2093: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.400_31, txtpos
	ld.b	r0, [r0]	# _32, *txtpos.400_31
# basic.c:2093: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp96, _32
	mov.w	r0, 10	# tmp97,
	cmp.w	r1, r0	# tmp96, tmp97
	jz	.L436		#
# basic.c:2093: 	while (*txtpos != NL && *txtpos != 0)
	ld.w	r0, [txtpos]	# txtpos.401_33, txtpos
	ld.b	r0, [r0]	# _34, *txtpos.401_33
# basic.c:2093: 	while (*txtpos != NL && *txtpos != 0)
	zex.b	r1, r0	# tmp98, _34
	xor.w	r0, r0	# tmp99
	cmp.w	r1, r0	# tmp98, tmp99
	jnz	.L437		#
.L436:
# basic.c:2104: 	draw((int)x, (int)y, (int)c, s);
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
.L424:
# basic.c:2105: }
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
.LC35:
	.string	"END"
	.p2align	2
.LC36:
	.string	"MEM"
	.p2align	2
.LC37:
	.string	"LET I = 5"
	.p2align	2
.LC38:
	.string	"I = 5"
	.p2align	2
.LC39:
	.string	"INPUT A"
	.p2align	2
.LC40:
	.string	"PRINT A"
	.p2align	2
.LC41:
	.string	"? A"
	.p2align	2
.LC42:
	.string	"FOR I = 1 TO 10 STEP 2"
	.p2align	2
.LC43:
	.string	"NEXT I"
	.p2align	2
.LC44:
	.string	"IF I = 5 GOTO 100"
	.p2align	2
.LC45:
	.string	"GOTO 100"
	.p2align	2
.LC46:
	.string	"GOSUB 100"
	.p2align	2
.LC47:
	.string	"RETURN"
	.p2align	2
.LC48:
	.string	"LOAD P1.BAS"
	.p2align	2
.LC49:
	.string	"SAVE P2.BAS"
	.p2align	2
.LC50:
	.string	"MODE 0 (MODE 1, MODE 2)"
	.p2align	2
.LC51:
	.string	"PLOT 100, 100, color"
	.p2align	2
.LC52:
	.string	"LINE 100, 100, 200, 200, color"
	.p2align	2
.LC53:
	.string	"CIRCLE 100, 100, 50, color"
	.p2align	2
.LC54:
	.string	"DRAW 100, 100, color, 'TEXT'"
	.p2align	2
.LC55:
	.string	"A = KEY()"
	.p2align	2
.LC56:
	.string	"A = ISKEY()"
	.p2align	2
.LC57:
	.string	"DELAY 1000"
	.p2align	2
.LC58:
	.string	"CURSOR 10, 10"
	.p2align	2
.LC59:
	.string	"EXEC TEST.BIN"
	.p2align	2
.LC60:
	.string	"SYS 0"
	.p2align	2
.LC61:
	.string	"DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)"
	.p2align	2
.LC62:
	.string	"TIME"
	.p2align	2
.LC63:
	.string	"ETH 1 or ETH 0"
	.text
	.p2align	1
	.global	exec_help
	.type	exec_help, @function
exec_help:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2109: 	printf("END\n");
	mov.w	r1, sp	# tmp26,
	mov.w	r0, .LC35	# tmp27,
	st.w	[r1], r0	#, tmp27
	call	puts		#
# basic.c:2110: 	printf("MEM\n");
	mov.w	r1, sp	# tmp28,
	mov.w	r0, .LC36	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	puts		#
# basic.c:2111: 	printf("LET I = 5\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC37	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
# basic.c:2112: 	printf("I = 5\n");
	mov.w	r1, sp	# tmp32,
	mov.w	r0, .LC38	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	puts		#
# basic.c:2113: 	printf("INPUT A\n");
	mov.w	r1, sp	# tmp34,
	mov.w	r0, .LC39	# tmp35,
	st.w	[r1], r0	#, tmp35
	call	puts		#
# basic.c:2114: 	printf("PRINT A\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC40	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
# basic.c:2115: 	printf("? A\n");
	mov.w	r1, sp	# tmp38,
	mov.w	r0, .LC41	# tmp39,
	st.w	[r1], r0	#, tmp39
	call	puts		#
# basic.c:2116: 	printf("FOR I = 1 TO 10 STEP 2\n");
	mov.w	r1, sp	# tmp40,
	mov.w	r0, .LC42	# tmp41,
	st.w	[r1], r0	#, tmp41
	call	puts		#
# basic.c:2117: 	printf("NEXT I\n");
	mov.w	r1, sp	# tmp42,
	mov.w	r0, .LC43	# tmp43,
	st.w	[r1], r0	#, tmp43
	call	puts		#
# basic.c:2118: 	printf("IF I = 5 GOTO 100\n");
	mov.w	r1, sp	# tmp44,
	mov.w	r0, .LC44	# tmp45,
	st.w	[r1], r0	#, tmp45
	call	puts		#
# basic.c:2119: 	printf("GOTO 100\n");
	mov.w	r1, sp	# tmp46,
	mov.w	r0, .LC45	# tmp47,
	st.w	[r1], r0	#, tmp47
	call	puts		#
# basic.c:2120: 	printf("GOSUB 100\n");
	mov.w	r1, sp	# tmp48,
	mov.w	r0, .LC46	# tmp49,
	st.w	[r1], r0	#, tmp49
	call	puts		#
# basic.c:2121: 	printf("RETURN\n");
	mov.w	r1, sp	# tmp50,
	mov.w	r0, .LC47	# tmp51,
	st.w	[r1], r0	#, tmp51
	call	puts		#
# basic.c:2122: 	printf("LOAD P1.BAS\n");
	mov.w	r1, sp	# tmp52,
	mov.w	r0, .LC48	# tmp53,
	st.w	[r1], r0	#, tmp53
	call	puts		#
# basic.c:2123: 	printf("SAVE P2.BAS\n");
	mov.w	r1, sp	# tmp54,
	mov.w	r0, .LC49	# tmp55,
	st.w	[r1], r0	#, tmp55
	call	puts		#
# basic.c:2124: 	printf("MODE 0 (MODE 1, MODE 2)\n");
	mov.w	r1, sp	# tmp56,
	mov.w	r0, .LC50	# tmp57,
	st.w	[r1], r0	#, tmp57
	call	puts		#
# basic.c:2125: 	printf("PLOT 100, 100, color\n");
	mov.w	r1, sp	# tmp58,
	mov.w	r0, .LC51	# tmp59,
	st.w	[r1], r0	#, tmp59
	call	puts		#
# basic.c:2126: 	printf("LINE 100, 100, 200, 200, color\n");
	mov.w	r1, sp	# tmp60,
	mov.w	r0, .LC52	# tmp61,
	st.w	[r1], r0	#, tmp61
	call	puts		#
# basic.c:2127: 	printf("CIRCLE 100, 100, 50, color\n");
	mov.w	r1, sp	# tmp62,
	mov.w	r0, .LC53	# tmp63,
	st.w	[r1], r0	#, tmp63
	call	puts		#
# basic.c:2128: 	printf("DRAW 100, 100, color, 'TEXT'\n");
	mov.w	r1, sp	# tmp64,
	mov.w	r0, .LC54	# tmp65,
	st.w	[r1], r0	#, tmp65
	call	puts		#
# basic.c:2129: 	printf("A = KEY()\n");
	mov.w	r1, sp	# tmp66,
	mov.w	r0, .LC55	# tmp67,
	st.w	[r1], r0	#, tmp67
	call	puts		#
# basic.c:2130: 	printf("A = ISKEY()\n");
	mov.w	r1, sp	# tmp68,
	mov.w	r0, .LC56	# tmp69,
	st.w	[r1], r0	#, tmp69
	call	puts		#
# basic.c:2131: 	printf("DELAY 1000\n");
	mov.w	r1, sp	# tmp70,
	mov.w	r0, .LC57	# tmp71,
	st.w	[r1], r0	#, tmp71
	call	puts		#
# basic.c:2132: 	printf("CURSOR 10, 10\n");
	mov.w	r1, sp	# tmp72,
	mov.w	r0, .LC58	# tmp73,
	st.w	[r1], r0	#, tmp73
	call	puts		#
# basic.c:2133: 	printf("EXEC TEST.BIN\n");
	mov.w	r1, sp	# tmp74,
	mov.w	r0, .LC59	# tmp75,
	st.w	[r1], r0	#, tmp75
	call	puts		#
# basic.c:2134: 	printf("SYS 0\n");
	mov.w	r1, sp	# tmp76,
	mov.w	r0, .LC60	# tmp77,
	st.w	[r1], r0	#, tmp77
	call	puts		#
# basic.c:2135: 	printf("DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)\n");
	mov.w	r1, sp	# tmp78,
	mov.w	r0, .LC61	# tmp79,
	st.w	[r1], r0	#, tmp79
	call	puts		#
# basic.c:2136: 	printf("TIME\n");
	mov.w	r1, sp	# tmp80,
	mov.w	r0, .LC62	# tmp81,
	st.w	[r1], r0	#, tmp81
	call	puts		#
# basic.c:2137: 	printf("ETH 1 or ETH 0\n");
	mov.w	r1, sp	# tmp82,
	mov.w	r0, .LC63	# tmp83,
	st.w	[r1], r0	#, tmp83
	call	puts		#
# basic.c:2138: }
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
# basic.c:2144: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2145: 	expression_error = 0;
	xor.w	r0, r0	# tmp28
	st.b	[expression_error], r0	# expression_error, tmp28
# basic.c:2146: 	d = expression();	
	call	expression		#
	st.w	[r13 + (-4)], r0	# d,
# basic.c:2147: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.402_1, expression_error
# basic.c:2147: 	if (expression_error)
	sex.b	r1, r0	# tmp29, expression_error.402_1
	xor.w	r0, r0	# tmp30
	cmp.w	r1, r0	# tmp29, tmp30
	jz	.L441		#
# basic.c:2149: 		qwhat();
	call	qwhat		#
# basic.c:2150: 		return;
	j	.L440		#
.L441:
# basic.c:2152: 	delay((int)d);
	ld.w	r0, [r13 + (-4)]	# tmp31, d
	st.w	[sp], r0	#, tmp31
	call	__fixsfsi		#
	mov.w	r1, r0	# _2,
	mov.w	r0, sp	# tmp32,
	st.w	[r0], r1	#, _2
	call	delay		#
.L440:
# basic.c:2153: }
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
# basic.c:2159: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2160: 	expression_error = 0;
	xor.w	r0, r0	# tmp34
	st.b	[expression_error], r0	# expression_error, tmp34
# basic.c:2161: 	x = expression();	
	call	expression		#
	st.w	[r13 + (-8)], r0	# x,
# basic.c:2162: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.403_1, expression_error
# basic.c:2162: 	if (expression_error)
	sex.b	r1, r0	# tmp35, expression_error.403_1
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# tmp35, tmp36
	jz	.L444		#
# basic.c:2164: 		qwhat();
	call	qwhat		#
# basic.c:2165: 		return;
	j	.L443		#
.L444:
# basic.c:2167: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2168: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.404_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.404_2
# basic.c:2168: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp37, _3
	mov.w	r0, 44	# tmp38,
	cmp.w	r1, r0	# tmp37, tmp38
	jz	.L446		#
# basic.c:2170: 		qwhat();
	call	qwhat		#
# basic.c:2171: 		return;
	j	.L443		#
.L446:
# basic.c:2175: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.405_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2177: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2178: 	expression_error = 0;
	xor.w	r0, r0	# tmp39
	st.b	[expression_error], r0	# expression_error, tmp39
# basic.c:2179: 	y = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# y,
# basic.c:2180: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.406_6, expression_error
# basic.c:2180: 	if (expression_error)
	sex.b	r1, r0	# tmp40, expression_error.406_6
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L447		#
# basic.c:2182: 		qwhat();
	call	qwhat		#
# basic.c:2183: 		return;
	j	.L443		#
.L447:
# basic.c:2186: 	xy((int)x, (int)y);
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
.L443:
# basic.c:2187: }
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
# basic.c:2193: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2194: 	expression_error = 0;
	xor.w	r0, r0	# tmp38
	st.b	[expression_error], r0	# expression_error, tmp38
# basic.c:2195: 	addr = expression();	
	call	expression		#
	st.w	[r13 + (-12)], r0	# addr,
# basic.c:2196: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.407_1, expression_error
# basic.c:2196: 	if (expression_error)
	sex.b	r1, r0	# tmp39, expression_error.407_1
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jz	.L449		#
# basic.c:2198: 		qwhat();
	call	qwhat		#
# basic.c:2199: 		return;
	j	.L448		#
.L449:
# basic.c:2201: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2202: 	if (*txtpos != ',')
	ld.w	r0, [txtpos]	# txtpos.408_2, txtpos
	ld.b	r0, [r0]	# _3, *txtpos.408_2
# basic.c:2202: 	if (*txtpos != ',')
	zex.b	r1, r0	# tmp41, _3
	mov.w	r0, 44	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jz	.L451		#
# basic.c:2204: 		qwhat();
	call	qwhat		#
# basic.c:2205: 		return;
	j	.L448		#
.L451:
# basic.c:2209: 		txtpos++;
	ld.w	r0, [txtpos]	# txtpos.409_4, txtpos
	add.w	r0, 1 #111	# _5,
	st.w	[txtpos], r0	# txtpos, _5
# basic.c:2211: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2212: 	expression_error = 0;
	xor.w	r0, r0	# tmp43
	st.b	[expression_error], r0	# expression_error, tmp43
# basic.c:2213: 	value = expression();	
	call	expression		#
	st.w	[r13 + (-16)], r0	# value,
# basic.c:2214: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.410_6, expression_error
# basic.c:2214: 	if (expression_error)
	sex.b	r1, r0	# tmp44, expression_error.410_6
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# tmp44, tmp45
	jz	.L452		#
# basic.c:2216: 		qwhat();
	call	qwhat		#
# basic.c:2217: 		return;
	j	.L448		#
.L452:
# basic.c:2220: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r0, [r13 + (-16)]	# tmp46, value
	st.w	[sp], r0	#, tmp46
	call	__fixsfsi		#
	mov.w	r7, r0	# _7,
# basic.c:2220: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r6, [buffer]	# buffer.411_8, buffer
# basic.c:2220: 	buffer[(int)addr] = (int)value & 0XFF;
	ld.w	r0, [r13 + (-12)]	# tmp47, addr
	st.w	[sp], r0	#, tmp47
	call	__fixsfsi		#
	mov.w	r1, r0	# _10, _9
# basic.c:2220: 	buffer[(int)addr] = (int)value & 0XFF;
	mov.w	r0, r6	# _11, buffer.411_8
	add.w	r0, r1 #222	# _11, _10
# basic.c:2220: 	buffer[(int)addr] = (int)value & 0XFF;
	mov.w	r1, r7	# _12, _7
	st.b	[r0], r1	# *_11, _12
.L448:
# basic.c:2221: }
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
.LC64:
	.string	"SD card init failed!"
	.p2align	2
.LC65:
	.string	"SD card volume failed!"
	.text
	.p2align	1
	.global	init_sd
	.type	init_sd, @function
init_sd:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2225: 	if(!sdcard_init())
	call	sdcard_init		#
# basic.c:2225: 	if(!sdcard_init())
	zex.b	r1, r0	# tmp28, _1
	xor.w	r0, r0	# tmp29
	cmp.w	r1, r0	# tmp28, tmp29
	jnz	.L454		#
# basic.c:2227: 		printf("SD card init failed!\n");
	mov.w	r1, sp	# tmp30,
	mov.w	r0, .LC64	# tmp31,
	st.w	[r1], r0	#, tmp31
	call	puts		#
.L454:
# basic.c:2229: 	if (!volume_init(1))
	mov.w	r1, sp	# tmp32,
	mov.w	r0, 1	# tmp33,
	st.w	[r1], r0	#, tmp33
	call	volume_init		#
# basic.c:2229: 	if (!volume_init(1))
	zex.b	r1, r0	# tmp34, _2
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jnz	.L456		#
# basic.c:2231: 		printf("SD card volume failed!\n");
	mov.w	r1, sp	# tmp36,
	mov.w	r0, .LC65	# tmp37,
	st.w	[r1], r0	#, tmp37
	call	puts		#
.L456:
# basic.c:2233: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_sd, .-init_sd
	.section	.rodata
	.p2align	2
.LC66:
	.string	"Loading program: [%s]\n"
	.p2align	2
.LC67:
	.string	"File open failed for file: [%s]\n"
	.p2align	2
.LC68:
	.string	"Error loading program %s\n"
	.text
	.p2align	1
	.global	exec_exec
	.type	exec_exec, @function
exec_exec:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 160 #111	#,
# basic.c:2240: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2241: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.412_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.412_1
# basic.c:2241: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp75, _2
	mov.w	r0, 64	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jse	.L458		#
# basic.c:2241: 	if (*txtpos < 'A' || *txtpos > 'Z')
	ld.w	r0, [txtpos]	# txtpos.413_3, txtpos
	ld.b	r0, [r0]	# _4, *txtpos.413_3
# basic.c:2241: 	if (*txtpos < 'A' || *txtpos > 'Z')
	zex.b	r1, r0	# tmp77, _4
	mov.w	r0, 90	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jse	.L459		#
.L458:
# basic.c:2243: 		qwhat();
	call	qwhat		#
# basic.c:2244: 		return;
	j	.L457		#
.L459:
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	xor.w	r0, r0	# tmp79
	st.w	[r13 + (-4)], r0	# i, tmp79
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	j	.L461		#
.L463:
# basic.c:2251: 		s[i] = txtpos[i];
	ld.w	r0, [txtpos]	# txtpos.414_5, txtpos
	ld.w	r1, [r13 + (-4)]	# i.415_6, i
	add.w	r0, r1 #222	# _7, i.415_6
	ld.b	r0, [r0]	# _8, *_7
	mov.w	r1, r0	# _9, _8
# basic.c:2251: 		s[i] = txtpos[i];
	mov.w	r0, r13	# tmp80,
	add.w	r0, -60 #111	# tmp80,
	ld.w	r2, [r13 + (-4)]	# tmp82, i
	add.w	r0, r2 #222	# tmp81, tmp82
	st.b	[r0], r1	# s, _9
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [r13 + (-4)]	# tmp84, i
	add.w	r0, 1 #111	# tmp83,
	st.w	[r13 + (-4)], r0	# i, tmp83
.L461:
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.416_10, txtpos
	ld.w	r1, [r13 + (-4)]	# i.417_11, i
	add.w	r0, r1 #222	# _12, i.417_11
	ld.b	r0, [r0]	# _13, *_12
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp85, _13
	mov.w	r0, 10	# tmp86,
	cmp.w	r1, r0	# tmp85, tmp86
	jz	.L462		#
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.418_14, txtpos
	ld.w	r1, [r13 + (-4)]	# i.419_15, i
	add.w	r0, r1 #222	# _16, i.419_15
	ld.b	r0, [r0]	# _17, *_16
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp87, _17
	mov.w	r0, 13	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L462		#
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.420_18, txtpos
	ld.w	r1, [r13 + (-4)]	# i.421_19, i
	add.w	r0, r1 #222	# _20, i.421_19
	ld.b	r0, [r0]	# _21, *_20
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp89, _21
	mov.w	r0, 32	# tmp90,
	cmp.w	r1, r0	# tmp89, tmp90
	jz	.L462		#
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r0, [txtpos]	# txtpos.422_22, txtpos
	ld.w	r1, [r13 + (-4)]	# i.423_23, i
	add.w	r0, r1 #222	# _24, i.423_23
	ld.b	r0, [r0]	# _25, *_24
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	zex.b	r1, r0	# tmp91, _25
	mov.w	r0, 9	# tmp92,
	cmp.w	r1, r0	# tmp91, tmp92
	jz	.L462		#
# basic.c:2248: 	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	ld.w	r1, [r13 + (-4)]	# tmp93, i
	mov.w	r0, 31	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jses	.L463		#
.L462:
# basic.c:2253: 	s[i] = 0;
	mov.w	r0, r13	# tmp95,
	add.w	r0, -60 #111	# tmp95,
	ld.w	r1, [r13 + (-4)]	# tmp97, i
	add.w	r0, r1 #222	# tmp96, tmp97
	xor.w	r1, r1	# tmp98
	st.b	[r0], r1	# s, tmp98
# basic.c:2255: 	i = 0;
	xor.w	r0, r0	# tmp99
	st.w	[r13 + (-4)], r0	# i, tmp99
# basic.c:2256: 	printf("Loading program: [%s]\n", s);
	mov.w	r0, sp	# tmp100,
	mov.w	r1, r13	# tmp101,
	add.w	r1, -60 #111	# tmp101,
	st.w	[r0 + (4)], r1	#, tmp101
	mov.w	r1, .LC66	# tmp102,
	st.w	[r0], r1	#, tmp102
	call	printf		#
# basic.c:2257: 	if (drive == 0)
	ld.b	r0, [drive]	# drive.424_26, drive
# basic.c:2257: 	if (drive == 0)
	sex.b	r1, r0	# tmp103, drive.424_26
	xor.w	r0, r0	# tmp104
	cmp.w	r1, r0	# tmp103, tmp104
	jnz	.L464		#
# basic.c:2261: load_again:		
	nop	
.L465:
# basic.c:2262: 		if(file_open(s, &fd, O_READ))
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
# basic.c:2262: 		if(file_open(s, &fd, O_READ))
	zex.b	r1, r0	# tmp109, _27
	xor.w	r0, r0	# tmp110
	cmp.w	r1, r0	# tmp109, tmp110
	jz	.L466		#
# basic.c:2264: 			int len = fd.dir_entry.filesize;
	ld.w	r0, [r13 + (-104)]	# _28, fd.dir_entry.filesize
# basic.c:2264: 			int len = fd.dir_entry.filesize;
	st.w	[r13 + (-20)], r0	# len, _28
# basic.c:2265: 			int total = 0;
	xor.w	r0, r0	# tmp111
	st.w	[r13 + (-8)], r0	# total, tmp111
# basic.c:2267: 			while(total < len)
	j	.L467		#
.L470:
# basic.c:2269: 				current = file_read(&fd, &buffer[total], 512);
	ld.w	r1, [buffer]	# buffer.425_29, buffer
	ld.w	r0, [r13 + (-8)]	# total.426_30, total
	add.w	r1, r0 #222	# _31, total.426_30
	mov.w	r0, sp	# tmp112,
	mov.w	r2, 512	# tmp113,
	st.w	[r0 + (8)], r2	#, tmp113
	st.w	[r0 + (4)], r1	#, _31
	mov.w	r1, r13	# tmp114,
	add.w	r1, -136 #111	# tmp114,
	st.w	[r0], r1	#, tmp114
	call	file_read		#
# basic.c:2269: 				current = file_read(&fd, &buffer[total], 512);
	zex.s	r0, r0	# tmp115, _32
	st.w	[r13 + (-24)], r0	# current, tmp115
# basic.c:2270: 				if (current > 0) {
	ld.w	r1, [r13 + (-24)]	# tmp116, current
	xor.w	r0, r0	# tmp117
	cmp.w	r1, r0	# tmp116, tmp117
	jses	.L468		#
# basic.c:2271: 					total += current;
	ld.w	r0, [r13 + (-8)]	# tmp119, total
	ld.w	r1, [r13 + (-24)]	# tmp120, current
	add.w	r0, r1 #222	# tmp118, tmp120
	st.w	[r13 + (-8)], r0	# total, tmp118
# basic.c:2272: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r1, [r13 + (-8)]	# total.427_33, total
# basic.c:2272: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	ld.w	r0, [r13 + (-104)]	# _34, fd.dir_entry.filesize
# basic.c:2272: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	div.w	r1, r0	# _35, _34
# basic.c:2272: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 100	# tmp121,
	mul.w	r1, r0	# _36, tmp121
# basic.c:2272: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	mov.w	r0, 10	# tmp122,
	div.w	r1, r0	# _37, tmp122
mov.w	r1, r14	# _37
# basic.c:2272: 					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
	xor.w	r0, r0	# tmp123
	cmp.w	r1, r0	# _37, tmp123
	jnz	.L467		#
# basic.c:2273: 						printf("#");
	mov.w	r1, sp	# tmp124,
	mov.w	r0, 35	# tmp125,
	st.w	[r1], r0	#, tmp125
	call	putchar		#
	j	.L467		#
.L468:
# basic.c:2276: 					printf("Error reading file!\n");
	mov.w	r1, sp	# tmp126,
	mov.w	r0, .LC15	# tmp127,
	st.w	[r1], r0	#, tmp127
	call	puts		#
	j	.L457		#
.L467:
# basic.c:2267: 			while(total < len)
	ld.w	r1, [r13 + (-8)]	# tmp128, total
	ld.w	r0, [r13 + (-20)]	# tmp129, len
	cmp.w	r1, r0	# tmp128, tmp129
	jss	.L470		#
# basic.c:2281: 			buffer[len] = 0;
	ld.w	r0, [buffer]	# buffer.428_38, buffer
	ld.w	r1, [r13 + (-20)]	# len.429_39, len
	add.w	r0, r1 #222	# _40, len.429_39
# basic.c:2281: 			buffer[len] = 0;
	xor.w	r1, r1	# tmp130
	st.b	[r0], r1	# *_40, tmp130
# basic.c:2282: 			i = len;
	ld.w	r0, [r13 + (-20)]	# tmp131, len
	st.w	[r13 + (-4)], r0	# i, tmp131
# basic.c:2286: 			strcpy(fileName, s);
	mov.w	r0, sp	# tmp132,
	mov.w	r1, r13	# tmp133,
	add.w	r1, -60 #111	# tmp133,
	st.w	[r0 + (4)], r1	#, tmp133
	mov.w	r1, r13	# tmp134,
	add.w	r1, -80 #111	# tmp134,
	st.w	[r0], r1	#, tmp134
	call	strcpy		#
# basic.c:2287: 			int sum = 0;
	xor.w	r0, r0	# tmp135
	st.w	[r13 + (-12)], r0	# sum, tmp135
# basic.c:2288: 			for (int j = 0; j < i; j++) {
	xor.w	r0, r0	# tmp136
	st.w	[r13 + (-16)], r0	# j, tmp136
# basic.c:2288: 			for (int j = 0; j < i; j++) {
	j	.L471		#
.L472:
# basic.c:2289: 				sum += buffer[j];
	ld.w	r0, [buffer]	# buffer.430_41, buffer
	ld.w	r1, [r13 + (-16)]	# j.431_42, j
	add.w	r0, r1 #222	# _43, j.431_42
	ld.b	r0, [r0]	# _44, *_43
	sex.b	r1, r0	# _45, _44
# basic.c:2289: 				sum += buffer[j];
	ld.w	r0, [r13 + (-12)]	# tmp138, sum
	add.w	r0, r1 #222	# tmp137, _45
	st.w	[r13 + (-12)], r0	# sum, tmp137
# basic.c:2288: 			for (int j = 0; j < i; j++) {
	ld.w	r0, [r13 + (-16)]	# tmp140, j
	add.w	r0, 1 #111	# tmp139,
	st.w	[r13 + (-16)], r0	# j, tmp139
.L471:
# basic.c:2288: 			for (int j = 0; j < i; j++) {
	ld.w	r1, [r13 + (-16)]	# tmp141, j
	ld.w	r0, [r13 + (-4)]	# tmp142, i
	cmp.w	r1, r0	# tmp141, tmp142
	jss	.L472		#
# basic.c:2291: 			printf("\nSum: %d\n", sum);
	mov.w	r0, sp	# tmp143,
	ld.w	r1, [r13 + (-12)]	# tmp144, sum
	st.w	[r0 + (4)], r1	#, tmp144
	mov.w	r1, .LC16	# tmp145,
	st.w	[r0], r1	#, tmp145
	call	printf		#
	j	.L473		#
.L466:
# basic.c:2295: 			printf("File open failed for file: [%s]\n", s);
	mov.w	r0, sp	# tmp146,
	mov.w	r1, r13	# tmp147,
	add.w	r1, -60 #111	# tmp147,
	st.w	[r0 + (4)], r1	#, tmp147
	mov.w	r1, .LC67	# tmp148,
	st.w	[r0], r1	#, tmp148
	call	printf		#
# basic.c:2296: 			return;
	j	.L457		#
.L464:
# basic.c:2299: 	else if (drive == 2)
	ld.b	r0, [drive]	# drive.432_46, drive
# basic.c:2299: 	else if (drive == 2)
	sex.b	r1, r0	# tmp149, drive.432_46
	mov.w	r0, 2	# tmp150,
	cmp.w	r1, r0	# tmp149, tmp150
	jnz	.L474		#
# basic.c:2303: 		delay(100);
	mov.w	r1, sp	# tmp151,
	mov.w	r0, 100	# tmp152,
	st.w	[r1], r0	#, tmp152
	call	delay		#
# basic.c:2304: 		i = uart_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.433_47, buffer
	mov.w	r0, sp	# tmp153,
	mov.w	r2, r13	# tmp154,
	add.w	r2, -60 #111	# tmp154,
	st.w	[r0 + (4)], r2	#, tmp154
	st.w	[r0], r1	#, buffer.433_47
	call	uart_read_file		#
	st.w	[r13 + (-4)], r0	# i,
	j	.L473		#
.L474:
# basic.c:2308: 		i = eth_read_file(buffer, s);
	ld.w	r1, [buffer]	# buffer.434_48, buffer
	mov.w	r0, sp	# tmp155,
	mov.w	r2, r13	# tmp156,
	add.w	r2, -60 #111	# tmp156,
	st.w	[r0 + (4)], r2	#, tmp156
	st.w	[r0], r1	#, buffer.434_48
	call	eth_read_file		#
	st.w	[r13 + (-4)], r0	# i,
.L473:
# basic.c:2310: 	if (i > 0) 
	ld.w	r1, [r13 + (-4)]	# tmp157, i
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jses	.L475		#
# basic.c:2313: 		int old_color = color;
	ld.w	r0, [color]	# tmp159, color
	st.w	[r13 + (-28)], r0	# old_color, tmp159
# basic.c:2314: 		asm("mov.w r0, 197632\ncallr r0\n"); //asm("call 197632\n");
# 2314 "basic.c" 1
	mov.w r0, 197632
callr r0

# basic.c:2315: 		init_stdio();
	call	init_stdio		#
# basic.c:2316: 		video_mode(0);
	mov.w	r1, sp	# tmp160,
	xor.w	r0, r0	# tmp161
	st.w	[r1], r0	#, tmp161
	call	video_mode		#
# basic.c:2317: 		color = old_color;
	ld.w	r0, [r13 + (-28)]	# tmp162, old_color
	st.w	[color], r0	# color, tmp162
# basic.c:2320: 		uart_init_files();
	call	uart_init_files		#
# basic.c:2321: 		if (eth)
	ld.w	r1, [eth]	# eth.435_49, eth
# basic.c:2321: 		if (eth)
	xor.w	r0, r0	# tmp163
	cmp.w	r1, r0	# eth.435_49, tmp163
	jz	.L457		#
# basic.c:2323: 			init_spi();
	call	init_spi		#
# basic.c:2324: 			init_tcpip();
	call	init_tcpip		#
# basic.c:2325: 			init_sd();
	call	init_sd		#
	j	.L457		#
.L475:
# basic.c:2330: 		printf("Error loading program %s\n", s);
	mov.w	r0, sp	# tmp164,
	mov.w	r1, r13	# tmp165,
	add.w	r1, -60 #111	# tmp165,
	st.w	[r0 + (4)], r1	#, tmp165
	mov.w	r1, .LC68	# tmp166,
	st.w	[r0], r1	#, tmp166
	call	printf		#
.L457:
# basic.c:2332: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_exec, .-exec_exec
	.section	.rodata
	.p2align	2
.LC69:
	.string	"call %d\n"
	.text
	.p2align	1
	.global	exec_sys
	.type	exec_sys, @function
exec_sys:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 64 #111	#,
# basic.c:2339: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2340: 	expression_error = 0;
	xor.w	r0, r0	# tmp29
	st.b	[expression_error], r0	# expression_error, tmp29
# basic.c:2341: 	addr = (int)expression();	
	call	expression		#
	mov.w	r1, r0	# _1,
# basic.c:2341: 	addr = (int)expression();	
	mov.w	r0, r1	# tmp30, _1
	st.w	[sp], r0	#, tmp30
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# addr, tmp31
# basic.c:2342: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.436_2, expression_error
# basic.c:2342: 	if (expression_error)
	sex.b	r1, r0	# tmp32, expression_error.436_2
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jz	.L479		#
# basic.c:2344: 		qwhat();
	call	qwhat		#
	j	.L478		#
.L479:
# basic.c:2347: 	printf("call %d\n", addr);
	mov.w	r0, sp	# tmp34,
	ld.w	r1, [r13 + (-4)]	# tmp35, addr
	st.w	[r0 + (4)], r1	#, tmp35
	mov.w	r1, .LC69	# tmp36,
	st.w	[r0], r1	#, tmp36
	call	printf		#
# basic.c:2348: 	addr += 197632;
	ld.w	r0, [r13 + (-4)]	# tmp38, addr
	mov.w	r1, 197632	# tmp39,
	add.w	r0, r1 #222	# tmp37, tmp39
	st.w	[r13 + (-4)], r0	# addr, tmp37
# basic.c:2349: 	int old_color = color;
	ld.w	r0, [color]	# tmp40, color
	st.w	[r13 + (-8)], r0	# old_color, tmp40
# basic.c:2350: 	asm("ld.w r0, [r13 + (-4)]\ncallr r0\n");
# 2350 "basic.c" 1
	ld.w r0, [r13 + (-4)]
callr r0

# basic.c:2351: 	init_stdio();
	call	init_stdio		#
# basic.c:2352: 	video_mode(0);
	mov.w	r1, sp	# tmp41,
	xor.w	r0, r0	# tmp42
	st.w	[r1], r0	#, tmp42
	call	video_mode		#
# basic.c:2353: 	color = old_color;
	ld.w	r0, [r13 + (-8)]	# tmp43, old_color
	st.w	[color], r0	# color, tmp43
# basic.c:2356: 	uart_init_files();
	call	uart_init_files		#
# basic.c:2357: 	if (eth)
	ld.w	r1, [eth]	# eth.437_3, eth
# basic.c:2357: 	if (eth)
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# eth.437_3, tmp44
	jz	.L478		#
# basic.c:2359: 		init_spi();
	call	init_spi		#
# basic.c:2360: 		init_tcpip();
	call	init_tcpip		#
# basic.c:2361: 		init_sd();
	call	init_sd		#
.L478:
# basic.c:2363: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_sys, .-exec_sys
	.section	.rodata
	.p2align	2
.LC70:
	.string	"DRIVE: %d\n"
	.p2align	2
.LC71:
	.string	"Invalid drive number: %d. Can be from 0 to 2.\n"
	.text
	.p2align	1
	.global	exec_drive
	.type	exec_drive, @function
exec_drive:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2367: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2368: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.438_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.438_1
# basic.c:2368: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp44, _2
	mov.w	r0, 10	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L483		#
# basic.c:2370: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.439_3, drive
	sex.b	r1, r0	# _4, drive.439_3
	mov.w	r0, sp	# tmp46,
	st.w	[r0 + (4)], r1	#, _4
	mov.w	r1, .LC70	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	printf		#
# basic.c:2371: 		return;
	j	.L482		#
.L483:
# basic.c:2373: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.440_5, txtpos
	ld.b	r0, [r0]	# _6, *txtpos.440_5
# basic.c:2373: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _6
	mov.w	r0, 47	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L485		#
# basic.c:2373: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.441_7, txtpos
	ld.b	r0, [r0]	# _8, *txtpos.441_7
# basic.c:2373: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp50, _8
	mov.w	r0, 57	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jse	.L486		#
.L485:
# basic.c:2375: 		qwhat();
	call	qwhat		#
# basic.c:2376: 		return;
	j	.L482		#
.L486:
# basic.c:2378: 	drive = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.442_9, txtpos
	ld.b	r0, [r0]	# _10, *txtpos.442_9
# basic.c:2378: 	drive = *txtpos - '0';
	add.w	r0, -48 #111	# tmp52,
# basic.c:2378: 	drive = *txtpos - '0';
	st.b	[drive], r0	# drive, _12
# basic.c:2379: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.443_13, drive
# basic.c:2379: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp53, drive.443_13
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jss	.L487		#
# basic.c:2379: 	if (drive >= 0 && drive <= 2)
	ld.b	r0, [drive]	# drive.444_14, drive
# basic.c:2379: 	if (drive >= 0 && drive <= 2)
	sex.b	r1, r0	# tmp55, drive.444_14
	mov.w	r0, 2	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jgs	.L487		#
# basic.c:2380: 		printf("DRIVE: %d\n", drive);
	ld.b	r0, [drive]	# drive.445_15, drive
	sex.b	r1, r0	# _16, drive.445_15
	mov.w	r0, sp	# tmp57,
	st.w	[r0 + (4)], r1	#, _16
	mov.w	r1, .LC70	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	printf		#
	j	.L482		#
.L487:
# basic.c:2383: 		printf("Invalid drive number: %d. Can be from 0 to 2.\n", drive);
	ld.b	r0, [drive]	# drive.446_17, drive
	sex.b	r1, r0	# _18, drive.446_17
	mov.w	r0, sp	# tmp59,
	st.w	[r0 + (4)], r1	#, _18
	mov.w	r1, .LC71	# tmp60,
	st.w	[r0], r1	#, tmp60
	call	printf		#
.L482:
# basic.c:2386: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_drive, .-exec_drive
	.section	.rodata
	.p2align	2
.LC72:
	.string	"ETHERNET: %d\n"
	.p2align	2
.LC73:
	.string	"Invalid ethernet value: %d. Can be 0 or 1.\n"
	.text
	.p2align	1
	.global	exec_eth
	.type	exec_eth, @function
exec_eth:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2390: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2391: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.447_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.447_1
# basic.c:2391: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp42, _2
	mov.w	r0, 10	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L489		#
# basic.c:2393: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.448_3, eth
	mov.w	r0, sp	# tmp44,
	st.w	[r0 + (4)], r1	#, eth.448_3
	mov.w	r1, .LC72	# tmp45,
	st.w	[r0], r1	#, tmp45
	call	printf		#
# basic.c:2394: 		return;
	j	.L488		#
.L489:
# basic.c:2396: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.449_4, txtpos
	ld.b	r0, [r0]	# _5, *txtpos.449_4
# basic.c:2396: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp46, _5
	mov.w	r0, 47	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jse	.L491		#
# basic.c:2396: 	if (*txtpos < '0' || *txtpos > '9')
	ld.w	r0, [txtpos]	# txtpos.450_6, txtpos
	ld.b	r0, [r0]	# _7, *txtpos.450_6
# basic.c:2396: 	if (*txtpos < '0' || *txtpos > '9')
	zex.b	r1, r0	# tmp48, _7
	mov.w	r0, 57	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L492		#
.L491:
# basic.c:2398: 		qwhat();
	call	qwhat		#
# basic.c:2399: 		return;
	j	.L488		#
.L492:
# basic.c:2401: 	eth = *txtpos - '0';
	ld.w	r0, [txtpos]	# txtpos.451_8, txtpos
	ld.b	r0, [r0]	# _9, *txtpos.451_8
	zex.b	r0, r0	# _10, _9
# basic.c:2401: 	eth = *txtpos - '0';
	add.w	r0, -48 #111	# _11,
# basic.c:2401: 	eth = *txtpos - '0';
	st.w	[eth], r0	# eth, _11
# basic.c:2402: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.452_12, eth
# basic.c:2402: 	if (eth >= 0 && eth <= 1) 
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# eth.452_12, tmp50
	jss	.L493		#
# basic.c:2402: 	if (eth >= 0 && eth <= 1) 
	ld.w	r1, [eth]	# eth.453_13, eth
# basic.c:2402: 	if (eth >= 0 && eth <= 1) 
	mov.w	r0, 1	# tmp51,
	cmp.w	r1, r0	# eth.453_13, tmp51
	jgs	.L493		#
# basic.c:2404: 		printf("ETHERNET: %d\n", eth);
	ld.w	r1, [eth]	# eth.454_14, eth
	mov.w	r0, sp	# tmp52,
	st.w	[r0 + (4)], r1	#, eth.454_14
	mov.w	r1, .LC72	# tmp53,
	st.w	[r0], r1	#, tmp53
	call	printf		#
# basic.c:2406: 		if (eth == 1) 
	ld.w	r1, [eth]	# eth.455_15, eth
# basic.c:2406: 		if (eth == 1) 
	mov.w	r0, 1	# tmp54,
	cmp.w	r1, r0	# eth.455_15, tmp54
	jnz	.L494		#
# basic.c:2408: 			asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
# 2408 "basic.c" 1
	irq 1

# basic.c:2409: 			init_tcpip();
	call	init_tcpip		#
# basic.c:2406: 		if (eth == 1) 
	j	.L488		#
.L494:
# basic.c:2413: 			asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
# 2413 "basic.c" 1
	irq 0

# basic.c:2406: 		if (eth == 1) 
	j	.L488		#
.L493:
# basic.c:2420: 		printf("Invalid ethernet value: %d. Can be 0 or 1.\n", eth);
	ld.w	r1, [eth]	# eth.456_16, eth
	mov.w	r0, sp	# tmp55,
	st.w	[r0 + (4)], r1	#, eth.456_16
	mov.w	r1, .LC73	# tmp56,
	st.w	[r0], r1	#, tmp56
	call	printf		#
.L488:
# basic.c:2422: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_eth, .-exec_eth
	.section	.rodata
	.p2align	2
.LC74:
	.string	"COLOR: %d\n"
	.text
	.p2align	1
	.global	exec_color
	.type	exec_color, @function
exec_color:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 60 #111	#,
# basic.c:2428: 	ignore_blanks();
	call	ignore_blanks		#
# basic.c:2429: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.457_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.457_1
# basic.c:2429: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp31, _2
	mov.w	r0, 10	# tmp32,
	cmp.w	r1, r0	# tmp31, tmp32
	jnz	.L497		#
# basic.c:2431: 		printf("COLOR: %d\n", color);
	ld.w	r1, [color]	# color.458_3, color
	mov.w	r0, sp	# tmp33,
	st.w	[r0 + (4)], r1	#, color.458_3
	mov.w	r1, .LC74	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	printf		#
# basic.c:2432: 		return;
	j	.L496		#
.L497:
# basic.c:2434: 	expression_error = 0;
	xor.w	r0, r0	# tmp35
	st.b	[expression_error], r0	# expression_error, tmp35
# basic.c:2435: 	int c = (int)expression();	
	call	expression		#
	mov.w	r1, r0	# _4,
# basic.c:2435: 	int c = (int)expression();	
	mov.w	r0, r1	# tmp36, _4
	st.w	[sp], r0	#, tmp36
	call	__fixsfsi		#
	st.w	[r13 + (-4)], r0	# c, tmp37
# basic.c:2436: 	if (expression_error)
	ld.b	r0, [expression_error]	# expression_error.459_5, expression_error
# basic.c:2436: 	if (expression_error)
	sex.b	r1, r0	# tmp38, expression_error.459_5
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L499		#
# basic.c:2438: 		qwhat();
	call	qwhat		#
# basic.c:2439: 		return;
	j	.L496		#
.L499:
# basic.c:2441: 	color = c;
	ld.w	r0, [r13 + (-4)]	# tmp40, c
	st.w	[color], r0	# color, tmp40
.L496:
# basic.c:2443: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	exec_color, .-exec_color
	.section	.rodata
	.p2align	2
.LC75:
	.string	"I cannot exit. I am the boss."
	.p2align	2
.LC76:
	.string	"Current millis: %d\n"
	.text
	.p2align	1
	.global	direct
	.type	direct, @function
direct:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# basic.c:2451: 	if (*txtpos == NL)
	ld.w	r0, [txtpos]	# txtpos.460_1, txtpos
	ld.b	r0, [r0]	# _2, *txtpos.460_1
# basic.c:2451: 	if (*txtpos == NL)
	zex.b	r1, r0	# tmp49, _2
	mov.w	r0, 10	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jnz	.L502		#
# basic.c:2452: 		return 0;
	xor.w	r0, r0	# _20
	j	.L503		#
.L502:
# basic.c:2454: 	scantable(keywords);
	mov.w	r1, sp	# tmp51,
	mov.w	r0, keywords	# tmp52,
	st.w	[r1], r0	#, tmp52
	call	scantable		#
# basic.c:2460: 	if (should_break())
	call	should_break		#
	mov.w	r1, r0	# _3,
# basic.c:2460: 	if (should_break())
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# _3, tmp53
	jz	.L504		#
# basic.c:2462: 		return 0;
	xor.w	r0, r0	# _20
	j	.L503		#
.L504:
# basic.c:2465: 	switch (table_index)
	ld.b	r0, [table_index]	# table_index.461_4, table_index
	sex.b	r0, r0	# _5, table_index.461_4
	mov.w	r1, 40	# tmp54,
	cmp.w	r0, r1	# _5, tmp54
	jz	.L505		#
	mov.w	r1, 40	# tmp55,
	cmp.w	r0, r1	# _5, tmp55
	jgs	.L506		#
	mov.w	r1, 39	# tmp56,
	cmp.w	r0, r1	# _5, tmp56
	jz	.L507		#
	mov.w	r1, 39	# tmp57,
	cmp.w	r0, r1	# _5, tmp57
	jgs	.L506		#
	mov.w	r1, 38	# tmp58,
	cmp.w	r0, r1	# _5, tmp58
	jz	.L508		#
	mov.w	r1, 38	# tmp59,
	cmp.w	r0, r1	# _5, tmp59
	jgs	.L506		#
	mov.w	r1, 37	# tmp60,
	cmp.w	r0, r1	# _5, tmp60
	jgs	.L506		#
	mov.w	r1, 36	# tmp61,
	cmp.w	r0, r1	# _5, tmp61
	jges	.L550		#
	mov.w	r1, 35	# tmp62,
	cmp.w	r0, r1	# _5, tmp62
	jz	.L510		#
	mov.w	r1, 35	# tmp63,
	cmp.w	r0, r1	# _5, tmp63
	jgs	.L506		#
	mov.w	r1, 34	# tmp64,
	cmp.w	r0, r1	# _5, tmp64
	jz	.L511		#
	mov.w	r1, 34	# tmp65,
	cmp.w	r0, r1	# _5, tmp65
	jgs	.L506		#
	mov.w	r1, 33	# tmp66,
	cmp.w	r0, r1	# _5, tmp66
	jz	.L512		#
	mov.w	r1, 33	# tmp67,
	cmp.w	r0, r1	# _5, tmp67
	jgs	.L506		#
	mov.w	r1, 32	# tmp68,
	cmp.w	r0, r1	# _5, tmp68
	jz	.L513		#
	mov.w	r1, 32	# tmp69,
	cmp.w	r0, r1	# _5, tmp69
	jgs	.L506		#
	mov.w	r1, 31	# tmp70,
	cmp.w	r0, r1	# _5, tmp70
	jz	.L514		#
	mov.w	r1, 31	# tmp71,
	cmp.w	r0, r1	# _5, tmp71
	jgs	.L506		#
	mov.w	r1, 30	# tmp72,
	cmp.w	r0, r1	# _5, tmp72
	jz	.L515		#
	mov.w	r1, 30	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jgs	.L506		#
	mov.w	r1, 29	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jz	.L516		#
	mov.w	r1, 29	# tmp75,
	cmp.w	r0, r1	# _5, tmp75
	jgs	.L506		#
	mov.w	r1, 28	# tmp76,
	cmp.w	r0, r1	# _5, tmp76
	jz	.L517		#
	mov.w	r1, 28	# tmp77,
	cmp.w	r0, r1	# _5, tmp77
	jgs	.L506		#
	mov.w	r1, 27	# tmp78,
	cmp.w	r0, r1	# _5, tmp78
	jz	.L518		#
	mov.w	r1, 27	# tmp79,
	cmp.w	r0, r1	# _5, tmp79
	jgs	.L506		#
	mov.w	r1, 26	# tmp80,
	cmp.w	r0, r1	# _5, tmp80
	jz	.L519		#
	mov.w	r1, 26	# tmp81,
	cmp.w	r0, r1	# _5, tmp81
	jgs	.L506		#
	mov.w	r1, 25	# tmp82,
	cmp.w	r0, r1	# _5, tmp82
	jz	.L520		#
	mov.w	r1, 25	# tmp83,
	cmp.w	r0, r1	# _5, tmp83
	jgs	.L506		#
	mov.w	r1, 24	# tmp84,
	cmp.w	r0, r1	# _5, tmp84
	jz	.L521		#
	mov.w	r1, 24	# tmp85,
	cmp.w	r0, r1	# _5, tmp85
	jgs	.L506		#
	mov.w	r1, 23	# tmp86,
	cmp.w	r0, r1	# _5, tmp86
	jz	.L522		#
	mov.w	r1, 23	# tmp87,
	cmp.w	r0, r1	# _5, tmp87
	jgs	.L506		#
	mov.w	r1, 22	# tmp88,
	cmp.w	r0, r1	# _5, tmp88
	jz	.L523		#
	mov.w	r1, 22	# tmp89,
	cmp.w	r0, r1	# _5, tmp89
	jgs	.L506		#
	mov.w	r1, 21	# tmp90,
	cmp.w	r0, r1	# _5, tmp90
	jz	.L524		#
	mov.w	r1, 21	# tmp91,
	cmp.w	r0, r1	# _5, tmp91
	jgs	.L506		#
	mov.w	r1, 20	# tmp92,
	cmp.w	r0, r1	# _5, tmp92
	jz	.L525		#
	mov.w	r1, 20	# tmp93,
	cmp.w	r0, r1	# _5, tmp93
	jgs	.L506		#
	mov.w	r1, 19	# tmp94,
	cmp.w	r0, r1	# _5, tmp94
	jz	.L526		#
	mov.w	r1, 19	# tmp95,
	cmp.w	r0, r1	# _5, tmp95
	jgs	.L506		#
	mov.w	r1, 18	# tmp96,
	cmp.w	r0, r1	# _5, tmp96
	jz	.L527		#
	mov.w	r1, 18	# tmp97,
	cmp.w	r0, r1	# _5, tmp97
	jgs	.L506		#
	mov.w	r1, 17	# tmp98,
	cmp.w	r0, r1	# _5, tmp98
	jz	.L528		#
	mov.w	r1, 17	# tmp99,
	cmp.w	r0, r1	# _5, tmp99
	jgs	.L506		#
	mov.w	r1, 16	# tmp100,
	cmp.w	r0, r1	# _5, tmp100
	jgs	.L506		#
	mov.w	r1, 15	# tmp101,
	cmp.w	r0, r1	# _5, tmp101
	jges	.L529		#
	mov.w	r1, 14	# tmp102,
	cmp.w	r0, r1	# _5, tmp102
	jz	.L530		#
	mov.w	r1, 14	# tmp103,
	cmp.w	r0, r1	# _5, tmp103
	jgs	.L506		#
	mov.w	r1, 13	# tmp104,
	cmp.w	r0, r1	# _5, tmp104
	jz	.L531		#
	mov.w	r1, 13	# tmp105,
	cmp.w	r0, r1	# _5, tmp105
	jgs	.L506		#
	mov.w	r1, 12	# tmp106,
	cmp.w	r0, r1	# _5, tmp106
	jz	.L532		#
	mov.w	r1, 12	# tmp107,
	cmp.w	r0, r1	# _5, tmp107
	jgs	.L506		#
	mov.w	r1, 11	# tmp108,
	cmp.w	r0, r1	# _5, tmp108
	jz	.L533		#
	mov.w	r1, 11	# tmp109,
	cmp.w	r0, r1	# _5, tmp109
	jgs	.L506		#
	mov.w	r1, 10	# tmp110,
	cmp.w	r0, r1	# _5, tmp110
	jz	.L534		#
	mov.w	r1, 10	# tmp111,
	cmp.w	r0, r1	# _5, tmp111
	jgs	.L506		#
	mov.w	r1, 9	# tmp112,
	cmp.w	r0, r1	# _5, tmp112
	jz	.L535		#
	mov.w	r1, 9	# tmp113,
	cmp.w	r0, r1	# _5, tmp113
	jgs	.L506		#
	mov.w	r1, 8	# tmp114,
	cmp.w	r0, r1	# _5, tmp114
	jz	.L536		#
	mov.w	r1, 8	# tmp115,
	cmp.w	r0, r1	# _5, tmp115
	jgs	.L506		#
	mov.w	r1, 7	# tmp116,
	cmp.w	r0, r1	# _5, tmp116
	jz	.L537		#
	mov.w	r1, 7	# tmp117,
	cmp.w	r0, r1	# _5, tmp117
	jgs	.L506		#
	mov.w	r1, 6	# tmp118,
	cmp.w	r0, r1	# _5, tmp118
	jz	.L538		#
	mov.w	r1, 6	# tmp119,
	cmp.w	r0, r1	# _5, tmp119
	jgs	.L506		#
	mov.w	r1, 5	# tmp120,
	cmp.w	r0, r1	# _5, tmp120
	jz	.L539		#
	mov.w	r1, 5	# tmp121,
	cmp.w	r0, r1	# _5, tmp121
	jgs	.L506		#
	mov.w	r1, 4	# tmp122,
	cmp.w	r0, r1	# _5, tmp122
	jgs	.L506		#
	mov.w	r1, 3	# tmp123,
	cmp.w	r0, r1	# _5, tmp123
	jges	.L540		#
	xor.w	r1, r1	# tmp124
	cmp.w	r0, r1	# _5, tmp124
	jz	.L541		#
	xor.w	r1, r1	# tmp125
	cmp.w	r0, r1	# _5, tmp125
	jss	.L506		#
	mov.w	r1, r0	# _81, _80
	add.w	r1, -1 #111	# _81,
	mov.w	r0, 1	# tmp126,
	cmp.w	r1, r0	# _81, tmp126
	jg	.L506		#
	j	.L549		#
.L541:
# basic.c:2469: 		exec_mem();
	call	exec_mem		#
# basic.c:2470: 		return 0;
	xor.w	r0, r0	# _20
	j	.L503		#
.L549:
# basic.c:2474: 		printf("I cannot exit. I am the boss.\n");
	mov.w	r1, sp	# tmp127,
	mov.w	r0, .LC75	# tmp128,
	st.w	[r1], r0	#, tmp128
	call	puts		#
# basic.c:2475: 		break;
	j	.L543		#
.L540:
# basic.c:2478: 		exec_print();
	call	exec_print		#
# basic.c:2479: 		break;
	j	.L543		#
.L539:
# basic.c:2481: 		exec_list();
	call	exec_list		#
# basic.c:2482: 		break;
	j	.L543		#
.L538:
# basic.c:2484: 		current_line = program_start;
	ld.w	r0, [program_start]	# program_start.462_6, program_start
	st.w	[current_line], r0	# current_line, program_start.462_6
# basic.c:2485: 		exec_run();
	call	exec_run		#
# basic.c:2486: 		break;
	j	.L543		#
.L537:
# basic.c:2488: 		program_end = program_start;
	ld.w	r0, [program_start]	# program_start.463_7, program_start
	st.w	[program_end], r0	# program_end, program_start.463_7
# basic.c:2489: 		break;
	j	.L543		#
.L536:
# basic.c:2491: 		assignment();
	call	assignment		#
# basic.c:2492: 		break;
	j	.L543		#
.L535:
# basic.c:2494: 		exec_if();
	call	exec_if		#
# basic.c:2495: 		break;
	j	.L543		#
.L534:
# basic.c:2497: 		expression_error = 0;
	xor.w	r0, r0	# tmp129
	st.b	[expression_error], r0	# expression_error, tmp129
# basic.c:2498: 		linenum = expression();
	call	expression		#
	mov.w	r1, r0	# _8,
# basic.c:2498: 		linenum = expression();
	mov.w	r0, r1	# tmp130, _8
	st.w	[sp], r0	#, tmp130
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _9
# basic.c:2499: 		if (expression_error || *txtpos != NL)
	ld.b	r0, [expression_error]	# expression_error.464_10, expression_error
# basic.c:2499: 		if (expression_error || *txtpos != NL)
	sex.b	r1, r0	# tmp131, expression_error.464_10
	xor.w	r0, r0	# tmp132
	cmp.w	r1, r0	# tmp131, tmp132
	jnz	.L544		#
# basic.c:2499: 		if (expression_error || *txtpos != NL)
	ld.w	r0, [txtpos]	# txtpos.465_11, txtpos
	ld.b	r0, [r0]	# _12, *txtpos.465_11
# basic.c:2499: 		if (expression_error || *txtpos != NL)
	zex.b	r1, r0	# tmp133, _12
	mov.w	r0, 10	# tmp134,
	cmp.w	r1, r0	# tmp133, tmp134
	jz	.L545		#
.L544:
# basic.c:2500: 			qhow();
	call	qhow		#
.L545:
# basic.c:2501: 		current_line = findline();
	call	findline		#
# basic.c:2501: 		current_line = findline();
	st.w	[current_line], r0	# current_line, _13
# basic.c:2502: 		return 2;
	mov.w	r0, 2	# _20,
	j	.L503		#
.L533:
# basic.c:2504: 		exec_for();
	call	exec_for		#
# basic.c:2505: 		break;
	j	.L543		#
.L532:
# basic.c:2507: 		exec_next();
	call	exec_next		#
# basic.c:2508: 		break;
	j	.L543		#
.L530:
# basic.c:2510: 		exec_gosub();
	call	exec_gosub		#
# basic.c:2511: 		break;
	j	.L543		#
.L531:
# basic.c:2513: 		if (!exec_return())
	call	exec_return		#
	mov.w	r1, r0	# _14,
# basic.c:2513: 		if (!exec_return())
	xor.w	r0, r0	# tmp135
	cmp.w	r1, r0	# _14, tmp135
	jnz	.L551		#
# basic.c:2514: 			return 1;
	mov.w	r0, 1	# _20,
	j	.L503		#
.L529:
# basic.c:2519: 		if (txtpos[0] != NL)
	ld.w	r0, [txtpos]	# txtpos.466_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.466_15
# basic.c:2519: 		if (txtpos[0] != NL)
	zex.b	r1, r0	# tmp136, _16
	mov.w	r0, 10	# tmp137,
	cmp.w	r1, r0	# tmp136, tmp137
	jz	.L547		#
# basic.c:2521: 			qwhat();
	call	qwhat		#
# basic.c:2525: 		break;
	j	.L543		#
.L547:
# basic.c:2524: 			current_line = program_end;
	ld.w	r0, [program_end]	# program_end.467_17, program_end
	st.w	[current_line], r0	# current_line, program_end.467_17
# basic.c:2525: 		break;
	j	.L543		#
.L528:
# basic.c:2527: 		exec_input();
	call	exec_input		#
# basic.c:2528: 		break;
	j	.L543		#
.L527:
# basic.c:2530: 		cls(color);
	ld.w	r0, [color]	# color.468_18, color
	mov.w	r1, sp	# tmp138,
	st.w	[r1], r0	#, color.468_18
	call	cls		#
# basic.c:2531: 		break;
	j	.L543		#
.L526:
# basic.c:2533: 		return exec_edit();
	call	exec_edit		#
	j	.L503		#
.L525:
# basic.c:2535: 		exec_load();
	call	exec_load		#
# basic.c:2536: 		break;
	j	.L543		#
.L524:
# basic.c:2538: 		exec_save();
	call	exec_save		#
# basic.c:2539: 		break;
	j	.L543		#
.L523:
# basic.c:2541: 		exec_dir();
	call	exec_dir		#
# basic.c:2542: 		break;
	j	.L543		#
.L522:
# basic.c:2544: 		exec_mode();
	call	exec_mode		#
# basic.c:2545: 		break;
	j	.L543		#
.L521:
# basic.c:2547: 		exec_plot();
	call	exec_plot		#
# basic.c:2548: 		break;
	j	.L543		#
.L520:
# basic.c:2550: 		exec_line();
	call	exec_line		#
# basic.c:2551: 		break;
	j	.L543		#
.L519:
# basic.c:2553: 		exec_circle();
	call	exec_circle		#
# basic.c:2554: 		break;
	j	.L543		#
.L518:
# basic.c:2556: 		exec_draw();
	call	exec_draw		#
# basic.c:2557: 		break;
	j	.L543		#
.L517:
# basic.c:2559: 		exec_help();
	call	exec_help		#
# basic.c:2560: 		break;
	j	.L543		#
.L516:
# basic.c:2562: 		exec_delay();
	call	exec_delay		#
# basic.c:2563: 		break;
	j	.L543		#
.L515:
# basic.c:2565: 		exec_cursor();
	call	exec_cursor		#
# basic.c:2566: 		break;
	j	.L543		#
.L514:
# basic.c:2568: 		exec_poke();
	call	exec_poke		#
# basic.c:2569: 		break;
	j	.L543		#
.L513:
# basic.c:2571: 		exec_exec();
	call	exec_exec		#
# basic.c:2572: 		break;
	j	.L543		#
.L512:
# basic.c:2574: 		exec_sys();
	call	exec_sys		#
# basic.c:2575: 		break;
	j	.L543		#
.L511:
# basic.c:2577: 		exec_drive();
	call	exec_drive		#
# basic.c:2578: 		break;
	j	.L543		#
.L510:
# basic.c:2580: 		printf("Current millis: %d\n", get_millis());
	call	get_millis		#
	mov.w	r1, r0	# _19,
	mov.w	r0, sp	# tmp139,
	st.w	[r0 + (4)], r1	#, _19
	mov.w	r1, .LC76	# tmp140,
	st.w	[r0], r1	#, tmp140
	call	printf		#
# basic.c:2581: 	break;
	j	.L543		#
.L508:
# basic.c:2586: 		exec_eth();
	call	exec_eth		#
# basic.c:2587: 		break;
	j	.L543		#
.L507:
# basic.c:2589: 		exec_color();
	call	exec_color		#
# basic.c:2590: 		break;
	j	.L543		#
.L505:
# basic.c:2592: 		assignment();
	call	assignment		#
# basic.c:2593: 		break;
	j	.L543		#
.L506:
# basic.c:2595: 		return 0;
	xor.w	r0, r0	# _20
	j	.L503		#
.L550:
# basic.c:2584: 		break;
	nop	
	j	.L543		#
.L551:
# basic.c:2515: 		break;
	nop	
.L543:
# basic.c:2597: 	return 0;
	xor.w	r0, r0	# _20
.L503:
# basic.c:2598: }
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
# basic.c:2601: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	mov.w	r1, cls	# cls.469_1,
# basic.c:2601: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.470_2, K_API_STDIO
# basic.c:2601: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	add.w	r1, 4 #111	# _3,
# basic.c:2601: 	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	st.w	[r0], r1	# *K_API_STDIO.470_2, _3
# basic.c:2602: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	mov.w	r1, put_char	# put_char.471_4,
# basic.c:2602: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.472_5, K_API_STDIO
	add.w	r0, 4 #111	# _6,
# basic.c:2602: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	add.w	r1, 4 #111	# _7,
# basic.c:2602: 	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	st.w	[r0], r1	# *_6, _7
# basic.c:2603: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	mov.w	r1, printf	# printf.473_8,
# basic.c:2603: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.474_9, K_API_STDIO
	add.w	r0, 8 #111	# _10,
# basic.c:2603: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	add.w	r1, 4 #111	# _11,
# basic.c:2603: 	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	st.w	[r0], r1	# *_10, _11
# basic.c:2604: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	mov.w	r1, puts	# puts.475_12,
# basic.c:2604: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.476_13, K_API_STDIO
	add.w	r0, 12 #111	# _14,
# basic.c:2604: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	add.w	r1, 4 #111	# _15,
# basic.c:2604: 	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	st.w	[r0], r1	# *_14, _15
# basic.c:2605: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	mov.w	r1, rand	# rand.477_16,
# basic.c:2605: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.478_17, K_API_STDIO
	add.w	r0, 16 #111	# _18,
# basic.c:2605: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	add.w	r1, 4 #111	# _19,
# basic.c:2605: 	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	st.w	[r0], r1	# *_18, _19
# basic.c:2606: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	mov.w	r1, should_break	# should_break.479_20,
# basic.c:2606: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.480_21, K_API_STDIO
	add.w	r0, 20 #111	# _22,
# basic.c:2606: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	add.w	r1, 4 #111	# _23,
# basic.c:2606: 	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	st.w	[r0], r1	# *_22, _23
# basic.c:2607: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	mov.w	r1, getc	# getc.481_24,
# basic.c:2607: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.482_25, K_API_STDIO
	add.w	r0, 24 #111	# _26,
# basic.c:2607: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	add.w	r1, 4 #111	# _27,
# basic.c:2607: 	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	st.w	[r0], r1	# *_26, _27
# basic.c:2608: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	mov.w	r1, gets	# gets.483_28,
# basic.c:2608: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.484_29, K_API_STDIO
	add.w	r0, 28 #111	# _30,
# basic.c:2608: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	add.w	r1, 4 #111	# _31,
# basic.c:2608: 	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	st.w	[r0], r1	# *_30, _31
# basic.c:2609: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	mov.w	r1, init_stdio	# init_stdio.485_32,
# basic.c:2609: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.486_33, K_API_STDIO
	add.w	r0, 32 #111	# _34,
# basic.c:2609: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	add.w	r1, 4 #111	# _35,
# basic.c:2609: 	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	st.w	[r0], r1	# *_34, _35
# basic.c:2610: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	mov.w	r1, delay	# delay.487_36,
# basic.c:2610: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.488_37, K_API_STDIO
	add.w	r0, 36 #111	# _38,
# basic.c:2610: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	add.w	r1, 4 #111	# _39,
# basic.c:2610: 	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	st.w	[r0], r1	# *_38, _39
# basic.c:2611: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	mov.w	r1, xy	# xy.489_40,
# basic.c:2611: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.490_41, K_API_STDIO
	add.w	r0, 40 #111	# _42,
# basic.c:2611: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	add.w	r1, 4 #111	# _43,
# basic.c:2611: 	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	st.w	[r0], r1	# *_42, _43
# basic.c:2612: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	mov.w	r1, get_millis	# get_millis.491_44,
# basic.c:2612: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.492_45, K_API_STDIO
	add.w	r0, 44 #111	# _46,
# basic.c:2612: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	add.w	r1, 4 #111	# _47,
# basic.c:2612: 	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	st.w	[r0], r1	# *_46, _47
# basic.c:2613: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	mov.w	r1, is_key_pressed	# is_key_pressed.493_48,
# basic.c:2613: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.494_49, K_API_STDIO
	add.w	r0, 48 #111	# _50,
# basic.c:2613: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	add.w	r1, 4 #111	# _51,
# basic.c:2613: 	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	st.w	[r0], r1	# *_50, _51
# basic.c:2614: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	mov.w	r1, is_key_released	# is_key_released.495_52,
# basic.c:2614: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.496_53, K_API_STDIO
	add.w	r0, 52 #111	# _54,
# basic.c:2614: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	add.w	r1, 4 #111	# _55,
# basic.c:2614: 	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	st.w	[r0], r1	# *_54, _55
# basic.c:2615: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	mov.w	r1, toggle_cursor	# toggle_cursor.497_56,
# basic.c:2615: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.498_57, K_API_STDIO
	add.w	r0, 56 #111	# _58,
# basic.c:2615: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	add.w	r1, 4 #111	# _59,
# basic.c:2615: 	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	st.w	[r0], r1	# *_58, _59
# basic.c:2616: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	mov.w	r1, putchar	# putchar.499_60,
# basic.c:2616: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.500_61, K_API_STDIO
	add.w	r0, 60 #111	# _62,
# basic.c:2616: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	add.w	r1, 4 #111	# _63,
# basic.c:2616: 	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	st.w	[r0], r1	# *_62, _63
# basic.c:2617: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	mov.w	r1, video_mode	# video_mode.501_64,
# basic.c:2617: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	ld.w	r0, [K_API_STDIO]	# K_API_STDIO.502_65, K_API_STDIO
	add.w	r0, 64 #111	# _66,
# basic.c:2617: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	add.w	r1, 4 #111	# _67,
# basic.c:2617: 	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	st.w	[r0], r1	# *_66, _67
# basic.c:2618: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	mov.w	r1, scroll_up	# scroll_up.503_68,
# basic.c:2618: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.504_69, K_API_GRAPHICS
	add.w	r0, 68 #111	# _70,
# basic.c:2618: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	add.w	r1, 4 #111	# _71,
# basic.c:2618: 	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068
	st.w	[r0], r1	# *_70, _71
# basic.c:2620: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	mov.w	r1, strlen	# strlen.505_72,
# basic.c:2620: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.506_73, K_API_STRING
# basic.c:2620: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	add.w	r1, 4 #111	# _74,
# basic.c:2620: 	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	st.w	[r0], r1	# *K_API_STRING.506_73, _74
# basic.c:2621: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	mov.w	r1, strcmp	# strcmp.507_75,
# basic.c:2621: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.508_76, K_API_STRING
	add.w	r0, 4 #111	# _77,
# basic.c:2621: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	add.w	r1, 4 #111	# _78,
# basic.c:2621: 	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	st.w	[r0], r1	# *_77, _78
# basic.c:2622: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	mov.w	r1, strncmp	# strncmp.509_79,
# basic.c:2622: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.510_80, K_API_STRING
	add.w	r0, 8 #111	# _81,
# basic.c:2622: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	add.w	r1, 4 #111	# _82,
# basic.c:2622: 	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	st.w	[r0], r1	# *_81, _82
# basic.c:2623: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	mov.w	r1, memcpy	# memcpy.511_83,
# basic.c:2623: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.512_84, K_API_STRING
	add.w	r0, 12 #111	# _85,
# basic.c:2623: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	add.w	r1, 4 #111	# _86,
# basic.c:2623: 	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	st.w	[r0], r1	# *_85, _86
# basic.c:2624: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	mov.w	r1, memset	# memset.513_87,
# basic.c:2624: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.514_88, K_API_STRING
	add.w	r0, 16 #111	# _89,
# basic.c:2624: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	add.w	r1, 4 #111	# _90,
# basic.c:2624: 	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	st.w	[r0], r1	# *_89, _90
# basic.c:2625: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	mov.w	r1, memmove	# memmove.515_91,
# basic.c:2625: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.516_92, K_API_STRING
	add.w	r0, 20 #111	# _93,
# basic.c:2625: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	add.w	r1, 4 #111	# _94,
# basic.c:2625: 	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	st.w	[r0], r1	# *_93, _94
# basic.c:2626: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	mov.w	r1, strcpy	# strcpy.517_95,
# basic.c:2626: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.518_96, K_API_STRING
	add.w	r0, 24 #111	# _97,
# basic.c:2626: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	add.w	r1, 4 #111	# _98,
# basic.c:2626: 	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	st.w	[r0], r1	# *_97, _98
# basic.c:2627: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	mov.w	r1, strncpy	# strncpy.519_99,
# basic.c:2627: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.520_100, K_API_STRING
	add.w	r0, 28 #111	# _101,
# basic.c:2627: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	add.w	r1, 4 #111	# _102,
# basic.c:2627: 	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	st.w	[r0], r1	# *_101, _102
# basic.c:2628: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	mov.w	r1, strcat	# strcat.521_103,
# basic.c:2628: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.522_104, K_API_STRING
	add.w	r0, 32 #111	# _105,
# basic.c:2628: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	add.w	r1, 4 #111	# _106,
# basic.c:2628: 	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	st.w	[r0], r1	# *_105, _106
# basic.c:2629: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	mov.w	r1, strstr	# strstr.523_107,
# basic.c:2629: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.524_108, K_API_STRING
	add.w	r0, 36 #111	# _109,
# basic.c:2629: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	add.w	r1, 4 #111	# _110,
# basic.c:2629: 	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	st.w	[r0], r1	# *_109, _110
# basic.c:2630: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	mov.w	r1, tolower	# tolower.525_111,
# basic.c:2630: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.526_112, K_API_STRING
	add.w	r0, 40 #111	# _113,
# basic.c:2630: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	add.w	r1, 4 #111	# _114,
# basic.c:2630: 	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	st.w	[r0], r1	# *_113, _114
# basic.c:2631: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	mov.w	r1, toupper	# toupper.527_115,
# basic.c:2631: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.528_116, K_API_STRING
	add.w	r0, 44 #111	# _117,
# basic.c:2631: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	add.w	r1, 4 #111	# _118,
# basic.c:2631: 	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	st.w	[r0], r1	# *_117, _118
# basic.c:2632: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	mov.w	r1, str_toupper	# str_toupper.529_119,
# basic.c:2632: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.530_120, K_API_STRING
	add.w	r0, 48 #111	# _121,
# basic.c:2632: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	add.w	r1, 4 #111	# _122,
# basic.c:2632: 	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	st.w	[r0], r1	# *_121, _122
# basic.c:2633: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	mov.w	r1, str_n_toupper	# str_n_toupper.531_123,
# basic.c:2633: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.532_124, K_API_STRING
	add.w	r0, 52 #111	# _125,
# basic.c:2633: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	add.w	r1, 4 #111	# _126,
# basic.c:2633: 	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	st.w	[r0], r1	# *_125, _126
# basic.c:2634: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	mov.w	r1, isdigit	# isdigit.533_127,
# basic.c:2634: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.534_128, K_API_STRING
	add.w	r0, 56 #111	# _129,
# basic.c:2634: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	add.w	r1, 4 #111	# _130,
# basic.c:2634: 	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	st.w	[r0], r1	# *_129, _130
# basic.c:2635: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	mov.w	r1, islower	# islower.535_131,
# basic.c:2635: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.536_132, K_API_STRING
	add.w	r0, 60 #111	# _133,
# basic.c:2635: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	add.w	r1, 4 #111	# _134,
# basic.c:2635: 	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	st.w	[r0], r1	# *_133, _134
# basic.c:2636: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	mov.w	r1, isupper	# isupper.537_135,
# basic.c:2636: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.538_136, K_API_STRING
	add.w	r0, 64 #111	# _137,
# basic.c:2636: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	add.w	r1, 4 #111	# _138,
# basic.c:2636: 	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	st.w	[r0], r1	# *_137, _138
# basic.c:2637: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	mov.w	r1, isalpha	# isalpha.539_139,
# basic.c:2637: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.540_140, K_API_STRING
	add.w	r0, 68 #111	# _141,
# basic.c:2637: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	add.w	r1, 4 #111	# _142,
# basic.c:2637: 	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	st.w	[r0], r1	# *_141, _142
# basic.c:2638: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	mov.w	r1, isalnum	# isalnum.541_143,
# basic.c:2638: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.542_144, K_API_STRING
	add.w	r0, 72 #111	# _145,
# basic.c:2638: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	add.w	r1, 4 #111	# _146,
# basic.c:2638: 	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	st.w	[r0], r1	# *_145, _146
# basic.c:2639: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	mov.w	r1, atoi	# atoi.543_147,
# basic.c:2639: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.544_148, K_API_STRING
	add.w	r0, 76 #111	# _149,
# basic.c:2639: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	add.w	r1, 4 #111	# _150,
# basic.c:2639: 	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	st.w	[r0], r1	# *_149, _150
# basic.c:2640: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	mov.w	r1, isspace	# isspace.545_151,
# basic.c:2640: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.546_152, K_API_STRING
	add.w	r0, 80 #111	# _153,
# basic.c:2640: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	add.w	r1, 4 #111	# _154,
# basic.c:2640: 	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	st.w	[r0], r1	# *_153, _154
# basic.c:2641: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	mov.w	r1, memcmp	# memcmp.547_155,
# basic.c:2641: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.548_156, K_API_STRING
	add.w	r0, 84 #111	# _157,
# basic.c:2641: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	add.w	r1, 4 #111	# _158,
# basic.c:2641: 	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	st.w	[r0], r1	# *_157, _158
# basic.c:2642: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	mov.w	r1, strtok	# strtok.549_159,
# basic.c:2642: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.550_160, K_API_STRING
	add.w	r0, 88 #111	# _161,
# basic.c:2642: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	add.w	r1, 4 #111	# _162,
# basic.c:2642: 	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	st.w	[r0], r1	# *_161, _162
# basic.c:2643: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	mov.w	r1, strchr	# strchr.551_163,
# basic.c:2643: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.552_164, K_API_STRING
	add.w	r0, 92 #111	# _165,
# basic.c:2643: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	add.w	r1, 4 #111	# _166,
# basic.c:2643: 	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	st.w	[r0], r1	# *_165, _166
# basic.c:2644: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	mov.w	r1, strrchr	# strrchr.553_167,
# basic.c:2644: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.554_168, K_API_STRING
	add.w	r0, 96 #111	# _169,
# basic.c:2644: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	add.w	r1, 4 #111	# _170,
# basic.c:2644: 	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	st.w	[r0], r1	# *_169, _170
# basic.c:2645: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	mov.w	r1, strncasecmp	# strncasecmp.555_171,
# basic.c:2645: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	ld.w	r0, [K_API_STRING]	# K_API_STRING.556_172, K_API_STRING
	add.w	r0, 100 #111	# _173,
# basic.c:2645: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	add.w	r1, 4 #111	# _174,
# basic.c:2645: 	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 
	st.w	[r0], r1	# *_173, _174
# basic.c:2647: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	mov.w	r1, sprintf	# sprintf.557_175,
# basic.c:2647: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.558_176, K_API_SPRINTF
# basic.c:2647: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	add.w	r1, 4 #111	# _177,
# basic.c:2647: 	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	st.w	[r0], r1	# *K_API_SPRINTF.558_176, _177
# basic.c:2648: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	mov.w	r1, vsprintf	# vsprintf.559_178,
# basic.c:2648: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	ld.w	r0, [K_API_SPRINTF]	# K_API_SPRINTF.560_179, K_API_SPRINTF
	add.w	r0, 4 #111	# _180,
# basic.c:2648: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	add.w	r1, 4 #111	# _181,
# basic.c:2648: 	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304
	st.w	[r0], r1	# *_180, _181
# basic.c:2650: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	mov.w	r1, pixel	# pixel.561_182,
# basic.c:2650: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.562_183, K_API_GRAPHICS
# basic.c:2650: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	add.w	r1, 4 #111	# _184,
# basic.c:2650: 	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	st.w	[r0], r1	# *K_API_GRAPHICS.562_183, _184
# basic.c:2651: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	mov.w	r1, line	# line.563_185,
# basic.c:2651: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.564_186, K_API_GRAPHICS
	add.w	r0, 4 #111	# _187,
# basic.c:2651: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	add.w	r1, 4 #111	# _188,
# basic.c:2651: 	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	st.w	[r0], r1	# *_187, _188
# basic.c:2652: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	mov.w	r1, circle	# circle.565_189,
# basic.c:2652: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.566_190, K_API_GRAPHICS
	add.w	r0, 8 #111	# _191,
# basic.c:2652: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	add.w	r1, 4 #111	# _192,
# basic.c:2652: 	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	st.w	[r0], r1	# *_191, _192
# basic.c:2653: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	mov.w	r1, draw	# draw.567_193,
# basic.c:2653: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	ld.w	r0, [K_API_GRAPHICS]	# K_API_GRAPHICS.568_194, K_API_GRAPHICS
	add.w	r0, 12 #111	# _195,
# basic.c:2653: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	add.w	r1, 4 #111	# _196,
# basic.c:2653: 	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412
	st.w	[r0], r1	# *_195, _196
# basic.c:2655: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	mov.w	r1, init_spi	# init_spi.569_197,
# basic.c:2655: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	ld.w	r0, [K_API_SPI]	# K_API_SPI.570_198, K_API_SPI
# basic.c:2655: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	add.w	r1, 4 #111	# _199,
# basic.c:2655: 	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	st.w	[r0], r1	# *K_API_SPI.570_198, _199
# basic.c:2656: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	mov.w	r1, deinit_spi	# deinit_spi.571_200,
# basic.c:2656: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	ld.w	r0, [K_API_SPI]	# K_API_SPI.572_201, K_API_SPI
	add.w	r0, 4 #111	# _202,
# basic.c:2656: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	add.w	r1, 4 #111	# _203,
# basic.c:2656: 	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	st.w	[r0], r1	# *_202, _203
# basic.c:2657: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	mov.w	r1, send_spi	# send_spi.573_204,
# basic.c:2657: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	ld.w	r0, [K_API_SPI]	# K_API_SPI.574_205, K_API_SPI
	add.w	r0, 8 #111	# _206,
# basic.c:2657: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	add.w	r1, 4 #111	# _207,
# basic.c:2657: 	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	st.w	[r0], r1	# *_206, _207
# basic.c:2658: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	mov.w	r1, read_spi	# read_spi.575_208,
# basic.c:2658: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	ld.w	r0, [K_API_SPI]	# K_API_SPI.576_209, K_API_SPI
	add.w	r0, 12 #111	# _210,
# basic.c:2658: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	add.w	r1, 4 #111	# _211,
# basic.c:2658: 	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	st.w	[r0], r1	# *_210, _211
# basic.c:2659: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	mov.w	r1, SPI_Byte	# SPI_Byte.577_212,
# basic.c:2659: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	ld.w	r0, [K_API_SPI]	# K_API_SPI.578_213, K_API_SPI
	add.w	r0, 16 #111	# _214,
# basic.c:2659: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	add.w	r1, 4 #111	# _215,
# basic.c:2659: 	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516
	st.w	[r0], r1	# *_214, _215
# basic.c:2661: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	mov.w	r1, init_tcpip	# init_tcpip.579_216,
# basic.c:2661: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.580_217, K_API_TCPIP
# basic.c:2661: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	add.w	r1, 4 #111	# _218,
# basic.c:2661: 	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	st.w	[r0], r1	# *K_API_TCPIP.580_217, _218
# basic.c:2662: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	mov.w	r1, browseUrl	# browseUrl.581_219,
# basic.c:2662: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.582_220, K_API_TCPIP
	add.w	r0, 4 #111	# _221,
# basic.c:2662: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	add.w	r1, 4 #111	# _222,
# basic.c:2662: 	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	st.w	[r0], r1	# *_221, _222
# basic.c:2663: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	mov.w	r1, httpPost	# httpPost.583_223,
# basic.c:2663: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.584_224, K_API_TCPIP
	add.w	r0, 8 #111	# _225,
# basic.c:2663: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	add.w	r1, 4 #111	# _226,
# basic.c:2663: 	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	st.w	[r0], r1	# *_225, _226
# basic.c:2664: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	mov.w	r1, mainLoop	# mainLoop.585_227,
# basic.c:2664: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	ld.w	r0, [K_API_TCPIP]	# K_API_TCPIP.586_228, K_API_TCPIP
	add.w	r0, 12 #111	# _229,
# basic.c:2664: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	add.w	r1, 4 #111	# _230,
# basic.c:2664: 	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612
	st.w	[r0], r1	# *_229, _230
# basic.c:2667: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	mov.w	r1, sdcard_init	# sdcard_init.587_231,
# basic.c:2667: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	ld.w	r0, [K_API_FAT]	# K_API_FAT.588_232, K_API_FAT
# basic.c:2667: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	add.w	r1, 4 #111	# _233,
# basic.c:2667: 	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	st.w	[r0], r1	# *K_API_FAT.588_232, _233
# basic.c:2668: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	mov.w	r1, volume_init	# volume_init.589_234,
# basic.c:2668: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	ld.w	r0, [K_API_FAT]	# K_API_FAT.590_235, K_API_FAT
	add.w	r0, 4 #111	# _236,
# basic.c:2668: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	add.w	r1, 4 #111	# _237,
# basic.c:2668: 	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	st.w	[r0], r1	# *_236, _237
# basic.c:2669: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	mov.w	r1, file_open	# file_open.591_238,
# basic.c:2669: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	ld.w	r0, [K_API_FAT]	# K_API_FAT.592_239, K_API_FAT
	add.w	r0, 8 #111	# _240,
# basic.c:2669: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	add.w	r1, 4 #111	# _241,
# basic.c:2669: 	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	st.w	[r0], r1	# *_240, _241
# basic.c:2670: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	mov.w	r1, file_read	# file_read.593_242,
# basic.c:2670: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	ld.w	r0, [K_API_FAT]	# K_API_FAT.594_243, K_API_FAT
	add.w	r0, 12 #111	# _244,
# basic.c:2670: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	add.w	r1, 4 #111	# _245,
# basic.c:2670: 	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	st.w	[r0], r1	# *_244, _245
# basic.c:2671: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	mov.w	r1, getDirEntry	# getDirEntry.595_246,
# basic.c:2671: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	ld.w	r0, [K_API_FAT]	# K_API_FAT.596_247, K_API_FAT
	add.w	r0, 16 #111	# _248,
# basic.c:2671: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	add.w	r1, 4 #111	# _249,
# basic.c:2671: 	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	st.w	[r0], r1	# *_248, _249
# basic.c:2672: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	mov.w	r1, file_seek	# file_seek.597_250,
# basic.c:2672: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	ld.w	r0, [K_API_FAT]	# K_API_FAT.598_251, K_API_FAT
	add.w	r0, 20 #111	# _252,
# basic.c:2672: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	add.w	r1, 4 #111	# _253,
# basic.c:2672: 	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	st.w	[r0], r1	# *_252, _253
# basic.c:2673: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	mov.w	r1, file_write	# file_write.599_254,
# basic.c:2673: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	ld.w	r0, [K_API_FAT]	# K_API_FAT.600_255, K_API_FAT
	add.w	r0, 24 #111	# _256,
# basic.c:2673: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	add.w	r1, 4 #111	# _257,
# basic.c:2673: 	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	st.w	[r0], r1	# *_256, _257
# basic.c:2674: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	mov.w	r1, file_delete	# file_delete.601_258,
# basic.c:2674: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	ld.w	r0, [K_API_FAT]	# K_API_FAT.602_259, K_API_FAT
	add.w	r0, 28 #111	# _260,
# basic.c:2674: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	add.w	r1, 4 #111	# _261,
# basic.c:2674: 	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	st.w	[r0], r1	# *_260, _261
# basic.c:2676: }
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
# basic.c:2682: 	program_start = program;
	ld.w	r0, [program]	# program.603_1, program
	st.w	[program_start], r0	# program_start, program.603_1
# basic.c:2683: 	program_end = program_start;
	ld.w	r0, [program_start]	# program_start.604_2, program_start
	st.w	[program_end], r0	# program_end, program_start.604_2
# basic.c:2684: 	bsp = program + kRamSize;  // Needed for printnum
	ld.w	r0, [program]	# program.605_3, program
	mov.w	r1, 65536	# tmp49,
	add.w	r0, r1 #222	# _4, tmp49
# basic.c:2684: 	bsp = program + kRamSize;  // Needed for printnum
	st.w	[bsp], r0	# bsp, _4
# basic.c:2685: 	stack_limit = program + kRamSize - STACK_SIZE;
	ld.w	r0, [program]	# program.606_5, program
	mov.w	r1, 65336	# tmp50,
	add.w	r0, r1 #222	# _6, tmp50
# basic.c:2685: 	stack_limit = program + kRamSize - STACK_SIZE;
	st.w	[stack_limit], r0	# stack_limit, _6
# basic.c:2686: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	ld.w	r0, [stack_limit]	# stack_limit.607_7, stack_limit
	add.w	r0, -112 #111	# _8,
# basic.c:2686: 	variables_begin = stack_limit - 28 * VAR_SIZE;
	st.w	[variables_begin], r0	# variables_begin, _8
# basic.c:2688: 	current_line = 0;
	xor.w	r0, r0	# tmp51
	st.w	[current_line], r0	# current_line, tmp51
# basic.c:2690: 	init_K_API();
	call	init_K_API		#
# basic.c:2692: 	init_stdio();
	call	init_stdio		#
# basic.c:2694: 	video_mode(0);
	mov.w	r1, sp	# tmp52,
	xor.w	r0, r0	# tmp53
	st.w	[r1], r0	#, tmp53
	call	video_mode		#
# basic.c:2695: 	color = 1;
	mov.w	r0, 1	# tmp54,
	st.w	[color], r0	# color, tmp54
# basic.c:2696: 	cls(color);
	ld.w	r0, [color]	# color.608_9, color
	mov.w	r1, sp	# tmp55,
	st.w	[r1], r0	#, color.608_9
	call	cls		#
# basic.c:2697: 	uart_init_files();
	call	uart_init_files		#
# basic.c:2698: 	init_spi();
	call	init_spi		#
# basic.c:2699: 	init_sd();
	call	init_sd		#
# basic.c:2700: 	init_tcpip();
	call	init_tcpip		#
# basic.c:2702: 	exec_mem();
	call	exec_mem		#
# basic.c:2704: 	init_timer();
	call	init_timer		#
# basic.c:2706: 	res = 0;
	xor.w	r0, r0	# tmp56
	st.w	[r13 + (-4)], r0	# res, tmp56
.L564:
# basic.c:2709: 		if (res != 3)
	ld.w	r1, [r13 + (-4)]	# tmp57, res
	mov.w	r0, 3	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jz	.L554		#
# basic.c:2711: 			getln('>');
	mov.w	r1, sp	# tmp59,
	mov.w	r0, 62	# tmp60,
	st.w	[r1], r0	#, tmp60
	call	getln		#
# basic.c:2712: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
# basic.c:2713: 			skip_to_end();
	call	skip_to_end		#
	j	.L555		#
.L554:
# basic.c:2717: 			res = 0;
	xor.w	r0, r0	# tmp61
	st.w	[r13 + (-4)], r0	# res, tmp61
# basic.c:2718: 			toUppercaseBuffer();
	call	toUppercaseBuffer		#
.L555:
# basic.c:2721: 		linenum = testnum();
	call	testnum		#
	mov.w	r1, r0	# _10,
# basic.c:2721: 		linenum = testnum();
	mov.w	r0, r1	# tmp62, _10
	st.w	[sp], r0	#, tmp62
	call	__fixsfsi		#
	st.w	[linenum], r0	# linenum, _11
# basic.c:2723: 		ignore_blanks();
	call	ignore_blanks		#
# basic.c:2725: 		if (linenum == 0)
	ld.w	r1, [linenum]	# linenum.609_12, linenum
# basic.c:2725: 		if (linenum == 0)
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# linenum.609_12, tmp63
	jnz	.L556		#
.L562:
# basic.c:2728: 				res = direct();
	call	direct		#
	st.w	[r13 + (-4)], r0	# res,
# basic.c:2729: 				if (res == 1)
	ld.w	r1, [r13 + (-4)]	# tmp64, res
	mov.w	r0, 1	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L557		#
# basic.c:2730: 					return 0;
	xor.w	r0, r0	# _65
	j	.L565		#
.L557:
# basic.c:2731: 				if (res == 2)
	ld.w	r1, [r13 + (-4)]	# tmp66, res
	mov.w	r0, 2	# tmp67,
	cmp.w	r1, r0	# tmp66, tmp67
	jnz	.L559		#
# basic.c:2733: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	ld.w	r0, [current_line]	# current_line.610_13, current_line
	add.w	r0, 5 #111	# _14,
# basic.c:2733: 					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
	st.w	[txtpos], r0	# txtpos, _14
# basic.c:2734: 					continue;
	j	.L560		#
.L559:
# basic.c:2736: 				ignore_blanks();
	call	ignore_blanks		#
# basic.c:2737: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.611_15, txtpos
	ld.b	r0, [r0]	# _16, *txtpos.611_15
# basic.c:2737: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp68, _16
	mov.w	r0, 10	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jz	.L564		#
# basic.c:2737: 				if (*txtpos == NL || *txtpos != ':')
	ld.w	r0, [txtpos]	# txtpos.612_17, txtpos
	ld.b	r0, [r0]	# _18, *txtpos.612_17
# basic.c:2737: 				if (*txtpos == NL || *txtpos != ':')
	zex.b	r1, r0	# tmp70, _18
	mov.w	r0, 58	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L564		#
# basic.c:2739: 				txtpos++;
	ld.w	r0, [txtpos]	# txtpos.613_19, txtpos
	add.w	r0, 1 #111	# _20,
	st.w	[txtpos], r0	# txtpos, _20
# basic.c:2740: 				ignore_blanks();
	call	ignore_blanks		#
.L560:
# basic.c:2728: 				res = direct();
	j	.L562		#
.L556:
# basic.c:2743: 		else if (linenum == 0xFFFF)
	ld.w	r1, [linenum]	# linenum.614_21, linenum
# basic.c:2743: 		else if (linenum == 0xFFFF)
	mov.w	r0, 65535	# tmp72,
	cmp.w	r1, r0	# linenum.614_21, tmp72
	jnz	.L563		#
# basic.c:2745: 			qhow();
	call	qhow		#
	j	.L564		#
.L563:
# basic.c:2749: 			entered_with_line_num();
	call	entered_with_line_num		#
# basic.c:2709: 		if (res != 3)
	j	.L564		#
.L565:
# basic.c:2752: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
