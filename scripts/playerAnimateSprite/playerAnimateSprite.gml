// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerAnimateSprite(){
	var totalFrames = sprite_get_number(sprite_index) / 4
	image_index = localFrame + (CARDINAL_DIR * totalFrames)
	
	localFrame += sprite_get_speed(sprite_index)/FRAME_RATE
	if(localFrame >= totalFrames){
		animationEnd = true;
		localFrame -= totalFrames
	}
	else{
		animationEnd = false
	}
}