// Inherit the parent event
event_inherited();
state = ENEMY_STATE.WANDER;
image_speed = 0;

//Sprites
spriteMove = spr_bat_move;
spriteIdle = spr_bat_move;
spriteAttack = spr_bat_move;
spriteHurt = spr_bat_hurt;
spriteDie = spr_bat_die;

//Scripts
enemyScript[ENEMY_STATE.WANDER] = batWander;
enemyScript[ENEMY_STATE.CHASE] = batChase;
enemyScript[ENEMY_STATE.ATTACK] = -1;
enemyScript[ENEMY_STATE.HURT] = slimeHurt;
enemyScript[ENEMY_STATE.DIE] = slimeDie;

entityDropList = choose
(
	[obj_coin],
	[obj_coin, obj_coin],
	[obj_bomb_drop],
	[obj_axe_drop]
)