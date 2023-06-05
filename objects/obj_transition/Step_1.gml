/// progress transition

with (obj_player){
	state = playerStateTransition;
}
if (leading == OUT){
	percent = min(1, percent + TRANSITION_SPEED)
	//if screen is fully covered
	if (percent >= 1){
		leading = IN;
		room_goto(target);
	}
}
else{
	percent = max(0, percent - TRANSITION_SPEED)
	//if screen fully revealed
	if (percent <= 0){
		with (obj_player){
			state = playerStateFree;
		}
		instance_destroy()
	}
}
