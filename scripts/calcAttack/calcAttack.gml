function calcAttack(hitbox){
	//set collision mask to be the hitbox of the attack
	mask_index = hitbox
	//creates list of enemies hit this frame
	var hitByAttackNow = ds_list_create()
	//adds all enemies hit by collision to that list and returns the number of enemies hit
	var hits = instance_place_list(x, y, obj_entity, hitByAttackNow, false)
	//if any enimies hit, check to see if they have already been hit by this attack
	if (hits>0){
		for (var i=0; i<hits; i++){
			var hitId = hitByAttackNow[|i];
			//if they havent, add them to the list of enemies hit by this attack and hit them
			if (ds_list_find_index(hitByAttack, hitId)==-1){
				ds_list_add(hitByAttack, hitId);
				with (hitId){
					if (object_is_ancestor(object_index, obj_enemy)){
						hurtEnemy(id, 5, other.id, 10);
					}
					if (entityHitScript != -1){
						script_execute(entityHitScript)
					}
				}
			}
		}
	}
	//destroy list of enemies hit this frame and reset collision mask
	ds_list_destroy(hitByAttackNow)
	mask_index = spriteIdle
}