// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function useItemBomb(){
	if (global.playerAmmo[ITEM.BOMB] > 0 && global.iLifted = noone){
		global.playerAmmo[ITEM.BOMB] --;
		var bomb = instance_create_layer(x, y, "Instances", obj_bomb);
		activateLiftable(bomb);
	}
}

function useItemAxe(){
	if (global.playerAmmo[ITEM.AXE] > 0 && global.iLifted == noone){
		global.playerAmmo[ITEM.AXE]--;
		playerActOutAnimation(spr_sorcerer_throw_axe, throwAxe);
	}
}

function throwAxe(){
	with instance_create_depth(floor(x), floor(y)-7, depth, obj_axe){
		direction = other.direction;
		direction = CARDINAL_DIR * 90;
		image_speed = 0;
		image_index = CARDINAL_DIR;
		speed = 6;
	}
}

function useItemHook(){

}