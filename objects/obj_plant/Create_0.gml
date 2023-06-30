/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

entityDropList = choose
(
	[obj_coin],
	[obj_coin, obj_coin],
	[obj_bomb_drop],
	[obj_axe_drop],
	-1,
	-1
)

