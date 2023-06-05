// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function textBoxCreate(str, responsesArr = [-1], bg = 2){
	var obj;
	//determines whether to create a text obj or a queued text obj
	if (instance_exists(obj_text)){
		obj = obj_text_queued
	}
	else{
		obj = obj_text
	}
	//creates obj
	with (instance_create_layer(0, 0, "Instances", obj)){
		messageText = str;
		//checks if that obj was created by another entity
		if (instance_exists(other)){
			originInstance = other.id
		}
		else{
			originInstance = noone
		}
		background = bg
		responses = []
		array_copy(responses, 0, responsesArr, 0, array_length(responsesArr))
	//trim markers from responses
		if (responses[0] != -1){
			for(var i=0; i<array_length(responses); i++){
				var markerPosition = string_pos(":", responses[i]);
				responseScripts[i] = string_copy(responses[i], 1, markerPosition-1);
				responseScripts[i] = real(responseScripts[i])
				responses[i] = string_delete(responses[i], 1, markerPosition)
			}
		}
		else{
			responseScripts = [-1]
		}
	}
	//puts player into a locked state and remembers the state they were in
				with (obj_player){
					if (state != playerStateLocked){
						lastState = state;
						state = playerStateLocked;
					}
				}
}