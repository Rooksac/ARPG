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
		var activateX = x + lengthdir_x(10, direction);
		var activateY = y + lengthdir_y(10, direction);
		var activateSize = 4;
		var activateList = ds_list_create();
		activate = noone;
		var entitiesFound = collision_rectangle_list(
			activateX - activateSize,
			activateY - activateSize,
			activateX + activateSize,
			activateY + activateSize,
			obj_entity,
			false,
			true,
			activateList,
			true
		);
		
		//if the first instance we find is the lifted entity or it has no script, check the next one. 
		while (entitiesFound > 0) {
			var check = activateList[|--entitiesFound];
			if ( check != global.iLifted && check.entityActivateScript != -1){
				activate = check;
				break;
			}
		}
		ds_list_destroy(activateList)
		
		if(activate == noone){
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
	if (keyItem && !keyActivate && global.playerHasItems && global.playerEquipped != ITEM.NONE){
		switch (global.playerEquipped){
			case ITEM.BOMB: useItemBomb(); break;
			case ITEM.BOW: useItemBow(); break;
			case ITEM.HOOK: useItemHook(); break;
			default: break;
		}
	}
	if (global.playerHasItems){
		var cycleDirection = keyItemSelectUp - keyItemSelectDown;
		if (cycleDirection != 0){
			do{
				global.playerEquipped += cycleDirection;
				if (global.playerEquipped < 1){
					global.playerEquipped = ITEM.TYPE_COUNT - 1;
				}
				if (global.playerEquipped >= ITEM.TYPE_COUNT){
					global.playerEquipped = 1;
				}
			}
			until (global.playerItemUnlocked[global.playerEquipped]);
		}
	}
}