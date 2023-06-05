// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateRoll(){
	//movement
	hSpeed = lengthdir_x(speedRoll, direction)
	vSpeed = lengthdir_y(speedRoll, direction)
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll)
	
	var collided = playerCollision()
	
	//update sprite
	sprite_index = spriteRoll
	var totalFrames = sprite_get_number(sprite_index)/4
	image_index = (CARDINAL_DIR * totalFrames) + min(((1-(moveDistanceRemaining / distanceRoll)) * totalFrames), totalFrames-1)
	
	//change state
	if(moveDistanceRemaining <= 0){
		state = playerStateFree
	}
	
	if(collided){
		state = playerStateBonk;
		moveDistanceRemaining = distanceBonk;
		screenShake(5, 20)
	}
}