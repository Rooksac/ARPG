// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function roomToAreaName(roomName){
	switch (roomName){
		case room_village: return "The Village"; break;
		case room_forest: return "The Forest"; break;
		case room_cave: return "The Cave"; break;
		case room_shop: return "The Shop"; break;
		default: return "Unknown Area"; break;
	}
}