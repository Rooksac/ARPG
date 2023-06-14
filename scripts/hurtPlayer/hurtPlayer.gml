// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hurtPlayer(dir, force, dmg){
	if (obj_player.invulnerable <= 0){
		global.playerHealth = max(0, global.playerHealth - dmg);
		
		if (global.playerHealth > 0){
			with (obj_player){
				state = playerStateBonk;
				direction = dir - 180;
				moveDistanceRemaining = force;
				screenShake(2, 10);
				invulnerable = 60;
				flash = 0.7;
				flashShader = sh_red_flash;
			}
		}
		else{
			//kill the player
		}
	}
}