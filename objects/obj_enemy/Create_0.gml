// Inherit the parent event
event_inherited();
//intrinsic enemey variables
state = ENEMY_STATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 60;
wait = 0;
aggroCheck = 0;
aggroCheckDuration = 5;
stateNext = state;
statePrev = state;
stateWait = 0;
stateWaitDuration = 0;
corpseFade = 0;



//Enemy Sprites
localFrame = 0;
spriteIdle = spr_slime_idle;
spriteMove = spr_slime_move;

//Enemy Functions
enemyScript[ENEMY_STATE.IDLE] = -1;
enemyScript[ENEMY_STATE.ATTACK] = -1;
enemyScript[ENEMY_STATE.CHASE] = -1;
enemyScript[ENEMY_STATE.HURT] = -1;
enemyScript[ENEMY_STATE.WAIT] = enemyWait;
enemyScript[ENEMY_STATE.WANDER] = -1;
enemyScript[ENEMY_STATE.DIE] = -1;

