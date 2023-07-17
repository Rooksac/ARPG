// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGame(){
	//create save map
	var map = ds_map_create();
	
	map[? "room"] = room;
	map[? "playerHealth"] = global.playerHealth;
	map[? "playerHealthMax"] = global.playerHealthMax;
	map[? "playerCoins"] = global.playerCoins;
	map[? "playerItemUnlocked"] = global.playerItemUnlocked;
	map[? "playerAmmo"] = global.playerAmmo;
	map[? "playerEquipped"] = global.playerEquipped;
	map[? "playerHasItems"] = global.playerHasItems;
	map[? "targetX"] = global.targetX;
	map[? "targetY"] = global.targetY;
	
	var questMap = ds_map_create();
	ds_map_copy(questMap, global.questStatus);
	ds_map_add_map(map, "questStatus", questMap);
	
	//save to a string
	var saveString = json_encode(map);
	saveStringToFile("Save" + string(global.gameSaveSlot) + ".sav", saveString);
	show_debug_message(saveString);
	
	//nuke data
	ds_map_destroy(map);
	show_debug_message("game saved!");
}

function saveStringToFile(filename, str){
		var buffer = buffer_create(string_byte_length(str)+1, buffer_fixed, 1);
		buffer_write(buffer, buffer_string, str);
		buffer_save(buffer, filename);
		buffer_delete(buffer);
}