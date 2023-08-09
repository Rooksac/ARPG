
// Inherit the parent event
event_inherited();
image_speed = 0.0
entityDropList = [obj_coin, obj_coin, obj_coin, obj_coin, obj_coin, obj_coin, obj_coin, obj_coin]
if (global.openChests[? chestID] == true){
	image_index = sprite_get_number(sprite_index) - 1
}
else{
	image_index = 0
}

