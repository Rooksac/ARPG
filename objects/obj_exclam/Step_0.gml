/// @description Insert description here
// You can write your code in this editor
if (image_index == sprite_get_number(sprite_index)-1){
	image_speed = 0.0;
	image_alpha -=1;
	if (image_alpha == 0){
		instance_destroy()
	}
}



