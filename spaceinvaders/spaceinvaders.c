#include <stdio.h>
#include <string.h>
#include <sprintf.h>
#include <consts.h>
#include <graphics.h>

#define BLACK  0x0
#define BLUE   0x1
#define GREEN  0x2
#define CYAN   0x3
#define RED    0x4
#define PURPLE 0x5
#define YELLOW 0x6
#define WHITE  0x7


// BASE_Y je Y pozicija na kojoj se crtaju 4 baze koje sluze kao stit od metaka
#define BASE_Y 188

// BOTTOM_LINE_Y je Y pozicija na kojoj se crta linija ispod player-a
#define BOTTOM_LINE_Y 228

/*
 * THRESHOLD je Y pozicija na kojoj se menja boja
 * Npr. sve sto se nalazi na ekranu izmedju YELLOW_THRESHOLD_0 i RED_THRESHOLD_1 bice obojeno zutom bojom,
 * sve izmedju RED_THRESHOLD_1 i CYAN_THRESHOLD_1 ce biti obojeno crvenom itd.
 */
#define RED_THRESHOLD_0 27
#define PURPLE_THRESHOLD_0 35
#define GREEN_THRESHOLD_0 60
#define CYAN_THRESHOLD_0 92
#define PURPLE_THRESHOLD_1 124
#define YELLOW_THRESHOLD_0 156
#define RED_THRESHOLD_1 188
#define CYAN_THRESHOLD_1 212
#define RED_THRESHOLD_2 220
#define CYAN_THRESHOLD_2 229

#define PLAYER_SPAWN_Y 212

#define MAIN_MENU_SCREEN 0
#define GET_READY_SCREEN 1
#define PLAY_SCREEN 2

#define TRUE 1
#define FALSE 0

/* 
 * ALIEN_SPAWN_Y je pozicija na kojoj se spawn-uje skroz donji row alien-a
 * Svakih par wave-ova, alien-i se spawn-uju nize nego na prethodnih par wave-ova
 * Stoga, ALIEN_SPAWN_Y pozicije predstavljaju sve moguce pozicije na kojima moze da se spawnuje skroz donji row
 */
#define ALIEN_SPAWN_Y_0 124
#define ALIEN_SPAWN_Y_1 148
#define ALIEN_SPAWN_Y_2 164
#define ALIEN_SPAWN_Y_3 172
#define ALIEN_SPAWN_Y_4 180

#define PAUSE 0
#define PLAY 1

// CLEAR i DRAW predstavljaju stanja u kom se moze nalaziti labela na ekranu - da li da se clear-uje ili iscrta na ekran
#define CLEAR 0
#define DRAW 1

#define ROW_5_OCTOPUS 4
#define ROW_4_OCTOPUS 3
#define ROW_3_CRAB 2
#define ROW_2_CRAB 1
#define ROW_1_SQUID 0

/* 
 * ufo moze biti u stanju ...
 * - ALIVE, EXPLODING ili DEAD
 * player_bullet moze biti u stanju ...
 * - MOVING, EXPLODING, WAITING_FOR_ALIEN_DEATH ili READY
 * alien_bullet moze biti u stanju ...
 * - MOVING, EXPLODING ili READY
 */
#define ALIVE 2
#define EXPLODING 1
#define DEAD 0
#define WAIT_FOR_ALIEN_DEATH 3
#define MOVING 2
#define READY 0

/*
 * BITNA NAPOMENA ZA SPRITE-ove: Sprite-ovi koji nisu player i player_bullet ne moraju ni da budu vezani za struct.
 * Struct je ovde kako bi adresa, pozicija i stanje vanzemaljaca ostali zapamceni, radi kasnijeg menjanja i poredjenja.
 * Dok se podaci o alien-ima i bazama pamte u struct-u, za ufo-a (npr.) se pamte u posebnim varijablama.
 * Pravilnije bi onda verovatno bilo reci da postoji samo jedna vrsta sprite-ova - tih 4 od kojih su 2 iskoriscena za player i player_bullet.
 */

/*
 * Struct-ovi za player-a i player_bullet.
 * Jednostavniji za koriscenje:
 * - Crtanje zahteva kopiranje bitmape na addr
 * - Pomeranje zahteva menjanje x i y koordinate
 * Nedostatak: Limitiran
   (u trenutku pisanja ovog komentara, max 4 sprite-a, adrese 128 do 152)
 */
typedef struct {
	short addr;
	short x;
	short y;
	short transparent;
} hw_sprite;

/*
 * Struct-ovi za alien-e i baze.
 * Komplikovaniji za koriscenje:
 * - crtanje zahteva menjanje boje short-ova koji odgovaraju pozicijama na ekranu
 * - Pomeranje zahteva clear-ovanje prethodnog sprite-a i crtanje novog
 * Prednost u odnosu na player i player_bullet: limit je nepoznat
 */
typedef struct {
	short addr;
	short x;
	short y;
	short alive;
} sw_sprite;

/*
 * spawn_y je sluzi da bi se videlo da li je metak spawn-ovan u row-u iznad player-a.
 * Meci koje su stvorili vanzemaljci u row-u iznad player-a ignorisu player-a.
 */
typedef struct {
	int x;
	int y;
	int spawn_y;
	int type;
	int sprite;
	int status;
	int timer_for_move;
	int timer_for_sprite_change;
	int timer_for_destroy;
} sw_spr_alien_bullet;

hw_sprite *player_ship = (hw_sprite *)128;
int sprite_addr = 512;
hw_sprite *player_bullet_def = (hw_sprite *)136; // 128 + 8 (velicina hw_sprite-a je 8)
int player_bullet_addr = 640; // 512 + 128 (velicina sprite_addr je 128)

sw_sprite row_1_squid[11];
sw_sprite row_2_crab[11];
sw_sprite row_3_crab[11];
sw_sprite row_4_octopus[11];
sw_sprite row_5_octopus[11];
sw_sprite row_base[4];

sw_spr_alien_bullet alien_bullet[5];

char str[256];
int player_bullet_status = READY;

/*
 * player_movement_skip_frame oznacava u kom trenutku ce player moci da se pomeri
 * Kada je player_movement_skip_frame = 0, player moze da se pomeri
 */
int player_movement_skip_frame = 0;

/*
 * player_alive oznacava u kom se stanju nalazi player.
 * 3 = ceka da se spawn-uje
 * 2 = player je ziv
 * 1 = player "umire" (eksplodira)
 * 0 = player je mrtav
 */
int player_alive = 3;

int player_death_timer = 0;
int lives = 3;

// current_pl_expl_sprite oznacava koji sprite eksplozije player-a treba iscrtati
int current_pl_expl_sprite = 0;

/*
 * movement_step oznacava kada ce se pomeriti koji row alien-a.
 * Kada je current_step == movement_step * x, pomerice se odredjeni row alien-a u nekom pravcu.
 */
int movement_step = 96;
int current_step = 0;

int number_of_aliens = 55;

/* 
 * direction oznacava u kom pravcu ce se pomerati alien-i.
 * 3 - desno
 * 6 - dole, ali su alien-i stigli do desne ivice
 * 9 - levo
 * 18 - dole, ali su alien-i stigli do leve ivice
 */
char direction = 3;

// distance oznacava za koliko po X osi ce se pomeriti alien-i
int distance = 2;

int score = 0;
int bonus_life_awarded = FALSE;
int high_score = 0;

// death_timer oznacava vreme do smrti alien-a
int death_timer = 0;

int timer_for_player_bullet_destroy = 0;
int timer_for_ufo_spawn = 0;
int timer_for_ufo_death = -1;
int ufo_status = DEAD;
int timer_for_ufo_move = 36;
int ufo_position_X = 0;
int ufo_direction = 3;
int ufo_score = 0;

// delay_ms oznacava delay izmedju while ciklus-a
int delay_ms = 2;

/*
 * alien_bullet_spawn_time se smanjuje sto je manje alien-a.
 * timer_for_alien_bullet_spawn svaki put pocinje da tece od alien_bullet_spawn_time
 */
int alien_bullet_spawn_time = 1150;
int timer_for_alien_bullet_spawn = 1150;

/*
 * vkp, vkr i old registruju u sebi inpute sa tastature
 * vkp - key pressed
 * vkr - key released
 * old - stari key
 */
int vkp = 0, vkr = 0, old = 0;

int current_screen = MAIN_MENU_SCREEN;

/*
 * special_player_bullet oznacava koji ce current_player_bullet biti "specijalan".
 * "Specijalan" metak uvek daje 300 poena kada pogodi ufo.
 */
int current_player_bullet = 0;
int special_player_bullet = 23;

int player_spawn_current_time = 0;
int player_spawn_timer = 1500;

int current_wave = 1;

int game_state = PLAY;


/*
 * Svaki short predstavlja cetiri "tacke" na ekranu (jedna pored druge).
 * 0 (0x0) je crna boja, a 7 (0x7) je bela.
 */

// Svaki tip alien-a ima dva sprite-a.

short squid0[] = {
   0x0007, 0x7000  , //0
   0x0077, 0x7700  , //1
   0x0777, 0x7770  , //2
   0x7707, 0x7077  , //3
   0x7777, 0x7777  , //4
   0x0070, 0x0700  , //5
   0x0707, 0x7070  , //6
   0x7070, 0x0707    //7
};

short squid1[] = {
   0x0007, 0x7000  , //0
   0x0077, 0x7700  , //1
   0x0777, 0x7770  , //2
   0x7707, 0x7077  , //3
   0x7777, 0x7777  , //4
   0x0707, 0x7070  , //5
   0x7000, 0x0007  , //6
   0x0700, 0x0070    //7
};

short crab0[] = {
   0x0070, 0x0000, 0x7000  , //0
   0x7007, 0x0007, 0x0070  , //1
   0x7077, 0x7777, 0x7070  , //2
   0x7770, 0x7770, 0x7770  , //3
   0x7777, 0x7777, 0x7770  , //4
   0x0777, 0x7777, 0x7700  , //5
   0x0070, 0x0000, 0x7000  , //6
   0x0700, 0x0000, 0x0700    //7
};

short crab1[] = {
   0x0070, 0x0000, 0x7000  , //0
   0x0007, 0x0007, 0x0000  , //1
   0x0077, 0x7777, 0x7000  , //2
   0x0770, 0x7770, 0x7700  , //3
   0x7777, 0x7777, 0x7770  , //4
   0x7077, 0x7777, 0x7070  , //5
   0x7070, 0x0000, 0x7070  , //6
   0x0007, 0x7077, 0x0000    //7
};

short octopus0[] = {
   0x0000, 0x7777, 0x0000  , //0
   0x0777, 0x7777, 0x7770  , //1
   0x7777, 0x7777, 0x7777  , //2
   0x7770, 0x0770, 0x0777  , //3
   0x7777, 0x7777, 0x7777  , //4
   0x0007, 0x7007, 0x7000  , //5
   0x0077, 0x0770, 0x7700  , //6
   0x7700, 0x0000, 0x0077    //7
};

short octopus1[] = {
   0x0000, 0x7777, 0x0000  , //0
   0x0777, 0x7777, 0x7770  , //1
   0x7777, 0x7777, 0x7777  , //2
   0x7770, 0x0770, 0x0777  , //3
   0x7777, 0x7777, 0x7777  , //4
   0x0077, 0x7007, 0x7700  , //5
   0x0770, 0x0770, 0x0770  , //6
   0x0077, 0x0000, 0x7700    //7
};

short ufo[] = {
   0x0000, 0x0777, 0x7770, 0x0000  , //0
   0x0007, 0x7777, 0x7777, 0x7000  , //1
   0x0077, 0x7777, 0x7777, 0x7700  , //2
   0x0770, 0x7707, 0x7077, 0x0770  , //3
   0x7777, 0x7777, 0x7777, 0x7777  , //4
   0x0077, 0x7007, 0x7007, 0x7700  , //5
   0x0007, 0x0000, 0x0000, 0x7000  , //6
   0x0000, 0x0000, 0x0000, 0x0000    //7
};

short base[] = {
   0x0000, 0x7777, 0x7777, 0x7777, 0x7777, 0x0000  , //0
   0x0007, 0x7777, 0x7777, 0x7777, 0x7777, 0x7000  , //1
   0x0077, 0x7777, 0x7777, 0x7777, 0x7777, 0x7700  , //2
   0x0777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7770  , //3
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //4
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //5
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //6
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //7
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //8
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //9
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //10
   0x7777, 0x7777, 0x7777, 0x7777, 0x7777, 0x7777  , //11
   0x7777, 0x7770, 0x0000, 0x0000, 0x0777, 0x7777  , //12
   0x7777, 0x7700, 0x0000, 0x0000, 0x0077, 0x7777  , //13
   0x7777, 0x7000, 0x0000, 0x0000, 0x0007, 0x7777  , //14
   0x7777, 0x7000, 0x0000, 0x0000, 0x0007, 0x7777  , //15
};

short ship[] = {
   0x0000, 0x0070, 0x0000, 0x0000  , //0
   0x0000, 0x0777, 0x0000, 0x0000  , //1
   0x0000, 0x0777, 0x0000, 0x0000  , //2
   0x0777, 0x7777, 0x7777, 0x0000  , //3
   0x7777, 0x7777, 0x7777, 0x7000  , //4
   0x7777, 0x7777, 0x7777, 0x7000  , //5
   0x7777, 0x7777, 0x7777, 0x7000  , //6
   0x7777, 0x7777, 0x7777, 0x7000  , //7
   0x0000, 0x0000, 0x0000, 0x0000  , //8
   0x0000, 0x0000, 0x0000, 0x0000  , //9
   0x0000, 0x0000, 0x0000, 0x0000  , //10
   0x0000, 0x0000, 0x0000, 0x0000  , //11
   0x0000, 0x0000, 0x0000, 0x0000  , //12
   0x0000, 0x0000, 0x0000, 0x0000  , //13
   0x0000, 0x0000, 0x0000, 0x0000  , //14
   0x0000, 0x0000, 0x0000, 0x0000  , //15
};

// Player eksplozija ima 2 sprite-a.

short ship_explosion0[] = {
	0x0007, 0x0000, 0x0000, 0x0700 , //0
	0x7000, 0x0070, 0x0007, 0x7007 , //1
	0x0007, 0x0000, 0x7700, 0x0000 , //2
	0x0000, 0x0070, 0x0000, 0x0070 , //3
	0x0700, 0x7077, 0x0077, 0x0007 , //4
	0x0070, 0x0007, 0x7700, 0x0700 , //5
	0x0007, 0x7777, 0x7777, 0x0000 , //6
	0x0077, 0x0777, 0x7777, 0x0070   //7
};

short ship_explosion1[] = {
	0x0000, 0x0070, 0x0000, 0x0000 , //0
	0x0000, 0x0000, 0x0007, 0x0000 , //1
	0x0000, 0x0070, 0x7070, 0x0000 , //2
	0x0007, 0x0070, 0x0000, 0x0000 , //3
	0x0000, 0x0007, 0x7077, 0x0000 , //4
	0x0700, 0x0707, 0x7070, 0x7000 , //5
	0x0007, 0x7777, 0x7770, 0x0700 , //6
	0x0077, 0x7777, 0x7777, 0x0707   //7
};

short player_bullet[] = {
	0x7000, 0x0000  , //0
	0x7000, 0x0000  , //1
	0x7000, 0x0000  , //2
	0x0000, 0x0000    //3
};

short bottom_line[] = {
	0x7777, 0x7777, 0x7777, 0x7777  //0
};

// Svaki tip alien bullet-a ima cetiri sprite-a (osim alien_bullet1 koji ima 3).

short alien_death[] = {
	0x0000, 0x7000, 0x7000, 0x0000  , //0
	0x0700, 0x0707, 0x0007, 0x0000  , //1
	0x0070, 0x0000, 0x0070, 0x0000  , //2
	0x0007, 0x0000, 0x0700, 0x0000  , //3
	0x7700, 0x0000, 0x0007, 0x7000  , //4
	0x0007, 0x0000, 0x0700, 0x0000  , //5
	0x0070, 0x0707, 0x0070, 0x0000  , //6`
	0x0700, 0x7000, 0x7007, 0x0000  , //7
};

short player_bullet_explosion[] = {
	0x7000, 0x7007  , //0
	0x0070, 0x0070  , //1
	0x0777, 0x7770  , //2
	0x7777, 0x7777  , //3
	0x7777, 0x7777  , //4
	0x0777, 0x7770  , //5
	0x0070, 0x0700  , //6
	0x7007, 0x0007    //7
};

short alien_bullet_explosion[] = {
	0x0070, 0x0000  , //0
	0x7000, 0x7000  , //1
	0x0077, 0x0700  , //2
	0x0777, 0x7000  , //3
	0x7077, 0x7000  , //4
	0x0777, 0x7700  , //5
	0x7077, 0x7000  , //6
	0x0707, 0x0700  , //7
};


short alien_bullet0_sprite0[] = {
	0x7000, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0070, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x7000, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0070, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet0_sprite1[] = {
	0x0700, 0x0000  , //0
	0x0070, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x7000, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0070, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet0_sprite2[] = {
	0x0070, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x7000, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0070, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x7000, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet0_sprite3[] = {
	0x0700, 0x0000  , //0
	0x7000, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0070, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x7000, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet1_sprite0[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x7700, 0x0000  , //2
	0x0770, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x7700, 0x0000  , //5
	0x0770, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet1_sprite1[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet1_sprite2[] = {
	0x0770, 0x0000  , //0
	0x7700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0770, 0x0000  , //3
	0x7700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite0[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x7770, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite1[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x7770, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite2[] = {
	0x7770, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x0700, 0x0000  , //6
	0x0000, 0x0000    //7
};

short alien_bullet2_sprite3[] = {
	0x0700, 0x0000  , //0
	0x0700, 0x0000  , //1
	0x0700, 0x0000  , //2
	0x0700, 0x0000  , //3
	0x0700, 0x0000  , //4
	0x0700, 0x0000  , //5
	0x7770, 0x0000  , //6
	0x0000, 0x0000    //7
};

short ufo_explosion[] = {
	0x0070, 0x0707, 0x0000, 0x0070, 0x7007, 0x0000  , //0
	0x0007, 0x0000, 0x0000, 0x7700, 0x0070, 0x0000  , //1
	0x7070, 0x0077, 0x7700, 0x0770, 0x0000, 0x0000  , //2
	0x0000, 0x0777, 0x7777, 0x0077, 0x7007, 0x0000  , //3
	0x0000, 0x7770, 0x7070, 0x7007, 0x7700, 0x0000  , //4
	0x0070, 0x0077, 0x7770, 0x0077, 0x0000, 0x7000  , //5
	0x7000, 0x0007, 0x0700, 0x0770, 0x0070, 0x0000  , //6
	0x0070, 0x0070, 0x0070, 0x0007, 0x0000, 0x0000    //7
};

// Kopira vrednosti iz player_bullet sprite-a u player_bullet adresu.
void copy_player_bullet_def()
{	
	short * p = (short *)player_bullet_addr;

	for (int i = 0; i < 4*2; i++)
	{
		*p = player_bullet[i];
		p+=2;
	}
}

// Kopira vrednosti iz player sprite-a u player sprite adresu.
void copy_player_ship()
{
	short * p = (short *)sprite_addr;
	
	for (int i = 0; i < 8*4*2; i++)
	{
		*p = ship[i];
		p++;
	}
}

// Boji "short s" bojom "short color".
short set_short_color(short s, short color)
{
	// Boja se pretvara u oblik 0x0000
	short new_color = 0x0000;
	switch(color)
	{
		case BLUE:
			new_color = 0x1000;
			break;
		case GREEN:
			new_color = 0x2000;
			break;
		case CYAN:
			new_color = 0x3000;
			break;
		case RED:
			new_color = 0x4000;
			break;
		case PURPLE:
			new_color = 0x5000;
			break;
		case YELLOW:
			new_color = 0x6000;
			break;
		case WHITE:
			new_color = 0x7000;
			break;
		default:
			new_color = 0x0000;
			break;
	}

	/*
	 * NAPOMENA: "(s & 0x0FFF) != s"
	 * nije isto sto i "s & 0x0FFF != s".
	 * (to sam naucio na tezi nacin)
	 */

	/*
	 * Proverava se kojim tackama treba da se promeni boja.
	 * 0 & 0 = 0
	 * 1 & 0 = 0
	 * Ako je "(s & 0x0FFF) != s", onda je na prvoj poziciji
	 * sigurno bio broj koji nije 0. to znaci da se na prvoj poziciji
	 * nalazi tacka kojoj treba promeniti boju.
	 * Ovo se radi za sve tacke u short-u.
	 */
	short s_new = 0x0000;
	if((s & 0x0FFF) != s)
	{
		s_new += new_color;		
	}
	if((s & 0xF0FF) != s)
	{
		s_new += new_color >> 4;		
	}
	if((s & 0xFF0F) != s)
	{
		s_new += new_color >> 8;		
	}
	if((s & 0xFFF0) != s)
	{
		s_new += new_color >> 12;		
	}
	return s_new;
}

short change_short_color_depending_on_threshold(
	short s, 
	int s_y) // Y koordinata short-a.
{
	/*
	 * Y koordinata short-a se prosledjuje da bi moglo da
	 * se proceni kojoj "zoni" short pripada.
	 * Ako pripada zoni izmedju CYAN_THRESHOLD_2 i RED_THRESHOLD_2,
	 * short ce se obojiti u CYAN.
	 */
	if(s_y >= CYAN_THRESHOLD_2)
		return set_short_color(s, CYAN);
	else if(s_y >= RED_THRESHOLD_2)
		return set_short_color(s, RED);
	else if(s_y >= CYAN_THRESHOLD_1)
		return set_short_color(s, CYAN);
	else if(s_y >= RED_THRESHOLD_1)
		return set_short_color(s, RED);
	else if(s_y >= YELLOW_THRESHOLD_0)
		return set_short_color(s, YELLOW);
	else if(s_y >= PURPLE_THRESHOLD_1)
		return set_short_color(s, PURPLE);
	else if(s_y >= CYAN_THRESHOLD_0)
		return set_short_color(s, CYAN);
	else if(s_y >= GREEN_THRESHOLD_0)
		return set_short_color(s, GREEN);
	else if(s_y >= PURPLE_THRESHOLD_0)
		return set_short_color(s, PURPLE);
	else if(s_y >= RED_THRESHOLD_0)
		return set_short_color(s, RED);
	else
		return set_short_color(s, WHITE); 
}

// Svakom short-u u sprite-u menja boju u zavisnosti od threshold-a na kom se nalazi.
void change_sprite_color(int y, int width, int height, short *bitmap)
{
	int shorts_per_row = width / 4;
	for (int i = 0; i < height; i++)
		for (int j = 0; j < shorts_per_row; j++) 
			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);	
}

/*
 * Funkcija za iscrtavanje sprite-ova.
 * "Clear background" znaci da nece uzimati u obzir vrednosti unutar short-ova koje imaju u sebi 0.
 * Ovo je najvise potrebno prilikom crtanja eksplozija metka unutar baze.
 * Da pozadina nije "prozirna", ne bi se samo iscrtala eksplozija, nego i kompletan cetvorougao, sa sve crnom pozadinom.
 */
short draw_bitmap_with_clear_background(int x, int y, int width, int height, short *bitmap)
{
	/*
	 * Odnos koordinata kod:ekran je 1:2.
	 * Svaki point (x,y) moze da se gleda kao (x*d,y*d),
	 * gde je d najmanja razlika izmedju 2 point-a.
	 * Dok je u kodu d = 1, na ekranu je d = 2.
	 * Znaci, point u kodu (30, 60) ce se na ekranu iscrtati
	 * na poziciji (60, 120).
	 *
	 * Rezolucija ekrana je 320 x 240. short-ovi se redom crtaju,
	 * sto znaci da prelazak u novi red podrazumeva da sledeca pozicija
	 * za crtanje bude y + duzina reda.
	 * Posto se svaka koordinata iz koda mnozi sa 2 i crta na ekran,
	 * da bi iscrtali objekat na zeljenu poziciju, moramo podeliti
	 * x i y koordinatu u kodu sa 2 pre iscrtavanja.
	 */

	// Pozicije od 1024 nadalje se koriste za iscrtavanje na ekran.
	short *p1 = (short *)(1024 + y * 160 + x/2);

	for (int i = 0; i < height; i++)
	{
		short first, second;

		/*
		 * Svaki short predstavlja 4 tacke na ekranu.
		 * To znaci da, u jednom row-u, moze biti najvise 320/4 = 80 short-ova.
		 * Zato, da bi se preslo u i-ti red, pozicija gde se sprite crta
		 * treba da se sabere sa (i * 80).
		 * NAPOMENA: ovde nema deljenja i prilagodjavanja koordinata jer 
		 * se ne gleda "na kojoj koordinati treba da se nacrta",
		 * nego vec "koliko short-ova na ekranu treba da se preskoci da bi se 
		 * doslo do zeljenog short-a". 
		 */
		short *p2 = p1 + (i * 80);

		/*
		 * width koji se prosledjuje je sirina sprite-a u "tackama", ne u short-ovima.
		 * Ako ocemo width u short-ovima, izracunamo width / 4.
		 * Posto je bitmap-a samo array short-ova, treba nam ovo kako bi znali
		 * na kom short-u pocinje novi red i koji short trenutno menjamo i crtamo.
		 */
		int shorts_per_row = width / 4;

		for (int j = 0; j < shorts_per_row; j++) 
		{
			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);

		    /* 
			 * (REMINDER: vrednost crne boje je 0)
			 * Da bi se iscrtao samo objekat bez pozadine, vec iscrtani short OR-ujemo sa short-om koji zelimo da nacrtamo.
			 * 0 | 0 = 0
			 * 0 | 1 = 1
			 * 1 | 0 = 1
			 * 1 | 1 = 1
			 * Tjst. Ako sa trenutnom tackom na ekranu OR-ujemo crnu tacku na sprite-u, rezultat ce biti trenutna tacka na ekranu.
			 * Time crna tacka nece zameniti trenutnu tacku (osim ako je i ona crna).
			 */

			/*
			 * ako je npr. x = 20, onda ce short bitmape zameniti short na ekranu koji je na poziciji 20.
			 * Medjutim, x nece uvek biti deljiv sa 4. Ako nije, onda 
			 * Zato racunamo (x % 4), da vidimo gde treba da stavimo short.
			 * Recimo da je short koji ocemo da stavimo 0x1234
			 * Postoje dve situacije, short "legne" na short na ekranu ili short jednim delom prelazi na jedan short,
			 * a drugim delom na short pored njega.
			 * Shift-ovanjem bita u desno za 4 pomeramo short za jednu poziciju u levo. Dobijamo 0x0123
			 * Shift-ovanjem bita u levo za 4 pomeramo short za jednu poziciju u desno. Dobijamo 0x2340
			 * x % 4 = 0 - ceo short ulazi u short na ekranu   (short na ekranu i susedni: 1234 ????).
			 * x % 4 = 1 - 3/4 short-a ulaze u short na ekranu (short na ekranu i susedni: ?123 4???).
			 * x % 4 = 2 - 2/4 short-a ulazi u short na ekranu (short na ekranu i susedni: ??12 34??).
			 * x % 4 = 3 - 1/4 short-a ulazi u short na ekranu (short na ekranu i susedni: ???1 234?).
			 */
			switch (x % 4)
			{
				case 0:
					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
					p2++;
					break;
				case 1: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 2: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 3: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
			}
		}
	}
	return *p1;
}

// Funkcija za pomeranje sprite-a.
short move_bitmap_test(int x, int y, int width, int height, short *bitmap, int direction, int distance)
{
	// x2 i y2 su prethodne pozicije.
	int x2;
	int y2;

	int shorts_per_row = width / 4;
	switch (direction)
	{
		case 3: // Ako alien/ufo/itd. trenutno ide desno, prethodna pozicija mu je bila za "distance" levo.
			x2 = x-distance;
			y2 = y;
			break;
		case 9: // Ako alien/ufo/itd. trenutno ide levo, prethodna pozicija mu je bila za "distance" desno.
			x2 = x+distance;
			y2 = y;
			break;
		default: // Ako alien/ufo/itd. trenutno ide dole, prethodna pozicija mu je bila za 8 gore.
			x2 = x;
			y2 = y-8;
			break;
	}
	short *p1 = (short *)(1024 + y * 160 + x/2);
	short *p1_previous = (short *)(1024 + y2 * 160 + x2/2);

	// Ako alien/ufo/itd. ide dole, clear-uj prethodni SPRITE.
	if(direction == 6 || direction == 18)
	{
		for (int i = 0; i < height; i++)
		{
			short *p2_previous = p1_previous + (i * 80);
			for (int j = 0; j < shorts_per_row; j++) 
			{
				switch (x2 % 4)
				{
					case 0:
						*p2_previous = 0;
						p2_previous++;
						break;
					default: 
						*p2_previous = 0;
						*(p2_previous+1) = 0;
						p2_previous++;
						break;
				}
			}
		}
	}

	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);

		/*
		 * Ako alien/ufo/itd. ide levo ili desno, clear-uj prethodni SHORT.
		 * Ako se clear-uje ceo sprite, i to se dovoljno brzo desava, ponekad izgleda kao da trepce sprite.
		 * Ako se clear-uje prethodni short, pa nacrta novi i to sve ponovi za ceo sprite, treptanje se redje desava
		 * i, kada se desi, ne bude na nivou celog sprite-a i manje se primecuje.
		 */
		if(direction == 3 || direction == 9)
		{
			short *p2_previous = p1_previous + (i * 80);
			for (int j = 0; j < shorts_per_row; j++) 
			{
				switch (x2 % 4)
				{
					case 0:
						*p2_previous = 0;
						p2_previous++;
						break;
					default: 
						*p2_previous = 0;
						*(p2_previous+1) = 0;
						p2_previous++;
						break;
				}
			}
		}

		for (int j = 0; j < shorts_per_row; j++) 
		{
			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
			switch (x % 4)
			{
				case 0:
					*p2 = (*p2) | bitmap[i*shorts_per_row + j];
					p2++;
					break;
				case 1: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 4);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 2: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 8);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 3: 
					first = (*p2)      | (bitmap[i*shorts_per_row + j] >> 12);
					second = (*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4);
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
			}
		}
	}
	return *p1;
}

// Funkcija za clear-ovanje sprite-a.
short clear_bitmap_test(int x, int y, int width, int height)
{
	short *p1 = (short *)(1024 + y * 160 + x/2);
	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);
		int shorts_per_row = width / 4;
		for (int j = 0; j < shorts_per_row; j++) 
		{
			switch (x % 4)
			{
				case 0:
					*p2 = 0x0000;
					p2++;
					break;
				default: 
					*p2 = 0x0000;
					*(p2+1) = 0x0000;
					p2++;
					break;
			}
		}
	}
	return *p1;
}


// Funkcija vraca x vrednost zivog alien-a sa najmanjom x vrednoscu (odnosno, x vrednost alien-a koji je najblizi LEVOJ ivici)
short leftmost_alien_X()
{
	short leftmost = 300;
	for(int i = 0; i < 11; i++)
	{
		if(row_1_squid[i].alive == 2 && row_1_squid[i].x < leftmost)
		{
			return row_1_squid[i].x;
		}
		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x < leftmost)
		{
			return row_2_crab[i].x;
		}
		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x < leftmost)
		{
			return row_3_crab[i].x;
		}
		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x < leftmost)
		{
			return row_4_octopus[i].x;
		}
		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x < leftmost)
		{
			return row_5_octopus[i].x;
		}
	}
}

// Funkcija vraca x vrednost zivog alien-a sa najvecom x vrednoscu (odnosno, x vrednost alien-a koji je najblizi DESNOJ ivici)
short rightmost_alien_X()
{
	short rightmost = 0;
	for(int i = 10; i >= 0; i--)
	{
		if(row_1_squid[i].alive == 2 && row_1_squid[i].x + 12 > rightmost)
		{
			return row_1_squid[i].x;
		}
		else if(row_2_crab[i].alive == 2 && row_2_crab[i].x + 12 > rightmost)
		{
			return row_2_crab[i].x;
		}
		else if(row_3_crab[i].alive == 2 && row_3_crab[i].x + 12 > rightmost)
		{
			return row_3_crab[i].x;
		}
		else if(row_4_octopus[i].alive == 2 && row_4_octopus[i].x + 12 > rightmost)
		{
			return row_4_octopus[i].x;
		}
		else if(row_5_octopus[i].alive == 2 && row_5_octopus[i].x + 12 > rightmost)
		{
			return row_5_octopus[i].x;
		}
	}
}

// Funkcija vraca y vrednost zivog alien-a sa najvecom y vrednoscu (odnosno, y vrednost alien-a koji je najblizi DONJOJ ivici)
short lowest_alien_Y()
{
	short lowest = 0;
	for(int i = 10; i >= 0; i--)
	{
		if(row_5_octopus[i].alive == 2 && row_5_octopus[i].y > lowest)
		{
			return row_5_octopus[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_4_octopus[i].alive == 2 && row_4_octopus[i].y > lowest)
		{
			return row_4_octopus[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_3_crab[i].alive == 2 && row_3_crab[i].y > lowest)
		{
			return row_3_crab[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_2_crab[i].alive == 2 && row_2_crab[i].y > lowest)
		{
			return row_2_crab[i].y;
		}
	}
	for(int i = 10; i >= 0; i--)
	{
		if(row_1_squid[i].alive == 2 && row_1_squid[i].y > lowest)
		{
			return row_1_squid[i].y;
		}
	}
}

/*
 * Funkcija povecava brzinu kretanja alien-a.
 * U originalnim space invaders-ima, sto ih je manje bilo to su se brze kretali.
 * Ovo nije originalno planirano, nego samim tim sto je bilo manje alien-a je trebalo
 * manje njih da se iscrtava, i time se igra brze odvijala jer je tada iscrtavanje bilo
 * dosta zahtevno.
 * Ovo je pokusaj simulacije tog ubrzanja.
 */
void increase_alien_speed()
{
	int current_step_multiplier = current_step/movement_step;
	
	// sto je manje alien-a, to je vece smanjenje
	if(number_of_aliens < 6)
		movement_step -= 4;
	else if(number_of_aliens < 15)
		movement_step -= 3;
	else if(number_of_aliens < 23)
		movement_step -= 2;
	else
		movement_step--;

	/*
	 * Alien-i se spawnuju na movement_step * current_step_multiplier.
	 * Moze se desiti da, nakon smanjenja movement_step-a, current_step postane
	 * veci ili jednak sa "movement_step_ceil = movement_step * (current_step_multiplier+1)", a prethodno je bio manji.
	 * Ako se to ne bi proverilo, postoji mogucnost da se preskoci step u kom se neki red alien-a pomera.
	 * Zato se, ukoliko je do toga doslo, current_step stavlja na movement_step_ceil - 1.
	 */
	int movement_step_ceil = movement_step * (current_step_multiplier+1);

	if(current_step >= movement_step_ceil)
	{
		current_step = movement_step_ceil - 1;
	}
}

/*
 * Funkcija smanjuje vreme potrebno da neki vanzemaljac ispali metak.
 * Sto je manje vanzemaljaca to ce se brze spawn-ovati meci.
 */
void decrease_alien_bullet_spawn_time()
{
	alien_bullet_spawn_time = 600 + (number_of_aliens*10);
}

void check_and_draw_current_score() {
	if(score > 99999)
		score = 0;
	clear_bitmap_test(20, 20, 45, 10);
	if(score < 10)
		sprintf(str, "0000%d", score);
	else if(score < 100)
		sprintf(str, "000%d", score);
	else if(score < 1000)
		sprintf(str, "00%d", score);
	else if(score < 10000)
		sprintf(str, "0%d", score);
	else
		sprintf(str, "%d", score);
	draw(20, 20, WHITE, str);
}

void draw_high_score() {
	clear_bitmap_test(112, 20, 45, 10);
	if(high_score < 10)
		sprintf(str, "0000%d", high_score);
	else if(high_score < 100)
		sprintf(str, "000%d", high_score);
	else if(high_score < 1000)
		sprintf(str, "00%d", high_score);
	else if(high_score < 10000)
		sprintf(str, "0%d", high_score);
	else
		sprintf(str, "%d", high_score);
	draw(112, 20, GREEN, str);
}

void update_high_score_if_lower_than_score()
{
	if(high_score < score)
	{
		high_score = score;
		draw_high_score();
	}
}

// Funkcija redraw-uje "lives" label i sprite-ove brodova koji predstavljaju zivote.
void draw_lives() {
	clear_bitmap_test(20, 229, 60, 10);
	sprintf(str,"%d", lives);
	draw(20, 230, YELLOW, str);
	for(int i = 0; i < lives-1; i++)
		draw_bitmap_with_clear_background(32 + 16 * i, 229, 16, 8, ship);
}

void calculate_ufo_score()
{
	/*
	 * Ako je ufo pogodjen specijalnim metkom, set-uj ufo_score na 300.
	 * U suprotnom generisi random vrednost od 50, 100 ili 150.
	 */
	if(current_player_bullet == special_player_bullet)
		ufo_score = 300;
	else
		ufo_score = ((rand() % 3) + 1) * 50;
}

int ufo_is_alive_and_collided_with_player_bullet()
{
	// Vrati 1 ukoliko je ufo ziv i ako je player metak "usao" u njegov prostor.
	return (ufo_status == ALIVE
			&& (player_bullet_def->x >= ufo_position_X 
				&& player_bullet_def->x <= ufo_position_X + 15)
			&& (player_bullet_def->y <= 35 + 7 
				&& player_bullet_def->y >= 35 - 2));
}

void set_ufo_to_explode()
{
	ufo_status = EXPLODING;
	timer_for_ufo_death = 1200;
}

void set_player_bullet_to_explode()
{
	player_bullet_status = EXPLODING;
	timer_for_player_bullet_destroy = 150;
}

void delete_player_bullet_and_set_status(int status)
{
	player_bullet_def -> addr = 0;
	player_bullet_status = status;
}


void check_player_bullet_collision_with_alien()
{
	if(ufo_is_alive_and_collided_with_player_bullet() == TRUE)
	{
		set_ufo_to_explode();
		calculate_ufo_score();
		delete_player_bullet_and_set_status(READY);
		return;
	}
	
	/*
	 * Ako player metak pogodi alien-a:
	 * - clear-uj sprite alien-a
	 * - nacrtaj sprite eksplozije alien-a
	 * - izbrisi player metak
	 * - postavi "alive" status alien-a na 1
	 * - pokreni death timer tako sto ga povecas sa 4 (odnosno, pomeris ga sa 0)
	 */
	for(int i = 0; i < 11; i++) {
		if(row_5_octopus[i].alive == 2 
		&& (player_bullet_def->x >= row_5_octopus[i].x && player_bullet_def->x <= row_5_octopus[i].x + 11)
		&& (player_bullet_def->y <= row_5_octopus[i].y + 7 && player_bullet_def->y >= row_5_octopus[i].y - 2))
		{
			clear_bitmap_test(row_5_octopus[i].x, row_5_octopus[i].y, 12, 8);
			draw_bitmap_with_clear_background(row_5_octopus[i].x, row_5_octopus[i].y, 16, 8, alien_death);
			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
			row_5_octopus[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_4_octopus[i].alive == 2
		&& (player_bullet_def->x >= row_4_octopus[i].x && player_bullet_def->x <= row_4_octopus[i].x + 11)
		&& (player_bullet_def->y <= row_4_octopus[i].y + 7 && player_bullet_def->y >= row_4_octopus[i].y - 2))
		{
			clear_bitmap_test(row_4_octopus[i].x, row_4_octopus[i].y, 12, 8);
			draw_bitmap_with_clear_background(row_4_octopus[i].x, row_4_octopus[i].y, 16, 8, alien_death);
			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
			row_4_octopus[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_3_crab[i].alive == 2
		&& (player_bullet_def->x >= row_3_crab[i].x && player_bullet_def->x <= row_3_crab[i].x + 11)
		&& (player_bullet_def->y <= row_3_crab[i].y + 7 && player_bullet_def->y >= row_3_crab[i].y - 2))
		{
			clear_bitmap_test(row_3_crab[i].x, row_3_crab[i].y, 12, 8);
			draw_bitmap_with_clear_background(row_3_crab[i].x, row_3_crab[i].y, 16, 8, alien_death);
			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
			row_3_crab[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_2_crab[i].alive == 2
		&& (player_bullet_def->x >= row_2_crab[i].x && player_bullet_def->x <= row_2_crab[i].x + 11)
		&& (player_bullet_def->y <= row_2_crab[i].y + 7 && player_bullet_def->y >= row_2_crab[i].y - 2))
		{
			clear_bitmap_test(row_2_crab[i].x, row_2_crab[i].y, 12, 8);
			draw_bitmap_with_clear_background(row_2_crab[i].x, row_2_crab[i].y, 16, 8, alien_death);
			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
			row_2_crab[i].alive = 1;
			death_timer+=4;
			break;
		}
		if(row_1_squid[i].alive == 2
		&& (player_bullet_def->x >= row_1_squid[i].x && player_bullet_def->x <= row_1_squid[i].x + 11)
		&& (player_bullet_def->y <= row_1_squid[i].y + 7 && player_bullet_def->y >= row_1_squid[i].y - 2))
		{
			clear_bitmap_test(row_1_squid[i].x, row_1_squid[i].y, 8, 8);
			draw_bitmap_with_clear_background(row_1_squid[i].x-2, row_1_squid[i].y, 16, 8, alien_death);
			delete_player_bullet_and_set_status(WAIT_FOR_ALIEN_DEATH);
			row_1_squid[i].alive = 1;
			death_timer += 4;
			break;
		}
	}
}

// Funkcija vraca 1 ukoliko je na prosledjenom point-u vrednost koja nije 0
int position_is_not_clear(int x, int y)
{
	/*
	 * (REMINDER: F = 1111)
	 * Sa (x % 4) se procenjuje gde se u trenutno ispitivanom short-u nalazi prosledjena x koordinata.
	 * Zatim se na tom mestu & funkcijom proverava vrednost point-a.
	 * 0 & 0 = 0
	 * 1 & 0 = 0
	 * 0 & 1 = 0
	 * 1 & 1 = 1
	 * Odnosno, ako se leva vrednost AND-uje sa 1, rezultat je uvek leva vrednost, a ako se AND-uje sa 0, rezultat
	 * je uvek 0
	 * Npr. ako je (*p1 & 0FFF) = *p1, to jedino moze da bude moguce ako je na prvoj poziciji *p1 bila 0.
	 * Jer ce 0 bilo koji broj na prvoj poziciji staviti na 0, a F-ovi ce samo prekopirati brojeve u novi broj. 
	 */
	short *p1 = (short *)(1024 + y * 160 + x/2);
	switch (x % 4)
	{
		case 0:
			if((*p1 & 0x0FFF) == *p1)
			{
				return 0;
			}
			break;
		case 1:
			if((*p1 & 0xF0FF) == *p1)
			{
				return 0;
			}
			break;
		case 2:
			if((*p1 & 0xFF0F) == *p1)
			{
				return 0;
			}
			break;
		case 3:
			if((*p1 & 0xFFF0) == *p1)
			{
				return 0;
			}
			break;
	}
	return 1;
}

/*
 * Funkcija clear-uje prostor na ekranu koji odgovara odredjenom sprite-u.
 * Za ovo je iskoriscena XOR operacija.
 * 0 ^ 0 = 0
 * 0 ^ 1 = 1
 * 1 ^ 0 = 1
 * 1 ^ 1 = 0
 * Sprite koji ocemo da iskoristimo kao "rupu" XOR-ujemo sa rezultatom OR operacije postojeceg short-a i tog istog sprite-a.
 * Odnosno, s ^ (s_na_ekranu | s)
 * (s_na_ekranu | s) predstavlja uniju sprite-a NA EKRANU i svega sto se nalazi oko tog sprite-a.
 * s ^ (s_na_ekranu | s) predstavlja razliku sprite-a IZ BITMAPE i te unije.
 * Rezultat operacije je samo sve sto se nalazi oko sprite-a na ekranu.
 */
void clear_bitmap_with_specific_shape(int x, int y, int width, int height, short *bitmap)
{
	short *p1 = (short *)(1024 + y * 160 + x/2);
	for (int i = 0; i < height; i++)
	{
		short first, second;
		short *p2 = p1 + (i * 80);
		int shorts_per_row = width / 4;
		for (int j = 0; j < shorts_per_row; j++) 
		{
			bitmap[i*shorts_per_row + j] = change_short_color_depending_on_threshold(bitmap[i*shorts_per_row + j], y + i);
			switch (x % 4)
			{
				case 0:
					*p2 = bitmap[i*shorts_per_row + j] ^ ((*p2) | bitmap[i*shorts_per_row + j]);
					p2++;
					break;
				case 1: 
					first = (bitmap[i*shorts_per_row + j] >> 4) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 4));
					second = (bitmap[i*shorts_per_row + j] << 12) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 12));
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 2: 
					first = (bitmap[i*shorts_per_row + j] >> 8) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 8));
					second = (bitmap[i*shorts_per_row + j] << 8) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 8));
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
				case 3: 
					first = (bitmap[i*shorts_per_row + j] >> 12) ^ ((*p2)      | (bitmap[i*shorts_per_row + j] >> 12));
					second = (bitmap[i*shorts_per_row + j] << 4) ^ ((*(p2+1)) | (bitmap[i*shorts_per_row + j] << 4));
					*p2 = first;
					*(p2+1) = second;
					p2++;
					break;
			}
		}
	}
}


void check_player_bullet_collision_with_base()
{
	/* 
	 * Proverava da li na sprite-u player metka postoji neka tacka koja je obojena.
	 * Player-metak je jedan od cetiri "specijalna sprite-a".
	 * Najbolje je shvatiti to kao "metak je na layer-u IZNAD svega ostalog".
	 * kada proveravamo poziciju gde se nalazi metak, zapravo proveravamo
	 * "poziciju na layer-u ISPOD metka na kom se sve ostalo nalazi".
	 * U suprotnom, da metak nije "specijalan sprite", ovakvom proverom bi metak
	 * eksplodirao cim bi se stvorio.
	 */
	if(position_is_not_clear(player_bullet_def->x, player_bullet_def->y)
	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+1)
	|| position_is_not_clear(player_bullet_def->x, player_bullet_def->y+2))
	{
		set_player_bullet_to_explode();
	}
}

void set_alien_bullet_to_explode(int alien_bullet_index)
{
	alien_bullet[alien_bullet_index].status = EXPLODING;
	alien_bullet[alien_bullet_index].timer_for_destroy = 150;
}

void destroy_player()
{
	player_alive = 1;
	player_death_timer = 0;
	player_ship->addr = 0;
	draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
}


/*
 * alien_bullet_index se prosledjuje da bi se znalo o kom je alien metku rec.
 * Proverava se tip i sprite metka da bi znali koji "shape" moramo da clear-ujemo.
 */
void clear_current_alien_bullet_sprite(int alien_bullet_index)
{
	if(alien_bullet[alien_bullet_index].type == 0)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
			break;
		case 1:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
			break;
		case 2:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
			break;
		default:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
			break;	
		}
	}
	else if (alien_bullet[alien_bullet_index].type == 1)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
			break;
		case 1:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;
		case 2:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
			break;
		default:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;	
		}
	}
	else
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
			break;
		case 1:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
			break;
		case 2:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
			break;
		default:
			clear_bitmap_with_specific_shape(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
			break;	
		}
	}
}

void check_alien_bullet_collision_with_player(int alien_bullet_index)
{
	if(alien_bullet[alien_bullet_index].y > player_ship->y-6
	&& alien_bullet[alien_bullet_index].y-6 < player_ship->y+9
	&& alien_bullet[alien_bullet_index].x > player_ship->x-2
	&& alien_bullet[alien_bullet_index].x < player_ship->x+15)
	{
		clear_current_alien_bullet_sprite(alien_bullet_index);
		set_alien_bullet_to_explode(alien_bullet_index);
		lives--;
		destroy_player();
	}
}

// Kao "Environment" se smatraju cetiri baze i linija ispod player-a. 
void check_alien_bullet_collision_with_environment(int alien_bullet_index)
{	
	if(alien_bullet[alien_bullet_index].y >= BOTTOM_LINE_Y - 6)
	{
		clear_current_alien_bullet_sprite(alien_bullet_index);
		set_alien_bullet_to_explode(alien_bullet_index);
	}
	else if(alien_bullet[alien_bullet_index].y >= BASE_Y - 6)
	{
		for(int i = 0; i <= 2; i++)
		{
			for(int j = 0; j <= 2; j++)
			{
				if(position_is_not_clear(alien_bullet[alien_bullet_index].x + j, alien_bullet[alien_bullet_index].y + i))
				{
					clear_current_alien_bullet_sprite(alien_bullet_index);
					set_alien_bullet_to_explode(alien_bullet_index);
					break;
				}
			}
		}
	}
}

void check_player_bullet_collision_with_alien_bullet(int alien_bullet_index)
{
	if(player_bullet_def->x >= alien_bullet[alien_bullet_index].x
	&& player_bullet_def->x <= alien_bullet[alien_bullet_index].x+2
	&& player_bullet_def->y >= alien_bullet[alien_bullet_index].y-2
	&& player_bullet_def->y <= alien_bullet[alien_bullet_index].y+6)
	{
		set_player_bullet_to_explode();

		clear_current_alien_bullet_sprite(alien_bullet_index);
		set_alien_bullet_to_explode(alien_bullet_index);
	}
}

void destroy_alien()
{
	death_timer = 0;
	player_bullet_status = READY;

	/*
	 * Funkcija proverava koji je alien u stanju "1".
	 * Kada ga nadje:
	 * - promeni mu stanje na 0.
	 * - clear-uje sprite eksplozije
	 * - smanji broj vanzemaljaca
	 * = poveca brzinu vanzemaljaca
	 * - poveca brzinu stvaranja metaka
	 * - poveca score
	 * - redraw-uje trenutni score
	 * - izadje iz petlje
	 */
	for(int i = 0; i <= 11; i++)
	{
		if(row_5_octopus[i].alive == 1)
		{
			row_5_octopus[i].alive = 0;
			clear_bitmap_with_specific_shape(
				row_5_octopus[i].x, 
				row_5_octopus[i].y,
				16,
				8,
				alien_death);
			number_of_aliens--;
			increase_alien_speed();
			decrease_alien_bullet_spawn_time();
			score += 10;
			check_and_draw_current_score();
			break;
		}
		if(row_4_octopus[i].alive == 1)
		{
			row_4_octopus[i].alive = 0;
			clear_bitmap_with_specific_shape(
				row_4_octopus[i].x, 
				row_4_octopus[i].y,
				16,
				8,
				alien_death);
			number_of_aliens--;
			increase_alien_speed();
			decrease_alien_bullet_spawn_time();
			score += 10;
			check_and_draw_current_score();
			break;
		}
		if(row_3_crab[i].alive == 1)
		{
			row_3_crab[i].alive = 0;
			clear_bitmap_with_specific_shape(
				row_3_crab[i].x, 
				row_3_crab[i].y,
				16,
				8,
				alien_death);
			number_of_aliens--;
			increase_alien_speed();
			decrease_alien_bullet_spawn_time();
			score += 20;
			check_and_draw_current_score();
			break;
		}
		if(row_2_crab[i].alive == 1)
		{
			row_2_crab[i].alive = 0;
			clear_bitmap_with_specific_shape(
				row_2_crab[i].x, 
				row_2_crab[i].y,
				16,
				8,
				alien_death);
			number_of_aliens--;
			increase_alien_speed();
			score += 20;
			check_and_draw_current_score();
			break;
		}
		if(row_1_squid[i].alive == 1)
		{
			row_1_squid[i].alive = 0;
			clear_bitmap_with_specific_shape(
				row_1_squid[i].x - 2, 
				row_1_squid[i].y,
				16,
				8,
				alien_death);
			number_of_aliens--;
			increase_alien_speed();
			score += 30;
			check_and_draw_current_score();
			break;
		}
	}
}

void spawn_ufo()
{
	ufo_status = ALIVE;
	ufo_direction = rand() % 2;
	if(ufo_direction == 0)
		ufo_position_X = 12;
	else
		ufo_position_X = 216;
	draw_bitmap_with_clear_background(ufo_position_X, 35, 16, 8, ufo);
}

void move_ufo()
{
	/*
	 * Ako je ufo_direction = 0:
	 * - ufo_position_X += 2, tjst. ufo ce se pomeriti desno za 2
	 * Ako je ufo_direction = 1:
	 * - ufo_position_X += -2, tjst. ufo ce se pomeriti levo za 2
	 */
	ufo_position_X += (1 - ufo_direction) * 4 - 2;

	if(ufo_direction == 0 && ufo_position_X >= 216)
	{
		clear_bitmap_test(ufo_position_X-2, 35, 16, 8);
		ufo_status = DEAD;
		ufo_position_X = 0;
	}
	else if(ufo_direction == 1 && ufo_position_X <= 12)
	{
		clear_bitmap_test(ufo_position_X+2, 35, 16, 8);
		ufo_status = DEAD;
		ufo_position_X = 0;
	}
	else
	{
		move_bitmap_test(ufo_position_X, 35, 16, 8, ufo, ufo_direction * 6 + 3, 1);
	}
}

void draw_alien_bullet_sprite(int alien_bullet_index)
{
	if(alien_bullet[alien_bullet_index].sprite == 3)
		alien_bullet[alien_bullet_index].sprite = 0;
	else
		alien_bullet[alien_bullet_index].sprite++;

	alien_bullet[alien_bullet_index].timer_for_sprite_change = 0;

	if(alien_bullet[alien_bullet_index].type == 0)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite1);
			break;
		case 2:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite2);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite3);
			break;	
		}
	}
	else if (alien_bullet[alien_bullet_index].type == 1)
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;
		case 2:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite2);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite1);
			break;	
		}
	}
	else
	{
		switch(alien_bullet[alien_bullet_index].sprite)
		{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite1);
			break;
		case 2:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite2);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite3);
			break;	
		}
	}
}

void spawn_alien_bullet(int alien_bullet_index)
{
	int alien_column = rand() % 11;
	int bullet_y = 0;
	int bullet_x = 0;
	int current_row = 0;
	int row_empty = 0;
	int num_of_checks = 0;

	/*
	 * Ovde se upisuju sve kolone koje su prazne.
	 * Prazna kolona je ona u kojoj nema zivih vanzemaljaca.
	 */
	int empty_rows[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
	
	do
	{
		/*
		* Ovo mozda nije neophodno, ali za svaki slucaj.
		* Iako je mala sansa, moze se desiti da se stalno randomuje broj koji
		* je vec proveren. Postoji sansa da petlja ide u beskonacnost.
		* Da se to ne bi desilo, ubacio sam check za petlje.
		* Ako funkcija za 100000 pokusaja ne uspe da nadje cifru, zavrsice sa radom.
		*/
		num_of_checks++;
		if(num_of_checks > 100000)
			return;

		// Randomizujeje se kolona koja se proverava.
		alien_column = rand() % 11;

		/*
		 * Ova for petlja sluzi da bi se proverilo da li je kolona vec ispitana.
		 * Ako petlja najdje na alien_column, to znaci da je alien_column kolona
		 * vec ispitana, zatim se restartuje petlja i randomizuje novi broj.
		 * Ako se naidje na -1, ova kolona nije proverena i vrsi se provera.
		 */		
		for(int i = 0; i < 11; i++)
		{
			if(empty_rows[i] == alien_column)
			{
				row_empty = 1;
				break;
			}
			else if(empty_rows[i] == -1)
			{
				row_empty = 0;
				break;	
			}
		}
		/*
		 * Ako u koloni postoji alien koji nije mrtav, on ce ispaliti
		 * metak (provera pocinje od skroz donjeg alien-a i ide ka gore).
		 * U suprotnom, trenutna kolona se dodaje u array praznih kolona
		 * i petlja se resetuje.
		 */
		if(row_empty == 0)
		{
			if(row_5_octopus[alien_column].alive != 0)
			{
				bullet_x = row_5_octopus[alien_column].x + 6;
				bullet_y = row_5_octopus[alien_column].y + 10;
			}
			else if(row_4_octopus[alien_column].alive != 0)
			{
				bullet_x = row_4_octopus[alien_column].x + 6;
				bullet_y = row_4_octopus[alien_column].y + 10;
			}
			else if(row_3_crab[alien_column].alive != 0)
			{
				bullet_x = row_3_crab[alien_column].x + 5;
				bullet_y = row_3_crab[alien_column].y + 10;
			}
			else if(row_2_crab[alien_column].alive != 0)
			{
				bullet_x = row_2_crab[alien_column].x + 5;
				bullet_y = row_2_crab[alien_column].y + 10;
			}
			else if(row_1_squid[alien_column].alive != 0)
			{
				bullet_x = row_1_squid[alien_column].x + 4;
				bullet_y = row_1_squid[alien_column].y + 10;
			}
			else
			{
				row_empty = 1;
				empty_rows[current_row] = alien_column;
				current_row++;
			}
		}
	} while(row_empty == 1 && current_row != 11 /*Hvala!!!!*/);

	alien_bullet[alien_bullet_index].x = bullet_x;
	alien_bullet[alien_bullet_index].y = bullet_y;
	alien_bullet[alien_bullet_index].spawn_y = bullet_y;
	alien_bullet[alien_bullet_index].type = rand() % 3;
	alien_bullet[alien_bullet_index].timer_for_move = 64;
	alien_bullet[alien_bullet_index].timer_for_sprite_change = 0;
	alien_bullet[alien_bullet_index].status = MOVING;
	switch(alien_bullet[alien_bullet_index].type)
	{
		case 0:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet0_sprite0);
			break;
		case 1:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet1_sprite0);
			break;
		default:
			draw_bitmap_with_clear_background(alien_bullet[alien_bullet_index].x, alien_bullet[alien_bullet_index].y, 8, 8, alien_bullet2_sprite0);
			break;	
	}
}

void change_player_explosion_sprite()
{
	/*
	 * 0 ^ 1 = 1;
	 * 1 ^ 1 = 0;
	 */
	current_pl_expl_sprite ^= 1;
	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	if(current_pl_expl_sprite == 1)
		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion1);
	else
		draw_bitmap_with_clear_background(player_ship->x, player_ship->y, 16, 8, ship_explosion0);
}

void clear_player_and_redraw_lives()
{
	clear_bitmap_test(player_ship->x, player_ship->y, 16, 8);
	draw_lives();
}

void spawn_player()
{
	player_ship->addr = (short)sprite_addr;
	player_ship->x = 40;
	player_ship->y = PLAYER_SPAWN_Y;
	player_ship->transparent = 0;
	player_alive = 2;
	player_movement_skip_frame = 3;
	vkp = 0, vkr = 0, old = 0;
}

void display_game_over_text()
{
	int letter_delay_ms = 128;
	int game_over_text_x_pos = 95;
	int game_over_text_y_pos = GREEN_THRESHOLD_0 - 16;
	sprintf(str, "G");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GA");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAM");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms * 3);
	sprintf(str, "GAME O");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME OV");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME OVE");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
	delay(letter_delay_ms);
	sprintf(str, "GAME OVER");
	draw(game_over_text_x_pos, game_over_text_y_pos, PURPLE, str);
}

void set_current_and_special_bullets_if_current_is_higher_than_special()
{
	if(current_player_bullet > special_player_bullet)
	{	
		current_player_bullet = 1;
		special_player_bullet = 15;
	}
}

void calculate_timer_for_ufo_spawn()
{
	// mnozi se sa 2 zato sto se ufo_timer povecava svakog trenutka za 2
	timer_for_ufo_spawn = 26000 + ((rand() % 5000) * 2);
}

void change_current_wave()
{
	if(current_wave == 9)
		current_wave = 2;
	else
		current_wave++;
}

int get_alien_spawn_y_for_current_wave()
{
switch(current_wave)
	{
		case 1:
			return ALIEN_SPAWN_Y_0;
		case 2:
			return ALIEN_SPAWN_Y_1;
		case 3:
			return ALIEN_SPAWN_Y_2;
		case 4:
		case 5:
		case 6:
			return ALIEN_SPAWN_Y_3;
		case 7:
		case 8:
		case 9:
			return ALIEN_SPAWN_Y_4;
	}
}

void toggle_play_pause()
{
	game_state ^= 1;
}

/*
 * Iscrtavanje text-a na ekran.
 * Funkcija "sprintf" upisuje text od labele u str.
 * Funkcija "draw" crta labelu na ekran.
 */
void draw_label(
	int x,
	int y,
	int color,
	char *label_text)
{
	sprintf(str, label_text);
	draw(x, y, color, label_text);
}

void draw_score_labels()
{
	draw_label(20, 5, CYAN, "SCORE");
	draw_label(100, 5, RED, "HI-SCORE");
}

/*
 * Svaki entry sadrzi sprite alien-a i tekst.
 */
void draw_table_entry(
	int entry_x,
	int entry_y,
	int bitmap_width,
	int bitmap_height,
	short *bitmap,
	int text_color,
	char *label_text)
{
	draw_bitmap_with_clear_background(
		entry_x,
		entry_y,
		bitmap_width,
		bitmap_height,
		bitmap);
	draw_label(
		entry_x + 16,
		entry_y,
		text_color,
		label_text);
}

void draw_score_advance_table()
{
	int ship_score_x_pos = 82;
	int bitmap_height = 8;

	draw_label(
		50, 
		CYAN_THRESHOLD_0 + 16, 
		CYAN, 
		"*SCORE ADVANCE TABLE*");
	draw_table_entry(
		ship_score_x_pos,
		PURPLE_THRESHOLD_1 + 16,
		16,
		bitmap_height,
		ufo,
		PURPLE,
		"= ? MYSTERY");
	draw_table_entry(
		ship_score_x_pos,
		YELLOW_THRESHOLD_0,
		8,
		bitmap_height,
		squid0,
		YELLOW,
		"= 30 POINTS");
	draw_table_entry(
		ship_score_x_pos,
		YELLOW_THRESHOLD_0 + 16,
		12,
		bitmap_height,
		crab0,
		YELLOW,
		"= 20 POINTS");
	draw_table_entry(
		ship_score_x_pos,
		RED_THRESHOLD_1,
		12,
		bitmap_height,
		octopus0,
		RED,
		"= 10 POINTS");
}

void set_press_start_label_visibility(int state)
{
	switch(state)
	{
		case CLEAR:
			clear_bitmap_test(
				55, 
				GREEN_THRESHOLD_0 + 16, 
				160, 
				8);
			break;
		case DRAW:
			draw_label(
				55,
				GREEN_THRESHOLD_0 + 16,
				GREEN,
				"PRESS SPACE TO START");
			break;
		default:
			break;
	}
}

void set_score_label_visibility(int state)
{
	switch(state)
	{
		case CLEAR:
			clear_bitmap_test(20, 20, 45, 10);
			break;
		case DRAW:
			check_and_draw_current_score();
			break;
		default:
			break;
	}
}

int switch_to_main_menu_screen()
{
	int state = DRAW;
	int timer = 0;
	int vkp = 0;

	draw_score_labels();
	check_and_draw_current_score();
	draw_high_score();
	draw_score_advance_table();


	while(1)
	{
		if(timer <= 0)
		{
			set_press_start_label_visibility(state);
			state ^= 1;
			timer = 1000;
		}

		vkp = is_key_pressed();
		if(vkp == VK_SPACE)
		{
			cls(0);
			current_screen = GET_READY_SCREEN;
			return 0;
		} else if (vkp == VK_ESC) 
		{
			return 1;
		}

		timer -= 2;
		delay(delay_ms);
	}
}

int switch_to_get_ready_screen()
{
	lives = 3;
	bonus_life_awarded = FALSE;
	score = 0;

	current_wave = 1;

	int state = DRAW;
	int timer_for_label_visibility = 0;
	int timer_for_screen_change = 3000;

	draw_score_labels();
	draw_high_score();
	draw_label(
		95,
		CYAN_THRESHOLD_0 + 16,
		CYAN,
		"GET READY!");

	while(1)
	{
		if(timer_for_label_visibility <= 0)
		{
			set_score_label_visibility(state);
			state ^= 1;
			timer_for_label_visibility = 100;
		}

		if(timer_for_screen_change <= 0)
		{
			cls(0);
			current_screen = PLAY_SCREEN;
			return 0;
		}

		if (is_key_pressed() == VK_ESC)
			return 1;

		timer_for_label_visibility -= 2;
		timer_for_screen_change -= 2;
		delay(delay_ms);
	}
}

// Funkcija koja spawn-uje alien-a na pocetku svakog wave-a.
void initialize_alien(
	sw_sprite *alien,
	short x,
	short y,
	short width,
	short height,
	short* bitmap,
	short status)
{
	alien->x = x;
	alien->y = y;
	alien->addr = draw_bitmap_with_clear_background(x, y, width, height, bitmap);
	alien->alive = status;
}

void fire_bullet_if_ready()
{
	if(player_bullet_status == READY) 
	{
		player_bullet_def->addr = (short)player_bullet_addr;
		player_bullet_def->x = player_ship->x + 6;
		player_bullet_def->y = 204;
		player_bullet_def->transparent = 0;
		player_bullet_status = MOVING;
		current_player_bullet++;

		set_current_and_special_bullets_if_current_is_higher_than_special();
	}
}

int switch_to_play_screen()
{
	// Player vrednosti
	player_movement_skip_frame = 3;
	player_alive = 3;
	player_death_timer = 0;
	player_spawn_current_time = 0;
	player_spawn_timer = 1500;
	current_pl_expl_sprite = 0;

	// Keyboard  input vrednosti
	vkp = 0, vkr = 0, old = 0;

	// Ufo alien vrednosti
	//ufo_timer = 0;
	timer_for_ufo_death = 0;
	ufo_status = DEAD;
	timer_for_ufo_move = 36;
	ufo_position_X = 0;
	ufo_direction = 3;
	ufo_score = 0;

	// Non-ufo alien vrednosti
	number_of_aliens = 55;
	death_timer = 0;
	movement_step = 96;
	current_step = 0;
	direction = 3;
	distance = 2;
	int sprite_version = 1;
	short *alien_sprite = 0;
	/*
	 * Alien index sam dodao zbog octopus-a.
	 * Nacin na koji se pomeraju svi alien-i je da se prvo clear-uje prethodni short, pa se onda iscrta sledeci short na ekran.
	 * Problem kod octopus-a je da je prevelik. 
	 * Posto se iscrtavaju od levo ka desno, brisanjem prethodnog short-a od i-tog octopus-a ce se clear-ovati deo sprite-a (i-1)-tog octopus-a.
	 * Problem sam resio tako sto sam namestio da iscrtavanje ide obrnutim redosledom.
	 * Ako alien-i idu ka desno, prvo ce iscrtati skroz desnog, pa onda ce ici ka levo. U svim ostalim situacijama crta levo ka desno.
	 * Odnosno, ako aliens idu ka desno, iscrtace "alien_index = 10 - i"-tog aliena. U suprotnom ce iscrtati "alien_index = i"-tog alien-a.
	 */
	int alien_index = 0;

	// Player bullet vrednosti
	player_bullet_status = READY;
	timer_for_player_bullet_destroy = 0;
	special_player_bullet = 23;
	current_player_bullet = 0;

	// Alien bullet vrednosti
	timer_for_alien_bullet_spawn = 1150;
	alien_bullet_spawn_time = 1150;

	delay_ms = 2;


	calculate_timer_for_ufo_spawn();

	change_sprite_color(PLAYER_SPAWN_Y, 16, 8, ship);
	copy_player_ship();
	player_ship->addr = 0;

	for(int i = 0; i < 5; i++)
	{
		alien_bullet[i].x = 0;
		alien_bullet[i].y = 0;
		alien_bullet[i].type = 2;
		alien_bullet[i].sprite = 0;
		alien_bullet[i].status = READY;
		alien_bullet[i].timer_for_move = 0;
		alien_bullet[i].timer_for_sprite_change = 0;
		alien_bullet[i].timer_for_destroy = 0;
	}

	for(int i = 0; i < 4; i++)
	{
		row_base[i].x = 40 + 48 * i;
		row_base[i].y = BASE_Y;
		row_base[i].addr = draw_bitmap_with_clear_background(40 + 48 * i, BASE_Y, 24, 16, base);
		row_base[i].alive = 2;
	}

	for(int i = 0; i < 15; i++)
		draw_bitmap_with_clear_background(16 * i, BOTTOM_LINE_Y, 16, 1, bottom_line);

	draw_score_labels();
	check_and_draw_current_score();
	draw_high_score();
	draw_lives();

	int alien_spawn_x =  41;
	int alien_spawn_y = get_alien_spawn_y_for_current_wave();
	
	short* alien_bitmap;
	sw_sprite* alien_row;
	int alien_sprite_width = 0;

	// Spwan-ovanje alien-a.
	for(int j = ROW_5_OCTOPUS; j >= ROW_1_SQUID; j--)
	{

		switch(j)
		{
			case ROW_5_OCTOPUS:
				alien_row = row_5_octopus;
				alien_bitmap = octopus0;
				alien_sprite_width = 12;
				break;
			case ROW_4_OCTOPUS:
				alien_row = row_4_octopus;
				break;
			case ROW_3_CRAB:
				alien_row = row_3_crab;
				alien_bitmap = crab0;
				break;
			case ROW_2_CRAB:
				alien_row = row_2_crab;
				break;
			case ROW_1_SQUID:
				alien_row = row_1_squid;
				alien_bitmap = squid0;
				alien_sprite_width = 8;
				break;
		}

		for(int i = 0; i < 11; i++)
		{
			delay(16);
			initialize_alien(
				&alien_row[i],
				alien_spawn_x + 16 * i,
				alien_spawn_y,
				alien_sprite_width,
				8,
				alien_bitmap,
				2);
		}

		alien_spawn_y -= 16;
	}
	delay(16);
	

	while (1)
	{
		if(game_state == PLAY)
		{
			/****** UFO PROVERE ******/

			if(ufo_status == DEAD
			   && number_of_aliens >= 8)
			{
				if(timer_for_ufo_spawn <= 0)
				{
					spawn_ufo();
					calculate_timer_for_ufo_spawn();
				}
				timer_for_ufo_spawn -= 2;
			}
			else if(ufo_status == ALIVE)
			{
				if(timer_for_ufo_move <= 0)
				{
					move_ufo();
					timer_for_ufo_move = 36;
				}
				timer_for_ufo_move -= 2;
			}
			else if(ufo_status == EXPLODING)
			{
				if(timer_for_ufo_death == 1200)
				{
					clear_bitmap_test(ufo_position_X, 35, 16, 8);
					draw_bitmap_with_clear_background(ufo_position_X, 35, 24, 8, ufo_explosion);
							
				}
				else if(timer_for_ufo_death == 600)
				{
					clear_bitmap_test(ufo_position_X, 35, 24, 8);
					sprintf(str, "%d", ufo_score);
					draw(ufo_position_X, 35, PURPLE, str);
				}
				else if(timer_for_ufo_death <= 0)
				{
					ufo_status = DEAD;
					clear_bitmap_test(ufo_position_X, 35, 24, 8);
					ufo_position_X = 0;
					score += ufo_score;
					check_and_draw_current_score();
				}
				timer_for_ufo_death -= 2;
			}
			

			/****** PLAYER BULLET PROVERE ******/

			if(player_bullet_status == EXPLODING)
			{
				if(timer_for_player_bullet_destroy == 150)
				{
					player_bullet_def -> addr = 0;
					draw_bitmap_with_clear_background(
						player_bullet_def->x - 3, 
						player_bullet_def->y - 3, 
						8, 
						8, 
						player_bullet_explosion);
				}
				else if(timer_for_player_bullet_destroy <= 0)
				{
					player_bullet_status = READY;
					clear_bitmap_with_specific_shape(
						player_bullet_def->x - 3, 
						player_bullet_def->y - 3, 
						8, 
						8, 
						player_bullet_explosion);
				}
				timer_for_player_bullet_destroy -= 2;
			}

			if(player_bullet_status == MOVING)
			{
				for(int i = 0; i < 5; i++)
				{
					if(alien_bullet[i].status > 0 && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
						check_player_bullet_collision_with_alien_bullet(i);
				}
			}
			if(player_bullet_status == MOVING)
			{
				check_player_bullet_collision_with_alien();
			}
			if(player_bullet_status == MOVING)
			{
				check_player_bullet_collision_with_base();
			}
			if(player_bullet_status == MOVING)
			{
				if(player_bullet_def -> y <= 30)
				{
					set_player_bullet_to_explode();
				}
				else
				{
					player_bullet_def->y -= 1;
					change_sprite_color(player_bullet_def->y, 8, 4, player_bullet);
					copy_player_bullet_def();
				}
			}

			/****** ALIEN BULLET PROVERE ******/
			
			for(int i = 0; i < 5; i++)
			{
				if(alien_bullet[i].status == MOVING)
				{
					if(alien_bullet[i].timer_for_move <= 0)
					{
						clear_current_alien_bullet_sprite(i);
						alien_bullet[i].y += 5;
						check_alien_bullet_collision_with_environment(i);
						if(alien_bullet[i].status == MOVING)
							draw_alien_bullet_sprite(i);
						alien_bullet[i].timer_for_move = 64;
					}
					alien_bullet[i].timer_for_move -= 2;
				}
				else if(alien_bullet[i].status == EXPLODING)
				{
					if(alien_bullet[i].timer_for_destroy == 150)
					{
						draw_bitmap_with_clear_background(
							alien_bullet[i].x-2, 
							alien_bullet[i].y, 
							8, 
							8, 
							alien_bullet_explosion);
					}
					else if(alien_bullet[i].timer_for_destroy <= 0)
					{
						clear_bitmap_with_specific_shape(
							alien_bullet[i].x-2, 
							alien_bullet[i].y, 
							8, 
							8, 
							alien_bullet_explosion);
						if(alien_bullet[i].x-2 <= 32 + 16 * (lives-1))
							draw_lives();
						//alien_bullet[alien_bullet_index].timer_for_destroy = 0;
						alien_bullet[i].sprite = 0;
						alien_bullet[i].status = READY;
					}
					alien_bullet[i].timer_for_destroy -= 2;
				}
			}

			/****** PLAYER SPAWN PROVERE ******/

			if(player_alive == 3 && player_spawn_current_time == player_spawn_timer)
				spawn_player();
			else
				player_spawn_current_time+=2;

			if(player_alive == 2 || player_alive == 3)
			{
				if(number_of_aliens == 0)
				{
					delay(1000);
					change_current_wave();
					cls(0);
					return 0;
				}

				if(death_timer >= 600)
				{
					destroy_alien();
				}
				else if(death_timer == 0)
				{
					/*
					 * Provere za pomeranje alien-a.
					 * movement_step je step na kom jedan od row-ova mora da se pomeri.
					 * kada current_step postane jednak movement_step * a, tada mora da
					 * se pomeri (6 - a)-ti row alien-a (npr. na movement_step * 2 se
					 * pomera row_4_octopus).
					 */
					if(current_step == movement_step)
					{
						/*
						 * Samo u prvom movement step-u se menja distance jer je u ovom ciklusu.
						 * Ako samo jedan alien ostane, on ide brze ka levo nego ka desno.
						 * To je simulirano promenom distance.
						 */
						if(number_of_aliens == 1 
						&& direction == 9
						&& distance != 1)
						{
							distance = 1;
						}
						else if(number_of_aliens == 1 
						&& direction == 3  
						&& distance != 2 
						&& leftmost_alien_X() % 2 == 0)
						{
							distance = 2;
						}
						else if(number_of_aliens < 32 
						&& distance != 2 
						&& leftmost_alien_X() % 2 == 0)
						{
							distance = 2;
						}

						if(sprite_version == 0)
							alien_sprite = octopus0;
						else
							alien_sprite = octopus1;

						for(int i = 0; i < 11; i++) {

							if(direction == 3)
								alien_index = 10-i;
							else
								alien_index = i;

							if(row_5_octopus[alien_index].alive == 0)
							{
								continue;
							}
							else
							{
								switch(direction)
								{
									case 3:
										row_5_octopus[alien_index].x += distance;
										break;
									case 9:
										row_5_octopus[alien_index].x -= distance;
										break;
									default:
										row_5_octopus[alien_index].y += 8;
								}

								row_5_octopus[alien_index].addr = move_bitmap_test(row_5_octopus[alien_index].x, row_5_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
							}
						}
					}
					else if(current_step == movement_step * 2)
					{
						if(sprite_version == 0)
							alien_sprite = octopus0;
						else
							alien_sprite = octopus1;

						for(int i = 0; i < 11; i++) {

							if(direction == 3)
								alien_index = 10-i;
							else
								alien_index = i;

							if(row_4_octopus[alien_index].alive == 0)
							{
								continue;
							}
							else
							{
								switch(direction)
								{
									case 3:
										row_4_octopus[alien_index].x += distance;
										break;
									case 9:
										row_4_octopus[alien_index].x -= distance;
										break;
									default:
										row_4_octopus[alien_index].y += 8;
								}

								row_4_octopus[alien_index].addr = move_bitmap_test(row_4_octopus[alien_index].x, row_4_octopus[alien_index].y, 12, 8, alien_sprite, direction, distance);
							}
						}
					}
					else if(current_step == movement_step * 3)
					{
						if(sprite_version == 0)
							alien_sprite = crab0;
						else
							alien_sprite = crab1;

						for(int i = 0; i < 11; i++) {

							if(direction == 3)
								alien_index = 10-i;
							else
								alien_index = i;

							if(row_3_crab[alien_index].alive == 0)
							{
								continue;
							}
							else
							{
								switch(direction)
								{
									case 3:
										row_3_crab[alien_index].x += distance;
										break;
									case 9:
										row_3_crab[alien_index].x -= distance;
										break;
									default:
										row_3_crab[alien_index].y += 8;
								}

								row_3_crab[alien_index].addr = move_bitmap_test(row_3_crab[alien_index].x, row_3_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);
							}
						}
					}
					else if(current_step == movement_step * 4)
					{
						if(sprite_version == 0)
							alien_sprite = crab0;
						else
							alien_sprite = crab1;

						for(int i = 0; i < 11; i++) {

							if(direction == 3)
								alien_index = 10-i;
							else
								alien_index = i;

							if(row_2_crab[alien_index].alive == 0)
							{
								continue;
							}
							else
							{
								switch(direction)
								{
									case 3:
										row_2_crab[alien_index].x += distance;
										break;
									case 9:
										row_2_crab[alien_index].x -= distance;
										break;
									default:
										row_2_crab[alien_index].y += 8;
								}

								row_2_crab[alien_index].addr = move_bitmap_test(row_2_crab[alien_index].x, row_2_crab[alien_index].y, 12, 8, alien_sprite, direction, distance);

							}
						}
					}
					else if(current_step >= movement_step * 5)
					{
						if(sprite_version == 0)
							alien_sprite = squid0;
						else
							alien_sprite = squid1;

						for(int i = 0; i < 11; i++) {

							if(direction == 3)
								alien_index = 10-i;
							else
								alien_index = i;

							if(row_1_squid[alien_index].alive == 0)
							{
								continue;
							}
							else
							{
								switch(direction)
								{
									case 3:
										row_1_squid[alien_index].x += distance;
										break;
									case 9:
										row_1_squid[alien_index].x -= distance;
										break;
									default:
										row_1_squid[alien_index].y += 8;
								}

								row_1_squid[alien_index].addr = move_bitmap_test(row_1_squid[alien_index].x, row_1_squid[alien_index].y, 8, 8, alien_sprite, direction, distance);

							}
						}
						
						/*
						 * Na poslednjem movement_step-u se menja verzija sprite-ova
						 * koje ce svi alien-i posle reset-a step-a imati, kao i pravac
						 * u kom ce se kretati.
						 */
						
						sprite_version ^= 1;

						current_step=0;
						if(direction == 18) {
							direction = 3;
						} else if(leftmost_alien_X() <= 12 && direction != 18) {
							direction = 18;
						} else if(direction == 6) {
							direction = 9;
						} else if(rightmost_alien_X() >= 224 && direction != 6) {
							direction = 6;
						}


					}

					current_step++;

					if(lowest_alien_Y() >= PLAYER_SPAWN_Y)
					{
						lives = 0;
						destroy_player();
					}
				}
				else
				{
					death_timer+=4;
				}

				/*
				 * player_movement_skip_frame je ubacen jer, ako njega ne bi bilo,
				 * player_ship bi se prebrzo pomerao.
				 */
				if(player_movement_skip_frame == 0)
					player_movement_skip_frame = 3;
				else
					player_movement_skip_frame--;

				for(int i = 0; i < 5; i++)
					if(alien_bullet[i].status == MOVING && alien_bullet[i].spawn_y <= PLAYER_SPAWN_Y)
						check_alien_bullet_collision_with_player(i);


				if(timer_for_alien_bullet_spawn <= 0)
				{
					for(int i = 0; i < 5; i++)
					{
						if(alien_bullet[i].status == READY)
						{
							spawn_alien_bullet(i);
							timer_for_alien_bullet_spawn = alien_bullet_spawn_time;
							break;
						}
					}
				}
				timer_for_alien_bullet_spawn -= 2;
			}
			else if(player_alive == 1)
			{
				player_death_timer+=2;
				if(player_death_timer < 990 && player_death_timer % 90 == 0)
				{
					change_player_explosion_sprite();
				}
				else if(player_death_timer == 990)
				{
					clear_player_and_redraw_lives();
					if(lives <= 0)
					{
						player_alive = 0;
					}

				}
				else if(player_death_timer == 3000)
				{
					player_alive = 0;
				}
			}
			else if(player_alive == 0)
			{
				if(lives > 0)
					spawn_player();
				else
				{
					update_high_score_if_lower_than_score();
					display_game_over_text();
					delay(3000);
					cls(0);
					current_screen = MAIN_MENU_SCREEN;
					return 0;
				}
			}
			if(bonus_life_awarded == FALSE && score >= 1500)
			{
				lives++;
				bonus_life_awarded = TRUE;
				draw_lives();
			}
		}

		// Provera key-eva i mis-a
		if(player_alive == 2)
		{

			vkp = is_key_pressed();
			vkr = is_key_released();
			if ((vkp == 0) && (vkr == 0))
			{
				vkp = old;
			}
			if ((vkr != 0) && (vkr == old))
			{
				vkp = 0;
				old = 0;
			}
			if (vkp != 0 && vkp != VK_SPACE && vkp != VK_ESC)
				old = vkp;
			
			if(game_state == PLAY)
			{
				switch (vkp)
				{
					case VK_LEFT_ARROW:
						if(player_movement_skip_frame == 0)
						{
							player_ship->x -= 1;
							if (player_ship->x < 0)
								player_ship->x = 0;
						}
						break;
					case VK_RIGHT_ARROW:
						if(player_movement_skip_frame == 0)
						{
							player_ship->x += 1;
							if (player_ship->x > 224)
								player_ship->x = 224;
						}
						break;
					case VK_SPACE:
						fire_bullet_if_ready();
						break;
				}

			}

			switch (vkp)
			{
				case VK_F1:
					toggle_play_pause();
					break;
				case VK_ESC:
					return 1;
			}
			
		}

		delay(delay_ms);
	}
}

int main()
{

	init_stdio();
	video_mode(1);

	cls(0);	

	//int start = get_millis();
	//asm("push r1\npush r2\n push r3\nmov.w r1, 1024\nmov.w r2, 9024\nmov.w r3, 30000\nblit\npop r3\npop r2\npop r1\n");

	copy_player_bullet_def();
	int shouldExit = 0;
	while(1)
	{
		switch(current_screen)
		{
			case MAIN_MENU_SCREEN:
				shouldExit = switch_to_main_menu_screen();
				break;
			case GET_READY_SCREEN:
				shouldExit = switch_to_get_ready_screen();
				break;
			case PLAY_SCREEN:
				shouldExit = switch_to_play_screen();
				break;	
		}
		if (shouldExit == 1)
			break;
	}
	cls(0);
	return 0;
}

