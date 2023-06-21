// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activateLiftable(instId){
	if (global.iLifted == noone){
		playerActOutAnimation(obj_player.spriteLift);
		
		spriteIdle = spr_sorcerer_carry
		global.iLifted = instId;
		with (global.iLifted){
			lifted = true;
			persistent = true
		}
	}
}