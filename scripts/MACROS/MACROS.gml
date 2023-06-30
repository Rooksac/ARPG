// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro FRAME_RATE 60
#macro TILE_SIZE 16
#macro CARDINAL_DIR round(direction/90)
#macro ROOM_START room_village

#macro RESOLUTION_W 640
#macro RESOLUTION_H 360

#macro TRANSITION_SPEED 0.02
#macro OUT 0
#macro IN 1

enum ENEMY_STATE
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}

enum ITEM
{
	NONE,
	BOMB,
	AXE,
	HOOK,
	TYPE_COUNT
}