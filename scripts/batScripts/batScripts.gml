// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function batWander(){
	//check if reached destination or given up
	if ((x == xTo && y == yTo) || (timePassed > enemyWanderDistance/enemySpeed)){
		hSpeed = 0;
		vSpeed = 0;
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
		direction = dir;
		playerAnimateSprite()
}

function batChase(){
	if (sprite_index != spriteMove){
		sprite_index = spriteMove
		localFrame = 0
	}
	if (instance_exists(obj_player)){
		xTo = obj_player.x;
		yTo = obj_player.y;
		
		var distanceToGo = point_distance(x, y, xTo, yTo);
		dir = point_direction(x, y, xTo, yTo);
		if (distanceToGo > enemySpeed){
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		}
		else{
			hSpeed = lengthdir_x(distanceToGo, dir);
			vSpeed = lengthdir_y(distanceToGo, dir);
		}
		//collide and move
		enemyTileCollision()
		//update sprite
		direction = dir
		playerAnimateSprite()
		// enter attack state
		//if (point_distance(x, y, obj_player.x, obj_player.y) <= enemyAttackRadius){
		//	state = ENEMY_STATE.ATTACK;
		//	sprite_index = spriteAttack;
		//	image_speed = 1.0;
		//	xTo += lengthdir_x(5, dir);
		//	yTo += lengthdir_y(5, dir);
		//	direction = dir;
		//	firstFrame = (sprite_get_number(sprite_index) / 4) * CARDINAL_DIR;
		//	if (direction > 315){
		//		firstFrame = 0;
		//	}
		//	image_index = firstFrame;
		//	lastFrame = firstFrame + 4;
		//}
	}
}