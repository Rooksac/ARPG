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
flashShader = sh_white_flash

animationEndScript = -1

if (global.targetX != -1){
	x = global.targetX
	y = global.targetY
	direction = global.targetDirection
}