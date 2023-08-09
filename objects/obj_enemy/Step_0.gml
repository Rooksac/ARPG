if (!global.gamePaused && obj_player.state != playerStateLocked){
	if (enemyScript[state] != -1){
		script_execute(enemyScript[state])
	};
	
}
else{
	image_speed = 0.0
};

depth = -bbox_bottom;