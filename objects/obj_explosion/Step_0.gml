/// @description Insert description here
// You can write your code in this editor
if (!global.gamePaused){
	image_speed = 1.0;
	if (image_index < 4){
		var entityHitList = ds_list_create();
			//adds all enemies hit by collision to that list and returns the number of enemies hit
			var entityCount = instance_place_list(x, y, obj_entity, entityHitList, false);
			var entity = noone;
			//if any enimies hit, check to see if they have already been hit by this attack
			while (entityCount>0){
				entity = entityHitList[| 0];
					//if they havent, add them to the list of enemies hit by this attack and hit them
					if (ds_list_find_index(collisionHistory, entity)==-1){
						ds_list_add(collisionHistory, entity);
						with (entity){
							if (object_is_ancestor(object_index, obj_enemy)){
								hurtEnemy(id, 15, other.id, 20);
							}
							if (entityHitScript != -1){
								script_execute(entityHitScript)
							}
						}
						ds_list_add(collisionHistory, entity)
					}
					ds_list_delete(entityHitList, 0);
					entityCount --;
				}
				//destroy list of enemies hit this frame and reset collision mask
			ds_list_destroy( entityHitList)
			}
			
	}
else{
	image_speed = 0.0;
}
