keyUp = false;
keyDown = false;
keyLeft = false;
keyRight = false;
keyAttack = false;
keyRoll = false;
keyActivate = false;
keyItem = false;
keyItemSelectUp = false;
keyItemSelectDown = false;

inputDirection = 0;
inputMagnitude = 0;

speedRoll = 6;
distanceRoll = 100;
distanceBonk = 40;
distanceBonkHeight = 12;
speedBonk = 1.5;
localFrame = 0;
speedHook = 3.0;
distanceHook = 100;

state = playerStateFree;
lastState = state;
stateAttack = attackSlash;
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));
hitByAttack = -1;

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 3;
z = 0;
invulnerable = 0;
flash = 0;
flashShader = sh_white_flash;

hook = 0;
hookX = 0;
hookY = 0;
hookSize = sprite_get_width(spr_hook_chain);

animationEndScript = -1

if (global.targetX != -1){
	x = global.targetX
	y = global.targetY
	direction = global.targetDirection
}