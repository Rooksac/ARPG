state = playerStateFree;
lastState = state;
stateAttack = attackSlash;
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));
hitByAttack = -1;

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2;
z = 0;

