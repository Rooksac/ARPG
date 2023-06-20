// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slimeAttack(){
	playerAnimateSprite()
	if (animationEnd){
		sprite_index = spriteIdle;
		localFrame = 0;
		stateNext = ENEMY_STATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMY_STATE.WAIT;
	}
}

function slimeAttackTest(){
	var spd = 1.5;
	//dont move while in the first frame of animation
	if (floor(image_index) <= firstFrame){
		spd = 0
	}
	//animate until the last frame of the animation, then stop
	if(floor(image_index) == lastFrame){
		image_speed = 0.0
	}
		
	//calculate remaining distance to move
	var distanceToGo = point_distance(x, y, xTo, yTo);
	//check if our current speed is less than the remaining distance to go
	if (distanceToGo > spd){
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(spd, dir);
		vSpeed = lengthdir_y(spd, dir);
		//move and check for collision
		if (enemyTileCollision() == true){
			xTo = x;
			yTo = y;
		}
	}
	else{
		x = xTo;
		y = yTo;
		sprite_index = spriteIdle;
		localFrame = 0;
		stateNext = ENEMY_STATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMY_STATE.WAIT;
	}
}