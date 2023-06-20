// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateDead(){
	vSpeed = 0;
	hSpeed = 0;
	
	//if just arriving in the state
	if(sprite_index != spriteDead && sprite_index != spriteDie){
		sprite_index = spriteDie;
		image_index = 0
		image_speed = 0.7
	}
	
	if (image_index + image_speed > image_number){
		if (sprite_index == spriteDie){
			image_speed = max(0, image_speed - 0.06)
			if (image_speed < 0.07){
				sprite_index = spriteDead;
				image_index = (sprite_get_number(sprite_index) / 4) * CARDINAL_DIR;
				image_speed = 0;
				global.targetX = -1;
				global.targetY = -1;
				roomTransition(TRANS_TYPE.FADE, room_village);
			}
		}
	}
}