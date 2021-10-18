	.file	"spaceinvaders.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -D KERNEL spaceinvaders.c -mel
# -auxbase-strip spaceinvaders.s -fsigned-char -fverbose-asm
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
	.global	player_ship
	.data
	.p2align	2
	.type	player_ship, @object
	.size	player_ship, 4
player_ship:
	.long	128
	.global	sprite_addr
	.p2align	2
	.type	sprite_addr, @object
	.size	sprite_addr, 4
sprite_addr:
	.long	512
	.global	player_bullet_def
	.p2align	2
	.type	player_bullet_def, @object
	.size	player_bullet_def, 4
player_bullet_def:
	.long	136
	.global	player_bullet_addr
	.p2align	2
	.type	player_bullet_addr, @object
	.size	player_bullet_addr, 4
player_bullet_addr:
	.long	640
	.global	row_1_squid
	.section	.bss,"aw",@nobits
	.p2align	1
	.type	row_1_squid, @object
	.size	row_1_squid, 88
row_1_squid:
	.zero	88
	.global	row_2_crab
	.p2align	1
	.type	row_2_crab, @object
	.size	row_2_crab, 88
row_2_crab:
	.zero	88
	.global	row_3_crab
	.p2align	1
	.type	row_3_crab, @object
	.size	row_3_crab, 88
row_3_crab:
	.zero	88
	.global	row_4_octopus
	.p2align	1
	.type	row_4_octopus, @object
	.size	row_4_octopus, 88
row_4_octopus:
	.zero	88
	.global	row_5_octopus
	.p2align	1
	.type	row_5_octopus, @object
	.size	row_5_octopus, 88
row_5_octopus:
	.zero	88
	.global	row_base
	.p2align	1
	.type	row_base, @object
	.size	row_base, 32
row_base:
	.zero	32
	.global	alien_bullet
	.p2align	2
	.type	alien_bullet, @object
	.size	alien_bullet, 180
alien_bullet:
	.zero	180
	.global	str
	.p2align	2
	.type	str, @object
	.size	str, 256
str:
	.zero	256
	.global	player_bullet_status
	.p2align	2
	.type	player_bullet_status, @object
	.size	player_bullet_status, 4
player_bullet_status:
	.zero	4
	.global	player_movement_skip_frame
	.p2align	2
	.type	player_movement_skip_frame, @object
	.size	player_movement_skip_frame, 4
player_movement_skip_frame:
	.zero	4
	.global	player_alive
	.data
	.p2align	2
	.type	player_alive, @object
	.size	player_alive, 4
player_alive:
	.long	3
	.global	player_death_timer
	.section	.bss
	.p2align	2
	.type	player_death_timer, @object
	.size	player_death_timer, 4
player_death_timer:
	.zero	4
	.global	lives
	.data
	.p2align	2
	.type	lives, @object
	.size	lives, 4
lives:
	.long	3
	.global	current_pl_expl_sprite
	.section	.bss
	.p2align	2
	.type	current_pl_expl_sprite, @object
	.size	current_pl_expl_sprite, 4
current_pl_expl_sprite:
	.zero	4
	.global	movement_step
	.data
	.p2align	2
	.type	movement_step, @object
	.size	movement_step, 4
movement_step:
	.long	96
	.global	current_step
	.section	.bss
	.p2align	2
	.type	current_step, @object
	.size	current_step, 4
current_step:
	.zero	4
	.global	number_of_aliens
	.data
	.p2align	2
	.type	number_of_aliens, @object
	.size	number_of_aliens, 4
number_of_aliens:
	.long	55
	.global	direction
	.type	direction, @object
	.size	direction, 1
direction:
	.byte	3
	.global	distance
	.p2align	2
	.type	distance, @object
	.size	distance, 4
distance:
	.long	2
	.global	score
	.section	.bss
	.p2align	2
	.type	score, @object
	.size	score, 4
score:
	.zero	4
	.global	bonus_life_awarded
	.p2align	2
	.type	bonus_life_awarded, @object
	.size	bonus_life_awarded, 4
bonus_life_awarded:
	.zero	4
	.global	high_score
	.p2align	2
	.type	high_score, @object
	.size	high_score, 4
high_score:
	.zero	4
	.global	death_timer
	.p2align	2
	.type	death_timer, @object
	.size	death_timer, 4
death_timer:
	.zero	4
	.global	timer_for_player_bullet_destroy
	.p2align	2
	.type	timer_for_player_bullet_destroy, @object
	.size	timer_for_player_bullet_destroy, 4
timer_for_player_bullet_destroy:
	.zero	4
	.global	timer_for_ufo_spawn
	.p2align	2
	.type	timer_for_ufo_spawn, @object
	.size	timer_for_ufo_spawn, 4
timer_for_ufo_spawn:
	.zero	4
	.global	timer_for_ufo_death
	.data
	.p2align	2
	.type	timer_for_ufo_death, @object
	.size	timer_for_ufo_death, 4
timer_for_ufo_death:
	.long	-1
	.global	ufo_status
	.section	.bss
	.p2align	2
	.type	ufo_status, @object
	.size	ufo_status, 4
ufo_status:
	.zero	4
	.global	timer_for_ufo_move
	.data
	.p2align	2
	.type	timer_for_ufo_move, @object
	.size	timer_for_ufo_move, 4
timer_for_ufo_move:
	.long	36
	.global	ufo_position_X
	.section	.bss
	.p2align	2
	.type	ufo_position_X, @object
	.size	ufo_position_X, 4
ufo_position_X:
	.zero	4
	.global	ufo_direction
	.data
	.p2align	2
	.type	ufo_direction, @object
	.size	ufo_direction, 4
ufo_direction:
	.long	3
	.global	ufo_score
	.section	.bss
	.p2align	2
	.type	ufo_score, @object
	.size	ufo_score, 4
ufo_score:
	.zero	4
	.global	delay_ms
	.data
	.p2align	2
	.type	delay_ms, @object
	.size	delay_ms, 4
delay_ms:
	.long	2
	.global	alien_bullet_spawn_time
	.p2align	2
	.type	alien_bullet_spawn_time, @object
	.size	alien_bullet_spawn_time, 4
alien_bullet_spawn_time:
	.long	1150
	.global	timer_for_alien_bullet_spawn
	.p2align	2
	.type	timer_for_alien_bullet_spawn, @object
	.size	timer_for_alien_bullet_spawn, 4
timer_for_alien_bullet_spawn:
	.long	1150
	.global	vkp
	.section	.bss
	.p2align	2
	.type	vkp, @object
	.size	vkp, 4
vkp:
	.zero	4
	.global	vkr
	.p2align	2
	.type	vkr, @object
	.size	vkr, 4
vkr:
	.zero	4
	.global	old
	.p2align	2
	.type	old, @object
	.size	old, 4
old:
	.zero	4
	.global	current_screen
	.p2align	2
	.type	current_screen, @object
	.size	current_screen, 4
current_screen:
	.zero	4
	.global	current_player_bullet
	.p2align	2
	.type	current_player_bullet, @object
	.size	current_player_bullet, 4
current_player_bullet:
	.zero	4
	.global	special_player_bullet
	.data
	.p2align	2
	.type	special_player_bullet, @object
	.size	special_player_bullet, 4
special_player_bullet:
	.long	23
	.global	player_spawn_current_time
	.section	.bss
	.p2align	2
	.type	player_spawn_current_time, @object
	.size	player_spawn_current_time, 4
player_spawn_current_time:
	.zero	4
	.global	player_spawn_timer
	.data
	.p2align	2
	.type	player_spawn_timer, @object
	.size	player_spawn_timer, 4
player_spawn_timer:
	.long	1500
	.global	current_wave
	.p2align	2
	.type	current_wave, @object
	.size	current_wave, 4
current_wave:
	.long	1
	.global	game_state
	.p2align	2
	.type	game_state, @object
	.size	game_state, 4
game_state:
	.long	1
	.global	squid0
	.p2align	1
	.type	squid0, @object
	.size	squid0, 32
squid0:
	.short	7
	.short	28672
	.short	119
	.short	30464
	.short	1911
	.short	30576
	.short	30471
	.short	28791
	.short	30583
	.short	30583
	.short	112
	.short	1792
	.short	1799
	.short	28784
	.short	28784
	.short	1799
	.global	squid1
	.p2align	1
	.type	squid1, @object
	.size	squid1, 32
squid1:
	.short	7
	.short	28672
	.short	119
	.short	30464
	.short	1911
	.short	30576
	.short	30471
	.short	28791
	.short	30583
	.short	30583
	.short	1799
	.short	28784
	.short	28672
	.short	7
	.short	1792
	.short	112
	.global	crab0
	.p2align	1
	.type	crab0, @object
	.size	crab0, 48
crab0:
	.short	112
	.short	0
	.short	28672
	.short	28679
	.short	7
	.short	112
	.short	28791
	.short	30583
	.short	28784
	.short	30576
	.short	30576
	.short	30576
	.short	30583
	.short	30583
	.short	30576
	.short	1911
	.short	30583
	.short	30464
	.short	112
	.short	0
	.short	28672
	.short	1792
	.short	0
	.short	1792
	.global	crab1
	.p2align	1
	.type	crab1, @object
	.size	crab1, 48
crab1:
	.short	112
	.short	0
	.short	28672
	.short	7
	.short	7
	.short	0
	.short	119
	.short	30583
	.short	28672
	.short	1904
	.short	30576
	.short	30464
	.short	30583
	.short	30583
	.short	30576
	.short	28791
	.short	30583
	.short	28784
	.short	28784
	.short	0
	.short	28784
	.short	7
	.short	28791
	.short	0
	.global	octopus0
	.p2align	1
	.type	octopus0, @object
	.size	octopus0, 48
octopus0:
	.short	0
	.short	30583
	.short	0
	.short	1911
	.short	30583
	.short	30576
	.short	30583
	.short	30583
	.short	30583
	.short	30576
	.short	1904
	.short	1911
	.short	30583
	.short	30583
	.short	30583
	.short	7
	.short	28679
	.short	28672
	.short	119
	.short	1904
	.short	30464
	.short	30464
	.short	0
	.short	119
	.global	octopus1
	.p2align	1
	.type	octopus1, @object
	.size	octopus1, 48
octopus1:
	.short	0
	.short	30583
	.short	0
	.short	1911
	.short	30583
	.short	30576
	.short	30583
	.short	30583
	.short	30583
	.short	30576
	.short	1904
	.short	1911
	.short	30583
	.short	30583
	.short	30583
	.short	119
	.short	28679
	.short	30464
	.short	1904
	.short	1904
	.short	1904
	.short	119
	.short	0
	.short	30464
	.global	ufo
	.p2align	1
	.type	ufo, @object
	.size	ufo, 64
ufo:
	.short	0
	.short	1911
	.short	30576
	.short	0
	.short	7
	.short	30583
	.short	30583
	.short	28672
	.short	119
	.short	30583
	.short	30583
	.short	30464
	.short	1904
	.short	30471
	.short	28791
	.short	1904
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	119
	.short	28679
	.short	28679
	.short	30464
	.short	7
	.short	0
	.short	0
	.short	28672
	.short	0
	.short	0
	.short	0
	.short	0
	.global	base
	.p2align	1
	.type	base, @object
	.size	base, 192
base:
	.short	0
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	0
	.short	7
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	28672
	.short	119
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30464
	.short	1911
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30576
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	30576
	.short	0
	.short	0
	.short	1911
	.short	30583
	.short	30583
	.short	30464
	.short	0
	.short	0
	.short	119
	.short	30583
	.short	30583
	.short	28672
	.short	0
	.short	0
	.short	7
	.short	30583
	.short	30583
	.short	28672
	.short	0
	.short	0
	.short	7
	.short	30583
	.global	ship
	.p2align	1
	.type	ship, @object
	.size	ship, 128
ship:
	.short	0
	.short	112
	.short	0
	.short	0
	.short	0
	.short	1911
	.short	0
	.short	0
	.short	0
	.short	1911
	.short	0
	.short	0
	.short	1911
	.short	30583
	.short	30583
	.short	0
	.short	30583
	.short	30583
	.short	30583
	.short	28672
	.short	30583
	.short	30583
	.short	30583
	.short	28672
	.short	30583
	.short	30583
	.short	30583
	.short	28672
	.short	30583
	.short	30583
	.short	30583
	.short	28672
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.global	ship_explosion0
	.p2align	1
	.type	ship_explosion0, @object
	.size	ship_explosion0, 64
ship_explosion0:
	.short	7
	.short	0
	.short	0
	.short	1792
	.short	28672
	.short	112
	.short	7
	.short	28679
	.short	7
	.short	0
	.short	30464
	.short	0
	.short	0
	.short	112
	.short	0
	.short	112
	.short	1792
	.short	28791
	.short	119
	.short	7
	.short	112
	.short	7
	.short	30464
	.short	1792
	.short	7
	.short	30583
	.short	30583
	.short	0
	.short	119
	.short	1911
	.short	30583
	.short	112
	.global	ship_explosion1
	.p2align	1
	.type	ship_explosion1, @object
	.size	ship_explosion1, 64
ship_explosion1:
	.short	0
	.short	112
	.short	0
	.short	0
	.short	0
	.short	0
	.short	7
	.short	0
	.short	0
	.short	112
	.short	28784
	.short	0
	.short	7
	.short	112
	.short	0
	.short	0
	.short	0
	.short	7
	.short	28791
	.short	0
	.short	1792
	.short	1799
	.short	28784
	.short	28672
	.short	7
	.short	30583
	.short	30576
	.short	1792
	.short	119
	.short	30583
	.short	30583
	.short	1799
	.global	player_bullet
	.p2align	1
	.type	player_bullet, @object
	.size	player_bullet, 16
player_bullet:
	.short	28672
	.short	0
	.short	28672
	.short	0
	.short	28672
	.short	0
	.short	0
	.short	0
	.global	bottom_line
	.p2align	1
	.type	bottom_line, @object
	.size	bottom_line, 8
bottom_line:
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.global	alien_death
	.p2align	1
	.type	alien_death, @object
	.size	alien_death, 64
alien_death:
	.short	0
	.short	28672
	.short	28672
	.short	0
	.short	1792
	.short	1799
	.short	7
	.short	0
	.short	112
	.short	0
	.short	112
	.short	0
	.short	7
	.short	0
	.short	1792
	.short	0
	.short	30464
	.short	0
	.short	7
	.short	28672
	.short	7
	.short	0
	.short	1792
	.short	0
	.short	112
	.short	1799
	.short	112
	.short	0
	.short	1792
	.short	28672
	.short	28679
	.short	0
	.global	player_bullet_explosion
	.p2align	1
	.type	player_bullet_explosion, @object
	.size	player_bullet_explosion, 32
player_bullet_explosion:
	.short	28672
	.short	28679
	.short	112
	.short	112
	.short	1911
	.short	30576
	.short	30583
	.short	30583
	.short	30583
	.short	30583
	.short	1911
	.short	30576
	.short	112
	.short	1792
	.short	28679
	.short	7
	.global	alien_bullet_explosion
	.p2align	1
	.type	alien_bullet_explosion, @object
	.size	alien_bullet_explosion, 32
alien_bullet_explosion:
	.short	112
	.short	0
	.short	28672
	.short	28672
	.short	119
	.short	1792
	.short	1911
	.short	28672
	.short	28791
	.short	28672
	.short	1911
	.short	30464
	.short	28791
	.short	28672
	.short	1799
	.short	1792
	.global	alien_bullet0_sprite0
	.p2align	1
	.type	alien_bullet0_sprite0, @object
	.size	alien_bullet0_sprite0, 32
alien_bullet0_sprite0:
	.short	28672
	.short	0
	.short	1792
	.short	0
	.short	112
	.short	0
	.short	1792
	.short	0
	.short	28672
	.short	0
	.short	1792
	.short	0
	.short	112
	.short	0
	.short	0
	.short	0
	.global	alien_bullet0_sprite1
	.p2align	1
	.type	alien_bullet0_sprite1, @object
	.size	alien_bullet0_sprite1, 32
alien_bullet0_sprite1:
	.short	1792
	.short	0
	.short	112
	.short	0
	.short	1792
	.short	0
	.short	28672
	.short	0
	.short	1792
	.short	0
	.short	112
	.short	0
	.short	1792
	.short	0
	.short	0
	.short	0
	.global	alien_bullet0_sprite2
	.p2align	1
	.type	alien_bullet0_sprite2, @object
	.size	alien_bullet0_sprite2, 32
alien_bullet0_sprite2:
	.short	112
	.short	0
	.short	1792
	.short	0
	.short	28672
	.short	0
	.short	1792
	.short	0
	.short	112
	.short	0
	.short	1792
	.short	0
	.short	28672
	.short	0
	.short	0
	.short	0
	.global	alien_bullet0_sprite3
	.p2align	1
	.type	alien_bullet0_sprite3, @object
	.size	alien_bullet0_sprite3, 32
alien_bullet0_sprite3:
	.short	1792
	.short	0
	.short	28672
	.short	0
	.short	1792
	.short	0
	.short	112
	.short	0
	.short	1792
	.short	0
	.short	28672
	.short	0
	.short	1792
	.short	0
	.short	0
	.short	0
	.global	alien_bullet1_sprite0
	.p2align	1
	.type	alien_bullet1_sprite0, @object
	.size	alien_bullet1_sprite0, 32
alien_bullet1_sprite0:
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	30464
	.short	0
	.short	1904
	.short	0
	.short	1792
	.short	0
	.short	30464
	.short	0
	.short	1904
	.short	0
	.short	0
	.short	0
	.global	alien_bullet1_sprite1
	.p2align	1
	.type	alien_bullet1_sprite1, @object
	.size	alien_bullet1_sprite1, 32
alien_bullet1_sprite1:
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	0
	.short	0
	.global	alien_bullet1_sprite2
	.p2align	1
	.type	alien_bullet1_sprite2, @object
	.size	alien_bullet1_sprite2, 32
alien_bullet1_sprite2:
	.short	1904
	.short	0
	.short	30464
	.short	0
	.short	1792
	.short	0
	.short	1904
	.short	0
	.short	30464
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	0
	.short	0
	.global	alien_bullet2_sprite0
	.p2align	1
	.type	alien_bullet2_sprite0, @object
	.size	alien_bullet2_sprite0, 32
alien_bullet2_sprite0:
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	30576
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	0
	.short	0
	.global	alien_bullet2_sprite1
	.p2align	1
	.type	alien_bullet2_sprite1, @object
	.size	alien_bullet2_sprite1, 32
alien_bullet2_sprite1:
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	30576
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	0
	.short	0
	.global	alien_bullet2_sprite2
	.p2align	1
	.type	alien_bullet2_sprite2, @object
	.size	alien_bullet2_sprite2, 32
alien_bullet2_sprite2:
	.short	30576
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	0
	.short	0
	.global	alien_bullet2_sprite3
	.p2align	1
	.type	alien_bullet2_sprite3, @object
	.size	alien_bullet2_sprite3, 32
alien_bullet2_sprite3:
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	1792
	.short	0
	.short	30576
	.short	0
	.short	0
	.short	0
	.global	ufo_explosion
	.p2align	1
	.type	ufo_explosion, @object
	.size	ufo_explosion, 96
ufo_explosion:
	.short	112
	.short	1799
	.short	0
	.short	112
	.short	28679
	.short	0
	.short	7
	.short	0
	.short	0
	.short	30464
	.short	112
	.short	0
	.short	28784
	.short	119
	.short	30464
	.short	1904
	.short	0
	.short	0
	.short	0
	.short	1911
	.short	30583
	.short	119
	.short	28679
	.short	0
	.short	0
	.short	30576
	.short	28784
	.short	28679
	.short	30464
	.short	0
	.short	112
	.short	119
	.short	30576
	.short	119
	.short	0
	.short	28672
	.short	28672
	.short	7
	.short	1792
	.short	1904
	.short	112
	.short	0
	.short	112
	.short	112
	.short	112
	.short	7
	.short	0
	.short	0
	.text
	.p2align	1
	.global	copy_player_bullet_def
	.type	copy_player_bullet_def, @function
copy_player_bullet_def:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# spaceinvaders.c:577: 	short * p = (short *)player_bullet_addr;
	ld.w	r0, [player_bullet_addr]	# player_bullet_addr.0_1, player_bullet_addr
# spaceinvaders.c:577: 	short * p = (short *)player_bullet_addr;
	st.w	[r13 + (-4)], r0	# p, player_bullet_addr.0_1
# spaceinvaders.c:579: 	for (int i = 0; i < 4*2; i++)
	xor.w	r0, r0	# tmp28
	st.w	[r13 + (-8)], r0	# i, tmp28
# spaceinvaders.c:579: 	for (int i = 0; i < 4*2; i++)
	j	.L2		#
.L3:
# spaceinvaders.c:581: 		*p = player_bullet[i];
	ld.w	r0, [r13 + (-8)]	# tmp29, i
	add.w	r0, r0 #222	# tmp30, tmp29
	mov.w	r1, player_bullet	# tmp32,
	add.w	r0, r1 #222	# tmp31, tmp32
	ld.s	r1, [r0]	# _2, player_bullet
# spaceinvaders.c:581: 		*p = player_bullet[i];
	ld.w	r0, [r13 + (-4)]	# tmp33, p
	st.s	[r0], r1	# *p_3, _2
# spaceinvaders.c:582: 		p+=2;
	ld.w	r0, [r13 + (-4)]	# tmp35, p
	add.w	r0, 4 #111	# tmp34,
	st.w	[r13 + (-4)], r0	# p, tmp34
# spaceinvaders.c:579: 	for (int i = 0; i < 4*2; i++)
	ld.w	r0, [r13 + (-8)]	# tmp37, i
	add.w	r0, 1 #111	# tmp36,
	st.w	[r13 + (-8)], r0	# i, tmp36
.L2:
# spaceinvaders.c:579: 	for (int i = 0; i < 4*2; i++)
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 7	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jses	.L3		#
# spaceinvaders.c:584: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	copy_player_bullet_def, .-copy_player_bullet_def
	.p2align	1
	.global	copy_player_ship
	.type	copy_player_ship, @function
copy_player_ship:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# spaceinvaders.c:589: 	short * p = (short *)sprite_addr;
	ld.w	r0, [sprite_addr]	# sprite_addr.1_1, sprite_addr
# spaceinvaders.c:589: 	short * p = (short *)sprite_addr;
	st.w	[r13 + (-4)], r0	# p, sprite_addr.1_1
# spaceinvaders.c:591: 	for (int i = 0; i < 8*4*2; i++)
	xor.w	r0, r0	# tmp28
	st.w	[r13 + (-8)], r0	# i, tmp28
# spaceinvaders.c:591: 	for (int i = 0; i < 8*4*2; i++)
	j	.L5		#
.L6:
# spaceinvaders.c:593: 		*p = ship[i];
	ld.w	r0, [r13 + (-8)]	# tmp29, i
	add.w	r0, r0 #222	# tmp30, tmp29
	mov.w	r1, ship	# tmp32,
	add.w	r0, r1 #222	# tmp31, tmp32
	ld.s	r1, [r0]	# _2, ship
# spaceinvaders.c:593: 		*p = ship[i];
	ld.w	r0, [r13 + (-4)]	# tmp33, p
	st.s	[r0], r1	# *p_3, _2
# spaceinvaders.c:594: 		p++;
	ld.w	r0, [r13 + (-4)]	# tmp35, p
	add.w	r0, 2 #111	# tmp34,
	st.w	[r13 + (-4)], r0	# p, tmp34
# spaceinvaders.c:591: 	for (int i = 0; i < 8*4*2; i++)
	ld.w	r0, [r13 + (-8)]	# tmp37, i
	add.w	r0, 1 #111	# tmp36,
	st.w	[r13 + (-8)], r0	# i, tmp36
.L5:
# spaceinvaders.c:591: 	for (int i = 0; i < 8*4*2; i++)
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 63	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jses	.L6		#
# spaceinvaders.c:596: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	copy_player_ship, .-copy_player_ship
	.p2align	1
	.global	set_short_color
	.type	set_short_color, @function
set_short_color:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp57, s
	ld.w	r0, [r13 + (12)]	# tmp59, color
	st.s	[r13 + (-8)], r1	# s, tmp58
	st.s	[r13 + (-12)], r0	# color, tmp60
# spaceinvaders.c:602: 	short new_color = 0x0000;
	xor.w	r0, r0	# tmp61
	st.s	[r13 + (-2)], r0	# new_color, tmp61
# spaceinvaders.c:603: 	switch(color)
	ld.s	r1, [r13 + (-12)]	#, color
	sex.s	r0, r1	# _1,
	mov.w	r1, 7	# tmp62,
	cmp.w	r0, r1	# _1, tmp62
	jz	.L8		#
	mov.w	r1, 7	# tmp63,
	cmp.w	r0, r1	# _1, tmp63
	jgs	.L9		#
	mov.w	r1, 6	# tmp64,
	cmp.w	r0, r1	# _1, tmp64
	jz	.L10		#
	mov.w	r1, 6	# tmp65,
	cmp.w	r0, r1	# _1, tmp65
	jgs	.L9		#
	mov.w	r1, 5	# tmp66,
	cmp.w	r0, r1	# _1, tmp66
	jz	.L11		#
	mov.w	r1, 5	# tmp67,
	cmp.w	r0, r1	# _1, tmp67
	jgs	.L9		#
	mov.w	r1, 4	# tmp68,
	cmp.w	r0, r1	# _1, tmp68
	jz	.L12		#
	mov.w	r1, 4	# tmp69,
	cmp.w	r0, r1	# _1, tmp69
	jgs	.L9		#
	mov.w	r1, 3	# tmp70,
	cmp.w	r0, r1	# _1, tmp70
	jz	.L13		#
	mov.w	r1, 3	# tmp71,
	cmp.w	r0, r1	# _1, tmp71
	jgs	.L9		#
	mov.w	r1, 1	# tmp72,
	cmp.w	r0, r1	# _1, tmp72
	jz	.L14		#
	mov.w	r1, 2	# tmp73,
	cmp.w	r0, r1	# _1, tmp73
	jz	.L15		#
	j	.L9		#
.L14:
# spaceinvaders.c:606: 			new_color = 0x1000;
	mov.s	r0, 4096	# tmp74,
	st.s	[r13 + (-2)], r0	# new_color, tmp74
# spaceinvaders.c:607: 			break;
	j	.L16		#
.L15:
# spaceinvaders.c:609: 			new_color = 0x2000;
	mov.s	r0, 8192	# tmp75,
	st.s	[r13 + (-2)], r0	# new_color, tmp75
# spaceinvaders.c:610: 			break;
	j	.L16		#
.L13:
# spaceinvaders.c:612: 			new_color = 0x3000;
	mov.s	r0, 12288	# tmp76,
	st.s	[r13 + (-2)], r0	# new_color, tmp76
# spaceinvaders.c:613: 			break;
	j	.L16		#
.L12:
# spaceinvaders.c:615: 			new_color = 0x4000;
	mov.s	r0, 16384	# tmp77,
	st.s	[r13 + (-2)], r0	# new_color, tmp77
# spaceinvaders.c:616: 			break;
	j	.L16		#
.L11:
# spaceinvaders.c:618: 			new_color = 0x5000;
	mov.s	r0, 20480	# tmp78,
	st.s	[r13 + (-2)], r0	# new_color, tmp78
# spaceinvaders.c:619: 			break;
	j	.L16		#
.L10:
# spaceinvaders.c:621: 			new_color = 0x6000;
	mov.s	r0, 24576	# tmp79,
	st.s	[r13 + (-2)], r0	# new_color, tmp79
# spaceinvaders.c:622: 			break;
	j	.L16		#
.L8:
# spaceinvaders.c:624: 			new_color = 0x7000;
	mov.s	r0, 28672	# tmp80,
	st.s	[r13 + (-2)], r0	# new_color, tmp80
# spaceinvaders.c:625: 			break;
	j	.L16		#
.L9:
# spaceinvaders.c:627: 			new_color = 0x0000;
	xor.w	r0, r0	# tmp81
	st.s	[r13 + (-2)], r0	# new_color, tmp81
# spaceinvaders.c:628: 			break;
	nop	
.L16:
# spaceinvaders.c:646: 	short s_new = 0x0000;
	xor.w	r0, r0	# tmp82
	st.s	[r13 + (-4)], r0	# s_new, tmp82
# spaceinvaders.c:647: 	if((s & 0x0FFF) != s)
	ld.s	r0, [r13 + (-8)]	# s.2_2, s
	zex.s	r1, r0	# _3, s.2_2
	mov.w	r0, 4095	# tmp83,
	and.w	r1, r0	# _4, tmp83
# spaceinvaders.c:647: 	if((s & 0x0FFF) != s)
	ld.s	r2, [r13 + (-8)]	#, s
	sex.s	r0, r2	# _5,
# spaceinvaders.c:647: 	if((s & 0x0FFF) != s)
	cmp.w	r1, r0	# _4, _5
	jz	.L17		#
# spaceinvaders.c:649: 		s_new += new_color;		
	ld.s	r0, [r13 + (-4)]	# s_new.3_6, s_new
	ld.s	r1, [r13 + (-2)]	# new_color.4_7, new_color
	add.w	r0, r1 #222	# tmp84, tmp85
	st.s	[r13 + (-4)], r0	# s_new, _8
.L17:
# spaceinvaders.c:651: 	if((s & 0xF0FF) != s)
	ld.s	r0, [r13 + (-8)]	#, s
	sex.s	r1, r0	# _9,
	mov.w	r0, 61695	# tmp86,
	and.w	r1, r0	# _10, tmp86
# spaceinvaders.c:651: 	if((s & 0xF0FF) != s)
	ld.s	r2, [r13 + (-8)]	#, s
	sex.s	r0, r2	# _11,
# spaceinvaders.c:651: 	if((s & 0xF0FF) != s)
	cmp.w	r1, r0	# _10, _11
	jz	.L18		#
# spaceinvaders.c:653: 		s_new += new_color >> 4;		
	ld.s	r1, [r13 + (-2)]	#, new_color
	sex.s	r0, r1	# tmp87,
	mov.w	r1, 4	# tmp89,
	shr.w	r0, r1	# tmp88, tmp89
	ld.s	r1, [r13 + (-4)]	# s_new.5_14, s_new
	add.w	r0, r1 #222	# tmp90, tmp91
	st.s	[r13 + (-4)], r0	# s_new, _15
.L18:
# spaceinvaders.c:655: 	if((s & 0xFF0F) != s)
	ld.s	r2, [r13 + (-8)]	#, s
	sex.s	r1, r2	# _16,
	mov.w	r0, 65295	# tmp92,
	and.w	r1, r0	# _17, tmp92
# spaceinvaders.c:655: 	if((s & 0xFF0F) != s)
	ld.s	r2, [r13 + (-8)]	#, s
	sex.s	r0, r2	# _18,
# spaceinvaders.c:655: 	if((s & 0xFF0F) != s)
	cmp.w	r1, r0	# _17, _18
	jz	.L19		#
# spaceinvaders.c:657: 		s_new += new_color >> 8;		
	ld.s	r1, [r13 + (-2)]	#, new_color
	sex.s	r0, r1	# tmp93,
	mov.w	r1, 8	# tmp95,
	shr.w	r0, r1	# tmp94, tmp95
	ld.s	r1, [r13 + (-4)]	# s_new.6_21, s_new
	add.w	r0, r1 #222	# tmp96, tmp97
	st.s	[r13 + (-4)], r0	# s_new, _22
.L19:
# spaceinvaders.c:659: 	if((s & 0xFFF0) != s)
	ld.s	r2, [r13 + (-8)]	#, s
	sex.s	r1, r2	# _23,
	mov.w	r0, 65520	# tmp98,
	and.w	r1, r0	# _24, tmp98
# spaceinvaders.c:659: 	if((s & 0xFFF0) != s)
	ld.s	r2, [r13 + (-8)]	#, s
	sex.s	r0, r2	# _25,
# spaceinvaders.c:659: 	if((s & 0xFFF0) != s)
	cmp.w	r1, r0	# _24, _25
	jz	.L20		#
# spaceinvaders.c:661: 		s_new += new_color >> 12;		
	ld.s	r1, [r13 + (-2)]	#, new_color
	sex.s	r0, r1	# tmp99,
	mov.w	r1, 12	# tmp101,
	shr.w	r0, r1	# tmp100, tmp101
	ld.s	r1, [r13 + (-4)]	# s_new.7_28, s_new
	add.w	r0, r1 #222	# tmp102, tmp103
	st.s	[r13 + (-4)], r0	# s_new, _29
.L20:
# spaceinvaders.c:663: 	return s_new;
	ld.s	r0, [r13 + (-4)]	# _51, s_new
# spaceinvaders.c:664: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_short_color, .-set_short_color
	.p2align	1
	.global	change_short_color_depending_on_threshold
	.type	change_short_color_depending_on_threshold, @function
change_short_color_depending_on_threshold:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp39, s
	st.s	[r13 + (-4)], r0	# s, tmp40
# spaceinvaders.c:676: 	if(s_y >= CYAN_THRESHOLD_2)
	ld.w	r1, [r13 + (12)]	# tmp41, s_y
	mov.w	r0, 228	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jses	.L23		#
# spaceinvaders.c:677: 		return set_short_color(s, CYAN);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _1,
	mov.w	r0, sp	# tmp43,
	mov.w	r2, 3	# tmp44,
	st.w	[r0 + (4)], r2	#, tmp44
	st.w	[r0], r1	#, _1
	call	set_short_color		#
	j	.L24		#
.L23:
# spaceinvaders.c:678: 	else if(s_y >= RED_THRESHOLD_2)
	ld.w	r1, [r13 + (12)]	# tmp45, s_y
	mov.w	r0, 219	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jses	.L25		#
# spaceinvaders.c:679: 		return set_short_color(s, RED);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _2,
	mov.w	r0, sp	# tmp47,
	mov.w	r2, 4	# tmp48,
	st.w	[r0 + (4)], r2	#, tmp48
	st.w	[r0], r1	#, _2
	call	set_short_color		#
	j	.L24		#
.L25:
# spaceinvaders.c:680: 	else if(s_y >= CYAN_THRESHOLD_1)
	ld.w	r1, [r13 + (12)]	# tmp49, s_y
	mov.w	r0, 211	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jses	.L26		#
# spaceinvaders.c:681: 		return set_short_color(s, CYAN);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _3,
	mov.w	r0, sp	# tmp51,
	mov.w	r2, 3	# tmp52,
	st.w	[r0 + (4)], r2	#, tmp52
	st.w	[r0], r1	#, _3
	call	set_short_color		#
	j	.L24		#
.L26:
# spaceinvaders.c:682: 	else if(s_y >= RED_THRESHOLD_1)
	ld.w	r1, [r13 + (12)]	# tmp53, s_y
	mov.w	r0, 187	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jses	.L27		#
# spaceinvaders.c:683: 		return set_short_color(s, RED);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _4,
	mov.w	r0, sp	# tmp55,
	mov.w	r2, 4	# tmp56,
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, _4
	call	set_short_color		#
	j	.L24		#
.L27:
# spaceinvaders.c:684: 	else if(s_y >= YELLOW_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp57, s_y
	mov.w	r0, 155	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jses	.L28		#
# spaceinvaders.c:685: 		return set_short_color(s, YELLOW);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _5,
	mov.w	r0, sp	# tmp59,
	mov.w	r2, 6	# tmp60,
	st.w	[r0 + (4)], r2	#, tmp60
	st.w	[r0], r1	#, _5
	call	set_short_color		#
	j	.L24		#
.L28:
# spaceinvaders.c:686: 	else if(s_y >= PURPLE_THRESHOLD_1)
	ld.w	r1, [r13 + (12)]	# tmp61, s_y
	mov.w	r0, 123	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jses	.L29		#
# spaceinvaders.c:687: 		return set_short_color(s, PURPLE);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _6,
	mov.w	r0, sp	# tmp63,
	mov.w	r2, 5	# tmp64,
	st.w	[r0 + (4)], r2	#, tmp64
	st.w	[r0], r1	#, _6
	call	set_short_color		#
	j	.L24		#
.L29:
# spaceinvaders.c:688: 	else if(s_y >= CYAN_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp65, s_y
	mov.w	r0, 91	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jses	.L30		#
# spaceinvaders.c:689: 		return set_short_color(s, CYAN);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _7,
	mov.w	r0, sp	# tmp67,
	mov.w	r2, 3	# tmp68,
	st.w	[r0 + (4)], r2	#, tmp68
	st.w	[r0], r1	#, _7
	call	set_short_color		#
	j	.L24		#
.L30:
# spaceinvaders.c:690: 	else if(s_y >= GREEN_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp69, s_y
	mov.w	r0, 59	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jses	.L31		#
# spaceinvaders.c:691: 		return set_short_color(s, GREEN);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _8,
	mov.w	r0, sp	# tmp71,
	mov.w	r2, 2	# tmp72,
	st.w	[r0 + (4)], r2	#, tmp72
	st.w	[r0], r1	#, _8
	call	set_short_color		#
	j	.L24		#
.L31:
# spaceinvaders.c:692: 	else if(s_y >= PURPLE_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp73, s_y
	mov.w	r0, 34	# tmp74,
	cmp.w	r1, r0	# tmp73, tmp74
	jses	.L32		#
# spaceinvaders.c:693: 		return set_short_color(s, PURPLE);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _9,
	mov.w	r0, sp	# tmp75,
	mov.w	r2, 5	# tmp76,
	st.w	[r0 + (4)], r2	#, tmp76
	st.w	[r0], r1	#, _9
	call	set_short_color		#
	j	.L24		#
.L32:
# spaceinvaders.c:694: 	else if(s_y >= RED_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp77, s_y
	mov.w	r0, 26	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jses	.L33		#
# spaceinvaders.c:695: 		return set_short_color(s, RED);
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _10,
	mov.w	r0, sp	# tmp79,
	mov.w	r2, 4	# tmp80,
	st.w	[r0 + (4)], r2	#, tmp80
	st.w	[r0], r1	#, _10
	call	set_short_color		#
	j	.L24		#
.L33:
# spaceinvaders.c:697: 		return set_short_color(s, WHITE); 
	ld.s	r0, [r13 + (-4)]	#, s
	sex.s	r1, r0	# _11,
	mov.w	r0, sp	# tmp81,
	mov.w	r2, 7	# tmp82,
	st.w	[r0 + (4)], r2	#, tmp82
	st.w	[r0], r1	#, _11
	call	set_short_color		#
.L24:
# spaceinvaders.c:698: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	change_short_color_depending_on_threshold, .-change_short_color_depending_on_threshold
	.p2align	1
	.global	change_sprite_color
	.type	change_sprite_color, @function
change_sprite_color:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 36 #111	#,
# spaceinvaders.c:703: 	int shorts_per_row = width / 4;
	ld.w	r0, [r13 + (12)]	# tmp41, width
	xor.w	r1, r1	# tmp43
	cmp.w	r0, r1	# tmp42, tmp43
	jges	.L35		#
	add.w	r0, 3 #111	# tmp42,
.L35:
	mov.w	r1, 2	# tmp45,
	shr.w	r0, r1	# tmp44, tmp45
	st.w	[r13 + (-16)], r0	# shorts_per_row, tmp44
# spaceinvaders.c:704: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp46
	st.w	[r13 + (-8)], r0	# i, tmp46
# spaceinvaders.c:704: 	for (int i = 0; i < height; i++)
	j	.L36		#
.L39:
# spaceinvaders.c:705: 		for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp47
	st.w	[r13 + (-12)], r0	# j, tmp47
# spaceinvaders.c:705: 		for (int j = 0; j < shorts_per_row; j++) 
	j	.L37		#
.L38:
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	ld.w	r0, [r13 + (-8)]	# tmp48, i
	ld.w	r1, [r13 + (-16)]	# tmp49, shorts_per_row
	mul.w	r0, r1	# _1, tmp49
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	ld.w	r1, [r13 + (-12)]	# tmp50, j
	add.w	r0, r1 #222	# _2, tmp50
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	add.w	r0, r0 #222	# tmp51, _3
	mov.w	r1, r0	# _4, tmp51
	ld.w	r0, [r13 + (20)]	# tmp52, bitmap
	add.w	r0, r1 #222	# _5, _4
	ld.s	r0, [r0]	# _6, *_5
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	sex.s	r1, r0	# _7, _6
	ld.w	r2, [r13 + (8)]	# tmp53, y
	ld.w	r0, [r13 + (-8)]	# tmp54, i
	add.w	r2, r0 #222	# _8, tmp54
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	ld.w	r0, [r13 + (-8)]	# tmp55, i
	ld.w	r3, [r13 + (-16)]	# tmp56, shorts_per_row
	mul.w	r0, r3	# _9, tmp56
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	ld.w	r3, [r13 + (-12)]	# tmp57, j
	add.w	r0, r3 #222	# _10, tmp57
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	add.w	r0, r0 #222	# tmp58, _11
	ld.w	r3, [r13 + (20)]	# tmp59, bitmap
	mov.w	r6, r3	# _13, tmp59
	add.w	r6, r0 #222	# _13, _12
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	mov.w	r0, sp	# tmp60,
	st.w	[r0 + (4)], r2	#, _8
	st.w	[r0], r1	#, _7
	call	change_short_color_depending_on_threshold		#
# spaceinvaders.c:706: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
	st.s	[r6], r0	# *_13, _14
# spaceinvaders.c:705: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-12)]	# tmp62, j
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (-12)], r0	# j, tmp61
.L37:
# spaceinvaders.c:705: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-12)]	# tmp63, j
	ld.w	r0, [r13 + (-16)]	# tmp64, shorts_per_row
	cmp.w	r1, r0	# tmp63, tmp64
	jss	.L38		#
# spaceinvaders.c:704: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-8)]	# tmp66, i
	add.w	r0, 1 #111	# tmp65,
	st.w	[r13 + (-8)], r0	# i, tmp65
.L36:
# spaceinvaders.c:704: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-8)]	# tmp67, i
	ld.w	r0, [r13 + (16)]	# tmp68, height
	cmp.w	r1, r0	# tmp67, tmp68
	jss	.L39		#
# spaceinvaders.c:707: }
	nop	
	nop	
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	change_sprite_color, .-change_sprite_color
	.p2align	1
	.global	draw_bitmap_with_clear_background
	.type	draw_bitmap_with_clear_background, @function
draw_bitmap_with_clear_background:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 48 #111	#,
# spaceinvaders.c:734: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp117, y
	mov.w	r0, r1	# tmp118, tmp117
	mov.w	r2, 2	# tmp120,
	shl.w	r0, r2	# tmp119, tmp120
	add.w	r0, r1 #222	# tmp118, tmp117
	mov.w	r1, 5	# tmp122,
	shl.w	r0, r1	# tmp121, tmp122
	mov.w	r1, r0	# _1, tmp118
# spaceinvaders.c:734: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp123,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp123
# spaceinvaders.c:734: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp124, x
	mov.w	r3, 31	# tmp126,
	mov.w	r1, r0	# tmp125, tmp124
	shr.w	r1, r3	# tmp125, tmp126
	mov.w	r3, r1	# tmp127, tmp125
	add.w	r3, r0 #222	# tmp127, tmp124
	mov.w	r1, 1	# tmp129,
	mov.w	r0, r3	# tmp128, tmp127
	shr.w	r0, r1	# tmp128, tmp129
	mov.w	r1, r0	# _3, tmp128
# spaceinvaders.c:734: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:734: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-20)], r0	# p1, _4
# spaceinvaders.c:736: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp130
	st.w	[r13 + (-8)], r0	# i, tmp130
# spaceinvaders.c:736: 	for (int i = 0; i < height; i++)
	j	.L41		#
.L51:
# spaceinvaders.c:750: 		short *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-8)]	# i.8_5, i
	mov.w	r0, r1	# tmp131, i.8_5
	mov.w	r2, 2	# tmp133,
	shl.w	r0, r2	# tmp132, tmp133
	add.w	r0, r1 #222	# tmp131, i.8_5
	mov.w	r1, 5	# tmp135,
	shl.w	r0, r1	# tmp134, tmp135
	mov.w	r1, r0	# _6, tmp131
# spaceinvaders.c:750: 		short *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-20)]	# tmp137, p1
	add.w	r0, r1 #222	# tmp136, _6
	st.w	[r13 + (-12)], r0	# p2, tmp136
# spaceinvaders.c:758: 		int shorts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp139, width
	xor.w	r1, r1	# tmp141
	cmp.w	r0, r1	# tmp140, tmp141
	jges	.L42		#
	add.w	r0, 3 #111	# tmp140,
.L42:
	mov.w	r1, 2	# tmp143,
	shr.w	r0, r1	# tmp142, tmp143
	st.w	[r13 + (-24)], r0	# shorts_per_row, tmp142
# spaceinvaders.c:760: 		for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp144
	st.w	[r13 + (-16)], r0	# j, tmp144
# spaceinvaders.c:760: 		for (int j = 0; j < shorts_per_row; j++) 
	j	.L43		#
.L50:
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp145, i
	ld.w	r1, [r13 + (-24)]	# tmp146, shorts_per_row
	mul.w	r0, r1	# _7, tmp146
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r1, [r13 + (-16)]	# tmp147, j
	add.w	r0, r1 #222	# _8, tmp147
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp148, _9
	mov.w	r1, r0	# _10, tmp148
	ld.w	r0, [r13 + (24)]	# tmp149, bitmap
	add.w	r0, r1 #222	# _11, _10
	ld.s	r0, [r0]	# _12, *_11
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	sex.s	r1, r0	# _13, _12
	ld.w	r2, [r13 + (12)]	# tmp150, y
	ld.w	r0, [r13 + (-8)]	# tmp151, i
	add.w	r2, r0 #222	# _14, tmp151
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp152, i
	ld.w	r3, [r13 + (-24)]	# tmp153, shorts_per_row
	mul.w	r0, r3	# _15, tmp153
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r3, [r13 + (-16)]	# tmp154, j
	add.w	r0, r3 #222	# _16, tmp154
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp155, _17
	ld.w	r3, [r13 + (24)]	# tmp156, bitmap
	mov.w	r6, r3	# _19, tmp156
	add.w	r6, r0 #222	# _19, _18
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	mov.w	r0, sp	# tmp157,
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _13
	call	change_short_color_depending_on_threshold		#
# spaceinvaders.c:762: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	st.s	[r6], r0	# *_19, _20
# spaceinvaders.c:789: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp158, x
	mov.w	r1, -2147483645	# tmp160,
	and.w	r0, r1	# tmp159, tmp160
	xor.w	r1, r1	# tmp161
	cmp.w	r0, r1	# tmp159, tmp161
	jges	.L44		#
	add.w	r0, -1 #111	# tmp159,
	mov.w	r1, -4	# tmp162,
	or.w	r0, r1	# tmp159, tmp162
	add.w	r0, 1 #111	# tmp159,
.L44:
# spaceinvaders.c:789: 			switch (x % 4)
	mov.w	r1, 3	# tmp163,
	cmp.w	r0, r1	# _21, tmp163
	jz	.L45		#
	mov.w	r1, 3	# tmp164,
	cmp.w	r0, r1	# _21, tmp164
	jgs	.L46		#
	mov.w	r1, 2	# tmp165,
	cmp.w	r0, r1	# _21, tmp165
	jz	.L47		#
	mov.w	r1, 2	# tmp166,
	cmp.w	r0, r1	# _21, tmp166
	jgs	.L46		#
	xor.w	r1, r1	# tmp167
	cmp.w	r0, r1	# _21, tmp167
	jz	.L48		#
	mov.w	r1, 1	# tmp168,
	cmp.w	r0, r1	# _21, tmp168
	jz	.L49		#
	j	.L46		#
.L48:
# spaceinvaders.c:792: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-12)]	# tmp169, p2
	ld.s	r2, [r0]	# _22, *p2_92
# spaceinvaders.c:792: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-8)]	# tmp170, i
	ld.w	r1, [r13 + (-24)]	# tmp171, shorts_per_row
	mul.w	r0, r1	# _23, tmp171
# spaceinvaders.c:792: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	ld.w	r1, [r13 + (-16)]	# tmp172, j
	add.w	r0, r1 #222	# _24, tmp172
# spaceinvaders.c:792: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	add.w	r0, r0 #222	# tmp173, _25
	mov.w	r1, r0	# _26, tmp173
	ld.w	r0, [r13 + (24)]	# tmp174, bitmap
	add.w	r0, r1 #222	# _27, _26
	ld.s	r1, [r0]	# _28, *_27
# spaceinvaders.c:792: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	mov.w	r0, r2	# tmp175,
	or.w	r0, r1	# tmp175, _28
	mov.w	r1, r0	# _29, tmp175
	ld.w	r0, [r13 + (-12)]	# tmp176, p2
	st.s	[r0], r1	# *p2_92, _29
# spaceinvaders.c:793: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp178, p2
	add.w	r0, 2 #111	# tmp177,
	st.w	[r13 + (-12)], r0	# p2, tmp177
# spaceinvaders.c:794: 					break;
	j	.L46		#
.L49:
# spaceinvaders.c:796: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-12)]	# tmp179, p2
	ld.s	r2, [r0]	# _30, *p2_92
# spaceinvaders.c:796: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-8)]	# tmp180, i
	ld.w	r1, [r13 + (-24)]	# tmp181, shorts_per_row
	mul.w	r0, r1	# _31, tmp181
# spaceinvaders.c:796: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r1, [r13 + (-16)]	# tmp182, j
	add.w	r0, r1 #222	# _32, tmp182
# spaceinvaders.c:796: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	add.w	r0, r0 #222	# tmp183, _33
	mov.w	r1, r0	# _34, tmp183
	ld.w	r0, [r13 + (24)]	# tmp184, bitmap
	add.w	r0, r1 #222	# _35, _34
	ld.s	r0, [r0]	# _36, *_35
# spaceinvaders.c:796: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	sex.s	r0, r0	# tmp185, _36
	mov.w	r1, 4	# tmp187,
	shr.w	r0, r1	# tmp186, tmp187
	mov.w	r1, r0	# _37, tmp186
	mov.w	r0, r2	# tmp188,
	or.w	r0, r1	# tmp188, _37
	st.s	[r13 + (-26)], r0	# first, tmp189
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-12)]	# tmp190, p2
	add.w	r0, 2 #111	# _38,
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.s	r2, [r0]	# _39, *_38
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-8)]	# tmp191, i
	ld.w	r1, [r13 + (-24)]	# tmp192, shorts_per_row
	mul.w	r0, r1	# _40, tmp192
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r1, [r13 + (-16)]	# tmp193, j
	add.w	r0, r1 #222	# _41, tmp193
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	add.w	r0, r0 #222	# tmp194, _42
	mov.w	r1, r0	# _43, tmp194
	ld.w	r0, [r13 + (24)]	# tmp195, bitmap
	add.w	r0, r1 #222	# _44, _43
	ld.s	r0, [r0]	# _45, *_44
	sex.s	r0, r0	# _46, _45
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, 12	# tmp196,
	shl.w	r0, r1	# _47, tmp196
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, r0	# _48, _47
# spaceinvaders.c:797: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r0, r2	# tmp197,
	or.w	r0, r1	# tmp197, _48
	st.s	[r13 + (-28)], r0	# second, tmp198
# spaceinvaders.c:798: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp199, p2
	ld.s	r1, [r13 + (-26)]	# tmp200, first
	st.s	[r0], r1	# *p2_92, tmp200
# spaceinvaders.c:799: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp201, p2
	add.w	r0, 2 #111	# _49,
# spaceinvaders.c:799: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp202, second
	st.s	[r0], r1	# *_49, tmp202
# spaceinvaders.c:800: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp204, p2
	add.w	r0, 2 #111	# tmp203,
	st.w	[r13 + (-12)], r0	# p2, tmp203
# spaceinvaders.c:801: 					break;
	j	.L46		#
.L47:
# spaceinvaders.c:803: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-12)]	# tmp205, p2
	ld.s	r2, [r0]	# _50, *p2_92
# spaceinvaders.c:803: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-8)]	# tmp206, i
	ld.w	r1, [r13 + (-24)]	# tmp207, shorts_per_row
	mul.w	r0, r1	# _51, tmp207
# spaceinvaders.c:803: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r1, [r13 + (-16)]	# tmp208, j
	add.w	r0, r1 #222	# _52, tmp208
# spaceinvaders.c:803: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	add.w	r0, r0 #222	# tmp209, _53
	mov.w	r1, r0	# _54, tmp209
	ld.w	r0, [r13 + (24)]	# tmp210, bitmap
	add.w	r0, r1 #222	# _55, _54
	ld.s	r0, [r0]	# _56, *_55
# spaceinvaders.c:803: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	sex.s	r0, r0	# tmp211, _56
	mov.w	r1, 8	# tmp213,
	shr.w	r0, r1	# tmp212, tmp213
	mov.w	r1, r0	# _57, tmp212
	mov.w	r0, r2	# tmp214,
	or.w	r0, r1	# tmp214, _57
	st.s	[r13 + (-26)], r0	# first, tmp215
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-12)]	# tmp216, p2
	add.w	r0, 2 #111	# _58,
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.s	r2, [r0]	# _59, *_58
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-8)]	# tmp217, i
	ld.w	r1, [r13 + (-24)]	# tmp218, shorts_per_row
	mul.w	r0, r1	# _60, tmp218
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r1, [r13 + (-16)]	# tmp219, j
	add.w	r0, r1 #222	# _61, tmp219
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	add.w	r0, r0 #222	# tmp220, _62
	mov.w	r1, r0	# _63, tmp220
	ld.w	r0, [r13 + (24)]	# tmp221, bitmap
	add.w	r0, r1 #222	# _64, _63
	ld.s	r0, [r0]	# _65, *_64
	sex.s	r0, r0	# _66, _65
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, 8	# tmp222,
	shl.w	r0, r1	# _67, tmp222
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, r0	# _68, _67
# spaceinvaders.c:804: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r0, r2	# tmp223,
	or.w	r0, r1	# tmp223, _68
	st.s	[r13 + (-28)], r0	# second, tmp224
# spaceinvaders.c:805: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp225, p2
	ld.s	r1, [r13 + (-26)]	# tmp226, first
	st.s	[r0], r1	# *p2_92, tmp226
# spaceinvaders.c:806: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp227, p2
	add.w	r0, 2 #111	# _69,
# spaceinvaders.c:806: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp228, second
	st.s	[r0], r1	# *_69, tmp228
# spaceinvaders.c:807: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp230, p2
	add.w	r0, 2 #111	# tmp229,
	st.w	[r13 + (-12)], r0	# p2, tmp229
# spaceinvaders.c:808: 					break;
	j	.L46		#
.L45:
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-12)]	# tmp231, p2
	ld.s	r2, [r0]	# _70, *p2_92
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-8)]	# tmp232, i
	ld.w	r1, [r13 + (-24)]	# tmp233, shorts_per_row
	mul.w	r0, r1	# _71, tmp233
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r1, [r13 + (-16)]	# tmp234, j
	add.w	r0, r1 #222	# _72, tmp234
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	add.w	r0, r0 #222	# tmp235, _73
	mov.w	r1, r0	# _74, tmp235
	ld.w	r0, [r13 + (24)]	# tmp236, bitmap
	add.w	r0, r1 #222	# _75, _74
	ld.s	r0, [r0]	# _76, *_75
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	sex.s	r0, r0	# tmp237, _76
	mov.w	r1, 12	# tmp239,
	shr.w	r0, r1	# tmp238, tmp239
	mov.w	r1, r0	# _77, tmp238
	mov.w	r0, r2	# tmp240,
	or.w	r0, r1	# tmp240, _77
	st.s	[r13 + (-26)], r0	# first, tmp241
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-12)]	# tmp242, p2
	add.w	r0, 2 #111	# _78,
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.s	r2, [r0]	# _79, *_78
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-8)]	# tmp243, i
	ld.w	r1, [r13 + (-24)]	# tmp244, shorts_per_row
	mul.w	r0, r1	# _80, tmp244
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r1, [r13 + (-16)]	# tmp245, j
	add.w	r0, r1 #222	# _81, tmp245
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	add.w	r0, r0 #222	# tmp246, _82
	mov.w	r1, r0	# _83, tmp246
	ld.w	r0, [r13 + (24)]	# tmp247, bitmap
	add.w	r0, r1 #222	# _84, _83
	ld.s	r0, [r0]	# _85, *_84
	sex.s	r0, r0	# _86, _85
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, 4	# tmp248,
	shl.w	r0, r1	# _87, tmp248
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, r0	# _88, _87
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r0, r2	# tmp249,
	or.w	r0, r1	# tmp249, _88
	st.s	[r13 + (-28)], r0	# second, tmp250
# spaceinvaders.c:812: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp251, p2
	ld.s	r1, [r13 + (-26)]	# tmp252, first
	st.s	[r0], r1	# *p2_92, tmp252
# spaceinvaders.c:813: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp253, p2
	add.w	r0, 2 #111	# _89,
# spaceinvaders.c:813: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp254, second
	st.s	[r0], r1	# *_89, tmp254
# spaceinvaders.c:814: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp256, p2
	add.w	r0, 2 #111	# tmp255,
	st.w	[r13 + (-12)], r0	# p2, tmp255
# spaceinvaders.c:815: 					break;
	nop	
.L46:
# spaceinvaders.c:760: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-16)]	# tmp258, j
	add.w	r0, 1 #111	# tmp257,
	st.w	[r13 + (-16)], r0	# j, tmp257
.L43:
# spaceinvaders.c:760: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-16)]	# tmp259, j
	ld.w	r0, [r13 + (-24)]	# tmp260, shorts_per_row
	cmp.w	r1, r0	# tmp259, tmp260
	jss	.L50		#
# spaceinvaders.c:736: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-8)]	# tmp262, i
	add.w	r0, 1 #111	# tmp261,
	st.w	[r13 + (-8)], r0	# i, tmp261
.L41:
# spaceinvaders.c:736: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-8)]	# tmp263, i
	ld.w	r0, [r13 + (20)]	# tmp264, height
	cmp.w	r1, r0	# tmp263, tmp264
	jss	.L51		#
# spaceinvaders.c:819: 	return *p1;
	ld.w	r0, [r13 + (-20)]	# tmp265, p1
	ld.s	r0, [r0]	# _103, *p1_99
# spaceinvaders.c:820: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_bitmap_with_clear_background, .-draw_bitmap_with_clear_background
	.p2align	1
	.global	move_bitmap_test
	.type	move_bitmap_test, @function
move_bitmap_test:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 80 #111	#,
# spaceinvaders.c:829: 	int shorts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp130, width
	xor.w	r1, r1	# tmp132
	cmp.w	r0, r1	# tmp131, tmp132
	jges	.L54		#
	add.w	r0, 3 #111	# tmp131,
.L54:
	mov.w	r1, 2	# tmp134,
	shr.w	r0, r1	# tmp133, tmp134
	st.w	[r13 + (-48)], r0	# shorts_per_row, tmp133
# spaceinvaders.c:830: 	switch (direction)
	ld.w	r1, [r13 + (28)]	# tmp135, direction
	mov.w	r0, 3	# tmp136,
	cmp.w	r1, r0	# tmp135, tmp136
	jz	.L55		#
	ld.w	r1, [r13 + (28)]	# tmp137, direction
	mov.w	r0, 9	# tmp138,
	cmp.w	r1, r0	# tmp137, tmp138
	jz	.L56		#
	j	.L86		#
.L55:
# spaceinvaders.c:833: 			x2 = x-distance;
	ld.w	r0, [r13 + (8)]	# tmp140, x
	ld.w	r1, [r13 + (32)]	# tmp141, distance
	sub.w	r0, r1 #222	# tmp139, tmp141
	st.w	[r13 + (-8)], r0	# x2, tmp139
# spaceinvaders.c:834: 			y2 = y;
	ld.w	r0, [r13 + (12)]	# tmp142, y
	st.w	[r13 + (-12)], r0	# y2, tmp142
# spaceinvaders.c:835: 			break;
	j	.L58		#
.L56:
# spaceinvaders.c:837: 			x2 = x+distance;
	ld.w	r0, [r13 + (8)]	# tmp144, x
	ld.w	r1, [r13 + (32)]	# tmp145, distance
	add.w	r0, r1 #222	# tmp143, tmp145
	st.w	[r13 + (-8)], r0	# x2, tmp143
# spaceinvaders.c:838: 			y2 = y;
	ld.w	r0, [r13 + (12)]	# tmp146, y
	st.w	[r13 + (-12)], r0	# y2, tmp146
# spaceinvaders.c:839: 			break;
	j	.L58		#
.L86:
# spaceinvaders.c:841: 			x2 = x;
	ld.w	r0, [r13 + (8)]	# tmp147, x
	st.w	[r13 + (-8)], r0	# x2, tmp147
# spaceinvaders.c:842: 			y2 = y-8;
	ld.w	r0, [r13 + (12)]	# tmp149, y
	add.w	r0, -8 #111	# tmp148,
	st.w	[r13 + (-12)], r0	# y2, tmp148
# spaceinvaders.c:843: 			break;
	nop	
.L58:
# spaceinvaders.c:845: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp150, y
	mov.w	r0, r1	# tmp151, tmp150
	mov.w	r2, 2	# tmp153,
	shl.w	r0, r2	# tmp152, tmp153
	add.w	r0, r1 #222	# tmp151, tmp150
	mov.w	r1, 5	# tmp155,
	shl.w	r0, r1	# tmp154, tmp155
	mov.w	r1, r0	# _1, tmp151
# spaceinvaders.c:845: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp156,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp156
# spaceinvaders.c:845: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp157, x
	mov.w	r3, 31	# tmp159,
	mov.w	r1, r0	# tmp158, tmp157
	shr.w	r1, r3	# tmp158, tmp159
	mov.w	r3, r1	# tmp160, tmp158
	add.w	r3, r0 #222	# tmp160, tmp157
	mov.w	r1, 1	# tmp162,
	mov.w	r0, r3	# tmp161, tmp160
	shr.w	r0, r1	# tmp161, tmp162
	mov.w	r1, r0	# _3, tmp161
# spaceinvaders.c:845: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:845: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-52)], r0	# p1, _4
# spaceinvaders.c:846: 	short *p1_previous = (short *)(1024 + y2 * 160 + x2/2);
	ld.w	r1, [r13 + (-12)]	# tmp163, y2
	mov.w	r0, r1	# tmp164, tmp163
	mov.w	r2, 2	# tmp166,
	shl.w	r0, r2	# tmp165, tmp166
	add.w	r0, r1 #222	# tmp164, tmp163
	mov.w	r1, 5	# tmp168,
	shl.w	r0, r1	# tmp167, tmp168
	mov.w	r1, r0	# _5, tmp164
# spaceinvaders.c:846: 	short *p1_previous = (short *)(1024 + y2 * 160 + x2/2);
	mov.w	r0, 1024	# tmp169,
	mov.w	r2, r1	# _6, _5
	add.w	r2, r0 #222	# _6, tmp169
# spaceinvaders.c:846: 	short *p1_previous = (short *)(1024 + y2 * 160 + x2/2);
	ld.w	r0, [r13 + (-8)]	# tmp170, x2
	mov.w	r3, 31	# tmp172,
	mov.w	r1, r0	# tmp171, tmp170
	shr.w	r1, r3	# tmp171, tmp172
	mov.w	r3, r1	# tmp173, tmp171
	add.w	r3, r0 #222	# tmp173, tmp170
	mov.w	r1, 1	# tmp175,
	mov.w	r0, r3	# tmp174, tmp173
	shr.w	r0, r1	# tmp174, tmp175
	mov.w	r1, r0	# _7, tmp174
# spaceinvaders.c:846: 	short *p1_previous = (short *)(1024 + y2 * 160 + x2/2);
	mov.w	r0, r2	# _8, _6
	add.w	r0, r1 #222	# _8, _7
# spaceinvaders.c:846: 	short *p1_previous = (short *)(1024 + y2 * 160 + x2/2);
	st.w	[r13 + (-56)], r0	# p1_previous, _8
# spaceinvaders.c:849: 	if(direction == 6 || direction == 18)
	ld.w	r1, [r13 + (28)]	# tmp176, direction
	mov.w	r0, 6	# tmp177,
	cmp.w	r1, r0	# tmp176, tmp177
	jz	.L59		#
# spaceinvaders.c:849: 	if(direction == 6 || direction == 18)
	ld.w	r1, [r13 + (28)]	# tmp178, direction
	mov.w	r0, 18	# tmp179,
	cmp.w	r1, r0	# tmp178, tmp179
	jnz	.L60		#
.L59:
# spaceinvaders.c:851: 		for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp180
	st.w	[r13 + (-16)], r0	# i, tmp180
# spaceinvaders.c:851: 		for (int i = 0; i < height; i++)
	j	.L61		#
.L67:
# spaceinvaders.c:853: 			short *p2_previous = p1_previous + (i * 80);
	ld.w	r1, [r13 + (-16)]	# i.9_9, i
	mov.w	r0, r1	# tmp181, i.9_9
	mov.w	r2, 2	# tmp183,
	shl.w	r0, r2	# tmp182, tmp183
	add.w	r0, r1 #222	# tmp181, i.9_9
	mov.w	r1, 5	# tmp185,
	shl.w	r0, r1	# tmp184, tmp185
	mov.w	r1, r0	# _10, tmp181
# spaceinvaders.c:853: 			short *p2_previous = p1_previous + (i * 80);
	ld.w	r0, [r13 + (-56)]	# tmp187, p1_previous
	add.w	r0, r1 #222	# tmp186, _10
	st.w	[r13 + (-20)], r0	# p2_previous, tmp186
# spaceinvaders.c:854: 			for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp188
	st.w	[r13 + (-24)], r0	# j, tmp188
# spaceinvaders.c:854: 			for (int j = 0; j < shorts_per_row; j++) 
	j	.L62		#
.L66:
# spaceinvaders.c:856: 				switch (x2 % 4)
	ld.w	r0, [r13 + (-8)]	# tmp189, x2
	mov.w	r1, -2147483645	# tmp191,
	and.w	r0, r1	# tmp190, tmp191
	xor.w	r1, r1	# tmp192
	cmp.w	r0, r1	# tmp190, tmp192
	jges	.L63		#
	add.w	r0, -1 #111	# tmp190,
	mov.w	r1, -4	# tmp193,
	or.w	r0, r1	# tmp190, tmp193
	add.w	r0, 1 #111	# tmp190,
.L63:
	mov.w	r1, r0	# _11, tmp190
# spaceinvaders.c:856: 				switch (x2 % 4)
	xor.w	r0, r0	# tmp194
	cmp.w	r1, r0	# _11, tmp194
	jnz	.L64		#
# spaceinvaders.c:859: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-20)]	# tmp195, p2_previous
	xor.w	r1, r1	# tmp196
	st.s	[r0], r1	# *p2_previous_106, tmp196
# spaceinvaders.c:860: 						p2_previous++;
	ld.w	r0, [r13 + (-20)]	# tmp198, p2_previous
	add.w	r0, 2 #111	# tmp197,
	st.w	[r13 + (-20)], r0	# p2_previous, tmp197
# spaceinvaders.c:861: 						break;
	j	.L65		#
.L64:
# spaceinvaders.c:863: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-20)]	# tmp199, p2_previous
	xor.w	r1, r1	# tmp200
	st.s	[r0], r1	# *p2_previous_106, tmp200
# spaceinvaders.c:864: 						*(p2_previous+1) = 0;
	ld.w	r0, [r13 + (-20)]	# tmp201, p2_previous
	add.w	r0, 2 #111	# _12,
# spaceinvaders.c:864: 						*(p2_previous+1) = 0;
	xor.w	r1, r1	# tmp202
	st.s	[r0], r1	# *_12, tmp202
# spaceinvaders.c:865: 						p2_previous++;
	ld.w	r0, [r13 + (-20)]	# tmp204, p2_previous
	add.w	r0, 2 #111	# tmp203,
	st.w	[r13 + (-20)], r0	# p2_previous, tmp203
# spaceinvaders.c:866: 						break;
	nop	
.L65:
# spaceinvaders.c:854: 			for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-24)]	# tmp206, j
	add.w	r0, 1 #111	# tmp205,
	st.w	[r13 + (-24)], r0	# j, tmp205
.L62:
# spaceinvaders.c:854: 			for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-24)]	# tmp207, j
	ld.w	r0, [r13 + (-48)]	# tmp208, shorts_per_row
	cmp.w	r1, r0	# tmp207, tmp208
	jss	.L66		#
# spaceinvaders.c:851: 		for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-16)]	# tmp210, i
	add.w	r0, 1 #111	# tmp209,
	st.w	[r13 + (-16)], r0	# i, tmp209
.L61:
# spaceinvaders.c:851: 		for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-16)]	# tmp211, i
	ld.w	r0, [r13 + (20)]	# tmp212, height
	cmp.w	r1, r0	# tmp211, tmp212
	jss	.L67		#
.L60:
# spaceinvaders.c:872: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp213
	st.w	[r13 + (-28)], r0	# i, tmp213
# spaceinvaders.c:872: 	for (int i = 0; i < height; i++)
	j	.L68		#
.L84:
# spaceinvaders.c:875: 		short *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-28)]	# i.10_13, i
	mov.w	r0, r1	# tmp214, i.10_13
	mov.w	r2, 2	# tmp216,
	shl.w	r0, r2	# tmp215, tmp216
	add.w	r0, r1 #222	# tmp214, i.10_13
	mov.w	r1, 5	# tmp218,
	shl.w	r0, r1	# tmp217, tmp218
	mov.w	r1, r0	# _14, tmp214
# spaceinvaders.c:875: 		short *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-52)]	# tmp220, p1
	add.w	r0, r1 #222	# tmp219, _14
	st.w	[r13 + (-32)], r0	# p2, tmp219
# spaceinvaders.c:883: 		if(direction == 3 || direction == 9)
	ld.w	r1, [r13 + (28)]	# tmp221, direction
	mov.w	r0, 3	# tmp222,
	cmp.w	r1, r0	# tmp221, tmp222
	jz	.L69		#
# spaceinvaders.c:883: 		if(direction == 3 || direction == 9)
	ld.w	r1, [r13 + (28)]	# tmp223, direction
	mov.w	r0, 9	# tmp224,
	cmp.w	r1, r0	# tmp223, tmp224
	jnz	.L70		#
.L69:
# spaceinvaders.c:885: 			short *p2_previous = p1_previous + (i * 80);
	ld.w	r1, [r13 + (-28)]	# i.11_15, i
	mov.w	r0, r1	# tmp225, i.11_15
	mov.w	r2, 2	# tmp227,
	shl.w	r0, r2	# tmp226, tmp227
	add.w	r0, r1 #222	# tmp225, i.11_15
	mov.w	r1, 5	# tmp229,
	shl.w	r0, r1	# tmp228, tmp229
	mov.w	r1, r0	# _16, tmp225
# spaceinvaders.c:885: 			short *p2_previous = p1_previous + (i * 80);
	ld.w	r0, [r13 + (-56)]	# tmp231, p1_previous
	add.w	r0, r1 #222	# tmp230, _16
	st.w	[r13 + (-36)], r0	# p2_previous, tmp230
# spaceinvaders.c:886: 			for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp232
	st.w	[r13 + (-40)], r0	# j, tmp232
# spaceinvaders.c:886: 			for (int j = 0; j < shorts_per_row; j++) 
	j	.L71		#
.L75:
# spaceinvaders.c:888: 				switch (x2 % 4)
	ld.w	r0, [r13 + (-8)]	# tmp233, x2
	mov.w	r1, -2147483645	# tmp235,
	and.w	r0, r1	# tmp234, tmp235
	xor.w	r1, r1	# tmp236
	cmp.w	r0, r1	# tmp234, tmp236
	jges	.L72		#
	add.w	r0, -1 #111	# tmp234,
	mov.w	r1, -4	# tmp237,
	or.w	r0, r1	# tmp234, tmp237
	add.w	r0, 1 #111	# tmp234,
.L72:
	mov.w	r1, r0	# _17, tmp234
# spaceinvaders.c:888: 				switch (x2 % 4)
	xor.w	r0, r0	# tmp238
	cmp.w	r1, r0	# _17, tmp238
	jnz	.L73		#
# spaceinvaders.c:891: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-36)]	# tmp239, p2_previous
	xor.w	r1, r1	# tmp240
	st.s	[r0], r1	# *p2_previous_112, tmp240
# spaceinvaders.c:892: 						p2_previous++;
	ld.w	r0, [r13 + (-36)]	# tmp242, p2_previous
	add.w	r0, 2 #111	# tmp241,
	st.w	[r13 + (-36)], r0	# p2_previous, tmp241
# spaceinvaders.c:893: 						break;
	j	.L74		#
.L73:
# spaceinvaders.c:895: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-36)]	# tmp243, p2_previous
	xor.w	r1, r1	# tmp244
	st.s	[r0], r1	# *p2_previous_112, tmp244
# spaceinvaders.c:896: 						*(p2_previous+1) = 0;
	ld.w	r0, [r13 + (-36)]	# tmp245, p2_previous
	add.w	r0, 2 #111	# _18,
# spaceinvaders.c:896: 						*(p2_previous+1) = 0;
	xor.w	r1, r1	# tmp246
	st.s	[r0], r1	# *_18, tmp246
# spaceinvaders.c:897: 						p2_previous++;
	ld.w	r0, [r13 + (-36)]	# tmp248, p2_previous
	add.w	r0, 2 #111	# tmp247,
	st.w	[r13 + (-36)], r0	# p2_previous, tmp247
# spaceinvaders.c:898: 						break;
	nop	
.L74:
# spaceinvaders.c:886: 			for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-40)]	# tmp250, j
	add.w	r0, 1 #111	# tmp249,
	st.w	[r13 + (-40)], r0	# j, tmp249
.L71:
# spaceinvaders.c:886: 			for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-40)]	# tmp251, j
	ld.w	r0, [r13 + (-48)]	# tmp252, shorts_per_row
	cmp.w	r1, r0	# tmp251, tmp252
	jss	.L75		#
.L70:
# spaceinvaders.c:903: 		for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp253
	st.w	[r13 + (-44)], r0	# j, tmp253
# spaceinvaders.c:903: 		for (int j = 0; j < shorts_per_row; j++) 
	j	.L76		#
.L83:
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r0, [r13 + (-28)]	# tmp254, i
	ld.w	r1, [r13 + (-48)]	# tmp255, shorts_per_row
	mul.w	r0, r1	# _19, tmp255
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r1, [r13 + (-44)]	# tmp256, j
	add.w	r0, r1 #222	# _20, tmp256
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp257, _21
	mov.w	r1, r0	# _22, tmp257
	ld.w	r0, [r13 + (24)]	# tmp258, bitmap
	add.w	r0, r1 #222	# _23, _22
	ld.s	r0, [r0]	# _24, *_23
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	sex.s	r1, r0	# _25, _24
	ld.w	r2, [r13 + (12)]	# tmp259, y
	ld.w	r0, [r13 + (-28)]	# tmp260, i
	add.w	r2, r0 #222	# _26, tmp260
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r0, [r13 + (-28)]	# tmp261, i
	ld.w	r3, [r13 + (-48)]	# tmp262, shorts_per_row
	mul.w	r0, r3	# _27, tmp262
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r3, [r13 + (-44)]	# tmp263, j
	add.w	r0, r3 #222	# _28, tmp263
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp264, _29
	ld.w	r3, [r13 + (24)]	# tmp265, bitmap
	mov.w	r6, r3	# _31, tmp265
	add.w	r6, r0 #222	# _31, _30
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	mov.w	r0, sp	# tmp266,
	st.w	[r0 + (4)], r2	#, _26
	st.w	[r0], r1	#, _25
	call	change_short_color_depending_on_threshold		#
# spaceinvaders.c:905: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	st.s	[r6], r0	# *_31, _32
# spaceinvaders.c:906: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp267, x
	mov.w	r1, -2147483645	# tmp269,
	and.w	r0, r1	# tmp268, tmp269
	xor.w	r1, r1	# tmp270
	cmp.w	r0, r1	# tmp268, tmp270
	jges	.L77		#
	add.w	r0, -1 #111	# tmp268,
	mov.w	r1, -4	# tmp271,
	or.w	r0, r1	# tmp268, tmp271
	add.w	r0, 1 #111	# tmp268,
.L77:
# spaceinvaders.c:906: 			switch (x % 4)
	mov.w	r1, 3	# tmp272,
	cmp.w	r0, r1	# _33, tmp272
	jz	.L78		#
	mov.w	r1, 3	# tmp273,
	cmp.w	r0, r1	# _33, tmp273
	jgs	.L79		#
	mov.w	r1, 2	# tmp274,
	cmp.w	r0, r1	# _33, tmp274
	jz	.L80		#
	mov.w	r1, 2	# tmp275,
	cmp.w	r0, r1	# _33, tmp275
	jgs	.L79		#
	xor.w	r1, r1	# tmp276
	cmp.w	r0, r1	# _33, tmp276
	jz	.L81		#
	mov.w	r1, 1	# tmp277,
	cmp.w	r0, r1	# _33, tmp277
	jz	.L82		#
	j	.L79		#
.L81:
# spaceinvaders.c:909: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-32)]	# tmp278, p2
	ld.s	r2, [r0]	# _34, *p2_110
# spaceinvaders.c:909: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	ld.w	r0, [r13 + (-28)]	# tmp279, i
	ld.w	r1, [r13 + (-48)]	# tmp280, shorts_per_row
	mul.w	r0, r1	# _35, tmp280
# spaceinvaders.c:909: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	ld.w	r1, [r13 + (-44)]	# tmp281, j
	add.w	r0, r1 #222	# _36, tmp281
# spaceinvaders.c:909: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	add.w	r0, r0 #222	# tmp282, _37
	mov.w	r1, r0	# _38, tmp282
	ld.w	r0, [r13 + (24)]	# tmp283, bitmap
	add.w	r0, r1 #222	# _39, _38
	ld.s	r1, [r0]	# _40, *_39
# spaceinvaders.c:909: 					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
	mov.w	r0, r2	# tmp284,
	or.w	r0, r1	# tmp284, _40
	mov.w	r1, r0	# _41, tmp284
	ld.w	r0, [r13 + (-32)]	# tmp285, p2
	st.s	[r0], r1	# *p2_110, _41
# spaceinvaders.c:910: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp287, p2
	add.w	r0, 2 #111	# tmp286,
	st.w	[r13 + (-32)], r0	# p2, tmp286
# spaceinvaders.c:911: 					break;
	j	.L79		#
.L82:
# spaceinvaders.c:913: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-32)]	# tmp288, p2
	ld.s	r2, [r0]	# _42, *p2_110
# spaceinvaders.c:913: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-28)]	# tmp289, i
	ld.w	r1, [r13 + (-48)]	# tmp290, shorts_per_row
	mul.w	r0, r1	# _43, tmp290
# spaceinvaders.c:913: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	ld.w	r1, [r13 + (-44)]	# tmp291, j
	add.w	r0, r1 #222	# _44, tmp291
# spaceinvaders.c:913: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	add.w	r0, r0 #222	# tmp292, _45
	mov.w	r1, r0	# _46, tmp292
	ld.w	r0, [r13 + (24)]	# tmp293, bitmap
	add.w	r0, r1 #222	# _47, _46
	ld.s	r0, [r0]	# _48, *_47
# spaceinvaders.c:913: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
	sex.s	r0, r0	# tmp294, _48
	mov.w	r1, 4	# tmp296,
	shr.w	r0, r1	# tmp295, tmp296
	mov.w	r1, r0	# _49, tmp295
	mov.w	r0, r2	# tmp297,
	or.w	r0, r1	# tmp297, _49
	st.s	[r13 + (-58)], r0	# first, tmp298
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-32)]	# tmp299, p2
	add.w	r0, 2 #111	# _50,
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.s	r2, [r0]	# _51, *_50
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r0, [r13 + (-28)]	# tmp300, i
	ld.w	r1, [r13 + (-48)]	# tmp301, shorts_per_row
	mul.w	r0, r1	# _52, tmp301
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	ld.w	r1, [r13 + (-44)]	# tmp302, j
	add.w	r0, r1 #222	# _53, tmp302
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	add.w	r0, r0 #222	# tmp303, _54
	mov.w	r1, r0	# _55, tmp303
	ld.w	r0, [r13 + (24)]	# tmp304, bitmap
	add.w	r0, r1 #222	# _56, _55
	ld.s	r0, [r0]	# _57, *_56
	sex.s	r0, r0	# _58, _57
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, 12	# tmp305,
	shl.w	r0, r1	# _59, tmp305
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r1, r0	# _60, _59
# spaceinvaders.c:914: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
	mov.w	r0, r2	# tmp306,
	or.w	r0, r1	# tmp306, _60
	st.s	[r13 + (-60)], r0	# second, tmp307
# spaceinvaders.c:915: 					*p2 = first;
	ld.w	r0, [r13 + (-32)]	# tmp308, p2
	ld.s	r1, [r13 + (-58)]	# tmp309, first
	st.s	[r0], r1	# *p2_110, tmp309
# spaceinvaders.c:916: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-32)]	# tmp310, p2
	add.w	r0, 2 #111	# _61,
# spaceinvaders.c:916: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-60)]	# tmp311, second
	st.s	[r0], r1	# *_61, tmp311
# spaceinvaders.c:917: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp313, p2
	add.w	r0, 2 #111	# tmp312,
	st.w	[r13 + (-32)], r0	# p2, tmp312
# spaceinvaders.c:918: 					break;
	j	.L79		#
.L80:
# spaceinvaders.c:920: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-32)]	# tmp314, p2
	ld.s	r2, [r0]	# _62, *p2_110
# spaceinvaders.c:920: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-28)]	# tmp315, i
	ld.w	r1, [r13 + (-48)]	# tmp316, shorts_per_row
	mul.w	r0, r1	# _63, tmp316
# spaceinvaders.c:920: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	ld.w	r1, [r13 + (-44)]	# tmp317, j
	add.w	r0, r1 #222	# _64, tmp317
# spaceinvaders.c:920: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	add.w	r0, r0 #222	# tmp318, _65
	mov.w	r1, r0	# _66, tmp318
	ld.w	r0, [r13 + (24)]	# tmp319, bitmap
	add.w	r0, r1 #222	# _67, _66
	ld.s	r0, [r0]	# _68, *_67
# spaceinvaders.c:920: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
	sex.s	r0, r0	# tmp320, _68
	mov.w	r1, 8	# tmp322,
	shr.w	r0, r1	# tmp321, tmp322
	mov.w	r1, r0	# _69, tmp321
	mov.w	r0, r2	# tmp323,
	or.w	r0, r1	# tmp323, _69
	st.s	[r13 + (-58)], r0	# first, tmp324
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-32)]	# tmp325, p2
	add.w	r0, 2 #111	# _70,
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.s	r2, [r0]	# _71, *_70
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r0, [r13 + (-28)]	# tmp326, i
	ld.w	r1, [r13 + (-48)]	# tmp327, shorts_per_row
	mul.w	r0, r1	# _72, tmp327
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	ld.w	r1, [r13 + (-44)]	# tmp328, j
	add.w	r0, r1 #222	# _73, tmp328
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	add.w	r0, r0 #222	# tmp329, _74
	mov.w	r1, r0	# _75, tmp329
	ld.w	r0, [r13 + (24)]	# tmp330, bitmap
	add.w	r0, r1 #222	# _76, _75
	ld.s	r0, [r0]	# _77, *_76
	sex.s	r0, r0	# _78, _77
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, 8	# tmp331,
	shl.w	r0, r1	# _79, tmp331
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r1, r0	# _80, _79
# spaceinvaders.c:921: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
	mov.w	r0, r2	# tmp332,
	or.w	r0, r1	# tmp332, _80
	st.s	[r13 + (-60)], r0	# second, tmp333
# spaceinvaders.c:922: 					*p2 = first;
	ld.w	r0, [r13 + (-32)]	# tmp334, p2
	ld.s	r1, [r13 + (-58)]	# tmp335, first
	st.s	[r0], r1	# *p2_110, tmp335
# spaceinvaders.c:923: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-32)]	# tmp336, p2
	add.w	r0, 2 #111	# _81,
# spaceinvaders.c:923: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-60)]	# tmp337, second
	st.s	[r0], r1	# *_81, tmp337
# spaceinvaders.c:924: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp339, p2
	add.w	r0, 2 #111	# tmp338,
	st.w	[r13 + (-32)], r0	# p2, tmp338
# spaceinvaders.c:925: 					break;
	j	.L79		#
.L78:
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-32)]	# tmp340, p2
	ld.s	r2, [r0]	# _82, *p2_110
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-28)]	# tmp341, i
	ld.w	r1, [r13 + (-48)]	# tmp342, shorts_per_row
	mul.w	r0, r1	# _83, tmp342
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	ld.w	r1, [r13 + (-44)]	# tmp343, j
	add.w	r0, r1 #222	# _84, tmp343
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	add.w	r0, r0 #222	# tmp344, _85
	mov.w	r1, r0	# _86, tmp344
	ld.w	r0, [r13 + (24)]	# tmp345, bitmap
	add.w	r0, r1 #222	# _87, _86
	ld.s	r0, [r0]	# _88, *_87
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
	sex.s	r0, r0	# tmp346, _88
	mov.w	r1, 12	# tmp348,
	shr.w	r0, r1	# tmp347, tmp348
	mov.w	r1, r0	# _89, tmp347
	mov.w	r0, r2	# tmp349,
	or.w	r0, r1	# tmp349, _89
	st.s	[r13 + (-58)], r0	# first, tmp350
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-32)]	# tmp351, p2
	add.w	r0, 2 #111	# _90,
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.s	r2, [r0]	# _91, *_90
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r0, [r13 + (-28)]	# tmp352, i
	ld.w	r1, [r13 + (-48)]	# tmp353, shorts_per_row
	mul.w	r0, r1	# _92, tmp353
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	ld.w	r1, [r13 + (-44)]	# tmp354, j
	add.w	r0, r1 #222	# _93, tmp354
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	add.w	r0, r0 #222	# tmp355, _94
	mov.w	r1, r0	# _95, tmp355
	ld.w	r0, [r13 + (24)]	# tmp356, bitmap
	add.w	r0, r1 #222	# _96, _95
	ld.s	r0, [r0]	# _97, *_96
	sex.s	r0, r0	# _98, _97
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, 4	# tmp357,
	shl.w	r0, r1	# _99, tmp357
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r1, r0	# _100, _99
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
	mov.w	r0, r2	# tmp358,
	or.w	r0, r1	# tmp358, _100
	st.s	[r13 + (-60)], r0	# second, tmp359
# spaceinvaders.c:929: 					*p2 = first;
	ld.w	r0, [r13 + (-32)]	# tmp360, p2
	ld.s	r1, [r13 + (-58)]	# tmp361, first
	st.s	[r0], r1	# *p2_110, tmp361
# spaceinvaders.c:930: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-32)]	# tmp362, p2
	add.w	r0, 2 #111	# _101,
# spaceinvaders.c:930: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-60)]	# tmp363, second
	st.s	[r0], r1	# *_101, tmp363
# spaceinvaders.c:931: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp365, p2
	add.w	r0, 2 #111	# tmp364,
	st.w	[r13 + (-32)], r0	# p2, tmp364
# spaceinvaders.c:932: 					break;
	nop	
.L79:
# spaceinvaders.c:903: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-44)]	# tmp367, j
	add.w	r0, 1 #111	# tmp366,
	st.w	[r13 + (-44)], r0	# j, tmp366
.L76:
# spaceinvaders.c:903: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-44)]	# tmp368, j
	ld.w	r0, [r13 + (-48)]	# tmp369, shorts_per_row
	cmp.w	r1, r0	# tmp368, tmp369
	jss	.L83		#
# spaceinvaders.c:872: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-28)]	# tmp371, i
	add.w	r0, 1 #111	# tmp370,
	st.w	[r13 + (-28)], r0	# i, tmp370
.L68:
# spaceinvaders.c:872: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-28)]	# tmp372, i
	ld.w	r0, [r13 + (20)]	# tmp373, height
	cmp.w	r1, r0	# tmp372, tmp373
	jss	.L84		#
# spaceinvaders.c:936: 	return *p1;
	ld.w	r0, [r13 + (-52)]	# tmp374, p1
	ld.s	r0, [r0]	# _152, *p1_137
# spaceinvaders.c:937: }
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	move_bitmap_test, .-move_bitmap_test
	.p2align	1
	.global	clear_bitmap_test
	.type	clear_bitmap_test, @function
clear_bitmap_test:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 20 #111	#,
# spaceinvaders.c:942: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp36, y
	mov.w	r0, r1	# tmp37, tmp36
	mov.w	r2, 2	# tmp39,
	shl.w	r0, r2	# tmp38, tmp39
	add.w	r0, r1 #222	# tmp37, tmp36
	mov.w	r1, 5	# tmp41,
	shl.w	r0, r1	# tmp40, tmp41
	mov.w	r1, r0	# _1, tmp37
# spaceinvaders.c:942: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp42,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp42
# spaceinvaders.c:942: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp43, x
	mov.w	r3, 31	# tmp45,
	mov.w	r1, r0	# tmp44, tmp43
	shr.w	r1, r3	# tmp44, tmp45
	mov.w	r3, r1	# tmp46, tmp44
	add.w	r3, r0 #222	# tmp46, tmp43
	mov.w	r1, 1	# tmp48,
	mov.w	r0, r3	# tmp47, tmp46
	shr.w	r0, r1	# tmp47, tmp48
	mov.w	r1, r0	# _3, tmp47
# spaceinvaders.c:942: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:942: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-16)], r0	# p1, _4
# spaceinvaders.c:943: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp49
	st.w	[r13 + (-4)], r0	# i, tmp49
# spaceinvaders.c:943: 	for (int i = 0; i < height; i++)
	j	.L88		#
.L95:
# spaceinvaders.c:946: 		short *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-4)]	# i.12_5, i
	mov.w	r0, r1	# tmp50, i.12_5
	mov.w	r2, 2	# tmp52,
	shl.w	r0, r2	# tmp51, tmp52
	add.w	r0, r1 #222	# tmp50, i.12_5
	mov.w	r1, 5	# tmp54,
	shl.w	r0, r1	# tmp53, tmp54
	mov.w	r1, r0	# _6, tmp50
# spaceinvaders.c:946: 		short *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-16)]	# tmp56, p1
	add.w	r0, r1 #222	# tmp55, _6
	st.w	[r13 + (-8)], r0	# p2, tmp55
# spaceinvaders.c:947: 		int shorts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp58, width
	xor.w	r1, r1	# tmp60
	cmp.w	r0, r1	# tmp59, tmp60
	jges	.L89		#
	add.w	r0, 3 #111	# tmp59,
.L89:
	mov.w	r1, 2	# tmp62,
	shr.w	r0, r1	# tmp61, tmp62
	st.w	[r13 + (-20)], r0	# shorts_per_row, tmp61
# spaceinvaders.c:948: 		for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp63
	st.w	[r13 + (-12)], r0	# j, tmp63
# spaceinvaders.c:948: 		for (int j = 0; j < shorts_per_row; j++) 
	j	.L90		#
.L94:
# spaceinvaders.c:950: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp64, x
	mov.w	r1, -2147483645	# tmp66,
	and.w	r0, r1	# tmp65, tmp66
	xor.w	r1, r1	# tmp67
	cmp.w	r0, r1	# tmp65, tmp67
	jges	.L91		#
	add.w	r0, -1 #111	# tmp65,
	mov.w	r1, -4	# tmp68,
	or.w	r0, r1	# tmp65, tmp68
	add.w	r0, 1 #111	# tmp65,
.L91:
	mov.w	r1, r0	# _7, tmp65
# spaceinvaders.c:950: 			switch (x % 4)
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# _7, tmp69
	jnz	.L92		#
# spaceinvaders.c:953: 					*p2 = 0x0000;
	ld.w	r0, [r13 + (-8)]	# tmp70, p2
	xor.w	r1, r1	# tmp71
	st.s	[r0], r1	# *p2_11, tmp71
# spaceinvaders.c:954: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp73, p2
	add.w	r0, 2 #111	# tmp72,
	st.w	[r13 + (-8)], r0	# p2, tmp72
# spaceinvaders.c:955: 					break;
	j	.L93		#
.L92:
# spaceinvaders.c:957: 					*p2 = 0x0000;
	ld.w	r0, [r13 + (-8)]	# tmp74, p2
	xor.w	r1, r1	# tmp75
	st.s	[r0], r1	# *p2_11, tmp75
# spaceinvaders.c:958: 					*(p2+1) = 0x0000;
	ld.w	r0, [r13 + (-8)]	# tmp76, p2
	add.w	r0, 2 #111	# _8,
# spaceinvaders.c:958: 					*(p2+1) = 0x0000;
	xor.w	r1, r1	# tmp77
	st.s	[r0], r1	# *_8, tmp77
# spaceinvaders.c:959: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp79, p2
	add.w	r0, 2 #111	# tmp78,
	st.w	[r13 + (-8)], r0	# p2, tmp78
# spaceinvaders.c:960: 					break;
	nop	
.L93:
# spaceinvaders.c:948: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-12)]	# tmp81, j
	add.w	r0, 1 #111	# tmp80,
	st.w	[r13 + (-12)], r0	# j, tmp80
.L90:
# spaceinvaders.c:948: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-12)]	# tmp82, j
	ld.w	r0, [r13 + (-20)]	# tmp83, shorts_per_row
	cmp.w	r1, r0	# tmp82, tmp83
	jss	.L94		#
# spaceinvaders.c:943: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-4)]	# tmp85, i
	add.w	r0, 1 #111	# tmp84,
	st.w	[r13 + (-4)], r0	# i, tmp84
.L88:
# spaceinvaders.c:943: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-4)]	# tmp86, i
	ld.w	r0, [r13 + (20)]	# tmp87, height
	cmp.w	r1, r0	# tmp86, tmp87
	jss	.L95		#
# spaceinvaders.c:964: 	return *p1;
	ld.w	r0, [r13 + (-16)]	# tmp88, p1
	ld.s	r0, [r0]	# _22, *p1_18
# spaceinvaders.c:965: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clear_bitmap_test, .-clear_bitmap_test
	.p2align	1
	.global	leftmost_alien_X
	.type	leftmost_alien_X, @function
leftmost_alien_X:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# spaceinvaders.c:971: 	short leftmost = 300;
	mov.s	r0, 300	# tmp38,
	st.s	[r13 + (-6)], r0	# leftmost, tmp38
# spaceinvaders.c:972: 	for(int i = 0; i < 11; i++)
	xor.w	r0, r0	# tmp39
	st.w	[r13 + (-4)], r0	# i, tmp39
# spaceinvaders.c:972: 	for(int i = 0; i < 11; i++)
	j	.L98		#
.L105:
# spaceinvaders.c:974: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp40, i
	mov.w	r1, 3	# tmp42,
	shl.w	r0, r1	# tmp41, tmp42
	mov.w	r1, row_1_squid+6	# tmp44,
	add.w	r0, r1 #222	# tmp43, tmp44
	ld.s	r0, [r0]	# _1, row_1_squid[i_11].alive
# spaceinvaders.c:974: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	sex.s	r1, r0	# tmp45, _1
	mov.w	r0, 2	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L99		#
# spaceinvaders.c:974: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp47, i
	mov.w	r1, 3	# tmp49,
	shl.w	r0, r1	# tmp48, tmp49
	mov.w	r1, row_1_squid+2	# tmp51,
	add.w	r0, r1 #222	# tmp50, tmp51
	ld.s	r0, [r0]	# _2, row_1_squid[i_11].x
# spaceinvaders.c:974: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	ld.s	r2, [r13 + (-6)]	#, leftmost
	sex.s	r1, r2	# tmp52,
	sex.s	r0, r0	# tmp53, _2
	cmp.w	r1, r0	# tmp52, tmp53
	jses	.L99		#
# spaceinvaders.c:976: 			return row_1_squid[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp54, i
	mov.w	r1, 3	# tmp56,
	shl.w	r0, r1	# tmp55, tmp56
	mov.w	r1, row_1_squid+2	# tmp58,
	add.w	r0, r1 #222	# tmp57, tmp58
	ld.s	r0, [r0]	# _12, row_1_squid[i_11].x
	j	.L97		#
.L99:
# spaceinvaders.c:978: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp59, i
	mov.w	r1, 3	# tmp61,
	shl.w	r0, r1	# tmp60, tmp61
	mov.w	r1, row_2_crab+6	# tmp63,
	add.w	r0, r1 #222	# tmp62, tmp63
	ld.s	r0, [r0]	# _3, row_2_crab[i_11].alive
# spaceinvaders.c:978: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	sex.s	r1, r0	# tmp64, _3
	mov.w	r0, 2	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L101		#
# spaceinvaders.c:978: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp66, i
	mov.w	r1, 3	# tmp68,
	shl.w	r0, r1	# tmp67, tmp68
	mov.w	r1, row_2_crab+2	# tmp70,
	add.w	r0, r1 #222	# tmp69, tmp70
	ld.s	r0, [r0]	# _4, row_2_crab[i_11].x
# spaceinvaders.c:978: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	ld.s	r2, [r13 + (-6)]	#, leftmost
	sex.s	r1, r2	# tmp71,
	sex.s	r0, r0	# tmp72, _4
	cmp.w	r1, r0	# tmp71, tmp72
	jses	.L101		#
# spaceinvaders.c:980: 			return row_2_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp73, i
	mov.w	r1, 3	# tmp75,
	shl.w	r0, r1	# tmp74, tmp75
	mov.w	r1, row_2_crab+2	# tmp77,
	add.w	r0, r1 #222	# tmp76, tmp77
	ld.s	r0, [r0]	# _12, row_2_crab[i_11].x
	j	.L97		#
.L101:
# spaceinvaders.c:982: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp78, i
	mov.w	r1, 3	# tmp80,
	shl.w	r0, r1	# tmp79, tmp80
	mov.w	r1, row_3_crab+6	# tmp82,
	add.w	r0, r1 #222	# tmp81, tmp82
	ld.s	r0, [r0]	# _5, row_3_crab[i_11].alive
# spaceinvaders.c:982: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	sex.s	r1, r0	# tmp83, _5
	mov.w	r0, 2	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jnz	.L102		#
# spaceinvaders.c:982: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp85, i
	mov.w	r1, 3	# tmp87,
	shl.w	r0, r1	# tmp86, tmp87
	mov.w	r1, row_3_crab+2	# tmp89,
	add.w	r0, r1 #222	# tmp88, tmp89
	ld.s	r0, [r0]	# _6, row_3_crab[i_11].x
# spaceinvaders.c:982: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	ld.s	r2, [r13 + (-6)]	#, leftmost
	sex.s	r1, r2	# tmp90,
	sex.s	r0, r0	# tmp91, _6
	cmp.w	r1, r0	# tmp90, tmp91
	jses	.L102		#
# spaceinvaders.c:984: 			return row_3_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp92, i
	mov.w	r1, 3	# tmp94,
	shl.w	r0, r1	# tmp93, tmp94
	mov.w	r1, row_3_crab+2	# tmp96,
	add.w	r0, r1 #222	# tmp95, tmp96
	ld.s	r0, [r0]	# _12, row_3_crab[i_11].x
	j	.L97		#
.L102:
# spaceinvaders.c:986: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp97, i
	mov.w	r1, 3	# tmp99,
	shl.w	r0, r1	# tmp98, tmp99
	mov.w	r1, row_4_octopus+6	# tmp101,
	add.w	r0, r1 #222	# tmp100, tmp101
	ld.s	r0, [r0]	# _7, row_4_octopus[i_11].alive
# spaceinvaders.c:986: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	sex.s	r1, r0	# tmp102, _7
	mov.w	r0, 2	# tmp103,
	cmp.w	r1, r0	# tmp102, tmp103
	jnz	.L103		#
# spaceinvaders.c:986: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp104, i
	mov.w	r1, 3	# tmp106,
	shl.w	r0, r1	# tmp105, tmp106
	mov.w	r1, row_4_octopus+2	# tmp108,
	add.w	r0, r1 #222	# tmp107, tmp108
	ld.s	r0, [r0]	# _8, row_4_octopus[i_11].x
# spaceinvaders.c:986: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	ld.s	r2, [r13 + (-6)]	#, leftmost
	sex.s	r1, r2	# tmp109,
	sex.s	r0, r0	# tmp110, _8
	cmp.w	r1, r0	# tmp109, tmp110
	jses	.L103		#
# spaceinvaders.c:988: 			return row_4_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp111, i
	mov.w	r1, 3	# tmp113,
	shl.w	r0, r1	# tmp112, tmp113
	mov.w	r1, row_4_octopus+2	# tmp115,
	add.w	r0, r1 #222	# tmp114, tmp115
	ld.s	r0, [r0]	# _12, row_4_octopus[i_11].x
	j	.L97		#
.L103:
# spaceinvaders.c:990: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp116, i
	mov.w	r1, 3	# tmp118,
	shl.w	r0, r1	# tmp117, tmp118
	mov.w	r1, row_5_octopus+6	# tmp120,
	add.w	r0, r1 #222	# tmp119, tmp120
	ld.s	r0, [r0]	# _9, row_5_octopus[i_11].alive
# spaceinvaders.c:990: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	sex.s	r1, r0	# tmp121, _9
	mov.w	r0, 2	# tmp122,
	cmp.w	r1, r0	# tmp121, tmp122
	jnz	.L104		#
# spaceinvaders.c:990: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp123, i
	mov.w	r1, 3	# tmp125,
	shl.w	r0, r1	# tmp124, tmp125
	mov.w	r1, row_5_octopus+2	# tmp127,
	add.w	r0, r1 #222	# tmp126, tmp127
	ld.s	r0, [r0]	# _10, row_5_octopus[i_11].x
# spaceinvaders.c:990: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	ld.s	r2, [r13 + (-6)]	#, leftmost
	sex.s	r1, r2	# tmp128,
	sex.s	r0, r0	# tmp129, _10
	cmp.w	r1, r0	# tmp128, tmp129
	jses	.L104		#
# spaceinvaders.c:992: 			return row_5_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp130, i
	mov.w	r1, 3	# tmp132,
	shl.w	r0, r1	# tmp131, tmp132
	mov.w	r1, row_5_octopus+2	# tmp134,
	add.w	r0, r1 #222	# tmp133, tmp134
	ld.s	r0, [r0]	# _12, row_5_octopus[i_11].x
	j	.L97		#
.L104:
# spaceinvaders.c:972: 	for(int i = 0; i < 11; i++)
	ld.w	r0, [r13 + (-4)]	# tmp136, i
	add.w	r0, 1 #111	# tmp135,
	st.w	[r13 + (-4)], r0	# i, tmp135
.L98:
# spaceinvaders.c:972: 	for(int i = 0; i < 11; i++)
	ld.w	r1, [r13 + (-4)]	# tmp137, i
	mov.w	r0, 10	# tmp138,
	cmp.w	r1, r0	# tmp137, tmp138
	jses	.L105		#
.L97:
# spaceinvaders.c:995: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	leftmost_alien_X, .-leftmost_alien_X
	.p2align	1
	.global	rightmost_alien_X
	.type	rightmost_alien_X, @function
rightmost_alien_X:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# spaceinvaders.c:1000: 	short rightmost = 0;
	xor.w	r0, r0	# tmp53
	st.s	[r13 + (-6)], r0	# rightmost, tmp53
# spaceinvaders.c:1001: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp54,
	st.w	[r13 + (-4)], r0	# i, tmp54
# spaceinvaders.c:1001: 	for(int i = 10; i >= 0; i--)
	j	.L107		#
.L114:
# spaceinvaders.c:1003: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp55, i
	mov.w	r1, 3	# tmp57,
	shl.w	r0, r1	# tmp56, tmp57
	mov.w	r1, row_1_squid+6	# tmp59,
	add.w	r0, r1 #222	# tmp58, tmp59
	ld.s	r0, [r0]	# _1, row_1_squid[i_26].alive
# spaceinvaders.c:1003: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	sex.s	r1, r0	# tmp60, _1
	mov.w	r0, 2	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jnz	.L108		#
# spaceinvaders.c:1003: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp62, i
	mov.w	r1, 3	# tmp64,
	shl.w	r0, r1	# tmp63, tmp64
	mov.w	r1, row_1_squid+2	# tmp66,
	add.w	r0, r1 #222	# tmp65, tmp66
	ld.s	r0, [r0]	# _2, row_1_squid[i_26].x
	sex.s	r0, r0	# _3, _2
# spaceinvaders.c:1003: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	mov.w	r1, r0	# _4, _3
	add.w	r1, 11 #111	# _4,
	ld.s	r2, [r13 + (-6)]	#, rightmost
	sex.s	r0, r2	# _5,
# spaceinvaders.c:1003: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _4, _5
	jss	.L108		#
# spaceinvaders.c:1005: 			return row_1_squid[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp67, i
	mov.w	r1, 3	# tmp69,
	shl.w	r0, r1	# tmp68, tmp69
	mov.w	r1, row_1_squid+2	# tmp71,
	add.w	r0, r1 #222	# tmp70, tmp71
	ld.s	r0, [r0]	# _27, row_1_squid[i_26].x
	j	.L106		#
.L108:
# spaceinvaders.c:1007: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp72, i
	mov.w	r1, 3	# tmp74,
	shl.w	r0, r1	# tmp73, tmp74
	mov.w	r1, row_2_crab+6	# tmp76,
	add.w	r0, r1 #222	# tmp75, tmp76
	ld.s	r0, [r0]	# _6, row_2_crab[i_26].alive
# spaceinvaders.c:1007: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	sex.s	r1, r0	# tmp77, _6
	mov.w	r0, 2	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L110		#
# spaceinvaders.c:1007: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp79, i
	mov.w	r1, 3	# tmp81,
	shl.w	r0, r1	# tmp80, tmp81
	mov.w	r1, row_2_crab+2	# tmp83,
	add.w	r0, r1 #222	# tmp82, tmp83
	ld.s	r0, [r0]	# _7, row_2_crab[i_26].x
	sex.s	r0, r0	# _8, _7
# spaceinvaders.c:1007: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	mov.w	r1, r0	# _9, _8
	add.w	r1, 11 #111	# _9,
	ld.s	r2, [r13 + (-6)]	#, rightmost
	sex.s	r0, r2	# _10,
# spaceinvaders.c:1007: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _9, _10
	jss	.L110		#
# spaceinvaders.c:1009: 			return row_2_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp84, i
	mov.w	r1, 3	# tmp86,
	shl.w	r0, r1	# tmp85, tmp86
	mov.w	r1, row_2_crab+2	# tmp88,
	add.w	r0, r1 #222	# tmp87, tmp88
	ld.s	r0, [r0]	# _27, row_2_crab[i_26].x
	j	.L106		#
.L110:
# spaceinvaders.c:1011: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp89, i
	mov.w	r1, 3	# tmp91,
	shl.w	r0, r1	# tmp90, tmp91
	mov.w	r1, row_3_crab+6	# tmp93,
	add.w	r0, r1 #222	# tmp92, tmp93
	ld.s	r0, [r0]	# _11, row_3_crab[i_26].alive
# spaceinvaders.c:1011: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	sex.s	r1, r0	# tmp94, _11
	mov.w	r0, 2	# tmp95,
	cmp.w	r1, r0	# tmp94, tmp95
	jnz	.L111		#
# spaceinvaders.c:1011: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp96, i
	mov.w	r1, 3	# tmp98,
	shl.w	r0, r1	# tmp97, tmp98
	mov.w	r1, row_3_crab+2	# tmp100,
	add.w	r0, r1 #222	# tmp99, tmp100
	ld.s	r0, [r0]	# _12, row_3_crab[i_26].x
	sex.s	r0, r0	# _13, _12
# spaceinvaders.c:1011: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	mov.w	r1, r0	# _14, _13
	add.w	r1, 11 #111	# _14,
	ld.s	r2, [r13 + (-6)]	#, rightmost
	sex.s	r0, r2	# _15,
# spaceinvaders.c:1011: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _14, _15
	jss	.L111		#
# spaceinvaders.c:1013: 			return row_3_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp101, i
	mov.w	r1, 3	# tmp103,
	shl.w	r0, r1	# tmp102, tmp103
	mov.w	r1, row_3_crab+2	# tmp105,
	add.w	r0, r1 #222	# tmp104, tmp105
	ld.s	r0, [r0]	# _27, row_3_crab[i_26].x
	j	.L106		#
.L111:
# spaceinvaders.c:1015: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp106, i
	mov.w	r1, 3	# tmp108,
	shl.w	r0, r1	# tmp107, tmp108
	mov.w	r1, row_4_octopus+6	# tmp110,
	add.w	r0, r1 #222	# tmp109, tmp110
	ld.s	r0, [r0]	# _16, row_4_octopus[i_26].alive
# spaceinvaders.c:1015: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	sex.s	r1, r0	# tmp111, _16
	mov.w	r0, 2	# tmp112,
	cmp.w	r1, r0	# tmp111, tmp112
	jnz	.L112		#
# spaceinvaders.c:1015: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp113, i
	mov.w	r1, 3	# tmp115,
	shl.w	r0, r1	# tmp114, tmp115
	mov.w	r1, row_4_octopus+2	# tmp117,
	add.w	r0, r1 #222	# tmp116, tmp117
	ld.s	r0, [r0]	# _17, row_4_octopus[i_26].x
	sex.s	r0, r0	# _18, _17
# spaceinvaders.c:1015: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	mov.w	r1, r0	# _19, _18
	add.w	r1, 11 #111	# _19,
	ld.s	r2, [r13 + (-6)]	#, rightmost
	sex.s	r0, r2	# _20,
# spaceinvaders.c:1015: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _19, _20
	jss	.L112		#
# spaceinvaders.c:1017: 			return row_4_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp118, i
	mov.w	r1, 3	# tmp120,
	shl.w	r0, r1	# tmp119, tmp120
	mov.w	r1, row_4_octopus+2	# tmp122,
	add.w	r0, r1 #222	# tmp121, tmp122
	ld.s	r0, [r0]	# _27, row_4_octopus[i_26].x
	j	.L106		#
.L112:
# spaceinvaders.c:1019: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp123, i
	mov.w	r1, 3	# tmp125,
	shl.w	r0, r1	# tmp124, tmp125
	mov.w	r1, row_5_octopus+6	# tmp127,
	add.w	r0, r1 #222	# tmp126, tmp127
	ld.s	r0, [r0]	# _21, row_5_octopus[i_26].alive
# spaceinvaders.c:1019: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	sex.s	r1, r0	# tmp128, _21
	mov.w	r0, 2	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jnz	.L113		#
# spaceinvaders.c:1019: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp130, i
	mov.w	r1, 3	# tmp132,
	shl.w	r0, r1	# tmp131, tmp132
	mov.w	r1, row_5_octopus+2	# tmp134,
	add.w	r0, r1 #222	# tmp133, tmp134
	ld.s	r0, [r0]	# _22, row_5_octopus[i_26].x
	sex.s	r0, r0	# _23, _22
# spaceinvaders.c:1019: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	mov.w	r1, r0	# _24, _23
	add.w	r1, 11 #111	# _24,
	ld.s	r2, [r13 + (-6)]	#, rightmost
	sex.s	r0, r2	# _25,
# spaceinvaders.c:1019: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _24, _25
	jss	.L113		#
# spaceinvaders.c:1021: 			return row_5_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp135, i
	mov.w	r1, 3	# tmp137,
	shl.w	r0, r1	# tmp136, tmp137
	mov.w	r1, row_5_octopus+2	# tmp139,
	add.w	r0, r1 #222	# tmp138, tmp139
	ld.s	r0, [r0]	# _27, row_5_octopus[i_26].x
	j	.L106		#
.L113:
# spaceinvaders.c:1001: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-4)]	# tmp141, i
	add.w	r0, -1 #111	# tmp140,
	st.w	[r13 + (-4)], r0	# i, tmp140
.L107:
# spaceinvaders.c:1001: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-4)]	# tmp142, i
	xor.w	r0, r0	# tmp143
	cmp.w	r1, r0	# tmp142, tmp143
	jges	.L114		#
.L106:
# spaceinvaders.c:1024: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	rightmost_alien_X, .-rightmost_alien_X
	.p2align	1
	.global	lowest_alien_Y
	.type	lowest_alien_Y, @function
lowest_alien_Y:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1029: 	short lowest = 0;
	xor.w	r0, r0	# tmp38
	st.s	[r13 + (-22)], r0	# lowest, tmp38
# spaceinvaders.c:1030: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp39,
	st.w	[r13 + (-4)], r0	# i, tmp39
# spaceinvaders.c:1030: 	for(int i = 10; i >= 0; i--)
	j	.L116		#
.L119:
# spaceinvaders.c:1032: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-4)]	# tmp40, i
	mov.w	r1, 3	# tmp42,
	shl.w	r0, r1	# tmp41, tmp42
	mov.w	r1, row_5_octopus+6	# tmp44,
	add.w	r0, r1 #222	# tmp43, tmp44
	ld.s	r0, [r0]	# _1, row_5_octopus[i_11].alive
# spaceinvaders.c:1032: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	sex.s	r1, r0	# tmp45, _1
	mov.w	r0, 2	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L117		#
# spaceinvaders.c:1032: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-4)]	# tmp47, i
	mov.w	r1, 3	# tmp49,
	shl.w	r0, r1	# tmp48, tmp49
	mov.w	r1, row_5_octopus+4	# tmp51,
	add.w	r0, r1 #222	# tmp50, tmp51
	ld.s	r0, [r0]	# _2, row_5_octopus[i_11].y
# spaceinvaders.c:1032: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	ld.s	r2, [r13 + (-22)]	#, lowest
	sex.s	r1, r2	# tmp52,
	sex.s	r0, r0	# tmp53, _2
	cmp.w	r1, r0	# tmp52, tmp53
	jges	.L117		#
# spaceinvaders.c:1034: 			return row_5_octopus[i].y;
	ld.w	r0, [r13 + (-4)]	# tmp54, i
	mov.w	r1, 3	# tmp56,
	shl.w	r0, r1	# tmp55, tmp56
	mov.w	r1, row_5_octopus+4	# tmp58,
	add.w	r0, r1 #222	# tmp57, tmp58
	ld.s	r0, [r0]	# _16, row_5_octopus[i_11].y
	j	.L115		#
.L117:
# spaceinvaders.c:1030: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-4)]	# tmp60, i
	add.w	r0, -1 #111	# tmp59,
	st.w	[r13 + (-4)], r0	# i, tmp59
.L116:
# spaceinvaders.c:1030: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-4)]	# tmp61, i
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jges	.L119		#
# spaceinvaders.c:1037: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp63,
	st.w	[r13 + (-8)], r0	# i, tmp63
# spaceinvaders.c:1037: 	for(int i = 10; i >= 0; i--)
	j	.L120		#
.L122:
# spaceinvaders.c:1039: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-8)]	# tmp64, i
	mov.w	r1, 3	# tmp66,
	shl.w	r0, r1	# tmp65, tmp66
	mov.w	r1, row_4_octopus+6	# tmp68,
	add.w	r0, r1 #222	# tmp67, tmp68
	ld.s	r0, [r0]	# _3, row_4_octopus[i_12].alive
# spaceinvaders.c:1039: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	sex.s	r1, r0	# tmp69, _3
	mov.w	r0, 2	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L121		#
# spaceinvaders.c:1039: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-8)]	# tmp71, i
	mov.w	r1, 3	# tmp73,
	shl.w	r0, r1	# tmp72, tmp73
	mov.w	r1, row_4_octopus+4	# tmp75,
	add.w	r0, r1 #222	# tmp74, tmp75
	ld.s	r0, [r0]	# _4, row_4_octopus[i_12].y
# spaceinvaders.c:1039: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	ld.s	r2, [r13 + (-22)]	#, lowest
	sex.s	r1, r2	# tmp76,
	sex.s	r0, r0	# tmp77, _4
	cmp.w	r1, r0	# tmp76, tmp77
	jges	.L121		#
# spaceinvaders.c:1041: 			return row_4_octopus[i].y;
	ld.w	r0, [r13 + (-8)]	# tmp78, i
	mov.w	r1, 3	# tmp80,
	shl.w	r0, r1	# tmp79, tmp80
	mov.w	r1, row_4_octopus+4	# tmp82,
	add.w	r0, r1 #222	# tmp81, tmp82
	ld.s	r0, [r0]	# _16, row_4_octopus[i_12].y
	j	.L115		#
.L121:
# spaceinvaders.c:1037: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-8)]	# tmp84, i
	add.w	r0, -1 #111	# tmp83,
	st.w	[r13 + (-8)], r0	# i, tmp83
.L120:
# spaceinvaders.c:1037: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-8)]	# tmp85, i
	xor.w	r0, r0	# tmp86
	cmp.w	r1, r0	# tmp85, tmp86
	jges	.L122		#
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp87,
	st.w	[r13 + (-12)], r0	# i, tmp87
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	j	.L123		#
.L125:
# spaceinvaders.c:1046: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	ld.w	r0, [r13 + (-12)]	# tmp88, i
	mov.w	r1, 3	# tmp90,
	shl.w	r0, r1	# tmp89, tmp90
	mov.w	r1, row_3_crab+6	# tmp92,
	add.w	r0, r1 #222	# tmp91, tmp92
	ld.s	r0, [r0]	# _5, row_3_crab[i_13].alive
# spaceinvaders.c:1046: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	sex.s	r1, r0	# tmp93, _5
	mov.w	r0, 2	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jnz	.L124		#
# spaceinvaders.c:1046: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	ld.w	r0, [r13 + (-12)]	# tmp95, i
	mov.w	r1, 3	# tmp97,
	shl.w	r0, r1	# tmp96, tmp97
	mov.w	r1, row_3_crab+4	# tmp99,
	add.w	r0, r1 #222	# tmp98, tmp99
	ld.s	r0, [r0]	# _6, row_3_crab[i_13].y
# spaceinvaders.c:1046: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	ld.s	r2, [r13 + (-22)]	#, lowest
	sex.s	r1, r2	# tmp100,
	sex.s	r0, r0	# tmp101, _6
	cmp.w	r1, r0	# tmp100, tmp101
	jges	.L124		#
# spaceinvaders.c:1048: 			return row_3_crab[i].y;
	ld.w	r0, [r13 + (-12)]	# tmp102, i
	mov.w	r1, 3	# tmp104,
	shl.w	r0, r1	# tmp103, tmp104
	mov.w	r1, row_3_crab+4	# tmp106,
	add.w	r0, r1 #222	# tmp105, tmp106
	ld.s	r0, [r0]	# _16, row_3_crab[i_13].y
	j	.L115		#
.L124:
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-12)]	# tmp108, i
	add.w	r0, -1 #111	# tmp107,
	st.w	[r13 + (-12)], r0	# i, tmp107
.L123:
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-12)]	# tmp109, i
	xor.w	r0, r0	# tmp110
	cmp.w	r1, r0	# tmp109, tmp110
	jges	.L125		#
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp111,
	st.w	[r13 + (-16)], r0	# i, tmp111
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	j	.L126		#
.L128:
# spaceinvaders.c:1053: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	ld.w	r0, [r13 + (-16)]	# tmp112, i
	mov.w	r1, 3	# tmp114,
	shl.w	r0, r1	# tmp113, tmp114
	mov.w	r1, row_2_crab+6	# tmp116,
	add.w	r0, r1 #222	# tmp115, tmp116
	ld.s	r0, [r0]	# _7, row_2_crab[i_14].alive
# spaceinvaders.c:1053: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	sex.s	r1, r0	# tmp117, _7
	mov.w	r0, 2	# tmp118,
	cmp.w	r1, r0	# tmp117, tmp118
	jnz	.L127		#
# spaceinvaders.c:1053: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	ld.w	r0, [r13 + (-16)]	# tmp119, i
	mov.w	r1, 3	# tmp121,
	shl.w	r0, r1	# tmp120, tmp121
	mov.w	r1, row_2_crab+4	# tmp123,
	add.w	r0, r1 #222	# tmp122, tmp123
	ld.s	r0, [r0]	# _8, row_2_crab[i_14].y
# spaceinvaders.c:1053: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	ld.s	r2, [r13 + (-22)]	#, lowest
	sex.s	r1, r2	# tmp124,
	sex.s	r0, r0	# tmp125, _8
	cmp.w	r1, r0	# tmp124, tmp125
	jges	.L127		#
# spaceinvaders.c:1055: 			return row_2_crab[i].y;
	ld.w	r0, [r13 + (-16)]	# tmp126, i
	mov.w	r1, 3	# tmp128,
	shl.w	r0, r1	# tmp127, tmp128
	mov.w	r1, row_2_crab+4	# tmp130,
	add.w	r0, r1 #222	# tmp129, tmp130
	ld.s	r0, [r0]	# _16, row_2_crab[i_14].y
	j	.L115		#
.L127:
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-16)]	# tmp132, i
	add.w	r0, -1 #111	# tmp131,
	st.w	[r13 + (-16)], r0	# i, tmp131
.L126:
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-16)]	# tmp133, i
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jges	.L128		#
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp135,
	st.w	[r13 + (-20)], r0	# i, tmp135
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	j	.L129		#
.L131:
# spaceinvaders.c:1060: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	ld.w	r0, [r13 + (-20)]	# tmp136, i
	mov.w	r1, 3	# tmp138,
	shl.w	r0, r1	# tmp137, tmp138
	mov.w	r1, row_1_squid+6	# tmp140,
	add.w	r0, r1 #222	# tmp139, tmp140
	ld.s	r0, [r0]	# _9, row_1_squid[i_15].alive
# spaceinvaders.c:1060: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	sex.s	r1, r0	# tmp141, _9
	mov.w	r0, 2	# tmp142,
	cmp.w	r1, r0	# tmp141, tmp142
	jnz	.L130		#
# spaceinvaders.c:1060: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	ld.w	r0, [r13 + (-20)]	# tmp143, i
	mov.w	r1, 3	# tmp145,
	shl.w	r0, r1	# tmp144, tmp145
	mov.w	r1, row_1_squid+4	# tmp147,
	add.w	r0, r1 #222	# tmp146, tmp147
	ld.s	r0, [r0]	# _10, row_1_squid[i_15].y
# spaceinvaders.c:1060: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	ld.s	r2, [r13 + (-22)]	#, lowest
	sex.s	r1, r2	# tmp148,
	sex.s	r0, r0	# tmp149, _10
	cmp.w	r1, r0	# tmp148, tmp149
	jges	.L130		#
# spaceinvaders.c:1062: 			return row_1_squid[i].y;
	ld.w	r0, [r13 + (-20)]	# tmp150, i
	mov.w	r1, 3	# tmp152,
	shl.w	r0, r1	# tmp151, tmp152
	mov.w	r1, row_1_squid+4	# tmp154,
	add.w	r0, r1 #222	# tmp153, tmp154
	ld.s	r0, [r0]	# _16, row_1_squid[i_15].y
	j	.L115		#
.L130:
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-20)]	# tmp156, i
	add.w	r0, -1 #111	# tmp155,
	st.w	[r13 + (-20)], r0	# i, tmp155
.L129:
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-20)]	# tmp157, i
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jges	.L131		#
.L115:
# spaceinvaders.c:1065: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	lowest_alien_Y, .-lowest_alien_Y
	.p2align	1
	.global	increase_alien_speed
	.type	increase_alien_speed, @function
increase_alien_speed:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# spaceinvaders.c:1077: 	int current_step_multiplier = current_step/movement_step;
	ld.w	r0, [current_step]	# current_step.13_1, current_step
	ld.w	r1, [movement_step]	# movement_step.14_2, movement_step
# spaceinvaders.c:1077: 	int current_step_multiplier = current_step/movement_step;
	div.w	r0, r1	# tmp43, movement_step.14_2
	st.w	[r13 + (-4)], r0	# current_step_multiplier, tmp43
# spaceinvaders.c:1080: 	if(number_of_aliens < 6)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.15_3, number_of_aliens
# spaceinvaders.c:1080: 	if(number_of_aliens < 6)
	mov.w	r0, 5	# tmp44,
	cmp.w	r1, r0	# number_of_aliens.15_3, tmp44
	jgs	.L133		#
# spaceinvaders.c:1081: 		movement_step -= 4;
	ld.w	r0, [movement_step]	# movement_step.16_4, movement_step
	add.w	r0, -4 #111	# _5,
	st.w	[movement_step], r0	# movement_step, _5
	j	.L134		#
.L133:
# spaceinvaders.c:1082: 	else if(number_of_aliens < 15)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.17_6, number_of_aliens
# spaceinvaders.c:1082: 	else if(number_of_aliens < 15)
	mov.w	r0, 14	# tmp45,
	cmp.w	r1, r0	# number_of_aliens.17_6, tmp45
	jgs	.L135		#
# spaceinvaders.c:1083: 		movement_step -= 3;
	ld.w	r0, [movement_step]	# movement_step.18_7, movement_step
	add.w	r0, -3 #111	# _8,
	st.w	[movement_step], r0	# movement_step, _8
	j	.L134		#
.L135:
# spaceinvaders.c:1084: 	else if(number_of_aliens < 23)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.19_9, number_of_aliens
# spaceinvaders.c:1084: 	else if(number_of_aliens < 23)
	mov.w	r0, 22	# tmp46,
	cmp.w	r1, r0	# number_of_aliens.19_9, tmp46
	jgs	.L136		#
# spaceinvaders.c:1085: 		movement_step -= 2;
	ld.w	r0, [movement_step]	# movement_step.20_10, movement_step
	add.w	r0, -2 #111	# _11,
	st.w	[movement_step], r0	# movement_step, _11
	j	.L134		#
.L136:
# spaceinvaders.c:1087: 		movement_step--;
	ld.w	r0, [movement_step]	# movement_step.21_12, movement_step
	add.w	r0, -1 #111	# _13,
	st.w	[movement_step], r0	# movement_step, _13
.L134:
# spaceinvaders.c:1096: 	int movement_step_ceil = movement_step * (current_step_multiplier+1);
	ld.w	r0, [r13 + (-4)]	# tmp47, current_step_multiplier
	add.w	r0, 1 #111	# _14,
# spaceinvaders.c:1096: 	int movement_step_ceil = movement_step * (current_step_multiplier+1);
	ld.w	r1, [movement_step]	# movement_step.22_15, movement_step
# spaceinvaders.c:1096: 	int movement_step_ceil = movement_step * (current_step_multiplier+1);
	mul.w	r0, r1	# tmp48, movement_step.22_15
	st.w	[r13 + (-8)], r0	# movement_step_ceil, tmp48
# spaceinvaders.c:1098: 	if(current_step >= movement_step_ceil)
	ld.w	r0, [current_step]	# current_step.23_16, current_step
# spaceinvaders.c:1098: 	if(current_step >= movement_step_ceil)
	ld.w	r1, [r13 + (-8)]	# tmp49, movement_step_ceil
	cmp.w	r1, r0	# tmp49, current_step.23_16
	jgs	.L138		#
# spaceinvaders.c:1100: 		current_step = movement_step_ceil - 1;
	ld.w	r0, [r13 + (-8)]	# tmp50, movement_step_ceil
	add.w	r0, -1 #111	# _17,
# spaceinvaders.c:1100: 		current_step = movement_step_ceil - 1;
	st.w	[current_step], r0	# current_step, _17
.L138:
# spaceinvaders.c:1102: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	increase_alien_speed, .-increase_alien_speed
	.p2align	1
	.global	decrease_alien_bullet_spawn_time
	.type	decrease_alien_bullet_spawn_time, @function
decrease_alien_bullet_spawn_time:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1110: 	alien_bullet_spawn_time = 600 + (number_of_aliens*10);
	ld.w	r1, [number_of_aliens]	# number_of_aliens.24_1, number_of_aliens
	mov.w	r0, r1	# tmp29, number_of_aliens.24_1
	mov.w	r2, 2	# tmp31,
	shl.w	r0, r2	# tmp30, tmp31
	add.w	r0, r1 #222	# tmp29, number_of_aliens.24_1
	add.w	r0, r0 #222	# tmp32, tmp29
# spaceinvaders.c:1110: 	alien_bullet_spawn_time = 600 + (number_of_aliens*10);
	mov.w	r1, 600	# tmp33,
	add.w	r0, r1 #222	# _3, tmp33
# spaceinvaders.c:1110: 	alien_bullet_spawn_time = 600 + (number_of_aliens*10);
	st.w	[alien_bullet_spawn_time], r0	# alien_bullet_spawn_time, _3
# spaceinvaders.c:1111: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	decrease_alien_bullet_spawn_time, .-decrease_alien_bullet_spawn_time
	.section	.rodata
	.p2align	2
.LC0:
	.string	"0000%d"
	.p2align	2
.LC1:
	.string	"000%d"
	.p2align	2
.LC2:
	.string	"00%d"
	.p2align	2
.LC3:
	.string	"0%d"
	.p2align	2
.LC4:
	.string	"%d"
	.text
	.p2align	1
	.global	check_and_draw_current_score
	.type	check_and_draw_current_score, @function
check_and_draw_current_score:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1114: 	if(score > 99999)
	ld.w	r1, [score]	# score.25_1, score
# spaceinvaders.c:1114: 	if(score > 99999)
	mov.w	r0, 99999	# tmp36,
	cmp.w	r1, r0	# score.25_1, tmp36
	jses	.L141		#
# spaceinvaders.c:1115: 		score = 0;
	xor.w	r0, r0	# tmp37
	st.w	[score], r0	# score, tmp37
.L141:
# spaceinvaders.c:1116: 	clear_bitmap_test(20, 20, 45, 10);
	mov.w	r0, sp	# tmp38,
	mov.w	r1, 10	# tmp39,
	st.w	[r0 + (12)], r1	#, tmp39
	mov.w	r1, 45	# tmp40,
	st.w	[r0 + (8)], r1	#, tmp40
	mov.w	r1, 20	# tmp41,
	st.w	[r0 + (4)], r1	#, tmp41
	mov.w	r1, 20	# tmp42,
	st.w	[r0], r1	#, tmp42
	call	clear_bitmap_test		#
# spaceinvaders.c:1117: 	if(score < 10)
	ld.w	r1, [score]	# score.26_2, score
# spaceinvaders.c:1117: 	if(score < 10)
	mov.w	r0, 9	# tmp43,
	cmp.w	r1, r0	# score.26_2, tmp43
	jgs	.L142		#
# spaceinvaders.c:1118: 		sprintf(str, "0000%d", score);
	ld.w	r1, [score]	# score.27_3, score
	mov.w	r0, sp	# tmp44,
	st.w	[r0 + (8)], r1	#, score.27_3
	mov.w	r1, .LC0	# tmp45,
	st.w	[r0 + (4)], r1	#, tmp45
	mov.w	r1, str	# tmp46,
	st.w	[r0], r1	#, tmp46
	call	sprintf		#
	j	.L143		#
.L142:
# spaceinvaders.c:1119: 	else if(score < 100)
	ld.w	r1, [score]	# score.28_4, score
# spaceinvaders.c:1119: 	else if(score < 100)
	mov.w	r0, 99	# tmp47,
	cmp.w	r1, r0	# score.28_4, tmp47
	jgs	.L144		#
# spaceinvaders.c:1120: 		sprintf(str, "000%d", score);
	ld.w	r1, [score]	# score.29_5, score
	mov.w	r0, sp	# tmp48,
	st.w	[r0 + (8)], r1	#, score.29_5
	mov.w	r1, .LC1	# tmp49,
	st.w	[r0 + (4)], r1	#, tmp49
	mov.w	r1, str	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	sprintf		#
	j	.L143		#
.L144:
# spaceinvaders.c:1121: 	else if(score < 1000)
	ld.w	r1, [score]	# score.30_6, score
# spaceinvaders.c:1121: 	else if(score < 1000)
	mov.w	r0, 999	# tmp51,
	cmp.w	r1, r0	# score.30_6, tmp51
	jgs	.L145		#
# spaceinvaders.c:1122: 		sprintf(str, "00%d", score);
	ld.w	r1, [score]	# score.31_7, score
	mov.w	r0, sp	# tmp52,
	st.w	[r0 + (8)], r1	#, score.31_7
	mov.w	r1, .LC2	# tmp53,
	st.w	[r0 + (4)], r1	#, tmp53
	mov.w	r1, str	# tmp54,
	st.w	[r0], r1	#, tmp54
	call	sprintf		#
	j	.L143		#
.L145:
# spaceinvaders.c:1123: 	else if(score < 10000)
	ld.w	r1, [score]	# score.32_8, score
# spaceinvaders.c:1123: 	else if(score < 10000)
	mov.w	r0, 9999	# tmp55,
	cmp.w	r1, r0	# score.32_8, tmp55
	jgs	.L146		#
# spaceinvaders.c:1124: 		sprintf(str, "0%d", score);
	ld.w	r1, [score]	# score.33_9, score
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r1	#, score.33_9
	mov.w	r1, .LC3	# tmp57,
	st.w	[r0 + (4)], r1	#, tmp57
	mov.w	r1, str	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	sprintf		#
	j	.L143		#
.L146:
# spaceinvaders.c:1126: 		sprintf(str, "%d", score);
	ld.w	r1, [score]	# score.34_10, score
	mov.w	r0, sp	# tmp59,
	st.w	[r0 + (8)], r1	#, score.34_10
	mov.w	r1, .LC4	# tmp60,
	st.w	[r0 + (4)], r1	#, tmp60
	mov.w	r1, str	# tmp61,
	st.w	[r0], r1	#, tmp61
	call	sprintf		#
.L143:
# spaceinvaders.c:1127: 	draw(20, 20, WHITE, str);
	mov.w	r0, sp	# tmp62,
	mov.w	r1, str	# tmp63,
	st.w	[r0 + (12)], r1	#, tmp63
	mov.w	r1, 7	# tmp64,
	st.w	[r0 + (8)], r1	#, tmp64
	mov.w	r1, 20	# tmp65,
	st.w	[r0 + (4)], r1	#, tmp65
	mov.w	r1, 20	# tmp66,
	st.w	[r0], r1	#, tmp66
	call	draw		#
# spaceinvaders.c:1128: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_and_draw_current_score, .-check_and_draw_current_score
	.p2align	1
	.global	draw_high_score
	.type	draw_high_score, @function
draw_high_score:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1131: 	clear_bitmap_test(112, 20, 45, 10);
	mov.w	r0, sp	# tmp35,
	mov.w	r1, 10	# tmp36,
	st.w	[r0 + (12)], r1	#, tmp36
	mov.w	r1, 45	# tmp37,
	st.w	[r0 + (8)], r1	#, tmp37
	mov.w	r1, 20	# tmp38,
	st.w	[r0 + (4)], r1	#, tmp38
	mov.w	r1, 112	# tmp39,
	st.w	[r0], r1	#, tmp39
	call	clear_bitmap_test		#
# spaceinvaders.c:1132: 	if(high_score < 10)
	ld.w	r1, [high_score]	# high_score.35_1, high_score
# spaceinvaders.c:1132: 	if(high_score < 10)
	mov.w	r0, 9	# tmp40,
	cmp.w	r1, r0	# high_score.35_1, tmp40
	jgs	.L148		#
# spaceinvaders.c:1133: 		sprintf(str, "0000%d", high_score);
	ld.w	r1, [high_score]	# high_score.36_2, high_score
	mov.w	r0, sp	# tmp41,
	st.w	[r0 + (8)], r1	#, high_score.36_2
	mov.w	r1, .LC0	# tmp42,
	st.w	[r0 + (4)], r1	#, tmp42
	mov.w	r1, str	# tmp43,
	st.w	[r0], r1	#, tmp43
	call	sprintf		#
	j	.L149		#
.L148:
# spaceinvaders.c:1134: 	else if(high_score < 100)
	ld.w	r1, [high_score]	# high_score.37_3, high_score
# spaceinvaders.c:1134: 	else if(high_score < 100)
	mov.w	r0, 99	# tmp44,
	cmp.w	r1, r0	# high_score.37_3, tmp44
	jgs	.L150		#
# spaceinvaders.c:1135: 		sprintf(str, "000%d", high_score);
	ld.w	r1, [high_score]	# high_score.38_4, high_score
	mov.w	r0, sp	# tmp45,
	st.w	[r0 + (8)], r1	#, high_score.38_4
	mov.w	r1, .LC1	# tmp46,
	st.w	[r0 + (4)], r1	#, tmp46
	mov.w	r1, str	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	sprintf		#
	j	.L149		#
.L150:
# spaceinvaders.c:1136: 	else if(high_score < 1000)
	ld.w	r1, [high_score]	# high_score.39_5, high_score
# spaceinvaders.c:1136: 	else if(high_score < 1000)
	mov.w	r0, 999	# tmp48,
	cmp.w	r1, r0	# high_score.39_5, tmp48
	jgs	.L151		#
# spaceinvaders.c:1137: 		sprintf(str, "00%d", high_score);
	ld.w	r1, [high_score]	# high_score.40_6, high_score
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (8)], r1	#, high_score.40_6
	mov.w	r1, .LC2	# tmp50,
	st.w	[r0 + (4)], r1	#, tmp50
	mov.w	r1, str	# tmp51,
	st.w	[r0], r1	#, tmp51
	call	sprintf		#
	j	.L149		#
.L151:
# spaceinvaders.c:1138: 	else if(high_score < 10000)
	ld.w	r1, [high_score]	# high_score.41_7, high_score
# spaceinvaders.c:1138: 	else if(high_score < 10000)
	mov.w	r0, 9999	# tmp52,
	cmp.w	r1, r0	# high_score.41_7, tmp52
	jgs	.L152		#
# spaceinvaders.c:1139: 		sprintf(str, "0%d", high_score);
	ld.w	r1, [high_score]	# high_score.42_8, high_score
	mov.w	r0, sp	# tmp53,
	st.w	[r0 + (8)], r1	#, high_score.42_8
	mov.w	r1, .LC3	# tmp54,
	st.w	[r0 + (4)], r1	#, tmp54
	mov.w	r1, str	# tmp55,
	st.w	[r0], r1	#, tmp55
	call	sprintf		#
	j	.L149		#
.L152:
# spaceinvaders.c:1141: 		sprintf(str, "%d", high_score);
	ld.w	r1, [high_score]	# high_score.43_9, high_score
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r1	#, high_score.43_9
	mov.w	r1, .LC4	# tmp57,
	st.w	[r0 + (4)], r1	#, tmp57
	mov.w	r1, str	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	sprintf		#
.L149:
# spaceinvaders.c:1142: 	draw(112, 20, GREEN, str);
	mov.w	r0, sp	# tmp59,
	mov.w	r1, str	# tmp60,
	st.w	[r0 + (12)], r1	#, tmp60
	mov.w	r1, 2	# tmp61,
	st.w	[r0 + (8)], r1	#, tmp61
	mov.w	r1, 20	# tmp62,
	st.w	[r0 + (4)], r1	#, tmp62
	mov.w	r1, 112	# tmp63,
	st.w	[r0], r1	#, tmp63
	call	draw		#
# spaceinvaders.c:1143: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_high_score, .-draw_high_score
	.p2align	1
	.global	update_high_score_if_lower_than_score
	.type	update_high_score_if_lower_than_score, @function
update_high_score_if_lower_than_score:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1147: 	if(high_score < score)
	ld.w	r1, [high_score]	# high_score.44_1, high_score
	ld.w	r0, [score]	# score.45_2, score
# spaceinvaders.c:1147: 	if(high_score < score)
	cmp.w	r1, r0	# high_score.44_1, score.45_2
	jges	.L155		#
# spaceinvaders.c:1149: 		high_score = score;
	ld.w	r0, [score]	# score.46_3, score
	st.w	[high_score], r0	# high_score, score.46_3
# spaceinvaders.c:1150: 		draw_high_score();
	call	draw_high_score		#
.L155:
# spaceinvaders.c:1152: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	update_high_score_if_lower_than_score, .-update_high_score_if_lower_than_score
	.p2align	1
	.global	draw_lives
	.type	draw_lives, @function
draw_lives:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# spaceinvaders.c:1156: 	clear_bitmap_test(20, 229, 60, 10);
	mov.w	r0, sp	# tmp31,
	mov.w	r1, 10	# tmp32,
	st.w	[r0 + (12)], r1	#, tmp32
	mov.w	r1, 60	# tmp33,
	st.w	[r0 + (8)], r1	#, tmp33
	mov.w	r1, 229	# tmp34,
	st.w	[r0 + (4)], r1	#, tmp34
	mov.w	r1, 20	# tmp35,
	st.w	[r0], r1	#, tmp35
	call	clear_bitmap_test		#
# spaceinvaders.c:1157: 	sprintf(str,"%d", lives);
	ld.w	r1, [lives]	# lives.47_1, lives
	mov.w	r0, sp	# tmp36,
	st.w	[r0 + (8)], r1	#, lives.47_1
	mov.w	r1, .LC4	# tmp37,
	st.w	[r0 + (4)], r1	#, tmp37
	mov.w	r1, str	# tmp38,
	st.w	[r0], r1	#, tmp38
	call	sprintf		#
# spaceinvaders.c:1158: 	draw(20, 230, YELLOW, str);
	mov.w	r0, sp	# tmp39,
	mov.w	r1, str	# tmp40,
	st.w	[r0 + (12)], r1	#, tmp40
	mov.w	r1, 6	# tmp41,
	st.w	[r0 + (8)], r1	#, tmp41
	mov.w	r1, 230	# tmp42,
	st.w	[r0 + (4)], r1	#, tmp42
	mov.w	r1, 20	# tmp43,
	st.w	[r0], r1	#, tmp43
	call	draw		#
# spaceinvaders.c:1159: 	for(int i = 0; i < lives-1; i++)
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# i, tmp44
# spaceinvaders.c:1159: 	for(int i = 0; i < lives-1; i++)
	j	.L157		#
.L158:
# spaceinvaders.c:1160: 		draw_bitmap_with_clear_background(32 + 16 * i, 229, 16, 8, ship);
	ld.w	r0, [r13 + (-4)]	# tmp45, i
	mov.w	r1, r0	# _2, tmp45
	add.w	r1, 2 #111	# _2,
# spaceinvaders.c:1160: 		draw_bitmap_with_clear_background(32 + 16 * i, 229, 16, 8, ship);
	mov.w	r0, 4	# tmp46,
	shl.w	r1, r0	# _3, tmp46
	mov.w	r0, sp	# tmp47,
	mov.w	r2, ship	# tmp48,
	st.w	[r0 + (16)], r2	#, tmp48
	mov.w	r2, 8	# tmp49,
	st.w	[r0 + (12)], r2	#, tmp49
	mov.w	r2, 16	# tmp50,
	st.w	[r0 + (8)], r2	#, tmp50
	mov.w	r2, 229	# tmp51,
	st.w	[r0 + (4)], r2	#, tmp51
	st.w	[r0], r1	#, _3
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1159: 	for(int i = 0; i < lives-1; i++)
	ld.w	r0, [r13 + (-4)]	# tmp53, i
	add.w	r0, 1 #111	# tmp52,
	st.w	[r13 + (-4)], r0	# i, tmp52
.L157:
# spaceinvaders.c:1159: 	for(int i = 0; i < lives-1; i++)
	ld.w	r0, [lives]	# lives.48_4, lives
	add.w	r0, -1 #111	# _5,
# spaceinvaders.c:1159: 	for(int i = 0; i < lives-1; i++)
	ld.w	r1, [r13 + (-4)]	# tmp54, i
	cmp.w	r1, r0	# tmp54, _5
	jss	.L158		#
# spaceinvaders.c:1161: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_lives, .-draw_lives
	.p2align	1
	.global	calculate_ufo_score
	.type	calculate_ufo_score, @function
calculate_ufo_score:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1169: 	if(current_player_bullet == special_player_bullet)
	ld.w	r1, [current_player_bullet]	# current_player_bullet.49_1, current_player_bullet
	ld.w	r0, [special_player_bullet]	# special_player_bullet.50_2, special_player_bullet
# spaceinvaders.c:1169: 	if(current_player_bullet == special_player_bullet)
	cmp.w	r1, r0	# current_player_bullet.49_1, special_player_bullet.50_2
	jnz	.L160		#
# spaceinvaders.c:1170: 		ufo_score = 300;
	mov.w	r0, 300	# tmp32,
	st.w	[ufo_score], r0	# ufo_score, tmp32
# spaceinvaders.c:1173: }
	j	.L162		#
.L160:
# spaceinvaders.c:1172: 		ufo_score = ((rand() % 3) + 1) * 50;
	call	rand		#
# spaceinvaders.c:1172: 		ufo_score = ((rand() % 3) + 1) * 50;
	mov.w	r1, 3	# tmp33,
	div.w	r0, r1	# _4, tmp33
mov.w	r0, r14	# _4
# spaceinvaders.c:1172: 		ufo_score = ((rand() % 3) + 1) * 50;
	add.w	r0, 1 #111	# _5,
# spaceinvaders.c:1172: 		ufo_score = ((rand() % 3) + 1) * 50;
	mov.w	r1, 50	# tmp34,
	mul.w	r0, r1	# _6, tmp34
# spaceinvaders.c:1172: 		ufo_score = ((rand() % 3) + 1) * 50;
	st.w	[ufo_score], r0	# ufo_score, _6
.L162:
# spaceinvaders.c:1173: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	calculate_ufo_score, .-calculate_ufo_score
	.p2align	1
	.global	ufo_is_alive_and_collided_with_player_bullet
	.type	ufo_is_alive_and_collided_with_player_bullet, @function
ufo_is_alive_and_collided_with_player_bullet:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1178: 	return (ufo_status == ALIVE
	ld.w	r1, [ufo_status]	# ufo_status.52_1, ufo_status
# spaceinvaders.c:1181: 			&& (player_bullet_def->y <= 35 + 7 
	mov.w	r0, 2	# tmp42,
	cmp.w	r1, r0	# ufo_status.52_1, tmp42
	jnz	.L164		#
# spaceinvaders.c:1179: 			&& (player_bullet_def->x >= ufo_position_X 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.53_2, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _3, player_bullet_def.53_2->x
	sex.s	r1, r0	# _4, _3
# spaceinvaders.c:1179: 			&& (player_bullet_def->x >= ufo_position_X 
	ld.w	r0, [ufo_position_X]	# ufo_position_X.54_5, ufo_position_X
# spaceinvaders.c:1179: 			&& (player_bullet_def->x >= ufo_position_X 
	cmp.w	r1, r0	# _4, ufo_position_X.54_5
	jss	.L164		#
# spaceinvaders.c:1180: 				&& player_bullet_def->x <= ufo_position_X + 15)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.55_6, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _7, player_bullet_def.55_6->x
	sex.s	r1, r0	# _8, _7
# spaceinvaders.c:1180: 				&& player_bullet_def->x <= ufo_position_X + 15)
	ld.w	r0, [ufo_position_X]	# ufo_position_X.56_9, ufo_position_X
	add.w	r0, 15 #111	# _10,
# spaceinvaders.c:1180: 				&& player_bullet_def->x <= ufo_position_X + 15)
	cmp.w	r1, r0	# _8, _10
	jgs	.L164		#
# spaceinvaders.c:1181: 			&& (player_bullet_def->y <= 35 + 7 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.57_11, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _12, player_bullet_def.57_11->y
# spaceinvaders.c:1181: 			&& (player_bullet_def->y <= 35 + 7 
	sex.s	r1, r0	# tmp43, _12
	mov.w	r0, 42	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jgs	.L164		#
# spaceinvaders.c:1182: 				&& player_bullet_def->y >= 35 - 2));
	ld.w	r0, [player_bullet_def]	# player_bullet_def.58_13, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _14, player_bullet_def.58_13->y
# spaceinvaders.c:1182: 				&& player_bullet_def->y >= 35 - 2));
	sex.s	r1, r0	# tmp45, _14
	mov.w	r0, 32	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jses	.L164		#
# spaceinvaders.c:1181: 			&& (player_bullet_def->y <= 35 + 7 
	mov.w	r0, 1	# iftmp.51_15,
	j	.L166		#
.L164:
	xor.w	r0, r0	# iftmp.51_15
.L166:
# spaceinvaders.c:1183: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ufo_is_alive_and_collided_with_player_bullet, .-ufo_is_alive_and_collided_with_player_bullet
	.p2align	1
	.global	set_ufo_to_explode
	.type	set_ufo_to_explode, @function
set_ufo_to_explode:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1187: 	ufo_status = EXPLODING;
	mov.w	r0, 1	# tmp26,
	st.w	[ufo_status], r0	# ufo_status, tmp26
# spaceinvaders.c:1188: 	timer_for_ufo_death = 1200;
	mov.w	r0, 1200	# tmp27,
	st.w	[timer_for_ufo_death], r0	# timer_for_ufo_death, tmp27
# spaceinvaders.c:1189: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_ufo_to_explode, .-set_ufo_to_explode
	.p2align	1
	.global	set_player_bullet_to_explode
	.type	set_player_bullet_to_explode, @function
set_player_bullet_to_explode:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1193: 	player_bullet_status = EXPLODING;
	mov.w	r0, 1	# tmp26,
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp26
# spaceinvaders.c:1194: 	timer_for_player_bullet_destroy = 150;
	mov.w	r0, 150	# tmp27,
	st.w	[timer_for_player_bullet_destroy], r0	# timer_for_player_bullet_destroy, tmp27
# spaceinvaders.c:1195: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_player_bullet_to_explode, .-set_player_bullet_to_explode
	.p2align	1
	.global	delete_player_bullet_and_set_status
	.type	delete_player_bullet_and_set_status, @function
delete_player_bullet_and_set_status:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1199: 	player_bullet_def -> addr = 0;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.59_1, player_bullet_def
# spaceinvaders.c:1199: 	player_bullet_def -> addr = 0;
	xor.w	r1, r1	# tmp27
	st.s	[r0], r1	# player_bullet_def.59_1->addr, tmp27
# spaceinvaders.c:1200: 	player_bullet_status = status;
	ld.w	r0, [r13 + (8)]	# tmp28, status
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp28
# spaceinvaders.c:1201: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	delete_player_bullet_and_set_status, .-delete_player_bullet_and_set_status
	.p2align	1
	.global	check_player_bullet_collision_with_alien
	.type	check_player_bullet_collision_with_alien, @function
check_player_bullet_collision_with_alien:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# spaceinvaders.c:1206: 	if(ufo_is_alive_and_collided_with_player_bullet() == TRUE)
	call	ufo_is_alive_and_collided_with_player_bullet		#
	mov.w	r1, r0	# _1,
# spaceinvaders.c:1206: 	if(ufo_is_alive_and_collided_with_player_bullet() == TRUE)
	mov.w	r0, 1	# tmp188,
	cmp.w	r1, r0	# _1, tmp188
	jnz	.L171		#
# spaceinvaders.c:1208: 		set_ufo_to_explode();
	call	set_ufo_to_explode		#
# spaceinvaders.c:1209: 		calculate_ufo_score();
	call	calculate_ufo_score		#
# spaceinvaders.c:1210: 		delete_player_bullet_and_set_status(READY);
	mov.w	r1, sp	# tmp189,
	xor.w	r0, r0	# tmp190
	st.w	[r1], r0	#, tmp190
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1211: 		return;
	j	.L170		#
.L171:
# spaceinvaders.c:1222: 	for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp191
	st.w	[r13 + (-4)], r0	# i, tmp191
# spaceinvaders.c:1222: 	for(int i = 0; i < 11; i++) {
	j	.L173		#
.L179:
# spaceinvaders.c:1223: 		if(row_5_octopus[i].alive == 2 
	ld.w	r0, [r13 + (-4)]	# tmp192, i
	mov.w	r1, 3	# tmp194,
	shl.w	r0, r1	# tmp193, tmp194
	mov.w	r1, row_5_octopus+6	# tmp196,
	add.w	r0, r1 #222	# tmp195, tmp196
	ld.s	r0, [r0]	# _2, row_5_octopus[i_163].alive
# spaceinvaders.c:1223: 		if(row_5_octopus[i].alive == 2 
	sex.s	r1, r0	# tmp197, _2
	mov.w	r0, 2	# tmp198,
	cmp.w	r1, r0	# tmp197, tmp198
	jnz	.L174		#
# spaceinvaders.c:1224: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.60_3, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _4, player_bullet_def.60_3->x
# spaceinvaders.c:1224: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp199, i
	mov.w	r2, 3	# tmp201,
	shl.w	r0, r2	# tmp200, tmp201
	mov.w	r2, row_5_octopus+2	# tmp203,
	add.w	r0, r2 #222	# tmp202, tmp203
	ld.s	r0, [r0]	# _5, row_5_octopus[i_163].x
# spaceinvaders.c:1224: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	sex.s	r1, r1	# tmp204, _4
	sex.s	r0, r0	# tmp205, _5
	cmp.w	r1, r0	# tmp204, tmp205
	jss	.L174		#
# spaceinvaders.c:1224: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.61_6, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _7, player_bullet_def.61_6->x
	sex.s	r1, r0	# _8, _7
# spaceinvaders.c:1224: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp206, i
	mov.w	r2, 3	# tmp208,
	shl.w	r0, r2	# tmp207, tmp208
	mov.w	r2, row_5_octopus+2	# tmp210,
	add.w	r0, r2 #222	# tmp209, tmp210
	ld.s	r0, [r0]	# _9, row_5_octopus[i_163].x
	sex.s	r0, r0	# _10, _9
# spaceinvaders.c:1224: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	add.w	r0, 11 #111	# _11,
# spaceinvaders.c:1224: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	cmp.w	r1, r0	# _8, _11
	jgs	.L174		#
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.62_12, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _13, player_bullet_def.62_12->y
	sex.s	r1, r0	# _14, _13
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp211, i
	mov.w	r2, 3	# tmp213,
	shl.w	r0, r2	# tmp212, tmp213
	mov.w	r2, row_5_octopus+4	# tmp215,
	add.w	r0, r2 #222	# tmp214, tmp215
	ld.s	r0, [r0]	# _15, row_5_octopus[i_163].y
	sex.s	r0, r0	# _16, _15
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	add.w	r0, 7 #111	# _17,
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	cmp.w	r1, r0	# _14, _17
	jgs	.L174		#
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.63_18, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _19, player_bullet_def.63_18->y
	sex.s	r1, r0	# _20, _19
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp216, i
	mov.w	r2, 3	# tmp218,
	shl.w	r0, r2	# tmp217, tmp218
	mov.w	r2, row_5_octopus+4	# tmp220,
	add.w	r0, r2 #222	# tmp219, tmp220
	ld.s	r0, [r0]	# _21, row_5_octopus[i_163].y
	sex.s	r0, r0	# _22, _21
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	add.w	r0, -2 #111	# _23,
# spaceinvaders.c:1225: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	cmp.w	r1, r0	# _20, _23
	jss	.L174		#
# spaceinvaders.c:1227: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp221, i
	mov.w	r1, 3	# tmp223,
	shl.w	r0, r1	# tmp222, tmp223
	mov.w	r1, row_5_octopus+2	# tmp225,
	add.w	r0, r1 #222	# tmp224, tmp225
	ld.s	r0, [r0]	# _24, row_5_octopus[i_163].x
# spaceinvaders.c:1227: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	sex.s	r1, r0	# _25, _24
# spaceinvaders.c:1227: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp226, i
	mov.w	r2, 3	# tmp228,
	shl.w	r0, r2	# tmp227, tmp228
	mov.w	r2, row_5_octopus+4	# tmp230,
	add.w	r0, r2 #222	# tmp229, tmp230
	ld.s	r0, [r0]	# _26, row_5_octopus[i_163].y
# spaceinvaders.c:1227: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	sex.s	r2, r0	# _27, _26
	mov.w	r0, sp	# tmp231,
	mov.w	r3, 8	# tmp232,
	st.w	[r0 + (12)], r3	#, tmp232
	mov.w	r3, 12	# tmp233,
	st.w	[r0 + (8)], r3	#, tmp233
	st.w	[r0 + (4)], r2	#, _27
	st.w	[r0], r1	#, _25
	call	clear_bitmap_test		#
# spaceinvaders.c:1228: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp234, i
	mov.w	r1, 3	# tmp236,
	shl.w	r0, r1	# tmp235, tmp236
	mov.w	r1, row_5_octopus+2	# tmp238,
	add.w	r0, r1 #222	# tmp237, tmp238
	ld.s	r0, [r0]	# _28, row_5_octopus[i_163].x
# spaceinvaders.c:1228: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	sex.s	r1, r0	# _29, _28
# spaceinvaders.c:1228: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp239, i
	mov.w	r2, 3	# tmp241,
	shl.w	r0, r2	# tmp240, tmp241
	mov.w	r2, row_5_octopus+4	# tmp243,
	add.w	r0, r2 #222	# tmp242, tmp243
	ld.s	r0, [r0]	# _30, row_5_octopus[i_163].y
# spaceinvaders.c:1228: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	sex.s	r2, r0	# _31, _30
	mov.w	r0, sp	# tmp244,
	mov.w	r3, alien_death	# tmp245,
	st.w	[r0 + (16)], r3	#, tmp245
	mov.w	r3, 8	# tmp246,
	st.w	[r0 + (12)], r3	#, tmp246
	mov.w	r3, 16	# tmp247,
	st.w	[r0 + (8)], r3	#, tmp247
	st.w	[r0 + (4)], r2	#, _31
	st.w	[r0], r1	#, _29
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1229: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp248,
	mov.w	r0, 3	# tmp249,
	st.w	[r1], r0	#, tmp249
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1230: 			row_5_octopus[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp250, i
	mov.w	r1, 3	# tmp252,
	shl.w	r0, r1	# tmp251, tmp252
	mov.w	r1, row_5_octopus+6	# tmp254,
	add.w	r0, r1 #222	# tmp253, tmp254
	mov.s	r1, 1	# tmp255,
	st.s	[r0], r1	# row_5_octopus[i_163].alive, tmp255
# spaceinvaders.c:1231: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.64_32, death_timer
	add.w	r0, 4 #111	# _33,
	st.w	[death_timer], r0	# death_timer, _33
# spaceinvaders.c:1232: 			break;
	j	.L170		#
.L174:
# spaceinvaders.c:1234: 		if(row_4_octopus[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp256, i
	mov.w	r1, 3	# tmp258,
	shl.w	r0, r1	# tmp257, tmp258
	mov.w	r1, row_4_octopus+6	# tmp260,
	add.w	r0, r1 #222	# tmp259, tmp260
	ld.s	r0, [r0]	# _34, row_4_octopus[i_163].alive
# spaceinvaders.c:1234: 		if(row_4_octopus[i].alive == 2
	sex.s	r1, r0	# tmp261, _34
	mov.w	r0, 2	# tmp262,
	cmp.w	r1, r0	# tmp261, tmp262
	jnz	.L175		#
# spaceinvaders.c:1235: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.65_35, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _36, player_bullet_def.65_35->x
# spaceinvaders.c:1235: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp263, i
	mov.w	r2, 3	# tmp265,
	shl.w	r0, r2	# tmp264, tmp265
	mov.w	r2, row_4_octopus+2	# tmp267,
	add.w	r0, r2 #222	# tmp266, tmp267
	ld.s	r0, [r0]	# _37, row_4_octopus[i_163].x
# spaceinvaders.c:1235: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	sex.s	r1, r1	# tmp268, _36
	sex.s	r0, r0	# tmp269, _37
	cmp.w	r1, r0	# tmp268, tmp269
	jss	.L175		#
# spaceinvaders.c:1235: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.66_38, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _39, player_bullet_def.66_38->x
	sex.s	r1, r0	# _40, _39
# spaceinvaders.c:1235: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp270, i
	mov.w	r2, 3	# tmp272,
	shl.w	r0, r2	# tmp271, tmp272
	mov.w	r2, row_4_octopus+2	# tmp274,
	add.w	r0, r2 #222	# tmp273, tmp274
	ld.s	r0, [r0]	# _41, row_4_octopus[i_163].x
	sex.s	r0, r0	# _42, _41
# spaceinvaders.c:1235: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	add.w	r0, 11 #111	# _43,
# spaceinvaders.c:1235: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	cmp.w	r1, r0	# _40, _43
	jgs	.L175		#
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.67_44, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _45, player_bullet_def.67_44->y
	sex.s	r1, r0	# _46, _45
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp275, i
	mov.w	r2, 3	# tmp277,
	shl.w	r0, r2	# tmp276, tmp277
	mov.w	r2, row_4_octopus+4	# tmp279,
	add.w	r0, r2 #222	# tmp278, tmp279
	ld.s	r0, [r0]	# _47, row_4_octopus[i_163].y
	sex.s	r0, r0	# _48, _47
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	add.w	r0, 7 #111	# _49,
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	cmp.w	r1, r0	# _46, _49
	jgs	.L175		#
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.68_50, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _51, player_bullet_def.68_50->y
	sex.s	r1, r0	# _52, _51
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp280, i
	mov.w	r2, 3	# tmp282,
	shl.w	r0, r2	# tmp281, tmp282
	mov.w	r2, row_4_octopus+4	# tmp284,
	add.w	r0, r2 #222	# tmp283, tmp284
	ld.s	r0, [r0]	# _53, row_4_octopus[i_163].y
	sex.s	r0, r0	# _54, _53
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	add.w	r0, -2 #111	# _55,
# spaceinvaders.c:1236: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	cmp.w	r1, r0	# _52, _55
	jss	.L175		#
# spaceinvaders.c:1238: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp285, i
	mov.w	r1, 3	# tmp287,
	shl.w	r0, r1	# tmp286, tmp287
	mov.w	r1, row_4_octopus+2	# tmp289,
	add.w	r0, r1 #222	# tmp288, tmp289
	ld.s	r0, [r0]	# _56, row_4_octopus[i_163].x
# spaceinvaders.c:1238: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	sex.s	r1, r0	# _57, _56
# spaceinvaders.c:1238: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp290, i
	mov.w	r2, 3	# tmp292,
	shl.w	r0, r2	# tmp291, tmp292
	mov.w	r2, row_4_octopus+4	# tmp294,
	add.w	r0, r2 #222	# tmp293, tmp294
	ld.s	r0, [r0]	# _58, row_4_octopus[i_163].y
# spaceinvaders.c:1238: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	sex.s	r2, r0	# _59, _58
	mov.w	r0, sp	# tmp295,
	mov.w	r3, 8	# tmp296,
	st.w	[r0 + (12)], r3	#, tmp296
	mov.w	r3, 12	# tmp297,
	st.w	[r0 + (8)], r3	#, tmp297
	st.w	[r0 + (4)], r2	#, _59
	st.w	[r0], r1	#, _57
	call	clear_bitmap_test		#
# spaceinvaders.c:1239: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp298, i
	mov.w	r1, 3	# tmp300,
	shl.w	r0, r1	# tmp299, tmp300
	mov.w	r1, row_4_octopus+2	# tmp302,
	add.w	r0, r1 #222	# tmp301, tmp302
	ld.s	r0, [r0]	# _60, row_4_octopus[i_163].x
# spaceinvaders.c:1239: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	sex.s	r1, r0	# _61, _60
# spaceinvaders.c:1239: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp303, i
	mov.w	r2, 3	# tmp305,
	shl.w	r0, r2	# tmp304, tmp305
	mov.w	r2, row_4_octopus+4	# tmp307,
	add.w	r0, r2 #222	# tmp306, tmp307
	ld.s	r0, [r0]	# _62, row_4_octopus[i_163].y
# spaceinvaders.c:1239: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	sex.s	r2, r0	# _63, _62
	mov.w	r0, sp	# tmp308,
	mov.w	r3, alien_death	# tmp309,
	st.w	[r0 + (16)], r3	#, tmp309
	mov.w	r3, 8	# tmp310,
	st.w	[r0 + (12)], r3	#, tmp310
	mov.w	r3, 16	# tmp311,
	st.w	[r0 + (8)], r3	#, tmp311
	st.w	[r0 + (4)], r2	#, _63
	st.w	[r0], r1	#, _61
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1240: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp312,
	mov.w	r0, 3	# tmp313,
	st.w	[r1], r0	#, tmp313
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1241: 			row_4_octopus[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp314, i
	mov.w	r1, 3	# tmp316,
	shl.w	r0, r1	# tmp315, tmp316
	mov.w	r1, row_4_octopus+6	# tmp318,
	add.w	r0, r1 #222	# tmp317, tmp318
	mov.s	r1, 1	# tmp319,
	st.s	[r0], r1	# row_4_octopus[i_163].alive, tmp319
# spaceinvaders.c:1242: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.69_64, death_timer
	add.w	r0, 4 #111	# _65,
	st.w	[death_timer], r0	# death_timer, _65
# spaceinvaders.c:1243: 			break;
	j	.L170		#
.L175:
# spaceinvaders.c:1245: 		if(row_3_crab[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp320, i
	mov.w	r1, 3	# tmp322,
	shl.w	r0, r1	# tmp321, tmp322
	mov.w	r1, row_3_crab+6	# tmp324,
	add.w	r0, r1 #222	# tmp323, tmp324
	ld.s	r0, [r0]	# _66, row_3_crab[i_163].alive
# spaceinvaders.c:1245: 		if(row_3_crab[i].alive == 2
	sex.s	r1, r0	# tmp325, _66
	mov.w	r0, 2	# tmp326,
	cmp.w	r1, r0	# tmp325, tmp326
	jnz	.L176		#
# spaceinvaders.c:1246: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.70_67, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _68, player_bullet_def.70_67->x
# spaceinvaders.c:1246: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp327, i
	mov.w	r2, 3	# tmp329,
	shl.w	r0, r2	# tmp328, tmp329
	mov.w	r2, row_3_crab+2	# tmp331,
	add.w	r0, r2 #222	# tmp330, tmp331
	ld.s	r0, [r0]	# _69, row_3_crab[i_163].x
# spaceinvaders.c:1246: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	sex.s	r1, r1	# tmp332, _68
	sex.s	r0, r0	# tmp333, _69
	cmp.w	r1, r0	# tmp332, tmp333
	jss	.L176		#
# spaceinvaders.c:1246: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.71_70, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _71, player_bullet_def.71_70->x
	sex.s	r1, r0	# _72, _71
# spaceinvaders.c:1246: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp334, i
	mov.w	r2, 3	# tmp336,
	shl.w	r0, r2	# tmp335, tmp336
	mov.w	r2, row_3_crab+2	# tmp338,
	add.w	r0, r2 #222	# tmp337, tmp338
	ld.s	r0, [r0]	# _73, row_3_crab[i_163].x
	sex.s	r0, r0	# _74, _73
# spaceinvaders.c:1246: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	add.w	r0, 11 #111	# _75,
# spaceinvaders.c:1246: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	cmp.w	r1, r0	# _72, _75
	jgs	.L176		#
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.72_76, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _77, player_bullet_def.72_76->y
	sex.s	r1, r0	# _78, _77
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp339, i
	mov.w	r2, 3	# tmp341,
	shl.w	r0, r2	# tmp340, tmp341
	mov.w	r2, row_3_crab+4	# tmp343,
	add.w	r0, r2 #222	# tmp342, tmp343
	ld.s	r0, [r0]	# _79, row_3_crab[i_163].y
	sex.s	r0, r0	# _80, _79
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	add.w	r0, 7 #111	# _81,
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	cmp.w	r1, r0	# _78, _81
	jgs	.L176		#
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.73_82, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _83, player_bullet_def.73_82->y
	sex.s	r1, r0	# _84, _83
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp344, i
	mov.w	r2, 3	# tmp346,
	shl.w	r0, r2	# tmp345, tmp346
	mov.w	r2, row_3_crab+4	# tmp348,
	add.w	r0, r2 #222	# tmp347, tmp348
	ld.s	r0, [r0]	# _85, row_3_crab[i_163].y
	sex.s	r0, r0	# _86, _85
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	add.w	r0, -2 #111	# _87,
# spaceinvaders.c:1247: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	cmp.w	r1, r0	# _84, _87
	jss	.L176		#
# spaceinvaders.c:1249: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp349, i
	mov.w	r1, 3	# tmp351,
	shl.w	r0, r1	# tmp350, tmp351
	mov.w	r1, row_3_crab+2	# tmp353,
	add.w	r0, r1 #222	# tmp352, tmp353
	ld.s	r0, [r0]	# _88, row_3_crab[i_163].x
# spaceinvaders.c:1249: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	sex.s	r1, r0	# _89, _88
# spaceinvaders.c:1249: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp354, i
	mov.w	r2, 3	# tmp356,
	shl.w	r0, r2	# tmp355, tmp356
	mov.w	r2, row_3_crab+4	# tmp358,
	add.w	r0, r2 #222	# tmp357, tmp358
	ld.s	r0, [r0]	# _90, row_3_crab[i_163].y
# spaceinvaders.c:1249: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	sex.s	r2, r0	# _91, _90
	mov.w	r0, sp	# tmp359,
	mov.w	r3, 8	# tmp360,
	st.w	[r0 + (12)], r3	#, tmp360
	mov.w	r3, 12	# tmp361,
	st.w	[r0 + (8)], r3	#, tmp361
	st.w	[r0 + (4)], r2	#, _91
	st.w	[r0], r1	#, _89
	call	clear_bitmap_test		#
# spaceinvaders.c:1250: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp362, i
	mov.w	r1, 3	# tmp364,
	shl.w	r0, r1	# tmp363, tmp364
	mov.w	r1, row_3_crab+2	# tmp366,
	add.w	r0, r1 #222	# tmp365, tmp366
	ld.s	r0, [r0]	# _92, row_3_crab[i_163].x
# spaceinvaders.c:1250: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	sex.s	r1, r0	# _93, _92
# spaceinvaders.c:1250: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp367, i
	mov.w	r2, 3	# tmp369,
	shl.w	r0, r2	# tmp368, tmp369
	mov.w	r2, row_3_crab+4	# tmp371,
	add.w	r0, r2 #222	# tmp370, tmp371
	ld.s	r0, [r0]	# _94, row_3_crab[i_163].y
# spaceinvaders.c:1250: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	sex.s	r2, r0	# _95, _94
	mov.w	r0, sp	# tmp372,
	mov.w	r3, alien_death	# tmp373,
	st.w	[r0 + (16)], r3	#, tmp373
	mov.w	r3, 8	# tmp374,
	st.w	[r0 + (12)], r3	#, tmp374
	mov.w	r3, 16	# tmp375,
	st.w	[r0 + (8)], r3	#, tmp375
	st.w	[r0 + (4)], r2	#, _95
	st.w	[r0], r1	#, _93
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1251: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp376,
	mov.w	r0, 3	# tmp377,
	st.w	[r1], r0	#, tmp377
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1252: 			row_3_crab[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp378, i
	mov.w	r1, 3	# tmp380,
	shl.w	r0, r1	# tmp379, tmp380
	mov.w	r1, row_3_crab+6	# tmp382,
	add.w	r0, r1 #222	# tmp381, tmp382
	mov.s	r1, 1	# tmp383,
	st.s	[r0], r1	# row_3_crab[i_163].alive, tmp383
# spaceinvaders.c:1253: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.74_96, death_timer
	add.w	r0, 4 #111	# _97,
	st.w	[death_timer], r0	# death_timer, _97
# spaceinvaders.c:1254: 			break;
	j	.L170		#
.L176:
# spaceinvaders.c:1256: 		if(row_2_crab[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp384, i
	mov.w	r1, 3	# tmp386,
	shl.w	r0, r1	# tmp385, tmp386
	mov.w	r1, row_2_crab+6	# tmp388,
	add.w	r0, r1 #222	# tmp387, tmp388
	ld.s	r0, [r0]	# _98, row_2_crab[i_163].alive
# spaceinvaders.c:1256: 		if(row_2_crab[i].alive == 2
	sex.s	r1, r0	# tmp389, _98
	mov.w	r0, 2	# tmp390,
	cmp.w	r1, r0	# tmp389, tmp390
	jnz	.L177		#
# spaceinvaders.c:1257: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.75_99, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _100, player_bullet_def.75_99->x
# spaceinvaders.c:1257: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp391, i
	mov.w	r2, 3	# tmp393,
	shl.w	r0, r2	# tmp392, tmp393
	mov.w	r2, row_2_crab+2	# tmp395,
	add.w	r0, r2 #222	# tmp394, tmp395
	ld.s	r0, [r0]	# _101, row_2_crab[i_163].x
# spaceinvaders.c:1257: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	sex.s	r1, r1	# tmp396, _100
	sex.s	r0, r0	# tmp397, _101
	cmp.w	r1, r0	# tmp396, tmp397
	jss	.L177		#
# spaceinvaders.c:1257: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.76_102, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _103, player_bullet_def.76_102->x
	sex.s	r1, r0	# _104, _103
# spaceinvaders.c:1257: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp398, i
	mov.w	r2, 3	# tmp400,
	shl.w	r0, r2	# tmp399, tmp400
	mov.w	r2, row_2_crab+2	# tmp402,
	add.w	r0, r2 #222	# tmp401, tmp402
	ld.s	r0, [r0]	# _105, row_2_crab[i_163].x
	sex.s	r0, r0	# _106, _105
# spaceinvaders.c:1257: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	add.w	r0, 11 #111	# _107,
# spaceinvaders.c:1257: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	cmp.w	r1, r0	# _104, _107
	jgs	.L177		#
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.77_108, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _109, player_bullet_def.77_108->y
	sex.s	r1, r0	# _110, _109
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp403, i
	mov.w	r2, 3	# tmp405,
	shl.w	r0, r2	# tmp404, tmp405
	mov.w	r2, row_2_crab+4	# tmp407,
	add.w	r0, r2 #222	# tmp406, tmp407
	ld.s	r0, [r0]	# _111, row_2_crab[i_163].y
	sex.s	r0, r0	# _112, _111
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	add.w	r0, 7 #111	# _113,
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	cmp.w	r1, r0	# _110, _113
	jgs	.L177		#
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.78_114, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _115, player_bullet_def.78_114->y
	sex.s	r1, r0	# _116, _115
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp408, i
	mov.w	r2, 3	# tmp410,
	shl.w	r0, r2	# tmp409, tmp410
	mov.w	r2, row_2_crab+4	# tmp412,
	add.w	r0, r2 #222	# tmp411, tmp412
	ld.s	r0, [r0]	# _117, row_2_crab[i_163].y
	sex.s	r0, r0	# _118, _117
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	add.w	r0, -2 #111	# _119,
# spaceinvaders.c:1258: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	cmp.w	r1, r0	# _116, _119
	jss	.L177		#
# spaceinvaders.c:1260: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp413, i
	mov.w	r1, 3	# tmp415,
	shl.w	r0, r1	# tmp414, tmp415
	mov.w	r1, row_2_crab+2	# tmp417,
	add.w	r0, r1 #222	# tmp416, tmp417
	ld.s	r0, [r0]	# _120, row_2_crab[i_163].x
# spaceinvaders.c:1260: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	sex.s	r1, r0	# _121, _120
# spaceinvaders.c:1260: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp418, i
	mov.w	r2, 3	# tmp420,
	shl.w	r0, r2	# tmp419, tmp420
	mov.w	r2, row_2_crab+4	# tmp422,
	add.w	r0, r2 #222	# tmp421, tmp422
	ld.s	r0, [r0]	# _122, row_2_crab[i_163].y
# spaceinvaders.c:1260: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	sex.s	r2, r0	# _123, _122
	mov.w	r0, sp	# tmp423,
	mov.w	r3, 8	# tmp424,
	st.w	[r0 + (12)], r3	#, tmp424
	mov.w	r3, 12	# tmp425,
	st.w	[r0 + (8)], r3	#, tmp425
	st.w	[r0 + (4)], r2	#, _123
	st.w	[r0], r1	#, _121
	call	clear_bitmap_test		#
# spaceinvaders.c:1261: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp426, i
	mov.w	r1, 3	# tmp428,
	shl.w	r0, r1	# tmp427, tmp428
	mov.w	r1, row_2_crab+2	# tmp430,
	add.w	r0, r1 #222	# tmp429, tmp430
	ld.s	r0, [r0]	# _124, row_2_crab[i_163].x
# spaceinvaders.c:1261: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	sex.s	r1, r0	# _125, _124
# spaceinvaders.c:1261: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp431, i
	mov.w	r2, 3	# tmp433,
	shl.w	r0, r2	# tmp432, tmp433
	mov.w	r2, row_2_crab+4	# tmp435,
	add.w	r0, r2 #222	# tmp434, tmp435
	ld.s	r0, [r0]	# _126, row_2_crab[i_163].y
# spaceinvaders.c:1261: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	sex.s	r2, r0	# _127, _126
	mov.w	r0, sp	# tmp436,
	mov.w	r3, alien_death	# tmp437,
	st.w	[r0 + (16)], r3	#, tmp437
	mov.w	r3, 8	# tmp438,
	st.w	[r0 + (12)], r3	#, tmp438
	mov.w	r3, 16	# tmp439,
	st.w	[r0 + (8)], r3	#, tmp439
	st.w	[r0 + (4)], r2	#, _127
	st.w	[r0], r1	#, _125
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1262: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp440,
	mov.w	r0, 3	# tmp441,
	st.w	[r1], r0	#, tmp441
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1263: 			row_2_crab[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp442, i
	mov.w	r1, 3	# tmp444,
	shl.w	r0, r1	# tmp443, tmp444
	mov.w	r1, row_2_crab+6	# tmp446,
	add.w	r0, r1 #222	# tmp445, tmp446
	mov.s	r1, 1	# tmp447,
	st.s	[r0], r1	# row_2_crab[i_163].alive, tmp447
# spaceinvaders.c:1264: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.79_128, death_timer
	add.w	r0, 4 #111	# _129,
	st.w	[death_timer], r0	# death_timer, _129
# spaceinvaders.c:1265: 			break;
	j	.L170		#
.L177:
# spaceinvaders.c:1267: 		if(row_1_squid[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp448, i
	mov.w	r1, 3	# tmp450,
	shl.w	r0, r1	# tmp449, tmp450
	mov.w	r1, row_1_squid+6	# tmp452,
	add.w	r0, r1 #222	# tmp451, tmp452
	ld.s	r0, [r0]	# _130, row_1_squid[i_163].alive
# spaceinvaders.c:1267: 		if(row_1_squid[i].alive == 2
	sex.s	r1, r0	# tmp453, _130
	mov.w	r0, 2	# tmp454,
	cmp.w	r1, r0	# tmp453, tmp454
	jnz	.L178		#
# spaceinvaders.c:1268: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.80_131, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _132, player_bullet_def.80_131->x
# spaceinvaders.c:1268: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp455, i
	mov.w	r2, 3	# tmp457,
	shl.w	r0, r2	# tmp456, tmp457
	mov.w	r2, row_1_squid+2	# tmp459,
	add.w	r0, r2 #222	# tmp458, tmp459
	ld.s	r0, [r0]	# _133, row_1_squid[i_163].x
# spaceinvaders.c:1268: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	sex.s	r1, r1	# tmp460, _132
	sex.s	r0, r0	# tmp461, _133
	cmp.w	r1, r0	# tmp460, tmp461
	jss	.L178		#
# spaceinvaders.c:1268: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.81_134, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _135, player_bullet_def.81_134->x
	sex.s	r1, r0	# _136, _135
# spaceinvaders.c:1268: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp462, i
	mov.w	r2, 3	# tmp464,
	shl.w	r0, r2	# tmp463, tmp464
	mov.w	r2, row_1_squid+2	# tmp466,
	add.w	r0, r2 #222	# tmp465, tmp466
	ld.s	r0, [r0]	# _137, row_1_squid[i_163].x
	sex.s	r0, r0	# _138, _137
# spaceinvaders.c:1268: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	add.w	r0, 11 #111	# _139,
# spaceinvaders.c:1268: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	cmp.w	r1, r0	# _136, _139
	jgs	.L178		#
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.82_140, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _141, player_bullet_def.82_140->y
	sex.s	r1, r0	# _142, _141
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp467, i
	mov.w	r2, 3	# tmp469,
	shl.w	r0, r2	# tmp468, tmp469
	mov.w	r2, row_1_squid+4	# tmp471,
	add.w	r0, r2 #222	# tmp470, tmp471
	ld.s	r0, [r0]	# _143, row_1_squid[i_163].y
	sex.s	r0, r0	# _144, _143
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	add.w	r0, 7 #111	# _145,
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	cmp.w	r1, r0	# _142, _145
	jgs	.L178		#
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.83_146, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _147, player_bullet_def.83_146->y
	sex.s	r1, r0	# _148, _147
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp472, i
	mov.w	r2, 3	# tmp474,
	shl.w	r0, r2	# tmp473, tmp474
	mov.w	r2, row_1_squid+4	# tmp476,
	add.w	r0, r2 #222	# tmp475, tmp476
	ld.s	r0, [r0]	# _149, row_1_squid[i_163].y
	sex.s	r0, r0	# _150, _149
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	add.w	r0, -2 #111	# _151,
# spaceinvaders.c:1269: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	cmp.w	r1, r0	# _148, _151
	jss	.L178		#
# spaceinvaders.c:1271: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	ld.w	r0, [r13 + (-4)]	# tmp477, i
	mov.w	r1, 3	# tmp479,
	shl.w	r0, r1	# tmp478, tmp479
	mov.w	r1, row_1_squid+2	# tmp481,
	add.w	r0, r1 #222	# tmp480, tmp481
	ld.s	r0, [r0]	# _152, row_1_squid[i_163].x
# spaceinvaders.c:1271: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	sex.s	r1, r0	# _153, _152
# spaceinvaders.c:1271: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	ld.w	r0, [r13 + (-4)]	# tmp482, i
	mov.w	r2, 3	# tmp484,
	shl.w	r0, r2	# tmp483, tmp484
	mov.w	r2, row_1_squid+4	# tmp486,
	add.w	r0, r2 #222	# tmp485, tmp486
	ld.s	r0, [r0]	# _154, row_1_squid[i_163].y
# spaceinvaders.c:1271: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	sex.s	r2, r0	# _155, _154
	mov.w	r0, sp	# tmp487,
	mov.w	r3, 8	# tmp488,
	st.w	[r0 + (12)], r3	#, tmp488
	mov.w	r3, 8	# tmp489,
	st.w	[r0 + (8)], r3	#, tmp489
	st.w	[r0 + (4)], r2	#, _155
	st.w	[r0], r1	#, _153
	call	clear_bitmap_test		#
# spaceinvaders.c:1272: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp490, i
	mov.w	r1, 3	# tmp492,
	shl.w	r0, r1	# tmp491, tmp492
	mov.w	r1, row_1_squid+2	# tmp494,
	add.w	r0, r1 #222	# tmp493, tmp494
	ld.s	r0, [r0]	# _156, row_1_squid[i_163].x
	sex.s	r0, r0	# _157, _156
# spaceinvaders.c:1272: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	mov.w	r1, r0	# _158, _157
	add.w	r1, -2 #111	# _158,
# spaceinvaders.c:1272: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp495, i
	mov.w	r2, 3	# tmp497,
	shl.w	r0, r2	# tmp496, tmp497
	mov.w	r2, row_1_squid+4	# tmp499,
	add.w	r0, r2 #222	# tmp498, tmp499
	ld.s	r0, [r0]	# _159, row_1_squid[i_163].y
# spaceinvaders.c:1272: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	sex.s	r2, r0	# _160, _159
	mov.w	r0, sp	# tmp500,
	mov.w	r3, alien_death	# tmp501,
	st.w	[r0 + (16)], r3	#, tmp501
	mov.w	r3, 8	# tmp502,
	st.w	[r0 + (12)], r3	#, tmp502
	mov.w	r3, 16	# tmp503,
	st.w	[r0 + (8)], r3	#, tmp503
	st.w	[r0 + (4)], r2	#, _160
	st.w	[r0], r1	#, _158
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1273: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp504,
	mov.w	r0, 3	# tmp505,
	st.w	[r1], r0	#, tmp505
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1274: 			row_1_squid[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp506, i
	mov.w	r1, 3	# tmp508,
	shl.w	r0, r1	# tmp507, tmp508
	mov.w	r1, row_1_squid+6	# tmp510,
	add.w	r0, r1 #222	# tmp509, tmp510
	mov.s	r1, 1	# tmp511,
	st.s	[r0], r1	# row_1_squid[i_163].alive, tmp511
# spaceinvaders.c:1275: 			death_timer += 4;
	ld.w	r0, [death_timer]	# death_timer.84_161, death_timer
	add.w	r0, 4 #111	# _162,
	st.w	[death_timer], r0	# death_timer, _162
# spaceinvaders.c:1276: 			break;
	j	.L170		#
.L178:
# spaceinvaders.c:1222: 	for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-4)]	# tmp513, i
	add.w	r0, 1 #111	# tmp512,
	st.w	[r13 + (-4)], r0	# i, tmp512
.L173:
# spaceinvaders.c:1222: 	for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-4)]	# tmp514, i
	mov.w	r0, 10	# tmp515,
	cmp.w	r1, r0	# tmp514, tmp515
	jses	.L179		#
.L170:
# spaceinvaders.c:1279: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_player_bullet_collision_with_alien, .-check_player_bullet_collision_with_alien
	.p2align	1
	.global	position_is_not_clear
	.type	position_is_not_clear, @function
position_is_not_clear:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# spaceinvaders.c:1297: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp54, y
	mov.w	r0, r1	# tmp55, tmp54
	mov.w	r2, 2	# tmp57,
	shl.w	r0, r2	# tmp56, tmp57
	add.w	r0, r1 #222	# tmp55, tmp54
	mov.w	r1, 5	# tmp59,
	shl.w	r0, r1	# tmp58, tmp59
	mov.w	r1, r0	# _1, tmp55
# spaceinvaders.c:1297: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp60,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp60
# spaceinvaders.c:1297: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp61, x
	mov.w	r3, 31	# tmp63,
	mov.w	r1, r0	# tmp62, tmp61
	shr.w	r1, r3	# tmp62, tmp63
	mov.w	r3, r1	# tmp64, tmp62
	add.w	r3, r0 #222	# tmp64, tmp61
	mov.w	r1, 1	# tmp66,
	mov.w	r0, r3	# tmp65, tmp64
	shr.w	r0, r1	# tmp65, tmp66
	mov.w	r1, r0	# _3, tmp65
# spaceinvaders.c:1297: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:1297: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-4)], r0	# p1, _4
# spaceinvaders.c:1298: 	switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp67, x
	mov.w	r1, -2147483645	# tmp69,
	and.w	r0, r1	# tmp68, tmp69
	xor.w	r1, r1	# tmp70
	cmp.w	r0, r1	# tmp68, tmp70
	jges	.L181		#
	add.w	r0, -1 #111	# tmp68,
	mov.w	r1, -4	# tmp71,
	or.w	r0, r1	# tmp68, tmp71
	add.w	r0, 1 #111	# tmp68,
.L181:
# spaceinvaders.c:1298: 	switch (x % 4)
	mov.w	r1, 3	# tmp72,
	cmp.w	r0, r1	# _5, tmp72
	jz	.L182		#
	mov.w	r1, 3	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jgs	.L183		#
	mov.w	r1, 2	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jz	.L184		#
	mov.w	r1, 2	# tmp75,
	cmp.w	r0, r1	# _5, tmp75
	jgs	.L183		#
	xor.w	r1, r1	# tmp76
	cmp.w	r0, r1	# _5, tmp76
	jz	.L185		#
	mov.w	r1, 1	# tmp77,
	cmp.w	r0, r1	# _5, tmp77
	jz	.L186		#
	j	.L183		#
.L185:
# spaceinvaders.c:1301: 			if((*p1 & 0x0FFF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp78, p1
	ld.s	r0, [r0]	# _6, *p1_30
# spaceinvaders.c:1301: 			if((*p1 & 0x0FFF) == *p1)
	zex.s	r1, r0	# _8, _7
	mov.w	r0, 4095	# tmp79,
	and.w	r1, r0	# _9, tmp79
# spaceinvaders.c:1301: 			if((*p1 & 0x0FFF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp80, p1
	ld.s	r0, [r0]	# _10, *p1_30
	sex.s	r0, r0	# _11, _10
# spaceinvaders.c:1301: 			if((*p1 & 0x0FFF) == *p1)
	cmp.w	r1, r0	# _9, _11
	jnz	.L192		#
# spaceinvaders.c:1303: 				return 0;
	xor.w	r0, r0	# _27
	j	.L188		#
.L186:
# spaceinvaders.c:1307: 			if((*p1 & 0xF0FF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp81, p1
	ld.s	r0, [r0]	# _12, *p1_30
	sex.s	r1, r0	# _13, _12
# spaceinvaders.c:1307: 			if((*p1 & 0xF0FF) == *p1)
	mov.w	r0, 61695	# tmp82,
	and.w	r1, r0	# _14, tmp82
# spaceinvaders.c:1307: 			if((*p1 & 0xF0FF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp83, p1
	ld.s	r0, [r0]	# _15, *p1_30
	sex.s	r0, r0	# _16, _15
# spaceinvaders.c:1307: 			if((*p1 & 0xF0FF) == *p1)
	cmp.w	r1, r0	# _14, _16
	jnz	.L193		#
# spaceinvaders.c:1309: 				return 0;
	xor.w	r0, r0	# _27
	j	.L188		#
.L184:
# spaceinvaders.c:1313: 			if((*p1 & 0xFF0F) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp84, p1
	ld.s	r0, [r0]	# _17, *p1_30
	sex.s	r1, r0	# _18, _17
# spaceinvaders.c:1313: 			if((*p1 & 0xFF0F) == *p1)
	mov.w	r0, 65295	# tmp85,
	and.w	r1, r0	# _19, tmp85
# spaceinvaders.c:1313: 			if((*p1 & 0xFF0F) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp86, p1
	ld.s	r0, [r0]	# _20, *p1_30
	sex.s	r0, r0	# _21, _20
# spaceinvaders.c:1313: 			if((*p1 & 0xFF0F) == *p1)
	cmp.w	r1, r0	# _19, _21
	jnz	.L194		#
# spaceinvaders.c:1315: 				return 0;
	xor.w	r0, r0	# _27
	j	.L188		#
.L182:
# spaceinvaders.c:1319: 			if((*p1 & 0xFFF0) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp87, p1
	ld.s	r0, [r0]	# _22, *p1_30
	sex.s	r1, r0	# _23, _22
# spaceinvaders.c:1319: 			if((*p1 & 0xFFF0) == *p1)
	mov.w	r0, 65520	# tmp88,
	and.w	r1, r0	# _24, tmp88
# spaceinvaders.c:1319: 			if((*p1 & 0xFFF0) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp89, p1
	ld.s	r0, [r0]	# _25, *p1_30
	sex.s	r0, r0	# _26, _25
# spaceinvaders.c:1319: 			if((*p1 & 0xFFF0) == *p1)
	cmp.w	r1, r0	# _24, _26
	jnz	.L195		#
# spaceinvaders.c:1321: 				return 0;
	xor.w	r0, r0	# _27
	j	.L188		#
.L192:
# spaceinvaders.c:1305: 			break;
	nop	
	j	.L183		#
.L193:
# spaceinvaders.c:1311: 			break;
	nop	
	j	.L183		#
.L194:
# spaceinvaders.c:1317: 			break;
	nop	
	j	.L183		#
.L195:
# spaceinvaders.c:1323: 			break;
	nop	
.L183:
# spaceinvaders.c:1325: 	return 1;
	mov.w	r0, 1	# _27,
.L188:
# spaceinvaders.c:1326: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	position_is_not_clear, .-position_is_not_clear
	.p2align	1
	.global	clear_bitmap_with_specific_shape
	.type	clear_bitmap_with_specific_shape, @function
clear_bitmap_with_specific_shape:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 48 #111	#,
# spaceinvaders.c:1343: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp122, y
	mov.w	r0, r1	# tmp123, tmp122
	mov.w	r2, 2	# tmp125,
	shl.w	r0, r2	# tmp124, tmp125
	add.w	r0, r1 #222	# tmp123, tmp122
	mov.w	r1, 5	# tmp127,
	shl.w	r0, r1	# tmp126, tmp127
	mov.w	r1, r0	# _1, tmp123
# spaceinvaders.c:1343: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp128,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp128
# spaceinvaders.c:1343: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp129, x
	mov.w	r3, 31	# tmp131,
	mov.w	r1, r0	# tmp130, tmp129
	shr.w	r1, r3	# tmp130, tmp131
	mov.w	r3, r1	# tmp132, tmp130
	add.w	r3, r0 #222	# tmp132, tmp129
	mov.w	r1, 1	# tmp134,
	mov.w	r0, r3	# tmp133, tmp132
	shr.w	r0, r1	# tmp133, tmp134
	mov.w	r1, r0	# _3, tmp133
# spaceinvaders.c:1343: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:1343: 	short *p1 = (short *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-20)], r0	# p1, _4
# spaceinvaders.c:1344: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp135
	st.w	[r13 + (-8)], r0	# i, tmp135
# spaceinvaders.c:1344: 	for (int i = 0; i < height; i++)
	j	.L197		#
.L207:
# spaceinvaders.c:1347: 		short *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-8)]	# i.85_5, i
	mov.w	r0, r1	# tmp136, i.85_5
	mov.w	r2, 2	# tmp138,
	shl.w	r0, r2	# tmp137, tmp138
	add.w	r0, r1 #222	# tmp136, i.85_5
	mov.w	r1, 5	# tmp140,
	shl.w	r0, r1	# tmp139, tmp140
	mov.w	r1, r0	# _6, tmp136
# spaceinvaders.c:1347: 		short *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-20)]	# tmp142, p1
	add.w	r0, r1 #222	# tmp141, _6
	st.w	[r13 + (-12)], r0	# p2, tmp141
# spaceinvaders.c:1348: 		int shorts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp144, width
	xor.w	r1, r1	# tmp146
	cmp.w	r0, r1	# tmp145, tmp146
	jges	.L198		#
	add.w	r0, 3 #111	# tmp145,
.L198:
	mov.w	r1, 2	# tmp148,
	shr.w	r0, r1	# tmp147, tmp148
	st.w	[r13 + (-24)], r0	# shorts_per_row, tmp147
# spaceinvaders.c:1349: 		for (int j = 0; j < shorts_per_row; j++) 
	xor.w	r0, r0	# tmp149
	st.w	[r13 + (-16)], r0	# j, tmp149
# spaceinvaders.c:1349: 		for (int j = 0; j < shorts_per_row; j++) 
	j	.L199		#
.L206:
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp150, i
	ld.w	r1, [r13 + (-24)]	# tmp151, shorts_per_row
	mul.w	r0, r1	# _7, tmp151
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r1, [r13 + (-16)]	# tmp152, j
	add.w	r0, r1 #222	# _8, tmp152
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp153, _9
	mov.w	r1, r0	# _10, tmp153
	ld.w	r0, [r13 + (24)]	# tmp154, bitmap
	add.w	r0, r1 #222	# _11, _10
	ld.s	r0, [r0]	# _12, *_11
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	sex.s	r1, r0	# _13, _12
	ld.w	r2, [r13 + (12)]	# tmp155, y
	ld.w	r0, [r13 + (-8)]	# tmp156, i
	add.w	r2, r0 #222	# _14, tmp156
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp157, i
	ld.w	r3, [r13 + (-24)]	# tmp158, shorts_per_row
	mul.w	r0, r3	# _15, tmp158
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	ld.w	r3, [r13 + (-16)]	# tmp159, j
	add.w	r0, r3 #222	# _16, tmp159
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp160, _17
	ld.w	r3, [r13 + (24)]	# tmp161, bitmap
	mov.w	r6, r3	# _19, tmp161
	add.w	r6, r0 #222	# _19, _18
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	mov.w	r0, sp	# tmp162,
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _13
	call	change_short_color_depending_on_threshold		#
# spaceinvaders.c:1351: 			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
	st.s	[r6], r0	# *_19, _20
# spaceinvaders.c:1352: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp163, x
	mov.w	r1, -2147483645	# tmp165,
	and.w	r0, r1	# tmp164, tmp165
	xor.w	r1, r1	# tmp166
	cmp.w	r0, r1	# tmp164, tmp166
	jges	.L200		#
	add.w	r0, -1 #111	# tmp164,
	mov.w	r1, -4	# tmp167,
	or.w	r0, r1	# tmp164, tmp167
	add.w	r0, 1 #111	# tmp164,
.L200:
# spaceinvaders.c:1352: 			switch (x % 4)
	mov.w	r1, 3	# tmp168,
	cmp.w	r0, r1	# _21, tmp168
	jz	.L201		#
	mov.w	r1, 3	# tmp169,
	cmp.w	r0, r1	# _21, tmp169
	jgs	.L202		#
	mov.w	r1, 2	# tmp170,
	cmp.w	r0, r1	# _21, tmp170
	jz	.L203		#
	mov.w	r1, 2	# tmp171,
	cmp.w	r0, r1	# _21, tmp171
	jgs	.L202		#
	xor.w	r1, r1	# tmp172
	cmp.w	r0, r1	# _21, tmp172
	jz	.L204		#
	mov.w	r1, 1	# tmp173,
	cmp.w	r0, r1	# _21, tmp173
	jz	.L205		#
	j	.L202		#
.L204:
# spaceinvaders.c:1355: 					*p2 = bitmap[i*shorts_per_row + j] ^ ((*p2) | bitmap[i*shorts_per_row + j]);
	ld.w	r0, [r13 + (-12)]	# tmp174, p2
	ld.s	r2, [r0]	# _22, *p2_99
# spaceinvaders.c:1355: 					*p2 = bitmap[i*shorts_per_row + j] ^ ((*p2) | bitmap[i*shorts_per_row + j]);
	ld.w	r0, [r13 + (-8)]	# tmp175, i
	ld.w	r1, [r13 + (-24)]	# tmp176, shorts_per_row
	mul.w	r0, r1	# _23, tmp176
# spaceinvaders.c:1355: 					*p2 = bitmap[i*shorts_per_row + j] ^ ((*p2) | bitmap[i*shorts_per_row + j]);
	ld.w	r1, [r13 + (-16)]	# tmp177, j
	add.w	r0, r1 #222	# _24, tmp177
# spaceinvaders.c:1355: 					*p2 = bitmap[i*shorts_per_row + j] ^ ((*p2) | bitmap[i*shorts_per_row + j]);
	add.w	r0, r0 #222	# tmp178, _25
	mov.w	r1, r0	# _26, tmp178
	ld.w	r0, [r13 + (24)]	# tmp179, bitmap
	add.w	r0, r1 #222	# _27, _26
	ld.s	r0, [r0]	# _28, *_27
# spaceinvaders.c:1355: 					*p2 = bitmap[i*shorts_per_row + j] ^ ((*p2) | bitmap[i*shorts_per_row + j]);
	mov.w	r0, r0	# tmp180, _28
inv.w	r0	# tmp180
	mov.w	r1, r0	# _29, tmp180
	mov.w	r0, r2	# tmp181,
	and.w	r0, r1	# tmp181, _29
	mov.w	r1, r0	# _30, tmp181
	ld.w	r0, [r13 + (-12)]	# tmp182, p2
	st.s	[r0], r1	# *p2_99, _30
# spaceinvaders.c:1356: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp184, p2
	add.w	r0, 2 #111	# tmp183,
	st.w	[r13 + (-12)], r0	# p2, tmp183
# spaceinvaders.c:1357: 					break;
	j	.L202		#
.L205:
# spaceinvaders.c:1359: 					first = (bitmap[i*shorts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 4));
	ld.w	r0, [r13 + (-12)]	# tmp185, p2
	ld.s	r2, [r0]	# _31, *p2_99
# spaceinvaders.c:1359: 					first = (bitmap[i*shorts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 4));
	ld.w	r0, [r13 + (-8)]	# tmp186, i
	ld.w	r1, [r13 + (-24)]	# tmp187, shorts_per_row
	mul.w	r0, r1	# _32, tmp187
# spaceinvaders.c:1359: 					first = (bitmap[i*shorts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 4));
	ld.w	r1, [r13 + (-16)]	# tmp188, j
	add.w	r0, r1 #222	# _33, tmp188
# spaceinvaders.c:1359: 					first = (bitmap[i*shorts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 4));
	add.w	r0, r0 #222	# tmp189, _34
	mov.w	r1, r0	# _35, tmp189
	ld.w	r0, [r13 + (24)]	# tmp190, bitmap
	add.w	r0, r1 #222	# _36, _35
	ld.s	r0, [r0]	# _37, *_36
# spaceinvaders.c:1359: 					first = (bitmap[i*shorts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 4));
	sex.s	r0, r0	# tmp191, _37
	mov.w	r1, 4	# tmp193,
	shr.w	r0, r1	# tmp192, tmp193
	mov.w	r0, r0	# tmp194, _38
inv.w	r0	# tmp194
	mov.w	r1, r0	# _39, tmp194
	mov.w	r0, r2	# tmp195,
	and.w	r0, r1	# tmp195, _39
	st.s	[r13 + (-26)], r0	# first, tmp196
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	ld.w	r0, [r13 + (-12)]	# tmp197, p2
	add.w	r0, 2 #111	# _40,
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	ld.s	r2, [r0]	# _41, *_40
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	ld.w	r0, [r13 + (-8)]	# tmp198, i
	ld.w	r1, [r13 + (-24)]	# tmp199, shorts_per_row
	mul.w	r0, r1	# _42, tmp199
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	ld.w	r1, [r13 + (-16)]	# tmp200, j
	add.w	r0, r1 #222	# _43, tmp200
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	add.w	r0, r0 #222	# tmp201, _44
	mov.w	r1, r0	# _45, tmp201
	ld.w	r0, [r13 + (24)]	# tmp202, bitmap
	add.w	r0, r1 #222	# _46, _45
	ld.s	r0, [r0]	# _47, *_46
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	mov.w	r1, 12	# tmp204,
	shl.w	r0, r1	# tmp203, tmp204
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	mov.w	r0, r0	# tmp205, _49
inv.w	r0	# tmp205
	mov.w	r1, r0	# _51, _50
# spaceinvaders.c:1360: 					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
	mov.w	r0, r2	# tmp206,
	and.w	r0, r1	# tmp206, _51
	st.s	[r13 + (-28)], r0	# second, tmp207
# spaceinvaders.c:1361: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp208, p2
	ld.s	r1, [r13 + (-26)]	# tmp209, first
	st.s	[r0], r1	# *p2_99, tmp209
# spaceinvaders.c:1362: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp210, p2
	add.w	r0, 2 #111	# _52,
# spaceinvaders.c:1362: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp211, second
	st.s	[r0], r1	# *_52, tmp211
# spaceinvaders.c:1363: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp213, p2
	add.w	r0, 2 #111	# tmp212,
	st.w	[r13 + (-12)], r0	# p2, tmp212
# spaceinvaders.c:1364: 					break;
	j	.L202		#
.L203:
# spaceinvaders.c:1366: 					first = (bitmap[i*shorts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 8));
	ld.w	r0, [r13 + (-12)]	# tmp214, p2
	ld.s	r2, [r0]	# _53, *p2_99
# spaceinvaders.c:1366: 					first = (bitmap[i*shorts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 8));
	ld.w	r0, [r13 + (-8)]	# tmp215, i
	ld.w	r1, [r13 + (-24)]	# tmp216, shorts_per_row
	mul.w	r0, r1	# _54, tmp216
# spaceinvaders.c:1366: 					first = (bitmap[i*shorts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 8));
	ld.w	r1, [r13 + (-16)]	# tmp217, j
	add.w	r0, r1 #222	# _55, tmp217
# spaceinvaders.c:1366: 					first = (bitmap[i*shorts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 8));
	add.w	r0, r0 #222	# tmp218, _56
	mov.w	r1, r0	# _57, tmp218
	ld.w	r0, [r13 + (24)]	# tmp219, bitmap
	add.w	r0, r1 #222	# _58, _57
	ld.s	r0, [r0]	# _59, *_58
# spaceinvaders.c:1366: 					first = (bitmap[i*shorts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 8));
	sex.s	r0, r0	# tmp220, _59
	mov.w	r1, 8	# tmp222,
	shr.w	r0, r1	# tmp221, tmp222
	mov.w	r0, r0	# tmp223, _60
inv.w	r0	# tmp223
	mov.w	r1, r0	# _61, tmp223
	mov.w	r0, r2	# tmp224,
	and.w	r0, r1	# tmp224, _61
	st.s	[r13 + (-26)], r0	# first, tmp225
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	ld.w	r0, [r13 + (-12)]	# tmp226, p2
	add.w	r0, 2 #111	# _62,
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	ld.s	r2, [r0]	# _63, *_62
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	ld.w	r0, [r13 + (-8)]	# tmp227, i
	ld.w	r1, [r13 + (-24)]	# tmp228, shorts_per_row
	mul.w	r0, r1	# _64, tmp228
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	ld.w	r1, [r13 + (-16)]	# tmp229, j
	add.w	r0, r1 #222	# _65, tmp229
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	add.w	r0, r0 #222	# tmp230, _66
	mov.w	r1, r0	# _67, tmp230
	ld.w	r0, [r13 + (24)]	# tmp231, bitmap
	add.w	r0, r1 #222	# _68, _67
	ld.s	r0, [r0]	# _69, *_68
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	mov.w	r1, 8	# tmp233,
	shl.w	r0, r1	# tmp232, tmp233
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	mov.w	r0, r0	# tmp234, _71
inv.w	r0	# tmp234
	mov.w	r1, r0	# _73, _72
# spaceinvaders.c:1367: 					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
	mov.w	r0, r2	# tmp235,
	and.w	r0, r1	# tmp235, _73
	st.s	[r13 + (-28)], r0	# second, tmp236
# spaceinvaders.c:1368: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp237, p2
	ld.s	r1, [r13 + (-26)]	# tmp238, first
	st.s	[r0], r1	# *p2_99, tmp238
# spaceinvaders.c:1369: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp239, p2
	add.w	r0, 2 #111	# _74,
# spaceinvaders.c:1369: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp240, second
	st.s	[r0], r1	# *_74, tmp240
# spaceinvaders.c:1370: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp242, p2
	add.w	r0, 2 #111	# tmp241,
	st.w	[r13 + (-12)], r0	# p2, tmp241
# spaceinvaders.c:1371: 					break;
	j	.L202		#
.L201:
# spaceinvaders.c:1373: 					first = (bitmap[i*shorts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 12));
	ld.w	r0, [r13 + (-12)]	# tmp243, p2
	ld.s	r2, [r0]	# _75, *p2_99
# spaceinvaders.c:1373: 					first = (bitmap[i*shorts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 12));
	ld.w	r0, [r13 + (-8)]	# tmp244, i
	ld.w	r1, [r13 + (-24)]	# tmp245, shorts_per_row
	mul.w	r0, r1	# _76, tmp245
# spaceinvaders.c:1373: 					first = (bitmap[i*shorts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 12));
	ld.w	r1, [r13 + (-16)]	# tmp246, j
	add.w	r0, r1 #222	# _77, tmp246
# spaceinvaders.c:1373: 					first = (bitmap[i*shorts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 12));
	add.w	r0, r0 #222	# tmp247, _78
	mov.w	r1, r0	# _79, tmp247
	ld.w	r0, [r13 + (24)]	# tmp248, bitmap
	add.w	r0, r1 #222	# _80, _79
	ld.s	r0, [r0]	# _81, *_80
# spaceinvaders.c:1373: 					first = (bitmap[i*shorts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 12));
	sex.s	r0, r0	# tmp249, _81
	mov.w	r1, 12	# tmp251,
	shr.w	r0, r1	# tmp250, tmp251
	mov.w	r0, r0	# tmp252, _82
inv.w	r0	# tmp252
	mov.w	r1, r0	# _83, tmp252
	mov.w	r0, r2	# tmp253,
	and.w	r0, r1	# tmp253, _83
	st.s	[r13 + (-26)], r0	# first, tmp254
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	ld.w	r0, [r13 + (-12)]	# tmp255, p2
	add.w	r0, 2 #111	# _84,
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	ld.s	r2, [r0]	# _85, *_84
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	ld.w	r0, [r13 + (-8)]	# tmp256, i
	ld.w	r1, [r13 + (-24)]	# tmp257, shorts_per_row
	mul.w	r0, r1	# _86, tmp257
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	ld.w	r1, [r13 + (-16)]	# tmp258, j
	add.w	r0, r1 #222	# _87, tmp258
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	add.w	r0, r0 #222	# tmp259, _88
	mov.w	r1, r0	# _89, tmp259
	ld.w	r0, [r13 + (24)]	# tmp260, bitmap
	add.w	r0, r1 #222	# _90, _89
	ld.s	r0, [r0]	# _91, *_90
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	mov.w	r1, 4	# tmp262,
	shl.w	r0, r1	# tmp261, tmp262
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	mov.w	r0, r0	# tmp263, _93
inv.w	r0	# tmp263
	mov.w	r1, r0	# _95, _94
# spaceinvaders.c:1374: 					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
	mov.w	r0, r2	# tmp264,
	and.w	r0, r1	# tmp264, _95
	st.s	[r13 + (-28)], r0	# second, tmp265
# spaceinvaders.c:1375: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp266, p2
	ld.s	r1, [r13 + (-26)]	# tmp267, first
	st.s	[r0], r1	# *p2_99, tmp267
# spaceinvaders.c:1376: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp268, p2
	add.w	r0, 2 #111	# _96,
# spaceinvaders.c:1376: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp269, second
	st.s	[r0], r1	# *_96, tmp269
# spaceinvaders.c:1377: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp271, p2
	add.w	r0, 2 #111	# tmp270,
	st.w	[r13 + (-12)], r0	# p2, tmp270
# spaceinvaders.c:1378: 					break;
	nop	
.L202:
# spaceinvaders.c:1349: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r0, [r13 + (-16)]	# tmp273, j
	add.w	r0, 1 #111	# tmp272,
	st.w	[r13 + (-16)], r0	# j, tmp272
.L199:
# spaceinvaders.c:1349: 		for (int j = 0; j < shorts_per_row; j++) 
	ld.w	r1, [r13 + (-16)]	# tmp274, j
	ld.w	r0, [r13 + (-24)]	# tmp275, shorts_per_row
	cmp.w	r1, r0	# tmp274, tmp275
	jss	.L206		#
# spaceinvaders.c:1344: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-8)]	# tmp277, i
	add.w	r0, 1 #111	# tmp276,
	st.w	[r13 + (-8)], r0	# i, tmp276
.L197:
# spaceinvaders.c:1344: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-8)]	# tmp278, i
	ld.w	r0, [r13 + (20)]	# tmp279, height
	cmp.w	r1, r0	# tmp278, tmp279
	jss	.L207		#
# spaceinvaders.c:1382: }
	nop	
	nop	
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clear_bitmap_with_specific_shape, .-clear_bitmap_with_specific_shape
	.p2align	1
	.global	check_player_bullet_collision_with_base
	.type	check_player_bullet_collision_with_base, @function
check_player_bullet_collision_with_base:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1396: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.86_1, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _2, player_bullet_def.86_1->x
# spaceinvaders.c:1396: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	sex.s	r1, r0	# _3, _2
# spaceinvaders.c:1396: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.87_4, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _5, player_bullet_def.87_4->y
# spaceinvaders.c:1396: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	sex.s	r2, r0	# _6, _5
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (4)], r2	#, _6
	st.w	[r0], r1	#, _3
	call	position_is_not_clear		#
	mov.w	r1, r0	# _7,
# spaceinvaders.c:1396: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# _7, tmp50
	jnz	.L209		#
# spaceinvaders.c:1397: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.88_8, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _9, player_bullet_def.88_8->x
# spaceinvaders.c:1397: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	sex.s	r1, r0	# _10, _9
# spaceinvaders.c:1397: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.89_11, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _12, player_bullet_def.89_11->y
	sex.s	r0, r0	# _13, _12
# spaceinvaders.c:1397: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	mov.w	r2, r0	# _14, _13
	add.w	r2, 1 #111	# _14,
	mov.w	r0, sp	# tmp51,
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _10
	call	position_is_not_clear		#
	mov.w	r1, r0	# _15,
# spaceinvaders.c:1397: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# _15, tmp52
	jnz	.L209		#
# spaceinvaders.c:1398: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.90_16, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _17, player_bullet_def.90_16->x
# spaceinvaders.c:1398: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	sex.s	r1, r0	# _18, _17
# spaceinvaders.c:1398: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.91_19, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _20, player_bullet_def.91_19->y
	sex.s	r0, r0	# _21, _20
# spaceinvaders.c:1398: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	mov.w	r2, r0	# _22, _21
	add.w	r2, 2 #111	# _22,
	mov.w	r0, sp	# tmp53,
	st.w	[r0 + (4)], r2	#, _22
	st.w	[r0], r1	#, _18
	call	position_is_not_clear		#
	mov.w	r1, r0	# _23,
# spaceinvaders.c:1398: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# _23, tmp54
	jz	.L211		#
.L209:
# spaceinvaders.c:1400: 		set_player_bullet_to_explode();
	call	set_player_bullet_to_explode		#
.L211:
# spaceinvaders.c:1402: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_player_bullet_collision_with_base, .-check_player_bullet_collision_with_base
	.p2align	1
	.global	set_alien_bullet_to_explode
	.type	set_alien_bullet_to_explode, @function
set_alien_bullet_to_explode:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1406: 	alien_bullet[alien_bullet_index].status = EXPLODING;
	ld.w	r1, [r13 + (8)]	# tmp26, alien_bullet_index
	mov.w	r0, r1	# tmp27, tmp26
	mov.w	r2, 3	# tmp29,
	shl.w	r0, r2	# tmp28, tmp29
	add.w	r0, r1 #222	# tmp27, tmp26
	mov.w	r1, 2	# tmp31,
	shl.w	r0, r1	# tmp30, tmp31
	mov.w	r1, alien_bullet+20	# tmp33,
	add.w	r0, r1 #222	# tmp32, tmp33
	mov.w	r1, 1	# tmp34,
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_2(D)].status, tmp34
# spaceinvaders.c:1407: 	alien_bullet[alien_bullet_index].timer_for_destroy = 150;
	ld.w	r1, [r13 + (8)]	# tmp35, alien_bullet_index
	mov.w	r0, r1	# tmp36, tmp35
	mov.w	r2, 3	# tmp38,
	shl.w	r0, r2	# tmp37, tmp38
	add.w	r0, r1 #222	# tmp36, tmp35
	mov.w	r1, 2	# tmp40,
	shl.w	r0, r1	# tmp39, tmp40
	mov.w	r1, alien_bullet+32	# tmp42,
	add.w	r0, r1 #222	# tmp41, tmp42
	mov.w	r1, 150	# tmp43,
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_2(D)].timer_for_destroy, tmp43
# spaceinvaders.c:1408: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_alien_bullet_to_explode, .-set_alien_bullet_to_explode
	.p2align	1
	.global	destroy_player
	.type	destroy_player, @function
destroy_player:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1412: 	player_alive = 1;
	mov.w	r0, 1	# tmp33,
	st.w	[player_alive], r0	# player_alive, tmp33
# spaceinvaders.c:1413: 	player_death_timer = 0;
	xor.w	r0, r0	# tmp34
	st.w	[player_death_timer], r0	# player_death_timer, tmp34
# spaceinvaders.c:1414: 	player_ship->addr = 0;
	ld.w	r0, [player_ship]	# player_ship.92_1, player_ship
# spaceinvaders.c:1414: 	player_ship->addr = 0;
	xor.w	r1, r1	# tmp35
	st.s	[r0], r1	# player_ship.92_1->addr, tmp35
# spaceinvaders.c:1415: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.93_2, player_ship
	ld.s	r0, [r0 + (2)]	# _3, player_ship.93_2->x
# spaceinvaders.c:1415: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	sex.s	r1, r0	# _4, _3
# spaceinvaders.c:1415: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.94_5, player_ship
	ld.s	r0, [r0 + (4)]	# _6, player_ship.94_5->y
# spaceinvaders.c:1415: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	sex.s	r2, r0	# _7, _6
	mov.w	r0, sp	# tmp36,
	mov.w	r3, ship_explosion0	# tmp37,
	st.w	[r0 + (16)], r3	#, tmp37
	mov.w	r3, 8	# tmp38,
	st.w	[r0 + (12)], r3	#, tmp38
	mov.w	r3, 16	# tmp39,
	st.w	[r0 + (8)], r3	#, tmp39
	st.w	[r0 + (4)], r2	#, _7
	st.w	[r0], r1	#, _4
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1416: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	destroy_player, .-destroy_player
	.p2align	1
	.global	clear_current_alien_bullet_sprite
	.type	clear_current_alien_bullet_sprite, @function
clear_current_alien_bullet_sprite:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1425: 	if(alien_bullet[alien_bullet_index].type == 0)
	ld.w	r1, [r13 + (8)]	# tmp55, alien_bullet_index
	mov.w	r0, r1	# tmp56, tmp55
	mov.w	r2, 3	# tmp58,
	shl.w	r0, r2	# tmp57, tmp58
	add.w	r0, r1 #222	# tmp56, tmp55
	mov.w	r1, 2	# tmp60,
	shl.w	r0, r1	# tmp59, tmp60
	mov.w	r1, alien_bullet+12	# tmp62,
	add.w	r0, r1 #222	# tmp61, tmp62
	ld.w	r1, [r0]	# _1, alien_bullet[alien_bullet_index_34(D)].type
# spaceinvaders.c:1425: 	if(alien_bullet[alien_bullet_index].type == 0)
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# _1, tmp63
	jnz	.L215		#
# spaceinvaders.c:1427: 		switch(alien_bullet[alien_bullet_index].sprite)
	ld.w	r1, [r13 + (8)]	# tmp64, alien_bullet_index
	mov.w	r0, r1	# tmp65, tmp64
	mov.w	r2, 3	# tmp67,
	shl.w	r0, r2	# tmp66, tmp67
	add.w	r0, r1 #222	# tmp65, tmp64
	mov.w	r1, 2	# tmp69,
	shl.w	r0, r1	# tmp68, tmp69
	mov.w	r1, alien_bullet+16	# tmp71,
	add.w	r0, r1 #222	# tmp70, tmp71
	ld.w	r0, [r0]	# _2, alien_bullet[alien_bullet_index_34(D)].sprite
# spaceinvaders.c:1427: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp72,
	cmp.w	r0, r1	# _2, tmp72
	jz	.L216		#
	mov.w	r1, 2	# tmp73,
	cmp.w	r0, r1	# _2, tmp73
	jgs	.L217		#
	xor.w	r1, r1	# tmp74
	cmp.w	r0, r1	# _2, tmp74
	jz	.L218		#
	mov.w	r1, 1	# tmp75,
	cmp.w	r0, r1	# _2, tmp75
	jz	.L219		#
	j	.L217		#
.L218:
# spaceinvaders.c:1430: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp76, alien_bullet_index
	mov.w	r0, r1	# tmp77, tmp76
	mov.w	r2, 3	# tmp79,
	shl.w	r0, r2	# tmp78, tmp79
	add.w	r0, r1 #222	# tmp77, tmp76
	mov.w	r1, 2	# tmp81,
	shl.w	r0, r1	# tmp80, tmp81
	mov.w	r1, alien_bullet	# tmp83,
	add.w	r0, r1 #222	# tmp82, tmp83
	ld.w	r2, [r0]	# _3, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp84, alien_bullet_index
	mov.w	r0, r1	# tmp85, tmp84
	mov.w	r3, 3	# tmp87,
	shl.w	r0, r3	# tmp86, tmp87
	add.w	r0, r1 #222	# tmp85, tmp84
	mov.w	r1, 2	# tmp89,
	shl.w	r0, r1	# tmp88, tmp89
	mov.w	r1, alien_bullet+4	# tmp91,
	add.w	r0, r1 #222	# tmp90, tmp91
	ld.w	r1, [r0]	# _4, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp92,
	mov.w	r3, alien_bullet0_sprite0	# tmp93,
	st.w	[r0 + (16)], r3	#, tmp93
	mov.w	r3, 8	# tmp94,
	st.w	[r0 + (12)], r3	#, tmp94
	mov.w	r3, 8	# tmp95,
	st.w	[r0 + (8)], r3	#, tmp95
	st.w	[r0 + (4)], r1	#, _4
	st.w	[r0], r2	#, _3
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1431: 			break;
	j	.L221		#
.L219:
# spaceinvaders.c:1433: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp96, alien_bullet_index
	mov.w	r0, r1	# tmp97, tmp96
	mov.w	r2, 3	# tmp99,
	shl.w	r0, r2	# tmp98, tmp99
	add.w	r0, r1 #222	# tmp97, tmp96
	mov.w	r1, 2	# tmp101,
	shl.w	r0, r1	# tmp100, tmp101
	mov.w	r1, alien_bullet	# tmp103,
	add.w	r0, r1 #222	# tmp102, tmp103
	ld.w	r2, [r0]	# _5, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp104, alien_bullet_index
	mov.w	r0, r1	# tmp105, tmp104
	mov.w	r3, 3	# tmp107,
	shl.w	r0, r3	# tmp106, tmp107
	add.w	r0, r1 #222	# tmp105, tmp104
	mov.w	r1, 2	# tmp109,
	shl.w	r0, r1	# tmp108, tmp109
	mov.w	r1, alien_bullet+4	# tmp111,
	add.w	r0, r1 #222	# tmp110, tmp111
	ld.w	r1, [r0]	# _6, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp112,
	mov.w	r3, alien_bullet0_sprite1	# tmp113,
	st.w	[r0 + (16)], r3	#, tmp113
	mov.w	r3, 8	# tmp114,
	st.w	[r0 + (12)], r3	#, tmp114
	mov.w	r3, 8	# tmp115,
	st.w	[r0 + (8)], r3	#, tmp115
	st.w	[r0 + (4)], r1	#, _6
	st.w	[r0], r2	#, _5
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1434: 			break;
	j	.L221		#
.L216:
# spaceinvaders.c:1436: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
	ld.w	r1, [r13 + (8)]	# tmp116, alien_bullet_index
	mov.w	r0, r1	# tmp117, tmp116
	mov.w	r2, 3	# tmp119,
	shl.w	r0, r2	# tmp118, tmp119
	add.w	r0, r1 #222	# tmp117, tmp116
	mov.w	r1, 2	# tmp121,
	shl.w	r0, r1	# tmp120, tmp121
	mov.w	r1, alien_bullet	# tmp123,
	add.w	r0, r1 #222	# tmp122, tmp123
	ld.w	r2, [r0]	# _7, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp124, alien_bullet_index
	mov.w	r0, r1	# tmp125, tmp124
	mov.w	r3, 3	# tmp127,
	shl.w	r0, r3	# tmp126, tmp127
	add.w	r0, r1 #222	# tmp125, tmp124
	mov.w	r1, 2	# tmp129,
	shl.w	r0, r1	# tmp128, tmp129
	mov.w	r1, alien_bullet+4	# tmp131,
	add.w	r0, r1 #222	# tmp130, tmp131
	ld.w	r1, [r0]	# _8, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp132,
	mov.w	r3, alien_bullet0_sprite2	# tmp133,
	st.w	[r0 + (16)], r3	#, tmp133
	mov.w	r3, 8	# tmp134,
	st.w	[r0 + (12)], r3	#, tmp134
	mov.w	r3, 8	# tmp135,
	st.w	[r0 + (8)], r3	#, tmp135
	st.w	[r0 + (4)], r1	#, _8
	st.w	[r0], r2	#, _7
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1437: 			break;
	j	.L221		#
.L217:
# spaceinvaders.c:1439: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
	ld.w	r1, [r13 + (8)]	# tmp136, alien_bullet_index
	mov.w	r0, r1	# tmp137, tmp136
	mov.w	r2, 3	# tmp139,
	shl.w	r0, r2	# tmp138, tmp139
	add.w	r0, r1 #222	# tmp137, tmp136
	mov.w	r1, 2	# tmp141,
	shl.w	r0, r1	# tmp140, tmp141
	mov.w	r1, alien_bullet	# tmp143,
	add.w	r0, r1 #222	# tmp142, tmp143
	ld.w	r2, [r0]	# _9, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp144, alien_bullet_index
	mov.w	r0, r1	# tmp145, tmp144
	mov.w	r3, 3	# tmp147,
	shl.w	r0, r3	# tmp146, tmp147
	add.w	r0, r1 #222	# tmp145, tmp144
	mov.w	r1, 2	# tmp149,
	shl.w	r0, r1	# tmp148, tmp149
	mov.w	r1, alien_bullet+4	# tmp151,
	add.w	r0, r1 #222	# tmp150, tmp151
	ld.w	r1, [r0]	# _10, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp152,
	mov.w	r3, alien_bullet0_sprite3	# tmp153,
	st.w	[r0 + (16)], r3	#, tmp153
	mov.w	r3, 8	# tmp154,
	st.w	[r0 + (12)], r3	#, tmp154
	mov.w	r3, 8	# tmp155,
	st.w	[r0 + (8)], r3	#, tmp155
	st.w	[r0 + (4)], r1	#, _10
	st.w	[r0], r2	#, _9
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1440: 			break;	
	j	.L221		#
.L215:
# spaceinvaders.c:1443: 	else if (alien_bullet[alien_bullet_index].type == 1)
	ld.w	r1, [r13 + (8)]	# tmp156, alien_bullet_index
	mov.w	r0, r1	# tmp157, tmp156
	mov.w	r2, 3	# tmp159,
	shl.w	r0, r2	# tmp158, tmp159
	add.w	r0, r1 #222	# tmp157, tmp156
	mov.w	r1, 2	# tmp161,
	shl.w	r0, r1	# tmp160, tmp161
	mov.w	r1, alien_bullet+12	# tmp163,
	add.w	r0, r1 #222	# tmp162, tmp163
	ld.w	r1, [r0]	# _11, alien_bullet[alien_bullet_index_34(D)].type
# spaceinvaders.c:1443: 	else if (alien_bullet[alien_bullet_index].type == 1)
	mov.w	r0, 1	# tmp164,
	cmp.w	r1, r0	# _11, tmp164
	jnz	.L222		#
# spaceinvaders.c:1445: 		switch(alien_bullet[alien_bullet_index].sprite)
	ld.w	r1, [r13 + (8)]	# tmp165, alien_bullet_index
	mov.w	r0, r1	# tmp166, tmp165
	mov.w	r2, 3	# tmp168,
	shl.w	r0, r2	# tmp167, tmp168
	add.w	r0, r1 #222	# tmp166, tmp165
	mov.w	r1, 2	# tmp170,
	shl.w	r0, r1	# tmp169, tmp170
	mov.w	r1, alien_bullet+16	# tmp172,
	add.w	r0, r1 #222	# tmp171, tmp172
	ld.w	r0, [r0]	# _12, alien_bullet[alien_bullet_index_34(D)].sprite
# spaceinvaders.c:1445: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp173,
	cmp.w	r0, r1	# _12, tmp173
	jz	.L223		#
	mov.w	r1, 2	# tmp174,
	cmp.w	r0, r1	# _12, tmp174
	jgs	.L224		#
	xor.w	r1, r1	# tmp175
	cmp.w	r0, r1	# _12, tmp175
	jz	.L225		#
	mov.w	r1, 1	# tmp176,
	cmp.w	r0, r1	# _12, tmp176
	jz	.L226		#
	j	.L224		#
.L225:
# spaceinvaders.c:1448: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp177, alien_bullet_index
	mov.w	r0, r1	# tmp178, tmp177
	mov.w	r2, 3	# tmp180,
	shl.w	r0, r2	# tmp179, tmp180
	add.w	r0, r1 #222	# tmp178, tmp177
	mov.w	r1, 2	# tmp182,
	shl.w	r0, r1	# tmp181, tmp182
	mov.w	r1, alien_bullet	# tmp184,
	add.w	r0, r1 #222	# tmp183, tmp184
	ld.w	r2, [r0]	# _13, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp185, alien_bullet_index
	mov.w	r0, r1	# tmp186, tmp185
	mov.w	r3, 3	# tmp188,
	shl.w	r0, r3	# tmp187, tmp188
	add.w	r0, r1 #222	# tmp186, tmp185
	mov.w	r1, 2	# tmp190,
	shl.w	r0, r1	# tmp189, tmp190
	mov.w	r1, alien_bullet+4	# tmp192,
	add.w	r0, r1 #222	# tmp191, tmp192
	ld.w	r1, [r0]	# _14, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp193,
	mov.w	r3, alien_bullet1_sprite0	# tmp194,
	st.w	[r0 + (16)], r3	#, tmp194
	mov.w	r3, 8	# tmp195,
	st.w	[r0 + (12)], r3	#, tmp195
	mov.w	r3, 8	# tmp196,
	st.w	[r0 + (8)], r3	#, tmp196
	st.w	[r0 + (4)], r1	#, _14
	st.w	[r0], r2	#, _13
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1449: 			break;
	j	.L221		#
.L226:
# spaceinvaders.c:1451: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp197, alien_bullet_index
	mov.w	r0, r1	# tmp198, tmp197
	mov.w	r2, 3	# tmp200,
	shl.w	r0, r2	# tmp199, tmp200
	add.w	r0, r1 #222	# tmp198, tmp197
	mov.w	r1, 2	# tmp202,
	shl.w	r0, r1	# tmp201, tmp202
	mov.w	r1, alien_bullet	# tmp204,
	add.w	r0, r1 #222	# tmp203, tmp204
	ld.w	r2, [r0]	# _15, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp205, alien_bullet_index
	mov.w	r0, r1	# tmp206, tmp205
	mov.w	r3, 3	# tmp208,
	shl.w	r0, r3	# tmp207, tmp208
	add.w	r0, r1 #222	# tmp206, tmp205
	mov.w	r1, 2	# tmp210,
	shl.w	r0, r1	# tmp209, tmp210
	mov.w	r1, alien_bullet+4	# tmp212,
	add.w	r0, r1 #222	# tmp211, tmp212
	ld.w	r1, [r0]	# _16, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp213,
	mov.w	r3, alien_bullet1_sprite1	# tmp214,
	st.w	[r0 + (16)], r3	#, tmp214
	mov.w	r3, 8	# tmp215,
	st.w	[r0 + (12)], r3	#, tmp215
	mov.w	r3, 8	# tmp216,
	st.w	[r0 + (8)], r3	#, tmp216
	st.w	[r0 + (4)], r1	#, _16
	st.w	[r0], r2	#, _15
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1452: 			break;
	j	.L221		#
.L223:
# spaceinvaders.c:1454: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
	ld.w	r1, [r13 + (8)]	# tmp217, alien_bullet_index
	mov.w	r0, r1	# tmp218, tmp217
	mov.w	r2, 3	# tmp220,
	shl.w	r0, r2	# tmp219, tmp220
	add.w	r0, r1 #222	# tmp218, tmp217
	mov.w	r1, 2	# tmp222,
	shl.w	r0, r1	# tmp221, tmp222
	mov.w	r1, alien_bullet	# tmp224,
	add.w	r0, r1 #222	# tmp223, tmp224
	ld.w	r2, [r0]	# _17, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp225, alien_bullet_index
	mov.w	r0, r1	# tmp226, tmp225
	mov.w	r3, 3	# tmp228,
	shl.w	r0, r3	# tmp227, tmp228
	add.w	r0, r1 #222	# tmp226, tmp225
	mov.w	r1, 2	# tmp230,
	shl.w	r0, r1	# tmp229, tmp230
	mov.w	r1, alien_bullet+4	# tmp232,
	add.w	r0, r1 #222	# tmp231, tmp232
	ld.w	r1, [r0]	# _18, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp233,
	mov.w	r3, alien_bullet1_sprite2	# tmp234,
	st.w	[r0 + (16)], r3	#, tmp234
	mov.w	r3, 8	# tmp235,
	st.w	[r0 + (12)], r3	#, tmp235
	mov.w	r3, 8	# tmp236,
	st.w	[r0 + (8)], r3	#, tmp236
	st.w	[r0 + (4)], r1	#, _18
	st.w	[r0], r2	#, _17
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1455: 			break;
	j	.L221		#
.L224:
# spaceinvaders.c:1457: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp237, alien_bullet_index
	mov.w	r0, r1	# tmp238, tmp237
	mov.w	r2, 3	# tmp240,
	shl.w	r0, r2	# tmp239, tmp240
	add.w	r0, r1 #222	# tmp238, tmp237
	mov.w	r1, 2	# tmp242,
	shl.w	r0, r1	# tmp241, tmp242
	mov.w	r1, alien_bullet	# tmp244,
	add.w	r0, r1 #222	# tmp243, tmp244
	ld.w	r2, [r0]	# _19, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp245, alien_bullet_index
	mov.w	r0, r1	# tmp246, tmp245
	mov.w	r3, 3	# tmp248,
	shl.w	r0, r3	# tmp247, tmp248
	add.w	r0, r1 #222	# tmp246, tmp245
	mov.w	r1, 2	# tmp250,
	shl.w	r0, r1	# tmp249, tmp250
	mov.w	r1, alien_bullet+4	# tmp252,
	add.w	r0, r1 #222	# tmp251, tmp252
	ld.w	r1, [r0]	# _20, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp253,
	mov.w	r3, alien_bullet1_sprite1	# tmp254,
	st.w	[r0 + (16)], r3	#, tmp254
	mov.w	r3, 8	# tmp255,
	st.w	[r0 + (12)], r3	#, tmp255
	mov.w	r3, 8	# tmp256,
	st.w	[r0 + (8)], r3	#, tmp256
	st.w	[r0 + (4)], r1	#, _20
	st.w	[r0], r2	#, _19
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1458: 			break;	
	j	.L221		#
.L222:
# spaceinvaders.c:1463: 		switch(alien_bullet[alien_bullet_index].sprite)
	ld.w	r1, [r13 + (8)]	# tmp257, alien_bullet_index
	mov.w	r0, r1	# tmp258, tmp257
	mov.w	r2, 3	# tmp260,
	shl.w	r0, r2	# tmp259, tmp260
	add.w	r0, r1 #222	# tmp258, tmp257
	mov.w	r1, 2	# tmp262,
	shl.w	r0, r1	# tmp261, tmp262
	mov.w	r1, alien_bullet+16	# tmp264,
	add.w	r0, r1 #222	# tmp263, tmp264
	ld.w	r0, [r0]	# _21, alien_bullet[alien_bullet_index_34(D)].sprite
# spaceinvaders.c:1463: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp265,
	cmp.w	r0, r1	# _21, tmp265
	jz	.L228		#
	mov.w	r1, 2	# tmp266,
	cmp.w	r0, r1	# _21, tmp266
	jgs	.L229		#
	xor.w	r1, r1	# tmp267
	cmp.w	r0, r1	# _21, tmp267
	jz	.L230		#
	mov.w	r1, 1	# tmp268,
	cmp.w	r0, r1	# _21, tmp268
	jz	.L231		#
	j	.L229		#
.L230:
# spaceinvaders.c:1466: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp269, alien_bullet_index
	mov.w	r0, r1	# tmp270, tmp269
	mov.w	r2, 3	# tmp272,
	shl.w	r0, r2	# tmp271, tmp272
	add.w	r0, r1 #222	# tmp270, tmp269
	mov.w	r1, 2	# tmp274,
	shl.w	r0, r1	# tmp273, tmp274
	mov.w	r1, alien_bullet	# tmp276,
	add.w	r0, r1 #222	# tmp275, tmp276
	ld.w	r2, [r0]	# _22, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp277, alien_bullet_index
	mov.w	r0, r1	# tmp278, tmp277
	mov.w	r3, 3	# tmp280,
	shl.w	r0, r3	# tmp279, tmp280
	add.w	r0, r1 #222	# tmp278, tmp277
	mov.w	r1, 2	# tmp282,
	shl.w	r0, r1	# tmp281, tmp282
	mov.w	r1, alien_bullet+4	# tmp284,
	add.w	r0, r1 #222	# tmp283, tmp284
	ld.w	r1, [r0]	# _23, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp285,
	mov.w	r3, alien_bullet2_sprite0	# tmp286,
	st.w	[r0 + (16)], r3	#, tmp286
	mov.w	r3, 8	# tmp287,
	st.w	[r0 + (12)], r3	#, tmp287
	mov.w	r3, 8	# tmp288,
	st.w	[r0 + (8)], r3	#, tmp288
	st.w	[r0 + (4)], r1	#, _23
	st.w	[r0], r2	#, _22
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1467: 			break;
	j	.L221		#
.L231:
# spaceinvaders.c:1469: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp289, alien_bullet_index
	mov.w	r0, r1	# tmp290, tmp289
	mov.w	r2, 3	# tmp292,
	shl.w	r0, r2	# tmp291, tmp292
	add.w	r0, r1 #222	# tmp290, tmp289
	mov.w	r1, 2	# tmp294,
	shl.w	r0, r1	# tmp293, tmp294
	mov.w	r1, alien_bullet	# tmp296,
	add.w	r0, r1 #222	# tmp295, tmp296
	ld.w	r2, [r0]	# _24, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp297, alien_bullet_index
	mov.w	r0, r1	# tmp298, tmp297
	mov.w	r3, 3	# tmp300,
	shl.w	r0, r3	# tmp299, tmp300
	add.w	r0, r1 #222	# tmp298, tmp297
	mov.w	r1, 2	# tmp302,
	shl.w	r0, r1	# tmp301, tmp302
	mov.w	r1, alien_bullet+4	# tmp304,
	add.w	r0, r1 #222	# tmp303, tmp304
	ld.w	r1, [r0]	# _25, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp305,
	mov.w	r3, alien_bullet2_sprite1	# tmp306,
	st.w	[r0 + (16)], r3	#, tmp306
	mov.w	r3, 8	# tmp307,
	st.w	[r0 + (12)], r3	#, tmp307
	mov.w	r3, 8	# tmp308,
	st.w	[r0 + (8)], r3	#, tmp308
	st.w	[r0 + (4)], r1	#, _25
	st.w	[r0], r2	#, _24
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1470: 			break;
	j	.L221		#
.L228:
# spaceinvaders.c:1472: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
	ld.w	r1, [r13 + (8)]	# tmp309, alien_bullet_index
	mov.w	r0, r1	# tmp310, tmp309
	mov.w	r2, 3	# tmp312,
	shl.w	r0, r2	# tmp311, tmp312
	add.w	r0, r1 #222	# tmp310, tmp309
	mov.w	r1, 2	# tmp314,
	shl.w	r0, r1	# tmp313, tmp314
	mov.w	r1, alien_bullet	# tmp316,
	add.w	r0, r1 #222	# tmp315, tmp316
	ld.w	r2, [r0]	# _26, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp317, alien_bullet_index
	mov.w	r0, r1	# tmp318, tmp317
	mov.w	r3, 3	# tmp320,
	shl.w	r0, r3	# tmp319, tmp320
	add.w	r0, r1 #222	# tmp318, tmp317
	mov.w	r1, 2	# tmp322,
	shl.w	r0, r1	# tmp321, tmp322
	mov.w	r1, alien_bullet+4	# tmp324,
	add.w	r0, r1 #222	# tmp323, tmp324
	ld.w	r1, [r0]	# _27, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp325,
	mov.w	r3, alien_bullet2_sprite2	# tmp326,
	st.w	[r0 + (16)], r3	#, tmp326
	mov.w	r3, 8	# tmp327,
	st.w	[r0 + (12)], r3	#, tmp327
	mov.w	r3, 8	# tmp328,
	st.w	[r0 + (8)], r3	#, tmp328
	st.w	[r0 + (4)], r1	#, _27
	st.w	[r0], r2	#, _26
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1473: 			break;
	j	.L221		#
.L229:
# spaceinvaders.c:1475: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
	ld.w	r1, [r13 + (8)]	# tmp329, alien_bullet_index
	mov.w	r0, r1	# tmp330, tmp329
	mov.w	r2, 3	# tmp332,
	shl.w	r0, r2	# tmp331, tmp332
	add.w	r0, r1 #222	# tmp330, tmp329
	mov.w	r1, 2	# tmp334,
	shl.w	r0, r1	# tmp333, tmp334
	mov.w	r1, alien_bullet	# tmp336,
	add.w	r0, r1 #222	# tmp335, tmp336
	ld.w	r2, [r0]	# _28, alien_bullet[alien_bullet_index_34(D)].x
	ld.w	r1, [r13 + (8)]	# tmp337, alien_bullet_index
	mov.w	r0, r1	# tmp338, tmp337
	mov.w	r3, 3	# tmp340,
	shl.w	r0, r3	# tmp339, tmp340
	add.w	r0, r1 #222	# tmp338, tmp337
	mov.w	r1, 2	# tmp342,
	shl.w	r0, r1	# tmp341, tmp342
	mov.w	r1, alien_bullet+4	# tmp344,
	add.w	r0, r1 #222	# tmp343, tmp344
	ld.w	r1, [r0]	# _29, alien_bullet[alien_bullet_index_34(D)].y
	mov.w	r0, sp	# tmp345,
	mov.w	r3, alien_bullet2_sprite3	# tmp346,
	st.w	[r0 + (16)], r3	#, tmp346
	mov.w	r3, 8	# tmp347,
	st.w	[r0 + (12)], r3	#, tmp347
	mov.w	r3, 8	# tmp348,
	st.w	[r0 + (8)], r3	#, tmp348
	st.w	[r0 + (4)], r1	#, _29
	st.w	[r0], r2	#, _28
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1476: 			break;	
	nop	
.L221:
# spaceinvaders.c:1479: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clear_current_alien_bullet_sprite, .-clear_current_alien_bullet_sprite
	.p2align	1
	.global	check_alien_bullet_collision_with_player
	.type	check_alien_bullet_collision_with_player, @function
check_alien_bullet_collision_with_player:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1483: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	ld.w	r0, [player_ship]	# player_ship.95_1, player_ship
	ld.s	r0, [r0 + (4)]	# _2, player_ship.95_1->y
	sex.s	r0, r0	# _3, _2
# spaceinvaders.c:1483: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	mov.w	r2, r0	# _4, _3
	add.w	r2, -5 #111	# _4,
# spaceinvaders.c:1483: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	ld.w	r1, [r13 + (8)]	# tmp49, alien_bullet_index
	mov.w	r0, r1	# tmp50, tmp49
	mov.w	r3, 3	# tmp52,
	shl.w	r0, r3	# tmp51, tmp52
	add.w	r0, r1 #222	# tmp50, tmp49
	mov.w	r1, 2	# tmp54,
	shl.w	r0, r1	# tmp53, tmp54
	mov.w	r1, alien_bullet+4	# tmp56,
	add.w	r0, r1 #222	# tmp55, tmp56
	ld.w	r0, [r0]	# _5, alien_bullet[alien_bullet_index_26(D)].y
# spaceinvaders.c:1483: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	cmp.w	r2, r0	# _4, _5
	jgs	.L234		#
# spaceinvaders.c:1484: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	ld.w	r1, [r13 + (8)]	# tmp57, alien_bullet_index
	mov.w	r0, r1	# tmp58, tmp57
	mov.w	r2, 3	# tmp60,
	shl.w	r0, r2	# tmp59, tmp60
	add.w	r0, r1 #222	# tmp58, tmp57
	mov.w	r1, 2	# tmp62,
	shl.w	r0, r1	# tmp61, tmp62
	mov.w	r1, alien_bullet+4	# tmp64,
	add.w	r0, r1 #222	# tmp63, tmp64
	ld.w	r0, [r0]	# _6, alien_bullet[alien_bullet_index_26(D)].y
# spaceinvaders.c:1484: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	mov.w	r1, r0	# _7, _6
	add.w	r1, -5 #111	# _7,
# spaceinvaders.c:1484: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	ld.w	r0, [player_ship]	# player_ship.96_8, player_ship
	ld.s	r0, [r0 + (4)]	# _9, player_ship.96_8->y
	sex.s	r0, r0	# _10, _9
# spaceinvaders.c:1484: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	add.w	r0, 9 #111	# _11,
# spaceinvaders.c:1484: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	cmp.w	r1, r0	# _7, _11
	jgs	.L234		#
# spaceinvaders.c:1485: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	ld.w	r0, [player_ship]	# player_ship.97_12, player_ship
	ld.s	r0, [r0 + (2)]	# _13, player_ship.97_12->x
	sex.s	r0, r0	# _14, _13
# spaceinvaders.c:1485: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	mov.w	r2, r0	# _15, _14
	add.w	r2, -1 #111	# _15,
# spaceinvaders.c:1485: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	ld.w	r1, [r13 + (8)]	# tmp65, alien_bullet_index
	mov.w	r0, r1	# tmp66, tmp65
	mov.w	r3, 3	# tmp68,
	shl.w	r0, r3	# tmp67, tmp68
	add.w	r0, r1 #222	# tmp66, tmp65
	mov.w	r1, 2	# tmp70,
	shl.w	r0, r1	# tmp69, tmp70
	mov.w	r1, alien_bullet	# tmp72,
	add.w	r0, r1 #222	# tmp71, tmp72
	ld.w	r0, [r0]	# _16, alien_bullet[alien_bullet_index_26(D)].x
# spaceinvaders.c:1485: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	cmp.w	r2, r0	# _15, _16
	jgs	.L234		#
# spaceinvaders.c:1486: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	ld.w	r0, [player_ship]	# player_ship.98_17, player_ship
	ld.s	r0, [r0 + (2)]	# _18, player_ship.98_17->x
	sex.s	r0, r0	# _19, _18
# spaceinvaders.c:1486: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	mov.w	r2, r0	# _20, _19
	add.w	r2, 14 #111	# _20,
# spaceinvaders.c:1486: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	ld.w	r1, [r13 + (8)]	# tmp73, alien_bullet_index
	mov.w	r0, r1	# tmp74, tmp73
	mov.w	r3, 3	# tmp76,
	shl.w	r0, r3	# tmp75, tmp76
	add.w	r0, r1 #222	# tmp74, tmp73
	mov.w	r1, 2	# tmp78,
	shl.w	r0, r1	# tmp77, tmp78
	mov.w	r1, alien_bullet	# tmp80,
	add.w	r0, r1 #222	# tmp79, tmp80
	ld.w	r0, [r0]	# _21, alien_bullet[alien_bullet_index_26(D)].x
# spaceinvaders.c:1486: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	cmp.w	r2, r0	# _20, _21
	jss	.L234		#
# spaceinvaders.c:1488: 		clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp81,
	ld.w	r0, [r13 + (8)]	# tmp82, alien_bullet_index
	st.w	[r1], r0	#, tmp82
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1489: 		set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp83,
	ld.w	r0, [r13 + (8)]	# tmp84, alien_bullet_index
	st.w	[r1], r0	#, tmp84
	call	set_alien_bullet_to_explode		#
# spaceinvaders.c:1490: 		lives--;
	ld.w	r0, [lives]	# lives.99_22, lives
	add.w	r0, -1 #111	# _23,
	st.w	[lives], r0	# lives, _23
# spaceinvaders.c:1491: 		destroy_player();
	call	destroy_player		#
.L234:
# spaceinvaders.c:1493: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_alien_bullet_collision_with_player, .-check_alien_bullet_collision_with_player
	.p2align	1
	.global	check_alien_bullet_collision_with_environment
	.type	check_alien_bullet_collision_with_environment, @function
check_alien_bullet_collision_with_environment:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
# spaceinvaders.c:1498: 	if(alien_bullet[alien_bullet_index].y >= BOTTOM_LINE_Y - 6)
	ld.w	r1, [r13 + (8)]	# tmp33, alien_bullet_index
	mov.w	r0, r1	# tmp34, tmp33
	mov.w	r2, 3	# tmp36,
	shl.w	r0, r2	# tmp35, tmp36
	add.w	r0, r1 #222	# tmp34, tmp33
	mov.w	r1, 2	# tmp38,
	shl.w	r0, r1	# tmp37, tmp38
	mov.w	r1, alien_bullet+4	# tmp40,
	add.w	r0, r1 #222	# tmp39, tmp40
	ld.w	r1, [r0]	# _1, alien_bullet[alien_bullet_index_15(D)].y
# spaceinvaders.c:1498: 	if(alien_bullet[alien_bullet_index].y >= BOTTOM_LINE_Y - 6)
	mov.w	r0, 221	# tmp41,
	cmp.w	r1, r0	# _1, tmp41
	jses	.L236		#
# spaceinvaders.c:1500: 		clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp42,
	ld.w	r0, [r13 + (8)]	# tmp43, alien_bullet_index
	st.w	[r1], r0	#, tmp43
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1501: 		set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp44,
	ld.w	r0, [r13 + (8)]	# tmp45, alien_bullet_index
	st.w	[r1], r0	#, tmp45
	call	set_alien_bullet_to_explode		#
# spaceinvaders.c:1518: }
	j	.L244		#
.L236:
# spaceinvaders.c:1503: 	else if(alien_bullet[alien_bullet_index].y >= BASE_Y - 6)
	ld.w	r1, [r13 + (8)]	# tmp46, alien_bullet_index
	mov.w	r0, r1	# tmp47, tmp46
	mov.w	r2, 3	# tmp49,
	shl.w	r0, r2	# tmp48, tmp49
	add.w	r0, r1 #222	# tmp47, tmp46
	mov.w	r1, 2	# tmp51,
	shl.w	r0, r1	# tmp50, tmp51
	mov.w	r1, alien_bullet+4	# tmp53,
	add.w	r0, r1 #222	# tmp52, tmp53
	ld.w	r1, [r0]	# _2, alien_bullet[alien_bullet_index_15(D)].y
# spaceinvaders.c:1503: 	else if(alien_bullet[alien_bullet_index].y >= BASE_Y - 6)
	mov.w	r0, 181	# tmp54,
	cmp.w	r1, r0	# _2, tmp54
	jses	.L244		#
# spaceinvaders.c:1505: 		for(int i = 0; i <= 2; i++)
	xor.w	r0, r0	# tmp55
	st.w	[r13 + (-4)], r0	# i, tmp55
# spaceinvaders.c:1505: 		for(int i = 0; i <= 2; i++)
	j	.L238		#
.L243:
# spaceinvaders.c:1507: 			for(int j = 0; j <= 2; j++)
	xor.w	r0, r0	# tmp56
	st.w	[r13 + (-8)], r0	# j, tmp56
# spaceinvaders.c:1507: 			for(int j = 0; j <= 2; j++)
	j	.L239		#
.L242:
# spaceinvaders.c:1509: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	ld.w	r1, [r13 + (8)]	# tmp57, alien_bullet_index
	mov.w	r0, r1	# tmp58, tmp57
	mov.w	r2, 3	# tmp60,
	shl.w	r0, r2	# tmp59, tmp60
	add.w	r0, r1 #222	# tmp58, tmp57
	mov.w	r1, 2	# tmp62,
	shl.w	r0, r1	# tmp61, tmp62
	mov.w	r1, alien_bullet	# tmp64,
	add.w	r0, r1 #222	# tmp63, tmp64
	ld.w	r1, [r0]	# _3, alien_bullet[alien_bullet_index_15(D)].x
# spaceinvaders.c:1509: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	ld.w	r0, [r13 + (-8)]	# tmp65, j
	mov.w	r2, r1	# _4, _3
	add.w	r2, r0 #222	# _4, tmp65
# spaceinvaders.c:1509: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	ld.w	r1, [r13 + (8)]	# tmp66, alien_bullet_index
	mov.w	r0, r1	# tmp67, tmp66
	mov.w	r3, 3	# tmp69,
	shl.w	r0, r3	# tmp68, tmp69
	add.w	r0, r1 #222	# tmp67, tmp66
	mov.w	r1, 2	# tmp71,
	shl.w	r0, r1	# tmp70, tmp71
	mov.w	r1, alien_bullet+4	# tmp73,
	add.w	r0, r1 #222	# tmp72, tmp73
	ld.w	r1, [r0]	# _5, alien_bullet[alien_bullet_index_15(D)].y
# spaceinvaders.c:1509: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	ld.w	r0, [r13 + (-4)]	# tmp74, i
	add.w	r1, r0 #222	# _6, tmp74
	mov.w	r0, sp	# tmp75,
	st.w	[r0 + (4)], r1	#, _6
	st.w	[r0], r2	#, _4
	call	position_is_not_clear		#
	mov.w	r1, r0	# _7,
# spaceinvaders.c:1509: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	xor.w	r0, r0	# tmp76
	cmp.w	r1, r0	# _7, tmp76
	jz	.L240		#
# spaceinvaders.c:1511: 					clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp77,
	ld.w	r0, [r13 + (8)]	# tmp78, alien_bullet_index
	st.w	[r1], r0	#, tmp78
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1512: 					set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp79,
	ld.w	r0, [r13 + (8)]	# tmp80, alien_bullet_index
	st.w	[r1], r0	#, tmp80
	call	set_alien_bullet_to_explode		#
# spaceinvaders.c:1513: 					break;
	j	.L241		#
.L240:
# spaceinvaders.c:1507: 			for(int j = 0; j <= 2; j++)
	ld.w	r0, [r13 + (-8)]	# tmp82, j
	add.w	r0, 1 #111	# tmp81,
	st.w	[r13 + (-8)], r0	# j, tmp81
.L239:
# spaceinvaders.c:1507: 			for(int j = 0; j <= 2; j++)
	ld.w	r1, [r13 + (-8)]	# tmp83, j
	mov.w	r0, 2	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jses	.L242		#
.L241:
# spaceinvaders.c:1505: 		for(int i = 0; i <= 2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp86, i
	add.w	r0, 1 #111	# tmp85,
	st.w	[r13 + (-4)], r0	# i, tmp85
.L238:
# spaceinvaders.c:1505: 		for(int i = 0; i <= 2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp87, i
	mov.w	r0, 2	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jses	.L243		#
.L244:
# spaceinvaders.c:1518: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_alien_bullet_collision_with_environment, .-check_alien_bullet_collision_with_environment
	.p2align	1
	.global	check_player_bullet_collision_with_alien_bullet
	.type	check_player_bullet_collision_with_alien_bullet, @function
check_player_bullet_collision_with_alien_bullet:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1522: 	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
	ld.w	r0, [player_bullet_def]	# player_bullet_def.100_1, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _2, player_bullet_def.100_1->x
	sex.s	r2, r0	# _3, _2
# spaceinvaders.c:1522: 	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
	ld.w	r1, [r13 + (8)]	# tmp45, alien_bullet_index
	mov.w	r0, r1	# tmp46, tmp45
	mov.w	r3, 3	# tmp48,
	shl.w	r0, r3	# tmp47, tmp48
	add.w	r0, r1 #222	# tmp46, tmp45
	mov.w	r1, 2	# tmp50,
	shl.w	r0, r1	# tmp49, tmp50
	mov.w	r1, alien_bullet	# tmp52,
	add.w	r0, r1 #222	# tmp51, tmp52
	ld.w	r0, [r0]	# _4, alien_bullet[alien_bullet_index_22(D)].x
# spaceinvaders.c:1522: 	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
	cmp.w	r2, r0	# _3, _4
	jss	.L247		#
# spaceinvaders.c:1523: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	ld.w	r0, [player_bullet_def]	# player_bullet_def.101_5, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _6, player_bullet_def.101_5->x
	sex.s	r2, r0	# _7, _6
# spaceinvaders.c:1523: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	ld.w	r1, [r13 + (8)]	# tmp53, alien_bullet_index
	mov.w	r0, r1	# tmp54, tmp53
	mov.w	r3, 3	# tmp56,
	shl.w	r0, r3	# tmp55, tmp56
	add.w	r0, r1 #222	# tmp54, tmp53
	mov.w	r1, 2	# tmp58,
	shl.w	r0, r1	# tmp57, tmp58
	mov.w	r1, alien_bullet	# tmp60,
	add.w	r0, r1 #222	# tmp59, tmp60
	ld.w	r0, [r0]	# _8, alien_bullet[alien_bullet_index_22(D)].x
# spaceinvaders.c:1523: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	add.w	r0, 2 #111	# _9,
# spaceinvaders.c:1523: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	cmp.w	r2, r0	# _7, _9
	jgs	.L247		#
# spaceinvaders.c:1524: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	ld.w	r0, [player_bullet_def]	# player_bullet_def.102_10, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _11, player_bullet_def.102_10->y
	sex.s	r2, r0	# _12, _11
# spaceinvaders.c:1524: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	ld.w	r1, [r13 + (8)]	# tmp61, alien_bullet_index
	mov.w	r0, r1	# tmp62, tmp61
	mov.w	r3, 3	# tmp64,
	shl.w	r0, r3	# tmp63, tmp64
	add.w	r0, r1 #222	# tmp62, tmp61
	mov.w	r1, 2	# tmp66,
	shl.w	r0, r1	# tmp65, tmp66
	mov.w	r1, alien_bullet+4	# tmp68,
	add.w	r0, r1 #222	# tmp67, tmp68
	ld.w	r0, [r0]	# _13, alien_bullet[alien_bullet_index_22(D)].y
# spaceinvaders.c:1524: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	add.w	r0, -2 #111	# _14,
# spaceinvaders.c:1524: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	cmp.w	r2, r0	# _12, _14
	jss	.L247		#
# spaceinvaders.c:1525: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.103_15, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _16, player_bullet_def.103_15->y
	sex.s	r2, r0	# _17, _16
# spaceinvaders.c:1525: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	ld.w	r1, [r13 + (8)]	# tmp69, alien_bullet_index
	mov.w	r0, r1	# tmp70, tmp69
	mov.w	r3, 3	# tmp72,
	shl.w	r0, r3	# tmp71, tmp72
	add.w	r0, r1 #222	# tmp70, tmp69
	mov.w	r1, 2	# tmp74,
	shl.w	r0, r1	# tmp73, tmp74
	mov.w	r1, alien_bullet+4	# tmp76,
	add.w	r0, r1 #222	# tmp75, tmp76
	ld.w	r0, [r0]	# _18, alien_bullet[alien_bullet_index_22(D)].y
# spaceinvaders.c:1525: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	add.w	r0, 6 #111	# _19,
# spaceinvaders.c:1525: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	cmp.w	r2, r0	# _17, _19
	jgs	.L247		#
# spaceinvaders.c:1527: 		set_player_bullet_to_explode();
	call	set_player_bullet_to_explode		#
# spaceinvaders.c:1529: 		clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp77,
	ld.w	r0, [r13 + (8)]	# tmp78, alien_bullet_index
	st.w	[r1], r0	#, tmp78
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1530: 		set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp79,
	ld.w	r0, [r13 + (8)]	# tmp80, alien_bullet_index
	st.w	[r1], r0	#, tmp80
	call	set_alien_bullet_to_explode		#
.L247:
# spaceinvaders.c:1532: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_player_bullet_collision_with_alien_bullet, .-check_player_bullet_collision_with_alien_bullet
	.p2align	1
	.global	destroy_alien
	.type	destroy_alien, @function
destroy_alien:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# spaceinvaders.c:1536: 	death_timer = 0;
	xor.w	r0, r0	# tmp72
	st.w	[death_timer], r0	# death_timer, tmp72
# spaceinvaders.c:1537: 	player_bullet_status = READY;
	xor.w	r0, r0	# tmp73
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp73
# spaceinvaders.c:1551: 	for(int i = 0; i <= 11; i++)
	xor.w	r0, r0	# tmp74
	st.w	[r13 + (-4)], r0	# i, tmp74
# spaceinvaders.c:1551: 	for(int i = 0; i <= 11; i++)
	j	.L249		#
.L256:
# spaceinvaders.c:1553: 		if(row_5_octopus[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp75, i
	mov.w	r1, 3	# tmp77,
	shl.w	r0, r1	# tmp76, tmp77
	mov.w	r1, row_5_octopus+6	# tmp79,
	add.w	r0, r1 #222	# tmp78, tmp79
	ld.s	r0, [r0]	# _1, row_5_octopus[i_47].alive
# spaceinvaders.c:1553: 		if(row_5_octopus[i].alive == 1)
	sex.s	r1, r0	# tmp80, _1
	mov.w	r0, 1	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L250		#
# spaceinvaders.c:1555: 			row_5_octopus[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp82, i
	mov.w	r1, 3	# tmp84,
	shl.w	r0, r1	# tmp83, tmp84
	mov.w	r1, row_5_octopus+6	# tmp86,
	add.w	r0, r1 #222	# tmp85, tmp86
	xor.w	r1, r1	# tmp87
	st.s	[r0], r1	# row_5_octopus[i_47].alive, tmp87
# spaceinvaders.c:1557: 				row_5_octopus[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp88, i
	mov.w	r1, 3	# tmp90,
	shl.w	r0, r1	# tmp89, tmp90
	mov.w	r1, row_5_octopus+2	# tmp92,
	add.w	r0, r1 #222	# tmp91, tmp92
	ld.s	r0, [r0]	# _2, row_5_octopus[i_47].x
# spaceinvaders.c:1556: 			clear_bitmap_with_specific_shape(
	sex.s	r1, r0	# _3, _2
# spaceinvaders.c:1558: 				row_5_octopus[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp93, i
	mov.w	r2, 3	# tmp95,
	shl.w	r0, r2	# tmp94, tmp95
	mov.w	r2, row_5_octopus+4	# tmp97,
	add.w	r0, r2 #222	# tmp96, tmp97
	ld.s	r0, [r0]	# _4, row_5_octopus[i_47].y
# spaceinvaders.c:1556: 			clear_bitmap_with_specific_shape(
	sex.s	r2, r0	# _5, _4
	mov.w	r0, sp	# tmp98,
	mov.w	r3, alien_death	# tmp99,
	st.w	[r0 + (16)], r3	#, tmp99
	mov.w	r3, 8	# tmp100,
	st.w	[r0 + (12)], r3	#, tmp100
	mov.w	r3, 16	# tmp101,
	st.w	[r0 + (8)], r3	#, tmp101
	st.w	[r0 + (4)], r2	#, _5
	st.w	[r0], r1	#, _3
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1562: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.104_6, number_of_aliens
	add.w	r0, -1 #111	# _7,
	st.w	[number_of_aliens], r0	# number_of_aliens, _7
# spaceinvaders.c:1563: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1564: 			decrease_alien_bullet_spawn_time();
	call	decrease_alien_bullet_spawn_time		#
# spaceinvaders.c:1565: 			score += 10;
	ld.w	r0, [score]	# score.105_8, score
	add.w	r0, 10 #111	# _9,
	st.w	[score], r0	# score, _9
# spaceinvaders.c:1566: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1567: 			break;
	j	.L251		#
.L250:
# spaceinvaders.c:1569: 		if(row_4_octopus[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp102, i
	mov.w	r1, 3	# tmp104,
	shl.w	r0, r1	# tmp103, tmp104
	mov.w	r1, row_4_octopus+6	# tmp106,
	add.w	r0, r1 #222	# tmp105, tmp106
	ld.s	r0, [r0]	# _10, row_4_octopus[i_47].alive
# spaceinvaders.c:1569: 		if(row_4_octopus[i].alive == 1)
	sex.s	r1, r0	# tmp107, _10
	mov.w	r0, 1	# tmp108,
	cmp.w	r1, r0	# tmp107, tmp108
	jnz	.L252		#
# spaceinvaders.c:1571: 			row_4_octopus[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp109, i
	mov.w	r1, 3	# tmp111,
	shl.w	r0, r1	# tmp110, tmp111
	mov.w	r1, row_4_octopus+6	# tmp113,
	add.w	r0, r1 #222	# tmp112, tmp113
	xor.w	r1, r1	# tmp114
	st.s	[r0], r1	# row_4_octopus[i_47].alive, tmp114
# spaceinvaders.c:1573: 				row_4_octopus[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp115, i
	mov.w	r1, 3	# tmp117,
	shl.w	r0, r1	# tmp116, tmp117
	mov.w	r1, row_4_octopus+2	# tmp119,
	add.w	r0, r1 #222	# tmp118, tmp119
	ld.s	r0, [r0]	# _11, row_4_octopus[i_47].x
# spaceinvaders.c:1572: 			clear_bitmap_with_specific_shape(
	sex.s	r1, r0	# _12, _11
# spaceinvaders.c:1574: 				row_4_octopus[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp120, i
	mov.w	r2, 3	# tmp122,
	shl.w	r0, r2	# tmp121, tmp122
	mov.w	r2, row_4_octopus+4	# tmp124,
	add.w	r0, r2 #222	# tmp123, tmp124
	ld.s	r0, [r0]	# _13, row_4_octopus[i_47].y
# spaceinvaders.c:1572: 			clear_bitmap_with_specific_shape(
	sex.s	r2, r0	# _14, _13
	mov.w	r0, sp	# tmp125,
	mov.w	r3, alien_death	# tmp126,
	st.w	[r0 + (16)], r3	#, tmp126
	mov.w	r3, 8	# tmp127,
	st.w	[r0 + (12)], r3	#, tmp127
	mov.w	r3, 16	# tmp128,
	st.w	[r0 + (8)], r3	#, tmp128
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _12
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1578: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.106_15, number_of_aliens
	add.w	r0, -1 #111	# _16,
	st.w	[number_of_aliens], r0	# number_of_aliens, _16
# spaceinvaders.c:1579: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1580: 			decrease_alien_bullet_spawn_time();
	call	decrease_alien_bullet_spawn_time		#
# spaceinvaders.c:1581: 			score += 10;
	ld.w	r0, [score]	# score.107_17, score
	add.w	r0, 10 #111	# _18,
	st.w	[score], r0	# score, _18
# spaceinvaders.c:1582: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1583: 			break;
	j	.L251		#
.L252:
# spaceinvaders.c:1585: 		if(row_3_crab[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp129, i
	mov.w	r1, 3	# tmp131,
	shl.w	r0, r1	# tmp130, tmp131
	mov.w	r1, row_3_crab+6	# tmp133,
	add.w	r0, r1 #222	# tmp132, tmp133
	ld.s	r0, [r0]	# _19, row_3_crab[i_47].alive
# spaceinvaders.c:1585: 		if(row_3_crab[i].alive == 1)
	sex.s	r1, r0	# tmp134, _19
	mov.w	r0, 1	# tmp135,
	cmp.w	r1, r0	# tmp134, tmp135
	jnz	.L253		#
# spaceinvaders.c:1587: 			row_3_crab[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp136, i
	mov.w	r1, 3	# tmp138,
	shl.w	r0, r1	# tmp137, tmp138
	mov.w	r1, row_3_crab+6	# tmp140,
	add.w	r0, r1 #222	# tmp139, tmp140
	xor.w	r1, r1	# tmp141
	st.s	[r0], r1	# row_3_crab[i_47].alive, tmp141
# spaceinvaders.c:1589: 				row_3_crab[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp142, i
	mov.w	r1, 3	# tmp144,
	shl.w	r0, r1	# tmp143, tmp144
	mov.w	r1, row_3_crab+2	# tmp146,
	add.w	r0, r1 #222	# tmp145, tmp146
	ld.s	r0, [r0]	# _20, row_3_crab[i_47].x
# spaceinvaders.c:1588: 			clear_bitmap_with_specific_shape(
	sex.s	r1, r0	# _21, _20
# spaceinvaders.c:1590: 				row_3_crab[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp147, i
	mov.w	r2, 3	# tmp149,
	shl.w	r0, r2	# tmp148, tmp149
	mov.w	r2, row_3_crab+4	# tmp151,
	add.w	r0, r2 #222	# tmp150, tmp151
	ld.s	r0, [r0]	# _22, row_3_crab[i_47].y
# spaceinvaders.c:1588: 			clear_bitmap_with_specific_shape(
	sex.s	r2, r0	# _23, _22
	mov.w	r0, sp	# tmp152,
	mov.w	r3, alien_death	# tmp153,
	st.w	[r0 + (16)], r3	#, tmp153
	mov.w	r3, 8	# tmp154,
	st.w	[r0 + (12)], r3	#, tmp154
	mov.w	r3, 16	# tmp155,
	st.w	[r0 + (8)], r3	#, tmp155
	st.w	[r0 + (4)], r2	#, _23
	st.w	[r0], r1	#, _21
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1594: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.108_24, number_of_aliens
	add.w	r0, -1 #111	# _25,
	st.w	[number_of_aliens], r0	# number_of_aliens, _25
# spaceinvaders.c:1595: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1596: 			decrease_alien_bullet_spawn_time();
	call	decrease_alien_bullet_spawn_time		#
# spaceinvaders.c:1597: 			score += 20;
	ld.w	r0, [score]	# score.109_26, score
	add.w	r0, 20 #111	# _27,
	st.w	[score], r0	# score, _27
# spaceinvaders.c:1598: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1599: 			break;
	j	.L251		#
.L253:
# spaceinvaders.c:1601: 		if(row_2_crab[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp156, i
	mov.w	r1, 3	# tmp158,
	shl.w	r0, r1	# tmp157, tmp158
	mov.w	r1, row_2_crab+6	# tmp160,
	add.w	r0, r1 #222	# tmp159, tmp160
	ld.s	r0, [r0]	# _28, row_2_crab[i_47].alive
# spaceinvaders.c:1601: 		if(row_2_crab[i].alive == 1)
	sex.s	r1, r0	# tmp161, _28
	mov.w	r0, 1	# tmp162,
	cmp.w	r1, r0	# tmp161, tmp162
	jnz	.L254		#
# spaceinvaders.c:1603: 			row_2_crab[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp163, i
	mov.w	r1, 3	# tmp165,
	shl.w	r0, r1	# tmp164, tmp165
	mov.w	r1, row_2_crab+6	# tmp167,
	add.w	r0, r1 #222	# tmp166, tmp167
	xor.w	r1, r1	# tmp168
	st.s	[r0], r1	# row_2_crab[i_47].alive, tmp168
# spaceinvaders.c:1605: 				row_2_crab[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp169, i
	mov.w	r1, 3	# tmp171,
	shl.w	r0, r1	# tmp170, tmp171
	mov.w	r1, row_2_crab+2	# tmp173,
	add.w	r0, r1 #222	# tmp172, tmp173
	ld.s	r0, [r0]	# _29, row_2_crab[i_47].x
# spaceinvaders.c:1604: 			clear_bitmap_with_specific_shape(
	sex.s	r1, r0	# _30, _29
# spaceinvaders.c:1606: 				row_2_crab[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp174, i
	mov.w	r2, 3	# tmp176,
	shl.w	r0, r2	# tmp175, tmp176
	mov.w	r2, row_2_crab+4	# tmp178,
	add.w	r0, r2 #222	# tmp177, tmp178
	ld.s	r0, [r0]	# _31, row_2_crab[i_47].y
# spaceinvaders.c:1604: 			clear_bitmap_with_specific_shape(
	sex.s	r2, r0	# _32, _31
	mov.w	r0, sp	# tmp179,
	mov.w	r3, alien_death	# tmp180,
	st.w	[r0 + (16)], r3	#, tmp180
	mov.w	r3, 8	# tmp181,
	st.w	[r0 + (12)], r3	#, tmp181
	mov.w	r3, 16	# tmp182,
	st.w	[r0 + (8)], r3	#, tmp182
	st.w	[r0 + (4)], r2	#, _32
	st.w	[r0], r1	#, _30
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1610: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.110_33, number_of_aliens
	add.w	r0, -1 #111	# _34,
	st.w	[number_of_aliens], r0	# number_of_aliens, _34
# spaceinvaders.c:1611: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1612: 			score += 20;
	ld.w	r0, [score]	# score.111_35, score
	add.w	r0, 20 #111	# _36,
	st.w	[score], r0	# score, _36
# spaceinvaders.c:1613: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1614: 			break;
	j	.L251		#
.L254:
# spaceinvaders.c:1616: 		if(row_1_squid[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp183, i
	mov.w	r1, 3	# tmp185,
	shl.w	r0, r1	# tmp184, tmp185
	mov.w	r1, row_1_squid+6	# tmp187,
	add.w	r0, r1 #222	# tmp186, tmp187
	ld.s	r0, [r0]	# _37, row_1_squid[i_47].alive
# spaceinvaders.c:1616: 		if(row_1_squid[i].alive == 1)
	sex.s	r1, r0	# tmp188, _37
	mov.w	r0, 1	# tmp189,
	cmp.w	r1, r0	# tmp188, tmp189
	jnz	.L255		#
# spaceinvaders.c:1618: 			row_1_squid[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp190, i
	mov.w	r1, 3	# tmp192,
	shl.w	r0, r1	# tmp191, tmp192
	mov.w	r1, row_1_squid+6	# tmp194,
	add.w	r0, r1 #222	# tmp193, tmp194
	xor.w	r1, r1	# tmp195
	st.s	[r0], r1	# row_1_squid[i_47].alive, tmp195
# spaceinvaders.c:1620: 				row_1_squid[i].x - 2, 
	ld.w	r0, [r13 + (-4)]	# tmp196, i
	mov.w	r1, 3	# tmp198,
	shl.w	r0, r1	# tmp197, tmp198
	mov.w	r1, row_1_squid+2	# tmp200,
	add.w	r0, r1 #222	# tmp199, tmp200
	ld.s	r0, [r0]	# _38, row_1_squid[i_47].x
	sex.s	r0, r0	# _39, _38
# spaceinvaders.c:1619: 			clear_bitmap_with_specific_shape(
	mov.w	r1, r0	# _40, _39
	add.w	r1, -2 #111	# _40,
# spaceinvaders.c:1621: 				row_1_squid[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp201, i
	mov.w	r2, 3	# tmp203,
	shl.w	r0, r2	# tmp202, tmp203
	mov.w	r2, row_1_squid+4	# tmp205,
	add.w	r0, r2 #222	# tmp204, tmp205
	ld.s	r0, [r0]	# _41, row_1_squid[i_47].y
# spaceinvaders.c:1619: 			clear_bitmap_with_specific_shape(
	sex.s	r2, r0	# _42, _41
	mov.w	r0, sp	# tmp206,
	mov.w	r3, alien_death	# tmp207,
	st.w	[r0 + (16)], r3	#, tmp207
	mov.w	r3, 8	# tmp208,
	st.w	[r0 + (12)], r3	#, tmp208
	mov.w	r3, 16	# tmp209,
	st.w	[r0 + (8)], r3	#, tmp209
	st.w	[r0 + (4)], r2	#, _42
	st.w	[r0], r1	#, _40
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:1625: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.112_43, number_of_aliens
	add.w	r0, -1 #111	# _44,
	st.w	[number_of_aliens], r0	# number_of_aliens, _44
# spaceinvaders.c:1626: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1627: 			score += 30;
	ld.w	r0, [score]	# score.113_45, score
	add.w	r0, 30 #111	# _46,
	st.w	[score], r0	# score, _46
# spaceinvaders.c:1628: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1629: 			break;
	j	.L251		#
.L255:
# spaceinvaders.c:1551: 	for(int i = 0; i <= 11; i++)
	ld.w	r0, [r13 + (-4)]	# tmp211, i
	add.w	r0, 1 #111	# tmp210,
	st.w	[r13 + (-4)], r0	# i, tmp210
.L249:
# spaceinvaders.c:1551: 	for(int i = 0; i <= 11; i++)
	ld.w	r1, [r13 + (-4)]	# tmp212, i
	mov.w	r0, 11	# tmp213,
	cmp.w	r1, r0	# tmp212, tmp213
	jses	.L256		#
# spaceinvaders.c:1632: }
	nop	
.L251:
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	destroy_alien, .-destroy_alien
	.p2align	1
	.global	spawn_ufo
	.type	spawn_ufo, @function
spawn_ufo:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1636: 	ufo_status = ALIVE;
	mov.w	r0, 2	# tmp30,
	st.w	[ufo_status], r0	# ufo_status, tmp30
# spaceinvaders.c:1637: 	ufo_direction = rand() % 2;
	call	rand		#
# spaceinvaders.c:1637: 	ufo_direction = rand() % 2;
	mov.w	r1, -2147483647	# tmp32,
	and.w	r0, r1	# tmp31, tmp32
	xor.w	r1, r1	# tmp33
	cmp.w	r0, r1	# tmp31, tmp33
	jges	.L258		#
	add.w	r0, -1 #111	# tmp31,
	mov.w	r1, -2	# tmp34,
	or.w	r0, r1	# tmp31, tmp34
	add.w	r0, 1 #111	# tmp31,
.L258:
# spaceinvaders.c:1637: 	ufo_direction = rand() % 2;
	st.w	[ufo_direction], r0	# ufo_direction, _2
# spaceinvaders.c:1638: 	if(ufo_direction == 0)
	ld.w	r1, [ufo_direction]	# ufo_direction.114_3, ufo_direction
# spaceinvaders.c:1638: 	if(ufo_direction == 0)
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# ufo_direction.114_3, tmp35
	jnz	.L259		#
# spaceinvaders.c:1639: 		ufo_position_X = 12;
	mov.w	r0, 12	# tmp36,
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp36
	j	.L260		#
.L259:
# spaceinvaders.c:1641: 		ufo_position_X = 216;
	mov.w	r0, 216	# tmp37,
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp37
.L260:
# spaceinvaders.c:1642: 	draw_bitmap_with_clear_background(ufo_position_X, 35, 16, 8, ufo);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.115_4, ufo_position_X
	mov.w	r0, sp	# tmp38,
	mov.w	r2, ufo	# tmp39,
	st.w	[r0 + (16)], r2	#, tmp39
	mov.w	r2, 8	# tmp40,
	st.w	[r0 + (12)], r2	#, tmp40
	mov.w	r2, 16	# tmp41,
	st.w	[r0 + (8)], r2	#, tmp41
	mov.w	r2, 35	# tmp42,
	st.w	[r0 + (4)], r2	#, tmp42
	st.w	[r0], r1	#, ufo_position_X.115_4
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1643: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spawn_ufo, .-spawn_ufo
	.p2align	1
	.global	move_ufo
	.type	move_ufo, @function
move_ufo:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# spaceinvaders.c:1653: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	ld.w	r1, [ufo_direction]	# ufo_direction.116_1, ufo_direction
	mov.w	r0, 1	# tmp44,
	sub.w	r0, r1 #222	# _2, ufo_direction.116_1
# spaceinvaders.c:1653: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	mov.w	r1, 2	# tmp45,
	shl.w	r0, r1	# _3, tmp45
# spaceinvaders.c:1653: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	add.w	r0, -2 #111	# _4,
# spaceinvaders.c:1653: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	ld.w	r1, [ufo_position_X]	# ufo_position_X.117_5, ufo_position_X
	add.w	r0, r1 #222	# _6, ufo_position_X.117_5
	st.w	[ufo_position_X], r0	# ufo_position_X, _6
# spaceinvaders.c:1655: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	ld.w	r1, [ufo_direction]	# ufo_direction.118_7, ufo_direction
# spaceinvaders.c:1655: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# ufo_direction.118_7, tmp46
	jnz	.L262		#
# spaceinvaders.c:1655: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	ld.w	r1, [ufo_position_X]	# ufo_position_X.119_8, ufo_position_X
# spaceinvaders.c:1655: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	mov.w	r0, 215	# tmp47,
	cmp.w	r1, r0	# ufo_position_X.119_8, tmp47
	jses	.L262		#
# spaceinvaders.c:1657: 		clear_bitmap_test(ufo_position_X-2, 35, 16, 8);
	ld.w	r0, [ufo_position_X]	# ufo_position_X.120_9, ufo_position_X
	mov.w	r1, r0	# _10, ufo_position_X.120_9
	add.w	r1, -2 #111	# _10,
	mov.w	r0, sp	# tmp48,
	mov.w	r2, 8	# tmp49,
	st.w	[r0 + (12)], r2	#, tmp49
	mov.w	r2, 16	# tmp50,
	st.w	[r0 + (8)], r2	#, tmp50
	mov.w	r2, 35	# tmp51,
	st.w	[r0 + (4)], r2	#, tmp51
	st.w	[r0], r1	#, _10
	call	clear_bitmap_test		#
# spaceinvaders.c:1658: 		ufo_status = DEAD;
	xor.w	r0, r0	# tmp52
	st.w	[ufo_status], r0	# ufo_status, tmp52
# spaceinvaders.c:1659: 		ufo_position_X = 0;
	xor.w	r0, r0	# tmp53
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp53
	j	.L263		#
.L262:
# spaceinvaders.c:1661: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	ld.w	r1, [ufo_direction]	# ufo_direction.121_11, ufo_direction
# spaceinvaders.c:1661: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	mov.w	r0, 1	# tmp54,
	cmp.w	r1, r0	# ufo_direction.121_11, tmp54
	jnz	.L264		#
# spaceinvaders.c:1661: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	ld.w	r1, [ufo_position_X]	# ufo_position_X.122_12, ufo_position_X
# spaceinvaders.c:1661: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	mov.w	r0, 12	# tmp55,
	cmp.w	r1, r0	# ufo_position_X.122_12, tmp55
	jgs	.L264		#
# spaceinvaders.c:1663: 		clear_bitmap_test(ufo_position_X+2, 35, 16, 8);
	ld.w	r0, [ufo_position_X]	# ufo_position_X.123_13, ufo_position_X
	mov.w	r1, r0	# _14, ufo_position_X.123_13
	add.w	r1, 2 #111	# _14,
	mov.w	r0, sp	# tmp56,
	mov.w	r2, 8	# tmp57,
	st.w	[r0 + (12)], r2	#, tmp57
	mov.w	r2, 16	# tmp58,
	st.w	[r0 + (8)], r2	#, tmp58
	mov.w	r2, 35	# tmp59,
	st.w	[r0 + (4)], r2	#, tmp59
	st.w	[r0], r1	#, _14
	call	clear_bitmap_test		#
# spaceinvaders.c:1664: 		ufo_status = DEAD;
	xor.w	r0, r0	# tmp60
	st.w	[ufo_status], r0	# ufo_status, tmp60
# spaceinvaders.c:1665: 		ufo_position_X = 0;
	xor.w	r0, r0	# tmp61
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp61
	j	.L263		#
.L264:
# spaceinvaders.c:1669: 		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
	ld.w	r2, [ufo_position_X]	# ufo_position_X.124_15, ufo_position_X
# spaceinvaders.c:1669: 		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
	ld.w	r1, [ufo_direction]	# ufo_direction.125_16, ufo_direction
	mov.w	r0, r1	# tmp62, ufo_direction.125_16
	add.w	r0, r0 #222	# tmp63, tmp62
	add.w	r0, r1 #222	# tmp62, ufo_direction.125_16
	add.w	r0, r0 #222	# tmp64, tmp62
# spaceinvaders.c:1669: 		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
	mov.w	r1, r0	# _18, _17
	add.w	r1, 3 #111	# _18,
	mov.w	r0, sp	# tmp65,
	mov.w	r3, 1	# tmp66,
	st.w	[r0 + (24)], r3	#, tmp66
	st.w	[r0 + (20)], r1	#, _18
	mov.w	r1, ufo	# tmp67,
	st.w	[r0 + (16)], r1	#, tmp67
	mov.w	r1, 8	# tmp68,
	st.w	[r0 + (12)], r1	#, tmp68
	mov.w	r1, 16	# tmp69,
	st.w	[r0 + (8)], r1	#, tmp69
	mov.w	r1, 35	# tmp70,
	st.w	[r0 + (4)], r1	#, tmp70
	st.w	[r0], r2	#, ufo_position_X.124_15
	call	move_bitmap_test		#
# spaceinvaders.c:1671: }
	nop	
.L263:
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	move_ufo, .-move_ufo
	.p2align	1
	.global	draw_alien_bullet_sprite
	.type	draw_alien_bullet_sprite, @function
draw_alien_bullet_sprite:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1675: 	if(alien_bullet[alien_bullet_index].sprite == 3)
	ld.w	r1, [r13 + (8)]	# tmp58, alien_bullet_index
	mov.w	r0, r1	# tmp59, tmp58
	mov.w	r2, 3	# tmp61,
	shl.w	r0, r2	# tmp60, tmp61
	add.w	r0, r1 #222	# tmp59, tmp58
	mov.w	r1, 2	# tmp63,
	shl.w	r0, r1	# tmp62, tmp63
	mov.w	r1, alien_bullet+16	# tmp65,
	add.w	r0, r1 #222	# tmp64, tmp65
	ld.w	r1, [r0]	# _1, alien_bullet[alien_bullet_index_38(D)].sprite
# spaceinvaders.c:1675: 	if(alien_bullet[alien_bullet_index].sprite == 3)
	mov.w	r0, 3	# tmp66,
	cmp.w	r1, r0	# _1, tmp66
	jnz	.L266		#
# spaceinvaders.c:1676: 		alien_bullet[alien_bullet_index].sprite = 0;
	ld.w	r1, [r13 + (8)]	# tmp67, alien_bullet_index
	mov.w	r0, r1	# tmp68, tmp67
	mov.w	r2, 3	# tmp70,
	shl.w	r0, r2	# tmp69, tmp70
	add.w	r0, r1 #222	# tmp68, tmp67
	mov.w	r1, 2	# tmp72,
	shl.w	r0, r1	# tmp71, tmp72
	mov.w	r1, alien_bullet+16	# tmp74,
	add.w	r0, r1 #222	# tmp73, tmp74
	xor.w	r1, r1	# tmp75
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_38(D)].sprite, tmp75
	j	.L267		#
.L266:
# spaceinvaders.c:1678: 		alien_bullet[alien_bullet_index].sprite++;
	ld.w	r1, [r13 + (8)]	# tmp76, alien_bullet_index
	mov.w	r0, r1	# tmp77, tmp76
	mov.w	r2, 3	# tmp79,
	shl.w	r0, r2	# tmp78, tmp79
	add.w	r0, r1 #222	# tmp77, tmp76
	mov.w	r1, 2	# tmp81,
	shl.w	r0, r1	# tmp80, tmp81
	mov.w	r1, alien_bullet+16	# tmp83,
	add.w	r0, r1 #222	# tmp82, tmp83
	ld.w	r0, [r0]	# _2, alien_bullet[alien_bullet_index_38(D)].sprite
# spaceinvaders.c:1678: 		alien_bullet[alien_bullet_index].sprite++;
	mov.w	r2, r0	# _3, _2
	add.w	r2, 1 #111	# _3,
	ld.w	r1, [r13 + (8)]	# tmp84, alien_bullet_index
	mov.w	r0, r1	# tmp85, tmp84
	mov.w	r3, 3	# tmp87,
	shl.w	r0, r3	# tmp86, tmp87
	add.w	r0, r1 #222	# tmp85, tmp84
	mov.w	r1, 2	# tmp89,
	shl.w	r0, r1	# tmp88, tmp89
	mov.w	r1, alien_bullet+16	# tmp91,
	add.w	r0, r1 #222	# tmp90, tmp91
	st.w	[r0], r2	# alien_bullet[alien_bullet_index_38(D)].sprite, _3
.L267:
# spaceinvaders.c:1680: 	alien_bullet[alien_bullet_index].timer_for_sprite_change = 0;
	ld.w	r1, [r13 + (8)]	# tmp92, alien_bullet_index
	mov.w	r0, r1	# tmp93, tmp92
	mov.w	r2, 3	# tmp95,
	shl.w	r0, r2	# tmp94, tmp95
	add.w	r0, r1 #222	# tmp93, tmp92
	mov.w	r1, 2	# tmp97,
	shl.w	r0, r1	# tmp96, tmp97
	mov.w	r1, alien_bullet+28	# tmp99,
	add.w	r0, r1 #222	# tmp98, tmp99
	xor.w	r1, r1	# tmp100
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_38(D)].timer_for_sprite_change, tmp100
# spaceinvaders.c:1682: 	if(alien_bullet[alien_bullet_index].type == 0)
	ld.w	r1, [r13 + (8)]	# tmp101, alien_bullet_index
	mov.w	r0, r1	# tmp102, tmp101
	mov.w	r2, 3	# tmp104,
	shl.w	r0, r2	# tmp103, tmp104
	add.w	r0, r1 #222	# tmp102, tmp101
	mov.w	r1, 2	# tmp106,
	shl.w	r0, r1	# tmp105, tmp106
	mov.w	r1, alien_bullet+12	# tmp108,
	add.w	r0, r1 #222	# tmp107, tmp108
	ld.w	r1, [r0]	# _4, alien_bullet[alien_bullet_index_38(D)].type
# spaceinvaders.c:1682: 	if(alien_bullet[alien_bullet_index].type == 0)
	xor.w	r0, r0	# tmp109
	cmp.w	r1, r0	# _4, tmp109
	jnz	.L268		#
# spaceinvaders.c:1684: 		switch(alien_bullet[alien_bullet_index].sprite)
	ld.w	r1, [r13 + (8)]	# tmp110, alien_bullet_index
	mov.w	r0, r1	# tmp111, tmp110
	mov.w	r2, 3	# tmp113,
	shl.w	r0, r2	# tmp112, tmp113
	add.w	r0, r1 #222	# tmp111, tmp110
	mov.w	r1, 2	# tmp115,
	shl.w	r0, r1	# tmp114, tmp115
	mov.w	r1, alien_bullet+16	# tmp117,
	add.w	r0, r1 #222	# tmp116, tmp117
	ld.w	r0, [r0]	# _5, alien_bullet[alien_bullet_index_38(D)].sprite
# spaceinvaders.c:1684: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp118,
	cmp.w	r0, r1	# _5, tmp118
	jz	.L269		#
	mov.w	r1, 2	# tmp119,
	cmp.w	r0, r1	# _5, tmp119
	jgs	.L270		#
	xor.w	r1, r1	# tmp120
	cmp.w	r0, r1	# _5, tmp120
	jz	.L271		#
	mov.w	r1, 1	# tmp121,
	cmp.w	r0, r1	# _5, tmp121
	jz	.L272		#
	j	.L270		#
.L271:
# spaceinvaders.c:1687: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp122, alien_bullet_index
	mov.w	r0, r1	# tmp123, tmp122
	mov.w	r2, 3	# tmp125,
	shl.w	r0, r2	# tmp124, tmp125
	add.w	r0, r1 #222	# tmp123, tmp122
	mov.w	r1, 2	# tmp127,
	shl.w	r0, r1	# tmp126, tmp127
	mov.w	r1, alien_bullet	# tmp129,
	add.w	r0, r1 #222	# tmp128, tmp129
	ld.w	r2, [r0]	# _6, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp130, alien_bullet_index
	mov.w	r0, r1	# tmp131, tmp130
	mov.w	r3, 3	# tmp133,
	shl.w	r0, r3	# tmp132, tmp133
	add.w	r0, r1 #222	# tmp131, tmp130
	mov.w	r1, 2	# tmp135,
	shl.w	r0, r1	# tmp134, tmp135
	mov.w	r1, alien_bullet+4	# tmp137,
	add.w	r0, r1 #222	# tmp136, tmp137
	ld.w	r1, [r0]	# _7, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp138,
	mov.w	r3, alien_bullet0_sprite0	# tmp139,
	st.w	[r0 + (16)], r3	#, tmp139
	mov.w	r3, 8	# tmp140,
	st.w	[r0 + (12)], r3	#, tmp140
	mov.w	r3, 8	# tmp141,
	st.w	[r0 + (8)], r3	#, tmp141
	st.w	[r0 + (4)], r1	#, _7
	st.w	[r0], r2	#, _6
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1688: 			break;
	j	.L274		#
.L272:
# spaceinvaders.c:1690: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp142, alien_bullet_index
	mov.w	r0, r1	# tmp143, tmp142
	mov.w	r2, 3	# tmp145,
	shl.w	r0, r2	# tmp144, tmp145
	add.w	r0, r1 #222	# tmp143, tmp142
	mov.w	r1, 2	# tmp147,
	shl.w	r0, r1	# tmp146, tmp147
	mov.w	r1, alien_bullet	# tmp149,
	add.w	r0, r1 #222	# tmp148, tmp149
	ld.w	r2, [r0]	# _8, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp150, alien_bullet_index
	mov.w	r0, r1	# tmp151, tmp150
	mov.w	r3, 3	# tmp153,
	shl.w	r0, r3	# tmp152, tmp153
	add.w	r0, r1 #222	# tmp151, tmp150
	mov.w	r1, 2	# tmp155,
	shl.w	r0, r1	# tmp154, tmp155
	mov.w	r1, alien_bullet+4	# tmp157,
	add.w	r0, r1 #222	# tmp156, tmp157
	ld.w	r1, [r0]	# _9, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp158,
	mov.w	r3, alien_bullet0_sprite1	# tmp159,
	st.w	[r0 + (16)], r3	#, tmp159
	mov.w	r3, 8	# tmp160,
	st.w	[r0 + (12)], r3	#, tmp160
	mov.w	r3, 8	# tmp161,
	st.w	[r0 + (8)], r3	#, tmp161
	st.w	[r0 + (4)], r1	#, _9
	st.w	[r0], r2	#, _8
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1691: 			break;
	j	.L274		#
.L269:
# spaceinvaders.c:1693: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
	ld.w	r1, [r13 + (8)]	# tmp162, alien_bullet_index
	mov.w	r0, r1	# tmp163, tmp162
	mov.w	r2, 3	# tmp165,
	shl.w	r0, r2	# tmp164, tmp165
	add.w	r0, r1 #222	# tmp163, tmp162
	mov.w	r1, 2	# tmp167,
	shl.w	r0, r1	# tmp166, tmp167
	mov.w	r1, alien_bullet	# tmp169,
	add.w	r0, r1 #222	# tmp168, tmp169
	ld.w	r2, [r0]	# _10, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp170, alien_bullet_index
	mov.w	r0, r1	# tmp171, tmp170
	mov.w	r3, 3	# tmp173,
	shl.w	r0, r3	# tmp172, tmp173
	add.w	r0, r1 #222	# tmp171, tmp170
	mov.w	r1, 2	# tmp175,
	shl.w	r0, r1	# tmp174, tmp175
	mov.w	r1, alien_bullet+4	# tmp177,
	add.w	r0, r1 #222	# tmp176, tmp177
	ld.w	r1, [r0]	# _11, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp178,
	mov.w	r3, alien_bullet0_sprite2	# tmp179,
	st.w	[r0 + (16)], r3	#, tmp179
	mov.w	r3, 8	# tmp180,
	st.w	[r0 + (12)], r3	#, tmp180
	mov.w	r3, 8	# tmp181,
	st.w	[r0 + (8)], r3	#, tmp181
	st.w	[r0 + (4)], r1	#, _11
	st.w	[r0], r2	#, _10
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1694: 			break;
	j	.L274		#
.L270:
# spaceinvaders.c:1696: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
	ld.w	r1, [r13 + (8)]	# tmp182, alien_bullet_index
	mov.w	r0, r1	# tmp183, tmp182
	mov.w	r2, 3	# tmp185,
	shl.w	r0, r2	# tmp184, tmp185
	add.w	r0, r1 #222	# tmp183, tmp182
	mov.w	r1, 2	# tmp187,
	shl.w	r0, r1	# tmp186, tmp187
	mov.w	r1, alien_bullet	# tmp189,
	add.w	r0, r1 #222	# tmp188, tmp189
	ld.w	r2, [r0]	# _12, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp190, alien_bullet_index
	mov.w	r0, r1	# tmp191, tmp190
	mov.w	r3, 3	# tmp193,
	shl.w	r0, r3	# tmp192, tmp193
	add.w	r0, r1 #222	# tmp191, tmp190
	mov.w	r1, 2	# tmp195,
	shl.w	r0, r1	# tmp194, tmp195
	mov.w	r1, alien_bullet+4	# tmp197,
	add.w	r0, r1 #222	# tmp196, tmp197
	ld.w	r1, [r0]	# _13, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp198,
	mov.w	r3, alien_bullet0_sprite3	# tmp199,
	st.w	[r0 + (16)], r3	#, tmp199
	mov.w	r3, 8	# tmp200,
	st.w	[r0 + (12)], r3	#, tmp200
	mov.w	r3, 8	# tmp201,
	st.w	[r0 + (8)], r3	#, tmp201
	st.w	[r0 + (4)], r1	#, _13
	st.w	[r0], r2	#, _12
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1697: 			break;	
	j	.L274		#
.L268:
# spaceinvaders.c:1700: 	else if (alien_bullet[alien_bullet_index].type == 1)
	ld.w	r1, [r13 + (8)]	# tmp202, alien_bullet_index
	mov.w	r0, r1	# tmp203, tmp202
	mov.w	r2, 3	# tmp205,
	shl.w	r0, r2	# tmp204, tmp205
	add.w	r0, r1 #222	# tmp203, tmp202
	mov.w	r1, 2	# tmp207,
	shl.w	r0, r1	# tmp206, tmp207
	mov.w	r1, alien_bullet+12	# tmp209,
	add.w	r0, r1 #222	# tmp208, tmp209
	ld.w	r1, [r0]	# _14, alien_bullet[alien_bullet_index_38(D)].type
# spaceinvaders.c:1700: 	else if (alien_bullet[alien_bullet_index].type == 1)
	mov.w	r0, 1	# tmp210,
	cmp.w	r1, r0	# _14, tmp210
	jnz	.L275		#
# spaceinvaders.c:1702: 		switch(alien_bullet[alien_bullet_index].sprite)
	ld.w	r1, [r13 + (8)]	# tmp211, alien_bullet_index
	mov.w	r0, r1	# tmp212, tmp211
	mov.w	r2, 3	# tmp214,
	shl.w	r0, r2	# tmp213, tmp214
	add.w	r0, r1 #222	# tmp212, tmp211
	mov.w	r1, 2	# tmp216,
	shl.w	r0, r1	# tmp215, tmp216
	mov.w	r1, alien_bullet+16	# tmp218,
	add.w	r0, r1 #222	# tmp217, tmp218
	ld.w	r0, [r0]	# _15, alien_bullet[alien_bullet_index_38(D)].sprite
# spaceinvaders.c:1702: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp219,
	cmp.w	r0, r1	# _15, tmp219
	jz	.L276		#
	mov.w	r1, 2	# tmp220,
	cmp.w	r0, r1	# _15, tmp220
	jgs	.L277		#
	xor.w	r1, r1	# tmp221
	cmp.w	r0, r1	# _15, tmp221
	jz	.L278		#
	mov.w	r1, 1	# tmp222,
	cmp.w	r0, r1	# _15, tmp222
	jz	.L279		#
	j	.L277		#
.L278:
# spaceinvaders.c:1705: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp223, alien_bullet_index
	mov.w	r0, r1	# tmp224, tmp223
	mov.w	r2, 3	# tmp226,
	shl.w	r0, r2	# tmp225, tmp226
	add.w	r0, r1 #222	# tmp224, tmp223
	mov.w	r1, 2	# tmp228,
	shl.w	r0, r1	# tmp227, tmp228
	mov.w	r1, alien_bullet	# tmp230,
	add.w	r0, r1 #222	# tmp229, tmp230
	ld.w	r2, [r0]	# _16, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp231, alien_bullet_index
	mov.w	r0, r1	# tmp232, tmp231
	mov.w	r3, 3	# tmp234,
	shl.w	r0, r3	# tmp233, tmp234
	add.w	r0, r1 #222	# tmp232, tmp231
	mov.w	r1, 2	# tmp236,
	shl.w	r0, r1	# tmp235, tmp236
	mov.w	r1, alien_bullet+4	# tmp238,
	add.w	r0, r1 #222	# tmp237, tmp238
	ld.w	r1, [r0]	# _17, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp239,
	mov.w	r3, alien_bullet1_sprite0	# tmp240,
	st.w	[r0 + (16)], r3	#, tmp240
	mov.w	r3, 8	# tmp241,
	st.w	[r0 + (12)], r3	#, tmp241
	mov.w	r3, 8	# tmp242,
	st.w	[r0 + (8)], r3	#, tmp242
	st.w	[r0 + (4)], r1	#, _17
	st.w	[r0], r2	#, _16
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1706: 			break;
	j	.L274		#
.L279:
# spaceinvaders.c:1708: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp243, alien_bullet_index
	mov.w	r0, r1	# tmp244, tmp243
	mov.w	r2, 3	# tmp246,
	shl.w	r0, r2	# tmp245, tmp246
	add.w	r0, r1 #222	# tmp244, tmp243
	mov.w	r1, 2	# tmp248,
	shl.w	r0, r1	# tmp247, tmp248
	mov.w	r1, alien_bullet	# tmp250,
	add.w	r0, r1 #222	# tmp249, tmp250
	ld.w	r2, [r0]	# _18, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp251, alien_bullet_index
	mov.w	r0, r1	# tmp252, tmp251
	mov.w	r3, 3	# tmp254,
	shl.w	r0, r3	# tmp253, tmp254
	add.w	r0, r1 #222	# tmp252, tmp251
	mov.w	r1, 2	# tmp256,
	shl.w	r0, r1	# tmp255, tmp256
	mov.w	r1, alien_bullet+4	# tmp258,
	add.w	r0, r1 #222	# tmp257, tmp258
	ld.w	r1, [r0]	# _19, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp259,
	mov.w	r3, alien_bullet1_sprite1	# tmp260,
	st.w	[r0 + (16)], r3	#, tmp260
	mov.w	r3, 8	# tmp261,
	st.w	[r0 + (12)], r3	#, tmp261
	mov.w	r3, 8	# tmp262,
	st.w	[r0 + (8)], r3	#, tmp262
	st.w	[r0 + (4)], r1	#, _19
	st.w	[r0], r2	#, _18
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1709: 			break;
	j	.L274		#
.L276:
# spaceinvaders.c:1711: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
	ld.w	r1, [r13 + (8)]	# tmp263, alien_bullet_index
	mov.w	r0, r1	# tmp264, tmp263
	mov.w	r2, 3	# tmp266,
	shl.w	r0, r2	# tmp265, tmp266
	add.w	r0, r1 #222	# tmp264, tmp263
	mov.w	r1, 2	# tmp268,
	shl.w	r0, r1	# tmp267, tmp268
	mov.w	r1, alien_bullet	# tmp270,
	add.w	r0, r1 #222	# tmp269, tmp270
	ld.w	r2, [r0]	# _20, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp271, alien_bullet_index
	mov.w	r0, r1	# tmp272, tmp271
	mov.w	r3, 3	# tmp274,
	shl.w	r0, r3	# tmp273, tmp274
	add.w	r0, r1 #222	# tmp272, tmp271
	mov.w	r1, 2	# tmp276,
	shl.w	r0, r1	# tmp275, tmp276
	mov.w	r1, alien_bullet+4	# tmp278,
	add.w	r0, r1 #222	# tmp277, tmp278
	ld.w	r1, [r0]	# _21, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp279,
	mov.w	r3, alien_bullet1_sprite2	# tmp280,
	st.w	[r0 + (16)], r3	#, tmp280
	mov.w	r3, 8	# tmp281,
	st.w	[r0 + (12)], r3	#, tmp281
	mov.w	r3, 8	# tmp282,
	st.w	[r0 + (8)], r3	#, tmp282
	st.w	[r0 + (4)], r1	#, _21
	st.w	[r0], r2	#, _20
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1712: 			break;
	j	.L274		#
.L277:
# spaceinvaders.c:1714: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp283, alien_bullet_index
	mov.w	r0, r1	# tmp284, tmp283
	mov.w	r2, 3	# tmp286,
	shl.w	r0, r2	# tmp285, tmp286
	add.w	r0, r1 #222	# tmp284, tmp283
	mov.w	r1, 2	# tmp288,
	shl.w	r0, r1	# tmp287, tmp288
	mov.w	r1, alien_bullet	# tmp290,
	add.w	r0, r1 #222	# tmp289, tmp290
	ld.w	r2, [r0]	# _22, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp291, alien_bullet_index
	mov.w	r0, r1	# tmp292, tmp291
	mov.w	r3, 3	# tmp294,
	shl.w	r0, r3	# tmp293, tmp294
	add.w	r0, r1 #222	# tmp292, tmp291
	mov.w	r1, 2	# tmp296,
	shl.w	r0, r1	# tmp295, tmp296
	mov.w	r1, alien_bullet+4	# tmp298,
	add.w	r0, r1 #222	# tmp297, tmp298
	ld.w	r1, [r0]	# _23, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp299,
	mov.w	r3, alien_bullet1_sprite1	# tmp300,
	st.w	[r0 + (16)], r3	#, tmp300
	mov.w	r3, 8	# tmp301,
	st.w	[r0 + (12)], r3	#, tmp301
	mov.w	r3, 8	# tmp302,
	st.w	[r0 + (8)], r3	#, tmp302
	st.w	[r0 + (4)], r1	#, _23
	st.w	[r0], r2	#, _22
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1715: 			break;	
	j	.L274		#
.L275:
# spaceinvaders.c:1720: 		switch(alien_bullet[alien_bullet_index].sprite)
	ld.w	r1, [r13 + (8)]	# tmp303, alien_bullet_index
	mov.w	r0, r1	# tmp304, tmp303
	mov.w	r2, 3	# tmp306,
	shl.w	r0, r2	# tmp305, tmp306
	add.w	r0, r1 #222	# tmp304, tmp303
	mov.w	r1, 2	# tmp308,
	shl.w	r0, r1	# tmp307, tmp308
	mov.w	r1, alien_bullet+16	# tmp310,
	add.w	r0, r1 #222	# tmp309, tmp310
	ld.w	r0, [r0]	# _24, alien_bullet[alien_bullet_index_38(D)].sprite
# spaceinvaders.c:1720: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp311,
	cmp.w	r0, r1	# _24, tmp311
	jz	.L281		#
	mov.w	r1, 2	# tmp312,
	cmp.w	r0, r1	# _24, tmp312
	jgs	.L282		#
	xor.w	r1, r1	# tmp313
	cmp.w	r0, r1	# _24, tmp313
	jz	.L283		#
	mov.w	r1, 1	# tmp314,
	cmp.w	r0, r1	# _24, tmp314
	jz	.L284		#
	j	.L282		#
.L283:
# spaceinvaders.c:1723: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp315, alien_bullet_index
	mov.w	r0, r1	# tmp316, tmp315
	mov.w	r2, 3	# tmp318,
	shl.w	r0, r2	# tmp317, tmp318
	add.w	r0, r1 #222	# tmp316, tmp315
	mov.w	r1, 2	# tmp320,
	shl.w	r0, r1	# tmp319, tmp320
	mov.w	r1, alien_bullet	# tmp322,
	add.w	r0, r1 #222	# tmp321, tmp322
	ld.w	r2, [r0]	# _25, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp323, alien_bullet_index
	mov.w	r0, r1	# tmp324, tmp323
	mov.w	r3, 3	# tmp326,
	shl.w	r0, r3	# tmp325, tmp326
	add.w	r0, r1 #222	# tmp324, tmp323
	mov.w	r1, 2	# tmp328,
	shl.w	r0, r1	# tmp327, tmp328
	mov.w	r1, alien_bullet+4	# tmp330,
	add.w	r0, r1 #222	# tmp329, tmp330
	ld.w	r1, [r0]	# _26, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp331,
	mov.w	r3, alien_bullet2_sprite0	# tmp332,
	st.w	[r0 + (16)], r3	#, tmp332
	mov.w	r3, 8	# tmp333,
	st.w	[r0 + (12)], r3	#, tmp333
	mov.w	r3, 8	# tmp334,
	st.w	[r0 + (8)], r3	#, tmp334
	st.w	[r0 + (4)], r1	#, _26
	st.w	[r0], r2	#, _25
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1724: 			break;
	j	.L274		#
.L284:
# spaceinvaders.c:1726: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
	ld.w	r1, [r13 + (8)]	# tmp335, alien_bullet_index
	mov.w	r0, r1	# tmp336, tmp335
	mov.w	r2, 3	# tmp338,
	shl.w	r0, r2	# tmp337, tmp338
	add.w	r0, r1 #222	# tmp336, tmp335
	mov.w	r1, 2	# tmp340,
	shl.w	r0, r1	# tmp339, tmp340
	mov.w	r1, alien_bullet	# tmp342,
	add.w	r0, r1 #222	# tmp341, tmp342
	ld.w	r2, [r0]	# _27, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp343, alien_bullet_index
	mov.w	r0, r1	# tmp344, tmp343
	mov.w	r3, 3	# tmp346,
	shl.w	r0, r3	# tmp345, tmp346
	add.w	r0, r1 #222	# tmp344, tmp343
	mov.w	r1, 2	# tmp348,
	shl.w	r0, r1	# tmp347, tmp348
	mov.w	r1, alien_bullet+4	# tmp350,
	add.w	r0, r1 #222	# tmp349, tmp350
	ld.w	r1, [r0]	# _28, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp351,
	mov.w	r3, alien_bullet2_sprite1	# tmp352,
	st.w	[r0 + (16)], r3	#, tmp352
	mov.w	r3, 8	# tmp353,
	st.w	[r0 + (12)], r3	#, tmp353
	mov.w	r3, 8	# tmp354,
	st.w	[r0 + (8)], r3	#, tmp354
	st.w	[r0 + (4)], r1	#, _28
	st.w	[r0], r2	#, _27
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1727: 			break;
	j	.L274		#
.L281:
# spaceinvaders.c:1729: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
	ld.w	r1, [r13 + (8)]	# tmp355, alien_bullet_index
	mov.w	r0, r1	# tmp356, tmp355
	mov.w	r2, 3	# tmp358,
	shl.w	r0, r2	# tmp357, tmp358
	add.w	r0, r1 #222	# tmp356, tmp355
	mov.w	r1, 2	# tmp360,
	shl.w	r0, r1	# tmp359, tmp360
	mov.w	r1, alien_bullet	# tmp362,
	add.w	r0, r1 #222	# tmp361, tmp362
	ld.w	r2, [r0]	# _29, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp363, alien_bullet_index
	mov.w	r0, r1	# tmp364, tmp363
	mov.w	r3, 3	# tmp366,
	shl.w	r0, r3	# tmp365, tmp366
	add.w	r0, r1 #222	# tmp364, tmp363
	mov.w	r1, 2	# tmp368,
	shl.w	r0, r1	# tmp367, tmp368
	mov.w	r1, alien_bullet+4	# tmp370,
	add.w	r0, r1 #222	# tmp369, tmp370
	ld.w	r1, [r0]	# _30, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp371,
	mov.w	r3, alien_bullet2_sprite2	# tmp372,
	st.w	[r0 + (16)], r3	#, tmp372
	mov.w	r3, 8	# tmp373,
	st.w	[r0 + (12)], r3	#, tmp373
	mov.w	r3, 8	# tmp374,
	st.w	[r0 + (8)], r3	#, tmp374
	st.w	[r0 + (4)], r1	#, _30
	st.w	[r0], r2	#, _29
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1730: 			break;
	j	.L274		#
.L282:
# spaceinvaders.c:1732: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
	ld.w	r1, [r13 + (8)]	# tmp375, alien_bullet_index
	mov.w	r0, r1	# tmp376, tmp375
	mov.w	r2, 3	# tmp378,
	shl.w	r0, r2	# tmp377, tmp378
	add.w	r0, r1 #222	# tmp376, tmp375
	mov.w	r1, 2	# tmp380,
	shl.w	r0, r1	# tmp379, tmp380
	mov.w	r1, alien_bullet	# tmp382,
	add.w	r0, r1 #222	# tmp381, tmp382
	ld.w	r2, [r0]	# _31, alien_bullet[alien_bullet_index_38(D)].x
	ld.w	r1, [r13 + (8)]	# tmp383, alien_bullet_index
	mov.w	r0, r1	# tmp384, tmp383
	mov.w	r3, 3	# tmp386,
	shl.w	r0, r3	# tmp385, tmp386
	add.w	r0, r1 #222	# tmp384, tmp383
	mov.w	r1, 2	# tmp388,
	shl.w	r0, r1	# tmp387, tmp388
	mov.w	r1, alien_bullet+4	# tmp390,
	add.w	r0, r1 #222	# tmp389, tmp390
	ld.w	r1, [r0]	# _32, alien_bullet[alien_bullet_index_38(D)].y
	mov.w	r0, sp	# tmp391,
	mov.w	r3, alien_bullet2_sprite3	# tmp392,
	st.w	[r0 + (16)], r3	#, tmp392
	mov.w	r3, 8	# tmp393,
	st.w	[r0 + (12)], r3	#, tmp393
	mov.w	r3, 8	# tmp394,
	st.w	[r0 + (8)], r3	#, tmp394
	st.w	[r0 + (4)], r1	#, _32
	st.w	[r0], r2	#, _31
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1733: 			break;	
	nop	
.L274:
# spaceinvaders.c:1736: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_alien_bullet_sprite, .-draw_alien_bullet_sprite
	.p2align	1
	.global	spawn_alien_bullet
	.type	spawn_alien_bullet, @function
spawn_alien_bullet:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 96 #111	#,
# spaceinvaders.c:1740: 	int alien_column = rand() % 11;
	call	rand		#
# spaceinvaders.c:1740: 	int alien_column = rand() % 11;
	mov.w	r1, 11	# tmp65,
	div.w	r0, r1	# tmp64, tmp65
mov.w	r0, r14	# tmp64
	st.w	[r13 + (-28)], r0	# alien_column, tmp64
# spaceinvaders.c:1741: 	int bullet_y = 0;
	xor.w	r0, r0	# tmp66
	st.w	[r13 + (-4)], r0	# bullet_y, tmp66
# spaceinvaders.c:1742: 	int bullet_x = 0;
	xor.w	r0, r0	# tmp67
	st.w	[r13 + (-8)], r0	# bullet_x, tmp67
# spaceinvaders.c:1743: 	int current_row = 0;
	xor.w	r0, r0	# tmp68
	st.w	[r13 + (-12)], r0	# current_row, tmp68
# spaceinvaders.c:1744: 	int row_empty = 0;
	xor.w	r0, r0	# tmp69
	st.w	[r13 + (-16)], r0	# row_empty, tmp69
# spaceinvaders.c:1745: 	int num_of_checks = 0;
	xor.w	r0, r0	# tmp70
	st.w	[r13 + (-20)], r0	# num_of_checks, tmp70
# spaceinvaders.c:1751: 	int empty_rows[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
	mov.w	r0, -1	# tmp71,
	st.w	[r13 + (-72)], r0	# empty_rows, tmp71
	mov.w	r0, -1	# tmp72,
	st.w	[r13 + (-68)], r0	# empty_rows, tmp72
	mov.w	r0, -1	# tmp73,
	st.w	[r13 + (-64)], r0	# empty_rows, tmp73
	mov.w	r0, -1	# tmp74,
	st.w	[r13 + (-60)], r0	# empty_rows, tmp74
	mov.w	r0, -1	# tmp75,
	st.w	[r13 + (-56)], r0	# empty_rows, tmp75
	mov.w	r0, -1	# tmp76,
	st.w	[r13 + (-52)], r0	# empty_rows, tmp76
	mov.w	r0, -1	# tmp77,
	st.w	[r13 + (-48)], r0	# empty_rows, tmp77
	mov.w	r0, -1	# tmp78,
	st.w	[r13 + (-44)], r0	# empty_rows, tmp78
	mov.w	r0, -1	# tmp79,
	st.w	[r13 + (-40)], r0	# empty_rows, tmp79
	mov.w	r0, -1	# tmp80,
	st.w	[r13 + (-36)], r0	# empty_rows, tmp80
	mov.w	r0, -1	# tmp81,
	st.w	[r13 + (-32)], r0	# empty_rows, tmp81
.L300:
# spaceinvaders.c:1762: 		num_of_checks++;
	ld.w	r0, [r13 + (-20)]	# tmp83, num_of_checks
	add.w	r0, 1 #111	# tmp82,
	st.w	[r13 + (-20)], r0	# num_of_checks, tmp82
# spaceinvaders.c:1763: 		if(num_of_checks > 100000)
	ld.w	r1, [r13 + (-20)]	# tmp84, num_of_checks
	mov.w	r0, 100000	# tmp85,
	cmp.w	r1, r0	# tmp84, tmp85
	jgs	.L306		#
# spaceinvaders.c:1767: 		alien_column = rand() % 11;
	call	rand		#
# spaceinvaders.c:1767: 		alien_column = rand() % 11;
	mov.w	r1, 11	# tmp87,
	div.w	r0, r1	# tmp86, tmp87
mov.w	r0, r14	# tmp86
	st.w	[r13 + (-28)], r0	# alien_column, tmp86
# spaceinvaders.c:1775: 		for(int i = 0; i < 11; i++)
	xor.w	r0, r0	# tmp88
	st.w	[r13 + (-24)], r0	# i, tmp88
# spaceinvaders.c:1775: 		for(int i = 0; i < 11; i++)
	j	.L288		#
.L292:
# spaceinvaders.c:1777: 			if(empty_rows[i] == alien_column)
	ld.w	r1, [r13 + (-24)]	# tmp89, i
	mov.w	r0, 2	# tmp91,
	shl.w	r1, r0	# tmp90, tmp91
	mov.w	r0, r13	# tmp92,
	add.w	r0, r1 #222	# tmp92, tmp90
	add.w	r0, -72 #111	# tmp93,
	ld.w	r0, [r0]	# _3, empty_rows
# spaceinvaders.c:1777: 			if(empty_rows[i] == alien_column)
	ld.w	r1, [r13 + (-28)]	# tmp94, alien_column
	cmp.w	r1, r0	# tmp94, _3
	jnz	.L289		#
# spaceinvaders.c:1779: 				row_empty = 1;
	mov.w	r0, 1	# tmp95,
	st.w	[r13 + (-16)], r0	# row_empty, tmp95
# spaceinvaders.c:1780: 				break;
	j	.L290		#
.L289:
# spaceinvaders.c:1782: 			else if(empty_rows[i] == -1)
	ld.w	r1, [r13 + (-24)]	# tmp96, i
	mov.w	r0, 2	# tmp98,
	shl.w	r1, r0	# tmp97, tmp98
	mov.w	r0, r13	# tmp99,
	add.w	r0, r1 #222	# tmp99, tmp97
	add.w	r0, -72 #111	# tmp100,
	ld.w	r1, [r0]	# _4, empty_rows
# spaceinvaders.c:1782: 			else if(empty_rows[i] == -1)
	mov.w	r0, -1	# tmp101,
	cmp.w	r1, r0	# _4, tmp101
	jnz	.L291		#
# spaceinvaders.c:1784: 				row_empty = 0;
	xor.w	r0, r0	# tmp102
	st.w	[r13 + (-16)], r0	# row_empty, tmp102
# spaceinvaders.c:1785: 				break;	
	j	.L290		#
.L291:
# spaceinvaders.c:1775: 		for(int i = 0; i < 11; i++)
	ld.w	r0, [r13 + (-24)]	# tmp104, i
	add.w	r0, 1 #111	# tmp103,
	st.w	[r13 + (-24)], r0	# i, tmp103
.L288:
# spaceinvaders.c:1775: 		for(int i = 0; i < 11; i++)
	ld.w	r1, [r13 + (-24)]	# tmp105, i
	mov.w	r0, 10	# tmp106,
	cmp.w	r1, r0	# tmp105, tmp106
	jses	.L292		#
.L290:
# spaceinvaders.c:1794: 		if(row_empty == 0)
	ld.w	r1, [r13 + (-16)]	# tmp107, row_empty
	xor.w	r0, r0	# tmp108
	cmp.w	r1, r0	# tmp107, tmp108
	jnz	.L293		#
# spaceinvaders.c:1796: 			if(row_5_octopus[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp109, alien_column
	mov.w	r1, 3	# tmp111,
	shl.w	r0, r1	# tmp110, tmp111
	mov.w	r1, row_5_octopus+6	# tmp113,
	add.w	r0, r1 #222	# tmp112, tmp113
	ld.s	r0, [r0]	# _5, row_5_octopus[alien_column_75].alive
# spaceinvaders.c:1796: 			if(row_5_octopus[alien_column].alive != 0)
	sex.s	r1, r0	# tmp114, _5
	xor.w	r0, r0	# tmp115
	cmp.w	r1, r0	# tmp114, tmp115
	jz	.L294		#
# spaceinvaders.c:1798: 				bullet_x = row_5_octopus[alien_column].x + 6;
	ld.w	r0, [r13 + (-28)]	# tmp116, alien_column
	mov.w	r1, 3	# tmp118,
	shl.w	r0, r1	# tmp117, tmp118
	mov.w	r1, row_5_octopus+2	# tmp120,
	add.w	r0, r1 #222	# tmp119, tmp120
	ld.s	r0, [r0]	# _6, row_5_octopus[alien_column_75].x
	sex.s	r0, r0	# _7, _6
# spaceinvaders.c:1798: 				bullet_x = row_5_octopus[alien_column].x + 6;
	add.w	r0, 6 #111	# tmp121,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp121
# spaceinvaders.c:1799: 				bullet_y = row_5_octopus[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp122, alien_column
	mov.w	r1, 3	# tmp124,
	shl.w	r0, r1	# tmp123, tmp124
	mov.w	r1, row_5_octopus+4	# tmp126,
	add.w	r0, r1 #222	# tmp125, tmp126
	ld.s	r0, [r0]	# _8, row_5_octopus[alien_column_75].y
	sex.s	r0, r0	# _9, _8
# spaceinvaders.c:1799: 				bullet_y = row_5_octopus[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp127,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp127
	j	.L293		#
.L294:
# spaceinvaders.c:1801: 			else if(row_4_octopus[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp128, alien_column
	mov.w	r1, 3	# tmp130,
	shl.w	r0, r1	# tmp129, tmp130
	mov.w	r1, row_4_octopus+6	# tmp132,
	add.w	r0, r1 #222	# tmp131, tmp132
	ld.s	r0, [r0]	# _10, row_4_octopus[alien_column_75].alive
# spaceinvaders.c:1801: 			else if(row_4_octopus[alien_column].alive != 0)
	sex.s	r1, r0	# tmp133, _10
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jz	.L295		#
# spaceinvaders.c:1803: 				bullet_x = row_4_octopus[alien_column].x + 6;
	ld.w	r0, [r13 + (-28)]	# tmp135, alien_column
	mov.w	r1, 3	# tmp137,
	shl.w	r0, r1	# tmp136, tmp137
	mov.w	r1, row_4_octopus+2	# tmp139,
	add.w	r0, r1 #222	# tmp138, tmp139
	ld.s	r0, [r0]	# _11, row_4_octopus[alien_column_75].x
	sex.s	r0, r0	# _12, _11
# spaceinvaders.c:1803: 				bullet_x = row_4_octopus[alien_column].x + 6;
	add.w	r0, 6 #111	# tmp140,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp140
# spaceinvaders.c:1804: 				bullet_y = row_4_octopus[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp141, alien_column
	mov.w	r1, 3	# tmp143,
	shl.w	r0, r1	# tmp142, tmp143
	mov.w	r1, row_4_octopus+4	# tmp145,
	add.w	r0, r1 #222	# tmp144, tmp145
	ld.s	r0, [r0]	# _13, row_4_octopus[alien_column_75].y
	sex.s	r0, r0	# _14, _13
# spaceinvaders.c:1804: 				bullet_y = row_4_octopus[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp146,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp146
	j	.L293		#
.L295:
# spaceinvaders.c:1806: 			else if(row_3_crab[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp147, alien_column
	mov.w	r1, 3	# tmp149,
	shl.w	r0, r1	# tmp148, tmp149
	mov.w	r1, row_3_crab+6	# tmp151,
	add.w	r0, r1 #222	# tmp150, tmp151
	ld.s	r0, [r0]	# _15, row_3_crab[alien_column_75].alive
# spaceinvaders.c:1806: 			else if(row_3_crab[alien_column].alive != 0)
	sex.s	r1, r0	# tmp152, _15
	xor.w	r0, r0	# tmp153
	cmp.w	r1, r0	# tmp152, tmp153
	jz	.L296		#
# spaceinvaders.c:1808: 				bullet_x = row_3_crab[alien_column].x + 5;
	ld.w	r0, [r13 + (-28)]	# tmp154, alien_column
	mov.w	r1, 3	# tmp156,
	shl.w	r0, r1	# tmp155, tmp156
	mov.w	r1, row_3_crab+2	# tmp158,
	add.w	r0, r1 #222	# tmp157, tmp158
	ld.s	r0, [r0]	# _16, row_3_crab[alien_column_75].x
	sex.s	r0, r0	# _17, _16
# spaceinvaders.c:1808: 				bullet_x = row_3_crab[alien_column].x + 5;
	add.w	r0, 5 #111	# tmp159,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp159
# spaceinvaders.c:1809: 				bullet_y = row_3_crab[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp160, alien_column
	mov.w	r1, 3	# tmp162,
	shl.w	r0, r1	# tmp161, tmp162
	mov.w	r1, row_3_crab+4	# tmp164,
	add.w	r0, r1 #222	# tmp163, tmp164
	ld.s	r0, [r0]	# _18, row_3_crab[alien_column_75].y
	sex.s	r0, r0	# _19, _18
# spaceinvaders.c:1809: 				bullet_y = row_3_crab[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp165,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp165
	j	.L293		#
.L296:
# spaceinvaders.c:1811: 			else if(row_2_crab[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp166, alien_column
	mov.w	r1, 3	# tmp168,
	shl.w	r0, r1	# tmp167, tmp168
	mov.w	r1, row_2_crab+6	# tmp170,
	add.w	r0, r1 #222	# tmp169, tmp170
	ld.s	r0, [r0]	# _20, row_2_crab[alien_column_75].alive
# spaceinvaders.c:1811: 			else if(row_2_crab[alien_column].alive != 0)
	sex.s	r1, r0	# tmp171, _20
	xor.w	r0, r0	# tmp172
	cmp.w	r1, r0	# tmp171, tmp172
	jz	.L297		#
# spaceinvaders.c:1813: 				bullet_x = row_2_crab[alien_column].x + 5;
	ld.w	r0, [r13 + (-28)]	# tmp173, alien_column
	mov.w	r1, 3	# tmp175,
	shl.w	r0, r1	# tmp174, tmp175
	mov.w	r1, row_2_crab+2	# tmp177,
	add.w	r0, r1 #222	# tmp176, tmp177
	ld.s	r0, [r0]	# _21, row_2_crab[alien_column_75].x
	sex.s	r0, r0	# _22, _21
# spaceinvaders.c:1813: 				bullet_x = row_2_crab[alien_column].x + 5;
	add.w	r0, 5 #111	# tmp178,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp178
# spaceinvaders.c:1814: 				bullet_y = row_2_crab[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp179, alien_column
	mov.w	r1, 3	# tmp181,
	shl.w	r0, r1	# tmp180, tmp181
	mov.w	r1, row_2_crab+4	# tmp183,
	add.w	r0, r1 #222	# tmp182, tmp183
	ld.s	r0, [r0]	# _23, row_2_crab[alien_column_75].y
	sex.s	r0, r0	# _24, _23
# spaceinvaders.c:1814: 				bullet_y = row_2_crab[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp184,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp184
	j	.L293		#
.L297:
# spaceinvaders.c:1816: 			else if(row_1_squid[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp185, alien_column
	mov.w	r1, 3	# tmp187,
	shl.w	r0, r1	# tmp186, tmp187
	mov.w	r1, row_1_squid+6	# tmp189,
	add.w	r0, r1 #222	# tmp188, tmp189
	ld.s	r0, [r0]	# _25, row_1_squid[alien_column_75].alive
# spaceinvaders.c:1816: 			else if(row_1_squid[alien_column].alive != 0)
	sex.s	r1, r0	# tmp190, _25
	xor.w	r0, r0	# tmp191
	cmp.w	r1, r0	# tmp190, tmp191
	jz	.L298		#
# spaceinvaders.c:1818: 				bullet_x = row_1_squid[alien_column].x + 4;
	ld.w	r0, [r13 + (-28)]	# tmp192, alien_column
	mov.w	r1, 3	# tmp194,
	shl.w	r0, r1	# tmp193, tmp194
	mov.w	r1, row_1_squid+2	# tmp196,
	add.w	r0, r1 #222	# tmp195, tmp196
	ld.s	r0, [r0]	# _26, row_1_squid[alien_column_75].x
	sex.s	r0, r0	# _27, _26
# spaceinvaders.c:1818: 				bullet_x = row_1_squid[alien_column].x + 4;
	add.w	r0, 4 #111	# tmp197,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp197
# spaceinvaders.c:1819: 				bullet_y = row_1_squid[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp198, alien_column
	mov.w	r1, 3	# tmp200,
	shl.w	r0, r1	# tmp199, tmp200
	mov.w	r1, row_1_squid+4	# tmp202,
	add.w	r0, r1 #222	# tmp201, tmp202
	ld.s	r0, [r0]	# _28, row_1_squid[alien_column_75].y
	sex.s	r0, r0	# _29, _28
# spaceinvaders.c:1819: 				bullet_y = row_1_squid[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp203,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp203
	j	.L293		#
.L298:
# spaceinvaders.c:1823: 				row_empty = 1;
	mov.w	r0, 1	# tmp204,
	st.w	[r13 + (-16)], r0	# row_empty, tmp204
# spaceinvaders.c:1824: 				empty_rows[current_row] = alien_column;
	ld.w	r1, [r13 + (-12)]	# tmp205, current_row
	mov.w	r0, 2	# tmp207,
	shl.w	r1, r0	# tmp206, tmp207
	mov.w	r0, r13	# tmp208,
	add.w	r0, r1 #222	# tmp208, tmp206
	add.w	r0, -72 #111	# tmp209,
	ld.w	r1, [r13 + (-28)]	# tmp210, alien_column
	st.w	[r0], r1	# empty_rows, tmp210
# spaceinvaders.c:1825: 				current_row++;
	ld.w	r0, [r13 + (-12)]	# tmp212, current_row
	add.w	r0, 1 #111	# tmp211,
	st.w	[r13 + (-12)], r0	# current_row, tmp211
.L293:
# spaceinvaders.c:1828: 	} while(row_empty == 1 && current_row != 11 /*Hvala!!!!*/);
	ld.w	r1, [r13 + (-16)]	# tmp213, row_empty
	mov.w	r0, 1	# tmp214,
	cmp.w	r1, r0	# tmp213, tmp214
	jnz	.L299		#
# spaceinvaders.c:1828: 	} while(row_empty == 1 && current_row != 11 /*Hvala!!!!*/);
	ld.w	r1, [r13 + (-12)]	# tmp215, current_row
	mov.w	r0, 11	# tmp216,
	cmp.w	r1, r0	# tmp215, tmp216
	jnz	.L300		#
.L299:
# spaceinvaders.c:1830: 	alien_bullet[alien_bullet_index].x = bullet_x;
	ld.w	r1, [r13 + (8)]	# tmp217, alien_bullet_index
	mov.w	r0, r1	# tmp218, tmp217
	mov.w	r2, 3	# tmp220,
	shl.w	r0, r2	# tmp219, tmp220
	add.w	r0, r1 #222	# tmp218, tmp217
	mov.w	r1, 2	# tmp222,
	shl.w	r0, r1	# tmp221, tmp222
	mov.w	r1, alien_bullet	# tmp224,
	add.w	r0, r1 #222	# tmp223, tmp224
	ld.w	r1, [r13 + (-8)]	# tmp225, bullet_x
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_93(D)].x, tmp225
# spaceinvaders.c:1831: 	alien_bullet[alien_bullet_index].y = bullet_y;
	ld.w	r1, [r13 + (8)]	# tmp226, alien_bullet_index
	mov.w	r0, r1	# tmp227, tmp226
	mov.w	r2, 3	# tmp229,
	shl.w	r0, r2	# tmp228, tmp229
	add.w	r0, r1 #222	# tmp227, tmp226
	mov.w	r1, 2	# tmp231,
	shl.w	r0, r1	# tmp230, tmp231
	mov.w	r1, alien_bullet+4	# tmp233,
	add.w	r0, r1 #222	# tmp232, tmp233
	ld.w	r1, [r13 + (-4)]	# tmp234, bullet_y
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_93(D)].y, tmp234
# spaceinvaders.c:1832: 	alien_bullet[alien_bullet_index].spawn_y = bullet_y;
	ld.w	r1, [r13 + (8)]	# tmp235, alien_bullet_index
	mov.w	r0, r1	# tmp236, tmp235
	mov.w	r2, 3	# tmp238,
	shl.w	r0, r2	# tmp237, tmp238
	add.w	r0, r1 #222	# tmp236, tmp235
	mov.w	r1, 2	# tmp240,
	shl.w	r0, r1	# tmp239, tmp240
	mov.w	r1, alien_bullet+8	# tmp242,
	add.w	r0, r1 #222	# tmp241, tmp242
	ld.w	r1, [r13 + (-4)]	# tmp243, bullet_y
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_93(D)].spawn_y, tmp243
# spaceinvaders.c:1833: 	alien_bullet[alien_bullet_index].type = rand() % 3;
	call	rand		#
	mov.w	r1, r0	# _30,
# spaceinvaders.c:1833: 	alien_bullet[alien_bullet_index].type = rand() % 3;
	mov.w	r0, 3	# tmp244,
	mov.w	r2, r1	# _31, _30
	div.w	r2, r0	# _31, tmp244
mov.w	r2, r14	# _31
# spaceinvaders.c:1833: 	alien_bullet[alien_bullet_index].type = rand() % 3;
	ld.w	r1, [r13 + (8)]	# tmp245, alien_bullet_index
	mov.w	r0, r1	# tmp246, tmp245
	mov.w	r3, 3	# tmp248,
	shl.w	r0, r3	# tmp247, tmp248
	add.w	r0, r1 #222	# tmp246, tmp245
	mov.w	r1, 2	# tmp250,
	shl.w	r0, r1	# tmp249, tmp250
	mov.w	r1, alien_bullet+12	# tmp252,
	add.w	r0, r1 #222	# tmp251, tmp252
	st.w	[r0], r2	# alien_bullet[alien_bullet_index_93(D)].type, _31
# spaceinvaders.c:1834: 	alien_bullet[alien_bullet_index].timer_for_move = 64;
	ld.w	r1, [r13 + (8)]	# tmp253, alien_bullet_index
	mov.w	r0, r1	# tmp254, tmp253
	mov.w	r2, 3	# tmp256,
	shl.w	r0, r2	# tmp255, tmp256
	add.w	r0, r1 #222	# tmp254, tmp253
	mov.w	r1, 2	# tmp258,
	shl.w	r0, r1	# tmp257, tmp258
	mov.w	r1, alien_bullet+24	# tmp260,
	add.w	r0, r1 #222	# tmp259, tmp260
	mov.w	r1, 64	# tmp261,
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_93(D)].timer_for_move, tmp261
# spaceinvaders.c:1835: 	alien_bullet[alien_bullet_index].timer_for_sprite_change = 0;
	ld.w	r1, [r13 + (8)]	# tmp262, alien_bullet_index
	mov.w	r0, r1	# tmp263, tmp262
	mov.w	r2, 3	# tmp265,
	shl.w	r0, r2	# tmp264, tmp265
	add.w	r0, r1 #222	# tmp263, tmp262
	mov.w	r1, 2	# tmp267,
	shl.w	r0, r1	# tmp266, tmp267
	mov.w	r1, alien_bullet+28	# tmp269,
	add.w	r0, r1 #222	# tmp268, tmp269
	xor.w	r1, r1	# tmp270
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_93(D)].timer_for_sprite_change, tmp270
# spaceinvaders.c:1836: 	alien_bullet[alien_bullet_index].status = MOVING;
	ld.w	r1, [r13 + (8)]	# tmp271, alien_bullet_index
	mov.w	r0, r1	# tmp272, tmp271
	mov.w	r2, 3	# tmp274,
	shl.w	r0, r2	# tmp273, tmp274
	add.w	r0, r1 #222	# tmp272, tmp271
	mov.w	r1, 2	# tmp276,
	shl.w	r0, r1	# tmp275, tmp276
	mov.w	r1, alien_bullet+20	# tmp278,
	add.w	r0, r1 #222	# tmp277, tmp278
	mov.w	r1, 2	# tmp279,
	st.w	[r0], r1	# alien_bullet[alien_bullet_index_93(D)].status, tmp279
# spaceinvaders.c:1837: 	switch(alien_bullet[alien_bullet_index].type)
	ld.w	r1, [r13 + (8)]	# tmp280, alien_bullet_index
	mov.w	r0, r1	# tmp281, tmp280
	mov.w	r2, 3	# tmp283,
	shl.w	r0, r2	# tmp282, tmp283
	add.w	r0, r1 #222	# tmp281, tmp280
	mov.w	r1, 2	# tmp285,
	shl.w	r0, r1	# tmp284, tmp285
	mov.w	r1, alien_bullet+12	# tmp287,
	add.w	r0, r1 #222	# tmp286, tmp287
	ld.w	r0, [r0]	# _32, alien_bullet[alien_bullet_index_93(D)].type
# spaceinvaders.c:1837: 	switch(alien_bullet[alien_bullet_index].type)
	xor.w	r1, r1	# tmp288
	cmp.w	r0, r1	# _32, tmp288
	jz	.L301		#
	mov.w	r1, 1	# tmp289,
	cmp.w	r0, r1	# _32, tmp289
	jz	.L302		#
	j	.L305		#
.L301:
# spaceinvaders.c:1840: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp290, alien_bullet_index
	mov.w	r0, r1	# tmp291, tmp290
	mov.w	r2, 3	# tmp293,
	shl.w	r0, r2	# tmp292, tmp293
	add.w	r0, r1 #222	# tmp291, tmp290
	mov.w	r1, 2	# tmp295,
	shl.w	r0, r1	# tmp294, tmp295
	mov.w	r1, alien_bullet	# tmp297,
	add.w	r0, r1 #222	# tmp296, tmp297
	ld.w	r2, [r0]	# _33, alien_bullet[alien_bullet_index_93(D)].x
	ld.w	r1, [r13 + (8)]	# tmp298, alien_bullet_index
	mov.w	r0, r1	# tmp299, tmp298
	mov.w	r3, 3	# tmp301,
	shl.w	r0, r3	# tmp300, tmp301
	add.w	r0, r1 #222	# tmp299, tmp298
	mov.w	r1, 2	# tmp303,
	shl.w	r0, r1	# tmp302, tmp303
	mov.w	r1, alien_bullet+4	# tmp305,
	add.w	r0, r1 #222	# tmp304, tmp305
	ld.w	r1, [r0]	# _34, alien_bullet[alien_bullet_index_93(D)].y
	mov.w	r0, sp	# tmp306,
	mov.w	r3, alien_bullet0_sprite0	# tmp307,
	st.w	[r0 + (16)], r3	#, tmp307
	mov.w	r3, 8	# tmp308,
	st.w	[r0 + (12)], r3	#, tmp308
	mov.w	r3, 8	# tmp309,
	st.w	[r0 + (8)], r3	#, tmp309
	st.w	[r0 + (4)], r1	#, _34
	st.w	[r0], r2	#, _33
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1841: 			break;
	j	.L285		#
.L302:
# spaceinvaders.c:1843: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp310, alien_bullet_index
	mov.w	r0, r1	# tmp311, tmp310
	mov.w	r2, 3	# tmp313,
	shl.w	r0, r2	# tmp312, tmp313
	add.w	r0, r1 #222	# tmp311, tmp310
	mov.w	r1, 2	# tmp315,
	shl.w	r0, r1	# tmp314, tmp315
	mov.w	r1, alien_bullet	# tmp317,
	add.w	r0, r1 #222	# tmp316, tmp317
	ld.w	r2, [r0]	# _35, alien_bullet[alien_bullet_index_93(D)].x
	ld.w	r1, [r13 + (8)]	# tmp318, alien_bullet_index
	mov.w	r0, r1	# tmp319, tmp318
	mov.w	r3, 3	# tmp321,
	shl.w	r0, r3	# tmp320, tmp321
	add.w	r0, r1 #222	# tmp319, tmp318
	mov.w	r1, 2	# tmp323,
	shl.w	r0, r1	# tmp322, tmp323
	mov.w	r1, alien_bullet+4	# tmp325,
	add.w	r0, r1 #222	# tmp324, tmp325
	ld.w	r1, [r0]	# _36, alien_bullet[alien_bullet_index_93(D)].y
	mov.w	r0, sp	# tmp326,
	mov.w	r3, alien_bullet1_sprite0	# tmp327,
	st.w	[r0 + (16)], r3	#, tmp327
	mov.w	r3, 8	# tmp328,
	st.w	[r0 + (12)], r3	#, tmp328
	mov.w	r3, 8	# tmp329,
	st.w	[r0 + (8)], r3	#, tmp329
	st.w	[r0 + (4)], r1	#, _36
	st.w	[r0], r2	#, _35
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1844: 			break;
	j	.L285		#
.L305:
# spaceinvaders.c:1846: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
	ld.w	r1, [r13 + (8)]	# tmp330, alien_bullet_index
	mov.w	r0, r1	# tmp331, tmp330
	mov.w	r2, 3	# tmp333,
	shl.w	r0, r2	# tmp332, tmp333
	add.w	r0, r1 #222	# tmp331, tmp330
	mov.w	r1, 2	# tmp335,
	shl.w	r0, r1	# tmp334, tmp335
	mov.w	r1, alien_bullet	# tmp337,
	add.w	r0, r1 #222	# tmp336, tmp337
	ld.w	r2, [r0]	# _37, alien_bullet[alien_bullet_index_93(D)].x
	ld.w	r1, [r13 + (8)]	# tmp338, alien_bullet_index
	mov.w	r0, r1	# tmp339, tmp338
	mov.w	r3, 3	# tmp341,
	shl.w	r0, r3	# tmp340, tmp341
	add.w	r0, r1 #222	# tmp339, tmp338
	mov.w	r1, 2	# tmp343,
	shl.w	r0, r1	# tmp342, tmp343
	mov.w	r1, alien_bullet+4	# tmp345,
	add.w	r0, r1 #222	# tmp344, tmp345
	ld.w	r1, [r0]	# _38, alien_bullet[alien_bullet_index_93(D)].y
	mov.w	r0, sp	# tmp346,
	mov.w	r3, alien_bullet2_sprite0	# tmp347,
	st.w	[r0 + (16)], r3	#, tmp347
	mov.w	r3, 8	# tmp348,
	st.w	[r0 + (12)], r3	#, tmp348
	mov.w	r3, 8	# tmp349,
	st.w	[r0 + (8)], r3	#, tmp349
	st.w	[r0 + (4)], r1	#, _38
	st.w	[r0], r2	#, _37
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1847: 			break;	
	j	.L285		#
.L306:
# spaceinvaders.c:1764: 			return;
	nop	
.L285:
# spaceinvaders.c:1849: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spawn_alien_bullet, .-spawn_alien_bullet
	.p2align	1
	.global	change_player_explosion_sprite
	.type	change_player_explosion_sprite, @function
change_player_explosion_sprite:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1857: 	current_pl_expl_sprite ^= 1;
	ld.w	r0, [current_pl_expl_sprite]	# current_pl_expl_sprite.126_1, current_pl_expl_sprite
	mov.w	r1, 1	# tmp47,
	xor.w	r0, r1	# _2, tmp47
	st.w	[current_pl_expl_sprite], r0	# current_pl_expl_sprite, _2
# spaceinvaders.c:1858: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.127_3, player_ship
	ld.s	r0, [r0 + (2)]	# _4, player_ship.127_3->x
# spaceinvaders.c:1858: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	sex.s	r1, r0	# _5, _4
# spaceinvaders.c:1858: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.128_6, player_ship
	ld.s	r0, [r0 + (4)]	# _7, player_ship.128_6->y
# spaceinvaders.c:1858: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	sex.s	r2, r0	# _8, _7
	mov.w	r0, sp	# tmp48,
	mov.w	r3, 8	# tmp49,
	st.w	[r0 + (12)], r3	#, tmp49
	mov.w	r3, 16	# tmp50,
	st.w	[r0 + (8)], r3	#, tmp50
	st.w	[r0 + (4)], r2	#, _8
	st.w	[r0], r1	#, _5
	call	clear_bitmap_test		#
# spaceinvaders.c:1859: 	if(current_pl_expl_sprite == 1)
	ld.w	r1, [current_pl_expl_sprite]	# current_pl_expl_sprite.129_9, current_pl_expl_sprite
# spaceinvaders.c:1859: 	if(current_pl_expl_sprite == 1)
	mov.w	r0, 1	# tmp51,
	cmp.w	r1, r0	# current_pl_expl_sprite.129_9, tmp51
	jnz	.L308		#
# spaceinvaders.c:1860: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	ld.w	r0, [player_ship]	# player_ship.130_10, player_ship
	ld.s	r0, [r0 + (2)]	# _11, player_ship.130_10->x
# spaceinvaders.c:1860: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	sex.s	r1, r0	# _12, _11
# spaceinvaders.c:1860: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	ld.w	r0, [player_ship]	# player_ship.131_13, player_ship
	ld.s	r0, [r0 + (4)]	# _14, player_ship.131_13->y
# spaceinvaders.c:1860: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	sex.s	r2, r0	# _15, _14
	mov.w	r0, sp	# tmp52,
	mov.w	r3, ship_explosion1	# tmp53,
	st.w	[r0 + (16)], r3	#, tmp53
	mov.w	r3, 8	# tmp54,
	st.w	[r0 + (12)], r3	#, tmp54
	mov.w	r3, 16	# tmp55,
	st.w	[r0 + (8)], r3	#, tmp55
	st.w	[r0 + (4)], r2	#, _15
	st.w	[r0], r1	#, _12
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1863: }
	j	.L310		#
.L308:
# spaceinvaders.c:1862: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.132_16, player_ship
	ld.s	r0, [r0 + (2)]	# _17, player_ship.132_16->x
# spaceinvaders.c:1862: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	sex.s	r1, r0	# _18, _17
# spaceinvaders.c:1862: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.133_19, player_ship
	ld.s	r0, [r0 + (4)]	# _20, player_ship.133_19->y
# spaceinvaders.c:1862: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	sex.s	r2, r0	# _21, _20
	mov.w	r0, sp	# tmp56,
	mov.w	r3, ship_explosion0	# tmp57,
	st.w	[r0 + (16)], r3	#, tmp57
	mov.w	r3, 8	# tmp58,
	st.w	[r0 + (12)], r3	#, tmp58
	mov.w	r3, 16	# tmp59,
	st.w	[r0 + (8)], r3	#, tmp59
	st.w	[r0 + (4)], r2	#, _21
	st.w	[r0], r1	#, _18
	call	draw_bitmap_with_clear_background		#
.L310:
# spaceinvaders.c:1863: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	change_player_explosion_sprite, .-change_player_explosion_sprite
	.p2align	1
	.global	clear_player_and_redraw_lives
	.type	clear_player_and_redraw_lives, @function
clear_player_and_redraw_lives:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1867: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.134_1, player_ship
	ld.s	r0, [r0 + (2)]	# _2, player_ship.134_1->x
# spaceinvaders.c:1867: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	sex.s	r1, r0	# _3, _2
# spaceinvaders.c:1867: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.135_4, player_ship
	ld.s	r0, [r0 + (4)]	# _5, player_ship.135_4->y
# spaceinvaders.c:1867: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	sex.s	r2, r0	# _6, _5
	mov.w	r0, sp	# tmp32,
	mov.w	r3, 8	# tmp33,
	st.w	[r0 + (12)], r3	#, tmp33
	mov.w	r3, 16	# tmp34,
	st.w	[r0 + (8)], r3	#, tmp34
	st.w	[r0 + (4)], r2	#, _6
	st.w	[r0], r1	#, _3
	call	clear_bitmap_test		#
# spaceinvaders.c:1868: 	draw_lives();
	call	draw_lives		#
# spaceinvaders.c:1869: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clear_player_and_redraw_lives, .-clear_player_and_redraw_lives
	.p2align	1
	.global	spawn_player
	.type	spawn_player, @function
spawn_player:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1873: 	player_ship->addr = (short)sprite_addr;
	ld.w	r1, [sprite_addr]	# sprite_addr.136_1, sprite_addr
# spaceinvaders.c:1873: 	player_ship->addr = (short)sprite_addr;
	ld.w	r0, [player_ship]	# player_ship.137_2, player_ship
# spaceinvaders.c:1873: 	player_ship->addr = (short)sprite_addr;
	st.s	[r0], r1	# player_ship.137_2->addr, _3
# spaceinvaders.c:1874: 	player_ship->x = 40;
	ld.w	r0, [player_ship]	# player_ship.138_4, player_ship
# spaceinvaders.c:1874: 	player_ship->x = 40;
	mov.s	r1, 40	# tmp32,
	st.s	[r0 + (2)], r1	# player_ship.138_4->x, tmp32
# spaceinvaders.c:1875: 	player_ship->y = PLAYER_SPAWN_Y;
	ld.w	r0, [player_ship]	# player_ship.139_5, player_ship
# spaceinvaders.c:1875: 	player_ship->y = PLAYER_SPAWN_Y;
	mov.s	r1, 212	# tmp33,
	st.s	[r0 + (4)], r1	# player_ship.139_5->y, tmp33
# spaceinvaders.c:1876: 	player_ship->transparent = 0;
	ld.w	r0, [player_ship]	# player_ship.140_6, player_ship
# spaceinvaders.c:1876: 	player_ship->transparent = 0;
	xor.w	r1, r1	# tmp34
	st.s	[r0 + (6)], r1	# player_ship.140_6->transparent, tmp34
# spaceinvaders.c:1877: 	player_alive = 2;
	mov.w	r0, 2	# tmp35,
	st.w	[player_alive], r0	# player_alive, tmp35
# spaceinvaders.c:1878: 	player_movement_skip_frame = 3;
	mov.w	r0, 3	# tmp36,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, tmp36
# spaceinvaders.c:1879: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp37
	st.w	[vkp], r0	# vkp, tmp37
# spaceinvaders.c:1879: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp38
	st.w	[vkr], r0	# vkr, tmp38
# spaceinvaders.c:1879: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp39
	st.w	[old], r0	# old, tmp39
# spaceinvaders.c:1880: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	spawn_player, .-spawn_player
	.section	.rodata
	.p2align	2
.LC5:
	.string	"G"
	.p2align	2
.LC6:
	.string	"GA"
	.p2align	2
.LC7:
	.string	"GAM"
	.p2align	2
.LC8:
	.string	"GAME"
	.p2align	2
.LC9:
	.string	"GAME O"
	.p2align	2
.LC10:
	.string	"GAME OV"
	.p2align	2
.LC11:
	.string	"GAME OVE"
	.p2align	2
.LC12:
	.string	"GAME OVER"
	.text
	.p2align	1
	.global	display_game_over_text
	.type	display_game_over_text, @function
display_game_over_text:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# spaceinvaders.c:1884: 	int letter_delay_ms = 128;
	mov.w	r0, 128	# tmp27,
	st.w	[r13 + (-4)], r0	# letter_delay_ms, tmp27
# spaceinvaders.c:1885: 	int game_over_text_x_pos = 95;
	mov.w	r0, 95	# tmp28,
	st.w	[r13 + (-8)], r0	# game_over_text_x_pos, tmp28
# spaceinvaders.c:1886: 	int game_over_text_y_pos = GREEN_THRESHOLD_0 - 16;
	mov.w	r0, 44	# tmp29,
	st.w	[r13 + (-12)], r0	# game_over_text_y_pos, tmp29
# spaceinvaders.c:1887: 	sprintf(str, "G");
	mov.w	r0, sp	# tmp30,
	mov.w	r1, .LC5	# tmp31,
	st.w	[r0 + (4)], r1	#, tmp31
	mov.w	r1, str	# tmp32,
	st.w	[r0], r1	#, tmp32
	call	sprintf		#
# spaceinvaders.c:1888: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp33,
	mov.w	r1, str	# tmp34,
	st.w	[r0 + (12)], r1	#, tmp34
	mov.w	r1, 5	# tmp35,
	st.w	[r0 + (8)], r1	#, tmp35
	ld.w	r1, [r13 + (-12)]	# tmp36, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp36
	ld.w	r1, [r13 + (-8)]	# tmp37, game_over_text_x_pos
	st.w	[r0], r1	#, tmp37
	call	draw		#
# spaceinvaders.c:1889: 	delay(letter_delay_ms);
	mov.w	r1, sp	# tmp38,
	ld.w	r0, [r13 + (-4)]	# tmp39, letter_delay_ms
	st.w	[r1], r0	#, tmp39
	call	delay		#
# spaceinvaders.c:1890: 	sprintf(str, "GA");
	mov.w	r0, sp	# tmp40,
	mov.w	r1, .LC6	# tmp41,
	st.w	[r0 + (4)], r1	#, tmp41
	mov.w	r1, str	# tmp42,
	st.w	[r0], r1	#, tmp42
	call	sprintf		#
# spaceinvaders.c:1891: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp43,
	mov.w	r1, str	# tmp44,
	st.w	[r0 + (12)], r1	#, tmp44
	mov.w	r1, 5	# tmp45,
	st.w	[r0 + (8)], r1	#, tmp45
	ld.w	r1, [r13 + (-12)]	# tmp46, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp46
	ld.w	r1, [r13 + (-8)]	# tmp47, game_over_text_x_pos
	st.w	[r0], r1	#, tmp47
	call	draw		#
# spaceinvaders.c:1892: 	delay(letter_delay_ms);
	mov.w	r1, sp	# tmp48,
	ld.w	r0, [r13 + (-4)]	# tmp49, letter_delay_ms
	st.w	[r1], r0	#, tmp49
	call	delay		#
# spaceinvaders.c:1893: 	sprintf(str, "GAM");
	mov.w	r0, sp	# tmp50,
	mov.w	r1, .LC7	# tmp51,
	st.w	[r0 + (4)], r1	#, tmp51
	mov.w	r1, str	# tmp52,
	st.w	[r0], r1	#, tmp52
	call	sprintf		#
# spaceinvaders.c:1894: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp53,
	mov.w	r1, str	# tmp54,
	st.w	[r0 + (12)], r1	#, tmp54
	mov.w	r1, 5	# tmp55,
	st.w	[r0 + (8)], r1	#, tmp55
	ld.w	r1, [r13 + (-12)]	# tmp56, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp56
	ld.w	r1, [r13 + (-8)]	# tmp57, game_over_text_x_pos
	st.w	[r0], r1	#, tmp57
	call	draw		#
# spaceinvaders.c:1895: 	delay(letter_delay_ms);
	mov.w	r1, sp	# tmp58,
	ld.w	r0, [r13 + (-4)]	# tmp59, letter_delay_ms
	st.w	[r1], r0	#, tmp59
	call	delay		#
# spaceinvaders.c:1896: 	sprintf(str, "GAME");
	mov.w	r0, sp	# tmp60,
	mov.w	r1, .LC8	# tmp61,
	st.w	[r0 + (4)], r1	#, tmp61
	mov.w	r1, str	# tmp62,
	st.w	[r0], r1	#, tmp62
	call	sprintf		#
# spaceinvaders.c:1897: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp63,
	mov.w	r1, str	# tmp64,
	st.w	[r0 + (12)], r1	#, tmp64
	mov.w	r1, 5	# tmp65,
	st.w	[r0 + (8)], r1	#, tmp65
	ld.w	r1, [r13 + (-12)]	# tmp66, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp66
	ld.w	r1, [r13 + (-8)]	# tmp67, game_over_text_x_pos
	st.w	[r0], r1	#, tmp67
	call	draw		#
# spaceinvaders.c:1898: 	delay(letter_delay_ms * 3);
	ld.w	r1, [r13 + (-4)]	# tmp68, letter_delay_ms
	mov.w	r0, r1	# tmp69, tmp68
	add.w	r0, r0 #222	# tmp70, tmp69
	add.w	r0, r1 #222	# _1, tmp68
	mov.w	r1, sp	# tmp71,
	st.w	[r1], r0	#, _1
	call	delay		#
# spaceinvaders.c:1899: 	sprintf(str, "GAME O");
	mov.w	r0, sp	# tmp72,
	mov.w	r1, .LC9	# tmp73,
	st.w	[r0 + (4)], r1	#, tmp73
	mov.w	r1, str	# tmp74,
	st.w	[r0], r1	#, tmp74
	call	sprintf		#
# spaceinvaders.c:1900: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp75,
	mov.w	r1, str	# tmp76,
	st.w	[r0 + (12)], r1	#, tmp76
	mov.w	r1, 5	# tmp77,
	st.w	[r0 + (8)], r1	#, tmp77
	ld.w	r1, [r13 + (-12)]	# tmp78, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp78
	ld.w	r1, [r13 + (-8)]	# tmp79, game_over_text_x_pos
	st.w	[r0], r1	#, tmp79
	call	draw		#
# spaceinvaders.c:1901: 	delay(letter_delay_ms);
	mov.w	r1, sp	# tmp80,
	ld.w	r0, [r13 + (-4)]	# tmp81, letter_delay_ms
	st.w	[r1], r0	#, tmp81
	call	delay		#
# spaceinvaders.c:1902: 	sprintf(str, "GAME OV");
	mov.w	r0, sp	# tmp82,
	mov.w	r1, .LC10	# tmp83,
	st.w	[r0 + (4)], r1	#, tmp83
	mov.w	r1, str	# tmp84,
	st.w	[r0], r1	#, tmp84
	call	sprintf		#
# spaceinvaders.c:1903: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp85,
	mov.w	r1, str	# tmp86,
	st.w	[r0 + (12)], r1	#, tmp86
	mov.w	r1, 5	# tmp87,
	st.w	[r0 + (8)], r1	#, tmp87
	ld.w	r1, [r13 + (-12)]	# tmp88, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp88
	ld.w	r1, [r13 + (-8)]	# tmp89, game_over_text_x_pos
	st.w	[r0], r1	#, tmp89
	call	draw		#
# spaceinvaders.c:1904: 	delay(letter_delay_ms);
	mov.w	r1, sp	# tmp90,
	ld.w	r0, [r13 + (-4)]	# tmp91, letter_delay_ms
	st.w	[r1], r0	#, tmp91
	call	delay		#
# spaceinvaders.c:1905: 	sprintf(str, "GAME OVE");
	mov.w	r0, sp	# tmp92,
	mov.w	r1, .LC11	# tmp93,
	st.w	[r0 + (4)], r1	#, tmp93
	mov.w	r1, str	# tmp94,
	st.w	[r0], r1	#, tmp94
	call	sprintf		#
# spaceinvaders.c:1906: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp95,
	mov.w	r1, str	# tmp96,
	st.w	[r0 + (12)], r1	#, tmp96
	mov.w	r1, 5	# tmp97,
	st.w	[r0 + (8)], r1	#, tmp97
	ld.w	r1, [r13 + (-12)]	# tmp98, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp98
	ld.w	r1, [r13 + (-8)]	# tmp99, game_over_text_x_pos
	st.w	[r0], r1	#, tmp99
	call	draw		#
# spaceinvaders.c:1907: 	delay(letter_delay_ms);
	mov.w	r1, sp	# tmp100,
	ld.w	r0, [r13 + (-4)]	# tmp101, letter_delay_ms
	st.w	[r1], r0	#, tmp101
	call	delay		#
# spaceinvaders.c:1908: 	sprintf(str, "GAME OVER");
	mov.w	r0, sp	# tmp102,
	mov.w	r1, .LC12	# tmp103,
	st.w	[r0 + (4)], r1	#, tmp103
	mov.w	r1, str	# tmp104,
	st.w	[r0], r1	#, tmp104
	call	sprintf		#
# spaceinvaders.c:1909: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	mov.w	r0, sp	# tmp105,
	mov.w	r1, str	# tmp106,
	st.w	[r0 + (12)], r1	#, tmp106
	mov.w	r1, 5	# tmp107,
	st.w	[r0 + (8)], r1	#, tmp107
	ld.w	r1, [r13 + (-12)]	# tmp108, game_over_text_y_pos
	st.w	[r0 + (4)], r1	#, tmp108
	ld.w	r1, [r13 + (-8)]	# tmp109, game_over_text_x_pos
	st.w	[r0], r1	#, tmp109
	call	draw		#
# spaceinvaders.c:1910: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	display_game_over_text, .-display_game_over_text
	.p2align	1
	.global	set_current_and_special_bullets_if_current_is_higher_than_special
	.type	set_current_and_special_bullets_if_current_is_higher_than_special, @function
set_current_and_special_bullets_if_current_is_higher_than_special:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1914: 	if(current_player_bullet > special_player_bullet)
	ld.w	r1, [current_player_bullet]	# current_player_bullet.141_1, current_player_bullet
	ld.w	r0, [special_player_bullet]	# special_player_bullet.142_2, special_player_bullet
# spaceinvaders.c:1914: 	if(current_player_bullet > special_player_bullet)
	cmp.w	r1, r0	# current_player_bullet.141_1, special_player_bullet.142_2
	jses	.L316		#
# spaceinvaders.c:1916: 		current_player_bullet = 1;
	mov.w	r0, 1	# tmp28,
	st.w	[current_player_bullet], r0	# current_player_bullet, tmp28
# spaceinvaders.c:1917: 		special_player_bullet = 15;
	mov.w	r0, 15	# tmp29,
	st.w	[special_player_bullet], r0	# special_player_bullet, tmp29
.L316:
# spaceinvaders.c:1919: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_current_and_special_bullets_if_current_is_higher_than_special, .-set_current_and_special_bullets_if_current_is_higher_than_special
	.p2align	1
	.global	calculate_timer_for_ufo_spawn
	.type	calculate_timer_for_ufo_spawn, @function
calculate_timer_for_ufo_spawn:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1924: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	call	rand		#
# spaceinvaders.c:1924: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	mov.w	r1, 5000	# tmp30,
	div.w	r0, r1	# _2, tmp30
mov.w	r0, r14	# _2
# spaceinvaders.c:1924: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	mov.w	r1, 13000	# tmp31,
	add.w	r0, r1 #222	# _3, tmp31
	add.w	r0, r0 #222	# tmp32, _3
# spaceinvaders.c:1924: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	st.w	[timer_for_ufo_spawn], r0	# timer_for_ufo_spawn, _4
# spaceinvaders.c:1925: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	calculate_timer_for_ufo_spawn, .-calculate_timer_for_ufo_spawn
	.p2align	1
	.global	change_current_wave
	.type	change_current_wave, @function
change_current_wave:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1929: 	if(current_wave == 9)
	ld.w	r1, [current_wave]	# current_wave.143_1, current_wave
# spaceinvaders.c:1929: 	if(current_wave == 9)
	mov.w	r0, 9	# tmp29,
	cmp.w	r1, r0	# current_wave.143_1, tmp29
	jnz	.L319		#
# spaceinvaders.c:1930: 		current_wave = 2;
	mov.w	r0, 2	# tmp30,
	st.w	[current_wave], r0	# current_wave, tmp30
# spaceinvaders.c:1933: }
	j	.L321		#
.L319:
# spaceinvaders.c:1932: 		current_wave++;
	ld.w	r0, [current_wave]	# current_wave.144_2, current_wave
	add.w	r0, 1 #111	# _3,
	st.w	[current_wave], r0	# current_wave, _3
.L321:
# spaceinvaders.c:1933: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	change_current_wave, .-change_current_wave
	.p2align	1
	.global	get_alien_spawn_y_for_current_wave
	.type	get_alien_spawn_y_for_current_wave, @function
get_alien_spawn_y_for_current_wave:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1937: switch(current_wave)
	ld.w	r0, [current_wave]	# current_wave.145_1, current_wave
	mov.w	r1, 9	# tmp29,
	cmp.w	r0, r1	# current_wave.145_1, tmp29
	jgs	.L323		#
	mov.w	r1, 7	# tmp30,
	cmp.w	r0, r1	# current_wave.145_1, tmp30
	jges	.L324		#
	mov.w	r1, 6	# tmp31,
	cmp.w	r0, r1	# current_wave.145_1, tmp31
	jgs	.L323		#
	mov.w	r1, 4	# tmp32,
	cmp.w	r0, r1	# current_wave.145_1, tmp32
	jges	.L325		#
	mov.w	r1, 3	# tmp33,
	cmp.w	r0, r1	# current_wave.145_1, tmp33
	jz	.L326		#
	mov.w	r1, 3	# tmp34,
	cmp.w	r0, r1	# current_wave.145_1, tmp34
	jgs	.L323		#
	mov.w	r1, 1	# tmp35,
	cmp.w	r0, r1	# current_wave.145_1, tmp35
	jz	.L327		#
	mov.w	r1, 2	# tmp36,
	cmp.w	r0, r1	# current_wave.145_1, tmp36
	jz	.L328		#
	j	.L323		#
.L327:
# spaceinvaders.c:1940: 			return ALIEN_SPAWN_Y_0;
	mov.w	r0, 124	# _2,
	j	.L322		#
.L328:
# spaceinvaders.c:1942: 			return ALIEN_SPAWN_Y_1;
	mov.w	r0, 148	# _2,
	j	.L322		#
.L326:
# spaceinvaders.c:1944: 			return ALIEN_SPAWN_Y_2;
	mov.w	r0, 164	# _2,
	j	.L322		#
.L325:
# spaceinvaders.c:1948: 			return ALIEN_SPAWN_Y_3;
	mov.w	r0, 172	# _2,
	j	.L322		#
.L324:
# spaceinvaders.c:1952: 			return ALIEN_SPAWN_Y_4;
	mov.w	r0, 180	# _2,
	j	.L322		#
.L323:
.L322:
# spaceinvaders.c:1954: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	get_alien_spawn_y_for_current_wave, .-get_alien_spawn_y_for_current_wave
	.p2align	1
	.global	toggle_play_pause
	.type	toggle_play_pause, @function
toggle_play_pause:
	push	r13		#
	mov.w	r13, sp	#,
# spaceinvaders.c:1958: 	game_state ^= 1;
	ld.w	r0, [game_state]	# game_state.146_1, game_state
	mov.w	r1, 1	# tmp28,
	xor.w	r0, r1	# _2, tmp28
	st.w	[game_state], r0	# game_state, _2
# spaceinvaders.c:1959: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	toggle_play_pause, .-toggle_play_pause
	.p2align	1
	.global	draw_label
	.type	draw_label, @function
draw_label:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1972: 	sprintf(str, label_text);
	mov.w	r0, sp	# tmp26,
	ld.w	r1, [r13 + (20)]	# tmp27, label_text
	st.w	[r0 + (4)], r1	#, tmp27
	mov.w	r1, str	# tmp28,
	st.w	[r0], r1	#, tmp28
	call	sprintf		#
# spaceinvaders.c:1973: 	draw(x, y, color, label_text);
	mov.w	r0, sp	# tmp29,
	ld.w	r1, [r13 + (20)]	# tmp30, label_text
	st.w	[r0 + (12)], r1	#, tmp30
	ld.w	r1, [r13 + (16)]	# tmp31, color
	st.w	[r0 + (8)], r1	#, tmp31
	ld.w	r1, [r13 + (12)]	# tmp32, y
	st.w	[r0 + (4)], r1	#, tmp32
	ld.w	r1, [r13 + (8)]	# tmp33, x
	st.w	[r0], r1	#, tmp33
	call	draw		#
# spaceinvaders.c:1974: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_label, .-draw_label
	.section	.rodata
	.p2align	2
.LC13:
	.string	"SCORE"
	.p2align	2
.LC14:
	.string	"HI-SCORE"
	.text
	.p2align	1
	.global	draw_score_labels
	.type	draw_score_labels, @function
draw_score_labels:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1978: 	draw_label(20, 5, CYAN, "SCORE");
	mov.w	r0, sp	# tmp26,
	mov.w	r1, .LC13	# tmp27,
	st.w	[r0 + (12)], r1	#, tmp27
	mov.w	r1, 3	# tmp28,
	st.w	[r0 + (8)], r1	#, tmp28
	mov.w	r1, 5	# tmp29,
	st.w	[r0 + (4)], r1	#, tmp29
	mov.w	r1, 20	# tmp30,
	st.w	[r0], r1	#, tmp30
	call	draw_label		#
# spaceinvaders.c:1979: 	draw_label(100, 5, RED, "HI-SCORE");
	mov.w	r0, sp	# tmp31,
	mov.w	r1, .LC14	# tmp32,
	st.w	[r0 + (12)], r1	#, tmp32
	mov.w	r1, 4	# tmp33,
	st.w	[r0 + (8)], r1	#, tmp33
	mov.w	r1, 5	# tmp34,
	st.w	[r0 + (4)], r1	#, tmp34
	mov.w	r1, 100	# tmp35,
	st.w	[r0], r1	#, tmp35
	call	draw_label		#
# spaceinvaders.c:1980: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_score_labels, .-draw_score_labels
	.p2align	1
	.global	draw_table_entry
	.type	draw_table_entry, @function
draw_table_entry:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:1994: 	draw_bitmap_with_clear_background(
	mov.w	r0, sp	# tmp27,
	ld.w	r1, [r13 + (24)]	# tmp28, bitmap
	st.w	[r0 + (16)], r1	#, tmp28
	ld.w	r1, [r13 + (20)]	# tmp29, bitmap_height
	st.w	[r0 + (12)], r1	#, tmp29
	ld.w	r1, [r13 + (16)]	# tmp30, bitmap_width
	st.w	[r0 + (8)], r1	#, tmp30
	ld.w	r1, [r13 + (12)]	# tmp31, entry_y
	st.w	[r0 + (4)], r1	#, tmp31
	ld.w	r1, [r13 + (8)]	# tmp32, entry_x
	st.w	[r0], r1	#, tmp32
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:2000: 	draw_label(
	ld.w	r0, [r13 + (8)]	# tmp33, entry_x
	mov.w	r1, r0	# _1, tmp33
	add.w	r1, 16 #111	# _1,
	mov.w	r0, sp	# tmp34,
	ld.w	r2, [r13 + (32)]	# tmp35, label_text
	st.w	[r0 + (12)], r2	#, tmp35
	ld.w	r2, [r13 + (28)]	# tmp36, text_color
	st.w	[r0 + (8)], r2	#, tmp36
	ld.w	r2, [r13 + (12)]	# tmp37, entry_y
	st.w	[r0 + (4)], r2	#, tmp37
	st.w	[r0], r1	#, _1
	call	draw_label		#
# spaceinvaders.c:2005: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_table_entry, .-draw_table_entry
	.section	.rodata
	.p2align	2
.LC15:
	.string	"*SCORE ADVANCE TABLE*"
	.p2align	2
.LC16:
	.string	"= ? MYSTERY"
	.p2align	2
.LC17:
	.string	"= 30 POINTS"
	.p2align	2
.LC18:
	.string	"= 20 POINTS"
	.p2align	2
.LC19:
	.string	"= 10 POINTS"
	.text
	.p2align	1
	.global	draw_score_advance_table
	.type	draw_score_advance_table, @function
draw_score_advance_table:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# spaceinvaders.c:2009: 	int ship_score_x_pos = 82;
	mov.w	r0, 82	# tmp26,
	st.w	[r13 + (-4)], r0	# ship_score_x_pos, tmp26
# spaceinvaders.c:2010: 	int bitmap_height = 8;
	mov.w	r0, 8	# tmp27,
	st.w	[r13 + (-8)], r0	# bitmap_height, tmp27
# spaceinvaders.c:2012: 	draw_label(
	mov.w	r0, sp	# tmp28,
	mov.w	r1, .LC15	# tmp29,
	st.w	[r0 + (12)], r1	#, tmp29
	mov.w	r1, 3	# tmp30,
	st.w	[r0 + (8)], r1	#, tmp30
	mov.w	r1, 108	# tmp31,
	st.w	[r0 + (4)], r1	#, tmp31
	mov.w	r1, 50	# tmp32,
	st.w	[r0], r1	#, tmp32
	call	draw_label		#
# spaceinvaders.c:2017: 	draw_table_entry(
	mov.w	r0, sp	# tmp33,
	mov.w	r1, .LC16	# tmp34,
	st.w	[r0 + (24)], r1	#, tmp34
	mov.w	r1, 5	# tmp35,
	st.w	[r0 + (20)], r1	#, tmp35
	mov.w	r1, ufo	# tmp36,
	st.w	[r0 + (16)], r1	#, tmp36
	ld.w	r1, [r13 + (-8)]	# tmp37, bitmap_height
	st.w	[r0 + (12)], r1	#, tmp37
	mov.w	r1, 16	# tmp38,
	st.w	[r0 + (8)], r1	#, tmp38
	mov.w	r1, 140	# tmp39,
	st.w	[r0 + (4)], r1	#, tmp39
	ld.w	r1, [r13 + (-4)]	# tmp40, ship_score_x_pos
	st.w	[r0], r1	#, tmp40
	call	draw_table_entry		#
# spaceinvaders.c:2025: 	draw_table_entry(
	mov.w	r0, sp	# tmp41,
	mov.w	r1, .LC17	# tmp42,
	st.w	[r0 + (24)], r1	#, tmp42
	mov.w	r1, 6	# tmp43,
	st.w	[r0 + (20)], r1	#, tmp43
	mov.w	r1, squid0	# tmp44,
	st.w	[r0 + (16)], r1	#, tmp44
	ld.w	r1, [r13 + (-8)]	# tmp45, bitmap_height
	st.w	[r0 + (12)], r1	#, tmp45
	mov.w	r1, 8	# tmp46,
	st.w	[r0 + (8)], r1	#, tmp46
	mov.w	r1, 156	# tmp47,
	st.w	[r0 + (4)], r1	#, tmp47
	ld.w	r1, [r13 + (-4)]	# tmp48, ship_score_x_pos
	st.w	[r0], r1	#, tmp48
	call	draw_table_entry		#
# spaceinvaders.c:2033: 	draw_table_entry(
	mov.w	r0, sp	# tmp49,
	mov.w	r1, .LC18	# tmp50,
	st.w	[r0 + (24)], r1	#, tmp50
	mov.w	r1, 6	# tmp51,
	st.w	[r0 + (20)], r1	#, tmp51
	mov.w	r1, crab0	# tmp52,
	st.w	[r0 + (16)], r1	#, tmp52
	ld.w	r1, [r13 + (-8)]	# tmp53, bitmap_height
	st.w	[r0 + (12)], r1	#, tmp53
	mov.w	r1, 12	# tmp54,
	st.w	[r0 + (8)], r1	#, tmp54
	mov.w	r1, 172	# tmp55,
	st.w	[r0 + (4)], r1	#, tmp55
	ld.w	r1, [r13 + (-4)]	# tmp56, ship_score_x_pos
	st.w	[r0], r1	#, tmp56
	call	draw_table_entry		#
# spaceinvaders.c:2041: 	draw_table_entry(
	mov.w	r0, sp	# tmp57,
	mov.w	r1, .LC19	# tmp58,
	st.w	[r0 + (24)], r1	#, tmp58
	mov.w	r1, 4	# tmp59,
	st.w	[r0 + (20)], r1	#, tmp59
	mov.w	r1, octopus0	# tmp60,
	st.w	[r0 + (16)], r1	#, tmp60
	ld.w	r1, [r13 + (-8)]	# tmp61, bitmap_height
	st.w	[r0 + (12)], r1	#, tmp61
	mov.w	r1, 12	# tmp62,
	st.w	[r0 + (8)], r1	#, tmp62
	mov.w	r1, 188	# tmp63,
	st.w	[r0 + (4)], r1	#, tmp63
	ld.w	r1, [r13 + (-4)]	# tmp64, ship_score_x_pos
	st.w	[r0], r1	#, tmp64
	call	draw_table_entry		#
# spaceinvaders.c:2049: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	draw_score_advance_table, .-draw_score_advance_table
	.section	.rodata
	.p2align	2
.LC20:
	.string	"PRESS SPACE TO START"
	.text
	.p2align	1
	.global	set_press_start_label_visibility
	.type	set_press_start_label_visibility, @function
set_press_start_label_visibility:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:2053: 	switch(state)
	ld.w	r1, [r13 + (8)]	# tmp26, state
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# tmp26, tmp27
	jz	.L336		#
	ld.w	r1, [r13 + (8)]	# tmp28, state
	mov.w	r0, 1	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L337		#
# spaceinvaders.c:2070: 			break;
	j	.L339		#
.L336:
# spaceinvaders.c:2056: 			clear_bitmap_test(
	mov.w	r0, sp	# tmp30,
	mov.w	r1, 8	# tmp31,
	st.w	[r0 + (12)], r1	#, tmp31
	mov.w	r1, 160	# tmp32,
	st.w	[r0 + (8)], r1	#, tmp32
	mov.w	r1, 76	# tmp33,
	st.w	[r0 + (4)], r1	#, tmp33
	mov.w	r1, 55	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	clear_bitmap_test		#
# spaceinvaders.c:2061: 			break;
	j	.L339		#
.L337:
# spaceinvaders.c:2063: 			draw_label(
	mov.w	r0, sp	# tmp35,
	mov.w	r1, .LC20	# tmp36,
	st.w	[r0 + (12)], r1	#, tmp36
	mov.w	r1, 2	# tmp37,
	st.w	[r0 + (8)], r1	#, tmp37
	mov.w	r1, 76	# tmp38,
	st.w	[r0 + (4)], r1	#, tmp38
	mov.w	r1, 55	# tmp39,
	st.w	[r0], r1	#, tmp39
	call	draw_label		#
# spaceinvaders.c:2068: 			break;
	nop	
.L339:
# spaceinvaders.c:2072: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_press_start_label_visibility, .-set_press_start_label_visibility
	.p2align	1
	.global	set_score_label_visibility
	.type	set_score_label_visibility, @function
set_score_label_visibility:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:2076: 	switch(state)
	ld.w	r1, [r13 + (8)]	# tmp26, state
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# tmp26, tmp27
	jz	.L341		#
	ld.w	r1, [r13 + (8)]	# tmp28, state
	mov.w	r0, 1	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L342		#
# spaceinvaders.c:2085: 			break;
	j	.L344		#
.L341:
# spaceinvaders.c:2079: 			clear_bitmap_test(20, 20, 45, 10);
	mov.w	r0, sp	# tmp30,
	mov.w	r1, 10	# tmp31,
	st.w	[r0 + (12)], r1	#, tmp31
	mov.w	r1, 45	# tmp32,
	st.w	[r0 + (8)], r1	#, tmp32
	mov.w	r1, 20	# tmp33,
	st.w	[r0 + (4)], r1	#, tmp33
	mov.w	r1, 20	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	clear_bitmap_test		#
# spaceinvaders.c:2080: 			break;
	j	.L344		#
.L342:
# spaceinvaders.c:2082: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:2083: 			break;
	nop	
.L344:
# spaceinvaders.c:2087: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_score_label_visibility, .-set_score_label_visibility
	.p2align	1
	.global	switch_to_main_menu_screen
	.type	switch_to_main_menu_screen, @function
switch_to_main_menu_screen:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# spaceinvaders.c:2091: 	int state = DRAW;
	mov.w	r0, 1	# tmp29,
	st.w	[r13 + (-4)], r0	# state, tmp29
# spaceinvaders.c:2092: 	int timer = 0;
	xor.w	r0, r0	# tmp30
	st.w	[r13 + (-8)], r0	# timer, tmp30
# spaceinvaders.c:2093: 	int vkp = 0;
	xor.w	r0, r0	# tmp31
	st.w	[r13 + (-12)], r0	# vkp, tmp31
# spaceinvaders.c:2095: 	draw_score_labels();
	call	draw_score_labels		#
# spaceinvaders.c:2096: 	check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:2097: 	draw_high_score();
	call	draw_high_score		#
# spaceinvaders.c:2098: 	draw_score_advance_table();
	call	draw_score_advance_table		#
.L350:
# spaceinvaders.c:2103: 		if(timer <= 0)
	ld.w	r1, [r13 + (-8)]	# tmp32, timer
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jgs	.L346		#
# spaceinvaders.c:2105: 			set_press_start_label_visibility(state);
	mov.w	r1, sp	# tmp34,
	ld.w	r0, [r13 + (-4)]	# tmp35, state
	st.w	[r1], r0	#, tmp35
	call	set_press_start_label_visibility		#
# spaceinvaders.c:2106: 			state ^= 1;
	ld.w	r0, [r13 + (-4)]	# tmp37, state
	mov.w	r1, 1	# tmp38,
	xor.w	r0, r1	# tmp36, tmp38
	st.w	[r13 + (-4)], r0	# state, tmp36
# spaceinvaders.c:2107: 			timer = 1000;
	mov.w	r0, 1000	# tmp39,
	st.w	[r13 + (-8)], r0	# timer, tmp39
.L346:
# spaceinvaders.c:2110: 		vkp = is_key_pressed();
	call	is_key_pressed		#
	st.w	[r13 + (-12)], r0	# vkp,
# spaceinvaders.c:2111: 		if(vkp == VK_SPACE)
	ld.w	r1, [r13 + (-12)]	# tmp40, vkp
	mov.w	r0, 32	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L347		#
# spaceinvaders.c:2113: 			cls(0);
	mov.w	r1, sp	# tmp42,
	xor.w	r0, r0	# tmp43
	st.w	[r1], r0	#, tmp43
	call	cls		#
# spaceinvaders.c:2114: 			current_screen = GET_READY_SCREEN;
	mov.w	r0, 1	# tmp44,
	st.w	[current_screen], r0	# current_screen, tmp44
# spaceinvaders.c:2115: 			return 0;
	xor.w	r0, r0	# _6
	j	.L348		#
.L347:
# spaceinvaders.c:2116: 		} else if (vkp == VK_ESC) 
	ld.w	r1, [r13 + (-12)]	# tmp45, vkp
	mov.w	r0, 27	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L349		#
# spaceinvaders.c:2118: 			return 1;
	mov.w	r0, 1	# _6,
	j	.L348		#
.L349:
# spaceinvaders.c:2121: 		timer -= 2;
	ld.w	r0, [r13 + (-8)]	# tmp48, timer
	add.w	r0, -2 #111	# tmp47,
	st.w	[r13 + (-8)], r0	# timer, tmp47
# spaceinvaders.c:2122: 		delay(delay_ms);
	ld.w	r0, [delay_ms]	# delay_ms.147_1, delay_ms
	mov.w	r1, sp	# tmp49,
	st.w	[r1], r0	#, delay_ms.147_1
	call	delay		#
# spaceinvaders.c:2103: 		if(timer <= 0)
	j	.L350		#
.L348:
# spaceinvaders.c:2124: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	switch_to_main_menu_screen, .-switch_to_main_menu_screen
	.section	.rodata
	.p2align	2
.LC21:
	.string	"GET READY!"
	.text
	.p2align	1
	.global	switch_to_get_ready_screen
	.type	switch_to_get_ready_screen, @function
switch_to_get_ready_screen:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
# spaceinvaders.c:2128: 	lives = 3;
	mov.w	r0, 3	# tmp30,
	st.w	[lives], r0	# lives, tmp30
# spaceinvaders.c:2129: 	bonus_life_awarded = FALSE;
	xor.w	r0, r0	# tmp31
	st.w	[bonus_life_awarded], r0	# bonus_life_awarded, tmp31
# spaceinvaders.c:2130: 	score = 0;
	xor.w	r0, r0	# tmp32
	st.w	[score], r0	# score, tmp32
# spaceinvaders.c:2132: 	current_wave = 1;
	mov.w	r0, 1	# tmp33,
	st.w	[current_wave], r0	# current_wave, tmp33
# spaceinvaders.c:2134: 	int state = DRAW;
	mov.w	r0, 1	# tmp34,
	st.w	[r13 + (-4)], r0	# state, tmp34
# spaceinvaders.c:2135: 	int timer_for_label_visibility = 0;
	xor.w	r0, r0	# tmp35
	st.w	[r13 + (-8)], r0	# timer_for_label_visibility, tmp35
# spaceinvaders.c:2136: 	int timer_for_screen_change = 3000;
	mov.w	r0, 3000	# tmp36,
	st.w	[r13 + (-12)], r0	# timer_for_screen_change, tmp36
# spaceinvaders.c:2138: 	draw_score_labels();
	call	draw_score_labels		#
# spaceinvaders.c:2139: 	draw_high_score();
	call	draw_high_score		#
# spaceinvaders.c:2140: 	draw_label(
	mov.w	r0, sp	# tmp37,
	mov.w	r1, .LC21	# tmp38,
	st.w	[r0 + (12)], r1	#, tmp38
	mov.w	r1, 3	# tmp39,
	st.w	[r0 + (8)], r1	#, tmp39
	mov.w	r1, 108	# tmp40,
	st.w	[r0 + (4)], r1	#, tmp40
	mov.w	r1, 95	# tmp41,
	st.w	[r0], r1	#, tmp41
	call	draw_label		#
.L356:
# spaceinvaders.c:2148: 		if(timer_for_label_visibility <= 0)
	ld.w	r1, [r13 + (-8)]	# tmp42, timer_for_label_visibility
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jgs	.L352		#
# spaceinvaders.c:2150: 			set_score_label_visibility(state);
	mov.w	r1, sp	# tmp44,
	ld.w	r0, [r13 + (-4)]	# tmp45, state
	st.w	[r1], r0	#, tmp45
	call	set_score_label_visibility		#
# spaceinvaders.c:2151: 			state ^= 1;
	ld.w	r0, [r13 + (-4)]	# tmp47, state
	mov.w	r1, 1	# tmp48,
	xor.w	r0, r1	# tmp46, tmp48
	st.w	[r13 + (-4)], r0	# state, tmp46
# spaceinvaders.c:2152: 			timer_for_label_visibility = 100;
	mov.w	r0, 100	# tmp49,
	st.w	[r13 + (-8)], r0	# timer_for_label_visibility, tmp49
.L352:
# spaceinvaders.c:2155: 		if(timer_for_screen_change <= 0)
	ld.w	r1, [r13 + (-12)]	# tmp50, timer_for_screen_change
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jgs	.L353		#
# spaceinvaders.c:2157: 			cls(0);
	mov.w	r1, sp	# tmp52,
	xor.w	r0, r0	# tmp53
	st.w	[r1], r0	#, tmp53
	call	cls		#
# spaceinvaders.c:2158: 			current_screen = PLAY_SCREEN;
	mov.w	r0, 2	# tmp54,
	st.w	[current_screen], r0	# current_screen, tmp54
# spaceinvaders.c:2159: 			return 0;
	xor.w	r0, r0	# _8
	j	.L354		#
.L353:
# spaceinvaders.c:2162: 		if (is_key_pressed() == VK_ESC)
	call	is_key_pressed		#
	mov.w	r1, r0	# _1,
# spaceinvaders.c:2162: 		if (is_key_pressed() == VK_ESC)
	mov.w	r0, 27	# tmp55,
	cmp.w	r1, r0	# _1, tmp55
	jnz	.L355		#
# spaceinvaders.c:2163: 			return 1;
	mov.w	r0, 1	# _8,
	j	.L354		#
.L355:
# spaceinvaders.c:2165: 		timer_for_label_visibility -= 2;
	ld.w	r0, [r13 + (-8)]	# tmp57, timer_for_label_visibility
	add.w	r0, -2 #111	# tmp56,
	st.w	[r13 + (-8)], r0	# timer_for_label_visibility, tmp56
# spaceinvaders.c:2166: 		timer_for_screen_change -= 2;
	ld.w	r0, [r13 + (-12)]	# tmp59, timer_for_screen_change
	add.w	r0, -2 #111	# tmp58,
	st.w	[r13 + (-12)], r0	# timer_for_screen_change, tmp58
# spaceinvaders.c:2167: 		delay(delay_ms);
	ld.w	r0, [delay_ms]	# delay_ms.148_2, delay_ms
	mov.w	r1, sp	# tmp60,
	st.w	[r1], r0	#, delay_ms.148_2
	call	delay		#
# spaceinvaders.c:2148: 		if(timer_for_label_visibility <= 0)
	j	.L356		#
.L354:
# spaceinvaders.c:2169: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	switch_to_get_ready_screen, .-switch_to_get_ready_screen
	.p2align	1
	.global	initialize_alien
	.type	initialize_alien, @function
initialize_alien:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 44 #111	#,
	ld.w	r4, [r13 + (12)]	# tmp31, x
	ld.w	r3, [r13 + (16)]	# tmp33, y
	ld.w	r2, [r13 + (20)]	# tmp35, width
	ld.w	r1, [r13 + (24)]	# tmp37, height
	ld.w	r0, [r13 + (32)]	# tmp39, status
	st.s	[r13 + (-8)], r4	# x, tmp32
	st.s	[r13 + (-12)], r3	# y, tmp34
	st.s	[r13 + (-16)], r2	# width, tmp36
	st.s	[r13 + (-20)], r1	# height, tmp38
	st.s	[r13 + (-24)], r0	# status, tmp40
# spaceinvaders.c:2181: 	alien->x = x;
	ld.w	r0, [r13 + (8)]	# tmp41, alien
	ld.s	r1, [r13 + (-8)]	# tmp42, x
	st.s	[r0 + (2)], r1	# alien_7(D)->x, tmp42
# spaceinvaders.c:2182: 	alien->y = y;
	ld.w	r0, [r13 + (8)]	# tmp43, alien
	ld.s	r1, [r13 + (-12)]	# tmp44, y
	st.s	[r0 + (4)], r1	# alien_7(D)->y, tmp44
# spaceinvaders.c:2183: 	alien->addr = draw_bitmap_with_clear_background(x, y, width, height, bitmap);
	ld.s	r0, [r13 + (-8)]	#, x
	sex.s	r1, r0	# _1,
	ld.s	r0, [r13 + (-12)]	#, y
	sex.s	r2, r0	# _2,
	ld.s	r0, [r13 + (-16)]	#, width
	sex.s	r3, r0	# _3,
	ld.s	r0, [r13 + (-20)]	#, height
	sex.s	r4, r0	# _4,
	mov.w	r0, sp	# tmp45,
	ld.w	r6, [r13 + (28)]	# tmp46, bitmap
	st.w	[r0 + (16)], r6	#, tmp46
	st.w	[r0 + (12)], r4	#, _4
	st.w	[r0 + (8)], r3	#, _3
	st.w	[r0 + (4)], r2	#, _2
	st.w	[r0], r1	#, _1
	call	draw_bitmap_with_clear_background		#
	mov.w	r1, r0	# _5,
# spaceinvaders.c:2183: 	alien->addr = draw_bitmap_with_clear_background(x, y, width, height, bitmap);
	ld.w	r0, [r13 + (8)]	# tmp47, alien
	st.s	[r0], r1	# alien_7(D)->addr, _5
# spaceinvaders.c:2184: 	alien->alive = status;
	ld.w	r0, [r13 + (8)]	# tmp48, alien
	ld.s	r1, [r13 + (-24)]	# tmp49, status
	st.s	[r0 + (6)], r1	# alien_7(D)->alive, tmp49
# spaceinvaders.c:2185: }
	nop	
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	initialize_alien, .-initialize_alien
	.p2align	1
	.global	fire_bullet_if_ready
	.type	fire_bullet_if_ready, @function
fire_bullet_if_ready:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# spaceinvaders.c:2189: 	if(player_bullet_status == READY) 
	ld.w	r1, [player_bullet_status]	# player_bullet_status.149_1, player_bullet_status
# spaceinvaders.c:2189: 	if(player_bullet_status == READY) 
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# player_bullet_status.149_1, tmp40
	jnz	.L360		#
# spaceinvaders.c:2191: 		player_bullet_def->addr = (short)player_bullet_addr;
	ld.w	r1, [player_bullet_addr]	# player_bullet_addr.150_2, player_bullet_addr
# spaceinvaders.c:2191: 		player_bullet_def->addr = (short)player_bullet_addr;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.151_3, player_bullet_def
# spaceinvaders.c:2191: 		player_bullet_def->addr = (short)player_bullet_addr;
	st.s	[r0], r1	# player_bullet_def.151_3->addr, _4
# spaceinvaders.c:2192: 		player_bullet_def->x = player_ship->x + 6;
	ld.w	r0, [player_ship]	# player_ship.152_5, player_ship
	ld.s	r0, [r0 + (2)]	# _6, player_ship.152_5->x
# spaceinvaders.c:2192: 		player_bullet_def->x = player_ship->x + 6;
	add.w	r0, 6 #111	# tmp41,
	mov.w	r1, r0	# _8, tmp41
# spaceinvaders.c:2192: 		player_bullet_def->x = player_ship->x + 6;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.153_9, player_bullet_def
# spaceinvaders.c:2192: 		player_bullet_def->x = player_ship->x + 6;
	st.s	[r0 + (2)], r1	# player_bullet_def.153_9->x, _10
# spaceinvaders.c:2193: 		player_bullet_def->y = 204;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.154_11, player_bullet_def
# spaceinvaders.c:2193: 		player_bullet_def->y = 204;
	mov.s	r1, 204	# tmp42,
	st.s	[r0 + (4)], r1	# player_bullet_def.154_11->y, tmp42
# spaceinvaders.c:2194: 		player_bullet_def->transparent = 0;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.155_12, player_bullet_def
# spaceinvaders.c:2194: 		player_bullet_def->transparent = 0;
	xor.w	r1, r1	# tmp43
	st.s	[r0 + (6)], r1	# player_bullet_def.155_12->transparent, tmp43
# spaceinvaders.c:2195: 		player_bullet_status = MOVING;
	mov.w	r0, 2	# tmp44,
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp44
# spaceinvaders.c:2196: 		current_player_bullet++;
	ld.w	r0, [current_player_bullet]	# current_player_bullet.156_13, current_player_bullet
	add.w	r0, 1 #111	# _14,
	st.w	[current_player_bullet], r0	# current_player_bullet, _14
# spaceinvaders.c:2198: 		set_current_and_special_bullets_if_current_is_higher_than_special();
	call	set_current_and_special_bullets_if_current_is_higher_than_special		#
.L360:
# spaceinvaders.c:2200: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	fire_bullet_if_ready, .-fire_bullet_if_ready
	.p2align	1
	.global	switch_to_play_screen
	.type	switch_to_play_screen, @function
switch_to_play_screen:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 116 #111	#,
# spaceinvaders.c:2205: 	player_movement_skip_frame = 3;
	mov.w	r0, 3	# tmp388,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, tmp388
# spaceinvaders.c:2206: 	player_alive = 3;
	mov.w	r0, 3	# tmp389,
	st.w	[player_alive], r0	# player_alive, tmp389
# spaceinvaders.c:2207: 	player_death_timer = 0;
	xor.w	r0, r0	# tmp390
	st.w	[player_death_timer], r0	# player_death_timer, tmp390
# spaceinvaders.c:2208: 	player_spawn_current_time = 0;
	xor.w	r0, r0	# tmp391
	st.w	[player_spawn_current_time], r0	# player_spawn_current_time, tmp391
# spaceinvaders.c:2209: 	player_spawn_timer = 1500;
	mov.w	r0, 1500	# tmp392,
	st.w	[player_spawn_timer], r0	# player_spawn_timer, tmp392
# spaceinvaders.c:2210: 	current_pl_expl_sprite = 0;
	xor.w	r0, r0	# tmp393
	st.w	[current_pl_expl_sprite], r0	# current_pl_expl_sprite, tmp393
# spaceinvaders.c:2213: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp394
	st.w	[vkp], r0	# vkp, tmp394
# spaceinvaders.c:2213: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp395
	st.w	[vkr], r0	# vkr, tmp395
# spaceinvaders.c:2213: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp396
	st.w	[old], r0	# old, tmp396
# spaceinvaders.c:2217: 	timer_for_ufo_death = 0;
	xor.w	r0, r0	# tmp397
	st.w	[timer_for_ufo_death], r0	# timer_for_ufo_death, tmp397
# spaceinvaders.c:2218: 	ufo_status = DEAD;
	xor.w	r0, r0	# tmp398
	st.w	[ufo_status], r0	# ufo_status, tmp398
# spaceinvaders.c:2219: 	timer_for_ufo_move = 36;
	mov.w	r0, 36	# tmp399,
	st.w	[timer_for_ufo_move], r0	# timer_for_ufo_move, tmp399
# spaceinvaders.c:2220: 	ufo_position_X = 0;
	xor.w	r0, r0	# tmp400
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp400
# spaceinvaders.c:2221: 	ufo_direction = 3;
	mov.w	r0, 3	# tmp401,
	st.w	[ufo_direction], r0	# ufo_direction, tmp401
# spaceinvaders.c:2222: 	ufo_score = 0;
	xor.w	r0, r0	# tmp402
	st.w	[ufo_score], r0	# ufo_score, tmp402
# spaceinvaders.c:2225: 	number_of_aliens = 55;
	mov.w	r0, 55	# tmp403,
	st.w	[number_of_aliens], r0	# number_of_aliens, tmp403
# spaceinvaders.c:2226: 	death_timer = 0;
	xor.w	r0, r0	# tmp404
	st.w	[death_timer], r0	# death_timer, tmp404
# spaceinvaders.c:2227: 	movement_step = 96;
	mov.w	r0, 96	# tmp405,
	st.w	[movement_step], r0	# movement_step, tmp405
# spaceinvaders.c:2228: 	current_step = 0;
	xor.w	r0, r0	# tmp406
	st.w	[current_step], r0	# current_step, tmp406
# spaceinvaders.c:2229: 	direction = 3;
	mov.b	r0, 3	# tmp407,
	st.b	[direction], r0	# direction, tmp407
# spaceinvaders.c:2230: 	distance = 2;
	mov.w	r0, 2	# tmp408,
	st.w	[distance], r0	# distance, tmp408
# spaceinvaders.c:2231: 	int sprite_version = 1;
	mov.w	r0, 1	# tmp409,
	st.w	[r13 + (-4)], r0	# sprite_version, tmp409
# spaceinvaders.c:2232: 	short *alien_sprite = 0;
	xor.w	r0, r0	# tmp410
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp410
# spaceinvaders.c:2242: 	int alien_index = 0;
	xor.w	r0, r0	# tmp411
	st.w	[r13 + (-12)], r0	# alien_index, tmp411
# spaceinvaders.c:2245: 	player_bullet_status = READY;
	xor.w	r0, r0	# tmp412
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp412
# spaceinvaders.c:2246: 	timer_for_player_bullet_destroy = 0;
	xor.w	r0, r0	# tmp413
	st.w	[timer_for_player_bullet_destroy], r0	# timer_for_player_bullet_destroy, tmp413
# spaceinvaders.c:2247: 	special_player_bullet = 23;
	mov.w	r0, 23	# tmp414,
	st.w	[special_player_bullet], r0	# special_player_bullet, tmp414
# spaceinvaders.c:2248: 	current_player_bullet = 0;
	xor.w	r0, r0	# tmp415
	st.w	[current_player_bullet], r0	# current_player_bullet, tmp415
# spaceinvaders.c:2251: 	timer_for_alien_bullet_spawn = 1150;
	mov.w	r0, 1150	# tmp416,
	st.w	[timer_for_alien_bullet_spawn], r0	# timer_for_alien_bullet_spawn, tmp416
# spaceinvaders.c:2252: 	alien_bullet_spawn_time = 1150;
	mov.w	r0, 1150	# tmp417,
	st.w	[alien_bullet_spawn_time], r0	# alien_bullet_spawn_time, tmp417
# spaceinvaders.c:2254: 	delay_ms = 2;
	mov.w	r0, 2	# tmp418,
	st.w	[delay_ms], r0	# delay_ms, tmp418
# spaceinvaders.c:2257: 	calculate_timer_for_ufo_spawn();
	call	calculate_timer_for_ufo_spawn		#
# spaceinvaders.c:2259: 	change_sprite_color(PLAYER_SPAWN_Y, 16, 8, ship);
	mov.w	r0, sp	# tmp419,
	mov.w	r1, ship	# tmp420,
	st.w	[r0 + (12)], r1	#, tmp420
	mov.w	r1, 8	# tmp421,
	st.w	[r0 + (8)], r1	#, tmp421
	mov.w	r1, 16	# tmp422,
	st.w	[r0 + (4)], r1	#, tmp422
	mov.w	r1, 212	# tmp423,
	st.w	[r0], r1	#, tmp423
	call	change_sprite_color		#
# spaceinvaders.c:2260: 	copy_player_ship();
	call	copy_player_ship		#
# spaceinvaders.c:2261: 	player_ship->addr = 0;
	ld.w	r0, [player_ship]	# player_ship.157_1, player_ship
# spaceinvaders.c:2261: 	player_ship->addr = 0;
	xor.w	r1, r1	# tmp424
	st.s	[r0], r1	# player_ship.157_1->addr, tmp424
# spaceinvaders.c:2263: 	for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp425
	st.w	[r13 + (-16)], r0	# i, tmp425
# spaceinvaders.c:2263: 	for(int i = 0; i < 5; i++)
	j	.L362		#
.L363:
# spaceinvaders.c:2265: 		alien_bullet[i].x = 0;
	ld.w	r1, [r13 + (-16)]	# tmp426, i
	mov.w	r0, r1	# tmp427, tmp426
	mov.w	r2, 3	# tmp429,
	shl.w	r0, r2	# tmp428, tmp429
	add.w	r0, r1 #222	# tmp427, tmp426
	mov.w	r1, 2	# tmp431,
	shl.w	r0, r1	# tmp430, tmp431
	mov.w	r1, alien_bullet	# tmp433,
	add.w	r0, r1 #222	# tmp432, tmp433
	xor.w	r1, r1	# tmp434
	st.w	[r0], r1	# alien_bullet[i_376].x, tmp434
# spaceinvaders.c:2266: 		alien_bullet[i].y = 0;
	ld.w	r1, [r13 + (-16)]	# tmp435, i
	mov.w	r0, r1	# tmp436, tmp435
	mov.w	r2, 3	# tmp438,
	shl.w	r0, r2	# tmp437, tmp438
	add.w	r0, r1 #222	# tmp436, tmp435
	mov.w	r1, 2	# tmp440,
	shl.w	r0, r1	# tmp439, tmp440
	mov.w	r1, alien_bullet+4	# tmp442,
	add.w	r0, r1 #222	# tmp441, tmp442
	xor.w	r1, r1	# tmp443
	st.w	[r0], r1	# alien_bullet[i_376].y, tmp443
# spaceinvaders.c:2267: 		alien_bullet[i].type = 2;
	ld.w	r1, [r13 + (-16)]	# tmp444, i
	mov.w	r0, r1	# tmp445, tmp444
	mov.w	r2, 3	# tmp447,
	shl.w	r0, r2	# tmp446, tmp447
	add.w	r0, r1 #222	# tmp445, tmp444
	mov.w	r1, 2	# tmp449,
	shl.w	r0, r1	# tmp448, tmp449
	mov.w	r1, alien_bullet+12	# tmp451,
	add.w	r0, r1 #222	# tmp450, tmp451
	mov.w	r1, 2	# tmp452,
	st.w	[r0], r1	# alien_bullet[i_376].type, tmp452
# spaceinvaders.c:2268: 		alien_bullet[i].sprite = 0;
	ld.w	r1, [r13 + (-16)]	# tmp453, i
	mov.w	r0, r1	# tmp454, tmp453
	mov.w	r2, 3	# tmp456,
	shl.w	r0, r2	# tmp455, tmp456
	add.w	r0, r1 #222	# tmp454, tmp453
	mov.w	r1, 2	# tmp458,
	shl.w	r0, r1	# tmp457, tmp458
	mov.w	r1, alien_bullet+16	# tmp460,
	add.w	r0, r1 #222	# tmp459, tmp460
	xor.w	r1, r1	# tmp461
	st.w	[r0], r1	# alien_bullet[i_376].sprite, tmp461
# spaceinvaders.c:2269: 		alien_bullet[i].status = READY;
	ld.w	r1, [r13 + (-16)]	# tmp462, i
	mov.w	r0, r1	# tmp463, tmp462
	mov.w	r2, 3	# tmp465,
	shl.w	r0, r2	# tmp464, tmp465
	add.w	r0, r1 #222	# tmp463, tmp462
	mov.w	r1, 2	# tmp467,
	shl.w	r0, r1	# tmp466, tmp467
	mov.w	r1, alien_bullet+20	# tmp469,
	add.w	r0, r1 #222	# tmp468, tmp469
	xor.w	r1, r1	# tmp470
	st.w	[r0], r1	# alien_bullet[i_376].status, tmp470
# spaceinvaders.c:2270: 		alien_bullet[i].timer_for_move = 0;
	ld.w	r1, [r13 + (-16)]	# tmp471, i
	mov.w	r0, r1	# tmp472, tmp471
	mov.w	r2, 3	# tmp474,
	shl.w	r0, r2	# tmp473, tmp474
	add.w	r0, r1 #222	# tmp472, tmp471
	mov.w	r1, 2	# tmp476,
	shl.w	r0, r1	# tmp475, tmp476
	mov.w	r1, alien_bullet+24	# tmp478,
	add.w	r0, r1 #222	# tmp477, tmp478
	xor.w	r1, r1	# tmp479
	st.w	[r0], r1	# alien_bullet[i_376].timer_for_move, tmp479
# spaceinvaders.c:2271: 		alien_bullet[i].timer_for_sprite_change = 0;
	ld.w	r1, [r13 + (-16)]	# tmp480, i
	mov.w	r0, r1	# tmp481, tmp480
	mov.w	r2, 3	# tmp483,
	shl.w	r0, r2	# tmp482, tmp483
	add.w	r0, r1 #222	# tmp481, tmp480
	mov.w	r1, 2	# tmp485,
	shl.w	r0, r1	# tmp484, tmp485
	mov.w	r1, alien_bullet+28	# tmp487,
	add.w	r0, r1 #222	# tmp486, tmp487
	xor.w	r1, r1	# tmp488
	st.w	[r0], r1	# alien_bullet[i_376].timer_for_sprite_change, tmp488
# spaceinvaders.c:2272: 		alien_bullet[i].timer_for_destroy = 0;
	ld.w	r1, [r13 + (-16)]	# tmp489, i
	mov.w	r0, r1	# tmp490, tmp489
	mov.w	r2, 3	# tmp492,
	shl.w	r0, r2	# tmp491, tmp492
	add.w	r0, r1 #222	# tmp490, tmp489
	mov.w	r1, 2	# tmp494,
	shl.w	r0, r1	# tmp493, tmp494
	mov.w	r1, alien_bullet+32	# tmp496,
	add.w	r0, r1 #222	# tmp495, tmp496
	xor.w	r1, r1	# tmp497
	st.w	[r0], r1	# alien_bullet[i_376].timer_for_destroy, tmp497
# spaceinvaders.c:2263: 	for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-16)]	# tmp499, i
	add.w	r0, 1 #111	# tmp498,
	st.w	[r13 + (-16)], r0	# i, tmp498
.L362:
# spaceinvaders.c:2263: 	for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-16)]	# tmp500, i
	mov.w	r0, 4	# tmp501,
	cmp.w	r1, r0	# tmp500, tmp501
	jses	.L363		#
# spaceinvaders.c:2275: 	for(int i = 0; i < 4; i++)
	xor.w	r0, r0	# tmp502
	st.w	[r13 + (-20)], r0	# i, tmp502
# spaceinvaders.c:2275: 	for(int i = 0; i < 4; i++)
	j	.L364		#
.L365:
# spaceinvaders.c:2277: 		row_base[i].x = 40 + 48 * i;
	ld.w	r0, [r13 + (-20)]	# tmp503, i
	mov.w	r1, r0	# _2, tmp503
	mov.w	r0, r1	# tmp504, _2
	mov.w	r2, r0	# tmp506, tmp504
	add.w	r0, r2 #222	# tmp505, tmp506
	add.w	r0, r1 #222	# tmp507, tmp508
	mov.w	r1, 4	# tmp511,
	shl.w	r0, r1	# tmp510, tmp511
	add.w	r0, 40 #111	# tmp512,
	mov.w	r1, r0	# _5, _4
# spaceinvaders.c:2277: 		row_base[i].x = 40 + 48 * i;
	ld.w	r0, [r13 + (-20)]	# tmp513, i
	mov.w	r2, 3	# tmp515,
	shl.w	r0, r2	# tmp514, tmp515
	mov.w	r2, row_base+2	# tmp517,
	add.w	r0, r2 #222	# tmp516, tmp517
	st.s	[r0], r1	# row_base[i_377].x, _5
# spaceinvaders.c:2278: 		row_base[i].y = BASE_Y;
	ld.w	r0, [r13 + (-20)]	# tmp518, i
	mov.w	r1, 3	# tmp520,
	shl.w	r0, r1	# tmp519, tmp520
	mov.w	r1, row_base+4	# tmp522,
	add.w	r0, r1 #222	# tmp521, tmp522
	mov.s	r1, 188	# tmp523,
	st.s	[r0], r1	# row_base[i_377].y, tmp523
# spaceinvaders.c:2279: 		row_base[i].addr = draw_bitmap_with_clear_background(40 + 48 * i, BASE_Y, 24, 16, base);
	ld.w	r1, [r13 + (-20)]	# tmp524, i
	mov.w	r0, r1	# tmp525, tmp524
	add.w	r0, r0 #222	# tmp526, tmp525
	add.w	r0, r1 #222	# tmp525, tmp524
	mov.w	r1, 4	# tmp528,
	shl.w	r0, r1	# tmp527, tmp528
# spaceinvaders.c:2279: 		row_base[i].addr = draw_bitmap_with_clear_background(40 + 48 * i, BASE_Y, 24, 16, base);
	mov.w	r1, r0	# _7, _6
	add.w	r1, 40 #111	# _7,
	mov.w	r0, sp	# tmp529,
	mov.w	r2, base	# tmp530,
	st.w	[r0 + (16)], r2	#, tmp530
	mov.w	r2, 16	# tmp531,
	st.w	[r0 + (12)], r2	#, tmp531
	mov.w	r2, 24	# tmp532,
	st.w	[r0 + (8)], r2	#, tmp532
	mov.w	r2, 188	# tmp533,
	st.w	[r0 + (4)], r2	#, tmp533
	st.w	[r0], r1	#, _7
	call	draw_bitmap_with_clear_background		#
	mov.w	r2, r0	# _8,
# spaceinvaders.c:2279: 		row_base[i].addr = draw_bitmap_with_clear_background(40 + 48 * i, BASE_Y, 24, 16, base);
	ld.w	r0, [r13 + (-20)]	# tmp534, i
	mov.w	r1, 3	# tmp536,
	shl.w	r0, r1	# tmp535, tmp536
	mov.w	r1, row_base	# tmp538,
	add.w	r0, r1 #222	# tmp537, tmp538
	st.s	[r0], r2	# row_base[i_377].addr, _8
# spaceinvaders.c:2280: 		row_base[i].alive = 2;
	ld.w	r0, [r13 + (-20)]	# tmp539, i
	mov.w	r1, 3	# tmp541,
	shl.w	r0, r1	# tmp540, tmp541
	mov.w	r1, row_base+6	# tmp543,
	add.w	r0, r1 #222	# tmp542, tmp543
	mov.s	r1, 2	# tmp544,
	st.s	[r0], r1	# row_base[i_377].alive, tmp544
# spaceinvaders.c:2275: 	for(int i = 0; i < 4; i++)
	ld.w	r0, [r13 + (-20)]	# tmp546, i
	add.w	r0, 1 #111	# tmp545,
	st.w	[r13 + (-20)], r0	# i, tmp545
.L364:
# spaceinvaders.c:2275: 	for(int i = 0; i < 4; i++)
	ld.w	r1, [r13 + (-20)]	# tmp547, i
	mov.w	r0, 3	# tmp548,
	cmp.w	r1, r0	# tmp547, tmp548
	jses	.L365		#
# spaceinvaders.c:2283: 	for(int i = 0; i < 15; i++)
	xor.w	r0, r0	# tmp549
	st.w	[r13 + (-24)], r0	# i, tmp549
# spaceinvaders.c:2283: 	for(int i = 0; i < 15; i++)
	j	.L366		#
.L367:
# spaceinvaders.c:2284: 		draw_bitmap_with_clear_background(16 * i, BOTTOM_LINE_Y, 16, 1, bottom_line);
	ld.w	r1, [r13 + (-24)]	# tmp550, i
	mov.w	r0, 4	# tmp551,
	shl.w	r1, r0	# _9, tmp551
	mov.w	r0, sp	# tmp552,
	mov.w	r2, bottom_line	# tmp553,
	st.w	[r0 + (16)], r2	#, tmp553
	mov.w	r2, 1	# tmp554,
	st.w	[r0 + (12)], r2	#, tmp554
	mov.w	r2, 16	# tmp555,
	st.w	[r0 + (8)], r2	#, tmp555
	mov.w	r2, 228	# tmp556,
	st.w	[r0 + (4)], r2	#, tmp556
	st.w	[r0], r1	#, _9
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:2283: 	for(int i = 0; i < 15; i++)
	ld.w	r0, [r13 + (-24)]	# tmp558, i
	add.w	r0, 1 #111	# tmp557,
	st.w	[r13 + (-24)], r0	# i, tmp557
.L366:
# spaceinvaders.c:2283: 	for(int i = 0; i < 15; i++)
	ld.w	r1, [r13 + (-24)]	# tmp559, i
	mov.w	r0, 14	# tmp560,
	cmp.w	r1, r0	# tmp559, tmp560
	jses	.L367		#
# spaceinvaders.c:2286: 	draw_score_labels();
	call	draw_score_labels		#
# spaceinvaders.c:2287: 	check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:2288: 	draw_high_score();
	call	draw_high_score		#
# spaceinvaders.c:2289: 	draw_lives();
	call	draw_lives		#
# spaceinvaders.c:2291: 	int alien_spawn_x =  41;
	mov.w	r0, 41	# tmp561,
	st.w	[r13 + (-88)], r0	# alien_spawn_x, tmp561
# spaceinvaders.c:2292: 	int alien_spawn_y = get_alien_spawn_y_for_current_wave();
	call	get_alien_spawn_y_for_current_wave		#
	st.w	[r13 + (-28)], r0	# alien_spawn_y,
# spaceinvaders.c:2296: 	int alien_sprite_width = 0;
	xor.w	r0, r0	# tmp562
	st.w	[r13 + (-40)], r0	# alien_sprite_width, tmp562
# spaceinvaders.c:2299: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	mov.w	r0, 4	# tmp563,
	st.w	[r13 + (-44)], r0	# j, tmp563
# spaceinvaders.c:2299: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	j	.L368		#
.L377:
# spaceinvaders.c:2302: 		switch(j)
	ld.w	r1, [r13 + (-44)]	# tmp564, j
	mov.w	r0, 4	# tmp565,
	cmp.w	r1, r0	# tmp564, tmp565
	jz	.L369		#
	ld.w	r1, [r13 + (-44)]	# tmp566, j
	mov.w	r0, 4	# tmp567,
	cmp.w	r1, r0	# tmp566, tmp567
	jgs	.L370		#
	ld.w	r1, [r13 + (-44)]	# tmp568, j
	mov.w	r0, 3	# tmp569,
	cmp.w	r1, r0	# tmp568, tmp569
	jz	.L371		#
	ld.w	r1, [r13 + (-44)]	# tmp570, j
	mov.w	r0, 3	# tmp571,
	cmp.w	r1, r0	# tmp570, tmp571
	jgs	.L370		#
	ld.w	r1, [r13 + (-44)]	# tmp572, j
	mov.w	r0, 2	# tmp573,
	cmp.w	r1, r0	# tmp572, tmp573
	jz	.L372		#
	ld.w	r1, [r13 + (-44)]	# tmp574, j
	mov.w	r0, 2	# tmp575,
	cmp.w	r1, r0	# tmp574, tmp575
	jgs	.L370		#
	ld.w	r1, [r13 + (-44)]	# tmp576, j
	xor.w	r0, r0	# tmp577
	cmp.w	r1, r0	# tmp576, tmp577
	jz	.L373		#
	ld.w	r1, [r13 + (-44)]	# tmp578, j
	mov.w	r0, 1	# tmp579,
	cmp.w	r1, r0	# tmp578, tmp579
	jz	.L374		#
	j	.L370		#
.L369:
# spaceinvaders.c:2305: 				alien_row = row_5_octopus;
	mov.w	r0, row_5_octopus	# tmp580,
	st.w	[r13 + (-36)], r0	# alien_row, tmp580
# spaceinvaders.c:2306: 				alien_bitmap = octopus0;
	mov.w	r0, octopus0	# tmp581,
	st.w	[r13 + (-32)], r0	# alien_bitmap, tmp581
# spaceinvaders.c:2307: 				alien_sprite_width = 12;
	mov.w	r0, 12	# tmp582,
	st.w	[r13 + (-40)], r0	# alien_sprite_width, tmp582
# spaceinvaders.c:2308: 				break;
	j	.L370		#
.L371:
# spaceinvaders.c:2310: 				alien_row = row_4_octopus;
	mov.w	r0, row_4_octopus	# tmp583,
	st.w	[r13 + (-36)], r0	# alien_row, tmp583
# spaceinvaders.c:2311: 				break;
	j	.L370		#
.L372:
# spaceinvaders.c:2313: 				alien_row = row_3_crab;
	mov.w	r0, row_3_crab	# tmp584,
	st.w	[r13 + (-36)], r0	# alien_row, tmp584
# spaceinvaders.c:2314: 				alien_bitmap = crab0;
	mov.w	r0, crab0	# tmp585,
	st.w	[r13 + (-32)], r0	# alien_bitmap, tmp585
# spaceinvaders.c:2315: 				break;
	j	.L370		#
.L374:
# spaceinvaders.c:2317: 				alien_row = row_2_crab;
	mov.w	r0, row_2_crab	# tmp586,
	st.w	[r13 + (-36)], r0	# alien_row, tmp586
# spaceinvaders.c:2318: 				break;
	j	.L370		#
.L373:
# spaceinvaders.c:2320: 				alien_row = row_1_squid;
	mov.w	r0, row_1_squid	# tmp587,
	st.w	[r13 + (-36)], r0	# alien_row, tmp587
# spaceinvaders.c:2321: 				alien_bitmap = squid0;
	mov.w	r0, squid0	# tmp588,
	st.w	[r13 + (-32)], r0	# alien_bitmap, tmp588
# spaceinvaders.c:2322: 				alien_sprite_width = 8;
	mov.w	r0, 8	# tmp589,
	st.w	[r13 + (-40)], r0	# alien_sprite_width, tmp589
# spaceinvaders.c:2323: 				break;
	nop	
.L370:
# spaceinvaders.c:2326: 		for(int i = 0; i < 11; i++)
	xor.w	r0, r0	# tmp590
	st.w	[r13 + (-48)], r0	# i, tmp590
# spaceinvaders.c:2326: 		for(int i = 0; i < 11; i++)
	j	.L375		#
.L376:
# spaceinvaders.c:2328: 			delay(16);
	mov.w	r1, sp	# tmp591,
	mov.w	r0, 16	# tmp592,
	st.w	[r1], r0	#, tmp592
	call	delay		#
# spaceinvaders.c:2330: 				&alien_row[i],
	ld.w	r0, [r13 + (-48)]	# i.158_10, i
	mov.w	r1, 3	# tmp593,
	shl.w	r0, r1	# _11, tmp593
# spaceinvaders.c:2329: 			initialize_alien(
	ld.w	r1, [r13 + (-36)]	# tmp594, alien_row
	add.w	r1, r0 #222	# _12, _11
# spaceinvaders.c:2331: 				alien_spawn_x + 16 * i,
	ld.w	r0, [r13 + (-48)]	# tmp595, i
	mov.w	r2, 4	# tmp597,
	shl.w	r0, r2	# tmp596, tmp597
	ld.w	r2, [r13 + (-88)]	# tmp598, alien_spawn_x
	add.w	r0, r2 #222	# tmp599, tmp600
# spaceinvaders.c:2329: 			initialize_alien(
	sex.s	r2, r0	# _18, _17
	ld.w	r0, [r13 + (-28)]	# tmp601, alien_spawn_y
	sex.s	r3, r0	# _20, _19
	ld.w	r0, [r13 + (-40)]	# tmp602, alien_sprite_width
	sex.s	r4, r0	# _22, _21
	mov.w	r0, sp	# tmp603,
	mov.w	r5, 2	# tmp604,
	st.w	[r0 + (24)], r5	#, tmp604
	ld.w	r5, [r13 + (-32)]	# tmp605, alien_bitmap
	st.w	[r0 + (20)], r5	#, tmp605
	mov.w	r5, 8	# tmp606,
	st.w	[r0 + (16)], r5	#, tmp606
	st.w	[r0 + (12)], r4	#, _22
	st.w	[r0 + (8)], r3	#, _20
	st.w	[r0 + (4)], r2	#, _18
	st.w	[r0], r1	#, _12
	call	initialize_alien		#
# spaceinvaders.c:2326: 		for(int i = 0; i < 11; i++)
	ld.w	r0, [r13 + (-48)]	# tmp608, i
	add.w	r0, 1 #111	# tmp607,
	st.w	[r13 + (-48)], r0	# i, tmp607
.L375:
# spaceinvaders.c:2326: 		for(int i = 0; i < 11; i++)
	ld.w	r1, [r13 + (-48)]	# tmp609, i
	mov.w	r0, 10	# tmp610,
	cmp.w	r1, r0	# tmp609, tmp610
	jses	.L376		#
# spaceinvaders.c:2339: 		alien_spawn_y -= 16;
	ld.w	r0, [r13 + (-28)]	# tmp612, alien_spawn_y
	add.w	r0, -16 #111	# tmp611,
	st.w	[r13 + (-28)], r0	# alien_spawn_y, tmp611
# spaceinvaders.c:2299: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	ld.w	r0, [r13 + (-44)]	# tmp614, j
	add.w	r0, -1 #111	# tmp613,
	st.w	[r13 + (-44)], r0	# j, tmp613
.L368:
# spaceinvaders.c:2299: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	ld.w	r1, [r13 + (-44)]	# tmp615, j
	xor.w	r0, r0	# tmp616
	cmp.w	r1, r0	# tmp615, tmp616
	jges	.L377		#
# spaceinvaders.c:2341: 	delay(16);
	mov.w	r1, sp	# tmp617,
	mov.w	r0, 16	# tmp618,
	st.w	[r1], r0	#, tmp618
	call	delay		#
.L512:
# spaceinvaders.c:2346: 		if(game_state == PLAY)
	ld.w	r1, [game_state]	# game_state.159_23, game_state
# spaceinvaders.c:2346: 		if(game_state == PLAY)
	mov.w	r0, 1	# tmp619,
	cmp.w	r1, r0	# game_state.159_23, tmp619
	jnz	.L378		#
# spaceinvaders.c:2350: 			if(ufo_status == DEAD
	ld.w	r1, [ufo_status]	# ufo_status.160_24, ufo_status
# spaceinvaders.c:2350: 			if(ufo_status == DEAD
	xor.w	r0, r0	# tmp620
	cmp.w	r1, r0	# ufo_status.160_24, tmp620
	jnz	.L379		#
# spaceinvaders.c:2351: 			   && number_of_aliens >= 8)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.161_25, number_of_aliens
# spaceinvaders.c:2351: 			   && number_of_aliens >= 8)
	mov.w	r0, 7	# tmp621,
	cmp.w	r1, r0	# number_of_aliens.161_25, tmp621
	jses	.L379		#
# spaceinvaders.c:2353: 				if(timer_for_ufo_spawn <= 0)
	ld.w	r1, [timer_for_ufo_spawn]	# timer_for_ufo_spawn.162_26, timer_for_ufo_spawn
# spaceinvaders.c:2353: 				if(timer_for_ufo_spawn <= 0)
	xor.w	r0, r0	# tmp622
	cmp.w	r1, r0	# timer_for_ufo_spawn.162_26, tmp622
	jgs	.L380		#
# spaceinvaders.c:2355: 					spawn_ufo();
	call	spawn_ufo		#
# spaceinvaders.c:2356: 					calculate_timer_for_ufo_spawn();
	call	calculate_timer_for_ufo_spawn		#
.L380:
# spaceinvaders.c:2358: 				timer_for_ufo_spawn -= 2;
	ld.w	r0, [timer_for_ufo_spawn]	# timer_for_ufo_spawn.163_27, timer_for_ufo_spawn
	add.w	r0, -2 #111	# _28,
	st.w	[timer_for_ufo_spawn], r0	# timer_for_ufo_spawn, _28
	j	.L381		#
.L379:
# spaceinvaders.c:2360: 			else if(ufo_status == ALIVE)
	ld.w	r1, [ufo_status]	# ufo_status.164_29, ufo_status
# spaceinvaders.c:2360: 			else if(ufo_status == ALIVE)
	mov.w	r0, 2	# tmp623,
	cmp.w	r1, r0	# ufo_status.164_29, tmp623
	jnz	.L382		#
# spaceinvaders.c:2362: 				if(timer_for_ufo_move <= 0)
	ld.w	r1, [timer_for_ufo_move]	# timer_for_ufo_move.165_30, timer_for_ufo_move
# spaceinvaders.c:2362: 				if(timer_for_ufo_move <= 0)
	xor.w	r0, r0	# tmp624
	cmp.w	r1, r0	# timer_for_ufo_move.165_30, tmp624
	jgs	.L383		#
# spaceinvaders.c:2364: 					move_ufo();
	call	move_ufo		#
# spaceinvaders.c:2365: 					timer_for_ufo_move = 36;
	mov.w	r0, 36	# tmp625,
	st.w	[timer_for_ufo_move], r0	# timer_for_ufo_move, tmp625
.L383:
# spaceinvaders.c:2367: 				timer_for_ufo_move -= 2;
	ld.w	r0, [timer_for_ufo_move]	# timer_for_ufo_move.166_31, timer_for_ufo_move
	add.w	r0, -2 #111	# _32,
	st.w	[timer_for_ufo_move], r0	# timer_for_ufo_move, _32
	j	.L381		#
.L382:
# spaceinvaders.c:2369: 			else if(ufo_status == EXPLODING)
	ld.w	r1, [ufo_status]	# ufo_status.167_33, ufo_status
# spaceinvaders.c:2369: 			else if(ufo_status == EXPLODING)
	mov.w	r0, 1	# tmp626,
	cmp.w	r1, r0	# ufo_status.167_33, tmp626
	jnz	.L381		#
# spaceinvaders.c:2371: 				if(timer_for_ufo_death == 1200)
	ld.w	r1, [timer_for_ufo_death]	# timer_for_ufo_death.168_34, timer_for_ufo_death
# spaceinvaders.c:2371: 				if(timer_for_ufo_death == 1200)
	mov.w	r0, 1200	# tmp627,
	cmp.w	r1, r0	# timer_for_ufo_death.168_34, tmp627
	jnz	.L384		#
# spaceinvaders.c:2373: 					clear_bitmap_test(ufo_position_X, 35, 16, 8);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.169_35, ufo_position_X
	mov.w	r0, sp	# tmp628,
	mov.w	r2, 8	# tmp629,
	st.w	[r0 + (12)], r2	#, tmp629
	mov.w	r2, 16	# tmp630,
	st.w	[r0 + (8)], r2	#, tmp630
	mov.w	r2, 35	# tmp631,
	st.w	[r0 + (4)], r2	#, tmp631
	st.w	[r0], r1	#, ufo_position_X.169_35
	call	clear_bitmap_test		#
# spaceinvaders.c:2374: 					draw_bitmap_with_clear_background(ufo_position_X, 35, 24, 8, ufo_explosion);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.170_36, ufo_position_X
	mov.w	r0, sp	# tmp632,
	mov.w	r2, ufo_explosion	# tmp633,
	st.w	[r0 + (16)], r2	#, tmp633
	mov.w	r2, 8	# tmp634,
	st.w	[r0 + (12)], r2	#, tmp634
	mov.w	r2, 24	# tmp635,
	st.w	[r0 + (8)], r2	#, tmp635
	mov.w	r2, 35	# tmp636,
	st.w	[r0 + (4)], r2	#, tmp636
	st.w	[r0], r1	#, ufo_position_X.170_36
	call	draw_bitmap_with_clear_background		#
	j	.L385		#
.L384:
# spaceinvaders.c:2377: 				else if(timer_for_ufo_death == 600)
	ld.w	r1, [timer_for_ufo_death]	# timer_for_ufo_death.171_37, timer_for_ufo_death
# spaceinvaders.c:2377: 				else if(timer_for_ufo_death == 600)
	mov.w	r0, 600	# tmp637,
	cmp.w	r1, r0	# timer_for_ufo_death.171_37, tmp637
	jnz	.L386		#
# spaceinvaders.c:2379: 					clear_bitmap_test(ufo_position_X, 35, 24, 8);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.172_38, ufo_position_X
	mov.w	r0, sp	# tmp638,
	mov.w	r2, 8	# tmp639,
	st.w	[r0 + (12)], r2	#, tmp639
	mov.w	r2, 24	# tmp640,
	st.w	[r0 + (8)], r2	#, tmp640
	mov.w	r2, 35	# tmp641,
	st.w	[r0 + (4)], r2	#, tmp641
	st.w	[r0], r1	#, ufo_position_X.172_38
	call	clear_bitmap_test		#
# spaceinvaders.c:2380: 					sprintf(str, "%d", ufo_score);
	ld.w	r1, [ufo_score]	# ufo_score.173_39, ufo_score
	mov.w	r0, sp	# tmp642,
	st.w	[r0 + (8)], r1	#, ufo_score.173_39
	mov.w	r1, .LC4	# tmp643,
	st.w	[r0 + (4)], r1	#, tmp643
	mov.w	r1, str	# tmp644,
	st.w	[r0], r1	#, tmp644
	call	sprintf		#
# spaceinvaders.c:2381: 					draw(ufo_position_X, 35, PURPLE, str);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.174_40, ufo_position_X
	mov.w	r0, sp	# tmp645,
	mov.w	r2, str	# tmp646,
	st.w	[r0 + (12)], r2	#, tmp646
	mov.w	r2, 5	# tmp647,
	st.w	[r0 + (8)], r2	#, tmp647
	mov.w	r2, 35	# tmp648,
	st.w	[r0 + (4)], r2	#, tmp648
	st.w	[r0], r1	#, ufo_position_X.174_40
	call	draw		#
	j	.L385		#
.L386:
# spaceinvaders.c:2383: 				else if(timer_for_ufo_death <= 0)
	ld.w	r1, [timer_for_ufo_death]	# timer_for_ufo_death.175_41, timer_for_ufo_death
# spaceinvaders.c:2383: 				else if(timer_for_ufo_death <= 0)
	xor.w	r0, r0	# tmp649
	cmp.w	r1, r0	# timer_for_ufo_death.175_41, tmp649
	jgs	.L385		#
# spaceinvaders.c:2385: 					ufo_status = DEAD;
	xor.w	r0, r0	# tmp650
	st.w	[ufo_status], r0	# ufo_status, tmp650
# spaceinvaders.c:2386: 					clear_bitmap_test(ufo_position_X, 35, 24, 8);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.176_42, ufo_position_X
	mov.w	r0, sp	# tmp651,
	mov.w	r2, 8	# tmp652,
	st.w	[r0 + (12)], r2	#, tmp652
	mov.w	r2, 24	# tmp653,
	st.w	[r0 + (8)], r2	#, tmp653
	mov.w	r2, 35	# tmp654,
	st.w	[r0 + (4)], r2	#, tmp654
	st.w	[r0], r1	#, ufo_position_X.176_42
	call	clear_bitmap_test		#
# spaceinvaders.c:2387: 					ufo_position_X = 0;
	xor.w	r0, r0	# tmp655
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp655
# spaceinvaders.c:2388: 					score += ufo_score;
	ld.w	r0, [score]	# score.177_43, score
	ld.w	r1, [ufo_score]	# ufo_score.178_44, ufo_score
	add.w	r0, r1 #222	# _45, ufo_score.178_44
	st.w	[score], r0	# score, _45
# spaceinvaders.c:2389: 					check_and_draw_current_score();
	call	check_and_draw_current_score		#
.L385:
# spaceinvaders.c:2391: 				timer_for_ufo_death -= 2;
	ld.w	r0, [timer_for_ufo_death]	# timer_for_ufo_death.179_46, timer_for_ufo_death
	add.w	r0, -2 #111	# _47,
	st.w	[timer_for_ufo_death], r0	# timer_for_ufo_death, _47
.L381:
# spaceinvaders.c:2397: 			if(player_bullet_status == EXPLODING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.180_48, player_bullet_status
# spaceinvaders.c:2397: 			if(player_bullet_status == EXPLODING)
	mov.w	r0, 1	# tmp656,
	cmp.w	r1, r0	# player_bullet_status.180_48, tmp656
	jnz	.L387		#
# spaceinvaders.c:2399: 				if(timer_for_player_bullet_destroy == 150)
	ld.w	r1, [timer_for_player_bullet_destroy]	# timer_for_player_bullet_destroy.181_49, timer_for_player_bullet_destroy
# spaceinvaders.c:2399: 				if(timer_for_player_bullet_destroy == 150)
	mov.w	r0, 150	# tmp657,
	cmp.w	r1, r0	# timer_for_player_bullet_destroy.181_49, tmp657
	jnz	.L388		#
# spaceinvaders.c:2401: 					player_bullet_def -> addr = 0;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.182_50, player_bullet_def
# spaceinvaders.c:2401: 					player_bullet_def -> addr = 0;
	xor.w	r1, r1	# tmp658
	st.s	[r0], r1	# player_bullet_def.182_50->addr, tmp658
# spaceinvaders.c:2403: 						player_bullet_def->x - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.183_51, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _52, player_bullet_def.183_51->x
	sex.s	r0, r0	# _53, _52
# spaceinvaders.c:2402: 					draw_bitmap_with_clear_background(
	mov.w	r1, r0	# _54, _53
	add.w	r1, -3 #111	# _54,
# spaceinvaders.c:2404: 						player_bullet_def->y - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.184_55, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _56, player_bullet_def.184_55->y
	sex.s	r0, r0	# _57, _56
# spaceinvaders.c:2402: 					draw_bitmap_with_clear_background(
	mov.w	r2, r0	# _58, _57
	add.w	r2, -3 #111	# _58,
	mov.w	r0, sp	# tmp659,
	mov.w	r3, player_bullet_explosion	# tmp660,
	st.w	[r0 + (16)], r3	#, tmp660
	mov.w	r3, 8	# tmp661,
	st.w	[r0 + (12)], r3	#, tmp661
	mov.w	r3, 8	# tmp662,
	st.w	[r0 + (8)], r3	#, tmp662
	st.w	[r0 + (4)], r2	#, _58
	st.w	[r0], r1	#, _54
	call	draw_bitmap_with_clear_background		#
	j	.L389		#
.L388:
# spaceinvaders.c:2409: 				else if(timer_for_player_bullet_destroy <= 0)
	ld.w	r1, [timer_for_player_bullet_destroy]	# timer_for_player_bullet_destroy.185_59, timer_for_player_bullet_destroy
# spaceinvaders.c:2409: 				else if(timer_for_player_bullet_destroy <= 0)
	xor.w	r0, r0	# tmp663
	cmp.w	r1, r0	# timer_for_player_bullet_destroy.185_59, tmp663
	jgs	.L389		#
# spaceinvaders.c:2411: 					player_bullet_status = READY;
	xor.w	r0, r0	# tmp664
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp664
# spaceinvaders.c:2413: 						player_bullet_def->x - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.186_60, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _61, player_bullet_def.186_60->x
	sex.s	r0, r0	# _62, _61
# spaceinvaders.c:2412: 					clear_bitmap_with_specific_shape(
	mov.w	r1, r0	# _63, _62
	add.w	r1, -3 #111	# _63,
# spaceinvaders.c:2414: 						player_bullet_def->y - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.187_64, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _65, player_bullet_def.187_64->y
	sex.s	r0, r0	# _66, _65
# spaceinvaders.c:2412: 					clear_bitmap_with_specific_shape(
	mov.w	r2, r0	# _67, _66
	add.w	r2, -3 #111	# _67,
	mov.w	r0, sp	# tmp665,
	mov.w	r3, player_bullet_explosion	# tmp666,
	st.w	[r0 + (16)], r3	#, tmp666
	mov.w	r3, 8	# tmp667,
	st.w	[r0 + (12)], r3	#, tmp667
	mov.w	r3, 8	# tmp668,
	st.w	[r0 + (8)], r3	#, tmp668
	st.w	[r0 + (4)], r2	#, _67
	st.w	[r0], r1	#, _63
	call	clear_bitmap_with_specific_shape		#
.L389:
# spaceinvaders.c:2419: 				timer_for_player_bullet_destroy -= 2;
	ld.w	r0, [timer_for_player_bullet_destroy]	# timer_for_player_bullet_destroy.188_68, timer_for_player_bullet_destroy
	add.w	r0, -2 #111	# _69,
	st.w	[timer_for_player_bullet_destroy], r0	# timer_for_player_bullet_destroy, _69
.L387:
# spaceinvaders.c:2422: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.189_70, player_bullet_status
# spaceinvaders.c:2422: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp669,
	cmp.w	r1, r0	# player_bullet_status.189_70, tmp669
	jnz	.L390		#
# spaceinvaders.c:2424: 				for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp670
	st.w	[r13 + (-52)], r0	# i, tmp670
# spaceinvaders.c:2424: 				for(int i = 0; i < 5; i++)
	j	.L391		#
.L393:
# spaceinvaders.c:2426: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-52)]	# tmp671, i
	mov.w	r0, r1	# tmp672, tmp671
	mov.w	r2, 3	# tmp674,
	shl.w	r0, r2	# tmp673, tmp674
	add.w	r0, r1 #222	# tmp672, tmp671
	mov.w	r1, 2	# tmp676,
	shl.w	r0, r1	# tmp675, tmp676
	mov.w	r1, alien_bullet+20	# tmp678,
	add.w	r0, r1 #222	# tmp677, tmp678
	ld.w	r1, [r0]	# _71, alien_bullet[i_388].status
# spaceinvaders.c:2426: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	xor.w	r0, r0	# tmp679
	cmp.w	r1, r0	# _71, tmp679
	jses	.L392		#
# spaceinvaders.c:2426: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-52)]	# tmp680, i
	mov.w	r0, r1	# tmp681, tmp680
	mov.w	r2, 3	# tmp683,
	shl.w	r0, r2	# tmp682, tmp683
	add.w	r0, r1 #222	# tmp681, tmp680
	mov.w	r1, 2	# tmp685,
	shl.w	r0, r1	# tmp684, tmp685
	mov.w	r1, alien_bullet+8	# tmp687,
	add.w	r0, r1 #222	# tmp686, tmp687
	ld.w	r1, [r0]	# _72, alien_bullet[i_388].spawn_y
# spaceinvaders.c:2426: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	mov.w	r0, 212	# tmp688,
	cmp.w	r1, r0	# _72, tmp688
	jgs	.L392		#
# spaceinvaders.c:2427: 						check_player_bullet_collision_with_alien_bullet(i);
	mov.w	r1, sp	# tmp689,
	ld.w	r0, [r13 + (-52)]	# tmp690, i
	st.w	[r1], r0	#, tmp690
	call	check_player_bullet_collision_with_alien_bullet		#
.L392:
# spaceinvaders.c:2424: 				for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-52)]	# tmp692, i
	add.w	r0, 1 #111	# tmp691,
	st.w	[r13 + (-52)], r0	# i, tmp691
.L391:
# spaceinvaders.c:2424: 				for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-52)]	# tmp693, i
	mov.w	r0, 4	# tmp694,
	cmp.w	r1, r0	# tmp693, tmp694
	jses	.L393		#
.L390:
# spaceinvaders.c:2430: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.190_73, player_bullet_status
# spaceinvaders.c:2430: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp695,
	cmp.w	r1, r0	# player_bullet_status.190_73, tmp695
	jnz	.L394		#
# spaceinvaders.c:2432: 				check_player_bullet_collision_with_alien();
	call	check_player_bullet_collision_with_alien		#
.L394:
# spaceinvaders.c:2434: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.191_74, player_bullet_status
# spaceinvaders.c:2434: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp696,
	cmp.w	r1, r0	# player_bullet_status.191_74, tmp696
	jnz	.L395		#
# spaceinvaders.c:2436: 				check_player_bullet_collision_with_base();
	call	check_player_bullet_collision_with_base		#
.L395:
# spaceinvaders.c:2438: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.192_75, player_bullet_status
# spaceinvaders.c:2438: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp697,
	cmp.w	r1, r0	# player_bullet_status.192_75, tmp697
	jnz	.L396		#
# spaceinvaders.c:2440: 				if(player_bullet_def -> y <= 30)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.193_76, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _77, player_bullet_def.193_76->y
# spaceinvaders.c:2440: 				if(player_bullet_def -> y <= 30)
	sex.s	r1, r0	# tmp698, _77
	mov.w	r0, 30	# tmp699,
	cmp.w	r1, r0	# tmp698, tmp699
	jgs	.L397		#
# spaceinvaders.c:2442: 					set_player_bullet_to_explode();
	call	set_player_bullet_to_explode		#
	j	.L396		#
.L397:
# spaceinvaders.c:2446: 					player_bullet_def->y -= 1;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.194_78, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _79, player_bullet_def.194_78->y
	add.w	r0, -1 #111	# tmp700,
	mov.w	r1, r0	# _81, tmp700
	ld.w	r0, [player_bullet_def]	# player_bullet_def.195_82, player_bullet_def
	st.s	[r0 + (4)], r1	# player_bullet_def.195_82->y, _83
# spaceinvaders.c:2447: 					change_sprite_color(player_bullet_def->y, 8, 4, player_bullet);
	ld.w	r0, [player_bullet_def]	# player_bullet_def.196_84, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _85, player_bullet_def.196_84->y
# spaceinvaders.c:2447: 					change_sprite_color(player_bullet_def->y, 8, 4, player_bullet);
	sex.s	r1, r0	# _86, _85
	mov.w	r0, sp	# tmp701,
	mov.w	r2, player_bullet	# tmp702,
	st.w	[r0 + (12)], r2	#, tmp702
	mov.w	r2, 4	# tmp703,
	st.w	[r0 + (8)], r2	#, tmp703
	mov.w	r2, 8	# tmp704,
	st.w	[r0 + (4)], r2	#, tmp704
	st.w	[r0], r1	#, _86
	call	change_sprite_color		#
# spaceinvaders.c:2448: 					copy_player_bullet_def();
	call	copy_player_bullet_def		#
.L396:
# spaceinvaders.c:2454: 			for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp705
	st.w	[r13 + (-56)], r0	# i, tmp705
# spaceinvaders.c:2454: 			for(int i = 0; i < 5; i++)
	j	.L398		#
.L406:
# spaceinvaders.c:2456: 				if(alien_bullet[i].status == MOVING)
	ld.w	r1, [r13 + (-56)]	# tmp706, i
	mov.w	r0, r1	# tmp707, tmp706
	mov.w	r2, 3	# tmp709,
	shl.w	r0, r2	# tmp708, tmp709
	add.w	r0, r1 #222	# tmp707, tmp706
	mov.w	r1, 2	# tmp711,
	shl.w	r0, r1	# tmp710, tmp711
	mov.w	r1, alien_bullet+20	# tmp713,
	add.w	r0, r1 #222	# tmp712, tmp713
	ld.w	r1, [r0]	# _87, alien_bullet[i_389].status
# spaceinvaders.c:2456: 				if(alien_bullet[i].status == MOVING)
	mov.w	r0, 2	# tmp714,
	cmp.w	r1, r0	# _87, tmp714
	jnz	.L399		#
# spaceinvaders.c:2458: 					if(alien_bullet[i].timer_for_move <= 0)
	ld.w	r1, [r13 + (-56)]	# tmp715, i
	mov.w	r0, r1	# tmp716, tmp715
	mov.w	r2, 3	# tmp718,
	shl.w	r0, r2	# tmp717, tmp718
	add.w	r0, r1 #222	# tmp716, tmp715
	mov.w	r1, 2	# tmp720,
	shl.w	r0, r1	# tmp719, tmp720
	mov.w	r1, alien_bullet+24	# tmp722,
	add.w	r0, r1 #222	# tmp721, tmp722
	ld.w	r1, [r0]	# _88, alien_bullet[i_389].timer_for_move
# spaceinvaders.c:2458: 					if(alien_bullet[i].timer_for_move <= 0)
	xor.w	r0, r0	# tmp723
	cmp.w	r1, r0	# _88, tmp723
	jgs	.L400		#
# spaceinvaders.c:2460: 						clear_current_alien_bullet_sprite(i);
	mov.w	r1, sp	# tmp724,
	ld.w	r0, [r13 + (-56)]	# tmp725, i
	st.w	[r1], r0	#, tmp725
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:2461: 						alien_bullet[i].y += 5;
	ld.w	r1, [r13 + (-56)]	# tmp726, i
	mov.w	r0, r1	# tmp727, tmp726
	mov.w	r2, 3	# tmp729,
	shl.w	r0, r2	# tmp728, tmp729
	add.w	r0, r1 #222	# tmp727, tmp726
	mov.w	r1, 2	# tmp731,
	shl.w	r0, r1	# tmp730, tmp731
	mov.w	r1, alien_bullet+4	# tmp733,
	add.w	r0, r1 #222	# tmp732, tmp733
	ld.w	r0, [r0]	# _89, alien_bullet[i_389].y
	mov.w	r2, r0	# _90, _89
	add.w	r2, 5 #111	# _90,
	ld.w	r1, [r13 + (-56)]	# tmp734, i
	mov.w	r0, r1	# tmp735, tmp734
	mov.w	r3, 3	# tmp737,
	shl.w	r0, r3	# tmp736, tmp737
	add.w	r0, r1 #222	# tmp735, tmp734
	mov.w	r1, 2	# tmp739,
	shl.w	r0, r1	# tmp738, tmp739
	mov.w	r1, alien_bullet+4	# tmp741,
	add.w	r0, r1 #222	# tmp740, tmp741
	st.w	[r0], r2	# alien_bullet[i_389].y, _90
# spaceinvaders.c:2462: 						check_alien_bullet_collision_with_environment(i);
	mov.w	r1, sp	# tmp742,
	ld.w	r0, [r13 + (-56)]	# tmp743, i
	st.w	[r1], r0	#, tmp743
	call	check_alien_bullet_collision_with_environment		#
# spaceinvaders.c:2463: 						if(alien_bullet[i].status == MOVING)
	ld.w	r1, [r13 + (-56)]	# tmp744, i
	mov.w	r0, r1	# tmp745, tmp744
	mov.w	r2, 3	# tmp747,
	shl.w	r0, r2	# tmp746, tmp747
	add.w	r0, r1 #222	# tmp745, tmp744
	mov.w	r1, 2	# tmp749,
	shl.w	r0, r1	# tmp748, tmp749
	mov.w	r1, alien_bullet+20	# tmp751,
	add.w	r0, r1 #222	# tmp750, tmp751
	ld.w	r1, [r0]	# _91, alien_bullet[i_389].status
# spaceinvaders.c:2463: 						if(alien_bullet[i].status == MOVING)
	mov.w	r0, 2	# tmp752,
	cmp.w	r1, r0	# _91, tmp752
	jnz	.L401		#
# spaceinvaders.c:2464: 							draw_alien_bullet_sprite(i);
	mov.w	r1, sp	# tmp753,
	ld.w	r0, [r13 + (-56)]	# tmp754, i
	st.w	[r1], r0	#, tmp754
	call	draw_alien_bullet_sprite		#
.L401:
# spaceinvaders.c:2465: 						alien_bullet[i].timer_for_move = 64;
	ld.w	r1, [r13 + (-56)]	# tmp755, i
	mov.w	r0, r1	# tmp756, tmp755
	mov.w	r2, 3	# tmp758,
	shl.w	r0, r2	# tmp757, tmp758
	add.w	r0, r1 #222	# tmp756, tmp755
	mov.w	r1, 2	# tmp760,
	shl.w	r0, r1	# tmp759, tmp760
	mov.w	r1, alien_bullet+24	# tmp762,
	add.w	r0, r1 #222	# tmp761, tmp762
	mov.w	r1, 64	# tmp763,
	st.w	[r0], r1	# alien_bullet[i_389].timer_for_move, tmp763
.L400:
# spaceinvaders.c:2467: 					alien_bullet[i].timer_for_move -= 2;
	ld.w	r1, [r13 + (-56)]	# tmp764, i
	mov.w	r0, r1	# tmp765, tmp764
	mov.w	r2, 3	# tmp767,
	shl.w	r0, r2	# tmp766, tmp767
	add.w	r0, r1 #222	# tmp765, tmp764
	mov.w	r1, 2	# tmp769,
	shl.w	r0, r1	# tmp768, tmp769
	mov.w	r1, alien_bullet+24	# tmp771,
	add.w	r0, r1 #222	# tmp770, tmp771
	ld.w	r0, [r0]	# _92, alien_bullet[i_389].timer_for_move
	mov.w	r2, r0	# _93, _92
	add.w	r2, -2 #111	# _93,
	ld.w	r1, [r13 + (-56)]	# tmp772, i
	mov.w	r0, r1	# tmp773, tmp772
	mov.w	r3, 3	# tmp775,
	shl.w	r0, r3	# tmp774, tmp775
	add.w	r0, r1 #222	# tmp773, tmp772
	mov.w	r1, 2	# tmp777,
	shl.w	r0, r1	# tmp776, tmp777
	mov.w	r1, alien_bullet+24	# tmp779,
	add.w	r0, r1 #222	# tmp778, tmp779
	st.w	[r0], r2	# alien_bullet[i_389].timer_for_move, _93
	j	.L402		#
.L399:
# spaceinvaders.c:2469: 				else if(alien_bullet[i].status == EXPLODING)
	ld.w	r1, [r13 + (-56)]	# tmp780, i
	mov.w	r0, r1	# tmp781, tmp780
	mov.w	r2, 3	# tmp783,
	shl.w	r0, r2	# tmp782, tmp783
	add.w	r0, r1 #222	# tmp781, tmp780
	mov.w	r1, 2	# tmp785,
	shl.w	r0, r1	# tmp784, tmp785
	mov.w	r1, alien_bullet+20	# tmp787,
	add.w	r0, r1 #222	# tmp786, tmp787
	ld.w	r1, [r0]	# _94, alien_bullet[i_389].status
# spaceinvaders.c:2469: 				else if(alien_bullet[i].status == EXPLODING)
	mov.w	r0, 1	# tmp788,
	cmp.w	r1, r0	# _94, tmp788
	jnz	.L402		#
# spaceinvaders.c:2471: 					if(alien_bullet[i].timer_for_destroy == 150)
	ld.w	r1, [r13 + (-56)]	# tmp789, i
	mov.w	r0, r1	# tmp790, tmp789
	mov.w	r2, 3	# tmp792,
	shl.w	r0, r2	# tmp791, tmp792
	add.w	r0, r1 #222	# tmp790, tmp789
	mov.w	r1, 2	# tmp794,
	shl.w	r0, r1	# tmp793, tmp794
	mov.w	r1, alien_bullet+32	# tmp796,
	add.w	r0, r1 #222	# tmp795, tmp796
	ld.w	r1, [r0]	# _95, alien_bullet[i_389].timer_for_destroy
# spaceinvaders.c:2471: 					if(alien_bullet[i].timer_for_destroy == 150)
	mov.w	r0, 150	# tmp797,
	cmp.w	r1, r0	# _95, tmp797
	jnz	.L403		#
# spaceinvaders.c:2474: 							alien_bullet[i].x-2, 
	ld.w	r1, [r13 + (-56)]	# tmp798, i
	mov.w	r0, r1	# tmp799, tmp798
	mov.w	r2, 3	# tmp801,
	shl.w	r0, r2	# tmp800, tmp801
	add.w	r0, r1 #222	# tmp799, tmp798
	mov.w	r1, 2	# tmp803,
	shl.w	r0, r1	# tmp802, tmp803
	mov.w	r1, alien_bullet	# tmp805,
	add.w	r0, r1 #222	# tmp804, tmp805
	ld.w	r0, [r0]	# _96, alien_bullet[i_389].x
# spaceinvaders.c:2473: 						draw_bitmap_with_clear_background(
	mov.w	r2, r0	# _97, _96
	add.w	r2, -2 #111	# _97,
	ld.w	r1, [r13 + (-56)]	# tmp806, i
	mov.w	r0, r1	# tmp807, tmp806
	mov.w	r3, 3	# tmp809,
	shl.w	r0, r3	# tmp808, tmp809
	add.w	r0, r1 #222	# tmp807, tmp806
	mov.w	r1, 2	# tmp811,
	shl.w	r0, r1	# tmp810, tmp811
	mov.w	r1, alien_bullet+4	# tmp813,
	add.w	r0, r1 #222	# tmp812, tmp813
	ld.w	r1, [r0]	# _98, alien_bullet[i_389].y
	mov.w	r0, sp	# tmp814,
	mov.w	r3, alien_bullet_explosion	# tmp815,
	st.w	[r0 + (16)], r3	#, tmp815
	mov.w	r3, 8	# tmp816,
	st.w	[r0 + (12)], r3	#, tmp816
	mov.w	r3, 8	# tmp817,
	st.w	[r0 + (8)], r3	#, tmp817
	st.w	[r0 + (4)], r1	#, _98
	st.w	[r0], r2	#, _97
	call	draw_bitmap_with_clear_background		#
	j	.L404		#
.L403:
# spaceinvaders.c:2480: 					else if(alien_bullet[i].timer_for_destroy <= 0)
	ld.w	r1, [r13 + (-56)]	# tmp818, i
	mov.w	r0, r1	# tmp819, tmp818
	mov.w	r2, 3	# tmp821,
	shl.w	r0, r2	# tmp820, tmp821
	add.w	r0, r1 #222	# tmp819, tmp818
	mov.w	r1, 2	# tmp823,
	shl.w	r0, r1	# tmp822, tmp823
	mov.w	r1, alien_bullet+32	# tmp825,
	add.w	r0, r1 #222	# tmp824, tmp825
	ld.w	r1, [r0]	# _99, alien_bullet[i_389].timer_for_destroy
# spaceinvaders.c:2480: 					else if(alien_bullet[i].timer_for_destroy <= 0)
	xor.w	r0, r0	# tmp826
	cmp.w	r1, r0	# _99, tmp826
	jgs	.L404		#
# spaceinvaders.c:2483: 							alien_bullet[i].x-2, 
	ld.w	r1, [r13 + (-56)]	# tmp827, i
	mov.w	r0, r1	# tmp828, tmp827
	mov.w	r2, 3	# tmp830,
	shl.w	r0, r2	# tmp829, tmp830
	add.w	r0, r1 #222	# tmp828, tmp827
	mov.w	r1, 2	# tmp832,
	shl.w	r0, r1	# tmp831, tmp832
	mov.w	r1, alien_bullet	# tmp834,
	add.w	r0, r1 #222	# tmp833, tmp834
	ld.w	r0, [r0]	# _100, alien_bullet[i_389].x
# spaceinvaders.c:2482: 						clear_bitmap_with_specific_shape(
	mov.w	r2, r0	# _101, _100
	add.w	r2, -2 #111	# _101,
	ld.w	r1, [r13 + (-56)]	# tmp835, i
	mov.w	r0, r1	# tmp836, tmp835
	mov.w	r3, 3	# tmp838,
	shl.w	r0, r3	# tmp837, tmp838
	add.w	r0, r1 #222	# tmp836, tmp835
	mov.w	r1, 2	# tmp840,
	shl.w	r0, r1	# tmp839, tmp840
	mov.w	r1, alien_bullet+4	# tmp842,
	add.w	r0, r1 #222	# tmp841, tmp842
	ld.w	r1, [r0]	# _102, alien_bullet[i_389].y
	mov.w	r0, sp	# tmp843,
	mov.w	r3, alien_bullet_explosion	# tmp844,
	st.w	[r0 + (16)], r3	#, tmp844
	mov.w	r3, 8	# tmp845,
	st.w	[r0 + (12)], r3	#, tmp845
	mov.w	r3, 8	# tmp846,
	st.w	[r0 + (8)], r3	#, tmp846
	st.w	[r0 + (4)], r1	#, _102
	st.w	[r0], r2	#, _101
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:2488: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	ld.w	r1, [r13 + (-56)]	# tmp847, i
	mov.w	r0, r1	# tmp848, tmp847
	mov.w	r2, 3	# tmp850,
	shl.w	r0, r2	# tmp849, tmp850
	add.w	r0, r1 #222	# tmp848, tmp847
	mov.w	r1, 2	# tmp852,
	shl.w	r0, r1	# tmp851, tmp852
	mov.w	r1, alien_bullet	# tmp854,
	add.w	r0, r1 #222	# tmp853, tmp854
	ld.w	r0, [r0]	# _103, alien_bullet[i_389].x
# spaceinvaders.c:2488: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	mov.w	r1, r0	# _104, _103
	add.w	r1, -2 #111	# _104,
# spaceinvaders.c:2488: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	ld.w	r0, [lives]	# lives.197_105, lives
	add.w	r0, 1 #111	# _106,
	mov.w	r2, 4	# tmp855,
	shl.w	r0, r2	# _107, tmp855
# spaceinvaders.c:2488: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	cmp.w	r1, r0	# _104, _107
	jgs	.L405		#
# spaceinvaders.c:2489: 							draw_lives();
	call	draw_lives		#
.L405:
# spaceinvaders.c:2491: 						alien_bullet[i].sprite = 0;
	ld.w	r1, [r13 + (-56)]	# tmp856, i
	mov.w	r0, r1	# tmp857, tmp856
	mov.w	r2, 3	# tmp859,
	shl.w	r0, r2	# tmp858, tmp859
	add.w	r0, r1 #222	# tmp857, tmp856
	mov.w	r1, 2	# tmp861,
	shl.w	r0, r1	# tmp860, tmp861
	mov.w	r1, alien_bullet+16	# tmp863,
	add.w	r0, r1 #222	# tmp862, tmp863
	xor.w	r1, r1	# tmp864
	st.w	[r0], r1	# alien_bullet[i_389].sprite, tmp864
# spaceinvaders.c:2492: 						alien_bullet[i].status = READY;
	ld.w	r1, [r13 + (-56)]	# tmp865, i
	mov.w	r0, r1	# tmp866, tmp865
	mov.w	r2, 3	# tmp868,
	shl.w	r0, r2	# tmp867, tmp868
	add.w	r0, r1 #222	# tmp866, tmp865
	mov.w	r1, 2	# tmp870,
	shl.w	r0, r1	# tmp869, tmp870
	mov.w	r1, alien_bullet+20	# tmp872,
	add.w	r0, r1 #222	# tmp871, tmp872
	xor.w	r1, r1	# tmp873
	st.w	[r0], r1	# alien_bullet[i_389].status, tmp873
.L404:
# spaceinvaders.c:2494: 					alien_bullet[i].timer_for_destroy -= 2;
	ld.w	r1, [r13 + (-56)]	# tmp874, i
	mov.w	r0, r1	# tmp875, tmp874
	mov.w	r2, 3	# tmp877,
	shl.w	r0, r2	# tmp876, tmp877
	add.w	r0, r1 #222	# tmp875, tmp874
	mov.w	r1, 2	# tmp879,
	shl.w	r0, r1	# tmp878, tmp879
	mov.w	r1, alien_bullet+32	# tmp881,
	add.w	r0, r1 #222	# tmp880, tmp881
	ld.w	r0, [r0]	# _108, alien_bullet[i_389].timer_for_destroy
	mov.w	r2, r0	# _109, _108
	add.w	r2, -2 #111	# _109,
	ld.w	r1, [r13 + (-56)]	# tmp882, i
	mov.w	r0, r1	# tmp883, tmp882
	mov.w	r3, 3	# tmp885,
	shl.w	r0, r3	# tmp884, tmp885
	add.w	r0, r1 #222	# tmp883, tmp882
	mov.w	r1, 2	# tmp887,
	shl.w	r0, r1	# tmp886, tmp887
	mov.w	r1, alien_bullet+32	# tmp889,
	add.w	r0, r1 #222	# tmp888, tmp889
	st.w	[r0], r2	# alien_bullet[i_389].timer_for_destroy, _109
.L402:
# spaceinvaders.c:2454: 			for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-56)]	# tmp891, i
	add.w	r0, 1 #111	# tmp890,
	st.w	[r13 + (-56)], r0	# i, tmp890
.L398:
# spaceinvaders.c:2454: 			for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-56)]	# tmp892, i
	mov.w	r0, 4	# tmp893,
	cmp.w	r1, r0	# tmp892, tmp893
	jses	.L406		#
# spaceinvaders.c:2500: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	ld.w	r1, [player_alive]	# player_alive.198_110, player_alive
# spaceinvaders.c:2500: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	mov.w	r0, 3	# tmp894,
	cmp.w	r1, r0	# player_alive.198_110, tmp894
	jnz	.L407		#
# spaceinvaders.c:2500: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	ld.w	r1, [player_spawn_current_time]	# player_spawn_current_time.199_111, player_spawn_current_time
	ld.w	r0, [player_spawn_timer]	# player_spawn_timer.200_112, player_spawn_timer
# spaceinvaders.c:2500: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	cmp.w	r1, r0	# player_spawn_current_time.199_111, player_spawn_timer.200_112
	jnz	.L407		#
# spaceinvaders.c:2501: 				spawn_player();
	call	spawn_player		#
	j	.L408		#
.L407:
# spaceinvaders.c:2503: 				player_spawn_current_time+=2;
	ld.w	r0, [player_spawn_current_time]	# player_spawn_current_time.201_113, player_spawn_current_time
	add.w	r0, 2 #111	# _114,
	st.w	[player_spawn_current_time], r0	# player_spawn_current_time, _114
.L408:
# spaceinvaders.c:2505: 			if(player_alive == 2 || player_alive == 3)
	ld.w	r1, [player_alive]	# player_alive.202_115, player_alive
# spaceinvaders.c:2505: 			if(player_alive == 2 || player_alive == 3)
	mov.w	r0, 2	# tmp895,
	cmp.w	r1, r0	# player_alive.202_115, tmp895
	jz	.L409		#
# spaceinvaders.c:2505: 			if(player_alive == 2 || player_alive == 3)
	ld.w	r1, [player_alive]	# player_alive.203_116, player_alive
# spaceinvaders.c:2505: 			if(player_alive == 2 || player_alive == 3)
	mov.w	r0, 3	# tmp896,
	cmp.w	r1, r0	# player_alive.203_116, tmp896
	jnz	.L410		#
.L409:
# spaceinvaders.c:2507: 				if(number_of_aliens == 0)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.204_117, number_of_aliens
# spaceinvaders.c:2507: 				if(number_of_aliens == 0)
	xor.w	r0, r0	# tmp897
	cmp.w	r1, r0	# number_of_aliens.204_117, tmp897
	jnz	.L411		#
# spaceinvaders.c:2509: 					delay(1000);
	mov.w	r1, sp	# tmp898,
	mov.w	r0, 1000	# tmp899,
	st.w	[r1], r0	#, tmp899
	call	delay		#
# spaceinvaders.c:2510: 					change_current_wave();
	call	change_current_wave		#
# spaceinvaders.c:2511: 					cls(0);
	mov.w	r1, sp	# tmp900,
	xor.w	r0, r0	# tmp901
	st.w	[r1], r0	#, tmp901
	call	cls		#
# spaceinvaders.c:2512: 					return 0;
	xor.w	r0, r0	# _397
	j	.L412		#
.L411:
# spaceinvaders.c:2515: 				if(death_timer >= 600)
	ld.w	r1, [death_timer]	# death_timer.205_118, death_timer
# spaceinvaders.c:2515: 				if(death_timer >= 600)
	mov.w	r0, 599	# tmp902,
	cmp.w	r1, r0	# death_timer.205_118, tmp902
	jses	.L413		#
# spaceinvaders.c:2517: 					destroy_alien();
	call	destroy_alien		#
	j	.L414		#
.L413:
# spaceinvaders.c:2519: 				else if(death_timer == 0)
	ld.w	r1, [death_timer]	# death_timer.206_119, death_timer
# spaceinvaders.c:2519: 				else if(death_timer == 0)
	xor.w	r0, r0	# tmp903
	cmp.w	r1, r0	# death_timer.206_119, tmp903
	jnz	.L415		#
# spaceinvaders.c:2528: 					if(current_step == movement_step)
	ld.w	r1, [current_step]	# current_step.207_120, current_step
	ld.w	r0, [movement_step]	# movement_step.208_121, movement_step
# spaceinvaders.c:2528: 					if(current_step == movement_step)
	cmp.w	r1, r0	# current_step.207_120, movement_step.208_121
	jnz	.L416		#
# spaceinvaders.c:2535: 						if(number_of_aliens == 1 
	ld.w	r1, [number_of_aliens]	# number_of_aliens.209_122, number_of_aliens
# spaceinvaders.c:2535: 						if(number_of_aliens == 1 
	mov.w	r0, 1	# tmp904,
	cmp.w	r1, r0	# number_of_aliens.209_122, tmp904
	jnz	.L417		#
# spaceinvaders.c:2536: 						&& direction == 9
	ld.b	r0, [direction]	# direction.210_123, direction
# spaceinvaders.c:2536: 						&& direction == 9
	sex.b	r1, r0	# tmp905, direction.210_123
	mov.w	r0, 9	# tmp906,
	cmp.w	r1, r0	# tmp905, tmp906
	jnz	.L417		#
# spaceinvaders.c:2537: 						&& distance != 1)
	ld.w	r1, [distance]	# distance.211_124, distance
# spaceinvaders.c:2537: 						&& distance != 1)
	mov.w	r0, 1	# tmp907,
	cmp.w	r1, r0	# distance.211_124, tmp907
	jz	.L417		#
# spaceinvaders.c:2539: 							distance = 1;
	mov.w	r0, 1	# tmp908,
	st.w	[distance], r0	# distance, tmp908
	j	.L418		#
.L417:
# spaceinvaders.c:2541: 						else if(number_of_aliens == 1 
	ld.w	r1, [number_of_aliens]	# number_of_aliens.212_125, number_of_aliens
# spaceinvaders.c:2541: 						else if(number_of_aliens == 1 
	mov.w	r0, 1	# tmp909,
	cmp.w	r1, r0	# number_of_aliens.212_125, tmp909
	jnz	.L419		#
# spaceinvaders.c:2542: 						&& direction == 3  
	ld.b	r0, [direction]	# direction.213_126, direction
# spaceinvaders.c:2542: 						&& direction == 3  
	sex.b	r1, r0	# tmp910, direction.213_126
	mov.w	r0, 3	# tmp911,
	cmp.w	r1, r0	# tmp910, tmp911
	jnz	.L419		#
# spaceinvaders.c:2543: 						&& distance != 2 
	ld.w	r1, [distance]	# distance.214_127, distance
# spaceinvaders.c:2543: 						&& distance != 2 
	mov.w	r0, 2	# tmp912,
	cmp.w	r1, r0	# distance.214_127, tmp912
	jz	.L419		#
# spaceinvaders.c:2544: 						&& leftmost_alien_X() % 2 == 0)
	call	leftmost_alien_X		#
# spaceinvaders.c:2544: 						&& leftmost_alien_X() % 2 == 0)
	mov.w	r1, 1	# tmp914,
	and.w	r0, r1	# tmp913, tmp914
# spaceinvaders.c:2544: 						&& leftmost_alien_X() % 2 == 0)
	zex.s	r1, r0	# tmp915, _130
	xor.w	r0, r0	# tmp916
	cmp.w	r1, r0	# tmp915, tmp916
	jnz	.L419		#
# spaceinvaders.c:2546: 							distance = 2;
	mov.w	r0, 2	# tmp917,
	st.w	[distance], r0	# distance, tmp917
	j	.L418		#
.L419:
# spaceinvaders.c:2548: 						else if(number_of_aliens < 32 
	ld.w	r1, [number_of_aliens]	# number_of_aliens.215_131, number_of_aliens
# spaceinvaders.c:2548: 						else if(number_of_aliens < 32 
	mov.w	r0, 31	# tmp918,
	cmp.w	r1, r0	# number_of_aliens.215_131, tmp918
	jgs	.L418		#
# spaceinvaders.c:2549: 						&& distance != 2 
	ld.w	r1, [distance]	# distance.216_132, distance
# spaceinvaders.c:2549: 						&& distance != 2 
	mov.w	r0, 2	# tmp919,
	cmp.w	r1, r0	# distance.216_132, tmp919
	jz	.L418		#
# spaceinvaders.c:2550: 						&& leftmost_alien_X() % 2 == 0)
	call	leftmost_alien_X		#
# spaceinvaders.c:2550: 						&& leftmost_alien_X() % 2 == 0)
	mov.w	r1, 1	# tmp921,
	and.w	r0, r1	# tmp920, tmp921
# spaceinvaders.c:2550: 						&& leftmost_alien_X() % 2 == 0)
	zex.s	r1, r0	# tmp922, _135
	xor.w	r0, r0	# tmp923
	cmp.w	r1, r0	# tmp922, tmp923
	jnz	.L418		#
# spaceinvaders.c:2552: 							distance = 2;
	mov.w	r0, 2	# tmp924,
	st.w	[distance], r0	# distance, tmp924
.L418:
# spaceinvaders.c:2555: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp925, sprite_version
	xor.w	r0, r0	# tmp926
	cmp.w	r1, r0	# tmp925, tmp926
	jnz	.L420		#
# spaceinvaders.c:2556: 							alien_sprite = octopus0;
	mov.w	r0, octopus0	# tmp927,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp927
	j	.L421		#
.L420:
# spaceinvaders.c:2558: 							alien_sprite = octopus1;
	mov.w	r0, octopus1	# tmp928,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp928
.L421:
# spaceinvaders.c:2560: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp929
	st.w	[r13 + (-60)], r0	# i, tmp929
# spaceinvaders.c:2560: 						for(int i = 0; i < 11; i++) {
	j	.L422		#
.L431:
# spaceinvaders.c:2562: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.217_136, direction
# spaceinvaders.c:2562: 							if(direction == 3)
	sex.b	r1, r0	# tmp930, direction.217_136
	mov.w	r0, 3	# tmp931,
	cmp.w	r1, r0	# tmp930, tmp931
	jnz	.L423		#
# spaceinvaders.c:2563: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp933,
	ld.w	r1, [r13 + (-60)]	# tmp934, i
	sub.w	r0, r1 #222	# tmp932, tmp934
	st.w	[r13 + (-12)], r0	# alien_index, tmp932
	j	.L424		#
.L423:
# spaceinvaders.c:2565: 								alien_index = i;
	ld.w	r0, [r13 + (-60)]	# tmp935, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp935
.L424:
# spaceinvaders.c:2567: 							if(row_5_octopus[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp936, alien_index
	mov.w	r1, 3	# tmp938,
	shl.w	r0, r1	# tmp937, tmp938
	mov.w	r1, row_5_octopus+6	# tmp940,
	add.w	r0, r1 #222	# tmp939, tmp940
	ld.s	r0, [r0]	# _137, row_5_octopus[alien_index_371].alive
# spaceinvaders.c:2567: 							if(row_5_octopus[alien_index].alive == 0)
	sex.s	r1, r0	# tmp941, _137
	xor.w	r0, r0	# tmp942
	cmp.w	r1, r0	# tmp941, tmp942
	jz	.L518		#
# spaceinvaders.c:2573: 								switch(direction)
	ld.b	r0, [direction]	# direction.218_138, direction
	sex.b	r0, r0	# _139, direction.218_138
	mov.w	r1, 3	# tmp943,
	cmp.w	r0, r1	# _139, tmp943
	jz	.L427		#
	mov.w	r1, 9	# tmp944,
	cmp.w	r0, r1	# _139, tmp944
	jz	.L428		#
	j	.L513		#
.L427:
# spaceinvaders.c:2576: 										row_5_octopus[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp945, alien_index
	mov.w	r1, 3	# tmp947,
	shl.w	r0, r1	# tmp946, tmp947
	mov.w	r1, row_5_octopus+2	# tmp949,
	add.w	r0, r1 #222	# tmp948, tmp949
	ld.s	r0, [r0]	# _140, row_5_octopus[alien_index_371].x
	ld.w	r1, [distance]	# distance.219_142, distance
	add.w	r0, r1 #222	# tmp950, tmp951
	mov.w	r1, r0	# _145, _144
	ld.w	r0, [r13 + (-12)]	# tmp952, alien_index
	mov.w	r2, 3	# tmp954,
	shl.w	r0, r2	# tmp953, tmp954
	mov.w	r2, row_5_octopus+2	# tmp956,
	add.w	r0, r2 #222	# tmp955, tmp956
	st.s	[r0], r1	# row_5_octopus[alien_index_371].x, _145
# spaceinvaders.c:2577: 										break;
	j	.L430		#
.L428:
# spaceinvaders.c:2579: 										row_5_octopus[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp957, alien_index
	mov.w	r1, 3	# tmp959,
	shl.w	r0, r1	# tmp958, tmp959
	mov.w	r1, row_5_octopus+2	# tmp961,
	add.w	r0, r1 #222	# tmp960, tmp961
	ld.s	r0, [r0]	# _146, row_5_octopus[alien_index_371].x
	ld.w	r1, [distance]	# distance.220_148, distance
	sub.w	r0, r1 #222	# tmp962, tmp963
	mov.w	r1, r0	# _151, _150
	ld.w	r0, [r13 + (-12)]	# tmp964, alien_index
	mov.w	r2, 3	# tmp966,
	shl.w	r0, r2	# tmp965, tmp966
	mov.w	r2, row_5_octopus+2	# tmp968,
	add.w	r0, r2 #222	# tmp967, tmp968
	st.s	[r0], r1	# row_5_octopus[alien_index_371].x, _151
# spaceinvaders.c:2580: 										break;
	j	.L430		#
.L513:
# spaceinvaders.c:2582: 										row_5_octopus[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp969, alien_index
	mov.w	r1, 3	# tmp971,
	shl.w	r0, r1	# tmp970, tmp971
	mov.w	r1, row_5_octopus+4	# tmp973,
	add.w	r0, r1 #222	# tmp972, tmp973
	ld.s	r0, [r0]	# _152, row_5_octopus[alien_index_371].y
	add.w	r0, 8 #111	# tmp974,
	mov.w	r1, r0	# _155, _154
	ld.w	r0, [r13 + (-12)]	# tmp975, alien_index
	mov.w	r2, 3	# tmp977,
	shl.w	r0, r2	# tmp976, tmp977
	mov.w	r2, row_5_octopus+4	# tmp979,
	add.w	r0, r2 #222	# tmp978, tmp979
	st.s	[r0], r1	# row_5_octopus[alien_index_371].y, _155
.L430:
# spaceinvaders.c:2585: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp980, alien_index
	mov.w	r1, 3	# tmp982,
	shl.w	r0, r1	# tmp981, tmp982
	mov.w	r1, row_5_octopus+2	# tmp984,
	add.w	r0, r1 #222	# tmp983, tmp984
	ld.s	r0, [r0]	# _156, row_5_octopus[alien_index_371].x
# spaceinvaders.c:2585: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r1, r0	# _157, _156
# spaceinvaders.c:2585: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp985, alien_index
	mov.w	r2, 3	# tmp987,
	shl.w	r0, r2	# tmp986, tmp987
	mov.w	r2, row_5_octopus+4	# tmp989,
	add.w	r0, r2 #222	# tmp988, tmp989
	ld.s	r0, [r0]	# _158, row_5_octopus[alien_index_371].y
# spaceinvaders.c:2585: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r2, r0	# _159, _158
	ld.b	r0, [direction]	# direction.221_160, direction
	sex.b	r3, r0	# _161, direction.221_160
	ld.w	r4, [distance]	# distance.222_162, distance
	mov.w	r0, sp	# tmp990,
	st.w	[r0 + (24)], r4	#, distance.222_162
	st.w	[r0 + (20)], r3	#, _161
	ld.w	r3, [r13 + (-8)]	# tmp991, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp991
	mov.w	r3, 8	# tmp992,
	st.w	[r0 + (12)], r3	#, tmp992
	mov.w	r3, 12	# tmp993,
	st.w	[r0 + (8)], r3	#, tmp993
	st.w	[r0 + (4)], r2	#, _159
	st.w	[r0], r1	#, _157
	call	move_bitmap_test		#
	mov.w	r2, r0	# _163,
# spaceinvaders.c:2585: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp994, alien_index
	mov.w	r1, 3	# tmp996,
	shl.w	r0, r1	# tmp995, tmp996
	mov.w	r1, row_5_octopus	# tmp998,
	add.w	r0, r1 #222	# tmp997, tmp998
	st.s	[r0], r2	# row_5_octopus[alien_index_371].addr, _163
	j	.L426		#
.L518:
# spaceinvaders.c:2569: 								continue;
	nop	
.L426:
# spaceinvaders.c:2560: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-60)]	# tmp1000, i
	add.w	r0, 1 #111	# tmp999,
	st.w	[r13 + (-60)], r0	# i, tmp999
.L422:
# spaceinvaders.c:2560: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-60)]	# tmp1001, i
	mov.w	r0, 10	# tmp1002,
	cmp.w	r1, r0	# tmp1001, tmp1002
	jses	.L431		#
	j	.L432		#
.L416:
# spaceinvaders.c:2589: 					else if(current_step == movement_step * 2)
	ld.w	r0, [movement_step]	# movement_step.223_164, movement_step
	add.w	r0, r0 #222	# tmp1003, movement_step.223_164
	mov.w	r1, r0	# _165, tmp1003
# spaceinvaders.c:2589: 					else if(current_step == movement_step * 2)
	ld.w	r0, [current_step]	# current_step.224_166, current_step
# spaceinvaders.c:2589: 					else if(current_step == movement_step * 2)
	cmp.w	r1, r0	# _165, current_step.224_166
	jnz	.L433		#
# spaceinvaders.c:2591: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp1004, sprite_version
	xor.w	r0, r0	# tmp1005
	cmp.w	r1, r0	# tmp1004, tmp1005
	jnz	.L434		#
# spaceinvaders.c:2592: 							alien_sprite = octopus0;
	mov.w	r0, octopus0	# tmp1006,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1006
	j	.L435		#
.L434:
# spaceinvaders.c:2594: 							alien_sprite = octopus1;
	mov.w	r0, octopus1	# tmp1007,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1007
.L435:
# spaceinvaders.c:2596: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp1008
	st.w	[r13 + (-64)], r0	# i, tmp1008
# spaceinvaders.c:2596: 						for(int i = 0; i < 11; i++) {
	j	.L436		#
.L445:
# spaceinvaders.c:2598: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.225_167, direction
# spaceinvaders.c:2598: 							if(direction == 3)
	sex.b	r1, r0	# tmp1009, direction.225_167
	mov.w	r0, 3	# tmp1010,
	cmp.w	r1, r0	# tmp1009, tmp1010
	jnz	.L437		#
# spaceinvaders.c:2599: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp1012,
	ld.w	r1, [r13 + (-64)]	# tmp1013, i
	sub.w	r0, r1 #222	# tmp1011, tmp1013
	st.w	[r13 + (-12)], r0	# alien_index, tmp1011
	j	.L438		#
.L437:
# spaceinvaders.c:2601: 								alien_index = i;
	ld.w	r0, [r13 + (-64)]	# tmp1014, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp1014
.L438:
# spaceinvaders.c:2603: 							if(row_4_octopus[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp1015, alien_index
	mov.w	r1, 3	# tmp1017,
	shl.w	r0, r1	# tmp1016, tmp1017
	mov.w	r1, row_4_octopus+6	# tmp1019,
	add.w	r0, r1 #222	# tmp1018, tmp1019
	ld.s	r0, [r0]	# _168, row_4_octopus[alien_index_372].alive
# spaceinvaders.c:2603: 							if(row_4_octopus[alien_index].alive == 0)
	sex.s	r1, r0	# tmp1020, _168
	xor.w	r0, r0	# tmp1021
	cmp.w	r1, r0	# tmp1020, tmp1021
	jz	.L519		#
# spaceinvaders.c:2609: 								switch(direction)
	ld.b	r0, [direction]	# direction.226_169, direction
	sex.b	r0, r0	# _170, direction.226_169
	mov.w	r1, 3	# tmp1022,
	cmp.w	r0, r1	# _170, tmp1022
	jz	.L441		#
	mov.w	r1, 9	# tmp1023,
	cmp.w	r0, r1	# _170, tmp1023
	jz	.L442		#
	j	.L514		#
.L441:
# spaceinvaders.c:2612: 										row_4_octopus[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp1024, alien_index
	mov.w	r1, 3	# tmp1026,
	shl.w	r0, r1	# tmp1025, tmp1026
	mov.w	r1, row_4_octopus+2	# tmp1028,
	add.w	r0, r1 #222	# tmp1027, tmp1028
	ld.s	r0, [r0]	# _171, row_4_octopus[alien_index_372].x
	ld.w	r1, [distance]	# distance.227_173, distance
	add.w	r0, r1 #222	# tmp1029, tmp1030
	mov.w	r1, r0	# _176, _175
	ld.w	r0, [r13 + (-12)]	# tmp1031, alien_index
	mov.w	r2, 3	# tmp1033,
	shl.w	r0, r2	# tmp1032, tmp1033
	mov.w	r2, row_4_octopus+2	# tmp1035,
	add.w	r0, r2 #222	# tmp1034, tmp1035
	st.s	[r0], r1	# row_4_octopus[alien_index_372].x, _176
# spaceinvaders.c:2613: 										break;
	j	.L444		#
.L442:
# spaceinvaders.c:2615: 										row_4_octopus[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp1036, alien_index
	mov.w	r1, 3	# tmp1038,
	shl.w	r0, r1	# tmp1037, tmp1038
	mov.w	r1, row_4_octopus+2	# tmp1040,
	add.w	r0, r1 #222	# tmp1039, tmp1040
	ld.s	r0, [r0]	# _177, row_4_octopus[alien_index_372].x
	ld.w	r1, [distance]	# distance.228_179, distance
	sub.w	r0, r1 #222	# tmp1041, tmp1042
	mov.w	r1, r0	# _182, _181
	ld.w	r0, [r13 + (-12)]	# tmp1043, alien_index
	mov.w	r2, 3	# tmp1045,
	shl.w	r0, r2	# tmp1044, tmp1045
	mov.w	r2, row_4_octopus+2	# tmp1047,
	add.w	r0, r2 #222	# tmp1046, tmp1047
	st.s	[r0], r1	# row_4_octopus[alien_index_372].x, _182
# spaceinvaders.c:2616: 										break;
	j	.L444		#
.L514:
# spaceinvaders.c:2618: 										row_4_octopus[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1048, alien_index
	mov.w	r1, 3	# tmp1050,
	shl.w	r0, r1	# tmp1049, tmp1050
	mov.w	r1, row_4_octopus+4	# tmp1052,
	add.w	r0, r1 #222	# tmp1051, tmp1052
	ld.s	r0, [r0]	# _183, row_4_octopus[alien_index_372].y
	add.w	r0, 8 #111	# tmp1053,
	mov.w	r1, r0	# _186, _185
	ld.w	r0, [r13 + (-12)]	# tmp1054, alien_index
	mov.w	r2, 3	# tmp1056,
	shl.w	r0, r2	# tmp1055, tmp1056
	mov.w	r2, row_4_octopus+4	# tmp1058,
	add.w	r0, r2 #222	# tmp1057, tmp1058
	st.s	[r0], r1	# row_4_octopus[alien_index_372].y, _186
.L444:
# spaceinvaders.c:2621: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1059, alien_index
	mov.w	r1, 3	# tmp1061,
	shl.w	r0, r1	# tmp1060, tmp1061
	mov.w	r1, row_4_octopus+2	# tmp1063,
	add.w	r0, r1 #222	# tmp1062, tmp1063
	ld.s	r0, [r0]	# _187, row_4_octopus[alien_index_372].x
# spaceinvaders.c:2621: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r1, r0	# _188, _187
# spaceinvaders.c:2621: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1064, alien_index
	mov.w	r2, 3	# tmp1066,
	shl.w	r0, r2	# tmp1065, tmp1066
	mov.w	r2, row_4_octopus+4	# tmp1068,
	add.w	r0, r2 #222	# tmp1067, tmp1068
	ld.s	r0, [r0]	# _189, row_4_octopus[alien_index_372].y
# spaceinvaders.c:2621: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r2, r0	# _190, _189
	ld.b	r0, [direction]	# direction.229_191, direction
	sex.b	r3, r0	# _192, direction.229_191
	ld.w	r4, [distance]	# distance.230_193, distance
	mov.w	r0, sp	# tmp1069,
	st.w	[r0 + (24)], r4	#, distance.230_193
	st.w	[r0 + (20)], r3	#, _192
	ld.w	r3, [r13 + (-8)]	# tmp1070, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1070
	mov.w	r3, 8	# tmp1071,
	st.w	[r0 + (12)], r3	#, tmp1071
	mov.w	r3, 12	# tmp1072,
	st.w	[r0 + (8)], r3	#, tmp1072
	st.w	[r0 + (4)], r2	#, _190
	st.w	[r0], r1	#, _188
	call	move_bitmap_test		#
	mov.w	r2, r0	# _194,
# spaceinvaders.c:2621: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1073, alien_index
	mov.w	r1, 3	# tmp1075,
	shl.w	r0, r1	# tmp1074, tmp1075
	mov.w	r1, row_4_octopus	# tmp1077,
	add.w	r0, r1 #222	# tmp1076, tmp1077
	st.s	[r0], r2	# row_4_octopus[alien_index_372].addr, _194
	j	.L440		#
.L519:
# spaceinvaders.c:2605: 								continue;
	nop	
.L440:
# spaceinvaders.c:2596: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-64)]	# tmp1079, i
	add.w	r0, 1 #111	# tmp1078,
	st.w	[r13 + (-64)], r0	# i, tmp1078
.L436:
# spaceinvaders.c:2596: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-64)]	# tmp1080, i
	mov.w	r0, 10	# tmp1081,
	cmp.w	r1, r0	# tmp1080, tmp1081
	jses	.L445		#
	j	.L432		#
.L433:
# spaceinvaders.c:2625: 					else if(current_step == movement_step * 3)
	ld.w	r1, [movement_step]	# movement_step.231_195, movement_step
	mov.w	r0, r1	# tmp1082, movement_step.231_195
	add.w	r0, r0 #222	# tmp1083, tmp1082
	mov.w	r2, r0	# _196, tmp1082
	add.w	r2, r1 #222	# _196, movement_step.231_195
# spaceinvaders.c:2625: 					else if(current_step == movement_step * 3)
	ld.w	r0, [current_step]	# current_step.232_197, current_step
# spaceinvaders.c:2625: 					else if(current_step == movement_step * 3)
	cmp.w	r2, r0	# _196, current_step.232_197
	jnz	.L446		#
# spaceinvaders.c:2627: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp1084, sprite_version
	xor.w	r0, r0	# tmp1085
	cmp.w	r1, r0	# tmp1084, tmp1085
	jnz	.L447		#
# spaceinvaders.c:2628: 							alien_sprite = crab0;
	mov.w	r0, crab0	# tmp1086,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1086
	j	.L448		#
.L447:
# spaceinvaders.c:2630: 							alien_sprite = crab1;
	mov.w	r0, crab1	# tmp1087,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1087
.L448:
# spaceinvaders.c:2632: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp1088
	st.w	[r13 + (-68)], r0	# i, tmp1088
# spaceinvaders.c:2632: 						for(int i = 0; i < 11; i++) {
	j	.L449		#
.L458:
# spaceinvaders.c:2634: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.233_198, direction
# spaceinvaders.c:2634: 							if(direction == 3)
	sex.b	r1, r0	# tmp1089, direction.233_198
	mov.w	r0, 3	# tmp1090,
	cmp.w	r1, r0	# tmp1089, tmp1090
	jnz	.L450		#
# spaceinvaders.c:2635: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp1092,
	ld.w	r1, [r13 + (-68)]	# tmp1093, i
	sub.w	r0, r1 #222	# tmp1091, tmp1093
	st.w	[r13 + (-12)], r0	# alien_index, tmp1091
	j	.L451		#
.L450:
# spaceinvaders.c:2637: 								alien_index = i;
	ld.w	r0, [r13 + (-68)]	# tmp1094, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp1094
.L451:
# spaceinvaders.c:2639: 							if(row_3_crab[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp1095, alien_index
	mov.w	r1, 3	# tmp1097,
	shl.w	r0, r1	# tmp1096, tmp1097
	mov.w	r1, row_3_crab+6	# tmp1099,
	add.w	r0, r1 #222	# tmp1098, tmp1099
	ld.s	r0, [r0]	# _199, row_3_crab[alien_index_373].alive
# spaceinvaders.c:2639: 							if(row_3_crab[alien_index].alive == 0)
	sex.s	r1, r0	# tmp1100, _199
	xor.w	r0, r0	# tmp1101
	cmp.w	r1, r0	# tmp1100, tmp1101
	jz	.L520		#
# spaceinvaders.c:2645: 								switch(direction)
	ld.b	r0, [direction]	# direction.234_200, direction
	sex.b	r0, r0	# _201, direction.234_200
	mov.w	r1, 3	# tmp1102,
	cmp.w	r0, r1	# _201, tmp1102
	jz	.L454		#
	mov.w	r1, 9	# tmp1103,
	cmp.w	r0, r1	# _201, tmp1103
	jz	.L455		#
	j	.L515		#
.L454:
# spaceinvaders.c:2648: 										row_3_crab[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp1104, alien_index
	mov.w	r1, 3	# tmp1106,
	shl.w	r0, r1	# tmp1105, tmp1106
	mov.w	r1, row_3_crab+2	# tmp1108,
	add.w	r0, r1 #222	# tmp1107, tmp1108
	ld.s	r0, [r0]	# _202, row_3_crab[alien_index_373].x
	ld.w	r1, [distance]	# distance.235_204, distance
	add.w	r0, r1 #222	# tmp1109, tmp1110
	mov.w	r1, r0	# _207, _206
	ld.w	r0, [r13 + (-12)]	# tmp1111, alien_index
	mov.w	r2, 3	# tmp1113,
	shl.w	r0, r2	# tmp1112, tmp1113
	mov.w	r2, row_3_crab+2	# tmp1115,
	add.w	r0, r2 #222	# tmp1114, tmp1115
	st.s	[r0], r1	# row_3_crab[alien_index_373].x, _207
# spaceinvaders.c:2649: 										break;
	j	.L457		#
.L455:
# spaceinvaders.c:2651: 										row_3_crab[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp1116, alien_index
	mov.w	r1, 3	# tmp1118,
	shl.w	r0, r1	# tmp1117, tmp1118
	mov.w	r1, row_3_crab+2	# tmp1120,
	add.w	r0, r1 #222	# tmp1119, tmp1120
	ld.s	r0, [r0]	# _208, row_3_crab[alien_index_373].x
	ld.w	r1, [distance]	# distance.236_210, distance
	sub.w	r0, r1 #222	# tmp1121, tmp1122
	mov.w	r1, r0	# _213, _212
	ld.w	r0, [r13 + (-12)]	# tmp1123, alien_index
	mov.w	r2, 3	# tmp1125,
	shl.w	r0, r2	# tmp1124, tmp1125
	mov.w	r2, row_3_crab+2	# tmp1127,
	add.w	r0, r2 #222	# tmp1126, tmp1127
	st.s	[r0], r1	# row_3_crab[alien_index_373].x, _213
# spaceinvaders.c:2652: 										break;
	j	.L457		#
.L515:
# spaceinvaders.c:2654: 										row_3_crab[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1128, alien_index
	mov.w	r1, 3	# tmp1130,
	shl.w	r0, r1	# tmp1129, tmp1130
	mov.w	r1, row_3_crab+4	# tmp1132,
	add.w	r0, r1 #222	# tmp1131, tmp1132
	ld.s	r0, [r0]	# _214, row_3_crab[alien_index_373].y
	add.w	r0, 8 #111	# tmp1133,
	mov.w	r1, r0	# _217, _216
	ld.w	r0, [r13 + (-12)]	# tmp1134, alien_index
	mov.w	r2, 3	# tmp1136,
	shl.w	r0, r2	# tmp1135, tmp1136
	mov.w	r2, row_3_crab+4	# tmp1138,
	add.w	r0, r2 #222	# tmp1137, tmp1138
	st.s	[r0], r1	# row_3_crab[alien_index_373].y, _217
.L457:
# spaceinvaders.c:2657: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1139, alien_index
	mov.w	r1, 3	# tmp1141,
	shl.w	r0, r1	# tmp1140, tmp1141
	mov.w	r1, row_3_crab+2	# tmp1143,
	add.w	r0, r1 #222	# tmp1142, tmp1143
	ld.s	r0, [r0]	# _218, row_3_crab[alien_index_373].x
# spaceinvaders.c:2657: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r1, r0	# _219, _218
# spaceinvaders.c:2657: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1144, alien_index
	mov.w	r2, 3	# tmp1146,
	shl.w	r0, r2	# tmp1145, tmp1146
	mov.w	r2, row_3_crab+4	# tmp1148,
	add.w	r0, r2 #222	# tmp1147, tmp1148
	ld.s	r0, [r0]	# _220, row_3_crab[alien_index_373].y
# spaceinvaders.c:2657: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r2, r0	# _221, _220
	ld.b	r0, [direction]	# direction.237_222, direction
	sex.b	r3, r0	# _223, direction.237_222
	ld.w	r4, [distance]	# distance.238_224, distance
	mov.w	r0, sp	# tmp1149,
	st.w	[r0 + (24)], r4	#, distance.238_224
	st.w	[r0 + (20)], r3	#, _223
	ld.w	r3, [r13 + (-8)]	# tmp1150, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1150
	mov.w	r3, 8	# tmp1151,
	st.w	[r0 + (12)], r3	#, tmp1151
	mov.w	r3, 12	# tmp1152,
	st.w	[r0 + (8)], r3	#, tmp1152
	st.w	[r0 + (4)], r2	#, _221
	st.w	[r0], r1	#, _219
	call	move_bitmap_test		#
	mov.w	r2, r0	# _225,
# spaceinvaders.c:2657: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1153, alien_index
	mov.w	r1, 3	# tmp1155,
	shl.w	r0, r1	# tmp1154, tmp1155
	mov.w	r1, row_3_crab	# tmp1157,
	add.w	r0, r1 #222	# tmp1156, tmp1157
	st.s	[r0], r2	# row_3_crab[alien_index_373].addr, _225
	j	.L453		#
.L520:
# spaceinvaders.c:2641: 								continue;
	nop	
.L453:
# spaceinvaders.c:2632: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-68)]	# tmp1159, i
	add.w	r0, 1 #111	# tmp1158,
	st.w	[r13 + (-68)], r0	# i, tmp1158
.L449:
# spaceinvaders.c:2632: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-68)]	# tmp1160, i
	mov.w	r0, 10	# tmp1161,
	cmp.w	r1, r0	# tmp1160, tmp1161
	jses	.L458		#
	j	.L432		#
.L446:
# spaceinvaders.c:2661: 					else if(current_step == movement_step * 4)
	ld.w	r1, [movement_step]	# movement_step.239_226, movement_step
	mov.w	r0, 2	# tmp1162,
	shl.w	r1, r0	# _227, tmp1162
# spaceinvaders.c:2661: 					else if(current_step == movement_step * 4)
	ld.w	r0, [current_step]	# current_step.240_228, current_step
# spaceinvaders.c:2661: 					else if(current_step == movement_step * 4)
	cmp.w	r1, r0	# _227, current_step.240_228
	jnz	.L459		#
# spaceinvaders.c:2663: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp1163, sprite_version
	xor.w	r0, r0	# tmp1164
	cmp.w	r1, r0	# tmp1163, tmp1164
	jnz	.L460		#
# spaceinvaders.c:2664: 							alien_sprite = crab0;
	mov.w	r0, crab0	# tmp1165,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1165
	j	.L461		#
.L460:
# spaceinvaders.c:2666: 							alien_sprite = crab1;
	mov.w	r0, crab1	# tmp1166,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1166
.L461:
# spaceinvaders.c:2668: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp1167
	st.w	[r13 + (-72)], r0	# i, tmp1167
# spaceinvaders.c:2668: 						for(int i = 0; i < 11; i++) {
	j	.L462		#
.L471:
# spaceinvaders.c:2670: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.241_229, direction
# spaceinvaders.c:2670: 							if(direction == 3)
	sex.b	r1, r0	# tmp1168, direction.241_229
	mov.w	r0, 3	# tmp1169,
	cmp.w	r1, r0	# tmp1168, tmp1169
	jnz	.L463		#
# spaceinvaders.c:2671: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp1171,
	ld.w	r1, [r13 + (-72)]	# tmp1172, i
	sub.w	r0, r1 #222	# tmp1170, tmp1172
	st.w	[r13 + (-12)], r0	# alien_index, tmp1170
	j	.L464		#
.L463:
# spaceinvaders.c:2673: 								alien_index = i;
	ld.w	r0, [r13 + (-72)]	# tmp1173, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp1173
.L464:
# spaceinvaders.c:2675: 							if(row_2_crab[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp1174, alien_index
	mov.w	r1, 3	# tmp1176,
	shl.w	r0, r1	# tmp1175, tmp1176
	mov.w	r1, row_2_crab+6	# tmp1178,
	add.w	r0, r1 #222	# tmp1177, tmp1178
	ld.s	r0, [r0]	# _230, row_2_crab[alien_index_374].alive
# spaceinvaders.c:2675: 							if(row_2_crab[alien_index].alive == 0)
	sex.s	r1, r0	# tmp1179, _230
	xor.w	r0, r0	# tmp1180
	cmp.w	r1, r0	# tmp1179, tmp1180
	jz	.L521		#
# spaceinvaders.c:2681: 								switch(direction)
	ld.b	r0, [direction]	# direction.242_231, direction
	sex.b	r0, r0	# _232, direction.242_231
	mov.w	r1, 3	# tmp1181,
	cmp.w	r0, r1	# _232, tmp1181
	jz	.L467		#
	mov.w	r1, 9	# tmp1182,
	cmp.w	r0, r1	# _232, tmp1182
	jz	.L468		#
	j	.L516		#
.L467:
# spaceinvaders.c:2684: 										row_2_crab[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp1183, alien_index
	mov.w	r1, 3	# tmp1185,
	shl.w	r0, r1	# tmp1184, tmp1185
	mov.w	r1, row_2_crab+2	# tmp1187,
	add.w	r0, r1 #222	# tmp1186, tmp1187
	ld.s	r0, [r0]	# _233, row_2_crab[alien_index_374].x
	ld.w	r1, [distance]	# distance.243_235, distance
	add.w	r0, r1 #222	# tmp1188, tmp1189
	mov.w	r1, r0	# _238, _237
	ld.w	r0, [r13 + (-12)]	# tmp1190, alien_index
	mov.w	r2, 3	# tmp1192,
	shl.w	r0, r2	# tmp1191, tmp1192
	mov.w	r2, row_2_crab+2	# tmp1194,
	add.w	r0, r2 #222	# tmp1193, tmp1194
	st.s	[r0], r1	# row_2_crab[alien_index_374].x, _238
# spaceinvaders.c:2685: 										break;
	j	.L470		#
.L468:
# spaceinvaders.c:2687: 										row_2_crab[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp1195, alien_index
	mov.w	r1, 3	# tmp1197,
	shl.w	r0, r1	# tmp1196, tmp1197
	mov.w	r1, row_2_crab+2	# tmp1199,
	add.w	r0, r1 #222	# tmp1198, tmp1199
	ld.s	r0, [r0]	# _239, row_2_crab[alien_index_374].x
	ld.w	r1, [distance]	# distance.244_241, distance
	sub.w	r0, r1 #222	# tmp1200, tmp1201
	mov.w	r1, r0	# _244, _243
	ld.w	r0, [r13 + (-12)]	# tmp1202, alien_index
	mov.w	r2, 3	# tmp1204,
	shl.w	r0, r2	# tmp1203, tmp1204
	mov.w	r2, row_2_crab+2	# tmp1206,
	add.w	r0, r2 #222	# tmp1205, tmp1206
	st.s	[r0], r1	# row_2_crab[alien_index_374].x, _244
# spaceinvaders.c:2688: 										break;
	j	.L470		#
.L516:
# spaceinvaders.c:2690: 										row_2_crab[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1207, alien_index
	mov.w	r1, 3	# tmp1209,
	shl.w	r0, r1	# tmp1208, tmp1209
	mov.w	r1, row_2_crab+4	# tmp1211,
	add.w	r0, r1 #222	# tmp1210, tmp1211
	ld.s	r0, [r0]	# _245, row_2_crab[alien_index_374].y
	add.w	r0, 8 #111	# tmp1212,
	mov.w	r1, r0	# _248, _247
	ld.w	r0, [r13 + (-12)]	# tmp1213, alien_index
	mov.w	r2, 3	# tmp1215,
	shl.w	r0, r2	# tmp1214, tmp1215
	mov.w	r2, row_2_crab+4	# tmp1217,
	add.w	r0, r2 #222	# tmp1216, tmp1217
	st.s	[r0], r1	# row_2_crab[alien_index_374].y, _248
.L470:
# spaceinvaders.c:2693: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1218, alien_index
	mov.w	r1, 3	# tmp1220,
	shl.w	r0, r1	# tmp1219, tmp1220
	mov.w	r1, row_2_crab+2	# tmp1222,
	add.w	r0, r1 #222	# tmp1221, tmp1222
	ld.s	r0, [r0]	# _249, row_2_crab[alien_index_374].x
# spaceinvaders.c:2693: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r1, r0	# _250, _249
# spaceinvaders.c:2693: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1223, alien_index
	mov.w	r2, 3	# tmp1225,
	shl.w	r0, r2	# tmp1224, tmp1225
	mov.w	r2, row_2_crab+4	# tmp1227,
	add.w	r0, r2 #222	# tmp1226, tmp1227
	ld.s	r0, [r0]	# _251, row_2_crab[alien_index_374].y
# spaceinvaders.c:2693: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	sex.s	r2, r0	# _252, _251
	ld.b	r0, [direction]	# direction.245_253, direction
	sex.b	r3, r0	# _254, direction.245_253
	ld.w	r4, [distance]	# distance.246_255, distance
	mov.w	r0, sp	# tmp1228,
	st.w	[r0 + (24)], r4	#, distance.246_255
	st.w	[r0 + (20)], r3	#, _254
	ld.w	r3, [r13 + (-8)]	# tmp1229, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1229
	mov.w	r3, 8	# tmp1230,
	st.w	[r0 + (12)], r3	#, tmp1230
	mov.w	r3, 12	# tmp1231,
	st.w	[r0 + (8)], r3	#, tmp1231
	st.w	[r0 + (4)], r2	#, _252
	st.w	[r0], r1	#, _250
	call	move_bitmap_test		#
	mov.w	r2, r0	# _256,
# spaceinvaders.c:2693: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1232, alien_index
	mov.w	r1, 3	# tmp1234,
	shl.w	r0, r1	# tmp1233, tmp1234
	mov.w	r1, row_2_crab	# tmp1236,
	add.w	r0, r1 #222	# tmp1235, tmp1236
	st.s	[r0], r2	# row_2_crab[alien_index_374].addr, _256
	j	.L466		#
.L521:
# spaceinvaders.c:2677: 								continue;
	nop	
.L466:
# spaceinvaders.c:2668: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-72)]	# tmp1238, i
	add.w	r0, 1 #111	# tmp1237,
	st.w	[r13 + (-72)], r0	# i, tmp1237
.L462:
# spaceinvaders.c:2668: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-72)]	# tmp1239, i
	mov.w	r0, 10	# tmp1240,
	cmp.w	r1, r0	# tmp1239, tmp1240
	jses	.L471		#
	j	.L432		#
.L459:
# spaceinvaders.c:2698: 					else if(current_step >= movement_step * 5)
	ld.w	r1, [movement_step]	# movement_step.247_257, movement_step
	mov.w	r0, r1	# tmp1241, movement_step.247_257
	mov.w	r2, 2	# tmp1243,
	shl.w	r0, r2	# tmp1242, tmp1243
	mov.w	r2, r0	# _258, tmp1241
	add.w	r2, r1 #222	# _258, movement_step.247_257
# spaceinvaders.c:2698: 					else if(current_step >= movement_step * 5)
	ld.w	r0, [current_step]	# current_step.248_259, current_step
# spaceinvaders.c:2698: 					else if(current_step >= movement_step * 5)
	cmp.w	r2, r0	# _258, current_step.248_259
	jgs	.L432		#
# spaceinvaders.c:2700: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp1244, sprite_version
	xor.w	r0, r0	# tmp1245
	cmp.w	r1, r0	# tmp1244, tmp1245
	jnz	.L472		#
# spaceinvaders.c:2701: 							alien_sprite = squid0;
	mov.w	r0, squid0	# tmp1246,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1246
	j	.L473		#
.L472:
# spaceinvaders.c:2703: 							alien_sprite = squid1;
	mov.w	r0, squid1	# tmp1247,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1247
.L473:
# spaceinvaders.c:2705: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp1248
	st.w	[r13 + (-76)], r0	# i, tmp1248
# spaceinvaders.c:2705: 						for(int i = 0; i < 11; i++) {
	j	.L474		#
.L483:
# spaceinvaders.c:2707: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.249_260, direction
# spaceinvaders.c:2707: 							if(direction == 3)
	sex.b	r1, r0	# tmp1249, direction.249_260
	mov.w	r0, 3	# tmp1250,
	cmp.w	r1, r0	# tmp1249, tmp1250
	jnz	.L475		#
# spaceinvaders.c:2708: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp1252,
	ld.w	r1, [r13 + (-76)]	# tmp1253, i
	sub.w	r0, r1 #222	# tmp1251, tmp1253
	st.w	[r13 + (-12)], r0	# alien_index, tmp1251
	j	.L476		#
.L475:
# spaceinvaders.c:2710: 								alien_index = i;
	ld.w	r0, [r13 + (-76)]	# tmp1254, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp1254
.L476:
# spaceinvaders.c:2712: 							if(row_1_squid[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp1255, alien_index
	mov.w	r1, 3	# tmp1257,
	shl.w	r0, r1	# tmp1256, tmp1257
	mov.w	r1, row_1_squid+6	# tmp1259,
	add.w	r0, r1 #222	# tmp1258, tmp1259
	ld.s	r0, [r0]	# _261, row_1_squid[alien_index_375].alive
# spaceinvaders.c:2712: 							if(row_1_squid[alien_index].alive == 0)
	sex.s	r1, r0	# tmp1260, _261
	xor.w	r0, r0	# tmp1261
	cmp.w	r1, r0	# tmp1260, tmp1261
	jz	.L522		#
# spaceinvaders.c:2718: 								switch(direction)
	ld.b	r0, [direction]	# direction.250_262, direction
	sex.b	r0, r0	# _263, direction.250_262
	mov.w	r1, 3	# tmp1262,
	cmp.w	r0, r1	# _263, tmp1262
	jz	.L479		#
	mov.w	r1, 9	# tmp1263,
	cmp.w	r0, r1	# _263, tmp1263
	jz	.L480		#
	j	.L517		#
.L479:
# spaceinvaders.c:2721: 										row_1_squid[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp1264, alien_index
	mov.w	r1, 3	# tmp1266,
	shl.w	r0, r1	# tmp1265, tmp1266
	mov.w	r1, row_1_squid+2	# tmp1268,
	add.w	r0, r1 #222	# tmp1267, tmp1268
	ld.s	r0, [r0]	# _264, row_1_squid[alien_index_375].x
	ld.w	r1, [distance]	# distance.251_266, distance
	add.w	r0, r1 #222	# tmp1269, tmp1270
	mov.w	r1, r0	# _269, _268
	ld.w	r0, [r13 + (-12)]	# tmp1271, alien_index
	mov.w	r2, 3	# tmp1273,
	shl.w	r0, r2	# tmp1272, tmp1273
	mov.w	r2, row_1_squid+2	# tmp1275,
	add.w	r0, r2 #222	# tmp1274, tmp1275
	st.s	[r0], r1	# row_1_squid[alien_index_375].x, _269
# spaceinvaders.c:2722: 										break;
	j	.L482		#
.L480:
# spaceinvaders.c:2724: 										row_1_squid[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp1276, alien_index
	mov.w	r1, 3	# tmp1278,
	shl.w	r0, r1	# tmp1277, tmp1278
	mov.w	r1, row_1_squid+2	# tmp1280,
	add.w	r0, r1 #222	# tmp1279, tmp1280
	ld.s	r0, [r0]	# _270, row_1_squid[alien_index_375].x
	ld.w	r1, [distance]	# distance.252_272, distance
	sub.w	r0, r1 #222	# tmp1281, tmp1282
	mov.w	r1, r0	# _275, _274
	ld.w	r0, [r13 + (-12)]	# tmp1283, alien_index
	mov.w	r2, 3	# tmp1285,
	shl.w	r0, r2	# tmp1284, tmp1285
	mov.w	r2, row_1_squid+2	# tmp1287,
	add.w	r0, r2 #222	# tmp1286, tmp1287
	st.s	[r0], r1	# row_1_squid[alien_index_375].x, _275
# spaceinvaders.c:2725: 										break;
	j	.L482		#
.L517:
# spaceinvaders.c:2727: 										row_1_squid[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1288, alien_index
	mov.w	r1, 3	# tmp1290,
	shl.w	r0, r1	# tmp1289, tmp1290
	mov.w	r1, row_1_squid+4	# tmp1292,
	add.w	r0, r1 #222	# tmp1291, tmp1292
	ld.s	r0, [r0]	# _276, row_1_squid[alien_index_375].y
	add.w	r0, 8 #111	# tmp1293,
	mov.w	r1, r0	# _279, _278
	ld.w	r0, [r13 + (-12)]	# tmp1294, alien_index
	mov.w	r2, 3	# tmp1296,
	shl.w	r0, r2	# tmp1295, tmp1296
	mov.w	r2, row_1_squid+4	# tmp1298,
	add.w	r0, r2 #222	# tmp1297, tmp1298
	st.s	[r0], r1	# row_1_squid[alien_index_375].y, _279
.L482:
# spaceinvaders.c:2730: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1299, alien_index
	mov.w	r1, 3	# tmp1301,
	shl.w	r0, r1	# tmp1300, tmp1301
	mov.w	r1, row_1_squid+2	# tmp1303,
	add.w	r0, r1 #222	# tmp1302, tmp1303
	ld.s	r0, [r0]	# _280, row_1_squid[alien_index_375].x
# spaceinvaders.c:2730: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	sex.s	r1, r0	# _281, _280
# spaceinvaders.c:2730: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1304, alien_index
	mov.w	r2, 3	# tmp1306,
	shl.w	r0, r2	# tmp1305, tmp1306
	mov.w	r2, row_1_squid+4	# tmp1308,
	add.w	r0, r2 #222	# tmp1307, tmp1308
	ld.s	r0, [r0]	# _282, row_1_squid[alien_index_375].y
# spaceinvaders.c:2730: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	sex.s	r2, r0	# _283, _282
	ld.b	r0, [direction]	# direction.253_284, direction
	sex.b	r3, r0	# _285, direction.253_284
	ld.w	r4, [distance]	# distance.254_286, distance
	mov.w	r0, sp	# tmp1309,
	st.w	[r0 + (24)], r4	#, distance.254_286
	st.w	[r0 + (20)], r3	#, _285
	ld.w	r3, [r13 + (-8)]	# tmp1310, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1310
	mov.w	r3, 8	# tmp1311,
	st.w	[r0 + (12)], r3	#, tmp1311
	mov.w	r3, 8	# tmp1312,
	st.w	[r0 + (8)], r3	#, tmp1312
	st.w	[r0 + (4)], r2	#, _283
	st.w	[r0], r1	#, _281
	call	move_bitmap_test		#
	mov.w	r2, r0	# _287,
# spaceinvaders.c:2730: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1313, alien_index
	mov.w	r1, 3	# tmp1315,
	shl.w	r0, r1	# tmp1314, tmp1315
	mov.w	r1, row_1_squid	# tmp1317,
	add.w	r0, r1 #222	# tmp1316, tmp1317
	st.s	[r0], r2	# row_1_squid[alien_index_375].addr, _287
	j	.L478		#
.L522:
# spaceinvaders.c:2714: 								continue;
	nop	
.L478:
# spaceinvaders.c:2705: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-76)]	# tmp1319, i
	add.w	r0, 1 #111	# tmp1318,
	st.w	[r13 + (-76)], r0	# i, tmp1318
.L474:
# spaceinvaders.c:2705: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-76)]	# tmp1320, i
	mov.w	r0, 10	# tmp1321,
	cmp.w	r1, r0	# tmp1320, tmp1321
	jses	.L483		#
# spaceinvaders.c:2741: 						sprite_version ^= 1;
	ld.w	r0, [r13 + (-4)]	# tmp1323, sprite_version
	mov.w	r1, 1	# tmp1324,
	xor.w	r0, r1	# tmp1322, tmp1324
	st.w	[r13 + (-4)], r0	# sprite_version, tmp1322
# spaceinvaders.c:2743: 						current_step=0;
	xor.w	r0, r0	# tmp1325
	st.w	[current_step], r0	# current_step, tmp1325
# spaceinvaders.c:2744: 						if(direction == 18) {
	ld.b	r0, [direction]	# direction.255_288, direction
# spaceinvaders.c:2744: 						if(direction == 18) {
	sex.b	r1, r0	# tmp1326, direction.255_288
	mov.w	r0, 18	# tmp1327,
	cmp.w	r1, r0	# tmp1326, tmp1327
	jnz	.L484		#
# spaceinvaders.c:2745: 							direction = 3;
	mov.b	r0, 3	# tmp1328,
	st.b	[direction], r0	# direction, tmp1328
	j	.L432		#
.L484:
# spaceinvaders.c:2746: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	call	leftmost_alien_X		#
# spaceinvaders.c:2746: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	sex.s	r1, r0	# tmp1329, _289
	mov.w	r0, 12	# tmp1330,
	cmp.w	r1, r0	# tmp1329, tmp1330
	jgs	.L485		#
# spaceinvaders.c:2746: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	ld.b	r0, [direction]	# direction.256_290, direction
# spaceinvaders.c:2746: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	sex.b	r1, r0	# tmp1331, direction.256_290
	mov.w	r0, 18	# tmp1332,
	cmp.w	r1, r0	# tmp1331, tmp1332
	jz	.L485		#
# spaceinvaders.c:2747: 							direction = 18;
	mov.b	r0, 18	# tmp1333,
	st.b	[direction], r0	# direction, tmp1333
	j	.L432		#
.L485:
# spaceinvaders.c:2748: 						} else if(direction == 6) {
	ld.b	r0, [direction]	# direction.257_291, direction
# spaceinvaders.c:2748: 						} else if(direction == 6) {
	sex.b	r1, r0	# tmp1334, direction.257_291
	mov.w	r0, 6	# tmp1335,
	cmp.w	r1, r0	# tmp1334, tmp1335
	jnz	.L486		#
# spaceinvaders.c:2749: 							direction = 9;
	mov.b	r0, 9	# tmp1336,
	st.b	[direction], r0	# direction, tmp1336
	j	.L432		#
.L486:
# spaceinvaders.c:2750: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	call	rightmost_alien_X		#
# spaceinvaders.c:2750: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	sex.s	r1, r0	# tmp1337, _292
	mov.w	r0, 223	# tmp1338,
	cmp.w	r1, r0	# tmp1337, tmp1338
	jses	.L432		#
# spaceinvaders.c:2750: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	ld.b	r0, [direction]	# direction.258_293, direction
# spaceinvaders.c:2750: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	sex.b	r1, r0	# tmp1339, direction.258_293
	mov.w	r0, 6	# tmp1340,
	cmp.w	r1, r0	# tmp1339, tmp1340
	jz	.L432		#
# spaceinvaders.c:2751: 							direction = 6;
	mov.b	r0, 6	# tmp1341,
	st.b	[direction], r0	# direction, tmp1341
.L432:
# spaceinvaders.c:2757: 					current_step++;
	ld.w	r0, [current_step]	# current_step.259_294, current_step
	add.w	r0, 1 #111	# _295,
	st.w	[current_step], r0	# current_step, _295
# spaceinvaders.c:2759: 					if(lowest_alien_Y() >= PLAYER_SPAWN_Y)
	call	lowest_alien_Y		#
# spaceinvaders.c:2759: 					if(lowest_alien_Y() >= PLAYER_SPAWN_Y)
	sex.s	r1, r0	# tmp1342, _296
	mov.w	r0, 211	# tmp1343,
	cmp.w	r1, r0	# tmp1342, tmp1343
	jses	.L414		#
# spaceinvaders.c:2761: 						lives = 0;
	xor.w	r0, r0	# tmp1344
	st.w	[lives], r0	# lives, tmp1344
# spaceinvaders.c:2762: 						destroy_player();
	call	destroy_player		#
	j	.L414		#
.L415:
# spaceinvaders.c:2767: 					death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.260_297, death_timer
	add.w	r0, 4 #111	# _298,
	st.w	[death_timer], r0	# death_timer, _298
.L414:
# spaceinvaders.c:2774: 				if(player_movement_skip_frame == 0)
	ld.w	r1, [player_movement_skip_frame]	# player_movement_skip_frame.261_299, player_movement_skip_frame
# spaceinvaders.c:2774: 				if(player_movement_skip_frame == 0)
	xor.w	r0, r0	# tmp1345
	cmp.w	r1, r0	# player_movement_skip_frame.261_299, tmp1345
	jnz	.L487		#
# spaceinvaders.c:2775: 					player_movement_skip_frame = 3;
	mov.w	r0, 3	# tmp1346,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, tmp1346
	j	.L488		#
.L487:
# spaceinvaders.c:2777: 					player_movement_skip_frame--;
	ld.w	r0, [player_movement_skip_frame]	# player_movement_skip_frame.262_300, player_movement_skip_frame
	add.w	r0, -1 #111	# _301,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, _301
.L488:
# spaceinvaders.c:2779: 				for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp1347
	st.w	[r13 + (-80)], r0	# i, tmp1347
# spaceinvaders.c:2779: 				for(int i = 0; i < 5; i++)
	j	.L489		#
.L491:
# spaceinvaders.c:2780: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-80)]	# tmp1348, i
	mov.w	r0, r1	# tmp1349, tmp1348
	mov.w	r2, 3	# tmp1351,
	shl.w	r0, r2	# tmp1350, tmp1351
	add.w	r0, r1 #222	# tmp1349, tmp1348
	mov.w	r1, 2	# tmp1353,
	shl.w	r0, r1	# tmp1352, tmp1353
	mov.w	r1, alien_bullet+20	# tmp1355,
	add.w	r0, r1 #222	# tmp1354, tmp1355
	ld.w	r1, [r0]	# _302, alien_bullet[i_395].status
# spaceinvaders.c:2780: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	mov.w	r0, 2	# tmp1356,
	cmp.w	r1, r0	# _302, tmp1356
	jnz	.L490		#
# spaceinvaders.c:2780: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-80)]	# tmp1357, i
	mov.w	r0, r1	# tmp1358, tmp1357
	mov.w	r2, 3	# tmp1360,
	shl.w	r0, r2	# tmp1359, tmp1360
	add.w	r0, r1 #222	# tmp1358, tmp1357
	mov.w	r1, 2	# tmp1362,
	shl.w	r0, r1	# tmp1361, tmp1362
	mov.w	r1, alien_bullet+8	# tmp1364,
	add.w	r0, r1 #222	# tmp1363, tmp1364
	ld.w	r1, [r0]	# _303, alien_bullet[i_395].spawn_y
# spaceinvaders.c:2780: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	mov.w	r0, 212	# tmp1365,
	cmp.w	r1, r0	# _303, tmp1365
	jgs	.L490		#
# spaceinvaders.c:2781: 						check_alien_bullet_collision_with_player(i);
	mov.w	r1, sp	# tmp1366,
	ld.w	r0, [r13 + (-80)]	# tmp1367, i
	st.w	[r1], r0	#, tmp1367
	call	check_alien_bullet_collision_with_player		#
.L490:
# spaceinvaders.c:2779: 				for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-80)]	# tmp1369, i
	add.w	r0, 1 #111	# tmp1368,
	st.w	[r13 + (-80)], r0	# i, tmp1368
.L489:
# spaceinvaders.c:2779: 				for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-80)]	# tmp1370, i
	mov.w	r0, 4	# tmp1371,
	cmp.w	r1, r0	# tmp1370, tmp1371
	jses	.L491		#
# spaceinvaders.c:2784: 				if(timer_for_alien_bullet_spawn <= 0)
	ld.w	r1, [timer_for_alien_bullet_spawn]	# timer_for_alien_bullet_spawn.263_304, timer_for_alien_bullet_spawn
# spaceinvaders.c:2784: 				if(timer_for_alien_bullet_spawn <= 0)
	xor.w	r0, r0	# tmp1372
	cmp.w	r1, r0	# timer_for_alien_bullet_spawn.263_304, tmp1372
	jgs	.L492		#
# spaceinvaders.c:2786: 					for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp1373
	st.w	[r13 + (-84)], r0	# i, tmp1373
# spaceinvaders.c:2786: 					for(int i = 0; i < 5; i++)
	j	.L493		#
.L495:
# spaceinvaders.c:2788: 						if(alien_bullet[i].status == READY)
	ld.w	r1, [r13 + (-84)]	# tmp1374, i
	mov.w	r0, r1	# tmp1375, tmp1374
	mov.w	r2, 3	# tmp1377,
	shl.w	r0, r2	# tmp1376, tmp1377
	add.w	r0, r1 #222	# tmp1375, tmp1374
	mov.w	r1, 2	# tmp1379,
	shl.w	r0, r1	# tmp1378, tmp1379
	mov.w	r1, alien_bullet+20	# tmp1381,
	add.w	r0, r1 #222	# tmp1380, tmp1381
	ld.w	r1, [r0]	# _305, alien_bullet[i_396].status
# spaceinvaders.c:2788: 						if(alien_bullet[i].status == READY)
	xor.w	r0, r0	# tmp1382
	cmp.w	r1, r0	# _305, tmp1382
	jnz	.L494		#
# spaceinvaders.c:2790: 							spawn_alien_bullet(i);
	mov.w	r1, sp	# tmp1383,
	ld.w	r0, [r13 + (-84)]	# tmp1384, i
	st.w	[r1], r0	#, tmp1384
	call	spawn_alien_bullet		#
# spaceinvaders.c:2791: 							timer_for_alien_bullet_spawn = alien_bullet_spawn_time;
	ld.w	r0, [alien_bullet_spawn_time]	# alien_bullet_spawn_time.264_306, alien_bullet_spawn_time
	st.w	[timer_for_alien_bullet_spawn], r0	# timer_for_alien_bullet_spawn, alien_bullet_spawn_time.264_306
# spaceinvaders.c:2792: 							break;
	j	.L492		#
.L494:
# spaceinvaders.c:2786: 					for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-84)]	# tmp1386, i
	add.w	r0, 1 #111	# tmp1385,
	st.w	[r13 + (-84)], r0	# i, tmp1385
.L493:
# spaceinvaders.c:2786: 					for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-84)]	# tmp1387, i
	mov.w	r0, 4	# tmp1388,
	cmp.w	r1, r0	# tmp1387, tmp1388
	jses	.L495		#
.L492:
# spaceinvaders.c:2796: 				timer_for_alien_bullet_spawn -= 2;
	ld.w	r0, [timer_for_alien_bullet_spawn]	# timer_for_alien_bullet_spawn.265_307, timer_for_alien_bullet_spawn
	add.w	r0, -2 #111	# _308,
	st.w	[timer_for_alien_bullet_spawn], r0	# timer_for_alien_bullet_spawn, _308
	j	.L496		#
.L410:
# spaceinvaders.c:2798: 			else if(player_alive == 1)
	ld.w	r1, [player_alive]	# player_alive.266_309, player_alive
# spaceinvaders.c:2798: 			else if(player_alive == 1)
	mov.w	r0, 1	# tmp1389,
	cmp.w	r1, r0	# player_alive.266_309, tmp1389
	jnz	.L497		#
# spaceinvaders.c:2800: 				player_death_timer+=2;
	ld.w	r0, [player_death_timer]	# player_death_timer.267_310, player_death_timer
	add.w	r0, 2 #111	# _311,
	st.w	[player_death_timer], r0	# player_death_timer, _311
# spaceinvaders.c:2801: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	ld.w	r1, [player_death_timer]	# player_death_timer.268_312, player_death_timer
# spaceinvaders.c:2801: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	mov.w	r0, 989	# tmp1390,
	cmp.w	r1, r0	# player_death_timer.268_312, tmp1390
	jgs	.L498		#
# spaceinvaders.c:2801: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	ld.w	r1, [player_death_timer]	# player_death_timer.269_313, player_death_timer
	mov.w	r0, 90	# tmp1391,
	div.w	r1, r0	# _314, tmp1391
mov.w	r1, r14	# _314
# spaceinvaders.c:2801: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	xor.w	r0, r0	# tmp1392
	cmp.w	r1, r0	# _314, tmp1392
	jnz	.L498		#
# spaceinvaders.c:2803: 					change_player_explosion_sprite();
	call	change_player_explosion_sprite		#
	j	.L496		#
.L498:
# spaceinvaders.c:2805: 				else if(player_death_timer == 990)
	ld.w	r1, [player_death_timer]	# player_death_timer.270_315, player_death_timer
# spaceinvaders.c:2805: 				else if(player_death_timer == 990)
	mov.w	r0, 990	# tmp1393,
	cmp.w	r1, r0	# player_death_timer.270_315, tmp1393
	jnz	.L500		#
# spaceinvaders.c:2807: 					clear_player_and_redraw_lives();
	call	clear_player_and_redraw_lives		#
# spaceinvaders.c:2808: 					if(lives <= 0)
	ld.w	r1, [lives]	# lives.271_316, lives
# spaceinvaders.c:2808: 					if(lives <= 0)
	xor.w	r0, r0	# tmp1394
	cmp.w	r1, r0	# lives.271_316, tmp1394
	jgs	.L496		#
# spaceinvaders.c:2810: 						player_alive = 0;
	xor.w	r0, r0	# tmp1395
	st.w	[player_alive], r0	# player_alive, tmp1395
	j	.L496		#
.L500:
# spaceinvaders.c:2814: 				else if(player_death_timer == 3000)
	ld.w	r1, [player_death_timer]	# player_death_timer.272_317, player_death_timer
# spaceinvaders.c:2814: 				else if(player_death_timer == 3000)
	mov.w	r0, 3000	# tmp1396,
	cmp.w	r1, r0	# player_death_timer.272_317, tmp1396
	jnz	.L496		#
# spaceinvaders.c:2816: 					player_alive = 0;
	xor.w	r0, r0	# tmp1397
	st.w	[player_alive], r0	# player_alive, tmp1397
	j	.L496		#
.L497:
# spaceinvaders.c:2819: 			else if(player_alive == 0)
	ld.w	r1, [player_alive]	# player_alive.273_318, player_alive
# spaceinvaders.c:2819: 			else if(player_alive == 0)
	xor.w	r0, r0	# tmp1398
	cmp.w	r1, r0	# player_alive.273_318, tmp1398
	jnz	.L496		#
# spaceinvaders.c:2821: 				if(lives > 0)
	ld.w	r1, [lives]	# lives.274_319, lives
# spaceinvaders.c:2821: 				if(lives > 0)
	xor.w	r0, r0	# tmp1399
	cmp.w	r1, r0	# lives.274_319, tmp1399
	jses	.L501		#
# spaceinvaders.c:2822: 					spawn_player();
	call	spawn_player		#
	j	.L496		#
.L501:
# spaceinvaders.c:2825: 					update_high_score_if_lower_than_score();
	call	update_high_score_if_lower_than_score		#
# spaceinvaders.c:2826: 					display_game_over_text();
	call	display_game_over_text		#
# spaceinvaders.c:2827: 					delay(3000);
	mov.w	r1, sp	# tmp1400,
	mov.w	r0, 3000	# tmp1401,
	st.w	[r1], r0	#, tmp1401
	call	delay		#
# spaceinvaders.c:2828: 					cls(0);
	mov.w	r1, sp	# tmp1402,
	xor.w	r0, r0	# tmp1403
	st.w	[r1], r0	#, tmp1403
	call	cls		#
# spaceinvaders.c:2829: 					current_screen = MAIN_MENU_SCREEN;
	xor.w	r0, r0	# tmp1404
	st.w	[current_screen], r0	# current_screen, tmp1404
# spaceinvaders.c:2830: 					return 0;
	xor.w	r0, r0	# _397
	j	.L412		#
.L496:
# spaceinvaders.c:2833: 			if(bonus_life_awarded == FALSE && score >= 1500)
	ld.w	r1, [bonus_life_awarded]	# bonus_life_awarded.275_320, bonus_life_awarded
# spaceinvaders.c:2833: 			if(bonus_life_awarded == FALSE && score >= 1500)
	xor.w	r0, r0	# tmp1405
	cmp.w	r1, r0	# bonus_life_awarded.275_320, tmp1405
	jnz	.L378		#
# spaceinvaders.c:2833: 			if(bonus_life_awarded == FALSE && score >= 1500)
	ld.w	r1, [score]	# score.276_321, score
# spaceinvaders.c:2833: 			if(bonus_life_awarded == FALSE && score >= 1500)
	mov.w	r0, 1499	# tmp1406,
	cmp.w	r1, r0	# score.276_321, tmp1406
	jses	.L378		#
# spaceinvaders.c:2835: 				lives++;
	ld.w	r0, [lives]	# lives.277_322, lives
	add.w	r0, 1 #111	# _323,
	st.w	[lives], r0	# lives, _323
# spaceinvaders.c:2836: 				bonus_life_awarded = TRUE;
	mov.w	r0, 1	# tmp1407,
	st.w	[bonus_life_awarded], r0	# bonus_life_awarded, tmp1407
# spaceinvaders.c:2837: 				draw_lives();
	call	draw_lives		#
.L378:
# spaceinvaders.c:2842: 		if(player_alive == 2)
	ld.w	r1, [player_alive]	# player_alive.278_324, player_alive
# spaceinvaders.c:2842: 		if(player_alive == 2)
	mov.w	r0, 2	# tmp1408,
	cmp.w	r1, r0	# player_alive.278_324, tmp1408
	jnz	.L523		#
# spaceinvaders.c:2845: 			vkp = is_key_pressed();
	call	is_key_pressed		#
# spaceinvaders.c:2845: 			vkp = is_key_pressed();
	st.w	[vkp], r0	# vkp, _325
# spaceinvaders.c:2846: 			vkr = is_key_released();
	call	is_key_released		#
# spaceinvaders.c:2846: 			vkr = is_key_released();
	st.w	[vkr], r0	# vkr, _326
# spaceinvaders.c:2847: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [vkp]	# vkp.279_327, vkp
# spaceinvaders.c:2847: 			if ((vkp == 0) && (vkr == 0))
	xor.w	r0, r0	# tmp1409
	cmp.w	r1, r0	# vkp.279_327, tmp1409
	jnz	.L503		#
# spaceinvaders.c:2847: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [vkr]	# vkr.280_328, vkr
# spaceinvaders.c:2847: 			if ((vkp == 0) && (vkr == 0))
	xor.w	r0, r0	# tmp1410
	cmp.w	r1, r0	# vkr.280_328, tmp1410
	jnz	.L503		#
# spaceinvaders.c:2849: 				vkp = old;
	ld.w	r0, [old]	# old.281_329, old
	st.w	[vkp], r0	# vkp, old.281_329
.L503:
# spaceinvaders.c:2851: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [vkr]	# vkr.282_330, vkr
# spaceinvaders.c:2851: 			if ((vkr != 0) && (vkr == old))
	xor.w	r0, r0	# tmp1411
	cmp.w	r1, r0	# vkr.282_330, tmp1411
	jz	.L504		#
# spaceinvaders.c:2851: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [vkr]	# vkr.283_331, vkr
	ld.w	r0, [old]	# old.284_332, old
# spaceinvaders.c:2851: 			if ((vkr != 0) && (vkr == old))
	cmp.w	r1, r0	# vkr.283_331, old.284_332
	jnz	.L504		#
# spaceinvaders.c:2853: 				vkp = 0;
	xor.w	r0, r0	# tmp1412
	st.w	[vkp], r0	# vkp, tmp1412
# spaceinvaders.c:2854: 				old = 0;
	xor.w	r0, r0	# tmp1413
	st.w	[old], r0	# old, tmp1413
.L504:
# spaceinvaders.c:2856: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	ld.w	r1, [vkp]	# vkp.285_333, vkp
# spaceinvaders.c:2856: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	xor.w	r0, r0	# tmp1414
	cmp.w	r1, r0	# vkp.285_333, tmp1414
	jz	.L505		#
# spaceinvaders.c:2856: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	ld.w	r1, [vkp]	# vkp.286_334, vkp
# spaceinvaders.c:2856: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	mov.w	r0, 32	# tmp1415,
	cmp.w	r1, r0	# vkp.286_334, tmp1415
	jz	.L505		#
# spaceinvaders.c:2856: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	ld.w	r1, [vkp]	# vkp.287_335, vkp
# spaceinvaders.c:2856: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	mov.w	r0, 27	# tmp1416,
	cmp.w	r1, r0	# vkp.287_335, tmp1416
	jz	.L505		#
# spaceinvaders.c:2857: 				old = vkp;
	ld.w	r0, [vkp]	# vkp.288_336, vkp
	st.w	[old], r0	# old, vkp.288_336
.L505:
# spaceinvaders.c:2859: 			if(game_state == PLAY)
	ld.w	r1, [game_state]	# game_state.289_337, game_state
# spaceinvaders.c:2859: 			if(game_state == PLAY)
	mov.w	r0, 1	# tmp1417,
	cmp.w	r1, r0	# game_state.289_337, tmp1417
	jnz	.L524		#
# spaceinvaders.c:2861: 				switch (vkp)
	ld.w	r0, [vkp]	# vkp.290_338, vkp
	mov.w	r1, 4003	# tmp1418,
	cmp.w	r0, r1	# vkp.290_338, tmp1418
	jz	.L507		#
	mov.w	r1, 4003	# tmp1419,
	cmp.w	r0, r1	# vkp.290_338, tmp1419
	jgs	.L506		#
	mov.w	r1, 32	# tmp1420,
	cmp.w	r0, r1	# vkp.290_338, tmp1420
	jz	.L508		#
	mov.w	r1, 4001	# tmp1421,
	cmp.w	r0, r1	# vkp.290_338, tmp1421
	jnz	.L506		#
# spaceinvaders.c:2864: 						if(player_movement_skip_frame == 0)
	ld.w	r1, [player_movement_skip_frame]	# player_movement_skip_frame.291_339, player_movement_skip_frame
# spaceinvaders.c:2864: 						if(player_movement_skip_frame == 0)
	xor.w	r0, r0	# tmp1422
	cmp.w	r1, r0	# player_movement_skip_frame.291_339, tmp1422
	jnz	.L525		#
# spaceinvaders.c:2866: 							player_ship->x -= 1;
	ld.w	r0, [player_ship]	# player_ship.292_340, player_ship
	ld.s	r0, [r0 + (2)]	# _341, player_ship.292_340->x
	add.w	r0, -1 #111	# tmp1423,
	mov.w	r1, r0	# _343, tmp1423
	ld.w	r0, [player_ship]	# player_ship.293_344, player_ship
	st.s	[r0 + (2)], r1	# player_ship.293_344->x, _345
# spaceinvaders.c:2867: 							if (player_ship->x < 0)
	ld.w	r0, [player_ship]	# player_ship.294_346, player_ship
	ld.s	r0, [r0 + (2)]	# _347, player_ship.294_346->x
# spaceinvaders.c:2867: 							if (player_ship->x < 0)
	sex.s	r1, r0	# tmp1424, _347
	xor.w	r0, r0	# tmp1425
	cmp.w	r1, r0	# tmp1424, tmp1425
	jges	.L525		#
# spaceinvaders.c:2868: 								player_ship->x = 0;
	ld.w	r0, [player_ship]	# player_ship.295_348, player_ship
# spaceinvaders.c:2868: 								player_ship->x = 0;
	xor.w	r1, r1	# tmp1426
	st.s	[r0 + (2)], r1	# player_ship.295_348->x, tmp1426
# spaceinvaders.c:2870: 						break;
	j	.L525		#
.L507:
# spaceinvaders.c:2872: 						if(player_movement_skip_frame == 0)
	ld.w	r1, [player_movement_skip_frame]	# player_movement_skip_frame.296_349, player_movement_skip_frame
# spaceinvaders.c:2872: 						if(player_movement_skip_frame == 0)
	xor.w	r0, r0	# tmp1427
	cmp.w	r1, r0	# player_movement_skip_frame.296_349, tmp1427
	jnz	.L526		#
# spaceinvaders.c:2874: 							player_ship->x += 1;
	ld.w	r0, [player_ship]	# player_ship.297_350, player_ship
	ld.s	r0, [r0 + (2)]	# _351, player_ship.297_350->x
	add.w	r0, 1 #111	# tmp1428,
	mov.w	r1, r0	# _353, tmp1428
	ld.w	r0, [player_ship]	# player_ship.298_354, player_ship
	st.s	[r0 + (2)], r1	# player_ship.298_354->x, _355
# spaceinvaders.c:2875: 							if (player_ship->x > 224)
	ld.w	r0, [player_ship]	# player_ship.299_356, player_ship
	ld.s	r0, [r0 + (2)]	# _357, player_ship.299_356->x
# spaceinvaders.c:2875: 							if (player_ship->x > 224)
	sex.s	r1, r0	# tmp1429, _357
	mov.w	r0, 224	# tmp1430,
	cmp.w	r1, r0	# tmp1429, tmp1430
	jses	.L526		#
# spaceinvaders.c:2876: 								player_ship->x = 224;
	ld.w	r0, [player_ship]	# player_ship.300_358, player_ship
# spaceinvaders.c:2876: 								player_ship->x = 224;
	mov.s	r1, 224	# tmp1431,
	st.s	[r0 + (2)], r1	# player_ship.300_358->x, tmp1431
# spaceinvaders.c:2878: 						break;
	j	.L526		#
.L508:
# spaceinvaders.c:2880: 						fire_bullet_if_ready();
	call	fire_bullet_if_ready		#
# spaceinvaders.c:2881: 						break;
	j	.L506		#
.L524:
# spaceinvaders.c:2884: 			}
	nop	
	j	.L506		#
.L525:
# spaceinvaders.c:2870: 						break;
	nop	
	j	.L506		#
.L526:
# spaceinvaders.c:2878: 						break;
	nop	
.L506:
# spaceinvaders.c:2886: 			switch (vkp)
	ld.w	r0, [vkp]	# vkp.301_359, vkp
	mov.w	r1, 27	# tmp1432,
	cmp.w	r0, r1	# vkp.301_359, tmp1432
	jz	.L511		#
	mov.w	r1, 301	# tmp1433,
	cmp.w	r0, r1	# vkp.301_359, tmp1433
	jnz	.L502		#
# spaceinvaders.c:2889: 					toggle_play_pause();
	call	toggle_play_pause		#
# spaceinvaders.c:2890: 					break;
	j	.L502		#
.L511:
# spaceinvaders.c:2892: 					return 1;
	mov.w	r0, 1	# _397,
	j	.L412		#
.L523:
# spaceinvaders.c:2895: 		}
	nop	
.L502:
# spaceinvaders.c:2897: 		delay(delay_ms);
	ld.w	r0, [delay_ms]	# delay_ms.302_360, delay_ms
	mov.w	r1, sp	# tmp1434,
	st.w	[r1], r0	#, delay_ms.302_360
	call	delay		#
# spaceinvaders.c:2346: 		if(game_state == PLAY)
	j	.L512		#
.L412:
# spaceinvaders.c:2899: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	switch_to_play_screen, .-switch_to_play_screen
	.p2align	1
	.global	main
	.type	main, @function
main:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# spaceinvaders.c:2904: 	init_stdio();
	call	init_stdio		#
# spaceinvaders.c:2905: 	video_mode(1);
	mov.w	r1, sp	# tmp29,
	mov.w	r0, 1	# tmp30,
	st.w	[r1], r0	#, tmp30
	call	video_mode		#
# spaceinvaders.c:2907: 	cls(0);	
	mov.w	r1, sp	# tmp31,
	xor.w	r0, r0	# tmp32
	st.w	[r1], r0	#, tmp32
	call	cls		#
# spaceinvaders.c:2912: 	copy_player_bullet_def();
	call	copy_player_bullet_def		#
# spaceinvaders.c:2913: 	int shouldExit = 0;
	xor.w	r0, r0	# tmp33
	st.w	[r13 + (-4)], r0	# shouldExit, tmp33
.L534:
# spaceinvaders.c:2916: 		switch(current_screen)
	ld.w	r0, [current_screen]	# current_screen.303_1, current_screen
	mov.w	r1, 2	# tmp34,
	cmp.w	r0, r1	# current_screen.303_1, tmp34
	jz	.L528		#
	mov.w	r1, 2	# tmp35,
	cmp.w	r0, r1	# current_screen.303_1, tmp35
	jgs	.L529		#
	xor.w	r1, r1	# tmp36
	cmp.w	r0, r1	# current_screen.303_1, tmp36
	jz	.L530		#
	mov.w	r1, 1	# tmp37,
	cmp.w	r0, r1	# current_screen.303_1, tmp37
	jz	.L531		#
	j	.L529		#
.L530:
# spaceinvaders.c:2919: 				shouldExit = switch_to_main_menu_screen();
	call	switch_to_main_menu_screen		#
	st.w	[r13 + (-4)], r0	# shouldExit,
# spaceinvaders.c:2920: 				break;
	j	.L529		#
.L531:
# spaceinvaders.c:2922: 				shouldExit = switch_to_get_ready_screen();
	call	switch_to_get_ready_screen		#
	st.w	[r13 + (-4)], r0	# shouldExit,
# spaceinvaders.c:2923: 				break;
	j	.L529		#
.L528:
# spaceinvaders.c:2925: 				shouldExit = switch_to_play_screen();
	call	switch_to_play_screen		#
	st.w	[r13 + (-4)], r0	# shouldExit,
# spaceinvaders.c:2926: 				break;	
	nop	
.L529:
# spaceinvaders.c:2928: 		if (shouldExit == 1)
	ld.w	r1, [r13 + (-4)]	# tmp38, shouldExit
	mov.w	r0, 1	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L537		#
# spaceinvaders.c:2916: 		switch(current_screen)
	j	.L534		#
.L537:
# spaceinvaders.c:2929: 			break;
	nop	
# spaceinvaders.c:2931: 	cls(0);
	mov.w	r1, sp	# tmp40,
	xor.w	r0, r0	# tmp41
	st.w	[r1], r0	#, tmp41
	call	cls		#
# spaceinvaders.c:2932: 	return 0;
	xor.w	r0, r0	# _19
# spaceinvaders.c:2933: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
