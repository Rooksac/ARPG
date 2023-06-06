// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateFree(){
	//movement
	hSpeed = lengthdir_x(inputMagnitude*speedWalk, inputDirection)
	vSpeed = lengthdir_y(inputMagnitude*speedWalk, inputDirection)

	playerCollision();

	//update sprite index
	var oldSprite = sprite_index
	if(inputMagnitude != 0){
		direction = inputDirection
		sprite_index = spriteRun
	}
	else{
		sprite_index = spriteIdle
	}
	if(oldSprite != sprite_index){
		localFrame = 0
	}

	//animate sprite
	playerAnimateSprite()
	
	//change states
	
	//attack logic
	if(keyAttack){
		state = playerStateMelee;
		stateAttack = attackSlash;
	}
	//roll logic
	if (keyRoll){
		state = playerStateRoll
		moveDistanceRemaining = distanceRoll
	}
	//interact logic
	if (keyActivate){
		//check for entity to activate
		var activateX = lengthdir_x(10, direction)
		var activateY = lengthdir_y(10, direction)
		activate = instance_position(x+activateX, y+activateY, obj_entity)
		
		if(activate == noone || activate.entityActivateScript == -1){
			//if we are holding something, throw it
			if (global.iLifted != noone){
				playerThrow();
			}
		}
		else{
			//activate entity
			scriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs)
			//if entity is npc, make it face the player
			if (activate.entityNPC){
				with (activate){
					direction = point_direction(x, y, other.x, other.y);
					localFrame = 0
					image_index = localFrame + (CARDINAL_DIR * (sprite_get_number(sprite_index) / 4))
				}
			}
		}
	}
			
}