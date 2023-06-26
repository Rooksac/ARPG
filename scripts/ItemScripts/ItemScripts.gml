// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function useItemBomb(){
	if (global.playerAmmo[ITEM.BOMB] > 0 && global.iLifted = noone){
		global.playerAmmo[ITEM.BOMB] --;
		var bomb = instance_create_layer(x, y, "Instances", obj_bomb);
		activateLiftable(bomb);
	}
}

function useItemBow(){

}

function useItemHook(){

}