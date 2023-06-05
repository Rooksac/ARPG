//starts off fast but slows as lerpProgress appoaches 1
lerpProgress += (1- lerpProgress) / 50;
textProgress += global.textSpeed

//returns the point 'lerpProggress' % of the way between the 2 given points
x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

//Cycle through responses
keyUp = keyboard_check_pressed(vk_up)
keyDown = keyboard_check_pressed(vk_down)
responseSelected += (keyDown - keyUp)
var maximum = array_length(responses) -1
var minimum = 0
if (responseSelected > maximum){
	responseSelected = minimum
}
if (responseSelected < minimum){
	responseSelected = maximum
}
//handles player pressing space
if(keyboard_check_pressed(vk_space)){
	var messageLength = string_length(messageText);
	//checks if message has finished writing
	if (textProgress >= messageLength)
	//if it has, execute the selected response and destroy the text obj
	{
		if(responses[0] != -1){
			with(originInstance){
				dialogueResponses(other.responseScripts[other.responseSelected])
			}
		}
		instance_destroy();
		if (instance_exists(obj_text_queued)){
			with (obj_text_queued){
				ticket --
			}
		}
		else{
			with(obj_player){
				state = lastState
			}
		}
	}
	else{
		//otherwise, display full message
		if (textProgress > 2){
			textProgress = messageLength
		}
	}
}
