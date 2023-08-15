// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function openChest(){
	if (global.playerKeys > 0){
		global.playerKeys -= 1
		with (activate){
			show_debug_message(global.openChests[? chestID])
			if (image_index == 0 && global.openChests[? chestID] == false){
				image_speed = 1.0;
				dropItems(x, y, entityDropList)
				global.openChests[? chestID] = true
			}
		}
	}
	else{
		if (global.openChests[? activate.chestID] == false){
			textBoxCreate("Locked!\nYou'll need a key.")
		}
	}
}