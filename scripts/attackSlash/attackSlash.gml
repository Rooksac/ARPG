function attackSlash(){
	//check if attack is just starting
	if(sprite_index != spriteAttack){
		sprite_index = spriteAttack
		localFrame = 0
		image_index = 0
		//clear hit list
		if (!ds_exists(hitByAttack, ds_type_list)){
			hitByAttack = ds_list_create()
		};
		ds_list_clear(hitByAttack);
	}
	calcAttack(spr_sorcerer_melee_HB)
	//update sprite
	playerAnimateSprite()
	//once animation completes, return player to free state
	if (animationEnd){
		state = playerStateFree
		animationEnd = false
	}
}