// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;

//Sprites
spriteMove = spr_slime_move;
spriteIdle = spr_slime_idle;
spriteAttack = spr_slime_attack;

//Scripts
enemyScript[ENEMY_STATE.WANDER] = slimeWander;
enemyScript[ENEMY_STATE.CHASE] = slimeChase;
enemyScript[ENEMY_STATE.ATTACK] = slimeAttack;
