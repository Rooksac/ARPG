// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;

//Sprites
spriteMove = spr_slime_move;
spriteIdle = spr_slime_idle;
spriteAttack = spr_slime_attack;
spriteHurt = spr_slime_hurt;
spriteDie = spr_slime_die;

//Scripts
enemyScript[ENEMY_STATE.WANDER] = slimeWander;
enemyScript[ENEMY_STATE.CHASE] = slimeChase;
enemyScript[ENEMY_STATE.ATTACK] = slimeAttack;
enemyScript[ENEMY_STATE.HURT] = slimeHurt;
enemyScript[ENEMY_STATE.DIE] = slimeDie;