// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateBonk(){
	//movement
	hSpeed = lengthdir_x(speedBonk, direction-180)
	vSpeed = lengthdir_y(speedBonk, direction-180)
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedBonk)
	
	var collided = playerCollision()
	
	//update sprite
	sprite_index = spriteHurt;
	image_index = CARDINAL_DIR - 2;
	
	//change height
	z = sin(((moveDistanceRemaining/distanceBonk) * pi)) * distanceBonkHeight;
	
	//change state
	if(moveDistanceRemaining <= 0){
		state = playerStateFree
	}
}