// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slimeHurt(){
	sprite_index = spriteHurt;
	var distanceToGo = point_distance(x, y, xTo, yTo);
	//if the distance to go is less than the enemy speed
	if (distanceToGo > enemySpeed){
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		if (enemyTileCollision()){
			xTo = x;
			yTo = y;
		}
	}
	else{
		x = xTo;
		y = yTo;
		if (statePrev != ENEMY_STATE.ATTACK){
			state = statePrev;
		}
		else{
			state = ENEMY_STATE.CHASE;
		}
	}
	direction = dir
	playerAnimateSprite()
}