	.file	"spaceinvaders.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL spaceinvaders.c -mel -auxbase-strip spaceinvaders.s
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
	.global	delay_millis
	.type	delay_millis, @function
delay_millis:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# spaceinvaders.c:582: 	int t0 = get_millis();
	call	get_millis		#
	st.w	[r13 + (-4)], r0	# t0,
# spaceinvaders.c:583: 	while ((get_millis() - t0) < d ) {
	nop	
.L2:
# spaceinvaders.c:583: 	while ((get_millis() - t0) < d ) {
	call	get_millis		#
# spaceinvaders.c:583: 	while ((get_millis() - t0) < d ) {
	ld.w	r1, [r13 + (-4)]	# tmp28, t0
	sub.w	r0, r1 #222	# _2, tmp28
# spaceinvaders.c:583: 	while ((get_millis() - t0) < d ) {
	ld.w	r1, [r13 + (8)]	# tmp29, d
	cmp.w	r1, r0	# tmp29, _2
	jgs	.L2		#
# spaceinvaders.c:586: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	delay_millis, .-delay_millis
	.p2align	1
	.global	copy_player_bullet_def
	.type	copy_player_bullet_def, @function
copy_player_bullet_def:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 8 #111	#,
# spaceinvaders.c:591: 	uint16_t * p = (uint16_t *)player_bullet_addr;
	ld.w	r0, [player_bullet_addr]	# player_bullet_addr.0_1, player_bullet_addr
# spaceinvaders.c:591: 	uint16_t * p = (uint16_t *)player_bullet_addr;
	st.w	[r13 + (-4)], r0	# p, player_bullet_addr.0_1
# spaceinvaders.c:593: 	for (int i = 0; i < 4*2; i++)
	xor.w	r0, r0	# tmp28
	st.w	[r13 + (-8)], r0	# i, tmp28
# spaceinvaders.c:593: 	for (int i = 0; i < 4*2; i++)
	j	.L4		#
.L5:
# spaceinvaders.c:595: 		*p = player_bullet[i];
	ld.w	r0, [r13 + (-8)]	# tmp29, i
	add.w	r0, r0 #222	# tmp30, tmp29
	mov.w	r1, player_bullet	# tmp32,
	add.w	r0, r1 #222	# tmp31, tmp32
	ld.s	r1, [r0]	# _2, player_bullet
# spaceinvaders.c:595: 		*p = player_bullet[i];
	ld.w	r0, [r13 + (-4)]	# tmp33, p
	st.s	[r0], r1	# *p_3, _2
# spaceinvaders.c:596: 		p+=2;
	ld.w	r0, [r13 + (-4)]	# tmp35, p
	add.w	r0, 4 #111	# tmp34,
	st.w	[r13 + (-4)], r0	# p, tmp34
# spaceinvaders.c:593: 	for (int i = 0; i < 4*2; i++)
	ld.w	r0, [r13 + (-8)]	# tmp37, i
	add.w	r0, 1 #111	# tmp36,
	st.w	[r13 + (-8)], r0	# i, tmp36
.L4:
# spaceinvaders.c:593: 	for (int i = 0; i < 4*2; i++)
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 7	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jses	.L5		#
# spaceinvaders.c:598: }
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
# spaceinvaders.c:603: 	uint16_t * p = (uint16_t *)sprite_addr;
	ld.w	r0, [sprite_addr]	# sprite_addr.1_1, sprite_addr
# spaceinvaders.c:603: 	uint16_t * p = (uint16_t *)sprite_addr;
	st.w	[r13 + (-4)], r0	# p, sprite_addr.1_1
# spaceinvaders.c:605: 	for (int i = 0; i < 8*4*2; i++)
	xor.w	r0, r0	# tmp28
	st.w	[r13 + (-8)], r0	# i, tmp28
# spaceinvaders.c:605: 	for (int i = 0; i < 8*4*2; i++)
	j	.L7		#
.L8:
# spaceinvaders.c:607: 		*p = ship[i];
	ld.w	r0, [r13 + (-8)]	# tmp29, i
	add.w	r0, r0 #222	# tmp30, tmp29
	mov.w	r1, ship	# tmp32,
	add.w	r0, r1 #222	# tmp31, tmp32
	ld.s	r1, [r0]	# _2, ship
# spaceinvaders.c:607: 		*p = ship[i];
	ld.w	r0, [r13 + (-4)]	# tmp33, p
	st.s	[r0], r1	# *p_3, _2
# spaceinvaders.c:608: 		p++;
	ld.w	r0, [r13 + (-4)]	# tmp35, p
	add.w	r0, 2 #111	# tmp34,
	st.w	[r13 + (-4)], r0	# p, tmp34
# spaceinvaders.c:605: 	for (int i = 0; i < 8*4*2; i++)
	ld.w	r0, [r13 + (-8)]	# tmp37, i
	add.w	r0, 1 #111	# tmp36,
	st.w	[r13 + (-8)], r0	# i, tmp36
.L7:
# spaceinvaders.c:605: 	for (int i = 0; i < 8*4*2; i++)
	ld.w	r1, [r13 + (-8)]	# tmp38, i
	mov.w	r0, 63	# tmp39,
	cmp.w	r1, r0	# tmp38, tmp39
	jses	.L8		#
# spaceinvaders.c:610: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	copy_player_ship, .-copy_player_ship
	.p2align	1
	.global	set_uint16_t_color
	.type	set_uint16_t_color, @function
set_uint16_t_color:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp44, s
	ld.w	r0, [r13 + (12)]	# tmp46, color
	st.s	[r13 + (-8)], r1	# s, tmp45
	st.s	[r13 + (-12)], r0	# color, tmp47
# spaceinvaders.c:616: 	uint16_t new_color = 0x0000;
	xor.w	r0, r0	# tmp48
	st.s	[r13 + (-2)], r0	# new_color, tmp48
# spaceinvaders.c:617: 	switch(color)
	ld.s	r0, [r13 + (-12)]	# _1, color
	mov.w	r1, 15	# tmp49,
	cmp.w	r0, r1	# _1, tmp49
	jz	.L10		#
	mov.w	r1, 15	# tmp50,
	cmp.w	r0, r1	# _1, tmp50
	jgs	.L11		#
	mov.w	r1, 14	# tmp51,
	cmp.w	r0, r1	# _1, tmp51
	jz	.L12		#
	mov.w	r1, 14	# tmp52,
	cmp.w	r0, r1	# _1, tmp52
	jgs	.L11		#
	mov.w	r1, 10	# tmp53,
	cmp.w	r0, r1	# _1, tmp53
	jz	.L13		#
	mov.w	r1, 10	# tmp54,
	cmp.w	r0, r1	# _1, tmp54
	jgs	.L11		#
	mov.w	r1, 9	# tmp55,
	cmp.w	r0, r1	# _1, tmp55
	jz	.L14		#
	mov.w	r1, 9	# tmp56,
	cmp.w	r0, r1	# _1, tmp56
	jgs	.L11		#
	mov.w	r1, 5	# tmp57,
	cmp.w	r0, r1	# _1, tmp57
	jz	.L15		#
	mov.w	r1, 5	# tmp58,
	cmp.w	r0, r1	# _1, tmp58
	jgs	.L11		#
	mov.w	r1, 3	# tmp59,
	cmp.w	r0, r1	# _1, tmp59
	jz	.L16		#
	mov.w	r1, 4	# tmp60,
	cmp.w	r0, r1	# _1, tmp60
	jz	.L17		#
	j	.L11		#
.L14:
# spaceinvaders.c:620: 			new_color = 0x9000;
	mov.s	r0, -28672	# tmp61,
	st.s	[r13 + (-2)], r0	# new_color, tmp61
# spaceinvaders.c:621: 			break;
	j	.L18		#
.L13:
# spaceinvaders.c:623: 			new_color = 0xA000;
	mov.s	r0, -24576	# tmp62,
	st.s	[r13 + (-2)], r0	# new_color, tmp62
# spaceinvaders.c:624: 			break;
	j	.L18		#
.L16:
# spaceinvaders.c:626: 			new_color = 0x3000;
	mov.s	r0, 12288	# tmp63,
	st.s	[r13 + (-2)], r0	# new_color, tmp63
# spaceinvaders.c:627: 			break;
	j	.L18		#
.L17:
# spaceinvaders.c:629: 			new_color = 0x4000;
	mov.s	r0, 16384	# tmp64,
	st.s	[r13 + (-2)], r0	# new_color, tmp64
# spaceinvaders.c:630: 			break;
	j	.L18		#
.L15:
# spaceinvaders.c:632: 			new_color = 0x5000;
	mov.s	r0, 20480	# tmp65,
	st.s	[r13 + (-2)], r0	# new_color, tmp65
# spaceinvaders.c:633: 			break;
	j	.L18		#
.L12:
# spaceinvaders.c:635: 			new_color = 0xE000;
	mov.s	r0, -8192	# tmp66,
	st.s	[r13 + (-2)], r0	# new_color, tmp66
# spaceinvaders.c:636: 			break;
	j	.L18		#
.L10:
# spaceinvaders.c:638: 			new_color = 0xF000;
	mov.s	r0, -4096	# tmp67,
	st.s	[r13 + (-2)], r0	# new_color, tmp67
# spaceinvaders.c:639: 			break;
	j	.L18		#
.L11:
# spaceinvaders.c:641: 			new_color = 0x0000;
	xor.w	r0, r0	# tmp68
	st.s	[r13 + (-2)], r0	# new_color, tmp68
# spaceinvaders.c:642: 			break;
	nop	
.L18:
# spaceinvaders.c:660: 	uint16_t s_new = 0x0000;
	xor.w	r0, r0	# tmp69
	st.s	[r13 + (-4)], r0	# s_new, tmp69
# spaceinvaders.c:661: 	if((s & 0x0FFF) != s)
	ld.s	r1, [r13 + (-8)]	# _2, s
	mov.w	r0, 4095	# tmp70,
	and.w	r1, r0	# _3, tmp70
# spaceinvaders.c:661: 	if((s & 0x0FFF) != s)
	ld.s	r0, [r13 + (-8)]	# _4, s
# spaceinvaders.c:661: 	if((s & 0x0FFF) != s)
	cmp.w	r1, r0	# _3, _4
	jz	.L19		#
# spaceinvaders.c:663: 		s_new |= new_color;		
	ld.s	r0, [r13 + (-4)]	# tmp71, s_new
	ld.s	r1, [r13 + (-2)]	# tmp72, new_color
	or.w	r0, r1	# tmp73, tmp72
	st.s	[r13 + (-4)], r0	# s_new, tmp74
.L19:
# spaceinvaders.c:665: 	if((s & 0xF0FF) != s)
	ld.s	r1, [r13 + (-8)]	# _5, s
	mov.w	r0, 61695	# tmp75,
	and.w	r1, r0	# _6, tmp75
# spaceinvaders.c:665: 	if((s & 0xF0FF) != s)
	ld.s	r0, [r13 + (-8)]	# _7, s
# spaceinvaders.c:665: 	if((s & 0xF0FF) != s)
	cmp.w	r1, r0	# _6, _7
	jz	.L20		#
# spaceinvaders.c:667: 		s_new |= new_color >> 4;		
	ld.s	r0, [r13 + (-2)]	# tmp76, new_color
	mov.w	r1, 4	# tmp78,
	shr.w	r0, r1	# tmp77, tmp78
	mov.w	r1, r0	# _8, tmp77
	ld.s	r0, [r13 + (-4)]	# tmp79, s_new
	or.w	r0, r1	# tmp80, _8
	st.s	[r13 + (-4)], r0	# s_new, tmp81
.L20:
# spaceinvaders.c:669: 	if((s & 0xFF0F) != s)
	ld.s	r1, [r13 + (-8)]	# _9, s
	mov.w	r0, 65295	# tmp82,
	and.w	r1, r0	# _10, tmp82
# spaceinvaders.c:669: 	if((s & 0xFF0F) != s)
	ld.s	r0, [r13 + (-8)]	# _11, s
# spaceinvaders.c:669: 	if((s & 0xFF0F) != s)
	cmp.w	r1, r0	# _10, _11
	jz	.L21		#
# spaceinvaders.c:671: 		s_new |= new_color >> 8;		
	ld.s	r0, [r13 + (-2)]	# tmp83, new_color
	mov.w	r1, 8	# tmp85,
	shr.w	r0, r1	# tmp84, tmp85
	mov.w	r1, r0	# _12, tmp84
	ld.s	r0, [r13 + (-4)]	# tmp86, s_new
	or.w	r0, r1	# tmp87, _12
	st.s	[r13 + (-4)], r0	# s_new, tmp88
.L21:
# spaceinvaders.c:673: 	if((s & 0xFFF0) != s)
	ld.s	r1, [r13 + (-8)]	# _13, s
	mov.w	r0, 65520	# tmp89,
	and.w	r1, r0	# _14, tmp89
# spaceinvaders.c:673: 	if((s & 0xFFF0) != s)
	ld.s	r0, [r13 + (-8)]	# _15, s
# spaceinvaders.c:673: 	if((s & 0xFFF0) != s)
	cmp.w	r1, r0	# _14, _15
	jz	.L22		#
# spaceinvaders.c:675: 		s_new |= new_color >> 12;		
	ld.s	r0, [r13 + (-2)]	# tmp90, new_color
	mov.w	r1, 12	# tmp92,
	shr.w	r0, r1	# tmp91, tmp92
	mov.w	r1, r0	# _16, tmp91
	ld.s	r0, [r13 + (-4)]	# tmp93, s_new
	or.w	r0, r1	# tmp94, _16
	st.s	[r13 + (-4)], r0	# s_new, tmp95
.L22:
# spaceinvaders.c:677: 	return s_new;
	ld.s	r0, [r13 + (-4)]	# _38, s_new
# spaceinvaders.c:678: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	set_uint16_t_color, .-set_uint16_t_color
	.p2align	1
	.global	change_uint16_t_color_depending_on_threshold
	.type	change_uint16_t_color_depending_on_threshold, @function
change_uint16_t_color_depending_on_threshold:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp39, s
	st.s	[r13 + (-4)], r0	# s, tmp40
# spaceinvaders.c:690: 	if(s_y >= CYAN_THRESHOLD_2)
	ld.w	r1, [r13 + (12)]	# tmp41, s_y
	mov.w	r0, 228	# tmp42,
	cmp.w	r1, r0	# tmp41, tmp42
	jses	.L25		#
# spaceinvaders.c:691: 		return set_uint16_t_color(s, CYAN);
	ld.s	r1, [r13 + (-4)]	# _1, s
	mov.w	r0, sp	# tmp43,
	mov.w	r2, 3	# tmp44,
	st.w	[r0 + (4)], r2	#, tmp44
	st.w	[r0], r1	#, _1
	call	set_uint16_t_color		#
	j	.L26		#
.L25:
# spaceinvaders.c:692: 	else if(s_y >= RED_THRESHOLD_2)
	ld.w	r1, [r13 + (12)]	# tmp45, s_y
	mov.w	r0, 219	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jses	.L27		#
# spaceinvaders.c:693: 		return set_uint16_t_color(s, RED);
	ld.s	r1, [r13 + (-4)]	# _2, s
	mov.w	r0, sp	# tmp47,
	mov.w	r2, 4	# tmp48,
	st.w	[r0 + (4)], r2	#, tmp48
	st.w	[r0], r1	#, _2
	call	set_uint16_t_color		#
	j	.L26		#
.L27:
# spaceinvaders.c:694: 	else if(s_y >= CYAN_THRESHOLD_1)
	ld.w	r1, [r13 + (12)]	# tmp49, s_y
	mov.w	r0, 211	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jses	.L28		#
# spaceinvaders.c:695: 		return set_uint16_t_color(s, CYAN);
	ld.s	r1, [r13 + (-4)]	# _3, s
	mov.w	r0, sp	# tmp51,
	mov.w	r2, 3	# tmp52,
	st.w	[r0 + (4)], r2	#, tmp52
	st.w	[r0], r1	#, _3
	call	set_uint16_t_color		#
	j	.L26		#
.L28:
# spaceinvaders.c:696: 	else if(s_y >= RED_THRESHOLD_1)
	ld.w	r1, [r13 + (12)]	# tmp53, s_y
	mov.w	r0, 187	# tmp54,
	cmp.w	r1, r0	# tmp53, tmp54
	jses	.L29		#
# spaceinvaders.c:697: 		return set_uint16_t_color(s, RED);
	ld.s	r1, [r13 + (-4)]	# _4, s
	mov.w	r0, sp	# tmp55,
	mov.w	r2, 4	# tmp56,
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, _4
	call	set_uint16_t_color		#
	j	.L26		#
.L29:
# spaceinvaders.c:698: 	else if(s_y >= YELLOW_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp57, s_y
	mov.w	r0, 155	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jses	.L30		#
# spaceinvaders.c:699: 		return set_uint16_t_color(s, YELLOW);
	ld.s	r1, [r13 + (-4)]	# _5, s
	mov.w	r0, sp	# tmp59,
	mov.w	r2, 14	# tmp60,
	st.w	[r0 + (4)], r2	#, tmp60
	st.w	[r0], r1	#, _5
	call	set_uint16_t_color		#
	j	.L26		#
.L30:
# spaceinvaders.c:700: 	else if(s_y >= PURPLE_THRESHOLD_1)
	ld.w	r1, [r13 + (12)]	# tmp61, s_y
	mov.w	r0, 123	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jses	.L31		#
# spaceinvaders.c:701: 		return set_uint16_t_color(s, PURPLE);
	ld.s	r1, [r13 + (-4)]	# _6, s
	mov.w	r0, sp	# tmp63,
	mov.w	r2, 5	# tmp64,
	st.w	[r0 + (4)], r2	#, tmp64
	st.w	[r0], r1	#, _6
	call	set_uint16_t_color		#
	j	.L26		#
.L31:
# spaceinvaders.c:702: 	else if(s_y >= CYAN_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp65, s_y
	mov.w	r0, 91	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jses	.L32		#
# spaceinvaders.c:703: 		return set_uint16_t_color(s, CYAN);
	ld.s	r1, [r13 + (-4)]	# _7, s
	mov.w	r0, sp	# tmp67,
	mov.w	r2, 3	# tmp68,
	st.w	[r0 + (4)], r2	#, tmp68
	st.w	[r0], r1	#, _7
	call	set_uint16_t_color		#
	j	.L26		#
.L32:
# spaceinvaders.c:704: 	else if(s_y >= GREEN_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp69, s_y
	mov.w	r0, 59	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jses	.L33		#
# spaceinvaders.c:705: 		return set_uint16_t_color(s, GREEN);
	ld.s	r1, [r13 + (-4)]	# _8, s
	mov.w	r0, sp	# tmp71,
	mov.w	r2, 10	# tmp72,
	st.w	[r0 + (4)], r2	#, tmp72
	st.w	[r0], r1	#, _8
	call	set_uint16_t_color		#
	j	.L26		#
.L33:
# spaceinvaders.c:706: 	else if(s_y >= PURPLE_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp73, s_y
	mov.w	r0, 34	# tmp74,
	cmp.w	r1, r0	# tmp73, tmp74
	jses	.L34		#
# spaceinvaders.c:707: 		return set_uint16_t_color(s, PURPLE);
	ld.s	r1, [r13 + (-4)]	# _9, s
	mov.w	r0, sp	# tmp75,
	mov.w	r2, 5	# tmp76,
	st.w	[r0 + (4)], r2	#, tmp76
	st.w	[r0], r1	#, _9
	call	set_uint16_t_color		#
	j	.L26		#
.L34:
# spaceinvaders.c:708: 	else if(s_y >= RED_THRESHOLD_0)
	ld.w	r1, [r13 + (12)]	# tmp77, s_y
	mov.w	r0, 26	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jses	.L35		#
# spaceinvaders.c:709: 		return set_uint16_t_color(s, RED);
	ld.s	r1, [r13 + (-4)]	# _10, s
	mov.w	r0, sp	# tmp79,
	mov.w	r2, 4	# tmp80,
	st.w	[r0 + (4)], r2	#, tmp80
	st.w	[r0], r1	#, _10
	call	set_uint16_t_color		#
	j	.L26		#
.L35:
# spaceinvaders.c:711: 		return set_uint16_t_color(s, WHITE); 
	ld.s	r1, [r13 + (-4)]	# _11, s
	mov.w	r0, sp	# tmp81,
	mov.w	r2, 15	# tmp82,
	st.w	[r0 + (4)], r2	#, tmp82
	st.w	[r0], r1	#, _11
	call	set_uint16_t_color		#
.L26:
# spaceinvaders.c:712: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	change_uint16_t_color_depending_on_threshold, .-change_uint16_t_color_depending_on_threshold
	.p2align	1
	.global	change_sprite_color
	.type	change_sprite_color, @function
change_sprite_color:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 36 #111	#,
# spaceinvaders.c:717: 	int uint16_ts_per_row = width / 4;
	ld.w	r0, [r13 + (12)]	# tmp41, width
	xor.w	r1, r1	# tmp43
	cmp.w	r0, r1	# tmp42, tmp43
	jges	.L37		#
	add.w	r0, 3 #111	# tmp42,
.L37:
	mov.w	r1, 2	# tmp45,
	shr.w	r0, r1	# tmp44, tmp45
	st.w	[r13 + (-16)], r0	# uint16_ts_per_row, tmp44
# spaceinvaders.c:718: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp46
	st.w	[r13 + (-8)], r0	# i, tmp46
# spaceinvaders.c:718: 	for (int i = 0; i < height; i++)
	j	.L38		#
.L41:
# spaceinvaders.c:719: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	xor.w	r0, r0	# tmp47
	st.w	[r13 + (-12)], r0	# j, tmp47
# spaceinvaders.c:719: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	j	.L39		#
.L40:
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	ld.w	r0, [r13 + (-8)]	# tmp48, i
	ld.w	r1, [r13 + (-16)]	# tmp49, uint16_ts_per_row
	mul.w	r0, r1	# _1, tmp49
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	ld.w	r1, [r13 + (-12)]	# tmp50, j
	add.w	r0, r1 #222	# _2, tmp50
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	add.w	r0, r0 #222	# tmp51, _3
	mov.w	r1, r0	# _4, tmp51
	ld.w	r0, [r13 + (20)]	# tmp52, bitmap
	add.w	r0, r1 #222	# _5, _4
	ld.s	r0, [r0]	# _6, *_5
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	zex.s	r1, r0	# _7, _6
	ld.w	r2, [r13 + (8)]	# tmp53, y
	ld.w	r0, [r13 + (-8)]	# tmp54, i
	add.w	r2, r0 #222	# _8, tmp54
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	ld.w	r0, [r13 + (-8)]	# tmp55, i
	ld.w	r3, [r13 + (-16)]	# tmp56, uint16_ts_per_row
	mul.w	r0, r3	# _9, tmp56
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	ld.w	r3, [r13 + (-12)]	# tmp57, j
	add.w	r0, r3 #222	# _10, tmp57
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	add.w	r0, r0 #222	# tmp58, _11
	ld.w	r3, [r13 + (20)]	# tmp59, bitmap
	mov.w	r6, r3	# _13, tmp59
	add.w	r6, r0 #222	# _13, _12
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	mov.w	r0, sp	# tmp60,
	st.w	[r0 + (4)], r2	#, _8
	st.w	[r0], r1	#, _7
	call	change_uint16_t_color_depending_on_threshold		#
# spaceinvaders.c:720: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);	
	st.s	[r6], r0	# *_13, _14
# spaceinvaders.c:719: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r0, [r13 + (-12)]	# tmp62, j
	add.w	r0, 1 #111	# tmp61,
	st.w	[r13 + (-12)], r0	# j, tmp61
.L39:
# spaceinvaders.c:719: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r1, [r13 + (-12)]	# tmp63, j
	ld.w	r0, [r13 + (-16)]	# tmp64, uint16_ts_per_row
	cmp.w	r1, r0	# tmp63, tmp64
	jss	.L40		#
# spaceinvaders.c:718: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-8)]	# tmp66, i
	add.w	r0, 1 #111	# tmp65,
	st.w	[r13 + (-8)], r0	# i, tmp65
.L38:
# spaceinvaders.c:718: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-8)]	# tmp67, i
	ld.w	r0, [r13 + (16)]	# tmp68, height
	cmp.w	r1, r0	# tmp67, tmp68
	jss	.L41		#
# spaceinvaders.c:721: }
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
# spaceinvaders.c:748: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp123, y
	mov.w	r0, r1	# tmp124, tmp123
	mov.w	r2, 2	# tmp126,
	shl.w	r0, r2	# tmp125, tmp126
	add.w	r0, r1 #222	# tmp124, tmp123
	mov.w	r1, 5	# tmp128,
	shl.w	r0, r1	# tmp127, tmp128
	mov.w	r1, r0	# _1, tmp124
# spaceinvaders.c:748: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp129,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp129
# spaceinvaders.c:748: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp130, x
	mov.w	r3, 31	# tmp132,
	mov.w	r1, r0	# tmp131, tmp130
	shr.w	r1, r3	# tmp131, tmp132
	mov.w	r3, r1	# tmp133, tmp131
	add.w	r3, r0 #222	# tmp133, tmp130
	mov.w	r1, 1	# tmp135,
	mov.w	r0, r3	# tmp134, tmp133
	shr.w	r0, r1	# tmp134, tmp135
	mov.w	r1, r0	# _3, tmp134
# spaceinvaders.c:748: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:748: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-20)], r0	# p1, _4
# spaceinvaders.c:750: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp136
	st.w	[r13 + (-8)], r0	# i, tmp136
# spaceinvaders.c:750: 	for (int i = 0; i < height; i++)
	j	.L43		#
.L53:
# spaceinvaders.c:764: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-8)]	# i.2_5, i
	mov.w	r0, r1	# tmp137, i.2_5
	mov.w	r2, 2	# tmp139,
	shl.w	r0, r2	# tmp138, tmp139
	add.w	r0, r1 #222	# tmp137, i.2_5
	mov.w	r1, 5	# tmp141,
	shl.w	r0, r1	# tmp140, tmp141
	mov.w	r1, r0	# _6, tmp137
# spaceinvaders.c:764: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-20)]	# tmp143, p1
	add.w	r0, r1 #222	# tmp142, _6
	st.w	[r13 + (-12)], r0	# p2, tmp142
# spaceinvaders.c:772: 		int uint16_ts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp145, width
	xor.w	r1, r1	# tmp147
	cmp.w	r0, r1	# tmp146, tmp147
	jges	.L44		#
	add.w	r0, 3 #111	# tmp146,
.L44:
	mov.w	r1, 2	# tmp149,
	shr.w	r0, r1	# tmp148, tmp149
	st.w	[r13 + (-24)], r0	# uint16_ts_per_row, tmp148
# spaceinvaders.c:774: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	xor.w	r0, r0	# tmp150
	st.w	[r13 + (-16)], r0	# j, tmp150
# spaceinvaders.c:774: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	j	.L45		#
.L52:
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp151, i
	ld.w	r1, [r13 + (-24)]	# tmp152, uint16_ts_per_row
	mul.w	r0, r1	# _7, tmp152
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r1, [r13 + (-16)]	# tmp153, j
	add.w	r0, r1 #222	# _8, tmp153
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp154, _9
	mov.w	r1, r0	# _10, tmp154
	ld.w	r0, [r13 + (24)]	# tmp155, bitmap
	add.w	r0, r1 #222	# _11, _10
	ld.s	r0, [r0]	# _12, *_11
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	zex.s	r1, r0	# _13, _12
	ld.w	r2, [r13 + (12)]	# tmp156, y
	ld.w	r0, [r13 + (-8)]	# tmp157, i
	add.w	r2, r0 #222	# _14, tmp157
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp158, i
	ld.w	r3, [r13 + (-24)]	# tmp159, uint16_ts_per_row
	mul.w	r0, r3	# _15, tmp159
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r3, [r13 + (-16)]	# tmp160, j
	add.w	r0, r3 #222	# _16, tmp160
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp161, _17
	ld.w	r3, [r13 + (24)]	# tmp162, bitmap
	mov.w	r6, r3	# _19, tmp162
	add.w	r6, r0 #222	# _19, _18
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	mov.w	r0, sp	# tmp163,
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _13
	call	change_uint16_t_color_depending_on_threshold		#
# spaceinvaders.c:776: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	st.s	[r6], r0	# *_19, _20
# spaceinvaders.c:803: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp164, x
	mov.w	r1, -2147483645	# tmp166,
	and.w	r0, r1	# tmp165, tmp166
	xor.w	r1, r1	# tmp167
	cmp.w	r0, r1	# tmp165, tmp167
	jges	.L46		#
	add.w	r0, -1 #111	# tmp165,
	mov.w	r1, -4	# tmp168,
	or.w	r0, r1	# tmp165, tmp168
	add.w	r0, 1 #111	# tmp165,
.L46:
# spaceinvaders.c:803: 			switch (x % 4)
	mov.w	r1, 3	# tmp169,
	cmp.w	r0, r1	# _21, tmp169
	jz	.L47		#
	mov.w	r1, 3	# tmp170,
	cmp.w	r0, r1	# _21, tmp170
	jgs	.L48		#
	mov.w	r1, 2	# tmp171,
	cmp.w	r0, r1	# _21, tmp171
	jz	.L49		#
	mov.w	r1, 2	# tmp172,
	cmp.w	r0, r1	# _21, tmp172
	jgs	.L48		#
	xor.w	r1, r1	# tmp173
	cmp.w	r0, r1	# _21, tmp173
	jz	.L50		#
	mov.w	r1, 1	# tmp174,
	cmp.w	r0, r1	# _21, tmp174
	jz	.L51		#
	j	.L48		#
.L50:
# spaceinvaders.c:806: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	ld.w	r0, [r13 + (-12)]	# tmp175, p2
	ld.s	r2, [r0]	# _22, *p2_98
# spaceinvaders.c:806: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	ld.w	r0, [r13 + (-8)]	# tmp176, i
	ld.w	r1, [r13 + (-24)]	# tmp177, uint16_ts_per_row
	mul.w	r0, r1	# _23, tmp177
# spaceinvaders.c:806: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	ld.w	r1, [r13 + (-16)]	# tmp178, j
	add.w	r0, r1 #222	# _24, tmp178
# spaceinvaders.c:806: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	add.w	r0, r0 #222	# tmp179, _25
	mov.w	r1, r0	# _26, tmp179
	ld.w	r0, [r13 + (24)]	# tmp180, bitmap
	add.w	r0, r1 #222	# _27, _26
	ld.s	r1, [r0]	# _28, *_27
# spaceinvaders.c:806: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	mov.w	r0, r2	# tmp181,
	or.w	r0, r1	# tmp181, _28
	mov.w	r1, r0	# _29, tmp181
	ld.w	r0, [r13 + (-12)]	# tmp182, p2
	st.s	[r0], r1	# *p2_98, _29
# spaceinvaders.c:807: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp184, p2
	add.w	r0, 2 #111	# tmp183,
	st.w	[r13 + (-12)], r0	# p2, tmp183
# spaceinvaders.c:808: 					break;
	j	.L48		#
.L51:
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-12)]	# tmp185, p2
	ld.s	r2, [r0]	# _30, *p2_98
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-8)]	# tmp186, i
	ld.w	r1, [r13 + (-24)]	# tmp187, uint16_ts_per_row
	mul.w	r0, r1	# _31, tmp187
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	ld.w	r1, [r13 + (-16)]	# tmp188, j
	add.w	r0, r1 #222	# _32, tmp188
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	add.w	r0, r0 #222	# tmp189, _33
	mov.w	r1, r0	# _34, tmp189
	ld.w	r0, [r13 + (24)]	# tmp190, bitmap
	add.w	r0, r1 #222	# _35, _34
	ld.s	r0, [r0]	# _36, *_35
# spaceinvaders.c:810: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	zex.s	r0, r0	# tmp191, _36
	mov.w	r1, 4	# tmp193,
	shr.w	r0, r1	# tmp192, tmp193
	mov.w	r1, r0	# _37, tmp192
	mov.w	r0, r2	# tmp194,
	or.w	r0, r1	# tmp194, _37
	st.s	[r13 + (-26)], r0	# first, tmp195
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.w	r0, [r13 + (-12)]	# tmp196, p2
	add.w	r0, 2 #111	# _38,
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.s	r0, [r0]	# _39, *_38
	mov.w	r2, r0	# _40, _39
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.w	r0, [r13 + (-8)]	# tmp197, i
	ld.w	r1, [r13 + (-24)]	# tmp198, uint16_ts_per_row
	mul.w	r0, r1	# _41, tmp198
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.w	r1, [r13 + (-16)]	# tmp199, j
	add.w	r0, r1 #222	# _42, tmp199
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	add.w	r0, r0 #222	# tmp200, _43
	mov.w	r1, r0	# _44, tmp200
	ld.w	r0, [r13 + (24)]	# tmp201, bitmap
	add.w	r0, r1 #222	# _45, _44
	ld.s	r0, [r0]	# _46, *_45
	zex.s	r0, r0	# _47, _46
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	mov.w	r1, 12	# tmp202,
	shl.w	r0, r1	# _48, tmp202
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	mov.w	r1, r0	# _49, _48
	mov.w	r0, r2	# tmp203,
	or.w	r0, r1	# tmp203, _49
# spaceinvaders.c:811: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	st.s	[r13 + (-28)], r0	# second, _50
# spaceinvaders.c:812: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp204, p2
	ld.s	r1, [r13 + (-26)]	# tmp205, first
	st.s	[r0], r1	# *p2_98, tmp205
# spaceinvaders.c:813: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp206, p2
	add.w	r0, 2 #111	# _51,
# spaceinvaders.c:813: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp207, second
	st.s	[r0], r1	# *_51, tmp207
# spaceinvaders.c:814: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp209, p2
	add.w	r0, 2 #111	# tmp208,
	st.w	[r13 + (-12)], r0	# p2, tmp208
# spaceinvaders.c:815: 					break;
	j	.L48		#
.L49:
# spaceinvaders.c:817: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-12)]	# tmp210, p2
	ld.s	r2, [r0]	# _52, *p2_98
# spaceinvaders.c:817: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-8)]	# tmp211, i
	ld.w	r1, [r13 + (-24)]	# tmp212, uint16_ts_per_row
	mul.w	r0, r1	# _53, tmp212
# spaceinvaders.c:817: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	ld.w	r1, [r13 + (-16)]	# tmp213, j
	add.w	r0, r1 #222	# _54, tmp213
# spaceinvaders.c:817: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	add.w	r0, r0 #222	# tmp214, _55
	mov.w	r1, r0	# _56, tmp214
	ld.w	r0, [r13 + (24)]	# tmp215, bitmap
	add.w	r0, r1 #222	# _57, _56
	ld.s	r0, [r0]	# _58, *_57
# spaceinvaders.c:817: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	zex.s	r0, r0	# tmp216, _58
	mov.w	r1, 8	# tmp218,
	shr.w	r0, r1	# tmp217, tmp218
	mov.w	r1, r0	# _59, tmp217
	mov.w	r0, r2	# tmp219,
	or.w	r0, r1	# tmp219, _59
	st.s	[r13 + (-26)], r0	# first, tmp220
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.w	r0, [r13 + (-12)]	# tmp221, p2
	add.w	r0, 2 #111	# _60,
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.s	r0, [r0]	# _61, *_60
	mov.w	r2, r0	# _62, _61
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.w	r0, [r13 + (-8)]	# tmp222, i
	ld.w	r1, [r13 + (-24)]	# tmp223, uint16_ts_per_row
	mul.w	r0, r1	# _63, tmp223
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.w	r1, [r13 + (-16)]	# tmp224, j
	add.w	r0, r1 #222	# _64, tmp224
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	add.w	r0, r0 #222	# tmp225, _65
	mov.w	r1, r0	# _66, tmp225
	ld.w	r0, [r13 + (24)]	# tmp226, bitmap
	add.w	r0, r1 #222	# _67, _66
	ld.s	r0, [r0]	# _68, *_67
	zex.s	r0, r0	# _69, _68
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	mov.w	r1, 8	# tmp227,
	shl.w	r0, r1	# _70, tmp227
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	mov.w	r1, r0	# _71, _70
	mov.w	r0, r2	# tmp228,
	or.w	r0, r1	# tmp228, _71
# spaceinvaders.c:818: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	st.s	[r13 + (-28)], r0	# second, _72
# spaceinvaders.c:819: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp229, p2
	ld.s	r1, [r13 + (-26)]	# tmp230, first
	st.s	[r0], r1	# *p2_98, tmp230
# spaceinvaders.c:820: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp231, p2
	add.w	r0, 2 #111	# _73,
# spaceinvaders.c:820: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp232, second
	st.s	[r0], r1	# *_73, tmp232
# spaceinvaders.c:821: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp234, p2
	add.w	r0, 2 #111	# tmp233,
	st.w	[r13 + (-12)], r0	# p2, tmp233
# spaceinvaders.c:822: 					break;
	j	.L48		#
.L47:
# spaceinvaders.c:824: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-12)]	# tmp235, p2
	ld.s	r2, [r0]	# _74, *p2_98
# spaceinvaders.c:824: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-8)]	# tmp236, i
	ld.w	r1, [r13 + (-24)]	# tmp237, uint16_ts_per_row
	mul.w	r0, r1	# _75, tmp237
# spaceinvaders.c:824: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	ld.w	r1, [r13 + (-16)]	# tmp238, j
	add.w	r0, r1 #222	# _76, tmp238
# spaceinvaders.c:824: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	add.w	r0, r0 #222	# tmp239, _77
	mov.w	r1, r0	# _78, tmp239
	ld.w	r0, [r13 + (24)]	# tmp240, bitmap
	add.w	r0, r1 #222	# _79, _78
	ld.s	r0, [r0]	# _80, *_79
# spaceinvaders.c:824: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	zex.s	r0, r0	# tmp241, _80
	mov.w	r1, 12	# tmp243,
	shr.w	r0, r1	# tmp242, tmp243
	mov.w	r1, r0	# _81, tmp242
	mov.w	r0, r2	# tmp244,
	or.w	r0, r1	# tmp244, _81
	st.s	[r13 + (-26)], r0	# first, tmp245
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.w	r0, [r13 + (-12)]	# tmp246, p2
	add.w	r0, 2 #111	# _82,
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.s	r0, [r0]	# _83, *_82
	mov.w	r2, r0	# _84, _83
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.w	r0, [r13 + (-8)]	# tmp247, i
	ld.w	r1, [r13 + (-24)]	# tmp248, uint16_ts_per_row
	mul.w	r0, r1	# _85, tmp248
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.w	r1, [r13 + (-16)]	# tmp249, j
	add.w	r0, r1 #222	# _86, tmp249
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	add.w	r0, r0 #222	# tmp250, _87
	mov.w	r1, r0	# _88, tmp250
	ld.w	r0, [r13 + (24)]	# tmp251, bitmap
	add.w	r0, r1 #222	# _89, _88
	ld.s	r0, [r0]	# _90, *_89
	zex.s	r0, r0	# _91, _90
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	mov.w	r1, 4	# tmp252,
	shl.w	r0, r1	# _92, tmp252
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	mov.w	r1, r0	# _93, _92
	mov.w	r0, r2	# tmp253,
	or.w	r0, r1	# tmp253, _93
# spaceinvaders.c:825: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	st.s	[r13 + (-28)], r0	# second, _94
# spaceinvaders.c:826: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp254, p2
	ld.s	r1, [r13 + (-26)]	# tmp255, first
	st.s	[r0], r1	# *p2_98, tmp255
# spaceinvaders.c:827: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp256, p2
	add.w	r0, 2 #111	# _95,
# spaceinvaders.c:827: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp257, second
	st.s	[r0], r1	# *_95, tmp257
# spaceinvaders.c:828: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp259, p2
	add.w	r0, 2 #111	# tmp258,
	st.w	[r13 + (-12)], r0	# p2, tmp258
# spaceinvaders.c:829: 					break;
	nop	
.L48:
# spaceinvaders.c:774: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r0, [r13 + (-16)]	# tmp261, j
	add.w	r0, 1 #111	# tmp260,
	st.w	[r13 + (-16)], r0	# j, tmp260
.L45:
# spaceinvaders.c:774: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r1, [r13 + (-16)]	# tmp262, j
	ld.w	r0, [r13 + (-24)]	# tmp263, uint16_ts_per_row
	cmp.w	r1, r0	# tmp262, tmp263
	jss	.L52		#
# spaceinvaders.c:750: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-8)]	# tmp265, i
	add.w	r0, 1 #111	# tmp264,
	st.w	[r13 + (-8)], r0	# i, tmp264
.L43:
# spaceinvaders.c:750: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-8)]	# tmp266, i
	ld.w	r0, [r13 + (20)]	# tmp267, height
	cmp.w	r1, r0	# tmp266, tmp267
	jss	.L53		#
# spaceinvaders.c:833: 	return *p1;
	ld.w	r0, [r13 + (-20)]	# tmp268, p1
	ld.s	r0, [r0]	# _109, *p1_105
# spaceinvaders.c:834: }
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
# spaceinvaders.c:843: 	int uint16_ts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp136, width
	xor.w	r1, r1	# tmp138
	cmp.w	r0, r1	# tmp137, tmp138
	jges	.L56		#
	add.w	r0, 3 #111	# tmp137,
.L56:
	mov.w	r1, 2	# tmp140,
	shr.w	r0, r1	# tmp139, tmp140
	st.w	[r13 + (-48)], r0	# uint16_ts_per_row, tmp139
# spaceinvaders.c:844: 	switch (direction)
	ld.w	r1, [r13 + (28)]	# tmp141, direction
	mov.w	r0, 3	# tmp142,
	cmp.w	r1, r0	# tmp141, tmp142
	jz	.L57		#
	ld.w	r1, [r13 + (28)]	# tmp143, direction
	mov.w	r0, 9	# tmp144,
	cmp.w	r1, r0	# tmp143, tmp144
	jz	.L58		#
	j	.L88		#
.L57:
# spaceinvaders.c:847: 			x2 = x-distance;
	ld.w	r0, [r13 + (8)]	# tmp146, x
	ld.w	r1, [r13 + (32)]	# tmp147, distance
	sub.w	r0, r1 #222	# tmp145, tmp147
	st.w	[r13 + (-8)], r0	# x2, tmp145
# spaceinvaders.c:848: 			y2 = y;
	ld.w	r0, [r13 + (12)]	# tmp148, y
	st.w	[r13 + (-12)], r0	# y2, tmp148
# spaceinvaders.c:849: 			break;
	j	.L60		#
.L58:
# spaceinvaders.c:851: 			x2 = x+distance;
	ld.w	r0, [r13 + (8)]	# tmp150, x
	ld.w	r1, [r13 + (32)]	# tmp151, distance
	add.w	r0, r1 #222	# tmp149, tmp151
	st.w	[r13 + (-8)], r0	# x2, tmp149
# spaceinvaders.c:852: 			y2 = y;
	ld.w	r0, [r13 + (12)]	# tmp152, y
	st.w	[r13 + (-12)], r0	# y2, tmp152
# spaceinvaders.c:853: 			break;
	j	.L60		#
.L88:
# spaceinvaders.c:855: 			x2 = x;
	ld.w	r0, [r13 + (8)]	# tmp153, x
	st.w	[r13 + (-8)], r0	# x2, tmp153
# spaceinvaders.c:856: 			y2 = y-8;
	ld.w	r0, [r13 + (12)]	# tmp155, y
	add.w	r0, -8 #111	# tmp154,
	st.w	[r13 + (-12)], r0	# y2, tmp154
# spaceinvaders.c:857: 			break;
	nop	
.L60:
# spaceinvaders.c:859: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp156, y
	mov.w	r0, r1	# tmp157, tmp156
	mov.w	r2, 2	# tmp159,
	shl.w	r0, r2	# tmp158, tmp159
	add.w	r0, r1 #222	# tmp157, tmp156
	mov.w	r1, 5	# tmp161,
	shl.w	r0, r1	# tmp160, tmp161
	mov.w	r1, r0	# _1, tmp157
# spaceinvaders.c:859: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp162,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp162
# spaceinvaders.c:859: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp163, x
	mov.w	r3, 31	# tmp165,
	mov.w	r1, r0	# tmp164, tmp163
	shr.w	r1, r3	# tmp164, tmp165
	mov.w	r3, r1	# tmp166, tmp164
	add.w	r3, r0 #222	# tmp166, tmp163
	mov.w	r1, 1	# tmp168,
	mov.w	r0, r3	# tmp167, tmp166
	shr.w	r0, r1	# tmp167, tmp168
	mov.w	r1, r0	# _3, tmp167
# spaceinvaders.c:859: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:859: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-52)], r0	# p1, _4
# spaceinvaders.c:860: 	uint16_t *p1_previous = (uint16_t *)(1024 + y2 * 160 + x2/2);
	ld.w	r1, [r13 + (-12)]	# tmp169, y2
	mov.w	r0, r1	# tmp170, tmp169
	mov.w	r2, 2	# tmp172,
	shl.w	r0, r2	# tmp171, tmp172
	add.w	r0, r1 #222	# tmp170, tmp169
	mov.w	r1, 5	# tmp174,
	shl.w	r0, r1	# tmp173, tmp174
	mov.w	r1, r0	# _5, tmp170
# spaceinvaders.c:860: 	uint16_t *p1_previous = (uint16_t *)(1024 + y2 * 160 + x2/2);
	mov.w	r0, 1024	# tmp175,
	mov.w	r2, r1	# _6, _5
	add.w	r2, r0 #222	# _6, tmp175
# spaceinvaders.c:860: 	uint16_t *p1_previous = (uint16_t *)(1024 + y2 * 160 + x2/2);
	ld.w	r0, [r13 + (-8)]	# tmp176, x2
	mov.w	r3, 31	# tmp178,
	mov.w	r1, r0	# tmp177, tmp176
	shr.w	r1, r3	# tmp177, tmp178
	mov.w	r3, r1	# tmp179, tmp177
	add.w	r3, r0 #222	# tmp179, tmp176
	mov.w	r1, 1	# tmp181,
	mov.w	r0, r3	# tmp180, tmp179
	shr.w	r0, r1	# tmp180, tmp181
	mov.w	r1, r0	# _7, tmp180
# spaceinvaders.c:860: 	uint16_t *p1_previous = (uint16_t *)(1024 + y2 * 160 + x2/2);
	mov.w	r0, r2	# _8, _6
	add.w	r0, r1 #222	# _8, _7
# spaceinvaders.c:860: 	uint16_t *p1_previous = (uint16_t *)(1024 + y2 * 160 + x2/2);
	st.w	[r13 + (-56)], r0	# p1_previous, _8
# spaceinvaders.c:863: 	if(direction == 6 || direction == 18)
	ld.w	r1, [r13 + (28)]	# tmp182, direction
	mov.w	r0, 6	# tmp183,
	cmp.w	r1, r0	# tmp182, tmp183
	jz	.L61		#
# spaceinvaders.c:863: 	if(direction == 6 || direction == 18)
	ld.w	r1, [r13 + (28)]	# tmp184, direction
	mov.w	r0, 18	# tmp185,
	cmp.w	r1, r0	# tmp184, tmp185
	jnz	.L62		#
.L61:
# spaceinvaders.c:865: 		for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp186
	st.w	[r13 + (-16)], r0	# i, tmp186
# spaceinvaders.c:865: 		for (int i = 0; i < height; i++)
	j	.L63		#
.L69:
# spaceinvaders.c:867: 			uint16_t *p2_previous = p1_previous + (i * 80);
	ld.w	r1, [r13 + (-16)]	# i.3_9, i
	mov.w	r0, r1	# tmp187, i.3_9
	mov.w	r2, 2	# tmp189,
	shl.w	r0, r2	# tmp188, tmp189
	add.w	r0, r1 #222	# tmp187, i.3_9
	mov.w	r1, 5	# tmp191,
	shl.w	r0, r1	# tmp190, tmp191
	mov.w	r1, r0	# _10, tmp187
# spaceinvaders.c:867: 			uint16_t *p2_previous = p1_previous + (i * 80);
	ld.w	r0, [r13 + (-56)]	# tmp193, p1_previous
	add.w	r0, r1 #222	# tmp192, _10
	st.w	[r13 + (-20)], r0	# p2_previous, tmp192
# spaceinvaders.c:868: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	xor.w	r0, r0	# tmp194
	st.w	[r13 + (-24)], r0	# j, tmp194
# spaceinvaders.c:868: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	j	.L64		#
.L68:
# spaceinvaders.c:870: 				switch (x2 % 4)
	ld.w	r0, [r13 + (-8)]	# tmp195, x2
	mov.w	r1, -2147483645	# tmp197,
	and.w	r0, r1	# tmp196, tmp197
	xor.w	r1, r1	# tmp198
	cmp.w	r0, r1	# tmp196, tmp198
	jges	.L65		#
	add.w	r0, -1 #111	# tmp196,
	mov.w	r1, -4	# tmp199,
	or.w	r0, r1	# tmp196, tmp199
	add.w	r0, 1 #111	# tmp196,
.L65:
	mov.w	r1, r0	# _11, tmp196
# spaceinvaders.c:870: 				switch (x2 % 4)
	xor.w	r0, r0	# tmp200
	cmp.w	r1, r0	# _11, tmp200
	jnz	.L66		#
# spaceinvaders.c:873: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-20)]	# tmp201, p2_previous
	xor.w	r1, r1	# tmp202
	st.s	[r0], r1	# *p2_previous_112, tmp202
# spaceinvaders.c:874: 						p2_previous++;
	ld.w	r0, [r13 + (-20)]	# tmp204, p2_previous
	add.w	r0, 2 #111	# tmp203,
	st.w	[r13 + (-20)], r0	# p2_previous, tmp203
# spaceinvaders.c:875: 						break;
	j	.L67		#
.L66:
# spaceinvaders.c:877: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-20)]	# tmp205, p2_previous
	xor.w	r1, r1	# tmp206
	st.s	[r0], r1	# *p2_previous_112, tmp206
# spaceinvaders.c:878: 						*(p2_previous+1) = 0;
	ld.w	r0, [r13 + (-20)]	# tmp207, p2_previous
	add.w	r0, 2 #111	# _12,
# spaceinvaders.c:878: 						*(p2_previous+1) = 0;
	xor.w	r1, r1	# tmp208
	st.s	[r0], r1	# *_12, tmp208
# spaceinvaders.c:879: 						p2_previous++;
	ld.w	r0, [r13 + (-20)]	# tmp210, p2_previous
	add.w	r0, 2 #111	# tmp209,
	st.w	[r13 + (-20)], r0	# p2_previous, tmp209
# spaceinvaders.c:880: 						break;
	nop	
.L67:
# spaceinvaders.c:868: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r0, [r13 + (-24)]	# tmp212, j
	add.w	r0, 1 #111	# tmp211,
	st.w	[r13 + (-24)], r0	# j, tmp211
.L64:
# spaceinvaders.c:868: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r1, [r13 + (-24)]	# tmp213, j
	ld.w	r0, [r13 + (-48)]	# tmp214, uint16_ts_per_row
	cmp.w	r1, r0	# tmp213, tmp214
	jss	.L68		#
# spaceinvaders.c:865: 		for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-16)]	# tmp216, i
	add.w	r0, 1 #111	# tmp215,
	st.w	[r13 + (-16)], r0	# i, tmp215
.L63:
# spaceinvaders.c:865: 		for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-16)]	# tmp217, i
	ld.w	r0, [r13 + (20)]	# tmp218, height
	cmp.w	r1, r0	# tmp217, tmp218
	jss	.L69		#
.L62:
# spaceinvaders.c:886: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp219
	st.w	[r13 + (-28)], r0	# i, tmp219
# spaceinvaders.c:886: 	for (int i = 0; i < height; i++)
	j	.L70		#
.L86:
# spaceinvaders.c:889: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-28)]	# i.4_13, i
	mov.w	r0, r1	# tmp220, i.4_13
	mov.w	r2, 2	# tmp222,
	shl.w	r0, r2	# tmp221, tmp222
	add.w	r0, r1 #222	# tmp220, i.4_13
	mov.w	r1, 5	# tmp224,
	shl.w	r0, r1	# tmp223, tmp224
	mov.w	r1, r0	# _14, tmp220
# spaceinvaders.c:889: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-52)]	# tmp226, p1
	add.w	r0, r1 #222	# tmp225, _14
	st.w	[r13 + (-32)], r0	# p2, tmp225
# spaceinvaders.c:897: 		if(direction == 3 || direction == 9)
	ld.w	r1, [r13 + (28)]	# tmp227, direction
	mov.w	r0, 3	# tmp228,
	cmp.w	r1, r0	# tmp227, tmp228
	jz	.L71		#
# spaceinvaders.c:897: 		if(direction == 3 || direction == 9)
	ld.w	r1, [r13 + (28)]	# tmp229, direction
	mov.w	r0, 9	# tmp230,
	cmp.w	r1, r0	# tmp229, tmp230
	jnz	.L72		#
.L71:
# spaceinvaders.c:899: 			uint16_t *p2_previous = p1_previous + (i * 80);
	ld.w	r1, [r13 + (-28)]	# i.5_15, i
	mov.w	r0, r1	# tmp231, i.5_15
	mov.w	r2, 2	# tmp233,
	shl.w	r0, r2	# tmp232, tmp233
	add.w	r0, r1 #222	# tmp231, i.5_15
	mov.w	r1, 5	# tmp235,
	shl.w	r0, r1	# tmp234, tmp235
	mov.w	r1, r0	# _16, tmp231
# spaceinvaders.c:899: 			uint16_t *p2_previous = p1_previous + (i * 80);
	ld.w	r0, [r13 + (-56)]	# tmp237, p1_previous
	add.w	r0, r1 #222	# tmp236, _16
	st.w	[r13 + (-36)], r0	# p2_previous, tmp236
# spaceinvaders.c:900: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	xor.w	r0, r0	# tmp238
	st.w	[r13 + (-40)], r0	# j, tmp238
# spaceinvaders.c:900: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	j	.L73		#
.L77:
# spaceinvaders.c:902: 				switch (x2 % 4)
	ld.w	r0, [r13 + (-8)]	# tmp239, x2
	mov.w	r1, -2147483645	# tmp241,
	and.w	r0, r1	# tmp240, tmp241
	xor.w	r1, r1	# tmp242
	cmp.w	r0, r1	# tmp240, tmp242
	jges	.L74		#
	add.w	r0, -1 #111	# tmp240,
	mov.w	r1, -4	# tmp243,
	or.w	r0, r1	# tmp240, tmp243
	add.w	r0, 1 #111	# tmp240,
.L74:
	mov.w	r1, r0	# _17, tmp240
# spaceinvaders.c:902: 				switch (x2 % 4)
	xor.w	r0, r0	# tmp244
	cmp.w	r1, r0	# _17, tmp244
	jnz	.L75		#
# spaceinvaders.c:905: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-36)]	# tmp245, p2_previous
	xor.w	r1, r1	# tmp246
	st.s	[r0], r1	# *p2_previous_118, tmp246
# spaceinvaders.c:906: 						p2_previous++;
	ld.w	r0, [r13 + (-36)]	# tmp248, p2_previous
	add.w	r0, 2 #111	# tmp247,
	st.w	[r13 + (-36)], r0	# p2_previous, tmp247
# spaceinvaders.c:907: 						break;
	j	.L76		#
.L75:
# spaceinvaders.c:909: 						*p2_previous = 0;
	ld.w	r0, [r13 + (-36)]	# tmp249, p2_previous
	xor.w	r1, r1	# tmp250
	st.s	[r0], r1	# *p2_previous_118, tmp250
# spaceinvaders.c:910: 						*(p2_previous+1) = 0;
	ld.w	r0, [r13 + (-36)]	# tmp251, p2_previous
	add.w	r0, 2 #111	# _18,
# spaceinvaders.c:910: 						*(p2_previous+1) = 0;
	xor.w	r1, r1	# tmp252
	st.s	[r0], r1	# *_18, tmp252
# spaceinvaders.c:911: 						p2_previous++;
	ld.w	r0, [r13 + (-36)]	# tmp254, p2_previous
	add.w	r0, 2 #111	# tmp253,
	st.w	[r13 + (-36)], r0	# p2_previous, tmp253
# spaceinvaders.c:912: 						break;
	nop	
.L76:
# spaceinvaders.c:900: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r0, [r13 + (-40)]	# tmp256, j
	add.w	r0, 1 #111	# tmp255,
	st.w	[r13 + (-40)], r0	# j, tmp255
.L73:
# spaceinvaders.c:900: 			for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r1, [r13 + (-40)]	# tmp257, j
	ld.w	r0, [r13 + (-48)]	# tmp258, uint16_ts_per_row
	cmp.w	r1, r0	# tmp257, tmp258
	jss	.L77		#
.L72:
# spaceinvaders.c:917: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	xor.w	r0, r0	# tmp259
	st.w	[r13 + (-44)], r0	# j, tmp259
# spaceinvaders.c:917: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	j	.L78		#
.L85:
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r0, [r13 + (-28)]	# tmp260, i
	ld.w	r1, [r13 + (-48)]	# tmp261, uint16_ts_per_row
	mul.w	r0, r1	# _19, tmp261
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r1, [r13 + (-44)]	# tmp262, j
	add.w	r0, r1 #222	# _20, tmp262
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp263, _21
	mov.w	r1, r0	# _22, tmp263
	ld.w	r0, [r13 + (24)]	# tmp264, bitmap
	add.w	r0, r1 #222	# _23, _22
	ld.s	r0, [r0]	# _24, *_23
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	zex.s	r1, r0	# _25, _24
	ld.w	r2, [r13 + (12)]	# tmp265, y
	ld.w	r0, [r13 + (-28)]	# tmp266, i
	add.w	r2, r0 #222	# _26, tmp266
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r0, [r13 + (-28)]	# tmp267, i
	ld.w	r3, [r13 + (-48)]	# tmp268, uint16_ts_per_row
	mul.w	r0, r3	# _27, tmp268
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r3, [r13 + (-44)]	# tmp269, j
	add.w	r0, r3 #222	# _28, tmp269
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp270, _29
	ld.w	r3, [r13 + (24)]	# tmp271, bitmap
	mov.w	r6, r3	# _31, tmp271
	add.w	r6, r0 #222	# _31, _30
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	mov.w	r0, sp	# tmp272,
	st.w	[r0 + (4)], r2	#, _26
	st.w	[r0], r1	#, _25
	call	change_uint16_t_color_depending_on_threshold		#
# spaceinvaders.c:919: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	st.s	[r6], r0	# *_31, _32
# spaceinvaders.c:920: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp273, x
	mov.w	r1, -2147483645	# tmp275,
	and.w	r0, r1	# tmp274, tmp275
	xor.w	r1, r1	# tmp276
	cmp.w	r0, r1	# tmp274, tmp276
	jges	.L79		#
	add.w	r0, -1 #111	# tmp274,
	mov.w	r1, -4	# tmp277,
	or.w	r0, r1	# tmp274, tmp277
	add.w	r0, 1 #111	# tmp274,
.L79:
# spaceinvaders.c:920: 			switch (x % 4)
	mov.w	r1, 3	# tmp278,
	cmp.w	r0, r1	# _33, tmp278
	jz	.L80		#
	mov.w	r1, 3	# tmp279,
	cmp.w	r0, r1	# _33, tmp279
	jgs	.L81		#
	mov.w	r1, 2	# tmp280,
	cmp.w	r0, r1	# _33, tmp280
	jz	.L82		#
	mov.w	r1, 2	# tmp281,
	cmp.w	r0, r1	# _33, tmp281
	jgs	.L81		#
	xor.w	r1, r1	# tmp282
	cmp.w	r0, r1	# _33, tmp282
	jz	.L83		#
	mov.w	r1, 1	# tmp283,
	cmp.w	r0, r1	# _33, tmp283
	jz	.L84		#
	j	.L81		#
.L83:
# spaceinvaders.c:923: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	ld.w	r0, [r13 + (-32)]	# tmp284, p2
	ld.s	r2, [r0]	# _34, *p2_116
# spaceinvaders.c:923: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	ld.w	r0, [r13 + (-28)]	# tmp285, i
	ld.w	r1, [r13 + (-48)]	# tmp286, uint16_ts_per_row
	mul.w	r0, r1	# _35, tmp286
# spaceinvaders.c:923: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	ld.w	r1, [r13 + (-44)]	# tmp287, j
	add.w	r0, r1 #222	# _36, tmp287
# spaceinvaders.c:923: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	add.w	r0, r0 #222	# tmp288, _37
	mov.w	r1, r0	# _38, tmp288
	ld.w	r0, [r13 + (24)]	# tmp289, bitmap
	add.w	r0, r1 #222	# _39, _38
	ld.s	r1, [r0]	# _40, *_39
# spaceinvaders.c:923: 					*p2 = (*p2) | bitmap[i*uint16_ts_per_row + j];
	mov.w	r0, r2	# tmp290,
	or.w	r0, r1	# tmp290, _40
	mov.w	r1, r0	# _41, tmp290
	ld.w	r0, [r13 + (-32)]	# tmp291, p2
	st.s	[r0], r1	# *p2_116, _41
# spaceinvaders.c:924: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp293, p2
	add.w	r0, 2 #111	# tmp292,
	st.w	[r13 + (-32)], r0	# p2, tmp292
# spaceinvaders.c:925: 					break;
	j	.L81		#
.L84:
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-32)]	# tmp294, p2
	ld.s	r2, [r0]	# _42, *p2_116
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	ld.w	r0, [r13 + (-28)]	# tmp295, i
	ld.w	r1, [r13 + (-48)]	# tmp296, uint16_ts_per_row
	mul.w	r0, r1	# _43, tmp296
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	ld.w	r1, [r13 + (-44)]	# tmp297, j
	add.w	r0, r1 #222	# _44, tmp297
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	add.w	r0, r0 #222	# tmp298, _45
	mov.w	r1, r0	# _46, tmp298
	ld.w	r0, [r13 + (24)]	# tmp299, bitmap
	add.w	r0, r1 #222	# _47, _46
	ld.s	r0, [r0]	# _48, *_47
# spaceinvaders.c:927: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4);
	zex.s	r0, r0	# tmp300, _48
	mov.w	r1, 4	# tmp302,
	shr.w	r0, r1	# tmp301, tmp302
	mov.w	r1, r0	# _49, tmp301
	mov.w	r0, r2	# tmp303,
	or.w	r0, r1	# tmp303, _49
	st.s	[r13 + (-58)], r0	# first, tmp304
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.w	r0, [r13 + (-32)]	# tmp305, p2
	add.w	r0, 2 #111	# _50,
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.s	r0, [r0]	# _51, *_50
	mov.w	r2, r0	# _52, _51
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.w	r0, [r13 + (-28)]	# tmp306, i
	ld.w	r1, [r13 + (-48)]	# tmp307, uint16_ts_per_row
	mul.w	r0, r1	# _53, tmp307
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	ld.w	r1, [r13 + (-44)]	# tmp308, j
	add.w	r0, r1 #222	# _54, tmp308
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	add.w	r0, r0 #222	# tmp309, _55
	mov.w	r1, r0	# _56, tmp309
	ld.w	r0, [r13 + (24)]	# tmp310, bitmap
	add.w	r0, r1 #222	# _57, _56
	ld.s	r0, [r0]	# _58, *_57
	zex.s	r0, r0	# _59, _58
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	mov.w	r1, 12	# tmp311,
	shl.w	r0, r1	# _60, tmp311
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	mov.w	r1, r0	# _61, _60
	mov.w	r0, r2	# tmp312,
	or.w	r0, r1	# tmp312, _61
# spaceinvaders.c:928: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12);
	st.s	[r13 + (-60)], r0	# second, _62
# spaceinvaders.c:929: 					*p2 = first;
	ld.w	r0, [r13 + (-32)]	# tmp313, p2
	ld.s	r1, [r13 + (-58)]	# tmp314, first
	st.s	[r0], r1	# *p2_116, tmp314
# spaceinvaders.c:930: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-32)]	# tmp315, p2
	add.w	r0, 2 #111	# _63,
# spaceinvaders.c:930: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-60)]	# tmp316, second
	st.s	[r0], r1	# *_63, tmp316
# spaceinvaders.c:931: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp318, p2
	add.w	r0, 2 #111	# tmp317,
	st.w	[r13 + (-32)], r0	# p2, tmp317
# spaceinvaders.c:932: 					break;
	j	.L81		#
.L82:
# spaceinvaders.c:934: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-32)]	# tmp319, p2
	ld.s	r2, [r0]	# _64, *p2_116
# spaceinvaders.c:934: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	ld.w	r0, [r13 + (-28)]	# tmp320, i
	ld.w	r1, [r13 + (-48)]	# tmp321, uint16_ts_per_row
	mul.w	r0, r1	# _65, tmp321
# spaceinvaders.c:934: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	ld.w	r1, [r13 + (-44)]	# tmp322, j
	add.w	r0, r1 #222	# _66, tmp322
# spaceinvaders.c:934: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	add.w	r0, r0 #222	# tmp323, _67
	mov.w	r1, r0	# _68, tmp323
	ld.w	r0, [r13 + (24)]	# tmp324, bitmap
	add.w	r0, r1 #222	# _69, _68
	ld.s	r0, [r0]	# _70, *_69
# spaceinvaders.c:934: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8);
	zex.s	r0, r0	# tmp325, _70
	mov.w	r1, 8	# tmp327,
	shr.w	r0, r1	# tmp326, tmp327
	mov.w	r1, r0	# _71, tmp326
	mov.w	r0, r2	# tmp328,
	or.w	r0, r1	# tmp328, _71
	st.s	[r13 + (-58)], r0	# first, tmp329
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.w	r0, [r13 + (-32)]	# tmp330, p2
	add.w	r0, 2 #111	# _72,
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.s	r0, [r0]	# _73, *_72
	mov.w	r2, r0	# _74, _73
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.w	r0, [r13 + (-28)]	# tmp331, i
	ld.w	r1, [r13 + (-48)]	# tmp332, uint16_ts_per_row
	mul.w	r0, r1	# _75, tmp332
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	ld.w	r1, [r13 + (-44)]	# tmp333, j
	add.w	r0, r1 #222	# _76, tmp333
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	add.w	r0, r0 #222	# tmp334, _77
	mov.w	r1, r0	# _78, tmp334
	ld.w	r0, [r13 + (24)]	# tmp335, bitmap
	add.w	r0, r1 #222	# _79, _78
	ld.s	r0, [r0]	# _80, *_79
	zex.s	r0, r0	# _81, _80
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	mov.w	r1, 8	# tmp336,
	shl.w	r0, r1	# _82, tmp336
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	mov.w	r1, r0	# _83, _82
	mov.w	r0, r2	# tmp337,
	or.w	r0, r1	# tmp337, _83
# spaceinvaders.c:935: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8);
	st.s	[r13 + (-60)], r0	# second, _84
# spaceinvaders.c:936: 					*p2 = first;
	ld.w	r0, [r13 + (-32)]	# tmp338, p2
	ld.s	r1, [r13 + (-58)]	# tmp339, first
	st.s	[r0], r1	# *p2_116, tmp339
# spaceinvaders.c:937: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-32)]	# tmp340, p2
	add.w	r0, 2 #111	# _85,
# spaceinvaders.c:937: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-60)]	# tmp341, second
	st.s	[r0], r1	# *_85, tmp341
# spaceinvaders.c:938: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp343, p2
	add.w	r0, 2 #111	# tmp342,
	st.w	[r13 + (-32)], r0	# p2, tmp342
# spaceinvaders.c:939: 					break;
	j	.L81		#
.L80:
# spaceinvaders.c:941: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-32)]	# tmp344, p2
	ld.s	r2, [r0]	# _86, *p2_116
# spaceinvaders.c:941: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	ld.w	r0, [r13 + (-28)]	# tmp345, i
	ld.w	r1, [r13 + (-48)]	# tmp346, uint16_ts_per_row
	mul.w	r0, r1	# _87, tmp346
# spaceinvaders.c:941: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	ld.w	r1, [r13 + (-44)]	# tmp347, j
	add.w	r0, r1 #222	# _88, tmp347
# spaceinvaders.c:941: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	add.w	r0, r0 #222	# tmp348, _89
	mov.w	r1, r0	# _90, tmp348
	ld.w	r0, [r13 + (24)]	# tmp349, bitmap
	add.w	r0, r1 #222	# _91, _90
	ld.s	r0, [r0]	# _92, *_91
# spaceinvaders.c:941: 					first = (*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12);
	zex.s	r0, r0	# tmp350, _92
	mov.w	r1, 12	# tmp352,
	shr.w	r0, r1	# tmp351, tmp352
	mov.w	r1, r0	# _93, tmp351
	mov.w	r0, r2	# tmp353,
	or.w	r0, r1	# tmp353, _93
	st.s	[r13 + (-58)], r0	# first, tmp354
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.w	r0, [r13 + (-32)]	# tmp355, p2
	add.w	r0, 2 #111	# _94,
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.s	r0, [r0]	# _95, *_94
	mov.w	r2, r0	# _96, _95
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.w	r0, [r13 + (-28)]	# tmp356, i
	ld.w	r1, [r13 + (-48)]	# tmp357, uint16_ts_per_row
	mul.w	r0, r1	# _97, tmp357
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	ld.w	r1, [r13 + (-44)]	# tmp358, j
	add.w	r0, r1 #222	# _98, tmp358
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	add.w	r0, r0 #222	# tmp359, _99
	mov.w	r1, r0	# _100, tmp359
	ld.w	r0, [r13 + (24)]	# tmp360, bitmap
	add.w	r0, r1 #222	# _101, _100
	ld.s	r0, [r0]	# _102, *_101
	zex.s	r0, r0	# _103, _102
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	mov.w	r1, 4	# tmp361,
	shl.w	r0, r1	# _104, tmp361
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	mov.w	r1, r0	# _105, _104
	mov.w	r0, r2	# tmp362,
	or.w	r0, r1	# tmp362, _105
# spaceinvaders.c:942: 					second = (*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4);
	st.s	[r13 + (-60)], r0	# second, _106
# spaceinvaders.c:943: 					*p2 = first;
	ld.w	r0, [r13 + (-32)]	# tmp363, p2
	ld.s	r1, [r13 + (-58)]	# tmp364, first
	st.s	[r0], r1	# *p2_116, tmp364
# spaceinvaders.c:944: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-32)]	# tmp365, p2
	add.w	r0, 2 #111	# _107,
# spaceinvaders.c:944: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-60)]	# tmp366, second
	st.s	[r0], r1	# *_107, tmp366
# spaceinvaders.c:945: 					p2++;
	ld.w	r0, [r13 + (-32)]	# tmp368, p2
	add.w	r0, 2 #111	# tmp367,
	st.w	[r13 + (-32)], r0	# p2, tmp367
# spaceinvaders.c:946: 					break;
	nop	
.L81:
# spaceinvaders.c:917: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r0, [r13 + (-44)]	# tmp370, j
	add.w	r0, 1 #111	# tmp369,
	st.w	[r13 + (-44)], r0	# j, tmp369
.L78:
# spaceinvaders.c:917: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r1, [r13 + (-44)]	# tmp371, j
	ld.w	r0, [r13 + (-48)]	# tmp372, uint16_ts_per_row
	cmp.w	r1, r0	# tmp371, tmp372
	jss	.L85		#
# spaceinvaders.c:886: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-28)]	# tmp374, i
	add.w	r0, 1 #111	# tmp373,
	st.w	[r13 + (-28)], r0	# i, tmp373
.L70:
# spaceinvaders.c:886: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-28)]	# tmp375, i
	ld.w	r0, [r13 + (20)]	# tmp376, height
	cmp.w	r1, r0	# tmp375, tmp376
	jss	.L86		#
# spaceinvaders.c:950: 	return *p1;
	ld.w	r0, [r13 + (-52)]	# tmp377, p1
	ld.s	r0, [r0]	# _158, *p1_143
# spaceinvaders.c:951: }
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
# spaceinvaders.c:956: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp36, y
	mov.w	r0, r1	# tmp37, tmp36
	mov.w	r2, 2	# tmp39,
	shl.w	r0, r2	# tmp38, tmp39
	add.w	r0, r1 #222	# tmp37, tmp36
	mov.w	r1, 5	# tmp41,
	shl.w	r0, r1	# tmp40, tmp41
	mov.w	r1, r0	# _1, tmp37
# spaceinvaders.c:956: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp42,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp42
# spaceinvaders.c:956: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
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
# spaceinvaders.c:956: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:956: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-16)], r0	# p1, _4
# spaceinvaders.c:957: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp49
	st.w	[r13 + (-4)], r0	# i, tmp49
# spaceinvaders.c:957: 	for (int i = 0; i < height; i++)
	j	.L90		#
.L97:
# spaceinvaders.c:960: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-4)]	# i.6_5, i
	mov.w	r0, r1	# tmp50, i.6_5
	mov.w	r2, 2	# tmp52,
	shl.w	r0, r2	# tmp51, tmp52
	add.w	r0, r1 #222	# tmp50, i.6_5
	mov.w	r1, 5	# tmp54,
	shl.w	r0, r1	# tmp53, tmp54
	mov.w	r1, r0	# _6, tmp50
# spaceinvaders.c:960: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-16)]	# tmp56, p1
	add.w	r0, r1 #222	# tmp55, _6
	st.w	[r13 + (-8)], r0	# p2, tmp55
# spaceinvaders.c:961: 		int uint16_ts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp58, width
	xor.w	r1, r1	# tmp60
	cmp.w	r0, r1	# tmp59, tmp60
	jges	.L91		#
	add.w	r0, 3 #111	# tmp59,
.L91:
	mov.w	r1, 2	# tmp62,
	shr.w	r0, r1	# tmp61, tmp62
	st.w	[r13 + (-20)], r0	# uint16_ts_per_row, tmp61
# spaceinvaders.c:962: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	xor.w	r0, r0	# tmp63
	st.w	[r13 + (-12)], r0	# j, tmp63
# spaceinvaders.c:962: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	j	.L92		#
.L96:
# spaceinvaders.c:964: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp64, x
	mov.w	r1, -2147483645	# tmp66,
	and.w	r0, r1	# tmp65, tmp66
	xor.w	r1, r1	# tmp67
	cmp.w	r0, r1	# tmp65, tmp67
	jges	.L93		#
	add.w	r0, -1 #111	# tmp65,
	mov.w	r1, -4	# tmp68,
	or.w	r0, r1	# tmp65, tmp68
	add.w	r0, 1 #111	# tmp65,
.L93:
	mov.w	r1, r0	# _7, tmp65
# spaceinvaders.c:964: 			switch (x % 4)
	xor.w	r0, r0	# tmp69
	cmp.w	r1, r0	# _7, tmp69
	jnz	.L94		#
# spaceinvaders.c:967: 					*p2 = 0x0000;
	ld.w	r0, [r13 + (-8)]	# tmp70, p2
	xor.w	r1, r1	# tmp71
	st.s	[r0], r1	# *p2_11, tmp71
# spaceinvaders.c:968: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp73, p2
	add.w	r0, 2 #111	# tmp72,
	st.w	[r13 + (-8)], r0	# p2, tmp72
# spaceinvaders.c:969: 					break;
	j	.L95		#
.L94:
# spaceinvaders.c:971: 					*p2 = 0x0000;
	ld.w	r0, [r13 + (-8)]	# tmp74, p2
	xor.w	r1, r1	# tmp75
	st.s	[r0], r1	# *p2_11, tmp75
# spaceinvaders.c:972: 					*(p2+1) = 0x0000;
	ld.w	r0, [r13 + (-8)]	# tmp76, p2
	add.w	r0, 2 #111	# _8,
# spaceinvaders.c:972: 					*(p2+1) = 0x0000;
	xor.w	r1, r1	# tmp77
	st.s	[r0], r1	# *_8, tmp77
# spaceinvaders.c:973: 					p2++;
	ld.w	r0, [r13 + (-8)]	# tmp79, p2
	add.w	r0, 2 #111	# tmp78,
	st.w	[r13 + (-8)], r0	# p2, tmp78
# spaceinvaders.c:974: 					break;
	nop	
.L95:
# spaceinvaders.c:962: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r0, [r13 + (-12)]	# tmp81, j
	add.w	r0, 1 #111	# tmp80,
	st.w	[r13 + (-12)], r0	# j, tmp80
.L92:
# spaceinvaders.c:962: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r1, [r13 + (-12)]	# tmp82, j
	ld.w	r0, [r13 + (-20)]	# tmp83, uint16_ts_per_row
	cmp.w	r1, r0	# tmp82, tmp83
	jss	.L96		#
# spaceinvaders.c:957: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-4)]	# tmp85, i
	add.w	r0, 1 #111	# tmp84,
	st.w	[r13 + (-4)], r0	# i, tmp84
.L90:
# spaceinvaders.c:957: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-4)]	# tmp86, i
	ld.w	r0, [r13 + (20)]	# tmp87, height
	cmp.w	r1, r0	# tmp86, tmp87
	jss	.L97		#
# spaceinvaders.c:978: 	return *p1;
	ld.w	r0, [r13 + (-16)]	# tmp88, p1
	ld.s	r0, [r0]	# _22, *p1_18
# spaceinvaders.c:979: }
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
# spaceinvaders.c:985: 	uint16_t leftmost = 300;
	mov.s	r0, 300	# tmp38,
	st.s	[r13 + (-6)], r0	# leftmost, tmp38
# spaceinvaders.c:986: 	for(int i = 0; i < 11; i++)
	xor.w	r0, r0	# tmp39
	st.w	[r13 + (-4)], r0	# i, tmp39
# spaceinvaders.c:986: 	for(int i = 0; i < 11; i++)
	j	.L100		#
.L107:
# spaceinvaders.c:988: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp40, i
	mov.w	r1, 3	# tmp42,
	shl.w	r0, r1	# tmp41, tmp42
	mov.w	r1, row_1_squid+6	# tmp44,
	add.w	r0, r1 #222	# tmp43, tmp44
	ld.s	r0, [r0]	# _1, row_1_squid[i_11].alive
# spaceinvaders.c:988: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	zex.s	r1, r0	# tmp45, _1
	mov.w	r0, 2	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L101		#
# spaceinvaders.c:988: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp47, i
	mov.w	r1, 3	# tmp49,
	shl.w	r0, r1	# tmp48, tmp49
	mov.w	r1, row_1_squid+2	# tmp51,
	add.w	r0, r1 #222	# tmp50, tmp51
	ld.s	r0, [r0]	# _2, row_1_squid[i_11].x
# spaceinvaders.c:988: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
	ld.s	r1, [r13 + (-6)]	# tmp52, leftmost
	zex.s	r0, r0	# tmp53, _2
	cmp.w	r1, r0	# tmp52, tmp53
	jse	.L101		#
# spaceinvaders.c:990: 			return row_1_squid[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp54, i
	mov.w	r1, 3	# tmp56,
	shl.w	r0, r1	# tmp55, tmp56
	mov.w	r1, row_1_squid+2	# tmp58,
	add.w	r0, r1 #222	# tmp57, tmp58
	ld.s	r0, [r0]	# _12, row_1_squid[i_11].x
	j	.L99		#
.L101:
# spaceinvaders.c:992: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp59, i
	mov.w	r1, 3	# tmp61,
	shl.w	r0, r1	# tmp60, tmp61
	mov.w	r1, row_2_crab+6	# tmp63,
	add.w	r0, r1 #222	# tmp62, tmp63
	ld.s	r0, [r0]	# _3, row_2_crab[i_11].alive
# spaceinvaders.c:992: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	zex.s	r1, r0	# tmp64, _3
	mov.w	r0, 2	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jnz	.L103		#
# spaceinvaders.c:992: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp66, i
	mov.w	r1, 3	# tmp68,
	shl.w	r0, r1	# tmp67, tmp68
	mov.w	r1, row_2_crab+2	# tmp70,
	add.w	r0, r1 #222	# tmp69, tmp70
	ld.s	r0, [r0]	# _4, row_2_crab[i_11].x
# spaceinvaders.c:992: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
	ld.s	r1, [r13 + (-6)]	# tmp71, leftmost
	zex.s	r0, r0	# tmp72, _4
	cmp.w	r1, r0	# tmp71, tmp72
	jse	.L103		#
# spaceinvaders.c:994: 			return row_2_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp73, i
	mov.w	r1, 3	# tmp75,
	shl.w	r0, r1	# tmp74, tmp75
	mov.w	r1, row_2_crab+2	# tmp77,
	add.w	r0, r1 #222	# tmp76, tmp77
	ld.s	r0, [r0]	# _12, row_2_crab[i_11].x
	j	.L99		#
.L103:
# spaceinvaders.c:996: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp78, i
	mov.w	r1, 3	# tmp80,
	shl.w	r0, r1	# tmp79, tmp80
	mov.w	r1, row_3_crab+6	# tmp82,
	add.w	r0, r1 #222	# tmp81, tmp82
	ld.s	r0, [r0]	# _5, row_3_crab[i_11].alive
# spaceinvaders.c:996: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	zex.s	r1, r0	# tmp83, _5
	mov.w	r0, 2	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jnz	.L104		#
# spaceinvaders.c:996: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp85, i
	mov.w	r1, 3	# tmp87,
	shl.w	r0, r1	# tmp86, tmp87
	mov.w	r1, row_3_crab+2	# tmp89,
	add.w	r0, r1 #222	# tmp88, tmp89
	ld.s	r0, [r0]	# _6, row_3_crab[i_11].x
# spaceinvaders.c:996: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
	ld.s	r1, [r13 + (-6)]	# tmp90, leftmost
	zex.s	r0, r0	# tmp91, _6
	cmp.w	r1, r0	# tmp90, tmp91
	jse	.L104		#
# spaceinvaders.c:998: 			return row_3_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp92, i
	mov.w	r1, 3	# tmp94,
	shl.w	r0, r1	# tmp93, tmp94
	mov.w	r1, row_3_crab+2	# tmp96,
	add.w	r0, r1 #222	# tmp95, tmp96
	ld.s	r0, [r0]	# _12, row_3_crab[i_11].x
	j	.L99		#
.L104:
# spaceinvaders.c:1000: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp97, i
	mov.w	r1, 3	# tmp99,
	shl.w	r0, r1	# tmp98, tmp99
	mov.w	r1, row_4_octopus+6	# tmp101,
	add.w	r0, r1 #222	# tmp100, tmp101
	ld.s	r0, [r0]	# _7, row_4_octopus[i_11].alive
# spaceinvaders.c:1000: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	zex.s	r1, r0	# tmp102, _7
	mov.w	r0, 2	# tmp103,
	cmp.w	r1, r0	# tmp102, tmp103
	jnz	.L105		#
# spaceinvaders.c:1000: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp104, i
	mov.w	r1, 3	# tmp106,
	shl.w	r0, r1	# tmp105, tmp106
	mov.w	r1, row_4_octopus+2	# tmp108,
	add.w	r0, r1 #222	# tmp107, tmp108
	ld.s	r0, [r0]	# _8, row_4_octopus[i_11].x
# spaceinvaders.c:1000: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
	ld.s	r1, [r13 + (-6)]	# tmp109, leftmost
	zex.s	r0, r0	# tmp110, _8
	cmp.w	r1, r0	# tmp109, tmp110
	jse	.L105		#
# spaceinvaders.c:1002: 			return row_4_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp111, i
	mov.w	r1, 3	# tmp113,
	shl.w	r0, r1	# tmp112, tmp113
	mov.w	r1, row_4_octopus+2	# tmp115,
	add.w	r0, r1 #222	# tmp114, tmp115
	ld.s	r0, [r0]	# _12, row_4_octopus[i_11].x
	j	.L99		#
.L105:
# spaceinvaders.c:1004: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp116, i
	mov.w	r1, 3	# tmp118,
	shl.w	r0, r1	# tmp117, tmp118
	mov.w	r1, row_5_octopus+6	# tmp120,
	add.w	r0, r1 #222	# tmp119, tmp120
	ld.s	r0, [r0]	# _9, row_5_octopus[i_11].alive
# spaceinvaders.c:1004: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	zex.s	r1, r0	# tmp121, _9
	mov.w	r0, 2	# tmp122,
	cmp.w	r1, r0	# tmp121, tmp122
	jnz	.L106		#
# spaceinvaders.c:1004: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	ld.w	r0, [r13 + (-4)]	# tmp123, i
	mov.w	r1, 3	# tmp125,
	shl.w	r0, r1	# tmp124, tmp125
	mov.w	r1, row_5_octopus+2	# tmp127,
	add.w	r0, r1 #222	# tmp126, tmp127
	ld.s	r0, [r0]	# _10, row_5_octopus[i_11].x
# spaceinvaders.c:1004: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
	ld.s	r1, [r13 + (-6)]	# tmp128, leftmost
	zex.s	r0, r0	# tmp129, _10
	cmp.w	r1, r0	# tmp128, tmp129
	jse	.L106		#
# spaceinvaders.c:1006: 			return row_5_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp130, i
	mov.w	r1, 3	# tmp132,
	shl.w	r0, r1	# tmp131, tmp132
	mov.w	r1, row_5_octopus+2	# tmp134,
	add.w	r0, r1 #222	# tmp133, tmp134
	ld.s	r0, [r0]	# _12, row_5_octopus[i_11].x
	j	.L99		#
.L106:
# spaceinvaders.c:986: 	for(int i = 0; i < 11; i++)
	ld.w	r0, [r13 + (-4)]	# tmp136, i
	add.w	r0, 1 #111	# tmp135,
	st.w	[r13 + (-4)], r0	# i, tmp135
.L100:
# spaceinvaders.c:986: 	for(int i = 0; i < 11; i++)
	ld.w	r1, [r13 + (-4)]	# tmp137, i
	mov.w	r0, 10	# tmp138,
	cmp.w	r1, r0	# tmp137, tmp138
	jses	.L107		#
.L99:
# spaceinvaders.c:1009: }
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
# spaceinvaders.c:1014: 	uint16_t rightmost = 0;
	xor.w	r0, r0	# tmp53
	st.s	[r13 + (-6)], r0	# rightmost, tmp53
# spaceinvaders.c:1015: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp54,
	st.w	[r13 + (-4)], r0	# i, tmp54
# spaceinvaders.c:1015: 	for(int i = 10; i >= 0; i--)
	j	.L109		#
.L116:
# spaceinvaders.c:1017: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp55, i
	mov.w	r1, 3	# tmp57,
	shl.w	r0, r1	# tmp56, tmp57
	mov.w	r1, row_1_squid+6	# tmp59,
	add.w	r0, r1 #222	# tmp58, tmp59
	ld.s	r0, [r0]	# _1, row_1_squid[i_26].alive
# spaceinvaders.c:1017: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	zex.s	r1, r0	# tmp60, _1
	mov.w	r0, 2	# tmp61,
	cmp.w	r1, r0	# tmp60, tmp61
	jnz	.L110		#
# spaceinvaders.c:1017: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp62, i
	mov.w	r1, 3	# tmp64,
	shl.w	r0, r1	# tmp63, tmp64
	mov.w	r1, row_1_squid+2	# tmp66,
	add.w	r0, r1 #222	# tmp65, tmp66
	ld.s	r0, [r0]	# _2, row_1_squid[i_26].x
	zex.s	r0, r0	# _3, _2
# spaceinvaders.c:1017: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	mov.w	r1, r0	# _4, _3
	add.w	r1, 11 #111	# _4,
	ld.s	r0, [r13 + (-6)]	# _5, rightmost
# spaceinvaders.c:1017: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _4, _5
	jss	.L110		#
# spaceinvaders.c:1019: 			return row_1_squid[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp67, i
	mov.w	r1, 3	# tmp69,
	shl.w	r0, r1	# tmp68, tmp69
	mov.w	r1, row_1_squid+2	# tmp71,
	add.w	r0, r1 #222	# tmp70, tmp71
	ld.s	r0, [r0]	# _27, row_1_squid[i_26].x
	j	.L108		#
.L110:
# spaceinvaders.c:1021: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp72, i
	mov.w	r1, 3	# tmp74,
	shl.w	r0, r1	# tmp73, tmp74
	mov.w	r1, row_2_crab+6	# tmp76,
	add.w	r0, r1 #222	# tmp75, tmp76
	ld.s	r0, [r0]	# _6, row_2_crab[i_26].alive
# spaceinvaders.c:1021: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	zex.s	r1, r0	# tmp77, _6
	mov.w	r0, 2	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L112		#
# spaceinvaders.c:1021: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp79, i
	mov.w	r1, 3	# tmp81,
	shl.w	r0, r1	# tmp80, tmp81
	mov.w	r1, row_2_crab+2	# tmp83,
	add.w	r0, r1 #222	# tmp82, tmp83
	ld.s	r0, [r0]	# _7, row_2_crab[i_26].x
	zex.s	r0, r0	# _8, _7
# spaceinvaders.c:1021: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	mov.w	r1, r0	# _9, _8
	add.w	r1, 11 #111	# _9,
	ld.s	r0, [r13 + (-6)]	# _10, rightmost
# spaceinvaders.c:1021: 		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _9, _10
	jss	.L112		#
# spaceinvaders.c:1023: 			return row_2_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp84, i
	mov.w	r1, 3	# tmp86,
	shl.w	r0, r1	# tmp85, tmp86
	mov.w	r1, row_2_crab+2	# tmp88,
	add.w	r0, r1 #222	# tmp87, tmp88
	ld.s	r0, [r0]	# _27, row_2_crab[i_26].x
	j	.L108		#
.L112:
# spaceinvaders.c:1025: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp89, i
	mov.w	r1, 3	# tmp91,
	shl.w	r0, r1	# tmp90, tmp91
	mov.w	r1, row_3_crab+6	# tmp93,
	add.w	r0, r1 #222	# tmp92, tmp93
	ld.s	r0, [r0]	# _11, row_3_crab[i_26].alive
# spaceinvaders.c:1025: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	zex.s	r1, r0	# tmp94, _11
	mov.w	r0, 2	# tmp95,
	cmp.w	r1, r0	# tmp94, tmp95
	jnz	.L113		#
# spaceinvaders.c:1025: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp96, i
	mov.w	r1, 3	# tmp98,
	shl.w	r0, r1	# tmp97, tmp98
	mov.w	r1, row_3_crab+2	# tmp100,
	add.w	r0, r1 #222	# tmp99, tmp100
	ld.s	r0, [r0]	# _12, row_3_crab[i_26].x
	zex.s	r0, r0	# _13, _12
# spaceinvaders.c:1025: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	mov.w	r1, r0	# _14, _13
	add.w	r1, 11 #111	# _14,
	ld.s	r0, [r13 + (-6)]	# _15, rightmost
# spaceinvaders.c:1025: 		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _14, _15
	jss	.L113		#
# spaceinvaders.c:1027: 			return row_3_crab[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp101, i
	mov.w	r1, 3	# tmp103,
	shl.w	r0, r1	# tmp102, tmp103
	mov.w	r1, row_3_crab+2	# tmp105,
	add.w	r0, r1 #222	# tmp104, tmp105
	ld.s	r0, [r0]	# _27, row_3_crab[i_26].x
	j	.L108		#
.L113:
# spaceinvaders.c:1029: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp106, i
	mov.w	r1, 3	# tmp108,
	shl.w	r0, r1	# tmp107, tmp108
	mov.w	r1, row_4_octopus+6	# tmp110,
	add.w	r0, r1 #222	# tmp109, tmp110
	ld.s	r0, [r0]	# _16, row_4_octopus[i_26].alive
# spaceinvaders.c:1029: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	zex.s	r1, r0	# tmp111, _16
	mov.w	r0, 2	# tmp112,
	cmp.w	r1, r0	# tmp111, tmp112
	jnz	.L114		#
# spaceinvaders.c:1029: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp113, i
	mov.w	r1, 3	# tmp115,
	shl.w	r0, r1	# tmp114, tmp115
	mov.w	r1, row_4_octopus+2	# tmp117,
	add.w	r0, r1 #222	# tmp116, tmp117
	ld.s	r0, [r0]	# _17, row_4_octopus[i_26].x
	zex.s	r0, r0	# _18, _17
# spaceinvaders.c:1029: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	mov.w	r1, r0	# _19, _18
	add.w	r1, 11 #111	# _19,
	ld.s	r0, [r13 + (-6)]	# _20, rightmost
# spaceinvaders.c:1029: 		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _19, _20
	jss	.L114		#
# spaceinvaders.c:1031: 			return row_4_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp118, i
	mov.w	r1, 3	# tmp120,
	shl.w	r0, r1	# tmp119, tmp120
	mov.w	r1, row_4_octopus+2	# tmp122,
	add.w	r0, r1 #222	# tmp121, tmp122
	ld.s	r0, [r0]	# _27, row_4_octopus[i_26].x
	j	.L108		#
.L114:
# spaceinvaders.c:1033: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp123, i
	mov.w	r1, 3	# tmp125,
	shl.w	r0, r1	# tmp124, tmp125
	mov.w	r1, row_5_octopus+6	# tmp127,
	add.w	r0, r1 #222	# tmp126, tmp127
	ld.s	r0, [r0]	# _21, row_5_octopus[i_26].alive
# spaceinvaders.c:1033: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	zex.s	r1, r0	# tmp128, _21
	mov.w	r0, 2	# tmp129,
	cmp.w	r1, r0	# tmp128, tmp129
	jnz	.L115		#
# spaceinvaders.c:1033: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	ld.w	r0, [r13 + (-4)]	# tmp130, i
	mov.w	r1, 3	# tmp132,
	shl.w	r0, r1	# tmp131, tmp132
	mov.w	r1, row_5_octopus+2	# tmp134,
	add.w	r0, r1 #222	# tmp133, tmp134
	ld.s	r0, [r0]	# _22, row_5_octopus[i_26].x
	zex.s	r0, r0	# _23, _22
# spaceinvaders.c:1033: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	mov.w	r1, r0	# _24, _23
	add.w	r1, 11 #111	# _24,
	ld.s	r0, [r13 + (-6)]	# _25, rightmost
# spaceinvaders.c:1033: 		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
	cmp.w	r1, r0	# _24, _25
	jss	.L115		#
# spaceinvaders.c:1035: 			return row_5_octopus[i].x;
	ld.w	r0, [r13 + (-4)]	# tmp135, i
	mov.w	r1, 3	# tmp137,
	shl.w	r0, r1	# tmp136, tmp137
	mov.w	r1, row_5_octopus+2	# tmp139,
	add.w	r0, r1 #222	# tmp138, tmp139
	ld.s	r0, [r0]	# _27, row_5_octopus[i_26].x
	j	.L108		#
.L115:
# spaceinvaders.c:1015: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-4)]	# tmp141, i
	add.w	r0, -1 #111	# tmp140,
	st.w	[r13 + (-4)], r0	# i, tmp140
.L109:
# spaceinvaders.c:1015: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-4)]	# tmp142, i
	xor.w	r0, r0	# tmp143
	cmp.w	r1, r0	# tmp142, tmp143
	jges	.L116		#
.L108:
# spaceinvaders.c:1038: }
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
# spaceinvaders.c:1043: 	uint16_t lowest = 0;
	xor.w	r0, r0	# tmp38
	st.s	[r13 + (-22)], r0	# lowest, tmp38
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp39,
	st.w	[r13 + (-4)], r0	# i, tmp39
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	j	.L118		#
.L121:
# spaceinvaders.c:1046: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-4)]	# tmp40, i
	mov.w	r1, 3	# tmp42,
	shl.w	r0, r1	# tmp41, tmp42
	mov.w	r1, row_5_octopus+6	# tmp44,
	add.w	r0, r1 #222	# tmp43, tmp44
	ld.s	r0, [r0]	# _1, row_5_octopus[i_11].alive
# spaceinvaders.c:1046: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	zex.s	r1, r0	# tmp45, _1
	mov.w	r0, 2	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L119		#
# spaceinvaders.c:1046: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-4)]	# tmp47, i
	mov.w	r1, 3	# tmp49,
	shl.w	r0, r1	# tmp48, tmp49
	mov.w	r1, row_5_octopus+4	# tmp51,
	add.w	r0, r1 #222	# tmp50, tmp51
	ld.s	r0, [r0]	# _2, row_5_octopus[i_11].y
# spaceinvaders.c:1046: 		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
	ld.s	r1, [r13 + (-22)]	# tmp52, lowest
	zex.s	r0, r0	# tmp53, _2
	cmp.w	r1, r0	# tmp52, tmp53
	jge	.L119		#
# spaceinvaders.c:1048: 			return row_5_octopus[i].y;
	ld.w	r0, [r13 + (-4)]	# tmp54, i
	mov.w	r1, 3	# tmp56,
	shl.w	r0, r1	# tmp55, tmp56
	mov.w	r1, row_5_octopus+4	# tmp58,
	add.w	r0, r1 #222	# tmp57, tmp58
	ld.s	r0, [r0]	# _16, row_5_octopus[i_11].y
	j	.L117		#
.L119:
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-4)]	# tmp60, i
	add.w	r0, -1 #111	# tmp59,
	st.w	[r13 + (-4)], r0	# i, tmp59
.L118:
# spaceinvaders.c:1044: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-4)]	# tmp61, i
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jges	.L121		#
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp63,
	st.w	[r13 + (-8)], r0	# i, tmp63
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	j	.L122		#
.L124:
# spaceinvaders.c:1053: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-8)]	# tmp64, i
	mov.w	r1, 3	# tmp66,
	shl.w	r0, r1	# tmp65, tmp66
	mov.w	r1, row_4_octopus+6	# tmp68,
	add.w	r0, r1 #222	# tmp67, tmp68
	ld.s	r0, [r0]	# _3, row_4_octopus[i_12].alive
# spaceinvaders.c:1053: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	zex.s	r1, r0	# tmp69, _3
	mov.w	r0, 2	# tmp70,
	cmp.w	r1, r0	# tmp69, tmp70
	jnz	.L123		#
# spaceinvaders.c:1053: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	ld.w	r0, [r13 + (-8)]	# tmp71, i
	mov.w	r1, 3	# tmp73,
	shl.w	r0, r1	# tmp72, tmp73
	mov.w	r1, row_4_octopus+4	# tmp75,
	add.w	r0, r1 #222	# tmp74, tmp75
	ld.s	r0, [r0]	# _4, row_4_octopus[i_12].y
# spaceinvaders.c:1053: 		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
	ld.s	r1, [r13 + (-22)]	# tmp76, lowest
	zex.s	r0, r0	# tmp77, _4
	cmp.w	r1, r0	# tmp76, tmp77
	jge	.L123		#
# spaceinvaders.c:1055: 			return row_4_octopus[i].y;
	ld.w	r0, [r13 + (-8)]	# tmp78, i
	mov.w	r1, 3	# tmp80,
	shl.w	r0, r1	# tmp79, tmp80
	mov.w	r1, row_4_octopus+4	# tmp82,
	add.w	r0, r1 #222	# tmp81, tmp82
	ld.s	r0, [r0]	# _16, row_4_octopus[i_12].y
	j	.L117		#
.L123:
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-8)]	# tmp84, i
	add.w	r0, -1 #111	# tmp83,
	st.w	[r13 + (-8)], r0	# i, tmp83
.L122:
# spaceinvaders.c:1051: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-8)]	# tmp85, i
	xor.w	r0, r0	# tmp86
	cmp.w	r1, r0	# tmp85, tmp86
	jges	.L124		#
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp87,
	st.w	[r13 + (-12)], r0	# i, tmp87
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	j	.L125		#
.L127:
# spaceinvaders.c:1060: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	ld.w	r0, [r13 + (-12)]	# tmp88, i
	mov.w	r1, 3	# tmp90,
	shl.w	r0, r1	# tmp89, tmp90
	mov.w	r1, row_3_crab+6	# tmp92,
	add.w	r0, r1 #222	# tmp91, tmp92
	ld.s	r0, [r0]	# _5, row_3_crab[i_13].alive
# spaceinvaders.c:1060: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	zex.s	r1, r0	# tmp93, _5
	mov.w	r0, 2	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jnz	.L126		#
# spaceinvaders.c:1060: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	ld.w	r0, [r13 + (-12)]	# tmp95, i
	mov.w	r1, 3	# tmp97,
	shl.w	r0, r1	# tmp96, tmp97
	mov.w	r1, row_3_crab+4	# tmp99,
	add.w	r0, r1 #222	# tmp98, tmp99
	ld.s	r0, [r0]	# _6, row_3_crab[i_13].y
# spaceinvaders.c:1060: 		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
	ld.s	r1, [r13 + (-22)]	# tmp100, lowest
	zex.s	r0, r0	# tmp101, _6
	cmp.w	r1, r0	# tmp100, tmp101
	jge	.L126		#
# spaceinvaders.c:1062: 			return row_3_crab[i].y;
	ld.w	r0, [r13 + (-12)]	# tmp102, i
	mov.w	r1, 3	# tmp104,
	shl.w	r0, r1	# tmp103, tmp104
	mov.w	r1, row_3_crab+4	# tmp106,
	add.w	r0, r1 #222	# tmp105, tmp106
	ld.s	r0, [r0]	# _16, row_3_crab[i_13].y
	j	.L117		#
.L126:
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-12)]	# tmp108, i
	add.w	r0, -1 #111	# tmp107,
	st.w	[r13 + (-12)], r0	# i, tmp107
.L125:
# spaceinvaders.c:1058: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-12)]	# tmp109, i
	xor.w	r0, r0	# tmp110
	cmp.w	r1, r0	# tmp109, tmp110
	jges	.L127		#
# spaceinvaders.c:1065: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp111,
	st.w	[r13 + (-16)], r0	# i, tmp111
# spaceinvaders.c:1065: 	for(int i = 10; i >= 0; i--)
	j	.L128		#
.L130:
# spaceinvaders.c:1067: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	ld.w	r0, [r13 + (-16)]	# tmp112, i
	mov.w	r1, 3	# tmp114,
	shl.w	r0, r1	# tmp113, tmp114
	mov.w	r1, row_2_crab+6	# tmp116,
	add.w	r0, r1 #222	# tmp115, tmp116
	ld.s	r0, [r0]	# _7, row_2_crab[i_14].alive
# spaceinvaders.c:1067: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	zex.s	r1, r0	# tmp117, _7
	mov.w	r0, 2	# tmp118,
	cmp.w	r1, r0	# tmp117, tmp118
	jnz	.L129		#
# spaceinvaders.c:1067: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	ld.w	r0, [r13 + (-16)]	# tmp119, i
	mov.w	r1, 3	# tmp121,
	shl.w	r0, r1	# tmp120, tmp121
	mov.w	r1, row_2_crab+4	# tmp123,
	add.w	r0, r1 #222	# tmp122, tmp123
	ld.s	r0, [r0]	# _8, row_2_crab[i_14].y
# spaceinvaders.c:1067: 		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
	ld.s	r1, [r13 + (-22)]	# tmp124, lowest
	zex.s	r0, r0	# tmp125, _8
	cmp.w	r1, r0	# tmp124, tmp125
	jge	.L129		#
# spaceinvaders.c:1069: 			return row_2_crab[i].y;
	ld.w	r0, [r13 + (-16)]	# tmp126, i
	mov.w	r1, 3	# tmp128,
	shl.w	r0, r1	# tmp127, tmp128
	mov.w	r1, row_2_crab+4	# tmp130,
	add.w	r0, r1 #222	# tmp129, tmp130
	ld.s	r0, [r0]	# _16, row_2_crab[i_14].y
	j	.L117		#
.L129:
# spaceinvaders.c:1065: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-16)]	# tmp132, i
	add.w	r0, -1 #111	# tmp131,
	st.w	[r13 + (-16)], r0	# i, tmp131
.L128:
# spaceinvaders.c:1065: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-16)]	# tmp133, i
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jges	.L130		#
# spaceinvaders.c:1072: 	for(int i = 10; i >= 0; i--)
	mov.w	r0, 10	# tmp135,
	st.w	[r13 + (-20)], r0	# i, tmp135
# spaceinvaders.c:1072: 	for(int i = 10; i >= 0; i--)
	j	.L131		#
.L133:
# spaceinvaders.c:1074: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	ld.w	r0, [r13 + (-20)]	# tmp136, i
	mov.w	r1, 3	# tmp138,
	shl.w	r0, r1	# tmp137, tmp138
	mov.w	r1, row_1_squid+6	# tmp140,
	add.w	r0, r1 #222	# tmp139, tmp140
	ld.s	r0, [r0]	# _9, row_1_squid[i_15].alive
# spaceinvaders.c:1074: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	zex.s	r1, r0	# tmp141, _9
	mov.w	r0, 2	# tmp142,
	cmp.w	r1, r0	# tmp141, tmp142
	jnz	.L132		#
# spaceinvaders.c:1074: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	ld.w	r0, [r13 + (-20)]	# tmp143, i
	mov.w	r1, 3	# tmp145,
	shl.w	r0, r1	# tmp144, tmp145
	mov.w	r1, row_1_squid+4	# tmp147,
	add.w	r0, r1 #222	# tmp146, tmp147
	ld.s	r0, [r0]	# _10, row_1_squid[i_15].y
# spaceinvaders.c:1074: 		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
	ld.s	r1, [r13 + (-22)]	# tmp148, lowest
	zex.s	r0, r0	# tmp149, _10
	cmp.w	r1, r0	# tmp148, tmp149
	jge	.L132		#
# spaceinvaders.c:1076: 			return row_1_squid[i].y;
	ld.w	r0, [r13 + (-20)]	# tmp150, i
	mov.w	r1, 3	# tmp152,
	shl.w	r0, r1	# tmp151, tmp152
	mov.w	r1, row_1_squid+4	# tmp154,
	add.w	r0, r1 #222	# tmp153, tmp154
	ld.s	r0, [r0]	# _16, row_1_squid[i_15].y
	j	.L117		#
.L132:
# spaceinvaders.c:1072: 	for(int i = 10; i >= 0; i--)
	ld.w	r0, [r13 + (-20)]	# tmp156, i
	add.w	r0, -1 #111	# tmp155,
	st.w	[r13 + (-20)], r0	# i, tmp155
.L131:
# spaceinvaders.c:1072: 	for(int i = 10; i >= 0; i--)
	ld.w	r1, [r13 + (-20)]	# tmp157, i
	xor.w	r0, r0	# tmp158
	cmp.w	r1, r0	# tmp157, tmp158
	jges	.L133		#
.L117:
# spaceinvaders.c:1079: }
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
# spaceinvaders.c:1091: 	int current_step_multiplier = current_step/movement_step;
	ld.w	r0, [current_step]	# current_step.7_1, current_step
	ld.w	r1, [movement_step]	# movement_step.8_2, movement_step
# spaceinvaders.c:1091: 	int current_step_multiplier = current_step/movement_step;
	div.w	r0, r1	# tmp43, movement_step.8_2
	st.w	[r13 + (-4)], r0	# current_step_multiplier, tmp43
# spaceinvaders.c:1094: 	if(number_of_aliens < 6)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.9_3, number_of_aliens
# spaceinvaders.c:1094: 	if(number_of_aliens < 6)
	mov.w	r0, 5	# tmp44,
	cmp.w	r1, r0	# number_of_aliens.9_3, tmp44
	jgs	.L135		#
# spaceinvaders.c:1095: 		movement_step -= 4;
	ld.w	r0, [movement_step]	# movement_step.10_4, movement_step
	add.w	r0, -4 #111	# _5,
	st.w	[movement_step], r0	# movement_step, _5
	j	.L136		#
.L135:
# spaceinvaders.c:1096: 	else if(number_of_aliens < 15)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.11_6, number_of_aliens
# spaceinvaders.c:1096: 	else if(number_of_aliens < 15)
	mov.w	r0, 14	# tmp45,
	cmp.w	r1, r0	# number_of_aliens.11_6, tmp45
	jgs	.L137		#
# spaceinvaders.c:1097: 		movement_step -= 3;
	ld.w	r0, [movement_step]	# movement_step.12_7, movement_step
	add.w	r0, -3 #111	# _8,
	st.w	[movement_step], r0	# movement_step, _8
	j	.L136		#
.L137:
# spaceinvaders.c:1098: 	else if(number_of_aliens < 23)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.13_9, number_of_aliens
# spaceinvaders.c:1098: 	else if(number_of_aliens < 23)
	mov.w	r0, 22	# tmp46,
	cmp.w	r1, r0	# number_of_aliens.13_9, tmp46
	jgs	.L138		#
# spaceinvaders.c:1099: 		movement_step -= 2;
	ld.w	r0, [movement_step]	# movement_step.14_10, movement_step
	add.w	r0, -2 #111	# _11,
	st.w	[movement_step], r0	# movement_step, _11
	j	.L136		#
.L138:
# spaceinvaders.c:1101: 		movement_step--;
	ld.w	r0, [movement_step]	# movement_step.15_12, movement_step
	add.w	r0, -1 #111	# _13,
	st.w	[movement_step], r0	# movement_step, _13
.L136:
# spaceinvaders.c:1110: 	int movement_step_ceil = movement_step * (current_step_multiplier+1);
	ld.w	r0, [r13 + (-4)]	# tmp47, current_step_multiplier
	add.w	r0, 1 #111	# _14,
# spaceinvaders.c:1110: 	int movement_step_ceil = movement_step * (current_step_multiplier+1);
	ld.w	r1, [movement_step]	# movement_step.16_15, movement_step
# spaceinvaders.c:1110: 	int movement_step_ceil = movement_step * (current_step_multiplier+1);
	mul.w	r0, r1	# tmp48, movement_step.16_15
	st.w	[r13 + (-8)], r0	# movement_step_ceil, tmp48
# spaceinvaders.c:1112: 	if(current_step >= movement_step_ceil)
	ld.w	r0, [current_step]	# current_step.17_16, current_step
# spaceinvaders.c:1112: 	if(current_step >= movement_step_ceil)
	ld.w	r1, [r13 + (-8)]	# tmp49, movement_step_ceil
	cmp.w	r1, r0	# tmp49, current_step.17_16
	jgs	.L140		#
# spaceinvaders.c:1114: 		current_step = movement_step_ceil - 1;
	ld.w	r0, [r13 + (-8)]	# tmp50, movement_step_ceil
	add.w	r0, -1 #111	# _17,
# spaceinvaders.c:1114: 		current_step = movement_step_ceil - 1;
	st.w	[current_step], r0	# current_step, _17
.L140:
# spaceinvaders.c:1116: }
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
# spaceinvaders.c:1124: 	alien_bullet_spawn_time = 600 + (number_of_aliens*10);
	ld.w	r1, [number_of_aliens]	# number_of_aliens.18_1, number_of_aliens
	mov.w	r0, r1	# tmp29, number_of_aliens.18_1
	mov.w	r2, 2	# tmp31,
	shl.w	r0, r2	# tmp30, tmp31
	add.w	r0, r1 #222	# tmp29, number_of_aliens.18_1
	add.w	r0, r0 #222	# tmp32, tmp29
# spaceinvaders.c:1124: 	alien_bullet_spawn_time = 600 + (number_of_aliens*10);
	mov.w	r1, 600	# tmp33,
	add.w	r0, r1 #222	# _3, tmp33
# spaceinvaders.c:1124: 	alien_bullet_spawn_time = 600 + (number_of_aliens*10);
	st.w	[alien_bullet_spawn_time], r0	# alien_bullet_spawn_time, _3
# spaceinvaders.c:1125: }
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
# spaceinvaders.c:1128: 	if(score > 99999)
	ld.w	r1, [score]	# score.19_1, score
# spaceinvaders.c:1128: 	if(score > 99999)
	mov.w	r0, 99999	# tmp36,
	cmp.w	r1, r0	# score.19_1, tmp36
	jses	.L143		#
# spaceinvaders.c:1129: 		score = 0;
	xor.w	r0, r0	# tmp37
	st.w	[score], r0	# score, tmp37
.L143:
# spaceinvaders.c:1130: 	clear_bitmap_test(20, 20, 45, 10);
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
# spaceinvaders.c:1131: 	if(score < 10)
	ld.w	r1, [score]	# score.20_2, score
# spaceinvaders.c:1131: 	if(score < 10)
	mov.w	r0, 9	# tmp43,
	cmp.w	r1, r0	# score.20_2, tmp43
	jgs	.L144		#
# spaceinvaders.c:1132: 		sprintf(str, "0000%d", score);
	ld.w	r1, [score]	# score.21_3, score
	mov.w	r0, sp	# tmp44,
	st.w	[r0 + (8)], r1	#, score.21_3
	mov.w	r1, .LC0	# tmp45,
	st.w	[r0 + (4)], r1	#, tmp45
	mov.w	r1, str	# tmp46,
	st.w	[r0], r1	#, tmp46
	call	sprintf		#
	j	.L145		#
.L144:
# spaceinvaders.c:1133: 	else if(score < 100)
	ld.w	r1, [score]	# score.22_4, score
# spaceinvaders.c:1133: 	else if(score < 100)
	mov.w	r0, 99	# tmp47,
	cmp.w	r1, r0	# score.22_4, tmp47
	jgs	.L146		#
# spaceinvaders.c:1134: 		sprintf(str, "000%d", score);
	ld.w	r1, [score]	# score.23_5, score
	mov.w	r0, sp	# tmp48,
	st.w	[r0 + (8)], r1	#, score.23_5
	mov.w	r1, .LC1	# tmp49,
	st.w	[r0 + (4)], r1	#, tmp49
	mov.w	r1, str	# tmp50,
	st.w	[r0], r1	#, tmp50
	call	sprintf		#
	j	.L145		#
.L146:
# spaceinvaders.c:1135: 	else if(score < 1000)
	ld.w	r1, [score]	# score.24_6, score
# spaceinvaders.c:1135: 	else if(score < 1000)
	mov.w	r0, 999	# tmp51,
	cmp.w	r1, r0	# score.24_6, tmp51
	jgs	.L147		#
# spaceinvaders.c:1136: 		sprintf(str, "00%d", score);
	ld.w	r1, [score]	# score.25_7, score
	mov.w	r0, sp	# tmp52,
	st.w	[r0 + (8)], r1	#, score.25_7
	mov.w	r1, .LC2	# tmp53,
	st.w	[r0 + (4)], r1	#, tmp53
	mov.w	r1, str	# tmp54,
	st.w	[r0], r1	#, tmp54
	call	sprintf		#
	j	.L145		#
.L147:
# spaceinvaders.c:1137: 	else if(score < 10000)
	ld.w	r1, [score]	# score.26_8, score
# spaceinvaders.c:1137: 	else if(score < 10000)
	mov.w	r0, 9999	# tmp55,
	cmp.w	r1, r0	# score.26_8, tmp55
	jgs	.L148		#
# spaceinvaders.c:1138: 		sprintf(str, "0%d", score);
	ld.w	r1, [score]	# score.27_9, score
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r1	#, score.27_9
	mov.w	r1, .LC3	# tmp57,
	st.w	[r0 + (4)], r1	#, tmp57
	mov.w	r1, str	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	sprintf		#
	j	.L145		#
.L148:
# spaceinvaders.c:1140: 		sprintf(str, "%d", score);
	ld.w	r1, [score]	# score.28_10, score
	mov.w	r0, sp	# tmp59,
	st.w	[r0 + (8)], r1	#, score.28_10
	mov.w	r1, .LC4	# tmp60,
	st.w	[r0 + (4)], r1	#, tmp60
	mov.w	r1, str	# tmp61,
	st.w	[r0], r1	#, tmp61
	call	sprintf		#
.L145:
# spaceinvaders.c:1141: 	draw(20, 20, WHITE, str);
	mov.w	r0, sp	# tmp62,
	mov.w	r1, str	# tmp63,
	st.w	[r0 + (12)], r1	#, tmp63
	mov.w	r1, 15	# tmp64,
	st.w	[r0 + (8)], r1	#, tmp64
	mov.w	r1, 20	# tmp65,
	st.w	[r0 + (4)], r1	#, tmp65
	mov.w	r1, 20	# tmp66,
	st.w	[r0], r1	#, tmp66
	call	draw		#
# spaceinvaders.c:1142: }
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
# spaceinvaders.c:1145: 	clear_bitmap_test(112, 20, 45, 10);
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
# spaceinvaders.c:1146: 	if(high_score < 10)
	ld.w	r1, [high_score]	# high_score.29_1, high_score
# spaceinvaders.c:1146: 	if(high_score < 10)
	mov.w	r0, 9	# tmp40,
	cmp.w	r1, r0	# high_score.29_1, tmp40
	jgs	.L150		#
# spaceinvaders.c:1147: 		sprintf(str, "0000%d", high_score);
	ld.w	r1, [high_score]	# high_score.30_2, high_score
	mov.w	r0, sp	# tmp41,
	st.w	[r0 + (8)], r1	#, high_score.30_2
	mov.w	r1, .LC0	# tmp42,
	st.w	[r0 + (4)], r1	#, tmp42
	mov.w	r1, str	# tmp43,
	st.w	[r0], r1	#, tmp43
	call	sprintf		#
	j	.L151		#
.L150:
# spaceinvaders.c:1148: 	else if(high_score < 100)
	ld.w	r1, [high_score]	# high_score.31_3, high_score
# spaceinvaders.c:1148: 	else if(high_score < 100)
	mov.w	r0, 99	# tmp44,
	cmp.w	r1, r0	# high_score.31_3, tmp44
	jgs	.L152		#
# spaceinvaders.c:1149: 		sprintf(str, "000%d", high_score);
	ld.w	r1, [high_score]	# high_score.32_4, high_score
	mov.w	r0, sp	# tmp45,
	st.w	[r0 + (8)], r1	#, high_score.32_4
	mov.w	r1, .LC1	# tmp46,
	st.w	[r0 + (4)], r1	#, tmp46
	mov.w	r1, str	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	sprintf		#
	j	.L151		#
.L152:
# spaceinvaders.c:1150: 	else if(high_score < 1000)
	ld.w	r1, [high_score]	# high_score.33_5, high_score
# spaceinvaders.c:1150: 	else if(high_score < 1000)
	mov.w	r0, 999	# tmp48,
	cmp.w	r1, r0	# high_score.33_5, tmp48
	jgs	.L153		#
# spaceinvaders.c:1151: 		sprintf(str, "00%d", high_score);
	ld.w	r1, [high_score]	# high_score.34_6, high_score
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (8)], r1	#, high_score.34_6
	mov.w	r1, .LC2	# tmp50,
	st.w	[r0 + (4)], r1	#, tmp50
	mov.w	r1, str	# tmp51,
	st.w	[r0], r1	#, tmp51
	call	sprintf		#
	j	.L151		#
.L153:
# spaceinvaders.c:1152: 	else if(high_score < 10000)
	ld.w	r1, [high_score]	# high_score.35_7, high_score
# spaceinvaders.c:1152: 	else if(high_score < 10000)
	mov.w	r0, 9999	# tmp52,
	cmp.w	r1, r0	# high_score.35_7, tmp52
	jgs	.L154		#
# spaceinvaders.c:1153: 		sprintf(str, "0%d", high_score);
	ld.w	r1, [high_score]	# high_score.36_8, high_score
	mov.w	r0, sp	# tmp53,
	st.w	[r0 + (8)], r1	#, high_score.36_8
	mov.w	r1, .LC3	# tmp54,
	st.w	[r0 + (4)], r1	#, tmp54
	mov.w	r1, str	# tmp55,
	st.w	[r0], r1	#, tmp55
	call	sprintf		#
	j	.L151		#
.L154:
# spaceinvaders.c:1155: 		sprintf(str, "%d", high_score);
	ld.w	r1, [high_score]	# high_score.37_9, high_score
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (8)], r1	#, high_score.37_9
	mov.w	r1, .LC4	# tmp57,
	st.w	[r0 + (4)], r1	#, tmp57
	mov.w	r1, str	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	sprintf		#
.L151:
# spaceinvaders.c:1156: 	draw(112, 20, GREEN, str);
	mov.w	r0, sp	# tmp59,
	mov.w	r1, str	# tmp60,
	st.w	[r0 + (12)], r1	#, tmp60
	mov.w	r1, 10	# tmp61,
	st.w	[r0 + (8)], r1	#, tmp61
	mov.w	r1, 20	# tmp62,
	st.w	[r0 + (4)], r1	#, tmp62
	mov.w	r1, 112	# tmp63,
	st.w	[r0], r1	#, tmp63
	call	draw		#
# spaceinvaders.c:1157: }
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
# spaceinvaders.c:1161: 	if(high_score < score)
	ld.w	r1, [high_score]	# high_score.38_1, high_score
	ld.w	r0, [score]	# score.39_2, score
# spaceinvaders.c:1161: 	if(high_score < score)
	cmp.w	r1, r0	# high_score.38_1, score.39_2
	jges	.L157		#
# spaceinvaders.c:1163: 		high_score = score;
	ld.w	r0, [score]	# score.40_3, score
	st.w	[high_score], r0	# high_score, score.40_3
# spaceinvaders.c:1164: 		draw_high_score();
	call	draw_high_score		#
.L157:
# spaceinvaders.c:1166: }
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
# spaceinvaders.c:1170: 	clear_bitmap_test(20, 229, 60, 10);
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
# spaceinvaders.c:1171: 	sprintf(str,"%d", lives);
	ld.w	r1, [lives]	# lives.41_1, lives
	mov.w	r0, sp	# tmp36,
	st.w	[r0 + (8)], r1	#, lives.41_1
	mov.w	r1, .LC4	# tmp37,
	st.w	[r0 + (4)], r1	#, tmp37
	mov.w	r1, str	# tmp38,
	st.w	[r0], r1	#, tmp38
	call	sprintf		#
# spaceinvaders.c:1172: 	draw(20, 230, YELLOW, str);
	mov.w	r0, sp	# tmp39,
	mov.w	r1, str	# tmp40,
	st.w	[r0 + (12)], r1	#, tmp40
	mov.w	r1, 14	# tmp41,
	st.w	[r0 + (8)], r1	#, tmp41
	mov.w	r1, 230	# tmp42,
	st.w	[r0 + (4)], r1	#, tmp42
	mov.w	r1, 20	# tmp43,
	st.w	[r0], r1	#, tmp43
	call	draw		#
# spaceinvaders.c:1173: 	for(int i = 0; i < lives-1; i++)
	xor.w	r0, r0	# tmp44
	st.w	[r13 + (-4)], r0	# i, tmp44
# spaceinvaders.c:1173: 	for(int i = 0; i < lives-1; i++)
	j	.L159		#
.L160:
# spaceinvaders.c:1174: 		draw_bitmap_with_clear_background(32 + 16 * i, 229, 16, 8, ship);
	ld.w	r0, [r13 + (-4)]	# tmp45, i
	mov.w	r1, r0	# _2, tmp45
	add.w	r1, 2 #111	# _2,
# spaceinvaders.c:1174: 		draw_bitmap_with_clear_background(32 + 16 * i, 229, 16, 8, ship);
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
# spaceinvaders.c:1173: 	for(int i = 0; i < lives-1; i++)
	ld.w	r0, [r13 + (-4)]	# tmp53, i
	add.w	r0, 1 #111	# tmp52,
	st.w	[r13 + (-4)], r0	# i, tmp52
.L159:
# spaceinvaders.c:1173: 	for(int i = 0; i < lives-1; i++)
	ld.w	r0, [lives]	# lives.42_4, lives
	add.w	r0, -1 #111	# _5,
# spaceinvaders.c:1173: 	for(int i = 0; i < lives-1; i++)
	ld.w	r1, [r13 + (-4)]	# tmp54, i
	cmp.w	r1, r0	# tmp54, _5
	jss	.L160		#
# spaceinvaders.c:1175: }
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
# spaceinvaders.c:1183: 	if(current_player_bullet == special_player_bullet)
	ld.w	r1, [current_player_bullet]	# current_player_bullet.43_1, current_player_bullet
	ld.w	r0, [special_player_bullet]	# special_player_bullet.44_2, special_player_bullet
# spaceinvaders.c:1183: 	if(current_player_bullet == special_player_bullet)
	cmp.w	r1, r0	# current_player_bullet.43_1, special_player_bullet.44_2
	jnz	.L162		#
# spaceinvaders.c:1184: 		ufo_score = 300;
	mov.w	r0, 300	# tmp32,
	st.w	[ufo_score], r0	# ufo_score, tmp32
# spaceinvaders.c:1187: }
	j	.L164		#
.L162:
# spaceinvaders.c:1186: 		ufo_score = ((rand() % 3) + 1) * 50;
	call	rand		#
# spaceinvaders.c:1186: 		ufo_score = ((rand() % 3) + 1) * 50;
	mov.w	r1, 3	# tmp33,
	div.w	r0, r1	# _4, tmp33
mov.w	r0, r14	# _4
# spaceinvaders.c:1186: 		ufo_score = ((rand() % 3) + 1) * 50;
	add.w	r0, 1 #111	# _5,
# spaceinvaders.c:1186: 		ufo_score = ((rand() % 3) + 1) * 50;
	mov.w	r1, 50	# tmp34,
	mul.w	r0, r1	# _6, tmp34
# spaceinvaders.c:1186: 		ufo_score = ((rand() % 3) + 1) * 50;
	st.w	[ufo_score], r0	# ufo_score, _6
.L164:
# spaceinvaders.c:1187: }
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
# spaceinvaders.c:1192: 	return (ufo_status == ALIVE
	ld.w	r1, [ufo_status]	# ufo_status.46_1, ufo_status
# spaceinvaders.c:1195: 			&& (player_bullet_def->y <= 35 + 7 
	mov.w	r0, 2	# tmp42,
	cmp.w	r1, r0	# ufo_status.46_1, tmp42
	jnz	.L166		#
# spaceinvaders.c:1193: 			&& (player_bullet_def->x >= ufo_position_X 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.47_2, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _3, player_bullet_def.47_2->x
	zex.s	r1, r0	# _4, _3
# spaceinvaders.c:1193: 			&& (player_bullet_def->x >= ufo_position_X 
	ld.w	r0, [ufo_position_X]	# ufo_position_X.48_5, ufo_position_X
# spaceinvaders.c:1193: 			&& (player_bullet_def->x >= ufo_position_X 
	cmp.w	r1, r0	# _4, ufo_position_X.48_5
	jss	.L166		#
# spaceinvaders.c:1194: 				&& player_bullet_def->x <= ufo_position_X + 15)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.49_6, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _7, player_bullet_def.49_6->x
	zex.s	r1, r0	# _8, _7
# spaceinvaders.c:1194: 				&& player_bullet_def->x <= ufo_position_X + 15)
	ld.w	r0, [ufo_position_X]	# ufo_position_X.50_9, ufo_position_X
	add.w	r0, 15 #111	# _10,
# spaceinvaders.c:1194: 				&& player_bullet_def->x <= ufo_position_X + 15)
	cmp.w	r1, r0	# _8, _10
	jgs	.L166		#
# spaceinvaders.c:1195: 			&& (player_bullet_def->y <= 35 + 7 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.51_11, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _12, player_bullet_def.51_11->y
# spaceinvaders.c:1195: 			&& (player_bullet_def->y <= 35 + 7 
	zex.s	r1, r0	# tmp43, _12
	mov.w	r0, 42	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jg	.L166		#
# spaceinvaders.c:1196: 				&& player_bullet_def->y >= 35 - 2));
	ld.w	r0, [player_bullet_def]	# player_bullet_def.52_13, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _14, player_bullet_def.52_13->y
# spaceinvaders.c:1196: 				&& player_bullet_def->y >= 35 - 2));
	zex.s	r1, r0	# tmp45, _14
	mov.w	r0, 32	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jse	.L166		#
# spaceinvaders.c:1195: 			&& (player_bullet_def->y <= 35 + 7 
	mov.w	r0, 1	# iftmp.45_15,
	j	.L168		#
.L166:
	xor.w	r0, r0	# iftmp.45_15
.L168:
# spaceinvaders.c:1197: }
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
# spaceinvaders.c:1201: 	ufo_status = EXPLODING;
	mov.w	r0, 1	# tmp26,
	st.w	[ufo_status], r0	# ufo_status, tmp26
# spaceinvaders.c:1202: 	timer_for_ufo_death = 1200;
	mov.w	r0, 1200	# tmp27,
	st.w	[timer_for_ufo_death], r0	# timer_for_ufo_death, tmp27
# spaceinvaders.c:1203: }
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
# spaceinvaders.c:1207: 	player_bullet_status = EXPLODING;
	mov.w	r0, 1	# tmp26,
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp26
# spaceinvaders.c:1208: 	timer_for_player_bullet_destroy = 150;
	mov.w	r0, 150	# tmp27,
	st.w	[timer_for_player_bullet_destroy], r0	# timer_for_player_bullet_destroy, tmp27
# spaceinvaders.c:1209: }
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
# spaceinvaders.c:1213: 	player_bullet_def -> addr = 0;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.53_1, player_bullet_def
# spaceinvaders.c:1213: 	player_bullet_def -> addr = 0;
	xor.w	r1, r1	# tmp27
	st.s	[r0], r1	# player_bullet_def.53_1->addr, tmp27
# spaceinvaders.c:1214: 	player_bullet_status = status;
	ld.w	r0, [r13 + (8)]	# tmp28, status
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp28
# spaceinvaders.c:1215: }
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
# spaceinvaders.c:1220: 	if(ufo_is_alive_and_collided_with_player_bullet() == TRUE)
	call	ufo_is_alive_and_collided_with_player_bullet		#
	mov.w	r1, r0	# _1,
# spaceinvaders.c:1220: 	if(ufo_is_alive_and_collided_with_player_bullet() == TRUE)
	mov.w	r0, 1	# tmp188,
	cmp.w	r1, r0	# _1, tmp188
	jnz	.L173		#
# spaceinvaders.c:1222: 		set_ufo_to_explode();
	call	set_ufo_to_explode		#
# spaceinvaders.c:1223: 		calculate_ufo_score();
	call	calculate_ufo_score		#
# spaceinvaders.c:1224: 		delete_player_bullet_and_set_status(READY);
	mov.w	r1, sp	# tmp189,
	xor.w	r0, r0	# tmp190
	st.w	[r1], r0	#, tmp190
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1225: 		return;
	j	.L172		#
.L173:
# spaceinvaders.c:1236: 	for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp191
	st.w	[r13 + (-4)], r0	# i, tmp191
# spaceinvaders.c:1236: 	for(int i = 0; i < 11; i++) {
	j	.L175		#
.L181:
# spaceinvaders.c:1237: 		if(row_5_octopus[i].alive == 2 
	ld.w	r0, [r13 + (-4)]	# tmp192, i
	mov.w	r1, 3	# tmp194,
	shl.w	r0, r1	# tmp193, tmp194
	mov.w	r1, row_5_octopus+6	# tmp196,
	add.w	r0, r1 #222	# tmp195, tmp196
	ld.s	r0, [r0]	# _2, row_5_octopus[i_163].alive
# spaceinvaders.c:1237: 		if(row_5_octopus[i].alive == 2 
	zex.s	r1, r0	# tmp197, _2
	mov.w	r0, 2	# tmp198,
	cmp.w	r1, r0	# tmp197, tmp198
	jnz	.L176		#
# spaceinvaders.c:1238: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.54_3, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _4, player_bullet_def.54_3->x
# spaceinvaders.c:1238: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp199, i
	mov.w	r2, 3	# tmp201,
	shl.w	r0, r2	# tmp200, tmp201
	mov.w	r2, row_5_octopus+2	# tmp203,
	add.w	r0, r2 #222	# tmp202, tmp203
	ld.s	r0, [r0]	# _5, row_5_octopus[i_163].x
# spaceinvaders.c:1238: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	zex.s	r1, r1	# tmp204, _4
	zex.s	r0, r0	# tmp205, _5
	cmp.w	r1, r0	# tmp204, tmp205
	js	.L176		#
# spaceinvaders.c:1238: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.55_6, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _7, player_bullet_def.55_6->x
	zex.s	r1, r0	# _8, _7
# spaceinvaders.c:1238: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp206, i
	mov.w	r2, 3	# tmp208,
	shl.w	r0, r2	# tmp207, tmp208
	mov.w	r2, row_5_octopus+2	# tmp210,
	add.w	r0, r2 #222	# tmp209, tmp210
	ld.s	r0, [r0]	# _9, row_5_octopus[i_163].x
	zex.s	r0, r0	# _10, _9
# spaceinvaders.c:1238: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	add.w	r0, 11 #111	# _11,
# spaceinvaders.c:1238: 		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
	cmp.w	r1, r0	# _8, _11
	jgs	.L176		#
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.56_12, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _13, player_bullet_def.56_12->y
	zex.s	r1, r0	# _14, _13
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp211, i
	mov.w	r2, 3	# tmp213,
	shl.w	r0, r2	# tmp212, tmp213
	mov.w	r2, row_5_octopus+4	# tmp215,
	add.w	r0, r2 #222	# tmp214, tmp215
	ld.s	r0, [r0]	# _15, row_5_octopus[i_163].y
	zex.s	r0, r0	# _16, _15
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	add.w	r0, 7 #111	# _17,
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	cmp.w	r1, r0	# _14, _17
	jgs	.L176		#
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.57_18, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _19, player_bullet_def.57_18->y
	zex.s	r1, r0	# _20, _19
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp216, i
	mov.w	r2, 3	# tmp218,
	shl.w	r0, r2	# tmp217, tmp218
	mov.w	r2, row_5_octopus+4	# tmp220,
	add.w	r0, r2 #222	# tmp219, tmp220
	ld.s	r0, [r0]	# _21, row_5_octopus[i_163].y
	zex.s	r0, r0	# _22, _21
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	add.w	r0, -2 #111	# _23,
# spaceinvaders.c:1239: 		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
	cmp.w	r1, r0	# _20, _23
	jss	.L176		#
# spaceinvaders.c:1241: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp221, i
	mov.w	r1, 3	# tmp223,
	shl.w	r0, r1	# tmp222, tmp223
	mov.w	r1, row_5_octopus+2	# tmp225,
	add.w	r0, r1 #222	# tmp224, tmp225
	ld.s	r0, [r0]	# _24, row_5_octopus[i_163].x
# spaceinvaders.c:1241: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	zex.s	r1, r0	# _25, _24
# spaceinvaders.c:1241: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp226, i
	mov.w	r2, 3	# tmp228,
	shl.w	r0, r2	# tmp227, tmp228
	mov.w	r2, row_5_octopus+4	# tmp230,
	add.w	r0, r2 #222	# tmp229, tmp230
	ld.s	r0, [r0]	# _26, row_5_octopus[i_163].y
# spaceinvaders.c:1241: 			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
	zex.s	r2, r0	# _27, _26
	mov.w	r0, sp	# tmp231,
	mov.w	r3, 8	# tmp232,
	st.w	[r0 + (12)], r3	#, tmp232
	mov.w	r3, 12	# tmp233,
	st.w	[r0 + (8)], r3	#, tmp233
	st.w	[r0 + (4)], r2	#, _27
	st.w	[r0], r1	#, _25
	call	clear_bitmap_test		#
# spaceinvaders.c:1242: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp234, i
	mov.w	r1, 3	# tmp236,
	shl.w	r0, r1	# tmp235, tmp236
	mov.w	r1, row_5_octopus+2	# tmp238,
	add.w	r0, r1 #222	# tmp237, tmp238
	ld.s	r0, [r0]	# _28, row_5_octopus[i_163].x
# spaceinvaders.c:1242: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	zex.s	r1, r0	# _29, _28
# spaceinvaders.c:1242: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp239, i
	mov.w	r2, 3	# tmp241,
	shl.w	r0, r2	# tmp240, tmp241
	mov.w	r2, row_5_octopus+4	# tmp243,
	add.w	r0, r2 #222	# tmp242, tmp243
	ld.s	r0, [r0]	# _30, row_5_octopus[i_163].y
# spaceinvaders.c:1242: 			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
	zex.s	r2, r0	# _31, _30
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
# spaceinvaders.c:1243: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp248,
	mov.w	r0, 3	# tmp249,
	st.w	[r1], r0	#, tmp249
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1244: 			row_5_octopus[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp250, i
	mov.w	r1, 3	# tmp252,
	shl.w	r0, r1	# tmp251, tmp252
	mov.w	r1, row_5_octopus+6	# tmp254,
	add.w	r0, r1 #222	# tmp253, tmp254
	mov.s	r1, 1	# tmp255,
	st.s	[r0], r1	# row_5_octopus[i_163].alive, tmp255
# spaceinvaders.c:1245: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.58_32, death_timer
	add.w	r0, 4 #111	# _33,
	st.w	[death_timer], r0	# death_timer, _33
# spaceinvaders.c:1246: 			break;
	j	.L172		#
.L176:
# spaceinvaders.c:1248: 		if(row_4_octopus[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp256, i
	mov.w	r1, 3	# tmp258,
	shl.w	r0, r1	# tmp257, tmp258
	mov.w	r1, row_4_octopus+6	# tmp260,
	add.w	r0, r1 #222	# tmp259, tmp260
	ld.s	r0, [r0]	# _34, row_4_octopus[i_163].alive
# spaceinvaders.c:1248: 		if(row_4_octopus[i].alive == 2
	zex.s	r1, r0	# tmp261, _34
	mov.w	r0, 2	# tmp262,
	cmp.w	r1, r0	# tmp261, tmp262
	jnz	.L177		#
# spaceinvaders.c:1249: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.59_35, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _36, player_bullet_def.59_35->x
# spaceinvaders.c:1249: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp263, i
	mov.w	r2, 3	# tmp265,
	shl.w	r0, r2	# tmp264, tmp265
	mov.w	r2, row_4_octopus+2	# tmp267,
	add.w	r0, r2 #222	# tmp266, tmp267
	ld.s	r0, [r0]	# _37, row_4_octopus[i_163].x
# spaceinvaders.c:1249: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	zex.s	r1, r1	# tmp268, _36
	zex.s	r0, r0	# tmp269, _37
	cmp.w	r1, r0	# tmp268, tmp269
	js	.L177		#
# spaceinvaders.c:1249: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.60_38, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _39, player_bullet_def.60_38->x
	zex.s	r1, r0	# _40, _39
# spaceinvaders.c:1249: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp270, i
	mov.w	r2, 3	# tmp272,
	shl.w	r0, r2	# tmp271, tmp272
	mov.w	r2, row_4_octopus+2	# tmp274,
	add.w	r0, r2 #222	# tmp273, tmp274
	ld.s	r0, [r0]	# _41, row_4_octopus[i_163].x
	zex.s	r0, r0	# _42, _41
# spaceinvaders.c:1249: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	add.w	r0, 11 #111	# _43,
# spaceinvaders.c:1249: 		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
	cmp.w	r1, r0	# _40, _43
	jgs	.L177		#
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.61_44, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _45, player_bullet_def.61_44->y
	zex.s	r1, r0	# _46, _45
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp275, i
	mov.w	r2, 3	# tmp277,
	shl.w	r0, r2	# tmp276, tmp277
	mov.w	r2, row_4_octopus+4	# tmp279,
	add.w	r0, r2 #222	# tmp278, tmp279
	ld.s	r0, [r0]	# _47, row_4_octopus[i_163].y
	zex.s	r0, r0	# _48, _47
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	add.w	r0, 7 #111	# _49,
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	cmp.w	r1, r0	# _46, _49
	jgs	.L177		#
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.62_50, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _51, player_bullet_def.62_50->y
	zex.s	r1, r0	# _52, _51
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp280, i
	mov.w	r2, 3	# tmp282,
	shl.w	r0, r2	# tmp281, tmp282
	mov.w	r2, row_4_octopus+4	# tmp284,
	add.w	r0, r2 #222	# tmp283, tmp284
	ld.s	r0, [r0]	# _53, row_4_octopus[i_163].y
	zex.s	r0, r0	# _54, _53
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	add.w	r0, -2 #111	# _55,
# spaceinvaders.c:1250: 		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
	cmp.w	r1, r0	# _52, _55
	jss	.L177		#
# spaceinvaders.c:1252: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp285, i
	mov.w	r1, 3	# tmp287,
	shl.w	r0, r1	# tmp286, tmp287
	mov.w	r1, row_4_octopus+2	# tmp289,
	add.w	r0, r1 #222	# tmp288, tmp289
	ld.s	r0, [r0]	# _56, row_4_octopus[i_163].x
# spaceinvaders.c:1252: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	zex.s	r1, r0	# _57, _56
# spaceinvaders.c:1252: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp290, i
	mov.w	r2, 3	# tmp292,
	shl.w	r0, r2	# tmp291, tmp292
	mov.w	r2, row_4_octopus+4	# tmp294,
	add.w	r0, r2 #222	# tmp293, tmp294
	ld.s	r0, [r0]	# _58, row_4_octopus[i_163].y
# spaceinvaders.c:1252: 			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
	zex.s	r2, r0	# _59, _58
	mov.w	r0, sp	# tmp295,
	mov.w	r3, 8	# tmp296,
	st.w	[r0 + (12)], r3	#, tmp296
	mov.w	r3, 12	# tmp297,
	st.w	[r0 + (8)], r3	#, tmp297
	st.w	[r0 + (4)], r2	#, _59
	st.w	[r0], r1	#, _57
	call	clear_bitmap_test		#
# spaceinvaders.c:1253: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp298, i
	mov.w	r1, 3	# tmp300,
	shl.w	r0, r1	# tmp299, tmp300
	mov.w	r1, row_4_octopus+2	# tmp302,
	add.w	r0, r1 #222	# tmp301, tmp302
	ld.s	r0, [r0]	# _60, row_4_octopus[i_163].x
# spaceinvaders.c:1253: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	zex.s	r1, r0	# _61, _60
# spaceinvaders.c:1253: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp303, i
	mov.w	r2, 3	# tmp305,
	shl.w	r0, r2	# tmp304, tmp305
	mov.w	r2, row_4_octopus+4	# tmp307,
	add.w	r0, r2 #222	# tmp306, tmp307
	ld.s	r0, [r0]	# _62, row_4_octopus[i_163].y
# spaceinvaders.c:1253: 			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
	zex.s	r2, r0	# _63, _62
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
# spaceinvaders.c:1254: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp312,
	mov.w	r0, 3	# tmp313,
	st.w	[r1], r0	#, tmp313
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1255: 			row_4_octopus[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp314, i
	mov.w	r1, 3	# tmp316,
	shl.w	r0, r1	# tmp315, tmp316
	mov.w	r1, row_4_octopus+6	# tmp318,
	add.w	r0, r1 #222	# tmp317, tmp318
	mov.s	r1, 1	# tmp319,
	st.s	[r0], r1	# row_4_octopus[i_163].alive, tmp319
# spaceinvaders.c:1256: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.63_64, death_timer
	add.w	r0, 4 #111	# _65,
	st.w	[death_timer], r0	# death_timer, _65
# spaceinvaders.c:1257: 			break;
	j	.L172		#
.L177:
# spaceinvaders.c:1259: 		if(row_3_crab[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp320, i
	mov.w	r1, 3	# tmp322,
	shl.w	r0, r1	# tmp321, tmp322
	mov.w	r1, row_3_crab+6	# tmp324,
	add.w	r0, r1 #222	# tmp323, tmp324
	ld.s	r0, [r0]	# _66, row_3_crab[i_163].alive
# spaceinvaders.c:1259: 		if(row_3_crab[i].alive == 2
	zex.s	r1, r0	# tmp325, _66
	mov.w	r0, 2	# tmp326,
	cmp.w	r1, r0	# tmp325, tmp326
	jnz	.L178		#
# spaceinvaders.c:1260: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.64_67, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _68, player_bullet_def.64_67->x
# spaceinvaders.c:1260: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp327, i
	mov.w	r2, 3	# tmp329,
	shl.w	r0, r2	# tmp328, tmp329
	mov.w	r2, row_3_crab+2	# tmp331,
	add.w	r0, r2 #222	# tmp330, tmp331
	ld.s	r0, [r0]	# _69, row_3_crab[i_163].x
# spaceinvaders.c:1260: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	zex.s	r1, r1	# tmp332, _68
	zex.s	r0, r0	# tmp333, _69
	cmp.w	r1, r0	# tmp332, tmp333
	js	.L178		#
# spaceinvaders.c:1260: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.65_70, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _71, player_bullet_def.65_70->x
	zex.s	r1, r0	# _72, _71
# spaceinvaders.c:1260: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp334, i
	mov.w	r2, 3	# tmp336,
	shl.w	r0, r2	# tmp335, tmp336
	mov.w	r2, row_3_crab+2	# tmp338,
	add.w	r0, r2 #222	# tmp337, tmp338
	ld.s	r0, [r0]	# _73, row_3_crab[i_163].x
	zex.s	r0, r0	# _74, _73
# spaceinvaders.c:1260: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	add.w	r0, 11 #111	# _75,
# spaceinvaders.c:1260: 		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
	cmp.w	r1, r0	# _72, _75
	jgs	.L178		#
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.66_76, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _77, player_bullet_def.66_76->y
	zex.s	r1, r0	# _78, _77
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp339, i
	mov.w	r2, 3	# tmp341,
	shl.w	r0, r2	# tmp340, tmp341
	mov.w	r2, row_3_crab+4	# tmp343,
	add.w	r0, r2 #222	# tmp342, tmp343
	ld.s	r0, [r0]	# _79, row_3_crab[i_163].y
	zex.s	r0, r0	# _80, _79
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	add.w	r0, 7 #111	# _81,
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	cmp.w	r1, r0	# _78, _81
	jgs	.L178		#
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.67_82, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _83, player_bullet_def.67_82->y
	zex.s	r1, r0	# _84, _83
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp344, i
	mov.w	r2, 3	# tmp346,
	shl.w	r0, r2	# tmp345, tmp346
	mov.w	r2, row_3_crab+4	# tmp348,
	add.w	r0, r2 #222	# tmp347, tmp348
	ld.s	r0, [r0]	# _85, row_3_crab[i_163].y
	zex.s	r0, r0	# _86, _85
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	add.w	r0, -2 #111	# _87,
# spaceinvaders.c:1261: 		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
	cmp.w	r1, r0	# _84, _87
	jss	.L178		#
# spaceinvaders.c:1263: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp349, i
	mov.w	r1, 3	# tmp351,
	shl.w	r0, r1	# tmp350, tmp351
	mov.w	r1, row_3_crab+2	# tmp353,
	add.w	r0, r1 #222	# tmp352, tmp353
	ld.s	r0, [r0]	# _88, row_3_crab[i_163].x
# spaceinvaders.c:1263: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	zex.s	r1, r0	# _89, _88
# spaceinvaders.c:1263: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp354, i
	mov.w	r2, 3	# tmp356,
	shl.w	r0, r2	# tmp355, tmp356
	mov.w	r2, row_3_crab+4	# tmp358,
	add.w	r0, r2 #222	# tmp357, tmp358
	ld.s	r0, [r0]	# _90, row_3_crab[i_163].y
# spaceinvaders.c:1263: 			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
	zex.s	r2, r0	# _91, _90
	mov.w	r0, sp	# tmp359,
	mov.w	r3, 8	# tmp360,
	st.w	[r0 + (12)], r3	#, tmp360
	mov.w	r3, 12	# tmp361,
	st.w	[r0 + (8)], r3	#, tmp361
	st.w	[r0 + (4)], r2	#, _91
	st.w	[r0], r1	#, _89
	call	clear_bitmap_test		#
# spaceinvaders.c:1264: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp362, i
	mov.w	r1, 3	# tmp364,
	shl.w	r0, r1	# tmp363, tmp364
	mov.w	r1, row_3_crab+2	# tmp366,
	add.w	r0, r1 #222	# tmp365, tmp366
	ld.s	r0, [r0]	# _92, row_3_crab[i_163].x
# spaceinvaders.c:1264: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	zex.s	r1, r0	# _93, _92
# spaceinvaders.c:1264: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp367, i
	mov.w	r2, 3	# tmp369,
	shl.w	r0, r2	# tmp368, tmp369
	mov.w	r2, row_3_crab+4	# tmp371,
	add.w	r0, r2 #222	# tmp370, tmp371
	ld.s	r0, [r0]	# _94, row_3_crab[i_163].y
# spaceinvaders.c:1264: 			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
	zex.s	r2, r0	# _95, _94
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
# spaceinvaders.c:1265: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp376,
	mov.w	r0, 3	# tmp377,
	st.w	[r1], r0	#, tmp377
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1266: 			row_3_crab[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp378, i
	mov.w	r1, 3	# tmp380,
	shl.w	r0, r1	# tmp379, tmp380
	mov.w	r1, row_3_crab+6	# tmp382,
	add.w	r0, r1 #222	# tmp381, tmp382
	mov.s	r1, 1	# tmp383,
	st.s	[r0], r1	# row_3_crab[i_163].alive, tmp383
# spaceinvaders.c:1267: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.68_96, death_timer
	add.w	r0, 4 #111	# _97,
	st.w	[death_timer], r0	# death_timer, _97
# spaceinvaders.c:1268: 			break;
	j	.L172		#
.L178:
# spaceinvaders.c:1270: 		if(row_2_crab[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp384, i
	mov.w	r1, 3	# tmp386,
	shl.w	r0, r1	# tmp385, tmp386
	mov.w	r1, row_2_crab+6	# tmp388,
	add.w	r0, r1 #222	# tmp387, tmp388
	ld.s	r0, [r0]	# _98, row_2_crab[i_163].alive
# spaceinvaders.c:1270: 		if(row_2_crab[i].alive == 2
	zex.s	r1, r0	# tmp389, _98
	mov.w	r0, 2	# tmp390,
	cmp.w	r1, r0	# tmp389, tmp390
	jnz	.L179		#
# spaceinvaders.c:1271: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.69_99, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _100, player_bullet_def.69_99->x
# spaceinvaders.c:1271: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp391, i
	mov.w	r2, 3	# tmp393,
	shl.w	r0, r2	# tmp392, tmp393
	mov.w	r2, row_2_crab+2	# tmp395,
	add.w	r0, r2 #222	# tmp394, tmp395
	ld.s	r0, [r0]	# _101, row_2_crab[i_163].x
# spaceinvaders.c:1271: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	zex.s	r1, r1	# tmp396, _100
	zex.s	r0, r0	# tmp397, _101
	cmp.w	r1, r0	# tmp396, tmp397
	js	.L179		#
# spaceinvaders.c:1271: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.70_102, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _103, player_bullet_def.70_102->x
	zex.s	r1, r0	# _104, _103
# spaceinvaders.c:1271: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp398, i
	mov.w	r2, 3	# tmp400,
	shl.w	r0, r2	# tmp399, tmp400
	mov.w	r2, row_2_crab+2	# tmp402,
	add.w	r0, r2 #222	# tmp401, tmp402
	ld.s	r0, [r0]	# _105, row_2_crab[i_163].x
	zex.s	r0, r0	# _106, _105
# spaceinvaders.c:1271: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	add.w	r0, 11 #111	# _107,
# spaceinvaders.c:1271: 		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
	cmp.w	r1, r0	# _104, _107
	jgs	.L179		#
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.71_108, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _109, player_bullet_def.71_108->y
	zex.s	r1, r0	# _110, _109
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp403, i
	mov.w	r2, 3	# tmp405,
	shl.w	r0, r2	# tmp404, tmp405
	mov.w	r2, row_2_crab+4	# tmp407,
	add.w	r0, r2 #222	# tmp406, tmp407
	ld.s	r0, [r0]	# _111, row_2_crab[i_163].y
	zex.s	r0, r0	# _112, _111
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	add.w	r0, 7 #111	# _113,
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	cmp.w	r1, r0	# _110, _113
	jgs	.L179		#
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.72_114, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _115, player_bullet_def.72_114->y
	zex.s	r1, r0	# _116, _115
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp408, i
	mov.w	r2, 3	# tmp410,
	shl.w	r0, r2	# tmp409, tmp410
	mov.w	r2, row_2_crab+4	# tmp412,
	add.w	r0, r2 #222	# tmp411, tmp412
	ld.s	r0, [r0]	# _117, row_2_crab[i_163].y
	zex.s	r0, r0	# _118, _117
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	add.w	r0, -2 #111	# _119,
# spaceinvaders.c:1272: 		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
	cmp.w	r1, r0	# _116, _119
	jss	.L179		#
# spaceinvaders.c:1274: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp413, i
	mov.w	r1, 3	# tmp415,
	shl.w	r0, r1	# tmp414, tmp415
	mov.w	r1, row_2_crab+2	# tmp417,
	add.w	r0, r1 #222	# tmp416, tmp417
	ld.s	r0, [r0]	# _120, row_2_crab[i_163].x
# spaceinvaders.c:1274: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	zex.s	r1, r0	# _121, _120
# spaceinvaders.c:1274: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	ld.w	r0, [r13 + (-4)]	# tmp418, i
	mov.w	r2, 3	# tmp420,
	shl.w	r0, r2	# tmp419, tmp420
	mov.w	r2, row_2_crab+4	# tmp422,
	add.w	r0, r2 #222	# tmp421, tmp422
	ld.s	r0, [r0]	# _122, row_2_crab[i_163].y
# spaceinvaders.c:1274: 			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
	zex.s	r2, r0	# _123, _122
	mov.w	r0, sp	# tmp423,
	mov.w	r3, 8	# tmp424,
	st.w	[r0 + (12)], r3	#, tmp424
	mov.w	r3, 12	# tmp425,
	st.w	[r0 + (8)], r3	#, tmp425
	st.w	[r0 + (4)], r2	#, _123
	st.w	[r0], r1	#, _121
	call	clear_bitmap_test		#
# spaceinvaders.c:1275: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp426, i
	mov.w	r1, 3	# tmp428,
	shl.w	r0, r1	# tmp427, tmp428
	mov.w	r1, row_2_crab+2	# tmp430,
	add.w	r0, r1 #222	# tmp429, tmp430
	ld.s	r0, [r0]	# _124, row_2_crab[i_163].x
# spaceinvaders.c:1275: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	zex.s	r1, r0	# _125, _124
# spaceinvaders.c:1275: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp431, i
	mov.w	r2, 3	# tmp433,
	shl.w	r0, r2	# tmp432, tmp433
	mov.w	r2, row_2_crab+4	# tmp435,
	add.w	r0, r2 #222	# tmp434, tmp435
	ld.s	r0, [r0]	# _126, row_2_crab[i_163].y
# spaceinvaders.c:1275: 			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
	zex.s	r2, r0	# _127, _126
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
# spaceinvaders.c:1276: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp440,
	mov.w	r0, 3	# tmp441,
	st.w	[r1], r0	#, tmp441
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1277: 			row_2_crab[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp442, i
	mov.w	r1, 3	# tmp444,
	shl.w	r0, r1	# tmp443, tmp444
	mov.w	r1, row_2_crab+6	# tmp446,
	add.w	r0, r1 #222	# tmp445, tmp446
	mov.s	r1, 1	# tmp447,
	st.s	[r0], r1	# row_2_crab[i_163].alive, tmp447
# spaceinvaders.c:1278: 			death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.73_128, death_timer
	add.w	r0, 4 #111	# _129,
	st.w	[death_timer], r0	# death_timer, _129
# spaceinvaders.c:1279: 			break;
	j	.L172		#
.L179:
# spaceinvaders.c:1281: 		if(row_1_squid[i].alive == 2
	ld.w	r0, [r13 + (-4)]	# tmp448, i
	mov.w	r1, 3	# tmp450,
	shl.w	r0, r1	# tmp449, tmp450
	mov.w	r1, row_1_squid+6	# tmp452,
	add.w	r0, r1 #222	# tmp451, tmp452
	ld.s	r0, [r0]	# _130, row_1_squid[i_163].alive
# spaceinvaders.c:1281: 		if(row_1_squid[i].alive == 2
	zex.s	r1, r0	# tmp453, _130
	mov.w	r0, 2	# tmp454,
	cmp.w	r1, r0	# tmp453, tmp454
	jnz	.L180		#
# spaceinvaders.c:1282: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.74_131, player_bullet_def
	ld.s	r1, [r0 + (2)]	# _132, player_bullet_def.74_131->x
# spaceinvaders.c:1282: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp455, i
	mov.w	r2, 3	# tmp457,
	shl.w	r0, r2	# tmp456, tmp457
	mov.w	r2, row_1_squid+2	# tmp459,
	add.w	r0, r2 #222	# tmp458, tmp459
	ld.s	r0, [r0]	# _133, row_1_squid[i_163].x
# spaceinvaders.c:1282: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	zex.s	r1, r1	# tmp460, _132
	zex.s	r0, r0	# tmp461, _133
	cmp.w	r1, r0	# tmp460, tmp461
	js	.L180		#
# spaceinvaders.c:1282: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.75_134, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _135, player_bullet_def.75_134->x
	zex.s	r1, r0	# _136, _135
# spaceinvaders.c:1282: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	ld.w	r0, [r13 + (-4)]	# tmp462, i
	mov.w	r2, 3	# tmp464,
	shl.w	r0, r2	# tmp463, tmp464
	mov.w	r2, row_1_squid+2	# tmp466,
	add.w	r0, r2 #222	# tmp465, tmp466
	ld.s	r0, [r0]	# _137, row_1_squid[i_163].x
	zex.s	r0, r0	# _138, _137
# spaceinvaders.c:1282: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	add.w	r0, 11 #111	# _139,
# spaceinvaders.c:1282: 		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
	cmp.w	r1, r0	# _136, _139
	jgs	.L180		#
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.76_140, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _141, player_bullet_def.76_140->y
	zex.s	r1, r0	# _142, _141
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp467, i
	mov.w	r2, 3	# tmp469,
	shl.w	r0, r2	# tmp468, tmp469
	mov.w	r2, row_1_squid+4	# tmp471,
	add.w	r0, r2 #222	# tmp470, tmp471
	ld.s	r0, [r0]	# _143, row_1_squid[i_163].y
	zex.s	r0, r0	# _144, _143
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	add.w	r0, 7 #111	# _145,
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	cmp.w	r1, r0	# _142, _145
	jgs	.L180		#
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.77_146, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _147, player_bullet_def.77_146->y
	zex.s	r1, r0	# _148, _147
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	ld.w	r0, [r13 + (-4)]	# tmp472, i
	mov.w	r2, 3	# tmp474,
	shl.w	r0, r2	# tmp473, tmp474
	mov.w	r2, row_1_squid+4	# tmp476,
	add.w	r0, r2 #222	# tmp475, tmp476
	ld.s	r0, [r0]	# _149, row_1_squid[i_163].y
	zex.s	r0, r0	# _150, _149
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	add.w	r0, -2 #111	# _151,
# spaceinvaders.c:1283: 		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
	cmp.w	r1, r0	# _148, _151
	jss	.L180		#
# spaceinvaders.c:1285: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	ld.w	r0, [r13 + (-4)]	# tmp477, i
	mov.w	r1, 3	# tmp479,
	shl.w	r0, r1	# tmp478, tmp479
	mov.w	r1, row_1_squid+2	# tmp481,
	add.w	r0, r1 #222	# tmp480, tmp481
	ld.s	r0, [r0]	# _152, row_1_squid[i_163].x
# spaceinvaders.c:1285: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	zex.s	r1, r0	# _153, _152
# spaceinvaders.c:1285: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	ld.w	r0, [r13 + (-4)]	# tmp482, i
	mov.w	r2, 3	# tmp484,
	shl.w	r0, r2	# tmp483, tmp484
	mov.w	r2, row_1_squid+4	# tmp486,
	add.w	r0, r2 #222	# tmp485, tmp486
	ld.s	r0, [r0]	# _154, row_1_squid[i_163].y
# spaceinvaders.c:1285: 			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
	zex.s	r2, r0	# _155, _154
	mov.w	r0, sp	# tmp487,
	mov.w	r3, 8	# tmp488,
	st.w	[r0 + (12)], r3	#, tmp488
	mov.w	r3, 8	# tmp489,
	st.w	[r0 + (8)], r3	#, tmp489
	st.w	[r0 + (4)], r2	#, _155
	st.w	[r0], r1	#, _153
	call	clear_bitmap_test		#
# spaceinvaders.c:1286: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp490, i
	mov.w	r1, 3	# tmp492,
	shl.w	r0, r1	# tmp491, tmp492
	mov.w	r1, row_1_squid+2	# tmp494,
	add.w	r0, r1 #222	# tmp493, tmp494
	ld.s	r0, [r0]	# _156, row_1_squid[i_163].x
	zex.s	r0, r0	# _157, _156
# spaceinvaders.c:1286: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	mov.w	r1, r0	# _158, _157
	add.w	r1, -2 #111	# _158,
# spaceinvaders.c:1286: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	ld.w	r0, [r13 + (-4)]	# tmp495, i
	mov.w	r2, 3	# tmp497,
	shl.w	r0, r2	# tmp496, tmp497
	mov.w	r2, row_1_squid+4	# tmp499,
	add.w	r0, r2 #222	# tmp498, tmp499
	ld.s	r0, [r0]	# _159, row_1_squid[i_163].y
# spaceinvaders.c:1286: 			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
	zex.s	r2, r0	# _160, _159
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
# spaceinvaders.c:1287: 			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
	mov.w	r1, sp	# tmp504,
	mov.w	r0, 3	# tmp505,
	st.w	[r1], r0	#, tmp505
	call	delete_player_bullet_and_set_status		#
# spaceinvaders.c:1288: 			row_1_squid[i].alive = 1;
	ld.w	r0, [r13 + (-4)]	# tmp506, i
	mov.w	r1, 3	# tmp508,
	shl.w	r0, r1	# tmp507, tmp508
	mov.w	r1, row_1_squid+6	# tmp510,
	add.w	r0, r1 #222	# tmp509, tmp510
	mov.s	r1, 1	# tmp511,
	st.s	[r0], r1	# row_1_squid[i_163].alive, tmp511
# spaceinvaders.c:1289: 			death_timer += 4;
	ld.w	r0, [death_timer]	# death_timer.78_161, death_timer
	add.w	r0, 4 #111	# _162,
	st.w	[death_timer], r0	# death_timer, _162
# spaceinvaders.c:1290: 			break;
	j	.L172		#
.L180:
# spaceinvaders.c:1236: 	for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-4)]	# tmp513, i
	add.w	r0, 1 #111	# tmp512,
	st.w	[r13 + (-4)], r0	# i, tmp512
.L175:
# spaceinvaders.c:1236: 	for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-4)]	# tmp514, i
	mov.w	r0, 10	# tmp515,
	cmp.w	r1, r0	# tmp514, tmp515
	jses	.L181		#
.L172:
# spaceinvaders.c:1293: }
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
# spaceinvaders.c:1311: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp53, y
	mov.w	r0, r1	# tmp54, tmp53
	mov.w	r2, 2	# tmp56,
	shl.w	r0, r2	# tmp55, tmp56
	add.w	r0, r1 #222	# tmp54, tmp53
	mov.w	r1, 5	# tmp58,
	shl.w	r0, r1	# tmp57, tmp58
	mov.w	r1, r0	# _1, tmp54
# spaceinvaders.c:1311: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp59,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp59
# spaceinvaders.c:1311: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp60, x
	mov.w	r3, 31	# tmp62,
	mov.w	r1, r0	# tmp61, tmp60
	shr.w	r1, r3	# tmp61, tmp62
	mov.w	r3, r1	# tmp63, tmp61
	add.w	r3, r0 #222	# tmp63, tmp60
	mov.w	r1, 1	# tmp65,
	mov.w	r0, r3	# tmp64, tmp63
	shr.w	r0, r1	# tmp64, tmp65
	mov.w	r1, r0	# _3, tmp64
# spaceinvaders.c:1311: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:1311: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-4)], r0	# p1, _4
# spaceinvaders.c:1312: 	switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp66, x
	mov.w	r1, -2147483645	# tmp68,
	and.w	r0, r1	# tmp67, tmp68
	xor.w	r1, r1	# tmp69
	cmp.w	r0, r1	# tmp67, tmp69
	jges	.L183		#
	add.w	r0, -1 #111	# tmp67,
	mov.w	r1, -4	# tmp70,
	or.w	r0, r1	# tmp67, tmp70
	add.w	r0, 1 #111	# tmp67,
.L183:
# spaceinvaders.c:1312: 	switch (x % 4)
	mov.w	r1, 3	# tmp71,
	cmp.w	r0, r1	# _5, tmp71
	jz	.L184		#
	mov.w	r1, 3	# tmp72,
	cmp.w	r0, r1	# _5, tmp72
	jgs	.L185		#
	mov.w	r1, 2	# tmp73,
	cmp.w	r0, r1	# _5, tmp73
	jz	.L186		#
	mov.w	r1, 2	# tmp74,
	cmp.w	r0, r1	# _5, tmp74
	jgs	.L185		#
	xor.w	r1, r1	# tmp75
	cmp.w	r0, r1	# _5, tmp75
	jz	.L187		#
	mov.w	r1, 1	# tmp76,
	cmp.w	r0, r1	# _5, tmp76
	jz	.L188		#
	j	.L185		#
.L187:
# spaceinvaders.c:1315: 			if((*p1 & 0x0FFF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp77, p1
	ld.s	r0, [r0]	# _6, *p1_29
# spaceinvaders.c:1315: 			if((*p1 & 0x0FFF) == *p1)
	zex.s	r1, r0	# _7, _6
	mov.w	r0, 4095	# tmp78,
	and.w	r1, r0	# _8, tmp78
# spaceinvaders.c:1315: 			if((*p1 & 0x0FFF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp79, p1
	ld.s	r0, [r0]	# _9, *p1_29
	zex.s	r0, r0	# _10, _9
# spaceinvaders.c:1315: 			if((*p1 & 0x0FFF) == *p1)
	cmp.w	r1, r0	# _8, _10
	jnz	.L194		#
# spaceinvaders.c:1317: 				return 0;
	xor.w	r0, r0	# _26
	j	.L190		#
.L188:
# spaceinvaders.c:1321: 			if((*p1 & 0xF0FF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp80, p1
	ld.s	r0, [r0]	# _11, *p1_29
# spaceinvaders.c:1321: 			if((*p1 & 0xF0FF) == *p1)
	zex.s	r1, r0	# _12, _11
	mov.w	r0, 61695	# tmp81,
	and.w	r1, r0	# _13, tmp81
# spaceinvaders.c:1321: 			if((*p1 & 0xF0FF) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp82, p1
	ld.s	r0, [r0]	# _14, *p1_29
	zex.s	r0, r0	# _15, _14
# spaceinvaders.c:1321: 			if((*p1 & 0xF0FF) == *p1)
	cmp.w	r1, r0	# _13, _15
	jnz	.L195		#
# spaceinvaders.c:1323: 				return 0;
	xor.w	r0, r0	# _26
	j	.L190		#
.L186:
# spaceinvaders.c:1327: 			if((*p1 & 0xFF0F) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp83, p1
	ld.s	r0, [r0]	# _16, *p1_29
# spaceinvaders.c:1327: 			if((*p1 & 0xFF0F) == *p1)
	zex.s	r1, r0	# _17, _16
	mov.w	r0, 65295	# tmp84,
	and.w	r1, r0	# _18, tmp84
# spaceinvaders.c:1327: 			if((*p1 & 0xFF0F) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp85, p1
	ld.s	r0, [r0]	# _19, *p1_29
	zex.s	r0, r0	# _20, _19
# spaceinvaders.c:1327: 			if((*p1 & 0xFF0F) == *p1)
	cmp.w	r1, r0	# _18, _20
	jnz	.L196		#
# spaceinvaders.c:1329: 				return 0;
	xor.w	r0, r0	# _26
	j	.L190		#
.L184:
# spaceinvaders.c:1333: 			if((*p1 & 0xFFF0) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp86, p1
	ld.s	r0, [r0]	# _21, *p1_29
# spaceinvaders.c:1333: 			if((*p1 & 0xFFF0) == *p1)
	zex.s	r1, r0	# _22, _21
	mov.w	r0, 65520	# tmp87,
	and.w	r1, r0	# _23, tmp87
# spaceinvaders.c:1333: 			if((*p1 & 0xFFF0) == *p1)
	ld.w	r0, [r13 + (-4)]	# tmp88, p1
	ld.s	r0, [r0]	# _24, *p1_29
	zex.s	r0, r0	# _25, _24
# spaceinvaders.c:1333: 			if((*p1 & 0xFFF0) == *p1)
	cmp.w	r1, r0	# _23, _25
	jnz	.L197		#
# spaceinvaders.c:1335: 				return 0;
	xor.w	r0, r0	# _26
	j	.L190		#
.L194:
# spaceinvaders.c:1319: 			break;
	nop	
	j	.L185		#
.L195:
# spaceinvaders.c:1325: 			break;
	nop	
	j	.L185		#
.L196:
# spaceinvaders.c:1331: 			break;
	nop	
	j	.L185		#
.L197:
# spaceinvaders.c:1337: 			break;
	nop	
.L185:
# spaceinvaders.c:1339: 	return 1;
	mov.w	r0, 1	# _26,
.L190:
# spaceinvaders.c:1340: }
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
# spaceinvaders.c:1357: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r1, [r13 + (12)]	# tmp125, y
	mov.w	r0, r1	# tmp126, tmp125
	mov.w	r2, 2	# tmp128,
	shl.w	r0, r2	# tmp127, tmp128
	add.w	r0, r1 #222	# tmp126, tmp125
	mov.w	r1, 5	# tmp130,
	shl.w	r0, r1	# tmp129, tmp130
	mov.w	r1, r0	# _1, tmp126
# spaceinvaders.c:1357: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, 1024	# tmp131,
	mov.w	r2, r1	# _2, _1
	add.w	r2, r0 #222	# _2, tmp131
# spaceinvaders.c:1357: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	ld.w	r0, [r13 + (8)]	# tmp132, x
	mov.w	r3, 31	# tmp134,
	mov.w	r1, r0	# tmp133, tmp132
	shr.w	r1, r3	# tmp133, tmp134
	mov.w	r3, r1	# tmp135, tmp133
	add.w	r3, r0 #222	# tmp135, tmp132
	mov.w	r1, 1	# tmp137,
	mov.w	r0, r3	# tmp136, tmp135
	shr.w	r0, r1	# tmp136, tmp137
	mov.w	r1, r0	# _3, tmp136
# spaceinvaders.c:1357: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	mov.w	r0, r2	# _4, _2
	add.w	r0, r1 #222	# _4, _3
# spaceinvaders.c:1357: 	uint16_t *p1 = (uint16_t *)(1024 + y * 160 + x/2);
	st.w	[r13 + (-20)], r0	# p1, _4
# spaceinvaders.c:1358: 	for (int i = 0; i < height; i++)
	xor.w	r0, r0	# tmp138
	st.w	[r13 + (-8)], r0	# i, tmp138
# spaceinvaders.c:1358: 	for (int i = 0; i < height; i++)
	j	.L199		#
.L209:
# spaceinvaders.c:1361: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r1, [r13 + (-8)]	# i.79_5, i
	mov.w	r0, r1	# tmp139, i.79_5
	mov.w	r2, 2	# tmp141,
	shl.w	r0, r2	# tmp140, tmp141
	add.w	r0, r1 #222	# tmp139, i.79_5
	mov.w	r1, 5	# tmp143,
	shl.w	r0, r1	# tmp142, tmp143
	mov.w	r1, r0	# _6, tmp139
# spaceinvaders.c:1361: 		uint16_t *p2 = p1 + (i * 80);
	ld.w	r0, [r13 + (-20)]	# tmp145, p1
	add.w	r0, r1 #222	# tmp144, _6
	st.w	[r13 + (-12)], r0	# p2, tmp144
# spaceinvaders.c:1362: 		int uint16_ts_per_row = width / 4;
	ld.w	r0, [r13 + (16)]	# tmp147, width
	xor.w	r1, r1	# tmp149
	cmp.w	r0, r1	# tmp148, tmp149
	jges	.L200		#
	add.w	r0, 3 #111	# tmp148,
.L200:
	mov.w	r1, 2	# tmp151,
	shr.w	r0, r1	# tmp150, tmp151
	st.w	[r13 + (-24)], r0	# uint16_ts_per_row, tmp150
# spaceinvaders.c:1363: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	xor.w	r0, r0	# tmp152
	st.w	[r13 + (-16)], r0	# j, tmp152
# spaceinvaders.c:1363: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	j	.L201		#
.L208:
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp153, i
	ld.w	r1, [r13 + (-24)]	# tmp154, uint16_ts_per_row
	mul.w	r0, r1	# _7, tmp154
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r1, [r13 + (-16)]	# tmp155, j
	add.w	r0, r1 #222	# _8, tmp155
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp156, _9
	mov.w	r1, r0	# _10, tmp156
	ld.w	r0, [r13 + (24)]	# tmp157, bitmap
	add.w	r0, r1 #222	# _11, _10
	ld.s	r0, [r0]	# _12, *_11
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	zex.s	r1, r0	# _13, _12
	ld.w	r2, [r13 + (12)]	# tmp158, y
	ld.w	r0, [r13 + (-8)]	# tmp159, i
	add.w	r2, r0 #222	# _14, tmp159
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r0, [r13 + (-8)]	# tmp160, i
	ld.w	r3, [r13 + (-24)]	# tmp161, uint16_ts_per_row
	mul.w	r0, r3	# _15, tmp161
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	ld.w	r3, [r13 + (-16)]	# tmp162, j
	add.w	r0, r3 #222	# _16, tmp162
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	add.w	r0, r0 #222	# tmp163, _17
	ld.w	r3, [r13 + (24)]	# tmp164, bitmap
	mov.w	r6, r3	# _19, tmp164
	add.w	r6, r0 #222	# _19, _18
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	mov.w	r0, sp	# tmp165,
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _13
	call	change_uint16_t_color_depending_on_threshold		#
# spaceinvaders.c:1365: 			bitmap[i*uint16_ts_per_row + j] = change_uint16_t_color_depending_on_threshold(bitmap[i*uint16_ts_per_row + j], y + i);
	st.s	[r6], r0	# *_19, _20
# spaceinvaders.c:1366: 			switch (x % 4)
	ld.w	r0, [r13 + (8)]	# tmp166, x
	mov.w	r1, -2147483645	# tmp168,
	and.w	r0, r1	# tmp167, tmp168
	xor.w	r1, r1	# tmp169
	cmp.w	r0, r1	# tmp167, tmp169
	jges	.L202		#
	add.w	r0, -1 #111	# tmp167,
	mov.w	r1, -4	# tmp170,
	or.w	r0, r1	# tmp167, tmp170
	add.w	r0, 1 #111	# tmp167,
.L202:
# spaceinvaders.c:1366: 			switch (x % 4)
	mov.w	r1, 3	# tmp171,
	cmp.w	r0, r1	# _21, tmp171
	jz	.L203		#
	mov.w	r1, 3	# tmp172,
	cmp.w	r0, r1	# _21, tmp172
	jgs	.L204		#
	mov.w	r1, 2	# tmp173,
	cmp.w	r0, r1	# _21, tmp173
	jz	.L205		#
	mov.w	r1, 2	# tmp174,
	cmp.w	r0, r1	# _21, tmp174
	jgs	.L204		#
	xor.w	r1, r1	# tmp175
	cmp.w	r0, r1	# _21, tmp175
	jz	.L206		#
	mov.w	r1, 1	# tmp176,
	cmp.w	r0, r1	# _21, tmp176
	jz	.L207		#
	j	.L204		#
.L206:
# spaceinvaders.c:1369: 					*p2 = bitmap[i*uint16_ts_per_row + j] ^ ((*p2) | bitmap[i*uint16_ts_per_row + j]);
	ld.w	r0, [r13 + (-12)]	# tmp177, p2
	ld.s	r2, [r0]	# _22, *p2_102
# spaceinvaders.c:1369: 					*p2 = bitmap[i*uint16_ts_per_row + j] ^ ((*p2) | bitmap[i*uint16_ts_per_row + j]);
	ld.w	r0, [r13 + (-8)]	# tmp178, i
	ld.w	r1, [r13 + (-24)]	# tmp179, uint16_ts_per_row
	mul.w	r0, r1	# _23, tmp179
# spaceinvaders.c:1369: 					*p2 = bitmap[i*uint16_ts_per_row + j] ^ ((*p2) | bitmap[i*uint16_ts_per_row + j]);
	ld.w	r1, [r13 + (-16)]	# tmp180, j
	add.w	r0, r1 #222	# _24, tmp180
# spaceinvaders.c:1369: 					*p2 = bitmap[i*uint16_ts_per_row + j] ^ ((*p2) | bitmap[i*uint16_ts_per_row + j]);
	add.w	r0, r0 #222	# tmp181, _25
	mov.w	r1, r0	# _26, tmp181
	ld.w	r0, [r13 + (24)]	# tmp182, bitmap
	add.w	r0, r1 #222	# _27, _26
	ld.s	r0, [r0]	# _28, *_27
# spaceinvaders.c:1369: 					*p2 = bitmap[i*uint16_ts_per_row + j] ^ ((*p2) | bitmap[i*uint16_ts_per_row + j]);
	mov.w	r0, r0	# tmp183, _28
inv.w	r0	# tmp183
	mov.w	r1, r0	# _29, tmp183
	mov.w	r0, r2	# tmp184,
	and.w	r0, r1	# tmp184, _29
	mov.w	r1, r0	# _30, tmp184
	ld.w	r0, [r13 + (-12)]	# tmp185, p2
	st.s	[r0], r1	# *p2_102, _30
# spaceinvaders.c:1370: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp187, p2
	add.w	r0, 2 #111	# tmp186,
	st.w	[r13 + (-12)], r0	# p2, tmp186
# spaceinvaders.c:1371: 					break;
	j	.L204		#
.L207:
# spaceinvaders.c:1373: 					first = (bitmap[i*uint16_ts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4));
	ld.w	r0, [r13 + (-12)]	# tmp188, p2
	ld.s	r2, [r0]	# _31, *p2_102
# spaceinvaders.c:1373: 					first = (bitmap[i*uint16_ts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4));
	ld.w	r0, [r13 + (-8)]	# tmp189, i
	ld.w	r1, [r13 + (-24)]	# tmp190, uint16_ts_per_row
	mul.w	r0, r1	# _32, tmp190
# spaceinvaders.c:1373: 					first = (bitmap[i*uint16_ts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4));
	ld.w	r1, [r13 + (-16)]	# tmp191, j
	add.w	r0, r1 #222	# _33, tmp191
# spaceinvaders.c:1373: 					first = (bitmap[i*uint16_ts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4));
	add.w	r0, r0 #222	# tmp192, _34
	mov.w	r1, r0	# _35, tmp192
	ld.w	r0, [r13 + (24)]	# tmp193, bitmap
	add.w	r0, r1 #222	# _36, _35
	ld.s	r0, [r0]	# _37, *_36
# spaceinvaders.c:1373: 					first = (bitmap[i*uint16_ts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 4));
	zex.s	r0, r0	# tmp194, _37
	mov.w	r1, 4	# tmp196,
	shr.w	r0, r1	# tmp195, tmp196
	mov.w	r0, r0	# tmp197, _38
inv.w	r0	# tmp197
	mov.w	r1, r0	# _39, tmp197
	mov.w	r0, r2	# tmp198,
	and.w	r0, r1	# tmp198, _39
	st.s	[r13 + (-26)], r0	# first, tmp199
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	ld.w	r0, [r13 + (-12)]	# tmp200, p2
	add.w	r0, 2 #111	# _40,
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	ld.s	r0, [r0]	# _41, *_40
	mov.w	r2, r0	# _42, _41
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	ld.w	r0, [r13 + (-8)]	# tmp201, i
	ld.w	r1, [r13 + (-24)]	# tmp202, uint16_ts_per_row
	mul.w	r0, r1	# _43, tmp202
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	ld.w	r1, [r13 + (-16)]	# tmp203, j
	add.w	r0, r1 #222	# _44, tmp203
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	add.w	r0, r0 #222	# tmp204, _45
	mov.w	r1, r0	# _46, tmp204
	ld.w	r0, [r13 + (24)]	# tmp205, bitmap
	add.w	r0, r1 #222	# _47, _46
	ld.s	r0, [r0]	# _48, *_47
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	mov.w	r1, 12	# tmp207,
	shl.w	r0, r1	# tmp206, tmp207
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	mov.w	r0, r0	# tmp208, _49
inv.w	r0	# tmp208
	mov.w	r1, r0	# _51, _50
	mov.w	r0, r2	# tmp209,
	and.w	r0, r1	# tmp209, _51
# spaceinvaders.c:1374: 					second = (bitmap[i*uint16_ts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 12));
	st.s	[r13 + (-28)], r0	# second, _52
# spaceinvaders.c:1375: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp210, p2
	ld.s	r1, [r13 + (-26)]	# tmp211, first
	st.s	[r0], r1	# *p2_102, tmp211
# spaceinvaders.c:1376: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp212, p2
	add.w	r0, 2 #111	# _53,
# spaceinvaders.c:1376: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp213, second
	st.s	[r0], r1	# *_53, tmp213
# spaceinvaders.c:1377: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp215, p2
	add.w	r0, 2 #111	# tmp214,
	st.w	[r13 + (-12)], r0	# p2, tmp214
# spaceinvaders.c:1378: 					break;
	j	.L204		#
.L205:
# spaceinvaders.c:1380: 					first = (bitmap[i*uint16_ts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8));
	ld.w	r0, [r13 + (-12)]	# tmp216, p2
	ld.s	r2, [r0]	# _54, *p2_102
# spaceinvaders.c:1380: 					first = (bitmap[i*uint16_ts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8));
	ld.w	r0, [r13 + (-8)]	# tmp217, i
	ld.w	r1, [r13 + (-24)]	# tmp218, uint16_ts_per_row
	mul.w	r0, r1	# _55, tmp218
# spaceinvaders.c:1380: 					first = (bitmap[i*uint16_ts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8));
	ld.w	r1, [r13 + (-16)]	# tmp219, j
	add.w	r0, r1 #222	# _56, tmp219
# spaceinvaders.c:1380: 					first = (bitmap[i*uint16_ts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8));
	add.w	r0, r0 #222	# tmp220, _57
	mov.w	r1, r0	# _58, tmp220
	ld.w	r0, [r13 + (24)]	# tmp221, bitmap
	add.w	r0, r1 #222	# _59, _58
	ld.s	r0, [r0]	# _60, *_59
# spaceinvaders.c:1380: 					first = (bitmap[i*uint16_ts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 8));
	zex.s	r0, r0	# tmp222, _60
	mov.w	r1, 8	# tmp224,
	shr.w	r0, r1	# tmp223, tmp224
	mov.w	r0, r0	# tmp225, _61
inv.w	r0	# tmp225
	mov.w	r1, r0	# _62, tmp225
	mov.w	r0, r2	# tmp226,
	and.w	r0, r1	# tmp226, _62
	st.s	[r13 + (-26)], r0	# first, tmp227
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	ld.w	r0, [r13 + (-12)]	# tmp228, p2
	add.w	r0, 2 #111	# _63,
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	ld.s	r0, [r0]	# _64, *_63
	mov.w	r2, r0	# _65, _64
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	ld.w	r0, [r13 + (-8)]	# tmp229, i
	ld.w	r1, [r13 + (-24)]	# tmp230, uint16_ts_per_row
	mul.w	r0, r1	# _66, tmp230
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	ld.w	r1, [r13 + (-16)]	# tmp231, j
	add.w	r0, r1 #222	# _67, tmp231
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	add.w	r0, r0 #222	# tmp232, _68
	mov.w	r1, r0	# _69, tmp232
	ld.w	r0, [r13 + (24)]	# tmp233, bitmap
	add.w	r0, r1 #222	# _70, _69
	ld.s	r0, [r0]	# _71, *_70
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	mov.w	r1, 8	# tmp235,
	shl.w	r0, r1	# tmp234, tmp235
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	mov.w	r0, r0	# tmp236, _72
inv.w	r0	# tmp236
	mov.w	r1, r0	# _74, _73
	mov.w	r0, r2	# tmp237,
	and.w	r0, r1	# tmp237, _74
# spaceinvaders.c:1381: 					second = (bitmap[i*uint16_ts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 8));
	st.s	[r13 + (-28)], r0	# second, _75
# spaceinvaders.c:1382: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp238, p2
	ld.s	r1, [r13 + (-26)]	# tmp239, first
	st.s	[r0], r1	# *p2_102, tmp239
# spaceinvaders.c:1383: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp240, p2
	add.w	r0, 2 #111	# _76,
# spaceinvaders.c:1383: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp241, second
	st.s	[r0], r1	# *_76, tmp241
# spaceinvaders.c:1384: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp243, p2
	add.w	r0, 2 #111	# tmp242,
	st.w	[r13 + (-12)], r0	# p2, tmp242
# spaceinvaders.c:1385: 					break;
	j	.L204		#
.L203:
# spaceinvaders.c:1387: 					first = (bitmap[i*uint16_ts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12));
	ld.w	r0, [r13 + (-12)]	# tmp244, p2
	ld.s	r2, [r0]	# _77, *p2_102
# spaceinvaders.c:1387: 					first = (bitmap[i*uint16_ts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12));
	ld.w	r0, [r13 + (-8)]	# tmp245, i
	ld.w	r1, [r13 + (-24)]	# tmp246, uint16_ts_per_row
	mul.w	r0, r1	# _78, tmp246
# spaceinvaders.c:1387: 					first = (bitmap[i*uint16_ts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12));
	ld.w	r1, [r13 + (-16)]	# tmp247, j
	add.w	r0, r1 #222	# _79, tmp247
# spaceinvaders.c:1387: 					first = (bitmap[i*uint16_ts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12));
	add.w	r0, r0 #222	# tmp248, _80
	mov.w	r1, r0	# _81, tmp248
	ld.w	r0, [r13 + (24)]	# tmp249, bitmap
	add.w	r0, r1 #222	# _82, _81
	ld.s	r0, [r0]	# _83, *_82
# spaceinvaders.c:1387: 					first = (bitmap[i*uint16_ts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*uint16_ts_per_row + j] >> 12));
	zex.s	r0, r0	# tmp250, _83
	mov.w	r1, 12	# tmp252,
	shr.w	r0, r1	# tmp251, tmp252
	mov.w	r0, r0	# tmp253, _84
inv.w	r0	# tmp253
	mov.w	r1, r0	# _85, tmp253
	mov.w	r0, r2	# tmp254,
	and.w	r0, r1	# tmp254, _85
	st.s	[r13 + (-26)], r0	# first, tmp255
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	ld.w	r0, [r13 + (-12)]	# tmp256, p2
	add.w	r0, 2 #111	# _86,
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	ld.s	r0, [r0]	# _87, *_86
	mov.w	r2, r0	# _88, _87
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	ld.w	r0, [r13 + (-8)]	# tmp257, i
	ld.w	r1, [r13 + (-24)]	# tmp258, uint16_ts_per_row
	mul.w	r0, r1	# _89, tmp258
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	ld.w	r1, [r13 + (-16)]	# tmp259, j
	add.w	r0, r1 #222	# _90, tmp259
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	add.w	r0, r0 #222	# tmp260, _91
	mov.w	r1, r0	# _92, tmp260
	ld.w	r0, [r13 + (24)]	# tmp261, bitmap
	add.w	r0, r1 #222	# _93, _92
	ld.s	r0, [r0]	# _94, *_93
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	mov.w	r1, 4	# tmp263,
	shl.w	r0, r1	# tmp262, tmp263
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	mov.w	r0, r0	# tmp264, _95
inv.w	r0	# tmp264
	mov.w	r1, r0	# _97, _96
	mov.w	r0, r2	# tmp265,
	and.w	r0, r1	# tmp265, _97
# spaceinvaders.c:1388: 					second = (bitmap[i*uint16_ts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*uint16_ts_per_row + j] << 4));
	st.s	[r13 + (-28)], r0	# second, _98
# spaceinvaders.c:1389: 					*p2 = first;
	ld.w	r0, [r13 + (-12)]	# tmp266, p2
	ld.s	r1, [r13 + (-26)]	# tmp267, first
	st.s	[r0], r1	# *p2_102, tmp267
# spaceinvaders.c:1390: 					*(p2+1) = second;
	ld.w	r0, [r13 + (-12)]	# tmp268, p2
	add.w	r0, 2 #111	# _99,
# spaceinvaders.c:1390: 					*(p2+1) = second;
	ld.s	r1, [r13 + (-28)]	# tmp269, second
	st.s	[r0], r1	# *_99, tmp269
# spaceinvaders.c:1391: 					p2++;
	ld.w	r0, [r13 + (-12)]	# tmp271, p2
	add.w	r0, 2 #111	# tmp270,
	st.w	[r13 + (-12)], r0	# p2, tmp270
# spaceinvaders.c:1392: 					break;
	nop	
.L204:
# spaceinvaders.c:1363: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r0, [r13 + (-16)]	# tmp273, j
	add.w	r0, 1 #111	# tmp272,
	st.w	[r13 + (-16)], r0	# j, tmp272
.L201:
# spaceinvaders.c:1363: 		for (int j = 0; j < uint16_ts_per_row; j++) 
	ld.w	r1, [r13 + (-16)]	# tmp274, j
	ld.w	r0, [r13 + (-24)]	# tmp275, uint16_ts_per_row
	cmp.w	r1, r0	# tmp274, tmp275
	jss	.L208		#
# spaceinvaders.c:1358: 	for (int i = 0; i < height; i++)
	ld.w	r0, [r13 + (-8)]	# tmp277, i
	add.w	r0, 1 #111	# tmp276,
	st.w	[r13 + (-8)], r0	# i, tmp276
.L199:
# spaceinvaders.c:1358: 	for (int i = 0; i < height; i++)
	ld.w	r1, [r13 + (-8)]	# tmp278, i
	ld.w	r0, [r13 + (20)]	# tmp279, height
	cmp.w	r1, r0	# tmp278, tmp279
	jss	.L209		#
# spaceinvaders.c:1396: }
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
# spaceinvaders.c:1410: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.80_1, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _2, player_bullet_def.80_1->x
# spaceinvaders.c:1410: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	zex.s	r1, r0	# _3, _2
# spaceinvaders.c:1410: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.81_4, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _5, player_bullet_def.81_4->y
# spaceinvaders.c:1410: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	zex.s	r2, r0	# _6, _5
	mov.w	r0, sp	# tmp49,
	st.w	[r0 + (4)], r2	#, _6
	st.w	[r0], r1	#, _3
	call	position_is_not_clear		#
	mov.w	r1, r0	# _7,
# spaceinvaders.c:1410: 	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# _7, tmp50
	jnz	.L211		#
# spaceinvaders.c:1411: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.82_8, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _9, player_bullet_def.82_8->x
# spaceinvaders.c:1411: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	zex.s	r1, r0	# _10, _9
# spaceinvaders.c:1411: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.83_11, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _12, player_bullet_def.83_11->y
	zex.s	r0, r0	# _13, _12
# spaceinvaders.c:1411: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	mov.w	r2, r0	# _14, _13
	add.w	r2, 1 #111	# _14,
	mov.w	r0, sp	# tmp51,
	st.w	[r0 + (4)], r2	#, _14
	st.w	[r0], r1	#, _10
	call	position_is_not_clear		#
	mov.w	r1, r0	# _15,
# spaceinvaders.c:1411: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	xor.w	r0, r0	# tmp52
	cmp.w	r1, r0	# _15, tmp52
	jnz	.L211		#
# spaceinvaders.c:1412: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.84_16, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _17, player_bullet_def.84_16->x
# spaceinvaders.c:1412: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	zex.s	r1, r0	# _18, _17
# spaceinvaders.c:1412: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	ld.w	r0, [player_bullet_def]	# player_bullet_def.85_19, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _20, player_bullet_def.85_19->y
	zex.s	r0, r0	# _21, _20
# spaceinvaders.c:1412: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	mov.w	r2, r0	# _22, _21
	add.w	r2, 2 #111	# _22,
	mov.w	r0, sp	# tmp53,
	st.w	[r0 + (4)], r2	#, _22
	st.w	[r0], r1	#, _18
	call	position_is_not_clear		#
	mov.w	r1, r0	# _23,
# spaceinvaders.c:1412: 	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# _23, tmp54
	jz	.L213		#
.L211:
# spaceinvaders.c:1414: 		set_player_bullet_to_explode();
	call	set_player_bullet_to_explode		#
.L213:
# spaceinvaders.c:1416: }
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
# spaceinvaders.c:1420: 	alien_bullet[alien_bullet_index].status = EXPLODING;
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
# spaceinvaders.c:1421: 	alien_bullet[alien_bullet_index].timer_for_destroy = 150;
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
# spaceinvaders.c:1422: }
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
# spaceinvaders.c:1426: 	player_alive = 1;
	mov.w	r0, 1	# tmp33,
	st.w	[player_alive], r0	# player_alive, tmp33
# spaceinvaders.c:1427: 	player_death_timer = 0;
	xor.w	r0, r0	# tmp34
	st.w	[player_death_timer], r0	# player_death_timer, tmp34
# spaceinvaders.c:1428: 	player_ship->addr = 0;
	ld.w	r0, [player_ship]	# player_ship.86_1, player_ship
# spaceinvaders.c:1428: 	player_ship->addr = 0;
	xor.w	r1, r1	# tmp35
	st.s	[r0], r1	# player_ship.86_1->addr, tmp35
# spaceinvaders.c:1429: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.87_2, player_ship
	ld.s	r0, [r0 + (2)]	# _3, player_ship.87_2->x
# spaceinvaders.c:1429: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	zex.s	r1, r0	# _4, _3
# spaceinvaders.c:1429: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.88_5, player_ship
	ld.s	r0, [r0 + (4)]	# _6, player_ship.88_5->y
# spaceinvaders.c:1429: 	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	zex.s	r2, r0	# _7, _6
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
# spaceinvaders.c:1430: }
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
# spaceinvaders.c:1439: 	if(alien_bullet[alien_bullet_index].type == 0)
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
# spaceinvaders.c:1439: 	if(alien_bullet[alien_bullet_index].type == 0)
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# _1, tmp63
	jnz	.L217		#
# spaceinvaders.c:1441: 		switch(alien_bullet[alien_bullet_index].sprite)
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
# spaceinvaders.c:1441: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp72,
	cmp.w	r0, r1	# _2, tmp72
	jz	.L218		#
	mov.w	r1, 2	# tmp73,
	cmp.w	r0, r1	# _2, tmp73
	jgs	.L219		#
	xor.w	r1, r1	# tmp74
	cmp.w	r0, r1	# _2, tmp74
	jz	.L220		#
	mov.w	r1, 1	# tmp75,
	cmp.w	r0, r1	# _2, tmp75
	jz	.L221		#
	j	.L219		#
.L220:
# spaceinvaders.c:1444: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
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
# spaceinvaders.c:1445: 			break;
	j	.L223		#
.L221:
# spaceinvaders.c:1447: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
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
# spaceinvaders.c:1448: 			break;
	j	.L223		#
.L218:
# spaceinvaders.c:1450: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
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
# spaceinvaders.c:1451: 			break;
	j	.L223		#
.L219:
# spaceinvaders.c:1453: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
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
# spaceinvaders.c:1454: 			break;	
	j	.L223		#
.L217:
# spaceinvaders.c:1457: 	else if (alien_bullet[alien_bullet_index].type == 1)
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
# spaceinvaders.c:1457: 	else if (alien_bullet[alien_bullet_index].type == 1)
	mov.w	r0, 1	# tmp164,
	cmp.w	r1, r0	# _11, tmp164
	jnz	.L224		#
# spaceinvaders.c:1459: 		switch(alien_bullet[alien_bullet_index].sprite)
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
# spaceinvaders.c:1459: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp173,
	cmp.w	r0, r1	# _12, tmp173
	jz	.L225		#
	mov.w	r1, 2	# tmp174,
	cmp.w	r0, r1	# _12, tmp174
	jgs	.L226		#
	xor.w	r1, r1	# tmp175
	cmp.w	r0, r1	# _12, tmp175
	jz	.L227		#
	mov.w	r1, 1	# tmp176,
	cmp.w	r0, r1	# _12, tmp176
	jz	.L228		#
	j	.L226		#
.L227:
# spaceinvaders.c:1462: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
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
# spaceinvaders.c:1463: 			break;
	j	.L223		#
.L228:
# spaceinvaders.c:1465: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
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
# spaceinvaders.c:1466: 			break;
	j	.L223		#
.L225:
# spaceinvaders.c:1468: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
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
# spaceinvaders.c:1469: 			break;
	j	.L223		#
.L226:
# spaceinvaders.c:1471: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
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
# spaceinvaders.c:1472: 			break;	
	j	.L223		#
.L224:
# spaceinvaders.c:1477: 		switch(alien_bullet[alien_bullet_index].sprite)
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
# spaceinvaders.c:1477: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp265,
	cmp.w	r0, r1	# _21, tmp265
	jz	.L230		#
	mov.w	r1, 2	# tmp266,
	cmp.w	r0, r1	# _21, tmp266
	jgs	.L231		#
	xor.w	r1, r1	# tmp267
	cmp.w	r0, r1	# _21, tmp267
	jz	.L232		#
	mov.w	r1, 1	# tmp268,
	cmp.w	r0, r1	# _21, tmp268
	jz	.L233		#
	j	.L231		#
.L232:
# spaceinvaders.c:1480: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
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
# spaceinvaders.c:1481: 			break;
	j	.L223		#
.L233:
# spaceinvaders.c:1483: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
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
# spaceinvaders.c:1484: 			break;
	j	.L223		#
.L230:
# spaceinvaders.c:1486: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
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
# spaceinvaders.c:1487: 			break;
	j	.L223		#
.L231:
# spaceinvaders.c:1489: 			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
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
# spaceinvaders.c:1490: 			break;	
	nop	
.L223:
# spaceinvaders.c:1493: }
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
# spaceinvaders.c:1497: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	ld.w	r0, [player_ship]	# player_ship.89_1, player_ship
	ld.s	r0, [r0 + (4)]	# _2, player_ship.89_1->y
	zex.s	r0, r0	# _3, _2
# spaceinvaders.c:1497: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	mov.w	r2, r0	# _4, _3
	add.w	r2, -5 #111	# _4,
# spaceinvaders.c:1497: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
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
# spaceinvaders.c:1497: 	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	cmp.w	r2, r0	# _4, _5
	jgs	.L236		#
# spaceinvaders.c:1498: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
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
# spaceinvaders.c:1498: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	mov.w	r1, r0	# _7, _6
	add.w	r1, -5 #111	# _7,
# spaceinvaders.c:1498: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	ld.w	r0, [player_ship]	# player_ship.90_8, player_ship
	ld.s	r0, [r0 + (4)]	# _9, player_ship.90_8->y
	zex.s	r0, r0	# _10, _9
# spaceinvaders.c:1498: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	add.w	r0, 9 #111	# _11,
# spaceinvaders.c:1498: 	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	cmp.w	r1, r0	# _7, _11
	jgs	.L236		#
# spaceinvaders.c:1499: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	ld.w	r0, [player_ship]	# player_ship.91_12, player_ship
	ld.s	r0, [r0 + (2)]	# _13, player_ship.91_12->x
	zex.s	r0, r0	# _14, _13
# spaceinvaders.c:1499: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	mov.w	r2, r0	# _15, _14
	add.w	r2, -1 #111	# _15,
# spaceinvaders.c:1499: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
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
# spaceinvaders.c:1499: 	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	cmp.w	r2, r0	# _15, _16
	jgs	.L236		#
# spaceinvaders.c:1500: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	ld.w	r0, [player_ship]	# player_ship.92_17, player_ship
	ld.s	r0, [r0 + (2)]	# _18, player_ship.92_17->x
	zex.s	r0, r0	# _19, _18
# spaceinvaders.c:1500: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	mov.w	r2, r0	# _20, _19
	add.w	r2, 14 #111	# _20,
# spaceinvaders.c:1500: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
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
# spaceinvaders.c:1500: 	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	cmp.w	r2, r0	# _20, _21
	jss	.L236		#
# spaceinvaders.c:1502: 		clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp81,
	ld.w	r0, [r13 + (8)]	# tmp82, alien_bullet_index
	st.w	[r1], r0	#, tmp82
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1503: 		set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp83,
	ld.w	r0, [r13 + (8)]	# tmp84, alien_bullet_index
	st.w	[r1], r0	#, tmp84
	call	set_alien_bullet_to_explode		#
# spaceinvaders.c:1504: 		lives--;
	ld.w	r0, [lives]	# lives.93_22, lives
	add.w	r0, -1 #111	# _23,
	st.w	[lives], r0	# lives, _23
# spaceinvaders.c:1505: 		destroy_player();
	call	destroy_player		#
.L236:
# spaceinvaders.c:1507: }
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
# spaceinvaders.c:1512: 	if(alien_bullet[alien_bullet_index].y >= BOTTOM_LINE_Y - 6)
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
# spaceinvaders.c:1512: 	if(alien_bullet[alien_bullet_index].y >= BOTTOM_LINE_Y - 6)
	mov.w	r0, 221	# tmp41,
	cmp.w	r1, r0	# _1, tmp41
	jses	.L238		#
# spaceinvaders.c:1514: 		clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp42,
	ld.w	r0, [r13 + (8)]	# tmp43, alien_bullet_index
	st.w	[r1], r0	#, tmp43
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1515: 		set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp44,
	ld.w	r0, [r13 + (8)]	# tmp45, alien_bullet_index
	st.w	[r1], r0	#, tmp45
	call	set_alien_bullet_to_explode		#
# spaceinvaders.c:1532: }
	j	.L246		#
.L238:
# spaceinvaders.c:1517: 	else if(alien_bullet[alien_bullet_index].y >= BASE_Y - 6)
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
# spaceinvaders.c:1517: 	else if(alien_bullet[alien_bullet_index].y >= BASE_Y - 6)
	mov.w	r0, 181	# tmp54,
	cmp.w	r1, r0	# _2, tmp54
	jses	.L246		#
# spaceinvaders.c:1519: 		for(int i = 0; i <= 2; i++)
	xor.w	r0, r0	# tmp55
	st.w	[r13 + (-4)], r0	# i, tmp55
# spaceinvaders.c:1519: 		for(int i = 0; i <= 2; i++)
	j	.L240		#
.L245:
# spaceinvaders.c:1521: 			for(int j = 0; j <= 2; j++)
	xor.w	r0, r0	# tmp56
	st.w	[r13 + (-8)], r0	# j, tmp56
# spaceinvaders.c:1521: 			for(int j = 0; j <= 2; j++)
	j	.L241		#
.L244:
# spaceinvaders.c:1523: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
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
# spaceinvaders.c:1523: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	ld.w	r0, [r13 + (-8)]	# tmp65, j
	mov.w	r2, r1	# _4, _3
	add.w	r2, r0 #222	# _4, tmp65
# spaceinvaders.c:1523: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
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
# spaceinvaders.c:1523: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	ld.w	r0, [r13 + (-4)]	# tmp74, i
	add.w	r1, r0 #222	# _6, tmp74
	mov.w	r0, sp	# tmp75,
	st.w	[r0 + (4)], r1	#, _6
	st.w	[r0], r2	#, _4
	call	position_is_not_clear		#
	mov.w	r1, r0	# _7,
# spaceinvaders.c:1523: 				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
	xor.w	r0, r0	# tmp76
	cmp.w	r1, r0	# _7, tmp76
	jz	.L242		#
# spaceinvaders.c:1525: 					clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp77,
	ld.w	r0, [r13 + (8)]	# tmp78, alien_bullet_index
	st.w	[r1], r0	#, tmp78
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1526: 					set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp79,
	ld.w	r0, [r13 + (8)]	# tmp80, alien_bullet_index
	st.w	[r1], r0	#, tmp80
	call	set_alien_bullet_to_explode		#
# spaceinvaders.c:1527: 					break;
	j	.L243		#
.L242:
# spaceinvaders.c:1521: 			for(int j = 0; j <= 2; j++)
	ld.w	r0, [r13 + (-8)]	# tmp82, j
	add.w	r0, 1 #111	# tmp81,
	st.w	[r13 + (-8)], r0	# j, tmp81
.L241:
# spaceinvaders.c:1521: 			for(int j = 0; j <= 2; j++)
	ld.w	r1, [r13 + (-8)]	# tmp83, j
	mov.w	r0, 2	# tmp84,
	cmp.w	r1, r0	# tmp83, tmp84
	jses	.L244		#
.L243:
# spaceinvaders.c:1519: 		for(int i = 0; i <= 2; i++)
	ld.w	r0, [r13 + (-4)]	# tmp86, i
	add.w	r0, 1 #111	# tmp85,
	st.w	[r13 + (-4)], r0	# i, tmp85
.L240:
# spaceinvaders.c:1519: 		for(int i = 0; i <= 2; i++)
	ld.w	r1, [r13 + (-4)]	# tmp87, i
	mov.w	r0, 2	# tmp88,
	cmp.w	r1, r0	# tmp87, tmp88
	jses	.L245		#
.L246:
# spaceinvaders.c:1532: }
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
# spaceinvaders.c:1536: 	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
	ld.w	r0, [player_bullet_def]	# player_bullet_def.94_1, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _2, player_bullet_def.94_1->x
	zex.s	r2, r0	# _3, _2
# spaceinvaders.c:1536: 	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
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
# spaceinvaders.c:1536: 	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
	cmp.w	r2, r0	# _3, _4
	jss	.L249		#
# spaceinvaders.c:1537: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	ld.w	r0, [player_bullet_def]	# player_bullet_def.95_5, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _6, player_bullet_def.95_5->x
	zex.s	r2, r0	# _7, _6
# spaceinvaders.c:1537: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
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
# spaceinvaders.c:1537: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	add.w	r0, 2 #111	# _9,
# spaceinvaders.c:1537: 	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	cmp.w	r2, r0	# _7, _9
	jgs	.L249		#
# spaceinvaders.c:1538: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	ld.w	r0, [player_bullet_def]	# player_bullet_def.96_10, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _11, player_bullet_def.96_10->y
	zex.s	r2, r0	# _12, _11
# spaceinvaders.c:1538: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
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
# spaceinvaders.c:1538: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	add.w	r0, -2 #111	# _14,
# spaceinvaders.c:1538: 	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	cmp.w	r2, r0	# _12, _14
	jss	.L249		#
# spaceinvaders.c:1539: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.97_15, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _16, player_bullet_def.97_15->y
	zex.s	r2, r0	# _17, _16
# spaceinvaders.c:1539: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
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
# spaceinvaders.c:1539: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	add.w	r0, 6 #111	# _19,
# spaceinvaders.c:1539: 	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	cmp.w	r2, r0	# _17, _19
	jgs	.L249		#
# spaceinvaders.c:1541: 		set_player_bullet_to_explode();
	call	set_player_bullet_to_explode		#
# spaceinvaders.c:1543: 		clear_current_alien_bullet_sprite(alien_bullet_index);
	mov.w	r1, sp	# tmp77,
	ld.w	r0, [r13 + (8)]	# tmp78, alien_bullet_index
	st.w	[r1], r0	#, tmp78
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:1544: 		set_alien_bullet_to_explode(alien_bullet_index);
	mov.w	r1, sp	# tmp79,
	ld.w	r0, [r13 + (8)]	# tmp80, alien_bullet_index
	st.w	[r1], r0	#, tmp80
	call	set_alien_bullet_to_explode		#
.L249:
# spaceinvaders.c:1546: }
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
# spaceinvaders.c:1550: 	death_timer = 0;
	xor.w	r0, r0	# tmp72
	st.w	[death_timer], r0	# death_timer, tmp72
# spaceinvaders.c:1551: 	player_bullet_status = READY;
	xor.w	r0, r0	# tmp73
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp73
# spaceinvaders.c:1565: 	for(int i = 0; i <= 11; i++)
	xor.w	r0, r0	# tmp74
	st.w	[r13 + (-4)], r0	# i, tmp74
# spaceinvaders.c:1565: 	for(int i = 0; i <= 11; i++)
	j	.L251		#
.L258:
# spaceinvaders.c:1567: 		if(row_5_octopus[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp75, i
	mov.w	r1, 3	# tmp77,
	shl.w	r0, r1	# tmp76, tmp77
	mov.w	r1, row_5_octopus+6	# tmp79,
	add.w	r0, r1 #222	# tmp78, tmp79
	ld.s	r0, [r0]	# _1, row_5_octopus[i_47].alive
# spaceinvaders.c:1567: 		if(row_5_octopus[i].alive == 1)
	zex.s	r1, r0	# tmp80, _1
	mov.w	r0, 1	# tmp81,
	cmp.w	r1, r0	# tmp80, tmp81
	jnz	.L252		#
# spaceinvaders.c:1569: 			row_5_octopus[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp82, i
	mov.w	r1, 3	# tmp84,
	shl.w	r0, r1	# tmp83, tmp84
	mov.w	r1, row_5_octopus+6	# tmp86,
	add.w	r0, r1 #222	# tmp85, tmp86
	xor.w	r1, r1	# tmp87
	st.s	[r0], r1	# row_5_octopus[i_47].alive, tmp87
# spaceinvaders.c:1571: 				row_5_octopus[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp88, i
	mov.w	r1, 3	# tmp90,
	shl.w	r0, r1	# tmp89, tmp90
	mov.w	r1, row_5_octopus+2	# tmp92,
	add.w	r0, r1 #222	# tmp91, tmp92
	ld.s	r0, [r0]	# _2, row_5_octopus[i_47].x
# spaceinvaders.c:1570: 			clear_bitmap_with_specific_shape(
	zex.s	r1, r0	# _3, _2
# spaceinvaders.c:1572: 				row_5_octopus[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp93, i
	mov.w	r2, 3	# tmp95,
	shl.w	r0, r2	# tmp94, tmp95
	mov.w	r2, row_5_octopus+4	# tmp97,
	add.w	r0, r2 #222	# tmp96, tmp97
	ld.s	r0, [r0]	# _4, row_5_octopus[i_47].y
# spaceinvaders.c:1570: 			clear_bitmap_with_specific_shape(
	zex.s	r2, r0	# _5, _4
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
# spaceinvaders.c:1576: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.98_6, number_of_aliens
	add.w	r0, -1 #111	# _7,
	st.w	[number_of_aliens], r0	# number_of_aliens, _7
# spaceinvaders.c:1577: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1578: 			decrease_alien_bullet_spawn_time();
	call	decrease_alien_bullet_spawn_time		#
# spaceinvaders.c:1579: 			score += 10;
	ld.w	r0, [score]	# score.99_8, score
	add.w	r0, 10 #111	# _9,
	st.w	[score], r0	# score, _9
# spaceinvaders.c:1580: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1581: 			break;
	j	.L253		#
.L252:
# spaceinvaders.c:1583: 		if(row_4_octopus[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp102, i
	mov.w	r1, 3	# tmp104,
	shl.w	r0, r1	# tmp103, tmp104
	mov.w	r1, row_4_octopus+6	# tmp106,
	add.w	r0, r1 #222	# tmp105, tmp106
	ld.s	r0, [r0]	# _10, row_4_octopus[i_47].alive
# spaceinvaders.c:1583: 		if(row_4_octopus[i].alive == 1)
	zex.s	r1, r0	# tmp107, _10
	mov.w	r0, 1	# tmp108,
	cmp.w	r1, r0	# tmp107, tmp108
	jnz	.L254		#
# spaceinvaders.c:1585: 			row_4_octopus[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp109, i
	mov.w	r1, 3	# tmp111,
	shl.w	r0, r1	# tmp110, tmp111
	mov.w	r1, row_4_octopus+6	# tmp113,
	add.w	r0, r1 #222	# tmp112, tmp113
	xor.w	r1, r1	# tmp114
	st.s	[r0], r1	# row_4_octopus[i_47].alive, tmp114
# spaceinvaders.c:1587: 				row_4_octopus[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp115, i
	mov.w	r1, 3	# tmp117,
	shl.w	r0, r1	# tmp116, tmp117
	mov.w	r1, row_4_octopus+2	# tmp119,
	add.w	r0, r1 #222	# tmp118, tmp119
	ld.s	r0, [r0]	# _11, row_4_octopus[i_47].x
# spaceinvaders.c:1586: 			clear_bitmap_with_specific_shape(
	zex.s	r1, r0	# _12, _11
# spaceinvaders.c:1588: 				row_4_octopus[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp120, i
	mov.w	r2, 3	# tmp122,
	shl.w	r0, r2	# tmp121, tmp122
	mov.w	r2, row_4_octopus+4	# tmp124,
	add.w	r0, r2 #222	# tmp123, tmp124
	ld.s	r0, [r0]	# _13, row_4_octopus[i_47].y
# spaceinvaders.c:1586: 			clear_bitmap_with_specific_shape(
	zex.s	r2, r0	# _14, _13
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
# spaceinvaders.c:1592: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.100_15, number_of_aliens
	add.w	r0, -1 #111	# _16,
	st.w	[number_of_aliens], r0	# number_of_aliens, _16
# spaceinvaders.c:1593: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1594: 			decrease_alien_bullet_spawn_time();
	call	decrease_alien_bullet_spawn_time		#
# spaceinvaders.c:1595: 			score += 10;
	ld.w	r0, [score]	# score.101_17, score
	add.w	r0, 10 #111	# _18,
	st.w	[score], r0	# score, _18
# spaceinvaders.c:1596: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1597: 			break;
	j	.L253		#
.L254:
# spaceinvaders.c:1599: 		if(row_3_crab[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp129, i
	mov.w	r1, 3	# tmp131,
	shl.w	r0, r1	# tmp130, tmp131
	mov.w	r1, row_3_crab+6	# tmp133,
	add.w	r0, r1 #222	# tmp132, tmp133
	ld.s	r0, [r0]	# _19, row_3_crab[i_47].alive
# spaceinvaders.c:1599: 		if(row_3_crab[i].alive == 1)
	zex.s	r1, r0	# tmp134, _19
	mov.w	r0, 1	# tmp135,
	cmp.w	r1, r0	# tmp134, tmp135
	jnz	.L255		#
# spaceinvaders.c:1601: 			row_3_crab[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp136, i
	mov.w	r1, 3	# tmp138,
	shl.w	r0, r1	# tmp137, tmp138
	mov.w	r1, row_3_crab+6	# tmp140,
	add.w	r0, r1 #222	# tmp139, tmp140
	xor.w	r1, r1	# tmp141
	st.s	[r0], r1	# row_3_crab[i_47].alive, tmp141
# spaceinvaders.c:1603: 				row_3_crab[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp142, i
	mov.w	r1, 3	# tmp144,
	shl.w	r0, r1	# tmp143, tmp144
	mov.w	r1, row_3_crab+2	# tmp146,
	add.w	r0, r1 #222	# tmp145, tmp146
	ld.s	r0, [r0]	# _20, row_3_crab[i_47].x
# spaceinvaders.c:1602: 			clear_bitmap_with_specific_shape(
	zex.s	r1, r0	# _21, _20
# spaceinvaders.c:1604: 				row_3_crab[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp147, i
	mov.w	r2, 3	# tmp149,
	shl.w	r0, r2	# tmp148, tmp149
	mov.w	r2, row_3_crab+4	# tmp151,
	add.w	r0, r2 #222	# tmp150, tmp151
	ld.s	r0, [r0]	# _22, row_3_crab[i_47].y
# spaceinvaders.c:1602: 			clear_bitmap_with_specific_shape(
	zex.s	r2, r0	# _23, _22
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
# spaceinvaders.c:1608: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.102_24, number_of_aliens
	add.w	r0, -1 #111	# _25,
	st.w	[number_of_aliens], r0	# number_of_aliens, _25
# spaceinvaders.c:1609: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1610: 			decrease_alien_bullet_spawn_time();
	call	decrease_alien_bullet_spawn_time		#
# spaceinvaders.c:1611: 			score += 20;
	ld.w	r0, [score]	# score.103_26, score
	add.w	r0, 20 #111	# _27,
	st.w	[score], r0	# score, _27
# spaceinvaders.c:1612: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1613: 			break;
	j	.L253		#
.L255:
# spaceinvaders.c:1615: 		if(row_2_crab[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp156, i
	mov.w	r1, 3	# tmp158,
	shl.w	r0, r1	# tmp157, tmp158
	mov.w	r1, row_2_crab+6	# tmp160,
	add.w	r0, r1 #222	# tmp159, tmp160
	ld.s	r0, [r0]	# _28, row_2_crab[i_47].alive
# spaceinvaders.c:1615: 		if(row_2_crab[i].alive == 1)
	zex.s	r1, r0	# tmp161, _28
	mov.w	r0, 1	# tmp162,
	cmp.w	r1, r0	# tmp161, tmp162
	jnz	.L256		#
# spaceinvaders.c:1617: 			row_2_crab[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp163, i
	mov.w	r1, 3	# tmp165,
	shl.w	r0, r1	# tmp164, tmp165
	mov.w	r1, row_2_crab+6	# tmp167,
	add.w	r0, r1 #222	# tmp166, tmp167
	xor.w	r1, r1	# tmp168
	st.s	[r0], r1	# row_2_crab[i_47].alive, tmp168
# spaceinvaders.c:1619: 				row_2_crab[i].x, 
	ld.w	r0, [r13 + (-4)]	# tmp169, i
	mov.w	r1, 3	# tmp171,
	shl.w	r0, r1	# tmp170, tmp171
	mov.w	r1, row_2_crab+2	# tmp173,
	add.w	r0, r1 #222	# tmp172, tmp173
	ld.s	r0, [r0]	# _29, row_2_crab[i_47].x
# spaceinvaders.c:1618: 			clear_bitmap_with_specific_shape(
	zex.s	r1, r0	# _30, _29
# spaceinvaders.c:1620: 				row_2_crab[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp174, i
	mov.w	r2, 3	# tmp176,
	shl.w	r0, r2	# tmp175, tmp176
	mov.w	r2, row_2_crab+4	# tmp178,
	add.w	r0, r2 #222	# tmp177, tmp178
	ld.s	r0, [r0]	# _31, row_2_crab[i_47].y
# spaceinvaders.c:1618: 			clear_bitmap_with_specific_shape(
	zex.s	r2, r0	# _32, _31
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
# spaceinvaders.c:1624: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.104_33, number_of_aliens
	add.w	r0, -1 #111	# _34,
	st.w	[number_of_aliens], r0	# number_of_aliens, _34
# spaceinvaders.c:1625: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1626: 			score += 20;
	ld.w	r0, [score]	# score.105_35, score
	add.w	r0, 20 #111	# _36,
	st.w	[score], r0	# score, _36
# spaceinvaders.c:1627: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1628: 			break;
	j	.L253		#
.L256:
# spaceinvaders.c:1630: 		if(row_1_squid[i].alive == 1)
	ld.w	r0, [r13 + (-4)]	# tmp183, i
	mov.w	r1, 3	# tmp185,
	shl.w	r0, r1	# tmp184, tmp185
	mov.w	r1, row_1_squid+6	# tmp187,
	add.w	r0, r1 #222	# tmp186, tmp187
	ld.s	r0, [r0]	# _37, row_1_squid[i_47].alive
# spaceinvaders.c:1630: 		if(row_1_squid[i].alive == 1)
	zex.s	r1, r0	# tmp188, _37
	mov.w	r0, 1	# tmp189,
	cmp.w	r1, r0	# tmp188, tmp189
	jnz	.L257		#
# spaceinvaders.c:1632: 			row_1_squid[i].alive = 0;
	ld.w	r0, [r13 + (-4)]	# tmp190, i
	mov.w	r1, 3	# tmp192,
	shl.w	r0, r1	# tmp191, tmp192
	mov.w	r1, row_1_squid+6	# tmp194,
	add.w	r0, r1 #222	# tmp193, tmp194
	xor.w	r1, r1	# tmp195
	st.s	[r0], r1	# row_1_squid[i_47].alive, tmp195
# spaceinvaders.c:1634: 				row_1_squid[i].x - 2, 
	ld.w	r0, [r13 + (-4)]	# tmp196, i
	mov.w	r1, 3	# tmp198,
	shl.w	r0, r1	# tmp197, tmp198
	mov.w	r1, row_1_squid+2	# tmp200,
	add.w	r0, r1 #222	# tmp199, tmp200
	ld.s	r0, [r0]	# _38, row_1_squid[i_47].x
	zex.s	r0, r0	# _39, _38
# spaceinvaders.c:1633: 			clear_bitmap_with_specific_shape(
	mov.w	r1, r0	# _40, _39
	add.w	r1, -2 #111	# _40,
# spaceinvaders.c:1635: 				row_1_squid[i].y,
	ld.w	r0, [r13 + (-4)]	# tmp201, i
	mov.w	r2, 3	# tmp203,
	shl.w	r0, r2	# tmp202, tmp203
	mov.w	r2, row_1_squid+4	# tmp205,
	add.w	r0, r2 #222	# tmp204, tmp205
	ld.s	r0, [r0]	# _41, row_1_squid[i_47].y
# spaceinvaders.c:1633: 			clear_bitmap_with_specific_shape(
	zex.s	r2, r0	# _42, _41
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
# spaceinvaders.c:1639: 			number_of_aliens--;
	ld.w	r0, [number_of_aliens]	# number_of_aliens.106_43, number_of_aliens
	add.w	r0, -1 #111	# _44,
	st.w	[number_of_aliens], r0	# number_of_aliens, _44
# spaceinvaders.c:1640: 			increase_alien_speed();
	call	increase_alien_speed		#
# spaceinvaders.c:1641: 			score += 30;
	ld.w	r0, [score]	# score.107_45, score
	add.w	r0, 30 #111	# _46,
	st.w	[score], r0	# score, _46
# spaceinvaders.c:1642: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:1643: 			break;
	j	.L253		#
.L257:
# spaceinvaders.c:1565: 	for(int i = 0; i <= 11; i++)
	ld.w	r0, [r13 + (-4)]	# tmp211, i
	add.w	r0, 1 #111	# tmp210,
	st.w	[r13 + (-4)], r0	# i, tmp210
.L251:
# spaceinvaders.c:1565: 	for(int i = 0; i <= 11; i++)
	ld.w	r1, [r13 + (-4)]	# tmp212, i
	mov.w	r0, 11	# tmp213,
	cmp.w	r1, r0	# tmp212, tmp213
	jses	.L258		#
# spaceinvaders.c:1646: }
	nop	
.L253:
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
# spaceinvaders.c:1650: 	ufo_status = ALIVE;
	mov.w	r0, 2	# tmp30,
	st.w	[ufo_status], r0	# ufo_status, tmp30
# spaceinvaders.c:1651: 	ufo_direction = rand() % 2;
	call	rand		#
# spaceinvaders.c:1651: 	ufo_direction = rand() % 2;
	mov.w	r1, -2147483647	# tmp32,
	and.w	r0, r1	# tmp31, tmp32
	xor.w	r1, r1	# tmp33
	cmp.w	r0, r1	# tmp31, tmp33
	jges	.L260		#
	add.w	r0, -1 #111	# tmp31,
	mov.w	r1, -2	# tmp34,
	or.w	r0, r1	# tmp31, tmp34
	add.w	r0, 1 #111	# tmp31,
.L260:
# spaceinvaders.c:1651: 	ufo_direction = rand() % 2;
	st.w	[ufo_direction], r0	# ufo_direction, _2
# spaceinvaders.c:1652: 	if(ufo_direction == 0)
	ld.w	r1, [ufo_direction]	# ufo_direction.108_3, ufo_direction
# spaceinvaders.c:1652: 	if(ufo_direction == 0)
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# ufo_direction.108_3, tmp35
	jnz	.L261		#
# spaceinvaders.c:1653: 		ufo_position_X = 12;
	mov.w	r0, 12	# tmp36,
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp36
	j	.L262		#
.L261:
# spaceinvaders.c:1655: 		ufo_position_X = 216;
	mov.w	r0, 216	# tmp37,
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp37
.L262:
# spaceinvaders.c:1656: 	draw_bitmap_with_clear_background(ufo_position_X, 35, 16, 8, ufo);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.109_4, ufo_position_X
	mov.w	r0, sp	# tmp38,
	mov.w	r2, ufo	# tmp39,
	st.w	[r0 + (16)], r2	#, tmp39
	mov.w	r2, 8	# tmp40,
	st.w	[r0 + (12)], r2	#, tmp40
	mov.w	r2, 16	# tmp41,
	st.w	[r0 + (8)], r2	#, tmp41
	mov.w	r2, 35	# tmp42,
	st.w	[r0 + (4)], r2	#, tmp42
	st.w	[r0], r1	#, ufo_position_X.109_4
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:1657: }
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
# spaceinvaders.c:1667: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	ld.w	r1, [ufo_direction]	# ufo_direction.110_1, ufo_direction
	mov.w	r0, 1	# tmp44,
	sub.w	r0, r1 #222	# _2, ufo_direction.110_1
# spaceinvaders.c:1667: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	mov.w	r1, 2	# tmp45,
	shl.w	r0, r1	# _3, tmp45
# spaceinvaders.c:1667: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	add.w	r0, -2 #111	# _4,
# spaceinvaders.c:1667: 	ufo_position_X += (1 - ufo_direction) * 4 - 2;
	ld.w	r1, [ufo_position_X]	# ufo_position_X.111_5, ufo_position_X
	add.w	r0, r1 #222	# _6, ufo_position_X.111_5
	st.w	[ufo_position_X], r0	# ufo_position_X, _6
# spaceinvaders.c:1669: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	ld.w	r1, [ufo_direction]	# ufo_direction.112_7, ufo_direction
# spaceinvaders.c:1669: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	xor.w	r0, r0	# tmp46
	cmp.w	r1, r0	# ufo_direction.112_7, tmp46
	jnz	.L264		#
# spaceinvaders.c:1669: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	ld.w	r1, [ufo_position_X]	# ufo_position_X.113_8, ufo_position_X
# spaceinvaders.c:1669: 	if(ufo_direction == 0 && ufo_position_X >= 216)
	mov.w	r0, 215	# tmp47,
	cmp.w	r1, r0	# ufo_position_X.113_8, tmp47
	jses	.L264		#
# spaceinvaders.c:1671: 		clear_bitmap_test(ufo_position_X-2, 35, 16, 8);
	ld.w	r0, [ufo_position_X]	# ufo_position_X.114_9, ufo_position_X
	mov.w	r1, r0	# _10, ufo_position_X.114_9
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
# spaceinvaders.c:1672: 		ufo_status = DEAD;
	xor.w	r0, r0	# tmp52
	st.w	[ufo_status], r0	# ufo_status, tmp52
# spaceinvaders.c:1673: 		ufo_position_X = 0;
	xor.w	r0, r0	# tmp53
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp53
	j	.L265		#
.L264:
# spaceinvaders.c:1675: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	ld.w	r1, [ufo_direction]	# ufo_direction.115_11, ufo_direction
# spaceinvaders.c:1675: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	mov.w	r0, 1	# tmp54,
	cmp.w	r1, r0	# ufo_direction.115_11, tmp54
	jnz	.L266		#
# spaceinvaders.c:1675: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	ld.w	r1, [ufo_position_X]	# ufo_position_X.116_12, ufo_position_X
# spaceinvaders.c:1675: 	else if(ufo_direction == 1 && ufo_position_X <= 12)
	mov.w	r0, 12	# tmp55,
	cmp.w	r1, r0	# ufo_position_X.116_12, tmp55
	jgs	.L266		#
# spaceinvaders.c:1677: 		clear_bitmap_test(ufo_position_X+2, 35, 16, 8);
	ld.w	r0, [ufo_position_X]	# ufo_position_X.117_13, ufo_position_X
	mov.w	r1, r0	# _14, ufo_position_X.117_13
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
# spaceinvaders.c:1678: 		ufo_status = DEAD;
	xor.w	r0, r0	# tmp60
	st.w	[ufo_status], r0	# ufo_status, tmp60
# spaceinvaders.c:1679: 		ufo_position_X = 0;
	xor.w	r0, r0	# tmp61
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp61
	j	.L265		#
.L266:
# spaceinvaders.c:1683: 		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
	ld.w	r2, [ufo_position_X]	# ufo_position_X.118_15, ufo_position_X
# spaceinvaders.c:1683: 		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
	ld.w	r1, [ufo_direction]	# ufo_direction.119_16, ufo_direction
	mov.w	r0, r1	# tmp62, ufo_direction.119_16
	add.w	r0, r0 #222	# tmp63, tmp62
	add.w	r0, r1 #222	# tmp62, ufo_direction.119_16
	add.w	r0, r0 #222	# tmp64, tmp62
# spaceinvaders.c:1683: 		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
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
	st.w	[r0], r2	#, ufo_position_X.118_15
	call	move_bitmap_test		#
# spaceinvaders.c:1685: }
	nop	
.L265:
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
# spaceinvaders.c:1689: 	if(alien_bullet[alien_bullet_index].sprite == 3)
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
# spaceinvaders.c:1689: 	if(alien_bullet[alien_bullet_index].sprite == 3)
	mov.w	r0, 3	# tmp66,
	cmp.w	r1, r0	# _1, tmp66
	jnz	.L268		#
# spaceinvaders.c:1690: 		alien_bullet[alien_bullet_index].sprite = 0;
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
	j	.L269		#
.L268:
# spaceinvaders.c:1692: 		alien_bullet[alien_bullet_index].sprite++;
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
# spaceinvaders.c:1692: 		alien_bullet[alien_bullet_index].sprite++;
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
.L269:
# spaceinvaders.c:1694: 	alien_bullet[alien_bullet_index].timer_for_sprite_change = 0;
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
# spaceinvaders.c:1696: 	if(alien_bullet[alien_bullet_index].type == 0)
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
# spaceinvaders.c:1696: 	if(alien_bullet[alien_bullet_index].type == 0)
	xor.w	r0, r0	# tmp109
	cmp.w	r1, r0	# _4, tmp109
	jnz	.L270		#
# spaceinvaders.c:1698: 		switch(alien_bullet[alien_bullet_index].sprite)
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
# spaceinvaders.c:1698: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp118,
	cmp.w	r0, r1	# _5, tmp118
	jz	.L271		#
	mov.w	r1, 2	# tmp119,
	cmp.w	r0, r1	# _5, tmp119
	jgs	.L272		#
	xor.w	r1, r1	# tmp120
	cmp.w	r0, r1	# _5, tmp120
	jz	.L273		#
	mov.w	r1, 1	# tmp121,
	cmp.w	r0, r1	# _5, tmp121
	jz	.L274		#
	j	.L272		#
.L273:
# spaceinvaders.c:1701: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
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
# spaceinvaders.c:1702: 			break;
	j	.L276		#
.L274:
# spaceinvaders.c:1704: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
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
# spaceinvaders.c:1705: 			break;
	j	.L276		#
.L271:
# spaceinvaders.c:1707: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
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
# spaceinvaders.c:1708: 			break;
	j	.L276		#
.L272:
# spaceinvaders.c:1710: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
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
# spaceinvaders.c:1711: 			break;	
	j	.L276		#
.L270:
# spaceinvaders.c:1714: 	else if (alien_bullet[alien_bullet_index].type == 1)
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
# spaceinvaders.c:1714: 	else if (alien_bullet[alien_bullet_index].type == 1)
	mov.w	r0, 1	# tmp210,
	cmp.w	r1, r0	# _14, tmp210
	jnz	.L277		#
# spaceinvaders.c:1716: 		switch(alien_bullet[alien_bullet_index].sprite)
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
# spaceinvaders.c:1716: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp219,
	cmp.w	r0, r1	# _15, tmp219
	jz	.L278		#
	mov.w	r1, 2	# tmp220,
	cmp.w	r0, r1	# _15, tmp220
	jgs	.L279		#
	xor.w	r1, r1	# tmp221
	cmp.w	r0, r1	# _15, tmp221
	jz	.L280		#
	mov.w	r1, 1	# tmp222,
	cmp.w	r0, r1	# _15, tmp222
	jz	.L281		#
	j	.L279		#
.L280:
# spaceinvaders.c:1719: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
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
# spaceinvaders.c:1720: 			break;
	j	.L276		#
.L281:
# spaceinvaders.c:1722: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
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
# spaceinvaders.c:1723: 			break;
	j	.L276		#
.L278:
# spaceinvaders.c:1725: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
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
# spaceinvaders.c:1726: 			break;
	j	.L276		#
.L279:
# spaceinvaders.c:1728: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
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
# spaceinvaders.c:1729: 			break;	
	j	.L276		#
.L277:
# spaceinvaders.c:1734: 		switch(alien_bullet[alien_bullet_index].sprite)
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
# spaceinvaders.c:1734: 		switch(alien_bullet[alien_bullet_index].sprite)
	mov.w	r1, 2	# tmp311,
	cmp.w	r0, r1	# _24, tmp311
	jz	.L283		#
	mov.w	r1, 2	# tmp312,
	cmp.w	r0, r1	# _24, tmp312
	jgs	.L284		#
	xor.w	r1, r1	# tmp313
	cmp.w	r0, r1	# _24, tmp313
	jz	.L285		#
	mov.w	r1, 1	# tmp314,
	cmp.w	r0, r1	# _24, tmp314
	jz	.L286		#
	j	.L284		#
.L285:
# spaceinvaders.c:1737: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
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
# spaceinvaders.c:1738: 			break;
	j	.L276		#
.L286:
# spaceinvaders.c:1740: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
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
# spaceinvaders.c:1741: 			break;
	j	.L276		#
.L283:
# spaceinvaders.c:1743: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
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
# spaceinvaders.c:1744: 			break;
	j	.L276		#
.L284:
# spaceinvaders.c:1746: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
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
# spaceinvaders.c:1747: 			break;	
	nop	
.L276:
# spaceinvaders.c:1750: }
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
# spaceinvaders.c:1754: 	int alien_column = rand() % 11;
	call	rand		#
# spaceinvaders.c:1754: 	int alien_column = rand() % 11;
	mov.w	r1, 11	# tmp65,
	div.w	r0, r1	# tmp64, tmp65
mov.w	r0, r14	# tmp64
	st.w	[r13 + (-28)], r0	# alien_column, tmp64
# spaceinvaders.c:1755: 	int bullet_y = 0;
	xor.w	r0, r0	# tmp66
	st.w	[r13 + (-4)], r0	# bullet_y, tmp66
# spaceinvaders.c:1756: 	int bullet_x = 0;
	xor.w	r0, r0	# tmp67
	st.w	[r13 + (-8)], r0	# bullet_x, tmp67
# spaceinvaders.c:1757: 	int current_row = 0;
	xor.w	r0, r0	# tmp68
	st.w	[r13 + (-12)], r0	# current_row, tmp68
# spaceinvaders.c:1758: 	int row_empty = 0;
	xor.w	r0, r0	# tmp69
	st.w	[r13 + (-16)], r0	# row_empty, tmp69
# spaceinvaders.c:1759: 	int num_of_checks = 0;
	xor.w	r0, r0	# tmp70
	st.w	[r13 + (-20)], r0	# num_of_checks, tmp70
# spaceinvaders.c:1765: 	int empty_rows[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
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
.L302:
# spaceinvaders.c:1776: 		num_of_checks++;
	ld.w	r0, [r13 + (-20)]	# tmp83, num_of_checks
	add.w	r0, 1 #111	# tmp82,
	st.w	[r13 + (-20)], r0	# num_of_checks, tmp82
# spaceinvaders.c:1777: 		if(num_of_checks > 100)
	ld.w	r1, [r13 + (-20)]	# tmp84, num_of_checks
	mov.w	r0, 100	# tmp85,
	cmp.w	r1, r0	# tmp84, tmp85
	jgs	.L308		#
# spaceinvaders.c:1781: 		alien_column = rand() % 11;
	call	rand		#
# spaceinvaders.c:1781: 		alien_column = rand() % 11;
	mov.w	r1, 11	# tmp87,
	div.w	r0, r1	# tmp86, tmp87
mov.w	r0, r14	# tmp86
	st.w	[r13 + (-28)], r0	# alien_column, tmp86
# spaceinvaders.c:1789: 		for(int i = 0; i < 11; i++)
	xor.w	r0, r0	# tmp88
	st.w	[r13 + (-24)], r0	# i, tmp88
# spaceinvaders.c:1789: 		for(int i = 0; i < 11; i++)
	j	.L290		#
.L294:
# spaceinvaders.c:1791: 			if(empty_rows[i] == alien_column)
	ld.w	r1, [r13 + (-24)]	# tmp89, i
	mov.w	r0, 2	# tmp91,
	shl.w	r1, r0	# tmp90, tmp91
	mov.w	r0, r13	# tmp92,
	add.w	r0, r1 #222	# tmp92, tmp90
	add.w	r0, -72 #111	# tmp93,
	ld.w	r0, [r0]	# _3, empty_rows
# spaceinvaders.c:1791: 			if(empty_rows[i] == alien_column)
	ld.w	r1, [r13 + (-28)]	# tmp94, alien_column
	cmp.w	r1, r0	# tmp94, _3
	jnz	.L291		#
# spaceinvaders.c:1793: 				row_empty = 1;
	mov.w	r0, 1	# tmp95,
	st.w	[r13 + (-16)], r0	# row_empty, tmp95
# spaceinvaders.c:1794: 				break;
	j	.L292		#
.L291:
# spaceinvaders.c:1796: 			else if(empty_rows[i] == -1)
	ld.w	r1, [r13 + (-24)]	# tmp96, i
	mov.w	r0, 2	# tmp98,
	shl.w	r1, r0	# tmp97, tmp98
	mov.w	r0, r13	# tmp99,
	add.w	r0, r1 #222	# tmp99, tmp97
	add.w	r0, -72 #111	# tmp100,
	ld.w	r1, [r0]	# _4, empty_rows
# spaceinvaders.c:1796: 			else if(empty_rows[i] == -1)
	mov.w	r0, -1	# tmp101,
	cmp.w	r1, r0	# _4, tmp101
	jnz	.L293		#
# spaceinvaders.c:1798: 				row_empty = 0;
	xor.w	r0, r0	# tmp102
	st.w	[r13 + (-16)], r0	# row_empty, tmp102
# spaceinvaders.c:1799: 				break;	
	j	.L292		#
.L293:
# spaceinvaders.c:1789: 		for(int i = 0; i < 11; i++)
	ld.w	r0, [r13 + (-24)]	# tmp104, i
	add.w	r0, 1 #111	# tmp103,
	st.w	[r13 + (-24)], r0	# i, tmp103
.L290:
# spaceinvaders.c:1789: 		for(int i = 0; i < 11; i++)
	ld.w	r1, [r13 + (-24)]	# tmp105, i
	mov.w	r0, 10	# tmp106,
	cmp.w	r1, r0	# tmp105, tmp106
	jses	.L294		#
.L292:
# spaceinvaders.c:1808: 		if(row_empty == 0)
	ld.w	r1, [r13 + (-16)]	# tmp107, row_empty
	xor.w	r0, r0	# tmp108
	cmp.w	r1, r0	# tmp107, tmp108
	jnz	.L295		#
# spaceinvaders.c:1810: 			if(row_5_octopus[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp109, alien_column
	mov.w	r1, 3	# tmp111,
	shl.w	r0, r1	# tmp110, tmp111
	mov.w	r1, row_5_octopus+6	# tmp113,
	add.w	r0, r1 #222	# tmp112, tmp113
	ld.s	r0, [r0]	# _5, row_5_octopus[alien_column_75].alive
# spaceinvaders.c:1810: 			if(row_5_octopus[alien_column].alive != 0)
	zex.s	r1, r0	# tmp114, _5
	xor.w	r0, r0	# tmp115
	cmp.w	r1, r0	# tmp114, tmp115
	jz	.L296		#
# spaceinvaders.c:1812: 				bullet_x = row_5_octopus[alien_column].x + 6;
	ld.w	r0, [r13 + (-28)]	# tmp116, alien_column
	mov.w	r1, 3	# tmp118,
	shl.w	r0, r1	# tmp117, tmp118
	mov.w	r1, row_5_octopus+2	# tmp120,
	add.w	r0, r1 #222	# tmp119, tmp120
	ld.s	r0, [r0]	# _6, row_5_octopus[alien_column_75].x
	zex.s	r0, r0	# _7, _6
# spaceinvaders.c:1812: 				bullet_x = row_5_octopus[alien_column].x + 6;
	add.w	r0, 6 #111	# tmp121,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp121
# spaceinvaders.c:1813: 				bullet_y = row_5_octopus[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp122, alien_column
	mov.w	r1, 3	# tmp124,
	shl.w	r0, r1	# tmp123, tmp124
	mov.w	r1, row_5_octopus+4	# tmp126,
	add.w	r0, r1 #222	# tmp125, tmp126
	ld.s	r0, [r0]	# _8, row_5_octopus[alien_column_75].y
	zex.s	r0, r0	# _9, _8
# spaceinvaders.c:1813: 				bullet_y = row_5_octopus[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp127,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp127
	j	.L295		#
.L296:
# spaceinvaders.c:1815: 			else if(row_4_octopus[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp128, alien_column
	mov.w	r1, 3	# tmp130,
	shl.w	r0, r1	# tmp129, tmp130
	mov.w	r1, row_4_octopus+6	# tmp132,
	add.w	r0, r1 #222	# tmp131, tmp132
	ld.s	r0, [r0]	# _10, row_4_octopus[alien_column_75].alive
# spaceinvaders.c:1815: 			else if(row_4_octopus[alien_column].alive != 0)
	zex.s	r1, r0	# tmp133, _10
	xor.w	r0, r0	# tmp134
	cmp.w	r1, r0	# tmp133, tmp134
	jz	.L297		#
# spaceinvaders.c:1817: 				bullet_x = row_4_octopus[alien_column].x + 6;
	ld.w	r0, [r13 + (-28)]	# tmp135, alien_column
	mov.w	r1, 3	# tmp137,
	shl.w	r0, r1	# tmp136, tmp137
	mov.w	r1, row_4_octopus+2	# tmp139,
	add.w	r0, r1 #222	# tmp138, tmp139
	ld.s	r0, [r0]	# _11, row_4_octopus[alien_column_75].x
	zex.s	r0, r0	# _12, _11
# spaceinvaders.c:1817: 				bullet_x = row_4_octopus[alien_column].x + 6;
	add.w	r0, 6 #111	# tmp140,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp140
# spaceinvaders.c:1818: 				bullet_y = row_4_octopus[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp141, alien_column
	mov.w	r1, 3	# tmp143,
	shl.w	r0, r1	# tmp142, tmp143
	mov.w	r1, row_4_octopus+4	# tmp145,
	add.w	r0, r1 #222	# tmp144, tmp145
	ld.s	r0, [r0]	# _13, row_4_octopus[alien_column_75].y
	zex.s	r0, r0	# _14, _13
# spaceinvaders.c:1818: 				bullet_y = row_4_octopus[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp146,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp146
	j	.L295		#
.L297:
# spaceinvaders.c:1820: 			else if(row_3_crab[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp147, alien_column
	mov.w	r1, 3	# tmp149,
	shl.w	r0, r1	# tmp148, tmp149
	mov.w	r1, row_3_crab+6	# tmp151,
	add.w	r0, r1 #222	# tmp150, tmp151
	ld.s	r0, [r0]	# _15, row_3_crab[alien_column_75].alive
# spaceinvaders.c:1820: 			else if(row_3_crab[alien_column].alive != 0)
	zex.s	r1, r0	# tmp152, _15
	xor.w	r0, r0	# tmp153
	cmp.w	r1, r0	# tmp152, tmp153
	jz	.L298		#
# spaceinvaders.c:1822: 				bullet_x = row_3_crab[alien_column].x + 5;
	ld.w	r0, [r13 + (-28)]	# tmp154, alien_column
	mov.w	r1, 3	# tmp156,
	shl.w	r0, r1	# tmp155, tmp156
	mov.w	r1, row_3_crab+2	# tmp158,
	add.w	r0, r1 #222	# tmp157, tmp158
	ld.s	r0, [r0]	# _16, row_3_crab[alien_column_75].x
	zex.s	r0, r0	# _17, _16
# spaceinvaders.c:1822: 				bullet_x = row_3_crab[alien_column].x + 5;
	add.w	r0, 5 #111	# tmp159,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp159
# spaceinvaders.c:1823: 				bullet_y = row_3_crab[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp160, alien_column
	mov.w	r1, 3	# tmp162,
	shl.w	r0, r1	# tmp161, tmp162
	mov.w	r1, row_3_crab+4	# tmp164,
	add.w	r0, r1 #222	# tmp163, tmp164
	ld.s	r0, [r0]	# _18, row_3_crab[alien_column_75].y
	zex.s	r0, r0	# _19, _18
# spaceinvaders.c:1823: 				bullet_y = row_3_crab[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp165,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp165
	j	.L295		#
.L298:
# spaceinvaders.c:1825: 			else if(row_2_crab[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp166, alien_column
	mov.w	r1, 3	# tmp168,
	shl.w	r0, r1	# tmp167, tmp168
	mov.w	r1, row_2_crab+6	# tmp170,
	add.w	r0, r1 #222	# tmp169, tmp170
	ld.s	r0, [r0]	# _20, row_2_crab[alien_column_75].alive
# spaceinvaders.c:1825: 			else if(row_2_crab[alien_column].alive != 0)
	zex.s	r1, r0	# tmp171, _20
	xor.w	r0, r0	# tmp172
	cmp.w	r1, r0	# tmp171, tmp172
	jz	.L299		#
# spaceinvaders.c:1827: 				bullet_x = row_2_crab[alien_column].x + 5;
	ld.w	r0, [r13 + (-28)]	# tmp173, alien_column
	mov.w	r1, 3	# tmp175,
	shl.w	r0, r1	# tmp174, tmp175
	mov.w	r1, row_2_crab+2	# tmp177,
	add.w	r0, r1 #222	# tmp176, tmp177
	ld.s	r0, [r0]	# _21, row_2_crab[alien_column_75].x
	zex.s	r0, r0	# _22, _21
# spaceinvaders.c:1827: 				bullet_x = row_2_crab[alien_column].x + 5;
	add.w	r0, 5 #111	# tmp178,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp178
# spaceinvaders.c:1828: 				bullet_y = row_2_crab[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp179, alien_column
	mov.w	r1, 3	# tmp181,
	shl.w	r0, r1	# tmp180, tmp181
	mov.w	r1, row_2_crab+4	# tmp183,
	add.w	r0, r1 #222	# tmp182, tmp183
	ld.s	r0, [r0]	# _23, row_2_crab[alien_column_75].y
	zex.s	r0, r0	# _24, _23
# spaceinvaders.c:1828: 				bullet_y = row_2_crab[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp184,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp184
	j	.L295		#
.L299:
# spaceinvaders.c:1830: 			else if(row_1_squid[alien_column].alive != 0)
	ld.w	r0, [r13 + (-28)]	# tmp185, alien_column
	mov.w	r1, 3	# tmp187,
	shl.w	r0, r1	# tmp186, tmp187
	mov.w	r1, row_1_squid+6	# tmp189,
	add.w	r0, r1 #222	# tmp188, tmp189
	ld.s	r0, [r0]	# _25, row_1_squid[alien_column_75].alive
# spaceinvaders.c:1830: 			else if(row_1_squid[alien_column].alive != 0)
	zex.s	r1, r0	# tmp190, _25
	xor.w	r0, r0	# tmp191
	cmp.w	r1, r0	# tmp190, tmp191
	jz	.L300		#
# spaceinvaders.c:1832: 				bullet_x = row_1_squid[alien_column].x + 4;
	ld.w	r0, [r13 + (-28)]	# tmp192, alien_column
	mov.w	r1, 3	# tmp194,
	shl.w	r0, r1	# tmp193, tmp194
	mov.w	r1, row_1_squid+2	# tmp196,
	add.w	r0, r1 #222	# tmp195, tmp196
	ld.s	r0, [r0]	# _26, row_1_squid[alien_column_75].x
	zex.s	r0, r0	# _27, _26
# spaceinvaders.c:1832: 				bullet_x = row_1_squid[alien_column].x + 4;
	add.w	r0, 4 #111	# tmp197,
	st.w	[r13 + (-8)], r0	# bullet_x, tmp197
# spaceinvaders.c:1833: 				bullet_y = row_1_squid[alien_column].y + 10;
	ld.w	r0, [r13 + (-28)]	# tmp198, alien_column
	mov.w	r1, 3	# tmp200,
	shl.w	r0, r1	# tmp199, tmp200
	mov.w	r1, row_1_squid+4	# tmp202,
	add.w	r0, r1 #222	# tmp201, tmp202
	ld.s	r0, [r0]	# _28, row_1_squid[alien_column_75].y
	zex.s	r0, r0	# _29, _28
# spaceinvaders.c:1833: 				bullet_y = row_1_squid[alien_column].y + 10;
	add.w	r0, 10 #111	# tmp203,
	st.w	[r13 + (-4)], r0	# bullet_y, tmp203
	j	.L295		#
.L300:
# spaceinvaders.c:1837: 				row_empty = 1;
	mov.w	r0, 1	# tmp204,
	st.w	[r13 + (-16)], r0	# row_empty, tmp204
# spaceinvaders.c:1838: 				empty_rows[current_row] = alien_column;
	ld.w	r1, [r13 + (-12)]	# tmp205, current_row
	mov.w	r0, 2	# tmp207,
	shl.w	r1, r0	# tmp206, tmp207
	mov.w	r0, r13	# tmp208,
	add.w	r0, r1 #222	# tmp208, tmp206
	add.w	r0, -72 #111	# tmp209,
	ld.w	r1, [r13 + (-28)]	# tmp210, alien_column
	st.w	[r0], r1	# empty_rows, tmp210
# spaceinvaders.c:1839: 				current_row++;
	ld.w	r0, [r13 + (-12)]	# tmp212, current_row
	add.w	r0, 1 #111	# tmp211,
	st.w	[r13 + (-12)], r0	# current_row, tmp211
.L295:
# spaceinvaders.c:1842: 	} while(row_empty == 1 && current_row != 11 /*Hvala!!!!*/);
	ld.w	r1, [r13 + (-16)]	# tmp213, row_empty
	mov.w	r0, 1	# tmp214,
	cmp.w	r1, r0	# tmp213, tmp214
	jnz	.L301		#
# spaceinvaders.c:1842: 	} while(row_empty == 1 && current_row != 11 /*Hvala!!!!*/);
	ld.w	r1, [r13 + (-12)]	# tmp215, current_row
	mov.w	r0, 11	# tmp216,
	cmp.w	r1, r0	# tmp215, tmp216
	jnz	.L302		#
.L301:
# spaceinvaders.c:1844: 	alien_bullet[alien_bullet_index].x = bullet_x;
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
# spaceinvaders.c:1845: 	alien_bullet[alien_bullet_index].y = bullet_y;
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
# spaceinvaders.c:1846: 	alien_bullet[alien_bullet_index].spawn_y = bullet_y;
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
# spaceinvaders.c:1847: 	alien_bullet[alien_bullet_index].type = rand() % 3;
	call	rand		#
	mov.w	r1, r0	# _30,
# spaceinvaders.c:1847: 	alien_bullet[alien_bullet_index].type = rand() % 3;
	mov.w	r0, 3	# tmp244,
	mov.w	r2, r1	# _31, _30
	div.w	r2, r0	# _31, tmp244
mov.w	r2, r14	# _31
# spaceinvaders.c:1847: 	alien_bullet[alien_bullet_index].type = rand() % 3;
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
# spaceinvaders.c:1848: 	alien_bullet[alien_bullet_index].timer_for_move = 64;
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
# spaceinvaders.c:1849: 	alien_bullet[alien_bullet_index].timer_for_sprite_change = 0;
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
# spaceinvaders.c:1850: 	alien_bullet[alien_bullet_index].status = MOVING;
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
# spaceinvaders.c:1851: 	switch(alien_bullet[alien_bullet_index].type)
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
# spaceinvaders.c:1851: 	switch(alien_bullet[alien_bullet_index].type)
	xor.w	r1, r1	# tmp288
	cmp.w	r0, r1	# _32, tmp288
	jz	.L303		#
	mov.w	r1, 1	# tmp289,
	cmp.w	r0, r1	# _32, tmp289
	jz	.L304		#
	j	.L307		#
.L303:
# spaceinvaders.c:1854: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
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
# spaceinvaders.c:1855: 			break;
	j	.L287		#
.L304:
# spaceinvaders.c:1857: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
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
# spaceinvaders.c:1858: 			break;
	j	.L287		#
.L307:
# spaceinvaders.c:1860: 			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
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
# spaceinvaders.c:1861: 			break;	
	j	.L287		#
.L308:
# spaceinvaders.c:1778: 			return;
	nop	
.L287:
# spaceinvaders.c:1863: }
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
# spaceinvaders.c:1871: 	current_pl_expl_sprite ^= 1;
	ld.w	r0, [current_pl_expl_sprite]	# current_pl_expl_sprite.120_1, current_pl_expl_sprite
	mov.w	r1, 1	# tmp47,
	xor.w	r0, r1	# _2, tmp47
	st.w	[current_pl_expl_sprite], r0	# current_pl_expl_sprite, _2
# spaceinvaders.c:1872: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.121_3, player_ship
	ld.s	r0, [r0 + (2)]	# _4, player_ship.121_3->x
# spaceinvaders.c:1872: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	zex.s	r1, r0	# _5, _4
# spaceinvaders.c:1872: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.122_6, player_ship
	ld.s	r0, [r0 + (4)]	# _7, player_ship.122_6->y
# spaceinvaders.c:1872: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	zex.s	r2, r0	# _8, _7
	mov.w	r0, sp	# tmp48,
	mov.w	r3, 8	# tmp49,
	st.w	[r0 + (12)], r3	#, tmp49
	mov.w	r3, 16	# tmp50,
	st.w	[r0 + (8)], r3	#, tmp50
	st.w	[r0 + (4)], r2	#, _8
	st.w	[r0], r1	#, _5
	call	clear_bitmap_test		#
# spaceinvaders.c:1873: 	if(current_pl_expl_sprite == 1)
	ld.w	r1, [current_pl_expl_sprite]	# current_pl_expl_sprite.123_9, current_pl_expl_sprite
# spaceinvaders.c:1873: 	if(current_pl_expl_sprite == 1)
	mov.w	r0, 1	# tmp51,
	cmp.w	r1, r0	# current_pl_expl_sprite.123_9, tmp51
	jnz	.L310		#
# spaceinvaders.c:1874: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	ld.w	r0, [player_ship]	# player_ship.124_10, player_ship
	ld.s	r0, [r0 + (2)]	# _11, player_ship.124_10->x
# spaceinvaders.c:1874: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	zex.s	r1, r0	# _12, _11
# spaceinvaders.c:1874: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	ld.w	r0, [player_ship]	# player_ship.125_13, player_ship
	ld.s	r0, [r0 + (4)]	# _14, player_ship.125_13->y
# spaceinvaders.c:1874: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	zex.s	r2, r0	# _15, _14
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
# spaceinvaders.c:1877: }
	j	.L312		#
.L310:
# spaceinvaders.c:1876: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.126_16, player_ship
	ld.s	r0, [r0 + (2)]	# _17, player_ship.126_16->x
# spaceinvaders.c:1876: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	zex.s	r1, r0	# _18, _17
# spaceinvaders.c:1876: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	ld.w	r0, [player_ship]	# player_ship.127_19, player_ship
	ld.s	r0, [r0 + (4)]	# _20, player_ship.127_19->y
# spaceinvaders.c:1876: 		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
	zex.s	r2, r0	# _21, _20
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
.L312:
# spaceinvaders.c:1877: }
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
# spaceinvaders.c:1881: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.128_1, player_ship
	ld.s	r0, [r0 + (2)]	# _2, player_ship.128_1->x
# spaceinvaders.c:1881: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	zex.s	r1, r0	# _3, _2
# spaceinvaders.c:1881: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	ld.w	r0, [player_ship]	# player_ship.129_4, player_ship
	ld.s	r0, [r0 + (4)]	# _5, player_ship.129_4->y
# spaceinvaders.c:1881: 	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	zex.s	r2, r0	# _6, _5
	mov.w	r0, sp	# tmp32,
	mov.w	r3, 8	# tmp33,
	st.w	[r0 + (12)], r3	#, tmp33
	mov.w	r3, 16	# tmp34,
	st.w	[r0 + (8)], r3	#, tmp34
	st.w	[r0 + (4)], r2	#, _6
	st.w	[r0], r1	#, _3
	call	clear_bitmap_test		#
# spaceinvaders.c:1882: 	draw_lives();
	call	draw_lives		#
# spaceinvaders.c:1883: }
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
# spaceinvaders.c:1887: 	player_ship->addr = (uint16_t)sprite_addr;
	ld.w	r1, [sprite_addr]	# sprite_addr.130_1, sprite_addr
# spaceinvaders.c:1887: 	player_ship->addr = (uint16_t)sprite_addr;
	ld.w	r0, [player_ship]	# player_ship.131_2, player_ship
# spaceinvaders.c:1887: 	player_ship->addr = (uint16_t)sprite_addr;
	st.s	[r0], r1	# player_ship.131_2->addr, _3
# spaceinvaders.c:1888: 	player_ship->x = 40;
	ld.w	r0, [player_ship]	# player_ship.132_4, player_ship
# spaceinvaders.c:1888: 	player_ship->x = 40;
	mov.s	r1, 40	# tmp32,
	st.s	[r0 + (2)], r1	# player_ship.132_4->x, tmp32
# spaceinvaders.c:1889: 	player_ship->y = PLAYER_SPAWN_Y;
	ld.w	r0, [player_ship]	# player_ship.133_5, player_ship
# spaceinvaders.c:1889: 	player_ship->y = PLAYER_SPAWN_Y;
	mov.s	r1, 212	# tmp33,
	st.s	[r0 + (4)], r1	# player_ship.133_5->y, tmp33
# spaceinvaders.c:1890: 	player_ship->transparent = 0;
	ld.w	r0, [player_ship]	# player_ship.134_6, player_ship
# spaceinvaders.c:1890: 	player_ship->transparent = 0;
	xor.w	r1, r1	# tmp34
	st.s	[r0 + (6)], r1	# player_ship.134_6->transparent, tmp34
# spaceinvaders.c:1891: 	player_alive = 2;
	mov.w	r0, 2	# tmp35,
	st.w	[player_alive], r0	# player_alive, tmp35
# spaceinvaders.c:1892: 	player_movement_skip_frame = 3;
	mov.w	r0, 3	# tmp36,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, tmp36
# spaceinvaders.c:1893: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp37
	st.w	[vkp], r0	# vkp, tmp37
# spaceinvaders.c:1893: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp38
	st.w	[vkr], r0	# vkr, tmp38
# spaceinvaders.c:1893: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp39
	st.w	[old], r0	# old, tmp39
# spaceinvaders.c:1894: }
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
# spaceinvaders.c:1898: 	int letter_delay_ms = 128;
	mov.w	r0, 128	# tmp27,
	st.w	[r13 + (-4)], r0	# letter_delay_ms, tmp27
# spaceinvaders.c:1899: 	int game_over_text_x_pos = 95;
	mov.w	r0, 95	# tmp28,
	st.w	[r13 + (-8)], r0	# game_over_text_x_pos, tmp28
# spaceinvaders.c:1900: 	int game_over_text_y_pos = GREEN_THRESHOLD_0 - 16;
	mov.w	r0, 44	# tmp29,
	st.w	[r13 + (-12)], r0	# game_over_text_y_pos, tmp29
# spaceinvaders.c:1901: 	sprintf(str, "G");
	mov.w	r0, sp	# tmp30,
	mov.w	r1, .LC5	# tmp31,
	st.w	[r0 + (4)], r1	#, tmp31
	mov.w	r1, str	# tmp32,
	st.w	[r0], r1	#, tmp32
	call	sprintf		#
# spaceinvaders.c:1902: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1903: 	delay_millis(letter_delay_ms);
	mov.w	r1, sp	# tmp38,
	ld.w	r0, [r13 + (-4)]	# tmp39, letter_delay_ms
	st.w	[r1], r0	#, tmp39
	call	delay_millis		#
# spaceinvaders.c:1904: 	sprintf(str, "GA");
	mov.w	r0, sp	# tmp40,
	mov.w	r1, .LC6	# tmp41,
	st.w	[r0 + (4)], r1	#, tmp41
	mov.w	r1, str	# tmp42,
	st.w	[r0], r1	#, tmp42
	call	sprintf		#
# spaceinvaders.c:1905: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1906: 	delay_millis(letter_delay_ms);
	mov.w	r1, sp	# tmp48,
	ld.w	r0, [r13 + (-4)]	# tmp49, letter_delay_ms
	st.w	[r1], r0	#, tmp49
	call	delay_millis		#
# spaceinvaders.c:1907: 	sprintf(str, "GAM");
	mov.w	r0, sp	# tmp50,
	mov.w	r1, .LC7	# tmp51,
	st.w	[r0 + (4)], r1	#, tmp51
	mov.w	r1, str	# tmp52,
	st.w	[r0], r1	#, tmp52
	call	sprintf		#
# spaceinvaders.c:1908: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1909: 	delay_millis(letter_delay_ms);
	mov.w	r1, sp	# tmp58,
	ld.w	r0, [r13 + (-4)]	# tmp59, letter_delay_ms
	st.w	[r1], r0	#, tmp59
	call	delay_millis		#
# spaceinvaders.c:1910: 	sprintf(str, "GAME");
	mov.w	r0, sp	# tmp60,
	mov.w	r1, .LC8	# tmp61,
	st.w	[r0 + (4)], r1	#, tmp61
	mov.w	r1, str	# tmp62,
	st.w	[r0], r1	#, tmp62
	call	sprintf		#
# spaceinvaders.c:1911: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1912: 	delay_millis(letter_delay_ms * 3);
	ld.w	r1, [r13 + (-4)]	# tmp68, letter_delay_ms
	mov.w	r0, r1	# tmp69, tmp68
	add.w	r0, r0 #222	# tmp70, tmp69
	add.w	r0, r1 #222	# _1, tmp68
	mov.w	r1, sp	# tmp71,
	st.w	[r1], r0	#, _1
	call	delay_millis		#
# spaceinvaders.c:1913: 	sprintf(str, "GAME O");
	mov.w	r0, sp	# tmp72,
	mov.w	r1, .LC9	# tmp73,
	st.w	[r0 + (4)], r1	#, tmp73
	mov.w	r1, str	# tmp74,
	st.w	[r0], r1	#, tmp74
	call	sprintf		#
# spaceinvaders.c:1914: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1915: 	delay_millis(letter_delay_ms);
	mov.w	r1, sp	# tmp80,
	ld.w	r0, [r13 + (-4)]	# tmp81, letter_delay_ms
	st.w	[r1], r0	#, tmp81
	call	delay_millis		#
# spaceinvaders.c:1916: 	sprintf(str, "GAME OV");
	mov.w	r0, sp	# tmp82,
	mov.w	r1, .LC10	# tmp83,
	st.w	[r0 + (4)], r1	#, tmp83
	mov.w	r1, str	# tmp84,
	st.w	[r0], r1	#, tmp84
	call	sprintf		#
# spaceinvaders.c:1917: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1918: 	delay_millis(letter_delay_ms);
	mov.w	r1, sp	# tmp90,
	ld.w	r0, [r13 + (-4)]	# tmp91, letter_delay_ms
	st.w	[r1], r0	#, tmp91
	call	delay_millis		#
# spaceinvaders.c:1919: 	sprintf(str, "GAME OVE");
	mov.w	r0, sp	# tmp92,
	mov.w	r1, .LC11	# tmp93,
	st.w	[r0 + (4)], r1	#, tmp93
	mov.w	r1, str	# tmp94,
	st.w	[r0], r1	#, tmp94
	call	sprintf		#
# spaceinvaders.c:1920: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1921: 	delay_millis(letter_delay_ms);
	mov.w	r1, sp	# tmp100,
	ld.w	r0, [r13 + (-4)]	# tmp101, letter_delay_ms
	st.w	[r1], r0	#, tmp101
	call	delay_millis		#
# spaceinvaders.c:1922: 	sprintf(str, "GAME OVER");
	mov.w	r0, sp	# tmp102,
	mov.w	r1, .LC12	# tmp103,
	st.w	[r0 + (4)], r1	#, tmp103
	mov.w	r1, str	# tmp104,
	st.w	[r0], r1	#, tmp104
	call	sprintf		#
# spaceinvaders.c:1923: 	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
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
# spaceinvaders.c:1924: }
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
# spaceinvaders.c:1928: 	if(current_player_bullet > special_player_bullet)
	ld.w	r1, [current_player_bullet]	# current_player_bullet.135_1, current_player_bullet
	ld.w	r0, [special_player_bullet]	# special_player_bullet.136_2, special_player_bullet
# spaceinvaders.c:1928: 	if(current_player_bullet > special_player_bullet)
	cmp.w	r1, r0	# current_player_bullet.135_1, special_player_bullet.136_2
	jses	.L318		#
# spaceinvaders.c:1930: 		current_player_bullet = 1;
	mov.w	r0, 1	# tmp28,
	st.w	[current_player_bullet], r0	# current_player_bullet, tmp28
# spaceinvaders.c:1931: 		special_player_bullet = 15;
	mov.w	r0, 15	# tmp29,
	st.w	[special_player_bullet], r0	# special_player_bullet, tmp29
.L318:
# spaceinvaders.c:1933: }
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
# spaceinvaders.c:1938: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	call	rand		#
# spaceinvaders.c:1938: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	mov.w	r1, 5000	# tmp30,
	div.w	r0, r1	# _2, tmp30
mov.w	r0, r14	# _2
# spaceinvaders.c:1938: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	mov.w	r1, 13000	# tmp31,
	add.w	r0, r1 #222	# _3, tmp31
	add.w	r0, r0 #222	# tmp32, _3
# spaceinvaders.c:1938: 	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
	st.w	[timer_for_ufo_spawn], r0	# timer_for_ufo_spawn, _4
# spaceinvaders.c:1939: }
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
# spaceinvaders.c:1943: 	if(current_wave == 9)
	ld.w	r1, [current_wave]	# current_wave.137_1, current_wave
# spaceinvaders.c:1943: 	if(current_wave == 9)
	mov.w	r0, 9	# tmp29,
	cmp.w	r1, r0	# current_wave.137_1, tmp29
	jnz	.L321		#
# spaceinvaders.c:1944: 		current_wave = 2;
	mov.w	r0, 2	# tmp30,
	st.w	[current_wave], r0	# current_wave, tmp30
# spaceinvaders.c:1947: }
	j	.L323		#
.L321:
# spaceinvaders.c:1946: 		current_wave++;
	ld.w	r0, [current_wave]	# current_wave.138_2, current_wave
	add.w	r0, 1 #111	# _3,
	st.w	[current_wave], r0	# current_wave, _3
.L323:
# spaceinvaders.c:1947: }
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
# spaceinvaders.c:1951: switch(current_wave)
	ld.w	r0, [current_wave]	# current_wave.139_1, current_wave
	mov.w	r1, 9	# tmp29,
	cmp.w	r0, r1	# current_wave.139_1, tmp29
	jgs	.L325		#
	mov.w	r1, 7	# tmp30,
	cmp.w	r0, r1	# current_wave.139_1, tmp30
	jges	.L326		#
	mov.w	r1, 6	# tmp31,
	cmp.w	r0, r1	# current_wave.139_1, tmp31
	jgs	.L325		#
	mov.w	r1, 4	# tmp32,
	cmp.w	r0, r1	# current_wave.139_1, tmp32
	jges	.L327		#
	mov.w	r1, 3	# tmp33,
	cmp.w	r0, r1	# current_wave.139_1, tmp33
	jz	.L328		#
	mov.w	r1, 3	# tmp34,
	cmp.w	r0, r1	# current_wave.139_1, tmp34
	jgs	.L325		#
	mov.w	r1, 1	# tmp35,
	cmp.w	r0, r1	# current_wave.139_1, tmp35
	jz	.L329		#
	mov.w	r1, 2	# tmp36,
	cmp.w	r0, r1	# current_wave.139_1, tmp36
	jz	.L330		#
	j	.L325		#
.L329:
# spaceinvaders.c:1954: 			return ALIEN_SPAWN_Y_0;
	mov.w	r0, 124	# _2,
	j	.L324		#
.L330:
# spaceinvaders.c:1956: 			return ALIEN_SPAWN_Y_1;
	mov.w	r0, 148	# _2,
	j	.L324		#
.L328:
# spaceinvaders.c:1958: 			return ALIEN_SPAWN_Y_2;
	mov.w	r0, 164	# _2,
	j	.L324		#
.L327:
# spaceinvaders.c:1962: 			return ALIEN_SPAWN_Y_3;
	mov.w	r0, 172	# _2,
	j	.L324		#
.L326:
# spaceinvaders.c:1966: 			return ALIEN_SPAWN_Y_4;
	mov.w	r0, 180	# _2,
	j	.L324		#
.L325:
.L324:
# spaceinvaders.c:1968: }
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
# spaceinvaders.c:1972: 	game_state ^= 1;
	ld.w	r0, [game_state]	# game_state.140_1, game_state
	mov.w	r1, 1	# tmp28,
	xor.w	r0, r1	# _2, tmp28
	st.w	[game_state], r0	# game_state, _2
# spaceinvaders.c:1973: }
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
# spaceinvaders.c:1986: 	sprintf(str, label_text);
	mov.w	r0, sp	# tmp26,
	ld.w	r1, [r13 + (20)]	# tmp27, label_text
	st.w	[r0 + (4)], r1	#, tmp27
	mov.w	r1, str	# tmp28,
	st.w	[r0], r1	#, tmp28
	call	sprintf		#
# spaceinvaders.c:1987: 	draw(x, y, color, label_text);
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
# spaceinvaders.c:1988: }
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
# spaceinvaders.c:1992: 	draw_label(20, 5, CYAN, "SCORE");
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
# spaceinvaders.c:1993: 	draw_label(100, 5, RED, "HI-SCORE");
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
# spaceinvaders.c:1994: }
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
# spaceinvaders.c:2009: 		entry_x - (bitmap == ufo?4:0),
	ld.w	r1, [r13 + (24)]	# tmp29, bitmap
	mov.w	r0, ufo	# tmp30,
	cmp.w	r1, r0	# tmp29, tmp30
	jnz	.L336		#
	mov.w	r0, 4	# iftmp.141_3,
	j	.L337		#
.L336:
	xor.w	r0, r0	# iftmp.141_3
.L337:
# spaceinvaders.c:2008: 	draw_bitmap_with_clear_background(
	ld.w	r1, [r13 + (8)]	# tmp31, entry_x
	sub.w	r1, r0 #222	# _1, iftmp.141_3
	mov.w	r0, sp	# tmp32,
	ld.w	r2, [r13 + (24)]	# tmp33, bitmap
	st.w	[r0 + (16)], r2	#, tmp33
	ld.w	r2, [r13 + (20)]	# tmp34, bitmap_height
	st.w	[r0 + (12)], r2	#, tmp34
	ld.w	r2, [r13 + (16)]	# tmp35, bitmap_width
	st.w	[r0 + (8)], r2	#, tmp35
	ld.w	r2, [r13 + (12)]	# tmp36, entry_y
	st.w	[r0 + (4)], r2	#, tmp36
	st.w	[r0], r1	#, _1
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:2014: 	draw_label(
	ld.w	r0, [r13 + (8)]	# tmp37, entry_x
	mov.w	r1, r0	# _2, tmp37
	add.w	r1, 16 #111	# _2,
	mov.w	r0, sp	# tmp38,
	ld.w	r2, [r13 + (32)]	# tmp39, label_text
	st.w	[r0 + (12)], r2	#, tmp39
	ld.w	r2, [r13 + (28)]	# tmp40, text_color
	st.w	[r0 + (8)], r2	#, tmp40
	ld.w	r2, [r13 + (12)]	# tmp41, entry_y
	st.w	[r0 + (4)], r2	#, tmp41
	st.w	[r0], r1	#, _2
	call	draw_label		#
# spaceinvaders.c:2019: }
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
# spaceinvaders.c:2023: 	int ship_score_x_pos = 82;
	mov.w	r0, 82	# tmp26,
	st.w	[r13 + (-4)], r0	# ship_score_x_pos, tmp26
# spaceinvaders.c:2024: 	int bitmap_height = 8;
	mov.w	r0, 8	# tmp27,
	st.w	[r13 + (-8)], r0	# bitmap_height, tmp27
# spaceinvaders.c:2026: 	draw_label(
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
# spaceinvaders.c:2031: 	draw_table_entry(
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
# spaceinvaders.c:2039: 	draw_table_entry(
	mov.w	r0, sp	# tmp41,
	mov.w	r1, .LC17	# tmp42,
	st.w	[r0 + (24)], r1	#, tmp42
	mov.w	r1, 14	# tmp43,
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
# spaceinvaders.c:2047: 	draw_table_entry(
	mov.w	r0, sp	# tmp49,
	mov.w	r1, .LC18	# tmp50,
	st.w	[r0 + (24)], r1	#, tmp50
	mov.w	r1, 14	# tmp51,
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
# spaceinvaders.c:2055: 	draw_table_entry(
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
# spaceinvaders.c:2063: }
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
# spaceinvaders.c:2067: 	switch(state)
	ld.w	r1, [r13 + (8)]	# tmp26, state
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# tmp26, tmp27
	jz	.L340		#
	ld.w	r1, [r13 + (8)]	# tmp28, state
	mov.w	r0, 1	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L341		#
# spaceinvaders.c:2084: 			break;
	j	.L343		#
.L340:
# spaceinvaders.c:2070: 			clear_bitmap_test(
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
# spaceinvaders.c:2075: 			break;
	j	.L343		#
.L341:
# spaceinvaders.c:2077: 			draw_label(
	mov.w	r0, sp	# tmp35,
	mov.w	r1, .LC20	# tmp36,
	st.w	[r0 + (12)], r1	#, tmp36
	mov.w	r1, 10	# tmp37,
	st.w	[r0 + (8)], r1	#, tmp37
	mov.w	r1, 76	# tmp38,
	st.w	[r0 + (4)], r1	#, tmp38
	mov.w	r1, 55	# tmp39,
	st.w	[r0], r1	#, tmp39
	call	draw_label		#
# spaceinvaders.c:2082: 			break;
	nop	
.L343:
# spaceinvaders.c:2086: }
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
# spaceinvaders.c:2090: 	switch(state)
	ld.w	r1, [r13 + (8)]	# tmp26, state
	xor.w	r0, r0	# tmp27
	cmp.w	r1, r0	# tmp26, tmp27
	jz	.L345		#
	ld.w	r1, [r13 + (8)]	# tmp28, state
	mov.w	r0, 1	# tmp29,
	cmp.w	r1, r0	# tmp28, tmp29
	jz	.L346		#
# spaceinvaders.c:2099: 			break;
	j	.L348		#
.L345:
# spaceinvaders.c:2093: 			clear_bitmap_test(20, 20, 45, 10);
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
# spaceinvaders.c:2094: 			break;
	j	.L348		#
.L346:
# spaceinvaders.c:2096: 			check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:2097: 			break;
	nop	
.L348:
# spaceinvaders.c:2101: }
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
# spaceinvaders.c:2105: 	int state = DRAW;
	mov.w	r0, 1	# tmp29,
	st.w	[r13 + (-4)], r0	# state, tmp29
# spaceinvaders.c:2106: 	int timer = 0;
	xor.w	r0, r0	# tmp30
	st.w	[r13 + (-8)], r0	# timer, tmp30
# spaceinvaders.c:2107: 	int vkp = 0;
	xor.w	r0, r0	# tmp31
	st.w	[r13 + (-12)], r0	# vkp, tmp31
# spaceinvaders.c:2109: 	draw_score_labels();
	call	draw_score_labels		#
# spaceinvaders.c:2110: 	check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:2111: 	draw_high_score();
	call	draw_high_score		#
# spaceinvaders.c:2112: 	draw_score_advance_table();
	call	draw_score_advance_table		#
.L354:
# spaceinvaders.c:2117: 		if(timer <= 0)
	ld.w	r1, [r13 + (-8)]	# tmp32, timer
	xor.w	r0, r0	# tmp33
	cmp.w	r1, r0	# tmp32, tmp33
	jgs	.L350		#
# spaceinvaders.c:2119: 			set_press_start_label_visibility(state);
	mov.w	r1, sp	# tmp34,
	ld.w	r0, [r13 + (-4)]	# tmp35, state
	st.w	[r1], r0	#, tmp35
	call	set_press_start_label_visibility		#
# spaceinvaders.c:2120: 			state ^= 1;
	ld.w	r0, [r13 + (-4)]	# tmp37, state
	mov.w	r1, 1	# tmp38,
	xor.w	r0, r1	# tmp36, tmp38
	st.w	[r13 + (-4)], r0	# state, tmp36
# spaceinvaders.c:2121: 			timer = 1000;
	mov.w	r0, 1000	# tmp39,
	st.w	[r13 + (-8)], r0	# timer, tmp39
.L350:
# spaceinvaders.c:2124: 		vkp = is_key_pressed();
	call	is_key_pressed		#
	st.w	[r13 + (-12)], r0	# vkp,
# spaceinvaders.c:2125: 		if(vkp == VK_SPACE)
	ld.w	r1, [r13 + (-12)]	# tmp40, vkp
	mov.w	r0, 32	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L351		#
# spaceinvaders.c:2127: 			cls(0);
	mov.w	r1, sp	# tmp42,
	xor.w	r0, r0	# tmp43
	st.w	[r1], r0	#, tmp43
	call	cls		#
# spaceinvaders.c:2128: 			current_screen = GET_READY_SCREEN;
	mov.w	r0, 1	# tmp44,
	st.w	[current_screen], r0	# current_screen, tmp44
# spaceinvaders.c:2129: 			return 0;
	xor.w	r0, r0	# _6
	j	.L352		#
.L351:
# spaceinvaders.c:2130: 		} else if (vkp == VK_ESC) 
	ld.w	r1, [r13 + (-12)]	# tmp45, vkp
	mov.w	r0, 27	# tmp46,
	cmp.w	r1, r0	# tmp45, tmp46
	jnz	.L353		#
# spaceinvaders.c:2132: 			return 1;
	mov.w	r0, 1	# _6,
	j	.L352		#
.L353:
# spaceinvaders.c:2135: 		timer -= 2;
	ld.w	r0, [r13 + (-8)]	# tmp48, timer
	add.w	r0, -2 #111	# tmp47,
	st.w	[r13 + (-8)], r0	# timer, tmp47
# spaceinvaders.c:2136: 		delay_millis(delay_ms);
	ld.w	r0, [delay_ms]	# delay_ms.142_1, delay_ms
	mov.w	r1, sp	# tmp49,
	st.w	[r1], r0	#, delay_ms.142_1
	call	delay_millis		#
# spaceinvaders.c:2117: 		if(timer <= 0)
	j	.L354		#
.L352:
# spaceinvaders.c:2138: }
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
# spaceinvaders.c:2142: 	lives = 3;
	mov.w	r0, 3	# tmp30,
	st.w	[lives], r0	# lives, tmp30
# spaceinvaders.c:2143: 	bonus_life_awarded = FALSE;
	xor.w	r0, r0	# tmp31
	st.w	[bonus_life_awarded], r0	# bonus_life_awarded, tmp31
# spaceinvaders.c:2144: 	score = 0;
	xor.w	r0, r0	# tmp32
	st.w	[score], r0	# score, tmp32
# spaceinvaders.c:2146: 	current_wave = 1;
	mov.w	r0, 1	# tmp33,
	st.w	[current_wave], r0	# current_wave, tmp33
# spaceinvaders.c:2148: 	int state = DRAW;
	mov.w	r0, 1	# tmp34,
	st.w	[r13 + (-4)], r0	# state, tmp34
# spaceinvaders.c:2149: 	int timer_for_label_visibility = 0;
	xor.w	r0, r0	# tmp35
	st.w	[r13 + (-8)], r0	# timer_for_label_visibility, tmp35
# spaceinvaders.c:2150: 	int timer_for_screen_change = 1000;
	mov.w	r0, 1000	# tmp36,
	st.w	[r13 + (-12)], r0	# timer_for_screen_change, tmp36
# spaceinvaders.c:2152: 	draw_score_labels();
	call	draw_score_labels		#
# spaceinvaders.c:2153: 	draw_high_score();
	call	draw_high_score		#
# spaceinvaders.c:2154: 	draw_label(
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
.L360:
# spaceinvaders.c:2162: 		if(timer_for_label_visibility <= 0)
	ld.w	r1, [r13 + (-8)]	# tmp42, timer_for_label_visibility
	xor.w	r0, r0	# tmp43
	cmp.w	r1, r0	# tmp42, tmp43
	jgs	.L356		#
# spaceinvaders.c:2164: 			set_score_label_visibility(state);
	mov.w	r1, sp	# tmp44,
	ld.w	r0, [r13 + (-4)]	# tmp45, state
	st.w	[r1], r0	#, tmp45
	call	set_score_label_visibility		#
# spaceinvaders.c:2165: 			state ^= 1;
	ld.w	r0, [r13 + (-4)]	# tmp47, state
	mov.w	r1, 1	# tmp48,
	xor.w	r0, r1	# tmp46, tmp48
	st.w	[r13 + (-4)], r0	# state, tmp46
# spaceinvaders.c:2166: 			timer_for_label_visibility = 100;
	mov.w	r0, 100	# tmp49,
	st.w	[r13 + (-8)], r0	# timer_for_label_visibility, tmp49
.L356:
# spaceinvaders.c:2169: 		if(timer_for_screen_change <= 0)
	ld.w	r1, [r13 + (-12)]	# tmp50, timer_for_screen_change
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# tmp50, tmp51
	jgs	.L357		#
# spaceinvaders.c:2171: 			cls(0);
	mov.w	r1, sp	# tmp52,
	xor.w	r0, r0	# tmp53
	st.w	[r1], r0	#, tmp53
	call	cls		#
# spaceinvaders.c:2172: 			current_screen = PLAY_SCREEN;
	mov.w	r0, 2	# tmp54,
	st.w	[current_screen], r0	# current_screen, tmp54
# spaceinvaders.c:2173: 			return 0;
	xor.w	r0, r0	# _8
	j	.L358		#
.L357:
# spaceinvaders.c:2176: 		if (is_key_pressed() == VK_ESC)
	call	is_key_pressed		#
	mov.w	r1, r0	# _1,
# spaceinvaders.c:2176: 		if (is_key_pressed() == VK_ESC)
	mov.w	r0, 27	# tmp55,
	cmp.w	r1, r0	# _1, tmp55
	jnz	.L359		#
# spaceinvaders.c:2177: 			return 1;
	mov.w	r0, 1	# _8,
	j	.L358		#
.L359:
# spaceinvaders.c:2179: 		timer_for_label_visibility -= 2;
	ld.w	r0, [r13 + (-8)]	# tmp57, timer_for_label_visibility
	add.w	r0, -2 #111	# tmp56,
	st.w	[r13 + (-8)], r0	# timer_for_label_visibility, tmp56
# spaceinvaders.c:2180: 		timer_for_screen_change -= 2;
	ld.w	r0, [r13 + (-12)]	# tmp59, timer_for_screen_change
	add.w	r0, -2 #111	# tmp58,
	st.w	[r13 + (-12)], r0	# timer_for_screen_change, tmp58
# spaceinvaders.c:2181: 		delay_millis(delay_ms);
	ld.w	r0, [delay_ms]	# delay_ms.143_2, delay_ms
	mov.w	r1, sp	# tmp60,
	st.w	[r1], r0	#, delay_ms.143_2
	call	delay_millis		#
# spaceinvaders.c:2162: 		if(timer_for_label_visibility <= 0)
	j	.L360		#
.L358:
# spaceinvaders.c:2183: }
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
# spaceinvaders.c:2195: 	alien->x = x;
	ld.w	r0, [r13 + (8)]	# tmp41, alien
	ld.s	r1, [r13 + (-8)]	# tmp42, x
	st.s	[r0 + (2)], r1	# alien_7(D)->x, tmp42
# spaceinvaders.c:2196: 	alien->y = y;
	ld.w	r0, [r13 + (8)]	# tmp43, alien
	ld.s	r1, [r13 + (-12)]	# tmp44, y
	st.s	[r0 + (4)], r1	# alien_7(D)->y, tmp44
# spaceinvaders.c:2197: 	alien->addr = draw_bitmap_with_clear_background(x, y, width, height, bitmap);
	ld.s	r1, [r13 + (-8)]	# _1, x
	ld.s	r2, [r13 + (-12)]	# _2, y
	ld.s	r3, [r13 + (-16)]	# _3, width
	ld.s	r4, [r13 + (-20)]	# _4, height
	mov.w	r0, sp	# tmp45,
	ld.w	r6, [r13 + (28)]	# tmp46, bitmap
	st.w	[r0 + (16)], r6	#, tmp46
	st.w	[r0 + (12)], r4	#, _4
	st.w	[r0 + (8)], r3	#, _3
	st.w	[r0 + (4)], r2	#, _2
	st.w	[r0], r1	#, _1
	call	draw_bitmap_with_clear_background		#
	mov.w	r1, r0	# _5,
# spaceinvaders.c:2197: 	alien->addr = draw_bitmap_with_clear_background(x, y, width, height, bitmap);
	ld.w	r0, [r13 + (8)]	# tmp47, alien
	st.s	[r0], r1	# alien_7(D)->addr, _5
# spaceinvaders.c:2198: 	alien->alive = status;
	ld.w	r0, [r13 + (8)]	# tmp48, alien
	ld.s	r1, [r13 + (-24)]	# tmp49, status
	st.s	[r0 + (6)], r1	# alien_7(D)->alive, tmp49
# spaceinvaders.c:2199: }
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
# spaceinvaders.c:2203: 	if(player_bullet_status == READY) 
	ld.w	r1, [player_bullet_status]	# player_bullet_status.144_1, player_bullet_status
# spaceinvaders.c:2203: 	if(player_bullet_status == READY) 
	xor.w	r0, r0	# tmp38
	cmp.w	r1, r0	# player_bullet_status.144_1, tmp38
	jnz	.L364		#
# spaceinvaders.c:2205: 		player_bullet_def->addr = (uint16_t)player_bullet_addr;
	ld.w	r1, [player_bullet_addr]	# player_bullet_addr.145_2, player_bullet_addr
# spaceinvaders.c:2205: 		player_bullet_def->addr = (uint16_t)player_bullet_addr;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.146_3, player_bullet_def
# spaceinvaders.c:2205: 		player_bullet_def->addr = (uint16_t)player_bullet_addr;
	st.s	[r0], r1	# player_bullet_def.146_3->addr, _4
# spaceinvaders.c:2206: 		player_bullet_def->x = player_ship->x + 6;
	ld.w	r0, [player_ship]	# player_ship.147_5, player_ship
	ld.s	r1, [r0 + (2)]	# _6, player_ship.147_5->x
# spaceinvaders.c:2206: 		player_bullet_def->x = player_ship->x + 6;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.148_7, player_bullet_def
# spaceinvaders.c:2206: 		player_bullet_def->x = player_ship->x + 6;
	add.w	r1, 6 #111	# tmp39,
# spaceinvaders.c:2206: 		player_bullet_def->x = player_ship->x + 6;
	st.s	[r0 + (2)], r1	# player_bullet_def.148_7->x, _8
# spaceinvaders.c:2207: 		player_bullet_def->y = 204;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.149_9, player_bullet_def
# spaceinvaders.c:2207: 		player_bullet_def->y = 204;
	mov.s	r1, 204	# tmp40,
	st.s	[r0 + (4)], r1	# player_bullet_def.149_9->y, tmp40
# spaceinvaders.c:2208: 		player_bullet_def->transparent = 0;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.150_10, player_bullet_def
# spaceinvaders.c:2208: 		player_bullet_def->transparent = 0;
	xor.w	r1, r1	# tmp41
	st.s	[r0 + (6)], r1	# player_bullet_def.150_10->transparent, tmp41
# spaceinvaders.c:2209: 		player_bullet_status = MOVING;
	mov.w	r0, 2	# tmp42,
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp42
# spaceinvaders.c:2210: 		current_player_bullet++;
	ld.w	r0, [current_player_bullet]	# current_player_bullet.151_11, current_player_bullet
	add.w	r0, 1 #111	# _12,
	st.w	[current_player_bullet], r0	# current_player_bullet, _12
# spaceinvaders.c:2212: 		set_current_and_special_bullets_if_current_is_higher_than_special();
	call	set_current_and_special_bullets_if_current_is_higher_than_special		#
.L364:
# spaceinvaders.c:2214: }
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
# spaceinvaders.c:2219: 	player_movement_skip_frame = 3;
	mov.w	r0, 3	# tmp345,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, tmp345
# spaceinvaders.c:2220: 	player_alive = 3;
	mov.w	r0, 3	# tmp346,
	st.w	[player_alive], r0	# player_alive, tmp346
# spaceinvaders.c:2221: 	player_death_timer = 0;
	xor.w	r0, r0	# tmp347
	st.w	[player_death_timer], r0	# player_death_timer, tmp347
# spaceinvaders.c:2222: 	player_spawn_current_time = 0;
	xor.w	r0, r0	# tmp348
	st.w	[player_spawn_current_time], r0	# player_spawn_current_time, tmp348
# spaceinvaders.c:2223: 	player_spawn_timer = 1500;
	mov.w	r0, 1500	# tmp349,
	st.w	[player_spawn_timer], r0	# player_spawn_timer, tmp349
# spaceinvaders.c:2224: 	current_pl_expl_sprite = 0;
	xor.w	r0, r0	# tmp350
	st.w	[current_pl_expl_sprite], r0	# current_pl_expl_sprite, tmp350
# spaceinvaders.c:2227: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp351
	st.w	[vkp], r0	# vkp, tmp351
# spaceinvaders.c:2227: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp352
	st.w	[vkr], r0	# vkr, tmp352
# spaceinvaders.c:2227: 	vkp = 0, vkr = 0, old = 0;
	xor.w	r0, r0	# tmp353
	st.w	[old], r0	# old, tmp353
# spaceinvaders.c:2231: 	timer_for_ufo_death = 0;
	xor.w	r0, r0	# tmp354
	st.w	[timer_for_ufo_death], r0	# timer_for_ufo_death, tmp354
# spaceinvaders.c:2232: 	ufo_status = DEAD;
	xor.w	r0, r0	# tmp355
	st.w	[ufo_status], r0	# ufo_status, tmp355
# spaceinvaders.c:2233: 	timer_for_ufo_move = 36;
	mov.w	r0, 36	# tmp356,
	st.w	[timer_for_ufo_move], r0	# timer_for_ufo_move, tmp356
# spaceinvaders.c:2234: 	ufo_position_X = 0;
	xor.w	r0, r0	# tmp357
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp357
# spaceinvaders.c:2235: 	ufo_direction = 3;
	mov.w	r0, 3	# tmp358,
	st.w	[ufo_direction], r0	# ufo_direction, tmp358
# spaceinvaders.c:2236: 	ufo_score = 0;
	xor.w	r0, r0	# tmp359
	st.w	[ufo_score], r0	# ufo_score, tmp359
# spaceinvaders.c:2239: 	number_of_aliens = 55;
	mov.w	r0, 55	# tmp360,
	st.w	[number_of_aliens], r0	# number_of_aliens, tmp360
# spaceinvaders.c:2240: 	death_timer = 0;
	xor.w	r0, r0	# tmp361
	st.w	[death_timer], r0	# death_timer, tmp361
# spaceinvaders.c:2241: 	movement_step = 96;
	mov.w	r0, 96	# tmp362,
	st.w	[movement_step], r0	# movement_step, tmp362
# spaceinvaders.c:2242: 	current_step = 0;
	xor.w	r0, r0	# tmp363
	st.w	[current_step], r0	# current_step, tmp363
# spaceinvaders.c:2243: 	direction = 3;
	mov.b	r0, 3	# tmp364,
	st.b	[direction], r0	# direction, tmp364
# spaceinvaders.c:2244: 	distance = 2;
	mov.w	r0, 2	# tmp365,
	st.w	[distance], r0	# distance, tmp365
# spaceinvaders.c:2245: 	int sprite_version = 1;
	mov.w	r0, 1	# tmp366,
	st.w	[r13 + (-4)], r0	# sprite_version, tmp366
# spaceinvaders.c:2246: 	uint16_t *alien_sprite = 0;
	xor.w	r0, r0	# tmp367
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp367
# spaceinvaders.c:2256: 	int alien_index = 0;
	xor.w	r0, r0	# tmp368
	st.w	[r13 + (-12)], r0	# alien_index, tmp368
# spaceinvaders.c:2259: 	player_bullet_status = READY;
	xor.w	r0, r0	# tmp369
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp369
# spaceinvaders.c:2260: 	timer_for_player_bullet_destroy = 0;
	xor.w	r0, r0	# tmp370
	st.w	[timer_for_player_bullet_destroy], r0	# timer_for_player_bullet_destroy, tmp370
# spaceinvaders.c:2261: 	special_player_bullet = 23;
	mov.w	r0, 23	# tmp371,
	st.w	[special_player_bullet], r0	# special_player_bullet, tmp371
# spaceinvaders.c:2262: 	current_player_bullet = 0;
	xor.w	r0, r0	# tmp372
	st.w	[current_player_bullet], r0	# current_player_bullet, tmp372
# spaceinvaders.c:2265: 	timer_for_alien_bullet_spawn = 1150;
	mov.w	r0, 1150	# tmp373,
	st.w	[timer_for_alien_bullet_spawn], r0	# timer_for_alien_bullet_spawn, tmp373
# spaceinvaders.c:2266: 	alien_bullet_spawn_time = 1150;
	mov.w	r0, 1150	# tmp374,
	st.w	[alien_bullet_spawn_time], r0	# alien_bullet_spawn_time, tmp374
# spaceinvaders.c:2268: 	delay_ms = 2;
	mov.w	r0, 2	# tmp375,
	st.w	[delay_ms], r0	# delay_ms, tmp375
# spaceinvaders.c:2271: 	calculate_timer_for_ufo_spawn();
	call	calculate_timer_for_ufo_spawn		#
# spaceinvaders.c:2273: 	change_sprite_color(PLAYER_SPAWN_Y, 16, 8, ship);
	mov.w	r0, sp	# tmp376,
	mov.w	r1, ship	# tmp377,
	st.w	[r0 + (12)], r1	#, tmp377
	mov.w	r1, 8	# tmp378,
	st.w	[r0 + (8)], r1	#, tmp378
	mov.w	r1, 16	# tmp379,
	st.w	[r0 + (4)], r1	#, tmp379
	mov.w	r1, 212	# tmp380,
	st.w	[r0], r1	#, tmp380
	call	change_sprite_color		#
# spaceinvaders.c:2274: 	copy_player_ship();
	call	copy_player_ship		#
# spaceinvaders.c:2275: 	player_ship->addr = 0;
	ld.w	r0, [player_ship]	# player_ship.152_1, player_ship
# spaceinvaders.c:2275: 	player_ship->addr = 0;
	xor.w	r1, r1	# tmp381
	st.s	[r0], r1	# player_ship.152_1->addr, tmp381
# spaceinvaders.c:2277: 	for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp382
	st.w	[r13 + (-16)], r0	# i, tmp382
# spaceinvaders.c:2277: 	for(int i = 0; i < 5; i++)
	j	.L366		#
.L367:
# spaceinvaders.c:2279: 		alien_bullet[i].x = 0;
	ld.w	r1, [r13 + (-16)]	# tmp383, i
	mov.w	r0, r1	# tmp384, tmp383
	mov.w	r2, 3	# tmp386,
	shl.w	r0, r2	# tmp385, tmp386
	add.w	r0, r1 #222	# tmp384, tmp383
	mov.w	r1, 2	# tmp388,
	shl.w	r0, r1	# tmp387, tmp388
	mov.w	r1, alien_bullet	# tmp390,
	add.w	r0, r1 #222	# tmp389, tmp390
	xor.w	r1, r1	# tmp391
	st.w	[r0], r1	# alien_bullet[i_333].x, tmp391
# spaceinvaders.c:2280: 		alien_bullet[i].y = 0;
	ld.w	r1, [r13 + (-16)]	# tmp392, i
	mov.w	r0, r1	# tmp393, tmp392
	mov.w	r2, 3	# tmp395,
	shl.w	r0, r2	# tmp394, tmp395
	add.w	r0, r1 #222	# tmp393, tmp392
	mov.w	r1, 2	# tmp397,
	shl.w	r0, r1	# tmp396, tmp397
	mov.w	r1, alien_bullet+4	# tmp399,
	add.w	r0, r1 #222	# tmp398, tmp399
	xor.w	r1, r1	# tmp400
	st.w	[r0], r1	# alien_bullet[i_333].y, tmp400
# spaceinvaders.c:2281: 		alien_bullet[i].type = 2;
	ld.w	r1, [r13 + (-16)]	# tmp401, i
	mov.w	r0, r1	# tmp402, tmp401
	mov.w	r2, 3	# tmp404,
	shl.w	r0, r2	# tmp403, tmp404
	add.w	r0, r1 #222	# tmp402, tmp401
	mov.w	r1, 2	# tmp406,
	shl.w	r0, r1	# tmp405, tmp406
	mov.w	r1, alien_bullet+12	# tmp408,
	add.w	r0, r1 #222	# tmp407, tmp408
	mov.w	r1, 2	# tmp409,
	st.w	[r0], r1	# alien_bullet[i_333].type, tmp409
# spaceinvaders.c:2282: 		alien_bullet[i].sprite = 0;
	ld.w	r1, [r13 + (-16)]	# tmp410, i
	mov.w	r0, r1	# tmp411, tmp410
	mov.w	r2, 3	# tmp413,
	shl.w	r0, r2	# tmp412, tmp413
	add.w	r0, r1 #222	# tmp411, tmp410
	mov.w	r1, 2	# tmp415,
	shl.w	r0, r1	# tmp414, tmp415
	mov.w	r1, alien_bullet+16	# tmp417,
	add.w	r0, r1 #222	# tmp416, tmp417
	xor.w	r1, r1	# tmp418
	st.w	[r0], r1	# alien_bullet[i_333].sprite, tmp418
# spaceinvaders.c:2283: 		alien_bullet[i].status = READY;
	ld.w	r1, [r13 + (-16)]	# tmp419, i
	mov.w	r0, r1	# tmp420, tmp419
	mov.w	r2, 3	# tmp422,
	shl.w	r0, r2	# tmp421, tmp422
	add.w	r0, r1 #222	# tmp420, tmp419
	mov.w	r1, 2	# tmp424,
	shl.w	r0, r1	# tmp423, tmp424
	mov.w	r1, alien_bullet+20	# tmp426,
	add.w	r0, r1 #222	# tmp425, tmp426
	xor.w	r1, r1	# tmp427
	st.w	[r0], r1	# alien_bullet[i_333].status, tmp427
# spaceinvaders.c:2284: 		alien_bullet[i].timer_for_move = 0;
	ld.w	r1, [r13 + (-16)]	# tmp428, i
	mov.w	r0, r1	# tmp429, tmp428
	mov.w	r2, 3	# tmp431,
	shl.w	r0, r2	# tmp430, tmp431
	add.w	r0, r1 #222	# tmp429, tmp428
	mov.w	r1, 2	# tmp433,
	shl.w	r0, r1	# tmp432, tmp433
	mov.w	r1, alien_bullet+24	# tmp435,
	add.w	r0, r1 #222	# tmp434, tmp435
	xor.w	r1, r1	# tmp436
	st.w	[r0], r1	# alien_bullet[i_333].timer_for_move, tmp436
# spaceinvaders.c:2285: 		alien_bullet[i].timer_for_sprite_change = 0;
	ld.w	r1, [r13 + (-16)]	# tmp437, i
	mov.w	r0, r1	# tmp438, tmp437
	mov.w	r2, 3	# tmp440,
	shl.w	r0, r2	# tmp439, tmp440
	add.w	r0, r1 #222	# tmp438, tmp437
	mov.w	r1, 2	# tmp442,
	shl.w	r0, r1	# tmp441, tmp442
	mov.w	r1, alien_bullet+28	# tmp444,
	add.w	r0, r1 #222	# tmp443, tmp444
	xor.w	r1, r1	# tmp445
	st.w	[r0], r1	# alien_bullet[i_333].timer_for_sprite_change, tmp445
# spaceinvaders.c:2286: 		alien_bullet[i].timer_for_destroy = 0;
	ld.w	r1, [r13 + (-16)]	# tmp446, i
	mov.w	r0, r1	# tmp447, tmp446
	mov.w	r2, 3	# tmp449,
	shl.w	r0, r2	# tmp448, tmp449
	add.w	r0, r1 #222	# tmp447, tmp446
	mov.w	r1, 2	# tmp451,
	shl.w	r0, r1	# tmp450, tmp451
	mov.w	r1, alien_bullet+32	# tmp453,
	add.w	r0, r1 #222	# tmp452, tmp453
	xor.w	r1, r1	# tmp454
	st.w	[r0], r1	# alien_bullet[i_333].timer_for_destroy, tmp454
# spaceinvaders.c:2277: 	for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-16)]	# tmp456, i
	add.w	r0, 1 #111	# tmp455,
	st.w	[r13 + (-16)], r0	# i, tmp455
.L366:
# spaceinvaders.c:2277: 	for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-16)]	# tmp457, i
	mov.w	r0, 4	# tmp458,
	cmp.w	r1, r0	# tmp457, tmp458
	jses	.L367		#
# spaceinvaders.c:2289: 	for(int i = 0; i < 4; i++)
	xor.w	r0, r0	# tmp459
	st.w	[r13 + (-20)], r0	# i, tmp459
# spaceinvaders.c:2289: 	for(int i = 0; i < 4; i++)
	j	.L368		#
.L369:
# spaceinvaders.c:2291: 		row_base[i].x = 40 + 48 * i;
	ld.w	r0, [r13 + (-20)]	# tmp460, i
	mov.w	r1, r0	# _2, tmp460
	mov.w	r0, r1	# tmp461, _2
	mov.w	r2, r0	# tmp463, tmp461
	add.w	r0, r2 #222	# tmp462, tmp463
	add.w	r0, r1 #222	# tmp464, tmp465
	mov.w	r1, 4	# tmp468,
	shl.w	r0, r1	# tmp467, tmp468
	add.w	r0, 40 #111	# tmp469,
	mov.w	r1, r0	# _4, tmp469
# spaceinvaders.c:2291: 		row_base[i].x = 40 + 48 * i;
	ld.w	r0, [r13 + (-20)]	# tmp470, i
	mov.w	r2, 3	# tmp472,
	shl.w	r0, r2	# tmp471, tmp472
	mov.w	r2, row_base+2	# tmp474,
	add.w	r0, r2 #222	# tmp473, tmp474
	st.s	[r0], r1	# row_base[i_334].x, _4
# spaceinvaders.c:2292: 		row_base[i].y = BASE_Y;
	ld.w	r0, [r13 + (-20)]	# tmp475, i
	mov.w	r1, 3	# tmp477,
	shl.w	r0, r1	# tmp476, tmp477
	mov.w	r1, row_base+4	# tmp479,
	add.w	r0, r1 #222	# tmp478, tmp479
	mov.s	r1, 188	# tmp480,
	st.s	[r0], r1	# row_base[i_334].y, tmp480
# spaceinvaders.c:2293: 		row_base[i].addr = draw_bitmap_with_clear_background(40 + 48 * i, BASE_Y, 24, 16, base);
	ld.w	r1, [r13 + (-20)]	# tmp481, i
	mov.w	r0, r1	# tmp482, tmp481
	add.w	r0, r0 #222	# tmp483, tmp482
	add.w	r0, r1 #222	# tmp482, tmp481
	mov.w	r1, 4	# tmp485,
	shl.w	r0, r1	# tmp484, tmp485
# spaceinvaders.c:2293: 		row_base[i].addr = draw_bitmap_with_clear_background(40 + 48 * i, BASE_Y, 24, 16, base);
	mov.w	r1, r0	# _6, _5
	add.w	r1, 40 #111	# _6,
	mov.w	r0, sp	# tmp486,
	mov.w	r2, base	# tmp487,
	st.w	[r0 + (16)], r2	#, tmp487
	mov.w	r2, 16	# tmp488,
	st.w	[r0 + (12)], r2	#, tmp488
	mov.w	r2, 24	# tmp489,
	st.w	[r0 + (8)], r2	#, tmp489
	mov.w	r2, 188	# tmp490,
	st.w	[r0 + (4)], r2	#, tmp490
	st.w	[r0], r1	#, _6
	call	draw_bitmap_with_clear_background		#
	mov.w	r2, r0	# _7,
# spaceinvaders.c:2293: 		row_base[i].addr = draw_bitmap_with_clear_background(40 + 48 * i, BASE_Y, 24, 16, base);
	ld.w	r0, [r13 + (-20)]	# tmp491, i
	mov.w	r1, 3	# tmp493,
	shl.w	r0, r1	# tmp492, tmp493
	mov.w	r1, row_base	# tmp495,
	add.w	r0, r1 #222	# tmp494, tmp495
	st.s	[r0], r2	# row_base[i_334].addr, _7
# spaceinvaders.c:2294: 		row_base[i].alive = 2;
	ld.w	r0, [r13 + (-20)]	# tmp496, i
	mov.w	r1, 3	# tmp498,
	shl.w	r0, r1	# tmp497, tmp498
	mov.w	r1, row_base+6	# tmp500,
	add.w	r0, r1 #222	# tmp499, tmp500
	mov.s	r1, 2	# tmp501,
	st.s	[r0], r1	# row_base[i_334].alive, tmp501
# spaceinvaders.c:2289: 	for(int i = 0; i < 4; i++)
	ld.w	r0, [r13 + (-20)]	# tmp503, i
	add.w	r0, 1 #111	# tmp502,
	st.w	[r13 + (-20)], r0	# i, tmp502
.L368:
# spaceinvaders.c:2289: 	for(int i = 0; i < 4; i++)
	ld.w	r1, [r13 + (-20)]	# tmp504, i
	mov.w	r0, 3	# tmp505,
	cmp.w	r1, r0	# tmp504, tmp505
	jses	.L369		#
# spaceinvaders.c:2297: 	for(int i = 0; i < 15; i++)
	xor.w	r0, r0	# tmp506
	st.w	[r13 + (-24)], r0	# i, tmp506
# spaceinvaders.c:2297: 	for(int i = 0; i < 15; i++)
	j	.L370		#
.L371:
# spaceinvaders.c:2298: 		draw_bitmap_with_clear_background(16 * i, BOTTOM_LINE_Y, 16, 1, bottom_line);
	ld.w	r1, [r13 + (-24)]	# tmp507, i
	mov.w	r0, 4	# tmp508,
	shl.w	r1, r0	# _8, tmp508
	mov.w	r0, sp	# tmp509,
	mov.w	r2, bottom_line	# tmp510,
	st.w	[r0 + (16)], r2	#, tmp510
	mov.w	r2, 1	# tmp511,
	st.w	[r0 + (12)], r2	#, tmp511
	mov.w	r2, 16	# tmp512,
	st.w	[r0 + (8)], r2	#, tmp512
	mov.w	r2, 228	# tmp513,
	st.w	[r0 + (4)], r2	#, tmp513
	st.w	[r0], r1	#, _8
	call	draw_bitmap_with_clear_background		#
# spaceinvaders.c:2297: 	for(int i = 0; i < 15; i++)
	ld.w	r0, [r13 + (-24)]	# tmp515, i
	add.w	r0, 1 #111	# tmp514,
	st.w	[r13 + (-24)], r0	# i, tmp514
.L370:
# spaceinvaders.c:2297: 	for(int i = 0; i < 15; i++)
	ld.w	r1, [r13 + (-24)]	# tmp516, i
	mov.w	r0, 14	# tmp517,
	cmp.w	r1, r0	# tmp516, tmp517
	jses	.L371		#
# spaceinvaders.c:2300: 	draw_score_labels();
	call	draw_score_labels		#
# spaceinvaders.c:2301: 	check_and_draw_current_score();
	call	check_and_draw_current_score		#
# spaceinvaders.c:2302: 	draw_high_score();
	call	draw_high_score		#
# spaceinvaders.c:2303: 	draw_lives();
	call	draw_lives		#
# spaceinvaders.c:2305: 	int alien_spawn_x =  41;
	mov.w	r0, 41	# tmp518,
	st.w	[r13 + (-88)], r0	# alien_spawn_x, tmp518
# spaceinvaders.c:2306: 	int alien_spawn_y = get_alien_spawn_y_for_current_wave();
	call	get_alien_spawn_y_for_current_wave		#
	st.w	[r13 + (-28)], r0	# alien_spawn_y,
# spaceinvaders.c:2310: 	int alien_sprite_width = 0;
	xor.w	r0, r0	# tmp519
	st.w	[r13 + (-40)], r0	# alien_sprite_width, tmp519
# spaceinvaders.c:2313: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	mov.w	r0, 4	# tmp520,
	st.w	[r13 + (-44)], r0	# j, tmp520
# spaceinvaders.c:2313: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	j	.L372		#
.L381:
# spaceinvaders.c:2316: 		switch(j)
	ld.w	r1, [r13 + (-44)]	# tmp521, j
	mov.w	r0, 4	# tmp522,
	cmp.w	r1, r0	# tmp521, tmp522
	jz	.L373		#
	ld.w	r1, [r13 + (-44)]	# tmp523, j
	mov.w	r0, 4	# tmp524,
	cmp.w	r1, r0	# tmp523, tmp524
	jgs	.L374		#
	ld.w	r1, [r13 + (-44)]	# tmp525, j
	mov.w	r0, 3	# tmp526,
	cmp.w	r1, r0	# tmp525, tmp526
	jz	.L375		#
	ld.w	r1, [r13 + (-44)]	# tmp527, j
	mov.w	r0, 3	# tmp528,
	cmp.w	r1, r0	# tmp527, tmp528
	jgs	.L374		#
	ld.w	r1, [r13 + (-44)]	# tmp529, j
	mov.w	r0, 2	# tmp530,
	cmp.w	r1, r0	# tmp529, tmp530
	jz	.L376		#
	ld.w	r1, [r13 + (-44)]	# tmp531, j
	mov.w	r0, 2	# tmp532,
	cmp.w	r1, r0	# tmp531, tmp532
	jgs	.L374		#
	ld.w	r1, [r13 + (-44)]	# tmp533, j
	xor.w	r0, r0	# tmp534
	cmp.w	r1, r0	# tmp533, tmp534
	jz	.L377		#
	ld.w	r1, [r13 + (-44)]	# tmp535, j
	mov.w	r0, 1	# tmp536,
	cmp.w	r1, r0	# tmp535, tmp536
	jz	.L378		#
	j	.L374		#
.L373:
# spaceinvaders.c:2319: 				alien_row = row_5_octopus;
	mov.w	r0, row_5_octopus	# tmp537,
	st.w	[r13 + (-36)], r0	# alien_row, tmp537
# spaceinvaders.c:2320: 				alien_bitmap = octopus0;
	mov.w	r0, octopus0	# tmp538,
	st.w	[r13 + (-32)], r0	# alien_bitmap, tmp538
# spaceinvaders.c:2321: 				alien_sprite_width = 12;
	mov.w	r0, 12	# tmp539,
	st.w	[r13 + (-40)], r0	# alien_sprite_width, tmp539
# spaceinvaders.c:2322: 				break;
	j	.L374		#
.L375:
# spaceinvaders.c:2324: 				alien_row = row_4_octopus;
	mov.w	r0, row_4_octopus	# tmp540,
	st.w	[r13 + (-36)], r0	# alien_row, tmp540
# spaceinvaders.c:2325: 				break;
	j	.L374		#
.L376:
# spaceinvaders.c:2327: 				alien_row = row_3_crab;
	mov.w	r0, row_3_crab	# tmp541,
	st.w	[r13 + (-36)], r0	# alien_row, tmp541
# spaceinvaders.c:2328: 				alien_bitmap = crab0;
	mov.w	r0, crab0	# tmp542,
	st.w	[r13 + (-32)], r0	# alien_bitmap, tmp542
# spaceinvaders.c:2329: 				break;
	j	.L374		#
.L378:
# spaceinvaders.c:2331: 				alien_row = row_2_crab;
	mov.w	r0, row_2_crab	# tmp543,
	st.w	[r13 + (-36)], r0	# alien_row, tmp543
# spaceinvaders.c:2332: 				break;
	j	.L374		#
.L377:
# spaceinvaders.c:2334: 				alien_row = row_1_squid;
	mov.w	r0, row_1_squid	# tmp544,
	st.w	[r13 + (-36)], r0	# alien_row, tmp544
# spaceinvaders.c:2335: 				alien_bitmap = squid0;
	mov.w	r0, squid0	# tmp545,
	st.w	[r13 + (-32)], r0	# alien_bitmap, tmp545
# spaceinvaders.c:2336: 				alien_sprite_width = 8;
	mov.w	r0, 8	# tmp546,
	st.w	[r13 + (-40)], r0	# alien_sprite_width, tmp546
# spaceinvaders.c:2337: 				break;
	nop	
.L374:
# spaceinvaders.c:2340: 		for(int i = 0; i < 11; i++)
	xor.w	r0, r0	# tmp547
	st.w	[r13 + (-48)], r0	# i, tmp547
# spaceinvaders.c:2340: 		for(int i = 0; i < 11; i++)
	j	.L379		#
.L380:
# spaceinvaders.c:2342: 			delay_millis(16);
	mov.w	r1, sp	# tmp548,
	mov.w	r0, 16	# tmp549,
	st.w	[r1], r0	#, tmp549
	call	delay_millis		#
# spaceinvaders.c:2344: 				&alien_row[i],
	ld.w	r0, [r13 + (-48)]	# i.153_9, i
	mov.w	r1, 3	# tmp550,
	shl.w	r0, r1	# _10, tmp550
# spaceinvaders.c:2343: 			initialize_alien(
	ld.w	r1, [r13 + (-36)]	# tmp551, alien_row
	add.w	r1, r0 #222	# _11, _10
# spaceinvaders.c:2345: 				alien_spawn_x + 16 * i,
	ld.w	r0, [r13 + (-48)]	# tmp552, i
	mov.w	r2, 4	# tmp554,
	shl.w	r0, r2	# tmp553, tmp554
	ld.w	r2, [r13 + (-88)]	# tmp555, alien_spawn_x
	add.w	r0, r2 #222	# tmp556, tmp557
# spaceinvaders.c:2343: 			initialize_alien(
	zex.s	r2, r0	# _16, _15
	ld.w	r0, [r13 + (-28)]	# tmp558, alien_spawn_y
	zex.s	r3, r0	# _18, _17
	ld.w	r0, [r13 + (-40)]	# tmp559, alien_sprite_width
	zex.s	r4, r0	# _20, _19
	mov.w	r0, sp	# tmp560,
	mov.w	r5, 2	# tmp561,
	st.w	[r0 + (24)], r5	#, tmp561
	ld.w	r5, [r13 + (-32)]	# tmp562, alien_bitmap
	st.w	[r0 + (20)], r5	#, tmp562
	mov.w	r5, 8	# tmp563,
	st.w	[r0 + (16)], r5	#, tmp563
	st.w	[r0 + (12)], r4	#, _20
	st.w	[r0 + (8)], r3	#, _18
	st.w	[r0 + (4)], r2	#, _16
	st.w	[r0], r1	#, _11
	call	initialize_alien		#
# spaceinvaders.c:2340: 		for(int i = 0; i < 11; i++)
	ld.w	r0, [r13 + (-48)]	# tmp565, i
	add.w	r0, 1 #111	# tmp564,
	st.w	[r13 + (-48)], r0	# i, tmp564
.L379:
# spaceinvaders.c:2340: 		for(int i = 0; i < 11; i++)
	ld.w	r1, [r13 + (-48)]	# tmp566, i
	mov.w	r0, 10	# tmp567,
	cmp.w	r1, r0	# tmp566, tmp567
	jses	.L380		#
# spaceinvaders.c:2353: 		alien_spawn_y -= 16;
	ld.w	r0, [r13 + (-28)]	# tmp569, alien_spawn_y
	add.w	r0, -16 #111	# tmp568,
	st.w	[r13 + (-28)], r0	# alien_spawn_y, tmp568
# spaceinvaders.c:2313: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	ld.w	r0, [r13 + (-44)]	# tmp571, j
	add.w	r0, -1 #111	# tmp570,
	st.w	[r13 + (-44)], r0	# j, tmp570
.L372:
# spaceinvaders.c:2313: 	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	ld.w	r1, [r13 + (-44)]	# tmp572, j
	xor.w	r0, r0	# tmp573
	cmp.w	r1, r0	# tmp572, tmp573
	jges	.L381		#
# spaceinvaders.c:2355: 	delay_millis(16);
	mov.w	r1, sp	# tmp574,
	mov.w	r0, 16	# tmp575,
	st.w	[r1], r0	#, tmp575
	call	delay_millis		#
.L516:
# spaceinvaders.c:2360: 		if(game_state == PLAY)
	ld.w	r1, [game_state]	# game_state.154_21, game_state
# spaceinvaders.c:2360: 		if(game_state == PLAY)
	mov.w	r0, 1	# tmp576,
	cmp.w	r1, r0	# game_state.154_21, tmp576
	jnz	.L382		#
# spaceinvaders.c:2364: 			if(ufo_status == DEAD
	ld.w	r1, [ufo_status]	# ufo_status.155_22, ufo_status
# spaceinvaders.c:2364: 			if(ufo_status == DEAD
	xor.w	r0, r0	# tmp577
	cmp.w	r1, r0	# ufo_status.155_22, tmp577
	jnz	.L383		#
# spaceinvaders.c:2365: 			   && number_of_aliens >= 8)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.156_23, number_of_aliens
# spaceinvaders.c:2365: 			   && number_of_aliens >= 8)
	mov.w	r0, 7	# tmp578,
	cmp.w	r1, r0	# number_of_aliens.156_23, tmp578
	jses	.L383		#
# spaceinvaders.c:2367: 				if(timer_for_ufo_spawn <= 0)
	ld.w	r1, [timer_for_ufo_spawn]	# timer_for_ufo_spawn.157_24, timer_for_ufo_spawn
# spaceinvaders.c:2367: 				if(timer_for_ufo_spawn <= 0)
	xor.w	r0, r0	# tmp579
	cmp.w	r1, r0	# timer_for_ufo_spawn.157_24, tmp579
	jgs	.L384		#
# spaceinvaders.c:2369: 					spawn_ufo();
	call	spawn_ufo		#
# spaceinvaders.c:2370: 					calculate_timer_for_ufo_spawn();
	call	calculate_timer_for_ufo_spawn		#
.L384:
# spaceinvaders.c:2372: 				timer_for_ufo_spawn -= 2;
	ld.w	r0, [timer_for_ufo_spawn]	# timer_for_ufo_spawn.158_25, timer_for_ufo_spawn
	add.w	r0, -2 #111	# _26,
	st.w	[timer_for_ufo_spawn], r0	# timer_for_ufo_spawn, _26
	j	.L385		#
.L383:
# spaceinvaders.c:2374: 			else if(ufo_status == ALIVE)
	ld.w	r1, [ufo_status]	# ufo_status.159_27, ufo_status
# spaceinvaders.c:2374: 			else if(ufo_status == ALIVE)
	mov.w	r0, 2	# tmp580,
	cmp.w	r1, r0	# ufo_status.159_27, tmp580
	jnz	.L386		#
# spaceinvaders.c:2376: 				if(timer_for_ufo_move <= 0)
	ld.w	r1, [timer_for_ufo_move]	# timer_for_ufo_move.160_28, timer_for_ufo_move
# spaceinvaders.c:2376: 				if(timer_for_ufo_move <= 0)
	xor.w	r0, r0	# tmp581
	cmp.w	r1, r0	# timer_for_ufo_move.160_28, tmp581
	jgs	.L387		#
# spaceinvaders.c:2378: 					move_ufo();
	call	move_ufo		#
# spaceinvaders.c:2379: 					timer_for_ufo_move = 36;
	mov.w	r0, 36	# tmp582,
	st.w	[timer_for_ufo_move], r0	# timer_for_ufo_move, tmp582
.L387:
# spaceinvaders.c:2381: 				timer_for_ufo_move -= 2;
	ld.w	r0, [timer_for_ufo_move]	# timer_for_ufo_move.161_29, timer_for_ufo_move
	add.w	r0, -2 #111	# _30,
	st.w	[timer_for_ufo_move], r0	# timer_for_ufo_move, _30
	j	.L385		#
.L386:
# spaceinvaders.c:2383: 			else if(ufo_status == EXPLODING)
	ld.w	r1, [ufo_status]	# ufo_status.162_31, ufo_status
# spaceinvaders.c:2383: 			else if(ufo_status == EXPLODING)
	mov.w	r0, 1	# tmp583,
	cmp.w	r1, r0	# ufo_status.162_31, tmp583
	jnz	.L385		#
# spaceinvaders.c:2385: 				if(timer_for_ufo_death == 1200)
	ld.w	r1, [timer_for_ufo_death]	# timer_for_ufo_death.163_32, timer_for_ufo_death
# spaceinvaders.c:2385: 				if(timer_for_ufo_death == 1200)
	mov.w	r0, 1200	# tmp584,
	cmp.w	r1, r0	# timer_for_ufo_death.163_32, tmp584
	jnz	.L388		#
# spaceinvaders.c:2387: 					clear_bitmap_test(ufo_position_X, 35, 16, 8);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.164_33, ufo_position_X
	mov.w	r0, sp	# tmp585,
	mov.w	r2, 8	# tmp586,
	st.w	[r0 + (12)], r2	#, tmp586
	mov.w	r2, 16	# tmp587,
	st.w	[r0 + (8)], r2	#, tmp587
	mov.w	r2, 35	# tmp588,
	st.w	[r0 + (4)], r2	#, tmp588
	st.w	[r0], r1	#, ufo_position_X.164_33
	call	clear_bitmap_test		#
# spaceinvaders.c:2388: 					draw_bitmap_with_clear_background(ufo_position_X, 35, 24, 8, ufo_explosion);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.165_34, ufo_position_X
	mov.w	r0, sp	# tmp589,
	mov.w	r2, ufo_explosion	# tmp590,
	st.w	[r0 + (16)], r2	#, tmp590
	mov.w	r2, 8	# tmp591,
	st.w	[r0 + (12)], r2	#, tmp591
	mov.w	r2, 24	# tmp592,
	st.w	[r0 + (8)], r2	#, tmp592
	mov.w	r2, 35	# tmp593,
	st.w	[r0 + (4)], r2	#, tmp593
	st.w	[r0], r1	#, ufo_position_X.165_34
	call	draw_bitmap_with_clear_background		#
	j	.L389		#
.L388:
# spaceinvaders.c:2391: 				else if(timer_for_ufo_death == 600)
	ld.w	r1, [timer_for_ufo_death]	# timer_for_ufo_death.166_35, timer_for_ufo_death
# spaceinvaders.c:2391: 				else if(timer_for_ufo_death == 600)
	mov.w	r0, 600	# tmp594,
	cmp.w	r1, r0	# timer_for_ufo_death.166_35, tmp594
	jnz	.L390		#
# spaceinvaders.c:2393: 					clear_bitmap_test(ufo_position_X, 35, 24, 8);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.167_36, ufo_position_X
	mov.w	r0, sp	# tmp595,
	mov.w	r2, 8	# tmp596,
	st.w	[r0 + (12)], r2	#, tmp596
	mov.w	r2, 24	# tmp597,
	st.w	[r0 + (8)], r2	#, tmp597
	mov.w	r2, 35	# tmp598,
	st.w	[r0 + (4)], r2	#, tmp598
	st.w	[r0], r1	#, ufo_position_X.167_36
	call	clear_bitmap_test		#
# spaceinvaders.c:2394: 					sprintf(str, "%d", ufo_score);
	ld.w	r1, [ufo_score]	# ufo_score.168_37, ufo_score
	mov.w	r0, sp	# tmp599,
	st.w	[r0 + (8)], r1	#, ufo_score.168_37
	mov.w	r1, .LC4	# tmp600,
	st.w	[r0 + (4)], r1	#, tmp600
	mov.w	r1, str	# tmp601,
	st.w	[r0], r1	#, tmp601
	call	sprintf		#
# spaceinvaders.c:2395: 					draw(ufo_position_X, 35, PURPLE, str);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.169_38, ufo_position_X
	mov.w	r0, sp	# tmp602,
	mov.w	r2, str	# tmp603,
	st.w	[r0 + (12)], r2	#, tmp603
	mov.w	r2, 5	# tmp604,
	st.w	[r0 + (8)], r2	#, tmp604
	mov.w	r2, 35	# tmp605,
	st.w	[r0 + (4)], r2	#, tmp605
	st.w	[r0], r1	#, ufo_position_X.169_38
	call	draw		#
	j	.L389		#
.L390:
# spaceinvaders.c:2397: 				else if(timer_for_ufo_death <= 0)
	ld.w	r1, [timer_for_ufo_death]	# timer_for_ufo_death.170_39, timer_for_ufo_death
# spaceinvaders.c:2397: 				else if(timer_for_ufo_death <= 0)
	xor.w	r0, r0	# tmp606
	cmp.w	r1, r0	# timer_for_ufo_death.170_39, tmp606
	jgs	.L389		#
# spaceinvaders.c:2399: 					ufo_status = DEAD;
	xor.w	r0, r0	# tmp607
	st.w	[ufo_status], r0	# ufo_status, tmp607
# spaceinvaders.c:2400: 					clear_bitmap_test(ufo_position_X, 35, 24, 8);
	ld.w	r1, [ufo_position_X]	# ufo_position_X.171_40, ufo_position_X
	mov.w	r0, sp	# tmp608,
	mov.w	r2, 8	# tmp609,
	st.w	[r0 + (12)], r2	#, tmp609
	mov.w	r2, 24	# tmp610,
	st.w	[r0 + (8)], r2	#, tmp610
	mov.w	r2, 35	# tmp611,
	st.w	[r0 + (4)], r2	#, tmp611
	st.w	[r0], r1	#, ufo_position_X.171_40
	call	clear_bitmap_test		#
# spaceinvaders.c:2401: 					ufo_position_X = 0;
	xor.w	r0, r0	# tmp612
	st.w	[ufo_position_X], r0	# ufo_position_X, tmp612
# spaceinvaders.c:2402: 					score += ufo_score;
	ld.w	r0, [score]	# score.172_41, score
	ld.w	r1, [ufo_score]	# ufo_score.173_42, ufo_score
	add.w	r0, r1 #222	# _43, ufo_score.173_42
	st.w	[score], r0	# score, _43
# spaceinvaders.c:2403: 					check_and_draw_current_score();
	call	check_and_draw_current_score		#
.L389:
# spaceinvaders.c:2405: 				timer_for_ufo_death -= 2;
	ld.w	r0, [timer_for_ufo_death]	# timer_for_ufo_death.174_44, timer_for_ufo_death
	add.w	r0, -2 #111	# _45,
	st.w	[timer_for_ufo_death], r0	# timer_for_ufo_death, _45
.L385:
# spaceinvaders.c:2411: 			if(player_bullet_status == EXPLODING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.175_46, player_bullet_status
# spaceinvaders.c:2411: 			if(player_bullet_status == EXPLODING)
	mov.w	r0, 1	# tmp613,
	cmp.w	r1, r0	# player_bullet_status.175_46, tmp613
	jnz	.L391		#
# spaceinvaders.c:2413: 				if(timer_for_player_bullet_destroy == 150)
	ld.w	r1, [timer_for_player_bullet_destroy]	# timer_for_player_bullet_destroy.176_47, timer_for_player_bullet_destroy
# spaceinvaders.c:2413: 				if(timer_for_player_bullet_destroy == 150)
	mov.w	r0, 150	# tmp614,
	cmp.w	r1, r0	# timer_for_player_bullet_destroy.176_47, tmp614
	jnz	.L392		#
# spaceinvaders.c:2415: 					player_bullet_def -> addr = 0;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.177_48, player_bullet_def
# spaceinvaders.c:2415: 					player_bullet_def -> addr = 0;
	xor.w	r1, r1	# tmp615
	st.s	[r0], r1	# player_bullet_def.177_48->addr, tmp615
# spaceinvaders.c:2417: 						player_bullet_def->x - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.178_49, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _50, player_bullet_def.178_49->x
	zex.s	r0, r0	# _51, _50
# spaceinvaders.c:2416: 					draw_bitmap_with_clear_background(
	mov.w	r1, r0	# _52, _51
	add.w	r1, -3 #111	# _52,
# spaceinvaders.c:2418: 						player_bullet_def->y - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.179_53, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _54, player_bullet_def.179_53->y
	zex.s	r0, r0	# _55, _54
# spaceinvaders.c:2416: 					draw_bitmap_with_clear_background(
	mov.w	r2, r0	# _56, _55
	add.w	r2, -3 #111	# _56,
	mov.w	r0, sp	# tmp616,
	mov.w	r3, player_bullet_explosion	# tmp617,
	st.w	[r0 + (16)], r3	#, tmp617
	mov.w	r3, 8	# tmp618,
	st.w	[r0 + (12)], r3	#, tmp618
	mov.w	r3, 8	# tmp619,
	st.w	[r0 + (8)], r3	#, tmp619
	st.w	[r0 + (4)], r2	#, _56
	st.w	[r0], r1	#, _52
	call	draw_bitmap_with_clear_background		#
	j	.L393		#
.L392:
# spaceinvaders.c:2423: 				else if(timer_for_player_bullet_destroy <= 0)
	ld.w	r1, [timer_for_player_bullet_destroy]	# timer_for_player_bullet_destroy.180_57, timer_for_player_bullet_destroy
# spaceinvaders.c:2423: 				else if(timer_for_player_bullet_destroy <= 0)
	xor.w	r0, r0	# tmp620
	cmp.w	r1, r0	# timer_for_player_bullet_destroy.180_57, tmp620
	jgs	.L393		#
# spaceinvaders.c:2425: 					player_bullet_status = READY;
	xor.w	r0, r0	# tmp621
	st.w	[player_bullet_status], r0	# player_bullet_status, tmp621
# spaceinvaders.c:2427: 						player_bullet_def->x - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.181_58, player_bullet_def
	ld.s	r0, [r0 + (2)]	# _59, player_bullet_def.181_58->x
	zex.s	r0, r0	# _60, _59
# spaceinvaders.c:2426: 					clear_bitmap_with_specific_shape(
	mov.w	r1, r0	# _61, _60
	add.w	r1, -3 #111	# _61,
# spaceinvaders.c:2428: 						player_bullet_def->y - 3, 
	ld.w	r0, [player_bullet_def]	# player_bullet_def.182_62, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _63, player_bullet_def.182_62->y
	zex.s	r0, r0	# _64, _63
# spaceinvaders.c:2426: 					clear_bitmap_with_specific_shape(
	mov.w	r2, r0	# _65, _64
	add.w	r2, -3 #111	# _65,
	mov.w	r0, sp	# tmp622,
	mov.w	r3, player_bullet_explosion	# tmp623,
	st.w	[r0 + (16)], r3	#, tmp623
	mov.w	r3, 8	# tmp624,
	st.w	[r0 + (12)], r3	#, tmp624
	mov.w	r3, 8	# tmp625,
	st.w	[r0 + (8)], r3	#, tmp625
	st.w	[r0 + (4)], r2	#, _65
	st.w	[r0], r1	#, _61
	call	clear_bitmap_with_specific_shape		#
.L393:
# spaceinvaders.c:2433: 				timer_for_player_bullet_destroy -= 2;
	ld.w	r0, [timer_for_player_bullet_destroy]	# timer_for_player_bullet_destroy.183_66, timer_for_player_bullet_destroy
	add.w	r0, -2 #111	# _67,
	st.w	[timer_for_player_bullet_destroy], r0	# timer_for_player_bullet_destroy, _67
.L391:
# spaceinvaders.c:2436: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.184_68, player_bullet_status
# spaceinvaders.c:2436: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp626,
	cmp.w	r1, r0	# player_bullet_status.184_68, tmp626
	jnz	.L394		#
# spaceinvaders.c:2438: 				for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp627
	st.w	[r13 + (-52)], r0	# i, tmp627
# spaceinvaders.c:2438: 				for(int i = 0; i < 5; i++)
	j	.L395		#
.L397:
# spaceinvaders.c:2440: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-52)]	# tmp628, i
	mov.w	r0, r1	# tmp629, tmp628
	mov.w	r2, 3	# tmp631,
	shl.w	r0, r2	# tmp630, tmp631
	add.w	r0, r1 #222	# tmp629, tmp628
	mov.w	r1, 2	# tmp633,
	shl.w	r0, r1	# tmp632, tmp633
	mov.w	r1, alien_bullet+20	# tmp635,
	add.w	r0, r1 #222	# tmp634, tmp635
	ld.w	r1, [r0]	# _69, alien_bullet[i_345].status
# spaceinvaders.c:2440: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	xor.w	r0, r0	# tmp636
	cmp.w	r1, r0	# _69, tmp636
	jses	.L396		#
# spaceinvaders.c:2440: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-52)]	# tmp637, i
	mov.w	r0, r1	# tmp638, tmp637
	mov.w	r2, 3	# tmp640,
	shl.w	r0, r2	# tmp639, tmp640
	add.w	r0, r1 #222	# tmp638, tmp637
	mov.w	r1, 2	# tmp642,
	shl.w	r0, r1	# tmp641, tmp642
	mov.w	r1, alien_bullet+8	# tmp644,
	add.w	r0, r1 #222	# tmp643, tmp644
	ld.w	r1, [r0]	# _70, alien_bullet[i_345].spawn_y
# spaceinvaders.c:2440: 					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	mov.w	r0, 212	# tmp645,
	cmp.w	r1, r0	# _70, tmp645
	jgs	.L396		#
# spaceinvaders.c:2441: 						check_player_bullet_collision_with_alien_bullet(i);
	mov.w	r1, sp	# tmp646,
	ld.w	r0, [r13 + (-52)]	# tmp647, i
	st.w	[r1], r0	#, tmp647
	call	check_player_bullet_collision_with_alien_bullet		#
.L396:
# spaceinvaders.c:2438: 				for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-52)]	# tmp649, i
	add.w	r0, 1 #111	# tmp648,
	st.w	[r13 + (-52)], r0	# i, tmp648
.L395:
# spaceinvaders.c:2438: 				for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-52)]	# tmp650, i
	mov.w	r0, 4	# tmp651,
	cmp.w	r1, r0	# tmp650, tmp651
	jses	.L397		#
.L394:
# spaceinvaders.c:2444: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.185_71, player_bullet_status
# spaceinvaders.c:2444: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp652,
	cmp.w	r1, r0	# player_bullet_status.185_71, tmp652
	jnz	.L398		#
# spaceinvaders.c:2446: 				check_player_bullet_collision_with_alien();
	call	check_player_bullet_collision_with_alien		#
.L398:
# spaceinvaders.c:2448: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.186_72, player_bullet_status
# spaceinvaders.c:2448: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp653,
	cmp.w	r1, r0	# player_bullet_status.186_72, tmp653
	jnz	.L399		#
# spaceinvaders.c:2450: 				check_player_bullet_collision_with_base();
	call	check_player_bullet_collision_with_base		#
.L399:
# spaceinvaders.c:2452: 			if(player_bullet_status == MOVING)
	ld.w	r1, [player_bullet_status]	# player_bullet_status.187_73, player_bullet_status
# spaceinvaders.c:2452: 			if(player_bullet_status == MOVING)
	mov.w	r0, 2	# tmp654,
	cmp.w	r1, r0	# player_bullet_status.187_73, tmp654
	jnz	.L400		#
# spaceinvaders.c:2454: 				if(player_bullet_def -> y <= 30)
	ld.w	r0, [player_bullet_def]	# player_bullet_def.188_74, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _75, player_bullet_def.188_74->y
# spaceinvaders.c:2454: 				if(player_bullet_def -> y <= 30)
	zex.s	r1, r0	# tmp655, _75
	mov.w	r0, 30	# tmp656,
	cmp.w	r1, r0	# tmp655, tmp656
	jg	.L401		#
# spaceinvaders.c:2456: 					set_player_bullet_to_explode();
	call	set_player_bullet_to_explode		#
	j	.L400		#
.L401:
# spaceinvaders.c:2460: 					player_bullet_def->y -= 1;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.189_76, player_bullet_def
	ld.s	r1, [r0 + (4)]	# _77, player_bullet_def.189_76->y
	ld.w	r0, [player_bullet_def]	# player_bullet_def.190_78, player_bullet_def
	add.w	r1, -1 #111	# tmp657,
	st.s	[r0 + (4)], r1	# player_bullet_def.190_78->y, _79
# spaceinvaders.c:2461: 					change_sprite_color(player_bullet_def->y, 8, 4, player_bullet);
	ld.w	r0, [player_bullet_def]	# player_bullet_def.191_80, player_bullet_def
	ld.s	r0, [r0 + (4)]	# _81, player_bullet_def.191_80->y
# spaceinvaders.c:2461: 					change_sprite_color(player_bullet_def->y, 8, 4, player_bullet);
	zex.s	r1, r0	# _82, _81
	mov.w	r0, sp	# tmp658,
	mov.w	r2, player_bullet	# tmp659,
	st.w	[r0 + (12)], r2	#, tmp659
	mov.w	r2, 4	# tmp660,
	st.w	[r0 + (8)], r2	#, tmp660
	mov.w	r2, 8	# tmp661,
	st.w	[r0 + (4)], r2	#, tmp661
	st.w	[r0], r1	#, _82
	call	change_sprite_color		#
# spaceinvaders.c:2462: 					copy_player_bullet_def();
	call	copy_player_bullet_def		#
.L400:
# spaceinvaders.c:2468: 			for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp662
	st.w	[r13 + (-56)], r0	# i, tmp662
# spaceinvaders.c:2468: 			for(int i = 0; i < 5; i++)
	j	.L402		#
.L410:
# spaceinvaders.c:2470: 				if(alien_bullet[i].status == MOVING)
	ld.w	r1, [r13 + (-56)]	# tmp663, i
	mov.w	r0, r1	# tmp664, tmp663
	mov.w	r2, 3	# tmp666,
	shl.w	r0, r2	# tmp665, tmp666
	add.w	r0, r1 #222	# tmp664, tmp663
	mov.w	r1, 2	# tmp668,
	shl.w	r0, r1	# tmp667, tmp668
	mov.w	r1, alien_bullet+20	# tmp670,
	add.w	r0, r1 #222	# tmp669, tmp670
	ld.w	r1, [r0]	# _83, alien_bullet[i_346].status
# spaceinvaders.c:2470: 				if(alien_bullet[i].status == MOVING)
	mov.w	r0, 2	# tmp671,
	cmp.w	r1, r0	# _83, tmp671
	jnz	.L403		#
# spaceinvaders.c:2472: 					if(alien_bullet[i].timer_for_move <= 0)
	ld.w	r1, [r13 + (-56)]	# tmp672, i
	mov.w	r0, r1	# tmp673, tmp672
	mov.w	r2, 3	# tmp675,
	shl.w	r0, r2	# tmp674, tmp675
	add.w	r0, r1 #222	# tmp673, tmp672
	mov.w	r1, 2	# tmp677,
	shl.w	r0, r1	# tmp676, tmp677
	mov.w	r1, alien_bullet+24	# tmp679,
	add.w	r0, r1 #222	# tmp678, tmp679
	ld.w	r1, [r0]	# _84, alien_bullet[i_346].timer_for_move
# spaceinvaders.c:2472: 					if(alien_bullet[i].timer_for_move <= 0)
	xor.w	r0, r0	# tmp680
	cmp.w	r1, r0	# _84, tmp680
	jgs	.L404		#
# spaceinvaders.c:2474: 						clear_current_alien_bullet_sprite(i);
	mov.w	r1, sp	# tmp681,
	ld.w	r0, [r13 + (-56)]	# tmp682, i
	st.w	[r1], r0	#, tmp682
	call	clear_current_alien_bullet_sprite		#
# spaceinvaders.c:2475: 						alien_bullet[i].y += 5;
	ld.w	r1, [r13 + (-56)]	# tmp683, i
	mov.w	r0, r1	# tmp684, tmp683
	mov.w	r2, 3	# tmp686,
	shl.w	r0, r2	# tmp685, tmp686
	add.w	r0, r1 #222	# tmp684, tmp683
	mov.w	r1, 2	# tmp688,
	shl.w	r0, r1	# tmp687, tmp688
	mov.w	r1, alien_bullet+4	# tmp690,
	add.w	r0, r1 #222	# tmp689, tmp690
	ld.w	r0, [r0]	# _85, alien_bullet[i_346].y
	mov.w	r2, r0	# _86, _85
	add.w	r2, 5 #111	# _86,
	ld.w	r1, [r13 + (-56)]	# tmp691, i
	mov.w	r0, r1	# tmp692, tmp691
	mov.w	r3, 3	# tmp694,
	shl.w	r0, r3	# tmp693, tmp694
	add.w	r0, r1 #222	# tmp692, tmp691
	mov.w	r1, 2	# tmp696,
	shl.w	r0, r1	# tmp695, tmp696
	mov.w	r1, alien_bullet+4	# tmp698,
	add.w	r0, r1 #222	# tmp697, tmp698
	st.w	[r0], r2	# alien_bullet[i_346].y, _86
# spaceinvaders.c:2476: 						check_alien_bullet_collision_with_environment(i);
	mov.w	r1, sp	# tmp699,
	ld.w	r0, [r13 + (-56)]	# tmp700, i
	st.w	[r1], r0	#, tmp700
	call	check_alien_bullet_collision_with_environment		#
# spaceinvaders.c:2477: 						if(alien_bullet[i].status == MOVING)
	ld.w	r1, [r13 + (-56)]	# tmp701, i
	mov.w	r0, r1	# tmp702, tmp701
	mov.w	r2, 3	# tmp704,
	shl.w	r0, r2	# tmp703, tmp704
	add.w	r0, r1 #222	# tmp702, tmp701
	mov.w	r1, 2	# tmp706,
	shl.w	r0, r1	# tmp705, tmp706
	mov.w	r1, alien_bullet+20	# tmp708,
	add.w	r0, r1 #222	# tmp707, tmp708
	ld.w	r1, [r0]	# _87, alien_bullet[i_346].status
# spaceinvaders.c:2477: 						if(alien_bullet[i].status == MOVING)
	mov.w	r0, 2	# tmp709,
	cmp.w	r1, r0	# _87, tmp709
	jnz	.L405		#
# spaceinvaders.c:2478: 							draw_alien_bullet_sprite(i);
	mov.w	r1, sp	# tmp710,
	ld.w	r0, [r13 + (-56)]	# tmp711, i
	st.w	[r1], r0	#, tmp711
	call	draw_alien_bullet_sprite		#
.L405:
# spaceinvaders.c:2479: 						alien_bullet[i].timer_for_move = 64;
	ld.w	r1, [r13 + (-56)]	# tmp712, i
	mov.w	r0, r1	# tmp713, tmp712
	mov.w	r2, 3	# tmp715,
	shl.w	r0, r2	# tmp714, tmp715
	add.w	r0, r1 #222	# tmp713, tmp712
	mov.w	r1, 2	# tmp717,
	shl.w	r0, r1	# tmp716, tmp717
	mov.w	r1, alien_bullet+24	# tmp719,
	add.w	r0, r1 #222	# tmp718, tmp719
	mov.w	r1, 64	# tmp720,
	st.w	[r0], r1	# alien_bullet[i_346].timer_for_move, tmp720
.L404:
# spaceinvaders.c:2481: 					alien_bullet[i].timer_for_move -= 2;
	ld.w	r1, [r13 + (-56)]	# tmp721, i
	mov.w	r0, r1	# tmp722, tmp721
	mov.w	r2, 3	# tmp724,
	shl.w	r0, r2	# tmp723, tmp724
	add.w	r0, r1 #222	# tmp722, tmp721
	mov.w	r1, 2	# tmp726,
	shl.w	r0, r1	# tmp725, tmp726
	mov.w	r1, alien_bullet+24	# tmp728,
	add.w	r0, r1 #222	# tmp727, tmp728
	ld.w	r0, [r0]	# _88, alien_bullet[i_346].timer_for_move
	mov.w	r2, r0	# _89, _88
	add.w	r2, -2 #111	# _89,
	ld.w	r1, [r13 + (-56)]	# tmp729, i
	mov.w	r0, r1	# tmp730, tmp729
	mov.w	r3, 3	# tmp732,
	shl.w	r0, r3	# tmp731, tmp732
	add.w	r0, r1 #222	# tmp730, tmp729
	mov.w	r1, 2	# tmp734,
	shl.w	r0, r1	# tmp733, tmp734
	mov.w	r1, alien_bullet+24	# tmp736,
	add.w	r0, r1 #222	# tmp735, tmp736
	st.w	[r0], r2	# alien_bullet[i_346].timer_for_move, _89
	j	.L406		#
.L403:
# spaceinvaders.c:2483: 				else if(alien_bullet[i].status == EXPLODING)
	ld.w	r1, [r13 + (-56)]	# tmp737, i
	mov.w	r0, r1	# tmp738, tmp737
	mov.w	r2, 3	# tmp740,
	shl.w	r0, r2	# tmp739, tmp740
	add.w	r0, r1 #222	# tmp738, tmp737
	mov.w	r1, 2	# tmp742,
	shl.w	r0, r1	# tmp741, tmp742
	mov.w	r1, alien_bullet+20	# tmp744,
	add.w	r0, r1 #222	# tmp743, tmp744
	ld.w	r1, [r0]	# _90, alien_bullet[i_346].status
# spaceinvaders.c:2483: 				else if(alien_bullet[i].status == EXPLODING)
	mov.w	r0, 1	# tmp745,
	cmp.w	r1, r0	# _90, tmp745
	jnz	.L406		#
# spaceinvaders.c:2485: 					if(alien_bullet[i].timer_for_destroy == 150)
	ld.w	r1, [r13 + (-56)]	# tmp746, i
	mov.w	r0, r1	# tmp747, tmp746
	mov.w	r2, 3	# tmp749,
	shl.w	r0, r2	# tmp748, tmp749
	add.w	r0, r1 #222	# tmp747, tmp746
	mov.w	r1, 2	# tmp751,
	shl.w	r0, r1	# tmp750, tmp751
	mov.w	r1, alien_bullet+32	# tmp753,
	add.w	r0, r1 #222	# tmp752, tmp753
	ld.w	r1, [r0]	# _91, alien_bullet[i_346].timer_for_destroy
# spaceinvaders.c:2485: 					if(alien_bullet[i].timer_for_destroy == 150)
	mov.w	r0, 150	# tmp754,
	cmp.w	r1, r0	# _91, tmp754
	jnz	.L407		#
# spaceinvaders.c:2488: 							alien_bullet[i].x-2, 
	ld.w	r1, [r13 + (-56)]	# tmp755, i
	mov.w	r0, r1	# tmp756, tmp755
	mov.w	r2, 3	# tmp758,
	shl.w	r0, r2	# tmp757, tmp758
	add.w	r0, r1 #222	# tmp756, tmp755
	mov.w	r1, 2	# tmp760,
	shl.w	r0, r1	# tmp759, tmp760
	mov.w	r1, alien_bullet	# tmp762,
	add.w	r0, r1 #222	# tmp761, tmp762
	ld.w	r0, [r0]	# _92, alien_bullet[i_346].x
# spaceinvaders.c:2487: 						draw_bitmap_with_clear_background(
	mov.w	r2, r0	# _93, _92
	add.w	r2, -2 #111	# _93,
	ld.w	r1, [r13 + (-56)]	# tmp763, i
	mov.w	r0, r1	# tmp764, tmp763
	mov.w	r3, 3	# tmp766,
	shl.w	r0, r3	# tmp765, tmp766
	add.w	r0, r1 #222	# tmp764, tmp763
	mov.w	r1, 2	# tmp768,
	shl.w	r0, r1	# tmp767, tmp768
	mov.w	r1, alien_bullet+4	# tmp770,
	add.w	r0, r1 #222	# tmp769, tmp770
	ld.w	r1, [r0]	# _94, alien_bullet[i_346].y
	mov.w	r0, sp	# tmp771,
	mov.w	r3, alien_bullet_explosion	# tmp772,
	st.w	[r0 + (16)], r3	#, tmp772
	mov.w	r3, 8	# tmp773,
	st.w	[r0 + (12)], r3	#, tmp773
	mov.w	r3, 8	# tmp774,
	st.w	[r0 + (8)], r3	#, tmp774
	st.w	[r0 + (4)], r1	#, _94
	st.w	[r0], r2	#, _93
	call	draw_bitmap_with_clear_background		#
	j	.L408		#
.L407:
# spaceinvaders.c:2494: 					else if(alien_bullet[i].timer_for_destroy <= 0)
	ld.w	r1, [r13 + (-56)]	# tmp775, i
	mov.w	r0, r1	# tmp776, tmp775
	mov.w	r2, 3	# tmp778,
	shl.w	r0, r2	# tmp777, tmp778
	add.w	r0, r1 #222	# tmp776, tmp775
	mov.w	r1, 2	# tmp780,
	shl.w	r0, r1	# tmp779, tmp780
	mov.w	r1, alien_bullet+32	# tmp782,
	add.w	r0, r1 #222	# tmp781, tmp782
	ld.w	r1, [r0]	# _95, alien_bullet[i_346].timer_for_destroy
# spaceinvaders.c:2494: 					else if(alien_bullet[i].timer_for_destroy <= 0)
	xor.w	r0, r0	# tmp783
	cmp.w	r1, r0	# _95, tmp783
	jgs	.L408		#
# spaceinvaders.c:2497: 							alien_bullet[i].x-2, 
	ld.w	r1, [r13 + (-56)]	# tmp784, i
	mov.w	r0, r1	# tmp785, tmp784
	mov.w	r2, 3	# tmp787,
	shl.w	r0, r2	# tmp786, tmp787
	add.w	r0, r1 #222	# tmp785, tmp784
	mov.w	r1, 2	# tmp789,
	shl.w	r0, r1	# tmp788, tmp789
	mov.w	r1, alien_bullet	# tmp791,
	add.w	r0, r1 #222	# tmp790, tmp791
	ld.w	r0, [r0]	# _96, alien_bullet[i_346].x
# spaceinvaders.c:2496: 						clear_bitmap_with_specific_shape(
	mov.w	r2, r0	# _97, _96
	add.w	r2, -2 #111	# _97,
	ld.w	r1, [r13 + (-56)]	# tmp792, i
	mov.w	r0, r1	# tmp793, tmp792
	mov.w	r3, 3	# tmp795,
	shl.w	r0, r3	# tmp794, tmp795
	add.w	r0, r1 #222	# tmp793, tmp792
	mov.w	r1, 2	# tmp797,
	shl.w	r0, r1	# tmp796, tmp797
	mov.w	r1, alien_bullet+4	# tmp799,
	add.w	r0, r1 #222	# tmp798, tmp799
	ld.w	r1, [r0]	# _98, alien_bullet[i_346].y
	mov.w	r0, sp	# tmp800,
	mov.w	r3, alien_bullet_explosion	# tmp801,
	st.w	[r0 + (16)], r3	#, tmp801
	mov.w	r3, 8	# tmp802,
	st.w	[r0 + (12)], r3	#, tmp802
	mov.w	r3, 8	# tmp803,
	st.w	[r0 + (8)], r3	#, tmp803
	st.w	[r0 + (4)], r1	#, _98
	st.w	[r0], r2	#, _97
	call	clear_bitmap_with_specific_shape		#
# spaceinvaders.c:2502: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	ld.w	r1, [r13 + (-56)]	# tmp804, i
	mov.w	r0, r1	# tmp805, tmp804
	mov.w	r2, 3	# tmp807,
	shl.w	r0, r2	# tmp806, tmp807
	add.w	r0, r1 #222	# tmp805, tmp804
	mov.w	r1, 2	# tmp809,
	shl.w	r0, r1	# tmp808, tmp809
	mov.w	r1, alien_bullet	# tmp811,
	add.w	r0, r1 #222	# tmp810, tmp811
	ld.w	r0, [r0]	# _99, alien_bullet[i_346].x
# spaceinvaders.c:2502: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	mov.w	r1, r0	# _100, _99
	add.w	r1, -2 #111	# _100,
# spaceinvaders.c:2502: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	ld.w	r0, [lives]	# lives.192_101, lives
	add.w	r0, 1 #111	# _102,
	mov.w	r2, 4	# tmp812,
	shl.w	r0, r2	# _103, tmp812
# spaceinvaders.c:2502: 						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
	cmp.w	r1, r0	# _100, _103
	jgs	.L409		#
# spaceinvaders.c:2503: 							draw_lives();
	call	draw_lives		#
.L409:
# spaceinvaders.c:2505: 						alien_bullet[i].sprite = 0;
	ld.w	r1, [r13 + (-56)]	# tmp813, i
	mov.w	r0, r1	# tmp814, tmp813
	mov.w	r2, 3	# tmp816,
	shl.w	r0, r2	# tmp815, tmp816
	add.w	r0, r1 #222	# tmp814, tmp813
	mov.w	r1, 2	# tmp818,
	shl.w	r0, r1	# tmp817, tmp818
	mov.w	r1, alien_bullet+16	# tmp820,
	add.w	r0, r1 #222	# tmp819, tmp820
	xor.w	r1, r1	# tmp821
	st.w	[r0], r1	# alien_bullet[i_346].sprite, tmp821
# spaceinvaders.c:2506: 						alien_bullet[i].status = READY;
	ld.w	r1, [r13 + (-56)]	# tmp822, i
	mov.w	r0, r1	# tmp823, tmp822
	mov.w	r2, 3	# tmp825,
	shl.w	r0, r2	# tmp824, tmp825
	add.w	r0, r1 #222	# tmp823, tmp822
	mov.w	r1, 2	# tmp827,
	shl.w	r0, r1	# tmp826, tmp827
	mov.w	r1, alien_bullet+20	# tmp829,
	add.w	r0, r1 #222	# tmp828, tmp829
	xor.w	r1, r1	# tmp830
	st.w	[r0], r1	# alien_bullet[i_346].status, tmp830
.L408:
# spaceinvaders.c:2508: 					alien_bullet[i].timer_for_destroy -= 2;
	ld.w	r1, [r13 + (-56)]	# tmp831, i
	mov.w	r0, r1	# tmp832, tmp831
	mov.w	r2, 3	# tmp834,
	shl.w	r0, r2	# tmp833, tmp834
	add.w	r0, r1 #222	# tmp832, tmp831
	mov.w	r1, 2	# tmp836,
	shl.w	r0, r1	# tmp835, tmp836
	mov.w	r1, alien_bullet+32	# tmp838,
	add.w	r0, r1 #222	# tmp837, tmp838
	ld.w	r0, [r0]	# _104, alien_bullet[i_346].timer_for_destroy
	mov.w	r2, r0	# _105, _104
	add.w	r2, -2 #111	# _105,
	ld.w	r1, [r13 + (-56)]	# tmp839, i
	mov.w	r0, r1	# tmp840, tmp839
	mov.w	r3, 3	# tmp842,
	shl.w	r0, r3	# tmp841, tmp842
	add.w	r0, r1 #222	# tmp840, tmp839
	mov.w	r1, 2	# tmp844,
	shl.w	r0, r1	# tmp843, tmp844
	mov.w	r1, alien_bullet+32	# tmp846,
	add.w	r0, r1 #222	# tmp845, tmp846
	st.w	[r0], r2	# alien_bullet[i_346].timer_for_destroy, _105
.L406:
# spaceinvaders.c:2468: 			for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-56)]	# tmp848, i
	add.w	r0, 1 #111	# tmp847,
	st.w	[r13 + (-56)], r0	# i, tmp847
.L402:
# spaceinvaders.c:2468: 			for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-56)]	# tmp849, i
	mov.w	r0, 4	# tmp850,
	cmp.w	r1, r0	# tmp849, tmp850
	jses	.L410		#
# spaceinvaders.c:2514: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	ld.w	r1, [player_alive]	# player_alive.193_106, player_alive
# spaceinvaders.c:2514: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	mov.w	r0, 3	# tmp851,
	cmp.w	r1, r0	# player_alive.193_106, tmp851
	jnz	.L411		#
# spaceinvaders.c:2514: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	ld.w	r1, [player_spawn_current_time]	# player_spawn_current_time.194_107, player_spawn_current_time
	ld.w	r0, [player_spawn_timer]	# player_spawn_timer.195_108, player_spawn_timer
# spaceinvaders.c:2514: 			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
	cmp.w	r1, r0	# player_spawn_current_time.194_107, player_spawn_timer.195_108
	jnz	.L411		#
# spaceinvaders.c:2515: 				spawn_player();
	call	spawn_player		#
	j	.L412		#
.L411:
# spaceinvaders.c:2517: 				player_spawn_current_time+=2;
	ld.w	r0, [player_spawn_current_time]	# player_spawn_current_time.196_109, player_spawn_current_time
	add.w	r0, 2 #111	# _110,
	st.w	[player_spawn_current_time], r0	# player_spawn_current_time, _110
.L412:
# spaceinvaders.c:2519: 			if(player_alive == 2 || player_alive == 3)
	ld.w	r1, [player_alive]	# player_alive.197_111, player_alive
# spaceinvaders.c:2519: 			if(player_alive == 2 || player_alive == 3)
	mov.w	r0, 2	# tmp852,
	cmp.w	r1, r0	# player_alive.197_111, tmp852
	jz	.L413		#
# spaceinvaders.c:2519: 			if(player_alive == 2 || player_alive == 3)
	ld.w	r1, [player_alive]	# player_alive.198_112, player_alive
# spaceinvaders.c:2519: 			if(player_alive == 2 || player_alive == 3)
	mov.w	r0, 3	# tmp853,
	cmp.w	r1, r0	# player_alive.198_112, tmp853
	jnz	.L414		#
.L413:
# spaceinvaders.c:2521: 				if(number_of_aliens == 0)
	ld.w	r1, [number_of_aliens]	# number_of_aliens.199_113, number_of_aliens
# spaceinvaders.c:2521: 				if(number_of_aliens == 0)
	xor.w	r0, r0	# tmp854
	cmp.w	r1, r0	# number_of_aliens.199_113, tmp854
	jnz	.L415		#
# spaceinvaders.c:2523: 					delay_millis(1000);
	mov.w	r1, sp	# tmp855,
	mov.w	r0, 1000	# tmp856,
	st.w	[r1], r0	#, tmp856
	call	delay_millis		#
# spaceinvaders.c:2524: 					change_current_wave();
	call	change_current_wave		#
# spaceinvaders.c:2525: 					cls(0);
	mov.w	r1, sp	# tmp857,
	xor.w	r0, r0	# tmp858
	st.w	[r1], r0	#, tmp858
	call	cls		#
# spaceinvaders.c:2526: 					return 0;
	xor.w	r0, r0	# _354
	j	.L416		#
.L415:
# spaceinvaders.c:2529: 				if(death_timer >= 600)
	ld.w	r1, [death_timer]	# death_timer.200_114, death_timer
# spaceinvaders.c:2529: 				if(death_timer >= 600)
	mov.w	r0, 599	# tmp859,
	cmp.w	r1, r0	# death_timer.200_114, tmp859
	jses	.L417		#
# spaceinvaders.c:2531: 					destroy_alien();
	call	destroy_alien		#
	j	.L418		#
.L417:
# spaceinvaders.c:2533: 				else if(death_timer == 0)
	ld.w	r1, [death_timer]	# death_timer.201_115, death_timer
# spaceinvaders.c:2533: 				else if(death_timer == 0)
	xor.w	r0, r0	# tmp860
	cmp.w	r1, r0	# death_timer.201_115, tmp860
	jnz	.L419		#
# spaceinvaders.c:2542: 					if(current_step == movement_step)
	ld.w	r1, [current_step]	# current_step.202_116, current_step
	ld.w	r0, [movement_step]	# movement_step.203_117, movement_step
# spaceinvaders.c:2542: 					if(current_step == movement_step)
	cmp.w	r1, r0	# current_step.202_116, movement_step.203_117
	jnz	.L420		#
# spaceinvaders.c:2549: 						if(number_of_aliens == 1 
	ld.w	r1, [number_of_aliens]	# number_of_aliens.204_118, number_of_aliens
# spaceinvaders.c:2549: 						if(number_of_aliens == 1 
	mov.w	r0, 1	# tmp861,
	cmp.w	r1, r0	# number_of_aliens.204_118, tmp861
	jnz	.L421		#
# spaceinvaders.c:2550: 						&& direction == 9
	ld.b	r0, [direction]	# direction.205_119, direction
# spaceinvaders.c:2550: 						&& direction == 9
	sex.b	r1, r0	# tmp862, direction.205_119
	mov.w	r0, 9	# tmp863,
	cmp.w	r1, r0	# tmp862, tmp863
	jnz	.L421		#
# spaceinvaders.c:2551: 						&& distance != 1)
	ld.w	r1, [distance]	# distance.206_120, distance
# spaceinvaders.c:2551: 						&& distance != 1)
	mov.w	r0, 1	# tmp864,
	cmp.w	r1, r0	# distance.206_120, tmp864
	jz	.L421		#
# spaceinvaders.c:2553: 							distance = 1;
	mov.w	r0, 1	# tmp865,
	st.w	[distance], r0	# distance, tmp865
	j	.L422		#
.L421:
# spaceinvaders.c:2555: 						else if(number_of_aliens == 1 
	ld.w	r1, [number_of_aliens]	# number_of_aliens.207_121, number_of_aliens
# spaceinvaders.c:2555: 						else if(number_of_aliens == 1 
	mov.w	r0, 1	# tmp866,
	cmp.w	r1, r0	# number_of_aliens.207_121, tmp866
	jnz	.L423		#
# spaceinvaders.c:2556: 						&& direction == 3  
	ld.b	r0, [direction]	# direction.208_122, direction
# spaceinvaders.c:2556: 						&& direction == 3  
	sex.b	r1, r0	# tmp867, direction.208_122
	mov.w	r0, 3	# tmp868,
	cmp.w	r1, r0	# tmp867, tmp868
	jnz	.L423		#
# spaceinvaders.c:2557: 						&& distance != 2 
	ld.w	r1, [distance]	# distance.209_123, distance
# spaceinvaders.c:2557: 						&& distance != 2 
	mov.w	r0, 2	# tmp869,
	cmp.w	r1, r0	# distance.209_123, tmp869
	jz	.L423		#
# spaceinvaders.c:2558: 						&& leftmost_alien_X() % 2 == 0)
	call	leftmost_alien_X		#
# spaceinvaders.c:2558: 						&& leftmost_alien_X() % 2 == 0)
	mov.w	r1, 1	# tmp871,
	and.w	r0, r1	# tmp870, tmp871
# spaceinvaders.c:2558: 						&& leftmost_alien_X() % 2 == 0)
	zex.s	r1, r0	# tmp872, _125
	xor.w	r0, r0	# tmp873
	cmp.w	r1, r0	# tmp872, tmp873
	jnz	.L423		#
# spaceinvaders.c:2560: 							distance = 2;
	mov.w	r0, 2	# tmp874,
	st.w	[distance], r0	# distance, tmp874
	j	.L422		#
.L423:
# spaceinvaders.c:2562: 						else if(number_of_aliens < 32 
	ld.w	r1, [number_of_aliens]	# number_of_aliens.210_126, number_of_aliens
# spaceinvaders.c:2562: 						else if(number_of_aliens < 32 
	mov.w	r0, 31	# tmp875,
	cmp.w	r1, r0	# number_of_aliens.210_126, tmp875
	jgs	.L422		#
# spaceinvaders.c:2563: 						&& distance != 2 
	ld.w	r1, [distance]	# distance.211_127, distance
# spaceinvaders.c:2563: 						&& distance != 2 
	mov.w	r0, 2	# tmp876,
	cmp.w	r1, r0	# distance.211_127, tmp876
	jz	.L422		#
# spaceinvaders.c:2564: 						&& leftmost_alien_X() % 2 == 0)
	call	leftmost_alien_X		#
# spaceinvaders.c:2564: 						&& leftmost_alien_X() % 2 == 0)
	mov.w	r1, 1	# tmp878,
	and.w	r0, r1	# tmp877, tmp878
# spaceinvaders.c:2564: 						&& leftmost_alien_X() % 2 == 0)
	zex.s	r1, r0	# tmp879, _129
	xor.w	r0, r0	# tmp880
	cmp.w	r1, r0	# tmp879, tmp880
	jnz	.L422		#
# spaceinvaders.c:2566: 							distance = 2;
	mov.w	r0, 2	# tmp881,
	st.w	[distance], r0	# distance, tmp881
.L422:
# spaceinvaders.c:2569: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp882, sprite_version
	xor.w	r0, r0	# tmp883
	cmp.w	r1, r0	# tmp882, tmp883
	jnz	.L424		#
# spaceinvaders.c:2570: 							alien_sprite = octopus0;
	mov.w	r0, octopus0	# tmp884,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp884
	j	.L425		#
.L424:
# spaceinvaders.c:2572: 							alien_sprite = octopus1;
	mov.w	r0, octopus1	# tmp885,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp885
.L425:
# spaceinvaders.c:2574: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp886
	st.w	[r13 + (-60)], r0	# i, tmp886
# spaceinvaders.c:2574: 						for(int i = 0; i < 11; i++) {
	j	.L426		#
.L435:
# spaceinvaders.c:2576: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.212_130, direction
# spaceinvaders.c:2576: 							if(direction == 3)
	sex.b	r1, r0	# tmp887, direction.212_130
	mov.w	r0, 3	# tmp888,
	cmp.w	r1, r0	# tmp887, tmp888
	jnz	.L427		#
# spaceinvaders.c:2577: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp890,
	ld.w	r1, [r13 + (-60)]	# tmp891, i
	sub.w	r0, r1 #222	# tmp889, tmp891
	st.w	[r13 + (-12)], r0	# alien_index, tmp889
	j	.L428		#
.L427:
# spaceinvaders.c:2579: 								alien_index = i;
	ld.w	r0, [r13 + (-60)]	# tmp892, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp892
.L428:
# spaceinvaders.c:2581: 							if(row_5_octopus[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp893, alien_index
	mov.w	r1, 3	# tmp895,
	shl.w	r0, r1	# tmp894, tmp895
	mov.w	r1, row_5_octopus+6	# tmp897,
	add.w	r0, r1 #222	# tmp896, tmp897
	ld.s	r0, [r0]	# _131, row_5_octopus[alien_index_328].alive
# spaceinvaders.c:2581: 							if(row_5_octopus[alien_index].alive == 0)
	zex.s	r1, r0	# tmp898, _131
	xor.w	r0, r0	# tmp899
	cmp.w	r1, r0	# tmp898, tmp899
	jz	.L522		#
# spaceinvaders.c:2587: 								switch(direction)
	ld.b	r0, [direction]	# direction.213_132, direction
	sex.b	r0, r0	# _133, direction.213_132
	mov.w	r1, 3	# tmp900,
	cmp.w	r0, r1	# _133, tmp900
	jz	.L431		#
	mov.w	r1, 9	# tmp901,
	cmp.w	r0, r1	# _133, tmp901
	jz	.L432		#
	j	.L517		#
.L431:
# spaceinvaders.c:2590: 										row_5_octopus[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp902, alien_index
	mov.w	r1, 3	# tmp904,
	shl.w	r0, r1	# tmp903, tmp904
	mov.w	r1, row_5_octopus+2	# tmp906,
	add.w	r0, r1 #222	# tmp905, tmp906
	ld.s	r0, [r0]	# _134, row_5_octopus[alien_index_328].x
	ld.w	r1, [distance]	# distance.214_135, distance
	add.w	r0, r1 #222	# tmp907, tmp908
	mov.w	r1, r0	# _137, tmp907
	ld.w	r0, [r13 + (-12)]	# tmp909, alien_index
	mov.w	r2, 3	# tmp911,
	shl.w	r0, r2	# tmp910, tmp911
	mov.w	r2, row_5_octopus+2	# tmp913,
	add.w	r0, r2 #222	# tmp912, tmp913
	st.s	[r0], r1	# row_5_octopus[alien_index_328].x, _137
# spaceinvaders.c:2591: 										break;
	j	.L434		#
.L432:
# spaceinvaders.c:2593: 										row_5_octopus[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp914, alien_index
	mov.w	r1, 3	# tmp916,
	shl.w	r0, r1	# tmp915, tmp916
	mov.w	r1, row_5_octopus+2	# tmp918,
	add.w	r0, r1 #222	# tmp917, tmp918
	ld.s	r0, [r0]	# _138, row_5_octopus[alien_index_328].x
	ld.w	r1, [distance]	# distance.215_139, distance
	sub.w	r0, r1 #222	# tmp919, tmp920
	mov.w	r1, r0	# _141, tmp919
	ld.w	r0, [r13 + (-12)]	# tmp921, alien_index
	mov.w	r2, 3	# tmp923,
	shl.w	r0, r2	# tmp922, tmp923
	mov.w	r2, row_5_octopus+2	# tmp925,
	add.w	r0, r2 #222	# tmp924, tmp925
	st.s	[r0], r1	# row_5_octopus[alien_index_328].x, _141
# spaceinvaders.c:2594: 										break;
	j	.L434		#
.L517:
# spaceinvaders.c:2596: 										row_5_octopus[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp926, alien_index
	mov.w	r1, 3	# tmp928,
	shl.w	r0, r1	# tmp927, tmp928
	mov.w	r1, row_5_octopus+4	# tmp930,
	add.w	r0, r1 #222	# tmp929, tmp930
	ld.s	r0, [r0]	# _142, row_5_octopus[alien_index_328].y
	add.w	r0, 8 #111	# tmp931,
	mov.w	r1, r0	# _143, tmp931
	ld.w	r0, [r13 + (-12)]	# tmp932, alien_index
	mov.w	r2, 3	# tmp934,
	shl.w	r0, r2	# tmp933, tmp934
	mov.w	r2, row_5_octopus+4	# tmp936,
	add.w	r0, r2 #222	# tmp935, tmp936
	st.s	[r0], r1	# row_5_octopus[alien_index_328].y, _143
.L434:
# spaceinvaders.c:2599: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp937, alien_index
	mov.w	r1, 3	# tmp939,
	shl.w	r0, r1	# tmp938, tmp939
	mov.w	r1, row_5_octopus+2	# tmp941,
	add.w	r0, r1 #222	# tmp940, tmp941
	ld.s	r0, [r0]	# _144, row_5_octopus[alien_index_328].x
# spaceinvaders.c:2599: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r1, r0	# _145, _144
# spaceinvaders.c:2599: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp942, alien_index
	mov.w	r2, 3	# tmp944,
	shl.w	r0, r2	# tmp943, tmp944
	mov.w	r2, row_5_octopus+4	# tmp946,
	add.w	r0, r2 #222	# tmp945, tmp946
	ld.s	r0, [r0]	# _146, row_5_octopus[alien_index_328].y
# spaceinvaders.c:2599: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r2, r0	# _147, _146
	ld.b	r0, [direction]	# direction.216_148, direction
	sex.b	r3, r0	# _149, direction.216_148
	ld.w	r4, [distance]	# distance.217_150, distance
	mov.w	r0, sp	# tmp947,
	st.w	[r0 + (24)], r4	#, distance.217_150
	st.w	[r0 + (20)], r3	#, _149
	ld.w	r3, [r13 + (-8)]	# tmp948, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp948
	mov.w	r3, 8	# tmp949,
	st.w	[r0 + (12)], r3	#, tmp949
	mov.w	r3, 12	# tmp950,
	st.w	[r0 + (8)], r3	#, tmp950
	st.w	[r0 + (4)], r2	#, _147
	st.w	[r0], r1	#, _145
	call	move_bitmap_test		#
	mov.w	r2, r0	# _151,
# spaceinvaders.c:2599: 								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp951, alien_index
	mov.w	r1, 3	# tmp953,
	shl.w	r0, r1	# tmp952, tmp953
	mov.w	r1, row_5_octopus	# tmp955,
	add.w	r0, r1 #222	# tmp954, tmp955
	st.s	[r0], r2	# row_5_octopus[alien_index_328].addr, _151
	j	.L430		#
.L522:
# spaceinvaders.c:2583: 								continue;
	nop	
.L430:
# spaceinvaders.c:2574: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-60)]	# tmp957, i
	add.w	r0, 1 #111	# tmp956,
	st.w	[r13 + (-60)], r0	# i, tmp956
.L426:
# spaceinvaders.c:2574: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-60)]	# tmp958, i
	mov.w	r0, 10	# tmp959,
	cmp.w	r1, r0	# tmp958, tmp959
	jses	.L435		#
	j	.L436		#
.L420:
# spaceinvaders.c:2603: 					else if(current_step == movement_step * 2)
	ld.w	r0, [movement_step]	# movement_step.218_152, movement_step
	add.w	r0, r0 #222	# tmp960, movement_step.218_152
	mov.w	r1, r0	# _153, tmp960
# spaceinvaders.c:2603: 					else if(current_step == movement_step * 2)
	ld.w	r0, [current_step]	# current_step.219_154, current_step
# spaceinvaders.c:2603: 					else if(current_step == movement_step * 2)
	cmp.w	r1, r0	# _153, current_step.219_154
	jnz	.L437		#
# spaceinvaders.c:2605: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp961, sprite_version
	xor.w	r0, r0	# tmp962
	cmp.w	r1, r0	# tmp961, tmp962
	jnz	.L438		#
# spaceinvaders.c:2606: 							alien_sprite = octopus0;
	mov.w	r0, octopus0	# tmp963,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp963
	j	.L439		#
.L438:
# spaceinvaders.c:2608: 							alien_sprite = octopus1;
	mov.w	r0, octopus1	# tmp964,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp964
.L439:
# spaceinvaders.c:2610: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp965
	st.w	[r13 + (-64)], r0	# i, tmp965
# spaceinvaders.c:2610: 						for(int i = 0; i < 11; i++) {
	j	.L440		#
.L449:
# spaceinvaders.c:2612: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.220_155, direction
# spaceinvaders.c:2612: 							if(direction == 3)
	sex.b	r1, r0	# tmp966, direction.220_155
	mov.w	r0, 3	# tmp967,
	cmp.w	r1, r0	# tmp966, tmp967
	jnz	.L441		#
# spaceinvaders.c:2613: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp969,
	ld.w	r1, [r13 + (-64)]	# tmp970, i
	sub.w	r0, r1 #222	# tmp968, tmp970
	st.w	[r13 + (-12)], r0	# alien_index, tmp968
	j	.L442		#
.L441:
# spaceinvaders.c:2615: 								alien_index = i;
	ld.w	r0, [r13 + (-64)]	# tmp971, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp971
.L442:
# spaceinvaders.c:2617: 							if(row_4_octopus[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp972, alien_index
	mov.w	r1, 3	# tmp974,
	shl.w	r0, r1	# tmp973, tmp974
	mov.w	r1, row_4_octopus+6	# tmp976,
	add.w	r0, r1 #222	# tmp975, tmp976
	ld.s	r0, [r0]	# _156, row_4_octopus[alien_index_329].alive
# spaceinvaders.c:2617: 							if(row_4_octopus[alien_index].alive == 0)
	zex.s	r1, r0	# tmp977, _156
	xor.w	r0, r0	# tmp978
	cmp.w	r1, r0	# tmp977, tmp978
	jz	.L523		#
# spaceinvaders.c:2623: 								switch(direction)
	ld.b	r0, [direction]	# direction.221_157, direction
	sex.b	r0, r0	# _158, direction.221_157
	mov.w	r1, 3	# tmp979,
	cmp.w	r0, r1	# _158, tmp979
	jz	.L445		#
	mov.w	r1, 9	# tmp980,
	cmp.w	r0, r1	# _158, tmp980
	jz	.L446		#
	j	.L518		#
.L445:
# spaceinvaders.c:2626: 										row_4_octopus[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp981, alien_index
	mov.w	r1, 3	# tmp983,
	shl.w	r0, r1	# tmp982, tmp983
	mov.w	r1, row_4_octopus+2	# tmp985,
	add.w	r0, r1 #222	# tmp984, tmp985
	ld.s	r0, [r0]	# _159, row_4_octopus[alien_index_329].x
	ld.w	r1, [distance]	# distance.222_160, distance
	add.w	r0, r1 #222	# tmp986, tmp987
	mov.w	r1, r0	# _162, tmp986
	ld.w	r0, [r13 + (-12)]	# tmp988, alien_index
	mov.w	r2, 3	# tmp990,
	shl.w	r0, r2	# tmp989, tmp990
	mov.w	r2, row_4_octopus+2	# tmp992,
	add.w	r0, r2 #222	# tmp991, tmp992
	st.s	[r0], r1	# row_4_octopus[alien_index_329].x, _162
# spaceinvaders.c:2627: 										break;
	j	.L448		#
.L446:
# spaceinvaders.c:2629: 										row_4_octopus[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp993, alien_index
	mov.w	r1, 3	# tmp995,
	shl.w	r0, r1	# tmp994, tmp995
	mov.w	r1, row_4_octopus+2	# tmp997,
	add.w	r0, r1 #222	# tmp996, tmp997
	ld.s	r0, [r0]	# _163, row_4_octopus[alien_index_329].x
	ld.w	r1, [distance]	# distance.223_164, distance
	sub.w	r0, r1 #222	# tmp998, tmp999
	mov.w	r1, r0	# _166, tmp998
	ld.w	r0, [r13 + (-12)]	# tmp1000, alien_index
	mov.w	r2, 3	# tmp1002,
	shl.w	r0, r2	# tmp1001, tmp1002
	mov.w	r2, row_4_octopus+2	# tmp1004,
	add.w	r0, r2 #222	# tmp1003, tmp1004
	st.s	[r0], r1	# row_4_octopus[alien_index_329].x, _166
# spaceinvaders.c:2630: 										break;
	j	.L448		#
.L518:
# spaceinvaders.c:2632: 										row_4_octopus[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1005, alien_index
	mov.w	r1, 3	# tmp1007,
	shl.w	r0, r1	# tmp1006, tmp1007
	mov.w	r1, row_4_octopus+4	# tmp1009,
	add.w	r0, r1 #222	# tmp1008, tmp1009
	ld.s	r0, [r0]	# _167, row_4_octopus[alien_index_329].y
	add.w	r0, 8 #111	# tmp1010,
	mov.w	r1, r0	# _168, tmp1010
	ld.w	r0, [r13 + (-12)]	# tmp1011, alien_index
	mov.w	r2, 3	# tmp1013,
	shl.w	r0, r2	# tmp1012, tmp1013
	mov.w	r2, row_4_octopus+4	# tmp1015,
	add.w	r0, r2 #222	# tmp1014, tmp1015
	st.s	[r0], r1	# row_4_octopus[alien_index_329].y, _168
.L448:
# spaceinvaders.c:2635: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1016, alien_index
	mov.w	r1, 3	# tmp1018,
	shl.w	r0, r1	# tmp1017, tmp1018
	mov.w	r1, row_4_octopus+2	# tmp1020,
	add.w	r0, r1 #222	# tmp1019, tmp1020
	ld.s	r0, [r0]	# _169, row_4_octopus[alien_index_329].x
# spaceinvaders.c:2635: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r1, r0	# _170, _169
# spaceinvaders.c:2635: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1021, alien_index
	mov.w	r2, 3	# tmp1023,
	shl.w	r0, r2	# tmp1022, tmp1023
	mov.w	r2, row_4_octopus+4	# tmp1025,
	add.w	r0, r2 #222	# tmp1024, tmp1025
	ld.s	r0, [r0]	# _171, row_4_octopus[alien_index_329].y
# spaceinvaders.c:2635: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r2, r0	# _172, _171
	ld.b	r0, [direction]	# direction.224_173, direction
	sex.b	r3, r0	# _174, direction.224_173
	ld.w	r4, [distance]	# distance.225_175, distance
	mov.w	r0, sp	# tmp1026,
	st.w	[r0 + (24)], r4	#, distance.225_175
	st.w	[r0 + (20)], r3	#, _174
	ld.w	r3, [r13 + (-8)]	# tmp1027, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1027
	mov.w	r3, 8	# tmp1028,
	st.w	[r0 + (12)], r3	#, tmp1028
	mov.w	r3, 12	# tmp1029,
	st.w	[r0 + (8)], r3	#, tmp1029
	st.w	[r0 + (4)], r2	#, _172
	st.w	[r0], r1	#, _170
	call	move_bitmap_test		#
	mov.w	r2, r0	# _176,
# spaceinvaders.c:2635: 								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1030, alien_index
	mov.w	r1, 3	# tmp1032,
	shl.w	r0, r1	# tmp1031, tmp1032
	mov.w	r1, row_4_octopus	# tmp1034,
	add.w	r0, r1 #222	# tmp1033, tmp1034
	st.s	[r0], r2	# row_4_octopus[alien_index_329].addr, _176
	j	.L444		#
.L523:
# spaceinvaders.c:2619: 								continue;
	nop	
.L444:
# spaceinvaders.c:2610: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-64)]	# tmp1036, i
	add.w	r0, 1 #111	# tmp1035,
	st.w	[r13 + (-64)], r0	# i, tmp1035
.L440:
# spaceinvaders.c:2610: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-64)]	# tmp1037, i
	mov.w	r0, 10	# tmp1038,
	cmp.w	r1, r0	# tmp1037, tmp1038
	jses	.L449		#
	j	.L436		#
.L437:
# spaceinvaders.c:2639: 					else if(current_step == movement_step * 3)
	ld.w	r1, [movement_step]	# movement_step.226_177, movement_step
	mov.w	r0, r1	# tmp1039, movement_step.226_177
	add.w	r0, r0 #222	# tmp1040, tmp1039
	mov.w	r2, r0	# _178, tmp1039
	add.w	r2, r1 #222	# _178, movement_step.226_177
# spaceinvaders.c:2639: 					else if(current_step == movement_step * 3)
	ld.w	r0, [current_step]	# current_step.227_179, current_step
# spaceinvaders.c:2639: 					else if(current_step == movement_step * 3)
	cmp.w	r2, r0	# _178, current_step.227_179
	jnz	.L450		#
# spaceinvaders.c:2641: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp1041, sprite_version
	xor.w	r0, r0	# tmp1042
	cmp.w	r1, r0	# tmp1041, tmp1042
	jnz	.L451		#
# spaceinvaders.c:2642: 							alien_sprite = crab0;
	mov.w	r0, crab0	# tmp1043,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1043
	j	.L452		#
.L451:
# spaceinvaders.c:2644: 							alien_sprite = crab1;
	mov.w	r0, crab1	# tmp1044,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1044
.L452:
# spaceinvaders.c:2646: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp1045
	st.w	[r13 + (-68)], r0	# i, tmp1045
# spaceinvaders.c:2646: 						for(int i = 0; i < 11; i++) {
	j	.L453		#
.L462:
# spaceinvaders.c:2648: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.228_180, direction
# spaceinvaders.c:2648: 							if(direction == 3)
	sex.b	r1, r0	# tmp1046, direction.228_180
	mov.w	r0, 3	# tmp1047,
	cmp.w	r1, r0	# tmp1046, tmp1047
	jnz	.L454		#
# spaceinvaders.c:2649: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp1049,
	ld.w	r1, [r13 + (-68)]	# tmp1050, i
	sub.w	r0, r1 #222	# tmp1048, tmp1050
	st.w	[r13 + (-12)], r0	# alien_index, tmp1048
	j	.L455		#
.L454:
# spaceinvaders.c:2651: 								alien_index = i;
	ld.w	r0, [r13 + (-68)]	# tmp1051, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp1051
.L455:
# spaceinvaders.c:2653: 							if(row_3_crab[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp1052, alien_index
	mov.w	r1, 3	# tmp1054,
	shl.w	r0, r1	# tmp1053, tmp1054
	mov.w	r1, row_3_crab+6	# tmp1056,
	add.w	r0, r1 #222	# tmp1055, tmp1056
	ld.s	r0, [r0]	# _181, row_3_crab[alien_index_330].alive
# spaceinvaders.c:2653: 							if(row_3_crab[alien_index].alive == 0)
	zex.s	r1, r0	# tmp1057, _181
	xor.w	r0, r0	# tmp1058
	cmp.w	r1, r0	# tmp1057, tmp1058
	jz	.L524		#
# spaceinvaders.c:2659: 								switch(direction)
	ld.b	r0, [direction]	# direction.229_182, direction
	sex.b	r0, r0	# _183, direction.229_182
	mov.w	r1, 3	# tmp1059,
	cmp.w	r0, r1	# _183, tmp1059
	jz	.L458		#
	mov.w	r1, 9	# tmp1060,
	cmp.w	r0, r1	# _183, tmp1060
	jz	.L459		#
	j	.L519		#
.L458:
# spaceinvaders.c:2662: 										row_3_crab[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp1061, alien_index
	mov.w	r1, 3	# tmp1063,
	shl.w	r0, r1	# tmp1062, tmp1063
	mov.w	r1, row_3_crab+2	# tmp1065,
	add.w	r0, r1 #222	# tmp1064, tmp1065
	ld.s	r0, [r0]	# _184, row_3_crab[alien_index_330].x
	ld.w	r1, [distance]	# distance.230_185, distance
	add.w	r0, r1 #222	# tmp1066, tmp1067
	mov.w	r1, r0	# _187, tmp1066
	ld.w	r0, [r13 + (-12)]	# tmp1068, alien_index
	mov.w	r2, 3	# tmp1070,
	shl.w	r0, r2	# tmp1069, tmp1070
	mov.w	r2, row_3_crab+2	# tmp1072,
	add.w	r0, r2 #222	# tmp1071, tmp1072
	st.s	[r0], r1	# row_3_crab[alien_index_330].x, _187
# spaceinvaders.c:2663: 										break;
	j	.L461		#
.L459:
# spaceinvaders.c:2665: 										row_3_crab[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp1073, alien_index
	mov.w	r1, 3	# tmp1075,
	shl.w	r0, r1	# tmp1074, tmp1075
	mov.w	r1, row_3_crab+2	# tmp1077,
	add.w	r0, r1 #222	# tmp1076, tmp1077
	ld.s	r0, [r0]	# _188, row_3_crab[alien_index_330].x
	ld.w	r1, [distance]	# distance.231_189, distance
	sub.w	r0, r1 #222	# tmp1078, tmp1079
	mov.w	r1, r0	# _191, tmp1078
	ld.w	r0, [r13 + (-12)]	# tmp1080, alien_index
	mov.w	r2, 3	# tmp1082,
	shl.w	r0, r2	# tmp1081, tmp1082
	mov.w	r2, row_3_crab+2	# tmp1084,
	add.w	r0, r2 #222	# tmp1083, tmp1084
	st.s	[r0], r1	# row_3_crab[alien_index_330].x, _191
# spaceinvaders.c:2666: 										break;
	j	.L461		#
.L519:
# spaceinvaders.c:2668: 										row_3_crab[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1085, alien_index
	mov.w	r1, 3	# tmp1087,
	shl.w	r0, r1	# tmp1086, tmp1087
	mov.w	r1, row_3_crab+4	# tmp1089,
	add.w	r0, r1 #222	# tmp1088, tmp1089
	ld.s	r0, [r0]	# _192, row_3_crab[alien_index_330].y
	add.w	r0, 8 #111	# tmp1090,
	mov.w	r1, r0	# _193, tmp1090
	ld.w	r0, [r13 + (-12)]	# tmp1091, alien_index
	mov.w	r2, 3	# tmp1093,
	shl.w	r0, r2	# tmp1092, tmp1093
	mov.w	r2, row_3_crab+4	# tmp1095,
	add.w	r0, r2 #222	# tmp1094, tmp1095
	st.s	[r0], r1	# row_3_crab[alien_index_330].y, _193
.L461:
# spaceinvaders.c:2671: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1096, alien_index
	mov.w	r1, 3	# tmp1098,
	shl.w	r0, r1	# tmp1097, tmp1098
	mov.w	r1, row_3_crab+2	# tmp1100,
	add.w	r0, r1 #222	# tmp1099, tmp1100
	ld.s	r0, [r0]	# _194, row_3_crab[alien_index_330].x
# spaceinvaders.c:2671: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r1, r0	# _195, _194
# spaceinvaders.c:2671: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1101, alien_index
	mov.w	r2, 3	# tmp1103,
	shl.w	r0, r2	# tmp1102, tmp1103
	mov.w	r2, row_3_crab+4	# tmp1105,
	add.w	r0, r2 #222	# tmp1104, tmp1105
	ld.s	r0, [r0]	# _196, row_3_crab[alien_index_330].y
# spaceinvaders.c:2671: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r2, r0	# _197, _196
	ld.b	r0, [direction]	# direction.232_198, direction
	sex.b	r3, r0	# _199, direction.232_198
	ld.w	r4, [distance]	# distance.233_200, distance
	mov.w	r0, sp	# tmp1106,
	st.w	[r0 + (24)], r4	#, distance.233_200
	st.w	[r0 + (20)], r3	#, _199
	ld.w	r3, [r13 + (-8)]	# tmp1107, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1107
	mov.w	r3, 8	# tmp1108,
	st.w	[r0 + (12)], r3	#, tmp1108
	mov.w	r3, 12	# tmp1109,
	st.w	[r0 + (8)], r3	#, tmp1109
	st.w	[r0 + (4)], r2	#, _197
	st.w	[r0], r1	#, _195
	call	move_bitmap_test		#
	mov.w	r2, r0	# _201,
# spaceinvaders.c:2671: 								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1110, alien_index
	mov.w	r1, 3	# tmp1112,
	shl.w	r0, r1	# tmp1111, tmp1112
	mov.w	r1, row_3_crab	# tmp1114,
	add.w	r0, r1 #222	# tmp1113, tmp1114
	st.s	[r0], r2	# row_3_crab[alien_index_330].addr, _201
	j	.L457		#
.L524:
# spaceinvaders.c:2655: 								continue;
	nop	
.L457:
# spaceinvaders.c:2646: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-68)]	# tmp1116, i
	add.w	r0, 1 #111	# tmp1115,
	st.w	[r13 + (-68)], r0	# i, tmp1115
.L453:
# spaceinvaders.c:2646: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-68)]	# tmp1117, i
	mov.w	r0, 10	# tmp1118,
	cmp.w	r1, r0	# tmp1117, tmp1118
	jses	.L462		#
	j	.L436		#
.L450:
# spaceinvaders.c:2675: 					else if(current_step == movement_step * 4)
	ld.w	r1, [movement_step]	# movement_step.234_202, movement_step
	mov.w	r0, 2	# tmp1119,
	shl.w	r1, r0	# _203, tmp1119
# spaceinvaders.c:2675: 					else if(current_step == movement_step * 4)
	ld.w	r0, [current_step]	# current_step.235_204, current_step
# spaceinvaders.c:2675: 					else if(current_step == movement_step * 4)
	cmp.w	r1, r0	# _203, current_step.235_204
	jnz	.L463		#
# spaceinvaders.c:2677: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp1120, sprite_version
	xor.w	r0, r0	# tmp1121
	cmp.w	r1, r0	# tmp1120, tmp1121
	jnz	.L464		#
# spaceinvaders.c:2678: 							alien_sprite = crab0;
	mov.w	r0, crab0	# tmp1122,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1122
	j	.L465		#
.L464:
# spaceinvaders.c:2680: 							alien_sprite = crab1;
	mov.w	r0, crab1	# tmp1123,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1123
.L465:
# spaceinvaders.c:2682: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp1124
	st.w	[r13 + (-72)], r0	# i, tmp1124
# spaceinvaders.c:2682: 						for(int i = 0; i < 11; i++) {
	j	.L466		#
.L475:
# spaceinvaders.c:2684: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.236_205, direction
# spaceinvaders.c:2684: 							if(direction == 3)
	sex.b	r1, r0	# tmp1125, direction.236_205
	mov.w	r0, 3	# tmp1126,
	cmp.w	r1, r0	# tmp1125, tmp1126
	jnz	.L467		#
# spaceinvaders.c:2685: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp1128,
	ld.w	r1, [r13 + (-72)]	# tmp1129, i
	sub.w	r0, r1 #222	# tmp1127, tmp1129
	st.w	[r13 + (-12)], r0	# alien_index, tmp1127
	j	.L468		#
.L467:
# spaceinvaders.c:2687: 								alien_index = i;
	ld.w	r0, [r13 + (-72)]	# tmp1130, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp1130
.L468:
# spaceinvaders.c:2689: 							if(row_2_crab[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp1131, alien_index
	mov.w	r1, 3	# tmp1133,
	shl.w	r0, r1	# tmp1132, tmp1133
	mov.w	r1, row_2_crab+6	# tmp1135,
	add.w	r0, r1 #222	# tmp1134, tmp1135
	ld.s	r0, [r0]	# _206, row_2_crab[alien_index_331].alive
# spaceinvaders.c:2689: 							if(row_2_crab[alien_index].alive == 0)
	zex.s	r1, r0	# tmp1136, _206
	xor.w	r0, r0	# tmp1137
	cmp.w	r1, r0	# tmp1136, tmp1137
	jz	.L525		#
# spaceinvaders.c:2695: 								switch(direction)
	ld.b	r0, [direction]	# direction.237_207, direction
	sex.b	r0, r0	# _208, direction.237_207
	mov.w	r1, 3	# tmp1138,
	cmp.w	r0, r1	# _208, tmp1138
	jz	.L471		#
	mov.w	r1, 9	# tmp1139,
	cmp.w	r0, r1	# _208, tmp1139
	jz	.L472		#
	j	.L520		#
.L471:
# spaceinvaders.c:2698: 										row_2_crab[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp1140, alien_index
	mov.w	r1, 3	# tmp1142,
	shl.w	r0, r1	# tmp1141, tmp1142
	mov.w	r1, row_2_crab+2	# tmp1144,
	add.w	r0, r1 #222	# tmp1143, tmp1144
	ld.s	r0, [r0]	# _209, row_2_crab[alien_index_331].x
	ld.w	r1, [distance]	# distance.238_210, distance
	add.w	r0, r1 #222	# tmp1145, tmp1146
	mov.w	r1, r0	# _212, tmp1145
	ld.w	r0, [r13 + (-12)]	# tmp1147, alien_index
	mov.w	r2, 3	# tmp1149,
	shl.w	r0, r2	# tmp1148, tmp1149
	mov.w	r2, row_2_crab+2	# tmp1151,
	add.w	r0, r2 #222	# tmp1150, tmp1151
	st.s	[r0], r1	# row_2_crab[alien_index_331].x, _212
# spaceinvaders.c:2699: 										break;
	j	.L474		#
.L472:
# spaceinvaders.c:2701: 										row_2_crab[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp1152, alien_index
	mov.w	r1, 3	# tmp1154,
	shl.w	r0, r1	# tmp1153, tmp1154
	mov.w	r1, row_2_crab+2	# tmp1156,
	add.w	r0, r1 #222	# tmp1155, tmp1156
	ld.s	r0, [r0]	# _213, row_2_crab[alien_index_331].x
	ld.w	r1, [distance]	# distance.239_214, distance
	sub.w	r0, r1 #222	# tmp1157, tmp1158
	mov.w	r1, r0	# _216, tmp1157
	ld.w	r0, [r13 + (-12)]	# tmp1159, alien_index
	mov.w	r2, 3	# tmp1161,
	shl.w	r0, r2	# tmp1160, tmp1161
	mov.w	r2, row_2_crab+2	# tmp1163,
	add.w	r0, r2 #222	# tmp1162, tmp1163
	st.s	[r0], r1	# row_2_crab[alien_index_331].x, _216
# spaceinvaders.c:2702: 										break;
	j	.L474		#
.L520:
# spaceinvaders.c:2704: 										row_2_crab[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1164, alien_index
	mov.w	r1, 3	# tmp1166,
	shl.w	r0, r1	# tmp1165, tmp1166
	mov.w	r1, row_2_crab+4	# tmp1168,
	add.w	r0, r1 #222	# tmp1167, tmp1168
	ld.s	r0, [r0]	# _217, row_2_crab[alien_index_331].y
	add.w	r0, 8 #111	# tmp1169,
	mov.w	r1, r0	# _218, tmp1169
	ld.w	r0, [r13 + (-12)]	# tmp1170, alien_index
	mov.w	r2, 3	# tmp1172,
	shl.w	r0, r2	# tmp1171, tmp1172
	mov.w	r2, row_2_crab+4	# tmp1174,
	add.w	r0, r2 #222	# tmp1173, tmp1174
	st.s	[r0], r1	# row_2_crab[alien_index_331].y, _218
.L474:
# spaceinvaders.c:2707: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1175, alien_index
	mov.w	r1, 3	# tmp1177,
	shl.w	r0, r1	# tmp1176, tmp1177
	mov.w	r1, row_2_crab+2	# tmp1179,
	add.w	r0, r1 #222	# tmp1178, tmp1179
	ld.s	r0, [r0]	# _219, row_2_crab[alien_index_331].x
# spaceinvaders.c:2707: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r1, r0	# _220, _219
# spaceinvaders.c:2707: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1180, alien_index
	mov.w	r2, 3	# tmp1182,
	shl.w	r0, r2	# tmp1181, tmp1182
	mov.w	r2, row_2_crab+4	# tmp1184,
	add.w	r0, r2 #222	# tmp1183, tmp1184
	ld.s	r0, [r0]	# _221, row_2_crab[alien_index_331].y
# spaceinvaders.c:2707: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	zex.s	r2, r0	# _222, _221
	ld.b	r0, [direction]	# direction.240_223, direction
	sex.b	r3, r0	# _224, direction.240_223
	ld.w	r4, [distance]	# distance.241_225, distance
	mov.w	r0, sp	# tmp1185,
	st.w	[r0 + (24)], r4	#, distance.241_225
	st.w	[r0 + (20)], r3	#, _224
	ld.w	r3, [r13 + (-8)]	# tmp1186, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1186
	mov.w	r3, 8	# tmp1187,
	st.w	[r0 + (12)], r3	#, tmp1187
	mov.w	r3, 12	# tmp1188,
	st.w	[r0 + (8)], r3	#, tmp1188
	st.w	[r0 + (4)], r2	#, _222
	st.w	[r0], r1	#, _220
	call	move_bitmap_test		#
	mov.w	r2, r0	# _226,
# spaceinvaders.c:2707: 								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1189, alien_index
	mov.w	r1, 3	# tmp1191,
	shl.w	r0, r1	# tmp1190, tmp1191
	mov.w	r1, row_2_crab	# tmp1193,
	add.w	r0, r1 #222	# tmp1192, tmp1193
	st.s	[r0], r2	# row_2_crab[alien_index_331].addr, _226
	j	.L470		#
.L525:
# spaceinvaders.c:2691: 								continue;
	nop	
.L470:
# spaceinvaders.c:2682: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-72)]	# tmp1195, i
	add.w	r0, 1 #111	# tmp1194,
	st.w	[r13 + (-72)], r0	# i, tmp1194
.L466:
# spaceinvaders.c:2682: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-72)]	# tmp1196, i
	mov.w	r0, 10	# tmp1197,
	cmp.w	r1, r0	# tmp1196, tmp1197
	jses	.L475		#
	j	.L436		#
.L463:
# spaceinvaders.c:2712: 					else if(current_step >= movement_step * 5)
	ld.w	r1, [movement_step]	# movement_step.242_227, movement_step
	mov.w	r0, r1	# tmp1198, movement_step.242_227
	mov.w	r2, 2	# tmp1200,
	shl.w	r0, r2	# tmp1199, tmp1200
	mov.w	r2, r0	# _228, tmp1198
	add.w	r2, r1 #222	# _228, movement_step.242_227
# spaceinvaders.c:2712: 					else if(current_step >= movement_step * 5)
	ld.w	r0, [current_step]	# current_step.243_229, current_step
# spaceinvaders.c:2712: 					else if(current_step >= movement_step * 5)
	cmp.w	r2, r0	# _228, current_step.243_229
	jgs	.L436		#
# spaceinvaders.c:2714: 						if(sprite_version == 0)
	ld.w	r1, [r13 + (-4)]	# tmp1201, sprite_version
	xor.w	r0, r0	# tmp1202
	cmp.w	r1, r0	# tmp1201, tmp1202
	jnz	.L476		#
# spaceinvaders.c:2715: 							alien_sprite = squid0;
	mov.w	r0, squid0	# tmp1203,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1203
	j	.L477		#
.L476:
# spaceinvaders.c:2717: 							alien_sprite = squid1;
	mov.w	r0, squid1	# tmp1204,
	st.w	[r13 + (-8)], r0	# alien_sprite, tmp1204
.L477:
# spaceinvaders.c:2719: 						for(int i = 0; i < 11; i++) {
	xor.w	r0, r0	# tmp1205
	st.w	[r13 + (-76)], r0	# i, tmp1205
# spaceinvaders.c:2719: 						for(int i = 0; i < 11; i++) {
	j	.L478		#
.L487:
# spaceinvaders.c:2721: 							if(direction == 3)
	ld.b	r0, [direction]	# direction.244_230, direction
# spaceinvaders.c:2721: 							if(direction == 3)
	sex.b	r1, r0	# tmp1206, direction.244_230
	mov.w	r0, 3	# tmp1207,
	cmp.w	r1, r0	# tmp1206, tmp1207
	jnz	.L479		#
# spaceinvaders.c:2722: 								alien_index = 10-i;
	mov.w	r0, 10	# tmp1209,
	ld.w	r1, [r13 + (-76)]	# tmp1210, i
	sub.w	r0, r1 #222	# tmp1208, tmp1210
	st.w	[r13 + (-12)], r0	# alien_index, tmp1208
	j	.L480		#
.L479:
# spaceinvaders.c:2724: 								alien_index = i;
	ld.w	r0, [r13 + (-76)]	# tmp1211, i
	st.w	[r13 + (-12)], r0	# alien_index, tmp1211
.L480:
# spaceinvaders.c:2726: 							if(row_1_squid[alien_index].alive == 0)
	ld.w	r0, [r13 + (-12)]	# tmp1212, alien_index
	mov.w	r1, 3	# tmp1214,
	shl.w	r0, r1	# tmp1213, tmp1214
	mov.w	r1, row_1_squid+6	# tmp1216,
	add.w	r0, r1 #222	# tmp1215, tmp1216
	ld.s	r0, [r0]	# _231, row_1_squid[alien_index_332].alive
# spaceinvaders.c:2726: 							if(row_1_squid[alien_index].alive == 0)
	zex.s	r1, r0	# tmp1217, _231
	xor.w	r0, r0	# tmp1218
	cmp.w	r1, r0	# tmp1217, tmp1218
	jz	.L526		#
# spaceinvaders.c:2732: 								switch(direction)
	ld.b	r0, [direction]	# direction.245_232, direction
	sex.b	r0, r0	# _233, direction.245_232
	mov.w	r1, 3	# tmp1219,
	cmp.w	r0, r1	# _233, tmp1219
	jz	.L483		#
	mov.w	r1, 9	# tmp1220,
	cmp.w	r0, r1	# _233, tmp1220
	jz	.L484		#
	j	.L521		#
.L483:
# spaceinvaders.c:2735: 										row_1_squid[alien_index].x += distance;
	ld.w	r0, [r13 + (-12)]	# tmp1221, alien_index
	mov.w	r1, 3	# tmp1223,
	shl.w	r0, r1	# tmp1222, tmp1223
	mov.w	r1, row_1_squid+2	# tmp1225,
	add.w	r0, r1 #222	# tmp1224, tmp1225
	ld.s	r0, [r0]	# _234, row_1_squid[alien_index_332].x
	ld.w	r1, [distance]	# distance.246_235, distance
	add.w	r0, r1 #222	# tmp1226, tmp1227
	mov.w	r1, r0	# _237, tmp1226
	ld.w	r0, [r13 + (-12)]	# tmp1228, alien_index
	mov.w	r2, 3	# tmp1230,
	shl.w	r0, r2	# tmp1229, tmp1230
	mov.w	r2, row_1_squid+2	# tmp1232,
	add.w	r0, r2 #222	# tmp1231, tmp1232
	st.s	[r0], r1	# row_1_squid[alien_index_332].x, _237
# spaceinvaders.c:2736: 										break;
	j	.L486		#
.L484:
# spaceinvaders.c:2738: 										row_1_squid[alien_index].x -= distance;
	ld.w	r0, [r13 + (-12)]	# tmp1233, alien_index
	mov.w	r1, 3	# tmp1235,
	shl.w	r0, r1	# tmp1234, tmp1235
	mov.w	r1, row_1_squid+2	# tmp1237,
	add.w	r0, r1 #222	# tmp1236, tmp1237
	ld.s	r0, [r0]	# _238, row_1_squid[alien_index_332].x
	ld.w	r1, [distance]	# distance.247_239, distance
	sub.w	r0, r1 #222	# tmp1238, tmp1239
	mov.w	r1, r0	# _241, tmp1238
	ld.w	r0, [r13 + (-12)]	# tmp1240, alien_index
	mov.w	r2, 3	# tmp1242,
	shl.w	r0, r2	# tmp1241, tmp1242
	mov.w	r2, row_1_squid+2	# tmp1244,
	add.w	r0, r2 #222	# tmp1243, tmp1244
	st.s	[r0], r1	# row_1_squid[alien_index_332].x, _241
# spaceinvaders.c:2739: 										break;
	j	.L486		#
.L521:
# spaceinvaders.c:2741: 										row_1_squid[alien_index].y += 8;
	ld.w	r0, [r13 + (-12)]	# tmp1245, alien_index
	mov.w	r1, 3	# tmp1247,
	shl.w	r0, r1	# tmp1246, tmp1247
	mov.w	r1, row_1_squid+4	# tmp1249,
	add.w	r0, r1 #222	# tmp1248, tmp1249
	ld.s	r0, [r0]	# _242, row_1_squid[alien_index_332].y
	add.w	r0, 8 #111	# tmp1250,
	mov.w	r1, r0	# _243, tmp1250
	ld.w	r0, [r13 + (-12)]	# tmp1251, alien_index
	mov.w	r2, 3	# tmp1253,
	shl.w	r0, r2	# tmp1252, tmp1253
	mov.w	r2, row_1_squid+4	# tmp1255,
	add.w	r0, r2 #222	# tmp1254, tmp1255
	st.s	[r0], r1	# row_1_squid[alien_index_332].y, _243
.L486:
# spaceinvaders.c:2744: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1256, alien_index
	mov.w	r1, 3	# tmp1258,
	shl.w	r0, r1	# tmp1257, tmp1258
	mov.w	r1, row_1_squid+2	# tmp1260,
	add.w	r0, r1 #222	# tmp1259, tmp1260
	ld.s	r0, [r0]	# _244, row_1_squid[alien_index_332].x
# spaceinvaders.c:2744: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	zex.s	r1, r0	# _245, _244
# spaceinvaders.c:2744: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1261, alien_index
	mov.w	r2, 3	# tmp1263,
	shl.w	r0, r2	# tmp1262, tmp1263
	mov.w	r2, row_1_squid+4	# tmp1265,
	add.w	r0, r2 #222	# tmp1264, tmp1265
	ld.s	r0, [r0]	# _246, row_1_squid[alien_index_332].y
# spaceinvaders.c:2744: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	zex.s	r2, r0	# _247, _246
	ld.b	r0, [direction]	# direction.248_248, direction
	sex.b	r3, r0	# _249, direction.248_248
	ld.w	r4, [distance]	# distance.249_250, distance
	mov.w	r0, sp	# tmp1266,
	st.w	[r0 + (24)], r4	#, distance.249_250
	st.w	[r0 + (20)], r3	#, _249
	ld.w	r3, [r13 + (-8)]	# tmp1267, alien_sprite
	st.w	[r0 + (16)], r3	#, tmp1267
	mov.w	r3, 8	# tmp1268,
	st.w	[r0 + (12)], r3	#, tmp1268
	mov.w	r3, 8	# tmp1269,
	st.w	[r0 + (8)], r3	#, tmp1269
	st.w	[r0 + (4)], r2	#, _247
	st.w	[r0], r1	#, _245
	call	move_bitmap_test		#
	mov.w	r2, r0	# _251,
# spaceinvaders.c:2744: 								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);
	ld.w	r0, [r13 + (-12)]	# tmp1270, alien_index
	mov.w	r1, 3	# tmp1272,
	shl.w	r0, r1	# tmp1271, tmp1272
	mov.w	r1, row_1_squid	# tmp1274,
	add.w	r0, r1 #222	# tmp1273, tmp1274
	st.s	[r0], r2	# row_1_squid[alien_index_332].addr, _251
	j	.L482		#
.L526:
# spaceinvaders.c:2728: 								continue;
	nop	
.L482:
# spaceinvaders.c:2719: 						for(int i = 0; i < 11; i++) {
	ld.w	r0, [r13 + (-76)]	# tmp1276, i
	add.w	r0, 1 #111	# tmp1275,
	st.w	[r13 + (-76)], r0	# i, tmp1275
.L478:
# spaceinvaders.c:2719: 						for(int i = 0; i < 11; i++) {
	ld.w	r1, [r13 + (-76)]	# tmp1277, i
	mov.w	r0, 10	# tmp1278,
	cmp.w	r1, r0	# tmp1277, tmp1278
	jses	.L487		#
# spaceinvaders.c:2755: 						sprite_version ^= 1;
	ld.w	r0, [r13 + (-4)]	# tmp1280, sprite_version
	mov.w	r1, 1	# tmp1281,
	xor.w	r0, r1	# tmp1279, tmp1281
	st.w	[r13 + (-4)], r0	# sprite_version, tmp1279
# spaceinvaders.c:2757: 						current_step=0;
	xor.w	r0, r0	# tmp1282
	st.w	[current_step], r0	# current_step, tmp1282
# spaceinvaders.c:2758: 						if(direction == 18) {
	ld.b	r0, [direction]	# direction.250_252, direction
# spaceinvaders.c:2758: 						if(direction == 18) {
	sex.b	r1, r0	# tmp1283, direction.250_252
	mov.w	r0, 18	# tmp1284,
	cmp.w	r1, r0	# tmp1283, tmp1284
	jnz	.L488		#
# spaceinvaders.c:2759: 							direction = 3;
	mov.b	r0, 3	# tmp1285,
	st.b	[direction], r0	# direction, tmp1285
	j	.L436		#
.L488:
# spaceinvaders.c:2760: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	call	leftmost_alien_X		#
# spaceinvaders.c:2760: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	zex.s	r1, r0	# tmp1286, _253
	mov.w	r0, 12	# tmp1287,
	cmp.w	r1, r0	# tmp1286, tmp1287
	jg	.L489		#
# spaceinvaders.c:2760: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	ld.b	r0, [direction]	# direction.251_254, direction
# spaceinvaders.c:2760: 						} else if(leftmost_alien_X() <= 12 && direction != 18) {
	sex.b	r1, r0	# tmp1288, direction.251_254
	mov.w	r0, 18	# tmp1289,
	cmp.w	r1, r0	# tmp1288, tmp1289
	jz	.L489		#
# spaceinvaders.c:2761: 							direction = 18;
	mov.b	r0, 18	# tmp1290,
	st.b	[direction], r0	# direction, tmp1290
	j	.L436		#
.L489:
# spaceinvaders.c:2762: 						} else if(direction == 6) {
	ld.b	r0, [direction]	# direction.252_255, direction
# spaceinvaders.c:2762: 						} else if(direction == 6) {
	sex.b	r1, r0	# tmp1291, direction.252_255
	mov.w	r0, 6	# tmp1292,
	cmp.w	r1, r0	# tmp1291, tmp1292
	jnz	.L490		#
# spaceinvaders.c:2763: 							direction = 9;
	mov.b	r0, 9	# tmp1293,
	st.b	[direction], r0	# direction, tmp1293
	j	.L436		#
.L490:
# spaceinvaders.c:2764: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	call	rightmost_alien_X		#
# spaceinvaders.c:2764: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	zex.s	r1, r0	# tmp1294, _256
	mov.w	r0, 223	# tmp1295,
	cmp.w	r1, r0	# tmp1294, tmp1295
	jse	.L436		#
# spaceinvaders.c:2764: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	ld.b	r0, [direction]	# direction.253_257, direction
# spaceinvaders.c:2764: 						} else if(rightmost_alien_X() >= 224 && direction != 6) {
	sex.b	r1, r0	# tmp1296, direction.253_257
	mov.w	r0, 6	# tmp1297,
	cmp.w	r1, r0	# tmp1296, tmp1297
	jz	.L436		#
# spaceinvaders.c:2765: 							direction = 6;
	mov.b	r0, 6	# tmp1298,
	st.b	[direction], r0	# direction, tmp1298
.L436:
# spaceinvaders.c:2771: 					current_step++;
	ld.w	r0, [current_step]	# current_step.254_258, current_step
	add.w	r0, 1 #111	# _259,
	st.w	[current_step], r0	# current_step, _259
# spaceinvaders.c:2773: 					if(lowest_alien_Y() >= PLAYER_SPAWN_Y)
	call	lowest_alien_Y		#
# spaceinvaders.c:2773: 					if(lowest_alien_Y() >= PLAYER_SPAWN_Y)
	zex.s	r1, r0	# tmp1299, _260
	mov.w	r0, 211	# tmp1300,
	cmp.w	r1, r0	# tmp1299, tmp1300
	jse	.L418		#
# spaceinvaders.c:2775: 						lives = 0;
	xor.w	r0, r0	# tmp1301
	st.w	[lives], r0	# lives, tmp1301
# spaceinvaders.c:2776: 						destroy_player();
	call	destroy_player		#
	j	.L418		#
.L419:
# spaceinvaders.c:2781: 					death_timer+=4;
	ld.w	r0, [death_timer]	# death_timer.255_261, death_timer
	add.w	r0, 4 #111	# _262,
	st.w	[death_timer], r0	# death_timer, _262
.L418:
# spaceinvaders.c:2788: 				if(player_movement_skip_frame == 0)
	ld.w	r1, [player_movement_skip_frame]	# player_movement_skip_frame.256_263, player_movement_skip_frame
# spaceinvaders.c:2788: 				if(player_movement_skip_frame == 0)
	xor.w	r0, r0	# tmp1302
	cmp.w	r1, r0	# player_movement_skip_frame.256_263, tmp1302
	jnz	.L491		#
# spaceinvaders.c:2789: 					player_movement_skip_frame = 3;
	mov.w	r0, 3	# tmp1303,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, tmp1303
	j	.L492		#
.L491:
# spaceinvaders.c:2791: 					player_movement_skip_frame--;
	ld.w	r0, [player_movement_skip_frame]	# player_movement_skip_frame.257_264, player_movement_skip_frame
	add.w	r0, -1 #111	# _265,
	st.w	[player_movement_skip_frame], r0	# player_movement_skip_frame, _265
.L492:
# spaceinvaders.c:2793: 				for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp1304
	st.w	[r13 + (-80)], r0	# i, tmp1304
# spaceinvaders.c:2793: 				for(int i = 0; i < 5; i++)
	j	.L493		#
.L495:
# spaceinvaders.c:2794: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-80)]	# tmp1305, i
	mov.w	r0, r1	# tmp1306, tmp1305
	mov.w	r2, 3	# tmp1308,
	shl.w	r0, r2	# tmp1307, tmp1308
	add.w	r0, r1 #222	# tmp1306, tmp1305
	mov.w	r1, 2	# tmp1310,
	shl.w	r0, r1	# tmp1309, tmp1310
	mov.w	r1, alien_bullet+20	# tmp1312,
	add.w	r0, r1 #222	# tmp1311, tmp1312
	ld.w	r1, [r0]	# _266, alien_bullet[i_352].status
# spaceinvaders.c:2794: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	mov.w	r0, 2	# tmp1313,
	cmp.w	r1, r0	# _266, tmp1313
	jnz	.L494		#
# spaceinvaders.c:2794: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	ld.w	r1, [r13 + (-80)]	# tmp1314, i
	mov.w	r0, r1	# tmp1315, tmp1314
	mov.w	r2, 3	# tmp1317,
	shl.w	r0, r2	# tmp1316, tmp1317
	add.w	r0, r1 #222	# tmp1315, tmp1314
	mov.w	r1, 2	# tmp1319,
	shl.w	r0, r1	# tmp1318, tmp1319
	mov.w	r1, alien_bullet+8	# tmp1321,
	add.w	r0, r1 #222	# tmp1320, tmp1321
	ld.w	r1, [r0]	# _267, alien_bullet[i_352].spawn_y
# spaceinvaders.c:2794: 					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
	mov.w	r0, 212	# tmp1322,
	cmp.w	r1, r0	# _267, tmp1322
	jgs	.L494		#
# spaceinvaders.c:2795: 						check_alien_bullet_collision_with_player(i);
	mov.w	r1, sp	# tmp1323,
	ld.w	r0, [r13 + (-80)]	# tmp1324, i
	st.w	[r1], r0	#, tmp1324
	call	check_alien_bullet_collision_with_player		#
.L494:
# spaceinvaders.c:2793: 				for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-80)]	# tmp1326, i
	add.w	r0, 1 #111	# tmp1325,
	st.w	[r13 + (-80)], r0	# i, tmp1325
.L493:
# spaceinvaders.c:2793: 				for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-80)]	# tmp1327, i
	mov.w	r0, 4	# tmp1328,
	cmp.w	r1, r0	# tmp1327, tmp1328
	jses	.L495		#
# spaceinvaders.c:2798: 				if(timer_for_alien_bullet_spawn <= 0)
	ld.w	r1, [timer_for_alien_bullet_spawn]	# timer_for_alien_bullet_spawn.258_268, timer_for_alien_bullet_spawn
# spaceinvaders.c:2798: 				if(timer_for_alien_bullet_spawn <= 0)
	xor.w	r0, r0	# tmp1329
	cmp.w	r1, r0	# timer_for_alien_bullet_spawn.258_268, tmp1329
	jgs	.L496		#
# spaceinvaders.c:2800: 					for(int i = 0; i < 5; i++)
	xor.w	r0, r0	# tmp1330
	st.w	[r13 + (-84)], r0	# i, tmp1330
# spaceinvaders.c:2800: 					for(int i = 0; i < 5; i++)
	j	.L497		#
.L499:
# spaceinvaders.c:2802: 						if(alien_bullet[i].status == READY)
	ld.w	r1, [r13 + (-84)]	# tmp1331, i
	mov.w	r0, r1	# tmp1332, tmp1331
	mov.w	r2, 3	# tmp1334,
	shl.w	r0, r2	# tmp1333, tmp1334
	add.w	r0, r1 #222	# tmp1332, tmp1331
	mov.w	r1, 2	# tmp1336,
	shl.w	r0, r1	# tmp1335, tmp1336
	mov.w	r1, alien_bullet+20	# tmp1338,
	add.w	r0, r1 #222	# tmp1337, tmp1338
	ld.w	r1, [r0]	# _269, alien_bullet[i_353].status
# spaceinvaders.c:2802: 						if(alien_bullet[i].status == READY)
	xor.w	r0, r0	# tmp1339
	cmp.w	r1, r0	# _269, tmp1339
	jnz	.L498		#
# spaceinvaders.c:2804: 							spawn_alien_bullet(i);
	mov.w	r1, sp	# tmp1340,
	ld.w	r0, [r13 + (-84)]	# tmp1341, i
	st.w	[r1], r0	#, tmp1341
	call	spawn_alien_bullet		#
# spaceinvaders.c:2805: 							timer_for_alien_bullet_spawn = alien_bullet_spawn_time;
	ld.w	r0, [alien_bullet_spawn_time]	# alien_bullet_spawn_time.259_270, alien_bullet_spawn_time
	st.w	[timer_for_alien_bullet_spawn], r0	# timer_for_alien_bullet_spawn, alien_bullet_spawn_time.259_270
# spaceinvaders.c:2806: 							break;
	j	.L496		#
.L498:
# spaceinvaders.c:2800: 					for(int i = 0; i < 5; i++)
	ld.w	r0, [r13 + (-84)]	# tmp1343, i
	add.w	r0, 1 #111	# tmp1342,
	st.w	[r13 + (-84)], r0	# i, tmp1342
.L497:
# spaceinvaders.c:2800: 					for(int i = 0; i < 5; i++)
	ld.w	r1, [r13 + (-84)]	# tmp1344, i
	mov.w	r0, 4	# tmp1345,
	cmp.w	r1, r0	# tmp1344, tmp1345
	jses	.L499		#
.L496:
# spaceinvaders.c:2810: 				timer_for_alien_bullet_spawn -= 2;
	ld.w	r0, [timer_for_alien_bullet_spawn]	# timer_for_alien_bullet_spawn.260_271, timer_for_alien_bullet_spawn
	add.w	r0, -2 #111	# _272,
	st.w	[timer_for_alien_bullet_spawn], r0	# timer_for_alien_bullet_spawn, _272
	j	.L500		#
.L414:
# spaceinvaders.c:2812: 			else if(player_alive == 1)
	ld.w	r1, [player_alive]	# player_alive.261_273, player_alive
# spaceinvaders.c:2812: 			else if(player_alive == 1)
	mov.w	r0, 1	# tmp1346,
	cmp.w	r1, r0	# player_alive.261_273, tmp1346
	jnz	.L501		#
# spaceinvaders.c:2814: 				player_death_timer+=2;
	ld.w	r0, [player_death_timer]	# player_death_timer.262_274, player_death_timer
	add.w	r0, 2 #111	# _275,
	st.w	[player_death_timer], r0	# player_death_timer, _275
# spaceinvaders.c:2815: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	ld.w	r1, [player_death_timer]	# player_death_timer.263_276, player_death_timer
# spaceinvaders.c:2815: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	mov.w	r0, 989	# tmp1347,
	cmp.w	r1, r0	# player_death_timer.263_276, tmp1347
	jgs	.L502		#
# spaceinvaders.c:2815: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	ld.w	r1, [player_death_timer]	# player_death_timer.264_277, player_death_timer
	mov.w	r0, 90	# tmp1348,
	div.w	r1, r0	# _278, tmp1348
mov.w	r1, r14	# _278
# spaceinvaders.c:2815: 				if(player_death_timer < 990 && player_death_timer % 90 == 0)
	xor.w	r0, r0	# tmp1349
	cmp.w	r1, r0	# _278, tmp1349
	jnz	.L502		#
# spaceinvaders.c:2817: 					change_player_explosion_sprite();
	call	change_player_explosion_sprite		#
	j	.L500		#
.L502:
# spaceinvaders.c:2819: 				else if(player_death_timer == 990)
	ld.w	r1, [player_death_timer]	# player_death_timer.265_279, player_death_timer
# spaceinvaders.c:2819: 				else if(player_death_timer == 990)
	mov.w	r0, 990	# tmp1350,
	cmp.w	r1, r0	# player_death_timer.265_279, tmp1350
	jnz	.L504		#
# spaceinvaders.c:2821: 					clear_player_and_redraw_lives();
	call	clear_player_and_redraw_lives		#
# spaceinvaders.c:2822: 					if(lives <= 0)
	ld.w	r1, [lives]	# lives.266_280, lives
# spaceinvaders.c:2822: 					if(lives <= 0)
	xor.w	r0, r0	# tmp1351
	cmp.w	r1, r0	# lives.266_280, tmp1351
	jgs	.L500		#
# spaceinvaders.c:2824: 						player_alive = 0;
	xor.w	r0, r0	# tmp1352
	st.w	[player_alive], r0	# player_alive, tmp1352
	j	.L500		#
.L504:
# spaceinvaders.c:2828: 				else if(player_death_timer == 3000)
	ld.w	r1, [player_death_timer]	# player_death_timer.267_281, player_death_timer
# spaceinvaders.c:2828: 				else if(player_death_timer == 3000)
	mov.w	r0, 3000	# tmp1353,
	cmp.w	r1, r0	# player_death_timer.267_281, tmp1353
	jnz	.L500		#
# spaceinvaders.c:2830: 					player_alive = 0;
	xor.w	r0, r0	# tmp1354
	st.w	[player_alive], r0	# player_alive, tmp1354
	j	.L500		#
.L501:
# spaceinvaders.c:2833: 			else if(player_alive == 0)
	ld.w	r1, [player_alive]	# player_alive.268_282, player_alive
# spaceinvaders.c:2833: 			else if(player_alive == 0)
	xor.w	r0, r0	# tmp1355
	cmp.w	r1, r0	# player_alive.268_282, tmp1355
	jnz	.L500		#
# spaceinvaders.c:2835: 				if(lives > 0)
	ld.w	r1, [lives]	# lives.269_283, lives
# spaceinvaders.c:2835: 				if(lives > 0)
	xor.w	r0, r0	# tmp1356
	cmp.w	r1, r0	# lives.269_283, tmp1356
	jses	.L505		#
# spaceinvaders.c:2836: 					spawn_player();
	call	spawn_player		#
	j	.L500		#
.L505:
# spaceinvaders.c:2839: 					update_high_score_if_lower_than_score();
	call	update_high_score_if_lower_than_score		#
# spaceinvaders.c:2840: 					display_game_over_text();
	call	display_game_over_text		#
# spaceinvaders.c:2841: 					delay_millis(3000);
	mov.w	r1, sp	# tmp1357,
	mov.w	r0, 3000	# tmp1358,
	st.w	[r1], r0	#, tmp1358
	call	delay_millis		#
# spaceinvaders.c:2842: 					cls(0);
	mov.w	r1, sp	# tmp1359,
	xor.w	r0, r0	# tmp1360
	st.w	[r1], r0	#, tmp1360
	call	cls		#
# spaceinvaders.c:2843: 					current_screen = MAIN_MENU_SCREEN;
	xor.w	r0, r0	# tmp1361
	st.w	[current_screen], r0	# current_screen, tmp1361
# spaceinvaders.c:2844: 					return 0;
	xor.w	r0, r0	# _354
	j	.L416		#
.L500:
# spaceinvaders.c:2847: 			if(bonus_life_awarded == FALSE && score >= 1500)
	ld.w	r1, [bonus_life_awarded]	# bonus_life_awarded.270_284, bonus_life_awarded
# spaceinvaders.c:2847: 			if(bonus_life_awarded == FALSE && score >= 1500)
	xor.w	r0, r0	# tmp1362
	cmp.w	r1, r0	# bonus_life_awarded.270_284, tmp1362
	jnz	.L382		#
# spaceinvaders.c:2847: 			if(bonus_life_awarded == FALSE && score >= 1500)
	ld.w	r1, [score]	# score.271_285, score
# spaceinvaders.c:2847: 			if(bonus_life_awarded == FALSE && score >= 1500)
	mov.w	r0, 1499	# tmp1363,
	cmp.w	r1, r0	# score.271_285, tmp1363
	jses	.L382		#
# spaceinvaders.c:2849: 				lives++;
	ld.w	r0, [lives]	# lives.272_286, lives
	add.w	r0, 1 #111	# _287,
	st.w	[lives], r0	# lives, _287
# spaceinvaders.c:2850: 				bonus_life_awarded = TRUE;
	mov.w	r0, 1	# tmp1364,
	st.w	[bonus_life_awarded], r0	# bonus_life_awarded, tmp1364
# spaceinvaders.c:2851: 				draw_lives();
	call	draw_lives		#
.L382:
# spaceinvaders.c:2856: 		if(player_alive == 2)
	ld.w	r1, [player_alive]	# player_alive.273_288, player_alive
# spaceinvaders.c:2856: 		if(player_alive == 2)
	mov.w	r0, 2	# tmp1365,
	cmp.w	r1, r0	# player_alive.273_288, tmp1365
	jnz	.L527		#
# spaceinvaders.c:2859: 			vkp = is_key_pressed();
	call	is_key_pressed		#
# spaceinvaders.c:2859: 			vkp = is_key_pressed();
	st.w	[vkp], r0	# vkp, _289
# spaceinvaders.c:2860: 			vkr = is_key_released();
	call	is_key_released		#
# spaceinvaders.c:2860: 			vkr = is_key_released();
	st.w	[vkr], r0	# vkr, _290
# spaceinvaders.c:2861: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [vkp]	# vkp.274_291, vkp
# spaceinvaders.c:2861: 			if ((vkp == 0) && (vkr == 0))
	xor.w	r0, r0	# tmp1366
	cmp.w	r1, r0	# vkp.274_291, tmp1366
	jnz	.L507		#
# spaceinvaders.c:2861: 			if ((vkp == 0) && (vkr == 0))
	ld.w	r1, [vkr]	# vkr.275_292, vkr
# spaceinvaders.c:2861: 			if ((vkp == 0) && (vkr == 0))
	xor.w	r0, r0	# tmp1367
	cmp.w	r1, r0	# vkr.275_292, tmp1367
	jnz	.L507		#
# spaceinvaders.c:2863: 				vkp = old;
	ld.w	r0, [old]	# old.276_293, old
	st.w	[vkp], r0	# vkp, old.276_293
.L507:
# spaceinvaders.c:2865: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [vkr]	# vkr.277_294, vkr
# spaceinvaders.c:2865: 			if ((vkr != 0) && (vkr == old))
	xor.w	r0, r0	# tmp1368
	cmp.w	r1, r0	# vkr.277_294, tmp1368
	jz	.L508		#
# spaceinvaders.c:2865: 			if ((vkr != 0) && (vkr == old))
	ld.w	r1, [vkr]	# vkr.278_295, vkr
	ld.w	r0, [old]	# old.279_296, old
# spaceinvaders.c:2865: 			if ((vkr != 0) && (vkr == old))
	cmp.w	r1, r0	# vkr.278_295, old.279_296
	jnz	.L508		#
# spaceinvaders.c:2867: 				vkp = 0;
	xor.w	r0, r0	# tmp1369
	st.w	[vkp], r0	# vkp, tmp1369
# spaceinvaders.c:2868: 				old = 0;
	xor.w	r0, r0	# tmp1370
	st.w	[old], r0	# old, tmp1370
.L508:
# spaceinvaders.c:2870: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	ld.w	r1, [vkp]	# vkp.280_297, vkp
# spaceinvaders.c:2870: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	xor.w	r0, r0	# tmp1371
	cmp.w	r1, r0	# vkp.280_297, tmp1371
	jz	.L509		#
# spaceinvaders.c:2870: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	ld.w	r1, [vkp]	# vkp.281_298, vkp
# spaceinvaders.c:2870: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	mov.w	r0, 32	# tmp1372,
	cmp.w	r1, r0	# vkp.281_298, tmp1372
	jz	.L509		#
# spaceinvaders.c:2870: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	ld.w	r1, [vkp]	# vkp.282_299, vkp
# spaceinvaders.c:2870: 			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
	mov.w	r0, 27	# tmp1373,
	cmp.w	r1, r0	# vkp.282_299, tmp1373
	jz	.L509		#
# spaceinvaders.c:2871: 				old = vkp;
	ld.w	r0, [vkp]	# vkp.283_300, vkp
	st.w	[old], r0	# old, vkp.283_300
.L509:
# spaceinvaders.c:2873: 			if(game_state == PLAY)
	ld.w	r1, [game_state]	# game_state.284_301, game_state
# spaceinvaders.c:2873: 			if(game_state == PLAY)
	mov.w	r0, 1	# tmp1374,
	cmp.w	r1, r0	# game_state.284_301, tmp1374
	jnz	.L528		#
# spaceinvaders.c:2875: 				switch (vkp)
	ld.w	r0, [vkp]	# vkp.285_302, vkp
	mov.w	r1, 4003	# tmp1375,
	cmp.w	r0, r1	# vkp.285_302, tmp1375
	jz	.L511		#
	mov.w	r1, 4003	# tmp1376,
	cmp.w	r0, r1	# vkp.285_302, tmp1376
	jgs	.L510		#
	mov.w	r1, 32	# tmp1377,
	cmp.w	r0, r1	# vkp.285_302, tmp1377
	jz	.L512		#
	mov.w	r1, 4001	# tmp1378,
	cmp.w	r0, r1	# vkp.285_302, tmp1378
	jnz	.L510		#
# spaceinvaders.c:2878: 						if(player_movement_skip_frame == 0)
	ld.w	r1, [player_movement_skip_frame]	# player_movement_skip_frame.286_303, player_movement_skip_frame
# spaceinvaders.c:2878: 						if(player_movement_skip_frame == 0)
	xor.w	r0, r0	# tmp1379
	cmp.w	r1, r0	# player_movement_skip_frame.286_303, tmp1379
	jnz	.L529		#
# spaceinvaders.c:2880: 							player_ship->x -= 1;
	ld.w	r0, [player_ship]	# player_ship.287_304, player_ship
	ld.s	r1, [r0 + (2)]	# _305, player_ship.287_304->x
	ld.w	r0, [player_ship]	# player_ship.288_306, player_ship
	add.w	r1, -1 #111	# tmp1380,
	st.s	[r0 + (2)], r1	# player_ship.288_306->x, _307
# spaceinvaders.c:2884: 						break;
	j	.L529		#
.L511:
# spaceinvaders.c:2886: 						if(player_movement_skip_frame == 0)
	ld.w	r1, [player_movement_skip_frame]	# player_movement_skip_frame.290_309, player_movement_skip_frame
# spaceinvaders.c:2886: 						if(player_movement_skip_frame == 0)
	xor.w	r0, r0	# tmp1381
	cmp.w	r1, r0	# player_movement_skip_frame.290_309, tmp1381
	jnz	.L530		#
# spaceinvaders.c:2888: 							player_ship->x += 1;
	ld.w	r0, [player_ship]	# player_ship.291_310, player_ship
	ld.s	r1, [r0 + (2)]	# _311, player_ship.291_310->x
	ld.w	r0, [player_ship]	# player_ship.292_312, player_ship
	add.w	r1, 1 #111	# tmp1382,
	st.s	[r0 + (2)], r1	# player_ship.292_312->x, _313
# spaceinvaders.c:2889: 							if (player_ship->x > 224)
	ld.w	r0, [player_ship]	# player_ship.293_314, player_ship
	ld.s	r0, [r0 + (2)]	# _315, player_ship.293_314->x
# spaceinvaders.c:2889: 							if (player_ship->x > 224)
	zex.s	r1, r0	# tmp1383, _315
	mov.w	r0, 224	# tmp1384,
	cmp.w	r1, r0	# tmp1383, tmp1384
	jse	.L530		#
# spaceinvaders.c:2890: 								player_ship->x = 224;
	ld.w	r0, [player_ship]	# player_ship.294_316, player_ship
# spaceinvaders.c:2890: 								player_ship->x = 224;
	mov.s	r1, 224	# tmp1385,
	st.s	[r0 + (2)], r1	# player_ship.294_316->x, tmp1385
# spaceinvaders.c:2892: 						break;
	j	.L530		#
.L512:
# spaceinvaders.c:2894: 						fire_bullet_if_ready();
	call	fire_bullet_if_ready		#
# spaceinvaders.c:2895: 						break;
	j	.L510		#
.L528:
# spaceinvaders.c:2898: 			}
	nop	
	j	.L510		#
.L529:
# spaceinvaders.c:2884: 						break;
	nop	
	j	.L510		#
.L530:
# spaceinvaders.c:2892: 						break;
	nop	
.L510:
# spaceinvaders.c:2900: 			switch (vkp)
	ld.w	r0, [vkp]	# vkp.295_317, vkp
	mov.w	r1, 27	# tmp1386,
	cmp.w	r0, r1	# vkp.295_317, tmp1386
	jz	.L515		#
	mov.w	r1, 301	# tmp1387,
	cmp.w	r0, r1	# vkp.295_317, tmp1387
	jnz	.L506		#
# spaceinvaders.c:2903: 					toggle_play_pause();
	call	toggle_play_pause		#
# spaceinvaders.c:2904: 					break;
	j	.L506		#
.L515:
# spaceinvaders.c:2906: 					return 1;
	mov.w	r0, 1	# _354,
	j	.L416		#
.L527:
# spaceinvaders.c:2909: 		}
	nop	
.L506:
# spaceinvaders.c:2911: 		delay_millis(delay_ms);
	ld.w	r0, [delay_ms]	# delay_ms.296_318, delay_ms
	mov.w	r1, sp	# tmp1388,
	st.w	[r1], r0	#, delay_ms.296_318
	call	delay_millis		#
# spaceinvaders.c:2360: 		if(game_state == PLAY)
	j	.L516		#
.L416:
# spaceinvaders.c:2913: }
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
# spaceinvaders.c:2917: 	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
# 2917 "spaceinvaders.c" 1
	irq 0

# spaceinvaders.c:2918: 	init_stdio();
	call	init_stdio		#
# spaceinvaders.c:2919: 	video_mode(1);
	mov.w	r1, sp	# tmp31,
	mov.w	r0, 1	# tmp32,
	st.w	[r1], r0	#, tmp32
	call	video_mode		#
# spaceinvaders.c:2921: 	cls(0);	
	mov.w	r1, sp	# tmp33,
	xor.w	r0, r0	# tmp34
	st.w	[r1], r0	#, tmp34
	call	cls		#
# spaceinvaders.c:2923: 	copy_player_bullet_def();
	call	copy_player_bullet_def		#
# spaceinvaders.c:2924: 	int shouldExit = 0;
	xor.w	r0, r0	# tmp35
	st.w	[r13 + (-4)], r0	# shouldExit, tmp35
.L538:
# spaceinvaders.c:2927: 		switch(current_screen)
	ld.w	r0, [current_screen]	# current_screen.297_1, current_screen
	mov.w	r1, 2	# tmp36,
	cmp.w	r0, r1	# current_screen.297_1, tmp36
	jz	.L532		#
	mov.w	r1, 2	# tmp37,
	cmp.w	r0, r1	# current_screen.297_1, tmp37
	jgs	.L533		#
	xor.w	r1, r1	# tmp38
	cmp.w	r0, r1	# current_screen.297_1, tmp38
	jz	.L534		#
	mov.w	r1, 1	# tmp39,
	cmp.w	r0, r1	# current_screen.297_1, tmp39
	jz	.L535		#
	j	.L533		#
.L534:
# spaceinvaders.c:2930: 				shouldExit = switch_to_main_menu_screen();
	call	switch_to_main_menu_screen		#
	st.w	[r13 + (-4)], r0	# shouldExit,
# spaceinvaders.c:2931: 				break;
	j	.L533		#
.L535:
# spaceinvaders.c:2933: 				shouldExit = switch_to_get_ready_screen();
	call	switch_to_get_ready_screen		#
	st.w	[r13 + (-4)], r0	# shouldExit,
# spaceinvaders.c:2934: 				break;
	j	.L533		#
.L532:
# spaceinvaders.c:2936: 				shouldExit = switch_to_play_screen();
	call	switch_to_play_screen		#
	st.w	[r13 + (-4)], r0	# shouldExit,
# spaceinvaders.c:2937: 				break;	
	nop	
.L533:
# spaceinvaders.c:2939: 		if (shouldExit == 1)
	ld.w	r1, [r13 + (-4)]	# tmp40, shouldExit
	mov.w	r0, 1	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L541		#
# spaceinvaders.c:2927: 		switch(current_screen)
	j	.L538		#
.L541:
# spaceinvaders.c:2940: 			break;
	nop	
# spaceinvaders.c:2942: 	player_ship->addr = 0;
	ld.w	r0, [player_ship]	# player_ship.298_2, player_ship
# spaceinvaders.c:2942: 	player_ship->addr = 0;
	xor.w	r1, r1	# tmp42
	st.s	[r0], r1	# player_ship.298_2->addr, tmp42
# spaceinvaders.c:2943: 	player_bullet_def ->addr = 0;
	ld.w	r0, [player_bullet_def]	# player_bullet_def.299_3, player_bullet_def
# spaceinvaders.c:2943: 	player_bullet_def ->addr = 0;
	xor.w	r1, r1	# tmp43
	st.s	[r0], r1	# player_bullet_def.299_3->addr, tmp43
# spaceinvaders.c:2944: 	video_mode(0);
	mov.w	r1, sp	# tmp44,
	xor.w	r0, r0	# tmp45
	st.w	[r1], r0	#, tmp45
	call	video_mode		#
# spaceinvaders.c:2945: 	cls(0);
	mov.w	r1, sp	# tmp46,
	xor.w	r0, r0	# tmp47
	st.w	[r1], r0	#, tmp47
	call	cls		#
# spaceinvaders.c:2946: 	asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn on timer irq
# 2946 "spaceinvaders.c" 1
	irq 1

# spaceinvaders.c:2947: 	return 0;
	xor.w	r0, r0	# _26
# spaceinvaders.c:2948: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
