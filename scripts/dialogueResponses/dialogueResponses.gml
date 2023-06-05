// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialogueResponses(response){
	switch(response){
		case 0: break;
		case 1: textBoxCreate("Good luck on your Adventure!", [-1], 2); break;
		case 2: textBoxCreate("Don't be so lame, bro", ["3:Sorry, I'll try to stay positive!", "4:Whatever"]); break;
		case 3: textBoxCreate("That's the spirit!"); break;
		default: break;
	}
}