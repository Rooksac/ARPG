//cause a room transition

if(instance_exists(obj_player) && (position_meeting(obj_player.x, obj_player.y, id))){
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = obj_player.direction;
		with (obj_player){
			state = playerStateTransition;
		}
		roomTransition(TRANS_TYPE.FADE, targetRoom);
		instance_destroy();
}