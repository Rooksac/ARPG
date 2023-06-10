// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slimeChase(){
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
		
		if (point_distance(x, y, obj_player.x, obj_player.y) <= enemyAttackRadius){
			state = ENEMY_STATE.ATTACK;
			sprite_index = spriteAttack
			localFrame = 0
		}
	}
	//update sprite
		direction = dir
		playerAnimateSprite()
}