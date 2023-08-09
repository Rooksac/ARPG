// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadGame(slot){
	global.gameSaveSlot = slot;
	var file = "Save" + string(global.gameSaveSlot) + ".sav"
	if (file_exists(file)){
		//load the game data
		var json = loadJSONFromFile(file);
		//global variables
		global.playerHealth = json[? "playerHealth"];
		global.playerHealthMax = json[? "playerHealthMax"];
		global.playerCoins = json[? "playerCoins"];
		global.playerEquipped = json[? "playerEquipped"];
		global.playerHasItems = json[? "playerHasItems"];
		global.targetX = json[? "targetX"];
		global.targetY = json[? "targetY"];
		global.caveOpen = json[? "caveOpen"];
		
		//lists to arrays
		for (var i = 0; i<ITEM.TYPE_COUNT; i++){
			global.playerItemUnlocked[i] = json[? "playerItemUnlocked"][|i];
			global.playerAmmo[i] = json[? "playerAmmo"][|i];	
		}
		
		//quest status
		ds_map_copy(global.questStatus, json[? "questStatus"]);
		ds_map_copy(global.openChests, json[? "openChests"]);
		
		//room
		roomTransition(TRANS_TYPE.SLIDE, json[? "room"])
		ds_map_destroy(json)
		return true
	}
	else{
		show_debug_message("no save in this slot")
		return false;
	}
	
}

function loadJSONFromFile(filename){
	var buffer = buffer_load(filename);
	var loadString = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);
	var json = json_decode(loadString);
	return json;
}