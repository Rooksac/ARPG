// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slimeWander(){
	//check if reached destination or given up
	if ((x == xTo && y == yTo) || (timePassed > enemyWanderDistance/enemySpeed)){
		hSpeed = 0;
		vSpeed = 0;
		//end Move animation
		if (sprite_index == spriteMove && animationEnd){
			sprite_index = spriteIdle;
			localFrame = 0;
		}
		//set new target destination
		if (++wait >= waitDuration){
			wait = 0;
			timePassed = 0;
			dir = point_direction(x, y, xstart, ystart) + irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	}
	//move to new destination
	else{
		if (sprite_index != spriteMove){
			sprite_index = spriteMove;
			localFrame = 0
			direction = dir
		}
		timePassed++;
		var distanceToGo = point_distance(x, y, xTo, yTo);
		var speedThisFrame = enemySpeed;
		if (distanceToGo < enemySpeed){
			speedThisFrame = distanceToGo
		};
		//dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(speedThisFrame, dir);
		vSpeed = lengthdir_y(speedThisFrame, dir);
		//Collide and move
		enemyTileCollision()
	}
	//check for aggro
	if (++aggroCheck >= aggroCheckDuration){
		if (instance_exists(obj_player) && point_distance(x, y, obj_player.x, obj_player.y) <= enemyAggroRadius){
			state = ENEMY_STATE.CHASE;
			target = obj_player;
		};
	}
	//animate Sprite
		playerAnimateSprite()
}