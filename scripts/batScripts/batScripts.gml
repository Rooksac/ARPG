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
		 //enter attack state
		if (point_distance(x, y, obj_player.x, obj_player.y) <= enemyAttackRadius){
			drawExclam()
			stateNext = ENEMY_STATE.ATTACK;
			stateWaitDuration = 15;
			state = ENEMY_STATE.WAIT;
			direction = dir;
			diveDistanceRemaining = diveDistance;
			charge = 0;
		}
	}
}

function batAttack(){
	//just arriving in state
	if (++charge<chargeTime){
		playerAnimateSprite()
		z+= 2;
	}
	else{
		z = 0;
		diveDistanceRemaining = max(0, diveDistanceRemaining - diveSpeed)
		var spd = diveSpeed;
		if (sprite_index != spriteAttack){
			sprite_index = spriteAttack;
			dir = point_direction(x, y, obj_player.x, obj_player.y)
			xTo = x + lengthdir_x(diveDistance, dir);
			yTo = y + lengthdir_y(diveDistance, dir);
			direction = dir;
		}
		var totalFrames = sprite_get_number(sprite_index)/4;
		image_index = (CARDINAL_DIR * totalFrames) + min(((1-(diveDistanceRemaining / diveDistance)) * totalFrames), totalFrames-1);
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
}