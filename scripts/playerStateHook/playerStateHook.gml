
function playerStateHook(){
	hSpeed = 0;
	vSpeed = 0
	
	//if just arriving in this state
	if (sprite_index != spriteHook){
		hook = 0;
		hookX = 0;
		hookY = 0;
		hookStatus = HOOK_STATUS.EXTENDING;
		hookedEntity = noone;
		sprite_index = spriteHook;
		image_index = CARDINAL_DIR;
		image_speed = 0;
	}
	
	//extend/retract hook
	var speedHookTemp = speedHook
	if (hookStatus != HOOK_STATUS.EXTENDING){
		speedHookTemp *= -1;
	}
	hook += speedHookTemp;
	switch (image_index){
		case 0: hookX = hook; break;
		case 1: hookY = -hook; break;
		case 2: hookX = -hook; break;
		case 3: hookY = hook; break;
	}
	//hookshot state machine
	switch (hookStatus){
		case HOOK_STATUS.EXTENDING:
		{
			//finish extending
			if (hook >= distanceHook){
				hookStatus = HOOK_STATUS.MISSED;
			}
			//check for a hit
			if tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), x+hookX, y+hookY){
				hookStatus = HOOK_STATUS.MISSED
			}
			var hookHit = collision_circle(x+hookX, y+hookY, 3, obj_entity, false, true)
			if (hookHit != noone && global.iLifted != hookHit){
				//act depending on what is hit
				switch(hookHit.entityHookable){
					default: //not a hookable entity
					{
						//potentially harm enemy
						if (object_is_ancestor(hookHit.object_index, obj_enemy)){
							hurtEnemy(hookHit, 1, id, 5);
							hookStatus = HOOK_STATUS.MISSED;
						}
						else{
							if (hookHit.entityHitScript != -1){
								with(hookHit){
									script_execute(entityHitScript);
								}
								hookStatus = HOOK_STATUS.MISSED;
							}
						}
					}
					break;
					case 1:
					{
						hookStatus = HOOK_STATUS.PULLTOPLAYER;
						hookedEntity = hookHit;
					}
					break;
					case 2:
					{
						hookStatus = HOOK_STATUS.PULLTOENTITY;
						hookedEntity = hookHit;
					}
					break;
				}
			}
		}
		break;
		//pull hooked entity towards player
		case HOOK_STATUS.PULLTOPLAYER:
		{
			with (hookedEntity){
				x = other.x + other.hookX;
				y = other.y + other.hookY;
			}
			break;
		}
		//pull player towards hooked entity
		case HOOK_STATUS.PULLTOENTITY:
		{
			switch (image_index)
			{
				case 0: x+= speedHook; break;
				case 1: y -= speedHook; break;
				case 2: x -= speedHook; break;
				case 3: y += speedHook; break;
			}
		}
		break;
	}
	//finish retract and end state
	if (hook <= 0){
		hookedEntity = noone;
		state = playerStateFree;
	}
}