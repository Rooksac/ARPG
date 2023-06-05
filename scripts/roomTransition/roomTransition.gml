// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function roomTransition(tType, targetRoom){
	if (!instance_exists(obj_transition)){
		with (instance_create_depth(0, 0, -9999, obj_transition)){
			type = tType;
			target = targetRoom
		}
	}
	else{
		show_debug_message("Trying to transition while transition is happening")
	}
}