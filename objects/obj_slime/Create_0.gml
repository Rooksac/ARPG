// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;

//Sprites
spriteMove = spr_slime_move;
spriteIdle = spr_slime_idle;

//Scripts
enemyScript[ENEMY_STATE.WANDER] = slimeWander;
